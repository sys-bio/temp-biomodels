<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.15 (Build 94) (http://www.copasi.org) at 2015-03-02 09:45:59 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="15" versionDevel="94" copasiSourcesModified="0">
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
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-29T10:30:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
        k1*PRODUCT&lt;substrate_i&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-29T10:30:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
        k1*PRODUCT&lt;substrate_i&gt;-k2*PRODUCT&lt;product_j&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_62" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_39" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_67" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_71" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="v_Leak-Na" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-09T16:34:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        S_V * (gNA / F) * (RT_F * log(Na_e/Na) - Vm)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="S_V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_254" name="gNA" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_258" name="F" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="RT_F" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="Na_e" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="Na" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_272" name="Vm" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="v_pump" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-09T16:39:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (S_V * k_pump * ATP * NA) /(1+(ATP/Km_pump))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_273" name="S_V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="k_pump" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="ATP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_262" name="NA" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_275" name="Km_pump" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="v_GLC_m" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T12:17:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Tmax*(GLC_c/(GLC_c + Kt_GLC)-(GLC_i/(GLC_i + Kt_GLC)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="Tmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_246" name="GLC_c" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_271" name="Kt_GLC" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="GLC_i" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="v_HK-PFK" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T12:32:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kHK_PFK * ATP * (GLC_i/(GLC_i + Kg)) )/(1+(ATP/KI_ATP)^nH)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="ATP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_280" name="GLC_i" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_282" name="Kg" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="KI_ATP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="nH" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="kHK_PFK" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="v_PGK" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T12:54:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kPGK * GAP * ADP * (NAD/NADH)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="kPGK" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="GAP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_274" name="ADP" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_288" name="NAD" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_290" name="NADH" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="v_LAC_m" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T14:35:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Tmax*(LAC_i/(LAC_i+ Kt_LAC)-(LAC_c/(LAC_c+Kt_LAC)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="Tmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="LAC_i" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_285" name="Kt_LAC" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="LAC_c" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="v_O2_m" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-14T10:58:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        PS_V * (KO2*(HbOP/O2_c -1)^(-1/nh) -O2_i)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_294" name="PS_V" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="KO2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="HbOP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="O2_c" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_299" name="nh" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="O2_i" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="v_O2_c" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-14T11:36:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (2 * F_in) / V_cap * (O2_a - O2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_302" name="F_in" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="V_cap" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="O2_a" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_303" name="O2_c" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="v_GLC_c" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-14T11:55:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        2*F_in / V_cap * (GLC_a - GLC_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_304" name="F_in" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="V_cap" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="GLC_a" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_307" name="GLC_c" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="v_LAC_c" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-14T12:12:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        2 * F_in / V_cap * (LAC_a - LAC_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_308" name="F_in" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="V_cap" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="LAC_a" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_311" name="LAC_c" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="v_dHb_in" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-06-24T11:54:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        F_in * 2 * (O2_a - O2_c)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_312" name="F_in" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="O2_a" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_313" name="O2_c" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="v_dHb_out" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-06-24T11:55:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        F_out * dHb / V_v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_314" name="F_out" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="dHb" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_316" name="V_v" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_4" name="Aubert2002" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="mA²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.02214179e+023">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_4">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>A Model of the Coupling between Brain Electrical Activity, Metabolism, and Hemodynamics: Application to the Interpretation of Functional Neuroimaging</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1006/nimg.2002.1224"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>A Model of the Coupling between Brain Electrical Activity, Metabolism, and Hemodynamics: Application to the Interpretation of Functional Neuroimaging</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:12414257"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-09T16:25:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>winter@kapora.de</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Winter</vCard:Family>
            <vCard:Given>Felix</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>ASD GmbH Rostock</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2015-02-27T09:42:45</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      This model is from the publication:

A Model of the Coupling between Brain Electrical Activity, Metabolism, and Hemodynamics: Application to the Interpretation of Functional Neuroimaging.
NeuroImage 17, 1162-1181 (2002)
doi: 10.1006/nimg.2002.1224

Authors: Agnes Aubert and Robert Costalat

All parameter values are identical to the parameter values in the publication instead of the value of Vmax,mito which was changed from 0.025 to to 0.05233 to guaranty that the value of equation 39 is 0.0192, as given in the caption of Fig. 4. We assume that the authors intended to write 0.052 and the value given below Fig.4 is a typographical error.

The model has been encoded by: 

Felix Winter
ASD GmbH  
www.asd-online.com 
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="Tissue" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-16T12:30:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_3" name="Arteries" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_5" name="Capillaries" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T12:20:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_7" name="Venous balloon" simulationType="ode" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-16T12:29:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aubert2002,Vector=Values[F_in],Reference=Value&gt;-&lt;CN=Root,Model=Aubert2002,Vector=Values[F_out],Reference=Value&gt;
        </Expression>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_1" name="Na+" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-09T16:37:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29101"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="ATP" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-09T16:37:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:15422"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aubert2002,Vector=Values[ATP],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="ADP" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-09T16:41:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16761"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aubert2002,Vector=Values[ADP],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="GLC" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-02T10:37:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:4167"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="GAP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T12:36:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:29052"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="NAD+" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T12:53:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:15846"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aubert2002,Vector=Values[NAD+],Reference=Value&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="NADH" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T12:53:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16908"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="PYR" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T13:07:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:15361"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="PEP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T14:04:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:18021"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="LAC" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T14:29:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:422"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="PCr" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-14T10:53:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:17282"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Cr" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-14T10:47:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:16919"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aubert2002,Vector=Values[C],Reference=Value&gt;-&lt;CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[PCr],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="O2" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-14T11:02:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:15379"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="O2" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-16T15:31:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:15379"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="GLC" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-17T11:20:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:4167"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="LAC" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-14T12:17:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:422"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="GLC" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T12:50:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:4167"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="LAC" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T14:39:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:422"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="O2" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-14T11:02:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:15379"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="dHb" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-02T10:36:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="S/V" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="gNa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="F" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-16T15:12:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="RT/F" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="Vm" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-14T11:37:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Na_extracellular" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="ATP" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-09T16:41:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (-2*&lt;CN=Root,Model=Aubert2002,Vector=Reactions[Hexokinase-phosphofructokinase system],Reference=Flux&gt;+&lt;CN=Root,Model=Aubert2002,Vector=Reactions[Phosphoglycerate kinase],Reference=Flux&gt;+&lt;CN=Root,Model=Aubert2002,Vector=Reactions[Pyruvate kinase],Reference=Flux&gt;-&lt;CN=Root,Model=Aubert2002,Vector=Reactions[Na/K - pump],Reference=Flux&gt;+15*&lt;CN=Root,Model=Aubert2002,Vector=Reactions[mitochondrial respiration],Reference=Flux&gt;+&lt;CN=Root,Model=Aubert2002,Vector=Reactions[Creatine Kinase],Reference=Flux&gt;-&lt;CN=Root,Model=Aubert2002,Vector=Reactions[ATPases],Reference=Flux&gt;)*(1-&lt;CN=Root,Model=Aubert2002,Vector=Values[dAMP/dATP],Reference=Value&gt;)^(-1)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="k_pump" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-09T16:38:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="Km_pump" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="ADP" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-09T16:41:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aubert2002,Vector=Values[ATP],Reference=Value&gt;/2*(-&lt;CN=Root,Model=Aubert2002,Vector=Values[qAK],Reference=Value&gt;+(&lt;CN=Root,Model=Aubert2002,Vector=Values[qAK],Reference=Value&gt;^2+4*&lt;CN=Root,Model=Aubert2002,Vector=Values[qAK],Reference=Value&gt;*(&lt;CN=Root,Model=Aubert2002,Vector=Values[A],Reference=Value&gt;/&lt;CN=Root,Model=Aubert2002,Vector=Values[ATP],Reference=Value&gt;-1))^0.5)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="qAK" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-29T10:21:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="A" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-09T17:24:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="AMP" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-09T17:23:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aubert2002,Vector=Values[A],Reference=Value&gt;-&lt;CN=Root,Model=Aubert2002,Vector=Values[ATP],Reference=Value&gt;-&lt;CN=Root,Model=Aubert2002,Vector=Values[ADP],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="Tmax,GLC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="Kt,GLC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="kHK-PFK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="KI,ATP" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-16T15:12:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="nH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="Kg" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="kPGK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="N" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="NAD+" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T12:52:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aubert2002,Vector=Values[N],Reference=Value&gt;-&lt;CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[NADH],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="kPK" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T14:12:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="k+LDH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="k-LDH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="Tmax,LAC" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T14:35:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="Kt,LAC" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T14:35:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="vATPase" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="k+CK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="k-CK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="C" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="PS/V" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-20T09:54:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="KO2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-19T12:02:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="Hb*OP" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="nh" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="F0" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-16T12:31:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="F_in" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-14T11:35:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aubert2002,Vector=Values[F0],Reference=Value&gt;+&lt;CN=Root,Model=Aubert2002,Vector=Values[is_rising],Reference=Value&gt;*&lt;CN=Root,Model=Aubert2002,Vector=Values[slope_up],Reference=Value&gt;+&lt;CN=Root,Model=Aubert2002,Vector=Values[is_maximum],Reference=Value&gt;*&lt;CN=Root,Model=Aubert2002,Vector=Values[maximum],Reference=Value&gt;+&lt;CN=Root,Model=Aubert2002,Vector=Values[is_falling],Reference=Value&gt;*&lt;CN=Root,Model=Aubert2002,Vector=Values[slope_down],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="V_cap" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="v_Mito" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-14T15:37:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="dAMP/dATP" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-29T10:21:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          -1+&lt;CN=Root,Model=Aubert2002,Vector=Values[qAK],Reference=Value&gt;/2-1/2*(&lt;CN=Root,Model=Aubert2002,Vector=Values[qAK],Reference=Value&gt;^2+4*&lt;CN=Root,Model=Aubert2002,Vector=Values[qAK],Reference=Value&gt;*(&lt;CN=Root,Model=Aubert2002,Vector=Values[A],Reference=Value&gt;/&lt;CN=Root,Model=Aubert2002,Vector=Values[ATP],Reference=Value&gt;-1))^(1/2)+&lt;CN=Root,Model=Aubert2002,Vector=Values[qAK],Reference=Value&gt;*&lt;CN=Root,Model=Aubert2002,Vector=Values[A],Reference=Value&gt;/(&lt;CN=Root,Model=Aubert2002,Vector=Values[ATP],Reference=Value&gt;*(&lt;CN=Root,Model=Aubert2002,Vector=Values[qAK],Reference=Value&gt;^2+4*&lt;CN=Root,Model=Aubert2002,Vector=Values[qAK],Reference=Value&gt;*(&lt;CN=Root,Model=Aubert2002,Vector=Values[A],Reference=Value&gt;/&lt;CN=Root,Model=Aubert2002,Vector=Values[ATP],Reference=Value&gt;-1))^(1/2))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="v_Mito_H3" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-14T15:37:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aubert2002,Vector=Values[V_max_Mito],Reference=Value&gt;*(&lt;CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[PYR],Reference=Concentration&gt;/(&lt;CN=Root,Model=Aubert2002,Vector=Values[Km\,Mito],Reference=Value&gt;+&lt;CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[PYR],Reference=Concentration&gt;)*(1/(1+(&lt;CN=Root,Model=Aubert2002,Vector=Values[ATP],Reference=Value&gt;/(&lt;CN=Root,Model=Aubert2002,Vector=Values[ADP],Reference=Value&gt;*&lt;CN=Root,Model=Aubert2002,Vector=Values[KI\,Mito],Reference=Value&gt;))^&lt;CN=Root,Model=Aubert2002,Vector=Values[n_Mito],Reference=Value&gt;))*(&lt;CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[O2],Reference=Concentration&gt;/(&lt;CN=Root,Model=Aubert2002,Vector=Values[K_O2_Mito],Reference=Value&gt;+&lt;CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[O2],Reference=Concentration&gt;)))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="V_max_Mito" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-14T15:40:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="Km,Mito" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-19T12:02:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="KI,Mito" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-19T12:02:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="n_Mito" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-19T12:02:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="K_O2_Mito" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-19T12:03:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="is_maximum" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="is_rising" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-16T12:33:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="is_falling" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_49" name="slope_up" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-16T12:35:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aubert2002,Vector=Values[maximum],Reference=InitialValue&gt;/&lt;CN=Root,Model=Aubert2002,Vector=Values[t_on],Reference=InitialValue&gt;*&lt;CN=Root,Model=Aubert2002,Reference=Time&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="alpha_F_in" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-19T12:02:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="maximum" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-16T12:36:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aubert2002,Vector=Values[F0],Reference=InitialValue&gt;*&lt;CN=Root,Model=Aubert2002,Vector=Values[alpha_F_in],Reference=InitialValue&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="t_on" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-16T15:12:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="t_end" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-16T15:12:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="slope_down" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-16T12:39:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aubert2002,Vector=Values[maximum],Reference=Value&gt;*(&lt;CN=Root,Model=Aubert2002,Vector=Values[t_on],Reference=Value&gt;+&lt;CN=Root,Model=Aubert2002,Vector=Values[t_end],Reference=Value&gt;-&lt;CN=Root,Model=Aubert2002,Reference=Time&gt;)/&lt;CN=Root,Model=Aubert2002,Vector=Values[t_on],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="F_out" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-16T13:01:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aubert2002,Vector=Values[F0],Reference=Value&gt;*((&lt;CN=Root,Model=Aubert2002,Vector=Compartments[Venous balloon],Reference=Volume&gt;/&lt;CN=Root,Model=Aubert2002,Vector=Compartments[Venous balloon],Reference=InitialVolume&gt;)^2+(&lt;CN=Root,Model=Aubert2002,Vector=Compartments[Venous balloon],Reference=Volume&gt;/&lt;CN=Root,Model=Aubert2002,Vector=Compartments[Venous balloon],Reference=InitialVolume&gt;)^(-0.5)*35*(1/&lt;CN=Root,Model=Aubert2002,Vector=Compartments[Venous balloon],Reference=InitialVolume&gt;*&lt;CN=Root,Model=Aubert2002,Vector=Values[F_in],Reference=Value&gt;))/(1+&lt;CN=Root,Model=Aubert2002,Vector=Values[F0],Reference=Value&gt;*(&lt;CN=Root,Model=Aubert2002,Vector=Compartments[Venous balloon],Reference=Volume&gt;/&lt;CN=Root,Model=Aubert2002,Vector=Compartments[Venous balloon],Reference=InitialVolume&gt;)^(-0.5)*35*(1/&lt;CN=Root,Model=Aubert2002,Vector=Compartments[Venous balloon],Reference=InitialVolume&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="v_stim_constant" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-19T12:01:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="rCBF" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-19T12:03:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aubert2002,Vector=Values[F_in],Reference=Value&gt;/&lt;CN=Root,Model=Aubert2002,Vector=Values[F0],Reference=InitialValue&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="rCMRO2" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-19T12:04:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aubert2002,Vector=Reactions[mitochondrial respiration],Reference=Flux&gt;/0.0192
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="rVv" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-02-27T09:30:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aubert2002,Vector=Compartments[Venous balloon],Reference=Volume&gt;/&lt;CN=Root,Model=Aubert2002,Vector=Compartments[Venous balloon],Reference=InitialVolume&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="O2c_bar" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-02-27T09:33:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*&lt;CN=Root,Model=Aubert2002,Vector=Compartments[Capillaries],Vector=Metabolites[O2],Reference=Concentration&gt;-&lt;CN=Root,Model=Aubert2002,Vector=Compartments[Arteries],Vector=Metabolites[O2],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="ratioO2c_bar" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-02-27T09:38:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Aubert2002,Vector=Values[O2c_bar],Reference=Value&gt;/&lt;CN=Root,Model=Aubert2002,Vector=Values[O2c_bar],Reference=InitialValue&gt;
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Sodium leak" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-09T16:36:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4358" name="S_V" value="90000"/>
          <Constant key="Parameter_4359" name="gNA" value="0.0039"/>
          <Constant key="Parameter_4360" name="F" value="96500"/>
          <Constant key="Parameter_4361" name="RT_F" value="26.73"/>
          <Constant key="Parameter_4362" name="Na_e" value="150"/>
          <Constant key="Parameter_4363" name="Vm" value="-70"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Na/K - pump" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-09T16:41:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="3"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4364" name="S_V" value="90000"/>
          <Constant key="Parameter_4365" name="k_pump" value="2.9e-007"/>
          <Constant key="Parameter_4366" name="Km_pump" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Blood-brain transport of glucose" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T12:18:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="100"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4367" name="Tmax" value="0.0476"/>
          <Constant key="Parameter_4368" name="Kt_GLC" value="9"/>
        </ListOfConstants>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Hexokinase-phosphofructokinase system" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T12:35:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="2"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4369" name="Kg" value="0.05"/>
          <Constant key="Parameter_4370" name="KI_ATP" value="1"/>
          <Constant key="Parameter_4371" name="nH" value="4"/>
          <Constant key="Parameter_4372" name="kHK_PFK" value="0.12"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Phosphoglycerate kinase" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T12:57:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4373" name="kPGK" value="42.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Pyruvate kinase" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T14:02:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4374" name="k1" value="86.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_5"/>
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Lactate dehydrogenase" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T14:24:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4375" name="k1" value="2000"/>
          <Constant key="Parameter_4376" name="k2" value="44.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_15"/>
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_19"/>
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Blood-brain transport of lactate" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-11T14:37:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="100"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4377" name="Tmax" value="0.00628"/>
          <Constant key="Parameter_4378" name="Kt_LAC" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_45">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Creatine Kinase" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-14T10:48:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4379" name="k1" value="3666"/>
          <Constant key="Parameter_4380" name="k2" value="20"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_21"/>
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_23"/>
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="Blood-brain transport of oxygen" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-14T11:03:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="100"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4381" name="PS_V" value="1.6"/>
          <Constant key="Parameter_4382" name="KO2" value="0.0361"/>
          <Constant key="Parameter_4383" name="HbOP" value="8.6"/>
          <Constant key="Parameter_4384" name="nh" value="2.73"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="Blood flow contribution to O2 variation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-14T11:40:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4385" name="F_in" value="0.012"/>
          <Constant key="Parameter_4388" name="V_cap" value="0.0055"/>
        </ListOfConstants>
        <KineticLaw function="Function_47">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="Blood flow contribution to GLC_c variation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-14T11:56:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4387" name="F_in" value="0.012"/>
          <Constant key="Parameter_4389" name="V_cap" value="0.0055"/>
        </ListOfConstants>
        <KineticLaw function="Function_48">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="Blood flow contribution to LAC_c variation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-14T12:14:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4386" name="F_in" value="0.012"/>
          <Constant key="Parameter_4390" name="V_cap" value="0.0055"/>
        </ListOfConstants>
        <KineticLaw function="Function_49">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="mitochondrial respiration" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-28T11:52:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_25" stoichiometry="3"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4391" name="v" value="0.0191965"/>
        </ListOfConstants>
        <KineticLaw function="Function_6">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="ATPases" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-04-29T10:36:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4392" name="v" value="0.149"/>
        </ListOfConstants>
        <KineticLaw function="Function_6">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_4392"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="Na+ inflow after stimulation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-16T15:06:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4393" name="v" value="0.23"/>
        </ListOfConstants>
        <KineticLaw function="Function_6">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="inflow of dHb" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-06-24T11:54:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4394" name="F_in" value="0.012"/>
        </ListOfConstants>
        <KineticLaw function="Function_50">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="outflow of dHb" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-06-24T11:55:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4395" name="F_out" value="0.012"/>
        </ListOfConstants>
        <KineticLaw function="Function_51">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="from increase to stable" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-16T12:45:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Aubert2002,Reference=Time&gt; == &lt;CN=Root,Model=Aubert2002,Vector=Values[t_on],Reference=InitialValue&gt;
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_46">
            <Expression>
              1
            </Expression>
          </Assignment>
          <Assignment targetKey="ModelValue_47">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="from stable to decrease (end of stimulation)" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-16T12:47:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Aubert2002,Reference=Time&gt; == &lt;CN=Root,Model=Aubert2002,Vector=Values[t_end],Reference=InitialValue&gt;
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_46">
            <Expression>
              0
            </Expression>
          </Assignment>
          <Assignment targetKey="ModelValue_48">
            <Expression>
              1
            </Expression>
          </Assignment>
          <Assignment targetKey="ModelValue_56">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_2" name="from decrease to at_rest" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-05-16T12:48:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Aubert2002,Reference=Time&gt; == &lt;CN=Root,Model=Aubert2002,Vector=Values[t_end],Reference=InitialValue&gt;+&lt;CN=Root,Model=Aubert2002,Vector=Values[t_on],Reference=InitialValue&gt;
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_48">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Aubert2002" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Arteries]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Capillaries]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Venous balloon]" value="0.0237" type="Compartment" simulationType="ode"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[Na+]" value="9.033212685000001e+021" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[ATP]" value="1.3248711938e+021" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[ADP]" value="7.184225509701247e+018" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[GLC]" value="7.226570148000002e+020" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[GAP]" value="3.4326208203e+018" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[NAD+]" value="1.12011837294e+020" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[NADH]" value="1.5657568654e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[PYR]" value="9.635426864000002e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[PEP]" value="1.204428358e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[LAC]" value="6.022141790000001e+020" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[PCr]" value="3.011070895e+021" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[Cr]" value="3.011070895e+021" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[O2]" value="1.57780114898e+019" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Arteries],Vector=Metabolites[O2]" value="5.022466252860001e+021" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Arteries],Vector=Metabolites[GLC]" value="2.890628059200001e+021" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Arteries],Vector=Metabolites[LAC]" value="1.88493038027e+020" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Capillaries],Vector=Metabolites[GLC]" value="2.74609665624e+021" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Capillaries],Vector=Metabolites[LAC]" value="2.1077496265e+020" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Capillaries],Vector=Metabolites[O2]" value="4.22152139479e+021" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Compartments[Capillaries],Vector=Metabolites[dHb]" value="3.793949327700004e+019" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[S/V]" value="90000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[gNa]" value="0.0039" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[F]" value="96500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[RT/F]" value="26.73" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[Vm]" value="-70" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[Na_extracellular]" value="150" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[ATP]" value="2.2" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[k_pump]" value="2.9e-007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[Km_pump]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[ADP]" value="0.01192968508584592" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[qAK]" value="0.92" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[A]" value="2.212" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[AMP]" value="7.031491415408937e-005" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[Tmax\,GLC]" value="0.0476" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[Kt\,GLC]" value="9" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[kHK-PFK]" value="0.12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[KI\,ATP]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[nH]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[Kg]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[kPGK]" value="42.6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[N]" value="0.212" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[NAD+]" value="0.186" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[kPK]" value="86.7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[k+LDH]" value="2000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[k-LDH]" value="44.8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[Tmax\,LAC]" value="0.006279999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[Kt\,LAC]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[vATPase]" value="0.149" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[k+CK]" value="3666" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[k-CK]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[C]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[PS/V]" value="1.6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[KO2]" value="0.0361" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[Hb*OP]" value="8.6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[nh]" value="2.73" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[F0]" value="0.012" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[F_in]" value="0.012" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[V_cap]" value="0.0055" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[v_Mito]" value="0.0192" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[dAMP/dATP]" value="-0.01168247206872786" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[v_Mito_H3]" value="0.01919650792610928" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[V_max_Mito]" value="0.05233" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[Km\,Mito]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[KI\,Mito]" value="183.3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[n_Mito]" value="0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[K_O2_Mito]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[is_maximum]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[is_rising]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[is_falling]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[slope_up]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[alpha_F_in]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[maximum]" value="0.006" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[t_on]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[t_end]" value="360" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[slope_down]" value="0.438" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[F_out]" value="0.012" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[v_stim_constant]" value="0.23" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[rCBF]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[rCMRO2]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[rVv]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[O2c_bar]" value="5.68" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Values[ratioO2c_bar]" value="1" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Aubert2002,Vector=Reactions[Sodium leak]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Sodium leak],ParameterGroup=Parameters,Parameter=S_V" value="90000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[S/V],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Sodium leak],ParameterGroup=Parameters,Parameter=gNA" value="0.0039" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[gNa],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Sodium leak],ParameterGroup=Parameters,Parameter=F" value="96500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[F],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Sodium leak],ParameterGroup=Parameters,Parameter=RT_F" value="26.73" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[RT/F],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Sodium leak],ParameterGroup=Parameters,Parameter=Na_e" value="150" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[Na_extracellular],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Sodium leak],ParameterGroup=Parameters,Parameter=Vm" value="-70" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[Vm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aubert2002,Vector=Reactions[Na/K - pump]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Na/K - pump],ParameterGroup=Parameters,Parameter=S_V" value="90000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[S/V],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Na/K - pump],ParameterGroup=Parameters,Parameter=k_pump" value="2.9e-007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[k_pump],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Na/K - pump],ParameterGroup=Parameters,Parameter=Km_pump" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[Km_pump],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood-brain transport of glucose]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood-brain transport of glucose],ParameterGroup=Parameters,Parameter=Tmax" value="0.0476" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[Tmax\,GLC],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood-brain transport of glucose],ParameterGroup=Parameters,Parameter=Kt_GLC" value="9" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[Kt\,GLC],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aubert2002,Vector=Reactions[Hexokinase-phosphofructokinase system]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Hexokinase-phosphofructokinase system],ParameterGroup=Parameters,Parameter=Kg" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[Kg],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Hexokinase-phosphofructokinase system],ParameterGroup=Parameters,Parameter=KI_ATP" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[KI\,ATP],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Hexokinase-phosphofructokinase system],ParameterGroup=Parameters,Parameter=nH" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[nH],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Hexokinase-phosphofructokinase system],ParameterGroup=Parameters,Parameter=kHK_PFK" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[kHK-PFK],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aubert2002,Vector=Reactions[Phosphoglycerate kinase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Phosphoglycerate kinase],ParameterGroup=Parameters,Parameter=kPGK" value="42.6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[kPGK],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aubert2002,Vector=Reactions[Pyruvate kinase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Pyruvate kinase],ParameterGroup=Parameters,Parameter=k1" value="86.7" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[kPK],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aubert2002,Vector=Reactions[Lactate dehydrogenase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Lactate dehydrogenase],ParameterGroup=Parameters,Parameter=k1" value="2000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[k+LDH],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Lactate dehydrogenase],ParameterGroup=Parameters,Parameter=k2" value="44.8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[k-LDH],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood-brain transport of lactate]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood-brain transport of lactate],ParameterGroup=Parameters,Parameter=Tmax" value="0.006279999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[Tmax\,LAC],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood-brain transport of lactate],ParameterGroup=Parameters,Parameter=Kt_LAC" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[Kt\,LAC],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aubert2002,Vector=Reactions[Creatine Kinase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Creatine Kinase],ParameterGroup=Parameters,Parameter=k1" value="3666" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[k+CK],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Creatine Kinase],ParameterGroup=Parameters,Parameter=k2" value="20" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[k-CK],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood-brain transport of oxygen]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood-brain transport of oxygen],ParameterGroup=Parameters,Parameter=PS_V" value="1.6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[PS/V],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood-brain transport of oxygen],ParameterGroup=Parameters,Parameter=KO2" value="0.0361" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[KO2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood-brain transport of oxygen],ParameterGroup=Parameters,Parameter=HbOP" value="8.6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[Hb*OP],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood-brain transport of oxygen],ParameterGroup=Parameters,Parameter=nh" value="2.73" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[nh],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood flow contribution to O2 variation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood flow contribution to O2 variation],ParameterGroup=Parameters,Parameter=F_in" value="0.012" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[F_in],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood flow contribution to O2 variation],ParameterGroup=Parameters,Parameter=V_cap" value="0.0055" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[V_cap],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood flow contribution to GLC_c variation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood flow contribution to GLC_c variation],ParameterGroup=Parameters,Parameter=F_in" value="0.012" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[F_in],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood flow contribution to GLC_c variation],ParameterGroup=Parameters,Parameter=V_cap" value="0.0055" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[V_cap],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood flow contribution to LAC_c variation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood flow contribution to LAC_c variation],ParameterGroup=Parameters,Parameter=F_in" value="0.012" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[F_in],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Blood flow contribution to LAC_c variation],ParameterGroup=Parameters,Parameter=V_cap" value="0.0055" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[V_cap],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aubert2002,Vector=Reactions[mitochondrial respiration]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[mitochondrial respiration],ParameterGroup=Parameters,Parameter=v" value="0.01919650792610928" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[v_Mito_H3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aubert2002,Vector=Reactions[ATPases]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[ATPases],ParameterGroup=Parameters,Parameter=v" value="0.149" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aubert2002,Vector=Reactions[Na+ inflow after stimulation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[Na+ inflow after stimulation],ParameterGroup=Parameters,Parameter=v" value="0.23" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[v_stim_constant],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aubert2002,Vector=Reactions[inflow of dHb]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[inflow of dHb],ParameterGroup=Parameters,Parameter=F_in" value="0.012" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[F_in],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Aubert2002,Vector=Reactions[outflow of dHb]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Aubert2002,Vector=Reactions[outflow of dHb],ParameterGroup=Parameters,Parameter=F_out" value="0.012" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Aubert2002,Vector=Values[F_out],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_4"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="Compartment_7"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="Compartment_5"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
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
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 2.2 0.0237 2.74609665624e+021 2.1077496265e+020 4.22152139479e+021 9.033212685000001e+021 1.57780114898e+019 3.4326208203e+018 9.635426864000002e+019 3.793949327700004e+019 1.204428358e+019 3.011070895e+021 6.022141790000001e+020 7.226570148000002e+020 1.5657568654e+019 1.3248711938e+021 7.184225509701247e+018 1.12011837294e+020 3.011070895e+021 0.01192968508584592 0.186 0.012 -0.01168247206872786 0.01919650792610928 0 0.006 0.438 0.012 7.031491415408937e-005 1 0 1 5.68 1 5.022466252860001e+021 2.890628059200001e+021 1.88493038027e+020 1 1 1 90000 0.0039 96500 26.73 -70 150 2.9e-007 0.5 0.92 2.212 0.0476 9 0.12 1 4 0.05 42.6 0.212 86.7 2000 44.8 0.006279999999999999 0.5 0.149 3666 20 10 1.6 0.0361 8.6 2.73 0.012 0.0055 0.0192 0.05233 0.05 183.3 0.1 0.001 0 1 0 0.5 5 360 0.23 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="SSV_Aubert.txt" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1e-009"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="4001"/>
        <Parameter name="StepSize" type="float" value="0.175"/>
        <Parameter name="Duration" type="float" value="700"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
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
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[F0],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.012"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[KI\,ATP],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[KO2],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0361"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[Kg],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.05"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[Km_pump],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.5"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[Kt\,GLC],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="9"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[Kt\,LAC],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.5"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[PS/V],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="1.6"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[RT/F],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="26.73"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[S/V],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="90000"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[Tmax\,GLC],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0476"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[Tmax\,LAC],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.006279999999999999"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[gNa],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0039"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[k+LDH],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2000"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[k-LDH],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="44.8"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[kHK-PFK],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.12"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[kPGK],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="42.6"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[kPK],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="86.7"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[nh],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="2.73"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[vATPase],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.149"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Values[v_Mito],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0192"/>
            <Parameter name="UpperBound" type="cn" value="1e+06"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="Experiment">
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="File Name" type="file" value="Aubert_2002_SS_EstimationTimeSeries.txt"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Key" type="key" value="Experiment_0"/>
            <Parameter name="Last Row" type="unsignedInteger" value="4"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="13"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[ATP],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="10">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[O2],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="11">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[PEP],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="12">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[PYR],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[GAP],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[GLC],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Compartments[Capillaries],Vector=Metabolites[GLC],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="5">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Compartments[Capillaries],Vector=Metabolites[LAC],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="6">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[LAC],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="7">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[NADH],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="8">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[Na+],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
              <ParameterGroup name="9">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Aubert2002,Vector=Compartments[Capillaries],Vector=Metabolites[O2],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
            </ParameterGroup>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Separator" type="string" value="&#x09;"/>
            <Parameter name="Start in Steady State" type="bool" value="0"/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
          </ParameterGroup>
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
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-009"/>
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
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
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
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-006"/>
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
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-012"/>
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
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="0"/>
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
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
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
    <Report key="Report_18" name="Steady_State_Values" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Header>
        <Object cn="String=Species:"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=ADP"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=ATP"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=Cr"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=GAP"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=GLC(Arteries)"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=GLC(Capillaries)"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=GLC(Tissue)"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=LAC(Arteries)"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=LAC(Capillaries)"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=LAC(Tissue)"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=NAD+"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=NADH"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=NA+"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=O2(Arteries)"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=O2(Capillaries)"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=O2(Tissues)"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=PCr"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=PEP"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=PYR"/>
      </Header>
      <Body>
        <Object cn="String=Alte Daten:"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[ADP],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[ATP],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[Cr],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[GAP],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Arteries],Vector=Metabolites[GLC],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Capillaries],Vector=Metabolites[GLC],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[GLC],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Arteries],Vector=Metabolites[LAC],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Capillaries],Vector=Metabolites[LAC],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[LAC],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[NAD+],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[NADH],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[Na+],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Arteries],Vector=Metabolites[O2],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Capillaries],Vector=Metabolites[O2],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[O2],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[PCr],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[PEP],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[PYR],Reference=InitialConcentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=Neue Daten:"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[ADP],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[ATP],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[Cr],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[GAP],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Arteries],Vector=Metabolites[GLC],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Capillaries],Vector=Metabolites[GLC],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[GLC],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Arteries],Vector=Metabolites[LAC],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Capillaries],Vector=Metabolites[LAC],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[LAC],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[NAD+],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[NADH],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[Na+],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Arteries],Vector=Metabolites[O2],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Capillaries],Vector=Metabolites[O2],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[O2],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[PCr],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[PEP],Reference=Concentration"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[PYR],Reference=Concentration"/>
      </Body>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="F_in (trapezoidal function), F_out" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[F_in]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Vector=Values[F_in],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[F_out]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Vector=Values[F_out],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Venous volume" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Compartments[Venous balloon].Volume|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Vector=Compartments[Venous balloon],Reference=Volume"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig 4 LACi GLCi" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[GLC{Tissue}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[GLC],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[LAC{Tissue}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[LAC],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig 4 rCBF cRMRO2" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[rCBF]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Vector=Values[rCBF],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[rCMRO2]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Vector=Values[rCMRO2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig. 4 Nai" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Na+]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[Na+],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig 4 PCr ATP" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[ATP]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[ATP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PCr]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Vector=Compartments[Tissue],Vector=Metabolites[PCr],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig 4 rVv rO2c" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[rVv]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Vector=Values[rVv],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[ratioO2c_bar]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Aubert2002,Vector=Values[ratioO2c_bar],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Aubert_2002.xml">
    <SBMLMap SBMLid="ATPases" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="F_out" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="KI_Mito" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="K_O2_Mito" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="Km_Mito" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="Na__inflow_after_stimulation" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="O2c_bar" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="V_max_Mito" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="alpha_F_in" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="compartment_1" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="compartment_2" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="compartment_3" COPASIkey="Compartment_5"/>
    <SBMLMap SBMLid="compartment_4" COPASIkey="Compartment_7"/>
    <SBMLMap SBMLid="dAMP_dATP" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="dHb" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="from_decrease_to_at_rest" COPASIkey="Event_2"/>
    <SBMLMap SBMLid="from_increase_to_stable" COPASIkey="Event_0"/>
    <SBMLMap SBMLid="from_stable_to_decrease__end_of_stimulation" COPASIkey="Event_1"/>
    <SBMLMap SBMLid="function_1" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="function_2" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="inflow_of_dHb" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="is_falling" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="is_maximum" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="is_rising" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="maximum" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="mitochondrial_respiration" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="n_Mito" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="outflow_of_dHb" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="parameter_1" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="parameter_10" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="parameter_11" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="parameter_12" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="parameter_13" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="parameter_14" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="parameter_15" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="parameter_16" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="parameter_17" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="parameter_18" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="parameter_19" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="parameter_2" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="parameter_20" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="parameter_21" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="parameter_22" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="parameter_23" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="parameter_24" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="parameter_25" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="parameter_26" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="parameter_27" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="parameter_28" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="parameter_29" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="parameter_3" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="parameter_30" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="parameter_31" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="parameter_32" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="parameter_33" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="parameter_34" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="parameter_35" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="parameter_36" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="parameter_37" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="parameter_38" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="parameter_4" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="parameter_47" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="parameter_5" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="parameter_6" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="parameter_7" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="parameter_8" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="parameter_9" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="rCBF" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="rCMRO2" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="rVv" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="ratioO2c_bar" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="reaction_1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="reaction_10" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="reaction_11" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="reaction_12" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="reaction_13" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="reaction_2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="reaction_3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="reaction_4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="reaction_5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="reaction_6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="reaction_7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="reaction_8" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="reaction_9" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="slope_down" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="slope_up" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="species_1" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="species_10" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="species_11" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="species_12" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="species_13" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="species_14" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="species_15" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="species_16" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="species_17" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="species_18" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="species_19" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="species_2" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="species_3" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="species_4" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="species_5" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="species_6" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="species_7" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="species_8" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="species_9" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="t_end" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="t_on" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="v_GLC_c" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="v_GLC_m" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="v_LAC_c" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="v_LAC_m" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="v_Mito_H3" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="v_O2_c" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="v_O2_m" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="v_PGK" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="v_dHb_in" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="v_dHb_out" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="v_pump" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="v_stim_constant" COPASIkey="ModelValue_56"/>
  </SBMLReference>
</COPASI>
