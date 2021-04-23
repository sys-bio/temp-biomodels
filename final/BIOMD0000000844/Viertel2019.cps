<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-11-10 15:52:57 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_43" name="Function_for_dAdt_V" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:27:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (INa + IK + ILVA + IH + INaP + IL + IHVA + IBK + IHVK)/C
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="INa" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="IK" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="ILVA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="IH" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="INaP" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="IL" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="IHVA" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="IBK" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="IHVK" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="C" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function_for_Ion" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:35:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (inf - ion)/tau
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_284" name="inf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="ion" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_301" name="tau" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function_for_dAdt_Ca_Up" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T16:57:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (Ca0-Ca)/tau_Ca
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_333" name="Ca0" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="Ca" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_337" name="tau_Ca" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function_for_dAdt_Ca_Down" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:16:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        Ca_buffer*10*(ILVA+IHVA)/(Ca_z*F*d)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_320" name="Ca_buffer" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="ILVA" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="IHVA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="Ca_z" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="F" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="d" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Viertel2019 - A Computational model of the mammalian external tufted cell" simulationType="time" timeUnit="ms" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:biomodels.teddy:TEDDY_0000055"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:cl:CL:1001503"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:30290156"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T13:42:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>johannes.p.meyer@gmail.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Meyer</vCard:Family>
            <vCard:Given>Johannes</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      This is a mathematical conductance-based model of the bursting activity in external tufted (ET) cells of the olfactory bulb. The model includes ion-current based descriptions of the mechanisms underlying bursting in ET cells, with facilitation of blocking various currents to characterise bursting behaviour.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-10T10:48:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:1001503"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="V" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:09:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000259"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Ca" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-10T10:50:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C331"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="nK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C48434"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C765"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-10T10:56:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="hNaP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C48434"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C830"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:05:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="hH" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C48434"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-10T10:50:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="mLVA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C331"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C48434"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-10T10:56:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="hLVA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C331"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C48434"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-10T10:57:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="mBK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C48434"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C765"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-10T10:56:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="nHVK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C48434"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C765"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-10T10:56:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="vL" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:18:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="vH" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:23:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="vNa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:18:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="vK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:23:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="vCa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:18:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="gL" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:15:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="gH" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="gNaP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="gLVA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="gNa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="gK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="gHVA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="gBK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="gHVK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="theta_mNa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:47:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="beta_mNa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="theta_nK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:47:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="beta_nK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="tau_nK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="theta_mLVA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:47:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="beta_mLVA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="tau_mLVA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="theta_hLVA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:47:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="beta_hLVA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:45:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="tau_hLVA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:20:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="theta_mHVA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:23:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="beta_mHVA" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="theta_mNaP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:20:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="beta_mNaP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="theta_hNaP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:23:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="beta_hNaP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:10:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="tau_hNaP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:10:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="theta_hH" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="beta_hH" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:44:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="tau_hH_T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:20:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="delta_hH_T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="theta_hH_T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:47:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="beta_hH_T" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:45:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="theta_mHVK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:47:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="beta_mHVK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="theta_nHVK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:47:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="beta_nHVK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="mBK_base" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:12:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="beta_mBK" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:45:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="Ca0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:20:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="tau_Ca" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:20:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="Ca_buffer" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="Ca_z" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:22:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="d" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:46:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="C" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:20:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="F" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:32:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="mNa_inf" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:05:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1/(1+exp((&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_mNa],Reference=Value>)/&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_mNa],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="nK_Inf" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:07:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1/(1+exp((&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_nK],Reference=Value>)/&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_nK],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="mNaP_inf" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:20:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1/(1+exp((&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_mNaP],Reference=Value>)/&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_mNaP],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="hNaP_inf" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:09:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1/(1+exp((&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_hNaP],Reference=Value>)/&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_hNaP],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="hH_inf" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:08:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1/(1+exp((&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_hH],Reference=Value>)/&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_hH],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="mLVA_inf" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:19:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1/(1+exp((&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_mLVA],Reference=Value>)/&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_mLVA],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="hLVA_inf" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:09:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1/(1+exp((&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_hLVA],Reference=Value>)/&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_hLVA],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="mHVA_inf" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:18:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1/(1+exp((&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_mHVA],Reference=Value>)/&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_mHVA],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="mBK_inf" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:12:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1/(1+exp((&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_mBK],Reference=Value>)/&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_mBK],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="mHVK_inf" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:18:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1/(1+exp((&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_mHVK],Reference=Value>)/&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_mHVK],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="nHVK_inf" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:21:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1/(1+exp((&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_nHVK],Reference=Value>)/&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_nHVK],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="theta_mBK" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:15:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -20+59.2*exp(-90*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[Ca],Reference=Concentration>)+96.7*exp(-470*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[Ca],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="p_mBK" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:16:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          2.9+6.3*exp(-360*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[Ca],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="s" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:16:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -25.3+107.5*exp(-120*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[Ca],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="f" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:16:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1/(10*(exp(-(&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>+100-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[s],Reference=Value>)/63.6)+exp((-150+(&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>+100-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[s],Reference=Value>))/63.6)))-5.2
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="nHVK_tau" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:22:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1000/(1.0+exp(-(&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>+35)))+1000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="nK_tau" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:23:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[tau_nK],Reference=Value>/cosh((&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_nK],Reference=Value>)/(2.0*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_nK],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="hNaP_tau" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:24:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[tau_hNaP],Reference=Value>/cosh((&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_hNaP],Reference=Value>)/(2.0*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_hNaP],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="hH_tau" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:22:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[tau_hH_T],Reference=Value>*exp(&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[delta_hH_T],Reference=Value>*(&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_hH_T],Reference=Value>)/&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_hH_T],Reference=Value>)/(1+exp((&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_hH_T],Reference=Value>)/&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_hH_T],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="mLVA_tau" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:29:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[tau_mLVA],Reference=Value>/cosh((&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_mLVA],Reference=Value>)/(2.0*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_mLVA],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="hLVA_tau" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:27:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[tau_hLVA],Reference=Value>/cosh((&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_hLVA],Reference=Value>)/(2.0*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_hLVA],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="mBK_tau" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T14:28:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          -(&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[p_mBK],Reference=Value>-1.0)*(&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[f],Reference=Value>-0.2)/0.8+&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[mBK_base],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="INa" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:06:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[gNa],Reference=Value>*(1-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[nK],Reference=Concentration>)*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[mNa_inf],Reference=Value>^3*(&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[vNa],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="IHVK" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:12:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[gHVK],Reference=Value>*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[mHVK_inf],Reference=Value>*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[nHVK],Reference=Concentration>*(&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[vK],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="IK" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:13:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[gK],Reference=Value>*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[nK],Reference=Concentration>^4*(&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[vK],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="IL" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:15:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[gL],Reference=Value>*(&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[vL],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="IH" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:16:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[gH],Reference=Value>*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[hH],Reference=Concentration>*(&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[vH],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="INaP" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:17:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[gNaP],Reference=Value>*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[mNaP_inf],Reference=Value>*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[hNaP],Reference=Concentration>*(&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[vNa],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="ILVA" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:19:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[gLVA],Reference=Value>*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[mLVA],Reference=Concentration>^2*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[hLVA],Reference=Concentration>*(&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[vCa],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="IHVA" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:21:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[gHVA],Reference=Value>*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[mHVA_inf],Reference=Value>*(&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[vCa],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="IBK" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:09:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[gBK],Reference=Value>*&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[mBK],Reference=Concentration>*(&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration>-&lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[vK],Reference=Value>)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="dAdt_V" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:24:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051899"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7550" name="INa" value="-0.0128386"/>
          <Constant key="Parameter_7534" name="IK" value="0.00668833"/>
          <Constant key="Parameter_7542" name="ILVA" value="-1.31979"/>
          <Constant key="Parameter_5071" name="IH" value="-51.7634"/>
          <Constant key="Parameter_7520" name="INaP" value="-6.09895"/>
          <Constant key="Parameter_5038" name="IL" value="27.7287"/>
          <Constant key="Parameter_7533" name="IHVA" value="-0.585636"/>
          <Constant key="Parameter_5074" name="IBK" value="31.6788"/>
          <Constant key="Parameter_7552" name="IHVK" value="0.087881"/>
          <Constant key="Parameter_5069" name="C" value="21"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="dAdt_nK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:35:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051899"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7525" name="inf" value="0.0560849"/>
          <Constant key="Parameter_7566" name="tau" value="4.60171"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="dAdt_hNaP" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:36:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051899"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7538" name="inf" value="0.373251"/>
          <Constant key="Parameter_7518" name="tau" value="483.668"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="dAdt_hH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T15:37:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051899"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7543" name="inf" value="0.155405"/>
          <Constant key="Parameter_7554" name="tau" value="7.13025"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="dAdt_mLVA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T16:53:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051899"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7468" name="inf" value="0.0509255"/>
          <Constant key="Parameter_5065" name="tau" value="17.5876"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="dAdt_hLVA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T16:53:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051899"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7529" name="inf" value="0.333222"/>
          <Constant key="Parameter_7535" name="tau" value="329.956"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="dAdt_mBK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T16:55:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051899"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7541" name="inf" value="2.00991e-05"/>
          <Constant key="Parameter_5041" name="tau" value="219.103"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="dAdt_Ca_Up" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T16:56:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051899"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7556" name="Ca0" value="2e-05"/>
          <Constant key="Parameter_7526" name="tau_Ca" value="8"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="dAdt_nHVK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:01:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051899"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7489" name="inf" value="2.24484e-05"/>
          <Constant key="Parameter_7488" name="tau" value="1000"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="dAdt_Ca_Down" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-08T17:17:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051899"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7320" name="Ca_buffer" value="0.5"/>
          <Constant key="Parameter_7321" name="ILVA" value="-1.31979"/>
          <Constant key="Parameter_7507" name="IHVA" value="-0.585636"/>
          <Constant key="Parameter_5045" name="Ca_z" value="2"/>
          <Constant key="Parameter_5059" name="F" value="96485"/>
          <Constant key="Parameter_5075" name="d" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V]" value="-51.408534874838772" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[Ca]" value="0.00039839179219000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[nK]" value="0.055706295559465997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[hNaP]" value="0.139259083672574" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[hH]" value="0.157733123889777" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[mLVA]" value="0.048620921041046997" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[hLVA]" value="0.21683018316389699" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[mBK]" value="0.118223401083348" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[nHVK]" value="0.049382804823415997" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[vL]" value="-62.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[vH]" value="-35" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[vNa]" value="45" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[vK]" value="-105" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[vCa]" value="120" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[gL]" value="2.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[gH]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[gNaP]" value="8.3244000000000007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[gLVA]" value="15.0213" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[gNa]" value="29.170000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[gK]" value="12.960000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[gHVA]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[gBK]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[gHVK]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_mNa]" value="-25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_mNa]" value="-6.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_nK]" value="-26" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_nK]" value="-9" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[tau_nK]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_mLVA]" value="-37.100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_mLVA]" value="-4.8916000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[tau_mLVA]" value="40" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_hLVA]" value="-59.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_hLVA]" value="11.2326" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[tau_hLVA]" value="350" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_mHVA]" value="-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_mHVA]" value="-6.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_mNaP]" value="-40" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_mNaP]" value="-4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_hNaP]" value="-54" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_hNaP]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[tau_hNaP]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_hH]" value="-61.32" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_hH]" value="5.8550000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[tau_hH_T]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[delta_hH_T]" value="0.20499999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_hH_T]" value="-65.950000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_hH_T]" value="4.4400000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_mHVK]" value="-40" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_mHVK]" value="-2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_nHVK]" value="-30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_nHVK]" value="-2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[mBK_base]" value="170" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[beta_mBK]" value="-15.6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[Ca0]" value="2.0000000000000002e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[tau_Ca]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[Ca_buffer]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[Ca_z]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[d]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[C]" value="21" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[F]" value="96485" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[mNa_inf]" value="0.016909068917025098" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[nK_Inf]" value="0.056084850762363657" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[mNaP_inf]" value="0.054571127326948778" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[hNaP_inf]" value="0.37325146807704918" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[hH_inf]" value="0.15540525234938538" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[mLVA_inf]" value="0.050925493376845855" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[hLVA_inf]" value="0.33322215622254087" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[mHVA_inf]" value="0.0017083050603945501" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[mBK_inf]" value="2.0099079955108173e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[mHVK_inf]" value="0.0033206537037050402" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[nHVK_inf]" value="2.2448429849710004e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[theta_mBK]" value="117.30260124662632" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[p_mBK]" value="8.3582519794237946" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[s]" value="77.181657618842522" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[f]" value="-5.1385712232881575" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[nHVK_tau]" value="1000.0000747934929" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[nK_tau]" value="4.6017101289554105" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[hNaP_tau]" value="483.668077978459" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[hH_tau]" value="7.1302505773144667" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[mLVA_tau]" value="17.58764793846785" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[hLVA_tau]" value="329.95563929749903" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[mBK_tau]" value="219.10319033881873" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[INa]" value="-0.01283861243922201" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[IHVK]" value="0.087880996082271609" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[IK]" value="0.0066883308491488642" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[IL]" value="27.728662812903071" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[IH]" value="-51.76338928525341" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[INaP]" value="-6.0989473202869418" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[ILVA]" value="-1.3197937346539685" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[IHVA]" value="-0.5856361350430056" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[IBK]" value="31.678826380680967" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_V]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_V],ParameterGroup=Parameters,Parameter=INa" value="-0.01283861243922201" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[INa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_V],ParameterGroup=Parameters,Parameter=IK" value="0.0066883308491488642" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[IK],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_V],ParameterGroup=Parameters,Parameter=ILVA" value="-1.3197937346539685" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[ILVA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_V],ParameterGroup=Parameters,Parameter=IH" value="-51.76338928525341" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[IH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_V],ParameterGroup=Parameters,Parameter=INaP" value="-6.0989473202869418" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[INaP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_V],ParameterGroup=Parameters,Parameter=IL" value="27.728662812903071" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[IL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_V],ParameterGroup=Parameters,Parameter=IHVA" value="-0.5856361350430056" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[IHVA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_V],ParameterGroup=Parameters,Parameter=IBK" value="31.678826380680967" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[IBK],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_V],ParameterGroup=Parameters,Parameter=IHVK" value="0.087880996082271609" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[IHVK],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_V],ParameterGroup=Parameters,Parameter=C" value="21" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[C],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_nK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_nK],ParameterGroup=Parameters,Parameter=inf" value="0.056084850762363657" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[nK_Inf],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_nK],ParameterGroup=Parameters,Parameter=tau" value="4.6017101289554105" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[nK_tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_hNaP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_hNaP],ParameterGroup=Parameters,Parameter=inf" value="0.37325146807704918" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[hNaP_inf],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_hNaP],ParameterGroup=Parameters,Parameter=tau" value="483.668077978459" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[hNaP_tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_hH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_hH],ParameterGroup=Parameters,Parameter=inf" value="0.15540525234938538" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[hH_inf],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_hH],ParameterGroup=Parameters,Parameter=tau" value="7.1302505773144667" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[hH_tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_mLVA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_mLVA],ParameterGroup=Parameters,Parameter=inf" value="0.050925493376845855" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[mLVA_inf],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_mLVA],ParameterGroup=Parameters,Parameter=tau" value="17.58764793846785" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[mLVA_tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_hLVA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_hLVA],ParameterGroup=Parameters,Parameter=inf" value="0.33322215622254087" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[hLVA_inf],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_hLVA],ParameterGroup=Parameters,Parameter=tau" value="329.95563929749903" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[hLVA_tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_mBK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_mBK],ParameterGroup=Parameters,Parameter=inf" value="2.0099079955108173e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[mBK_inf],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_mBK],ParameterGroup=Parameters,Parameter=tau" value="219.10319033881873" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[mBK_tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_Ca_Up]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_Ca_Up],ParameterGroup=Parameters,Parameter=Ca0" value="2.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[Ca0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_Ca_Up],ParameterGroup=Parameters,Parameter=tau_Ca" value="8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[tau_Ca],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_nHVK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_nHVK],ParameterGroup=Parameters,Parameter=inf" value="2.2448429849710004e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[nHVK_inf],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_nHVK],ParameterGroup=Parameters,Parameter=tau" value="1000.0000747934929" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[nHVK_tau],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_Ca_Down]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_Ca_Down],ParameterGroup=Parameters,Parameter=Ca_buffer" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[Ca_buffer],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_Ca_Down],ParameterGroup=Parameters,Parameter=ILVA" value="-1.3197937346539685" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[ILVA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_Ca_Down],ParameterGroup=Parameters,Parameter=IHVA" value="-0.5856361350430056" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[IHVA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_Ca_Down],ParameterGroup=Parameters,Parameter=Ca_z" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[Ca_z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_Ca_Down],ParameterGroup=Parameters,Parameter=F" value="96485" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Reactions[dAdt_Ca_Down],ParameterGroup=Parameters,Parameter=d" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
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
      <StateTemplateVariable objectReference="ModelValue_32"/>
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
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 0.00039839179219000001 -51.408534874838772 0.055706295559465997 0.139259083672574 0.157733123889777 0.048620921041046997 0.21683018316389699 0.118223401083348 0.049382804823415997 0.016909068917025098 0.056084850762363657 0.054571127326948778 0.37325146807704918 0.15540525234938538 0.050925493376845855 0.33322215622254087 0.0017083050603945501 2.0099079955108173e-05 0.0033206537037050402 2.2448429849710004e-05 117.30260124662632 8.3582519794237946 77.181657618842522 -5.1385712232881575 1000.0000747934929 4.6017101289554105 483.668077978459 7.1302505773144667 17.58764793846785 329.95563929749903 219.10319033881873 -0.01283861243922201 0.087880996082271609 0.0066883308491488642 27.728662812903071 -51.76338928525341 -6.0989473202869418 -1.3197937346539685 -0.5856361350430056 31.678826380680967 1 -62.5 -35 45 -105 120 2.5 20 8.3244000000000007 15.0213 29.170000000000002 12.960000000000001 2 5 10 -25 -6.5 -26 -9 10 -37.100000000000001 -4.8916000000000004 40 -59.200000000000003 11.2326 350 -10 -6.5 -40 -4 -54 5 500 -61.32 5.8550000000000004 100 0.20499999999999999 -65.950000000000003 4.4400000000000004 -40 -2 -30 -2 170 -15.6 2.0000000000000002e-05 8 0.5 2 1 21 96485 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="10000"/>
        <Parameter name="StepSize" type="float" value="0.20000000000000001"/>
        <Parameter name="Duration" type="float" value="2000"/>
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
        <Parameter name="Steady-State" type="key" value=""/>
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
    <PlotSpecification name="Fig_1" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[IBK]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[IBK],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[IH]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[IH],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[ILVA]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[ILVA],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[INaP]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Values[INaP],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ca]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[Ca],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[V]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Viertel2019 - A Computational model of the mammalian external tufted cell,Vector=Compartments[compartment],Vector=Metabolites[V],Reference=Concentration"/>
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
  </ListOfUnitDefinitions>
</COPASI>
