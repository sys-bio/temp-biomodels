<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.19 (Build 140) (http://www.copasi.org) at 2017-07-03 15:19:38 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="19" versionDevel="140" copasiSourcesModified="0">
  <Model key="Model_4" name="Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="µmol" type="deterministic" avogadroConstant="6.02214179e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_4">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Reciprocal regulation of ARPP-16 by PKA and MAST3 kinases provides a cAMP-regulated switch in protein phosphatase 2A inhibition</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.7554/eLife.24998"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-05-08T15:01:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>lu.li@babraham.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Li</vCard:Family>
            <vCard:Given>Lu</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Babraham Institute</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      This model is one among the three compuational models revealing how reciprocol regulations between PKA and MAST3 on ARPP-16 can result in switch control over PP2A inhibition. 

This specific model describes the mutual inhibitions between P-S46-ARPP-16 and P-S88-ARPP-16, as well as the direct inhibition from PKA to MAST3.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="compartment" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-14T10:12:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_1" name="A46" simulationType="ode" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T15:01:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kcatmast],Reference=InitialValue>*&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[M],Reference=Concentration>*(&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[ARPPtot],Reference=Value>-&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A46],Reference=Concentration>)/(&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kmmast],Reference=InitialValue>+&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[a],Reference=InitialValue>*&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A88],Reference=Concentration>/&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[ARPPtot],Reference=InitialValue>+&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[r],Reference=InitialValue>*(&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[MASTtot],Reference=InitialValue>-&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[M],Reference=Concentration>)/&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[MASTtot],Reference=InitialValue>+(&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[ARPPtot],Reference=Value>-&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A46],Reference=Concentration>))-&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kcatpp2a],Reference=InitialValue>*&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[Complex],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="A88" simulationType="ode" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T15:02:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kcatpka],Reference=InitialValue>*&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[PKA],Reference=Concentration>*(&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[ARPPtot],Reference=Value>-&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A88],Reference=Concentration>)/(&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kmpka],Reference=InitialValue>+&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[b],Reference=InitialValue>*&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A46],Reference=Concentration>/&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[ARPPtot],Reference=InitialValue>+&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[ARPPtot],Reference=Value>-&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A88],Reference=Concentration>)-&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kcatpp1],Reference=InitialValue>*&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[pp1],Reference=InitialValue>*&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A88],Reference=Concentration>/(&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kmpp1],Reference=InitialValue>+&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A88],Reference=Concentration>)
        </Expression>
        <InitialExpression>
          &lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[ARPPtot],Reference=InitialValue>-&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A46],Reference=InitialConcentration>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="M" simulationType="ode" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T15:01:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kppx],Reference=InitialValue>*(&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[MASTtot],Reference=InitialValue>-&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[M],Reference=Concentration>)-&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[k88],Reference=InitialValue>*&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A88],Reference=Concentration>*&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[M],Reference=Concentration>-&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kpka],Reference=Value>*&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[PKA],Reference=Concentration>*&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[M],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="PKA" simulationType="ode" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T15:02:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kcamp],Reference=InitialValue>*(&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[PKActot],Reference=InitialValue>-&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[PKA],Reference=Concentration>)*&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[cAMP],Reference=InitialValue>^&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[n],Reference=InitialValue>/(&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[KA],Reference=InitialValue>^&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[n],Reference=InitialValue>+&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[cAMP],Reference=InitialValue>^&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[n],Reference=InitialValue>)-&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[k46],Reference=InitialValue>*&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A46],Reference=Concentration>*&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[PKA],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="BB" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T16:02:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A46],Reference=Concentration>+&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[PP2Atot],Reference=InitialValue>+&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kmpp2a],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="Complex" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T16:04:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[BB],Reference=Concentration>-sqrt(&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[BB],Reference=Concentration>^2-4*&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A46],Reference=Concentration>*&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[PP2Atot],Reference=InitialValue>))/2
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="ARPPtot" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-14T13:56:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="PP2Atot" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:50:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="MASTtot" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-19T17:28:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="PKActot" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:50:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="kass" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-19T14:24:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="kdiss" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:48:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="kcatpp2a" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-19T14:24:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="kmpp2a" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T15:46:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kdiss],Reference=InitialValue>+&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kcatpp2a],Reference=InitialValue>)/&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kass],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="kcatmast" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-19T14:24:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="kmmast" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-15T11:29:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="kcatpka" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-19T14:24:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="kmpka" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:49:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="kcatpp1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-19T14:24:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="pp1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:50:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="kmpp1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:49:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="k88" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-14T14:12:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="kcamp" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-19T14:24:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="n" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T15:50:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="KA" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-19T14:24:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="k46" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-14T14:12:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="cAMP" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-14T15:27:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="A46bar" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-15T16:01:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A46],Reference=Concentration>/&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[ARPPtot],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="a" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-01T17:12:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="kpka" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-08T16:17:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-09T16:39:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="r" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-03-08T16:09:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="kppx" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A46]" value="5.901698954200007e+18" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A88]" value="1.204428357999932e+17" type="Species" simulationType="ode">
            <InitialExpression>
              &lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[ARPPtot],Reference=InitialValue>-&lt;CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A46],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[M]" value="5649190548945300" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[PKA]" value="6022141790000002" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[BB]" value="7.115853983636582e+18" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[Complex]" value="1.201940808010813e+18" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[ARPPtot]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[PP2Atot]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[MASTtot]" value="2.7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[PKActot]" value="12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kass]" value="3.3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kdiss]" value="0.0033" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kcatpp2a]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kmpp2a]" value="0.01615151515151515" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kcatmast]" value="0.0988" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kmmast]" value="0.09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kcatpka]" value="0.9350000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kmpka]" value="1.6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kcatpp1]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[pp1]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kmpp1]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[k88]" value="0.01865" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kcamp]" value="0.7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[n]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[KA]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[k46]" value="0.02335" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[cAMP]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[A46bar]" value="0.9800000000000011" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[a]" value="0.37526" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kpka]" value="0.097" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[b]" value="2.36" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[r]" value="1.2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kppx]" value="0.05" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_4"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 5.901698954200007e+18 1.204428357999932e+17 5649190548945300 6022141790000002 7.115853983636582e+18 1.201940808010813e+18 0.01615151515151515 0.9800000000000011 1 10 2 2.7 12 3.3 0.0033 0.05 0.0988 0.09 0.9350000000000001 1.6 0.5 5 1 0.01865 0.7 2 10 0.02335 0 0.37526 0.097 2.36 1.2 0.05 
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
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1200"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="1200"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="0"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Maximum" type="float" value="5"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Number of steps" type="unsignedInteger" value="100"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[cAMP],Reference=InitialValue"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="log" type="bool" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="40"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A46],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="0"/>
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
    <Task key="Task_7" name="Parameter Estimation" type="parameterFitting" scheduled="true" updateModel="false">
      <Report reference="Report_5" target="" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="1"/>
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
      <Method name="Particle Swarm" type="ParticleSwarm">
        <Parameter name="Iteration Limit" type="unsignedInteger" value="2000"/>
        <Parameter name="Swarm Size" type="unsignedInteger" value="100"/>
        <Parameter name="Std. Deviation" type="unsignedFloat" value="1e-06"/>
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
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
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
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
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
    <Report key="Report_18" name="likelyhood_profile" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[kcatmast],Reference=InitialValue"/>
        <Object cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[k88],Reference=InitialValue"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
      </Table>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="timecourses" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[ARPPtot]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[ARPPtot],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[A46]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A46],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[A88]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[A88],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[M]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[M],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PKA]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Compartments[compartment],Vector=Metabolites[PKA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Bifurcation" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[A46bar]|Values[cAMP].InitialValue" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[cAMP],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions and PKA inhibits MAST3,Vector=Values[A46bar],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="ARPP-16_Layer1and2_mutualInhibitions_PKAinhibitsMAST3.xml">
    <SBMLMap SBMLid="A46" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="A46bar" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="A88" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="ARPPtot" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="BB" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="Complex" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="KA" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="M" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="MASTtot" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="PKA" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="PKActot" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="PP2Atot" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="a" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="b" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="cAMP" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="k46" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="k88" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="kass" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="kcamp" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="kcatmast" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="kcatpka" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="kcatpp1" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="kcatpp2a" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="kdiss" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="kmmast" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="kmpka" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="kmpp1" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="kmpp2a" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="kpka" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="kppx" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="n" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="pp1" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="r" COPASIkey="ModelValue_29"/>
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
