<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 196) (http://www.copasi.org) at 2018-11-07 15:16:40 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="196" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-09-27T16:21:05Z</dcterms:W3CDTF>
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
    <Function key="Function_43" name="function for cdk1a degradation by apc_1" type="UserDefined" reversible="false">
      <Expression>
        k_dest*APC_C_active*Cyclin_B1_Cdk1_complex_unphosphorylated
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_345" name="APC_C_active" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_346" name="Cyclin_B1_Cdk1_complex_unphosphorylated" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_347" name="k_dest" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="function for cdk1a degradation by apc_2" type="UserDefined" reversible="false">
      <Expression>
        k_dest*APC_C_active*Cyclin_B1_Cdk1_complex_phosphorylated
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_350" name="APC_C_active" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_349" name="Cyclin_B1_Cdk1_complex_phosphorylated" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_348" name="k_dest" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="function for cdk inactivation_1" type="UserDefined" reversible="false">
      <Expression>
        r^(1/2)*k_cdk1_off*(1+p/((Cyclin_B1_Cdk1_complex_phosphorylated/ec50_wee1)^n_wee1+1))*Cyclin_B1_Cdk1_complex_phosphorylated
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_353" name="Cyclin_B1_Cdk1_complex_phosphorylated" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_352" name="ec50_wee1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="k_cdk1_off" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_354" name="n_wee1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_355" name="p" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="r" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="function for cdk1 activation_1" type="UserDefined" reversible="false">
      <Expression>
        1/r^(1/2)*k_cdk1_on*(1+p/(1+(ec50_cdc25/Cyclin_B1_Cdk1_complex_phosphorylated)^n_cdc25))*Cyclin_B1_Cdk1_complex_unphosphorylated
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_362" name="Cyclin_B1_Cdk1_complex_phosphorylated" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_361" name="Cyclin_B1_Cdk1_complex_unphosphorylated" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_360" name="ec50_cdc25" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="k_cdk1_on" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="n_cdc25" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="p" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="r" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="function for plx1 activation_1" type="UserDefined" reversible="false">
      <Expression>
        k_plxon/(1+(ec50_plx/Cyclin_B1_Cdk1_complex_phosphorylated)^n_plx)*(Plx1_total-Plx1_active)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_370" name="Cyclin_B1_Cdk1_complex_phosphorylated" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_369" name="Plx1_active" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_368" name="Plx1_total" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_367" name="ec50_plx" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="k_plxon" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_365" name="n_plx" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="function for apc activation_1" type="UserDefined" reversible="false">
      <Expression>
        k_apc_on/(1+(ec50_apc/Plx1_active)^n_apc)*(APC_C_total-APC_C_active)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_375" name="APC_C_active" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_374" name="APC_C_total" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_373" name="Plx1_active" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_372" name="ec50_apc" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="k_apc_on" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_364" name="n_apc" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
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
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/8355"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/24523664"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/doi/10.1371/journal.pbio.1001788"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T15:14:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>matt.maire@ebi.ac.uk</vCard:EMAIL>
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
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>ashleythomasxavier@gmail.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Xavier</vCard:Family>
            <vCard:Given>Ashley</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T15:14:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2018-11-07T15:16:19</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0051726"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <p>Mathematical modelling of cell cycle at the very first cycles in Early Xenopus laevis Embryos</p>
  </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="nuclear" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C13361" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_24" name="Cyclin B1 Cdk1 complex phosphorylated" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P35567" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13350" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032991" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>cdk1a in the publication</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Cyclin B1 Cdk1 complex unphosphorylated" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P35567" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13350" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032991" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>_named cdk1i in the publication</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="Plx1_active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002354" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P70032" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="APC/C active" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002354" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q6GQ63" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="Plx1_total" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P70032" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="APC/C total" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q6GQ63" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="Cyclin B1 Cdk1 complex total" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P35567" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13350" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032991" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex unphosphorylated],Reference=Concentration>+&lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex phosphorylated],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_131" name="k_synth" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_131">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_130" name="k_dest" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_130">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_129" name="ec50_cdc25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_129">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_128" name="n_cdc25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_128">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_127" name="ec50_wee1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_127">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_126" name="n_wee1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_126">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_125" name="k_cdk1_on" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_125">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_124" name="k_cdk1_off" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_124">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_123" name="p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_123">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:27:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_122" name="ec50_plx" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_122">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_121" name="ec50_apc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_121">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_120" name="n_apc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_120">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_119" name="n_plx" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_119">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_118" name="k_plxon" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_118">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_117" name="k_plx_off" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_117">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_116" name="k_apc_on" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_116">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_115" name="k_apc_off" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_115">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_114" name="r" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_114">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T16:46:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1/(2*(1+3/(1+exp((70-&lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Reference=Time>)/&lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[tau],Reference=Value>)))^2)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_113" name="tau" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_113">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T17:31:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_25" name="Cyclin B1 Cdk1 phosphorylated synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61408" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7583" name="v" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="Cyclin B1 Cdk1 unphosphorylated degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7604" name="k_dest" value="0.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="Cyclin B1 Cdk1 phosphorylated degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4799" name="k_dest" value="0.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="Cyclin B1 Cdk1 phosphorylated dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4801" name="ec50_wee1" value="35"/>
          <Constant key="Parameter_4818" name="k_cdk1_off" value="0.0354"/>
          <Constant key="Parameter_4802" name="n_wee1" value="3.5"/>
          <Constant key="Parameter_4804" name="p" value="5"/>
          <Constant key="Parameter_4803" name="r" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="ModelValue_114"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="Cyclin B1 Cdk1 phosphorylated phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4800" name="ec50_cdc25" value="30"/>
          <Constant key="Parameter_4807" name="k_cdk1_on" value="0.0354"/>
          <Constant key="Parameter_4805" name="n_cdc25" value="11"/>
          <Constant key="Parameter_4808" name="p" value="5"/>
          <Constant key="Parameter_4810" name="r" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="ModelValue_114"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="Plx1 activation by active Cdk1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000656" />
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
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4809" name="ec50_plx" value="60"/>
          <Constant key="Parameter_4806" name="k_plxon" value="1.5"/>
          <Constant key="Parameter_4813" name="n_plx" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="Plx1 inactivation after Cdk1 inactivated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T15:36:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4811" name="k1" value="0.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="Activation of APC/CCdc20 by active Plx1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000656" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4814" name="ec50_apc" value="0.5"/>
          <Constant key="Parameter_4816" name="k_apc_on" value="1.5"/>
          <Constant key="Parameter_4815" name="n_apc" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="inactivation of APC/CCdc20 after Plx1 is inactivated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-07T15:50:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4812" name="k1" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex phosphorylated]" value="3.6132845142000003e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex unphosphorylated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[Plx1_active]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[APC/C active]" value="6.0221408570000002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[Plx1_total]" value="6.0221408570000002e+20" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[APC/C total]" value="6.0221408570000002e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex total]" value="3.6132845142000003e+22" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[k_synth]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[k_dest]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[ec50_cdc25]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[n_cdc25]" value="11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[ec50_wee1]" value="35" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[n_wee1]" value="3.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[k_cdk1_on]" value="0.035400000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[k_cdk1_off]" value="0.035400000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[p]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[ec50_plx]" value="60" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[ec50_apc]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[n_apc]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[n_plx]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[k_plxon]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[k_plx_off]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[k_apc_on]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[k_apc_off]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[r]" value="0.49999992467003573" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[tau]" value="4" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated synthesis],ParameterGroup=Parameters,Parameter=v" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[k_synth],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Cyclin B1 Cdk1 unphosphorylated degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Cyclin B1 Cdk1 unphosphorylated degradation],ParameterGroup=Parameters,Parameter=k_dest" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[k_dest],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated degradation],ParameterGroup=Parameters,Parameter=k_dest" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[k_dest],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated dephosphorylation],ParameterGroup=Parameters,Parameter=ec50_wee1" value="35" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[ec50_wee1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated dephosphorylation],ParameterGroup=Parameters,Parameter=k_cdk1_off" value="0.035400000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[k_cdk1_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated dephosphorylation],ParameterGroup=Parameters,Parameter=n_wee1" value="3.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[n_wee1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated dephosphorylation],ParameterGroup=Parameters,Parameter=p" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated dephosphorylation],ParameterGroup=Parameters,Parameter=r" value="0.49999992467003573" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated phosphorylation],ParameterGroup=Parameters,Parameter=ec50_cdc25" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[ec50_cdc25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated phosphorylation],ParameterGroup=Parameters,Parameter=k_cdk1_on" value="0.035400000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[k_cdk1_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated phosphorylation],ParameterGroup=Parameters,Parameter=n_cdc25" value="11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[n_cdc25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated phosphorylation],ParameterGroup=Parameters,Parameter=p" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Cyclin B1 Cdk1 phosphorylated phosphorylation],ParameterGroup=Parameters,Parameter=r" value="0.49999992467003573" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Plx1 activation by active Cdk1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Plx1 activation by active Cdk1],ParameterGroup=Parameters,Parameter=ec50_plx" value="60" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[ec50_plx],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Plx1 activation by active Cdk1],ParameterGroup=Parameters,Parameter=k_plxon" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[k_plxon],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Plx1 activation by active Cdk1],ParameterGroup=Parameters,Parameter=n_plx" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[n_plx],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Plx1 inactivation after Cdk1 inactivated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Plx1 inactivation after Cdk1 inactivated],ParameterGroup=Parameters,Parameter=k1" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[k_plx_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Activation of APC/CCdc20 by active Plx1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Activation of APC/CCdc20 by active Plx1],ParameterGroup=Parameters,Parameter=ec50_apc" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[ec50_apc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Activation of APC/CCdc20 by active Plx1],ParameterGroup=Parameters,Parameter=k_apc_on" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[k_apc_on],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[Activation of APC/CCdc20 by active Plx1],ParameterGroup=Parameters,Parameter=n_apc" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[n_apc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[inactivation of APC/CCdc20 after Plx1 is inactivated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Reactions[inactivation of APC/CCdc20 after Plx1 is inactivated],ParameterGroup=Parameters,Parameter=k1" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[k_apc_off],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="ModelValue_114"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_131"/>
      <StateTemplateVariable objectReference="ModelValue_130"/>
      <StateTemplateVariable objectReference="ModelValue_129"/>
      <StateTemplateVariable objectReference="ModelValue_128"/>
      <StateTemplateVariable objectReference="ModelValue_127"/>
      <StateTemplateVariable objectReference="ModelValue_126"/>
      <StateTemplateVariable objectReference="ModelValue_125"/>
      <StateTemplateVariable objectReference="ModelValue_124"/>
      <StateTemplateVariable objectReference="ModelValue_123"/>
      <StateTemplateVariable objectReference="ModelValue_122"/>
      <StateTemplateVariable objectReference="ModelValue_121"/>
      <StateTemplateVariable objectReference="ModelValue_120"/>
      <StateTemplateVariable objectReference="ModelValue_119"/>
      <StateTemplateVariable objectReference="ModelValue_118"/>
      <StateTemplateVariable objectReference="ModelValue_117"/>
      <StateTemplateVariable objectReference="ModelValue_116"/>
      <StateTemplateVariable objectReference="ModelValue_115"/>
      <StateTemplateVariable objectReference="ModelValue_113"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 3.6132845142000003e+22 0 6.0221408570000002e+20 0 3.6132845142000003e+22 0.49999992467003573 6.0221408570000002e+20 6.0221408570000002e+20 1 1.5 0.40000000000000002 30 11 35 3.5 0.035400000000000001 0.035400000000000001 5 60 0.5 4 5 1.5 0.125 1.5 0.14999999999999999 4 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_1" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="output.txt" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1600"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="160"/>
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
    <Task key="Task_2" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_3" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_4" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_5" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_8" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_9" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_10" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_11" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_0" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value=""/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_0" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_7" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_8" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <Report key="Report_18" name="Time, Concentrations, Volumes, and Global Quantity Values" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        A table of time, variable species concentrations, variable compartment volumes, and variable global quantity values.
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Reference=Time"/>
        <Object cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex phosphorylated],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex unphosphorylated],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[Plx1_active],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[APC/C active],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[APC/C total],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex total],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[r],Reference=Value"/>
      </Table>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Cyclin B1 Cdk1 complex phosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex phosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Cyclin B1 Cdk1 complex unphosphorylated]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex unphosphorylated],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Plx1_active]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[Plx1_active],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[APC/C active]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[APC/C active],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[APC/C total]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[APC/C total],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Cyclin B1 Cdk1 complex total]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Compartments[nuclear],Vector=Metabolites[Cyclin B1 Cdk1 complex total],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[r]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos,Vector=Values[r],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="tsai2014.xml">
    <SBMLMap SBMLid="APC_C_active" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="APC_C_total" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="Activation_of_APC_CCdc20_by_active_Plx1" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="Cyclin_B1_Cdk1_complex_phosphorylated" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="Cyclin_B1_Cdk1_complex_total" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="Cyclin_B1_Cdk1_complex_unphosphorylated" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="Cyclin_B1_Cdk1_phosphorylated_degradation" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="Cyclin_B1_Cdk1_phosphorylated_dephosphorylation" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="Cyclin_B1_Cdk1_phosphorylated_phosphorylation" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="Cyclin_B1_Cdk1_phosphorylated_synthesis" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="Cyclin_B1_Cdk1_unphosphorylated_degradation" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="Plx1_activation_by_active_Cdk1" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="Plx1_active" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="Plx1_inactivation_after_Cdk1_inactivated" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="Plx1_total" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="ec50_apc" COPASIkey="ModelValue_121"/>
    <SBMLMap SBMLid="ec50_cdc25" COPASIkey="ModelValue_129"/>
    <SBMLMap SBMLid="ec50_plx" COPASIkey="ModelValue_122"/>
    <SBMLMap SBMLid="ec50_wee1" COPASIkey="ModelValue_127"/>
    <SBMLMap SBMLid="inactivation_of_APC_CCdc20_after_Plx1_is_inactivated" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="k_apc_off" COPASIkey="ModelValue_115"/>
    <SBMLMap SBMLid="k_apc_on" COPASIkey="ModelValue_116"/>
    <SBMLMap SBMLid="k_cdk1_off" COPASIkey="ModelValue_124"/>
    <SBMLMap SBMLid="k_cdk1_on" COPASIkey="ModelValue_125"/>
    <SBMLMap SBMLid="k_dest" COPASIkey="ModelValue_130"/>
    <SBMLMap SBMLid="k_plx_off" COPASIkey="ModelValue_117"/>
    <SBMLMap SBMLid="k_plxon" COPASIkey="ModelValue_118"/>
    <SBMLMap SBMLid="k_synth" COPASIkey="ModelValue_131"/>
    <SBMLMap SBMLid="n_apc" COPASIkey="ModelValue_120"/>
    <SBMLMap SBMLid="n_cdc25" COPASIkey="ModelValue_128"/>
    <SBMLMap SBMLid="n_plx" COPASIkey="ModelValue_119"/>
    <SBMLMap SBMLid="n_wee1" COPASIkey="ModelValue_126"/>
    <SBMLMap SBMLid="nuclear" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="p" COPASIkey="ModelValue_123"/>
    <SBMLMap SBMLid="r" COPASIkey="ModelValue_114"/>
    <SBMLMap SBMLid="tau" COPASIkey="ModelValue_113"/>
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
