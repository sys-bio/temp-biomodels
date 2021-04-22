<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.23 (Build 184) (http://www.copasi.org) at 2018-05-29 16:23:23 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="23" versionDevel="184" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
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
    <Function key="Function_47" name="function for R18_1" type="UserDefined" reversible="false">
      <Expression>
        k2*Chk1P*Cdc25_active+k_ctak1*Cdc25_active
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_290" name="Cdc25_active" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_289" name="Chk1P" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_288" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="k_ctak1" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="function for R18_2" type="UserDefined" reversible="false">
      <Expression>
        k7*MPF*Cdc25_inactive+k_Plk1*Cdc25_inactive
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_302" name="Cdc25_inactive" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_301" name="MPF" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_300" name="k7" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="k_Plk1" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="function for R18_3" type="UserDefined" reversible="false">
      <Expression>
        k18*MPF*Cdc25Ps216_inactive+k_Plk1_0*Cdc25Ps216_inactive
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_310" name="Cdc25Ps216_inactive" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_309" name="MPF" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_308" name="k18" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="k_Plk1_0" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="function for R18_4" type="UserDefined" reversible="false">
      <Expression>
        k2_1*Chk1P*Cdc25_inactive+k_ctak1_0*Cdc25_inactive
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_320" name="Cdc25_inactive" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_319" name="Chk1P" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_318" name="k2_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="k_ctak1_0" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="function for R20_1" type="UserDefined" reversible="false">
      <Expression>
        k6*p53
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_329" name="k6" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="p53" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="function for R20_2" type="UserDefined" reversible="false">
      <Expression>
        k20*p53
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_335" name="k20" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="p53" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="function for R9_1" type="UserDefined" reversible="false">
      <Expression>
        k9*(Cdc25_active+Cdc25Ps216_active)*preMPF+k9_0*preMPF
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_352" name="Cdc25Ps216_active" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_351" name="Cdc25_active" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_350" name="k9" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="k9_0" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="preMPF" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for 1 modifier 1 substrate_1" type="UserDefined" reversible="false">
      <Expression>
        k9_1*MPF*Wee1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_358" name="MPF" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_345" name="Wee1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_344" name="k9_1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="function for R15 MPF degradation_1" type="UserDefined" reversible="false">
      <Expression>
        k15*MPF*MPF
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_362" name="MPF" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_347" name="k15" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="function for reaction 14_1" type="UserDefined" reversible="false">
      <Expression>
        k14/(1+k14_0*p53)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_368" name="k14" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="k14_0" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="p53" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for 1 modifier 1 substrate_2" type="UserDefined" reversible="false">
      <Expression>
        k1*Chk1*Rad3_ATM
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_374" name="Chk1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_373" name="Rad3_ATM" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_372" name="k1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="function for R8_1" type="UserDefined" reversible="false">
      <Expression>
        k8*MPF*Wee1+k8_0*Wee1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_391" name="MPF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_390" name="Wee1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_389" name="k8" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="k8_0" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Aguda1999 - G2 DNA damage checkpoint_1" simulationType="time" timeUnit="min" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/mamo/MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/7742"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/10500180"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T11:22:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>matt.maire@free.fr</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>MAIRE</vCard:Family>
                <vCard:Given>Matthieu</vCard:Given>
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
        <dcterms:W3CDTF>2018-05-29T11:22:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0031572"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL6960055446"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="nucleus" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13197"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_17" name="Cdc25_active" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C45329"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30304"/>
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="Cdc25Ps216_active" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C45329"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30304"/>
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Cdc25_inactive" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C118254"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30304"/>
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="Cdc25Ps216_inactive" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C118254"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30304"/>
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="Chk1P" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O14757"/>
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="protein 14-3-3" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P31947"/>
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Cdc25Ps216_14-3-3_inactive" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032991"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C118254"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30304"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P31947"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="p53" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04637"/>
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="p21" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38936"/>
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="MPF" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032991"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C45329"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P14635"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P06493"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="p21/MPF" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032991"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P14635"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P38936"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P06493"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="preMPF" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C118254"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032991"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P14635"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P06493"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Wee1" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30291"/>
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="Chk1" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O14757"/>
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="Rad3/ATM" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q13535"/>
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="Wee1_phosphorylated" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30291"/>
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="Cdc25_active_total" simulationType="assignment" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C45329"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isHomologTo>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30304"/>
      </rdf:Bag>
    </CopasiMT:isHomologTo>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[Cdc25_active],Reference=Concentration>+&lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[Cdc25Ps216_active],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_40" name="k1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="k1-" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="k2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="k2-" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:22:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="k2_" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="k_ctak1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="k_ctak1_" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="k3_" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="k-3_" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="k4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="k5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:22:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="k6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:22:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="k7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="k_Plk1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="k7-" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:22:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="k8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:22:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="k8_" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="k8-" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:22:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="k9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="k9_" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="k9-" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="k10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="k11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="k12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="k13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="k14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="k14_" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="k15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="k16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="k17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="k18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="k_Plk1_" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="k18-" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="k20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:22:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="k21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="k22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="k23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:22:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="k-23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:10:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="kex" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:24:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="kin" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:24:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_33" name="R2 Cdc25 Phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5039" name="k2" value="0.1"/>
          <Constant key="Parameter_5074" name="k_ctak1" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="R2- Cdc25 Dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5076" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="R7- Cdc25 inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5077" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="R7 Cdc25 Activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000656"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5071" name="k7" value="1"/>
          <Constant key="Parameter_5073" name="k_Plk1" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="R18 Cdc25Ps216 activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000656"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5072" name="k18" value="1"/>
          <Constant key="Parameter_5075" name="k_Plk1_0" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="R18- Cdc25Ps216 inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5078" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="R2_ Cdc25 Phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5069" name="k2_1" value="0.1"/>
          <Constant key="Parameter_5067" name="k_ctak1_0" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="R3-_ Cdc25 protein 14-3-3 unbinding" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5066" name="k1" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="R12 14-3-3 degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5070" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="R13 14-3-3 synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61408"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5068" name="v" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="R6 14-3-3 synthesis mediated by p53" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61408"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5043" name="k6" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="R3_  protein 14-3-3 Cdc25 binding" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005515"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5041" name="k1" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="R20 p21 synthesis mediated by p53" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61408"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5040" name="k20" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="R21 p21 natural synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61408"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5044" name="v" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="R22 p21 degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5042" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="R23 p21/MPF complex formation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005515"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5046" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_25"/>
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="R23- p21 MPF unbinding" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000180"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5061" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="R9 MPF activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000656"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5049" name="k9" value="1"/>
          <Constant key="Parameter_5063" name="k9_0" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="R9- MPF inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-29T12:04:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5064" name="k9_1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="R15 MPF degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5058" name="k15" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="R14 preMPF synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61408"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5045" name="k14" value="0.0005"/>
          <Constant key="Parameter_5053" name="k14_0" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="R1 Chk1 Phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5060" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="R1- Chk1 Dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5047" name="k1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="R4 Rad3/ATM natural synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61408"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5059" name="v" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="R5 Rad3/ATM degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5052" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="R10 p53 synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61408"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5056" name="v" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="R11 p53 degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5051" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="R16 Wee1 synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61408"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5055" name="v" value="0.0002"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="R8 Wee1 Phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5054" name="k8" value="0.1"/>
          <Constant key="Parameter_5057" name="k8_0" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="R8- Wee1 Dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5062" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="R17 Wee1P degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5048" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="Rex Nuclear export of iCdc25Ps216_14–3–3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0051168"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5050" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="Rin nuclear import of iCdc25" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0051170"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5065" name="v" value="1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[Cdc25_active]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[Cdc25Ps216_active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[Cdc25_inactive]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[Cdc25Ps216_inactive]" value="12044281714000002" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[Chk1P]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[protein 14-3-3]" value="1.2044281714e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[Cdc25Ps216_14-3-3_inactive]" value="1.8066422571000001e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[p53]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[p21]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[MPF]" value="6022140857000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[p21/MPF]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[preMPF]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[Wee1]" value="6.022140857e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[Chk1]" value="6.0221348348591433e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[Rad3/ATM]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[Wee1_phosphorylated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[Cdc25_active_total]" value="602214085700000" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k1]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k1-]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k2]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k2-]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k2_]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k_ctak1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k_ctak1_]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k3_]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k-3_]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k4]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k5]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k6]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k7]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k_Plk1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k7-]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k8]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k8_]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k8-]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k9]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k9_]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k9-]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k10]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k11]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k12]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k13]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k14]" value="0.00050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k14_]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k15]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k16]" value="0.00020000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k17]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k18]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k_Plk1_]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k18-]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k20]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k21]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k22]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k23]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k-23]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[kex]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[kin]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R2 Cdc25 Phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R2 Cdc25 Phosphorylation],ParameterGroup=Parameters,Parameter=k2" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R2 Cdc25 Phosphorylation],ParameterGroup=Parameters,Parameter=k_ctak1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k_ctak1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R2- Cdc25 Dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R2- Cdc25 Dephosphorylation],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k2-],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R7- Cdc25 inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R7- Cdc25 inactivation],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k7-],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R7 Cdc25 Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R7 Cdc25 Activation],ParameterGroup=Parameters,Parameter=k7" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R7 Cdc25 Activation],ParameterGroup=Parameters,Parameter=k_Plk1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k_Plk1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R18 Cdc25Ps216 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R18 Cdc25Ps216 activation],ParameterGroup=Parameters,Parameter=k18" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k18],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R18 Cdc25Ps216 activation],ParameterGroup=Parameters,Parameter=k_Plk1_0" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k_Plk1_],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R18- Cdc25Ps216 inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R18- Cdc25Ps216 inactivation],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k18-],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R2_ Cdc25 Phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R2_ Cdc25 Phosphorylation],ParameterGroup=Parameters,Parameter=k2_1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k2_],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R2_ Cdc25 Phosphorylation],ParameterGroup=Parameters,Parameter=k_ctak1_0" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k_ctak1_],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R3-_ Cdc25 protein 14-3-3 unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R3-_ Cdc25 protein 14-3-3 unbinding],ParameterGroup=Parameters,Parameter=k1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k-3_],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R12 14-3-3 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R12 14-3-3 degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R13 14-3-3 synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R13 14-3-3 synthesis],ParameterGroup=Parameters,Parameter=v" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R6 14-3-3 synthesis mediated by p53]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R6 14-3-3 synthesis mediated by p53],ParameterGroup=Parameters,Parameter=k6" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R3_  protein 14-3-3 Cdc25 binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R3_  protein 14-3-3 Cdc25 binding],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k3_],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R20 p21 synthesis mediated by p53]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R20 p21 synthesis mediated by p53],ParameterGroup=Parameters,Parameter=k20" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R21 p21 natural synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R21 p21 natural synthesis],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R22 p21 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R22 p21 degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k22],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R23 p21/MPF complex formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R23 p21/MPF complex formation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k23],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R23- p21 MPF unbinding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R23- p21 MPF unbinding],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k-23],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R9 MPF activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R9 MPF activation],ParameterGroup=Parameters,Parameter=k9" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R9 MPF activation],ParameterGroup=Parameters,Parameter=k9_0" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k9_],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R9- MPF inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R9- MPF inactivation],ParameterGroup=Parameters,Parameter=k9_1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k9-],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R15 MPF degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R15 MPF degradation],ParameterGroup=Parameters,Parameter=k15" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R14 preMPF synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R14 preMPF synthesis],ParameterGroup=Parameters,Parameter=k14" value="0.00050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R14 preMPF synthesis],ParameterGroup=Parameters,Parameter=k14_0" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k14_],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R1 Chk1 Phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R1 Chk1 Phosphorylation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R1- Chk1 Dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R1- Chk1 Dephosphorylation],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k1-],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R4 Rad3/ATM natural synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R4 Rad3/ATM natural synthesis],ParameterGroup=Parameters,Parameter=v" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R5 Rad3/ATM degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R5 Rad3/ATM degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R10 p53 synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R10 p53 synthesis],ParameterGroup=Parameters,Parameter=v" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R11 p53 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R11 p53 degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R16 Wee1 synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R16 Wee1 synthesis],ParameterGroup=Parameters,Parameter=v" value="0.00020000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k16],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R8 Wee1 Phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R8 Wee1 Phosphorylation],ParameterGroup=Parameters,Parameter=k8" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R8 Wee1 Phosphorylation],ParameterGroup=Parameters,Parameter=k8_0" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k8_],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R8- Wee1 Dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R8- Wee1 Dephosphorylation],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k8-],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R17 Wee1P degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[R17 Wee1P degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[k17],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[Rex Nuclear export of iCdc25Ps216_14–3–3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[Rex Nuclear export of iCdc25Ps216_14–3–3],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[kex],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[Rin nuclear import of iCdc25]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Reactions[Rin nuclear import of iCdc25],ParameterGroup=Parameters,Parameter=v" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Values[kin],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 602214085700000 0 1.2044281714e+21 6022140857000 0 6.022140857e+17 12044281714000002 602214085700000 602214085700000 0 0 1.8066422571000001e+19 0 602214085700000 0 6.0221348348591433e+20 602214085700000 1 1 10 0.10000000000000001 0.01 0.10000000000000001 0 0 100 0 0 1 0.01 1 0 0.01 0.10000000000000001 0 0.01 1 0 1 0 1 0.10000000000000001 1 0.00050000000000000001 1 0.01 0.00020000000000000001 0.10000000000000001 1 0 0.01 0.10000000000000001 0.01 0.10000000000000001 0.10000000000000001 1 1 1.0000000000000001e-05 
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
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="true" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="2000"/>
        <Parameter name="StepSize" type="float" value="2"/>
        <Parameter name="Duration" type="float" value="4000"/>
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
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
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
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
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
        <Parameter name="Steady-State" type="key" value=""/>
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
    <PlotSpecification name="Figure 8" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[MPF]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[MPF],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Wee1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[Wee1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Cdc25_active_total]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Aguda1999 - G2 DNA damage checkpoint_1,Vector=Compartments[nucleus],Vector=Metabolites[Cdc25_active_total],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="model.xml">
    <SBMLMap SBMLid="Cdc25Ps216_14_3_3_inactive" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="Cdc25Ps216_active" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="Cdc25Ps216_inactive" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="Cdc25_active" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="Cdc25_active_total" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="Cdc25_inactive" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="Chk1" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="Chk1P" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="MPF" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="R10_p53_synthesis" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="R11_p53_degradation" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="R12_14_3_3_degradation" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="R13_14_3_3_synthesis" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="R14_preMPF_synthesis" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="R15_MPF_degradation" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="R16_Wee1_synthesis" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="R17_Wee1P_degradation" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="R18_Cdc25Ps216_activation" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="R18__Cdc25Ps216_inactivation" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="R1_Chk1_Phosphorylation" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="R1__Chk1_Dephosphorylation" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="R20_p21_synthesis_mediated_by_p53" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="R21_p21_natural_synthesis" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="R22_p21_degradation" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="R23__p21_MPF_unbinding" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="R23_p21_MPF_complex_formation" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="R2_Cdc25_Phosphorylation" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="R2__Cdc25_Dephosphorylation" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="R2__Cdc25_Phosphorylation" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="R3___Cdc25_protein_14_3_3_unbinding" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="R3___protein_14_3_3_Cdc25_binding" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="R4_Rad3_ATM_natural_synthesis" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="R5_Rad3_ATM_degradation" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="R6_14_3_3_synthesis_mediated_by_p53" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="R7_Cdc25_Activation" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="R7__Cdc25_inactivation" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="R8_Wee1_Phosphorylation" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="R8__Wee1_Dephosphorylation" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="R9_MPF_activation" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="R9__MPF_inactivation" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="Rad3_ATM" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="Rex_Nuclear_export_of_iCdc25Ps216_14_3_3" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="Rin_nuclear_import_of_iCdc25" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="Wee1" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="Wee1_phosphorylated" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="k10" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="k11" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="k12" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="k13" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="k14" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="k14_0" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="k15" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="k16" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="k17" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="k18" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="k18_0" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="k1_0" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="k20" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="k21" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="k22" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="k23" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="k2_0" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="k2_1" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="k5" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="k6" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="k7" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="k7_0" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="k8" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="k8_0" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="k8_1" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="k9" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="k9_0" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="k9_1" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="k_23" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="k_3" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="k_Plk1" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="k_Plk1_0" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="k_ctak1" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="k_ctak1_0" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="kex" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="kin" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="nucleus" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="p21" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="p21_MPF" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="p53" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="preMPF" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="protein_14_3_3" COPASIkey="Metabolite_22"/>
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
    <UnitDefinition key="Unit_32" name="minute" symbol="min">
      <Expression>
        60*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
