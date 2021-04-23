<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-05-21 09:38:45 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="22" versionDevel="170" copasiSourcesModified="0">
  <Model key="Model_0" name="Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI:0001285"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1002/acs.856"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-18T15:20:40Z</dcterms:W3CDTF>
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
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:63632"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:70727"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:pw:PW:0002367"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:bto:BTO:0000093"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="breast cancer cell" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-21T10:06:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000093"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="L_m" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:chebi:CHEBI:35610"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-18T16:10:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:25000"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.compound:C11158"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:bto:BTO:0000316"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -(&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_om],Reference=Value>+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_mi],Reference=Value>)*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_m],Reference=Concentration>+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_cm],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[H_m],Reference=Concentration>+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_mo],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[v0],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_e],Reference=Concentration>
        </Expression>
        <InitialExpression>
          (1+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[v0],Reference=InitialValue>)*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[D],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="H_m" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-18T17:18:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:35868"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.compound:C11158"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:bto:BTO:0000316"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_om],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_m],Reference=Concentration>-(&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_cm],Reference=Value>+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_mi],Reference=Value>)*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[H_m],Reference=Concentration>+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_mo],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[v0],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[H_e],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="L_e" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:chebi:CHEBI:35610"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-18T17:37:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:25000"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.compound:C11158"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005576"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_mi],Reference=Value>/&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[v0],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_m],Reference=Concentration>-(&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_mo],Reference=Value>+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_om],Reference=Value>+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_i],Reference=Value>)*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_e],Reference=Concentration>+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_cm],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[H_e],Reference=Concentration>+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_e],Reference=Value>/&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[v1],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_c],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="H_e" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:chebi:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-21T09:16:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:35868"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.compound:C11158"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005576"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_mi],Reference=Value>/&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[v0],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[H_m],Reference=Concentration>+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_om],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_e],Reference=Concentration>-(&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_cm],Reference=Value>+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_mo],Reference=Value>)*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[H_e],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="L_c" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:chebi:CHEBI:35610"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-21T09:13:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:25000"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.compound:C11158"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005737"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_i],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[v1],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_e],Reference=Concentration>-(&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_e],Reference=Value>+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_oc],Reference=Value>)*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_c],Reference=Concentration>+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_cc],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[H_c],Reference=Concentration>+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_dl],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[v2],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_n],Reference=Concentration>-&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_b],Reference=Value>*(&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[B_T],Reference=Value>-&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_n],Reference=Concentration>)*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_c],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="H_c" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002355"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-21T09:27:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:35868"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.compound:C11158"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005737"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_oc],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_c],Reference=Concentration>-&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_cc],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[H_c],Reference=Concentration>+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_dh],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[v2],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_n],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="L_n" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:chebi:CHEBI:35610"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-21T09:13:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:16991"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:25000"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0065004"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.compound:C11158"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005634"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_b],Reference=Value>/&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[v2],Reference=Value>*(&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[B_T],Reference=Value>-&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_n],Reference=Concentration>)*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_c],Reference=Concentration>-(&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_dl],Reference=Value>+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_dh],Reference=Value>)*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_n],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="k_mi" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-21T10:18:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k_mo" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="k_i" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-21T10:18:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000587"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k_e" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-18T17:37:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0015562"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-21T10:12:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0005488"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k_dl" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-21T10:13:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000338"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="k_dh" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-21T10:13:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000338"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="B_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-21T10:12:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000189"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="V_c" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-21T09:50:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000468"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="V_e" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-18T15:46:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000468"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          2e12*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[v0],Reference=Value>/(1+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[v0],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="V_m" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-18T15:48:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000468"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          2e12-&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[V_e],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="V_n" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-21T10:21:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000468"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="v0" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-18T15:51:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="v1" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-18T15:50:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[alpha],Reference=Value>*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[v0],Reference=Value>/(1+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[v0],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="v2" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-18T15:49:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[V_n],Reference=Value>/&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[V_c],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="D" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-21T10:12:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:efo:EFO:0000428"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="k_om" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-18T16:03:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="k_cm" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="alpha" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-18T15:49:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="k_oc" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15094319" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-18T16:02:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="k_cc" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:15094319" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-18T16:03:05Z</dcterms:W3CDTF>
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
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_m]" value="6.0222314601091936e+21" type="Species" simulationType="ode">
            <InitialExpression>
              (1+&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[v0],Reference=InitialValue>)*&lt;CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[D],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[H_m]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_e]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[H_e]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_c]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[H_c]" value="0" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_n]" value="0" type="Species" simulationType="ode"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_mi]" value="1.3974e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_mo]" value="0.085551000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_i]" value="0.022110000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_e]" value="0.0078914999999999992" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_b]" value="0.00038085000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_dl]" value="0.055522000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_dh]" value="1.5639000000000001e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[B_T]" value="89.971999999999994" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[V_c]" value="829" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[V_e]" value="30089547.302760828" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[V_m]" value="1999969910452.6973" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[V_n]" value="326" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[v0]" value="1.5045000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[v1]" value="0.36295516433955255" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[v2]" value="0.39324487334137515" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[D]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_om]" value="0.00015599" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_cm]" value="0.00029553000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[alpha]" value="24125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_oc]" value="0.00012913000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Values[k_cc]" value="0.00031577999999999999" type="ModelValue" simulationType="fixed"/>
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
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
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
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 6.0222314601091936e+21 0 0 0 0 0 0 30089547.302760828 1999969910452.6973 0.36295516433955255 0.39324487334137515 1 1.3974e-06 0.085551000000000002 0.022110000000000001 0.0078914999999999992 0.00038085000000000001 0.055522000000000002 1.5639000000000001e-07 89.971999999999994 829 326 1.5045000000000001e-05 10 0.00015599 0.00029553000000000001 24125 0.00012913000000000001 0.00031577999999999999 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="4500"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="450"/>
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
    <PlotSpecification name="Figure 2 a-c (pH7)" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[L_c]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_c],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[L_e]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_e],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[L_n]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells,Vector=Compartments[breast cancer cell],Vector=Metabolites[L_n],Reference=Concentration"/>
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
