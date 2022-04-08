<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2020-01-06 14:20:50 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_42" name="Function for increase in the total tumor cell population in number of cells" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T10:52:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        a * T * (1- b * T)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_270" name="a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="T" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_272" name="b" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for removal of tumor cell from the system by immune cells" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T10:53:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        c * exp(- delta_T * R) * N * T + D * T
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_289" name="c" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="delta_T" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="R" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_290" name="N" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_292" name="T" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_294" name="D" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for increase in the number of natural killer cell per litre of blood" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T10:57:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        f * ((e_f) *C - N) + (p_N * N * I)/(g_N + I)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_273" name="f" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="C" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_264" name="N" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_302" name="p_N" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="I" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_306" name="g_N" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="e_f" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function of removal of natural killer cell" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:00:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        p * N * T
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_250" name="p" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="N" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_278" name="T" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for Increase in the number of CD8+ T cell per litre of blood" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:03:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        (r1 * N + r2 * C) * T + (p_I * L * I) / (g_I + I) + j * (T/(k + T)) * L
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_319" name="r1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="N" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_324" name="r2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="C" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_317" name="T" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_328" name="p_I" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="L" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_332" name="I" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_334" name="g_I" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="j" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="k" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for decrease in the number of CD8+ T cell" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:07:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        m * L + q * L * T + (z * L * L * R * I)/(kappa +I)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_350" name="m" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="L" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_321" name="q" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="T" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_349" name="z" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="R" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_344" name="I" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_314" name="kappa" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for increase in the number of Treg cells per litre of blood" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:12:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        u * ((w_u) * C - R) + (p_R * R *I)/(g_R + I)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_338" name="u" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="C" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_318" name="R" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_346" name="p_R" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_378" name="I" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_384" name="g_R" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="w_u" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for decrease in the number of Treg cells" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:15:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        H_R * (1 - exp(- delta_R * S)) *R
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_286" name="H_R" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_355" name="delta_R" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="S" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_376" name="R" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for increase in the concentration of lymphocyte" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:17:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        beta * ((alpha_beta)- C)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_352" name="beta" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_370" name="C" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_419" name="alpha_beta" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for increase in the concentration of IL-2 per litre of blood" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:21:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        phi * C + (w * L * I)/(zeta + I)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_367" name="phi" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="C" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_369" name="w" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_365" name="L" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_366" name="I" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_394" name="zeta" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for decrease in the concentration of IL-2 per litre of blood" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:26:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        mu_I * I
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_323" name="mu_I" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_387" name="I" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for injecting the concentration of sunitinib per litre of body volume" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:40:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        vs
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_371" name="vs" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for Sunitinib not working per litre of body volume" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:43:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        - n * S
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_363" name="n" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_414" name="S" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C17837"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.3934/dcdsb.2013.18.915"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T10:14:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment

Lisette dePillis 1, , Trevor Caldwell 2, , Elizabeth Sarapata 2, and  Heather Williams 2,
1. 	

Department of Mathematics, Harvey Mudd College, Claremont, CA 91711
2. 	

Harvey Mudd College, Claremont, CA 91711, United States, United States, United States

    Abstract


We present a mathematical model to study the effects of the regulatory T cells (Treg) on Renal Cell Carcinoma (RCC) treatment with sunitinib. The drug sunitinib inhibits the natural self-regulation of the immune system, allowing the effector components of the immune system to function for longer periods of time. This mathematical model builds upon our non-linear ODE model by de Pillis et al. (2009) [13] to incorporate sunitinib treatment, regulatory T cell dynamics, and RCC-specific parameters. The model also elucidates the roles of certain RCC-specific parameters in determining key differences between in silico patients whose immune profiles allowed them to respond well to sunitinib treatment, and those whose profiles did not.
    Simulations from our model are able to produce results that reflect clinical outcomes to sunitinib treatment such as: (1) sunitinib treatments following standard protocols led to improved tumor control (over no treatment) in about 40% of patients; (2) sunitinib treatments at double the standard dose led to a greater response rate in about 15% the patient population; (3) simulations of patient response indicated improved responses to sunitinib treatment when the patient's immune strength scaling and the immune system strength coefficients parameters were low, allowing for a slightly stronger natural immune response.
