<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.30 (Build 240) (http://www.copasi.org) at 2021-04-07T23:15:39Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="30" versionDevel="240" copasiSourcesModified="0">
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
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="NAMPT Production" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-18T11:04:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        km10a*y8
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="km10a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="y8" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Bmal Protein Translation" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-06T17:27:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k5b*y4
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_261" name="k5b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="y4" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="CRH Production_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kp1/(KP1+FGRN_HPA)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="FGRN_HPA" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_250" name="KP1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="kp1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="ACTH Production [1]_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kp2*CRH*(1+kfp*Phpa)/(KP1+FGRN_HPA)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="CRH" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_268" name="FGRN_HPA" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_267" name="KP1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="Phpa" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_271" name="kfp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="kp2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="ACTH Degradation_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vd2*ACTH/(Kd2+ACTH)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_278" name="ACTH" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_277" name="Kd2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="Vd2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="FHPA Production [1]_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_45">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kp3*ACTH*kn*(1+EntF/(1+EntF))*(1+kfp*Phpa)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_273" name="ACTH" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_274" name="EntF" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_275" name="Phpa" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_279" name="kfp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="kn" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="kp3" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="FHPA Degradation_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_46">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vd3*F_HPA/(Kd3+F_HPA)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="F_HPA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_286" name="Kd3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="Vd3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="F Cell [1]_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_47">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1/tau*(F_HPA-F_Cell)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_282" name="F_Cell" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_283" name="F_HPA" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_284" name="tau" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="PER/CRY mRNA Production 1 [1]_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_48">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v1b*(y7+c)/(k1b*(1+(y3/k1i)^p))*(1+kf*P)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_290" name="P" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_289" name="c" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="k1b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="k1i" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="kf" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="p" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="v1b" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="y3" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_296" name="y7" order="8" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="PER/CRY mRNA Production 2 [1]_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_49">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kc*FGRN_Cell/y7
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_305" name="FGRN_Cell" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_304" name="kc" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="y7" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="PER/CRY Protein Translation_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_50">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k2b*y1^q
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_300" name="k2b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="q" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="y1" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="PER/CRY Nuclear degradation_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_51">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3d*y3*(1+SIRT1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_297" name="SIRT1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_298" name="k3d" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="y3" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Bmal mRNA Transcription_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_52">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v4b*y3^r/(k4b^r+y3^r)*(1+kg13*PGC1aNact)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_308" name="PGC1aNact" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_307" name="k4b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="kg13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="r" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="v4b" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="y3" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="CRH Degradation_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_53">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vd1*CRH*(1+L/(1+L))/(Kd1+CRH)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_317" name="CRH" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_316" name="Kd1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="L" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="Vd1" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="NAD Production 1_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_54">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        km1*(nad-NAD)/(KM1+nad-NAD)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_319" name="KM1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="NAD" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_312" name="km1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="nad" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="NMN to NAD_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_55">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        km2*NMN/(KM2+NMN)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_323" name="KM2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="NMN" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_321" name="km2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="NAD degradation_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_56">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        km3*feed3*NAD/(KM3+NAD)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_325" name="KM3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="NAD" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_320" name="feed3" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_326" name="km3" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="NAD to NAM_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_57">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        km4*NAD/(KM4+NAD)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_330" name="KM4" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="NAD" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_328" name="km4" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="NAM to NMN_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_58">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        km5*NAMPT*NAM/(KM5+NAM)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_332" name="KM5" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="NAM" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_327" name="NAMPT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_333" name="km5" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="EntF Production_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_59">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        km11*NAD/(KM11+NAD)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_337" name="KM11" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="NAD" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_335" name="km11" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="SIRT1 Production_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_60">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        km6*NAD*(sirt-SIRT1)/(KM6+sirt-SIRT1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_339" name="KM6" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="NAD" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_334" name="SIRT1" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_340" name="km6" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="sirt" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="SIRT1 Inhibition_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_61">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        km7*SIRT1/(KM7+SIRT1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_346" name="KM7" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="SIRT1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_344" name="km7" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Feed2_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_62">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1/Tf*(Feed-feed2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_347" name="Feed" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="Tf" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="feed2" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Feed3_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_63">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1/Tf*(feed2-feed3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_350" name="Tf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="feed2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_348" name="feed3" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="PGC1a - mRNA Production_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_64">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kg1*(1+FOXO1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_353" name="FOXO1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_352" name="kg1" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="PGC1aN to PGC1aNactive_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_65">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kg5*PGC1aNact*SIRT1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_354" name="PGC1aNact" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_351" name="SIRT1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_355" name="kg5" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="FOXO1 Production_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_66">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kg9*PGC1aNact
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_358" name="PGC1aNact" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_357" name="kg9" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Bmal Protein Translation_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_67">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k5b*PGC1amRNA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_359" name="PGC1amRNA" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_356" name="k5b" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="PGC1aNact to PGC1aN_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_68">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kg5*PGC1aN*(1+SIRT1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_361" name="PGC1aN" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_360" name="SIRT1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_362" name="kg5" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Phpa Production_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_69">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1/Tf*(P-Phpa)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_365" name="P" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_364" name="Phpa" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_363" name="Tf" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="MR Production_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_70">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kmr*((1+kfmr*F_Cell/(Kfmr+F_Cell))*(MRt-MR)/(KMR+MRt-MR))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_368" name="F_Cell" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_367" name="KMR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="Kfmr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="MR" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_370" name="MRt" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="kfmr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_372" name="kmr" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="GR Production_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_71">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kgr*((1+kfgr*F_Cell/(Kfgr+F_Cell))*(GRt-GR_Cell)/(KGR+GRt-GR_Cell))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_379" name="F_Cell" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_378" name="GR_Cell" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_377" name="GRt" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_376" name="KGR" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_375" name="Kfgr" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_374" name="kfgr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_373" name="kgr" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="MR Degradation_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_72">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kmrgeg*MR/(KMRdeg+MR)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_386" name="KMRdeg" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_385" name="MR" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_384" name="kmrgeg" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="GR Degradation_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_73">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kgrgeg*GR_Cell/(KGRdeg+GR_Cell)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_381" name="GR_Cell" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_382" name="KGRdeg" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_383" name="kgrgeg" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Rate Law for F-MR Binding_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_74">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kb*MR*F_Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_388" name="F_Cell" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_387" name="MR" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_380" name="kb" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Rate Law for F-MR Binding_2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_75">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kb*GR_Cell*F_Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_391" name="F_Cell" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_390" name="GR_Cell" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_389" name="kb" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="P cytokine mRNA Production_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_76">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kmrnap*(1-kfr*FGRN_Cell/(Kfr+FGRN_Cell))*(1-kpc*y6/(Kpc+y6))*(1+PR)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_394" name="FGRN_Cell" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_393" name="Kfr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_392" name="Kpc" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_395" name="PR" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_396" name="kfr" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_397" name="kmrnap" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_398" name="kpc" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_399" name="y6" order="7" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="Bmal Protein Translation_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_77">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k5b*mRNAP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_407" name="k5b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_406" name="mRNAP" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="P Receptor production_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_78">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kmrnaRp*(1-kfr*FMRN/(Kfr+FMRN))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_404" name="FMRN" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_405" name="Kfr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_403" name="kfr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_402" name="kmrnaRp" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="Bmal Protein Translation_3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_79">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k5b*mRNARP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_409" name="k5b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="mRNARP" order="1" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="Rate Law for F-MR Binding_3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_80">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kb*Rp*P
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_401" name="P" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_400" name="Rp" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_410" name="kb" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="GR Degradation_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_81">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kgrgeg*GR_HPA/(KGRdeg+GR_HPA)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_413" name="GR_HPA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_412" name="KGRdeg" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_411" name="kgrgeg" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="GR Production_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_82">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kgr*((1+kfgr*F_HPA/(Kfgr+F_HPA))*(GRt-GR_HPA)/(KGR+GRt-GR_HPA))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_416" name="F_HPA" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_415" name="GR_HPA" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_414" name="GRt" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_417" name="KGR" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_418" name="Kfgr" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_419" name="kfgr" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_420" name="kgr" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="Rate Law for F-MR Binding_4" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_83">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kb*GR_HPA*F_HPA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_427" name="F_HPA" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_426" name="GR_HPA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_425" name="kb" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="PckG6P Production_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_84">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-03-10T05:22:24Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        kg11*FOXO1*FGRN_Cell*(1/(1+(y3/kg7)^s))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_422" name="FGRN_Cell" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_423" name="FOXO1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_424" name="kg11" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_421" name="kg7" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_428" name="s" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_429" name="y3" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis" simulationType="time" timeUnit="100*h" volumeUnit="0.001*l" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
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
        <rdf:li rdf:resource="urn:miriam:ncit:C39030"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:10090"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:10116"/>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:29351477"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2020-11-06T17:12:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>swethan139@gmail.com</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Nagarajan</vCard:Family>
                <vCard:Given>Swetha</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>SASTRA Deemed University, Thanjavur, India</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>apalania@scbt.sastra.ac.in</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Palaniappan</vCard:Family>
                <vCard:Given>Ashok</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>SASTRA Deemed University, Thanjavur, India</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2021-02-27T12:42:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      The circadian rhythms influence the metabolic activity from molecular level to tissue, organ, and host level. Disruption of the circadian rhythms manifests to the host's health as metabolic syndromes, including obesity, diabetes, and elevated plasma glucose, eventually leading to cardiovascular diseases. Therefore, it is imperative to understand the mechanism behind the relationship between circadian rhythms and metabolism. To start answering this question, we propose a semimechanistic mathematical model to study the effect of circadian disruption on hepatic gluconeogenesis in humans. Our model takes the light-dark cycle and feeding-fasting cycle as two environmental inputs that entrain the metabolic activity in the liver. The model was validated by comparison with data from mice and rat experimental studies. Formal sensitivity and uncertainty analyses were conducted to elaborate on the driving forces for hepatic gluconeogenesis. Furthermore, simulating the impact of Clock gene knockout suggests that modification to the local pathways tied most closely to the feeding-fasting rhythms may be the most efficient way to restore the disrupted glucose metabolism in liver.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="HPA" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:is rdf:resource="urn:miriam:uberon:UBERON:0004092" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="Cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <CopasiMT:is rdf:resource="urn:miriam:bto:BTO:0000575" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_2" name="Nucleus" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_2">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005634" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="CRH" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:65311" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="ACTH" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:3892" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="F" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08185" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="F" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08185" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="PER/CRY_mRNA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENSG00000132326.12" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENSG00000121671" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ensembl:ENSG00000179094.16" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENSG00000008405" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENSG00000049246.14" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="PER/CRY_mRNA_cytoplasm" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15534" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q16526" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="PER/CRY_mRNA_nucleus" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15534" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q16526" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005634" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="BMAL1_mRNA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENSG00000133794" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="BMAL1_mRNA_cytoplasm" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="BMAL1_mRNA_nucleus" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005634" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="BMAL1/CLOCK_complex" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15516" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005634" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="NAD" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15846" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="NMN" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:50383" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="NAM" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17154" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="EntF" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/NCIT:C52711" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="SIRT1" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q96EB6" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="BMAL1/CLOCK/SIRT1_complex" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15516" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q96EB6" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005634" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="NAMPT" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P43490" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="feed2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/NCIT:C88198" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="feed3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/NCIT:C88198" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="PGC1amRNA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENSG00000109819.9" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="PGC1a" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9UBK2" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="PGC1aN" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9UBK2" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005634" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="PGC1aNact" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9UBK2" />
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005634" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="FOXO1" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q12778" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="PckG6p" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENSG00000131482" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENSG00000124253" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="Phpa" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C39129" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="MR" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08235" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="GR" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04150" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="FGR" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08185" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04150" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="FMR" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08235" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08185" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="FMRN" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08185" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08235" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005634" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="FGRN" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08185" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04150" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005634" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="P" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/NCIT:C39129" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="mRNAP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/NCIT:C39129" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="mRNARP" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/NCIT:C39129" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="Rp" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/NCIT:C39129" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="PR" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/NCIT:C39129" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="GR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04150" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="FGR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04150" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08185" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="FGRN" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04150" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P08185" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005634" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Light" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000475" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(if(&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time> lt 0 xor 24 lt 0,&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time>-24*ceil(&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time>/24),&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time>-24*floor(&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time>/24)) ge 6 and if(&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time> lt 0 xor 24 lt 0,&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time>-24*ceil(&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time>/24),&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time>-24*floor(&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time>/24)) le 18,1,0)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Feed" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000475" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(if(&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time> lt 0 xor 24 lt 0,&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time>-24*ceil(&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time>/24),&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time>-24*floor(&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time>/24)) ge 6 and if(&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time> lt 0 xor 24 lt 0,&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time>-24*ceil(&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time>/24),&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time>-24*floor(&lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time>/24)) le 18,1,0)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="CRH Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5390" name="KP1" value="1.0577"/>
          <Constant key="Parameter_5389" name="kp1" value="0.7965"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_5390"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_5389"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="ACTH Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5388" name="kp2" value="0.6875"/>
          <Constant key="Parameter_5387" name="KP1" value="1.0577"/>
          <Constant key="Parameter_5386" name="kfp" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_5387"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_5386"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_5388"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="ACTH Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5385" name="Vd2" value="0.5129"/>
          <Constant key="Parameter_5384" name="Kd2" value="0.3069"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Parameter_5384"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_5385"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="F(HPA) Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5383" name="kp3" value="1.0302"/>
          <Constant key="Parameter_5382" name="kn" value="1.2"/>
          <Constant key="Parameter_5381" name="kfp" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Parameter_5381"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_5382"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Parameter_5383"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="F(HPA) Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5380" name="Vd3" value="0.3618"/>
          <Constant key="Parameter_5379" name="Kd3" value="0.4695"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Parameter_5379"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Parameter_5380"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="F (Cell)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5378" name="tau" value="0.25"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Parameter_5378"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="PER/CRY mRNA Production 1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000183" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5377" name="v1b" value="9"/>
          <Constant key="Parameter_5376" name="c" value="0.1"/>
          <Constant key="Parameter_5375" name="k1b" value="1"/>
          <Constant key="Parameter_5374" name="k1i" value="0.56"/>
          <Constant key="Parameter_5373" name="p" value="8"/>
          <Constant key="Parameter_5372" name="kf" value="0.12"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Parameter_5376"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Parameter_5375"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Parameter_5374"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Parameter_5372"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Parameter_5373"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Parameter_5377"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="PER/CRY mRNA Production 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000183" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5371" name="kc" value="9e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Parameter_5371"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="PER/CRY mRNA Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5370" name="k1" value="0.12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5370"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="PER/CRY Cell Translation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000184" />
      </rdf:Bag>
    </CopasiMT:is>
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
          <Constant key="Parameter_5369" name="k2b" value="0.3"/>
          <Constant key="Parameter_5368" name="q" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Parameter_5369"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Parameter_5368"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="PER/CRY Cell Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5367" name="k1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5367"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="PER/CRY (Cell to Nucleus)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000185" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5366" name="k1" value="0.24"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5366"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="PER/CRY (Nucleus to Cytoplasm)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000185" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5365" name="k1" value="0.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5365"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="PER/CRY Nucleus Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5364" name="k3d" value="0.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Parameter_5364"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="Bmal mRNA Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000183" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5363" name="v4b" value="0.72"/>
          <Constant key="Parameter_5687" name="r" value="3"/>
          <Constant key="Parameter_5688" name="k4b" value="2.16"/>
          <Constant key="Parameter_5686" name="kg13" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Parameter_5688"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Parameter_5686"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Parameter_5687"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Parameter_5363"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="Bmal mRNA Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5689" name="k1" value="0.75"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5689"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="Bmal Protein Translation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000184" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5716" name="k5b" value="0.24"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Parameter_5716"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="Bmal Translocation" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000185" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5717" name="k1" value="0.45"/>
          <Constant key="Parameter_5715" name="k2" value="0.06"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5717"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5715"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Bmal Clock Association" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000560" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5718" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5718"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="Bmal Clock Dissociation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000044" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5700" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5700"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="Bmal Cell Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5701" name="k1" value="0.06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5701"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="Bmal Nucleus Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5699" name="k1" value="0.12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5699"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="Bmal Clock Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5702" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5702"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="CRH Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5362" name="Vd1" value="0.5084"/>
          <Constant key="Parameter_5361" name="Kd1" value="1.9627"/>
          <Constant key="Parameter_5360" name="L" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Parameter_5361"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Parameter_5362"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="NAD Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5359" name="km1" value="5"/>
          <Constant key="Parameter_5358" name="nad" value="1"/>
          <Constant key="Parameter_5357" name="KM1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Parameter_5357"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Parameter_5359"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Parameter_5358"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="NMN to NAD" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000182" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5356" name="km2" value="40"/>
          <Constant key="Parameter_5355" name="KM2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Parameter_5355"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Parameter_5356"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="NAD Inhibition" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000169" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5354" name="km3" value="5"/>
          <Constant key="Parameter_5353" name="KM3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Parameter_5353"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Parameter_5354"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="NAD to NAM" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000182" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5352" name="km4" value="20"/>
          <Constant key="Parameter_5351" name="KM4" value="20"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Parameter_5351"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Parameter_5352"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="NAM to NMN" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000182" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5350" name="km5" value="40"/>
          <Constant key="Parameter_5349" name="KM5" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Parameter_5349"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Parameter_5350"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="EntF Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5348" name="km11" value="5"/>
          <Constant key="Parameter_5347" name="KM11" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Parameter_5347"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Parameter_5348"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="EntF Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5655" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5655"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="SIRT1 Prod" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5656" name="km6" value="5"/>
          <Constant key="Parameter_5654" name="sirt" value="5"/>
          <Constant key="Parameter_5657" name="KM6" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Parameter_5657"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Parameter_5656"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Parameter_5654"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="SIRT1 Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5346" name="km7" value="2"/>
          <Constant key="Parameter_5345" name="KM7" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Parameter_5345"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Parameter_5346"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="Bmal/Clock - Sirt1 Association" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000042" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5344" name="k1" value="10"/>
          <Constant key="Parameter_5343" name="k2" value="20"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5344"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_10"/>
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5343"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="Bmal/Clock - Sirt1 Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5342" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5342"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="NAMPT Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5341" name="km10a" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_5341"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="NAMPT Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5340" name="k1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5340"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="Feed 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5339" name="Tf" value="3"/>
          <Constant key="Parameter_5335" name="Feed" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Parameter_5339"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="Feed 3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5338" name="Tf" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Parameter_5338"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="PGC1a mRNA Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000183" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5336" name="kg1" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Parameter_5336"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="PGC1a mRNA Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5337" name="k1" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5337"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="PGC1a Protein Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5334" name="k1" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5334"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="PGC1a Cell to Nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000185" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5333" name="k1" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5333"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="PGC1a Nucleus to Cell" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000185" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5332" name="k1" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5332"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="PGC1aNactive to PGC1aN" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000182" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5331" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5331"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="PGC1aN to PGC1aNactive" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000182" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5330" name="kg5" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Parameter_5330"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="PGCNactive Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5329" name="k1" value="0.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5329"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="FOXO1 Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5328" name="kg9" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Parameter_5328"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="FOXO1 Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5327" name="k1" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5327"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="Pck1/G6pc Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5326" name="k1" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5326"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="PGC1a Translation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000184" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5320" name="k5b" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Parameter_5320"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="PGC1aNactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000182" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5319" name="kg5" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Parameter_5319"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="Phpa" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5318" name="Tf" value="0.25"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Parameter_5318"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="MR Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000589" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5317" name="kmr" value="0.34"/>
          <Constant key="Parameter_5316" name="kfmr" value="1.011"/>
          <Constant key="Parameter_5315" name="Kfmr" value="0.5"/>
          <Constant key="Parameter_5314" name="MRt" value="1.45"/>
          <Constant key="Parameter_5311" name="KMR" value="0.21"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Parameter_5311"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Parameter_5315"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Parameter_5314"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Parameter_5316"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Parameter_5317"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="GR Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000589" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5313" name="kgr" value="1.18"/>
          <Constant key="Parameter_5312" name="kfgr" value="15"/>
          <Constant key="Parameter_5310" name="Kfgr" value="30"/>
          <Constant key="Parameter_5309" name="GRt" value="1.81"/>
          <Constant key="Parameter_5308" name="KGR" value="0.74"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Parameter_5309"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Parameter_5308"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Parameter_5310"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Parameter_5312"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Parameter_5313"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="MR Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5307" name="kmrgeg" value="0.7"/>
          <Constant key="Parameter_5306" name="KMRdeg" value="1.65"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Parameter_5306"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Parameter_5307"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="GR Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5305" name="kgrgeg" value="1.52"/>
          <Constant key="Parameter_5304" name="KGRdeg" value="1.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Parameter_5304"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Parameter_5305"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="F-MR Binding" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000045" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5303" name="kb" value="3.29"/>
        </ListOfConstants>
        <KineticLaw function="Function_74" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Parameter_5303"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="F-GR Binding" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000045" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5302" name="kb" value="3.29"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Parameter_5302"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="FMR Translocation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000185" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5301" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5301"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="FGR Translocation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000185" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5300" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5300"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="FMRN Recycling" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000185" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5299" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5299"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="FGRN Recycling" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000185" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5298" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5298"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="P cyt mRNA Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000183" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5297" name="kmrnap" value="0.61"/>
          <Constant key="Parameter_5296" name="kfr" value="0.8"/>
          <Constant key="Parameter_5295" name="Kfr" value="0.5"/>
          <Constant key="Parameter_5294" name="kpc" value="0.3"/>
          <Constant key="Parameter_5293" name="Kpc" value="25"/>
        </ListOfConstants>
        <KineticLaw function="Function_76" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Parameter_5295"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Parameter_5293"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Parameter_5296"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Parameter_5297"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Parameter_5294"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="P cyt mRNA Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5292" name="k1" value="0.19"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5292"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="P cyt Translation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000184" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5291" name="k5b" value="0.29"/>
        </ListOfConstants>
        <KineticLaw function="Function_77" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Parameter_5291"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="P cyt Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5290" name="k1" value="1.06"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5290"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="P cyt Receptor mRNA Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000183" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5289" name="kmrnaRp" value="0.61"/>
          <Constant key="Parameter_5288" name="kfr" value="0.8"/>
          <Constant key="Parameter_5287" name="Kfr" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_78" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Parameter_5287"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Parameter_5288"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Parameter_5289"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="P cyt Receptor mRNA Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5286" name="k1" value="0.19"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5286"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="P cyt Receptor Translation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000184" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5285" name="k5b" value="1.11"/>
        </ListOfConstants>
        <KineticLaw function="Function_79" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Parameter_5285"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="P cyt Receptor Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_70">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5284" name="k1" value="0.26"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5284"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="P-R Binding" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_71">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000045" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5283" name="kb" value="0.14"/>
        </ListOfConstants>
        <KineticLaw function="Function_80" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Parameter_5283"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="GR Degradation_copy" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_72">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5282" name="kgrgeg" value="1.52"/>
          <Constant key="Parameter_5281" name="KGRdeg" value="1.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_81" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Parameter_5281"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Parameter_5282"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="GR Production_copy" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_73">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000589" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5280" name="kgr" value="1.18"/>
          <Constant key="Parameter_5279" name="kfgr" value="15"/>
          <Constant key="Parameter_5278" name="Kfgr" value="30"/>
          <Constant key="Parameter_5277" name="GRt" value="1.81"/>
          <Constant key="Parameter_5276" name="KGR" value="0.74"/>
        </ListOfConstants>
        <KineticLaw function="Function_82" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Parameter_5277"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Parameter_5276"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Parameter_5278"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="Parameter_5279"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Parameter_5280"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="F-GR Binding_copy" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_74">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000045" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5275" name="kb" value="3.29"/>
        </ListOfConstants>
        <KineticLaw function="Function_83" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Parameter_5275"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="FGR Translocation_copy" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_75">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000185" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5274" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5274"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="FGRN Recycling_copy" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_76">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000185" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5273" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5273"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="PR Degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_77">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5272" name="k1" value="1.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5272"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="PckG6p Production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_78">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000393" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5271" name="kg11" value="70"/>
          <Constant key="Parameter_5270" name="kg7" value="1"/>
          <Constant key="Parameter_5269" name="s" value="8"/>
        </ListOfConstants>
        <KineticLaw function="Function_84" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Parameter_5271"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Parameter_5270"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Parameter_5269"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Metabolite_6"/>
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
<dcterms:W3CDTF>2021-04-07T23:10:07Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA],Vector=Metabolites[CRH]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA],Vector=Metabolites[ACTH]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA],Vector=Metabolites[F]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[F]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[PER/CRY_mRNA]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[PER/CRY_mRNA_cytoplasm]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus],Vector=Metabolites[PER/CRY_mRNA_nucleus]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[BMAL1_mRNA]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[BMAL1_mRNA_cytoplasm]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus],Vector=Metabolites[BMAL1_mRNA_nucleus]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus],Vector=Metabolites[BMAL1/CLOCK_complex]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[NAD]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[NMN]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[NAM]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[EntF]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[SIRT1]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus],Vector=Metabolites[BMAL1/CLOCK/SIRT1_complex]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[NAMPT]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA],Vector=Metabolites[feed2]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA],Vector=Metabolites[feed3]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[PGC1amRNA]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[PGC1a]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus],Vector=Metabolites[PGC1aN]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus],Vector=Metabolites[PGC1aNact]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[FOXO1]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[PckG6p]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA],Vector=Metabolites[Phpa]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[MR]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[GR]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[FGR]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[FMR]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus],Vector=Metabolites[FMRN]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus],Vector=Metabolites[FGRN]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[P]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[mRNAP]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[mRNARP]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[Rp]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[PR]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA],Vector=Metabolites[GR]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA],Vector=Metabolites[FGR]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA],Vector=Metabolites[FGRN]" value="602214085700000" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Values[Light]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Values[Feed]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[CRH Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[CRH Production],ParameterGroup=Parameters,Parameter=KP1" value="1.0577000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[CRH Production],ParameterGroup=Parameters,Parameter=kp1" value="0.79649999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[ACTH Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[ACTH Production],ParameterGroup=Parameters,Parameter=kp2" value="0.6875" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[ACTH Production],ParameterGroup=Parameters,Parameter=KP1" value="1.0577000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[ACTH Production],ParameterGroup=Parameters,Parameter=kfp" value="0.14999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[ACTH Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[ACTH Degradation],ParameterGroup=Parameters,Parameter=Vd2" value="0.51290000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[ACTH Degradation],ParameterGroup=Parameters,Parameter=Kd2" value="0.30690000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[F(HPA) Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[F(HPA) Production],ParameterGroup=Parameters,Parameter=kp3" value="1.0302" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[F(HPA) Production],ParameterGroup=Parameters,Parameter=kn" value="1.2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[F(HPA) Production],ParameterGroup=Parameters,Parameter=kfp" value="0.14999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[F(HPA) Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[F(HPA) Degradation],ParameterGroup=Parameters,Parameter=Vd3" value="0.36180000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[F(HPA) Degradation],ParameterGroup=Parameters,Parameter=Kd3" value="0.46949999999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[F (Cell)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[F (Cell)],ParameterGroup=Parameters,Parameter=tau" value="0.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY mRNA Production 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY mRNA Production 1],ParameterGroup=Parameters,Parameter=v1b" value="9" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY mRNA Production 1],ParameterGroup=Parameters,Parameter=c" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY mRNA Production 1],ParameterGroup=Parameters,Parameter=k1b" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY mRNA Production 1],ParameterGroup=Parameters,Parameter=k1i" value="0.56000000000000005" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY mRNA Production 1],ParameterGroup=Parameters,Parameter=p" value="8" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY mRNA Production 1],ParameterGroup=Parameters,Parameter=kf" value="0.12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY mRNA Production 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY mRNA Production 2],ParameterGroup=Parameters,Parameter=kc" value="9.0000000000000002e-06" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY mRNA Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY mRNA Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY Cell Translation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY Cell Translation],ParameterGroup=Parameters,Parameter=k2b" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY Cell Translation],ParameterGroup=Parameters,Parameter=q" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY Cell Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY Cell Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY (Cell to Nucleus)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY (Cell to Nucleus)],ParameterGroup=Parameters,Parameter=k1" value="0.23999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY (Nucleus to Cytoplasm)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY (Nucleus to Cytoplasm)],ParameterGroup=Parameters,Parameter=k1" value="0.02" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY Nucleus Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PER/CRY Nucleus Degradation],ParameterGroup=Parameters,Parameter=k3d" value="0.02" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal mRNA Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal mRNA Production],ParameterGroup=Parameters,Parameter=v4b" value="0.71999999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal mRNA Production],ParameterGroup=Parameters,Parameter=r" value="3" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal mRNA Production],ParameterGroup=Parameters,Parameter=k4b" value="2.1600000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal mRNA Production],ParameterGroup=Parameters,Parameter=kg13" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal mRNA Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal mRNA Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.75" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal Protein Translation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal Protein Translation],ParameterGroup=Parameters,Parameter=k5b" value="0.23999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal Translocation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal Translocation],ParameterGroup=Parameters,Parameter=k1" value="0.45000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal Translocation],ParameterGroup=Parameters,Parameter=k2" value="0.059999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal Clock Association]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal Clock Association],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal Clock Dissociation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal Clock Dissociation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal Cell Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal Cell Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.059999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal Nucleus Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal Nucleus Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.12" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal Clock Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal Clock Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[CRH Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[CRH Degradation],ParameterGroup=Parameters,Parameter=Vd1" value="0.50839999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[CRH Degradation],ParameterGroup=Parameters,Parameter=Kd1" value="1.9626999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[CRH Degradation],ParameterGroup=Parameters,Parameter=L" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Values[Light],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NAD Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NAD Production],ParameterGroup=Parameters,Parameter=km1" value="5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NAD Production],ParameterGroup=Parameters,Parameter=nad" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NAD Production],ParameterGroup=Parameters,Parameter=KM1" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NMN to NAD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NMN to NAD],ParameterGroup=Parameters,Parameter=km2" value="40" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NMN to NAD],ParameterGroup=Parameters,Parameter=KM2" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NAD Inhibition]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NAD Inhibition],ParameterGroup=Parameters,Parameter=km3" value="5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NAD Inhibition],ParameterGroup=Parameters,Parameter=KM3" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NAD to NAM]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NAD to NAM],ParameterGroup=Parameters,Parameter=km4" value="20" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NAD to NAM],ParameterGroup=Parameters,Parameter=KM4" value="20" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NAM to NMN]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NAM to NMN],ParameterGroup=Parameters,Parameter=km5" value="40" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NAM to NMN],ParameterGroup=Parameters,Parameter=KM5" value="5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[EntF Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[EntF Production],ParameterGroup=Parameters,Parameter=km11" value="5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[EntF Production],ParameterGroup=Parameters,Parameter=KM11" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[EntF Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[EntF Degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[SIRT1 Prod]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[SIRT1 Prod],ParameterGroup=Parameters,Parameter=km6" value="5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[SIRT1 Prod],ParameterGroup=Parameters,Parameter=sirt" value="5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[SIRT1 Prod],ParameterGroup=Parameters,Parameter=KM6" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[SIRT1 Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[SIRT1 Degradation],ParameterGroup=Parameters,Parameter=km7" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[SIRT1 Degradation],ParameterGroup=Parameters,Parameter=KM7" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal/Clock - Sirt1 Association]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal/Clock - Sirt1 Association],ParameterGroup=Parameters,Parameter=k1" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal/Clock - Sirt1 Association],ParameterGroup=Parameters,Parameter=k2" value="20" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal/Clock - Sirt1 Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Bmal/Clock - Sirt1 Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NAMPT Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NAMPT Production],ParameterGroup=Parameters,Parameter=km10a" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NAMPT Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[NAMPT Degradation],ParameterGroup=Parameters,Parameter=k1" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Feed 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Feed 2],ParameterGroup=Parameters,Parameter=Tf" value="3" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Feed 2],ParameterGroup=Parameters,Parameter=Feed" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Values[Feed],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Feed 3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Feed 3],ParameterGroup=Parameters,Parameter=Tf" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGC1a mRNA Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGC1a mRNA Production],ParameterGroup=Parameters,Parameter=kg1" value="0.002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGC1a mRNA Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGC1a mRNA Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.20000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGC1a Protein Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGC1a Protein Degradation],ParameterGroup=Parameters,Parameter=k1" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGC1a Cell to Nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGC1a Cell to Nucleus],ParameterGroup=Parameters,Parameter=k1" value="2" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGC1a Nucleus to Cell]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGC1a Nucleus to Cell],ParameterGroup=Parameters,Parameter=k1" value="0.20000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGC1aNactive to PGC1aN]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGC1aNactive to PGC1aN],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGC1aN to PGC1aNactive]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGC1aN to PGC1aNactive],ParameterGroup=Parameters,Parameter=kg5" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGCNactive Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGCNactive Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[FOXO1 Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[FOXO1 Production],ParameterGroup=Parameters,Parameter=kg9" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[FOXO1 Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[FOXO1 Degradation],ParameterGroup=Parameters,Parameter=k1" value="5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Pck1/G6pc Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Pck1/G6pc Degradation],ParameterGroup=Parameters,Parameter=k1" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGC1a Translation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGC1a Translation],ParameterGroup=Parameters,Parameter=k5b" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGC1aNactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PGC1aNactivation],ParameterGroup=Parameters,Parameter=kg5" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Phpa]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[Phpa],ParameterGroup=Parameters,Parameter=Tf" value="0.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[MR Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[MR Production],ParameterGroup=Parameters,Parameter=kmr" value="0.34000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[MR Production],ParameterGroup=Parameters,Parameter=kfmr" value="1.0109999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[MR Production],ParameterGroup=Parameters,Parameter=Kfmr" value="0.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[MR Production],ParameterGroup=Parameters,Parameter=MRt" value="1.45" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[MR Production],ParameterGroup=Parameters,Parameter=KMR" value="0.20999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[GR Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[GR Production],ParameterGroup=Parameters,Parameter=kgr" value="1.1799999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[GR Production],ParameterGroup=Parameters,Parameter=kfgr" value="15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[GR Production],ParameterGroup=Parameters,Parameter=Kfgr" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[GR Production],ParameterGroup=Parameters,Parameter=GRt" value="1.8100000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[GR Production],ParameterGroup=Parameters,Parameter=KGR" value="0.73999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[MR Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[MR Degradation],ParameterGroup=Parameters,Parameter=kmrgeg" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[MR Degradation],ParameterGroup=Parameters,Parameter=KMRdeg" value="1.6499999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[GR Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[GR Degradation],ParameterGroup=Parameters,Parameter=kgrgeg" value="1.52" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[GR Degradation],ParameterGroup=Parameters,Parameter=KGRdeg" value="1.05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[F-MR Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[F-MR Binding],ParameterGroup=Parameters,Parameter=kb" value="3.29" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[F-GR Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[F-GR Binding],ParameterGroup=Parameters,Parameter=kb" value="3.29" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[FMR Translocation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[FMR Translocation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[FGR Translocation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[FGR Translocation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[FMRN Recycling]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[FMRN Recycling],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[FGRN Recycling]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[FGRN Recycling],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt mRNA Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt mRNA Production],ParameterGroup=Parameters,Parameter=kmrnap" value="0.60999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt mRNA Production],ParameterGroup=Parameters,Parameter=kfr" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt mRNA Production],ParameterGroup=Parameters,Parameter=Kfr" value="0.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt mRNA Production],ParameterGroup=Parameters,Parameter=kpc" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt mRNA Production],ParameterGroup=Parameters,Parameter=Kpc" value="25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt mRNA Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt mRNA Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.19" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt Translation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt Translation],ParameterGroup=Parameters,Parameter=k5b" value="0.28999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt Degradation],ParameterGroup=Parameters,Parameter=k1" value="1.0600000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt Receptor mRNA Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt Receptor mRNA Production],ParameterGroup=Parameters,Parameter=kmrnaRp" value="0.60999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt Receptor mRNA Production],ParameterGroup=Parameters,Parameter=kfr" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt Receptor mRNA Production],ParameterGroup=Parameters,Parameter=Kfr" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt Receptor mRNA Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt Receptor mRNA Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.19" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt Receptor Translation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt Receptor Translation],ParameterGroup=Parameters,Parameter=k5b" value="1.1100000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt Receptor Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P cyt Receptor Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.26000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P-R Binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[P-R Binding],ParameterGroup=Parameters,Parameter=kb" value="0.14000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[GR Degradation_copy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[GR Degradation_copy],ParameterGroup=Parameters,Parameter=kgrgeg" value="1.52" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[GR Degradation_copy],ParameterGroup=Parameters,Parameter=KGRdeg" value="1.05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[GR Production_copy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[GR Production_copy],ParameterGroup=Parameters,Parameter=kgr" value="1.1799999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[GR Production_copy],ParameterGroup=Parameters,Parameter=kfgr" value="15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[GR Production_copy],ParameterGroup=Parameters,Parameter=Kfgr" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[GR Production_copy],ParameterGroup=Parameters,Parameter=GRt" value="1.8100000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[GR Production_copy],ParameterGroup=Parameters,Parameter=KGR" value="0.73999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[F-GR Binding_copy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[F-GR Binding_copy],ParameterGroup=Parameters,Parameter=kb" value="3.29" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[FGR Translocation_copy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[FGR Translocation_copy],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[FGRN Recycling_copy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[FGRN Recycling_copy],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PR Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PR Degradation],ParameterGroup=Parameters,Parameter=k1" value="1.3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PckG6p Production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PckG6p Production],ParameterGroup=Parameters,Parameter=kg11" value="70" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PckG6p Production],ParameterGroup=Parameters,Parameter=kg7" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Reactions[PckG6p Production],ParameterGroup=Parameters,Parameter=s" value="8" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 0 0 1 1 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_15" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
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
    <Task key="Task_16" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1920"/>
        <Parameter name="StepSize" type="float" value="0.25"/>
        <Parameter name="Duration" type="float" value="480"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="456"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="1"/>
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
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_18" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_19" name="Optimization" type="optimization" scheduled="false" updateModel="false">
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
    <Task key="Task_20" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
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
    <Task key="Task_21" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_23" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
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
    <Task key="Task_24" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
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
    <Task key="Task_25" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_27" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[CRH]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA],Vector=Metabolites[CRH],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ACTH]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA],Vector=Metabolites[ACTH],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[F{HPA}]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA],Vector=Metabolites[F],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[F{Cell}]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[F],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PER/CRY_mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[PER/CRY_mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PER/CRY_mRNA_cytoplasm]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[PER/CRY_mRNA_cytoplasm],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PER/CRY_mRNA_nucleus]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus],Vector=Metabolites[PER/CRY_mRNA_nucleus],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[BMAL1_mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[BMAL1_mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[BMAL1_mRNA_cytoplasm]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[BMAL1_mRNA_cytoplasm],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[BMAL1_mRNA_nucleus]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus],Vector=Metabolites[BMAL1_mRNA_nucleus],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[BMAL1/CLOCK_complex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus],Vector=Metabolites[BMAL1/CLOCK_complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NAD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NMN]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[NMN],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NAM]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[NAM],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[EntF]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[EntF],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SIRT1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[SIRT1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[BMAL1/CLOCK/SIRT1_complex]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus],Vector=Metabolites[BMAL1/CLOCK/SIRT1_complex],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NAMPT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[NAMPT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[feed2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA],Vector=Metabolites[feed2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[feed3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA],Vector=Metabolites[feed3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PGC1amRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[PGC1amRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PGC1a]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[PGC1a],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PGC1aN]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus],Vector=Metabolites[PGC1aN],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PGC1aNact]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus],Vector=Metabolites[PGC1aNact],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[FOXO1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[FOXO1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PckG6p]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[PckG6p],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Phpa]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA],Vector=Metabolites[Phpa],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MR]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[MR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[GR{Cell}]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[GR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[FGR{Cell}]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[FGR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[FMR]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[FMR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[FMRN]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus],Vector=Metabolites[FMRN],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[FGRN{Nucleus}]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Nucleus],Vector=Metabolites[FGRN],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[P],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[mRNAP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[mRNAP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[mRNARP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[mRNARP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Rp]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[Rp],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PR]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[Cell],Vector=Metabolites[PR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[GR{HPA}]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA],Vector=Metabolites[GR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[FGR{HPA}]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA],Vector=Metabolites[FGR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[FGRN{HPA}]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Compartments[HPA],Vector=Metabolites[FGRN],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Light]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Values[Light],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Feed]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Bae2017 - Mathematical analysis of circadian disruption and metabolic re-entrainment of hepatic gluconeogenesis,Vector=Values[Feed],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Bae2018.xml">
    <SBMLMap SBMLid="ACTH" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="ACTH_Degradation" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="ACTH_Degradation_1" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="ACTH_Production" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="ACTH_Production__1__1" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Bmal_Cell_Degradation" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="Bmal_Clock_Association" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="Bmal_Clock_Degradation" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="Bmal_Clock_Dissociation" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="Bmal_Clock___Sirt1_Association" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="Bmal_Clock___Sirt1_Degradation" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="Bmal_Nucleus_Degradation" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="Bmal_Protein_Translation" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="Bmal_Protein_Translation_0" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Bmal_Protein_Translation_1" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="Bmal_Protein_Translation_2" COPASIkey="Function_77"/>
    <SBMLMap SBMLid="Bmal_Protein_Translation_3" COPASIkey="Function_79"/>
    <SBMLMap SBMLid="Bmal_Translocation" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="Bmal_mRNA_Degradation" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="Bmal_mRNA_Production" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="Bmal_mRNA_Transcription_1" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="CRH" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="CRH_Degradation" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="CRH_Degradation_1" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="CRH_Production" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="CRH_Production_1" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Cell" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="EntF" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="EntF_Degradation" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="EntF_Production" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="EntF_Production_1" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="FGRN_Cell" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="FGRN_HPA" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="FGRN_Recycling" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="FGRN_Recycling_copy" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="FGR_Cell" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="FGR_HPA" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="FGR_Translocation" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="FGR_Translocation_copy" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="FHPA_Degradation_1" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="FHPA_Production__1__1" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="FMR" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="FMRN" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="FMRN_Recycling" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="FMR_Translocation" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="FOXO1" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="FOXO1_Degradation" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="FOXO1_Production" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="FOXO1_Production_1" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="F_Cell" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="F_Cell__1__1" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="F_GR_Binding" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="F_GR_Binding_copy" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="F_HPA" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="F_HPA__Degradation" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="F_HPA__Production" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="F_MR_Binding" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="F__Cell" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Feed" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="Feed2_1" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Feed3_1" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Feed_2" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="Feed_3" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="GR_Cell" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="GR_Degradation" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="GR_Degradation_1" COPASIkey="Function_73"/>
    <SBMLMap SBMLid="GR_Degradation_2" COPASIkey="Function_81"/>
    <SBMLMap SBMLid="GR_Degradation_copy" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="GR_HPA" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="GR_Production" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="GR_Production_1" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="GR_Production_2" COPASIkey="Function_82"/>
    <SBMLMap SBMLid="GR_Production_copy" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="HPA" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="L" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="MR" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="MR_Degradation" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="MR_Degradation_1" COPASIkey="Function_72"/>
    <SBMLMap SBMLid="MR_Production" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="MR_Production_1" COPASIkey="Function_70"/>
    <SBMLMap SBMLid="NAD" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="NAD_Inhibition" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="NAD_Production" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="NAD_Production_1_1" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="NAD_degradation_1" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="NAD_to_NAM" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="NAD_to_NAM_1" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="NAM" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="NAMPT" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="NAMPT_Degradation" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="NAMPT_Production" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="NAMPT_Production_0" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="NAM_to_NMN" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="NAM_to_NMN_1" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="NMN" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="NMN_to_NAD" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="NMN_to_NAD_1" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Nucleus" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="P" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="PER_CRY_Cell_Degradation" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="PER_CRY_Cell_Translation" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="PER_CRY_Nuclear_degradation_1" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="PER_CRY_Nucleus_Degradation" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="PER_CRY_Protein_Translation_1" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="PER_CRY__Cell_to_Nucleus" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="PER_CRY__Nucleus_to_Cytoplasm" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="PER_CRY_mRNA_Degradation" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="PER_CRY_mRNA_Production_1" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="PER_CRY_mRNA_Production_1__1__1" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="PER_CRY_mRNA_Production_2" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="PER_CRY_mRNA_Production_2__1__1" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="PGC1a" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="PGC1aN" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="PGC1aN_to_PGC1aNactive" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="PGC1aN_to_PGC1aNactive_1" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="PGC1aNact" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="PGC1aNact_to_PGC1aN_1" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="PGC1aNactivation" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="PGC1aNactive_to_PGC1aN" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="PGC1a_Cell_to_Nucleus" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="PGC1a_Nucleus_to_Cell" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="PGC1a_Protein_Degraadation" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="PGC1a_Translation" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="PGC1a___mRNA_Production_1" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="PGC1a_mRNA_Degradation" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="PGC1a_mRNA_Production" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="PGC1amRNA" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="PGCNactive_Degradation" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="PR" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="PR_Degradation" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="P_R_Binding" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="P_Receptor_production_1" COPASIkey="Function_78"/>
    <SBMLMap SBMLid="P_cyt_Degradation" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="P_cyt_Receptor_Degradation" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="P_cyt_Receptor_Translation" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="P_cyt_Receptor_mRNA_Degradation" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="P_cyt_Receptor_mRNA_Production" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="P_cyt_Translation" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="P_cyt_mRNA_Degradation" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="P_cyt_mRNA_Production" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="P_cytokine_mRNA_Production_1" COPASIkey="Function_76"/>
    <SBMLMap SBMLid="Pck1_G6pc_Degradation" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="PckG6P_Production_1" COPASIkey="Function_84"/>
    <SBMLMap SBMLid="PckG6p" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="PckG6p_Production" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="Phpa" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="Phpa_0" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="Phpa_Production_1" COPASIkey="Function_69"/>
    <SBMLMap SBMLid="Rate_Law_for_F_MR_Binding_1" COPASIkey="Function_74"/>
    <SBMLMap SBMLid="Rate_Law_for_F_MR_Binding_2" COPASIkey="Function_75"/>
    <SBMLMap SBMLid="Rate_Law_for_F_MR_Binding_3" COPASIkey="Function_80"/>
    <SBMLMap SBMLid="Rate_Law_for_F_MR_Binding_4" COPASIkey="Function_83"/>
    <SBMLMap SBMLid="Rp" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="SIRT1" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="SIRT1_Degradation" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="SIRT1_Inhibition_1" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="SIRT1_Prod" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="SIRT1_Production_1" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="feed2" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="feed3" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="mRNAP" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="mRNARP" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="y1" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="y2" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="y3" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="y4" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="y5" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="y6" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="y7" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="y8" COPASIkey="Metabolite_16"/>
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
<dcterms:W3CDTF>2021-04-07T23:10:01Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2021-04-07T23:10:01Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2021-04-07T23:10:01Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_15" name="dimensionless" symbol="1">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_14">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2021-04-07T23:10:01Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1
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
<dcterms:W3CDTF>2021-04-07T23:10:01Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2021-04-07T23:10:01Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2021-04-07T23:10:01Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2021-04-07T23:10:01Z</dcterms:W3CDTF>
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
