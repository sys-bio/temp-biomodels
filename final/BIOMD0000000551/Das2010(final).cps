<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.12 (Build 81) (http://www.copasi.org) at 2014-09-30 14:18:18 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="12" versionDevel="81" copasiSourcesModified="0">
  <Model key="Model_4" name="Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics" simulationType="time" timeUnit="h" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.02214179e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_4">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/doid/DOID:10652"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/20411345"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:20411345"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-09-23T11:29:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>lloret@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Lloret i Villas</vCard:Family>
                <vCard:Given>Audald</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2014-09-23T11:30:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2014-09-26T11:15:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1409230000"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0097242"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <div class="dc:title">Das2010</div>
    <div class="dc:description">Effect of a gamma-secretase
inhibitor on Amyloid-beta dynamics. 

  </div>
  <div class="dc:bibliographicCitation">
    <p>This model is described in the article:</p>
    <div class="bibo:title">
      <a href="http://identifiers.org/pubmed/20411345" title="Access to this publication">Modeling effect of a
    ?-secretase inhibitor on amyloid-? dynamics reveals significant
    role of an amyloid clearance mechanism.</a>
    </div>
    <div class="bibo:authorList">Das R, Nachbar RB, Edelstein-Keshet
  L, Saltzman JS, Wiener MC, Bagchi A, Bailey J, Coombs D, Simon
  AJ, Hargreaves RJ, Cook JJ.</div>
    <div class="bibo:Journal">Bull. Math. Biol. 2011 Jan; 73(1):
  230-247</div>
    <p>Abstract:</p>
    <div class="bibo:abstract">
      <p>Aggregation of the small peptide amyloid beta (A?) into
    oligomers and fibrils in the brain is believed to be a
    precursor to Alzheimer&apos;s disease. A? is produced via multiple
    proteolytic cleavages of amyloid precursor protein (APP),
    mediated by the enzymes ?- and ?-secretase. In this study, we
    examine the temporal dynamics of soluble (unaggregated) A? in
    the plasma and cerebral-spinal fluid (CSF) of rhesus monkeys
    treated with different oral doses of a ?-secretase inhibitor. A
    dose-dependent reduction of A? concentration was observed
    within hours of drug ingestion, for all doses tested. A?
    concentration in the CSF returned to its predrug level over the
    monitoring period. In contrast, A? concentration in the plasma
    exhibited an unexpected overshoot to as high as 200% of the
    predrug concentration, and this overshoot persisted as late as
    72 hours post-drug ingestion. To account for these
    observations, we proposed and analyzed a minimal physiological
    model for A? dynamics that could fit the data. Our analysis
    suggests that the overshoot arises from the attenuation of an
    A? clearance mechanism, possibly due to the inhibitor. Our
    model predicts that the efficacy of A? clearance recovers to
    its basal (pretreatment) value with a characteristic time of
    &gt;48 hours, matching the time-scale of the overshoot. These
    results point to the need for a more detailed investigation of
    soluble A? clearance mechanisms and their interaction with
    A?-reducing drugs.</p>
    </div>
  </div>
  <div class="dc:publisher">
    <p>This model is hosted on 
  <a href="http://www.ebi.ac.uk/biomodels/">BioModels Database</a>
  and identified by: 
  <a href="http://identifiers.org/biomodels.db/MODEL1409230000">MODEL1409230000</a>.</p>
  <p>To cite BioModels Database, please use: 
  <a href="http://identifiers.org/pubmed/20587024" title="Latest BioModels Database publication">BioModels Database:
  An enhanced, curated and annotated resource for published
  quantitative kinetic models</a>.</p>
</div><div class="dc:license">
  <p>To the extent possible under law, all copyright and related or
  neighbouring rights to this encoded model have been dedicated to
  the public domain worldwide. Please refer to 
  <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Access to: CC0 1.0 Universal (CC0 1.0), Public Domain Dedication">CC0
  Public Domain Dedication</a> for more information.</p>
</div>
</body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="CSF" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T14:16:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_3" name="Plasma" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T14:15:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_1" name="C" simulationType="ode" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P05067" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Abeta concentration in CSF</pre>
  </body>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[Sc],Reference=Value&gt;/(1+&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[g(t)],Reference=Value&gt;/&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[Ki],Reference=Value&gt;)-&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[k1],Reference=Value&gt;*&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Compartments[CSF],Vector=Metabolites[C],Reference=Concentration&gt;+&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[J],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="P" simulationType="ode" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P05067" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Abeta concentration in plasma</pre>
  </body>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[k1],Reference=Value&gt;*&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[r],Reference=Value&gt;*&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Compartments[CSF],Vector=Metabolites[C],Reference=Concentration&gt;-&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[J],Reference=Value&gt;*&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[r],Reference=Value&gt;-&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[deltap],Reference=Value&gt;*&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Compartments[Plasma],Vector=Metabolites[P],Reference=Concentration&gt;*&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[l],Reference=Value&gt;
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="l" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T14:21:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Efficacy of Abeta clearance</pre>
  </body>
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[epsilon],Reference=Value&gt;*(1/(1+&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[alpha],Reference=Value&gt;*&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[f(t)],Reference=Value&gt;)-&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[l],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Sc" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T14:22:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="g(t)" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T14:23:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>time course for the gamma-secretase inhibitor in CSF</pre>
  </body>
        </Comment>
        <Expression>
          if(&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Reference=Time&gt; lt &lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[tauCSF],Reference=Value&gt;,&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Reference=Time&gt;/&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[tauCSF],Reference=Value&gt;*&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[aCSF],Reference=Value&gt;*exp(-&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[bCSF],Reference=Value&gt;*&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[tauCSF],Reference=Value&gt;),&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[aCSF],Reference=Value&gt;*exp(-&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[bCSF],Reference=Value&gt;*&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Reference=Time&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="Ki" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T14:23:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T14:36:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="J" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T14:37:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="r" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T14:27:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="deltap" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T14:29:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="epsilon" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T14:28:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="alpha" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T14:35:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="f(t)" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T14:28:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>time course for the gamma-secretase inhibitor in plasma</pre>
  </body>
        </Comment>
        <Expression>
          if(&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Reference=Time&gt; lt &lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[tauplasma],Reference=Value&gt;,&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Reference=Time&gt;/&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[tauplasma],Reference=Value&gt;*&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[aplasma],Reference=Value&gt;*exp(-&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[bplasma],Reference=Value&gt;*&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[tauplasma],Reference=Value&gt;),&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[aplasma],Reference=Value&gt;*exp(-&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[bplasma],Reference=Value&gt;*&lt;CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Reference=Time&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="aplasma" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T15:32:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="bplasma" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T15:32:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="tauplasma" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T15:40:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="aCSF" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T15:32:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="bCSF" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T15:32:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="tauCSF" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-07-31T15:33:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Compartments[CSF]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Compartments[Plasma]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Compartments[CSF],Vector=Metabolites[C]" value="6.022141790000001e+20" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Compartments[Plasma],Vector=Metabolites[P]" value="6.022141790000001e+20" type="Species" simulationType="ode"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[l]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[Sc]" value="1.16" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[g(t)]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[Ki]" value="0.0232" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[k1]" value="1.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[J]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[r]" value="0.43" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[deltap]" value="0.55" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[epsilon]" value="0.0206" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[alpha]" value="0.522" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[f(t)]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[aplasma]" value="187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[bplasma]" value="0.089" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[tauplasma]" value="1.66" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[aCSF]" value="4.92" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[bCSF]" value="0.259" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Values[tauCSF]" value="2.06" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_4"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 1 6.022141790000001e+20 6.022141790000001e+20 0 0 1 1 1.16 0.0232 1.13 0 0.43 0.55 0.0206 0.522 187 0.089 1.66 4.92 0.259 2.06 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
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
        <Parameter name="StepNumber" type="unsignedInteger" value="7200"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="72"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
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
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
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
        <Parameter name="Steady-State" type="key" value="Task_12"/>
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
    <Task key="Task_13" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
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
    <PlotSpecification name="Figure 4" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[C]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Compartments[CSF],Vector=Metabolites[C],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics,Vector=Compartments[Plasma],Vector=Metabolites[P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="MODEL1409230000_20140929103620.xml">
    <SBMLMap SBMLid="C" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="CSF" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="J" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="Ki" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="P" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Plasma" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="Sc" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="aCSF" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="alpha" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="aplasma" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="bCSF" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="bplasma" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="deltap" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="epsilon" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="f_t" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="g_t" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="l" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="r" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="tauCSF" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="tauplasma" COPASIkey="ModelValue_13"/>
  </SBMLReference>
</COPASI>
