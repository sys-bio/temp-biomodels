<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.12 (Build 81) (http://www.copasi.org) at 2014-10-22 15:03:34 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="12" versionDevel="81" copasiSourcesModified="0">
  <Model key="Model_8" name="Cloutier2009_BrainEnergyMetabolism" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.02214179e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_8">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/19396534"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-25T12:46:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>c.lloyd@auckland.ac.nz</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Lloyd</vCard:Family>
                <vCard:Given>Catherine</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Auckland</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>c.lloyd@auckland.ac.nz</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Lloyd</vCard:Family>
                <vCard:Given>Catherine</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Auckland</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>c.lloyd@auckland.ac.nz</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Lloyd</vCard:Family>
                <vCard:Given>Catherine</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Auckland</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-25T12:46:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1006230041"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <p>This a model from the article:      <br/>
    <strong>An integrative dynamic model of brain energy metabolism using in vivo
neurochemical measurements.</strong>
    <br/>
          Cloutier M, Bolger FB, Lowry JP, Wellstead P.      <em>J Comput Neurosci</em>
          2009 Dec;27(3):391-414      <a href="http://www.ncbi.nlm.nih.gov/pubmed/19396534">19396534</a>
          ,      <br/>
    <strong>Abstract:</strong>
    <br/>
          An integrative, systems approach to the modelling of brain energy metabolism is
presented. Mechanisms such as glutamate cycling between neurons and astrocytes
and glycogen storage in astrocytes have been implemented. A unique feature of
the model is its calibration using in vivo data of brain glucose and lactate
from freely moving rats under various stimuli. The model has been used to
perform simulated perturbation experiments that show that glycogen breakdown in
astrocytes is significantly activated during sensory (tail pinch) stimulation.
This mechanism provides an additional input of energy substrate during high
consumption phases. By way of validation, data from the perfusion of 50 microM
propranolol in the rat brain was compared with the model outputs. Propranolol
affects the glucose dynamics during stimulation, and this was accurately
reproduced in the model by a reduction in the glycogen breakdown in astrocytes.
The model&apos;s predictive capacity was verified by using data from a sensory
stimulation (restraint) that was not used for model calibration. Finally, a
sensitivity analysis was conducted on the model parameters, this showed that the
control of energy metabolism and transport processes are critical in the
metabolic behaviour of cerebral tissue.      </p>
  <p>This model was taken from the      <a href="http://www.cellml.org/models">CellML repository</a>
          and automatically converted to SBML.      <br/>
          The original model was:      <a href="http://models.cellml.org/exposure/d95ef71cf9f78796463024858efe6bd6">
    <strong>Cloutier M, Bolger FB, Lowry JP, Wellstead P. (2009) - version=1.0</strong>
  </a>
  <br/>
          The original CellML model was created by:      <br/>
  <strong>Catherine Lloyd</strong>
  <br/>
          c.lloyd@auckland.ac.nz      <br/>
          The University of Auckland      <br/></p><p>This model originates from BioModels Database: A Database of Annotated Published Models (http://www.ebi.ac.uk/biomodels/). It is copyright (c) 2005-2011 The BioModels.net Team.      <br/>
          To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. Please refer to      <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a>
          for more information.      </p><p>In summary, you are entitled to use this encoded model in absolutely any manner you deem suitable, verbatim, or with modification, alone or embedded it in a larger context, redistribute it, commercially or not, in a restricted way or not..      <br/><br/>
          To cite BioModels Database, please use:      <a href="http://www.ncbi.nlm.nih.gov/pubmed/20587024" target="_blank">Li C, Donizelli M, Rodriguez N, Dharuri H, Endler L, Chelliah V, Li L, He E, Henry A, Stefan MI, Snoep JL, Hucka M, Le Novère N, Laibe C (2010) BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models. BMC Syst Biol., 4:92.</a>
</p>
</body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_18" name="Astrocytes" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T11:48:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Variables indexed &quot;g&quot;</pre>
  </body>

        </Comment>
      </Compartment>
      <Compartment key="Compartment_7" name="Capillaries" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T11:49:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Variables indexed &quot;c&quot;</pre>
  </body>

        </Comment>
      </Compartment>
      <Compartment key="Compartment_26" name="Extracellular space" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T11:48:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Variables indexed &quot;e&quot;</pre>
  </body>

        </Comment>
      </Compartment>
      <Compartment key="Compartment_28" name="Neurons" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T11:52:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Variables indexed &quot;n&quot;</pre>
  </body>

        </Comment>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_69" name="NAg" simulationType="ode" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:38:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Sodium</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_leak_Na],Reference=Value&gt;+3*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Veg_GLU],Reference=Value&gt;-3*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pump],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="GLCg" simulationType="ode" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:41:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Glucose</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vcg_GLC],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Veg_GLC],Reference=Value&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_hk],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_95" name="G6Pg" simulationType="ode" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_95">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:42:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Glucose-6-P</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_hk],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_glyp],Reference=Value&gt;-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pgi],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_glys],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_87" name="F6Pg" simulationType="ode" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:43:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Fructose-6-P</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pgi],Reference=Value&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pfk],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_79" name="GAPg" simulationType="ode" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:44:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Glyceraldehyde-3-P</pre>
  </body>

        </Comment>
        <Expression>
          2*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pfk],Reference=Value&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pgk],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="PEPg" simulationType="ode" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:45:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Phosphoenolpyruvate</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pgk],Reference=Value&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pk],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="PYRg" simulationType="ode" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:47:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Pyruvate</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pk],Reference=Value&gt;-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_ldh],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_mito],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="LACg" simulationType="ode" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:49:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Lactate</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_ldh],Reference=Value&gt;-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vge_LAC],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vgc_LAC],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="NADHg" simulationType="ode" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:52:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Nicotinamide adenine dinucleotide reduced</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pgk],Reference=Value&gt;-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_ldh],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_mito],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="ATPg" simulationType="ode" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:53:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Adenosine triphosphate</pre>
  </body>

        </Comment>
        <Expression>
          (&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pgk],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pk],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[nOP],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_mito],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_ck],Reference=Value&gt;-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_hk],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pfk],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_ATPase],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pump],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_gs],Reference=Value&gt;))*(1-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[dAMP_dATPg],Reference=Value&gt;)^(-1)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="PCrg" simulationType="ode" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:54:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Phosphocreatine</pre>
  </body>

        </Comment>
        <Expression>
          -&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_ck],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="O2g" simulationType="ode" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:56:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Oxygen</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vcg_O2],Reference=Value&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[NAero],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_mito],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_197" name="GLYg" simulationType="ode" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_197">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:58:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Glycogen</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_glys],Reference=Value&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_glyp],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_199" name="GLUg" simulationType="ode" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_199">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:59:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Glutamate</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Veg_GLU],Reference=Value&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_gs],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_221" name="NADg" simulationType="assignment" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_221">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T14:30:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Nicotinamide adenine dinucleotide oxidized</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[NADH_g_tot],Reference=Concentration&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[NADHg],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_223" name="ADPg" simulationType="assignment" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_223">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T14:37:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Adenosine diphosphate</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ATPg],Reference=Concentration&gt;/2*(-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[qak],Reference=Value&gt;+(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[qak],Reference=Value&gt;^2+4*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[qak],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[ATPtot],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ATPg],Reference=Concentration&gt;-1))^(1/2))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_225" name="CRg" simulationType="assignment" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_225">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T14:38:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Creatine</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[PCrg_tot],Reference=Concentration&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[PCrg],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_231" name="NADH_g_tot" simulationType="fixed" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_231">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T15:43:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Nicotinamide adenine dinucleotide reduced</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_235" name="PCrg_tot" simulationType="fixed" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_235">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T15:46:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Phosphocreatine</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_239" name="AMPg" simulationType="assignment" compartment="Compartment_18">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_239">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T15:49:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Adenosine monophosphate</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[ATPtot],Reference=Value&gt;-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ATPg],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ADPg],Reference=Concentration&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_207" name="O2c" simulationType="ode" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_207">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T14:11:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Oxygen</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vc_O2],Reference=Value&gt;-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vcn_O2],Reference=Value&gt;*(1/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Rcn],Reference=Value&gt;)+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vcg_O2],Reference=Value&gt;*(1/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Rcg],Reference=Value&gt;))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_209" name="GLCc" simulationType="ode" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_209">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T14:12:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Glucose</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vc_GLC],Reference=Value&gt;-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vce_GLC],Reference=Value&gt;*(1/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Rce],Reference=Value&gt;)+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vcg_GLC],Reference=Value&gt;*(1/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Rcg],Reference=Value&gt;))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_211" name="LACc" simulationType="ode" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_211">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T14:13:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Lactate</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vc_LAC],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vec_LAC],Reference=Value&gt;*(1/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Rce],Reference=Value&gt;)+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vgc_LAC],Reference=Value&gt;*(1/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Rcg],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_213" name="CO2c" simulationType="ode" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_213">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T14:14:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Carbon dioxide</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vnc_CO2],Reference=Value&gt;*(1/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Rcn],Reference=Value&gt;)+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vgc_CO2],Reference=Value&gt;*(1/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Rcg],Reference=Value&gt;)-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vc_CO2],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_201" name="GLCe" simulationType="ode" compartment="Compartment_26">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_201">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T14:06:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Glucose</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vce_GLC],Reference=Value&gt;-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Veg_GLC],Reference=Value&gt;*(1/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Reg],Reference=Value&gt;)+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[V_en_GLC],Reference=Value&gt;*(1/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Ren],Reference=Value&gt;))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_203" name="LACe" simulationType="ode" compartment="Compartment_26">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_203">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T14:08:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Lactate</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vne_LAC],Reference=Value&gt;*(1/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Ren],Reference=Value&gt;)+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vge_LAC],Reference=Value&gt;*(1/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Reg],Reference=Value&gt;)-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vec_LAC],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_205" name="GLUe" simulationType="ode" compartment="Compartment_26">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_205">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T14:09:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Glutamate</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_stim_GLU],Reference=Value&gt;*(1/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Ren],Reference=Value&gt;)-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Veg_GLU],Reference=Value&gt;*(1/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Reg],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_227" name="NAe" simulationType="fixed" compartment="Compartment_26">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_227">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T14:43:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Sodium</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_241" name="O2a" simulationType="fixed" compartment="Compartment_26">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_241">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T15:51:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Oxygen</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_243" name="CO2a" simulationType="fixed" compartment="Compartment_26">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_243">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T15:52:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Carbon dioxide</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_245" name="GLCa" simulationType="fixed" compartment="Compartment_26">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_245">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T15:52:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Glucose</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_247" name="LACa" simulationType="fixed" compartment="Compartment_26">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_247">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T15:54:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Lactate</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_89" name="NAn" simulationType="ode" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T11:57:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Sodium</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_leak_Na],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_stim],Reference=Value&gt;-3*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pump],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_75" name="GLCn" simulationType="ode" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:12:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Glucose</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[V_en_GLC],Reference=Value&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_hk],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_71" name="G6Pn" simulationType="ode" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:15:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Glucose-6-P</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_hk],Reference=Value&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pgi],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="F6Pn" simulationType="ode" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:15:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Fructose-6-P</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pgi],Reference=Value&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pfk],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="GAPn" simulationType="ode" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:19:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Glyceraldehyde-3-P</pre>
  </body>

        </Comment>
        <Expression>
          2*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pfk],Reference=Value&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pgk],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="PEPn" simulationType="ode" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:22:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Phosphoenolpyruvate</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pgk],Reference=Value&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pk],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="PYRn" simulationType="ode" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:23:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Pyruvate</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pk],Reference=Value&gt;-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_ldh],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_mito],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="LACn" simulationType="ode" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:24:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Lactate</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_ldh],Reference=Value&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vne_LAC],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="NADHn" simulationType="ode" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:26:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Nicotinamide adenine dinucleotide reduced</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pgk],Reference=Value&gt;-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_ldh],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_mito],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_103" name="ATPn" simulationType="ode" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_103">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:27:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Adenosine triphosphate</pre>
  </body>

        </Comment>
        <Expression>
          (&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pgk],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pk],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[nOP],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_mito],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_ck],Reference=Value&gt;-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_hk],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pfk],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_ATPase],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pump],Reference=Value&gt;))*(1-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[dAMP_dATPn],Reference=Value&gt;)^(-1)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_99" name="PCrn" simulationType="ode" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:30:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Posphocreatine</pre>
  </body>

        </Comment>
        <Expression>
          -&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_ck],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_83" name="O2n" simulationType="ode" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:33:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Oxygen</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vcn_O2],Reference=Value&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[NAero],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_mito],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="GLUn" simulationType="ode" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T13:35:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Glutamate</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_gs],Reference=Value&gt;*(1/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Rng],Reference=Value&gt;)-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_stim_GLU],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_215" name="ADPn" simulationType="assignment" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_215">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T14:25:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Adenosine diphosphate</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ATPn],Reference=Concentration&gt;/2*(-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[qak],Reference=Value&gt;+(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[qak],Reference=Value&gt;^2+4*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[qak],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[ATPtot],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ATPn],Reference=Concentration&gt;-1))^(1/2))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_217" name="CRn" simulationType="assignment" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_217">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T14:27:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Creatine</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[PCrn_tot],Reference=Concentration&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[PCrn],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_219" name="NADn" simulationType="assignment" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_219">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T14:31:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Nicotinamide adenine dinucleotide oxidized</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[NADH_n_tot],Reference=Concentration&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[NADHn],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_229" name="NADH_n_tot" simulationType="fixed" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_229">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T15:42:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Nicotinamide adenine dinucleotide reduced</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_233" name="PCrn_tot" simulationType="fixed" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_233">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T15:45:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Phosphocreatine</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_237" name="AMPn" simulationType="assignment" compartment="Compartment_28">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_237">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-22T15:48:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Adenosine monophosphate</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[ATPtot],Reference=Value&gt;-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ATPn],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ADPn],Reference=Concentration&gt;)
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_51" name="u_n" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[qak],Reference=Value&gt;^2+4*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[qak],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[ATPtot],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ATPn],Reference=Concentration&gt;-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="u_g" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[qak],Reference=Value&gt;^2+4*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[qak],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[ATPtot],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ATPg],Reference=Concentration&gt;-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="dAMP_dATPn" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[qak],Reference=Value&gt;/2+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[qak],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[ATPtot],Reference=Value&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ATPn],Reference=Concentration&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[u_n],Reference=Value&gt;^(1/2)))-(1+0.5*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[u_n],Reference=Value&gt;^(1/2))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="dAMP_dATPg" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[qak],Reference=Value&gt;/2+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[qak],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[ATPtot],Reference=Value&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ATPg],Reference=Concentration&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[u_g],Reference=Value&gt;^(1/2)))-(1+0.5*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[u_g],Reference=Value&gt;^(1/2))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="Vv" simulationType="ode">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Fin_t],Reference=Value&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Fout_t],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="dHb" simulationType="ode">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Fin_t],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[O2a],Reference=Concentration&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[O2c],Reference=Concentration&gt;)-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Fout_t],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[dHb],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vv],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="Vn_leak_Na" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Sm_n],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[gn_NA],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[F],Reference=Value&gt;)*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[RT],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[F],Reference=Value&gt;*log(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[NAe],Reference=Concentration&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[NAn],Reference=Concentration&gt;)-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vm],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="gn_NA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_59" name="Vn_pump" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Sm_n],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kpump],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ATPn],Reference=Concentration&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[NAn],Reference=Concentration&gt;*(1+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ATPn],Reference=Concentration&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_pump],Reference=Value&gt;)^(-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="Vn_stim" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[v_stim],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="V_en_GLC" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vm_en_GLC],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[GLCe],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[GLCe],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_en_GLC],Reference=Value&gt;)-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[GLCn],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[GLCn],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_en_GLC],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="Km_en_GLC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_63" name="Vm_en_GLC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_64" name="Vn_hk" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_n_hk],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ATPn],Reference=Concentration&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[GLCn],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[GLCn],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_GLC],Reference=Value&gt;))*(1-1/(1+exp(-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[aG6P_inh_hk],Reference=Value&gt;*1*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[G6Pn],Reference=Concentration&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[G6P_inh_hk],Reference=Value&gt;))))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="Vmax_n_hk" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_66" name="Vn_pgi" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmaxf_n_pgi],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[G6Pn],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[G6Pn],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_G6P],Reference=Value&gt;))-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmaxr_n_pgi],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[F6Pn],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[F6Pn],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_F6P_pgi],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="Vmaxf_n_pgi" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_68" name="Vmaxr_n_pgi" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_69" name="Vn_pfk" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kn_pfk],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ATPn],Reference=Concentration&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[F6Pn],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[F6Pn],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_F6P_pfk],Reference=Value&gt;))*(1+(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ATPn],Reference=Concentration&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Ki_ATP],Reference=Value&gt;)^&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[nH],Reference=Value&gt;)^(-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="kn_pfk" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_71" name="Vn_pgk" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kn_pgk],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[GAPn],Reference=Concentration&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ADPn],Reference=Concentration&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[NADn],Reference=Concentration&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[NADHn],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="kn_pgk" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_73" name="Vn_pk" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kn_pk],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[PEPn],Reference=Concentration&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ADPn],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="kn_pk" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_75" name="Vn_ldh" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kfn_ldh],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[PYRn],Reference=Concentration&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[NADHn],Reference=Concentration&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[krn_ldh],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[LACn],Reference=Concentration&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[NADn],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="kfn_ldh" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_77" name="krn_ldh" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_78" name="Vn_mito" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_n_mito],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[O2n],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[O2n],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_O2],Reference=Value&gt;))*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ADPn],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ADPn],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_ADP],Reference=Value&gt;))*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[PYRn],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[PYRn],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_PYR],Reference=Value&gt;))*(1-1/(1+exp(-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[aATP_mito],Reference=Value&gt;*1*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ATPn],Reference=Concentration&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ADPn],Reference=Concentration&gt;-1*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[rATP_mito],Reference=Value&gt;))))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="Vmax_n_mito" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_80" name="Vne_LAC" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_ne_LAC],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[LACn],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[LACn],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_ne_LAC],Reference=Value&gt;)-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[LACe],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[LACe],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_ne_LAC],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="Vmax_ne_LAC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_82" name="Km_ne_LAC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_83" name="Vn_ATPase" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_n_ATPase],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ATPn],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ATPn],Reference=Concentration&gt;+0.001))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="Vmax_n_ATPase" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_85" name="Vn_ck" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kfn_ck],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[PCrn],Reference=Concentration&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ADPn],Reference=Concentration&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[krn_ck],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[CRn],Reference=Concentration&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ATPn],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="krn_ck" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_87" name="kfn_ck" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_88" name="Vcn_O2" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[PScapn],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Ko2],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[HbOP],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[O2c],Reference=Concentration&gt;-1)^(-1/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[nh_O2],Reference=Value&gt;)-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[O2n],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="nh_O2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_90" name="PScapn" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_91" name="Vg_leak_Na" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Sm_g],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[gg_NA],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[F],Reference=Value&gt;)*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[RT],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[F],Reference=Value&gt;*log(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[NAe],Reference=Concentration&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[NAg],Reference=Concentration&gt;)-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vm],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="gg_NA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_93" name="Vg_pump" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Sm_g],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kpump],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ATPg],Reference=Concentration&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[NAg],Reference=Concentration&gt;*(1+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ATPg],Reference=Concentration&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_pump],Reference=Value&gt;)^(-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="Veg_GLC" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[KO1],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vm_eg_GLC],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[GLCe],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[GLCe],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_eg_GLC],Reference=Value&gt;)-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[GLCg],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[GLCg],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_eg_GLC],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="Km_eg_GLC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_96" name="Vm_eg_GLC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_97" name="Vcg_GLC" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vm_cg_GLC],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[GLCc],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[GLCc],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_cg_GLC],Reference=Value&gt;)-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[GLCg],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[GLCg],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_cg_GLC],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="Km_cg_GLC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_99" name="Vm_cg_GLC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_100" name="Vg_hk" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_g_hk],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ATPg],Reference=Concentration&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[GLCg],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[GLCg],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_GLC],Reference=Value&gt;))*(1-1/(1+exp(-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[aG6P_inh_hk],Reference=Value&gt;*1*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[G6Pg],Reference=Concentration&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[G6P_inh_hk],Reference=Value&gt;))))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_101" name="Vmax_g_hk" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_102" name="Vg_pgi" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmaxf_g_pgi],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[G6Pg],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[G6Pg],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_G6P],Reference=Value&gt;))-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmaxr_g_pgi],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[F6Pg],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[F6Pg],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_F6P_pgi],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="Vmaxf_g_pgi" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_104" name="Vmaxr_g_pgi" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_105" name="Vg_pfk" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kg_pfk],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ATPg],Reference=Concentration&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[F6Pg],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[F6Pg],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_F6P_pfk],Reference=Value&gt;))*(1+(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ATPg],Reference=Concentration&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Ki_ATP],Reference=Value&gt;)^&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[nH],Reference=Value&gt;)^(-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_106" name="kg_pfk" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_107" name="Vg_pgk" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kg_pgk],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[GAPg],Reference=Concentration&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ADPg],Reference=Concentration&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[NADg],Reference=Concentration&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[NADHg],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_108" name="kg_pgk" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_109" name="Vg_pk" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kg_pk],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[PEPg],Reference=Concentration&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ADPg],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_110" name="kg_pk" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_111" name="Vg_ldh" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kfg_ldh],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[PYRg],Reference=Concentration&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[NADHg],Reference=Concentration&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[krg_ldh],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[LACg],Reference=Concentration&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[NADg],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_112" name="kfg_ldh" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_113" name="krg_ldh" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_114" name="Vg_mito" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_g_mito],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[O2g],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[O2g],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_O2],Reference=Value&gt;))*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ADPg],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ADPg],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_ADP],Reference=Value&gt;))*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[PYRg],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[PYRg],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_PYR],Reference=Value&gt;))*(1-1/(1+exp(1*-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[aATP_mito],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ATPg],Reference=Concentration&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ADPg],Reference=Concentration&gt;-1*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[rATP_mito],Reference=Value&gt;))))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_115" name="Vmax_g_mito" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_116" name="Vge_LAC" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_ge_LAC],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[LACg],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[LACg],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_ge_LAC],Reference=Value&gt;)-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[LACe],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[LACe],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_ge_LAC],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_117" name="Vmax_ge_LAC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_118" name="Km_ge_LAC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_119" name="Vgc_LAC" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_gc_LAC],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[LACg],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[LACg],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_gc_LAC],Reference=Value&gt;)-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[LACc],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[LACc],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_gc_LAC],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_120" name="Vmax_gc_LAC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_121" name="Km_gc_LAC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_122" name="Vg_ATPase" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_g_ATPase],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ATPg],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ATPg],Reference=Concentration&gt;+0.001))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_123" name="Vmax_g_ATPase" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_124" name="Vg_ck" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kfg_ck],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[PCrg],Reference=Concentration&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ADPg],Reference=Concentration&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[krg_ck],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[CRg],Reference=Concentration&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ATPg],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_125" name="krg_ck" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_126" name="kfg_ck" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_127" name="Vcg_O2" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[PScapg],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Ko2],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[HbOP],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[O2c],Reference=Concentration&gt;-1)^(-1/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[nh_O2_2],Reference=Value&gt;)-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[O2g],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_128" name="PScapg" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_129" name="Vc_O2" simulationType="assignment">
        <Expression>
          2*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Fin_t],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vc],Reference=Value&gt;)*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[O2a],Reference=Concentration&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[O2c],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_130" name="Vc_GLC" simulationType="assignment">
        <Expression>
          2*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Fin_t],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vc],Reference=Value&gt;)*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[GLCa],Reference=Concentration&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[GLCc],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_131" name="Vce_GLC" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vm_ce_GLC],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[GLCc],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[GLCc],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_ce_GLC],Reference=Value&gt;)-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[GLCe],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[GLCe],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_ce_GLC],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_132" name="Km_ce_GLC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_133" name="Vm_ce_GLC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_134" name="Vc_LAC" simulationType="assignment">
        <Expression>
          2*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Fin_t],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vc],Reference=Value&gt;)*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[LACa],Reference=Concentration&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[LACc],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_135" name="Vec_LAC" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vm_ec_LAC],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[LACe],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[LACe],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_ec_LAC],Reference=Value&gt;)-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[LACc],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[LACc],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_ec_LAC],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_136" name="Km_ec_LAC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_137" name="Vm_ec_LAC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_138" name="Vnc_CO2" simulationType="assignment">
        <Expression>
          3*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_mito],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_139" name="Vgc_CO2" simulationType="assignment">
        <Expression>
          3*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_mito],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_140" name="Vn_stim_GLU" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_stim],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[R_GLU_NA],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[KO2],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[GLUn],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[GLUn],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_GLU],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_141" name="Vg_gs" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_g_gs],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[GLUg],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[GLUg],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_GLU],Reference=Value&gt;))*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ATPg],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ATPg],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_ATP],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_142" name="Vmax_g_gs" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_143" name="Veg_GLU" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_eg_GLU],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[GLUe],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[GLUe],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_GLU],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_144" name="Vmax_eg_GLU" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_145" name="Vc_CO2" simulationType="assignment">
        <Expression>
          2*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Fin_t],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vc],Reference=Value&gt;)*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[CO2c],Reference=Concentration&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[CO2a],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_146" name="Vg_glys" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_glys],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[G6Pg],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[G6Pg],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_G6P_glys],Reference=Value&gt;))*(1-1/(1+exp(-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[aGLY_inh],Reference=Value&gt;*1*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[GLYg],Reference=Concentration&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[GLY_inh],Reference=Value&gt;))))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_147" name="Vmax_glys" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_148" name="Km_G6P_glys" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_149" name="Vg_glyp" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_glyp],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[GLYg],Reference=Concentration&gt;/(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[GLYg],Reference=Concentration&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_GLY],Reference=Value&gt;))*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[deltaVt_GLY],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_150" name="Vmax_glyp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_151" name="Km_GLY" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_152" name="deltaVt_GLY" simulationType="assignment">
        <Expression>
          1+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[stim],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[delta_GLY],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[KO3],Reference=Value&gt;*(1/(1+exp(1*-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[sr_GLY],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Reference=Time&gt;-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[to],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[to_GLY],Reference=Value&gt;)))))*(1-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[unitstepSB2],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_153" name="Fin_t" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[CBF0],Reference=Value&gt;+(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[stim],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[CBF0],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[deltaf],Reference=Value&gt;*(1/(1+exp(1*-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[sr],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Reference=Time&gt;-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[to],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[t1],Reference=Value&gt;-3)))))-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[stim],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[CBF0],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[deltaf],Reference=Value&gt;*(1/(1+exp(1*-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[sr],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Reference=Time&gt;-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[to],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[tend],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[t1],Reference=Value&gt;+3))))))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_154" name="CBF0" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_155" name="Fout_t" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[CBF0_2],Reference=Value&gt;*(((&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vv],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vv0],Reference=Value&gt;)^2+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[tv],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vv],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vv0],Reference=Value&gt;)^(-0.5)*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Fin_t],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vv0],Reference=Value&gt;))/(1+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[CBF0_2],Reference=Value&gt;*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[tv],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vv],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vv0],Reference=Value&gt;)^(-0.5)*(1/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vv0],Reference=Value&gt;)))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_156" name="BOLD" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vv0],Reference=Value&gt;*((&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[k1],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[k2],Reference=Value&gt;)*(1-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[dHb],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[dHb0],Reference=Value&gt;)-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[k2],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[k3],Reference=Value&gt;)*(1-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vv],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vv0],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_157" name="v_stim" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[stim],Reference=Value&gt;*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[v1_n],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[v2_n],Reference=Value&gt;*((&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Reference=Time&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[to],Reference=Value&gt;)/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[t_n_stim],Reference=Value&gt;)*exp(-((&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Reference=Time&gt;-&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[to],Reference=Value&gt;)*(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[unitpulseSB],Reference=Value&gt;/&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[t_n_stim],Reference=Value&gt;))))*&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[unitpulseSB],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_158" name="unitpulseSB" simulationType="assignment">
        <Expression>
          if(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Reference=Time&gt; ge &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[to],Reference=Value&gt; and &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Reference=Time&gt; le &lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[to],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[tend],Reference=Value&gt;,1,0)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_159" name="unitstepSB" simulationType="assignment">
        <Expression>
          if(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Reference=Time&gt;-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[tend],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[to],Reference=Value&gt;) ge 0,1,0)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_160" name="Km_PYR" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_161" name="Km_ATP" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_162" name="Ki_ATP" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_163" name="Km_ADP" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_164" name="Km_O2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_165" name="Km_GLC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_166" name="Km_GLU" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_167" name="Km_G6P" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_168" name="Km_F6P_pgi" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_169" name="Km_F6P_pfk" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_170" name="Km_pump" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_171" name="nh_O2_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_172" name="Ko2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_173" name="kpump" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_174" name="ATPtot" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_175" name="nH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_176" name="nOP" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_177" name="NAero" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_178" name="Rng" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_179" name="Reg" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_180" name="Ren" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_181" name="Rcn" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_182" name="Rcg" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_183" name="Rce" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_184" name="Sm_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_185" name="Vm" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_186" name="RT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_187" name="F" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_188" name="Vn" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_189" name="G6P_inh_hk" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_190" name="aG6P_inh_hk" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_191" name="rATP_mito" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_192" name="aATP_mito" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_193" name="HbOP" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_194" name="Sm_g" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_195" name="Vg" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_196" name="KO1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_197" name="Vc" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_198" name="R_GLU_NA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_199" name="KO2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_200" name="KO3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_201" name="GLY_inh" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_202" name="aGLY_inh" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_203" name="CBF0_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_204" name="Vv0" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_205" name="tv" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_206" name="qak" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_207" name="k1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_208" name="k2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_209" name="k3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_210" name="dHb0" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_211" name="stim" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_212" name="to" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_213" name="tend" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_214" name="v1_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_215" name="v2_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_216" name="t_n_stim" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_217" name="sr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_218" name="t1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_219" name="delta_GLY" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_220" name="deltaf" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_221" name="tend_GLY" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_222" name="to_GLY" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_223" name="sr_GLY" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_224" name="unitstepSB2" simulationType="assignment">
        <Expression>
          if(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Reference=Time&gt;-(&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[tend_GLY],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[to],Reference=Value&gt;+&lt;CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[to_GLY],Reference=Value&gt;) ge 0,1,0)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[NAg]" value="8.045581431439999e+24" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[GLCg]" value="9.972666804239999e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[G6Pg]" value="4.411821075354e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[F6Pg]" value="6.72071023764e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[GAPg]" value="4.20345496942e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[PEPg]" value="1.52962401466e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[PYRg]" value="1.030388460269e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[LACg]" value="2.800898146529e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[NADHg]" value="2.67985309655e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ATPg]" value="1.34895976096e+24" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[PCrg]" value="2.8193861218243e+24" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[O2g]" value="9.569183304310001e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[GLYg]" value="1.5055354475e+24" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[GLUg]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[NADg]" value="1.056885884145e+23" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[ADPg]" value="7.871513731263489e+22" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[CRg]" value="1.916847731756999e+23" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[NADH_g_tot]" value="1.3248711938e+23" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[PCrg_tot]" value="3.011070895e+24" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Astrocytes],Vector=Metabolites[AMPg]" value="4.992633568364911e+21" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[O2c]" value="4.4684894295979e+24" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[GLCc]" value="2.7943340119779e+24" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[LACc]" value="1.957798295929e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Capillaries],Vector=Metabolites[CO2c]" value="1.27669405948e+24" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[GLCe]" value="2.010793143681e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[LACe]" value="2.400425717494e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[GLUe]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[NAe]" value="9.033212685000001e+25" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[O2a]" value="5.02246625286e+24" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[CO2a]" value="7.226570147999999e+23" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[GLCa]" value="2.8906280592e+24" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[LACa]" value="1.88493038027e+23" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[NAn]" value="9.354192842407e+24" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[GLCn]" value="1.585629933307e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[G6Pn]" value="4.381108152225e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[F6Pn]" value="6.57015669289e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[GAPn]" value="2.51725526822e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[PEPn]" value="2.2281924623e+21" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[PYRn]" value="2.33659101452e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[LACn]" value="2.322137874224e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[NADHn]" value="1.92106323101e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ATPn]" value="1.360522273196799e+24" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[PCrn]" value="2.5611566818691e+24" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[O2n]" value="5.87158824525e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[GLUn]" value="1.806642537e+24" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[ADPn]" value="6.840670310825312e+22" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[CRn]" value="4.499142131308998e+23" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[NADn]" value="1.132764870699e+23" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[NADH_n_tot]" value="1.3248711938e+23" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[PCrn_tot]" value="3.011070895e+24" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Neurons],Vector=Metabolites[AMPn]" value="3.738555535947778e+21" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[u_n]" value="1.041541643059492" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[u_g]" value="1.074757142857142" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[dAMP_dATPn]" value="-0.1010107985035373" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[dAMP_dATPg]" value="-0.1158574159088521" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vv]" value="0.0237" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[dHb]" value="0.0218" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_leak_Na]" value="0.4749059582640922" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[gn_NA]" value="0.0039" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pump]" value="0.1583008421981942" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_stim]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[V_en_GLC]" value="0.005998659992480408" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_en_GLC]" value="5.32" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vm_en_GLC]" value="0.50417" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_hk]" value="0.006000930478587174" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_n_hk]" value="0.0513" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pgi]" value="0.006002847228829766" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmaxf_n_pgi]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmaxr_n_pgi]" value="0.45" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pfk]" value="0.005998097102074771" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kn_pfk]" value="0.55783" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pgk]" value="0.01200260630213788" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kn_pgk]" value="0.4287" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_pk]" value="0.01202030369815545" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kn_pk]" value="28.6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_ldh]" value="-0.001026864256" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kfn_ldh]" value="5.3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[krn_ldh]" value="0.1046" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_mito]" value="0.01291747549205012" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_n_mito]" value="0.05557" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vne_LAC]" value="-0.001017350542054705" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_ne_LAC]" value="0.1978" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_ne_LAC]" value="0.09314" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_ATPase]" value="0.04886836917086984" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_n_ATPase]" value="0.04889" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_ck]" value="2.937016519380387e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[krn_ck]" value="0.015" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kfn_ck]" value="0.0524681" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vcn_O2]" value="0.03905041869580462" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[nh_O2]" value="2.7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[PScapn]" value="0.2202" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_leak_Na]" value="0.1903789976922938" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[gg_NA]" value="0.00325" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pump]" value="0.06345311339461771" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Veg_GLC]" value="0.001584701815776547" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_eg_GLC]" value="3.53" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vm_eg_GLC]" value="0.038089" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vcg_GLC]" value="0.002974121477542638" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_cg_GLC]" value="9.92" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vm_cg_GLC]" value="0.0098394" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_hk]" value="0.004556136173263108" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_g_hk]" value="0.050461" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pgi]" value="0.004519357001914137" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmaxf_g_pgi]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmaxr_g_pgi]" value="0.45" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pfk]" value="0.00450657384340637" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kg_pfk]" value="0.403" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pgk]" value="0.009045760532112108" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kg_pgk]" value="0.2514" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_pk]" value="0.009063660806851791" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kg_pk]" value="2.73" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_ldh]" value="0.003039015293999997" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kfg_ldh]" value="6.2613" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[krg_ldh]" value="0.54682" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_mito]" value="0.006011291644168202" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_g_mito]" value="0.008454" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vge_LAC]" value="0.002980132646597615" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_ge_LAC]" value="0.08612400000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_ge_LAC]" value="0.22163" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vgc_LAC]" value="1.460957629406009e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_gc_LAC]" value="0.00021856" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_gc_LAC]" value="0.12862" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_ATPase]" value="0.03564108879964302" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_g_ATPase]" value="0.035657" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_ck]" value="8.988698802493006e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[krg_ck]" value="0.02073" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kfg_ck]" value="0.0243" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vcg_O2]" value="0.01808677106451656" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[PScapg]" value="0.2457" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vc_O2]" value="4.014109090909092" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vc_GLC]" value="0.6977454545454524" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vce_GLC]" value="0.01546739387404227" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_ce_GLC]" value="8.456799999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vm_ce_GLC]" value="0.0489" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vc_LAC]" value="-0.05280000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vec_LAC]" value="0.001440785061019804" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_ec_LAC]" value="0.764818" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vm_ec_LAC]" value="0.0325" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vnc_CO2]" value="0.03875242647615038" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vgc_CO2]" value="0.01803387493250461" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn_stim_GLU]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_gs]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_g_gs]" value="0.3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Veg_GLU]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_eg_GLU]" value="0.0208" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vc_CO2]" value="4.014545454545456" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_glys]" value="9.081719941586875e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_glys]" value="0.0001528" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_G6P_glys]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg_glyp]" value="3.515714285714286e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vmax_glyp]" value="4.922e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_GLY]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[deltaVt_GLY]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Fin_t]" value="0.012" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[CBF0]" value="0.012" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Fout_t]" value="0.0120054326049026" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[BOLD]" value="0.04179315000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[v_stim]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[unitpulseSB]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[unitstepSB]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_PYR]" value="0.06320000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_ATP]" value="0.01532" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Ki_ATP]" value="0.7595" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_ADP]" value="0.00107" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_O2]" value="0.0029658" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_GLC]" value="0.105" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_GLU]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_G6P]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_F6P_pgi]" value="0.06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_F6P_pfk]" value="0.18" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Km_pump]" value="0.4243" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[nh_O2_2]" value="2.7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Ko2]" value="0.08973299999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[kpump]" value="3.17e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[ATPtot]" value="2.379" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[nH]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[nOP]" value="15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[NAero]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Rng]" value="1.8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Reg]" value="0.8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Ren]" value="0.444444444444444" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Rcn]" value="0.01222" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Rcg]" value="0.022" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Rce]" value="0.0275" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Sm_n]" value="40500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vm]" value="-70" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[RT]" value="2577340" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[F]" value="96500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vn]" value="0.45" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[G6P_inh_hk]" value="0.6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[aG6P_inh_hk]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[rATP_mito]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[aATP_mito]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[HbOP]" value="8.6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Sm_g]" value="10500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vg]" value="0.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[KO1]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vc]" value="0.0055" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[R_GLU_NA]" value="0.075" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[KO2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[KO3]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[GLY_inh]" value="4.2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[aGLY_inh]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[CBF0_2]" value="0.012" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[Vv0]" value="0.0236" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[tv]" value="35" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[qak]" value="0.92" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[k1]" value="2.22" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[k2]" value="0.46" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[k3]" value="0.43" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[dHb0]" value="0.064" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[stim]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[to]" value="200" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[tend]" value="300" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[v1_n]" value="0.041" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[v2_n]" value="2.55" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[t_n_stim]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[sr]" value="4.59186" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[t1]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[delta_GLY]" value="62" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[deltaf]" value="0.42" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[tend_GLY]" value="440" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[to_GLY]" value="83" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[sr_GLY]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Values[unitstepSB2]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_8"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_95"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_197"/>
      <StateTemplateVariable objectReference="Metabolite_199"/>
      <StateTemplateVariable objectReference="Metabolite_207"/>
      <StateTemplateVariable objectReference="Metabolite_209"/>
      <StateTemplateVariable objectReference="Metabolite_211"/>
      <StateTemplateVariable objectReference="Metabolite_213"/>
      <StateTemplateVariable objectReference="Metabolite_201"/>
      <StateTemplateVariable objectReference="Metabolite_203"/>
      <StateTemplateVariable objectReference="Metabolite_205"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_75"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_103"/>
      <StateTemplateVariable objectReference="Metabolite_99"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_221"/>
      <StateTemplateVariable objectReference="Metabolite_223"/>
      <StateTemplateVariable objectReference="Metabolite_225"/>
      <StateTemplateVariable objectReference="Metabolite_215"/>
      <StateTemplateVariable objectReference="Metabolite_217"/>
      <StateTemplateVariable objectReference="Metabolite_219"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
      <StateTemplateVariable objectReference="ModelValue_105"/>
      <StateTemplateVariable objectReference="ModelValue_107"/>
      <StateTemplateVariable objectReference="ModelValue_109"/>
      <StateTemplateVariable objectReference="ModelValue_111"/>
      <StateTemplateVariable objectReference="ModelValue_114"/>
      <StateTemplateVariable objectReference="ModelValue_116"/>
      <StateTemplateVariable objectReference="ModelValue_119"/>
      <StateTemplateVariable objectReference="ModelValue_122"/>
      <StateTemplateVariable objectReference="ModelValue_124"/>
      <StateTemplateVariable objectReference="ModelValue_127"/>
      <StateTemplateVariable objectReference="ModelValue_129"/>
      <StateTemplateVariable objectReference="ModelValue_130"/>
      <StateTemplateVariable objectReference="ModelValue_131"/>
      <StateTemplateVariable objectReference="ModelValue_134"/>
      <StateTemplateVariable objectReference="ModelValue_135"/>
      <StateTemplateVariable objectReference="ModelValue_138"/>
      <StateTemplateVariable objectReference="ModelValue_139"/>
      <StateTemplateVariable objectReference="ModelValue_140"/>
      <StateTemplateVariable objectReference="ModelValue_141"/>
      <StateTemplateVariable objectReference="ModelValue_143"/>
      <StateTemplateVariable objectReference="ModelValue_145"/>
      <StateTemplateVariable objectReference="ModelValue_146"/>
      <StateTemplateVariable objectReference="ModelValue_149"/>
      <StateTemplateVariable objectReference="ModelValue_152"/>
      <StateTemplateVariable objectReference="ModelValue_153"/>
      <StateTemplateVariable objectReference="ModelValue_155"/>
      <StateTemplateVariable objectReference="ModelValue_157"/>
      <StateTemplateVariable objectReference="ModelValue_158"/>
      <StateTemplateVariable objectReference="ModelValue_224"/>
      <StateTemplateVariable objectReference="Metabolite_239"/>
      <StateTemplateVariable objectReference="Metabolite_237"/>
      <StateTemplateVariable objectReference="ModelValue_156"/>
      <StateTemplateVariable objectReference="ModelValue_159"/>
      <StateTemplateVariable objectReference="Metabolite_231"/>
      <StateTemplateVariable objectReference="Metabolite_235"/>
      <StateTemplateVariable objectReference="Metabolite_227"/>
      <StateTemplateVariable objectReference="Metabolite_241"/>
      <StateTemplateVariable objectReference="Metabolite_243"/>
      <StateTemplateVariable objectReference="Metabolite_245"/>
      <StateTemplateVariable objectReference="Metabolite_247"/>
      <StateTemplateVariable objectReference="Metabolite_229"/>
      <StateTemplateVariable objectReference="Metabolite_233"/>
      <StateTemplateVariable objectReference="Compartment_18"/>
      <StateTemplateVariable objectReference="Compartment_7"/>
      <StateTemplateVariable objectReference="Compartment_26"/>
      <StateTemplateVariable objectReference="Compartment_28"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_106"/>
      <StateTemplateVariable objectReference="ModelValue_108"/>
      <StateTemplateVariable objectReference="ModelValue_110"/>
      <StateTemplateVariable objectReference="ModelValue_112"/>
      <StateTemplateVariable objectReference="ModelValue_113"/>
      <StateTemplateVariable objectReference="ModelValue_115"/>
      <StateTemplateVariable objectReference="ModelValue_117"/>
      <StateTemplateVariable objectReference="ModelValue_118"/>
      <StateTemplateVariable objectReference="ModelValue_120"/>
      <StateTemplateVariable objectReference="ModelValue_121"/>
      <StateTemplateVariable objectReference="ModelValue_123"/>
      <StateTemplateVariable objectReference="ModelValue_125"/>
      <StateTemplateVariable objectReference="ModelValue_126"/>
      <StateTemplateVariable objectReference="ModelValue_128"/>
      <StateTemplateVariable objectReference="ModelValue_132"/>
      <StateTemplateVariable objectReference="ModelValue_133"/>
      <StateTemplateVariable objectReference="ModelValue_136"/>
      <StateTemplateVariable objectReference="ModelValue_137"/>
      <StateTemplateVariable objectReference="ModelValue_142"/>
      <StateTemplateVariable objectReference="ModelValue_144"/>
      <StateTemplateVariable objectReference="ModelValue_147"/>
      <StateTemplateVariable objectReference="ModelValue_148"/>
      <StateTemplateVariable objectReference="ModelValue_150"/>
      <StateTemplateVariable objectReference="ModelValue_151"/>
      <StateTemplateVariable objectReference="ModelValue_154"/>
      <StateTemplateVariable objectReference="ModelValue_160"/>
      <StateTemplateVariable objectReference="ModelValue_161"/>
      <StateTemplateVariable objectReference="ModelValue_162"/>
      <StateTemplateVariable objectReference="ModelValue_163"/>
      <StateTemplateVariable objectReference="ModelValue_164"/>
      <StateTemplateVariable objectReference="ModelValue_165"/>
      <StateTemplateVariable objectReference="ModelValue_166"/>
      <StateTemplateVariable objectReference="ModelValue_167"/>
      <StateTemplateVariable objectReference="ModelValue_168"/>
      <StateTemplateVariable objectReference="ModelValue_169"/>
      <StateTemplateVariable objectReference="ModelValue_170"/>
      <StateTemplateVariable objectReference="ModelValue_171"/>
      <StateTemplateVariable objectReference="ModelValue_172"/>
      <StateTemplateVariable objectReference="ModelValue_173"/>
      <StateTemplateVariable objectReference="ModelValue_174"/>
      <StateTemplateVariable objectReference="ModelValue_175"/>
      <StateTemplateVariable objectReference="ModelValue_176"/>
      <StateTemplateVariable objectReference="ModelValue_177"/>
      <StateTemplateVariable objectReference="ModelValue_178"/>
      <StateTemplateVariable objectReference="ModelValue_179"/>
      <StateTemplateVariable objectReference="ModelValue_180"/>
      <StateTemplateVariable objectReference="ModelValue_181"/>
      <StateTemplateVariable objectReference="ModelValue_182"/>
      <StateTemplateVariable objectReference="ModelValue_183"/>
      <StateTemplateVariable objectReference="ModelValue_184"/>
      <StateTemplateVariable objectReference="ModelValue_185"/>
      <StateTemplateVariable objectReference="ModelValue_186"/>
      <StateTemplateVariable objectReference="ModelValue_187"/>
      <StateTemplateVariable objectReference="ModelValue_188"/>
      <StateTemplateVariable objectReference="ModelValue_189"/>
      <StateTemplateVariable objectReference="ModelValue_190"/>
      <StateTemplateVariable objectReference="ModelValue_191"/>
      <StateTemplateVariable objectReference="ModelValue_192"/>
      <StateTemplateVariable objectReference="ModelValue_193"/>
      <StateTemplateVariable objectReference="ModelValue_194"/>
      <StateTemplateVariable objectReference="ModelValue_195"/>
      <StateTemplateVariable objectReference="ModelValue_196"/>
      <StateTemplateVariable objectReference="ModelValue_197"/>
      <StateTemplateVariable objectReference="ModelValue_198"/>
      <StateTemplateVariable objectReference="ModelValue_199"/>
      <StateTemplateVariable objectReference="ModelValue_200"/>
      <StateTemplateVariable objectReference="ModelValue_201"/>
      <StateTemplateVariable objectReference="ModelValue_202"/>
      <StateTemplateVariable objectReference="ModelValue_203"/>
      <StateTemplateVariable objectReference="ModelValue_204"/>
      <StateTemplateVariable objectReference="ModelValue_205"/>
      <StateTemplateVariable objectReference="ModelValue_206"/>
      <StateTemplateVariable objectReference="ModelValue_207"/>
      <StateTemplateVariable objectReference="ModelValue_208"/>
      <StateTemplateVariable objectReference="ModelValue_209"/>
      <StateTemplateVariable objectReference="ModelValue_210"/>
      <StateTemplateVariable objectReference="ModelValue_211"/>
      <StateTemplateVariable objectReference="ModelValue_212"/>
      <StateTemplateVariable objectReference="ModelValue_213"/>
      <StateTemplateVariable objectReference="ModelValue_214"/>
      <StateTemplateVariable objectReference="ModelValue_215"/>
      <StateTemplateVariable objectReference="ModelValue_216"/>
      <StateTemplateVariable objectReference="ModelValue_217"/>
      <StateTemplateVariable objectReference="ModelValue_218"/>
      <StateTemplateVariable objectReference="ModelValue_219"/>
      <StateTemplateVariable objectReference="ModelValue_220"/>
      <StateTemplateVariable objectReference="ModelValue_221"/>
      <StateTemplateVariable objectReference="ModelValue_222"/>
      <StateTemplateVariable objectReference="ModelValue_223"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0.0237 0.0218 8.045581431439999e+24 9.972666804239999e+22 4.411821075354e+23 6.72071023764e+22 4.20345496942e+22 1.52962401466e+22 1.030388460269e+23 2.800898146529e+23 2.67985309655e+22 1.34895976096e+24 2.8193861218243e+24 9.569183304310001e+22 1.5055354475e+24 0 4.4684894295979e+24 2.7943340119779e+24 1.957798295929e+23 1.27669405948e+24 2.010793143681e+23 2.400425717494e+23 0 9.354192842407e+24 1.585629933307e+23 4.381108152225e+23 6.57015669289e+22 2.51725526822e+22 2.2281924623e+21 2.33659101452e+22 2.322137874224e+23 1.92106323101e+22 1.360522273196799e+24 2.5611566818691e+24 5.87158824525e+22 1.806642537e+24 1.056885884145e+23 7.871513731263489e+22 1.916847731756999e+23 6.840670310825312e+22 4.499142131308998e+23 1.132764870699e+23 1.041541643059492 1.074757142857142 -0.1010107985035373 -0.1158574159088521 0.4749059582640922 0.1583008421981942 0 0.005998659992480408 0.006000930478587174 0.006002847228829766 0.005998097102074771 0.01200260630213788 0.01202030369815545 -0.001026864256 0.01291747549205012 -0.001017350542054705 0.04886836917086984 2.937016519380387e-05 0.03905041869580462 0.1903789976922938 0.06345311339461771 0.001584701815776547 0.002974121477542638 0.004556136173263108 0.004519357001914137 0.00450657384340637 0.009045760532112108 0.009063660806851791 0.003039015293999997 0.006011291644168202 0.002980132646597615 1.460957629406009e-05 0.03564108879964302 8.988698802493006e-05 0.01808677106451656 4.014109090909092 0.6977454545454524 0.01546739387404227 -0.05280000000000001 0.001440785061019804 0.03875242647615038 0.01803387493250461 0 0 0 4.014545454545456 9.081719941586875e-05 3.515714285714286e-05 1 0.012 0.0120054326049026 0 0 0 4.992633568364911e+21 3.738555535947778e+21 0.04179315000000001 0 1.3248711938e+23 3.011070895e+24 9.033212685000001e+25 5.02246625286e+24 7.226570147999999e+23 2.8906280592e+24 1.88493038027e+23 1.3248711938e+23 3.011070895e+24 1 1 1 1 0.0039 5.32 0.50417 0.0513 0.5 0.45 0.55783 0.4287 28.6 5.3 0.1046 0.05557 0.1978 0.09314 0.04889 0.015 0.0524681 2.7 0.2202 0.00325 3.53 0.038089 9.92 0.0098394 0.050461 0.5 0.45 0.403 0.2514 2.73 6.2613 0.54682 0.008454 0.08612400000000001 0.22163 0.00021856 0.12862 0.035657 0.02073 0.0243 0.2457 8.456799999999999 0.0489 0.764818 0.0325 0.3 0.0208 0.0001528 0.5 4.922e-05 1 0.012 0.06320000000000001 0.01532 0.7595 0.00107 0.0029658 0.105 0.05 0.5 0.06 0.18 0.4243 2.7 0.08973299999999999 3.17e-07 2.379 4 15 3 1.8 0.8 0.444444444444444 0.01222 0.022 0.0275 40500 -70 2577340 96500 0.45 0.6 20 20 5 8.6 10500 0.25 1 0.0055 0.075 1 1 4.2 20 0.012 0.0236 35 0.92 2.22 0.46 0.43 0.064 1 200 300 0.041 2.55 2 4.59186 2 62 0.42 440 83 4 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_0" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
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
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="250000"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="2500"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="1"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_9" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_8" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_7" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
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
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
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
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_0"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_4" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_3" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_2" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_1" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="1e-06"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="1e-06"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_12" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_0"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
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
    <Report key="Report_7" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_2" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_1" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="Figure 2" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[GLCe]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[GLCe],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LACe]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Cloutier2009_BrainEnergyMetabolism,Vector=Compartments[Extracellular space],Vector=Metabolites[LACe],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Cloutier2009(mod).xml">
    <SBMLMap SBMLid="ADPg" COPASIkey="Metabolite_223"/>
    <SBMLMap SBMLid="ADPn" COPASIkey="Metabolite_215"/>
    <SBMLMap SBMLid="AMPg" COPASIkey="Metabolite_239"/>
    <SBMLMap SBMLid="AMPn" COPASIkey="Metabolite_237"/>
    <SBMLMap SBMLid="ATPg" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="ATPn" COPASIkey="Metabolite_103"/>
    <SBMLMap SBMLid="ATPtot" COPASIkey="ModelValue_174"/>
    <SBMLMap SBMLid="Astrocytes" COPASIkey="Compartment_18"/>
    <SBMLMap SBMLid="BOLD" COPASIkey="ModelValue_156"/>
    <SBMLMap SBMLid="CBF0_Fin_t" COPASIkey="ModelValue_154"/>
    <SBMLMap SBMLid="CBF0_model_parameters" COPASIkey="ModelValue_203"/>
    <SBMLMap SBMLid="CO2a" COPASIkey="Metabolite_243"/>
    <SBMLMap SBMLid="CO2c" COPASIkey="Metabolite_213"/>
    <SBMLMap SBMLid="CRg" COPASIkey="Metabolite_225"/>
    <SBMLMap SBMLid="CRn" COPASIkey="Metabolite_217"/>
    <SBMLMap SBMLid="Capillaries" COPASIkey="Compartment_7"/>
    <SBMLMap SBMLid="Extracellular_space" COPASIkey="Compartment_26"/>
    <SBMLMap SBMLid="F" COPASIkey="ModelValue_187"/>
    <SBMLMap SBMLid="F6Pg" COPASIkey="Metabolite_87"/>
    <SBMLMap SBMLid="F6Pn" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="Fin_t" COPASIkey="ModelValue_153"/>
    <SBMLMap SBMLid="Fout_t" COPASIkey="ModelValue_155"/>
    <SBMLMap SBMLid="G6P_inh_hk" COPASIkey="ModelValue_189"/>
    <SBMLMap SBMLid="G6Pg" COPASIkey="Metabolite_95"/>
    <SBMLMap SBMLid="G6Pn" COPASIkey="Metabolite_71"/>
    <SBMLMap SBMLid="GAPg" COPASIkey="Metabolite_79"/>
    <SBMLMap SBMLid="GAPn" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="GLCa" COPASIkey="Metabolite_245"/>
    <SBMLMap SBMLid="GLCc" COPASIkey="Metabolite_209"/>
    <SBMLMap SBMLid="GLCe" COPASIkey="Metabolite_201"/>
    <SBMLMap SBMLid="GLCg" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="GLCn" COPASIkey="Metabolite_75"/>
    <SBMLMap SBMLid="GLUe" COPASIkey="Metabolite_205"/>
    <SBMLMap SBMLid="GLUg" COPASIkey="Metabolite_199"/>
    <SBMLMap SBMLid="GLUn" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="GLY_inh" COPASIkey="ModelValue_201"/>
    <SBMLMap SBMLid="GLYg" COPASIkey="Metabolite_197"/>
    <SBMLMap SBMLid="HbOP" COPASIkey="ModelValue_193"/>
    <SBMLMap SBMLid="KO1" COPASIkey="ModelValue_196"/>
    <SBMLMap SBMLid="KO2" COPASIkey="ModelValue_199"/>
    <SBMLMap SBMLid="KO3" COPASIkey="ModelValue_200"/>
    <SBMLMap SBMLid="Ki_ATP" COPASIkey="ModelValue_162"/>
    <SBMLMap SBMLid="Km_ADP" COPASIkey="ModelValue_163"/>
    <SBMLMap SBMLid="Km_ATP" COPASIkey="ModelValue_161"/>
    <SBMLMap SBMLid="Km_F6P_pfk" COPASIkey="ModelValue_169"/>
    <SBMLMap SBMLid="Km_F6P_pgi" COPASIkey="ModelValue_168"/>
    <SBMLMap SBMLid="Km_G6P" COPASIkey="ModelValue_167"/>
    <SBMLMap SBMLid="Km_G6P_glys" COPASIkey="ModelValue_148"/>
    <SBMLMap SBMLid="Km_GLC" COPASIkey="ModelValue_165"/>
    <SBMLMap SBMLid="Km_GLU" COPASIkey="ModelValue_166"/>
    <SBMLMap SBMLid="Km_GLY" COPASIkey="ModelValue_151"/>
    <SBMLMap SBMLid="Km_O2" COPASIkey="ModelValue_164"/>
    <SBMLMap SBMLid="Km_PYR" COPASIkey="ModelValue_160"/>
    <SBMLMap SBMLid="Km_ce_GLC" COPASIkey="ModelValue_132"/>
    <SBMLMap SBMLid="Km_cg_GLC" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="Km_ec_LAC" COPASIkey="ModelValue_136"/>
    <SBMLMap SBMLid="Km_eg_GLC" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="Km_en_GLC" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="Km_gc_LAC" COPASIkey="ModelValue_121"/>
    <SBMLMap SBMLid="Km_ge_LAC" COPASIkey="ModelValue_118"/>
    <SBMLMap SBMLid="Km_ne_LAC" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="Km_pump" COPASIkey="ModelValue_170"/>
    <SBMLMap SBMLid="Ko2" COPASIkey="ModelValue_172"/>
    <SBMLMap SBMLid="LACa" COPASIkey="Metabolite_247"/>
    <SBMLMap SBMLid="LACc" COPASIkey="Metabolite_211"/>
    <SBMLMap SBMLid="LACe" COPASIkey="Metabolite_203"/>
    <SBMLMap SBMLid="LACg" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="LACn" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="NADH_g_tot" COPASIkey="Metabolite_231"/>
    <SBMLMap SBMLid="NADH_n_tot" COPASIkey="Metabolite_229"/>
    <SBMLMap SBMLid="NADHg" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="NADHn" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="NADg" COPASIkey="Metabolite_221"/>
    <SBMLMap SBMLid="NADn" COPASIkey="Metabolite_219"/>
    <SBMLMap SBMLid="NAe" COPASIkey="Metabolite_227"/>
    <SBMLMap SBMLid="NAero" COPASIkey="ModelValue_177"/>
    <SBMLMap SBMLid="NAg" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="NAn" COPASIkey="Metabolite_89"/>
    <SBMLMap SBMLid="Neurons" COPASIkey="Compartment_28"/>
    <SBMLMap SBMLid="O2a" COPASIkey="Metabolite_241"/>
    <SBMLMap SBMLid="O2c" COPASIkey="Metabolite_207"/>
    <SBMLMap SBMLid="O2g" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="O2n" COPASIkey="Metabolite_83"/>
    <SBMLMap SBMLid="PCrg" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="PCrg_tot" COPASIkey="Metabolite_235"/>
    <SBMLMap SBMLid="PCrn" COPASIkey="Metabolite_99"/>
    <SBMLMap SBMLid="PCrn_tot" COPASIkey="Metabolite_233"/>
    <SBMLMap SBMLid="PEPg" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="PEPn" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="PScapg" COPASIkey="ModelValue_128"/>
    <SBMLMap SBMLid="PScapn" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="PYRg" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="PYRn" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="RT" COPASIkey="ModelValue_186"/>
    <SBMLMap SBMLid="R_GLU_NA" COPASIkey="ModelValue_198"/>
    <SBMLMap SBMLid="Rce" COPASIkey="ModelValue_183"/>
    <SBMLMap SBMLid="Rcg" COPASIkey="ModelValue_182"/>
    <SBMLMap SBMLid="Rcn" COPASIkey="ModelValue_181"/>
    <SBMLMap SBMLid="Reg" COPASIkey="ModelValue_179"/>
    <SBMLMap SBMLid="Ren" COPASIkey="ModelValue_180"/>
    <SBMLMap SBMLid="Rng" COPASIkey="ModelValue_178"/>
    <SBMLMap SBMLid="Sm_g" COPASIkey="ModelValue_194"/>
    <SBMLMap SBMLid="Sm_n" COPASIkey="ModelValue_184"/>
    <SBMLMap SBMLid="V_en_GLC" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="Vc" COPASIkey="ModelValue_197"/>
    <SBMLMap SBMLid="Vc_CO2" COPASIkey="ModelValue_145"/>
    <SBMLMap SBMLid="Vc_GLC" COPASIkey="ModelValue_130"/>
    <SBMLMap SBMLid="Vc_LAC" COPASIkey="ModelValue_134"/>
    <SBMLMap SBMLid="Vc_O2" COPASIkey="ModelValue_129"/>
    <SBMLMap SBMLid="Vce_GLC" COPASIkey="ModelValue_131"/>
    <SBMLMap SBMLid="Vcg_GLC" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="Vcg_O2" COPASIkey="ModelValue_127"/>
    <SBMLMap SBMLid="Vcn_O2" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="Vec_LAC" COPASIkey="ModelValue_135"/>
    <SBMLMap SBMLid="Veg_GLC" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="Veg_GLU" COPASIkey="ModelValue_143"/>
    <SBMLMap SBMLid="Vg" COPASIkey="ModelValue_195"/>
    <SBMLMap SBMLid="Vg_ATPase" COPASIkey="ModelValue_122"/>
    <SBMLMap SBMLid="Vg_ck" COPASIkey="ModelValue_124"/>
    <SBMLMap SBMLid="Vg_glyp" COPASIkey="ModelValue_149"/>
    <SBMLMap SBMLid="Vg_glys" COPASIkey="ModelValue_146"/>
    <SBMLMap SBMLid="Vg_gs" COPASIkey="ModelValue_141"/>
    <SBMLMap SBMLid="Vg_hk" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="Vg_ldh" COPASIkey="ModelValue_111"/>
    <SBMLMap SBMLid="Vg_leak_Na" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="Vg_mito" COPASIkey="ModelValue_114"/>
    <SBMLMap SBMLid="Vg_pfk" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="Vg_pgi" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="Vg_pgk" COPASIkey="ModelValue_107"/>
    <SBMLMap SBMLid="Vg_pk" COPASIkey="ModelValue_109"/>
    <SBMLMap SBMLid="Vg_pump" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="Vgc_CO2" COPASIkey="ModelValue_139"/>
    <SBMLMap SBMLid="Vgc_LAC" COPASIkey="ModelValue_119"/>
    <SBMLMap SBMLid="Vge_LAC" COPASIkey="ModelValue_116"/>
    <SBMLMap SBMLid="Vm" COPASIkey="ModelValue_185"/>
    <SBMLMap SBMLid="Vm_ce_GLC" COPASIkey="ModelValue_133"/>
    <SBMLMap SBMLid="Vm_cg_GLC" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="Vm_ec_LAC" COPASIkey="ModelValue_137"/>
    <SBMLMap SBMLid="Vm_eg_GLC" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="Vm_en_GLC" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="Vmax_eg_GLU" COPASIkey="ModelValue_144"/>
    <SBMLMap SBMLid="Vmax_g_ATPase" COPASIkey="ModelValue_123"/>
    <SBMLMap SBMLid="Vmax_g_gs" COPASIkey="ModelValue_142"/>
    <SBMLMap SBMLid="Vmax_g_hk" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="Vmax_g_mito" COPASIkey="ModelValue_115"/>
    <SBMLMap SBMLid="Vmax_gc_LAC" COPASIkey="ModelValue_120"/>
    <SBMLMap SBMLid="Vmax_ge_LAC" COPASIkey="ModelValue_117"/>
    <SBMLMap SBMLid="Vmax_glyp" COPASIkey="ModelValue_150"/>
    <SBMLMap SBMLid="Vmax_glys" COPASIkey="ModelValue_147"/>
    <SBMLMap SBMLid="Vmax_n_ATPase" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="Vmax_n_hk" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="Vmax_n_mito" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="Vmax_ne_LAC" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="Vmaxf_g_pgi" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="Vmaxf_n_pgi" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="Vmaxr_g_pgi" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="Vmaxr_n_pgi" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="Vn" COPASIkey="ModelValue_188"/>
    <SBMLMap SBMLid="Vn_ATPase" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="Vn_ck" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="Vn_hk" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="Vn_ldh" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="Vn_leak_Na" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="Vn_mito" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="Vn_pfk" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="Vn_pgi" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="Vn_pgk" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="Vn_pk" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="Vn_pump" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="Vn_stim" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="Vn_stim_GLU" COPASIkey="ModelValue_140"/>
    <SBMLMap SBMLid="Vnc_CO2" COPASIkey="ModelValue_138"/>
    <SBMLMap SBMLid="Vne_LAC" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="Vv" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="Vv0" COPASIkey="ModelValue_204"/>
    <SBMLMap SBMLid="aATP_mito" COPASIkey="ModelValue_192"/>
    <SBMLMap SBMLid="aG6P_inh_hk" COPASIkey="ModelValue_190"/>
    <SBMLMap SBMLid="aGLY_inh" COPASIkey="ModelValue_202"/>
    <SBMLMap SBMLid="dAMP_dATPg" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="dAMP_dATPn" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="dHb" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="dHb0" COPASIkey="ModelValue_210"/>
    <SBMLMap SBMLid="deltaVt_GLY" COPASIkey="ModelValue_152"/>
    <SBMLMap SBMLid="delta_GLY" COPASIkey="ModelValue_219"/>
    <SBMLMap SBMLid="deltaf" COPASIkey="ModelValue_220"/>
    <SBMLMap SBMLid="gg_NA" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="gn_NA" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_207"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_208"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_209"/>
    <SBMLMap SBMLid="kfg_ck" COPASIkey="ModelValue_126"/>
    <SBMLMap SBMLid="kfg_ldh" COPASIkey="ModelValue_112"/>
    <SBMLMap SBMLid="kfn_ck" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="kfn_ldh" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="kg_pfk" COPASIkey="ModelValue_106"/>
    <SBMLMap SBMLid="kg_pgk" COPASIkey="ModelValue_108"/>
    <SBMLMap SBMLid="kg_pk" COPASIkey="ModelValue_110"/>
    <SBMLMap SBMLid="kn_pfk" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="kn_pgk" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="kn_pk" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="kpump" COPASIkey="ModelValue_173"/>
    <SBMLMap SBMLid="krg_ck" COPASIkey="ModelValue_125"/>
    <SBMLMap SBMLid="krg_ldh" COPASIkey="ModelValue_113"/>
    <SBMLMap SBMLid="krn_ck" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="krn_ldh" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="nH" COPASIkey="ModelValue_175"/>
    <SBMLMap SBMLid="nOP" COPASIkey="ModelValue_176"/>
    <SBMLMap SBMLid="nh_O2_Vcn_O2" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="nh_O2_model_parameters" COPASIkey="ModelValue_171"/>
    <SBMLMap SBMLid="qak" COPASIkey="ModelValue_206"/>
    <SBMLMap SBMLid="rATP_mito" COPASIkey="ModelValue_191"/>
    <SBMLMap SBMLid="sr" COPASIkey="ModelValue_217"/>
    <SBMLMap SBMLid="sr_GLY" COPASIkey="ModelValue_223"/>
    <SBMLMap SBMLid="stim" COPASIkey="ModelValue_211"/>
    <SBMLMap SBMLid="t1" COPASIkey="ModelValue_218"/>
    <SBMLMap SBMLid="t_n_stim" COPASIkey="ModelValue_216"/>
    <SBMLMap SBMLid="tend" COPASIkey="ModelValue_213"/>
    <SBMLMap SBMLid="tend_GLY" COPASIkey="ModelValue_221"/>
    <SBMLMap SBMLid="to" COPASIkey="ModelValue_212"/>
    <SBMLMap SBMLid="to_GLY" COPASIkey="ModelValue_222"/>
    <SBMLMap SBMLid="tv" COPASIkey="ModelValue_205"/>
    <SBMLMap SBMLid="u_g" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="u_n" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="unitpulseSB" COPASIkey="ModelValue_158"/>
    <SBMLMap SBMLid="unitstepSB" COPASIkey="ModelValue_159"/>
    <SBMLMap SBMLid="unitstepSB2" COPASIkey="ModelValue_224"/>
    <SBMLMap SBMLid="v1_n" COPASIkey="ModelValue_214"/>
    <SBMLMap SBMLid="v2_n" COPASIkey="ModelValue_215"/>
    <SBMLMap SBMLid="v_stim" COPASIkey="ModelValue_157"/>
  </SBMLReference>
</COPASI>