Keywords: Renal cell carcinoma, mathematical modeling., sunitinib, immune system, regulatory T cells.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="T" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C12922"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T14:18:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="N" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:bto:BTO:0000914"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T14:16:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="L" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C12543"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T14:16:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="R" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C78829"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T14:17:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="C" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C12922"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T13:56:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="I" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C20507"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T14:15:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="S" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C71622"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T14:17:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="D" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:46:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[d],Reference=InitialValue>*((&lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment],Vector=Metabolites[L],Reference=InitialConcentration>/&lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>)^&lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[l],Reference=InitialValue>/(&lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[s],Reference=InitialValue>+(&lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment],Vector=Metabolites[L],Reference=InitialConcentration>/&lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=InitialConcentration>)^&lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[l],Reference=InitialValue>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="d" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="l" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="s" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="a" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="b" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="c" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="delta_T" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="e_f" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="f" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="p" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="p_N" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="C" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="g_N" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="m" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="q" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="r_1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="r_2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="p_I" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="g_I" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="z" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="kappa" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="j" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="k" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="w_u" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="u" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="p_R" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="g_R" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="H_R" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="delta_R" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T12:19:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="alpha_beta" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="beta" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="mu_I" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="w" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="phi" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="zeta" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="n" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="vs" simulationType="fixed" addNoise="false">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Increase in total tumor cell population in number of cells" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C25533"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T10:51:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4940" name="a" value="0.2065"/>
          <Constant key="Parameter_4941" name="b" value="2.145e-10"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Removal of tumor cell from the system by immune cells" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C64914"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T10:53:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4935" name="c" value="8.68e-10"/>
          <Constant key="Parameter_4937" name="delta_T" value="1.59e-09"/>
          <Constant key="Parameter_4936" name="D" value="9.47553e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Increase in number of Natural killer cell per litre of blood" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C25533"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T10:56:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4904" name="f" value="0.0125"/>
          <Constant key="Parameter_4908" name="p_N" value="0.0668"/>
          <Constant key="Parameter_4763" name="g_N" value="250360"/>
          <Constant key="Parameter_4786" name="e_f" value="0.1168"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Removal of natural killer cell from the system" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C64914"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T10:59:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4755" name="p" value="6.682e-14"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Increase in the number of CD8+ T cell per litre of blood" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C25533"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:02:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4753" name="r1" value="6.682e-12"/>
          <Constant key="Parameter_4748" name="r2" value="1e-15"/>
          <Constant key="Parameter_4747" name="p_I" value="1.111"/>
          <Constant key="Parameter_4760" name="g_I" value="2503.6"/>
          <Constant key="Parameter_4744" name="j" value="0.1245"/>
          <Constant key="Parameter_4743" name="k" value="2.019e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Decrease in the number of CD8+ T cell" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C64914"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:05:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4745" name="m" value="0.009"/>
          <Constant key="Parameter_4749" name="q" value="3.422e-10"/>
          <Constant key="Parameter_4750" name="z" value="2.3085e-13"/>
          <Constant key="Parameter_4746" name="kappa" value="2503.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Increase in the number of Treg cells per litre of blood" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C25533"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:10:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4739" name="u" value="0.03851"/>
          <Constant key="Parameter_4740" name="p_R" value="0.03598"/>
          <Constant key="Parameter_4741" name="g_R" value="11.027"/>
          <Constant key="Parameter_4742" name="w_u" value="0.0122"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Decrease in the number of Treg cells" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C64914"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:13:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4738" name="H_R" value="0.227"/>
          <Constant key="Parameter_4737" name="delta_R" value="50.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Increase in the concentration of lymphocyte per litre of blood not including NK cells, CD8+ T cells and regulatory T cells" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C25533"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:16:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4735" name="beta" value="0.0063"/>
          <Constant key="Parameter_4736" name="alpha_beta" value="2.14e+09"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="Increase in the concentration of IL-2 per litre of blood" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C25533"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:18:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4734" name="phi" value="3.594e-07"/>
          <Constant key="Parameter_4733" name="w" value="0.05314"/>
          <Constant key="Parameter_4793" name="zeta" value="2503.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="Decrease in the concentration of IL-2 per lite of blood" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C64914"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:23:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4781" name="mu_I" value="11.7427"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="Injecting the concentration of sunitinib per litre of body volume" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C25533"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:40:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4797" name="vs" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="Sunitinib not working per day per litre of body volume" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C25533"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-06T11:41:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4774" name="n" value="0.277"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment],Vector=Metabolites[T]" value="2.8075220675334e+30" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment],Vector=Metabolites[N]" value="1.5055352142500001e+29" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment],Vector=Metabolites[L]" value="3.1724638034675999e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment],Vector=Metabolites[R]" value="2.1197935816640001e+29" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment],Vector=Metabolites[C]" value="1.288738143398e+30" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment],Vector=Metabolites[I]" value="7.0639712252610004e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment],Vector=Metabolites[S]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[D]" value="9.4755276100773537e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[d]" value="1.7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[l]" value="1.7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[s]" value="0.035000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[a]" value="0.20649999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[b]" value="2.1450000000000001e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[c]" value="8.68e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[delta_T]" value="1.5900000000000001e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[e_f]" value="0.1168" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[f]" value="0.012500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[p]" value="6.682e-14" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[p_N]" value="0.066799999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[C]" value="2140000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[g_N]" value="250360" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[m]" value="0.0089999999999999993" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[q]" value="3.4220000000000002e-10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[r_1]" value="6.682e-12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[r_2]" value="1.0000000000000001e-15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[p_I]" value="1.111" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[g_I]" value="2503.5999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[z]" value="2.3085000000000002e-13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[kappa]" value="2503.5999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[j]" value="0.1245" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[k]" value="20190000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[w_u]" value="0.012200000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[u]" value="0.038510000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[p_R]" value="0.035979999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[g_R]" value="11.026999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[H_R]" value="0.22700000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[delta_R]" value="50.020000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[alpha_beta]" value="2140000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[beta]" value="0.0063" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[mu_I]" value="11.742699999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[w]" value="0.05314" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[phi]" value="3.594e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[zeta]" value="2503.5999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[n]" value="0.27700000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[vs]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in total tumor cell population in number of cells]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in total tumor cell population in number of cells],ParameterGroup=Parameters,Parameter=a" value="0.20649999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in total tumor cell population in number of cells],ParameterGroup=Parameters,Parameter=b" value="2.1450000000000001e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Removal of tumor cell from the system by immune cells]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Removal of tumor cell from the system by immune cells],ParameterGroup=Parameters,Parameter=c" value="8.68e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Removal of tumor cell from the system by immune cells],ParameterGroup=Parameters,Parameter=delta_T" value="1.5900000000000001e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[delta_T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Removal of tumor cell from the system by immune cells],ParameterGroup=Parameters,Parameter=D" value="9.4755276100773537e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in number of Natural killer cell per litre of blood]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in number of Natural killer cell per litre of blood],ParameterGroup=Parameters,Parameter=f" value="0.012500000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in number of Natural killer cell per litre of blood],ParameterGroup=Parameters,Parameter=p_N" value="0.066799999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[p_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in number of Natural killer cell per litre of blood],ParameterGroup=Parameters,Parameter=g_N" value="250360" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[g_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in number of Natural killer cell per litre of blood],ParameterGroup=Parameters,Parameter=e_f" value="0.1168" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[e_f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Removal of natural killer cell from the system]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Removal of natural killer cell from the system],ParameterGroup=Parameters,Parameter=p" value="6.682e-14" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the number of CD8+ T cell per litre of blood]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the number of CD8+ T cell per litre of blood],ParameterGroup=Parameters,Parameter=r1" value="6.682e-12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[r_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the number of CD8+ T cell per litre of blood],ParameterGroup=Parameters,Parameter=r2" value="1.0000000000000001e-15" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[r_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the number of CD8+ T cell per litre of blood],ParameterGroup=Parameters,Parameter=p_I" value="1.111" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[p_I],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the number of CD8+ T cell per litre of blood],ParameterGroup=Parameters,Parameter=g_I" value="2503.5999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[g_I],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the number of CD8+ T cell per litre of blood],ParameterGroup=Parameters,Parameter=j" value="0.1245" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[j],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the number of CD8+ T cell per litre of blood],ParameterGroup=Parameters,Parameter=k" value="20190000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[k],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Decrease in the number of CD8+ T cell]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Decrease in the number of CD8+ T cell],ParameterGroup=Parameters,Parameter=m" value="0.0089999999999999993" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[m],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Decrease in the number of CD8+ T cell],ParameterGroup=Parameters,Parameter=q" value="3.4220000000000002e-10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[q],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Decrease in the number of CD8+ T cell],ParameterGroup=Parameters,Parameter=z" value="2.3085000000000002e-13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[z],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Decrease in the number of CD8+ T cell],ParameterGroup=Parameters,Parameter=kappa" value="2503.5999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the number of Treg cells per litre of blood]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the number of Treg cells per litre of blood],ParameterGroup=Parameters,Parameter=u" value="0.038510000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[u],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the number of Treg cells per litre of blood],ParameterGroup=Parameters,Parameter=p_R" value="0.035979999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[p_R],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the number of Treg cells per litre of blood],ParameterGroup=Parameters,Parameter=g_R" value="11.026999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[g_R],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the number of Treg cells per litre of blood],ParameterGroup=Parameters,Parameter=w_u" value="0.012200000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[w_u],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Decrease in the number of Treg cells]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Decrease in the number of Treg cells],ParameterGroup=Parameters,Parameter=H_R" value="0.22700000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[H_R],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Decrease in the number of Treg cells],ParameterGroup=Parameters,Parameter=delta_R" value="50.020000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[delta_R],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the concentration of lymphocyte per litre of blood not including NK cells\, CD8+ T cells and regulatory T cells]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the concentration of lymphocyte per litre of blood not including NK cells\, CD8+ T cells and regulatory T cells],ParameterGroup=Parameters,Parameter=beta" value="0.0063" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the concentration of lymphocyte per litre of blood not including NK cells\, CD8+ T cells and regulatory T cells],ParameterGroup=Parameters,Parameter=alpha_beta" value="2140000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[alpha_beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the concentration of IL-2 per litre of blood]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the concentration of IL-2 per litre of blood],ParameterGroup=Parameters,Parameter=phi" value="3.594e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[phi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the concentration of IL-2 per litre of blood],ParameterGroup=Parameters,Parameter=w" value="0.05314" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[w],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Increase in the concentration of IL-2 per litre of blood],ParameterGroup=Parameters,Parameter=zeta" value="2503.5999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[zeta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Decrease in the concentration of IL-2 per lite of blood]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Decrease in the concentration of IL-2 per lite of blood],ParameterGroup=Parameters,Parameter=mu_I" value="11.742699999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[mu_I],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Injecting the concentration of sunitinib per litre of body volume]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Injecting the concentration of sunitinib per litre of body volume],ParameterGroup=Parameters,Parameter=vs" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[vs],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Sunitinib not working per day per litre of body volume]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Reactions[Sunitinib not working per day per litre of body volume],ParameterGroup=Parameters,Parameter=n" value="0.27700000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[n],Reference=InitialValue>
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
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
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
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 2.8075220675334e+30 1.5055352142500001e+29 3.1724638034675999e+26 2.1197935816640001e+29 7.0639712252610004e+23 0 1.288738143398e+30 9.4755276100773537e-06 1 1.7 1.7 0.035000000000000003 0.20649999999999999 2.1450000000000001e-10 8.68e-10 1.5900000000000001e-09 0.1168 0.012500000000000001 6.682e-14 0.066799999999999998 2140000000 250360 0.0089999999999999993 3.4220000000000002e-10 6.682e-12 1.0000000000000001e-15 1.111 2503.5999999999999 2.3085000000000002e-13 2503.5999999999999 0.1245 20190000 0.012200000000000001 0.038510000000000003 0.035979999999999998 11.026999999999999 0.22700000000000001 50.020000000000003 2140000000 0.0063 11.742699999999999 0.05314 3.594e-07 2503.5999999999999 0.27700000000000002 0 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="1000"/>
        <Parameter name="StepSize" type="float" value="0.29999999999999999"/>
        <Parameter name="Duration" type="float" value="300"/>
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
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[T]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment],Vector=Metabolites[T],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[N]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment],Vector=Metabolites[N],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[L]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment],Vector=Metabolites[L],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[R]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment],Vector=Metabolites[R],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment],Vector=Metabolites[C],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[I]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment],Vector=Metabolites[I],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[S]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Compartments[compartment],Vector=Metabolites[S],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[D]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment,Vector=Values[D],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
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
