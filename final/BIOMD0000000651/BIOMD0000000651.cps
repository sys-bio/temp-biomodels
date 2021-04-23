<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-01-29 10:59:43 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="22" versionDevel="170" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_62" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_39" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_67" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_71" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Function for PI3K activation/deactivation_1" type="UserDefined" reversible="true">
      <Expression>
        (k2f*aIRS+k2fa*aRTK)*PI3K-k2r*aPI3K
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_268" name="PI3K" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_254" name="aIRS" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_272" name="aPI3K" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_266" name="aRTK" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_264" name="k2f" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_258" name="k2fa" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="k2r" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for mass action with modifier_1" type="UserDefined" reversible="true">
      <Expression>
        k3f*Akt*aPI3K-k3r*aAkt
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="Akt" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_275" name="aAkt" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_265" name="aPI3K" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_273" name="k3f" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="k3r" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for mTOC1 acivation/deactivation_1" type="UserDefined" reversible="true">
      <Expression>
        k4f*mTORC1*aAkt-k4r*amTORC1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="aAkt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_280" name="amTORC1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_276" name="k4f" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="k4r" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_246" name="mTORC1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for S6K activation/deactivation_1" type="UserDefined" reversible="true">
      <Expression>
        k5f*S6K*amTORC1-k5r*aS6K
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="S6K" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_285" name="aS6K" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_274" name="amTORC1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_281" name="k5f" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="k5r" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for mass action with modifier_2" type="UserDefined" reversible="false">
      <Expression>
        k6f*IRS*aS6K-k6r*iIRS
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_282" name="IRS" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_279" name="aS6K" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_290" name="iIRS" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_286" name="k6f" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="k6r" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for RTK activation/deactivation_1" type="UserDefined" reversible="true">
      <Expression>
        (k7f+k7fa*FOXO)*RTK-k7r*aRTK
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_284" name="FOXO" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_293" name="RTK" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_297" name="aRTK" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_291" name="k7f" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="k7fa" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="k7r" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for mass action with modifier_3" type="UserDefined" reversible="true">
      <Expression>
        k8f*RasGDP*aRTK-k8r*RasGTP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_294" name="RasGDP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_301" name="RasGTP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_267" name="aRTK" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_298" name="k8f" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="k8r" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for mass action with modifier_4" type="UserDefined" reversible="true">
      <Expression>
        k9f*Raf*RasGTP-k9r*aRaf
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_289" name="Raf" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_296" name="RasGTP" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_306" name="aRaf" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_302" name="k9f" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="k9r" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for mass action with modifier_5" type="UserDefined" reversible="true">
      <Expression>
        k10f*MEK*aRaf-k10r*aMEK
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_303" name="MEK" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_311" name="aMEK" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_300" name="aRaf" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_307" name="k10f" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="k10r" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for mass action with modifier_6" type="UserDefined" reversible="true">
      <Expression>
        k11f*ERK*aMEK-k11r*aERK
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_308" name="ERK" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_316" name="aERK" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_305" name="aMEK" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_312" name="k11f" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="k11r" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for mass action with modifier_7" type="UserDefined" reversible="true">
      <Expression>
        k12f*Raf*aERK-k12r*iRaf
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_313" name="Raf" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_310" name="aERK" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_321" name="iRaf" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_317" name="k12f" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="k12r" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for mass action with modifier_8" type="UserDefined" reversible="true">
      <Expression>
        k13f*RTK*aERK-k13r*iRTK
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_318" name="RTK" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_315" name="aERK" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_326" name="iRTK" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_322" name="k13f" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="k13r" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for mass action with modifier_9" type="UserDefined" reversible="true">
      <Expression>
        k14f*FOXO*aAkt-k14r*iFOXO
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_323" name="FOXO" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_320" name="aAkt" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_331" name="iFOXO" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_327" name="k14f" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="k14r" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C16212"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:26481970"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T13:20:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>sheriff@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Sheriff</vCard:Family>
            <vCard:Given>Rahuman</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
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
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>efairbanks@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Fairbanks</vCard:Family>
                <vCard:Given>Emma Louise</vCard:Given>
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
        <dcterms:W3CDTF>2018-01-24T09:32:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:hasPart rdf:resource="urn:miriam:pw:PW:0000102"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:pw:PW:0000180"/>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:biomodels.db:MODEL1708250003"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:biomodels.db:BIOMD0000000651"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <div class="dc:title">Feedback regulation in cell signalling:
