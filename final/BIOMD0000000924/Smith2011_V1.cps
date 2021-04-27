<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.27 (Build 217) (http://www.copasi.org) at 2020-03-26T09:06:47Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="27" versionDevel="217" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="Rate Law for reaction for  EU decay" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T12:08:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        omega*P*Eu
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="omega" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="P" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_262" name="Eu" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Rate Law for reaction for  P production" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T12:09:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        r*P*(1-(P/Kp))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="r" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="P" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_261" name="Kp" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Rate Law for reaction for P Decay" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T12:15:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (gamma_M_A*f_P_M_A)/(1+(kd*D*M_Astar))*M_Astar*P+gamma_N*N*P
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_268" name="gamma_M_A" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="f_P_M_A" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="kd" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="D" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_270" name="M_Astar" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="P" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_272" name="gamma_N" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="N" order="7" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Rate Law for reaction for C decay" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T12:15:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        dc*C
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_281" name="dc" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="C" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Rate Law for reaction for C production" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T12:16:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        alpha*(Ea/(1+kn*N))+v*(theta_M*P*M_Astar/(d+k+theta_M*P*(1+kn*N)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_278" name="alpha" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="Ea" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_277" name="kn" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="N" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_275" name="v" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="theta_M" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="M_Astar" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="d" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="k" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="P" order="9" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Rate Law for reaction for D decay" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T12:20:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        d_D*D*M_Astar
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="d_D" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="D" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_293" name="M_Astar" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Rate Law for reaction for D production" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T12:21:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        rho1*d_NP*N*P+rho2*d_N*N+rho3*d_E*Ea
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_290" name="rho1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="d_NP" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="N" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_289" name="P" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_288" name="rho2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="d_N" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="rho3" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="d_E" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="Ea" order="8" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Rate Law for reaction for Ea decay" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T12:23:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        d_E*Ea
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_306" name="d_E" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="Ea" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Rate Law for reaction for Ea production" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T12:23:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        omega*P*Eu
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_303" name="omega" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="P" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_302" name="Eu" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Rate Law for reaction for N decay" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T12:25:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        d_NP*N*P+d_N*N
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="d_NP" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="N" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_301" name="P" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_298" name="d_N" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Rate Law for reaction for N production" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T12:27:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        eta*C*(1-N/N_max)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_310" name="eta" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="C" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_308" name="N" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_307" name="N_max" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection" simulationType="time" timeUnit="h" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0006955"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C157959"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C3137"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:21300073"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:24:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
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
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>sarubini.kananathan@hotmail.co.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Kananathan</vCard:Family>
            <vCard:Given>Sarubini</vCard:Given>
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
        <dcterms:W3CDTF>2020-03-25T19:14:39</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is rdf:resource="urn:miriam:biomodels.db:MODEL1808280007"/>
    <CopasiMT:occursIn rdf:resource="urn:miriam:bto:BTO:0000763"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      Pneumococcal pneumonia is a leading cause of death and a major source of human morbidity. The initial immune response plays a central role in determining the course and outcome of pneumococcal disease. We combine bacterial titer measurements from mice infected with Streptococcus pneumoniae with mathematical modeling to investigate the coordination of immune responses and the effects of initial inoculum on outcome. To evaluate the contributions of individual components, we systematically build a mathematical model from three subsystems that describe the succession of defensive cells in the lung: resident alveolar macrophages, neutrophils and monocyte-derived macrophages. The alveolar macrophage response, which can be modeled by a single differential equation, can by itself rapidly clear small initial numbers of pneumococci. Extending the model to include the neutrophil response required additional equations for recruitment cytokines and host cell status and damage. With these dynamics, two outcomes can be predicted: bacterial clearance or sustained bacterial growth. Finally, a model including monocyte-derived macrophage recruitment by neutrophils suggests that sustained bacterial growth is possible even in their presence. Our model quantifies the contributions of cytotoxicity and immune-mediated damage in pneumococcal pathogenesis.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T19:25:55Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Pneumococci  (P)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C76384" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:25:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Susceptible epithelial cells (EU)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:omit:0006083" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:27:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Epithelial cells with bacteria attached (Ea)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:bto:BTO:0000152" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:27:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="proinflammatory cytokine (C)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C20464" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:28:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Neutrophils (N)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:omit:0010527" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:29:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Debris (D)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C120869" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:30:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="r" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T19:39:55Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="K_P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:39:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="gamma_M_A" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_2">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-24T19:40:06Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="n" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_3">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:58:29Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="x" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:58:30Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="d" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_5">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:58:31Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="M_Astar" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_6">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:58:38Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="gamma_N" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_7">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:58:43Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="theta_M" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_8">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:58:48Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="kappa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_9">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:58:51Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="v" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_10">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:58:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="omega" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_11">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:58:55Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="d_E" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_12">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:58:58Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="alpha" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_13">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:59:01Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="k_n" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_14">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:59:04Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="d_C" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_15">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:59:07Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="N_max" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_16">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:59:11Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="eta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T11:59:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="d_N" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_18">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:59:15Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="d_NP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_19">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:59:19Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="rho1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_20">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:59:32Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="rho2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_21">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:59:34Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="rho3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_22">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:59:37Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="d_D" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_23">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:59:40Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="k_d" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_24">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:59:43Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="f_P_M_A" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T11:59:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[n],Reference=Value>^&lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[x],Reference=Value>*&lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[M_Astar],Reference=Value>/(&lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment],Vector=Metabolites[Pneumococci  (P)],Reference=Concentration>^&lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[x],Reference=Value>+&lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[n],Reference=Value>^&lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[x],Reference=Value>*&lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[M_Astar],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="s" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_26">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-25T11:59:54Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="log Pneumococcal (P)" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-25T17:23:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          log10(&lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment],Vector=Metabolites[Pneumococci  (P)],Reference=Concentration>)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="reaction for  P production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:25:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5466" name="Kp" value="2.3e+08"/>
          <Constant key="Parameter_5465" name="r" value="1.13"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="reaction for P Decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:25:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5464" name="f_P_M_A" value="0.00249377"/>
          <Constant key="Parameter_5463" name="kd" value="5e-09"/>
          <Constant key="Parameter_5462" name="gamma_M_A" value="5.6e-06"/>
          <Constant key="Parameter_5461" name="M_Astar" value="1e+06"/>
          <Constant key="Parameter_5460" name="gamma_N" value="1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="reaction for  EU decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:26:10Z</dcterms:W3CDTF>
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
          <Constant key="Parameter_5973" name="omega" value="2.1e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="reaction for Ea production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:27:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5974" name="omega" value="2.1e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="reaction for Ea decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:27:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5972" name="d_E" value="0.167"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="reaction for C production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:28:11Z</dcterms:W3CDTF>
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
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5975" name="kn" value="1.4e-05"/>
          <Constant key="Parameter_5953" name="v" value="0.029"/>
          <Constant key="Parameter_5954" name="theta_M" value="4.2e-08"/>
          <Constant key="Parameter_5952" name="alpha" value="0.021"/>
          <Constant key="Parameter_5955" name="M_Astar" value="1e+06"/>
          <Constant key="Parameter_5459" name="d" value="0.001"/>
          <Constant key="Parameter_5458" name="k" value="0.042"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="reaction for C decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:28:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5457" name="dc" value="0.83"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="reaction for N production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:29:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5456" name="N_max" value="180000"/>
          <Constant key="Parameter_5455" name="eta" value="1.33"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="reaction for N decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:29:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5454" name="d_N" value="0.063"/>
          <Constant key="Parameter_5453" name="d_NP" value="1.76e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="reaction for D production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:29:48Z</dcterms:W3CDTF>
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
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5452" name="d_NP" value="1.76e-07"/>
          <Constant key="Parameter_5451" name="rho2" value="0.001"/>
          <Constant key="Parameter_5450" name="rho1" value="0.15"/>
          <Constant key="Parameter_5449" name="rho3" value="1e-05"/>
          <Constant key="Parameter_5448" name="d_N" value="0.063"/>
          <Constant key="Parameter_5447" name="d_E" value="0.167"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="reaction for D decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-24T19:30:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5446" name="M_Astar" value="1e+06"/>
          <Constant key="Parameter_5445" name="d_D" value="1.4e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_6"/>
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
<dcterms:W3CDTF>2020-03-26T08:15:42Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment],Vector=Metabolites[Pneumococci  (P)]" value="6.0221408570000006e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment],Vector=Metabolites[Susceptible epithelial cells (EU)]" value="6.0221408570000001e+28" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment],Vector=Metabolites[Epithelial cells with bacteria attached (Ea)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment],Vector=Metabolites[proinflammatory cytokine (C)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment],Vector=Metabolites[Neutrophils (N)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment],Vector=Metabolites[Debris (D)]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[r]" value="1.1299999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[K_P]" value="230000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[gamma_M_A]" value="5.5999999999999997e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[n]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[x]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[d]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[M_Astar]" value="1000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[gamma_N]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[theta_M]" value="4.1999999999999999e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[kappa]" value="0.042000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[v]" value="0.029000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[omega]" value="2.0999999999999996e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[d_E]" value="0.16700000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[alpha]" value="0.021000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[k_n]" value="1.4e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[d_C]" value="0.82999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[N_max]" value="180000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[eta]" value="1.3300000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[d_N]" value="0.063" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[d_NP]" value="1.7599999999999999e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[rho1]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[rho2]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[rho3]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[d_D]" value="1.4000000000000001e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[k_d]" value="5.0000000000000001e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[f_P_M_A]" value="0.0024937655860349127" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[s]" value="1000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[log Pneumococcal (P)]" value="5" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for  P production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for  P production],ParameterGroup=Parameters,Parameter=Kp" value="230000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[K_P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for  P production],ParameterGroup=Parameters,Parameter=r" value="1.1299999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[r],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for P Decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for P Decay],ParameterGroup=Parameters,Parameter=f_P_M_A" value="0.0024937655860349127" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[f_P_M_A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for P Decay],ParameterGroup=Parameters,Parameter=kd" value="5.0000000000000001e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[k_d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for P Decay],ParameterGroup=Parameters,Parameter=gamma_M_A" value="5.5999999999999997e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[gamma_M_A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for P Decay],ParameterGroup=Parameters,Parameter=M_Astar" value="1000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[M_Astar],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for P Decay],ParameterGroup=Parameters,Parameter=gamma_N" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[gamma_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for  EU decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for  EU decay],ParameterGroup=Parameters,Parameter=omega" value="2.0999999999999996e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[omega],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for Ea production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for Ea production],ParameterGroup=Parameters,Parameter=omega" value="2.0999999999999996e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[omega],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for Ea decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for Ea decay],ParameterGroup=Parameters,Parameter=d_E" value="0.16700000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[d_E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for C production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for C production],ParameterGroup=Parameters,Parameter=kn" value="1.4e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[k_n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for C production],ParameterGroup=Parameters,Parameter=v" value="0.029000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[v],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for C production],ParameterGroup=Parameters,Parameter=theta_M" value="4.1999999999999999e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[theta_M],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for C production],ParameterGroup=Parameters,Parameter=alpha" value="0.021000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[alpha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for C production],ParameterGroup=Parameters,Parameter=M_Astar" value="1000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[M_Astar],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for C production],ParameterGroup=Parameters,Parameter=d" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for C production],ParameterGroup=Parameters,Parameter=k" value="0.042000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[kappa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for C decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for C decay],ParameterGroup=Parameters,Parameter=dc" value="0.82999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[d_C],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for N production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for N production],ParameterGroup=Parameters,Parameter=N_max" value="180000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[N_max],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for N production],ParameterGroup=Parameters,Parameter=eta" value="1.3300000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for N decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for N decay],ParameterGroup=Parameters,Parameter=d_N" value="0.063" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[d_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for N decay],ParameterGroup=Parameters,Parameter=d_NP" value="1.7599999999999999e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[d_NP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for D production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for D production],ParameterGroup=Parameters,Parameter=d_NP" value="1.7599999999999999e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[d_NP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for D production],ParameterGroup=Parameters,Parameter=rho2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[rho2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for D production],ParameterGroup=Parameters,Parameter=rho1" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[rho1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for D production],ParameterGroup=Parameters,Parameter=rho3" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[rho3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for D production],ParameterGroup=Parameters,Parameter=d_N" value="0.063" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[d_N],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for D production],ParameterGroup=Parameters,Parameter=d_E" value="0.16700000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[d_E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for D decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for D decay],ParameterGroup=Parameters,Parameter=M_Astar" value="1000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[M_Astar],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Reactions[reaction for D decay],ParameterGroup=Parameters,Parameter=d_D" value="1.4000000000000001e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[d_D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
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
      <StateTemplateVariable objectReference="ModelValue_26"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 6.0221408570000006e+25 0 0 0 0 6.0221408570000001e+28 0.0024937655860349127 5 1 1.1299999999999999 230000000 5.5999999999999997e-06 5 2 0.001 1000000 1.0000000000000001e-05 4.1999999999999999e-08 0.042000000000000003 0.029000000000000001 2.0999999999999996e-08 0.16700000000000001 0.021000000000000001 1.4e-05 0.82999999999999996 180000 1.3300000000000001 0.063 1.7599999999999999e-07 0.14999999999999999 0.001 1.0000000000000001e-05 1.4000000000000001e-07 5.0000000000000001e-09 1000 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_15" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
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
        <Parameter name="StepNumber" type="unsignedInteger" value="150"/>
        <Parameter name="StepSize" type="float" value="0.8"/>
        <Parameter name="Duration" type="float" value="120"/>
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
    <Task key="Task_17" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="6"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment],Vector=Metabolites[Pneumococci  (P)],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="1000"/>
            <Parameter name="Maximum" type="float" value="100000"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Values" type="string" value="1e3,1e4,1e5"/>
            <Parameter name="Use Values" type="bool" value="1"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="1"/>
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
        <Parameter name="Steady-State" type="key" value="Task_15"/>
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
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
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
        <Parameter name="Steady-State" type="key" value="Task_15"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_28" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
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
        <PlotItem name="[Debris (D)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment],Vector=Metabolites[Debris (D)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Epithelial cells with bacteria attached (Ea)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment],Vector=Metabolites[Epithelial cells with bacteria attached (Ea)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Neutrophils (N)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment],Vector=Metabolites[Neutrophils (N)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Susceptible epithelial cells (EU)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment],Vector=Metabolites[Susceptible epithelial cells (EU)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[proinflammatory cytokine (C)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment],Vector=Metabolites[proinflammatory cytokine (C)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure 5" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[log Pneumococcal (P)]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[log Pneumococcal (P)],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure 4a" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[log Pneumococcal (P)]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[log Pneumococcal (P)],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure 4 e" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Susceptible epithelial cells (EU)]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment],Vector=Metabolites[Susceptible epithelial cells (EU)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure 4b" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Neutrophils (N)]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Compartments[compartment],Vector=Metabolites[Neutrophils (N)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_0" associatedEntityKey="Task_17" objectCN="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[omega],Reference=InitialValue" objectType="float" objectValue="2.1e-08" minValue="2.1e-09" maxValue="2.1e-07" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_1" associatedEntityKey="Task_16" objectCN="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[K_P],Reference=InitialValue" objectType="float" objectValue="2.3e+08" minValue="2.3e+07" maxValue="2.3e+09" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_2" associatedEntityKey="Task_17" objectCN="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[K_P],Reference=InitialValue" objectType="float" objectValue="2.3e+08" minValue="3.41765e+07" maxValue="3.41765e+09" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_3" associatedEntityKey="Task_17" objectCN="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[M_Astar],Reference=InitialValue" objectType="float" objectValue="1e+06" minValue="100000" maxValue="1e+07" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_4" associatedEntityKey="Task_17" objectCN="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[r],Reference=InitialValue" objectType="float" objectValue="1.13" minValue="1.13" maxValue="1.14" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_5" associatedEntityKey="Task_17" objectCN="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[s],Reference=InitialValue" objectType="float" objectValue="1000" minValue="100" maxValue="10000" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_6" associatedEntityKey="Task_17" objectCN="CN=Root,Model=Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection,Vector=Values[x],Reference=InitialValue" objectType="float" objectValue="2" minValue="0.2" maxValue="20" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
    </ListOfSliders>
  </GUI>
  <SBMLReference file="Smith2011_V1.xml">
    <SBMLMap SBMLid="Debris__D" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Epithelial_cells_with_bacteria_attached__Ea" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="K_P" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="M_Astar" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="N_max" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="Neutrophils__N" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="Pneumococci___P" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_C_decay" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_C_production" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_D_decay" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_D_production" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_Ea_decay" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_Ea_production" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_N_decay" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_N_production" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for_P_Decay" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for__EU_decay" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Rate_Law_for_reaction_for__P_production" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Susceptible_epithelial_cells__EU" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="alpha" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="d" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="d_C" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="d_D" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="d_E" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="d_N" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="d_NP" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="eta" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="f_P_M_A" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="gamma_M_A" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="gamma_N" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="k_d" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="k_n" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="kappa" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="log_Pneumococcal__P" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="n" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="omega" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="proinflammatory_cytokine__C" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="r" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="reaction_for_C_decay" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="reaction_for_C_production" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="reaction_for_D_decay" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="reaction_for_D_production" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="reaction_for_Ea_decay" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="reaction_for_Ea_production" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="reaction_for_N_decay" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="reaction_for_N_production" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="reaction_for_P_Decay" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="reaction_for__EU_decay" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="reaction_for__P_production" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="rho1" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="rho2" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="rho3" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="s" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="theta_M" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="v" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="x" COPASIkey="ModelValue_4"/>
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
<dcterms:W3CDTF>2020-03-26T08:15:38Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-03-26T08:15:38Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-03-26T08:15:38Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-03-26T08:15:38Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-03-26T08:15:38Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-03-26T08:15:38Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_67" name="hour" symbol="h">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_66">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-26T08:15:38Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        3600*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
