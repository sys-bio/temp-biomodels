<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-08-14 13:01:40 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="22" versionDevel="170" copasiSourcesModified="0">
  <Model key="Model_1" name="Dunster2016 - Nondimensional Coagulation Model" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1093/imamat/hxw007"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-14T10:05:20Z</dcterms:W3CDTF>
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
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0007596"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Fibrinogen" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-14T10:14:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_6],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Fibrinogen],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Fibrin" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-14T10:17:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_6],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Fibrinogen],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="PC" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-14T10:17:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_5a],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[PC],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="APC" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-14T10:18:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_5a],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[PC],Reference=Concentration>-&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_5b],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[APC],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="APC_inactive" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-14T10:18:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_5b],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[APC],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Xa" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-14T10:19:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_1a],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[gamma_tilde_1a],Reference=Value>*exp(-&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[gamma_tilde_1a],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time>)+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_3c],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_3a],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[APC],Reference=Concentration>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa],Reference=Concentration>/(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa],Reference=Concentration>+1)-&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_1b],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa],Reference=Concentration>-&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_3a],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa],Reference=Concentration>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Va" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-14T11:50:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[IIa],Reference=Concentration>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>/(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_2am],Reference=Value>*(1+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Fibrinogen],Reference=Concentration>))+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_2b],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa],Reference=Concentration>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>/(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>+1+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[II],Reference=Concentration>)+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_3b],Reference=Value>/&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[q_tilde_3a],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa],Reference=Concentration>-&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[APC],Reference=Concentration>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va],Reference=Concentration>/(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va],Reference=Concentration>+1)-&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa],Reference=Concentration>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Va:Xa" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-14T11:54:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[q_tilde_3a],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa],Reference=Concentration>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va],Reference=Concentration>-&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_3b],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa],Reference=Concentration>-&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_3c],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[q_tilde_3a],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[APC],Reference=Concentration>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa],Reference=Concentration>/(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa],Reference=Concentration>+1)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="IIa" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-14T12:00:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_4a],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa:L],Reference=Concentration>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[II],Reference=Concentration>/(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>+1+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[II],Reference=Concentration>)+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_4a],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_4b],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa:L],Reference=Concentration>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[II],Reference=Concentration>/(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[q_tilde_4a],Reference=Value>*(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[II],Reference=Concentration>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_4bm],Reference=Value>))-&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[IIa],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="V" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-14T12:04:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_2a],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[IIa],Reference=Concentration>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>/(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_2am],Reference=Value>*(1+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Fibrinogen],Reference=Concentration>))-&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_2a],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_2b],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa],Reference=Concentration>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>/(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>+1+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[II],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="II" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-14T12:06:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[q_tilde_4a],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa:L],Reference=Concentration>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[II],Reference=Concentration>/(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>+1+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[II],Reference=Concentration>)-&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_4b],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa:L],Reference=Concentration>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[II],Reference=Concentration>/(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[II],Reference=Concentration>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_4bm],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="Xa:L" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-14T12:08:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.5*(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_x],Reference=Value>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[l_tilde_x],Reference=Value>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa],Reference=Concentration>-sqrt((&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_x],Reference=Value>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[l_tilde_x],Reference=Value>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa],Reference=Concentration>)^2-4*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[l_tilde_x],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa],Reference=Concentration>))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="Va:Xa:L" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-14T12:00:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          0.5*(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_b],Reference=Value>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[l_tilde_b],Reference=Value>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa],Reference=Concentration>-sqrt((&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_b],Reference=Value>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[l_tilde_b],Reference=Value>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa],Reference=Concentration>)^2-4*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[l_tilde_b],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa],Reference=Concentration>))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="Xa:ATIII" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-14T12:12:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_1b],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa],Reference=Concentration>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_3a],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_3b],Reference=Value>/&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[q_tilde_3a],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="Va_inactive" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-14T12:12:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[APC],Reference=Concentration>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va],Reference=Concentration>/(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va],Reference=Concentration>+1)+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_3c],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[APC],Reference=Concentration>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa],Reference=Concentration>/(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa],Reference=Concentration>+1)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="IIa:ATIII" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-14T12:15:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[IIa],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="k_tilde_1a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k_tilde_1b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="k_tilde_2a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k_tilde_2am" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k_tilde_2b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k_tilde_3a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="q_tilde_3a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="k_tilde_3b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="k_tilde_3c" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="k_tilde_4a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="q_tilde_4a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="k_tilde_4b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="k_tilde_4bm" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="k_tilde_5a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="k_tilde_5b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="k_tilde_6" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="k_tilde_x" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="k_tilde_b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="l_tilde_x" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="l_tilde_b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="gamma_tilde_1a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="log_time" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-14T13:40:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          log10(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time>)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Fibrinogen]" value="3.0110704285000002e+21" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Fibrin]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[PC]" value="5.5403695884399999e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[APC]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[APC_inactive]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[IIa]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[V]" value="1.8066422570999999e+21" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[II]" value="1.02376394569e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa:L]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa:L]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa:ATIII]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va_inactive]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[IIa:ATIII]" value="0" type="Species" simulationType="ode"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_1a]" value="150" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_1b]" value="0.19" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_2a]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_2am]" value="7.2000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_2b]" value="0.012999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_3a]" value="150" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[q_tilde_3a]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_3b]" value="0.037999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_3c]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_4a]" value="0.12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[q_tilde_4a]" value="0.0040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_4b]" value="530" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_4bm]" value="3.6000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_5a]" value="0.0011000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_5b]" value="0.27000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_6]" value="1500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_x]" value="385" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k_tilde_b]" value="0.00050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[l_tilde_x]" value="7.6900000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[l_tilde_b]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[gamma_tilde_1a]" value="0.77000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time]" value="-INF" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
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
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
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
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 3.0110704285000002e+21 0 5.5403695884399999e+22 0 0 0 0 0 0 1.8066422570999999e+21 1.02376394569e+22 0 0 0 0 0 -INF 1 150 0.19 2 7.2000000000000002 0.012999999999999999 150 1 0.037999999999999999 1 0.12 0.0040000000000000001 530 3.6000000000000001 0.0011000000000000001 0.27000000000000002 1500 385 0.00050000000000000001 7.6900000000000004 0.050000000000000003 0.77000000000000002 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_14" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_15" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1000000"/>
        <Parameter name="StepSize" type="float" value="0.001"/>
        <Parameter name="Duration" type="float" value="1000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
        <Parameter name="OutputStartTime" type="float" value="0.001"/>
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
    <Task key="Task_16" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_17" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_18" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_19" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_22" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_23" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_24" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_25" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_9" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_10" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_12" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="Figure 4" type="Plot2D" active="0">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[APC]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[APC],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[APC_inactive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[APC_inactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Fibrin]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Fibrin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Fibrinogen]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Fibrinogen],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[II]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[II],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IIa:ATIII]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[IIa:ATIII],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IIa]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[IIa],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PC]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[PC],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[V]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Va:Xa:L]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa:L],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Va:Xa]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Va]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Va_inactive]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va_inactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Xa:ATIII]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa:ATIII],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Xa:L]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa:L],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Xa]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure 4 log-time" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[APC]|Values[log_time]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[APC],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[APC_inactive]|Values[log_time]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[APC_inactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Fibrin]|Values[log_time]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Fibrin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Fibrinogen]|Values[log_time]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Fibrinogen],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[II]|Values[log_time]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[II],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IIa:ATIII]|Values[log_time]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[IIa:ATIII],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IIa]|Values[log_time]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[IIa],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PC]|Values[log_time]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[PC],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[V]|Values[log_time]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Va:Xa:L]|Values[log_time]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa:L],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Va:Xa]|Values[log_time]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Va]|Values[log_time]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Va_inactive]|Values[log_time]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va_inactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Xa:ATIII]|Values[log_time]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa:ATIII],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Xa:L]|Values[log_time]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa:L],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Xa]|Values[log_time]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
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
