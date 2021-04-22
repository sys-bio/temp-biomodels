<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.27 (Build 217) (http://www.copasi.org) at 2020-03-24T18:04:45Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="27" versionDevel="217" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Rate Law for reaction for Inactivation of Va" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-22T19:30:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        APC*Factor_Va/(Factor_Va+1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_375" name="APC" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_374" name="Factor_Va" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Rate Law for reaction for generation of Xa_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_50">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T16:33:18Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1a*gamma1a*exp(-gamma1a*"Dunster2016 - Nondimensional Coagulation Model")
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_342" name="&quot;Dunster2016 - Nondimensional Coagulation Model&quot;" order="0" role="time"/>
        <ParameterDescription key="FunctionParameter_324" name="gamma1a" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="k1a" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Rate law reaction for generation of Va_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_56">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T16:33:18Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Thrombin__IIa*Factor_V/(Factor_V+k2am*(1+Fibrinogen))+k2b*Factor_Xa*Factor_V/(Factor_V+1+Prothrombin__II)+k3b/q3a*Prothrombinase__Va_Xa-Factor_Xa*Factor_Va
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_328" name="Factor_V" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_320" name="Factor_Va" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_318" name="Factor_Xa" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_334" name="Fibrinogen" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_347" name="Prothrombin__II" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_348" name="Prothrombinase__Va_Xa" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_349" name="Thrombin__IIa" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_350" name="k2am" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="k2b" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_352" name="k3b" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_264" name="q3a" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Rate Law for reaction for formaation of prothrombinase_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_58">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T16:33:18Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3a*Factor_Xa*Factor_Va-k3c*k3a*APC*Prothrombinase__Va_Xa/(Prothrombinase__Va_Xa+1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_344" name="APC" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_367" name="Factor_Va" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_372" name="Factor_Xa" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_373" name="Prothrombinase__Va_Xa" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_250" name="k3a" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="k3c" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Rate Law for reaction for Inactivation of prothrombinase_1_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_59">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T16:33:18Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3b*Prothrombinase__Va_Xa-q3a*Factor_Xa*Factor_Va
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_337" name="Factor_Va" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_377" name="Factor_Xa" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_378" name="Prothrombinase__Va_Xa" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_379" name="k3b" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_380" name="q3a" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Rate Law for reaction for Inactivation of prothrombinase_2_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_60">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T16:33:18Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3c*q3a*APC*Prothrombinase__Va_Xa/(Prothrombinase__Va_Xa+1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_357" name="APC" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_386" name="Prothrombinase__Va_Xa" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_387" name="k3c" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="q3a" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Rate Law for reaction for Generation of thrombin_1_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_61">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T16:33:18Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        q4a*Xa_L*Prothrombin__II/(Factor_V+1+Prothrombin__II)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_393" name="Factor_V" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_394" name="Prothrombin__II" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_395" name="Xa_L" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_396" name="q4a" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Rate Law for reaction for production of V_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_62">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T16:33:18Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k2a*Thrombin__IIa*Factor_V/(Factor_V+k2a*k2am*(1+Fibrinogen))+k2a*k2b*Factor_Xa*Factor_V/(Factor_V+1+Prothrombinase__Va_Xa)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_411" name="Factor_V" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_412" name="Factor_Xa" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_413" name="Fibrinogen" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_414" name="Prothrombinase__Va_Xa" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_415" name="Thrombin__IIa" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_416" name="k2a" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_417" name="k2am" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_418" name="k2b" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Rate Law for reaction for thrombin_2_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_63">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T16:33:18Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Thrombin__IIa
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_406" name="Thrombin__IIa" order="0" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Rate Law for reaction for thrombin_1_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_64">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T16:33:18Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        q4a*k4b*Va_Xa_L*Prothrombin__II/(q4a*(Prothrombin__II+k4bm))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_405" name="Prothrombin__II" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_427" name="Va_Xa_L" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_428" name="k4b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_429" name="k4bm" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_430" name="q4a" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Rate Law for reaction for prothrombin_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_65">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T16:33:18Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k4b*Va_Xa_L*Prothrombin__II/(Prothrombin__II+k4bm)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_407" name="Prothrombin__II" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_436" name="Va_Xa_L" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_437" name="k4b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_438" name="k4bm" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Rate Law for reaction for inactive Xa (Xi)_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_66">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T16:33:18Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1b*Factor_Xa+k2a*k3b/q3a*Prothrombinase__Va_Xa
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_445" name="Factor_Xa" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_446" name="Prothrombinase__Va_Xa" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_447" name="k1b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_448" name="k2a" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_449" name="k3b" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_450" name="q3a" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Dunster2016 - Nondimensional Coagulation Model" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/mamo/MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <bqmodel:isDerivedFrom>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/1794746"/>
      </rdf:Bag>
    </bqmodel:isDerivedFrom>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/doi/10.1093/imamat/hxw007"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T13:00:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>McDermott</vCard:Family>
                <vCard:Given>William</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Nottingham</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
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
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>ahmad.azd@hotmail.com</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Zyoud</vCard:Family>
                <vCard:Given>Ahmad</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T13:05:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is rdf:resource="urn:miriam:biomodels.db:MODEL1808140001"/>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0007596"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bto/BTO:0000089"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      We undertake a mathematical investigation of a model for the generation of thrombin, an enzyme central to haemostatic blood coagulation, as well as to thrombotic disorders, that is the end product of a complicated protein cascade with multiple feedbacks that ensures its production in the right place at the right time. In a laboratory setting, its central role is reflected in thrombin evolution over time being used as a measure of the ability of a patient's blood to clot. Here, we present a model for the generation of thrombin (based on earlier work) and analyse it using the method of matched asymptotic expansions to derive a sequence of simplified models that characterize the roles of distinct interactions over various timescales. In particular, we are able through the asymptotic analysis to provide simplified models that are an excellent substitute for the full model (capturing the explosive growth and decay of thrombin) and approximations for the key experimental measurements used to describe thrombin's characteristic evolution over time. The asymptotic results are validated against numerical simulations.
    </Comment>
    <ListOfUnsupportedAnnotations>
      <UnsupportedAnnotation name="http://projects.eml.org/bcb/sbml/level2">
<layout:listOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:layout="http://projects.eml.org/bcb/sbml/level2">
  <annotation>
    <render:listOfGlobalRenderInformation xmlns:render="http://projects.eml.org/bcb/sbml/render/level2">
      <render:renderInformation render:id="GlobalRenderInformation_0" render:name="Copasi simple style" render:backgroundColor="#FFFFFFFF">
        <render:listOfColorDefinitions>
          <render:colorDefinition render:id="black" render:value="#000000" />
          <render:colorDefinition render:id="white" render:value="#ffffff" />
          <render:colorDefinition render:id="transparent" render:value="#ffffff00" />
          <render:colorDefinition render:id="EmptySetOutline" render:value="#808080" />
          <render:colorDefinition render:id="EmptySetGradientStart" render:value="#ffffff" />
          <render:colorDefinition render:id="EmptySetGradientEnd" render:value="#d3d3d3" />
          <render:colorDefinition render:id="CompartmentBorder" render:value="#e69600b0" />
          <render:colorDefinition render:id="CloneMarkerColor" render:value="#ffa500" />
          <render:colorDefinition render:id="CurveColor" render:value="#000000a0" />
          <render:colorDefinition render:id="ModulationCurveColor" render:value="#0000a0a0" />
        </render:listOfColorDefinitions>
        <render:listOfGradientDefinitions>
          <render:linearGradient render:id="cloneMarker" render:x1="50%" render:x2="50%">
            <render:stop render:offset="0" render:stop-color="transparent" />
            <render:stop render:offset="0.75" render:stop-color="transparent" />
            <render:stop render:offset="0.76" render:stop-color="CloneMarkerColor" />
            <render:stop render:offset="1" render:stop-color="CloneMarkerColor" />
          </render:linearGradient>
          <render:linearGradient render:id="EmptySetGradient">
            <render:stop render:offset="0" render:stop-color="EmptySetGradientStart" />
            <render:stop render:offset="100%" render:stop-color="EmptySetGradientEnd" />
          </render:linearGradient>
        </render:listOfGradientDefinitions>
        <render:listOfLineEndings>
          <render:lineEnding render:id="ActivationHead">
            <layout:boundingBox layout:id="bb">
              <layout:position layout:x="-12" layout:y="-6" />
              <layout:dimensions layout:width="12" layout:height="12" />
            </layout:boundingBox>
            <render:g render:stroke="CurveColor" render:stroke-width="1" render:fill="white" render:font-weight="normal" render:font-style="normal" render:text-anchor="start" render:vtext-anchor="top">
              <render:ellipse render:stroke="black" render:stroke-width="1" render:cx="50%" render:cy="50%" render:rx="50%" />
            </render:g>
          </render:lineEnding>
          <render:lineEnding render:id="TransitionHead">
            <layout:boundingBox layout:id="bb">
              <layout:position layout:x="-8" layout:y="-6" />
              <layout:dimensions layout:width="12" layout:height="12" />
            </layout:boundingBox>
            <render:g render:stroke="CurveColor" render:stroke-width="0.001" render:fill="CurveColor" render:font-weight="normal" render:font-style="normal" render:text-anchor="start" render:vtext-anchor="top">
              <render:polygon render:fill="CurveColor">
                <render:listOfElements>
                  <render:element xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="RenderPoint" render:x="0" render:y="0" />
                  <render:element xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="RenderPoint" render:x="100%" render:y="50%" />
                  <render:element xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="RenderPoint" render:x="0" render:y="100%" />
                  <render:element xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="RenderPoint" render:x="33%" render:y="50%" />
                  <render:element xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="RenderPoint" render:x="0" render:y="0" />
                </render:listOfElements>
              </render:polygon>
            </render:g>
          </render:lineEnding>
          <render:lineEnding render:id="ModulationHead">
            <layout:boundingBox layout:id="bb">
              <layout:position layout:x="-5" layout:y="-5" />
              <layout:dimensions layout:width="10" layout:height="10" />
            </layout:boundingBox>
            <render:g render:stroke="ModulationCurveColor" render:stroke-width="1" render:fill="ModulationCurveColor" render:font-weight="normal" render:font-style="normal" render:text-anchor="start" render:vtext-anchor="top">
              <render:ellipse render:cx="50%" render:cy="50%" render:rx="45%" />
            </render:g>
          </render:lineEnding>
          <render:lineEnding render:id="InhibitionHead">
            <layout:boundingBox layout:id="bb">
              <layout:position layout:x="-0.5" layout:y="-4" />
              <layout:dimensions layout:width="0.6" layout:height="8" />
            </layout:boundingBox>
            <render:g render:stroke="black" render:stroke-width="2" render:fill="black" render:font-weight="normal" render:font-style="normal" render:text-anchor="start" render:vtext-anchor="top">
              <render:polygon>
                <render:listOfElements>
                  <render:element xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="RenderPoint" render:x="0" render:y="0" />
                  <render:element xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="RenderPoint" render:x="0.3" render:y="0" />
                  <render:element xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="RenderPoint" render:x="0.3" render:y="8" />
                  <render:element xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="RenderPoint" render:x="0" render:y="8" />
                </render:listOfElements>
              </render:polygon>
            </render:g>
          </render:lineEnding>
        </render:listOfLineEndings>
        <render:listOfStyles>
          <render:style render:roleList="invisible">
            <render:g render:stroke="#ffffff00" render:stroke-width="0" render:fill="#ffffff00" render:fill-rule="nonzero" render:font-family="sans-serif" render:font-weight="normal" render:font-style="normal" render:text-anchor="start" render:vtext-anchor="top" render:font-size="0" />
          </render:style>
          <render:style render:roleList="defaultText" render:typeList="TEXTGLYPH">
            <render:g render:stroke="black" render:stroke-width="1" render:fill-rule="nonzero" render:font-family="Verdana" render:font-weight="normal" render:font-style="normal" render:text-anchor="middle" render:vtext-anchor="middle" render:font-size="12" />
          </render:style>
          <render:style render:roleList="sidesubstrate substrate" render:typeList="REACTIONGLYPH">
            <render:g render:stroke="CurveColor" render:stroke-width="3" render:fill-rule="nonzero" render:font-family="sans-serif" render:font-weight="normal" render:font-style="normal" render:text-anchor="start" render:vtext-anchor="top" render:font-size="0" />
          </render:style>
          <render:style render:roleList="SBO-0000169 inhibition inhibitor">
            <render:g render:stroke="CurveColor" render:stroke-width="3" render:fill-rule="nonzero" render:endHead="InhibitionHead" render:font-family="sans-serif" render:font-weight="normal" render:font-style="normal" render:text-anchor="start" render:vtext-anchor="top" render:font-size="0" />
          </render:style>
          <render:style render:roleList="SBO-0000168 modifier">
            <render:g render:stroke="ModulationCurveColor" render:stroke-width="3" render:fill="white" render:fill-rule="nonzero" render:endHead="ModulationHead" render:font-family="sans-serif" render:font-weight="normal" render:font-style="normal" render:text-anchor="start" render:vtext-anchor="top" render:font-size="0" />
          </render:style>
          <render:style render:roleList="SBO-0000172 activator catalysis">
            <render:g render:stroke="CurveColor" render:stroke-width="3" render:fill="white" render:fill-rule="nonzero" render:endHead="ActivationHead" render:font-family="sans-serif" render:font-weight="normal" render:font-style="normal" render:text-anchor="start" render:vtext-anchor="top" render:font-size="0" />
          </render:style>
          <render:style render:roleList="product sideproduct" render:typeList="product sideproduct">
            <render:g render:stroke="CurveColor" render:stroke-width="3" render:fill-rule="nonzero" render:endHead="TransitionHead" render:font-family="sans-serif" render:font-weight="normal" render:font-style="normal" render:text-anchor="start" render:vtext-anchor="top" render:font-size="0" />
          </render:style>
          <render:style render:roleList="NO-SBO SBO-0000285" render:typeList="SPECIESGLYPH">
            <render:g render:stroke-width="0" render:fill="#a0e0a030" render:fill-rule="nonzero" render:font-family="sans-serif" render:font-weight="normal" render:font-style="normal" render:text-anchor="start" render:vtext-anchor="top" render:font-size="0">
              <render:rectangle render:x="0" render:y="0" render:width="100%" render:height="100%" />
            </render:g>
          </render:style>
          <render:style render:roleList="SBO-0000289" render:typeList="COMPARTMENTGLYPH">
            <render:g render:stroke="CompartmentBorder" render:stroke-width="7" render:fill-rule="nonzero" render:font-family="sans-serif" render:font-weight="normal" render:font-style="normal" render:text-anchor="start" render:vtext-anchor="top" render:font-size="0">
              <render:rectangle render:x="0" render:y="0" render:width="100%" render:height="100%" render:rx="20" render:ry="20" />
            </render:g>
          </render:style>
          <render:style render:typeList="ANY">
            <render:g render:stroke="black" render:stroke-width="0" render:fill="#f0707070" render:fill-rule="nonzero" render:font-family="sans-serif" render:font-weight="normal" render:font-style="normal" render:text-anchor="start" render:vtext-anchor="top" render:font-size="0">
              <render:rectangle render:x="0" render:y="0" render:width="100%" render:height="100%" />
            </render:g>
          </render:style>
        </render:listOfStyles>
      </render:renderInformation>
    </render:listOfGlobalRenderInformation>
  </annotation>
  <layout:layout layout:id="layout_0" layout:name="COPASI autolayout">
    <layout:dimensions layout:width="309.114123431759" layout:height="88.5137965151839" />
    <layout:listOfSpeciesGlyphs>
      <layout:speciesGlyph layout:id="layout_glyph_0">
        <layout:boundingBox>
          <layout:position layout:x="1118.96032927254" layout:y="253.260719403537" />
          <layout:dimensions layout:width="36" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_1">
        <layout:boundingBox>
          <layout:position layout:x="586.389873502745" layout:y="0" />
          <layout:dimensions layout:width="132" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_2" layout:species="Thrombin__IIa">
        <layout:boundingBox>
          <layout:position layout:x="478.071851803284" layout:y="577.39818901522" />
          <layout:dimensions layout:width="52" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_3" layout:species="Factor_V">
        <layout:boundingBox>
          <layout:position layout:x="593.798628896076" layout:y="503.178130543869" />
          <layout:dimensions layout:width="28" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_4">
        <layout:boundingBox>
          <layout:position layout:x="0" layout:y="286.861688362573" />
          <layout:dimensions layout:width="84" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_5" layout:species="Factor_Xa">
        <layout:boundingBox>
          <layout:position layout:x="369.757636679264" layout:y="435.189921176034" />
          <layout:dimensions layout:width="36" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_6" layout:species="Factor_Va">
        <layout:boundingBox>
          <layout:position layout:x="451.221436055449" layout:y="378.924881252291" />
          <layout:dimensions layout:width="36" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_7" layout:species="APC">
        <layout:boundingBox>
          <layout:position layout:x="352.435825505649" layout:y="211.21614202856" />
          <layout:dimensions layout:width="52" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_8" layout:species="VInactive">
        <layout:boundingBox>
          <layout:position layout:x="284.126460980423" layout:y="293.866604165356" />
          <layout:dimensions layout:width="148" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_9" layout:species="Xa_L">
        <layout:boundingBox>
          <layout:position layout:x="673.015552469522" layout:y="617.711475474722" />
          <layout:dimensions layout:width="68" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_10" layout:species="Fibrinogen">
        <layout:boundingBox>
          <layout:position layout:x="570.494165995599" layout:y="443.21936569527" />
          <layout:dimensions layout:width="164" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_11" layout:species="Va_Xa_L">
        <layout:boundingBox>
          <layout:position layout:x="553.637818571246" layout:y="687.877960967202" />
          <layout:dimensions layout:width="116" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_12" layout:species="Prothrombin__II">
        <layout:boundingBox>
          <layout:position layout:x="533.50136802864" layout:y="651.181654898142" />
          <layout:dimensions layout:width="36" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_13" layout:species="Protein_C">
        <layout:boundingBox>
          <layout:position layout:x="209.308266207235" layout:y="154.256268786559" />
          <layout:dimensions layout:width="28" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_14">
        <layout:boundingBox>
          <layout:position layout:x="866.631988661983" layout:y="293.873211458053" />
          <layout:dimensions layout:width="148" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_15" layout:species="Fibrin">
        <layout:boundingBox>
          <layout:position layout:x="760.227432408636" layout:y="445.953362341207" />
          <layout:dimensions layout:width="100" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_16" layout:species="Prothrombinase__Va_Xa">
        <layout:boundingBox>
          <layout:position layout:x="467.944626555678" layout:y="353.373275798489" />
          <layout:dimensions layout:width="84" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_17" layout:species="Inactive_Thrombin">
        <layout:boundingBox>
          <layout:position layout:x="258.567026361677" layout:y="631.799382808878" />
          <layout:dimensions layout:width="180" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_18" layout:species="Inactive_protein_C">
        <layout:boundingBox>
          <layout:position layout:x="391.863896598387" layout:y="73.3842332127185" />
          <layout:dimensions layout:width="148" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph layout:id="layout_glyph_19">
        <layout:boundingBox>
          <layout:position layout:x="998.841426111389" layout:y="609.831294385749" />
          <layout:dimensions layout:width="28" layout:height="28" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph xmlns:render="http://projects.eml.org/bcb/sbml/render/level2" layout:id="layout_glyph_20" render:objectRole="invisible">
        <layout:boundingBox>
          <layout:position layout:x="546.775262034898" layout:y="546.721203613157" />
          <layout:dimensions layout:width="1" layout:height="1" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph xmlns:render="http://projects.eml.org/bcb/sbml/render/level2" layout:id="layout_glyph_21" render:objectRole="invisible">
        <layout:boundingBox>
          <layout:position layout:x="606.948547180651" layout:y="228.3311149888" />
          <layout:dimensions layout:width="1" layout:height="1" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph xmlns:render="http://projects.eml.org/bcb/sbml/render/level2" layout:id="layout_glyph_22" render:objectRole="invisible">
        <layout:boundingBox>
          <layout:position layout:x="612.896617871957" layout:y="387.908433550075" />
          <layout:dimensions layout:width="1" layout:height="1" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph xmlns:render="http://projects.eml.org/bcb/sbml/render/level2" layout:id="layout_glyph_23" render:objectRole="invisible">
        <layout:boundingBox>
          <layout:position layout:x="229.043063001866" layout:y="383.419440016363" />
          <layout:dimensions layout:width="1" layout:height="1" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph xmlns:render="http://projects.eml.org/bcb/sbml/render/level2" layout:id="layout_glyph_24" render:objectRole="invisible">
        <layout:boundingBox>
          <layout:position layout:x="248.758660993807" layout:y="543.188023450168" />
          <layout:dimensions layout:width="1" layout:height="1" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph xmlns:render="http://projects.eml.org/bcb/sbml/render/level2" layout:id="layout_glyph_25" render:objectRole="invisible">
        <layout:boundingBox>
          <layout:position layout:x="586.767211761101" layout:y="832.610354155627" />
          <layout:dimensions layout:width="1" layout:height="1" />
        </layout:boundingBox>
      </layout:speciesGlyph>
      <layout:speciesGlyph xmlns:render="http://projects.eml.org/bcb/sbml/render/level2" layout:id="layout_glyph_26" render:objectRole="invisible">
        <layout:boundingBox>
          <layout:position layout:x="426.434006436997" layout:y="740.407061778558" />
          <layout:dimensions layout:width="1" layout:height="1" />
        </layout:boundingBox>
      </layout:speciesGlyph>
    </layout:listOfSpeciesGlyphs>
    <layout:listOfReactionGlyphs>
      <layout:reactionGlyph layout:id="layout_glyph_27" layout:reaction="Reaction_for_Generation_of_Va">
        <layout:curve>
          <layout:listOfCurveSegments>
            <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="LineSegment">
              <layout:start layout:x="513.48222157097" layout:y="495.331583729318" />
              <layout:end layout:x="505.676838973025" layout:y="479.901951493231" />
            </layout:curveSegment>
          </layout:listOfCurveSegments>
        </layout:curve>
        <layout:boundingBox>
          <layout:position layout:x="509.579530271997" layout:y="487.616767611275" />
          <layout:dimensions layout:width="0" layout:height="0" />
        </layout:boundingBox>
        <layout:listOfSpeciesReferenceGlyphs>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_28" layout:speciesGlyph="layout_glyph_20" layout:role="substrate">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="513.48222157097" layout:y="495.331583729318" />
                  <layout:end layout:x="543.355016102733" layout:y="541.721203613157" />
                  <layout:basePoint1 layout:x="521.287604168915" layout:y="510.761215965405" />
                  <layout:basePoint2 layout:x="534.27265578531" layout:y="530.098617848303" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_29" layout:speciesGlyph="layout_glyph_6" layout:role="product">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="505.676838973025" layout:y="479.901951493231" />
                  <layout:end layout:x="476.829680337181" layout:y="411.924881252291" />
                  <layout:basePoint1 layout:x="497.87145637508" layout:y="464.472319257145" />
                  <layout:basePoint2 layout:x="485.399222706644" layout:y="434.341192195696" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_30" layout:speciesGlyph="layout_glyph_2" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="503.41810918681" layout:y="572.39818901522" />
                  <layout:end layout:x="500.656306973429" layout:y="492.130755422943" />
                  <layout:basePoint1 layout:x="502.03720808012" layout:y="532.264472219081" />
                  <layout:basePoint2 layout:x="491.733083674861" layout:y="496.644743234612" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_31" layout:speciesGlyph="layout_glyph_3" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="588.798628896076" layout:y="509.927721028526" />
                  <layout:end layout:x="518.502753570565" layout:y="483.102779799606" />
                  <layout:basePoint1 layout:x="553.650691233321" layout:y="496.515250414066" />
                  <layout:basePoint2 layout:x="527.425976869133" layout:y="478.588791987938" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_32" layout:speciesGlyph="layout_glyph_10" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="565.494165995599" layout:y="474.025345916854" />
                  <layout:end layout:x="518.502753570565" layout:y="483.102779799606" />
                  <layout:basePoint1 layout:x="541.998459783082" layout:y="478.56406285823" />
                  <layout:basePoint2 layout:x="527.425976869133" layout:y="478.588791987938" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_33" layout:speciesGlyph="layout_glyph_5" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="410.757636679264" layout:y="457.937935524702" />
                  <layout:end layout:x="500.656306973429" layout:y="492.130755422943" />
                  <layout:basePoint1 layout:x="455.706971826347" layout:y="475.034345473822" />
                  <layout:basePoint2 layout:x="491.733083674861" layout:y="496.644743234612" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_34" layout:speciesGlyph="layout_glyph_12" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="545.91887083863" layout:y="646.181654898142" />
                  <layout:end layout:x="500.656306973429" layout:y="492.130755422943" />
                  <layout:basePoint1 layout:x="523.28758890603" layout:y="569.156205160542" />
                  <layout:basePoint2 layout:x="491.733083674861" layout:y="496.644743234612" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_35" layout:speciesGlyph="layout_glyph_16" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="511.349665095213" layout:y="386.373275798489" />
                  <layout:end layout:x="518.502753570565" layout:y="483.102779799606" />
                  <layout:basePoint1 layout:x="514.926209332889" layout:y="434.738027799048" />
                  <layout:basePoint2 layout:x="527.425976869133" layout:y="478.588791987938" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
        </layout:listOfSpeciesReferenceGlyphs>
      </layout:reactionGlyph>
      <layout:reactionGlyph layout:id="layout_glyph_36" layout:reaction="Reaction_for_Inactivation_of_prothrombinase_1">
        <layout:curve>
          <layout:listOfCurveSegments>
            <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="LineSegment">
              <layout:start layout:x="557.326318044257" layout:y="301.139301336989" />
              <layout:end layout:x="567.076710106754" layout:y="287.28508525602" />
            </layout:curveSegment>
          </layout:listOfCurveSegments>
        </layout:curve>
        <layout:boundingBox>
          <layout:position layout:x="562.201514075506" layout:y="294.212193296505" />
          <layout:dimensions layout:width="0" layout:height="0" />
        </layout:boundingBox>
        <layout:listOfSpeciesReferenceGlyphs>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_37" layout:speciesGlyph="layout_glyph_16" layout:role="substrate">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="557.326318044257" layout:y="301.139301336989" />
                  <layout:end layout:x="523.594836316121" layout:y="348.373275798489" />
                  <layout:basePoint1 layout:x="547.57592598176" layout:y="314.993517417958" />
                  <layout:basePoint2 layout:x="533.147783133316" layout:y="335.146950628466" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_38" layout:speciesGlyph="layout_glyph_21" layout:role="product">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="567.076710106754" layout:y="287.28508525602" />
                  <layout:end layout:x="603.672339202926" layout:y="234.3311149888" />
                  <layout:basePoint1 layout:x="576.827102169252" layout:y="273.430869175051" />
                  <layout:basePoint2 layout:x="592.687318701713" layout:y="250.417438061683" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
        </layout:listOfSpeciesReferenceGlyphs>
      </layout:reactionGlyph>
      <layout:reactionGlyph layout:id="layout_glyph_39" layout:reaction="Reaction_of_V_Inactivation">
        <layout:curve>
          <layout:listOfCurveSegments>
            <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="LineSegment">
              <layout:start layout:x="554.764852573809" layout:y="461.078282418412" />
              <layout:end layout:x="555.324651471397" layout:y="448.201312719033" />
            </layout:curveSegment>
          </layout:listOfCurveSegments>
        </layout:curve>
        <layout:boundingBox>
          <layout:position layout:x="555.044752022603" layout:y="454.639797568723" />
          <layout:dimensions layout:width="0" layout:height="0" />
        </layout:boundingBox>
        <layout:listOfSpeciesReferenceGlyphs>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_40" layout:speciesGlyph="layout_glyph_3" layout:role="substrate">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="554.764852573809" layout:y="461.078282418412" />
                  <layout:end layout:x="588.798628896076" layout:y="501.854751076712" />
                  <layout:basePoint1 layout:x="554.205053676221" layout:y="473.955252117792" />
                  <layout:basePoint2 layout:x="571.361891561751" layout:y="491.124244022097" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_41" layout:speciesGlyph="layout_glyph_22" layout:role="product">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="555.324651471397" layout:y="448.201312719033" />
                  <layout:end layout:x="607.896617871957" layout:y="392.89509286559" />
                  <layout:basePoint1 layout:x="555.884450368985" layout:y="435.324343019653" />
                  <layout:basePoint2 layout:x="582.030483844868" layout:y="410.890475517777" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_42" layout:speciesGlyph="layout_glyph_2" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="509.747549803566" layout:y="572.39818901522" />
                  <layout:end layout:x="545.054188104254" layout:y="454.20547902963" />
                  <layout:basePoint1 layout:x="527.40086895391" layout:y="513.301834022425" />
                  <layout:basePoint2 layout:x="535.063624185906" layout:y="453.771160490537" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_43" layout:speciesGlyph="layout_glyph_10" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="565.494165995599" layout:y="455.085371091042" />
                  <layout:end layout:x="565.035315940951" layout:y="455.074116107815" />
                  <layout:basePoint1 layout:x="565.264740968275" layout:y="455.079743599429" />
                  <layout:basePoint2 layout:x="575.025879859299" layout:y="455.508434646908" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_44" layout:speciesGlyph="layout_glyph_5" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="410.757636679264" layout:y="449.923299178206" />
                  <layout:end layout:x="545.054188104254" layout:y="454.20547902963" />
                  <layout:basePoint1 layout:x="477.905912391759" layout:y="452.064389103918" />
                  <layout:basePoint2 layout:x="535.063624185906" layout:y="453.771160490537" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_45" layout:speciesGlyph="layout_glyph_16" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="517.627049027986" layout:y="386.373275798489" />
                  <layout:end layout:x="545.054188104254" layout:y="454.20547902963" />
                  <layout:basePoint1 layout:x="531.34061856612" layout:y="420.28937741406" />
                  <layout:basePoint2 layout:x="535.063624185906" layout:y="453.771160490537" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
        </layout:listOfSpeciesReferenceGlyphs>
      </layout:reactionGlyph>
      <layout:reactionGlyph layout:id="layout_glyph_46" layout:reaction="Reaction_for_Generation_of_Xa">
        <layout:curve>
          <layout:listOfCurveSegments>
            <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="LineSegment">
              <layout:start layout:x="295.246579670664" layout:y="415.55994274325" />
              <layout:end layout:x="311.068037038404" layout:y="422.086990859218" />
            </layout:curveSegment>
          </layout:listOfCurveSegments>
        </layout:curve>
        <layout:boundingBox>
          <layout:position layout:x="303.157308354534" layout:y="418.823466801234" />
          <layout:dimensions layout:width="0" layout:height="0" />
        </layout:boundingBox>
        <layout:listOfSpeciesReferenceGlyphs>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_47" layout:speciesGlyph="layout_glyph_23" layout:role="substrate">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="295.246579670664" layout:y="415.55994274325" />
                  <layout:end layout:x="235.043063001866" layout:y="386.688451606811" />
                  <layout:basePoint1 layout:x="279.425122302924" layout:y="409.032894627283" />
                  <layout:basePoint2 layout:x="253.27872831046" layout:y="396.228911088055" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_48" layout:speciesGlyph="layout_glyph_5" layout:role="product">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="311.068037038404" layout:y="422.086990859218" />
                  <layout:end layout:x="364.757636679264" layout:y="441.414995361869" />
                  <layout:basePoint1 layout:x="326.889494406144" layout:y="428.614038975185" />
                  <layout:basePoint2 layout:x="349.778929884639" layout:y="436.646279197519" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
        </layout:listOfSpeciesReferenceGlyphs>
      </layout:reactionGlyph>
      <layout:reactionGlyph layout:id="layout_glyph_49" layout:reaction="Reaction_for_Inactivation_of_Xa">
        <layout:curve>
          <layout:listOfCurveSegments>
            <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="LineSegment">
              <layout:start layout:x="329.079731172684" layout:y="503.445889477462" />
              <layout:end layout:x="315.229833604139" layout:y="512.895699704876" />
            </layout:curveSegment>
          </layout:listOfCurveSegments>
        </layout:curve>
        <layout:boundingBox>
          <layout:position layout:x="322.154782388412" layout:y="508.170794591169" />
          <layout:dimensions layout:width="0" layout:height="0" />
        </layout:boundingBox>
        <layout:listOfSpeciesReferenceGlyphs>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_50" layout:speciesGlyph="layout_glyph_5" layout:role="substrate">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="329.079731172684" layout:y="503.445889477462" />
                  <layout:end layout:x="368.748371269459" layout:y="468.189921176034" />
                  <layout:basePoint1 layout:x="342.92962874123" layout:y="493.996079250049" />
                  <layout:basePoint2 layout:x="359.301474397481" layout:y="478.730547656188" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_51" layout:speciesGlyph="layout_glyph_24" layout:role="product">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="315.229833604139" layout:y="512.895699704876" />
                  <layout:end layout:x="254.758660993807" layout:y="541.435894655271" />
                  <layout:basePoint1 layout:x="301.379936035593" layout:y="522.345509932289" />
                  <layout:basePoint2 layout:x="274.606824122564" layout:y="534.253154850633" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
        </layout:listOfSpeciesReferenceGlyphs>
      </layout:reactionGlyph>
      <layout:reactionGlyph layout:id="layout_glyph_52" layout:reaction="reaction_for_Generation_of__Fibrin">
        <layout:curve>
          <layout:listOfCurveSegments>
            <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="LineSegment">
              <layout:start layout:x="726.604115904287" layout:y="439.580487283249" />
              <layout:end layout:x="742.37744254559" layout:y="439.853886947843" />
            </layout:curveSegment>
          </layout:listOfCurveSegments>
        </layout:curve>
        <layout:boundingBox>
          <layout:position layout:x="734.490779224939" layout:y="439.717187115546" />
          <layout:dimensions layout:width="0" layout:height="0" />
        </layout:boundingBox>
        <layout:listOfSpeciesReferenceGlyphs>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_53" layout:speciesGlyph="layout_glyph_10" layout:role="substrate">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="726.604115904287" layout:y="439.580487283249" />
                  <layout:end layout:x="714.373276923838" layout:y="438.21936569527" />
                  <layout:basePoint1 layout:x="710.830789262983" layout:y="439.307087618655" />
                  <layout:basePoint2 layout:x="708.658701433085" layout:y="438.694876740814" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_54" layout:speciesGlyph="layout_glyph_15" layout:role="product">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="742.37744254559" layout:y="439.853886947843" />
                  <layout:end layout:x="760.320601891629" layout:y="440.953362341207" />
                  <layout:basePoint1 layout:x="758.150769186894" layout:y="440.127286612436" />
                  <layout:basePoint2 layout:x="763.179017199588" layout:y="440.60867439297" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
        </layout:listOfSpeciesReferenceGlyphs>
      </layout:reactionGlyph>
      <layout:reactionGlyph layout:id="layout_glyph_55" layout:reaction="reaction_for_Generation_of_protein_C">
        <layout:curve>
          <layout:listOfCurveSegments>
            <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="LineSegment">
              <layout:start layout:x="290.29067478307" layout:y="192.677024656637" />
              <layout:end layout:x="305.803430712912" layout:y="198.373011980837" />
            </layout:curveSegment>
          </layout:listOfCurveSegments>
        </layout:curve>
        <layout:boundingBox>
          <layout:position layout:x="298.047052747991" layout:y="195.525018318737" />
          <layout:dimensions layout:width="0" layout:height="0" />
        </layout:boundingBox>
        <layout:listOfSpeciesReferenceGlyphs>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_56" layout:speciesGlyph="layout_glyph_13" layout:role="substrate">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="290.29067478307" layout:y="192.677024656637" />
                  <layout:end layout:x="242.308266207235" layout:y="175.168508991844" />
                  <layout:basePoint1 layout:x="274.777918853229" layout:y="186.981037332436" />
                  <layout:basePoint2 layout:x="254.664903547772" layout:y="179.65077633109" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_57" layout:speciesGlyph="layout_glyph_7" layout:role="product">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="305.803430712912" layout:y="198.373011980837" />
                  <layout:end layout:x="347.435825505649" layout:y="213.739153772336" />
                  <layout:basePoint1 layout:x="321.316186642753" layout:y="204.068999305037" />
                  <layout:basePoint2 layout:x="338.254195056661" layout:y="210.328073369736" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
        </layout:listOfSpeciesReferenceGlyphs>
      </layout:reactionGlyph>
      <layout:reactionGlyph layout:id="layout_glyph_58" layout:reaction="reaction_for_Generation_of_thrombin">
        <layout:curve>
          <layout:listOfCurveSegments>
            <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="LineSegment">
              <layout:start layout:x="598.581500491716" layout:y="612.566660352607" />
              <layout:end layout:x="593.83854886918" layout:y="605.188313764315" />
            </layout:curveSegment>
          </layout:listOfCurveSegments>
        </layout:curve>
        <layout:boundingBox>
          <layout:position layout:x="596.210024680448" layout:y="608.877487058461" />
          <layout:dimensions layout:width="0" layout:height="0" />
        </layout:boundingBox>
        <layout:listOfSpeciesReferenceGlyphs>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_59" layout:speciesGlyph="layout_glyph_12" layout:role="substrate">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="598.581500491716" layout:y="612.566660352607" />
                  <layout:end layout:x="573.267759706408" layout:y="646.181654898142" />
                  <layout:basePoint1 layout:x="603.324452114251" layout:y="619.9450069409" />
                  <layout:basePoint2 layout:x="589.481843815963" layout:y="634.907917566594" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_60" layout:speciesGlyph="layout_glyph_2" layout:role="product">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="593.83854886918" layout:y="605.188313764315" />
                  <layout:end layout:x="535.071851803284" layout:y="593.735949154442" />
                  <layout:basePoint1 layout:x="589.095597246645" layout:y="597.809967176023" />
                  <layout:basePoint2 layout:x="560.89798661933" layout:y="593.92837151816" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_61" layout:speciesGlyph="layout_glyph_9" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="668.015552469522" layout:y="620.954822216133" />
                  <layout:end layout:x="604.621950065766" layout:y="603.470129911773" />
                  <layout:basePoint1 layout:x="636.318751267644" layout:y="612.212476063953" />
                  <layout:basePoint2 layout:x="613.033875451084" layout:y="598.062772765085" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_62" layout:speciesGlyph="layout_glyph_3" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="607.099179373316" layout:y="536.178130543869" />
                  <layout:end layout:x="604.621950065766" layout:y="603.470129911773" />
                  <layout:basePoint1 layout:x="605.860564719541" layout:y="569.824130227821" />
                  <layout:basePoint2 layout:x="613.033875451084" layout:y="598.062772765085" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_63" layout:speciesGlyph="layout_glyph_11" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="606.466696878241" layout:y="682.877960967202" />
                  <layout:end layout:x="587.79809929513" layout:y="614.28484420515" />
                  <layout:basePoint1 layout:x="597.132398086685" layout:y="648.581402586176" />
                  <layout:basePoint2 layout:x="579.386173909812" layout:y="619.692201351838" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_64" layout:speciesGlyph="layout_glyph_2" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="535.071851803284" layout:y="599.872070649016" />
                  <layout:end layout:x="587.79809929513" layout:y="614.28484420515" />
                  <layout:basePoint1 layout:x="561.434975549207" layout:y="607.078457427083" />
                  <layout:basePoint2 layout:x="579.386173909812" layout:y="619.692201351838" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
        </layout:listOfSpeciesReferenceGlyphs>
      </layout:reactionGlyph>
      <layout:reactionGlyph layout:id="layout_glyph_65" layout:reaction="Reaction_for_Inactivation_of_Va">
        <layout:curve>
          <layout:listOfCurveSegments>
            <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="LineSegment">
              <layout:start layout:x="443.627314712596" layout:y="305.372217845603" />
              <layout:end layout:x="432.517817205093" layout:y="296.86639013691" />
            </layout:curveSegment>
          </layout:listOfCurveSegments>
        </layout:curve>
        <layout:boundingBox>
          <layout:position layout:x="438.072565958844" layout:y="301.119303991257" />
          <layout:dimensions layout:width="0" layout:height="0" />
        </layout:boundingBox>
        <layout:listOfSpeciesReferenceGlyphs>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_66" layout:speciesGlyph="layout_glyph_6" layout:role="substrate">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="443.627314712596" layout:y="305.372217845603" />
                  <layout:end layout:x="465.739856426846" layout:y="373.924881252291" />
                  <layout:basePoint1 layout:x="454.736812220098" layout:y="313.878045554297" />
                  <layout:basePoint2 layout:x="463.015708700348" layout:y="346.027920330468" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_67" layout:speciesGlyph="layout_glyph_8" layout:role="product">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="432.517817205093" layout:y="296.86639013691" />
                  <layout:end layout:x="419.766609803487" layout:y="288.866604165356" />
                  <layout:basePoint1 layout:x="421.40831969759" layout:y="288.360562428216" />
                  <layout:basePoint2 layout:x="417.810090373663" layout:y="286.487126369613" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_68" layout:speciesGlyph="layout_glyph_7" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="396.807577383964" layout:y="244.21614202856" />
                  <layout:end layout:x="444.151724460743" layout:y="293.179289387442" />
                  <layout:basePoint1 layout:x="420.479650922354" layout:y="268.697715708001" />
                  <layout:basePoint2 layout:x="450.230882962642" layout:y="285.239274783627" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
        </layout:listOfSpeciesReferenceGlyphs>
      </layout:reactionGlyph>
      <layout:reactionGlyph layout:id="layout_glyph_69" layout:reaction="Reaction_for_Formation_of_Prothrombinase">
        <layout:curve>
          <layout:listOfCurveSegments>
            <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="LineSegment">
              <layout:start layout:x="453.014601664951" layout:y="450.658405498741" />
              <layout:end layout:x="465.233300652593" layout:y="442.476740960986" />
            </layout:curveSegment>
          </layout:listOfCurveSegments>
        </layout:curve>
        <layout:boundingBox>
          <layout:position layout:x="459.123951158772" layout:y="446.567573229863" />
          <layout:dimensions layout:width="0" layout:height="0" />
        </layout:boundingBox>
        <layout:listOfSpeciesReferenceGlyphs>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_70" layout:speciesGlyph="layout_glyph_5" layout:role="substrate">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="453.014601664951" layout:y="450.658405498741" />
                  <layout:end layout:x="410.757636679264" layout:y="453.374700214602" />
                  <layout:basePoint1 layout:x="440.79590267731" layout:y="458.840070036495" />
                  <layout:basePoint2 layout:x="422.722094931377" layout:y="458.152801259987" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_71" layout:speciesGlyph="layout_glyph_16" layout:role="product">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="465.233300652593" layout:y="442.476740960986" />
                  <layout:end layout:x="500.719532406535" layout:y="386.373275798489" />
                  <layout:basePoint1 layout:x="477.451999640234" layout:y="434.295076423232" />
                  <layout:basePoint2 layout:x="492.140440770295" layout:y="408.288759976422" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_72" layout:speciesGlyph="layout_glyph_6" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="462.657502179092" layout:y="411.924881252291" />
                  <layout:end layout:x="453.560075336271" layout:y="438.258344274552" />
                  <layout:basePoint1 layout:x="458.108788757682" layout:y="425.091612763422" />
                  <layout:basePoint2 layout:x="447.99619951377" layout:y="429.94911531924" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
        </layout:listOfSpeciesReferenceGlyphs>
      </layout:reactionGlyph>
      <layout:reactionGlyph layout:id="layout_glyph_73" layout:reaction="reaction_for_Inactivation_of_prothrombinase_2">
        <layout:curve>
          <layout:listOfCurveSegments>
            <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="LineSegment">
              <layout:start layout:x="419.394576523357" layout:y="359.008304928204" />
              <layout:end layout:x="405.694318750774" layout:y="360.123803615425" />
            </layout:curveSegment>
          </layout:listOfCurveSegments>
        </layout:curve>
        <layout:boundingBox>
          <layout:position layout:x="412.544447637065" layout:y="359.566054271814" />
          <layout:dimensions layout:width="0" layout:height="0" />
        </layout:boundingBox>
        <layout:listOfSpeciesReferenceGlyphs>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_74" layout:speciesGlyph="layout_glyph_16" layout:role="substrate">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="419.394576523357" layout:y="359.008304928204" />
                  <layout:end layout:x="462.944626555678" layout:y="361.575185054187" />
                  <layout:basePoint1 layout:x="433.09483429594" layout:y="357.892806240984" />
                  <layout:basePoint2 layout:x="451.444794868955" layout:y="359.45512097578" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_75" layout:speciesGlyph="layout_glyph_8" layout:role="product">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="405.694318750774" layout:y="360.123803615425" />
                  <layout:end layout:x="370.182894745536" layout:y="326.866604165356" />
                  <layout:basePoint1 layout:x="391.99406097819" layout:y="361.239302302645" />
                  <layout:basePoint2 layout:x="377.663413418717" layout:y="344.331827905806" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_76" layout:speciesGlyph="layout_glyph_5" layout:role="product">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="405.694318750774" layout:y="360.123803615425" />
                  <layout:end layout:x="388.672832759868" layout:y="430.189921176034" />
                  <layout:basePoint1 layout:x="391.99406097819" layout:y="361.239302302645" />
                  <layout:basePoint2 layout:x="386.908382425883" layout:y="395.993486411145" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_77" layout:speciesGlyph="layout_glyph_7" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="383.522093305194" layout:y="244.21614202856" />
                  <layout:end layout:x="411.732915918904" layout:y="349.599037854129" />
                  <layout:basePoint1 layout:x="397.627504612049" layout:y="296.907589941344" />
                  <layout:basePoint2 layout:x="410.921384200743" layout:y="339.632021436443" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
        </layout:listOfSpeciesReferenceGlyphs>
      </layout:reactionGlyph>
      <layout:reactionGlyph layout:id="layout_glyph_78" layout:reaction="Reaction_for_Inactivation_of_protein_C">
        <layout:curve>
          <layout:listOfCurveSegments>
            <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="LineSegment">
              <layout:start layout:x="417.636022691736" layout:y="159.70996302969" />
              <layout:end layout:x="426.37882980101" layout:y="145.926772148106" />
            </layout:curveSegment>
          </layout:listOfCurveSegments>
        </layout:curve>
        <layout:boundingBox>
          <layout:position layout:x="422.007426246373" layout:y="152.818367588898" />
          <layout:dimensions layout:width="0" layout:height="0" />
        </layout:boundingBox>
        <layout:listOfSpeciesReferenceGlyphs>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_79" layout:speciesGlyph="layout_glyph_7" layout:role="substrate">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="417.636022691736" layout:y="159.70996302969" />
                  <layout:end layout:x="389.624088839299" layout:y="206.21614202856" />
                  <layout:basePoint1 layout:x="408.893215582462" layout:y="173.493153911274" />
                  <layout:basePoint2 layout:x="397.072950433562" layout:y="193.300445690313" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_80" layout:speciesGlyph="layout_glyph_18" layout:role="product">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="426.37882980101" layout:y="145.926772148106" />
                  <layout:end layout:x="452.814043115896" layout:y="106.384233212719" />
                  <layout:basePoint1 layout:x="435.121636910283" layout:y="132.143581266522" />
                  <layout:basePoint2 layout:x="446.153541790408" layout:y="115.818109519224" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
        </layout:listOfSpeciesReferenceGlyphs>
      </layout:reactionGlyph>
      <layout:reactionGlyph layout:id="layout_glyph_81" layout:reaction="Reaction_for_Prothrombin_inactivation">
        <layout:curve>
          <layout:listOfCurveSegments>
            <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="LineSegment">
              <layout:start layout:x="557.384005449552" layout:y="748.630802114832" />
              <layout:end layout:x="560.960589822798" layout:y="765.423672040581" />
            </layout:curveSegment>
          </layout:listOfCurveSegments>
        </layout:curve>
        <layout:boundingBox>
          <layout:position layout:x="559.172297636175" layout:y="757.027237077706" />
          <layout:dimensions layout:width="0" layout:height="0" />
        </layout:boundingBox>
        <layout:listOfSpeciesReferenceGlyphs>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_82" layout:speciesGlyph="layout_glyph_12" layout:role="substrate">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="557.384005449552" layout:y="748.630802114832" />
                  <layout:end layout:x="552.158695585569" layout:y="684.181654898142" />
                  <layout:basePoint1 layout:x="553.807421076306" layout:y="731.837932189083" />
                  <layout:basePoint2 layout:x="552.088912237626" layout:y="703.811576062175" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_83" layout:speciesGlyph="layout_glyph_25" layout:role="product">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="560.960589822798" layout:y="765.423672040581" />
                  <layout:end layout:x="584.810818709961" layout:y="827.610354155627" />
                  <layout:basePoint1 layout:x="564.537174196044" layout:y="782.216541966329" />
                  <layout:basePoint2 layout:x="575.568142546314" layout:y="809.111665542415" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_84" layout:speciesGlyph="layout_glyph_11" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="596.354769506893" layout:y="720.877960967202" />
                  <layout:end layout:x="568.952925971719" layout:y="754.944136177139" />
                  <layout:basePoint1 layout:x="582.653847739306" layout:y="737.91104857217" />
                  <layout:basePoint2 layout:x="578.733554307264" layout:y="752.861035276572" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
        </layout:listOfSpeciesReferenceGlyphs>
      </layout:reactionGlyph>
      <layout:reactionGlyph layout:id="layout_glyph_85" layout:reaction="Reaction_for_Thrombin_Inactivation">
        <layout:curve>
          <layout:listOfCurveSegments>
            <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="LineSegment">
              <layout:start layout:x="481.450626443738" layout:y="688.127644505448" />
              <layout:end layout:x="489.164410980366" layout:y="673.176757229114" />
            </layout:curveSegment>
          </layout:listOfCurveSegments>
        </layout:curve>
        <layout:boundingBox>
          <layout:position layout:x="485.307518712052" layout:y="680.652200867281" />
          <layout:dimensions layout:width="0" layout:height="0" />
        </layout:boundingBox>
        <layout:listOfSpeciesReferenceGlyphs>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_86" layout:speciesGlyph="layout_glyph_26" layout:role="substrate">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="481.450626443738" layout:y="688.127644505448" />
                  <layout:end layout:x="432.434006436997" layout:y="736.461670534791" />
                  <layout:basePoint1 layout:x="473.736841907109" layout:y="703.078531781782" />
                  <layout:basePoint2 layout:x="451.156978037896" layout:y="723.50782297737" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_87" layout:speciesGlyph="layout_glyph_2" layout:role="product">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="489.164410980366" layout:y="673.176757229114" />
                  <layout:end layout:x="502.026599483857" layout:y="610.39818901522" />
                  <layout:basePoint1 layout:x="496.878195516995" layout:y="658.22586995278" />
                  <layout:basePoint2 layout:x="501.380843634583" layout:y="630.574307664917" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_88" layout:speciesGlyph="layout_glyph_11" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="548.637818571246" layout:y="692.951443257893" />
                  <layout:end layout:x="494.194404092989" layout:y="685.237314630983" />
                  <layout:basePoint1 layout:x="521.416111332118" layout:y="689.094378944438" />
                  <layout:basePoint2 layout:x="503.081289473927" layout:y="689.822428394684" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_89" layout:speciesGlyph="layout_glyph_12" layout:role="modifier">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="528.50136802864" layout:y="673.230941445119" />
                  <layout:end layout:x="494.194404092989" layout:y="685.237314630983" />
                  <layout:basePoint1 layout:x="511.347886060815" layout:y="679.234128038051" />
                  <layout:basePoint2 layout:x="503.081289473927" layout:y="689.822428394684" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
        </layout:listOfSpeciesReferenceGlyphs>
      </layout:reactionGlyph>
      <layout:reactionGlyph layout:id="layout_glyph_90" layout:reaction="Reaction_for_Thrombin_Generation">
        <layout:curve>
          <layout:listOfCurveSegments>
            <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="LineSegment">
              <layout:start layout:x="427.088604657464" layout:y="606.166421277309" />
              <layout:end layout:x="411.538122113303" layout:y="611.606540656675" />
            </layout:curveSegment>
          </layout:listOfCurveSegments>
        </layout:curve>
        <layout:boundingBox>
          <layout:position layout:x="419.313363385384" layout:y="608.886480966992" />
          <layout:dimensions layout:width="0" layout:height="0" />
        </layout:boundingBox>
        <layout:listOfSpeciesReferenceGlyphs>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_91" layout:speciesGlyph="layout_glyph_2" layout:role="substrate">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="427.088604657464" layout:y="606.166421277309" />
                  <layout:end layout:x="473.071851803284" layout:y="596.105310715496" />
                  <layout:basePoint1 layout:x="442.639087201625" layout:y="600.726301897943" />
                  <layout:basePoint2 layout:x="461.743090138495" layout:y="597.055776461878" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
          <layout:speciesReferenceGlyph layout:id="layout_glyph_92" layout:speciesGlyph="layout_glyph_17" layout:role="product">
            <layout:curve>
              <layout:listOfCurveSegments>
                <layout:curveSegment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CubicBezier">
                  <layout:start layout:x="411.538122113303" layout:y="611.606540656675" />
                  <layout:end layout:x="379.902898726189" layout:y="626.799382808878" />
                  <layout:basePoint1 layout:x="395.987639569142" layout:y="617.046660036041" />
                  <layout:basePoint2 layout:x="384.057648511626" layout:y="623.283051267301" />
                </layout:curveSegment>
              </layout:listOfCurveSegments>
            </layout:curve>
          </layout:speciesReferenceGlyph>
        </layout:listOfSpeciesReferenceGlyphs>
      </layout:reactionGlyph>
    </layout:listOfReactionGlyphs>
    <layout:listOfTextGlyphs>
      <layout:textGlyph layout:id="layout_glyph_93" layout:text="unset" layout:graphicalObject="layout_glyph_0">
        <layout:boundingBox>
          <layout:position layout:x="1118.96032927254" layout:y="253.260719403537" />
          <layout:dimensions layout:width="32" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_94" layout:text="unset" layout:graphicalObject="layout_glyph_1">
        <layout:boundingBox>
          <layout:position layout:x="586.389873502745" layout:y="0" />
          <layout:dimensions layout:width="128" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_95" layout:originOfText="Thrombin__IIa" layout:graphicalObject="layout_glyph_2">
        <layout:boundingBox>
          <layout:position layout:x="478.071851803284" layout:y="577.39818901522" />
          <layout:dimensions layout:width="48" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_96" layout:originOfText="Factor_V" layout:graphicalObject="layout_glyph_3">
        <layout:boundingBox>
          <layout:position layout:x="593.798628896076" layout:y="503.178130543869" />
          <layout:dimensions layout:width="24" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_97" layout:text="unset" layout:graphicalObject="layout_glyph_4">
        <layout:boundingBox>
          <layout:position layout:x="0" layout:y="286.861688362573" />
          <layout:dimensions layout:width="80" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_98" layout:originOfText="Factor_Xa" layout:graphicalObject="layout_glyph_5">
        <layout:boundingBox>
          <layout:position layout:x="369.757636679264" layout:y="435.189921176034" />
          <layout:dimensions layout:width="32" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_99" layout:originOfText="Factor_Va" layout:graphicalObject="layout_glyph_6">
        <layout:boundingBox>
          <layout:position layout:x="451.221436055449" layout:y="378.924881252291" />
          <layout:dimensions layout:width="32" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_100" layout:originOfText="APC" layout:graphicalObject="layout_glyph_7">
        <layout:boundingBox>
          <layout:position layout:x="352.435825505649" layout:y="211.21614202856" />
          <layout:dimensions layout:width="48" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_101" layout:originOfText="VInactive" layout:graphicalObject="layout_glyph_8">
        <layout:boundingBox>
          <layout:position layout:x="284.126460980423" layout:y="293.866604165356" />
          <layout:dimensions layout:width="144" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_102" layout:originOfText="Xa_L" layout:graphicalObject="layout_glyph_9">
        <layout:boundingBox>
          <layout:position layout:x="673.015552469522" layout:y="617.711475474722" />
          <layout:dimensions layout:width="64" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_103" layout:originOfText="Fibrinogen" layout:graphicalObject="layout_glyph_10">
        <layout:boundingBox>
          <layout:position layout:x="570.494165995599" layout:y="443.21936569527" />
          <layout:dimensions layout:width="160" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_104" layout:originOfText="Va_Xa_L" layout:graphicalObject="layout_glyph_11">
        <layout:boundingBox>
          <layout:position layout:x="553.637818571246" layout:y="687.877960967202" />
          <layout:dimensions layout:width="112" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_105" layout:originOfText="Prothrombin__II" layout:graphicalObject="layout_glyph_12">
        <layout:boundingBox>
          <layout:position layout:x="533.50136802864" layout:y="651.181654898142" />
          <layout:dimensions layout:width="32" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_106" layout:originOfText="Protein_C" layout:graphicalObject="layout_glyph_13">
        <layout:boundingBox>
          <layout:position layout:x="209.308266207235" layout:y="154.256268786559" />
          <layout:dimensions layout:width="24" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_107" layout:text="unset" layout:graphicalObject="layout_glyph_14">
        <layout:boundingBox>
          <layout:position layout:x="866.631988661983" layout:y="293.873211458053" />
          <layout:dimensions layout:width="144" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_108" layout:originOfText="Fibrin" layout:graphicalObject="layout_glyph_15">
        <layout:boundingBox>
          <layout:position layout:x="760.227432408636" layout:y="445.953362341207" />
          <layout:dimensions layout:width="96" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_109" layout:originOfText="Prothrombinase__Va_Xa" layout:graphicalObject="layout_glyph_16">
        <layout:boundingBox>
          <layout:position layout:x="467.944626555678" layout:y="353.373275798489" />
          <layout:dimensions layout:width="80" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_110" layout:originOfText="Inactive_Thrombin" layout:graphicalObject="layout_glyph_17">
        <layout:boundingBox>
          <layout:position layout:x="258.567026361677" layout:y="631.799382808878" />
          <layout:dimensions layout:width="176" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_111" layout:originOfText="Inactive_protein_C" layout:graphicalObject="layout_glyph_18">
        <layout:boundingBox>
          <layout:position layout:x="391.863896598387" layout:y="73.3842332127185" />
          <layout:dimensions layout:width="144" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
      <layout:textGlyph layout:id="layout_glyph_112" layout:text="unset" layout:graphicalObject="layout_glyph_19">
        <layout:boundingBox>
          <layout:position layout:x="998.841426111389" layout:y="609.831294385749" />
          <layout:dimensions layout:width="24" layout:height="24" />
        </layout:boundingBox>
      </layout:textGlyph>
    </layout:listOfTextGlyphs>
    <layout:listOfAdditionalGraphicalObjects>
      <layout:graphicalObject xmlns:render="http://projects.eml.org/bcb/sbml/render/level2" layout:id="layout_glyph_113" render:objectRole="rule">
        <layout:boundingBox>
          <layout:position layout:x="672.076060911563" layout:y="628.696279049565" />
          <layout:dimensions layout:width="10" layout:height="10" />
        </layout:boundingBox>
      </layout:graphicalObject>
      <layout:graphicalObject xmlns:render="http://projects.eml.org/bcb/sbml/render/level2" layout:id="layout_glyph_114" render:objectRole="rule">
        <layout:boundingBox>
          <layout:position layout:x="591.809437602016" layout:y="670.79958401626" />
          <layout:dimensions layout:width="10" layout:height="10" />
        </layout:boundingBox>
      </layout:graphicalObject>
    </layout:listOfAdditionalGraphicalObjects>
  </layout:layout>
</layout:listOfLayouts>
      </UnsupportedAnnotation>
    </ListOfUnsupportedAnnotations>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T13:00:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_16" name="Factor Xa" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T13:20:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="Thrombin (IIa)" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:11:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="Factor V" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:11:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Factor Va" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:11:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="APC" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:15:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="VInactive" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:15:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="Prothrombinase (Va:Xa)" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:16:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Prothrombin (II)" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:21:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="Xa:L" simulationType="assignment" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:21:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.5*(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[kx],Reference=Value>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[Ix],Reference=Value>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Factor Xa],Reference=Concentration>-((&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[kx],Reference=Value>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[Ix],Reference=Value>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Factor Xa],Reference=Concentration>)^2-4*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[Ix],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Factor Xa],Reference=Concentration>)^(1/2))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="Va:Xa:L" simulationType="assignment" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:22:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.5*(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[kb],Reference=Value>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[Ib],Reference=Value>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Prothrombinase (Va:Xa)],Reference=Concentration>-((&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[kb],Reference=Value>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[Ib],Reference=Value>+&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Prothrombinase (Va:Xa)],Reference=Concentration>)^2-4*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[Ib],Reference=Value>*&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Prothrombinase (Va:Xa)],Reference=Concentration>)^(1/2))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="Protein C" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:27:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="Inactive protein C" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:27:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="Fibrin" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:33:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Fibrinogen" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:33:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="Inactive Thrombin" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T08:32:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="Factor Xi" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T11:24:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_22" name="k1a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:36:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="gamma1a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:36:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="k1b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:37:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="k2a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:37:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="k2am" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:37:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="k2b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:37:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="k3a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:37:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="q3a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:37:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="k3b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:37:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="k3c" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:37:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="k4a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:37:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="q4a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:37:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="k4b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:37:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="k4bm" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:38:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="k5a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:38:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="k5b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:38:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="k6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:38:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="kx" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:38:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="kb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:38:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="Ix" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:38:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="Ib" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:38:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="log_time" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-22T22:55:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          log10(&lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Reference=Time>)/log10(10)/(log10(10)/log10(10))
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_16" name="Reaction for Generation of Xa" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T13:00:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5854" name="gamma1a" value="0.77"/>
          <Constant key="Parameter_5201" name="k1a" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Model_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="Reaction for Generation of Va" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T13:01:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5163" name="k2am" value="7.2"/>
          <Constant key="Parameter_5164" name="k2b" value="0.013"/>
          <Constant key="Parameter_5161" name="k3b" value="0.038"/>
          <Constant key="Parameter_5160" name="q3a" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Reaction for Inactivation of Xa" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:10:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5162" name="k1" value="0.19"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="Reaction for Inactivation of Va" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:12:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="Reaction for Formation of Prothrombinase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:15:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5159" name="k3a" value="150"/>
          <Constant key="Parameter_5155" name="k3c" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="Reaction for Inactivation of prothrombinase_1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:16:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5156" name="k3b" value="0.038"/>
          <Constant key="Parameter_5158" name="q3a" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="reaction for Inactivation of prothrombinase_2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:18:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5157" name="k3c" value="1"/>
          <Constant key="Parameter_5154" name="q3a" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="reaction for Generation of thrombin" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:22:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5153" name="q4a" value="0.004"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="reaction for Generation of protein C" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:26:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5197" name="k1" value="0.0011"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="Reaction for Inactivation of protein C" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:27:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5198" name="k1" value="0.27"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="reaction for Generation of  Fibrin" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-20T14:27:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5196" name="k1" value="1500"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="Reaction of V Inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T07:27:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5199" name="k2a" value="2"/>
          <Constant key="Parameter_5202" name="k2am" value="7.2"/>
          <Constant key="Parameter_5167" name="k2b" value="0.013"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="Reaction for Thrombin Generation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T08:31:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="Reaction for Thrombin Inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T08:35:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5173" name="k4b" value="530"/>
          <Constant key="Parameter_5176" name="k4bm" value="3.6"/>
          <Constant key="Parameter_5855" name="q4a" value="0.004"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="Reaction for Prothrombin inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T08:38:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5168" name="k4b" value="530"/>
          <Constant key="Parameter_5852" name="k4bm" value="3.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="Reaction for Inactive Xa production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-23T11:23:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5165" name="k1b" value="0.19"/>
          <Constant key="Parameter_3148" name="k2a" value="2"/>
          <Constant key="Parameter_5787" name="k3b" value="0.038"/>
          <Constant key="Parameter_5772" name="q3a" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T16:42:39Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Factor Xa]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Thrombin (IIa)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Factor V]" value="1.8066422570999999e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Factor Va]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[APC]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[VInactive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Prothrombinase (Va:Xa)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Prothrombin (II)]" value="1.02376394569e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Xa:L]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Va:Xa:L]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Protein C]" value="5.5403695884399999e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Inactive protein C]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Fibrin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Fibrinogen]" value="3.0110704285000002e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Inactive Thrombin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Factor Xi]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k1a]" value="150" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[gamma1a]" value="0.77000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k1b]" value="0.19" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k2a]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k2am]" value="7.2000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k2b]" value="0.012999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k3a]" value="150" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[q3a]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k3b]" value="0.037999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k3c]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k4a]" value="0.12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[q4a]" value="0.0040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k4b]" value="530" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k4bm]" value="3.6000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k5a]" value="0.0011000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k5b]" value="0.27000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k6]" value="1500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[kx]" value="385" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[kb]" value="0.00050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[Ix]" value="7.6900000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[Ib]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time]" value="-INF" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Generation of Xa]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Generation of Xa],ParameterGroup=Parameters,Parameter=gamma1a" value="0.77000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[gamma1a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Generation of Xa],ParameterGroup=Parameters,Parameter=k1a" value="150" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k1a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Generation of Va]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Generation of Va],ParameterGroup=Parameters,Parameter=k2am" value="7.2000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k2am],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Generation of Va],ParameterGroup=Parameters,Parameter=k2b" value="0.012999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k2b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Generation of Va],ParameterGroup=Parameters,Parameter=k3b" value="0.037999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k3b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Generation of Va],ParameterGroup=Parameters,Parameter=q3a" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[q3a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Inactivation of Xa]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Inactivation of Xa],ParameterGroup=Parameters,Parameter=k1" value="0.19" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k1b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Inactivation of Va]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Formation of Prothrombinase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Formation of Prothrombinase],ParameterGroup=Parameters,Parameter=k3a" value="150" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k3a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Formation of Prothrombinase],ParameterGroup=Parameters,Parameter=k3c" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k3c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Inactivation of prothrombinase_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Inactivation of prothrombinase_1],ParameterGroup=Parameters,Parameter=k3b" value="0.037999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k3b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Inactivation of prothrombinase_1],ParameterGroup=Parameters,Parameter=q3a" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[q3a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[reaction for Inactivation of prothrombinase_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[reaction for Inactivation of prothrombinase_2],ParameterGroup=Parameters,Parameter=k3c" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k3c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[reaction for Inactivation of prothrombinase_2],ParameterGroup=Parameters,Parameter=q3a" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[q3a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[reaction for Generation of thrombin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[reaction for Generation of thrombin],ParameterGroup=Parameters,Parameter=q4a" value="0.0040000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[q4a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[reaction for Generation of protein C]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[reaction for Generation of protein C],ParameterGroup=Parameters,Parameter=k1" value="0.0011000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k5a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Inactivation of protein C]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Inactivation of protein C],ParameterGroup=Parameters,Parameter=k1" value="0.27000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k5b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[reaction for Generation of  Fibrin]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[reaction for Generation of  Fibrin],ParameterGroup=Parameters,Parameter=k1" value="1500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction of V Inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction of V Inactivation],ParameterGroup=Parameters,Parameter=k2a" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k2a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction of V Inactivation],ParameterGroup=Parameters,Parameter=k2am" value="7.2000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k2am],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction of V Inactivation],ParameterGroup=Parameters,Parameter=k2b" value="0.012999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k2b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Thrombin Generation]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Thrombin Inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Thrombin Inactivation],ParameterGroup=Parameters,Parameter=k4b" value="530" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k4b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Thrombin Inactivation],ParameterGroup=Parameters,Parameter=k4bm" value="3.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k4bm],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Thrombin Inactivation],ParameterGroup=Parameters,Parameter=q4a" value="0.0040000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[q4a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Prothrombin inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Prothrombin inactivation],ParameterGroup=Parameters,Parameter=k4b" value="530" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k4b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Prothrombin inactivation],ParameterGroup=Parameters,Parameter=k4bm" value="3.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k4bm],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Inactive Xa production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Inactive Xa production],ParameterGroup=Parameters,Parameter=k1b" value="0.19" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k1b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Inactive Xa production],ParameterGroup=Parameters,Parameter=k2a" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k2a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Inactive Xa production],ParameterGroup=Parameters,Parameter=k3b" value="0.037999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[k3b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Reactions[Reaction for Inactive Xa production],ParameterGroup=Parameters,Parameter=q3a" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[q3a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 0 1.02376394569e+22 0 1.8066422570999999e+21 0 0 0 5.5403695884399999e+22 0 3.0110704285000002e+21 0 0 -INF 1 150 0.77000000000000002 0.19 2 7.2000000000000002 0.012999999999999999 150 1 0.037999999999999999 1 0.12 0.0040000000000000001 530 3.6000000000000001 0.0011000000000000001 0.27000000000000002 1500 385 0.00050000000000000001 7.6900000000000004 0.050000000000000003 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_29" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_16" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="1"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="10"/>
        <Parameter name="Duration" type="float" value="1000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0.0001"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_17" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_18" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_19" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_20" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_21" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_29"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_23" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_24" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_25" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_26" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
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
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_27" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_29"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_15" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_10" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_18" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="Figure 4" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[APC]|Values[log_time]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[APC],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Factor V]|Values[log_time]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Factor V],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Factor Va]|Values[log_time]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Factor Va],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Factor Xa]|Values[log_time]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Factor Xa],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Factor Xi]|Values[log_time]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Factor Xi],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Fibrin]|Values[log_time]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Fibrin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Fibrinogen]|Values[log_time]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Fibrinogen],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Inactive Thrombin]|Values[log_time]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Inactive Thrombin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Inactive protein C]|Values[log_time]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Inactive protein C],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Protein C]|Values[log_time]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Protein C],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Prothrombin (II)]|Values[log_time]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Prothrombin (II)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Prothrombinase (Va:Xa)]|Values[log_time]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Prothrombinase (Va:Xa)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Thrombin (IIa)]|Values[log_time]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[Thrombin (IIa)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[VInactive]|Values[log_time]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Values[log_time],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Dunster2016 - Nondimensional Coagulation Model,Vector=Compartments[compartment],Vector=Metabolites[VInactive],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_118" name="COPASI autolayout">
      <Dimensions width="309.11412343175903" height="88.513796515183898"/>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_119" name="layout_glyph_0" metabolite="">
          <BoundingBox>
            <Position x="1118.9603292725401" y="253.260719403537"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_120" name="layout_glyph_1" metabolite="">
          <BoundingBox>
            <Position x="586.38987350274499" y="0"/>
            <Dimensions width="132" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_121" name="layout_glyph_2" metabolite="Metabolite_17">
          <BoundingBox>
            <Position x="478.07185180328401" y="577.39818901522005"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_122" name="layout_glyph_3" metabolite="Metabolite_18">
          <BoundingBox>
            <Position x="593.79862889607602" y="503.17813054386897"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_123" name="layout_glyph_4" metabolite="">
          <BoundingBox>
            <Position x="0" y="286.86168836257298"/>
            <Dimensions width="84" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_124" name="layout_glyph_5" metabolite="Metabolite_16">
          <BoundingBox>
            <Position x="369.75763667926401" y="435.18992117603398"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_125" name="layout_glyph_6" metabolite="Metabolite_19">
          <BoundingBox>
            <Position x="451.22143605544898" y="378.92488125229102"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_126" name="layout_glyph_7" metabolite="Metabolite_20">
          <BoundingBox>
            <Position x="352.43582550564901" y="211.21614202856"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_127" name="layout_glyph_8" metabolite="Metabolite_21">
          <BoundingBox>
            <Position x="284.12646098042302" y="293.86660416535602"/>
            <Dimensions width="148" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_128" name="layout_glyph_9" metabolite="Metabolite_24">
          <BoundingBox>
            <Position x="673.01555246952205" y="617.71147547472196"/>
            <Dimensions width="68" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_129" name="layout_glyph_10" metabolite="Metabolite_29">
          <BoundingBox>
            <Position x="570.49416599559902" y="443.21936569527003"/>
            <Dimensions width="164" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_130" name="layout_glyph_11" metabolite="Metabolite_25">
          <BoundingBox>
            <Position x="553.63781857124604" y="687.87796096720194"/>
            <Dimensions width="116" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_131" name="layout_glyph_12" metabolite="Metabolite_23">
          <BoundingBox>
            <Position x="533.50136802863994" y="651.18165489814203"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_132" name="layout_glyph_13" metabolite="Metabolite_26">
          <BoundingBox>
            <Position x="209.30826620723499" y="154.25626878655899"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_133" name="layout_glyph_14" metabolite="">
          <BoundingBox>
            <Position x="866.63198866198297" y="293.87321145805299"/>
            <Dimensions width="148" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_134" name="layout_glyph_15" metabolite="Metabolite_28">
          <BoundingBox>
            <Position x="760.22743240863599" y="445.95336234120703"/>
            <Dimensions width="100" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_135" name="layout_glyph_16" metabolite="Metabolite_22">
          <BoundingBox>
            <Position x="467.94462655567798" y="353.37327579848898"/>
            <Dimensions width="84" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_136" name="layout_glyph_17" metabolite="Metabolite_30">
          <BoundingBox>
            <Position x="258.56702636167699" y="631.79938280887802"/>
            <Dimensions width="180" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_137" name="layout_glyph_18" metabolite="Metabolite_27">
          <BoundingBox>
            <Position x="391.86389659838699" y="73.384233212718499"/>
            <Dimensions width="148" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_138" name="layout_glyph_19" metabolite="">
          <BoundingBox>
            <Position x="998.84142611138896" y="609.83129438574895"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_139" name="layout_glyph_20" objectRole="invisible">
          <BoundingBox>
            <Position x="546.77526203489799" y="546.72120361315694"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_140" name="layout_glyph_21" objectRole="invisible">
          <BoundingBox>
            <Position x="606.94854718065096" y="228.33111498880001"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_141" name="layout_glyph_22" objectRole="invisible">
          <BoundingBox>
            <Position x="612.89661787195701" y="387.90843355007502"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_142" name="layout_glyph_23" objectRole="invisible">
          <BoundingBox>
            <Position x="229.04306300186599" y="383.41944001636301"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_143" name="layout_glyph_24" objectRole="invisible">
          <BoundingBox>
            <Position x="248.75866099380701" y="543.18802345016798"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_144" name="layout_glyph_25" objectRole="invisible">
          <BoundingBox>
            <Position x="586.76721176110095" y="832.61035415562696"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_145" name="layout_glyph_26" objectRole="invisible">
          <BoundingBox>
            <Position x="426.43400643699698" y="740.40706177855805"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_146" name="layout_glyph_27" reaction="Reaction_17">
          <BoundingBox>
            <Position x="509.57953027199699" y="487.61676761127501"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="513.48222157096995" y="495.33158372931803"/>
                <End x="505.67683897302499" y="479.90195149323102"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_147" name="layout_glyph_28" metaboliteGlyph="Layout_139" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="513.48222157096995" y="495.33158372931803"/>
                    <End x="543.35501610273298" y="541.72120361315694"/>
                    <BasePoint1 x="521.28760416891498" y="510.76121596540497"/>
                    <BasePoint2 x="534.27265578531001" y="530.09861784830298"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_148" name="layout_glyph_29" metaboliteGlyph="Layout_125" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="505.67683897302499" y="479.90195149323102"/>
                    <End x="476.829680337181" y="411.92488125229102"/>
                    <BasePoint1 x="497.87145637508002" y="464.47231925714499"/>
                    <BasePoint2 x="485.39922270664403" y="434.34119219569601"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_149" name="layout_glyph_30" metaboliteGlyph="Layout_121" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="503.41810918681" y="572.39818901522005"/>
                    <End x="500.65630697342903" y="492.13075542294303"/>
                    <BasePoint1 x="502.03720808012002" y="532.26447221908097"/>
                    <BasePoint2 x="491.73308367486101" y="496.64474323461201"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_150" name="layout_glyph_31" metaboliteGlyph="Layout_122" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="588.79862889607602" y="509.92772102852598"/>
                    <End x="518.50275357056501" y="483.10277979960603"/>
                    <BasePoint1 x="553.65069123332103" y="496.51525041406597"/>
                    <BasePoint2 x="527.42597686913302" y="478.58879198793801"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_151" name="layout_glyph_32" metaboliteGlyph="Layout_129" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="565.49416599559902" y="474.02534591685401"/>
                    <End x="518.50275357056501" y="483.10277979960603"/>
                    <BasePoint1 x="541.99845978308201" y="478.56406285822999"/>
                    <BasePoint2 x="527.42597686913302" y="478.58879198793801"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_152" name="layout_glyph_33" metaboliteGlyph="Layout_124" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="410.75763667926401" y="457.93793552470203"/>
                    <End x="500.65630697342903" y="492.13075542294303"/>
                    <BasePoint1 x="455.706971826347" y="475.03434547382199"/>
                    <BasePoint2 x="491.73308367486101" y="496.64474323461201"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_153" name="layout_glyph_34" metaboliteGlyph="Layout_131" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="545.91887083863003" y="646.18165489814203"/>
                    <End x="500.65630697342903" y="492.13075542294303"/>
                    <BasePoint1 x="523.28758890603001" y="569.15620516054196"/>
                    <BasePoint2 x="491.73308367486101" y="496.64474323461201"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_154" name="layout_glyph_35" metaboliteGlyph="Layout_135" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="511.34966509521303" y="386.37327579848898"/>
                    <End x="518.50275357056501" y="483.10277979960603"/>
                    <BasePoint1 x="514.92620933288902" y="434.73802779904798"/>
                    <BasePoint2 x="527.42597686913302" y="478.58879198793801"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_155" name="layout_glyph_36" reaction="Reaction_21">
          <BoundingBox>
            <Position x="562.201514075506" y="294.21219329650501"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="557.32631804425705" y="301.13930133698898"/>
                <End x="567.07671010675404" y="287.28508525602001"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_156" name="layout_glyph_37" metaboliteGlyph="Layout_135" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="557.32631804425705" y="301.13930133698898"/>
                    <End x="523.59483631612102" y="348.37327579848898"/>
                    <BasePoint1 x="547.57592598175995" y="314.993517417958"/>
                    <BasePoint2 x="533.14778313331601" y="335.14695062846602"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_157" name="layout_glyph_38" metaboliteGlyph="Layout_140" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="567.07671010675404" y="287.28508525602001"/>
                    <End x="603.67233920292597" y="234.33111498880001"/>
                    <BasePoint1 x="576.82710216925204" y="273.43086917505099"/>
                    <BasePoint2 x="592.68731870171302" y="250.41743806168299"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_158" name="layout_glyph_39" reaction="Reaction_27">
          <BoundingBox>
            <Position x="555.04475202260301" y="454.639797568723"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="554.76485257380898" y="461.07828241841202"/>
                <End x="555.32465147139703" y="448.20131271903301"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_159" name="layout_glyph_40" metaboliteGlyph="Layout_122" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="554.76485257380898" y="461.07828241841202"/>
                    <End x="588.79862889607602" y="501.85475107671198"/>
                    <BasePoint1 x="554.20505367622104" y="473.95525211779199"/>
                    <BasePoint2 x="571.36189156175101" y="491.124244022097"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_160" name="layout_glyph_41" metaboliteGlyph="Layout_141" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="555.32465147139703" y="448.20131271903301"/>
                    <End x="607.89661787195701" y="392.89509286559002"/>
                    <BasePoint1 x="555.88445036898497" y="435.32434301965299"/>
                    <BasePoint2 x="582.03048384486794" y="410.89047551777702"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_161" name="layout_glyph_42" metaboliteGlyph="Layout_121" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="509.74754980356602" y="572.39818901522005"/>
                    <End x="545.05418810425397" y="454.20547902963"/>
                    <BasePoint1 x="527.40086895391005" y="513.30183402242506"/>
                    <BasePoint2 x="535.06362418590595" y="453.771160490537"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_162" name="layout_glyph_43" metaboliteGlyph="Layout_129" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="565.49416599559902" y="455.08537109104202"/>
                    <End x="565.03531594095102" y="455.07411610781497"/>
                    <BasePoint1 x="565.26474096827496" y="455.07974359942898"/>
                    <BasePoint2 x="575.02587985929904" y="455.50843464690797"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_163" name="layout_glyph_44" metaboliteGlyph="Layout_124" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="410.75763667926401" y="449.92329917820598"/>
                    <End x="545.05418810425397" y="454.20547902963"/>
                    <BasePoint1 x="477.90591239175899" y="452.06438910391802"/>
                    <BasePoint2 x="535.06362418590595" y="453.771160490537"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_164" name="layout_glyph_45" metaboliteGlyph="Layout_135" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="517.627049027986" y="386.37327579848898"/>
                    <End x="545.05418810425397" y="454.20547902963"/>
                    <BasePoint1 x="531.34061856612004" y="420.28937741406003"/>
                    <BasePoint2 x="535.06362418590595" y="453.771160490537"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_165" name="layout_glyph_46" reaction="Reaction_16">
          <BoundingBox>
            <Position x="303.157308354534" y="418.82346680123402"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="295.246579670664" y="415.55994274325002"/>
                <End x="311.06803703840399" y="422.08699085921802"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_166" name="layout_glyph_47" metaboliteGlyph="Layout_142" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="295.246579670664" y="415.55994274325002"/>
                    <End x="235.04306300186599" y="386.68845160681099"/>
                    <BasePoint1 x="279.42512230292402" y="409.03289462728299"/>
                    <BasePoint2 x="253.27872831046" y="396.22891108805499"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_167" name="layout_glyph_48" metaboliteGlyph="Layout_124" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="311.06803703840399" y="422.08699085921802"/>
                    <End x="364.75763667926401" y="441.41499536186899"/>
                    <BasePoint1 x="326.88949440614402" y="428.614038975185"/>
                    <BasePoint2 x="349.77892988463901" y="436.64627919751899"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_168" name="layout_glyph_49" reaction="Reaction_18">
          <BoundingBox>
            <Position x="322.154782388412" y="508.170794591169"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="329.07973117268398" y="503.445889477462"/>
                <End x="315.229833604139" y="512.89569970487605"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_169" name="layout_glyph_50" metaboliteGlyph="Layout_124" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="329.07973117268398" y="503.445889477462"/>
                    <End x="368.74837126945903" y="468.18992117603398"/>
                    <BasePoint1 x="342.92962874122998" y="493.99607925004898"/>
                    <BasePoint2 x="359.301474397481" y="478.73054765618798"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_170" name="layout_glyph_51" metaboliteGlyph="Layout_143" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="315.229833604139" y="512.89569970487605"/>
                    <End x="254.75866099380701" y="541.435894655271"/>
                    <BasePoint1 x="301.379936035593" y="522.34550993228902"/>
                    <BasePoint2 x="274.60682412256398" y="534.253154850633"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_171" name="layout_glyph_52" reaction="Reaction_26">
          <BoundingBox>
            <Position x="734.49077922493905" y="439.71718711554598"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="726.60411590428703" y="439.580487283249"/>
                <End x="742.37744254559004" y="439.85388694784302"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_172" name="layout_glyph_53" metaboliteGlyph="Layout_129" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="726.60411590428703" y="439.580487283249"/>
                    <End x="714.37327692383803" y="438.21936569527003"/>
                    <BasePoint1 x="710.83078926298299" y="439.30708761865498"/>
                    <BasePoint2 x="708.65870143308496" y="438.69487674081398"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_173" name="layout_glyph_54" metaboliteGlyph="Layout_134" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="742.37744254559004" y="439.85388694784302"/>
                    <End x="760.32060189162905" y="440.95336234120703"/>
                    <BasePoint1 x="758.15076918689397" y="440.12728661243602"/>
                    <BasePoint2 x="763.17901719958797" y="440.60867439296999"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_174" name="layout_glyph_55" reaction="Reaction_24">
          <BoundingBox>
            <Position x="298.04705274799102" y="195.52501831873701"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="290.29067478307002" y="192.677024656637"/>
                <End x="305.80343071291202" y="198.37301198083699"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_175" name="layout_glyph_56" metaboliteGlyph="Layout_132" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="290.29067478307002" y="192.677024656637"/>
                    <End x="242.30826620723499" y="175.16850899184399"/>
                    <BasePoint1 x="274.77791885322898" y="186.98103733243599"/>
                    <BasePoint2 x="254.66490354777201" y="179.65077633108999"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_176" name="layout_glyph_57" metaboliteGlyph="Layout_126" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="305.80343071291202" y="198.37301198083699"/>
                    <End x="347.43582550564901" y="213.73915377233601"/>
                    <BasePoint1 x="321.316186642753" y="204.06899930503701"/>
                    <BasePoint2 x="338.25419505666099" y="210.32807336973599"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_177" name="layout_glyph_58" reaction="Reaction_23">
          <BoundingBox>
            <Position x="596.21002468044799" y="608.87748705846104"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="598.58150049171604" y="612.56666035260696"/>
                <End x="593.83854886918004" y="605.18831376431501"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_178" name="layout_glyph_59" metaboliteGlyph="Layout_131" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="598.58150049171604" y="612.56666035260696"/>
                    <End x="573.26775970640801" y="646.18165489814203"/>
                    <BasePoint1 x="603.32445211425102" y="619.94500694090004"/>
                    <BasePoint2 x="589.48184381596297" y="634.90791756659405"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_179" name="layout_glyph_60" metaboliteGlyph="Layout_121" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="593.83854886918004" y="605.18831376431501"/>
                    <End x="535.07185180328395" y="593.73594915444198"/>
                    <BasePoint1 x="589.09559724664496" y="597.80996717602295"/>
                    <BasePoint2 x="560.89798661933003" y="593.92837151816002"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_180" name="layout_glyph_61" metaboliteGlyph="Layout_128" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="668.01555246952205" y="620.95482221613304"/>
                    <End x="604.62195006576599" y="603.47012991177303"/>
                    <BasePoint1 x="636.31875126764396" y="612.21247606395298"/>
                    <BasePoint2 x="613.03387545108399" y="598.06277276508501"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_181" name="layout_glyph_62" metaboliteGlyph="Layout_122" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="607.09917937331602" y="536.17813054386897"/>
                    <End x="604.62195006576599" y="603.47012991177303"/>
                    <BasePoint1 x="605.860564719541" y="569.824130227821"/>
                    <BasePoint2 x="613.03387545108399" y="598.06277276508501"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_182" name="layout_glyph_63" metaboliteGlyph="Layout_130" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="606.46669687824101" y="682.87796096720194"/>
                    <End x="587.79809929512999" y="614.28484420514997"/>
                    <BasePoint1 x="597.13239808668504" y="648.58140258617595"/>
                    <BasePoint2 x="579.38617390981199" y="619.69220135183798"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_183" name="layout_glyph_64" metaboliteGlyph="Layout_121" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="535.07185180328395" y="599.872070649016"/>
                    <End x="587.79809929512999" y="614.28484420514997"/>
                    <BasePoint1 x="561.43497554920702" y="607.07845742708298"/>
                    <BasePoint2 x="579.38617390981199" y="619.69220135183798"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_184" name="layout_glyph_65" reaction="Reaction_19">
          <BoundingBox>
            <Position x="438.072565958844" y="301.11930399125703"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="443.62731471259599" y="305.37221784560302"/>
                <End x="432.51781720509302" y="296.86639013691001"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_185" name="layout_glyph_66" metaboliteGlyph="Layout_125" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="443.62731471259599" y="305.37221784560302"/>
                    <End x="465.73985642684602" y="373.92488125229102"/>
                    <BasePoint1 x="454.73681222009799" y="313.87804555429699"/>
                    <BasePoint2 x="463.015708700348" y="346.02792033046802"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_186" name="layout_glyph_67" metaboliteGlyph="Layout_127" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="432.51781720509302" y="296.86639013691001"/>
                    <End x="419.76660980348697" y="288.86660416535602"/>
                    <BasePoint1 x="421.40831969759" y="288.36056242821599"/>
                    <BasePoint2 x="417.810090373663" y="286.48712636961301"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_187" name="layout_glyph_68" metaboliteGlyph="Layout_126" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="396.80757738396397" y="244.21614202856"/>
                    <End x="444.15172446074303" y="293.179289387442"/>
                    <BasePoint1 x="420.47965092235398" y="268.697715708001"/>
                    <BasePoint2 x="450.230882962642" y="285.23927478362702"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_188" name="layout_glyph_69" reaction="Reaction_20">
          <BoundingBox>
            <Position x="459.123951158772" y="446.567573229863"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="453.01460166495099" y="450.65840549874099"/>
                <End x="465.23330065259302" y="442.47674096098598"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_189" name="layout_glyph_70" metaboliteGlyph="Layout_124" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="453.01460166495099" y="450.65840549874099"/>
                    <End x="410.75763667926401" y="453.374700214602"/>
                    <BasePoint1 x="440.79590267730998" y="458.84007003649498"/>
                    <BasePoint2 x="422.722094931377" y="458.15280125998697"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_190" name="layout_glyph_71" metaboliteGlyph="Layout_135" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="465.23330065259302" y="442.47674096098598"/>
                    <End x="500.719532406535" y="386.37327579848898"/>
                    <BasePoint1 x="477.45199964023402" y="434.29507642323199"/>
                    <BasePoint2 x="492.14044077029502" y="408.288759976422"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_191" name="layout_glyph_72" metaboliteGlyph="Layout_125" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="462.65750217909198" y="411.92488125229102"/>
                    <End x="453.56007533627098" y="438.25834427455197"/>
                    <BasePoint1 x="458.10878875768202" y="425.09161276342201"/>
                    <BasePoint2 x="447.99619951377002" y="429.94911531923998"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_192" name="layout_glyph_73" reaction="Reaction_22">
          <BoundingBox>
            <Position x="412.54444763706499" y="359.56605427181398"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="419.39457652335699" y="359.00830492820398"/>
                <End x="405.69431875077402" y="360.123803615425"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_193" name="layout_glyph_74" metaboliteGlyph="Layout_135" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="419.39457652335699" y="359.00830492820398"/>
                    <End x="462.94462655567798" y="361.57518505418699"/>
                    <BasePoint1 x="433.09483429594002" y="357.89280624098399"/>
                    <BasePoint2 x="451.444794868955" y="359.45512097578001"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_194" name="layout_glyph_75" metaboliteGlyph="Layout_127" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="405.69431875077402" y="360.123803615425"/>
                    <End x="370.18289474553598" y="326.86660416535602"/>
                    <BasePoint1 x="391.99406097819002" y="361.239302302645"/>
                    <BasePoint2 x="377.66341341871703" y="344.33182790580599"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_195" name="layout_glyph_76" metaboliteGlyph="Layout_124" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="405.69431875077402" y="360.123803615425"/>
                    <End x="388.67283275986802" y="430.18992117603398"/>
                    <BasePoint1 x="391.99406097819002" y="361.239302302645"/>
                    <BasePoint2 x="386.90838242588302" y="395.993486411145"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_196" name="layout_glyph_77" metaboliteGlyph="Layout_126" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="383.52209330519401" y="244.21614202856"/>
                    <End x="411.73291591890398" y="349.59903785412899"/>
                    <BasePoint1 x="397.62750461204899" y="296.90758994134399"/>
                    <BasePoint2 x="410.92138420074298" y="339.63202143644298"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_197" name="layout_glyph_78" reaction="Reaction_25">
          <BoundingBox>
            <Position x="422.00742624637297" y="152.81836758889801"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="417.636022691736" y="159.70996302968999"/>
                <End x="426.37882980101" y="145.92677214810601"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_198" name="layout_glyph_79" metaboliteGlyph="Layout_126" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="417.636022691736" y="159.70996302968999"/>
                    <End x="389.62408883929902" y="206.21614202856"/>
                    <BasePoint1 x="408.89321558246201" y="173.49315391127399"/>
                    <BasePoint2 x="397.07295043356203" y="193.30044569031301"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_199" name="layout_glyph_80" metaboliteGlyph="Layout_137" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="426.37882980101" y="145.92677214810601"/>
                    <End x="452.81404311589603" y="106.384233212719"/>
                    <BasePoint1 x="435.12163691028297" y="132.14358126652201"/>
                    <BasePoint2 x="446.15354179040798" y="115.818109519224"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_200" name="layout_glyph_81" reaction="Reaction_30">
          <BoundingBox>
            <Position x="559.17229763617502" y="757.02723707770599"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="557.38400544955198" y="748.63080211483202"/>
                <End x="560.96058982279806" y="765.42367204058098"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_201" name="layout_glyph_82" metaboliteGlyph="Layout_131" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="557.38400544955198" y="748.63080211483202"/>
                    <End x="552.15869558556903" y="684.18165489814203"/>
                    <BasePoint1 x="553.80742107630601" y="731.83793218908295"/>
                    <BasePoint2 x="552.088912237626" y="703.81157606217505"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_202" name="layout_glyph_83" metaboliteGlyph="Layout_144" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="560.96058982279806" y="765.42367204058098"/>
                    <End x="584.81081870996104" y="827.61035415562696"/>
                    <BasePoint1 x="564.53717419604402" y="782.21654196632903"/>
                    <BasePoint2 x="575.56814254631399" y="809.11166554241504"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_203" name="layout_glyph_84" metaboliteGlyph="Layout_130" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="596.35476950689304" y="720.87796096720194"/>
                    <End x="568.95292597171897" y="754.94413617713894"/>
                    <BasePoint1 x="582.653847739306" y="737.91104857216999"/>
                    <BasePoint2 x="578.73355430726394" y="752.86103527657201"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_204" name="layout_glyph_85" reaction="Reaction_29">
          <BoundingBox>
            <Position x="485.307518712052" y="680.65220086728095"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="481.45062644373797" y="688.12764450544796"/>
                <End x="489.16441098036597" y="673.17675722911395"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_205" name="layout_glyph_86" metaboliteGlyph="Layout_145" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="481.45062644373797" y="688.12764450544796"/>
                    <End x="432.43400643699698" y="736.46167053479098"/>
                    <BasePoint1 x="473.73684190710901" y="703.07853178178198"/>
                    <BasePoint2 x="451.15697803789601" y="723.50782297736998"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_206" name="layout_glyph_87" metaboliteGlyph="Layout_121" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="489.16441098036597" y="673.17675722911395"/>
                    <End x="502.02659948385701" y="610.39818901522005"/>
                    <BasePoint1 x="496.87819551699499" y="658.22586995278004"/>
                    <BasePoint2 x="501.38084363458302" y="630.574307664917"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_207" name="layout_glyph_88" metaboliteGlyph="Layout_130" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="548.63781857124604" y="692.95144325789295"/>
                    <End x="494.19440409298898" y="685.23731463098295"/>
                    <BasePoint1 x="521.41611133211802" y="689.09437894443795"/>
                    <BasePoint2 x="503.08128947392697" y="689.82242839468404"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_208" name="layout_glyph_89" metaboliteGlyph="Layout_131" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="528.50136802863994" y="673.23094144511902"/>
                    <End x="494.19440409298898" y="685.23731463098295"/>
                    <BasePoint1 x="511.34788606081497" y="679.23412803805104"/>
                    <BasePoint2 x="503.08128947392697" y="689.82242839468404"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_209" name="layout_glyph_90" reaction="Reaction_28">
          <BoundingBox>
            <Position x="419.31336338538398" y="608.88648096699205"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="427.08860465746397" y="606.16642127730904"/>
                <End x="411.53812211330302" y="611.60654065667495"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_210" name="layout_glyph_91" metaboliteGlyph="Layout_121" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="427.08860465746397" y="606.16642127730904"/>
                    <End x="473.07185180328401" y="596.10531071549599"/>
                    <BasePoint1 x="442.63908720162499" y="600.72630189794302"/>
                    <BasePoint2 x="461.74309013849501" y="597.05577646187805"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_211" name="layout_glyph_92" metaboliteGlyph="Layout_136" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="411.53812211330302" y="611.60654065667495"/>
                    <End x="379.90289872618899" y="626.79938280887802"/>
                    <BasePoint1 x="395.987639569142" y="617.04666003604098"/>
                    <BasePoint2 x="384.05764851162598" y="623.28305126730095"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_212" name="layout_glyph_93" graphicalObject="Layout_119" text="unset">
          <BoundingBox>
            <Position x="1118.9603292725401" y="253.260719403537"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_213" name="layout_glyph_94" graphicalObject="Layout_120" text="unset">
          <BoundingBox>
            <Position x="586.38987350274499" y="0"/>
            <Dimensions width="128" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_214" name="layout_glyph_95" graphicalObject="Layout_121" originOfText="Metabolite_17">
          <BoundingBox>
            <Position x="478.07185180328401" y="577.39818901522005"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_215" name="layout_glyph_96" graphicalObject="Layout_122" originOfText="Metabolite_18">
          <BoundingBox>
            <Position x="593.79862889607602" y="503.17813054386897"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_216" name="layout_glyph_97" graphicalObject="Layout_123" text="unset">
          <BoundingBox>
            <Position x="0" y="286.86168836257298"/>
            <Dimensions width="80" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_217" name="layout_glyph_98" graphicalObject="Layout_124" originOfText="Metabolite_16">
          <BoundingBox>
            <Position x="369.75763667926401" y="435.18992117603398"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_218" name="layout_glyph_99" graphicalObject="Layout_125" originOfText="Metabolite_19">
          <BoundingBox>
            <Position x="451.22143605544898" y="378.92488125229102"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_219" name="layout_glyph_100" graphicalObject="Layout_126" originOfText="Metabolite_20">
          <BoundingBox>
            <Position x="352.43582550564901" y="211.21614202856"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_220" name="layout_glyph_101" graphicalObject="Layout_127" originOfText="Metabolite_21">
          <BoundingBox>
            <Position x="284.12646098042302" y="293.86660416535602"/>
            <Dimensions width="144" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_221" name="layout_glyph_102" graphicalObject="Layout_128" originOfText="Metabolite_24">
          <BoundingBox>
            <Position x="673.01555246952205" y="617.71147547472196"/>
            <Dimensions width="64" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_222" name="layout_glyph_103" graphicalObject="Layout_129" originOfText="Metabolite_29">
          <BoundingBox>
            <Position x="570.49416599559902" y="443.21936569527003"/>
            <Dimensions width="160" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_223" name="layout_glyph_104" graphicalObject="Layout_130" originOfText="Metabolite_25">
          <BoundingBox>
            <Position x="553.63781857124604" y="687.87796096720194"/>
            <Dimensions width="112" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_224" name="layout_glyph_105" graphicalObject="Layout_131" originOfText="Metabolite_23">
          <BoundingBox>
            <Position x="533.50136802863994" y="651.18165489814203"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_225" name="layout_glyph_106" graphicalObject="Layout_132" originOfText="Metabolite_26">
          <BoundingBox>
            <Position x="209.30826620723499" y="154.25626878655899"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_226" name="layout_glyph_107" graphicalObject="Layout_133" text="unset">
          <BoundingBox>
            <Position x="866.63198866198297" y="293.87321145805299"/>
            <Dimensions width="144" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_227" name="layout_glyph_108" graphicalObject="Layout_134" originOfText="Metabolite_28">
          <BoundingBox>
            <Position x="760.22743240863599" y="445.95336234120703"/>
            <Dimensions width="96" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_228" name="layout_glyph_109" graphicalObject="Layout_135" originOfText="Metabolite_22">
          <BoundingBox>
            <Position x="467.94462655567798" y="353.37327579848898"/>
            <Dimensions width="80" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_229" name="layout_glyph_110" graphicalObject="Layout_136" originOfText="Metabolite_30">
          <BoundingBox>
            <Position x="258.56702636167699" y="631.79938280887802"/>
            <Dimensions width="176" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_230" name="layout_glyph_111" graphicalObject="Layout_137" originOfText="Metabolite_27">
          <BoundingBox>
            <Position x="391.86389659838699" y="73.384233212718499"/>
            <Dimensions width="144" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_231" name="layout_glyph_112" graphicalObject="Layout_138" text="unset">
          <BoundingBox>
            <Position x="998.84142611138896" y="609.83129438574895"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
      <ListOfAdditionalGraphicalObjects>
        <AdditionalGraphicalObject key="Layout_232" name="layout_glyph_113" objectRole="rule">
          <BoundingBox>
            <Position x="672.07606091156299" y="628.69627904956496"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
        <AdditionalGraphicalObject key="Layout_233" name="layout_glyph_114" objectRole="rule">
          <BoundingBox>
            <Position x="591.80943760201603" y="670.79958401626004"/>
            <Dimensions width="10" height="10"/>
          </BoundingBox>
        </AdditionalGraphicalObject>
      </ListOfAdditionalGraphicalObjects>
    </Layout>
    <ListOfGlobalRenderInformation>
      <RenderInformation key="GlobalRenderInformation_8" backgroundColor="#FFFFFFFF">
        <ListOfColorDefinitions>
          <ColorDefinition id="black" value="#000000"/>
          <ColorDefinition id="white" value="#ffffff"/>
          <ColorDefinition id="transparent" value="#ffffff00"/>
          <ColorDefinition id="EmptySetOutline" value="#808080"/>
          <ColorDefinition id="EmptySetGradientStart" value="#ffffff"/>
          <ColorDefinition id="EmptySetGradientEnd" value="#d3d3d3"/>
          <ColorDefinition id="CompartmentBorder" value="#e69600b0"/>
          <ColorDefinition id="CloneMarkerColor" value="#ffa500"/>
          <ColorDefinition id="CurveColor" value="#000000a0"/>
          <ColorDefinition id="ModulationCurveColor" value="#0000a0a0"/>
        </ListOfColorDefinitions>
        <ListOfGradientDefinitions>
          <LinearGradient id="cloneMarker" spreadMethod="pad" x1="50%" y1="0" x2="50%" y2="100%" z2="100%">
            <Stop offset="0" stop-color="transparent"/>
            <Stop offset="0.75" stop-color="transparent"/>
            <Stop offset="0.76" stop-color="CloneMarkerColor"/>
            <Stop offset="1" stop-color="CloneMarkerColor"/>
          </LinearGradient>
          <LinearGradient id="EmptySetGradient" spreadMethod="pad" x1="0" y1="0" x2="100%" y2="100%" z2="100%">
            <Stop offset="0" stop-color="EmptySetGradientStart"/>
            <Stop offset="100%" stop-color="EmptySetGradientEnd"/>
          </LinearGradient>
        </ListOfGradientDefinitions>
        <ListOfLineEndings>
          <LineEnding id="ActivationHead" enableRotationalMapping="true">
            <BoundingBox>
              <Position x="-12" y="-6"/>
              <Dimensions width="12" height="12"/>
            </BoundingBox>
            <Group stroke="CurveColor" stroke-width="1" fill="white" text-anchor="start" vtext-anchor="top">
              <Ellipse stroke="black" stroke-width="1" cx="50%" cy="50%" rx="50%" ry="50%"/>
            </Group>
          </LineEnding>
          <LineEnding id="TransitionHead" enableRotationalMapping="true">
            <BoundingBox>
              <Position x="-8" y="-6"/>
              <Dimensions width="12" height="12"/>
            </BoundingBox>
            <Group stroke="CurveColor" stroke-width="0.001" fill="CurveColor" text-anchor="start" vtext-anchor="top">
              <Polygon fill="CurveColor">
                <ListOfElements>
                  <Element x="0" y="0"/>
                  <Element x="100%" y="50%"/>
                  <Element x="0" y="100%"/>
                  <Element x="33%" y="50%"/>
                  <Element x="0" y="0"/>
                </ListOfElements>
              </Polygon>
            </Group>
          </LineEnding>
          <LineEnding id="ModulationHead" enableRotationalMapping="true">
            <BoundingBox>
              <Position x="-5" y="-5"/>
              <Dimensions width="10" height="10"/>
            </BoundingBox>
            <Group stroke="ModulationCurveColor" stroke-width="1" fill="ModulationCurveColor" text-anchor="start" vtext-anchor="top">
              <Ellipse cx="50%" cy="50%" rx="45%" ry="45%"/>
            </Group>
          </LineEnding>
          <LineEnding id="InhibitionHead" enableRotationalMapping="true">
            <BoundingBox>
              <Position x="-0.5" y="-4"/>
              <Dimensions width="0.59999999999999998" height="8"/>
            </BoundingBox>
            <Group stroke="black" stroke-width="2" fill="black" text-anchor="start" vtext-anchor="top">
              <Polygon>
                <ListOfElements>
                  <Element x="0" y="0"/>
                  <Element x="0.3" y="0"/>
                  <Element x="0.3" y="8"/>
                  <Element x="0" y="8"/>
                </ListOfElements>
              </Polygon>
            </Group>
          </LineEnding>
        </ListOfLineEndings>
        <ListOfStyles>
          <Style key="GlobalStyle_66" roleList="invisible">
            <Group stroke="#ffffff00" stroke-width="0" fill="#ffffff00" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
            </Group>
          </Style>
          <Style key="GlobalStyle_67" roleList="defaultText" typeList="TEXTGLYPH">
            <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Verdana" text-anchor="middle" vtext-anchor="middle">
            </Group>
          </Style>
          <Style key="GlobalStyle_68" roleList="sidesubstrate substrate" typeList="REACTIONGLYPH">
            <Group stroke="CurveColor" stroke-width="3" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
            </Group>
          </Style>
          <Style key="GlobalStyle_69" roleList="SBO-0000169 inhibition inhibitor">
            <Group stroke="CurveColor" stroke-width="3" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="InhibitionHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_70" roleList="SBO-0000168 modifier">
            <Group stroke="ModulationCurveColor" stroke-width="3" fill="white" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="ModulationHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_71" roleList="SBO-0000172 activator catalysis">
            <Group stroke="CurveColor" stroke-width="3" fill="white" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="ActivationHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_72" roleList="product sideproduct" typeList="product sideproduct">
            <Group stroke="CurveColor" stroke-width="3" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="TransitionHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_73" roleList="NO-SBO SBO-0000285" typeList="SPECIESGLYPH">
            <Group stroke-width="0" fill="#a0e0a030" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              <Rectangle x="0" y="0" width="100%" height="100%"/>
            </Group>
          </Style>
          <Style key="GlobalStyle_74" roleList="SBO-0000289" typeList="COMPARTMENTGLYPH">
            <Group stroke="CompartmentBorder" stroke-width="7" fill="none" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              <Rectangle x="0" y="0" width="100%" height="100%" rx="20" ry="20"/>
            </Group>
          </Style>
          <Style key="GlobalStyle_75" typeList="ANY">
            <Group stroke="black" stroke-width="0" fill="#f0707070" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              <Rectangle x="0" y="0" width="100%" height="100%"/>
            </Group>
          </Style>
        </ListOfStyles>
      </RenderInformation>
    </ListOfGlobalRenderInformation>
  </ListOfLayouts>
  <SBMLReference file="Dunster2016_Nondimensional_Model_Curated.xml">
    <SBMLMap SBMLid="APC" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="Factor_V" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="Factor_Va" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="Factor_Xa" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="Factor_Xi" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="Fibrin" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="Fibrinogen" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="Ib" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="Inactive_Thrombin" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="Inactive_protein_C" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="Ix" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="Protein_C" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="Prothrombin__II" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="Prothrombinase__Va_Xa" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_Generation_of_thrombin_1_1" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_Inactivation_of_Va" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_Inactivation_of_prothrombinase_1_1" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_Inactivation_of_prothrombinase_2_1" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_formaation_of_prothrombinase_1" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_generation_of_Xa_1" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_inactive_Xa__Xi__1" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_production_of_V_1" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_prothrombin_1" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_thrombin_1_1" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_thrombin_2_1" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Rate_law_reaction_for_generation_of_Va_1" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Reaction_for_Formation_of_Prothrombinase" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="Reaction_for_Generation_of_Va" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="Reaction_for_Generation_of_Xa" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="Reaction_for_Inactivation_of_Va" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="Reaction_for_Inactivation_of_Xa" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="Reaction_for_Inactivation_of_protein_C" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="Reaction_for_Inactivation_of_prothrombinase_1" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="Reaction_for_Inactive_Xa" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="Reaction_for_Prothrombin_inactivation" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="Reaction_for_Thrombin_Generation" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="Reaction_for_Thrombin_Inactivation" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="Reaction_of_V_Inactivation" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="Thrombin__IIa" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="VInactive" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="Va_Xa_L" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="Xa_L" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="gamma1a" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="k1a" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="k1b" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="k2a" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="k2am" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="k2b" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="k3a" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="k3b" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="k3c" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="k4a" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="k4b" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="k4bm" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="k5a" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="k5b" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="k6" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="kb" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="kx" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="log_time" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="q3a" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="q4a" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="reaction_for_Generation_of__Fibrin" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="reaction_for_Generation_of_protein_C" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="reaction_for_Generation_of_thrombin" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="reaction_for_Inactivation_of_prothrombinase_2" COPASIkey="Reaction_22"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T16:22:47Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T16:22:47Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T16:22:47Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T16:22:47Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T16:22:47Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T16:22:47Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
