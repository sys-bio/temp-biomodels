<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-05-24 11:50:24 UTC -->
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
    <Function key="Function_40" name="Rate Law for b syn_1" type="UserDefined" reversible="false">
      <Expression>
        kdb*((1+alphaI*(Ip-Ip_star))/(1+betaI*(Ip-Ip_star)))*b_star+alphaA6*(1+Kb6*A4)*((A6-A6_star)^nA6/((A6-A6_star)^nA6+KA6^nA6*(1+Kth6*A4^nA)))+alphaA4*(1+Kb4*A6)*((A4-A4_star)^nA4/((A4-A4_star)^nA4+KA4^nA4*(1+Kth4*A6)^nA4))+alphaX*((x-x_star)/(x-x_star+KX))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="A4" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_294" name="A4_star" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="A6" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_280" name="A6_star" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_258" name="Ip" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="Ip_star" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="KA4" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="KA6" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="KX" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="Kb4" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="Kb6" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="Kth4" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="Kth6" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="alphaA4" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="alphaA6" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_254" name="alphaI" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="alphaX" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="b_star" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="betaI" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_264" name="kdb" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="nA" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="nA4" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="nA6" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="x" order="23" role="modifier"/>
        <ParameterDescription key="FunctionParameter_306" name="x_star" order="24" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Rate Law for b degr_1" type="UserDefined" reversible="false">
      <Expression>
        kdb*((1+alphaI*(Ip-Ip_star))/(1+betaI*(Ip-Ip_star)))*b
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_301" name="Ip" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="Ip_star" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="alphaI" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="b" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_293" name="betaI" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="kdb" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Rate Law for A6 syn_1" type="UserDefined" reversible="false">
      <Expression>
        kdA6*A6_star+kcl*(U-U_star)*((A6tot_norm-A6)/(1+B/KBA6))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_273" name="A6" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_295" name="A6_star" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="A6tot_norm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="B" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="KBA6" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="U" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_281" name="U_star" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="kcl" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="kdA6" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Rate Law for U degr_1" type="UserDefined" reversible="false">
      <Expression>
        delta*(U/(1+KII*(Ip-Ip_star)))*B
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_310" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="Ip" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="Ip_star" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="KII" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="U" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_246" name="delta" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Rate Law for A4 syn_1" type="UserDefined" reversible="false">
      <Expression>
        kdA4*A4_star+gamma*(U-U_star)*Ep
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="A4_star" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_316" name="Ep" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_312" name="U" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_314" name="U_star" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="gamma" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="kdA4" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Rate Law for c syn_1" type="UserDefined" reversible="false">
      <Expression>
        kdc*c_star+muA4*(1+Kc4*A6)*((A4-A4_star)^n/((A4-A4_star)^n+KA4c^n*(1+Kth4c*A6)^n))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_322" name="A4" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_324" name="A4_star" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="A6" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_328" name="KA4c" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="Kc4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="Kth4c" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="c_star" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="kdc" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="muA4" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="n" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Rate Law for C syn_1" type="UserDefined" reversible="false">
      <Expression>
        (kdC*C_star/c_star+ktC*(Ep-Ep_star))*c
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_327" name="C_star" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="Ep" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_332" name="Ep_star" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="c" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_323" name="c_star" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="kdC" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="ktC" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Rate Law for g syn_1" type="UserDefined" reversible="false">
      <Expression>
        kdg*g_star+etaC*((A4-A4_star+KA4g*(A4-A4_star)*(C-C_star))/(A4-A4_star+Kth4g*(A4-A4_star)*(C-C_star)+KC))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_329" name="A4" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_337" name="A4_star" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="C" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_343" name="C_star" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="KA4g" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="KC" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="Kth4g" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="etaC" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="g_star" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="kdg" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Rate Law for G syn_1" type="UserDefined" reversible="false">
      <Expression>
        (kdG*G_star/g_star+ktG*(Ep-Ep_star))*g
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_262" name="Ep" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_349" name="Ep_star" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_344" name="G_star" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="g" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_340" name="g_star" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="kdG" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="ktG" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Rate Law for Ep degr_1" type="UserDefined" reversible="false">
      <Expression>
        (kdeph1+kdeph2*(G-G_star))*(Ep/(Kdeph+Ep))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_354" name="Ep" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_338" name="G" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_346" name="G_star" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="Kdeph" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_352" name="kdeph1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="kdeph2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Rate Law for U syn_1" type="UserDefined" reversible="false">
      <Expression>
        (ksU/(1+KUI*(Ip-Ip_star))+Stress)/(1+Ep/KE+(U/KUU)^n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_362" name="Ep" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_325" name="Ip" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="Ip_star" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_364" name="KE" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="KUI" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="KUU" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="Stress" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="U" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_357" name="ksU" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_370" name="n" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Rate Law for Btot syn_1" type="UserDefined" reversible="false">
      <Expression>
        kdB*Btot_star/b_star*b
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_367" name="Btot_star" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="b" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_363" name="b_star" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="kdB" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Rate Law for Ep syn_1" type="UserDefined" reversible="false">
      <Expression>
        kph*((Etot_norm-Ep)*Pp/(Kph+(Etot_norm-Ep)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_342" name="Ep" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_365" name="Etot_norm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_374" name="Kph" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_372" name="Pp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_350" name="kph" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Rate Law for x syn_1" type="UserDefined" reversible="false">
      <Expression>
        ksp*Ip*((xtot_norm-x)/(Kx+xtot_norm-x))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_355" name="Ip" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_379" name="Kx" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_375" name="ksp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_377" name="x" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_361" name="xtot_norm" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response" simulationType="time" timeUnit="min" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="stochastic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqmodel:hasInstance>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/"/>
      </rdf:Bag>
    </bqmodel:hasInstance>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:29668363"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-06T00:00:00Z</dcterms:W3CDTF>
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
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Huang</vCard:Family>
                <vCard:Given>Chun-Sing</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Iowa</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>rodica-curtu@uiowa.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Curtu</vCard:Family>
                <vCard:Given>Rodica</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Iowa</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>thomas-rutkowski@uiowa.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Rutkowski</vCard:Family>
                <vCard:Given>D. Thomas</vCard:Given>
              </rdf:Description>
            </vCard:N>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>danilo.diedrichs@wheaton.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Diedrichs</vCard:Family>
                <vCard:Given>Danilo R.</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>Wheaton College</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Gomez</vCard:Family>
                <vCard:Given>Javier A.</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Iowa</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-30T18:23:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:hasPart rdf:resource="urn:miriam:reactome:R-HSA-381130"/>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1803300000"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006986"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:reactome:R-HSA-381119"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:go:GO:0005783"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <div class="dc:title">A data-entrained computational model for
testing the regulatory logic of the vertebrate unfolded protein
response</div>
    <div class="dc:bibliographicCitation">
      <p>This model is described in the article:</p>
      <div class="bibo:title">
        <a href="http://identifiers.org/pubmed/29668363" title="Access to this publication">A data-entrained
    computational model for testing the regulatory logic of the
    vertebrate unfolded protein response.</a>
      </div>
      <div class="bibo:authorList">Diedrichs DR, Gomez JA, Huang CS,
  Rutkowski DT, Curtu R.</div>
      <div class="bibo:Journal">Mol. Biol. Cell 2018 Apr; :
  mbcE17090565</div>
      <p>Abstract:</p>
      <div class="bibo:abstract">
        <p>The vertebrate unfolded protein response (UPR) is
    characterized by multiple interacting nodes among its three
    pathways, yet the logic underlying this regulatory complexity
    is unclear. To begin to address this issue, we created a
    computational model of the vertebrate UPR that was entrained
    upon and then validated against experimental data. As part of
    this validation, the model successfully predicted the
    phenotypes of cells with lesions in UPR signaling, including a
    surprising and previously unreported differential role for the
    eIF2? phosphatase GADD34 in exacerbating severe stress but
    ameliorating mild stress. We then used the model to test the
    functional importance of a feed-forward circuit within the
    PERK/CHOP axis, and of cross-regulatory control of BiP and CHOP
    expression. We found that the wiring structure of the UPR
    appears to balance the ability of the response to remain
    sensitive to ER stress yet also to be rapidly deactivated by
    improved protein folding conditions. This model should serve as
    a valuable resource for further exploring the regulatory logic
    of the UPR.</p>
      </div>
    </div>
    <div class="dc:publisher">
      <p>This model is hosted on 
  <a href="http://www.ebi.ac.uk/biomodels/">BioModels Database</a>
  and identified by: 
  <a href="http://identifiers.org/biomodels.db/MODEL1803300000">MODEL1803300000</a>.</p>
      <p>To cite BioModels Database, please use: 
  <a href="http://identifiers.org/pubmed/25414348" target="_blank">Chelliah V et al. BioModels: ten-year
  anniversary. Nucl. Acids Res. 2015, 43(Database
  issue):D542-8</a>.</p>
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
      <Compartment key="Compartment_0" name="ER" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-18T23:31:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005783"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="U" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-26T13:43:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:reactome:R-HSA-381130" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[U_star],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="A6" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-26T13:43:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P18850" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q99941" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[A6_star],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="b" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-26T13:44:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C21160" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:so:SO:0000234" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[b_star],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Btot" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-26T13:44:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C21160" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Btot_star],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="A4" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-12-20T16:16:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P18848" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[A4_star],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="c" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-12-20T16:16:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:uniprot:P35638" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:so:SO:0000234" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[c_star],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="C" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T15:16:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P35638" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[C_star],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="g" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T15:51:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:uniprot:O75807" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:so:SO:0000234" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[g_star],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="G" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T16:00:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:O75807" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[G_star],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="Ep" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0016310" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-27T16:54:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P05198" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Ep_star],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="x" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T00:52:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P17861" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[x_star],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="B" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-09-06T14:39:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:C21160"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[Btot],Reference=Concentration>/(1+&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[U],Reference=Concentration>/&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KBU],Reference=Value>)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="KBU" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-09-06T14:41:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="KBP" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-09-28T10:41:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="KBA6" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-03-05T13:17:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="A6tot_norm" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-03-05T13:18:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="CHOP/BiP ratio" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-07-25T17:52:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[C],Reference=Concentration>/&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[Btot],Reference=Concentration>
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="G_star" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-01-22T12:17:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="C_star" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-01-22T12:17:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="A4_star" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-01-22T12:18:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="U_star" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-01-22T12:18:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="A6_star" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-01-22T12:19:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="b_star" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-01-23T11:17:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="c_star" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T11:25:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="g_star" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-01-23T10:50:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="Btot_star" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-01-23T10:52:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="kdB" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-01-23T10:50:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/(16.6667*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="kdb" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-18T23:41:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/(16.6667*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="kdA4" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-04-11T12:45:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/(16.6667*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="kdA6" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-04-11T12:45:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/(16.6667*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="kdc" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-04-13T19:46:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/(16.6667*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="kdC" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-04-13T16:56:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/(16.6667*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="kdg" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-04-13T10:24:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/(16.6667*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="kdG" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-04-11T10:55:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/(16.6667*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="Ep_star" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-14T10:41:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="Stress" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-02-10T14:04:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/(16.6667*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="Etot_norm" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-18T23:37:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="f" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-18T23:50:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="x_star" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T00:53:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="xtot_norm" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T00:53:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="kdx" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T01:01:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1/(16.6667*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="KUP" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T01:21:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (1/&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[f],Reference=Value>-1)*(&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[U_star],Reference=Value>/(1+&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Btot_star],Reference=Value>/&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KBP],Reference=Value>*(1/(1+&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[U_star],Reference=Value>/&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KBU],Reference=Value>))))
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="KBI" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T01:25:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="KUI" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T01:25:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (1/&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[fi],Reference=Value>-1)*(&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[U_star],Reference=Value>/(1+&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Btot_star],Reference=Value>/&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KBI],Reference=Value>*(1/(1+&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[U_star],Reference=Value>/&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KBU],Reference=Value>))))
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="Pp" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0016310"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T01:30:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q9NZJ5"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KOperk],Reference=Value>*(1/&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[f],Reference=Value>)*(&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[U],Reference=Concentration>/(&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KUP],Reference=Value>+&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KUP],Reference=Value>/&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KBP],Reference=Value>*&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[B],Reference=Value>+&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[U],Reference=Concentration>))
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="Ip" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0016310"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T01:34:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:O75460"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KOire1],Reference=Value>*(1/&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[fi],Reference=Value>)*(&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[U],Reference=Concentration>/(&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KUI],Reference=Value>+&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KUI],Reference=Value>/&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KBI],Reference=Value>*&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[B],Reference=Value>+&lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[U],Reference=Concentration>))
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="KOperk" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-27T08:46:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="KOire1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-27T08:46:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="fi" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-29T01:29:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="alphaI" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-05T12:00:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="Ip_star" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-07T12:59:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="betaI" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-17T10:37:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Btot degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-26T14:12:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4999" name="k1" value="0.0002514"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="b syn" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-26T14:10:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5000" name="alphaA6" value="0.012"/>
          <Constant key="Parameter_5001" name="Kb6" value="0.56"/>
          <Constant key="Parameter_5002" name="nA6" value="2"/>
          <Constant key="Parameter_5003" name="KA6" value="3"/>
          <Constant key="Parameter_5004" name="Kth6" value="1e-05"/>
          <Constant key="Parameter_5005" name="nA" value="7"/>
          <Constant key="Parameter_5006" name="alphaA4" value="0.007"/>
          <Constant key="Parameter_4994" name="Kb4" value="0.5"/>
          <Constant key="Parameter_4995" name="nA4" value="2"/>
          <Constant key="Parameter_4996" name="KA4" value="3"/>
          <Constant key="Parameter_4997" name="Kth4" value="0.167"/>
          <Constant key="Parameter_4998" name="alphaX" value="0.002"/>
          <Constant key="Parameter_4968" name="KX" value="8"/>
          <Constant key="Parameter_4969" name="A4_star" value="1"/>
          <Constant key="Parameter_4970" name="A6_star" value="1"/>
          <Constant key="Parameter_4971" name="Ip" value="1"/>
          <Constant key="Parameter_4972" name="Ip_star" value="1"/>
          <Constant key="Parameter_4973" name="alphaI" value="0.2"/>
          <Constant key="Parameter_4974" name="b_star" value="1"/>
          <Constant key="Parameter_4975" name="betaI" value="0.1"/>
          <Constant key="Parameter_4976" name="kdb" value="0.001284"/>
          <Constant key="Parameter_4977" name="x_star" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Parameter_4996"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Parameter_5003"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Parameter_4968"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Parameter_4994"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Parameter_5001"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Parameter_4997"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Parameter_5004"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Parameter_5006"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_5000"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Parameter_4998"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Parameter_5005"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Parameter_4995"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Parameter_5002"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="b degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-26T14:11:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4978" name="Ip" value="1"/>
          <Constant key="Parameter_4979" name="Ip_star" value="1"/>
          <Constant key="Parameter_4980" name="alphaI" value="0.2"/>
          <Constant key="Parameter_4981" name="betaI" value="0.1"/>
          <Constant key="Parameter_4982" name="kdb" value="0.001284"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="A6 degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-26T14:09:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4983" name="k1" value="0.00384"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="A6 syn" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-26T14:09:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4984" name="kcl" value="4"/>
          <Constant key="Parameter_4985" name="A6_star" value="1"/>
          <Constant key="Parameter_4986" name="A6tot_norm" value="15"/>
          <Constant key="Parameter_4987" name="B" value="0.444444"/>
          <Constant key="Parameter_4988" name="KBA6" value="1.6e-05"/>
          <Constant key="Parameter_4989" name="U_star" value="1"/>
          <Constant key="Parameter_4990" name="kdA6" value="0.00384"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Parameter_4984"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="U degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-07-26T14:08:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4991" name="delta" value="1.5"/>
          <Constant key="Parameter_4992" name="KII" value="0.01"/>
          <Constant key="Parameter_4993" name="B" value="0.444444"/>
          <Constant key="Parameter_5007" name="Ip" value="1"/>
          <Constant key="Parameter_5008" name="Ip_star" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Parameter_4992"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Parameter_4991"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="A4 syn" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-12-20T16:16:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5009" name="gamma" value="0.001"/>
          <Constant key="Parameter_5010" name="A4_star" value="1"/>
          <Constant key="Parameter_5011" name="U_star" value="1"/>
          <Constant key="Parameter_5012" name="kdA4" value="0.00384"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_5009"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="A4 degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-12-20T16:21:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5013" name="k1" value="0.00384"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
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
      <Reaction key="Reaction_8" name="c syn" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-12-20T16:22:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5014" name="muA4" value="0.1"/>
          <Constant key="Parameter_5015" name="Kc4" value="0.56"/>
          <Constant key="Parameter_5016" name="n" value="2"/>
          <Constant key="Parameter_5017" name="KA4c" value="2"/>
          <Constant key="Parameter_5018" name="Kth4c" value="0.25"/>
          <Constant key="Parameter_5019" name="A4_star" value="1"/>
          <Constant key="Parameter_5020" name="c_star" value="1"/>
          <Constant key="Parameter_5021" name="kdc" value="0.00393"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Parameter_5017"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Parameter_5015"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Parameter_5018"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Parameter_5014"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Parameter_5016"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="c degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-12-20T16:24:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5022" name="k1" value="0.00393"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="C syn" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T15:16:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5023" name="ktC" value="0.0001"/>
          <Constant key="Parameter_5024" name="C_star" value="1"/>
          <Constant key="Parameter_5025" name="Ep_star" value="1"/>
          <Constant key="Parameter_5026" name="c_star" value="1"/>
          <Constant key="Parameter_5027" name="kdC" value="0.005478"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Parameter_5023"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="C degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T15:18:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5028" name="k1" value="0.005478"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="g syn" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T15:52:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5029" name="etaC" value="0.012"/>
          <Constant key="Parameter_5030" name="KA4g" value="0.75"/>
          <Constant key="Parameter_5031" name="Kth4g" value="0.1"/>
          <Constant key="Parameter_5032" name="KC" value="5"/>
          <Constant key="Parameter_5033" name="A4_star" value="1"/>
          <Constant key="Parameter_5034" name="C_star" value="1"/>
          <Constant key="Parameter_5035" name="g_star" value="1"/>
          <Constant key="Parameter_5036" name="kdg" value="0.003468"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Parameter_5030"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Parameter_5032"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Parameter_5031"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Parameter_5029"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="g degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T15:54:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5037" name="k1" value="0.003468"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="G syn" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T16:00:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5038" name="ktG" value="0.0015"/>
          <Constant key="Parameter_5039" name="Ep_star" value="1"/>
          <Constant key="Parameter_5045" name="G_star" value="1"/>
          <Constant key="Parameter_5044" name="g_star" value="1"/>
          <Constant key="Parameter_5043" name="kdG" value="0.003852"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Parameter_5038"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="G degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-17T16:02:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5040" name="k1" value="0.003852"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="Ep degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-27T16:57:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5041" name="kdeph1" value="0.03"/>
          <Constant key="Parameter_5042" name="kdeph2" value="0.08"/>
          <Constant key="Parameter_5046" name="Kdeph" value="7"/>
          <Constant key="Parameter_5047" name="G_star" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Parameter_5046"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Parameter_5041"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Parameter_5042"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="U syn" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-27T17:05:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5050" name="ksU" value="0.89"/>
          <Constant key="Parameter_5049" name="KUI" value="0.01"/>
          <Constant key="Parameter_5048" name="KE" value="3"/>
          <Constant key="Parameter_5051" name="KUU" value="6"/>
          <Constant key="Parameter_5052" name="n" value="4"/>
          <Constant key="Parameter_5053" name="Ip" value="1"/>
          <Constant key="Parameter_5054" name="Ip_star" value="1"/>
          <Constant key="Parameter_5055" name="Stress" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Parameter_5048"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Parameter_5049"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Parameter_5051"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Parameter_5050"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Parameter_5052"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Btot syn" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-01-27T17:06:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5056" name="Btot_star" value="1"/>
          <Constant key="Parameter_5057" name="b_star" value="1"/>
          <Constant key="Parameter_5058" name="kdB" value="0.0002514"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="Ep syn" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-08-25T01:41:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5059" name="kph" value="0.00651"/>
          <Constant key="Parameter_5060" name="Kph" value="14"/>
          <Constant key="Parameter_5061" name="Etot_norm" value="20"/>
          <Constant key="Parameter_5062" name="Pp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Parameter_5060"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Parameter_5059"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="x degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T01:10:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5063" name="k1" value="0.006546"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="x syn" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T01:41:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5064" name="ksp" value="0.00785"/>
          <Constant key="Parameter_5077" name="Kx" value="3"/>
          <Constant key="Parameter_5078" name="Ip" value="1"/>
          <Constant key="Parameter_5079" name="xtot_norm" value="16"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Parameter_5077"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Parameter_5064"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[U]" value="1" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[U_star],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[A6]" value="1" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[A6_star],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[b]" value="1" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[b_star],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[Btot]" value="1" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Btot_star],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[A4]" value="1" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[A4_star],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[c]" value="1" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[c_star],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[C]" value="1" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[C_star],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[g]" value="1" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[g_star],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[G]" value="1" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[G_star],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[Ep]" value="1" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Ep_star],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[x]" value="1" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[x_star],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[B]" value="0.44444444444444442" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KBU]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KBP]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KBA6]" value="1.5999999999999999e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[A6tot_norm]" value="15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[CHOP/BiP ratio]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[G_star]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[C_star]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[A4_star]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[U_star]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[A6_star]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[b_star]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[c_star]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[g_star]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Btot_star]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdB]" value="0.00025139999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdb]" value="0.001284" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdA4]" value="0.0038400000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdA6]" value="0.0038400000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdc]" value="0.0039300000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdC]" value="0.0054780000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdg]" value="0.0034680000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdG]" value="0.003852" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Ep_star]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Stress]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Etot_norm]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[f]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[x_star]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[xtot_norm]" value="16" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdx]" value="0.0065459999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KUP]" value="1.0782396088019561" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KBI]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KUI]" value="2.1784841075794623" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Pp]" value="0.99999999999999989" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Ip]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KOperk]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KOire1]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[fi]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[alphaI]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Ip_star]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[betaI]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[Btot degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[Btot degr],ParameterGroup=Parameters,Parameter=k1" value="0.00025139999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=alphaA6" value="0.012" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=Kb6" value="0.56000000000000005" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=nA6" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=KA6" value="3" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=Kth6" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=nA" value="7" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=alphaA4" value="0.0070000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=Kb4" value="0.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=nA4" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=KA4" value="3" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=Kth4" value="0.16700000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=alphaX" value="0.002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=KX" value="8" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=A4_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[A4_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=A6_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[A6_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=Ip" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Ip],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=Ip_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Ip_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=alphaI" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[alphaI],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=b_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[b_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=betaI" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[betaI],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=kdb" value="0.001284" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b syn],ParameterGroup=Parameters,Parameter=x_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[x_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b degr],ParameterGroup=Parameters,Parameter=Ip" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Ip],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b degr],ParameterGroup=Parameters,Parameter=Ip_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Ip_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b degr],ParameterGroup=Parameters,Parameter=alphaI" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[alphaI],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b degr],ParameterGroup=Parameters,Parameter=betaI" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[betaI],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[b degr],ParameterGroup=Parameters,Parameter=kdb" value="0.001284" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[A6 degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[A6 degr],ParameterGroup=Parameters,Parameter=k1" value="0.0038400000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdA6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[A6 syn]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[A6 syn],ParameterGroup=Parameters,Parameter=kcl" value="4" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[A6 syn],ParameterGroup=Parameters,Parameter=A6_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[A6_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[A6 syn],ParameterGroup=Parameters,Parameter=A6tot_norm" value="15" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[A6tot_norm],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[A6 syn],ParameterGroup=Parameters,Parameter=B" value="0.44444444444444442" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[A6 syn],ParameterGroup=Parameters,Parameter=KBA6" value="1.5999999999999999e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[KBA6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[A6 syn],ParameterGroup=Parameters,Parameter=U_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[U_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[A6 syn],ParameterGroup=Parameters,Parameter=kdA6" value="0.0038400000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdA6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[U degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[U degr],ParameterGroup=Parameters,Parameter=delta" value="1.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[U degr],ParameterGroup=Parameters,Parameter=KII" value="0.01" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[U degr],ParameterGroup=Parameters,Parameter=B" value="0.44444444444444442" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[U degr],ParameterGroup=Parameters,Parameter=Ip" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Ip],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[U degr],ParameterGroup=Parameters,Parameter=Ip_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Ip_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[A4 syn]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[A4 syn],ParameterGroup=Parameters,Parameter=gamma" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[A4 syn],ParameterGroup=Parameters,Parameter=A4_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[A4_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[A4 syn],ParameterGroup=Parameters,Parameter=U_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[U_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[A4 syn],ParameterGroup=Parameters,Parameter=kdA4" value="0.0038400000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdA4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[A4 degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[A4 degr],ParameterGroup=Parameters,Parameter=k1" value="0.0038400000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdA4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[c syn]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[c syn],ParameterGroup=Parameters,Parameter=muA4" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[c syn],ParameterGroup=Parameters,Parameter=Kc4" value="0.56000000000000005" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[c syn],ParameterGroup=Parameters,Parameter=n" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[c syn],ParameterGroup=Parameters,Parameter=KA4c" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[c syn],ParameterGroup=Parameters,Parameter=Kth4c" value="0.25" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[c syn],ParameterGroup=Parameters,Parameter=A4_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[A4_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[c syn],ParameterGroup=Parameters,Parameter=c_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[c_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[c syn],ParameterGroup=Parameters,Parameter=kdc" value="0.0039300000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[c degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[c degr],ParameterGroup=Parameters,Parameter=k1" value="0.0039300000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[C syn]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[C syn],ParameterGroup=Parameters,Parameter=ktC" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[C syn],ParameterGroup=Parameters,Parameter=C_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[C_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[C syn],ParameterGroup=Parameters,Parameter=Ep_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Ep_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[C syn],ParameterGroup=Parameters,Parameter=c_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[c_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[C syn],ParameterGroup=Parameters,Parameter=kdC" value="0.0054780000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[C degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[C degr],ParameterGroup=Parameters,Parameter=k1" value="0.0054780000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[g syn]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[g syn],ParameterGroup=Parameters,Parameter=etaC" value="0.012" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[g syn],ParameterGroup=Parameters,Parameter=KA4g" value="0.75" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[g syn],ParameterGroup=Parameters,Parameter=Kth4g" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[g syn],ParameterGroup=Parameters,Parameter=KC" value="5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[g syn],ParameterGroup=Parameters,Parameter=A4_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[A4_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[g syn],ParameterGroup=Parameters,Parameter=C_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[C_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[g syn],ParameterGroup=Parameters,Parameter=g_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[g_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[g syn],ParameterGroup=Parameters,Parameter=kdg" value="0.0034680000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[g degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[g degr],ParameterGroup=Parameters,Parameter=k1" value="0.0034680000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[G syn]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[G syn],ParameterGroup=Parameters,Parameter=ktG" value="0.0015" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[G syn],ParameterGroup=Parameters,Parameter=Ep_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Ep_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[G syn],ParameterGroup=Parameters,Parameter=G_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[G_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[G syn],ParameterGroup=Parameters,Parameter=g_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[g_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[G syn],ParameterGroup=Parameters,Parameter=kdG" value="0.003852" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[G degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[G degr],ParameterGroup=Parameters,Parameter=k1" value="0.003852" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdG],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[Ep degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[Ep degr],ParameterGroup=Parameters,Parameter=kdeph1" value="0.029999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[Ep degr],ParameterGroup=Parameters,Parameter=kdeph2" value="0.080000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[Ep degr],ParameterGroup=Parameters,Parameter=Kdeph" value="7" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[Ep degr],ParameterGroup=Parameters,Parameter=G_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[G_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[U syn]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[U syn],ParameterGroup=Parameters,Parameter=ksU" value="0.89000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[U syn],ParameterGroup=Parameters,Parameter=KUI" value="0.01" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[U syn],ParameterGroup=Parameters,Parameter=KE" value="3" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[U syn],ParameterGroup=Parameters,Parameter=KUU" value="6" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[U syn],ParameterGroup=Parameters,Parameter=n" value="4" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[U syn],ParameterGroup=Parameters,Parameter=Ip" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Ip],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[U syn],ParameterGroup=Parameters,Parameter=Ip_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Ip_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[U syn],ParameterGroup=Parameters,Parameter=Stress" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Stress],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[Btot syn]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[Btot syn],ParameterGroup=Parameters,Parameter=Btot_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Btot_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[Btot syn],ParameterGroup=Parameters,Parameter=b_star" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[b_star],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[Btot syn],ParameterGroup=Parameters,Parameter=kdB" value="0.00025139999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[Ep syn]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[Ep syn],ParameterGroup=Parameters,Parameter=kph" value="0.0065100000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[Ep syn],ParameterGroup=Parameters,Parameter=Kph" value="14" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[Ep syn],ParameterGroup=Parameters,Parameter=Etot_norm" value="20" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Etot_norm],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[Ep syn],ParameterGroup=Parameters,Parameter=Pp" value="0.99999999999999989" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Pp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[x degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[x degr],ParameterGroup=Parameters,Parameter=k1" value="0.0065459999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[kdx],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[x syn]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[x syn],ParameterGroup=Parameters,Parameter=ksp" value="0.0078499999999999993" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[x syn],ParameterGroup=Parameters,Parameter=Kx" value="3" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[x syn],ParameterGroup=Parameters,Parameter=Ip" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Ip],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Reactions[x syn],ParameterGroup=Parameters,Parameter=xtot_norm" value="16" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[xtot_norm],Reference=InitialValue>
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
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
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
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 1 1 1 1 1 1 1 1 1 1 1 0.44444444444444442 1 1.0782396088019561 2.1784841075794623 0.99999999999999989 1 1 0.80000000000000004 0.01 1.5999999999999999e-05 15 1 1 1 1 1 1 1 1 1 0.00025139999999999999 0.001284 0.0038400000000000001 0.0038400000000000001 0.0039300000000000003 0.0054780000000000002 0.0034680000000000002 0.003852 1 2 20 0.02 1 16 0.0065459999999999997 0.01 1 1 0.01 0.20000000000000001 1 0.10000000000000001 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="43200"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="4320"/>
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
    <PlotSpecification name="Figure 3" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[B]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[B],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Ip]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Ip],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Pp]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Values[Pp],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[A4]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[A4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[A6]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[A6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Btot]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[Btot],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[C],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ep]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[Ep],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[G]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[G],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[U]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[U],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[b]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[b],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[c]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[c],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[g]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[g],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[x]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Diedrichs2018 - A data-entrained computational model for testing the regulatory logic of the vertebrate unfolded protein response,Vector=Compartments[ER],Vector=Metabolites[x],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="MODEL1803300000.xml">
    <SBMLMap SBMLid="A4" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="A4_degr" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="A4_star" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="A4_syn" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="A6" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="A6_degr" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="A6_star" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="A6_syn" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="A6tot_norm" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="B" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="Btot" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Btot_degr" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Btot_star" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="Btot_syn" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="C" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="CHOP_BiP_ratio" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="C_degr" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="C_star" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="C_syn" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="ER" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="Ep" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="Ep_degr" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="Ep_star" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="Ep_syn" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="Etot_norm" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="G" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="G_degr" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="G_star" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="G_syn" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="Ip" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="Ip_star" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="KBA6" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="KBI" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="KBP" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="KBU" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="KOire1" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="KOperk" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="KUI" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="KUP" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="Pp" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="Stress" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="U" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="U_degr" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="U_star" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="U_syn" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="alphaI" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="b" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="b_degr" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="b_star" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="b_syn" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="betaI" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="c" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="c_degr" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="c_star" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="c_syn" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="f" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="fi" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="g" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="g_degr" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="g_star" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="g_syn" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="kdA4" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="kdA6" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="kdB" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="kdC" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="kdG" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="kdb" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="kdc" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="kdg" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="kdx" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="x" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="x_degr" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="x_star" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="x_syn" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="xtot_norm" COPASIkey="ModelValue_28"/>
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
  </ListOfUnitDefinitions>
</COPASI>
