<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.28 (Build 221) (http://www.copasi.org) at 2020-04-16T08:41:31Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="28" versionDevel="221" copasiSourcesModified="0">
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
    <Function key="Function_40" name="Function for re3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-04T22:44:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        rho_E*s1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_263" name="rho_E" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_264" name="s1" order="1" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for re7" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-04T22:44:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        pi_a*s2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_262" name="pi_a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="s2" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for re1_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-04T22:44:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        beta_a*s1*s3*default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="beta_a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="default" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_250" name="s1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_265" name="s3" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1" simulationType="time" timeUnit="d" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/132504"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/39107"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <bqmodel:isDerivedFrom>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000546"/>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1405150000"/>
        <rdf:li rdf:resource="http://identifiers.org/doid/DOID:8469"/>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0002250"/>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0045087"/>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/132504"/>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/39107"/>
      </rdf:Bag>
    </bqmodel:isDerivedFrom>
    <bqmodel:isDerivedFrom>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1406230000"/>
      </rdf:Bag>
    </bqmodel:isDerivedFrom>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <bqbiol:isDescribedBy rdf:resource="http://identifiers.org/biomodels.db/MODEL1406230000"/>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/20410284"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-09-04T16:07:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>viji@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Chelliah</vCard:Family>
                <vCard:Given>Vijayalakshmi</vCard:Given>
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
            <vCard:EMAIL>sheriff@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Rahuman</vCard:Family>
                <vCard:Given>Sheriff</vCard:Given>
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
            <vCard:EMAIL>alain_leblanc@urmc.rochester.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Leblanc</vCard:Family>
                <vCard:Given>Alain</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Rochester Medical Center</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2014-10-10T11:00:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/doid/DOID:8469"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1405150000"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000546"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0002250"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0045087"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <div class="dc:title">Miao2010 - Innate and adaptive immune
responses to primary Influenza A Virus infection</div>
    <div class="dc:bibliographicCitation">
      <p>This model is described in the article:</p>
      <div class="bibo:title">
        <a href="http://identifiers.org/pubmed/20410284" title="Access to this publication">Quantifying the early immune
    response and adaptive immune response kinetics in mice infected
    with influenza A virus.</a>
      </div>
      <div class="bibo:authorList">Miao H, Hollenbaugh JA, Zand MS,
  Holden-Wiltse J, Mosmann TR, Perelson AS, Wu H, Topham DJ.</div>
      <div class="bibo:Journal">J. Virol. 2010 Jul; 84(13):
  6687-6698</div>
      <p>Abstract:</p>
      <div class="bibo:abstract">
        <p>Seasonal and pandemic influenza A virus (IAV) continues to
    be a public health threat. However, we lack a detailed and
    quantitative understanding of the immune response kinetics to
    IAV infection and which biological parameters most strongly
    influence infection outcomes. To address these issues, we use
    modeling approaches combined with experimental data to
    quantitatively investigate the innate and adaptive immune
    responses to primary IAV infection. Mathematical models were
    developed to describe the dynamic interactions between target
    (epithelial) cells, influenza virus, cytotoxic T lymphocytes
    (CTLs), and virus-specific IgG and IgM. IAV and immune kinetic
    parameters were estimated by fitting models to a large data set
    obtained from primary H3N2 IAV infection of 340 mice. Prior to
    a detectable virus-specific immune response (before day 5), the
    estimated half-life of infected epithelial cells is
    approximately 1.2 days, and the half-life of free infectious
    IAV is approximately 4 h. During the adaptive immune response
    (after day 5), the average half-life of infected epithelial
    cells is approximately 0.5 days, and the average half-life of
    free infectious virus is approximately 1.8 min. During the
    adaptive phase, model fitting confirms that CD8(+) CTLs are
    crucial for limiting infected cells, while virus-specific IgM
    regulates free IAV levels. This may imply that CD4 T cells and
    class-switched IgG antibodies are more relevant for generating
    IAV-specific memory and preventing future infection via a more
    rapid secondary immune response. Also, simulation studies were
    performed to understand the relative contributions of
    biological parameters to IAV clearance. This study provides a
    basis to better understand and predict influenza virus
    immunity.</p>
      </div>
    </div>
    <div class="dc:publisher">
      <p>This model is hosted on 
  <a href="http://www.ebi.ac.uk/biomodels/">BioModels Database</a>
  and identified by: 
  <a href="http://identifiers.org/biomodels.db/BIOMD0000000546">BIOMD0000000546</a>.</p>
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
    <ListOfUnsupportedAnnotations>
      <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:modelVersion>4.0</celldesigner:modelVersion>
  <celldesigner:modelDisplay sizeX="600" sizeY="400"/>
  <celldesigner:listOfCompartmentAliases/>
  <celldesigner:listOfComplexSpeciesAliases/>
  <celldesigner:listOfSpeciesAliases>
    <celldesigner:speciesAlias id="sa1" species="s1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds h="40.0" w="80.0" x="98.0" y="117.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize height="40.0" width="80.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize height="60.0" width="80.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info angle="-1.5707963267948966" state="empty"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa2" species="s2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds h="40.0" w="80.0" x="374.0" y="114.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize height="40.0" width="80.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize height="60.0" width="80.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info angle="-1.5707963267948966" state="empty"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa3" species="s3">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds h="40.0" w="80.0" x="237.0" y="289.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize height="40.0" width="80.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize height="60.0" width="80.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info angle="-1.5707963267948966" state="empty"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa4" species="s4">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds h="25.0" w="70.0" x="53.0" y="14.5"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize height="25.0" width="70.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize height="60.0" width="80.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info angle="-1.5707963267948966" state="empty"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa5" species="s5">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds h="25.0" w="70.0" x="421.0" y="10.5"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize height="25.0" width="70.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize height="60.0" width="80.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info angle="-1.5707963267948966" state="empty"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa6" species="s6">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds h="25.0" w="70.0" x="156.0" y="366.5"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize height="25.0" width="70.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize height="60.0" width="80.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info angle="-1.5707963267948966" state="empty"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa7" species="s7">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds h="25.0" w="70.0" x="495.0" y="295.5"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize height="25.0" width="70.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize height="60.0" width="80.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info angle="-1.5707963267948966" state="empty"/>
    </celldesigner:speciesAlias>
  </celldesigner:listOfSpeciesAliases>
  <celldesigner:listOfGroups/>
  <celldesigner:listOfProteins>
    <celldesigner:protein id="pr1" name="Ep" type="GENERIC"/>
    <celldesigner:protein id="pr2" name="Eps" type="GENERIC"/>
    <celldesigner:protein id="pr3" name="V" type="GENERIC"/>
  </celldesigner:listOfProteins>
  <celldesigner:listOfGenes/>
  <celldesigner:listOfRNAs/>
  <celldesigner:listOfAntisenseRNAs/>
  <celldesigner:listOfLayers/>
  <celldesigner:listOfBlockDiagrams/>
</celldesigner:extension>
      </UnsupportedAnnotation>
    </ListOfUnsupportedAnnotations>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="default" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/fma/FMA:7195"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_3" name="Ep" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/fma/FMA:66768"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
        Initial no. of uninfected and infectible epithelial cells per lung</body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr1</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Eps" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/fma/FMA:66768"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
        This entity is refered as Ep* in the paper. Infected epithelial cells per lung.</body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr2</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re7"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="V" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/132504"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
        Infective viral titer (EID50/ml)</body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr3</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re1"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_5" name="rho_E" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-04T22:44:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
        Net growth rate of uninfected epithelial cells (per day)</body>

        </Comment>
        <Unit>
          mol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="beta_a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-04T22:44:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
        alpha x the infection rate of uninfected epithelial cells ml*per(EID50*day)</body>

        </Comment>
        <Unit>
          mol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="delta_Es" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-04T22:44:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
        Death rate of infected epithelial cells (per day)</body>

        </Comment>
        <Unit>
          mol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="pi_a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-04T22:44:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="c_V" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-04T22:44:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
        Virus clearance rate (reduction of infectious viral titer)  (per day)</body>

        </Comment>
        <Unit>
          mol
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_5" name="re1 Viral Infection of epithelial cells" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-04T22:44:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant alias="sa1" species="s1">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct alias="sa2" species="s2">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line color="ff000000" width="1.0"/>
  <celldesigner:listOfModification>
    <celldesigner:modification aliases="sa3" modifiers="s3" targetLineIndex="-1,3" type="TRIGGER">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget alias="sa3" species="s3">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line color="ff000000" width="1.0"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5412" name="beta_a" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="re3 Growth of uninfected epithelial cells" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-04T22:44:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant alias="sa4" species="s4">
      <celldesigner:linkAnchor position="SSE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct alias="sa1" species="s1">
      <celldesigner:linkAnchor position="NNW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line color="ff000000" width="1.0"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5410" name="rho_E" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="re5 Death of infected epithelial cells" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-04T22:44:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant alias="sa2" species="s2">
      <celldesigner:linkAnchor position="NNE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct alias="sa5" species="s5">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line color="ff000000" width="1.0"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5409" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="re6 Viral Clearance" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-04T22:44:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant alias="sa3" species="s3">
      <celldesigner:linkAnchor position="SSW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct alias="sa6" species="s6">
      <celldesigner:linkAnchor position="NE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line color="ff000000" width="1.0"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5413" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="re7 Production of virus from infected epithelial cells" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-04-04T22:44:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant alias="sa7" species="s7">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct alias="sa3" species="s3">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line color="ff000000" width="1.0"/>
  <celldesigner:listOfModification>
    <celldesigner:modification aliases="sa2" modifiers="s2" targetLineIndex="-1,6" type="TRIGGER">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget alias="sa2" species="s2">
        <celldesigner:linkAnchor position="S"/>
      </celldesigner:linkTarget>
      <celldesigner:line color="ff000000" width="1.0"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5411" name="pi_a" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-16T08:18:49Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Compartments[default]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Compartments[default],Vector=Metabolites[Ep]" value="3.4928422382e+29" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Compartments[default],Vector=Metabolites[Eps]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Compartments[default],Vector=Metabolites[V]" value="6.0221417899999999e+26" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Values[rho_E]" value="6.1999999999999999e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Values[beta_a]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Values[delta_Es]" value="0.59999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Values[pi_a]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Values[c_V]" value="4.2000000000000002" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Reactions[re1 Viral Infection of epithelial cells]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Reactions[re1 Viral Infection of epithelial cells],ParameterGroup=Parameters,Parameter=beta_a" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Values[beta_a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Reactions[re3 Growth of uninfected epithelial cells]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Reactions[re3 Growth of uninfected epithelial cells],ParameterGroup=Parameters,Parameter=rho_E" value="6.1999999999999999e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Values[rho_E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Reactions[re5 Death of infected epithelial cells]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Reactions[re5 Death of infected epithelial cells],ParameterGroup=Parameters,Parameter=k1" value="0.59999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Values[delta_Es],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Reactions[re6 Viral Clearance]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Reactions[re6 Viral Clearance],ParameterGroup=Parameters,Parameter=k1" value="4.2000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Values[c_V],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Reactions[re7 Production of virus from infected epithelial cells]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Reactions[re7 Production of virus from infected epithelial cells],ParameterGroup=Parameters,Parameter=pi_a" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Miao2010 - Innate and adaptive immune responses to primary Influenza A Virus infection_1_1,Vector=Values[pi_a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 3.4928422382e+29 6.0221417899999999e+26 0 1 6.1999999999999999e-08 9.9999999999999995e-07 0.59999999999999998 100 4.2000000000000002 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
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
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
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
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_10" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_9" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_8" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_7" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_5" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_4" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_3" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_2" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_1" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_14" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_9" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_8" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_2" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_1" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_30" name="COPASI autolayout">
      <Dimensions width="352.62193013047101" height="388.847713471497"/>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_31" name="layout_glyph_0" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="262.22018087338103" y="205.42768167662999"/>
            <Dimensions width="36" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_32" name="layout_glyph_1" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="144.45694494434599" y="249.14848241812601"/>
            <Dimensions width="52" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_33" name="layout_glyph_2" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="90.149042154464794" y="134.52136938314601"/>
            <Dimensions width="28" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_34" name="layout_glyph_3" objectRole="invisible">
          <BoundingBox>
            <Position x="332.40453217163702" y="236.70334125390099"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_35" name="layout_glyph_4" objectRole="invisible">
          <BoundingBox>
            <Position x="44.4439956803554" y="0"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_36" name="layout_glyph_5" objectRole="invisible">
          <BoundingBox>
            <Position x="0" y="256.529248443016"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_37" name="layout_glyph_6" objectRole="invisible">
          <BoundingBox>
            <Position x="382.58614412077702" y="362.56718642310801"/>
            <Dimensions width="1" height="1"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_38" name="layout_glyph_7" reaction="Reaction_5">
          <BoundingBox>
            <Position x="200.76469569024701" y="187.16101493023399"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="206.25285748669799" y="184.97497489315899"/>
                <End x="195.276533893795" y="189.34705496730899"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_39" name="layout_glyph_8" metaboliteGlyph="Layout_31" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="206.25285748669799" y="184.97497489315899"/>
                    <End x="257.22018087338103" y="205.25152793008399"/>
                    <BasePoint1 x="217.229181079602" y="180.60289481901"/>
                    <BasePoint2 x="239.96876187471699" y="191.834191356009"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_40" name="layout_glyph_9" metaboliteGlyph="Layout_32" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="195.276533893795" y="189.34705496730899"/>
                    <End x="174.24528592280001" y="244.14848241812601"/>
                    <BasePoint1 x="184.300210300891" y="193.719135041459"/>
                    <BasePoint2 x="176.52866721362" y="220.02682874832999"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_41" name="layout_glyph_10" metaboliteGlyph="Layout_33" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="123.14904215446499" y="154.52297623558101"/>
                    <End x="197.064254186455" y="177.870873237181"/>
                    <BasePoint1 x="160.10664817046001" y="166.19692473638099"/>
                    <BasePoint2 x="193.363812682663" y="168.58073154412699"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_42" name="layout_glyph_11" reaction="Reaction_7">
          <BoundingBox>
            <Position x="251.50026794945899" y="284.23399759374098"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="243.37788858809401" y="285.531254651952"/>
                <End x="259.62264731082399" y="282.936740535529"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_43" name="layout_glyph_12" metaboliteGlyph="Layout_32" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="243.37788858809401" y="285.531254651952"/>
                    <End x="201.45694494434599" y="276.81023255068601"/>
                    <BasePoint1 x="227.13312986536499" y="288.12576876837397"/>
                    <BasePoint2 x="210.23384772417299" y="283.11662918863601"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_44" name="layout_glyph_13" metaboliteGlyph="Layout_34" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="259.62264731082399" y="282.936740535529"/>
                    <End x="327.40453217163702" y="241.36315582510201"/>
                    <BasePoint1 x="275.86740603355298" y="280.34222641910702"/>
                    <BasePoint2 x="305.69715878327702" y="260.20406259299898"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_45" name="layout_glyph_14" reaction="Reaction_8">
          <BoundingBox>
            <Position x="76.872832971860902" y="71.910916242082493"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="79.833085295566406" y="79.311984711239703"/>
                <End x="73.912580648155497" y="64.509847772925198"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_46" name="layout_glyph_15" metaboliteGlyph="Layout_33" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="79.833085295566406" y="79.311984711239703"/>
                    <End x="97.725015823824506" y="129.52136938314601"/>
                    <BasePoint1 x="85.7535899429773" y="94.114121649554306"/>
                    <BasePoint2 x="93.219429045253605" y="115.518279750929"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_47" name="layout_glyph_16" metaboliteGlyph="Layout_35" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="73.912580648155497" y="64.509847772925198"/>
                    <End x="47.520104985423501" y="6"/>
                    <BasePoint1 x="67.992076000744504" y="49.707710834610602"/>
                    <BasePoint2 x="56.2759643312313" y="24.1533211827266"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_48" name="layout_glyph_17" reaction="Reaction_9">
          <BoundingBox>
            <Position x="74.825253757198695" y="226.17133453780701"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="69.642801649475402" y="231.59672849080101"/>
                <End x="80.007705864921903" y="220.74594058481401"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_49" name="layout_glyph_18" metaboliteGlyph="Layout_36" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="69.642801649475402" y="231.59672849080101"/>
                    <End x="6" y="255.664798032991"/>
                    <BasePoint1 x="59.277897434029001" y="242.44751639678799"/>
                    <BasePoint2 x="30.0477226631529" y="251.768854191386"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_50" name="layout_glyph_19" metaboliteGlyph="Layout_33" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="80.007705864921903" y="220.74594058481401"/>
                    <End x="99.884155824306703" y="167.52136938314601"/>
                    <BasePoint1 x="90.372610080368403" y="209.895152678827"/>
                    <BasePoint2 x="97.719609006199207" y="185.99556405448899"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_51" name="layout_glyph_20" metaboliteGlyph="Layout_32" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="139.45694494434599" y="252.60370015519001"/>
                    <End x="82.056367668813806" y="233.07864889269501"/>
                    <BasePoint1 x="110.75665630658" y="242.84117452394301"/>
                    <BasePoint2 x="89.287481580428903" y="239.98596324758401"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_52" name="layout_glyph_21" reaction="Reaction_6">
          <BoundingBox>
            <Position x="333.79944762089599" y="299.68524242606702"/>
            <Dimensions width="0" height="0"/>
          </BoundingBox>
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="338.94274578326599" y="306.86721766339099"/>
                <End x="328.65614945852599" y="292.503267188743"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_53" name="layout_glyph_22" metaboliteGlyph="Layout_37" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="338.94274578326599" y="306.86721766339099"/>
                    <End x="378.635137100907" y="357.56718642310801"/>
                    <BasePoint1 x="349.22934210800503" y="321.23116813803802"/>
                    <BasePoint2 x="366.50388868564102" y="342.99016489923503"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_54" name="layout_glyph_23" metaboliteGlyph="Layout_31" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="CubicBezier">
                    <Start x="328.65614945852599" y="292.503267188743"/>
                    <End x="292.56591221752001" y="238.42768167662999"/>
                    <BasePoint1 x="318.36955313378701" y="278.139316714095"/>
                    <BasePoint2 x="302.89608359446902" y="254.69251157670101"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_55" name="layout_glyph_24" graphicalObject="Layout_31" originOfText="Metabolite_3">
          <BoundingBox>
            <Position x="262.22018087338103" y="205.42768167662999"/>
            <Dimensions width="32" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_56" name="layout_glyph_25" graphicalObject="Layout_32" originOfText="Metabolite_4">
          <BoundingBox>
            <Position x="144.45694494434599" y="249.14848241812601"/>
            <Dimensions width="48" height="24"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_57" name="layout_glyph_26" graphicalObject="Layout_33" originOfText="Metabolite_5">
          <BoundingBox>
            <Position x="90.149042154464794" y="134.52136938314601"/>
            <Dimensions width="24" height="24"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
    </Layout>
    <Layout key="Layout_58" name="Layout">
      <Dimensions width="600" height="400"/>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_59" name="SpeciesGlyph" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="98" y="117"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_60" name="SpeciesGlyph_1" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="374" y="114"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_61" name="SpeciesGlyph_2" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="237" y="289"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_62" name="SpeciesGlyph_3" metabolite="">
          <BoundingBox>
            <Position x="53" y="14.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_63" name="SpeciesGlyph_4" metabolite="">
          <BoundingBox>
            <Position x="421" y="10.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_64" name="SpeciesGlyph_5" metabolite="">
          <BoundingBox>
            <Position x="156" y="366.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_65" name="SpeciesGlyph_6" metabolite="">
          <BoundingBox>
            <Position x="495" y="295.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_66" name="ReactionGlyph" reaction="Reaction_5">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="268.50087838585512" y="135.61478247368589"/>
                <End x="283.49912161414488" y="135.38521752631411"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_67" name="SpeciesReferenceGlyph" metaboliteGlyph="Layout_59" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="268.50087838585512" y="135.61478247368589"/>
                    <End x="178" y="137"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_68" name="SpeciesReferenceGlyph_1" metaboliteGlyph="Layout_60" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="283.49912161414488" y="135.38521752631411"/>
                    <End x="374" y="134"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_69" name="SpeciesReferenceGlyph_2" metaboliteGlyph="Layout_61" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="277" y="289"/>
                    <End x="276" y="140.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_70" name="ReactionGlyph_1" reaction="Reaction_6">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="110.55575670881535" y="70.84569159465515"/>
                <End x="112.94424329118465" y="85.65430840534485"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_71" name="SpeciesReferenceGlyph_3" metaboliteGlyph="Layout_62" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="110.55575670881535" y="70.84569159465515"/>
                    <End x="105.5" y="39.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_72" name="SpeciesReferenceGlyph_4" metaboliteGlyph="Layout_59" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="112.94424329118465" y="85.65430840534485"/>
                    <End x="118" y="117"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_73" name="ReactionGlyph_2" reaction="Reaction_7">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="442.97606944211498" y="81.971752217908005"/>
                <End x="447.02393055788502" y="67.528247782091995"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_74" name="SpeciesReferenceGlyph_5" metaboliteGlyph="Layout_60" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="442.97606944211498" y="81.971752217908005"/>
                    <End x="434" y="114"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_75" name="SpeciesReferenceGlyph_6" metaboliteGlyph="Layout_63" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="447.02393055788502" y="67.528247782091995"/>
                    <End x="456" y="35.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_76" name="ReactionGlyph_3" reaction="Reaction_8">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="246.27860237506664" y="341.96943261080651"/>
                <End x="236.72139762493336" y="353.53056738919349"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_77" name="SpeciesReferenceGlyph_7" metaboliteGlyph="Layout_61" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="246.27860237506664" y="341.96943261080651"/>
                    <End x="257" y="329"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_78" name="SpeciesReferenceGlyph_8" metaboliteGlyph="Layout_64" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="236.72139762493336" y="353.53056738919349"/>
                    <End x="226" y="366.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_79" name="ReactionGlyph_4" reaction="Reaction_9">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="413.49673993220017" y="311.84611171148345"/>
                <End x="398.50326006779983" y="311.40388828851655"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_80" name="SpeciesReferenceGlyph_9" metaboliteGlyph="Layout_65" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="413.49673993220017" y="311.84611171148345"/>
                    <End x="495" y="314.25"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_81" name="SpeciesReferenceGlyph_10" metaboliteGlyph="Layout_61" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="398.50326006779983" y="311.40388828851655"/>
                    <End x="317" y="309"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_82" name="SpeciesReferenceGlyph_11" metaboliteGlyph="Layout_60" role="modifier">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="414" y="154"/>
                    <End x="421.13274033670098" y="307.17976043346289"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_83" name="TextGlyph" graphicalObject="Layout_59" text="Ep">
          <BoundingBox>
            <Position x="98" y="117"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_84" name="TextGlyph_1" graphicalObject="Layout_60" text="Eps">
          <BoundingBox>
            <Position x="374" y="114"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_85" name="TextGlyph_2" graphicalObject="Layout_61" text="V">
          <BoundingBox>
            <Position x="237" y="289"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
      <ListOfRenderInformation>
        <RenderInformation key="LocalRenderInformation_0" name="render info from CellDesigner" backgroundColor="#FFFFFFFF">
          <ListOfColorDefinitions>
            <ColorDefinition id="black" value="#000000"/>
            <ColorDefinition id="ColorDefinition" value="#ccffcc"/>
          </ListOfColorDefinitions>
          <ListOfLineEndings>
            <LineEnding id="modifier_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Polygon stroke="#000000" fill="#000000">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="50%" y="100%"/>
                    <Element x="100%" y="50%"/>
                    <Element x="50%" y="0"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
            <LineEnding id="inhibitor_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="0" y="-5"/>
                <Dimensions width="3" height="10"/>
              </BoundingBox>
              <Group>
                <Rectangle stroke-width="1" fill="#000000" x="0" y="0" width="100%" height="100%"/>
              </Group>
            </LineEnding>
            <LineEnding id="activator_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Polygon>
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="0" y="100%"/>
                    <Element x="100%" y="50%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
            <LineEnding id="catalysis_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="#ffffff" cx="5" cy="5" rx="5" ry="5"/>
              </Group>
            </LineEnding>
            <LineEnding id="product_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-10" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Polygon fill="#000000">
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="0" y="100%"/>
                    <Element x="100%" y="50%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
          </ListOfLineEndings>
          <ListOfStyles>
            <Style key="LocalStyle_0" typeList="REACTIONGLYPH SPECIESREFERENCEGLYPH">
              <Group stroke="black" stroke-width="1">
              </Group>
            </Style>
            <Style key="LocalStyle_1" roleList="modifier">
              <Group stroke="black" stroke-width="1" endHead="modifier_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_2" roleList="inhibitor">
              <Group stroke="black" stroke-width="1" endHead="inhibitor_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_3" roleList="activator">
              <Group stroke="black" stroke-width="1" endHead="activator_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_4">
              <Group stroke="black" stroke-width="1" endHead="catalysis_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_5">
              <Group stroke="black" stroke-width="1" stroke-dasharray="5, 5" endHead="catalysis_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_6" roleList="product sideproduct">
              <Group stroke="black" stroke-width="1" endHead="product_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_7" roleList="sidesubstrate substrate">
              <Group stroke="black" stroke-width="1">
              </Group>
            </Style>
            <Style key="LocalStyle_8" keyList="Layout_83">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_9" keyList="Layout_84">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_10" keyList="Layout_85">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_11" keyList="Layout_59">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_12" keyList="Layout_60">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_13" keyList="Layout_61">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
          </ListOfStyles>
        </RenderInformation>
      </ListOfRenderInformation>
    </Layout>
    <ListOfGlobalRenderInformation>
      <RenderInformation key="GlobalRenderInformation_1" backgroundColor="#FFFFFFFF">
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
          <Style key="GlobalStyle_10" roleList="invisible">
            <Group stroke="#ffffff00" stroke-width="0" fill="#ffffff00" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
            </Group>
          </Style>
          <Style key="GlobalStyle_11" roleList="defaultText" typeList="TEXTGLYPH">
            <Group stroke="black" stroke-width="1" fill-rule="nonzero" font-size="12" font-family="Verdana" text-anchor="middle" vtext-anchor="middle">
            </Group>
          </Style>
          <Style key="GlobalStyle_12" roleList="sidesubstrate substrate" typeList="REACTIONGLYPH">
            <Group stroke="CurveColor" stroke-width="3" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
            </Group>
          </Style>
          <Style key="GlobalStyle_13" roleList="SBO-0000169 inhibition inhibitor">
            <Group stroke="CurveColor" stroke-width="3" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="InhibitionHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_14" roleList="SBO-0000168 modifier">
            <Group stroke="ModulationCurveColor" stroke-width="3" fill="white" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="ModulationHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_15" roleList="SBO-0000172 activator catalysis">
            <Group stroke="CurveColor" stroke-width="3" fill="white" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="ActivationHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_16" roleList="product sideproduct" typeList="product sideproduct">
            <Group stroke="CurveColor" stroke-width="3" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="TransitionHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_17" roleList="NO-SBO SBO-0000285" typeList="SPECIESGLYPH">
            <Group stroke-width="0" fill="#a0e0a030" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              <Rectangle x="0" y="0" width="100%" height="100%"/>
            </Group>
          </Style>
          <Style key="GlobalStyle_18" roleList="SBO-0000289" typeList="COMPARTMENTGLYPH">
            <Group stroke="CompartmentBorder" stroke-width="7" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              <Rectangle x="0" y="0" width="100%" height="100%" rx="20" ry="20"/>
            </Group>
          </Style>
          <Style key="GlobalStyle_19" typeList="ANY">
            <Group stroke="black" stroke-width="0" fill="#f0707070" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              <Rectangle x="0" y="0" width="100%" height="100%"/>
            </Group>
          </Style>
        </ListOfStyles>
      </RenderInformation>
      <RenderInformation key="GlobalRenderInformation_2" backgroundColor="#FFFFFFFF">
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
          <Style key="GlobalStyle_20" roleList="invisible">
            <Group stroke="#ffffff00" stroke-width="0" fill="#ffffff00" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
            </Group>
          </Style>
          <Style key="GlobalStyle_21" roleList="defaultText" typeList="TEXTGLYPH">
            <Group stroke="black" stroke-width="1" fill-rule="nonzero" font-size="12" font-family="Verdana" text-anchor="middle" vtext-anchor="middle">
            </Group>
          </Style>
          <Style key="GlobalStyle_22" roleList="sidesubstrate substrate" typeList="REACTIONGLYPH">
            <Group stroke="CurveColor" stroke-width="3" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
            </Group>
          </Style>
          <Style key="GlobalStyle_23" roleList="SBO-0000169 inhibition inhibitor">
            <Group stroke="CurveColor" stroke-width="3" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="InhibitionHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_24" roleList="SBO-0000168 modifier">
            <Group stroke="ModulationCurveColor" stroke-width="3" fill="white" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="ModulationHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_25" roleList="SBO-0000172 activator catalysis">
            <Group stroke="CurveColor" stroke-width="3" fill="white" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="ActivationHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_26" roleList="product sideproduct" typeList="product sideproduct">
            <Group stroke="CurveColor" stroke-width="3" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="TransitionHead">
            </Group>
          </Style>
          <Style key="GlobalStyle_27" roleList="NO-SBO SBO-0000285" typeList="SPECIESGLYPH">
            <Group stroke-width="0" fill="#a0e0a030" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              <Rectangle x="0" y="0" width="100%" height="100%"/>
            </Group>
          </Style>
          <Style key="GlobalStyle_28" roleList="SBO-0000289" typeList="COMPARTMENTGLYPH">
            <Group stroke="CompartmentBorder" stroke-width="7" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              <Rectangle x="0" y="0" width="100%" height="100%" rx="20" ry="20"/>
            </Group>
          </Style>
          <Style key="GlobalStyle_29" typeList="ANY">
            <Group stroke="black" stroke-width="0" fill="#f0707070" fill-rule="nonzero" font-size="0" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              <Rectangle x="0" y="0" width="100%" height="100%"/>
            </Group>
          </Style>
        </ListOfStyles>
      </RenderInformation>
    </ListOfGlobalRenderInformation>
  </ListOfLayouts>
  <SBMLReference file="BIOMD0000000546.xml">
    <SBMLMap SBMLid="Function_for_re1_1" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_re3_0" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_re7_0" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="beta_a" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="c_V" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="default" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="delta_Es" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="pi_a" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="re1" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="re3" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="re5" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="re6" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="re7" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="rho_E" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="s1" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="s2" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="s3" COPASIkey="Metabolite_5"/>
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
<dcterms:W3CDTF>2020-04-16T08:18:16Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-04-16T08:18:16Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-04-16T08:18:16Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-04-16T08:18:16Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-04-16T08:18:16Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-04-16T08:18:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_69" name="day" symbol="d">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_68">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-04-16T08:18:16Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        86400*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
