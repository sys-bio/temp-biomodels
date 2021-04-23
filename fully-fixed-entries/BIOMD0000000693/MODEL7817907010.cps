<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-03-21 17:55:32 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="22" versionDevel="170" copasiSourcesModified="0">
  <Model key="Model_1" name="Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres" simulationType="time" timeUnit="ms" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:18068197"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T14:33:17Z</dcterms:W3CDTF>
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
    <CopasiMT:hasPart rdf:resource="urn:miriam:kegg.drug:D00775"/>
    <CopasiMT:is rdf:resource="urn:miriam:biomodels.db:MODEL7817907010"/>
    <CopasiMT:is rdf:resource="urn:miriam:modeldb:105528"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:doid:DOID:332"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0022832"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0042493"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:bto:BTO:0001103"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="Skeletal Muscle Cells" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T14:54:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0001103" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_27" name="Vm" simulationType="ode" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T14:55:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C82324" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Stimulus],Reference=Concentration>-(&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[INa],Reference=Concentration>+&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[ICa],Reference=Concentration>+&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[IK],Reference=Concentration>+&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[IL],Reference=Concentration>+&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[IT],Reference=Concentration>+&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[IKCa],Reference=Concentration>))/&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Cm],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="m" simulationType="ode" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:41:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[alpha_m],Reference=Concentration>*(1-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[m],Reference=Concentration>)-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[beta_m],Reference=Concentration>*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[m],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="h" simulationType="ode" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:42:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[alpha_h],Reference=Concentration>*(1-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[h],Reference=Concentration>)-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[beta_h],Reference=Concentration>*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[h],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="n" simulationType="ode" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:43:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[alpha_n],Reference=Concentration>*(1-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[n],Reference=Concentration>)-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[beta_n],Reference=Concentration>*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[n],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="Vt" simulationType="ode" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:44:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vt],Reference=Concentration>)/(&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Rs],Reference=Value>*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Ct],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="d" simulationType="ode" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:45:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[d],Reference=Concentration>)*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[alphad],Reference=Value>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[d],Reference=Concentration>*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[betad],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="o" simulationType="ode" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:46:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[ooinf],Reference=Value>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[o],Reference=Concentration>)/&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[tau],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="c" simulationType="ode" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:47:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[fcyt],Reference=Value>*(&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[jmem],Reference=Concentration>+&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[jer],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="cer" simulationType="ode" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:29:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          -&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[fer],Reference=Value>*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[vcytver],Reference=Value>*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[jer],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="INa" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:37:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[gNa_max],Reference=Value>*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[m],Reference=Concentration>^3*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[h],Reference=Concentration>*(&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[ENa],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="IT" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:38:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vt],Reference=Concentration>)/&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Rs],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="IKCa" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:39:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0015269" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[gKca],Reference=Value>*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[o],Reference=Concentration>*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[w],Reference=Concentration>*(&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[EK],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="ICa" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:49:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[gca],Reference=Value>*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[d],Reference=Concentration>^2
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="IL" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:50:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[gL_max],Reference=Value>*(&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[EL],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="IK" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:51:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[gk_max],Reference=Value>*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[n],Reference=Concentration>^4*(&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[EK],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="Stimulus" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:52:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C41210" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Reference=Time> >= &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Stimulus_Start],Reference=Value> and &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Reference=Time>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Stimulus_Start],Reference=Value>-floor((&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Reference=Time>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Stimulus_Start],Reference=Value>)/&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Stimulus_Period],Reference=Value>)*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Stimulus_Period],Reference=Value> &lt; &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Stimulus_Duration],Reference=Value>,&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Stimulus_Magnitude],Reference=Value>,0)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="beta_n" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:24:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[beta_n_max],Reference=Value>*exp((&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[En],Reference=Value>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>)/&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[v_beta_n],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="beta_m" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:26:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[beta_m_max],Reference=Value>*exp((&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Em],Reference=Value>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>)/&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[v_beta_m],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="beta_h" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:27:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[beta_h_max],Reference=Value>/(1+exp((&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Eh],Reference=Value>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>)/&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[v_beta_h],Reference=Value>))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="alpha_n" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:29:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[alpha_n_max],Reference=Value>*(&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[En],Reference=Value>)/(1-exp((&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[En],Reference=Value>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>)/&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[v_alpha_n],Reference=Value>))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="alpha_m" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:30:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[alpha_m_max],Reference=Value>*(&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Em],Reference=Value>)/(1-exp((&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Em],Reference=Value>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>)/&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[v_alpha_m],Reference=Value>))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="alpha_h" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:08:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[alpha_h_max],Reference=Value>*exp((&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Eh],Reference=Value>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>)/&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[v_alpha_m],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="w" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:33:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[c],Reference=Concentration>^5/(&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[c],Reference=Concentration>^5+&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[kd],Reference=Value>^5)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="jmem" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:34:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          -(&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[alpha],Reference=Value>*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[ICa],Reference=Concentration>+&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[kpmca],Reference=Value>*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[c],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="jleak" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:35:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[pleak],Reference=Value>*(&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[cer],Reference=Concentration>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[c],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="jserca" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:36:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[kserca],Reference=Value>*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[c],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="jer" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:07:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[jleak],Reference=Concentration>-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[jserca],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_55" name="gNa_max" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T16:14:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="gcabar" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T16:01:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="gk_max" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T16:01:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="gL_max" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_59" name="gKca" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T16:01:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="ENa" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T16:16:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="EK" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T16:16:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="EL" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_63" name="ECa" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T16:16:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="En" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_65" name="Em" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_66" name="Eh" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_67" name="Ct" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_68" name="Cm" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T16:00:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="Rs" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_70" name="Am" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_71" name="alpha_n_max" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_72" name="beta_n_max" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_73" name="v_alpha_m" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T16:16:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="v_alpha_n" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_75" name="v_alpha_h" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T16:16:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="alpha_m_max" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:24:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="beta_m_max" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_78" name="v_beta_n" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T16:16:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="v_beta_m" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T16:16:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="v_beta_h" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T16:16:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="alpha_h_max" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_82" name="beta_h_max" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_83" name="kd" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_84" name="alpha" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_85" name="kpmca" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_86" name="pleak" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_87" name="kserca" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_88" name="d1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_89" name="d2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_90" name="k1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_91" name="k2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_92" name="bbar" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_93" name="abar" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_94" name="fer" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_95" name="vcytver" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_96" name="fcyt" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_97" name="Stimulus_Period" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_98" name="Stimulus_Magnitude" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_98">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T16:02:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="Stimulus_Start" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_100" name="Stimulus_Duration" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_101" name="alp" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_101">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:13:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[abar],Reference=Value>/(1+&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[k1],Reference=Value>*exp(-2*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[d1],Reference=Value>*96.485*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>/8.313424/310)/&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[c],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_102" name="beta" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_102">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:17:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[bbar],Reference=Value>/(1+&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[c],Reference=Concentration>/(&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[k2],Reference=Value>*exp(-2*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[d2],Reference=Value>*96.485*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>/8.313424/310)))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="tau" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_103">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:18:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1/(&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[alp],Reference=Value>+&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[beta],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_104" name="ooinf" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_104">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:20:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[alp],Reference=Value>*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[tau],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_105" name="dinf" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_105">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:20:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1/(1+exp((-24.6-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>)/11.3))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_106" name="taud" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_106">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:21:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          80/(1/cosh(-0.031*(&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>+37.1)))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_107" name="alphad" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_107">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:22:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[dinf],Reference=Value>/&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[taud],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_108" name="betad" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_108">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:22:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1-&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[dinf],Reference=Value>)/&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[taud],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_109" name="gca" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_109">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-21T15:23:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          -&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[gcabar],Reference=Value>*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>/(exp(0.117*&lt;CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration>)-1)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm]" value="-4.5166056427499999e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[m]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[h]" value="6.0221408570000002e+20" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[n]" value="6.0221408570000007e+19" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vt]" value="-4.2154985999000003e+22" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[d]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[o]" value="6.0221408570000007e+19" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[c]" value="9.0332112855000007e+19" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[cer]" value="1.2044281714000001e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[INa]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[IT]" value="-2.0073802856666667e+20" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[IKCa]" value="-4.3159320654355112e+19" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[ICa]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[IL]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[IK]" value="-1.2646495799700002e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Stimulus]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[beta_n]" value="1.3891624505771096e+20" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[beta_m]" value="7.8384382204173898e+21" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[beta_h]" value="2.2966930482338075e+19" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[alpha_n]" value="3.2742978484891141e+18" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[alpha_m]" value="1.5829872640618807e+20" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[alpha_h]" value="2.8149892857631769e+20" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[w]" value="1.7263728261742045e+20" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[jmem]" value="-1.8066422571000001e+19" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[jleak]" value="6.0176242513572504e+19" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[jserca]" value="3.6132845142000001e+19" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[jer]" value="2.4043397371572503e+19" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[gNa_max]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[gcabar]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[gk_max]" value="0.41999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[gL_max]" value="0.0023999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[gKca]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[ENa]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[EK]" value="-70" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[EL]" value="-75" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[ECa]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[En]" value="-40" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Em]" value="-42" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Eh]" value="-41" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Ct]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Cm]" value="0.0089999999999999993" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Rs]" value="15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Am]" value="200" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[alpha_n_max]" value="0.0229" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[beta_n_max]" value="0.096159999999999995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[v_alpha_m]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[v_alpha_n]" value="7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[v_alpha_h]" value="14.699999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[alpha_m_max]" value="0.20799999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[beta_m_max]" value="2.081" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[v_beta_n]" value="40" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[v_beta_m]" value="18" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[v_beta_h]" value="7.5999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[alpha_h_max]" value="0.015599999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[beta_h_max]" value="3.3820000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[kd]" value="0.17999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[alpha]" value="4.5000000000000001e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[kpmca]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[pleak]" value="0.00050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[kserca]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[d1]" value="0.83999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[d2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[k1]" value="0.17999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[k2]" value="0.010999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[bbar]" value="0.28000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[abar]" value="0.47999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[fer]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[vcytver]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[fcyt]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Stimulus_Period]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Stimulus_Magnitude]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Stimulus_Start]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Stimulus_Duration]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[alp]" value="0.0035494555845617484" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[beta]" value="0.26675905067276695" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[tau]" value="3.6994766233809098" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[ooinf]" value="0.01313112796081501" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[dinf]" value="0.011428203378411085" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[taud]" value="141.86676035455548" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[alphad]" value="8.055589166799575e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[betad]" value="0.006968311633753642" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[gca]" value="-3.7505796479629252" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_105"/>
      <StateTemplateVariable objectReference="ModelValue_106"/>
      <StateTemplateVariable objectReference="ModelValue_107"/>
      <StateTemplateVariable objectReference="ModelValue_108"/>
      <StateTemplateVariable objectReference="ModelValue_109"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
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
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 -4.5166056427499999e+22 0 6.0221408570000002e+20 6.0221408570000007e+19 -4.2154985999000003e+22 0 6.0221408570000007e+19 9.0332112855000007e+19 1.2044281714000001e+23 0 -2.0073802856666667e+20 -4.3159320654355112e+19 0 0 -1.2646495799700002e+17 0 1.3891624505771096e+20 7.8384382204173898e+21 2.2966930482338075e+19 3.2742978484891141e+18 1.5829872640618807e+20 2.8149892857631769e+20 1.7263728261742045e+20 -1.8066422571000001e+19 6.0176242513572504e+19 3.6132845142000001e+19 2.4043397371572503e+19 0.0035494555845617484 0.26675905067276695 3.6994766233809098 0.01313112796081501 0.011428203378411085 141.86676035455548 8.055589166799575e-05 0.006968311633753642 -3.7505796479629252 1 0.90000000000000002 0.050000000000000003 0.41999999999999998 0.0023999999999999998 0.5 50 -70 -75 50 -40 -42 -41 0.040000000000000001 0.0089999999999999993 15 200 0.0229 0.096159999999999995 10 7 14.699999999999999 0.20799999999999999 2.081 40 18 7.5999999999999996 0.015599999999999999 3.3820000000000001 0.17999999999999999 4.5000000000000001e-06 0.20000000000000001 0.00050000000000000001 0.40000000000000002 0.83999999999999997 1 0.17999999999999999 0.010999999999999999 0.28000000000000003 0.47999999999999998 0.01 5 0.01 50 2 5 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_26" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_25" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="15000"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="150"/>
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
    <Task key="Task_24" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_23" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_22" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_21" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_26"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_18" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_17" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_16" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_15" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_27" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_26"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_17" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_12" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_11" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_10" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_9" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="Figure 6" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Vm]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="3"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Compartments[Skeletal Muscle Cells],Vector=Metabolites[Vm],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_1" associatedEntityKey="Task_25" objectCN="CN=Root,Model=Wang2008 - Mimicking the inhibitory effect of riluzole on membrane conductance in skeletal fibres,Vector=Values[Stimulus_Magnitude],Reference=InitialValue" objectType="float" objectValue="2" minValue="0" maxValue="10" tickNumber="1000" tickFactor="100" scaling="linear"/>
    </ListOfSliders>
  </GUI>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_0" name="meter" symbol="m">
      <Expression>
        m
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
