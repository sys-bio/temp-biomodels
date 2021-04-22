<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-09-05 12:36:28 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
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
    <Function key="Function_49" name="function for normal cell growth_1" type="UserDefined" reversible="false">
      <Expression>
        r_N/K
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_305" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="r_N" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="function for normal cell damage;A_1" type="UserDefined" reversible="false">
      <Expression>
        beta_1*K*normalized_normal_cell_n*normalized_cancer_cell_a
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_313" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="beta_1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="normalized_cancer_cell_a" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_316" name="normalized_normal_cell_n" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="function for normal cell damage;G_1" type="UserDefined" reversible="false">
      <Expression>
        beta_4*normalized_normal_cell_n*normalized_pre_cancer_cell_g
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_310" name="beta_4" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="normalized_normal_cell_n" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_322" name="normalized_pre_cancer_cell_g" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="function for pre-cancer cell logistic growth_1" type="UserDefined" reversible="false">
      <Expression>
        r_G*normalized_pre_cancer_cell_g
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_311" name="normalized_pre_cancer_cell_g" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_326" name="r_G" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="function for pre-cancer cell death;tissue repair system_1" type="UserDefined" reversible="false">
      <Expression>
        beta_2*K*normalized_normal_cell_n*normalized_pre_cancer_cell_g
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_333" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_387" name="beta_2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="normalized_normal_cell_n" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_336" name="normalized_pre_cancer_cell_g" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="function for negative effect on G;A_1" type="UserDefined" reversible="false">
      <Expression>
        beta_5*normalized_cancer_cell_a*normalized_pre_cancer_cell_g
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_352" name="beta_5" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="normalized_cancer_cell_a" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_340" name="normalized_pre_cancer_cell_g" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="function for negative effect on A;G_1" type="UserDefined" reversible="false">
      <Expression>
        beta_6*normalized_cancer_cell_a*normalized_pre_cancer_cell_g
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_401" name="beta_6" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_350" name="normalized_cancer_cell_a" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_343" name="normalized_pre_cancer_cell_g" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="function for cancer cell logistic growth_1" type="UserDefined" reversible="false">
      <Expression>
        r_A*normalized_cancer_cell_a*(1-normalized_cancer_cell_a/(K_A/K))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_359" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="K_A" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_402" name="normalized_cancer_cell_a" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_403" name="r_A" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="function for cancer cell death;tissue repair system_1" type="UserDefined" reversible="false">
      <Expression>
        beta_3*K*normalized_normal_cell_n*normalized_cancer_cell_a
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_376" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="beta_3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="normalized_cancer_cell_a" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_386" name="normalized_normal_cell_n" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="function for transition to cancer cell_1" type="UserDefined" reversible="false">
      <Expression>
        delta*normalized_pre_cancer_cell_g^2/(xi/K+normalized_pre_cancer_cell_g)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_392" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="delta" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_425" name="normalized_pre_cancer_cell_g" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_487" name="xi" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="New Model_1" simulationType="time" timeUnit="d" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/mamo/MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C19320"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C18121"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C45576"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C16870"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C17938"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/29947770"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-22T15:35:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>muffet0307@gmail.com</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Ng</vCard:Family>
                <vCard:Given>Szeyi</vCard:Given>
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
        <dcterms:W3CDTF>2019-08-22T15:35:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T11:34:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13413"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_11" name="normalized normal cell n" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12508"/>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C115935"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T11:57:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=New Model_1,Vector=Values[n0],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="normalized pre-cancer cell g" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C12959"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C25629"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:16:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=New Model_1,Vector=Values[g0],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="normalized cancer cell a" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C12959"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T11:57:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=New Model_1,Vector=Values[a0],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_63" name="r_N" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_63">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000610"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:18:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="mu_N" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_62">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C85060"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C53346"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:18:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="beta_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-22T15:56:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="beta_4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-22T15:56:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="r_G" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_59">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000610"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:18:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="mu_G" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_58">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C53346"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C85060"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:18:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="xi_G" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C53346"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:18:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="beta_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-22T15:58:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="beta_5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-22T15:58:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="delta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C25564"/>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000492"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:13:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="xi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C48228"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:13:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="r_A" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000610"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:18:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="K_A" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000661"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C81005"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:18:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="mu_A" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C53346"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C85060"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:18:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="xi_A" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C53346"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:00:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="beta_3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-22T16:00:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="beta_6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-22T16:01:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="K" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-03T14:29:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="A" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12959"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-03T09:30:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=New Model_1,Vector=Compartments[compartment],Vector=Metabolites[normalized cancer cell a],Reference=Concentration>*&lt;CN=Root,Model=New Model_1,Vector=Values[K],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="G" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12959"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C25629"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-03T09:30:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=New Model_1,Vector=Compartments[compartment],Vector=Metabolites[normalized pre-cancer cell g],Reference=Concentration>*&lt;CN=Root,Model=New Model_1,Vector=Values[K],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="N" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C115935"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12508"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-03T09:30:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=New Model_1,Vector=Compartments[compartment],Vector=Metabolites[normalized normal cell n],Reference=Concentration>*&lt;CN=Root,Model=New Model_1,Vector=Values[K],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="G0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12959"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C25629"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:16:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="A0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12959"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-03T09:43:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="N0" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C115935"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12508"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-03T09:41:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=New Model_1,Vector=Values[r_N],Reference=Value>/&lt;CN=Root,Model=New Model_1,Vector=Values[mu_N],Reference=Value>-1
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="n0" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C115935"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12508"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-03T09:42:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=New Model_1,Vector=Values[N0],Reference=Value>/&lt;CN=Root,Model=New Model_1,Vector=Values[K],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="a0" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12959"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-03T09:43:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=New Model_1,Vector=Values[A0],Reference=Value>/&lt;CN=Root,Model=New Model_1,Vector=Values[K],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="g0" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12959"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C25629"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-03T09:42:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=New Model_1,Vector=Values[G0],Reference=Value>/&lt;CN=Root,Model=New Model_1,Vector=Values[K],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="a'" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12959"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-03T11:33:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=New Model_1,Vector=Compartments[compartment],Vector=Metabolites[normalized cancer cell a],Reference=Concentration>*10
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_49" name="normal cell growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000629"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:05:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7369" name="K" value="1e+08"/>
          <Constant key="Parameter_7370" name="r_N" value="1e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=New Model_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="normal cell death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000179"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:04:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7426" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=New Model_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="normal cell damage;A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000202"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:06:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7424" name="K" value="1e+08"/>
          <Constant key="Parameter_7427" name="beta_1" value="3.5e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=New Model_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="normal cell damage;G" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000202"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:06:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7421" name="beta_4" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=New Model_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="pre-cancer cell logistic growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0040007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:02:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7420" name="r_G" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=New Model_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="pre-cancer cell natural death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000179"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:03:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7425" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=New Model_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="pre-cancer cell death;tissue repair system" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000179"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:03:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7416" name="K" value="1e+08"/>
          <Constant key="Parameter_7422" name="beta_2" value="3.5e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=New Model_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="pre-cancer cell death;apoptosis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000179"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:03:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7417" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=New Model_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="negative effect on G;A" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000202"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:06:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7419" name="beta_5" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=New Model_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="negative effect on A;G" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000202"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:06:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7418" name="beta_6" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=New Model_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="cancer cell natural death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000179"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:00:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7423" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=New Model_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="cancer cell logistic growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0040007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:00:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7414" name="K" value="1e+08"/>
          <Constant key="Parameter_7412" name="K_A" value="1e+07"/>
          <Constant key="Parameter_7415" name="r_A" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=New Model_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="cancer cell death;tissue repair system" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000179"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:04:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7409" name="K" value="1e+08"/>
          <Constant key="Parameter_7408" name="beta_3" value="3.5e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=New Model_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="cancer cell death;apoptosis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000179"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:04:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7413" name="k1" value="0.006"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=New Model_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="transition to cancer cell" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:sbo:SBO:0000181"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-05T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7404" name="K" value="1e+08"/>
          <Constant key="Parameter_7410" name="delta" value="1e-05"/>
          <Constant key="Parameter_7405" name="xi" value="1000"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=New Model_1,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model_1" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Compartments[compartment],Vector=Metabolites[normalized normal cell n]" value="6.0221417297785822e+20" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=New Model_1,Vector=Values[n0],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Compartments[compartment],Vector=Metabolites[normalized pre-cancer cell g]" value="6022141790000.001" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=New Model_1,Vector=Values[g0],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Compartments[compartment],Vector=Metabolites[normalized cancer cell a]" value="0" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=New Model_1,Vector=Values[a0],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[r_N]" value="1000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[mu_N]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[beta_1]" value="3.4999999999999998e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[beta_4]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[r_G]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[mu_G]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[xi_G]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[beta_2]" value="3.4999999999999998e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[beta_5]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[delta]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[xi]" value="1000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[r_A]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[K_A]" value="10000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[mu_A]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[xi_A]" value="0.0060000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[beta_3]" value="3.4999999999999998e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[beta_6]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[K]" value="100000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[A]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[G]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[N]" value="99999999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[G0]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[A0]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[N0]" value="99999999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[n0]" value="0.99999998999999995" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[a0]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[g0]" value="1e-08" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Values[a']" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=New Model_1,Vector=Reactions[normal cell growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[normal cell growth],ParameterGroup=Parameters,Parameter=K" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[K],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[normal cell growth],ParameterGroup=Parameters,Parameter=r_N" value="1000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[r_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model_1,Vector=Reactions[normal cell death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[normal cell death],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[mu_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model_1,Vector=Reactions[normal cell damage;A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[normal cell damage;A],ParameterGroup=Parameters,Parameter=K" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[K],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[normal cell damage;A],ParameterGroup=Parameters,Parameter=beta_1" value="3.4999999999999998e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[beta_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model_1,Vector=Reactions[normal cell damage;G]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[normal cell damage;G],ParameterGroup=Parameters,Parameter=beta_4" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[beta_4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model_1,Vector=Reactions[pre-cancer cell logistic growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[pre-cancer cell logistic growth],ParameterGroup=Parameters,Parameter=r_G" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[r_G],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model_1,Vector=Reactions[pre-cancer cell natural death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[pre-cancer cell natural death],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[mu_G],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model_1,Vector=Reactions[pre-cancer cell death;tissue repair system]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[pre-cancer cell death;tissue repair system],ParameterGroup=Parameters,Parameter=K" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[K],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[pre-cancer cell death;tissue repair system],ParameterGroup=Parameters,Parameter=beta_2" value="3.4999999999999998e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[beta_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model_1,Vector=Reactions[pre-cancer cell death;apoptosis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[pre-cancer cell death;apoptosis],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[xi_G],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model_1,Vector=Reactions[negative effect on G;A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[negative effect on G;A],ParameterGroup=Parameters,Parameter=beta_5" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[beta_5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model_1,Vector=Reactions[negative effect on A;G]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[negative effect on A;G],ParameterGroup=Parameters,Parameter=beta_6" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[beta_6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model_1,Vector=Reactions[cancer cell natural death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[cancer cell natural death],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[mu_A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model_1,Vector=Reactions[cancer cell logistic growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[cancer cell logistic growth],ParameterGroup=Parameters,Parameter=K" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[K],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[cancer cell logistic growth],ParameterGroup=Parameters,Parameter=K_A" value="10000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[K_A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[cancer cell logistic growth],ParameterGroup=Parameters,Parameter=r_A" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[r_A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model_1,Vector=Reactions[cancer cell death;tissue repair system]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[cancer cell death;tissue repair system],ParameterGroup=Parameters,Parameter=K" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[K],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[cancer cell death;tissue repair system],ParameterGroup=Parameters,Parameter=beta_3" value="3.4999999999999998e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[beta_3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model_1,Vector=Reactions[cancer cell death;apoptosis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[cancer cell death;apoptosis],ParameterGroup=Parameters,Parameter=k1" value="0.0060000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[xi_A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=New Model_1,Vector=Reactions[transition to cancer cell]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[transition to cancer cell],ParameterGroup=Parameters,Parameter=K" value="100000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[K],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[transition to cancer cell],ParameterGroup=Parameters,Parameter=delta" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[delta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=New Model_1,Vector=Reactions[transition to cancer cell],ParameterGroup=Parameters,Parameter=xi" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=New Model_1,Vector=Values[xi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 6022141790000.001 0 6.0221417297785822e+20 0 1 99999999 99999999 0.99999998999999995 0 1e-08 0 1 1000000 0.01 3.4999999999999998e-10 0 0.050000000000000003 0.01 0.01 3.4999999999999998e-10 0 1.0000000000000001e-05 1000 0.050000000000000003 10000000 0.01 0.0060000000000000001 3.4999999999999998e-10 0 100000000 1 0 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_14" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
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
        <Parameter name="StepNumber" type="unsignedInteger" value="40000"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="40000"/>
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
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
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
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value=""/>
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[normalized normal cell n]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Vector=Compartments[compartment],Vector=Metabolites[normalized normal cell n],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[normalized pre-cancer cell g]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Vector=Compartments[compartment],Vector=Metabolites[normalized pre-cancer cell g],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[normalized cancer cell a]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Vector=Compartments[compartment],Vector=Metabolites[normalized cancer cell a],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[A]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Vector=Values[A],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[G]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Vector=Values[G],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[N]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Vector=Values[N],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[N0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Vector=Values[N0],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[n0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Vector=Values[n0],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[a0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Vector=Values[a0],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[g0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Vector=Values[g0],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[a']" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=New Model_1,Vector=Values[a'],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="model1.xml">
    <SBMLMap SBMLid="A" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="A0" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="G" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="G0" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="K" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="K_A" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="N" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="N0" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="a" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="a0" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="beta_1" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="beta_2" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="beta_3" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="beta_4" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="beta_5" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="beta_6" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="cancer_cell_death_apoptosis" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="cancer_cell_death_tissue_repair_system" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="cancer_cell_logistic_growth" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="cancer_cell_natural_death" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="delta" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="function_for_cancer_cell_death_tissue_repair_system_1" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="function_for_cancer_cell_logistic_growth_1" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="function_for_negative_effect_on_A_G_1" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="function_for_negative_effect_on_G_A_1" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="function_for_normal_cell_damage_A_1" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="function_for_normal_cell_damage_G_1" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="function_for_normal_cell_growth_1" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="function_for_pre_cancer_cell_death_tissue_repair_system_1" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="function_for_pre_cancer_cell_logistic_growth_1" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="function_for_transition_to_cancer_cell_1" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="g0" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="mu_A" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="mu_G" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="mu_N" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="n0" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="negative_effect_on_A_G" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="negative_effect_on_G_A" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="normal_cell_damage_A" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="normal_cell_damage_G" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="normal_cell_death" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="normal_cell_growth" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="normalized_cancer_cell_a" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="normalized_normal_cell_n" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="normalized_pre_cancer_cell_g" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="pre_cancer_cell_death_apoptosis" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="pre_cancer_cell_death_tissue_repair_system" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="pre_cancer_cell_logistic_growth" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="pre_cancer_cell_natural_death" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="r_A" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="r_G" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="r_N" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="transition_to_cancer_cell" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="xi" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="xi_A" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="xi_G" COPASIkey="ModelValue_57"/>
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
    <UnitDefinition key="Unit_7" name="dimensionless" symbol="1">
      <Expression>
        1
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
    <UnitDefinition key="Unit_34" name="day" symbol="d">
      <Expression>
        86400*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
