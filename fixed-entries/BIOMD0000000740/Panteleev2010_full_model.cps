<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-07-04 14:52:18 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <Model key="Model_1" name="Panteleev2010 - Blood Coagulation: Full Model" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:20441738"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-07-24T12:25:37Z</dcterms:W3CDTF>
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
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>tiwarik@babraham.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Tiwari</vCard:Family>
            <vCard:Given>Krishna</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Babraham Institute</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0007596"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-03T14:45:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="VIIa-TF" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T09:38:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C16570"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C17197"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k01],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIa],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[TF],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k_01],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIa-TF^F],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k02],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VII-TF],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k03],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VII-TF],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa^F],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h01],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIa-TF^F],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa-TFPI],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h02],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa-VIIa-TF],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[TFPI],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="VII-TF" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T09:54:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C16570"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C17197"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k01],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VII],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[TF],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k_01],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VII-TF],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k02],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VII-TF],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k03],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VII-TF],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa^F],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="TF" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T09:56:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C17197"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k01],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIa],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[TF],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k_01],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIa-TF^F],Reference=Concentration>)-(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k01],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VII],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[TF],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k_01],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VII-TF],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="VIIa" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T10:27:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf rdf:resource="urn:miriam:ncit:C16570"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k01],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIa],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[TF],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k_01],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIa-TF^F],Reference=Concentration>)+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k02],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VII],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="VII" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T10:29:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C16570"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k01],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VII],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[TF],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k_01],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VII-TF],Reference=Concentration>)-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k02],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VII],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="IXa" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T10:30:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C28482"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k04],Reference=Value>/&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K04],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IX],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIa-TF^F],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k05],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IX],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[XIa],Reference=Concentration>/(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K05],Reference=Value>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IX],Reference=Concentration>)-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h03],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa-TFPI],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IXa],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="IX" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T10:33:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C28482"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k04],Reference=Value>/&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K04],Reference=Value>)*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IX],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIa-TF^F],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k05],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IX],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[XIa],Reference=Concentration>/(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K05],Reference=Value>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IX],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Xa" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T10:34:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C76142"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k06],Reference=Value>/&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K06],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[X],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIa-TF^F],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k07],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IXa^B^F],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[X^B],Reference=Concentration>/(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Phospholipid],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K07],Reference=Value>)+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k08],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IXa^B^F],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIIa^B^F],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[X^B],Reference=Concentration>/(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Phospholipid],Reference=Concentration>^2*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K09],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k08],Reference=Value>)-(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k11],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa^F],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[TFPI],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k_11],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa-TFPI],Reference=Concentration>)-(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h04],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[AT-III],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h05],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[alpha2-macroglobulin],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h06],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[alpha1-antitrypsin],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h07],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[ProteinC-Inhibitor],Reference=Concentration>)*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa^F],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h08],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[AT-III],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa-Va^b],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="X" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T10:42:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasVersion rdf:resource="urn:miriam:ncit:C76142"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k06],Reference=Value>/&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K06],Reference=Value>)*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[X],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIa-TF^F],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k07],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IXa^B^F],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[X^B],Reference=Concentration>/(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Phospholipid],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K07],Reference=Value>)-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k08],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IXa^B^F],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIIa^B^F],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[X^B],Reference=Concentration>/(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Phospholipid],Reference=Concentration>^2*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K09],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k08],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="IIa" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <bqbiol:isPropertyOf rdf:resource="urn:miriam:chebi:CHEBI:9574"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T10:47:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k12],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Phospholipid],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa^F],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[II],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k13],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa-Va^b],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[II^B],Reference=Concentration>/&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Phospholipid],Reference=Concentration>-(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h09],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[AT-III],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h10],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[alpha2-macroglobulin],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h11],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[alpha1-antitrypsin],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h12],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[ProteinC-Inhibitor],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h13],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[heparin-cofactor2],Reference=Concentration>)*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="II" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T10:52:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:9574"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k12],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Phospholipid],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa^F],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[II],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k13],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa-Va^b],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[II^B],Reference=Concentration>/&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Phospholipid],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="fibrin" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T10:54:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C32598"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k14],Reference=Value>/&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K14],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[fibrinogen],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="fibrinogen" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T10:55:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C25736"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k14],Reference=Value>/&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K14],Reference=Value>)*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[fibrinogen],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="VIIIa" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T10:55:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C16571"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k15],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIII],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>/(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K15],Reference=Value>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>)-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h14],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIIa],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="VIII" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <bqbiol:hasTaxon rdf:resource="urn:miriam:ncit:C16571"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T10:57:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k15],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIII],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>/(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K15],Reference=Value>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="Va" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <bqbiol:isPropertyOf rdf:resource="urn:miriam:ncit:C91335"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T10:58:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k16],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>/(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K16],Reference=Value>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>)-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h15],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[APC],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Va^B^F],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="V" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T11:00:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C91335"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k16],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>/(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K16],Reference=Value>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="XIa" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <bqbiol:isPropertyOf rdf:resource="urn:miriam:orphanet:121660"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T10:35:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k17],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Phospholipid],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[XI],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>-(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h16],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[AT-III],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h17],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[alpha2-antiplasmin],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h18],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[alpha1-antitrypsin],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h19],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[ProteinC-Inhibitor],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h20],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[C1-inhibitor],Reference=Concentration>)*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[XIa],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="XI" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T11:04:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:orphanet:121660"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k17],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Phospholipid],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[XI],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="AT-III" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T11:05:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C136824"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h03],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IXa],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h04],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa^F],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h08],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa-Va^b],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h09],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h16],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[XIa],Reference=Concentration>)*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[AT-III],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="TFPI" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T11:10:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C97260"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k11],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa^F],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[TFPI],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k_11],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa-TFPI],Reference=Concentration>)-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h02],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa-VIIa-TF],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[TFPI],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="Xa-TFPI" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C97260"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T11:11:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C76142"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k11],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa^F],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[TFPI],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k_11],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa-TFPI],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h01],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIa-TF^F],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa-TFPI],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="APC" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T11:12:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C87607"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k18],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[PC],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>-(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h21],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[alpha2-macroglobulin],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h22],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[alpha2-antiplasmin],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h23],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[alpha1-antitrypsin],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h24],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[ProteinC-Inhibitor],Reference=Concentration>)*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[APC],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="PC" simulationType="ode" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T11:14:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C87607"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k18],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[PC],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="VIIa-TF^F" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T11:15:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C16570"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C17197"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIa-TF],Reference=Concentration>/(1+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IX],Reference=Concentration>/&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K04],Reference=Value>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[X],Reference=Concentration>/&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K06],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="Xa-VIIa-TF" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C17197"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T11:16:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C16570"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C76142"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k06],Reference=Value>/(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K06],Reference=Value>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k_19],Reference=Value>)*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[X],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIa-TF^F],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="IXa^B^F" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T11:18:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C28482"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IXa],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Phospholipid],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[n20],Reference=Value>/(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K20],Reference=Value>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IXa],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="VIIIa^B^F" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T11:19:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C16571"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIIa],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Phospholipid],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[n21],Reference=Value>/((&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K21],Reference=Value>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIIa],Reference=Concentration>)*(1+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[X^B],Reference=Concentration>/(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Phospholipid],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K10],Reference=Value>)*(1+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[ProteinS-inhibitor],Reference=Concentration>/&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K22],Reference=Value>)))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="Xa-Va^b" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T11:21:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C76142"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C91335"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Va^B],Reference=Concentration>/(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K23],Reference=Value>*(1+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[ProteinS-inhibitor],Reference=Concentration>/&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K24],Reference=Value>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa],Reference=Concentration>/&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K23],Reference=Value>)+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Va^B],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Xa^F" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T11:23:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C76142"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa-Va^b],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="X^B" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T11:23:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C76142"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[X],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Phospholipid],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[n25],Reference=Value>/(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K25],Reference=Value>*(1+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[X],Reference=Concentration>/&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K25],Reference=Value>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[II],Reference=Concentration>/&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K26],Reference=Value>))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="IIa^F" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T11:25:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:9574"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa],Reference=Concentration>/(1+(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[fibrin],Reference=Concentration>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[fibrinogen],Reference=Concentration>)/&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K14],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="II^B" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T11:25:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:9574"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[II],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Phospholipid],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[n25],Reference=Value>/(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K26],Reference=Value>*(1+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[X],Reference=Concentration>/&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K25],Reference=Value>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[II],Reference=Concentration>/&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K26],Reference=Value>))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="Va^B" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T11:27:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C91335"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Va],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Phospholipid],Reference=Concentration>*&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[n27],Reference=Value>/(&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K27],Reference=Value>+&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Va],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="Va^B^F" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-08-16T11:28:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C91335"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Va^B],Reference=Concentration>-&lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa-Va^b],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="alpha2-macroglobulin" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-03T14:39:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C105924"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="alpha1-antitrypsin" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-03T14:38:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C105012"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="alpha2-antiplasmin" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-03T14:40:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C129263"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="heparin-cofactor2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-03T14:40:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C113637"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="ProteinC-Inhibitor" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17324"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-03T14:38:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="C1-inhibitor" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-03T14:39:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C87730"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="ProteinS-inhibitor" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17324"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-03T14:39:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="Phospholipid" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-03T14:40:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16247"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="k01" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k_01" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="k02" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k03" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k04" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="K04" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="k05" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="K05" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-03T16:39:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="k06" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="K06" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="k07" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="K07" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="k08" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="K08" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="K09" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="K10" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="k11" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="k_11" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="k12" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="k13" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="k14" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="K14" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="k15" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="K15" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="k16" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="K16" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="k17" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="k18" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="k_19" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="n20" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="K20" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="n21" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="K21" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="K22" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="K23" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="K24" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="n25" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="K25" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="K26" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="n27" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="K27" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_41" name="h01" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-03T16:39:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="h02" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="h03" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_44" name="h04" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_45" name="h05" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_46" name="h06" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="h07" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_48" name="h08" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_49" name="h09" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_50" name="h10" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_51" name="h11" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_52" name="h12" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_53" name="h13" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_54" name="h14" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_55" name="h15" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_56" name="h16" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_57" name="h17" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_58" name="h18" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_59" name="h19" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_60" name="h20" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_61" name="h21" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_62" name="h22" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_63" name="h23" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_64" name="h24" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_65" name="quantity" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_66" name="Fibrin(uM)" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-04T13:53:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[fibrin],Reference=Concentration>/1000
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIa-TF]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VII-TF]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[TF]" value="3011070428500" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIa]" value="60221408570000" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VII]" value="6022140857000000" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IXa]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IX]" value="54199267713000000" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[X]" value="1.02376394569e+17" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[II]" value="8.4309971998e+17" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[fibrin]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[fibrinogen]" value="4.57682705132e+18" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIIa]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIII]" value="421549859990000" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Va]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[V]" value="12044281714000000" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[XIa]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[XI]" value="18066422571000000" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[AT-III]" value="2.04752789138e+18" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[TFPI]" value="1505535214250000" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa-TFPI]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[APC]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[PC]" value="36132845142000000" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIa-TF^F]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa-VIIa-TF]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IXa^B^F]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[VIIIa^B^F]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa-Va^b]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Xa^F]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[X^B]" value="85124998580150.375" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[IIa^F]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[II^B]" value="477296612814860.69" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Va^B]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Va^B^F]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[alpha2-macroglobulin]" value="1.8066422571e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[alpha1-antitrypsin]" value="2.4088563427999998e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[alpha2-antiplasmin]" value="6.6243549427e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[heparin-cofactor2]" value="8.4309971998e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[ProteinC-Inhibitor]" value="52994839541600000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[C1-inhibitor]" value="1.02376394569e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[ProteinS-inhibitor]" value="2.083660736522e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[Phospholipid]" value="45166056427.499992" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k01]" value="4.2000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k_01]" value="1.1000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k02]" value="0.0014" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k03]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k04]" value="15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K04]" value="210" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k05]" value="5.7999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K05]" value="200" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k06]" value="435" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K06]" value="238" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k07]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K07]" value="230" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k08]" value="6350" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K08]" value="1216" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K09]" value="278" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K10]" value="1655" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k11]" value="0.051999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k_11]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k12]" value="45" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k13]" value="1.4399999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k14]" value="5040" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K14]" value="7200" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k15]" value="54" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K15]" value="147" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k16]" value="14" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K16]" value="71.700000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k17]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k18]" value="2.0000000000000002e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[k_19]" value="770" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[n20]" value="260" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K20]" value="2.5699999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[n21]" value="750" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K21]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K22]" value="150" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K23]" value="0.11799999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K24]" value="200" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[n25]" value="16000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K25]" value="320" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K26]" value="470" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[n27]" value="2700" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[K27]" value="2.8999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h01]" value="0.44" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h02]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h03]" value="8.1999999999999994e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h04]" value="0.00014999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h05]" value="4.0000000000000003e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h06]" value="1.36e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h07]" value="0.0011999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h08]" value="2.1999999999999999e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h09]" value="0.00040999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h10]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h11]" value="3.0000000000000001e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h12]" value="0.00036999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h13]" value="6.3e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h14]" value="0.34999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h15]" value="7.7000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h16]" value="1.9000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h17]" value="2.5999999999999998e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h18]" value="6.0000000000000002e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h19]" value="0.0054000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h20]" value="0.00013999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h21]" value="6.0000000000000002e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h22]" value="6.0000000000000002e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h23]" value="6.9999999999999997e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[h24]" value="0.00038999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[quantity]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Values[Fibrin(uM)]" value="0" type="ModelValue" simulationType="assignment"/>
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
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
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
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 3011070428500 60221408570000 6022140857000000 0 54199267713000000 0 1.02376394569e+17 0 8.4309971998e+17 0 4.57682705132e+18 0 421549859990000 0 12044281714000000 0 18066422571000000 2.04752789138e+18 1505535214250000 0 0 36132845142000000 0 0 0 0 0 0 85124998580150.375 0 477296612814860.69 0 0 0 1.8066422571e+18 2.4088563427999998e+19 6.6243549427e+17 8.4309971998e+17 52994839541600000 1.02376394569e+18 2.083660736522e+17 45166056427.499992 1 4.2000000000000002 1.1000000000000001 0.0014 0.40000000000000002 15 210 5.7999999999999998 200 435 238 0.059999999999999998 230 6350 1216 278 1655 0.051999999999999998 0.02 45 1.4399999999999999 5040 7200 54 147 14 71.700000000000003 0.029999999999999999 2.0000000000000002e-05 770 260 2.5699999999999998 750 1.5 150 0.11799999999999999 200 16000 320 470 2700 2.8999999999999999 0.44 6 8.1999999999999994e-06 0.00014999999999999999 4.0000000000000003e-05 1.36e-05 0.0011999999999999999 2.1999999999999999e-05 0.00040999999999999999 0.0001 3.0000000000000001e-06 0.00036999999999999999 6.3e-05 0.34999999999999998 7.7000000000000002 1.9000000000000001e-05 2.5999999999999998e-05 6.0000000000000002e-06 0.0054000000000000003 0.00013999999999999999 6.0000000000000002e-06 6.0000000000000002e-06 6.9999999999999997e-07 0.00038999999999999999 0 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="3"/>
        <Parameter name="Duration" type="float" value="300"/>
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
    <Task key="Task_16" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="10"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[TF],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Maximum" type="float" value="0.00064000000000000005"/>
            <Parameter name="log" type="bool" value="0"/>
          </ParameterGroup>
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
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
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
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
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
    <PlotSpecification name="Figure 1A" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[fibrin]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[fibrin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure 5A" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[x_1]|[x_3]_0" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="1"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="3"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[TF],Reference=InitialConcentration"/>
            <ChannelSpec cn="CN=Root,Model=Panteleev2010 - Blood Coagulation: Full Model,Vector=Compartments[compartment],Vector=Metabolites[fibrin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Panteleev2010_full_model.xml">
    <SBMLMap SBMLid="APC" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="AT_III" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="C1_inhibitor" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="Fibrin_uM" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="II" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="II_B" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="IIa" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="IIa_F" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="IX" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="IXa" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="IXa_B_F" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="K04" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="K05" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="K06" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="K07" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="K08" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="K09" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="K10" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="K14" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="K15" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="K16" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="K20" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="K21" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="K22" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="K23" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="K24" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="K25" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="K26" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="K27" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="PC" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="Phospholipid" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="ProteinC_Inhibitor" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="ProteinS_inhibitor" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="TF" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="TFPI" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="V" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="VII" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="VIII" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="VIIIa" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="VIIIa_B_F" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="VII_TF" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="VIIa" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="VIIa_TF" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="VIIa_TF_F" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="Va" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="Va_B" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="Va_B_F" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="X" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="XI" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="XIa" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="X_B" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="Xa" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="Xa_F" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="Xa_TFPI" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="Xa_VIIa_TF" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="Xa_Va_b" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="alpha1_antitrypsin" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="alpha2_antiplasmin" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="alpha2_macroglobulin" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="fibrin" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="fibrinogen" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="h01" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="h02" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="h03" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="h04" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="h05" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="h06" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="h07" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="h08" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="h09" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="h10" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="h11" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="h12" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="h13" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="h14" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="h15" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="h16" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="h17" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="h18" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="h19" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="h20" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="h21" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="h22" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="h23" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="h24" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="heparin_cofactor2" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="k01" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="k02" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="k03" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="k04" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="k05" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="k06" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="k07" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="k08" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="k11" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="k12" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="k13" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="k14" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="k15" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="k16" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="k17" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="k18" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="k_01" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="k_11" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="k_19" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="n20" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="n21" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="n25" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="n27" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="quantity" COPASIkey="ModelValue_65"/>
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
    <UnitDefinition key="Unit_6" name="Avogadro" symbol="Avogadro">
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_8" name="item" symbol="#">
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="liter" symbol="l">
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_20" name="mole" symbol="mol">
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