Lessons for cancer therapeutics</div>
    <div class="dc:bibliographicCitation">
      <p>This model is described in the article:</p>
      <div class="bibo:title">
        <a href="http://identifiers.org/pubmed/26481970" title="Access to this publication">Feedback regulation in cell
    signalling: Lessons for cancer therapeutics.</a>
      </div>
      <div class="bibo:authorList">Nguyen LK, Kholodenko BN.</div>
      <div class="bibo:Journal">Semin. Cell Dev. Biol. 2016 Feb; 50:
  85-94</div>
      <p>Abstract:</p>
      <div class="bibo:abstract">
        <p>The notion of feedback is fundamental for understanding
    signal transduction networks. Feedback loops attenuate or
    amplify signals, change the network dynamics and modify the
    input-output relationships between the signal and the target.
    Negative feedback provides robustness to noise and adaptation
    to perturbations, but as a double-edged sword can prevent
    effective pathway inhibition by a drug. Positive feedback
    brings about switch-like network responses and can convert
    analog input signals into digital outputs, triggering cell fate
    decisions and phenotypic changes. We show how a multitude of
    protein-protein interactions creates hidden feedback loops in
    signal transduction cascades. Drug treatments that interfere
    with feedback regulation can cause unexpected adverse effects.
    Combinatorial molecular interactions generated by pathway
    crosstalk and feedback loops often bypass the block caused by
    targeted therapies against oncogenic mutated kinases. We
    discuss mechanisms of drug resistance caused by network
    adaptations and suggest that development of effective drug
    combinations requires understanding of how feedback loops
    modulate drug responses.</p>
      </div>
    </div>
    <div class="dc:publisher">
      <p>This model is hosted on 
  <a href="http://www.ebi.ac.uk/biomodels/">BioModels Database</a>
  and identified by: 
  <a href="http://identifiers.org/biomodels.db/MODEL1708250003">MODEL1708250003</a>.</p>
      <p>To cite BioModels Database, please use: 
  <a href="http://identifiers.org/pubmed/20587024" title="Latest BioModels Database publication">BioModels Database:
  An enhanced, curated and annotated resource for published
  quantitative kinetic models</a>.</p>
    </div>
    <div class="dc:license">
      <p>To the extent possible under law, all copyright and related or
  neighbouring rights to this encoded model have been dedicated to
  the public domain worldwide. Please refer to 
  <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Access to: CC0 1.0 Universal (CC0 1.0), Public Domain Dedication">CC0
  Public Domain Dedication</a> for more information.</p>
    </div>
  </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-29T10:52:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="IRS" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T15:03:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P35568" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="aIRS" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-24T10:18:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P35568" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="iIRS" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T15:08:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000015" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="PI3K" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-24T10:19:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:C17270" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="aPI3K" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-24T10:19:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C17270" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Akt" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-24T10:19:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P31749" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="aAkt" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T15:04:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P31749" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="mTORC1" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-24T10:09:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P42345" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="amTORC1" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-24T12:55:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isEncodedBy rdf:resource="urn:miriam:uniprot:P42345" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="S6K" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-24T14:16:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P23443" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="aS6K" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-24T13:50:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P23443" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="FOXO" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-24T13:56:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q12778" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="iFOXO" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-24T10:19:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q12778" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="RTK" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-24T14:15:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q08345" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="aRTK" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-24T13:03:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q08345" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="iRTK" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-24T14:06:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q08345" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="RasGDP" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-24T14:08:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P01112" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="RasGTP" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-24T10:19:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P01112" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="Raf" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-24T14:08:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P04049" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="aRaf" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-24T12:59:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P04049" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="iRaf" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-24T10:19:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P04049" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="MEK" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-24T10:12:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02750" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="aMEK" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-24T12:51:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02750" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="ERK" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-24T13:56:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P27361" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="aERK" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-24T12:30:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P27361" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="AktI" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <bqbiol:hasProperty rdf:resource="urn:miriam:chebi:CHEBI:35222" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-24T11:34:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="iAkt" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-24T10:19:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P31749" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="MEKI" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <bqbiol:hasProperty rdf:resource="urn:miriam:chebi:CHEBI:35222" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-24T09:36:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="iMEK" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-24T10:14:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q02750" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="k1f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k1r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="k2f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k2fa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k2r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k3f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="k3r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="k4f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="k4r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="k5f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="k5r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="k6f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="k6r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="k7f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="k7fa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="k7r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="k8f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="k8r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="k9f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="k9r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="k10f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="k10r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="k11f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="k11r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="k12f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="k12r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="k13f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="k13r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="k14f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="k14r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="k15f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="k15r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="k16f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="k16r" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="IRS  activation/deactivation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T13:42:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4999" name="k1" value="0.01"/>
          <Constant key="Parameter_5000" name="k2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="PI3K activation/deactivation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T13:44:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5001" name="k2f" value="0.001"/>
          <Constant key="Parameter_5002" name="k2fa" value="0.001"/>
          <Constant key="Parameter_5003" name="k2r" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Akt activation/deactivation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T13:48:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5004" name="k3f" value="0.001"/>
          <Constant key="Parameter_5005" name="k3r" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="mTOC1 acivation/deactivation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T13:51:05Z</dcterms:W3CDTF>
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
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5006" name="k4f" value="0.001"/>
          <Constant key="Parameter_4994" name="k4r" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="S6K activation/deactivation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T13:53:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4995" name="k5f" value="0.001"/>
          <Constant key="Parameter_4996" name="k5r" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="IRS inhibition" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T14:20:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4997" name="k6f" value="0.1"/>
          <Constant key="Parameter_4998" name="k6r" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="RTK activation/deactivation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T14:31:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4968" name="k7f" value="0.01"/>
          <Constant key="Parameter_4969" name="k7fa" value="0.01"/>
          <Constant key="Parameter_4970" name="k7r" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="RasGDP  activation/deactivation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T14:40:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4971" name="k8f" value="0.001"/>
          <Constant key="Parameter_4972" name="k8r" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Raf activation/deactivation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T14:43:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4973" name="k9f" value="0.001"/>
          <Constant key="Parameter_4974" name="k9r" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="MEK activation/deactivation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T14:44:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4975" name="k10f" value="0.001"/>
          <Constant key="Parameter_4976" name="k10r" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="ERK activation/deactivation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T14:45:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4977" name="k11f" value="0.001"/>
          <Constant key="Parameter_4978" name="k11r" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="Raf inhibition" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T14:46:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4979" name="k12f" value="0.01"/>
          <Constant key="Parameter_4980" name="k12r" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="RTK inhibition" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T14:49:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4981" name="k13f" value="0.1"/>
          <Constant key="Parameter_4982" name="k13r" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="FOXO inhibition" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T14:50:53Z</dcterms:W3CDTF>
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
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4983" name="k14f" value="0.1"/>
          <Constant key="Parameter_4984" name="k14r" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="Akt inhibition" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T14:52:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4985" name="k1" value="0.01"/>
          <Constant key="Parameter_4986" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_5"/>
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="MEK inhibition" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-23T14:53:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4987" name="k1" value="0.01"/>
          <Constant key="Parameter_4988" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_21"/>
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[IRS]" value="6.0221408570000005e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[aIRS]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[iIRS]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[PI3K]" value="6.0221408570000005e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[aPI3K]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[Akt]" value="6.0221408570000005e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[aAkt]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[mTORC1]" value="1.8066422570999939e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[amTORC1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[S6K]" value="1.8066422570999939e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[aS6K]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[FOXO]" value="1.2044281714000001e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[iFOXO]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[RTK]" value="1.2044281714000001e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[aRTK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[iRTK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[RasGDP]" value="6.0221408570000005e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[RasGTP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[Raf]" value="6.0221408570000005e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[aRaf]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[iRaf]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[MEK]" value="1.8066422570999939e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[aMEK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[ERK]" value="5.4199267712999764e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[aERK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[AktI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[iAkt]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[MEKI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[iMEK]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k1f]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k1r]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k2f]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k2fa]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k2r]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k3f]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k3r]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k4f]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k4r]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k5f]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k5r]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k6f]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k6r]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k7f]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k7fa]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k7r]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k8f]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k8r]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k9f]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k9r]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k10f]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k10r]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k11f]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k11r]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k12f]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k12r]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k13f]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k13r]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k14f]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k14r]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k15f]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k15r]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k16f]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k16r]" value="0.001" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[IRS  activation/deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[IRS  activation/deactivation],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k1f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[IRS  activation/deactivation],ParameterGroup=Parameters,Parameter=k2" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k1r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[PI3K activation/deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[PI3K activation/deactivation],ParameterGroup=Parameters,Parameter=k2f" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k2f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[PI3K activation/deactivation],ParameterGroup=Parameters,Parameter=k2fa" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k2fa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[PI3K activation/deactivation],ParameterGroup=Parameters,Parameter=k2r" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k2r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[Akt activation/deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[Akt activation/deactivation],ParameterGroup=Parameters,Parameter=k3f" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k3f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[Akt activation/deactivation],ParameterGroup=Parameters,Parameter=k3r" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k3r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[mTOC1 acivation/deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[mTOC1 acivation/deactivation],ParameterGroup=Parameters,Parameter=k4f" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k4f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[mTOC1 acivation/deactivation],ParameterGroup=Parameters,Parameter=k4r" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k4r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[S6K activation/deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[S6K activation/deactivation],ParameterGroup=Parameters,Parameter=k5f" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k5f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[S6K activation/deactivation],ParameterGroup=Parameters,Parameter=k5r" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k5r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[IRS inhibition]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[IRS inhibition],ParameterGroup=Parameters,Parameter=k6f" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k6f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[IRS inhibition],ParameterGroup=Parameters,Parameter=k6r" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k6r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[RTK activation/deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[RTK activation/deactivation],ParameterGroup=Parameters,Parameter=k7f" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k7f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[RTK activation/deactivation],ParameterGroup=Parameters,Parameter=k7fa" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k7fa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[RTK activation/deactivation],ParameterGroup=Parameters,Parameter=k7r" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k7r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[RasGDP  activation/deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[RasGDP  activation/deactivation],ParameterGroup=Parameters,Parameter=k8f" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k8f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[RasGDP  activation/deactivation],ParameterGroup=Parameters,Parameter=k8r" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k8r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[Raf activation/deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[Raf activation/deactivation],ParameterGroup=Parameters,Parameter=k9f" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k9f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[Raf activation/deactivation],ParameterGroup=Parameters,Parameter=k9r" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k9r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[MEK activation/deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[MEK activation/deactivation],ParameterGroup=Parameters,Parameter=k10f" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k10f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[MEK activation/deactivation],ParameterGroup=Parameters,Parameter=k10r" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k10r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[ERK activation/deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[ERK activation/deactivation],ParameterGroup=Parameters,Parameter=k11f" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k11f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[ERK activation/deactivation],ParameterGroup=Parameters,Parameter=k11r" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k11r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[Raf inhibition]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[Raf inhibition],ParameterGroup=Parameters,Parameter=k12f" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k12f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[Raf inhibition],ParameterGroup=Parameters,Parameter=k12r" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k12r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[RTK inhibition]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[RTK inhibition],ParameterGroup=Parameters,Parameter=k13f" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k13f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[RTK inhibition],ParameterGroup=Parameters,Parameter=k13r" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k13r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[FOXO inhibition]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[FOXO inhibition],ParameterGroup=Parameters,Parameter=k14f" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k14f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[FOXO inhibition],ParameterGroup=Parameters,Parameter=k14r" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k14r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[Akt inhibition]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[Akt inhibition],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k15f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[Akt inhibition],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k15r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[MEK inhibition]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[MEK inhibition],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k16f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Reactions[MEK inhibition],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Values[k16r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
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
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 6.0221408570000005e+22 6.0221408570000005e+22 1.2044281714000001e+23 6.0221408570000005e+22 1.8066422570999939e+23 1.8066422570999939e+23 1.8066422570999939e+23 1.2044281714000001e+23 6.0221408570000005e+22 6.0221408570000005e+22 5.4199267712999764e+23 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.01 0.01 0.001 0.001 0.01 0.001 0.01 0.001 0.01 0.001 0.01 0.10000000000000001 0.001 0.01 0.01 0.01 0.001 0.01 0.001 0.01 0.001 0.01 0.001 0.01 0.01 0.001 0.10000000000000001 0.001 0.10000000000000001 0.001 0.01 0.001 0.01 0.001 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="3600"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="3600"/>
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
            <Parameter name="Maximum" type="float" value="500"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Number of steps" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[MEKI],Reference=InitialConcentration"/>
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
    <PlotSpecification name="plot" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[aERK]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[aERK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[aPI3K]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[aPI3K],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[aS6K]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Nguyen2016 - Feedback regulation in cell signalling: Lessons for cancer therapeutics,Vector=Compartments[compartment],Vector=Metabolites[aS6K],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="BIOMD0000000651.xml">
    <SBMLMap SBMLid="Akt" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="AktI" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="Akt_activation_deactivation" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Akt_inhibition" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="ERK" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="ERK_activation_deactivation" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="FOXO" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="FOXO_inhibition" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="Function_for_PI3K_activation_deactivation_1" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_RTK_activation_deactivation_1" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_S6K_activation_deactivation_1" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_mTOC1_acivation_deactivation_1" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_mass_action_with_modifier_1" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Function_for_mass_action_with_modifier_2" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Function_for_mass_action_with_modifier_3" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_mass_action_with_modifier_4" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_mass_action_with_modifier_5" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Function_for_mass_action_with_modifier_6" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_for_mass_action_with_modifier_7" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_for_mass_action_with_modifier_8" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Function_for_mass_action_with_modifier_9" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="IRS" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="IRS__activation_deactivation" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="IRS_inhibition" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="MEK" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="MEKI" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="MEK_activation_deactivation" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="MEK_inhibition" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="PI3K" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="PI3K_activation_deactivation" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="RTK" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="RTK_activation_deactivation" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="RTK_inhibition" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="Raf" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="Raf_activation_deactivation" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="Raf_inhibition" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="RasGDP" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="RasGDP__activation_deactivation" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="RasGTP" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="S6K" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="S6K_activation_deactivation" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="aAkt" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="aERK" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="aIRS" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="aMEK" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="aPI3K" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="aRTK" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="aRaf" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="aS6K" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="amTORC1" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="iAkt" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="iFOXO" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="iIRS" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="iMEK" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="iRTK" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="iRaf" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="k10f" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="k10r" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="k11f" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="k11r" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="k12f" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="k12r" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="k13f" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="k13r" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="k14f" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="k14r" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="k15f" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="k15r" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="k16f" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="k16r" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="k1f" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="k1r" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="k2f" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="k2fa" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="k2r" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="k3f" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="k3r" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="k4f" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="k4r" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="k5f" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="k5r" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="k6f" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="k6r" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="k7f" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="k7fa" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="k7r" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="k8f" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="k8r" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="k9f" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="k9r" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="mTOC1_acivation_deactivation" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="mTORC1" COPASIkey="Metabolite_7"/>
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
