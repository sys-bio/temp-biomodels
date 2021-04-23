<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.27 (Build 217) (http://www.copasi.org) at 2019-11-22T12:29:48Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="27" versionDevel="217" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_6">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-11-22T10:36:29Z</dcterms:W3CDTF>
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
    <Function key="Function_40" name="Death of HPV self-proliferating cells due to effector cells" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-04-27T12:05:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        a*s16*s13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_262" name="a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="s13" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_264" name="s16" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Rate Law for Production of HPV due to HPVinfected_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-05-02T14:10:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        mu*k1*s12
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="mu" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="s12" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Logistic term for Effector cells_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-05-02T15:49:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        omega*s13*s16*s16/(b*s4)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_270" name="b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="omega" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="s13" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_267" name="s16" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_266" name="s4" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Rate Law for production of HIV infected cells_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-11-22T10:36:42Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (1-e_rt)*beta*s4*s2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_274" name="beta" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="e_rt" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="s2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_271" name="s4" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Production of HPV due to HPV self-proliferating_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-11-22T10:36:42Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        mu*k2*s13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="k2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="mu" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="s13" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Rate Law for Production of HIV virion_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-05-02T12:16:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (1-e_pi)*N1*delta*s3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_281" name="N1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="delta" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="e_pi" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="s3" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Rate Law for Production of Effector cell_1_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_46">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-11-22T10:36:42Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        omega*s13*s16
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_284" name="omega" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="s13" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_282" name="s16" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Proliferation of HPV self-proliferating" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-04-27T12:05:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        r*epi*s13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="epi" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="r" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="s13" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Productionof HPV infected cells" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-04-18T10:29:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        psi*s14*(((1+p*s2)*N2-s12)/(phi+(1+p*s2)*N2-s12))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_294" name="N2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="p" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="phi" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="psi" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="s12" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_289" name="s14" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_288" name="s2" order="6" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Death of HPV self-proliferating due to Effector cells" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-04-27T12:03:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        a*s12*s16
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_297" name="a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="s12" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_295" name="s16" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Verma2016 - HIV and HPV co-infection, T-cell response" simulationType="time" timeUnit="d" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="stochastic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C14219"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C15261"/>
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Modeling the Mechanisms by Which HIV-Associated Immunosuppression Influences HPV Persistence at the Oral Mucosa</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:28060843"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-16T13:33:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>meghna89@vt.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Verma</vCard:Family>
                <vCard:Given>Meghna</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>VT</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>sherwin@vt.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Erwin</vCard:Family>
                <vCard:Given>Samantha</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>VT</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>ajleber@vt.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Leber</vCard:Family>
                <vCard:Given>Andrew</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>VT</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>abedi@vt.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Abedi</vCard:Family>
                <vCard:Given>Vida</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>VT</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>jbassaga@vt.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Bassaganya-Riera</vCard:Family>
                <vCard:Given>Josep</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>VT</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>rmagarzo@vt.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Hontecillas</vCard:Family>
                <vCard:Given>Raquel</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>VT</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>stanca@math.vt.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Ciupe</vCard:Family>
                <vCard:Given>Stanca</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>VT</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>shoops@vbi.vt.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Hoops</vCard:Family>
                <vCard:Given>Stefan</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>VT</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>msharifshohan@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Sharif Shohan</vCard:Family>
            <vCard:Given>Mohammad Umer</vCard:Given>
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
        <dcterms:W3CDTF>2015-12-16T13:33:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:biomodels.db:MODEL1605030001"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>This is a COPASI version of the HIV/HPV coinfection model submitted to PLoS One.

Title: Modeling the mechanisms by which HIV-associated immunosuppression influences HPV persistence at the oral mucosa

Authors: Meghna Verma*, Samantha Erwin*, Vida Abedi, Raque Hontecillas, Stefan Hoops, Andrew Leber, Josep Bassaganya-Riera, Stanca Ciupe

* Contributed equally to the work

Corresponding Authors: Josep Bassaganya-Riera and Stanca Ciupe</pre>
  </body>

    </Comment>
    <ListOfUnsupportedAnnotations>
      <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:modelVersion>4.0</celldesigner:modelVersion>
  <celldesigner:modelDisplay sizeX="2000" sizeY="1000"/>
  <celldesigner:listOfCompartmentAliases/>
  <celldesigner:listOfComplexSpeciesAliases/>
  <celldesigner:listOfSpeciesAliases>
    <celldesigner:speciesAlias id="sa2" species="s2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="156.0" y="36.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccccff" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa3" species="s3">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="251.0" y="167.5" w="75.0" h="32.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="75.0" height="32.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff9999" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa4" species="s4">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="64.0" y="166.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff99ffff" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa5" species="s5">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="346.0" y="37.0" w="25.0" h="28.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="25.0" height="28.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa7" species="s7">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="61.0" y="40.0" w="21.0" h="34.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="21.0" height="34.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="0.0" height="0.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa8" species="s8">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="85.0" y="70.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa10" species="s10">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="88.0" y="272.0" w="28.0" h="26.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="28.0" height="26.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="0.0" height="0.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa11" species="s11">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="368.0" y="222.0" w="28.0" h="22.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="28.0" height="22.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="0.0" height="0.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa12" species="s12">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="658.0" y="41.5" w="98.0" h="37.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="98.0" height="37.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff66cc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa13" species="s13">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="663.0" y="235.5" w="84.0" h="34.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="84.0" height="34.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff66ff" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa14" species="s14">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="843.0" y="131.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcc00" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa17" species="s16">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="536.0" y="165.5" w="77.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="77.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff33ccff" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa18" species="s17">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="474.0" y="48.5" w="23.0" h="24.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="23.0" height="24.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="0.0" height="0.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa20" species="s19">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="692.0" y="328.5" w="28.0" h="24.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="28.0" height="24.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="0.0" height="0.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa21" species="s20">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="427.0" y="171.0" w="22.0" h="32.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="22.0" height="32.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="0.0" height="0.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa23" species="s19">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="665.0" y="100.5" w="23.0" h="24.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="23.0" height="24.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="0.0" height="0.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa24" species="s17">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="628.0" y="12.5" w="22.0" h="26.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="22.0" height="26.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="0.0" height="0.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa25" species="s22">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="958.0" y="182.0" w="25.0" h="21.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="25.0" height="21.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="0.0" height="0.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa16" species="s15">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="757.0" y="117.0" w="24.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="24.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa27" species="s12">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1001.0" y="41.5" w="88.0" h="37.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="88.0" height="37.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffff99cc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa28" species="s13">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="784.0" y="300.5" w="91.0" h="33.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="91.0" height="33.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffccff" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa29" species="s16">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="533.0" y="307.5" w="77.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="77.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff99ccff" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
  </celldesigner:listOfSpeciesAliases>
  <celldesigner:listOfGroups/>
  <celldesigner:listOfProteins/>
  <celldesigner:listOfGenes/>
  <celldesigner:listOfRNAs/>
  <celldesigner:listOfAntisenseRNAs/>
  <celldesigner:listOfLayers/>
  <celldesigner:listOfBlockDiagrams/>
</celldesigner:extension>
      </UnsupportedAnnotation>
    </ListOfUnsupportedAnnotations>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="default" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-02-09T15:04:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="V" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C14219"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-20T12:54:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>HIV</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>HIV</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re4"/>
    <celldesigner:catalyzed reaction="re11"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="I" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C97350"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-20T12:54:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>HIV infected cells</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>HIV-Infected</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re1"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <InitialExpression>
          &lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[beta],Reference=InitialValue>*&lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[T],Reference=InitialConcentration>*&lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[V],Reference=InitialConcentration>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="T" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C97350"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-20T12:48:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>CD4+ T cells</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>T </celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re26"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="W" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:efo:0004510"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-20T12:50:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>HPV</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>HPV</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re25"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="E" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C12543"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-17T10:50:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>HPV specific CTL</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>Effector cells</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re12"/>
    <celldesigner:catalyzed reaction="re17"/>
    <celldesigner:catalyzed reaction="re26"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Y2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C12578"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-20T12:54:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>HPV self-proliferating cells</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>HPV-oncogenic</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re11"/>
    <celldesigner:catalyzed reaction="re24"/>
    <celldesigner:catalyzed reaction="re26"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Y1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C12578"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-20T12:54:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>HPV infected cells</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>HPV-infected</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re11"/>
    <celldesigner:catalyzed reaction="re25"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="e_rt" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-05-02T12:23:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="e_pi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-05-02T12:23:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="epi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-05-02T14:05:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="omega" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-05-02T16:09:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="mu" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-05-02T16:21:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="beta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-05-02T16:43:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[c1],Reference=InitialValue>/(&lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[N1],Reference=InitialValue>*&lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[T],Reference=InitialConcentration>)
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="c1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-05-02T17:34:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="N1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-05-02T17:35:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="s" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-05-02T16:48:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[d],Reference=InitialValue>*&lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[T],Reference=InitialConcentration>+&lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[beta],Reference=InitialValue>*&lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[T],Reference=InitialConcentration>*&lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[V],Reference=InitialConcentration>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="d" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-05-02T17:35:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Production of HIV virion" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-16T13:34:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>N1 - Ciupe MS, Bivort BL, Bortz DM, Nelson PW. Estimating kinetic parameters from HIV primary infection data through the eyes of three different mathematical models. Math Biosci. 2006;200:1-27.

delta - Klatt NR, Shudo E, Ortiz AM, Engram JC, Paiardini M, Lawson B, et al. CD8+ lymphocytes control viral replication in SIVmac239-infected rhesus macaques without decreasing the lifespan of productively infected cells. PLoS Pathog. 2010; 6:1-11.</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s5" alias="sa5">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s2" alias="sa2">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s3" aliases="sa3" targetLineIndex="-1,2">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s3" alias="sa3">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="2.0" color="ff00cc33"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5019" name="delta" value="1"/>
          <Constant key="Parameter_5018" name="N1" value="1"/>
          <Constant key="Parameter_5022" name="e_pi" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_5019"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Death of HIV" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T15:02:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Ramratnam B, Bonhoeffer S, Binley J, Hurley A, Zhang L, Mittler JE, et al.  Rapid production and clearance of HIV-1 and hepatitis C virus assessed by large volume plasma apheresis. Lancet. 1999;354:1782-5.</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s2" alias="sa2">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s7" alias="sa7">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="2.0" color="ffff3333"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5020" name="k1" value="23"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Production of HIV infected cells" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T15:10:00Z</dcterms:W3CDTF>
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
    <celldesigner:baseReactant species="s4" alias="sa4">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s3" alias="sa3">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s2" aliases="sa2" targetLineIndex="-1,2">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s2" alias="sa2">
        <celldesigner:linkAnchor position="S"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5023" name="beta" value="1"/>
          <Constant key="Parameter_5024" name="e_rt" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Production of T cells" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T15:12:09Z</dcterms:W3CDTF>
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
    <celldesigner:baseReactant species="s8" alias="sa8">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s4" alias="sa4">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5028" name="v" value="4864.03"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Decay of T cells" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T15:13:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Mohri H, Perelson AS, Tung K, Ribeiro RM, Ramratnam B, Markowitz M, et al. Increased turnover of T lymphocytes in HIV-1 infection and its reduction by antiretroviral therapy. J Exp Med. 2001;194:1277-88.</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s4" alias="sa4">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s10" alias="sa10">
      <celldesigner:linkAnchor position="NNW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="2.0" color="ffff3333"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5030" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Decay of HIV-infected" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T15:09:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Klatt NR, Shudo E, Ortiz AM, Engram JC, Paiardini M, Lawson B, et al. CD8+ lymphocytes control viral replication in SIVmac239-infected rhesus macaques without decreasing the lifespan of productively infected cells. PLoS Pathog. 2010; 6:1-11.</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s3" alias="sa3">
      <celldesigner:linkAnchor position="NE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s11" alias="sa11">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="horizontal"/>
      <celldesigner:lineDirection index="1" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.5989307501543264,-0.49011499331677466</celldesigner:editPoints>
  <celldesigner:line width="2.0" color="ffff3333"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5031" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5031"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Production of HPV-self-proliferating cells by HPV infected" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-19T13:10:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Murall CL, Bauch CT, Day T. Could the human papillomavirus vaccines drive virulence evolution? Proc Biol Sci. 2015;282:20141069.</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s12" alias="sa12">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s13" alias="sa13">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5025" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Production of HPV due to HPVinfected" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-16T13:35:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Murall CL, Bauch CT, Day T. Could the human papillomavirus vaccines drive virulence evolution? Proc Biol Sci. 2015;282:20141069.</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s15" alias="sa16">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s14" alias="sa14">
      <celldesigner:linkAnchor position="NNW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="horizontal"/>
      <celldesigner:lineDirection index="1" value="vertical"/>
      <celldesigner:lineDirection index="2" value="horizontal"/>
      <celldesigner:lineDirection index="3" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.6986661182795828,-0.027215403204690958 0.6843999795029223,-0.39345167488350485 0.9842187947201655,-0.4051306295816144</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s12" aliases="sa12" targetLineIndex="-1,4" editPoints="0.21284115492811484,0.2522801759890463 0.797028832585414,-0.24058130042260384">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s12" alias="sa12">
        <celldesigner:linkAnchor position="SE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="2.0" color="ff00cc33"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s2" aliases="sa2" targetLineIndex="-1,5" editPoints="-0.007089383422755113,-0.050425664665154024 0.9735279627553011,-0.18829142021294204">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s2" alias="sa2">
        <celldesigner:linkAnchor position="NE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="4.0" color="ff66cc00"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s13" aliases="sa13" targetLineIndex="-1,3" editPoints="0.36462634128487137,-0.24761189843348674 0.6802362618906801,0.2171464243763408">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s13" alias="sa13">
        <celldesigner:linkAnchor position="NE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="2.0" color="ff00cc00"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5027" name="k1" value="1000"/>
          <Constant key="Parameter_5026" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_5027"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Death of HPV infected due to Effector cells" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-16T13:37:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Murall CL, Bauch CT, Day T. Could the human papillomavirus vaccines drive virulence evolution? Proc Biol Sci. 2015;282:20141069.</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s12" alias="sa12">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s17" alias="sa18">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s16" aliases="sa17" targetLineIndex="-1,2">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s16" alias="sa17">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="2.0" color="ff00cc33"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5029" name="a" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Parameter_5029"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="Decay of HPV self-proliferating" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-16T13:38:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Murall CL, Bauch CT, Day T. Could the human papillomavirus vaccines drive virulence evolution? Proc Biol Sci. 2015;282:20141069.</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s13" alias="sa13">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s19" alias="sa20">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="2.0" color="ffff3333"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5032" name="k1" value="0.048"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5032"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="Logistic term for Effector cells" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-16T13:39:18Z</dcterms:W3CDTF>
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
    <celldesigner:baseReactant species="s16" alias="sa17">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s20" alias="sa21">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="2.0" color="ffff3333"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5033" name="b" value="3.5e-05"/>
          <Constant key="Parameter_5067" name="omega" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_5033"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="Death of HPV self-proliferating cells due to effector cells" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-16T13:39:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Murall CL, Bauch CT, Day T. Could the human papillomavirus vaccines drive virulence evolution? Proc Biol Sci. 2015;282:20141069.</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s13" alias="sa13">
      <celldesigner:linkAnchor position="NW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s19" alias="sa23">
      <celldesigner:linkAnchor position="SSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="2.0" color="ffff3333"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s16" aliases="sa17" targetLineIndex="-1,2">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s16" alias="sa17">
        <celldesigner:linkAnchor position="E"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="2.0" color="ff00cc33"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5068" name="a" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Parameter_5068"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="Decay of HPV-infected cells" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-16T13:40:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Murall CL, Bauch CT, Day T. Could the human papillomavirus vaccines drive virulence evolution? Proc Biol Sci. 2015;282:20141069.</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s12" alias="sa12">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s17" alias="sa24">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="vertical"/>
      <celldesigner:lineDirection index="1" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.0777351247600766,0.26775431861804266</celldesigner:editPoints>
  <celldesigner:line width="2.0" color="ffff3333"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5072" name="k1" value="0.048"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="Decay of HPV" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-16T13:41:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Murall CL, Bauch CT, Day T. Could the human papillomavirus vaccines drive virulence evolution? Proc Biol Sci. 2015;282:20141069.</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s14" alias="sa14">
      <celldesigner:linkAnchor position="SE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s22" alias="sa25">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="vertical"/>
      <celldesigner:lineDirection index="1" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.2887192139635619,0.45316710985223274</celldesigner:editPoints>
  <celldesigner:line width="2.0" color="ffff3333"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5074" name="k1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5074"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="Proliferation of HPV self-proliferating cells" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-16T13:42:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Murall CL, Bauch CT, Day T. Could the human papillomavirus vaccines drive virulence evolution? Proc Biol Sci. 2015;282:20141069.</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s13" alias="sa28">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s13" alias="sa13">
      <celldesigner:linkAnchor position="SSE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="horizontal"/>
      <celldesigner:lineDirection index="1" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.6245118465704547,-0.4842486965017212</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s13" aliases="sa13" targetLineIndex="-1,3" editPoints="0.06722669778980084,-0.40785492878590546 0.5585435108325791,-0.3268712147780928 0.5177670924784712,-0.07948641453163319">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal"/>
          <celldesigner:lineDirection index="1" value="vertical"/>
          <celldesigner:lineDirection index="2" value="horizontal"/>
          <celldesigner:lineDirection index="3" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s13" alias="sa13">
        <celldesigner:linkAnchor position="ESE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="2.0" color="ff66cc00"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5075" name="r" value="0.1"/>
          <Constant key="Parameter_5069" name="epi" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Parameter_5075"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="Productionof HPV infected cells" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-16T13:42:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Murall CL, Bauch CT, Day T. Could the human papillomavirus vaccines drive virulence evolution? Proc Biol Sci. 2015;282:20141069.</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s12" alias="sa27">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s12" alias="sa12">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s12" aliases="sa12" targetLineIndex="-1,3" editPoints="-0.009628331102306653,-0.1632482362618748 0.986905123275168,-0.22202347495958352">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s12" alias="sa12">
        <celldesigner:linkAnchor position="NE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="2.0" color="ff66cc00"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s14" aliases="sa14" targetLineIndex="-1,2">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s14" alias="sa14">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="2.0" color="ff66cc00"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5071" name="N2" value="10000"/>
          <Constant key="Parameter_5070" name="p" value="2.0833e-05"/>
          <Constant key="Parameter_5073" name="phi" value="1e+06"/>
          <Constant key="Parameter_5076" name="psi" value="0.0067"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Parameter_5071"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Parameter_5070"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Parameter_5073"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Parameter_5076"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="Production of Effector cell" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-12-17T10:50:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Murall CL, Bauch CT, Day T. Could the human papillomavirus vaccines drive virulence evolution? Proc Biol Sci. 2015;282:20141069.</pre>
  </body>

        </Comment>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s16" alias="sa29">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s16" alias="sa17">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s4" aliases="sa4" targetLineIndex="-1,2" editPoints="0.01750737404639635,0.13115207165880288">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s4" alias="sa4">
        <celldesigner:linkAnchor position="SSE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="2.0" color="ff66cc00"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s13" aliases="sa13" targetLineIndex="-1,3">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s13" alias="sa13">
        <celldesigner:linkAnchor position="W"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="2.0" color="ff66cc00"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s16" aliases="sa17" targetLineIndex="-1,5" editPoints="0.9748083288660752,0.15670689467730625">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s16" alias="sa17">
        <celldesigner:linkAnchor position="SSW"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="2.0" color="ff00cc00"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5065" name="omega" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="Production of HPV due to HPV self proliferating" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-04-26T13:07:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Murall CL, Bauch CT, Day T. Could the human papillomavirus vaccines drive virulence evolution? Proc Biol Sci. 2015;282:20141069.</pre>
  </body>

        </Comment>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5063" name="k2" value="1000"/>
          <Constant key="Parameter_5062" name="mu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Parameter_5063"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_5"/>
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
<dcterms:W3CDTF>2019-11-22T10:36:42Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[V]" value="48000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[I]" value="2364.0256959314775" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[beta],Reference=InitialValue>*&lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[T],Reference=InitialConcentration>*&lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[V],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[T]" value="250000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[W]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[E]" value="0.01" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[Y2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[Y1]" value="1" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[e_rt]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[e_pi]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[epi]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[omega]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[mu]" value="0.048000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[beta]" value="1.9700214132762312e-07" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[c1],Reference=InitialValue>/(&lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[N1],Reference=InitialValue>*&lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[T],Reference=InitialConcentration>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[c1]" value="23" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[N1]" value="467" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[s]" value="4864.0256959314775" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[d],Reference=InitialValue>*&lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[T],Reference=InitialConcentration>+&lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[beta],Reference=InitialValue>*&lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[T],Reference=InitialConcentration>*&lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[V],Reference=InitialConcentration>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[d]" value="0.01" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Production of HIV virion]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Death of HIV]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Death of HIV],ParameterGroup=Parameters,Parameter=k1" value="23" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[c1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Production of HIV infected cells]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Production of T cells]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Production of T cells],ParameterGroup=Parameters,Parameter=v" value="4864.0256959314775" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[s],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Decay of T cells]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Decay of T cells],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Decay of HIV-infected]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Decay of HIV-infected],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Production of HPV-self-proliferating cells by HPV infected]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Production of HPV-self-proliferating cells by HPV infected],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[epi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Production of HPV due to HPVinfected]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Death of HPV infected due to Effector cells]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Decay of HPV self-proliferating]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Decay of HPV self-proliferating],ParameterGroup=Parameters,Parameter=k1" value="0.048000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Logistic term for Effector cells]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Death of HPV self-proliferating cells due to effector cells]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Decay of HPV-infected cells]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Decay of HPV-infected cells],ParameterGroup=Parameters,Parameter=k1" value="0.048000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Decay of HPV]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Decay of HPV],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Proliferation of HPV self-proliferating cells]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Productionof HPV infected cells]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Production of Effector cell]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Reactions[Production of HPV due to HPV self proliferating]" type="Reaction">
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 0 1 250000 0 0.01 48000 2364.0256959314775 1 0 0 0.5 0.001 0.048000000000000001 1.9700214132762312e-07 23 467 4864.0256959314775 0.01 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
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
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="5"/>
        <Parameter name="Duration" type="float" value="500"/>
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
    <Report key="Report_9" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
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
  <ListOfPlots>
    <PlotSpecification name="plot" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[E]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - HIV and HPV co-infection\, T-cell response,Vector=Compartments[default],Vector=Metabolites[E],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_2" name="Layout">
      <Dimensions width="2000" height="1000"/>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_3" name="SpeciesGlyph" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="156" y="36.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_4" name="SpeciesGlyph_1" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="251" y="167.5"/>
            <Dimensions width="75" height="32"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_5" name="SpeciesGlyph_2" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="64" y="166.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_6" name="SpeciesGlyph_3" metabolite="">
          <BoundingBox>
            <Position x="346" y="37"/>
            <Dimensions width="25" height="28"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_7" name="SpeciesGlyph_4" metabolite="">
          <BoundingBox>
            <Position x="61" y="40"/>
            <Dimensions width="21" height="34"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="SpeciesGlyph_5" metabolite="">
          <BoundingBox>
            <Position x="85" y="70"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_9" name="SpeciesGlyph_6" metabolite="">
          <BoundingBox>
            <Position x="88" y="272"/>
            <Dimensions width="28" height="26"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_10" name="SpeciesGlyph_7" metabolite="">
          <BoundingBox>
            <Position x="368" y="222"/>
            <Dimensions width="28" height="22"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_11" name="SpeciesGlyph_8" metabolite="Metabolite_6">
          <BoundingBox>
            <Position x="658" y="41.5"/>
            <Dimensions width="98" height="37"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_12" name="SpeciesGlyph_9" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="663" y="235.5"/>
            <Dimensions width="84" height="34"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_13" name="SpeciesGlyph_10" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="843" y="131.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_14" name="SpeciesGlyph_11" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="536" y="165.5"/>
            <Dimensions width="77" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_15" name="SpeciesGlyph_12" metabolite="">
          <BoundingBox>
            <Position x="474" y="48.5"/>
            <Dimensions width="23" height="24"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_16" name="SpeciesGlyph_13" metabolite="">
          <BoundingBox>
            <Position x="692" y="328.5"/>
            <Dimensions width="28" height="24"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_17" name="SpeciesGlyph_14" metabolite="">
          <BoundingBox>
            <Position x="427" y="171"/>
            <Dimensions width="22" height="32"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_18" name="SpeciesGlyph_15" metabolite="">
          <BoundingBox>
            <Position x="665" y="100.5"/>
            <Dimensions width="23" height="24"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_19" name="SpeciesGlyph_16" metabolite="">
          <BoundingBox>
            <Position x="628" y="12.5"/>
            <Dimensions width="22" height="26"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_20" name="SpeciesGlyph_17" metabolite="">
          <BoundingBox>
            <Position x="958" y="182"/>
            <Dimensions width="25" height="21"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_21" name="SpeciesGlyph_18" metabolite="">
          <BoundingBox>
            <Position x="757" y="117"/>
            <Dimensions width="24" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_22" name="SpeciesGlyph_19" metabolite="Metabolite_6">
          <BoundingBox>
            <Position x="1001" y="41.5"/>
            <Dimensions width="88" height="37"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_23" name="SpeciesGlyph_20" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="784" y="300.5"/>
            <Dimensions width="91" height="33"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_24" name="SpeciesGlyph_21" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="533" y="307.5"/>
            <Dimensions width="77" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_25" name="ReactionGlyph" reaction="Reaction_0">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="293.498958550297" y="50.124982642504953"/>
                <End x="278.501041449703" y="49.875017357495047"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_26" name="SpeciesReferenceGlyph" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="293.498958550297" y="50.124982642504953"/>
                    <End x="346" y="51"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_27" name="SpeciesReferenceGlyph_1" metaboliteGlyph="Layout_3" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="278.501041449703" y="49.875017357495047"/>
                    <End x="226" y="49"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_28" name="SpeciesReferenceGlyph_2" metaboliteGlyph="Layout_4" role="">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="288.5" y="167.5"/>
                    <End x="293.49895855029695" y="55.12498264250496"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_29" name="ReactionGlyph_1" reaction="Reaction_1">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="126.45655285674387" y="52.193886177649311"/>
                <End x="111.54344714325613" y="53.806113822350689"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_30" name="SpeciesReferenceGlyph_3" metaboliteGlyph="Layout_3" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="126.45655285674387" y="52.193886177649311"/>
                    <End x="156" y="49"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_31" name="SpeciesReferenceGlyph_4" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="111.54344714325613" y="53.806113822350689"/>
                    <End x="82" y="57"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_32" name="ReactionGlyph_2" reaction="Reaction_2">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="185.00083880841535" y="184.48716694089978"/>
                <End x="199.99916119158465" y="184.26283305910022"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_33" name="SpeciesReferenceGlyph_5" metaboliteGlyph="Layout_5" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="185.00083880841535" y="184.48716694089978"/>
                    <End x="134" y="185.25"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_34" name="SpeciesReferenceGlyph_6" metaboliteGlyph="Layout_4" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="199.99916119158465" y="184.26283305910022"/>
                    <End x="251" y="183.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_35" name="SpeciesReferenceGlyph_7" metaboliteGlyph="Layout_3" role="">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="191" y="61.5"/>
                    <End x="192.5" y="179.375"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_36" name="ReactionGlyph_3" reaction="Reaction_3">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="99.61276920540098" y="125.75084784083472"/>
                <End x="99.38723079459902" y="140.74915215916528"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_37" name="SpeciesReferenceGlyph_8" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="99.61276920540098" y="125.75084784083472"/>
                    <End x="100" y="100"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_38" name="SpeciesReferenceGlyph_9" metaboliteGlyph="Layout_5" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="99.38723079459902" y="140.74915215916528"/>
                    <End x="99" y="166.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_39" name="ReactionGlyph_4" reaction="Reaction_4">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="97.372211587985277" y="224.2592417917964"/>
                <End x="96.627788412014723" y="239.2407582082036"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_40" name="SpeciesReferenceGlyph_10" metaboliteGlyph="Layout_5" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="97.372211587985277" y="224.2592417917964"/>
                    <End x="99" y="191.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_41" name="SpeciesReferenceGlyph_11" metaboliteGlyph="Layout_9" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="96.627788412014723" y="239.2407582082036"/>
                    <End x="95" y="272"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_42" name="ReactionGlyph_5" reaction="Reaction_5">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="346.5" y="167.5"/>
                <End x="361.5" y="167.5"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_43" name="SpeciesReferenceGlyph_12" metaboliteGlyph="Layout_4" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="346.5" y="167.5"/>
                    <End x="326" y="167.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_44" name="SpeciesReferenceGlyph_13" metaboliteGlyph="Layout_10" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="361.5" y="167.5"/>
                    <End x="382" y="167.5"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="382" y="167.5"/>
                    <End x="382" y="222"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_45" name="ReactionGlyph_6" reaction="Reaction_6">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="706.09553365006491" y="149.50060846990203"/>
                <End x="705.90446634993509" y="164.49939153009797"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_46" name="SpeciesReferenceGlyph_14" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="706.09553365006491" y="149.50060846990203"/>
                    <End x="707" y="78.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_47" name="SpeciesReferenceGlyph_15" metaboliteGlyph="Layout_12" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="705.90446634993509" y="164.49939153009797"/>
                    <End x="705" y="235.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_48" name="ReactionGlyph_7" reaction="Reaction_7">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="801.29919360481813" y="129.5"/>
                <End x="816.29919360481813" y="129.5"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_49" name="SpeciesReferenceGlyph_16" metaboliteGlyph="Layout_21" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="801.29919360481813" y="129.5"/>
                    <End x="781" y="129.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_50" name="SpeciesReferenceGlyph_17" metaboliteGlyph="Layout_13" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="816.29919360481813" y="129.5"/>
                    <End x="836.59838720963626" y="129.5"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="836.59838720963626" y="129.5"/>
                    <End x="836.59838720963626" y="99.589391805767221"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="836.59838720963626" y="99.589391805767221"/>
                    <End x="860.5" y="99.589391805767221"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="860.5" y="99.589391805767221"/>
                    <End x="860.5" y="131.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_51" name="SpeciesReferenceGlyph_18" metaboliteGlyph="Layout_11" role="">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="756" y="78.5"/>
                    <End x="756" y="99.718781661478687"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="756" y="99.718781661478687"/>
                    <End x="801.29919360481813" y="99.718781661478687"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="801.29919360481813" y="99.718781661478687"/>
                    <End x="801.29919360481813" y="124.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_52" name="SpeciesReferenceGlyph_19" metaboliteGlyph="Layout_3" role="">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="226" y="36.5"/>
                    <End x="226" y="6.1099050699701571"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="226" y="6.1099050699701571"/>
                    <End x="816.29919360481813" y="6.1099050699701571"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="816.29919360481813" y="6.1099050699701571"/>
                    <End x="816.29919360481813" y="124.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_53" name="SpeciesReferenceGlyph_20" metaboliteGlyph="Layout_12" role="">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="747" y="235.5"/>
                    <End x="747" y="183.37052388008038"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="747" y="183.37052388008038"/>
                    <End x="808.79919360481813" y="183.37052388008038"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="808.79919360481813" y="183.37052388008038"/>
                    <End x="808.79919360481813" y="134.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_54" name="ReactionGlyph_8" reaction="Reaction_8">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="584.99996383267546" y="60.226708186855042"/>
                <End x="570.00003616732454" y="60.273291813144958"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_55" name="SpeciesReferenceGlyph_21" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="584.99996383267546" y="60.226708186855042"/>
                    <End x="658" y="60"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_56" name="SpeciesReferenceGlyph_22" metaboliteGlyph="Layout_15" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="570.00003616732454" y="60.273291813144958"/>
                    <End x="497" y="60.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_57" name="SpeciesReferenceGlyph_23" metaboliteGlyph="Layout_14" role="">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="574.5" y="165.5"/>
                    <End x="584.99996383267535" y="65.273291813144965"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_58" name="ReactionGlyph_9" reaction="Reaction_9">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="705.37289961092529" y="291.50107704459521"/>
                <End x="705.62710038907471" y="306.49892295540479"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_59" name="SpeciesReferenceGlyph_24" metaboliteGlyph="Layout_12" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="705.37289961092529" y="291.50107704459521"/>
                    <End x="705" y="269.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_60" name="SpeciesReferenceGlyph_25" metaboliteGlyph="Layout_16" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="705.62710038907471" y="306.49892295540479"/>
                    <End x="706" y="328.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_61" name="ReactionGlyph_10" reaction="Reaction_10">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="499.9791548058775" y="183.19121257197466"/>
                <End x="485.0208451941225" y="184.30878742802534"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_62" name="SpeciesReferenceGlyph_26" metaboliteGlyph="Layout_14" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="499.9791548058775" y="183.19121257197466"/>
                    <End x="536" y="180.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_63" name="SpeciesReferenceGlyph_27" metaboliteGlyph="Layout_17" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="485.0208451941225" y="184.30878742802534"/>
                    <End x="449" y="187"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_64" name="ReactionGlyph_11" reaction="Reaction_11">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="666.35262304689434" y="187.48178603803024"/>
                <End x="667.39737695310566" y="172.51821396196976"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_65" name="SpeciesReferenceGlyph_28" metaboliteGlyph="Layout_12" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="666.35262304689434" y="187.48178603803024"/>
                    <End x="663" y="235.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_66" name="SpeciesReferenceGlyph_29" metaboliteGlyph="Layout_18" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="667.39737695310566" y="172.51821396196976"/>
                    <End x="670.75" y="124.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_67" name="SpeciesReferenceGlyph_30" metaboliteGlyph="Layout_14" role="">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="613" y="180.5"/>
                    <End x="655.92257216737096" y="183.21978467310387"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_68" name="ReactionGlyph_12" reaction="Reaction_12">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="686" y="25.5"/>
                <End x="671" y="25.5"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_69" name="SpeciesReferenceGlyph_31" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="686" y="25.5"/>
                    <End x="707" y="25.5"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="707" y="25.5"/>
                    <End x="707" y="41.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_70" name="SpeciesReferenceGlyph_32" metaboliteGlyph="Layout_19" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="671" y="25.5"/>
                    <End x="650" y="25.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_71" name="ReactionGlyph_13" reaction="Reaction_13">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="928" y="192.5"/>
                <End x="943" y="192.5"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_72" name="SpeciesReferenceGlyph_33" metaboliteGlyph="Layout_13" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="928" y="192.5"/>
                    <End x="913" y="192.5"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="913" y="192.5"/>
                    <End x="913" y="156.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_73" name="SpeciesReferenceGlyph_34" metaboliteGlyph="Layout_20" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="943" y="192.5"/>
                    <End x="958" y="192.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_74" name="ReactionGlyph_14" reaction="Reaction_14">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="762.5" y="317"/>
                <End x="747.5" y="317"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_75" name="SpeciesReferenceGlyph_35" metaboliteGlyph="Layout_23" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="762.5" y="317"/>
                    <End x="784" y="317"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_76" name="SpeciesReferenceGlyph_36" metaboliteGlyph="Layout_12" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="747.5" y="317"/>
                    <End x="726" y="317"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="726" y="317"/>
                    <End x="726" y="269.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_77" name="SpeciesReferenceGlyph_37" metaboliteGlyph="Layout_12" role="">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="747" y="261"/>
                    <End x="768.84261518382311" y="261"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="768.84261518382311" y="261"/>
                    <End x="768.84261518382311" y="284.41921522340112"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="768.84261518382311" y="284.41921522340112"/>
                    <End x="762.5" y="284.41921522340112"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="762.5" y="284.41921522340112"/>
                    <End x="762.5" y="312"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_78" name="ReactionGlyph_15" reaction="Reaction_15">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="886" y="60"/>
                <End x="871" y="60"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_79" name="SpeciesReferenceGlyph_38" metaboliteGlyph="Layout_22" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="886" y="60"/>
                    <End x="1001" y="60"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_80" name="SpeciesReferenceGlyph_39" metaboliteGlyph="Layout_11" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="871" y="60"/>
                    <End x="756" y="60"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_81" name="SpeciesReferenceGlyph_40" metaboliteGlyph="Layout_11" role="">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="756" y="41.5"/>
                    <End x="756" y="20.147746816075134"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="756" y="20.147746816075134"/>
                    <End x="886" y="20.147746816075134"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="886" y="20.147746816075134"/>
                    <End x="886" y="55"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_82" name="SpeciesReferenceGlyph_41" metaboliteGlyph="Layout_13" role="">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="878" y="131.5"/>
                    <End x="886" y="65"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_83" name="ReactionGlyph_16" reaction="Reaction_16">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="572.79917917185037" y="258.99731091758781"/>
                <End x="573.20082082814963" y="244.00268908241219"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_84" name="SpeciesReferenceGlyph_42" metaboliteGlyph="Layout_24" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="572.79917917185037" y="258.99731091758781"/>
                    <End x="571.5" y="307.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_85" name="SpeciesReferenceGlyph_43" metaboliteGlyph="Layout_14" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="573.20082082814963" y="244.00268908241219"/>
                    <End x="574.5" y="195.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_86" name="SpeciesReferenceGlyph_44" metaboliteGlyph="Layout_5" role="">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="116.5" y="191.5"/>
                    <End x="116.5" y="255.04790663381181"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="116.5" y="255.04790663381181"/>
                    <End x="561.85578761474392" y="255.04790663381181"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_87" name="SpeciesReferenceGlyph_45" metaboliteGlyph="Layout_12" role="">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="663" y="252.5"/>
                    <End x="576.8450332134056" y="255.44940428377589"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_88" name="SpeciesReferenceGlyph_46" metaboliteGlyph="Layout_14" role="">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="555.25" y="195.5"/>
                    <End x="555.25" y="250.04969935541993"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="555.25" y="250.04969935541993"/>
                    <End x="561.98966816684367" y="250.04969935541993"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_89" name="TextGlyph" graphicalObject="Layout_3" text="V">
          <BoundingBox>
            <Position x="156" y="36.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_90" name="TextGlyph_1" graphicalObject="Layout_4" text="I">
          <BoundingBox>
            <Position x="251" y="167.5"/>
            <Dimensions width="75" height="32"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_91" name="TextGlyph_2" graphicalObject="Layout_5" text="T">
          <BoundingBox>
            <Position x="64" y="166.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_92" name="TextGlyph_3" graphicalObject="Layout_13" text="W">
          <BoundingBox>
            <Position x="843" y="131.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_93" name="TextGlyph_4" graphicalObject="Layout_14" text="E">
          <BoundingBox>
            <Position x="536" y="165.5"/>
            <Dimensions width="77" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_94" name="TextGlyph_5" graphicalObject="Layout_24" text="E">
          <BoundingBox>
            <Position x="533" y="307.5"/>
            <Dimensions width="77" height="30"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_95" name="TextGlyph_6" graphicalObject="Layout_12" text="Y2">
          <BoundingBox>
            <Position x="663" y="235.5"/>
            <Dimensions width="84" height="34"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_96" name="TextGlyph_7" graphicalObject="Layout_23" text="Y2">
          <BoundingBox>
            <Position x="784" y="300.5"/>
            <Dimensions width="91" height="33"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_97" name="TextGlyph_8" graphicalObject="Layout_11" text="Y1">
          <BoundingBox>
            <Position x="658" y="41.5"/>
            <Dimensions width="98" height="37"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_98" name="TextGlyph_9" graphicalObject="Layout_22" text="Y1">
          <BoundingBox>
            <Position x="1001" y="41.5"/>
            <Dimensions width="88" height="37"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
      <ListOfRenderInformation>
        <RenderInformation key="LocalRenderInformation_0" name="render info from CellDesigner" backgroundColor="#FFFFFFFF">
          <ListOfColorDefinitions>
            <ColorDefinition id="black" value="#000000"/>
            <ColorDefinition id="ColorDefinition" value="#ff3333"/>
            <ColorDefinition id="ColorDefinition_1" value="#ccccff"/>
            <ColorDefinition id="ColorDefinition_2" value="#ff9999"/>
            <ColorDefinition id="ColorDefinition_3" value="#99ffff"/>
            <ColorDefinition id="ColorDefinition_4" value="#ff66cc"/>
            <ColorDefinition id="ColorDefinition_5" value="#ff66ff"/>
            <ColorDefinition id="ColorDefinition_6" value="#ffcc00"/>
            <ColorDefinition id="ColorDefinition_7" value="#33ccff"/>
            <ColorDefinition id="ColorDefinition_8" value="#ff99cc"/>
            <ColorDefinition id="ColorDefinition_9" value="#ffccff"/>
            <ColorDefinition id="ColorDefinition_10" value="#99ccff"/>
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
            <Style key="LocalStyle_4" keyList="Layout_28 Layout_35 Layout_51 Layout_52 Layout_53 Layout_57 Layout_67 Layout_77 Layout_81 Layout_82 Layout_86 Layout_87 Layout_88">
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
            <Style key="LocalStyle_8" keyList="Layout_29 Layout_30">
              <Group stroke="ColorDefinition" stroke-width="2">
              </Group>
            </Style>
            <Style key="LocalStyle_9" keyList="Layout_31 Layout_41 Layout_44 Layout_60 Layout_63 Layout_66 Layout_70 Layout_73">
              <Group stroke="ColorDefinition" stroke-width="2" endHead="product_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_10" keyList="Layout_39 Layout_40">
              <Group stroke="ColorDefinition" stroke-width="2">
              </Group>
            </Style>
            <Style key="LocalStyle_11" keyList="Layout_42 Layout_43">
              <Group stroke="ColorDefinition" stroke-width="2">
              </Group>
            </Style>
            <Style key="LocalStyle_12" keyList="Layout_58 Layout_59">
              <Group stroke="ColorDefinition" stroke-width="2">
              </Group>
            </Style>
            <Style key="LocalStyle_13" keyList="Layout_61 Layout_62">
              <Group stroke="ColorDefinition" stroke-width="2">
              </Group>
            </Style>
            <Style key="LocalStyle_14" keyList="Layout_64 Layout_65">
              <Group stroke="ColorDefinition" stroke-width="2">
              </Group>
            </Style>
            <Style key="LocalStyle_15" keyList="Layout_68 Layout_69">
              <Group stroke="ColorDefinition" stroke-width="2">
              </Group>
            </Style>
            <Style key="LocalStyle_16" keyList="Layout_71 Layout_72">
              <Group stroke="ColorDefinition" stroke-width="2">
              </Group>
            </Style>
            <Style key="LocalStyle_17" keyList="Layout_89">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_18" keyList="Layout_90">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_19" keyList="Layout_91">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_20" keyList="Layout_92">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_21" keyList="Layout_93">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_22" keyList="Layout_94">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_23" keyList="Layout_95">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_24" keyList="Layout_96">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_25" keyList="Layout_97">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_26" keyList="Layout_98">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_27" keyList="Layout_3">
              <Group>
                <Ellipse fill="ColorDefinition_1" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_28" keyList="Layout_4">
              <Group>
                <Ellipse fill="ColorDefinition_2" cx="37.5" cy="16" rx="37.5" ry="16"/>
              </Group>
            </Style>
            <Style key="LocalStyle_29" keyList="Layout_5">
              <Group>
                <Ellipse fill="ColorDefinition_3" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_30" keyList="Layout_11">
              <Group>
                <Ellipse fill="ColorDefinition_4" cx="49" cy="18.5" rx="49" ry="18.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_31" keyList="Layout_12">
              <Group>
                <Ellipse fill="ColorDefinition_5" cx="42" cy="17" rx="42" ry="17"/>
              </Group>
            </Style>
            <Style key="LocalStyle_32" keyList="Layout_13">
              <Group>
                <Ellipse fill="ColorDefinition_6" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_33" keyList="Layout_14">
              <Group>
                <Ellipse fill="ColorDefinition_7" cx="38.5" cy="15" rx="38.5" ry="15"/>
              </Group>
            </Style>
            <Style key="LocalStyle_34" keyList="Layout_22">
              <Group>
                <Ellipse fill="ColorDefinition_8" cx="44" cy="18.5" rx="44" ry="18.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_35" keyList="Layout_23">
              <Group>
                <Ellipse fill="ColorDefinition_9" cx="45.5" cy="16.5" rx="45.5" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_36" keyList="Layout_24">
              <Group>
                <Ellipse fill="ColorDefinition_10" cx="38.5" cy="15" rx="38.5" ry="15"/>
              </Group>
            </Style>
          </ListOfStyles>
        </RenderInformation>
      </ListOfRenderInformation>
    </Layout>
  </ListOfLayouts>
  <SBMLReference file="../../../../Downloads/MODEL1605030001_url.xml">
    <SBMLMap SBMLid="Death_of_HPV_self_proliferating_cells_due_to_effector_cells" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Death_of_HPV_self_proliferating_due_to_Effector_cells" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Logistic_term_for_Effector_cells_1" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="N1" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="Production_of_HPV_due_to_HPV_self_proliferating" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="Production_of_HPV_due_to_HPV_self_proliferating_1" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Productionof_HPV_infected_cells" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Proliferation_of_HPV_self_proliferating" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Rate_Law_for_Production_of_Effector_cell_1_1" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Rate_Law_for_Production_of_HIV_virion_1" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Rate_Law_for_Production_of_HPV_due_to_HPVinfected_1" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Rate_Law_for_production_of_HIV_infected_cells_1" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="beta" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="c1" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="d" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="default" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="e_pi" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="e_rt" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="epi" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="mu" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="omega" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="re1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="re11" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="re12" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="re14" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="re15" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="re17" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="re18" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="re20" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="re24" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="re25" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="re26" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="re3" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="re4" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="re5" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="re7" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="re8" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="re9" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="s" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="s12" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="s13" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="s14" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="s16" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="s2" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="s3" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="s4" COPASIkey="Metabolite_2"/>
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
<dcterms:W3CDTF>2019-11-22T10:36:29Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2019-11-22T10:36:29Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
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
<dcterms:W3CDTF>2019-11-22T10:36:29Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2019-11-22T10:36:29Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
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
<dcterms:W3CDTF>2019-11-22T10:36:29Z</dcterms:W3CDTF>
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
