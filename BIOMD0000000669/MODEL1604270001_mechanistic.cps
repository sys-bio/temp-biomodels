<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-02-07 15:02:29 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="22" versionDevel="170" copasiSourcesModified="0">
  <Model key="Model_0" name="Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C191"/>
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C49662"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:26252969"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:23:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>mroberts@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Roberts</vCard:Family>
            <vCard:Given>Matthew Grant</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:hasPart rdf:resource="urn:miriam:kegg.drug:D02368"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:kegg.drug:D10417"/>
    <CopasiMT:is rdf:resource="urn:miriam:biomodels.db:MODEL1604270001"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:bto:BTO:0000988"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Pancreas" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:23:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000988" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="G1" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0051318" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17355" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:23:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000304" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(1-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Inh_3],Reference=Value>)*(1-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Inh_b],Reference=Value>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k3],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G2],Reference=Concentration>-(1-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Inh_1],Reference=Value>)*(1-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Inh_b],Reference=Value>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k1],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G1],Reference=Concentration>-(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_apo_g],Reference=Value>)*(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_apo_b],Reference=Value>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_apo],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G1],Reference=Concentration>-(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_other_g],Reference=Value>)*(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_other_b],Reference=Value>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_other],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G1],Reference=Concentration>
        </Expression>
        <InitialExpression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(G1)_0],Reference=InitialValue>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[R_0],Reference=InitialValue>/100
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="S" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0051320" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17395" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T11:59:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000304" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Inh_1],Reference=Value>)*(1-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Inh_b],Reference=Value>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k1],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G1],Reference=Concentration>-(1-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Inh_g],Reference=Value>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k2],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[S],Reference=Concentration>-(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_apo_g],Reference=Value>)*(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_apo_b],Reference=Value>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_apo],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[S],Reference=Concentration>-(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_other_g],Reference=Value>)*(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_other_b],Reference=Value>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_other],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[S],Reference=Concentration>
        </Expression>
        <InitialExpression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(S)_0],Reference=InitialValue>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[R_0],Reference=InitialValue>/100
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="G2" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17356" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T12:04:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:go:GO:0000279" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:go:GO:0051319" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:brenda:BTO:0000304" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Inh_g],Reference=Value>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k2],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[S],Reference=Concentration>-(1-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Inh_3],Reference=Value>)*(1-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Inh_b],Reference=Value>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k3],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G2],Reference=Concentration>-(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_apo_g],Reference=Value>)*(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_apo_b],Reference=Value>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_apo],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G2],Reference=Concentration>-(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_other_g],Reference=Value>)*(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_other_b],Reference=Value>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_other],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G2],Reference=Concentration>
        </Expression>
        <InitialExpression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(G2)_0],Reference=InitialValue>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[R_0],Reference=InitialValue>/100
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="R_apo" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17557" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T12:13:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000304" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_apo_g],Reference=Value>)*(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_apo_b],Reference=Value>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_apo],Reference=Value>*(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G1],Reference=Concentration>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[S],Reference=Concentration>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G2],Reference=Concentration>)-(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_apo_g],Reference=Value>)*(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_apo_b],Reference=Value>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f1],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_apo],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_apo],Reference=Concentration>
        </Expression>
        <InitialExpression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(apo)_0],Reference=InitialValue>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[R_0],Reference=InitialValue>/100
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="R_other" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T12:17:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000304" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_other_g],Reference=Value>)*(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_other_b],Reference=Value>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_other],Reference=Value>*(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G1],Reference=Concentration>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[S],Reference=Concentration>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G2],Reference=Concentration>)-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_other],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_other],Reference=Concentration>
        </Expression>
        <InitialExpression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(other)_0],Reference=InitialValue>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[R_0],Reference=InitialValue>/100
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="R_total" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T11:59:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:obi:OBI:0002076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G1],Reference=Concentration>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[S],Reference=Concentration>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G2],Reference=Concentration>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_apo],Reference=Concentration>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_other],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="R_live" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C18081" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T12:30:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:obi:OBI:0002076" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G1],Reference=Concentration>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[S],Reference=Concentration>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G2],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Inh_1" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C15632" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:25:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C29895" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_live],Reference=Concentration>/(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[IR50],Reference=Value>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_live],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="IR50" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:25:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obi:OBI:0001191" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="Inh_3" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C15632" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:26:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C29895" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Imax_3],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_live],Reference=Concentration>/(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[IR50],Reference=Value>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_live],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="Imax_3" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:26:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k3" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:26:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0044770" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:26:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0044843" />
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C25868" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="k_apo" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:26:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C17557" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="k2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:26:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0044770" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="Imax_g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:27:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="C_g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:27:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:175901" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.drug:D02368" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C66876" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="C_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:27:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.drug:D10417" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C88295" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="Hi_g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:27:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C48923" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="Hs_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:27:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C48923" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="Hi_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:28:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C48923" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="Hs_g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:28:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C48923" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="Tlag_re" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:29:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000225" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_comb1],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_b],Reference=Value>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Tlag_r],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="Tlag_sg" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:29:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000225" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="k_other" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:30:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0008219" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_b],Reference=Value> != 0 and &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=Value> != 0,0.000297,0)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="Hother_g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:30:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C48923" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="Smax_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:30:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="Psi_i" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:30:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0071156" />
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C54708" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          if(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_b],Reference=InitialValue> != 0 and &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=InitialValue> != 0,0.949,1)
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="Psi_s" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:30:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C19928" />
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C54708" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          if(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_b],Reference=InitialValue> != 0 and &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=InitialValue> != 0,1.26,1)
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="Smax_g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:30:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="SC50_g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:31:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obi:OBI:0001180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="SC50_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:31:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obi:OBI:0001180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="k_comb2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:31:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000225" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="k_comb1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:31:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000225" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="k_repair" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:31:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0071156" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="Tlag_r" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:32:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000225" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=Value> == 0,0,&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_delay],Reference=Value>*log(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="k_delay" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:32:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000225" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="R_0" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:34:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C85644" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="f(G1)_0" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:34:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C85644" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="f(S)_0" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:34:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C85644" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="f(apo)_0" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:34:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C85644" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="f(other)_0" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:34:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C85644" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="f1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:37:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C17557" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="Imax_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:39:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="IC50_g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:39:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obi:OBI:0001191" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="IC50_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:40:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obi:OBI:0001191" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="k_tau" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:42:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="Kother_g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:43:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0008219" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="Kother_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:44:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0008219" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="Hother_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:44:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C48923" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="Inh_g" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C15632" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:48:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C29895" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_b],Reference=Value> == 0 and &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Reference=Time> &lt;= &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Tlag_r],Reference=Value>,&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Imax_g],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hi_g],Reference=Value>/(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[IC50_g],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hi_g],Reference=Value>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hi_g],Reference=Value>),if(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_b],Reference=Value> == 0 and &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Reference=Time> > &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Tlag_r],Reference=Value>,&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Imax_g],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hi_g],Reference=Value>/(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[IC50_g],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hi_g],Reference=Value>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hi_g],Reference=Value>)*exp(-1*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_repair],Reference=Value>*(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Reference=Time>-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Tlag_r],Reference=Value>)),if(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_b],Reference=Value> != 0 and &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Reference=Time> &lt;= &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Tlag_re],Reference=Value>,&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Imax_g],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hi_g],Reference=Value>/((&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Psi_i],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[IC50_g],Reference=Value>)^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hi_g],Reference=Value>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hi_g],Reference=Value>),if(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_b],Reference=Value> != 0 and &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Reference=Time> > &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Tlag_re],Reference=Value>,&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Imax_g],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hi_g],Reference=Value>/((&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Psi_i],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[IC50_g],Reference=Value>)^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hi_g],Reference=Value>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hi_g],Reference=Value>)*exp(-1*(1-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_comb2],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_b],Reference=Value>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_repair],Reference=Value>*(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Reference=Time>-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Tlag_re],Reference=Value>)),0))))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="Inh_b" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C29895" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T10:59:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C15632" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Imax_b],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_b],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hi_b],Reference=Value>/(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[IC50_b],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hi_b],Reference=Value>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_b],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hi_b],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="Sti_g" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C15632" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T11:26:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C40715" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Reference=Time> &lt;= &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Tlag_sg],Reference=Value>,0,&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Smax_g],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hs_g],Reference=Value>/(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[SC50_g],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hs_g],Reference=Value>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hs_g],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="Sti_other_g" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C15632" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T11:32:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Kother_g],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hother_g],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="Sti_other_b" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C15632" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T11:35:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Kother_b],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_b],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hother_b],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="Sti_b" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C15632" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T11:36:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C40715" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Smax_b],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_b],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hs_b],Reference=Value>/((&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Psi_s],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[SC50_b],Reference=Value>)^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hs_b],Reference=Value>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_b],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hs_b],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="Sti_apo_g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C15632" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T11:55:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C40715" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Value???
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="Sti_apo_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C15632" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T11:55:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C40715" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Value???
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="f(G2)_0" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T12:12:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C85644" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          100-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(apo)_0],Reference=InitialValue>-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(G1)_0],Reference=InitialValue>-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(S)_0],Reference=InitialValue>-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(other)_0],Reference=InitialValue>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="CURVE_G1" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0200183" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T12:57:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G1],Reference=Concentration>/&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_total],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="CURVE_S" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0200183" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T12:57:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[S],Reference=Concentration>/&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_total],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="CURVE_G2" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0200183" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-06T12:57:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G2],Reference=Concentration>/&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_total],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="CURVE_FIGURE_7a/d/g" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-07T14:48:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_live],Reference=Concentration>/&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_total],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="CURVE_FIGURE_7b/r/h" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-07T14:49:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_apo],Reference=Concentration>/&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_total],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="CURVE_FIGURE_7c/f/i" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-07T14:50:14Z</dcterms:W3CDTF>
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
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G1]" value="6.8360934152321202e+25" type="Species" simulationType="ode">
            <InitialExpression>
              &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(G1)_0],Reference=InitialValue>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[R_0],Reference=InitialValue>/100
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[S]" value="1.53492326163216e+25" type="Species" simulationType="ode">
            <InitialExpression>
              &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(S)_0],Reference=InitialValue>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[R_0],Reference=InitialValue>/100
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[G2]" value="4.917439338191919e+25" type="Species" simulationType="ode">
            <InitialExpression>
              &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(G2)_0],Reference=InitialValue>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[R_0],Reference=InitialValue>/100
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_apo]" value="7.10612621126e+24" type="Species" simulationType="ode">
            <InitialExpression>
              &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(apo)_0],Reference=InitialValue>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[R_0],Reference=InitialValue>/100
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_other]" value="2.1318378633780001e+24" type="Species" simulationType="ode">
            <InitialExpression>
              &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(other)_0],Reference=InitialValue>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[R_0],Reference=InitialValue>/100
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_total]" value="1.421225242252e+26" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[R_live]" value="1.3288456015056201e+26" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Inh_1]" value="0.64208811034161672" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[IR50]" value="123000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Inh_3]" value="0.48349234708723743" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Imax_3]" value="0.753" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k3]" value="0.222" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k1]" value="0.35699999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_apo]" value="0.0039399999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k2]" value="0.114" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Imax_g]" value="0.878" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_b]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hi_g]" value="4.3399999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hs_b]" value="1.24" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hi_b]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hs_g]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Tlag_re]" value="81.324245310488138" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Tlag_sg]" value="38.700000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_other]" value="0.00029700000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hother_g]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Smax_b]" value="3.7200000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Psi_i]" value="0.94899999999999995" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              if(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_b],Reference=InitialValue> != 0 and &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=InitialValue> != 0,0.949,1)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Psi_s]" value="1.26" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              if(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_b],Reference=InitialValue> != 0 and &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=InitialValue> != 0,1.26,1)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Smax_g]" value="2.7400000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[SC50_g]" value="23.600000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[SC50_b]" value="50.100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_comb2]" value="0.00077499999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_comb1]" value="0.000919" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_repair]" value="0.049500000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Tlag_r]" value="55.720620288104236" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_delay]" value="18.600000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[R_0]" value="236000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(G1)_0]" value="48.100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(S)_0]" value="10.800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(apo)_0]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(other)_0]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f1]" value="0.46700000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Imax_b]" value="0.17699999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[IC50_g]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[IC50_b]" value="154" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[k_tau]" value="0.376" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Kother_g]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Kother_b]" value="0.0054999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Hother_b]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Inh_g]" value="0.87425304256292902" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Inh_b]" value="0.13532110091743119" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_g]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_other_g]" value="1.3492828476735636e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_other_b]" value="2.75" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_b]" value="3.4545816684754307" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_apo_g]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_apo_b]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(G2)_0]" value="34.599999999999994" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              100-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(apo)_0],Reference=InitialValue>-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(G1)_0],Reference=InitialValue>-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(S)_0],Reference=InitialValue>-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[f(other)_0],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[CURVE_G1]" value="0.48099999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[CURVE_S]" value="0.108" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[CURVE_G2]" value="0.34599999999999992" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[CURVE_FIGURE_7a/d/g]" value="0.93500000000000005" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[CURVE_FIGURE_7b/r/h]" value="0.050000000000000003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[CURVE_FIGURE_7c/f/i]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
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
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 6.8360934152321202e+25 1.53492326163216e+25 4.917439338191919e+25 7.10612621126e+24 2.1318378633780001e+24 1.421225242252e+26 1.3288456015056201e+26 0.64208811034161672 0.48349234708723743 81.324245310488138 0.00029700000000000001 55.720620288104236 0.87425304256292902 0.13532110091743119 0 1.3492828476735636e-05 2.75 3.4545816684754307 0.48099999999999998 0.108 0.34599999999999992 0.93500000000000005 0.050000000000000003 1 123000 0.753 0.222 0.35699999999999998 0.0039399999999999999 0.114 0.878 20 500 4.3399999999999999 1.24 1 3 38.700000000000003 0.10000000000000001 3.7200000000000002 0.94899999999999995 1.26 2.7400000000000002 23.600000000000001 50.100000000000001 0.00077499999999999997 0.000919 0.049500000000000002 18.600000000000001 236000 48.100000000000001 10.800000000000001 5 1.5 0.46700000000000003 0.17699999999999999 6 154 0.376 1.0000000000000001e-05 0.0054999999999999997 1 0 0 34.599999999999994 0 
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
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="100"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Maximum" type="float" value="20"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Number of steps" type="unsignedInteger" value="4"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[C_g],Reference=InitialValue"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="log" type="bool" value="0"/>
          </ParameterGroup>
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
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
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
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
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
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
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
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
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
    <Task key="Task_2" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_1" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
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
    <PlotSpecification name="plot" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[CURVE_G1]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[CURVE_G1],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[CURVE_G2]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[CURVE_G2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[CURVE_S]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[CURVE_S],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_0" associatedEntityKey="Task_11" objectCN="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_apo_b],Reference=InitialValue" objectType="float" objectValue="0" minValue="0" maxValue="2" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_1" associatedEntityKey="Task_11" objectCN="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - mechanistic PD model,Vector=Values[Sti_apo_g],Reference=InitialValue" objectType="float" objectValue="0" minValue="0" maxValue="2" tickNumber="1000" tickFactor="100" scaling="linear"/>
    </ListOfSliders>
  </GUI>
  <SBMLReference file="MODEL1604270001_mechanistic.xml">
    <SBMLMap SBMLid="CURVE_G1" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="CURVE_G2" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="CURVE_S" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="C_b" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="C_g" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="G1" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="G2" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Hi_b" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="Hi_g" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="Hother_b" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="Hother_g" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="Hs_b" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="Hs_g" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="IC50_b" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="IC50_g" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="IR50" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="Imax_3" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="Imax_b" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="Imax_g" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="Inh_1" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="Inh_3" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="Inh_b" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="Inh_g" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="Kother_b" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="Kother_g" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="Pancreas" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="Psi_i" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="Psi_s" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="R_0" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="R_apo" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="R_live" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="R_other" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="R_total" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="S" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="SC50_b" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="SC50_g" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="Smax_b" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="Smax_g" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="Sti_apo_b" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="Sti_apo_g" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="Sti_b" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="Sti_g" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="Sti_other_b" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="Sti_other_g" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="Tlag_r" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="Tlag_re" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="Tlag_sg" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="f1" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="f_G1__0" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="f_G2__0" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="f_S__0" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="f_apo__0" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="f_other__0" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="k_apo" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="k_comb1" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="k_comb2" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="k_delay" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="k_other" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="k_repair" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="k_tau" COPASIkey="ModelValue_39"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_0" name="meter" symbol="m">
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_2" name="second" symbol="s">
      <Expression>
        s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
