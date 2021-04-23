<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-02-07 14:11:36 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="22" versionDevel="170" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000041" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for first order irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C191"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:26252969"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:05:28Z</dcterms:W3CDTF>
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
    <CopasiMT:is rdf:resource="urn:miriam:biomodels.db:MODEL1604270000"/>
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
        <dcterms:W3CDTF>2018-02-05T16:05:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000988" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Ra" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17597" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:06:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000304" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Inh_g],Reference=Concentration>)*(1-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Inh_b],Reference=Concentration>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[kg],Reference=InitialValue>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Ra],Reference=Concentration>*(1-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Ra],Reference=Concentration>/&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Rss],Reference=InitialValue>)-(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Sti_g4],Reference=Concentration>)*(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Sti_b4],Reference=Concentration>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[kd],Reference=InitialValue>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Ra],Reference=Concentration>
        </Expression>
        <InitialExpression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Ra_0],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Rd" simulationType="ode" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0008219" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C124524" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:06:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000304" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Sti_g4],Reference=Concentration>)*(1+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Sti_b4],Reference=Concentration>)*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[kd],Reference=InitialValue>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Ra],Reference=Concentration>-&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[kd],Reference=InitialValue>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Rd],Reference=Concentration>
        </Expression>
        <InitialExpression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Rd_0],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Inh_g" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C29895" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:07:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C15632" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Imax_g],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_g],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Hi_g],Reference=Value>/((&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Psi_i],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[IC50_g],Reference=Value>)^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Hi_g],Reference=Value>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_g],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Hi_g],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Inh_b" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C29895" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:07:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C15632" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Imax_b],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_b],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Hi_b],Reference=Value>/((&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Psi_i],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[IC50_b],Reference=Value>)^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Hi_b],Reference=Value>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_b],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Hi_b],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Sti_g" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C40715" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:07:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C15632" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Smax_g],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_g],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Hs_g],Reference=Value>/((&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Psi_s],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[SC50_g],Reference=Value>)^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Hs_g],Reference=Value>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_g],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Hs_g],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Sti_b" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:ncit:C40715" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:07:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C15632" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Smax_b],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_b],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Hs_b],Reference=Value>/((&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Psi_s],Reference=Value>*&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[SC50_b],Reference=Value>)^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Hs_b],Reference=Value>+&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_b],Reference=Value>^&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Hs_b],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Sti_g1" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000225" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:07:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Sti_g2" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000225" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:07:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="Sti_g3" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000225" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:07:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="Sti_g4" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000225" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:07:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="Sti_b1" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000225" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:08:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="Sti_b2" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000225" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:08:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="Sti_b3" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000225" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:08:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="Sti_b4" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000225" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:08:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Ra_0" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:08:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C85644" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Rd_0" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:09:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C85644" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="Rss" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:09:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C25443" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="kg" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:09:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0016049" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="kd" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:10:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0008219" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Imax_g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:10:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="Imax_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:10:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="IC50_g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:10:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obi:OBI:0001191" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="IC50_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:11:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obi:OBI:0001191" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="Hi_g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:11:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C48923" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="Hi_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:11:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C48923" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="Smax_g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:11:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="Smax_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:12:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="SC50_g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:12:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obi:OBI:0001180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="SC50_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:12:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obi:OBI:0001180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="Hs_g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:13:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C48923" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="Hs_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:13:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C48923" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="ktau_g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:13:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000225" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="ktau_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:13:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000225" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="Psi_i" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:14:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C54708" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          if(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_b],Reference=InitialValue> != 0 and &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_g],Reference=InitialValue> != 0,0.583,1)
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="Psi_s" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:18:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C54708" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          if(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_b],Reference=InitialValue> != 0 and &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_g],Reference=InitialValue> != 0,0.582,1)
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="C_g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T13:55:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:175901" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.drug:D02368" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C66876" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="C_b" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:19:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:kegg.drug:D10417" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C88295" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="g_death_stimulus delay 1" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T13:00:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4999" name="k1" value="0.086"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="g_death_stimulus delay 2" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T13:00:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5000" name="k1" value="0.086"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="g_death_stimulus delay 3" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T13:00:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5001" name="k1" value="0.086"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="g_death_stimulus delay 4" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T13:01:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5002" name="k1" value="0.086"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="g_death_stimulus delay 4 degradation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T13:01:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5003" name="k1" value="0.086"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="b_death_stimulus delay 1" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T13:01:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5004" name="k1" value="0.611"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="b_death_stimulus delay 2" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T13:02:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5005" name="k1" value="0.611"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="b_death_stimulus delay 3" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T13:02:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5006" name="k1" value="0.611"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="b_death_stimulus delay 4" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T13:02:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4994" name="k1" value="0.611"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="b_death_stimulus delay 4 degradation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T13:02:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4995" name="k1" value="0.611"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Ra]" value="1.848797243099e+26" type="Species" simulationType="ode">
            <InitialExpression>
              &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Ra_0],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Rd]" value="1.168295326258e+24" type="Species" simulationType="ode">
            <InitialExpression>
              &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Rd_0],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Inh_g]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Inh_b]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Sti_g]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Sti_b]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Sti_g1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Sti_g2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Sti_g3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Sti_g4]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Sti_b1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Sti_b2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Sti_b3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Sti_b4]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Ra_0]" value="307000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Rd_0]" value="1940" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Rss]" value="5490000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[kg]" value="0.020899999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[kd]" value="0.00038499999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Imax_g]" value="0.99099999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Imax_b]" value="0.375" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[IC50_g]" value="20.800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[IC50_b]" value="145" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Hi_g]" value="3.5699999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Hi_b]" value="1.0600000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Smax_g]" value="4.0899999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Smax_b]" value="17.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[SC50_g]" value="14" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[SC50_b]" value="168" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Hs_g]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Hs_b]" value="0.98399999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[ktau_g]" value="0.085999999999999993" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[ktau_b]" value="0.61099999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Psi_i]" value="1" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              if(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_b],Reference=InitialValue> != 0 and &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_g],Reference=InitialValue> != 0,0.583,1)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[Psi_s]" value="1" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              if(&lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_b],Reference=InitialValue> != 0 and &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_g],Reference=InitialValue> != 0,0.582,1)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_g]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_b]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[g_death_stimulus delay 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[g_death_stimulus delay 1],ParameterGroup=Parameters,Parameter=k1" value="0.085999999999999993" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[ktau_g],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[g_death_stimulus delay 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[g_death_stimulus delay 2],ParameterGroup=Parameters,Parameter=k1" value="0.085999999999999993" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[ktau_g],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[g_death_stimulus delay 3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[g_death_stimulus delay 3],ParameterGroup=Parameters,Parameter=k1" value="0.085999999999999993" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[ktau_g],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[g_death_stimulus delay 4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[g_death_stimulus delay 4],ParameterGroup=Parameters,Parameter=k1" value="0.085999999999999993" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[ktau_g],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[g_death_stimulus delay 4 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[g_death_stimulus delay 4 degradation],ParameterGroup=Parameters,Parameter=k1" value="0.085999999999999993" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[ktau_g],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[b_death_stimulus delay 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[b_death_stimulus delay 1],ParameterGroup=Parameters,Parameter=k1" value="0.61099999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[ktau_b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[b_death_stimulus delay 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[b_death_stimulus delay 2],ParameterGroup=Parameters,Parameter=k1" value="0.61099999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[ktau_b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[b_death_stimulus delay 3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[b_death_stimulus delay 3],ParameterGroup=Parameters,Parameter=k1" value="0.61099999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[ktau_b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[b_death_stimulus delay 4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[b_death_stimulus delay 4],ParameterGroup=Parameters,Parameter=k1" value="0.61099999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[ktau_b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[b_death_stimulus delay 4 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Reactions[b_death_stimulus delay 4 degradation],ParameterGroup=Parameters,Parameter=k1" value="0.61099999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[ktau_b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 1.848797243099e+26 1.168295326258e+24 0 0 0 0 0 0 0 0 0 0 0 0 1 307000 1940 5490000 0.020899999999999998 0.00038499999999999998 0.99099999999999999 0.375 20.800000000000001 145 3.5699999999999998 1.0600000000000001 4.0899999999999999 17.5 14 168 5 0.98399999999999999 0.085999999999999993 0.61099999999999999 1 1 0 0 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="1000"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
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
            <Parameter name="Object" type="cn" value="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Values[C_g],Reference=InitialValue"/>
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
        <PlotItem name="[Ra]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Ra],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Rd]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Zhu2015 - combined gemcitabine and birinapant in pancreatic cancer cells - basic PD model,Vector=Compartments[Pancreas],Vector=Metabolites[Rd],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="MODEL1604270000_basic.xml">
    <SBMLMap SBMLid="C_b" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="C_g" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="Hi_b" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="Hi_g" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="Hs_b" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="Hs_g" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="IC50_b" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="IC50_g" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="Imax_b" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="Imax_g" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="Inh_b" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Inh_g" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Pancreas" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="Psi_i" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="Psi_s" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="Ra" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Ra_0" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="Rd" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="Rd_0" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="Rss" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="SC50_b" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="SC50_g" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="Smax_b" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="Smax_g" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="Sti_b" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Sti_b1" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="Sti_b2" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="Sti_b3" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="Sti_b4" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="Sti_g" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="Sti_g1" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="Sti_g2" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="Sti_g3" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="Sti_g4" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="b_death_stimulus_delay_1" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="b_death_stimulus_delay_2" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="b_death_stimulus_delay_3" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="b_death_stimulus_delay_4" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="b_death_stimulus_delay_4_degradation" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="g_death_stimulus_delay_1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="g_death_stimulus_delay_2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="g_death_stimulus_delay_3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="g_death_stimulus_delay_4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="g_death_stimulus_delay_4_degradation" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="kd" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="kg" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="ktau_b" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="ktau_g" COPASIkey="ModelValue_17"/>
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
