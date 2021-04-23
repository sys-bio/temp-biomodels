<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-03-05 12:56:48 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="22" versionDevel="170" copasiSourcesModified="0">
  <Model key="Model_0" name="Lee2017 - Paracetamol first-pass metabolism PK model" simulationType="time" timeUnit="h" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="µmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:29116458"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-19T17:09:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>mroberts@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Roberts</vCard:Family>
            <vCard:Given>Matthew Roberts</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:hasPart rdf:resource="urn:miriam:kegg.drug:D00217"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C49663"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:bto:BTO:0000195"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:bto:BTO:0000599"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Apical" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-20T14:28:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="Caco-2" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-20T14:28:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000195"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_2" name="Basolateral + HepG2" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-20T14:26:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000599"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="C_para" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-19T17:39:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:46195" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.drug:D00217" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          -1*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[P_para],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Ai],Reference=Value>*(&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Apical],Vector=Metabolites[C_para],Reference=Concentration>-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_para],Reference=Concentration>)/&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_api],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="C_para" simulationType="ode" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-19T17:41:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:46195"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.drug:D00217"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[P_para],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Ai],Reference=Value>*(&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Apical],Vector=Metabolites[C_para],Reference=Concentration>-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_para],Reference=Concentration>)-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[P_para],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Ai],Reference=Value>*(&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_para],Reference=Concentration>-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Basolateral + HepG2],Vector=Metabolites[C_para],Reference=Concentration>)-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Mp_s_caco],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_para],Reference=Concentration>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_caco],Reference=Value>-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Mp_g_caco],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_para],Reference=Concentration>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_caco],Reference=Value>)/&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_caco],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="C_para" simulationType="ode" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-19T17:46:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:46195" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.drug:D00217" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[P_para],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Ai],Reference=Value>*(&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_para],Reference=Concentration>-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Basolateral + HepG2],Vector=Metabolites[C_para],Reference=Concentration>)-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Mp_s_HepG2],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Basolateral + HepG2],Vector=Metabolites[C_para],Reference=Concentration>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_basol],Reference=Value>-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Mp_g_HepG2],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Basolateral + HepG2],Vector=Metabolites[C_para],Reference=Concentration>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_basol],Reference=Value>)/&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_basol],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="C_sulf" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-19T17:46:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:32635"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -1*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[P_sulf],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Ai],Reference=Value>*(&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Apical],Vector=Metabolites[C_sulf],Reference=Concentration>-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_sulf],Reference=Concentration>)/&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_api],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="C_sulf" simulationType="ode" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-19T17:51:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:32635"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[P_sulf],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Ai],Reference=Value>*(&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Apical],Vector=Metabolites[C_sulf],Reference=Concentration>-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_sulf],Reference=Concentration>)-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[P_sulf],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Ai],Reference=Value>*(&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_sulf],Reference=Concentration>-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Basolateral + HepG2],Vector=Metabolites[C_sulf],Reference=Concentration>)+&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Mp_s_caco],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_para],Reference=Concentration>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_caco],Reference=Value>)/&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_caco],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="C_sulf" simulationType="ode" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-19T17:46:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:32635"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[P_sulf],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Ai],Reference=Value>*(&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_sulf],Reference=Concentration>-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Basolateral + HepG2],Vector=Metabolites[C_sulf],Reference=Concentration>)+&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Mp_s_HepG2],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Basolateral + HepG2],Vector=Metabolites[C_para],Reference=Concentration>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_basol],Reference=Value>)/&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_basol],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="C_glu" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-19T17:51:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:46195"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.drug:D00217"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C63812"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -1*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[P_glu],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Ai],Reference=Value>*(&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Apical],Vector=Metabolites[C_glu],Reference=Concentration>-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_glu],Reference=Concentration>)/&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_api],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="C_glu" simulationType="ode" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-19T17:51:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:46195"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.drug:D00217"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C63812"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[P_glu],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Ai],Reference=Value>*(&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Apical],Vector=Metabolites[C_glu],Reference=Concentration>-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_glu],Reference=Concentration>)-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[P_glu],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Ai],Reference=Value>*(&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_glu],Reference=Concentration>-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Basolateral + HepG2],Vector=Metabolites[C_glu],Reference=Concentration>)+&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Mp_g_caco],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_para],Reference=Concentration>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_caco],Reference=Value>)/&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_caco],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="C_glu" simulationType="ode" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-20T10:37:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:46195"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.drug:D00217"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C63812"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[P_glu],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Ai],Reference=Value>*(&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_glu],Reference=Concentration>-&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Basolateral + HepG2],Vector=Metabolites[C_glu],Reference=Concentration>)+&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Mp_g_HepG2],Reference=Value>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Basolateral + HepG2],Vector=Metabolites[C_para],Reference=Concentration>*&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_basol],Reference=Value>)/&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_basol],Reference=Value>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="P_para" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-20T11:20:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C82333"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Ai" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-20T11:15:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C25157"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="Mp_s_caco" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-20T11:20:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C26633"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="Mp_g_caco" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-20T11:20:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C26633"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="V_api" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-20T11:15:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000468"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Reference=Time> &lt;= &lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[time_threshold],Reference=Value>,500,400)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="V_caco" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-19T17:46:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000468"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Reference=Time> &lt;= &lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[time_threshold],Reference=Value>,0.33,0.33)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="Mp_s_HepG2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-20T11:20:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C26633"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="V_basol" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-20T11:15:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000468"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Reference=Time> &lt;= &lt;CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[time_threshold],Reference=Value>,380,280)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="P_sulf" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-20T11:20:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C82333"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="P_glu" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-20T11:20:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C82333"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="Mp_g_HepG2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-20T11:20:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C26633"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="time_threshold" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-20T11:16:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C25662"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Apical]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Basolateral + HepG2]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Apical],Vector=Metabolites[C_para]" value="1.5055352142500001e+21" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_para]" value="602.21408570000006" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Basolateral + HepG2],Vector=Metabolites[C_para]" value="3.0110704284999997e+18" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Apical],Vector=Metabolites[C_sulf]" value="602.21408570000006" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_sulf]" value="602.21408570000006" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Basolateral + HepG2],Vector=Metabolites[C_sulf]" value="602.21408570000006" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Apical],Vector=Metabolites[C_glu]" value="602.21408570000006" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Caco-2],Vector=Metabolites[C_glu]" value="602.21408570000006" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Basolateral + HepG2],Vector=Metabolites[C_glu]" value="602.21408570000006" type="Species" simulationType="ode"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[P_para]" value="103.8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Ai]" value="0.33000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Mp_s_caco]" value="14.9" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Mp_g_caco]" value="17.600000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_api]" value="500" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_caco]" value="0.33000000000000002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Mp_s_HepG2]" value="0.34999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[V_basol]" value="380" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[P_sulf]" value="49.899999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[P_glu]" value="58.899999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[Mp_g_HepG2]" value="0.58999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Values[time_threshold]" value="6" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 1.5055352142500001e+21 602.21408570000006 602.21408570000006 602.21408570000006 602.21408570000006 602.21408570000006 3.0110704284999997e+18 602.21408570000006 602.21408570000006 500 0.33000000000000002 380 1 1 1 103.8 0.33000000000000002 14.9 17.600000000000001 0.34999999999999998 49.899999999999999 58.899999999999999 0.58999999999999997 6 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="250"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="25"/>
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
    <PlotSpecification name="figure6ab" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[C_para{&quot;Basolateral + HepG2&quot;}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Basolateral + HepG2],Vector=Metabolites[C_para],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C_para{Apical}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Apical],Vector=Metabolites[C_para],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="figure6cd" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[C_glu{&quot;Basolateral + HepG2&quot;}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Basolateral + HepG2],Vector=Metabolites[C_glu],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C_glu{Apical}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Apical],Vector=Metabolites[C_glu],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="figure6ef" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[C_sulf{&quot;Basolateral + HepG2&quot;}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Basolateral + HepG2],Vector=Metabolites[C_sulf],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C_sulf{Apical}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Lee2017 - Paracetamol first-pass metabolism PK model,Vector=Compartments[Apical],Vector=Metabolites[C_sulf],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Lee2017_Paracetamol_Metabolism.xml">
    <SBMLMap SBMLid="Ai" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="Apical" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="Basolateral___HepG2" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="C_glu_Apical" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="C_glu_Caco_2" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="C_glu__Basolateral___HepG2_" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="C_para_Apical" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="C_para_Caco_2" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="C_para__Basolateral___HepG2_" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="C_sulf_Apical" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="C_sulf_Caco_2" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="C_sulf__Basolateral___HepG2_" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Caco_2" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="Mp_g_HepG2" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="Mp_g_caco" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="Mp_s_HepG2" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="Mp_s_caco" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="P_glu" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="P_para" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="P_sulf" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="V_api" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="V_basol" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="V_caco" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="time_threshold" COPASIkey="ModelValue_11"/>
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
