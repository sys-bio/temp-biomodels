<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.40 (Build 275) (http://www.copasi.org) at 2023-06-14T10:31:50Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="40" versionDevel="275" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_42" name="FV_v_reg" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (v_vm*Q_max/(1+exp((theta-V_m)/sigma_comma))+v_vd*(a*k*(X+delta)+b)+v_vh*eta*H+v_vb*eta*B+D_null)/tau_v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="D_null" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="H" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_272" name="Q_max" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="V_m" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_276" name="X" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_277" name="a" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="b" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="delta" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="eta" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="k" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="sigma_comma" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="tau_v" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="theta" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="v_vb" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="v_vd" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="v_vh" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="v_vm" order="17" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Fn_prod" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        60*alpha
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_306" name="alpha" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="FH_reg_V_m" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        mu*Q_max/(1+exp((theta-V_m)/sigma_comma))/chi
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_305" name="Q_max" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="V_m" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_303" name="chi" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="mu" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="sigma_comma" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="theta" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="FV_m_reg" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (v_mv*Q_max/(1+exp((theta-V_v)/sigma_comma))+v_md*(a*k*(X+delta)+b)+A_null)/tau_m
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_294" name="A_null" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="Q_max" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="V_v" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_297" name="X" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_298" name="a" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="b" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="delta" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="k" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="sigma_comma" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="tau_m" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="theta" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="v_md" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="v_mv" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Fx_prod" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (gamma*(X/3+4/3*X^3-256/105*X^7)+B+rho*(1/3-Theta)*(1-tanh(q*X)))/kappa
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_321" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="Theta" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="X" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_318" name="gamma" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="kappa" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_316" name="q" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="rho" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Fy_reg_x" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        -X*((day/(f*tau_c))^2+h*B)/kappa
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_322" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="X" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_310" name="day" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="f" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="h" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="kappa" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="tau_c" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Rate Law for V_v degradation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        1/tau_v*V_v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_329" name="V_v" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_328" name="tau_v" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Rate Law for H degradation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        1/chi*H
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_326" name="H" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_327" name="chi" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Fx_reg_y" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Y/kappa
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_324" name="Y" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_325" name="kappa" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Rate Law for V_m degradation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        1/tau_m*V_m
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_330" name="V_m" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_323" name="tau_m" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Fn_deg" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        60*(alpha+beta)*n
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_332" name="alpha" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="beta" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="n" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Fy_prod" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        B*Y/3/kappa
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_336" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="Y" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_334" name="kappa" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="1" type="deterministic" avogadroConstant="6.0221407599999999e+23">
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
        <rdf:li rdf:resource="http://identifiers.org/GO:0042745"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/40674"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:24039566"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2023-01-02T12:34:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>Zsofia.Bujtar@mdc-berlin.de</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Bujtár</vCard:Family>
                <vCard:Given>Zsófia</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>Max-Delbrück-Centrum für Molekulare Medizin in der Helmholtz-Gemeinschaft</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2023-01-02T12:34:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Default" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="V_v(mean_cell_body_potential_VLPO)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:uberon:UBERON:8440014" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="V_m(mean_cell_body_potential_MA)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="H(sleep_homeostatic_drive)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go.ref:GO:0160060" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="n(fraction_of_photoreceptors_that_are_activated)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C32954" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="x(SCN_activity)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C74537" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="y(complement_of_x)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_5">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Theta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Q_max" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="theta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="sigma_comma" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="G" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="r" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="h" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="q" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="rho" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="kappa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <InitialExpression>
          12/PI*3600
        </InitialExpression>
        <Unit>
          s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="f" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="tau_c" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="gamma" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="delta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="k" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="v_vd" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          mV*s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="v_md" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          mV*s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="v_vb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          mV*s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="eta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="A_null" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="D_null" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          mV
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="chi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <InitialExpression>
          22*3600
        </InitialExpression>
        <Unit>
          s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="mu" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="v_vh" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          mV*s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="v_vm" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          mV*s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="v_mv" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          mV*s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="tau_v" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="tau_m" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="B" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          (1-&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[r],Reference=InitialValue>*&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default],Vector=Metabolites[x(SCN_activity)],Reference=Concentration>)*(1-&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[r],Reference=InitialValue>*&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default],Vector=Metabolites[y(complement_of_x)],Reference=Concentration>)*&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[B_circumflex],Reference=Value>
        </Expression>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="alpha" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/SBO:0000656" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[alpha_null],Reference=InitialValue>*(&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[I_tilded],Reference=Value>/&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[I_null],Reference=InitialValue>)^&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[p],Reference=InitialValue>*(&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[I_tilded],Reference=Value>/(&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[I_tilded],Reference=Value>+&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[I_one],Reference=Value>))
        </Expression>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="beta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <InitialExpression>
          0.40000000000000002/3600
        </InitialExpression>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="day" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          h
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="Qm" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[Q_max],Reference=InitialValue>/(1+exp((&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[theta],Reference=InitialValue>-&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default],Vector=Metabolites[V_m(mean_cell_body_potential_MA)],Reference=Concentration>)/&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[sigma_comma],Reference=InitialValue>))
        </Expression>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="B_circumflex" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[G],Reference=InitialValue>*&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[alpha],Reference=Value>*(1-&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default],Vector=Metabolites[n(fraction_of_photoreceptors_that_are_activated)],Reference=Concentration>)
        </Expression>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="Omega" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="I_on" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          lx
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="I_tilded" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[Omega],Reference=Value>*&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[I_on],Reference=InitialValue>*if(&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[I],Reference=Value> lt 0 xor 24*3600 lt 0,&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[I],Reference=Value>-24*3600*ceil(&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[I],Reference=Value>/(24*3600)),&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[I],Reference=Value>-24*3600*floor(&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[I],Reference=Value>/(24*3600)))
        </Expression>
        <Unit>
          lx
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="I" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="alpha_null" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <InitialExpression>
          6/3600
        </InitialExpression>
        <Unit>
          1/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="I_null" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          lx
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="I_one" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <Unit>
          lx
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="V_m_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7456" name="tau_m" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="V_v_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7455" name="tau_v" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="V_v_Regulation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go.ref:GO:0009966" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7453" name="B" value="0"/>
          <Constant key="Parameter_7452" name="D_null" value="-4.8"/>
          <Constant key="Parameter_7454" name="Q_max" value="100"/>
          <Constant key="Parameter_7451" name="a" value="1"/>
          <Constant key="Parameter_7450" name="b" value="4.8"/>
          <Constant key="Parameter_7448" name="delta" value="-0.7"/>
          <Constant key="Parameter_7447" name="eta" value="1"/>
          <Constant key="Parameter_7449" name="k" value="17"/>
          <Constant key="Parameter_7446" name="sigma_comma" value="3"/>
          <Constant key="Parameter_7445" name="tau_v" value="10"/>
          <Constant key="Parameter_7443" name="theta" value="10"/>
          <Constant key="Parameter_7442" name="v_vb" value="0"/>
          <Constant key="Parameter_7444" name="v_vd" value="-0.17"/>
          <Constant key="Parameter_7441" name="v_vh" value="1"/>
          <Constant key="Parameter_7440" name="v_vm" value="-2.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="V_m_Regulation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go.ref:GO:0009966" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7439" name="A_null" value="1.3"/>
          <Constant key="Parameter_7437" name="Q_max" value="100"/>
          <Constant key="Parameter_7436" name="a" value="1"/>
          <Constant key="Parameter_7438" name="b" value="4.8"/>
          <Constant key="Parameter_7435" name="delta" value="-0.7"/>
          <Constant key="Parameter_7434" name="k" value="17"/>
          <Constant key="Parameter_7433" name="sigma_comma" value="3"/>
          <Constant key="Parameter_7431" name="tau_m" value="10"/>
          <Constant key="Parameter_7430" name="theta" value="10"/>
          <Constant key="Parameter_7432" name="v_md" value="-0.08"/>
          <Constant key="Parameter_7429" name="v_mv" value="-1.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="H_Regulation_by_V_m" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go.ref:GO:0009966" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7428" name="Q_max" value="100"/>
          <Constant key="Parameter_7427" name="chi" value="79200"/>
          <Constant key="Parameter_7426" name="mu" value="4.4"/>
          <Constant key="Parameter_7425" name="sigma_comma" value="3"/>
          <Constant key="Parameter_7424" name="theta" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="H_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7422" name="chi" value="79200"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="x_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/SBO:0000393" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7421" name="B" value="0"/>
          <Constant key="Parameter_7423" name="Theta" value="0"/>
          <Constant key="Parameter_7420" name="gamma" value="0.13"/>
          <Constant key="Parameter_7419" name="kappa" value="13751"/>
          <Constant key="Parameter_7418" name="q" value="10"/>
          <Constant key="Parameter_7416" name="rho" value="0.032"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="y_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/SBO:0000393" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7415" name="B" value="0"/>
          <Constant key="Parameter_7417" name="kappa" value="13751"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="n_Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7414" name="alpha" value="0"/>
          <Constant key="Parameter_7413" name="beta" value="0.000111111"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="n_Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7411" name="alpha" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="x_Regulation_by_y" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go.ref:GO:0009966" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7410" name="kappa" value="13751"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="y_Regulation_by_x" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go.ref:GO:0009966" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7412" name="B" value="0"/>
          <Constant key="Parameter_7409" name="day" value="24"/>
          <Constant key="Parameter_7408" name="f" value="0.99729"/>
          <Constant key="Parameter_7406" name="h" value="0.55"/>
          <Constant key="Parameter_7405" name="kappa" value="13751"/>
          <Constant key="Parameter_7407" name="tau_c" value="24.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="asleep" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[Q_max],Reference=InitialValue>/(1+exp(&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[theta],Reference=InitialValue>-&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default],Vector=Metabolites[V_m(mean_cell_body_potential_MA)],Reference=Concentration>/&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[sigma_comma],Reference=InitialValue>)) le 1
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[Theta]" targetKey="ModelValue_0">
            <Expression>
              1
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[Omega]" targetKey="ModelValue_36">
            <Expression>
              0.029999999999999999
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="awake" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[Q_max],Reference=InitialValue>/(1+exp(&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[theta],Reference=InitialValue>-&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default],Vector=Metabolites[V_m(mean_cell_body_potential_MA)],Reference=Concentration>/&lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[sigma_comma],Reference=InitialValue>)) gt 1
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[Theta]" targetKey="ModelValue_0">
            <Expression>
              0
            </Expression>
          </Assignment>
          <Assignment target="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[Omega]" targetKey="ModelValue_36">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_2" name="day" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Reference=Time> lt 12*3600
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[I]" targetKey="ModelValue_39">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_3" name="night" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Event_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Reference=Time> ge 12*3600
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment target="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[I]" targetKey="ModelValue_39">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default],Vector=Metabolites[V_v(mean_cell_body_potential_VLPO)]" value="3.8200792089397799" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default],Vector=Metabolites[V_m(mean_cell_body_potential_MA)]" value="-17.598118661302198" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default],Vector=Metabolites[H(sleep_homeostatic_drive)]" value="5.5737709663254096" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default],Vector=Metabolites[n(fraction_of_photoreceptors_that_are_activated)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default],Vector=Metabolites[x(SCN_activity)]" value="-0.64422994013489798" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Compartments[Default],Vector=Metabolites[y(complement_of_x)]" value="-0.80352783680353501" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[Theta]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[Q_max]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[theta]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[sigma_comma]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[G]" value="37" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[r]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[h]" value="0.55000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[q]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[rho]" value="0.032000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[kappa]" value="13750.987083139757" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              12/PI*3600
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[f]" value="0.99729000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[tau_c]" value="24.199999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[gamma]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[delta]" value="-0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[a]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[k]" value="17" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[b]" value="4.7999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[v_vd]" value="-0.17000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[v_md]" value="-0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[v_vb]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[eta]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[A_null]" value="1.3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[D_null]" value="-4.7999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[chi]" value="79200" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              22*3600
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[mu]" value="4.4000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[v_vh]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[v_vm]" value="-2.1000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[v_mv]" value="-1.8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[tau_v]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[tau_m]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[B]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[alpha]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[beta]" value="0.00011111111111111112" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              0.40000000000000002/3600
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[day]" value="24" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[Qm]" value="0.010109256408163255" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[B_circumflex]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[Omega]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[I_on]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[I_tilded]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[I]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[alpha_null]" value="0.0016666666666666668" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              6/3600
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[I_null]" value="9500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[p]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[I_one]" value="10" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_m_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_m_Degradation],ParameterGroup=Parameters,Parameter=tau_m" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[tau_m],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_v_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_v_Degradation],ParameterGroup=Parameters,Parameter=tau_v" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[tau_v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_v_Regulation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_v_Regulation],ParameterGroup=Parameters,Parameter=B" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_v_Regulation],ParameterGroup=Parameters,Parameter=D_null" value="-4.7999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[D_null],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_v_Regulation],ParameterGroup=Parameters,Parameter=Q_max" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[Q_max],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_v_Regulation],ParameterGroup=Parameters,Parameter=a" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_v_Regulation],ParameterGroup=Parameters,Parameter=b" value="4.7999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_v_Regulation],ParameterGroup=Parameters,Parameter=delta" value="-0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[delta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_v_Regulation],ParameterGroup=Parameters,Parameter=eta" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_v_Regulation],ParameterGroup=Parameters,Parameter=k" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[k],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_v_Regulation],ParameterGroup=Parameters,Parameter=sigma_comma" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[sigma_comma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_v_Regulation],ParameterGroup=Parameters,Parameter=tau_v" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[tau_v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_v_Regulation],ParameterGroup=Parameters,Parameter=theta" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_v_Regulation],ParameterGroup=Parameters,Parameter=v_vb" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[v_vb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_v_Regulation],ParameterGroup=Parameters,Parameter=v_vd" value="-0.17000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[v_vd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_v_Regulation],ParameterGroup=Parameters,Parameter=v_vh" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[v_vh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_v_Regulation],ParameterGroup=Parameters,Parameter=v_vm" value="-2.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[v_vm],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_m_Regulation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_m_Regulation],ParameterGroup=Parameters,Parameter=A_null" value="1.3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[A_null],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_m_Regulation],ParameterGroup=Parameters,Parameter=Q_max" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[Q_max],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_m_Regulation],ParameterGroup=Parameters,Parameter=a" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_m_Regulation],ParameterGroup=Parameters,Parameter=b" value="4.7999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_m_Regulation],ParameterGroup=Parameters,Parameter=delta" value="-0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[delta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_m_Regulation],ParameterGroup=Parameters,Parameter=k" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[k],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_m_Regulation],ParameterGroup=Parameters,Parameter=sigma_comma" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[sigma_comma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_m_Regulation],ParameterGroup=Parameters,Parameter=tau_m" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[tau_m],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_m_Regulation],ParameterGroup=Parameters,Parameter=theta" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_m_Regulation],ParameterGroup=Parameters,Parameter=v_md" value="-0.080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[v_md],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[V_m_Regulation],ParameterGroup=Parameters,Parameter=v_mv" value="-1.8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[v_mv],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[H_Regulation_by_V_m]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[H_Regulation_by_V_m],ParameterGroup=Parameters,Parameter=Q_max" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[Q_max],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[H_Regulation_by_V_m],ParameterGroup=Parameters,Parameter=chi" value="79200" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[chi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[H_Regulation_by_V_m],ParameterGroup=Parameters,Parameter=mu" value="4.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[H_Regulation_by_V_m],ParameterGroup=Parameters,Parameter=sigma_comma" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[sigma_comma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[H_Regulation_by_V_m],ParameterGroup=Parameters,Parameter=theta" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[H_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[H_Degradation],ParameterGroup=Parameters,Parameter=chi" value="79200" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[chi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[x_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[x_Production],ParameterGroup=Parameters,Parameter=B" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[x_Production],ParameterGroup=Parameters,Parameter=Theta" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[Theta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[x_Production],ParameterGroup=Parameters,Parameter=gamma" value="0.13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[gamma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[x_Production],ParameterGroup=Parameters,Parameter=kappa" value="13750.987083139757" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[x_Production],ParameterGroup=Parameters,Parameter=q" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[q],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[x_Production],ParameterGroup=Parameters,Parameter=rho" value="0.032000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[y_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[y_Production],ParameterGroup=Parameters,Parameter=B" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[y_Production],ParameterGroup=Parameters,Parameter=kappa" value="13750.987083139757" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[n_Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[n_Degradation],ParameterGroup=Parameters,Parameter=alpha" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[alpha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[n_Degradation],ParameterGroup=Parameters,Parameter=beta" value="0.00011111111111111112" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[n_Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[n_Production],ParameterGroup=Parameters,Parameter=alpha" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[alpha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[x_Regulation_by_y]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[x_Regulation_by_y],ParameterGroup=Parameters,Parameter=kappa" value="13750.987083139757" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[y_Regulation_by_x]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[y_Regulation_by_x],ParameterGroup=Parameters,Parameter=B" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[y_Regulation_by_x],ParameterGroup=Parameters,Parameter=day" value="24" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[day],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[y_Regulation_by_x],ParameterGroup=Parameters,Parameter=f" value="0.99729000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[y_Regulation_by_x],ParameterGroup=Parameters,Parameter=h" value="0.55000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[y_Regulation_by_x],ParameterGroup=Parameters,Parameter=kappa" value="13750.987083139757" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Reactions[y_Regulation_by_x],ParameterGroup=Parameters,Parameter=tau_c" value="24.199999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[tau_c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
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
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 3.8200792089397799 -17.598118661302198 5.5737709663254096 0 -0.64422994013489798 -0.80352783680353501 0 0 0.010109256408163255 0 0 1 0 100 10 3 37 0.40000000000000002 0.55000000000000004 10 0.032000000000000001 13750.987083139757 0.99729000000000001 24.199999999999999 0.13 -0.69999999999999996 1 17 4.7999999999999998 -0.17000000000000001 -0.080000000000000002 0 1 1.3 -4.7999999999999998 79200 4.4000000000000004 1 -2.1000000000000001 -1.8 10 10 0.00011111111111111112 24 0 0 0 0.0016666666666666668 9500 0.5 10 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_17" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="86400"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="86400"/>
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
    <Task key="Task_19" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="10"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[v_md],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="-0.040000000000000001"/>
            <Parameter name="Maximum" type="float" value="-0.16"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Values" type="string" value="0.02, 0, -0.08"/>
            <Parameter name="Use Values" type="bool" value="1"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_20" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_21" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
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
    <Task key="Task_23" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_25" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_26" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_27" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_28" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_29" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_30" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_18" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_19" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_20" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <Report key="Report_21" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="Qm" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Qm]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Phillips2013 - physiologically based modeling explaining Mammalian rest/activity patterns,Vector=Values[Qm],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Phillips2013.xml">
    <SBMLMap SBMLid="A_null" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="B" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="B_circumflex" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="D_null" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="FH_reg_V_m" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="FV_m_reg" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="FV_v_reg" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Fn_deg" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Fn_syn" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Fx_prod" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Fx_reg_y" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Fy_reg_x" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Fy_syn" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="G" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="H" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="H_deg" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="I" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="I_null" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="I_on" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="I_one" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="I_tilded" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="Omega" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="Q_max" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="Qm" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="Rate_Law_for_H_degradation" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Rate_Law_for_V_m_degradation" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Rate_Law_for_V_v_degradation" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Theta" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="V_m" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="V_v" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Vm_H" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="Vm_Vv" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Vm_deg" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Vv_Vm" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="Vv_deg" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="X" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="X_Y" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="X_syn" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="Y" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Y_X" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="Y_syn" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="a" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="alpha" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="alpha_null" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="asleep_0" COPASIkey="Event_0"/>
    <SBMLMap SBMLid="awake_0" COPASIkey="Event_1"/>
    <SBMLMap SBMLid="b" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="beta" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="chi" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="day" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="day_1" COPASIkey="Event_2"/>
    <SBMLMap SBMLid="delta" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="eta" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="f" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="gamma" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="h" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="individual" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="k" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="kappa" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="mu" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="n" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="n_deg" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="n_syn" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="night_0" COPASIkey="Event_3"/>
    <SBMLMap SBMLid="p" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="q" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="r" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="rho" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="sigma_comma" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="tau_c" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="tau_m" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="tau_v" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="theta" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="v_md" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="v_mv" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="v_vb" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="v_vd" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="v_vh" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="v_vm" COPASIkey="ModelValue_26"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_3" name="gram" symbol="g">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_2">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        g
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_7" name="ampere" symbol="A">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_6">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        A
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_11" name="candela" symbol="cd">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_10">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        cd
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_15" name="dimensionless" symbol="1">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_14">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_39" name="lux" symbol="lx">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_38">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m^-2*cd
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_59" name="volt" symbol="V">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_58">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m^2*kg*s^-3*A^-1
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_67" name="hour" symbol="h">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_66">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        3600*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
