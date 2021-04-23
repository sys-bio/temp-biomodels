<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.29 (Build 228) (http://www.copasi.org) at 2020-11-10T02:21:33Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="29" versionDevel="228" copasiSourcesModified="0">
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
    <Function key="Function_40" name="Henri-Michaelis-Menten (irreversible)_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_40">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V3PC*PCN_0/(Kp+PCN_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="Kp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="PCN_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_262" name="V3PC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Henri-Michaelis-Menten (irreversible)_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_41">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V4PC*PCNP_0/(Kdp+PCNP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="Kdp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="PCNP_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_261" name="V4PC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Henri-Michaelis-Menten (irreversible)_3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_42">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V1PC*PCC_0/(Kp+PCC_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_268" name="Kp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="PCC_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_266" name="V1PC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Henri-Michaelis-Menten (irreversible)_4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V2PC*PCCP_0/(Kdp+PCCP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="Kdp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="PCCP_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_269" name="V2PC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Henri-Michaelis-Menten (irreversible)_5" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V1C*CC_0/(Kp+CC_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_274" name="CC_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_273" name="Kp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="V1C" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Henri-Michaelis-Menten (irreversible)_6" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_45">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V2C*CCP_0/(Kdp+CCP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="CCP_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_276" name="Kdp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="V2C" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Rate Law for Translation of mRNA to protein_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_46">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ksC*MC_0
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="MC_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_279" name="ksC" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Hill (Copy)_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_47">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vsC*BN_0^n/(KAC^n+BN_0^n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_281" name="BN_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_278" name="KAC" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="n" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="vsC" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Hill (Copy)_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_48">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vsP*BN_0^n/(KAP^n+BN_0^n)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="BN_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_286" name="KAP" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="n" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="vsP" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Rate Law for Translation of mRNA to protein_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_49">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ksP*MP_0
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="MP_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_290" name="ksP" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Henri-Michaelis-Menten (irreversible)_7" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_50">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V1P*PC_0/(Kp+PC_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_288" name="Kp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="PC_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_292" name="V1P" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Henri-Michaelis-Menten (irreversible)_8" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_51">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V2P*PCP_0/(Kdp+PCP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="Kdp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="PCP_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_293" name="V2P" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Hill (copy, 1)_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_52">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vsB*KIB^m/(KIB^m+BN_0^m)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_298" name="BN_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_297" name="KIB" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="m" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="vsB" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Rate Law for Translation of mRNA to protein_3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_53">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ksB*MB_0
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_303" name="MB_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_302" name="ksB" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Henri-Michaelis-Menten (irreversible)_9" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_54">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V1B*BC_0/(Kp+BC_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_300" name="BC_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_301" name="Kp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="V1B" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Henri-Michaelis-Menten (irreversible)_10" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_55">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V2B*BCP_0/(Kdp+BCP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_307" name="BCP_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_306" name="Kdp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="V2B" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Henri-Michaelis-Menten (irreversible)_11" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_56">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V3B*BN_0/(Kp+BN_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_310" name="BN_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_309" name="Kp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="V3B" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Henri-Michaelis-Menten (irreversible)_12" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_57">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        V4B*BNP_0/(Kdp+BNP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_313" name="BNP_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_312" name="Kdp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="V4B" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Henri-Michaelis-Menten (irreversible)_13" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_58">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vdIN*IN_0/(Kd+IN_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_316" name="IN_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_315" name="Kd" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="vdIN" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Henri-Michaelis-Menten (irreversible)_14" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_59">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vmC*MC_0/(KmC+MC_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_319" name="KmC" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="MC_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_317" name="vmC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Henri-Michaelis-Menten (irreversible)_15" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_60">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vdCC*CCP_0/(Kd+CCP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_322" name="CCP_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_321" name="Kd" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="vdCC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Henri-Michaelis-Menten (irreversible)_16" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_61">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vdPCC*PCCP_0/(Kd+PCCP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_325" name="Kd" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="PCCP_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_323" name="vdPCC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Henri-Michaelis-Menten (irreversible)_17" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_62">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vdPCN*PCNP_0/(Kd+PCNP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_328" name="Kd" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="PCNP_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_326" name="vdPCN" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Henri-Michaelis-Menten (irreversible)_18" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_63">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vmP*MP_0/(KmP+MP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_331" name="KmP" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="MP_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_329" name="vmP" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Henri-Michaelis-Menten (irreversible)_19" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_64">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vdPC*PCP_0/(Kd+PCP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_334" name="Kd" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="PCP_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_332" name="vdPC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Henri-Michaelis-Menten (irreversible)_20" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_65">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vmB*MB_0/(KmB+MB_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_337" name="KmB" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="MB_0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_335" name="vmB" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Henri-Michaelis-Menten (irreversible)_21" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_66">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vdBC*BCP_0/(Kd+BCP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_340" name="BCP_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_339" name="Kd" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="vdBC" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Henri-Michaelis-Menten (irreversible)_22" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_67">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-11-09T04:18:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        vdBN*BNP_0/(Kd+BNP_0)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_343" name="BNP_0" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_342" name="Kd" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="vdBN" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod" simulationType="time" timeUnit="h" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <bqmodel:isDerivedFrom>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000083"/>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL0478895291"/>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043153"/>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </bqmodel:isDerivedFrom>
    <bqmodel:isDerivedFrom>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000078"/>
      </rdf:Bag>
    </bqmodel:isDerivedFrom>
    <bqmodel:isDerivedFrom>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000074"/>
      </rdf:Bag>
    </bqmodel:isDerivedFrom>
    <bqmodel:isDerivedFrom>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000073"/>
      </rdf:Bag>
    </bqmodel:isDerivedFrom>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <bqbiol:isDescribedBy rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000073"/>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/15363675"/>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <bqbiol:isDescribedBy rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000083"/>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <bqbiol:isDescribedBy rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000078"/>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <bqbiol:isDescribedBy rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000074"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>sowmyamanojna@smail.iitm.ac.in</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Narasimha</vCard:Family>
            <vCard:Given>Sowmya Manojna</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Indian Institute of Technology, Madras</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>sathvikanantakrishnan@smail.iitm.ac.in</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Anantakrishnan</vCard:Family>
            <vCard:Given>Sathvik</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Indian Institute of Technology, Madras</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>sankalpavenkatraghavan@gmail.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Venkatraghavan</vCard:Family>
            <vCard:Given>Sankalpa</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Indian Institute of Technology, Madras</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>bs17b011@smail.iitm.ac.in</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Govindarajan</vCard:Family>
            <vCard:Given>Prashant</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Indian Institute of Technology, Madras</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>be17b038@smail.iitm.ac.in</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Gangadharan</vCard:Family>
            <vCard:Given>Sahana</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Indian Institute of Technology, Madras</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL0478895291"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043153"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      We extend the study of a computational model recently proposed for the mammalian circadian clock (Proc. Natl Acad. Sci. USA 100 (2003) 7051). The model, based on the intertwined positive and negative regulatory loops involving the Per, Cry, Bmal1, and Clock genes, can give rise to sustained circadian oscillations in conditions of continuous darkness. These limit cycle oscillations correspond to circadian rhythms autonomously generated by suprachiasmatic nuclei and by some peripheral tissues. By using different sets of parameter values producing circadian oscillations, we compare the effect of the various parameters and show that both the occurrence and the period of the oscillations are generally most sensitive to parameters related to synthesis or degradation of Bmal1 mRNA and BMAL1 protein. The mechanism of circadian oscillations relies on the formation of an inactive complex between PER and CRY and the activators CLOCK and BMAL1 that enhance Per and Cry expression. Bifurcation diagrams and computer simulations nevertheless indicate the possible existence of a second source of oscillatory behavior. Thus, sustained oscillations might arise from the sole negative autoregulation of Bmal1 expression. This second oscillatory mechanism may not be functional in physiological conditions, and its period need not necessarily be circadian. When incorporating the light-induced expression of the Per gene, the model accounts for entrainment of the oscillations by light-dark (LD) cycles. Long-term suppression of circadian oscillations by a single light pulse can occur in the model when a stable steady state coexists with a stable limit cycle. The phase of the oscillations upon entrainment in LD critically depends on the parameters that govern the level of CRY protein. Small changes in the parameters governing CRY levels can shift the peak in Per mRNA from the L to the D phase, or can prevent entrainment. The results are discussed in relation to physiological disorders of the sleep-wake cycle linked to perturbations of the human circadian clock, such as the familial advanced sleep phase syndrome or the non-24h sleep-wake syndrome.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Mammalian Cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/15363675" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C12958" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>This compartment describes Circadian Rhythms occuring at 24.2 hours.</pre>
  </body>
        </Comment>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="MP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/---" />
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENST00000317276" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="MC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENST00000008527" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="MB" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENST00000403290" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="PC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15534" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="CC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q16526" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="PCP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15534" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="CCP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q16526" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="PCC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <bqmodel:hasInstance>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q16526" />
      </rdf:Bag>
    </bqmodel:hasInstance>
    <bqmodel:hasInstance>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15534" />
      </rdf:Bag>
    </bqmodel:hasInstance>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="PCN" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <bqmodel:hasInstance>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q16526" />
      </rdf:Bag>
    </bqmodel:hasInstance>
    <bqmodel:hasInstance>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15534" />
      </rdf:Bag>
    </bqmodel:hasInstance>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="PCNP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqmodel:hasInstance>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512" />
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q16526" />
      </rdf:Bag>
    </bqmodel:hasInstance>
    <bqmodel:hasInstance>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15534" />
      </rdf:Bag>
    </bqmodel:hasInstance>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="PCCP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqmodel:hasInstance>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512" />
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15534" />
      </rdf:Bag>
    </bqmodel:hasInstance>
    <bqmodel:hasInstance>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q16526" />
      </rdf:Bag>
    </bqmodel:hasInstance>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="BC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="BCP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="BN" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="BNP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="IN" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990513" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="BTot" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25697" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BC],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="CTot" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25697" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CCP],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="PTot" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25697" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCCP],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCNP],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCP],Reference=Value>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="MP" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENST00000317276" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vsP],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>^&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[n],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KAP],Reference=Value>^&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[n],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>^&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[n],Reference=Value>))-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vmP],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KmP],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdmp],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MP],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="vsP" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1.5*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vstot],Reference=Value>
        </Expression>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="vmP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="kdmp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="KAP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000363" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="KmP" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="MC" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENST00000008527" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vsC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>^&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[n],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KAC],Reference=Value>^&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[n],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>^&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[n],Reference=Value>))-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vmC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MC],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KmC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MC],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdmc],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MC],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="vsC" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1.1000000000000001*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vstot],Reference=Value>
        </Expression>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="vmC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="kdmc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="KAC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000363" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="KmC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="MB" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <CopasiMT:isEncodedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENST00000403290" />
      </rdf:Bag>
    </CopasiMT:isEncodedBy>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vsB],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KIB],Reference=Value>^&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[m],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KIB],Reference=Value>^&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[m],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>^&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[m],Reference=Value>))-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vmB],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MB],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KmB],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MB],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdmb],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MB],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="vsB" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vstot],Reference=Value>
        </Expression>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="vmB" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="kdmb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="KIB" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000261" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="KmB" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="PC" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15534" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[ksP],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MP],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2P],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k4],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1P],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k3],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="CC" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q16526" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[ksC],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2C],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k4],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1C],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k3],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdnc],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="PCP" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15534" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1P],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC],Reference=Value>))-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2P],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdPC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCP],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="CCP" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q16526" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1C],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC],Reference=Value>))-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2C],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdCC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CCP],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="PCC" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <bqmodel:hasInstance>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15534" />
      </rdf:Bag>
    </bqmodel:hasInstance>
    <bqmodel:hasInstance>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q16526" />
      </rdf:Bag>
    </bqmodel:hasInstance>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2PC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k3],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k2],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1PC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k4],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k1],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="PCN" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <bqmodel:hasInstance>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15534" />
      </rdf:Bag>
    </bqmodel:hasInstance>
    <bqmodel:hasInstance>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q16526" />
      </rdf:Bag>
    </bqmodel:hasInstance>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V4PC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCNP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCNP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k1],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k8],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[IN],Reference=Value>-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V3PC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k2],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k7],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="PCCP" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqmodel:hasInstance>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512" />
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15534" />
      </rdf:Bag>
    </bqmodel:hasInstance>
    <bqmodel:hasInstance>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q16526" />
      </rdf:Bag>
    </bqmodel:hasInstance>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1PC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC],Reference=Value>))-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2PC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdPCC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCCP],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="PCNP" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqmodel:hasInstance>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512" />
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q16526" />
      </rdf:Bag>
    </bqmodel:hasInstance>
    <bqmodel:hasInstance>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15534" />
      </rdf:Bag>
    </bqmodel:hasInstance>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V3PC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>))-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V4PC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCNP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCNP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdPCN],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCNP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCNP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCNP],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="BC" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2B],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k6],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[ksB],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MB],Reference=Value>-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1B],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BC],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BC],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k5],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BC],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="BCP" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1B],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BC],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BC],Reference=Value>))-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2B],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdBC],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BCP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BCP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BCP],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="BN" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V4B],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BNP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BNP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k5],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BC],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k8],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[IN],Reference=Value>-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V3B],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k6],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k7],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="BNP" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pato/PATO:0002220" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O00327" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V3B],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>))-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V4B],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BNP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BNP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdBN],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BNP],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BNP],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BNP],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="IN" simulationType="ode" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990513" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1990512" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k7],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN],Reference=Value>-(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k8],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[IN],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdIN],Reference=Value>*(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[IN],Reference=Value>/(&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=Value>+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[IN],Reference=Value>))+&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=Value>*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[IN],Reference=Value>)
        </Expression>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="k1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Rate constant for entry of the PER–CRY complex into the nucleus</pre>
  </body>
        </Comment>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="k2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Rate constant for exit of the PER–CRY complex from the nucleus</pre>
  </body>
        </Comment>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="k3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Rate constant for the formation of the PER–CRY complex</pre>
  </body>
        </Comment>
        <Unit>
          ml/(mol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="k4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="k5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="k6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="k7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          ml/(mol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="k8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="kdnc" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="kdn" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="kstot" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="ksB" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.12*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kstot],Reference=Value>
        </Expression>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="ksC" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1.6000000000000001*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kstot],Reference=Value>
        </Expression>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="ksP" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.59999999999999998*&lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kstot],Reference=Value>
        </Expression>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="m" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000190" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="n" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000190" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="vstot" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="Kd" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="Kdp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="Kp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          nmol/l
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="Vphos" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000612" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="V1B" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="V1C" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="V1P" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Vphos],Reference=Value>
        </Expression>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="V1PC" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Vphos],Reference=Value>
        </Expression>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="V2B" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="V2C" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="V2P" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_58">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="V2PC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_59">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="V3B" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_60">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="V3PC" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Vphos],Reference=Value>
        </Expression>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="V4B" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_62">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="V4PC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_63">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="vdBC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_64">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="vdBN" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_65">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="vdCC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_66">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="vdIN" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_67">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="vdPC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_68">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="vdPCC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_69">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="vdPCN" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_70">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C47822" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          mmol/(l*s)
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Reversible reaction  between PER-CRY complex in cytosol and nucleus" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000650" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5390" name="k1" value="0.4"/>
          <Constant key="Parameter_5389" name="k2" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Phosphorylation of PER-CRY complex in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
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
          <Constant key="Parameter_5388" name="Kp" value="0.1"/>
          <Constant key="Parameter_5387" name="V3PC" value="0.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Dephosphorylation of PER-CRY complex in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T03:09:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5386" name="Kdp" value="0.1"/>
          <Constant key="Parameter_5385" name="V4PC" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Phosphorylation of PER-CRY complex in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5384" name="Kp" value="0.1"/>
          <Constant key="Parameter_5383" name="V1PC" value="0.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Dephosphorylation of PER-CRY complex in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C20612" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5382" name="Kdp" value="0.1"/>
          <Constant key="Parameter_5381" name="V2PC" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Reversible reaction between PER, CRY and PER-CRY complex in cytosol" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000650" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5380" name="k1" value="0.4"/>
          <Constant key="Parameter_5379" name="k2" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_4"/>
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Phosphorylation of CRY in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5378" name="Kp" value="0.1"/>
          <Constant key="Parameter_5377" name="V1C" value="0.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Dephosphorylation of CRY in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C20612" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5376" name="Kdp" value="0.1"/>
          <Constant key="Parameter_5375" name="V2C" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Translation of Cry mRNA to CRY protein in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C80450" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5374" name="ksC" value="1.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="Transcription of Cry gene to Cry mRNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C17208" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5373" name="KAC" value="0.6"/>
          <Constant key="Parameter_5372" name="n" value="4"/>
          <Constant key="Parameter_5371" name="vsC" value="1.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="Transcription of Per gene to Per mRNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C17208" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5370" name="KAP" value="0.7"/>
          <Constant key="Parameter_5369" name="n" value="4"/>
          <Constant key="Parameter_5368" name="vsP" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="Translation of Per mRNA to PER protein" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C80450" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5367" name="ksP" value="0.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="Phosphorylation of PER in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5366" name="Kp" value="0.1"/>
          <Constant key="Parameter_5365" name="V1P" value="0.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="Dephosphorylation of PER in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C20612" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5364" name="Kdp" value="0.1"/>
          <Constant key="Parameter_5363" name="V2P" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="Transcription of Bmal1 gene to Bmal1 mRNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C17208" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5687" name="KIB" value="2.2"/>
          <Constant key="Parameter_5688" name="m" value="2"/>
          <Constant key="Parameter_5686" name="vsB" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="Translation of Bmal1 mRNA to BMAL1 protein" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C80450" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5689" name="ksB" value="0.12"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="Phosphorylation of BMAL1 in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5716" name="Kp" value="0.1"/>
          <Constant key="Parameter_5717" name="V1B" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="Dephosphorylation of BMAL1 in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C20612" />
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
        <ListOfConstants>
          <Constant key="Parameter_5715" name="Kdp" value="0.1"/>
          <Constant key="Parameter_5718" name="V2B" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Reversible reation between BMAL1 in cytosol and nucleus" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000650" />
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
          <Constant key="Parameter_5700" name="k1" value="0.4"/>
          <Constant key="Parameter_5701" name="k2" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="Phosphorylation of BMAL1 in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000216" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5699" name="Kp" value="0.1"/>
          <Constant key="Parameter_5702" name="V3B" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="Dephosphorylation of BMAL1 in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C20612" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5362" name="Kdp" value="0.1"/>
          <Constant key="Parameter_5361" name="V4B" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="Reversible reaction between PER-CRY complex and PER-CRY-CLOCK-BMAL1 in nuclues" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000650" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5360" name="k1" value="0.5"/>
          <Constant key="Parameter_5359" name="k2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_8"/>
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="Degradation of the PER-CRY-CLOCK-BMAL1 complex" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5358" name="Kd" value="0.3"/>
          <Constant key="Parameter_5357" name="vdIN" value="0.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="Degradation of Cry mRNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5356" name="KmC" value="0.4"/>
          <Constant key="Parameter_5355" name="vmC" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="Degradation of CRY-P protein in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5354" name="Kd" value="0.3"/>
          <Constant key="Parameter_5353" name="vdCC" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="Non-specific degradation of Cry mRNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5352" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="Degradation of PER-CRY complex in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5351" name="Kd" value="0.3"/>
          <Constant key="Parameter_5350" name="vdPCC" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="Degradation of PER-CRY complex in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5349" name="Kd" value="0.3"/>
          <Constant key="Parameter_5348" name="vdPCN" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="Degradation of Per mRNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5347" name="KmP" value="0.31"/>
          <Constant key="Parameter_5655" name="vmP" value="1.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="Degradation of PER-P in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5656" name="Kd" value="0.3"/>
          <Constant key="Parameter_5654" name="vdPC" value="0.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="Non-specific degradation of Per mRNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5657" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="Degradation of Bmal1 mRNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5346" name="KmB" value="0.4"/>
          <Constant key="Parameter_5345" name="vmB" value="0.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="Non-specific degradation of Bmal1 mRNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5344" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="Degradation of BMAL1-P in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5343" name="Kd" value="0.3"/>
          <Constant key="Parameter_5342" name="vdBC" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="Degradation of BMAL1-P in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5341" name="Kd" value="0.3"/>
          <Constant key="Parameter_5340" name="vdBN" value="0.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="Non-specific degradation of PER protein in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5335" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="Non-specific degradation of CRY protein in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5339" name="k1" value="0.12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="Non-specific degradation of PER-P protein in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5338" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="Non-specific degradation of CRY-P protein in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5337" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="Non-specific degradation of PER-CRY protein complex in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5336" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="Non-specific degradation of PER-CRY protein complex in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5334" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="Non-specific degradation of PER-CRY-P protein complex in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5333" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="Non-specific degradation of PER-CRY-P protein complex in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5332" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="Non-specific degradation of BMAL1 protein in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5331" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="Non-specific degradation of BMAL1-P protein in cytosol" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5330" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="Non-specific degradation of BMAL1 protein in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5329" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="Non-specific degradation of BMAL1-P protein in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5328" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="Non-specific degradation of PER-CRY-BMAL1-CLOCK complex in nucleus" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C61559" />
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5327" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_15"/>
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
<dcterms:W3CDTF>2020-11-10T02:20:58Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[MP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[MC]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[MB]" value="5179041137020000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[PC]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[CC]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[PCP]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[CCP]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[PCC]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[PCN]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[PCNP]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[PCCP]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[BC]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[BCP]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[BN]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[BNP]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[IN]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[BTot]" value="1204428171400000" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[CTot]" value="1204428171400000" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[PTot]" value="3613284514200000" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MP]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vsP]" value="1.5" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vmP]" value="1.1000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdmp]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KAP]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KmP]" value="0.31" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MC]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vsC]" value="1.1000000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vmC]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdmc]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KAC]" value="0.59999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KmC]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[MB]" value="8.5999999999999996" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vsB]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vmB]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdmb]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KIB]" value="2.2000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KmB]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PC]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CC]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCP]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[CCP]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCC]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCN]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCCP]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[PCNP]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BC]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BCP]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BN]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[BNP]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[IN]" value="1" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k1]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k2]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k3]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k4]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k5]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k6]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k7]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k8]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdnc]" value="0.12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kstot]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[ksB]" value="0.12" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[ksC]" value="1.6000000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[ksP]" value="0.59999999999999998" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[m]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[n]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vstot]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Vphos]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1B]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1C]" value="0.59999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1P]" value="0.40000000000000002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1PC]" value="0.40000000000000002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2B]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2C]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2P]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2PC]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V3B]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V3PC]" value="0.40000000000000002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V4B]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V4PC]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdBC]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdBN]" value="0.59999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdCC]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdIN]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdPC]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdPCC]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdPCN]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reaction  between PER-CRY complex in cytosol and nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reaction  between PER-CRY complex in cytosol and nucleus],ParameterGroup=Parameters,Parameter=k1" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reaction  between PER-CRY complex in cytosol and nucleus],ParameterGroup=Parameters,Parameter=k2" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of PER-CRY complex in nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of PER-CRY complex in nucleus],ParameterGroup=Parameters,Parameter=Kp" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of PER-CRY complex in nucleus],ParameterGroup=Parameters,Parameter=V3PC" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V3PC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of PER-CRY complex in nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of PER-CRY complex in nucleus],ParameterGroup=Parameters,Parameter=Kdp" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of PER-CRY complex in nucleus],ParameterGroup=Parameters,Parameter=V4PC" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V4PC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of PER-CRY complex in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of PER-CRY complex in cytosol],ParameterGroup=Parameters,Parameter=Kp" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of PER-CRY complex in cytosol],ParameterGroup=Parameters,Parameter=V1PC" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1PC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of PER-CRY complex in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of PER-CRY complex in cytosol],ParameterGroup=Parameters,Parameter=Kdp" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of PER-CRY complex in cytosol],ParameterGroup=Parameters,Parameter=V2PC" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2PC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reaction between PER\, CRY and PER-CRY complex in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reaction between PER\, CRY and PER-CRY complex in cytosol],ParameterGroup=Parameters,Parameter=k1" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reaction between PER\, CRY and PER-CRY complex in cytosol],ParameterGroup=Parameters,Parameter=k2" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of CRY in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of CRY in cytosol],ParameterGroup=Parameters,Parameter=Kp" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of CRY in cytosol],ParameterGroup=Parameters,Parameter=V1C" value="0.59999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1C],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of CRY in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of CRY in cytosol],ParameterGroup=Parameters,Parameter=Kdp" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of CRY in cytosol],ParameterGroup=Parameters,Parameter=V2C" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2C],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Translation of Cry mRNA to CRY protein in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Translation of Cry mRNA to CRY protein in cytosol],ParameterGroup=Parameters,Parameter=ksC" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[ksC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Transcription of Cry gene to Cry mRNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Transcription of Cry gene to Cry mRNA],ParameterGroup=Parameters,Parameter=KAC" value="0.59999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KAC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Transcription of Cry gene to Cry mRNA],ParameterGroup=Parameters,Parameter=n" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Transcription of Cry gene to Cry mRNA],ParameterGroup=Parameters,Parameter=vsC" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vsC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Transcription of Per gene to Per mRNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Transcription of Per gene to Per mRNA],ParameterGroup=Parameters,Parameter=KAP" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KAP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Transcription of Per gene to Per mRNA],ParameterGroup=Parameters,Parameter=n" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Transcription of Per gene to Per mRNA],ParameterGroup=Parameters,Parameter=vsP" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vsP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Translation of Per mRNA to PER protein]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Translation of Per mRNA to PER protein],ParameterGroup=Parameters,Parameter=ksP" value="0.59999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[ksP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of PER in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of PER in cytosol],ParameterGroup=Parameters,Parameter=Kp" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of PER in cytosol],ParameterGroup=Parameters,Parameter=V1P" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of PER in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of PER in cytosol],ParameterGroup=Parameters,Parameter=Kdp" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of PER in cytosol],ParameterGroup=Parameters,Parameter=V2P" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2P],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Transcription of Bmal1 gene to Bmal1 mRNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Transcription of Bmal1 gene to Bmal1 mRNA],ParameterGroup=Parameters,Parameter=KIB" value="2.2000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KIB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Transcription of Bmal1 gene to Bmal1 mRNA],ParameterGroup=Parameters,Parameter=m" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[m],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Transcription of Bmal1 gene to Bmal1 mRNA],ParameterGroup=Parameters,Parameter=vsB" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vsB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Translation of Bmal1 mRNA to BMAL1 protein]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Translation of Bmal1 mRNA to BMAL1 protein],ParameterGroup=Parameters,Parameter=ksB" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[ksB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of BMAL1 in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of BMAL1 in cytosol],ParameterGroup=Parameters,Parameter=Kp" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of BMAL1 in cytosol],ParameterGroup=Parameters,Parameter=V1B" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V1B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of BMAL1 in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of BMAL1 in cytosol],ParameterGroup=Parameters,Parameter=Kdp" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of BMAL1 in cytosol],ParameterGroup=Parameters,Parameter=V2B" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V2B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reation between BMAL1 in cytosol and nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reation between BMAL1 in cytosol and nucleus],ParameterGroup=Parameters,Parameter=k1" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reation between BMAL1 in cytosol and nucleus],ParameterGroup=Parameters,Parameter=k2" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of BMAL1 in nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of BMAL1 in nucleus],ParameterGroup=Parameters,Parameter=Kp" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Phosphorylation of BMAL1 in nucleus],ParameterGroup=Parameters,Parameter=V3B" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V3B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of BMAL1 in nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of BMAL1 in nucleus],ParameterGroup=Parameters,Parameter=Kdp" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kdp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Dephosphorylation of BMAL1 in nucleus],ParameterGroup=Parameters,Parameter=V4B" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[V4B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reaction between PER-CRY complex and PER-CRY-CLOCK-BMAL1 in nuclues]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reaction between PER-CRY complex and PER-CRY-CLOCK-BMAL1 in nuclues],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Reversible reaction between PER-CRY complex and PER-CRY-CLOCK-BMAL1 in nuclues],ParameterGroup=Parameters,Parameter=k2" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[k8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of the PER-CRY-CLOCK-BMAL1 complex]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of the PER-CRY-CLOCK-BMAL1 complex],ParameterGroup=Parameters,Parameter=Kd" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of the PER-CRY-CLOCK-BMAL1 complex],ParameterGroup=Parameters,Parameter=vdIN" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdIN],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of Cry mRNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of Cry mRNA],ParameterGroup=Parameters,Parameter=KmC" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KmC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of Cry mRNA],ParameterGroup=Parameters,Parameter=vmC" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vmC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of CRY-P protein in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of CRY-P protein in cytosol],ParameterGroup=Parameters,Parameter=Kd" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of CRY-P protein in cytosol],ParameterGroup=Parameters,Parameter=vdCC" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdCC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of Cry mRNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of Cry mRNA],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdmc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of PER-CRY complex in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of PER-CRY complex in cytosol],ParameterGroup=Parameters,Parameter=Kd" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of PER-CRY complex in cytosol],ParameterGroup=Parameters,Parameter=vdPCC" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdPCC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of PER-CRY complex in nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of PER-CRY complex in nucleus],ParameterGroup=Parameters,Parameter=Kd" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of PER-CRY complex in nucleus],ParameterGroup=Parameters,Parameter=vdPCN" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdPCN],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of Per mRNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of Per mRNA],ParameterGroup=Parameters,Parameter=KmP" value="0.31" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KmP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of Per mRNA],ParameterGroup=Parameters,Parameter=vmP" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vmP],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of PER-P in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of PER-P in cytosol],ParameterGroup=Parameters,Parameter=Kd" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of PER-P in cytosol],ParameterGroup=Parameters,Parameter=vdPC" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdPC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of Per mRNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of Per mRNA],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdmp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of Bmal1 mRNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of Bmal1 mRNA],ParameterGroup=Parameters,Parameter=KmB" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[KmB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of Bmal1 mRNA],ParameterGroup=Parameters,Parameter=vmB" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vmB],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of Bmal1 mRNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of Bmal1 mRNA],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdmb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of BMAL1-P in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of BMAL1-P in cytosol],ParameterGroup=Parameters,Parameter=Kd" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of BMAL1-P in cytosol],ParameterGroup=Parameters,Parameter=vdBC" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdBC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of BMAL1-P in nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of BMAL1-P in nucleus],ParameterGroup=Parameters,Parameter=Kd" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[Kd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Degradation of BMAL1-P in nucleus],ParameterGroup=Parameters,Parameter=vdBN" value="0.59999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[vdBN],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER protein in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER protein in cytosol],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of CRY protein in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of CRY protein in cytosol],ParameterGroup=Parameters,Parameter=k1" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdnc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-P protein in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-P protein in cytosol],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of CRY-P protein in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of CRY-P protein in cytosol],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY protein complex in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY protein complex in cytosol],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY protein complex in nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY protein complex in nucleus],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY-P protein complex in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY-P protein complex in cytosol],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY-P protein complex in nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY-P protein complex in nucleus],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of BMAL1 protein in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of BMAL1 protein in cytosol],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of BMAL1-P protein in cytosol]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of BMAL1-P protein in cytosol],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of BMAL1 protein in nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of BMAL1 protein in nucleus],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of BMAL1-P protein in nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of BMAL1-P protein in nucleus],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY-BMAL1-CLOCK complex in nucleus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Reactions[Non-specific degradation of PER-CRY-BMAL1-CLOCK complex in nucleus],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Values[kdn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
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
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 8.5999999999999996 1 1 1 1 1 1 1 1 1 1 1 1 1 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 602214085700000 0 0 5179041137020000 602214085700000 1204428171400000 1204428171400000 3613284514200000 1.5 1.1000000000000001 1 0.12 1.6000000000000001 0.59999999999999998 0.40000000000000002 0.40000000000000002 0.40000000000000002 1 1.1000000000000001 0.01 0.69999999999999996 0.31 1 0.01 0.59999999999999998 0.40000000000000002 0.80000000000000004 0.01 2.2000000000000002 0.40000000000000002 0.40000000000000002 0.20000000000000001 0.40000000000000002 0.20000000000000001 0.40000000000000002 0.20000000000000001 0.5 0.10000000000000001 0.12 0.01 1 2 4 1 0.29999999999999999 0.10000000000000001 0.10000000000000001 0.40000000000000002 0.5 0.59999999999999998 0.10000000000000001 0.10000000000000001 0.29999999999999999 0.10000000000000001 0.5 0.20000000000000001 0.10000000000000001 0.5 0.59999999999999998 0.69999999999999996 0.80000000000000004 0.69999999999999996 0.69999999999999996 0.69999999999999996 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="92"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="92"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="18"/>
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
    <PlotSpecification name="plot" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[MC]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[MC],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MP]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[MP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="plot_1" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[MB]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Leloup2004 - Mammalian Circadian Rhythm models for 23.8 and 24.2 hours timeperiod,Vector=Compartments[Mammalian Cell],Vector=Metabolites[MB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Leloup2004_CircadianRhythmsSet1.xml">
    <SBMLMap SBMLid="BC" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="BCP" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="BCP_0" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="BC_0" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="BN" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="BNP" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="BNP_0" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="BN_0" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="BTot" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="CC" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="CCP" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="CCP_0" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="CC_0" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="CTot" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="Compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="Degradation_of_BMAL1_P_in_cytosol" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="Degradation_of_BMAL1_P_in_nucleus" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="Degradation_of_Bmal1_mRNA" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="Degradation_of_CRY_P_protein_in_cytosol" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="Degradation_of_Cry_mRNA" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="Degradation_of_PER_CRY_complex_in_cytosol" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="Degradation_of_PER_CRY_complex_in_nucleus" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="Degradation_of_PER_P_in_cytosol" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="Degradation_of_Per_mRNA" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="Degradation_of_the_PER_CRY_CLOCK_BMAL1_complex" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="Dephosphorylation_of_BMAL1_in_cytosol" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="Dephosphorylation_of_BMAL1_in_nucleus" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="Dephosphorylation_of_CRY_in_cytosol" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="Dephosphorylation_of_PER_CRY_complex_in_cytosol" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="Dephosphorylation_of_PER_CRY_complex_in_nucleus" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Dephosphorylation_of_PER_in_cytosol" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="IN" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="IN_0" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="KAC" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="KAP" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="KIB" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="Kd" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="Kdp" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="KmB" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="KmC" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="KmP" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="Kp" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="MB" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="MB_0" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="MC" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="MC_0" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="MP" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="MP_0" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_BMAL1_P_protein_in_cytosol" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_BMAL1_P_protein_in_nucleus" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_BMAL1_protein_in_cytosol" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_BMAL1_protein_in_nucleus" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_Bmal1_mRNA" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_CRY_P_protein_in_cytosol" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_CRY_protein_in_cytosol" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_Cry_mRNA" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_PER_CRY_BMAL1_CLOCK_complex_in_nucleus" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_PER_CRY_P_protein_complex_in_cytosol" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_PER_CRY_P_protein_complex_in_nucleus" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_PER_CRY_protein_complex_in_cytosol" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_PER_CRY_protein_complex_in_nucleus" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_PER_P_protein_in_cytosol" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_PER_protein_in_cytosol" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="Non_specific_degradation_of_Per_mRNA" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="PC" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="PCC" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="PCCP" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="PCCP_0" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="PCC_0" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="PCN" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="PCNP" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="PCNP_0" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="PCN_0" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="PCP" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="PCP_0" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="PC_0" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="PTot" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="Phosphorylation_of_BMAL1_in_cytosol" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="Phosphorylation_of_BMAL1_in_nucleus" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="Phosphorylation_of_CRY_in_cytosol" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="Phosphorylation_of_PER_CRY_complex_in_cytosol" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="Phosphorylation_of_PER_CRY_complex_in_nucleus" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Phosphorylation_of_PER_in_cytosol" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="Reversible_reaction__between_PER_CRY_complex_in_cytosol_and_nucleus" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Reversible_reaction_between_PER_CRY_complex_and_PER_CRY_CLOCK_BMAL1_in_nuclues" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="Reversible_reaction_between_PER__CRY_and_PER_CRY_complex_in_cytosol" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Reversible_reation_between_BMAL1_in_cytosol_and_nucleus" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="Transcription_of_Bmal1_gene_to_Bmal1_mRNA" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="Transcription_of_Cry_gene_to_Cry_mRNA" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="Transcription_of_Per_gene_to_Per_mRNA" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="Translation_of_Bmal1_mRNA_to_BMAL1_protein" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="Translation_of_Cry_mRNA_to_CRY_protein_in_cytosol" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="Translation_of_Per_mRNA_to_PER_protein" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="V1B" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="V1C" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="V1P" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="V1PC" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="V2B" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="V2C" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="V2P" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="V2PC" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="V3B" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="V3PC" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="V4B" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="V4PC" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="Vphos" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="k5" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="k6" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="k7" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="k8" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="kdmb" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="kdmc" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="kdmp" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="kdn" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="kdnc" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="ksB" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="ksC" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="ksP" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="kstot" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="m" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="n" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="vdBC" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="vdBN" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="vdCC" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="vdIN" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="vdPC" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="vdPCC" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="vdPCN" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="vmB" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="vmC" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="vmP" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="vsB" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="vsC" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="vsP" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="vstot" COPASIkey="ModelValue_47"/>
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
<dcterms:W3CDTF>2020-11-10T02:20:54Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-11-10T02:20:54Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-11-10T02:20:54Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-11-10T02:20:54Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-11-10T02:20:54Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-11-10T02:20:54Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-11-10T02:20:54Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2020-11-10T02:20:54Z</dcterms:W3CDTF>
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
