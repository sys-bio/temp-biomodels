<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.10 (Build 55) (http://www.copasi.org) at 2013-11-26 18:41:32 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="10" versionDevel="55" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-06-25T12:41:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_8" name="Henri-Michaelis-Menten (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-11-30T15:30:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V*substrate/(Km+substrate)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_41" name="substrate" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_30" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_45" name="V" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-23T15:18:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000041" />
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <b xmlns="http://www.w3.org/1999/xhtml">
mass action rate law for first order irreversible reactions
</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Hill expression" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-17T10:44:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        a*(M/(K+M))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="M" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_289" name="K" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Hill Function -| [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-08T10:15:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        a*(1-(M^n/(K^n +M^n)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_440" name="a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_441" name="M" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_438" name="n" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_443" name="K" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Biochemical Hill Function -> (workaround) [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-09-15T11:32:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        a*(M^n /(K^n + M^n))*L
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_444" name="a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_437" name="M" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_445" name="n" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_447" name="K" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_449" name="L" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Biochemical Hill Function -| (workaround) [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-09-19T13:11:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        a*(1-(M^n /(K^n + M^n)))*L
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_450" name="a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_446" name="M" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_436" name="n" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_452" name="K" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_454" name="L" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Kloss Hill [1] [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-11-15T11:45:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        S*kloss*(1+((0.048*(FT1/FT))/(1+(FT1/FT))))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_448" name="S" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_455" name="kloss" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_433" name="FT1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_457" name="FT" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Mass Action Ferritin [2] [1]" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-02-08T14:02:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        K * (FT1/FT) * S
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_458" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_456" name="FT1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_459" name="FT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_461" name="S" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Biochemical Hill Function General [1]" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-05-02T16:21:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        a*(M^n /(K^n + M^n))*S
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_462" name="a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_451" name="M" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_463" name="n" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_465" name="K" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_467" name="S" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Henri-Michaelis-Menten kcat (irreversible) [1] [1]" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-10-17T12:05:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (E*C*S)/(K+S)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_468" name="E" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_464" name="C" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_460" name="S" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_470" name="K" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Hepc Expression 7 [1] [1]" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-08-20T14:04:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        basal+a*M^n /(K^n + M^n)+a1*(M1)/(K1+(M1))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_471" name="basal" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_453" name="a" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_472" name="M" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_474" name="n" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_476" name="K" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_478" name="a1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_480" name="M1" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_482" name="K1" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Hill Function -> (with scaling factor) [2]" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-02-26T11:30:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Scale*a*M^n /(K^n + M^n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_596" name="Scale" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_600" name="a" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_424" name="M" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_604" name="n" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_595" name="K" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Mass Action with Scaling" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-02-26T11:31:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s * v * scale
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_597" name="s" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_609" name="v" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_598" name="scale" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Iron Metabolism" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221415e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-08T09:32:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>Simon.Mitchell@postgrad.manchester.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Mitchell</vCard:Family>
            <vCard:Given>Simon</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Manchester Institute of Biotechnology</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>Pedro.Mendes@manchester.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Mendes</vCard:Family>
            <vCard:Given>Pedro</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Manchester Institute of Biotechnology</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
        
      </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_3" name="LiverCell" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-08T10:25:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_2" name="intercell" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-19T15:52:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_42" name="Hamp" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Reduction of serum hepcidin by hemodialysis in pediatric and adult patients.
</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.2215/CJN.08161109"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-12-01T13:14:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P81172"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="Fe-FT" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-17T11:19:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:kegg.compound:C00023"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P02792"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="FT" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Role of iron and ferritin in TNFα-induced apoptosis in HeLa cells</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/S0014-5793(03)00114-5"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-17T11:19:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P02792"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="FT1" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-17T11:19:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00023"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="HO-1" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Serum heme oxygenase-1 levels are increased in Parkinson's disease but not in Alzheimer's disease.</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1111/j.1600-0404.2009.01261.x"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-02-08T16:07:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P09601"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="Heme" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-02-08T16:06:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00032"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="LIP" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Fluorescence Analysis of the Labile Iron Pool of Mammalian Cells</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1006/abio.1997.2126"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-08T11:11:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00023"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="Fpn" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-08T10:20:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q9NP59"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="IRP" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Molecular control of vertebrate iron metabolism: mRNA-based regulatory circuits operated by iron, nitric oxide, and oxidative stress.
</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1073/pnas.93.16.8175"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-08T10:20:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P21399"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="Tf-Fe_intercell" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Diferric transferrin regulates transferrin receptor 2 protein stability
</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1182/blood-2004-06-2477"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-25T13:41:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:kegg.compound:C00023"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:kegg.compound:P02787"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="TfR" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Stoichiometries of transferrin receptors 1 and 2 in human liver.
</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/j.bcmd.2009.09.004"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-08T14:13:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P02786"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="Tf-Fe-TfR1" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-01-26T10:09:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:kegg.compound:C00023"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P02787"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9UP52"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="HFE" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>1	DOI	10.1016/j.bcmd.2009.09.004	
</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/j.bcmd.2009.09.004"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-12-01T13:10:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q30201"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="HFE-TfR" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-12-01T13:14:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P02786"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q30201"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="Tf-Fe-TfR2" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-16T16:35:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:kegg.compound:C00023"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P02787"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9UP52"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="2(Tf-Fe)-TfR1" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-10T10:45:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:kegg.compound:C00023"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P02786"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P02787"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="2HFE-TfR" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-10T10:45:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P02786"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q30201"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="2HFE-TfR2" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-10T11:04:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q30201"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9UP52"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="2(Tf-Fe)-TfR2" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-10T12:00:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:kegg.compound:C00023"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P02787"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q9UP52"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="TfR2" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Stoichiometries of transferrin receptors 1 and 2 in human liver</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/j.bcmd.2009.09.004"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-01-11T09:53:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:Q9UP52"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="Heme_intercell" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Why Heme Needs to Be Degraded to Iron, Biliverdin IXα, and Carbon Monoxide?
</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1089/ars.2004.6.819"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-02-08T16:06:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:kegg.compound:C00032"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_3" name="ODE 2TfR1 TF" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-02-26T11:27:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR1],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="ODE TfR1 Tf" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-02-26T11:28:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR1],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="ODE TfR1+2TfR1 Tf" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-02-26T11:29:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR1],Reference=Concentration&gt;+&lt;CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR1],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="Scaling Factor" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-02-26T11:30:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="ODE TfR2" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-02-26T19:15:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR2],Reference=Concentration&gt;+&lt;CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR2],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_89" name="Fpn Export" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-08T09:34:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_19149" name="a" value="2"/>
          <Constant key="Parameter_19148" name="n" value="1"/>
          <Constant key="Parameter_19147" name="K" value="3e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_57">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="Parameter_19149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="Parameter_19148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="Parameter_19147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="TfR1 expression" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_88">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Stoichiometries of transferrin receptors 1 and 2 in human liver</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/j.bcmd.2009.09.004" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-08T10:04:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_19146" name="a" value="6e-12"/>
          <Constant key="Parameter_19145" name="n" value="1"/>
          <Constant key="Parameter_19144" name="K" value="1e-06"/>
          <Constant key="Parameter_19143" name="Scale" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_64">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_600">
              <SourceParameter reference="Parameter_19146"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_604">
              <SourceParameter reference="Parameter_19145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_595">
              <SourceParameter reference="Parameter_19144"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="TfR1 degradation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_87">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Stoichiometries of transferrin receptors 1 and 2 in human liver</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/j.bcmd.2009.09.004" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-08T10:04:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_19142" name="v" value="8.37e-06"/>
          <Constant key="Parameter_19141" name="scale" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_65">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_597">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_609">
              <SourceParameter reference="Parameter_19142"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_598">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="Ferroportin Expression" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-08T09:40:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_19140" name="a" value="1e-09"/>
          <Constant key="Parameter_19139" name="n" value="1"/>
          <Constant key="Parameter_19138" name="K" value="5e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_52">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Parameter_19140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Parameter_19139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Parameter_19138"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="IRP expresion" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_85">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Differential regulation of two related RNA-binding proteins, iron regulatory protein (IRP) and IRPB.
</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:7585245" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-08T10:05:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_19137" name="a" value="4e-11"/>
          <Constant key="Parameter_19136" name="n" value="1"/>
          <Constant key="Parameter_19135" name="K" value="1e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_52">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Parameter_19137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Parameter_19136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Parameter_19135"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="IRP degradation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_84">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Differential regulation of two related RNA-binding proteins, iron regulatory protein (IRP) and IRPB.
</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:7585245" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-11T10:39:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_19134" name="k1" value="1.597e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="Fpn degradation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-12-01T13:13:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_19133" name="a" value="0.0002315"/>
          <Constant key="Parameter_19132" name="n" value="5"/>
          <Constant key="Parameter_19131" name="K" value="5e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_53">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Parameter_19133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Parameter_19132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Parameter_19131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="HFE degradation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_82">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>The haemochromatosis protein HFE induces an apparent iron-deficient phenotype in H1299 cells that is not corrected by co-expression of beta 2-microglobulin.</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1042/BJ20021607" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-01-05T12:03:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_19130" name="k1" value="6.418e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="HFE expression" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_81">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>The haemochromatosis protein HFE induces an apparent iron-deficient phenotype in H1299 cells that is not corrected by co-expression of beta 2-microglobulin.</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1042/BJ20021607" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-01-05T12:04:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19129" name="v" value="2.3469e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_6">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_19129"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="TfR2 expression" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_80">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Stoichiometries of transferrin receptors 1 and 2 in human liver</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/j.bcmd.2009.09.004" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-01-11T09:42:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19128" name="v" value="3e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_6">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_19128"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="TfR2 degradation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_79">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Stoichiometries of transferrin receptors 1 and 2 in human liver</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/j.bcmd.2009.09.004" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-01-11T09:46:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_19127" name="a" value="3.2e-05"/>
          <Constant key="Parameter_19126" name="n" value="1"/>
          <Constant key="Parameter_19125" name="K" value="2.5e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_54">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Parameter_19127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="Parameter_19126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="Parameter_19125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="Hepcidin expression" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_78">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Reduction of Serum Hepcidin by Hemodialysis in Pediatric and Adult Patients</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.2215/CJN.08161109" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-01-19T14:01:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_19124" name="a" value="5e-12"/>
          <Constant key="Parameter_19123" name="n" value="5"/>
          <Constant key="Parameter_19122" name="K" value="1.35e-07"/>
          <Constant key="Parameter_19121" name="basal" value="0"/>
          <Constant key="Parameter_19120" name="a1" value="5e-12"/>
          <Constant key="Parameter_19119" name="K1" value="6e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_59">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="Parameter_19121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="Parameter_19124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="Parameter_19123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="Parameter_19122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="Parameter_19120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_482">
              <SourceParameter reference="Parameter_19119"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="Hepcidin degradation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_77">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Synthetic hepcidin causes rapid dose-dependent hypoferremia and is concentrated in ferroportin-containing organs</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1182/blood-2005-04-1766" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-01-19T14:05:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_19118" name="k1" value="0.00056"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="HFE TfR1 binding" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_76">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1074/jbc.C000664200" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-16T11:07:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19117" name="k1" value="1.102e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_30"/>
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="HFE TfR1 release" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_75">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1074/jbc.C000664200" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-16T11:07:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19116" name="k1" value="0.08"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="TfR1 binding" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_74">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1074/jbc.C000664200" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-16T13:40:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19115" name="k1" value="837400"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_33"/>
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="TfR1 release" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_73">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1074/jbc.C000664200" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-16T13:43:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19114" name="k1" value="0.0009142"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="HFE TfR2 binding" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-16T12:07:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="2"/>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19113" name="k1" value="3.9438e+11"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_30"/>
              <SourceParameter reference="Metabolite_30"/>
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="HFE TfR2 release" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-16T13:43:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="2"/>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19112" name="k1" value="0.0018"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="TfR2 binding" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_70">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1074/jbc.C000664200" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-17T11:04:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19111" name="k1" value="222390"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_33"/>
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="TfR2 release" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1074/jbc.C000664200" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-17T11:04:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19110" name="k1" value="0.0061"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="TfR1 binding 2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1074/jbc.C000664200" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-23T15:39:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19109" name="k1" value="121400"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_31"/>
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="TfR1 release 2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1074/jbc.C000664200" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-25T12:43:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19108" name="k1" value="0.003535"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="HFE TfR1 binding 2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1074/jbc.C000664200" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-17T11:04:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19107" name="k1" value="1.102e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_29"/>
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="HFE TfR1 release 2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1074/jbc.C000664200" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-25T12:43:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19106" name="k1" value="0.08"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="TfR2 binding 2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1074/jbc.C000664200" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-14T14:37:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19105" name="k1" value="69600"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_28"/>
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="TfR2 release 2" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Comparison of the Interactions of Transferrin Receptor and Transferrin Receptor 2 with Transferrin and the Hereditary Hemochromatosis Protein HFE</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1074/jbc.C000664200" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-14T14:37:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19104" name="k1" value="0.024"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="TfR1 iron internalisation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-15T12:44:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="4"/>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19103" name="k1" value="0.8333"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="TfR2 iron internalisation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-15T12:49:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="4"/>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19102" name="k1" value="0.8333"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="outFlow" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-16T12:54:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_19101" name="k1" value="5.2e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="Ferritin Iron binding" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Mathematical modeling of the dynamic storage of iron in ferritin</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1186/1752-0509-4-147" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-17T11:26:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19100" name="k1" value="4.71e+10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_36"/>
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="Ferritin Iron release" reversible="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Mathematical modeling of the dynamic storage of iron in ferritin</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1186/1752-0509-4-147"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-17T11:28:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19099" name="k1" value="22922"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19099"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="Ferritin Iron internalisation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Mathematical modeling of the dynamic storage of iron in ferritin</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1186/1752-0509-4-147" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-17T11:29:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19098" name="k1" value="108000"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19098"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="Ferritin internalised iron release" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Mathematical modeling of the dynamic storage of iron in ferritin</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1186/1752-0509-4-147" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-17T11:29:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_19097" name="kloss" value="13.112"/>
        </ListOfConstants>
        <KineticLaw function="Function_55">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="Parameter_19097"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="ferritin expression" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Role of iron and ferritin in TNFa-induced apoptosis in HeLa cells</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/S0014-5793(03)00114-5" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-05-17T11:30:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_19096" name="a" value="2.312e-13"/>
          <Constant key="Parameter_19095" name="n" value="1"/>
          <Constant key="Parameter_19094" name="K" value="1e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_52">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Parameter_19096"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Parameter_19095"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Parameter_19094"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="Ferritin Degredation Full" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Mathematical modeling of the dynamic storage of iron in ferritin</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1186/1752-0509-4-147" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-11-30T12:27:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_19093" name="k1" value="1.203e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19093"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="Ferritin Degredation Full Iron Release" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Mathematical modeling of the dynamic storage of iron in ferritin</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1186/1752-0509-4-147" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-11-30T13:25:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_19092" name="K" value="1.203e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_56">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="Parameter_19092"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="HFETfR degradation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-12-16T15:04:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_19091" name="k1" value="8.37e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19091"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="HFETfR2 degradation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-12-16T15:04:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_19090" name="k1" value="8.37e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19090"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="Heme uptake" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Identification of an intestinal heme transporter.</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/j.cell.2005.06.025" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-02-08T16:11:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19089" name="Km" value="0.000125"/>
          <Constant key="Parameter_19088" name="V" value="1.034e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_8">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_41">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_30">
              <SourceParameter reference="Parameter_19089"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_19088"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="Heme export" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Functional validation of the genetic polymorphisms of human ATP-binding cassette (ABC) transporter ABCG2: identification of alleles that are defective in porphyrin transport.</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1124/mol.106.023556" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-02-08T16:12:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_19087" name="Km" value="1.78e-05"/>
          <Constant key="Parameter_19086" name="V" value="2.18e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_8">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_41">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_30">
              <SourceParameter reference="Parameter_19087"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_45">
              <SourceParameter reference="Parameter_19086"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="HO1 exp" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Plasma Heme Oxygenase-1 Concentration Is Elevated in Individuals with Type 2 Diabetes Mellitus</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1371/journal.pone.0012371" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-02-08T16:15:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_19085" name="a" value="2.1432e-15"/>
          <Constant key="Parameter_19084" name="K" value="1e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Parameter_19085"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Parameter_19084"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="HO1 Deg" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Inducible heme oxygenase in the kidney: a model for the homeostatic control of hemoglobin catabolism.</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1172/JCI106697" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-02-08T16:16:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_19083" name="k1" value="3.209e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_19083"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="Heme oxygenation" reversible="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Inhibition of the Enzymatic Activity of Heme Oxygenases by Azole-Based Antifungal Drugs</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1124/jpet.106.102699" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-02-08T16:35:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_19082" name="C" value="17777.7"/>
          <Constant key="Parameter_19081" name="K" value="2e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_58">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="Parameter_19082"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="Parameter_19081"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 1.907501646107766e+16 3.011070895e+18 3.027550438225476e+17 3302347628949197 3.643781854267261e+17 -0.0002660062580125744 -0.00018396451522385 1.320976090007648e+17 -6.206793840754758e-06 1.508363629304946e+18 2286011341901998 8.604626159214893e+18 7.653910915585144e+16 5.763628302809217e+16 -2.308261545746218e-09 -9.094411306441881e-07 -1.432141587854192e-07 -3.069903745233707e-28 0 0 0 1 1 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_27" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="Fe3GutSS4.txt" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="100"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="9.999999999999999e+59"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000000000000"/>
      </Method>
    </Task>
    <Task key="Task_15" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="Fe3GutSS4.txt" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="5000"/>
        <Parameter name="StepSize" type="float" value="360"/>
        <Parameter name="Duration" type="float" value="1800000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-09"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Report reference="Report_28" target="samplingInitialConcentrations5.txt" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Maximum" type="float" value="1"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Number of steps" type="unsignedInteger" value="5"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Iron Metabolism,Vector=Values[Scaling Factor],Reference=InitialValue"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="log" type="bool" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="20"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe_intercell],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Maximum" type="float" value="2e-06"/>
            <Parameter name="log" type="bool" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="0"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_17" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="0"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_18" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          abs(abs(&lt;CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT1],Reference=Concentration&gt;/&lt;CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT],Reference=Concentration&gt;)-2000)
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Iron Metabolism,Vector=Reactions[Ferritin internalised iron release],ParameterGroup=Parameters,Parameter=kloss,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="8.21157"/>
            <Parameter name="UpperBound" type="cn" value="inf"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Particle Swarm" type="ParticleSwarm">
        <Parameter name="Iteration Limit" type="unsignedInteger" value="2000"/>
        <Parameter name="Swarm Size" type="unsignedInteger" value="50"/>
        <Parameter name="Std. Deviation" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="0"/>
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
      <Method name="Truncated Newton" type="TruncatedNewton">
      </Method>
    </Task>
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="true" updateModel="false">
      <Report reference="Report_9" target="MCA.txt" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_27"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="9.999999999999999e-12"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="0"/>
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
    <Task key="Task_22" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="10000"/>
        <Parameter name="Duration" type="float" value="1000000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="CSP (LSODA)" type="TimeScaleSeparation(CSP)">
        <Parameter name="Ratio of Modes Separation" type="unsignedFloat" value="0.01"/>
        <Parameter name="Maximum Relative Error" type="unsignedFloat" value="1e-05"/>
        <Parameter name="Maximum Absolute Error" type="unsignedFloat" value="1e-09"/>
        <Parameter name="Refinement Iterations Number" type="unsignedInteger" value="1000"/>
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="0"/>
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
    <Task key="Task_24" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_25" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
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
    <Task key="Task_14" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_29" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_27"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_21" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
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
    <Report key="Report_18" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
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
    <Report key="Report_9" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_10" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
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
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          Automatically generated report.
        </body>
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="report_1" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          
        </body>
      </Comment>
      <Table printTitle="1">
      </Table>
    </Report>
    <Report key="Report_14" name="Time, Concentrations, Volumes, and Global Quantity Values" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
          A table of time, variable species concentrations, variable compartment volumes, and variable global quantity values.
        </body>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[LIP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fpn],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[IRP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Hamp],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Heme],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[2(Tf-Fe)-TfR1_Internal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[2(Tf-Fe)-TfR2_Internal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Tf-Fe-TfR2_Internal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Tf-Fe-TfR1_Internal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Tf-TfR1_Internal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Tf-TfR2_Internal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[DMT1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fe-FT],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[LIPintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[Fpnintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[IRPintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[Hintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[TFTfR1_Internalintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[FeFnintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[Fnintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[Fn1intestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[Hemeintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[2Fe2TFTfR1_Internalintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[DMT1intestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[Fe2TFTfR1_Internalintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Fe_intercell],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Fe3_intercell],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[H_intercell],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe_intercell],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[TfR],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE-TfR],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE-TfR2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2HFE-TfR],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2HFE-TfR2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[TfR2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Gut],Vector=Metabolites[Fe2gut],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Gut],Vector=Metabolites[TfRintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Gut],Vector=Metabolites[HFEintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Gut],Vector=Metabolites[HFETfRintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Gut],Vector=Metabolites[2HFETfRintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Gut],Vector=Metabolites[Fe2TFTfR1intestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Gut],Vector=Metabolites[2Fe2TFTfR1intestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Gut],Vector=Metabolites[Fe2TfGut],Reference=Concentration"/>
      </Table>
    </Report>
    <Report key="Report_15" name="Concentrations" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[2(Tf-Fe)-TfR1_Internal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[2Fe2TFTfR1_Internalintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Gut],Vector=Metabolites[2Fe2TFTfR1intestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[2(Tf-Fe)-TfR2_Internal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2HFE-TfR2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2HFE-TfR],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Gut],Vector=Metabolites[2HFETfRintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[DMT1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[DMT1intestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Tf-Fe-TfR1_Internal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[Fe2TFTfR1_Internalintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Gut],Vector=Metabolites[Fe2TFTfR1intestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Tf-Fe-TfR2_Internal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Gut],Vector=Metabolites[Fe2TfGut],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe_intercell],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Fe_intercell],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Gut],Vector=Metabolites[Fe2gut],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Fe3_intercell],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Gut],Vector=Metabolites[Fe3gut],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fe-FT],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[FeFnintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[Fn1intestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[Fnintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fpn],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[Fpnintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE-TfR2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE-TfR],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Gut],Vector=Metabolites[HFETfRintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Gut],Vector=Metabolites[HFEintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Hamp],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[H_intercell],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Heme],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[Hemeintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[Hintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[IRP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[IRPintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[LIP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[LIPintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Tf-TfR1_Internal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[TFTfR1_Internalintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Tf-TfR2_Internal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[TfR2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[TfR],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Gut],Vector=Metabolites[TfRintestinal],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf_intercell],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[IntestinalCell],Vector=Metabolites[O2intestinal],Reference=Concentration"/>
      </Table>
    </Report>
    <Report key="Report_16" name="Scan Parameters, Time, Concentrations, Volumes, and Global Quantity Values" taskType="scan" separator="&#x09;" precision="6">
      <Comment>
        A table of scan parameters, time, variable species concentrations, variable compartment volumes, and variable global quantity values.
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Reactions[STEAP3 iron reduction],ParameterGroup=Parameters,Parameter=Km,Reference=Value"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Hamp],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fe-FT],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[HO-1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Heme],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[LIP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fpn],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[IRP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fe3],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe_intercell],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[TfR],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE-TfR],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2HFE-TfR],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2HFE-TfR2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[TfR2],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Heme_intercell],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Intestine],Vector=Metabolites[intLIP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Intestine],Vector=Metabolites[intDMT1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Intestine],Vector=Metabolites[intIRP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Intestine],Vector=Metabolites[intFpn],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Intestine],Vector=Metabolites[intHamp],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Intestine],Vector=Metabolites[intHeme],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Intestine],Vector=Metabolites[intFe-FT],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Intestine],Vector=Metabolites[intFT],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Intestine],Vector=Metabolites[intFT1],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[Intestine],Vector=Metabolites[intHO-1],Reference=Concentration"/>
      </Table>
    </Report>
    <Report key="Report_17" name="Scan Parameters and Eigenvalues" taskType="scan" separator="&#x09;" precision="6">
      <Comment>
        This table includes scan parameters and the real and imaginary parts of the eigenvalues of the reduced system&apos;s Jacobian.
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR1],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR2],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2HFE-TfR2],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2HFE-TfR],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT1],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fe-FT],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fpn],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE-TfR],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[HO-1],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Hamp],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Heme],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Heme_intercell],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[IRP],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[LIP],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR1],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR2],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe_intercell],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[TfR2],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[TfR],Reference=InitialConcentration"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[0][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[1][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[2][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[3][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[4][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[5][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[6][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[7][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[8][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[9][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[10][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[11][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[12][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[13][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[14][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[15][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[16][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[17][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[18][0]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[0][1]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[1][1]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[2][1]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[3][1]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[4][1]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[5][1]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[6][1]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[7][1]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[8][1]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[9][1]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[10][1]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[11][1]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[12][1]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[13][1]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[14][1]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[15][1]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[16][1]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[17][1]"/>
        <Object cn="CN=Root,Vector=TaskList[Steady-State],Array=Eigenvalues of reduced system Jacobian[18][1]"/>
      </Table>
    </Report>
    <Report key="Report_28" name="Scan Parameters, Time, Concentrations, Volumes, and Global Quantity Values_1" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        A table of scan parameters, time, variable species concentrations, variable compartment volumes, and variable global quantity values.
      </Comment>
      <Header>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR1],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR2],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2HFE-TfR2],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2HFE-TfR],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT1],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fe-FT],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fpn],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE-TfR],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[HO-1],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Hamp],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Heme],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[IRP],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[LIP],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR1],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR2],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[TfR2],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[TfR],Reference=Name"/>
        <Object cn="String=\[InitialConcentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Reference=Name"/>
        <Object cn="String=\[Time\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Hamp],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fe-FT],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT1],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[HO-1],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Heme],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[LIP],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fpn],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[IRP],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[TfR],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR1],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE-TfR],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR2],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR1],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2HFE-TfR],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2HFE-TfR2],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR2],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[TfR2],Reference=Name"/>
        <Object cn="String=\[Concentration\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Values[Fe2GutQUant],Reference=Name"/>
        <Object cn="String=\[Value\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR1],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR2],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2HFE-TfR2],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2HFE-TfR],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT1],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fe-FT],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fpn],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE-TfR],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[HO-1],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Hamp],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Heme],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[IRP],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[LIP],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR1],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR2],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[TfR2],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[TfR],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Hamp],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fe-FT],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT1],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[HO-1],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Heme],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[LIP],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fpn],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[IRP],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[TfR],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR1],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE-TfR],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR2],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR1],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2HFE-TfR],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2HFE-TfR2],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR2],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[TfR2],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Iron Metabolism,Vector=Values[Fe2GutQUant],Reference=Value"/>
      </Body>
    </Report>
    <Report key="Report_29" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values_16" type="Plot2D" active="0">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Hamp]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Hamp],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Fe-FT]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fe-FT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[FT]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[FT1]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[FT1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HO-1]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[HO-1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Heme]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Heme],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LIP]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[LIP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Fpn]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fpn],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IRP]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[IRP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Fe3]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[LiverCell],Vector=Metabolites[Fe3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Tf-Fe_intercell]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe_intercell],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TfR]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[TfR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Tf-Fe-TfR1]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HFE]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HFE-TfR]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[HFE-TfR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Tf-Fe-TfR2]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe-TfR2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[2(Tf-Fe)-TfR1]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[2HFE-TfR]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2HFE-TfR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[2HFE-TfR2]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2HFE-TfR2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[2(Tf-Fe)-TfR2]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TfR2]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[TfR2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Fe2GutQUant]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Values[Fe2GutQUant],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure 5 and 7" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Figure 5" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe_intercell],Reference=InitialConcentration"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Values[ODE TfR1+2TfR1 Tf],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Figure 7" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[Tf-Fe_intercell],Reference=InitialConcentration"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Values[ODE TfR2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure 6" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="TfR1 binding" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Iron Metabolism,Vector=Compartments[intercell],Vector=Metabolites[2(Tf-Fe)-TfR1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="LiverPaperModel20Feb2013Annotations.xml">
    <SBMLMap SBMLid="compartment_1" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="compartment_3" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="function_1" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="function_10" COPASIkey="Function_8"/>
    <SBMLMap SBMLid="function_11" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="function_12" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="function_3" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="function_4" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="function_5" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="function_6" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="function_7" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="function_8" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="function_9" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="reaction_1" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="reaction_10" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="reaction_11" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="reaction_12" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="reaction_13" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="reaction_14" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="reaction_15" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="reaction_16" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="reaction_17" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="reaction_18" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="reaction_19" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="reaction_2" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="reaction_20" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="reaction_21" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="reaction_22" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="reaction_23" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="reaction_24" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="reaction_25" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="reaction_26" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="reaction_27" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="reaction_28" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="reaction_29" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="reaction_3" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="reaction_30" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="reaction_31" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="reaction_32" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="reaction_33" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="reaction_34" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="reaction_35" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="reaction_36" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="reaction_4" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="reaction_44" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="reaction_45" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="reaction_46" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="reaction_47" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="reaction_48" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="reaction_49" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="reaction_5" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="reaction_6" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="reaction_67" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="reaction_7" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="reaction_73" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="reaction_8" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="reaction_9" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="species_1" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="species_10" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="species_11" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="species_12" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="species_15" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="species_16" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="species_17" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="species_18" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="species_19" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="species_2" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="species_24" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="species_25" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="species_26" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="species_3" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="species_4" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="species_43" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="species_5" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="species_6" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="species_7" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="species_8" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="species_9" COPASIkey="Metabolite_29"/>
  </SBMLReference>
</COPASI>
