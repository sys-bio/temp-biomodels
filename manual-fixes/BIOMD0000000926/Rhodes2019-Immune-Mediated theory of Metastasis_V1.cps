<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.27 (Build 217) (http://www.copasi.org) at 2020-03-28T07:09:45Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="27" versionDevel="217" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="Function for Tumor Cell(u1) growth" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-27T16:27:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        gamma_1*g_1*u_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="gamma_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="g_1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="u_1" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for Tumor Cell(u2) growth" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-27T16:59:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        gamma_2*g_2*u_2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="gamma_2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="g_2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="u_2" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for Tumor Cell(u1) death" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T10:19:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        sigma_1*u_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_268" name="sigma_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="u_1" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for Tumor Cell(u2) death" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T10:20:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        sigma_2*u_2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="sigma_2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="u_2" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for Necrotic cell(v1) rise" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T10:35:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        theta_1*sigma_1*u_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="theta_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="sigma_1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="u_1" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for Necrotic cell(v2) rise" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T10:35:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        theta_2*sigma_2*u_2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="theta_2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="sigma_2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="u_2" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for Tumor Cell(u1) Shedding" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T10:41:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s_1*u_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_278" name="s_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="u_1" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for Tumor Cell(u2) Metastatic" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T10:41:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s_1*u_1*est
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_279" name="s_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="u_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_280" name="est" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for Necrotic cell(v1) lysis" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:20:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        myu_1*v_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_283" name="myu_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="v_1" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for Necrotic cell(v2) lysis" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:21:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        myu_2*v_2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_284" name="myu_2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="v_2" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for CT immune Cell(x1) natural influx" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:26:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        alpha_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_286" name="alpha_1" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for CT immune Cell(x2) natural influx" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:26:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        alpha_2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_285" name="alpha_2" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for CT immune Cell(x1) response" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:35:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        lambda_1*x_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="lambda_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="x_1" order="1" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for CT immune Cell(x2) response" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:36:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        lambda_2*x_2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_290" name="lambda_2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="x_2" order="1" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for CT immune Cell(x1) death" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:39:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        omega_1*x_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_292" name="omega_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="x_1" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for CT immune Cell(x1) killed" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:39:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        rho_1*u_1*x_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_294" name="rho_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="u_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_295" name="x_1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for CT immune Cell(x2) death" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:40:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        omega_2*x_2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_298" name="omega_2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="x_2" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for CT immune Cell(x2) killed" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:40:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        rho_2*u_2*x_2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="rho_2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="u_2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_300" name="x_2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for CT immune Cell(x1) transition" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:51:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ed_1*x_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_303" name="ed_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="x_1" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for CT immune Cell(x2) transition" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:52:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ed_2*x_2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_304" name="ed_2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="x_2" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for TE immune Cell(y1) natural death" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T13:45:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        tau_1*y_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_306" name="tau_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="y_1" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for TE immune Cell(y2) natural death" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T13:45:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        tau_2*y_2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_308" name="tau_2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="y_2" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for TE immune Cell(y1) loss in circulatory" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T13:42:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        tilde_s_1*y_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_310" name="tilde_s_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="y_1" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for TE immune Cell(y2) Supplement" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T13:43:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        p*tilde_s_1*y_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_312" name="p" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="tilde_s_1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="y_1" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for TE immune Cell(y1) recruitment" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T14:03:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        f_1*y_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_316" name="f_1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="y_1" order="1" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for TE immune Cell(y2) recruitment" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T14:03:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        f_2*y_2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_317" name="f_2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="y_2" order="1" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Rhodes2019 - Immune-Mediated theory of MetastasisNew Model" simulationType="time" timeUnit="d" volumeUnit="1" areaUnit="1" lengthUnit="1" quantityUnit="1" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:efo:0000311"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0006955"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17997"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C19151"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1101/565531"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-27T15:51:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>McCann</vCard:Family>
            <vCard:Given>Conor</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>University of Nottingham</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>muffet0307@gmail.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Ng</vCard:Family>
            <vCard:Given>Szeyi</vCard:Given>
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
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2020-03-27T14:07:31</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is rdf:resource="urn:miriam:biomodels.db:MODEL1910020003"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      Accumulating experimental and clinical evidence suggest that the immune response to cancer is not exclusively anti-tumor. Indeed, the pro-tumor roles of the immune system  -  as suppliers of growth and pro-angiogenic factors or defenses against cytotoxic immune attacks, for example  -  have been long appreciated, but relatively few theoretical works have considered their effects. Inspired by the recently proposed "immune-mediated" theory of metastasis, we develop a mathematical model for tumor-immune interactions at two anatomically distant sites, which includes both anti- and pro-tumor immune effects, and the experimentally observed tumor-induced phenotypic plasticity of immune cells (tumor "education" of the immune cells). Upon confrontation of our model to experimental data, we use it to evaluate the implications of the immune-mediated theory of metastasis. We find that tumor education of immune cells may explain the relatively poor performance of immunotherapies, and that many metastatic phenomena, including metastatic blow-up, dormancy, and metastasis to sites of injury, can be explained by the immune-mediated theory of metastasis. Our results suggest that further work is warranted to fully elucidate the pro-tumor effects of the immune system in metastatic cancer.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-26T17:36:11Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Tumor Cell(u_1)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:bto:BTO:0006256" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:efo:0000311" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T14:37:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="TE immune Cell(y_1)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:efo:0000311" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T14:39:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="CT immune Cell(x_1)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:efo:0000311" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T14:31:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[alpha_1],Reference=InitialValue>/&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[omega_1],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Tumor Cell(u_2)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:bto:BTO:0006256" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C4968" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T14:38:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="CT immune Cell(x_2)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C4968" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T14:32:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[alpha_2],Reference=InitialValue>/&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[omega_2],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="TE immune Cell(y_2)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C4968" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T14:39:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Necrotic Cell(v_1)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:efo:0000311" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C36123" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T14:38:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Necrotic Cell(v_2)" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C36123" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C4968" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T14:38:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="gamma_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-27T16:09:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (tanh((&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[TE immune Cell(y_1)],Reference=Concentration>-(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[low_1],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[up_1],Reference=Value>)/2)*6/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[up_1],Reference=Value>-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[low_1],Reference=Value>))-tanh((&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[low_1],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[up_1],Reference=Value>)*-3/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[up_1],Reference=Value>-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[low_1],Reference=Value>)))*&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[max_1],Reference=Value>/2+1
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="g_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-27T16:28:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[r_1],Reference=Value>*(1-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Tumor Cell(u_1)],Reference=Concentration>/&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[K_1],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="r_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-27T16:31:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="K_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:44:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="r_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:50:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="K_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:47:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="g_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-27T16:30:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[r_2],Reference=Value>*(1-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Tumor Cell(u_2)],Reference=Concentration>/&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[K_2],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="minC_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:49:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="maxC_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:49:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="upC_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:53:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="lowC_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:48:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="minC_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:49:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="maxC_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:49:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="upC_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:53:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="lowC_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:48:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="max_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:48:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="max_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:49:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="low_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:47:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="low_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:47:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="up_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:52:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="up_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:52:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="gamma_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-27T16:53:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (tanh((&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[TE immune Cell(y_2)],Reference=Concentration>-(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[low_2],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[up_2],Reference=Value>)/2)*6/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[up_2],Reference=Value>-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[low_2],Reference=Value>))-tanh(-3*(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[up_2],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[low_2],Reference=Value>)/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[up_2],Reference=Value>-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[low_2],Reference=Value>)))*&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[max_2],Reference=Value>/2+1
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="sigma_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T09:55:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          ((tanh(6*(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[CT immune Cell(x_1)],Reference=Concentration>-(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upC_1],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowC_1],Reference=Value>)/2)/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upC_1],Reference=Value>-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowC_1],Reference=Value>))-tanh(-3*(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upC_1],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowC_1],Reference=Value>)/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upC_1],Reference=Value>-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowC_1],Reference=Value>)))*&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[maxC_1],Reference=Value>/2+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[minC_1],Reference=Value>)*(1-tanh(6*(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[TE immune Cell(y_1)],Reference=Concentration>-(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upD_1],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowD_1],Reference=Value>)/2)/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upD_1],Reference=Value>-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowD_1],Reference=Value>)))/(1-tanh(-3*(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upD_1],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowD_1],Reference=Value>)/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upD_1],Reference=Value>-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowD_1],Reference=Value>)))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="sigma_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T10:13:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          ((tanh(6*(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[CT immune Cell(x_2)],Reference=Concentration>-(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upC_2],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowC_2],Reference=Value>)/2)/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upC_2],Reference=Value>-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowC_2],Reference=Value>))-tanh(-3*(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upC_2],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowC_2],Reference=Value>)/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upC_2],Reference=Value>-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowC_2],Reference=Value>)))*&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[maxC_2],Reference=Value>/2+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[minC_2],Reference=Value>)*(1-tanh(6*(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[TE immune Cell(y_2)],Reference=Concentration>-(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upD_2],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowD_2],Reference=Value>)/2)/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upD_2],Reference=Value>-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowD_2],Reference=Value>)))/(1-tanh(-3*(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upD_2],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowD_2],Reference=Value>)/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upD_2],Reference=Value>-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowD_2],Reference=Value>)))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="upD_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:53:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="upD_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:53:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="lowD_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:48:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="lowD_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:48:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="theta_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:51:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="theta_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T10:32:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="s_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:50:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="v(v2;minv,maxv,lowv,upv)" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T10:56:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (tanh(6*(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Necrotic Cell(v_2)],Reference=Concentration>-(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[up_v],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[low_v],Reference=Value>)/2)/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[up_v],Reference=Value>-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[low_v],Reference=Value>))-tanh(-3*(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[up_v],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[low_v],Reference=Value>)/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[up_v],Reference=Value>-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[low_v],Reference=Value>)))*&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[max_v],Reference=Value>/2+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[min_v],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="e(x2,0,maxct,lowesstct,upestct)" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:06:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[max_CT],Reference=Value>*(1-tanh(6*(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[CT immune Cell(x_2)],Reference=Concentration>-(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upEst_CT],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowEst_CT],Reference=Value>)/2)/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upEst_CT],Reference=Value>-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowEst_CT],Reference=Value>)))/(1-tanh(-3*(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upEst_CT],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowEst_CT],Reference=Value>)/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upEst_CT],Reference=Value>-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowEst_CT],Reference=Value>)))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="v(y2,minestte,maxestte,lowestte,upestte)" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:01:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (tanh(6*(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[TE immune Cell(y_2)],Reference=Concentration>-(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upEst_TE],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowEst_TE],Reference=Value>)/2)/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upEst_TE],Reference=Value>-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowEst_TE],Reference=Value>))-tanh(-3*(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upEst_TE],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowEst_TE],Reference=Value>)/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upEst_TE],Reference=Value>-&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowEst_TE],Reference=Value>)))*&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[maxEst_TE],Reference=Value>/2+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[minEst_TE],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="min_v" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:49:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="max_v" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:49:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="low_v" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:47:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="up_v" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:52:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="max_CT" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:49:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="lowEst_CT" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:48:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="upEst_CT" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:53:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="minEst_TE" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:49:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="maxEst_TE" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:49:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="lowEst_TE" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:48:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="upEst_TE" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:53:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="est" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:12:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[e(x2\,0\,maxct\,lowesstct\,upestct)],Reference=Value>*&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[v(v2;minv\,maxv\,lowv\,upv)],Reference=Value>*&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[v(y2\,minestte\,maxestte\,lowestte\,upestte)],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="myu_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:49:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="myu_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:50:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="alpha_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:41:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="alpha_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:41:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="a_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:38:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="a_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:40:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="a_21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:40:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="a_22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:40:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="b_11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:41:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="b_12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:41:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="b_21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:41:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="b_22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:42:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="a_31" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:40:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="a_32" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:41:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="b_31" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:42:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="b_32" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:42:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="lambda_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:30:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[a_11],Reference=Value>*&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Tumor Cell(u_1)],Reference=Concentration>/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[b_11],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Tumor Cell(u_1)],Reference=Concentration>)+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[a_21],Reference=Value>*&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Necrotic Cell(v_1)],Reference=Concentration>/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[b_21],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Necrotic Cell(v_1)],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="lambda_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:32:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[a_12],Reference=Value>*&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Tumor Cell(u_2)],Reference=Concentration>/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[b_12],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Tumor Cell(u_2)],Reference=Concentration>)+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[a_22],Reference=Value>*&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Necrotic Cell(v_2)],Reference=Concentration>/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[b_22],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Necrotic Cell(v_2)],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="omega_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:50:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="omega_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:50:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="rho_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:50:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="rho_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:50:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="chi_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:42:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="chi_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:42:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="ed_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:49:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[chi_1],Reference=Value>*&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Tumor Cell(u_1)],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="ed_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:49:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[chi_2],Reference=Value>*&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Tumor Cell(u_2)],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="tau_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:51:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="tau_2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:51:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="tilde_s_1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:52:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/d
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T15:50:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="f_1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T14:00:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[a_31],Reference=Value>*&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Tumor Cell(u_1)],Reference=Concentration>/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[b_31],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Tumor Cell(u_1)],Reference=Concentration>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="f_2" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T14:01:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[a_32],Reference=Value>*&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Tumor Cell(u_2)],Reference=Concentration>/(&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[b_32],Reference=Value>+&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Tumor Cell(u_2)],Reference=Concentration>)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Tumor Cell(u1) growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-27T16:07:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5472" name="gamma_1" value="1"/>
          <Constant key="Parameter_5471" name="g_1" value="0.38"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Tumor Cell(u2) growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-27T16:58:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5470" name="gamma_2" value="1"/>
          <Constant key="Parameter_5469" name="g_2" value="0.38"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Tumor Cell(u1) death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T10:19:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5468" name="sigma_1" value="0.299993"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Tumor Cell(u2) death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T10:19:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5467" name="sigma_2" value="0.299993"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Necrotic Cell(v1) rise" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T10:35:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5466" name="theta_1" value="65.67"/>
          <Constant key="Parameter_5465" name="sigma_1" value="0.299993"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Necrotic Cell(v2) rise" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T10:36:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5464" name="theta_2" value="65.67"/>
          <Constant key="Parameter_5463" name="sigma_2" value="0.299993"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Tumor Cell(u1) Shedding" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T10:39:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5976" name="s_1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Tumor Cell(u2) Metastatic" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C19151" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T10:42:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_5977" name="s_1" value="0.01"/>
          <Constant key="Parameter_5975" name="est" value="5.57431e-11"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Necrotic Cell(v1) lysis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI_0302894" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:21:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5978" name="myu_1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="Necrotic Cell(v2) lysis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:obi:OBI_0302894" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:19:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5956" name="myu_2" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="CT immune Cell(x1) natural influx" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:27:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5957" name="alpha_1" value="1e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="CT immune Cell(x2) natural influx" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:27:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5955" name="alpha_2" value="1e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="CT immune Cell(x1) response" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:35:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5958" name="lambda_1" value="8.1366e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="CT immune Cell(x2) response" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:36:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5462" name="lambda_2" value="3.25515e-18"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="CT immune Cell(x1) death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0008219" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:41:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5461" name="omega_1" value="0.59"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="CT immune Cell(x2) death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0008219" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:40:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5460" name="omega_2" value="0.59"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="CT immune Cell(x1) killed" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0001906" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:41:01Z</dcterms:W3CDTF>
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
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5459" name="rho_1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="CT immune Cell(x2) killed" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0001906" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:40:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5458" name="rho_2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="CT immune Cell(x1) transition" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:51:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5457" name="ed_1" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="CT immune Cell(x2) transition" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T11:52:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5456" name="ed_2" value="5e-17"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="TE immune Cell(y1) natural death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T13:40:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5455" name="tau_1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="TE immune Cell(y2) natural death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T13:46:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5454" name="tau_2" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="TE immune Cell(y1) loss in circulatory" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T13:47:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5453" name="tilde_s_1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="TE immune Cell(y2) supplement" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T13:48:20Z</dcterms:W3CDTF>
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
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5452" name="p" value="0.0001"/>
          <Constant key="Parameter_5451" name="tilde_s_1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="TE immune Cell(y1) recruitment" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T14:03:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5450" name="f_1" value="2.49998e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="TE immune Cell(y2) recruitment" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C12543" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-08-28T14:03:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5449" name="f_2" value="2.5e-19"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_5"/>
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
<dcterms:W3CDTF>2020-03-28T07:08:18Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Tumor Cell(u_1)]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[TE immune Cell(y_1)]" value="0.001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[CT immune Cell(x_1)]" value="1694915.2542372881" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[alpha_1],Reference=InitialValue>/&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[omega_1],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Tumor Cell(u_2)]" value="9.9999999999999998e-13" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[CT immune Cell(x_2)]" value="1694915.2542372881" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[alpha_2],Reference=InitialValue>/&lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[omega_2],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[TE immune Cell(y_2)]" value="1e-10" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Necrotic Cell(v_1)]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Necrotic Cell(v_2)]" value="9.9999999999999998e-17" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[gamma_1]" value="1.0000000000047942" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[g_1]" value="0.37999999928566058" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[r_1]" value="0.38" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[K_1]" value="531960000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[r_2]" value="0.38" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[K_2]" value="531960000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[g_2]" value="0.38" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[minC_1]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[maxC_1]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upC_1]" value="1101695" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowC_1]" value="254237" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[minC_2]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[maxC_2]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upC_2]" value="1101695" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowC_2]" value="254237" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[max_1]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[max_2]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[low_1]" value="25424" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[low_2]" value="25424" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[up_1]" value="110169" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[up_2]" value="110169" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[gamma_2]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[sigma_1]" value="0.29999317180452612" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[sigma_2]" value="0.29999317180740281" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upD_1]" value="110169" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upD_2]" value="110169" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowD_1]" value="25424" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowD_2]" value="25424" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[theta_1]" value="65.670000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[theta_2]" value="65.670000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[s_1]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[v(v2;minv\,maxv\,lowv\,upv)]" value="0.001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[e(x2\,0\,maxct\,lowesstct\,upestct)]" value="5.574305393154279e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[v(y2\,minestte\,maxestte\,lowestte\,upestte)]" value="0.001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[min_v]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[max_v]" value="0.999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[low_v]" value="26600000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[up_v]" value="293000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[max_CT]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowEst_CT]" value="254237" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upEst_CT]" value="1101695" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[minEst_TE]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[maxEst_TE]" value="0.002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lowEst_TE]" value="25424" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[upEst_TE]" value="110169" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[est]" value="5.5743053931542796e-11" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[myu_1]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[myu_2]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[alpha_1]" value="1000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[alpha_2]" value="1000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[a_11]" value="0.52400000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[a_12]" value="0.52400000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[a_21]" value="0.78600000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[a_22]" value="0.78600000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[b_11]" value="161000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[b_12]" value="161000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[b_21]" value="161000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[b_22]" value="161000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[a_31]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[a_32]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[b_31]" value="160000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[b_32]" value="160000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lambda_1]" value="8.1365954248731382e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lambda_2]" value="3.2551465838509316e-18" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[omega_1]" value="0.58999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[omega_2]" value="0.58999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[rho_1]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[rho_2]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[chi_1]" value="5.0000000000000002e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[chi_2]" value="5.0000000000000002e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[ed_1]" value="5.0000000000000002e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[ed_2]" value="4.9999999999999999e-17" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[tau_1]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[tau_2]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[tilde_s_1]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[p]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[f_1]" value="2.4999843750976559e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[f_2]" value="2.5000000000000002e-19" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Tumor Cell(u1) growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Tumor Cell(u1) growth],ParameterGroup=Parameters,Parameter=gamma_1" value="1.0000000000047942" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[gamma_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Tumor Cell(u1) growth],ParameterGroup=Parameters,Parameter=g_1" value="0.37999999928566058" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[g_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Tumor Cell(u2) growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Tumor Cell(u2) growth],ParameterGroup=Parameters,Parameter=gamma_2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[gamma_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Tumor Cell(u2) growth],ParameterGroup=Parameters,Parameter=g_2" value="0.38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[g_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Tumor Cell(u1) death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Tumor Cell(u1) death],ParameterGroup=Parameters,Parameter=sigma_1" value="0.29999317180452612" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[sigma_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Tumor Cell(u2) death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Tumor Cell(u2) death],ParameterGroup=Parameters,Parameter=sigma_2" value="0.29999317180740281" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[sigma_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Necrotic Cell(v1) rise]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Necrotic Cell(v1) rise],ParameterGroup=Parameters,Parameter=theta_1" value="65.670000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[theta_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Necrotic Cell(v1) rise],ParameterGroup=Parameters,Parameter=sigma_1" value="0.29999317180452612" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[sigma_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Necrotic Cell(v2) rise]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Necrotic Cell(v2) rise],ParameterGroup=Parameters,Parameter=theta_2" value="65.670000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[theta_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Necrotic Cell(v2) rise],ParameterGroup=Parameters,Parameter=sigma_2" value="0.29999317180740281" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[sigma_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Tumor Cell(u1) Shedding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Tumor Cell(u1) Shedding],ParameterGroup=Parameters,Parameter=s_1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[s_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Tumor Cell(u2) Metastatic]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Tumor Cell(u2) Metastatic],ParameterGroup=Parameters,Parameter=s_1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[s_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Tumor Cell(u2) Metastatic],ParameterGroup=Parameters,Parameter=est" value="5.5743053931542796e-11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[est],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Necrotic Cell(v1) lysis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Necrotic Cell(v1) lysis],ParameterGroup=Parameters,Parameter=myu_1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[myu_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Necrotic Cell(v2) lysis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[Necrotic Cell(v2) lysis],ParameterGroup=Parameters,Parameter=myu_2" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[myu_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x1) natural influx]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x1) natural influx],ParameterGroup=Parameters,Parameter=alpha_1" value="1000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[alpha_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x2) natural influx]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x2) natural influx],ParameterGroup=Parameters,Parameter=alpha_2" value="1000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[alpha_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x1) response]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x1) response],ParameterGroup=Parameters,Parameter=lambda_1" value="8.1365954248731382e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lambda_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x2) response]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x2) response],ParameterGroup=Parameters,Parameter=lambda_2" value="3.2551465838509316e-18" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[lambda_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x1) death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x1) death],ParameterGroup=Parameters,Parameter=omega_1" value="0.58999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[omega_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x2) death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x2) death],ParameterGroup=Parameters,Parameter=omega_2" value="0.58999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[omega_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x1) killed]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x1) killed],ParameterGroup=Parameters,Parameter=rho_1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[rho_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x2) killed]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x2) killed],ParameterGroup=Parameters,Parameter=rho_2" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[rho_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x1) transition]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x1) transition],ParameterGroup=Parameters,Parameter=ed_1" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[ed_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x2) transition]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[CT immune Cell(x2) transition],ParameterGroup=Parameters,Parameter=ed_2" value="4.9999999999999999e-17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[ed_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[TE immune Cell(y1) natural death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[TE immune Cell(y1) natural death],ParameterGroup=Parameters,Parameter=tau_1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[tau_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[TE immune Cell(y2) natural death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[TE immune Cell(y2) natural death],ParameterGroup=Parameters,Parameter=tau_2" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[tau_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[TE immune Cell(y1) loss in circulatory]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[TE immune Cell(y1) loss in circulatory],ParameterGroup=Parameters,Parameter=tilde_s_1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[tilde_s_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[TE immune Cell(y2) supplement]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[TE immune Cell(y2) supplement],ParameterGroup=Parameters,Parameter=p" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[TE immune Cell(y2) supplement],ParameterGroup=Parameters,Parameter=tilde_s_1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[tilde_s_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[TE immune Cell(y1) recruitment]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[TE immune Cell(y1) recruitment],ParameterGroup=Parameters,Parameter=f_1" value="2.4999843750976559e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[f_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[TE immune Cell(y2) recruitment]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Reactions[TE immune Cell(y2) recruitment],ParameterGroup=Parameters,Parameter=f_2" value="2.5000000000000002e-19" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Values[f_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
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
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 1694915.2542372881 1694915.2542372881 0.001 1e-10 1 9.9999999999999998e-13 1 9.9999999999999998e-17 1.0000000000047942 0.37999999928566058 0.38 1 0.29999317180452612 0.29999317180740281 0.001 5.574305393154279e-05 0.001 5.5743053931542796e-11 8.1365954248731382e-06 3.2551465838509316e-18 5.0000000000000002e-05 4.9999999999999999e-17 2.4999843750976559e-07 2.5000000000000002e-19 1 0.38 531960000 0.38 531960000 0.20000000000000001 0.10000000000000001 1101695 254237 0.20000000000000001 0.10000000000000001 1101695 254237 0.5 0.5 25424 25424 110169 110169 110169 110169 25424 25424 65.670000000000002 65.670000000000002 0.01 0.001 0.999 26600000 293000000 100 254237 1101695 0.001 0.002 25424 110169 0.01 0.050000000000000003 1000000 1000000 0.52400000000000002 0.52400000000000002 0.78600000000000003 0.78600000000000003 161000 161000 161000 161000 0.040000000000000001 0.040000000000000001 160000 160000 0.58999999999999997 0.58999999999999997 0.001 0.01 5.0000000000000002e-05 5.0000000000000002e-05 0.050000000000000003 0.050000000000000003 0.050000000000000003 0.0001 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="5750001"/>
        <Parameter name="StepSize" type="float" value="6.9565217390000006e-05"/>
        <Parameter name="Duration" type="float" value="400"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
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
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
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
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
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
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_27" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value=""/>
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
    <Report key="Report_18" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <Report key="Report_19" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Figure 3C-Primary" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[CT immune Cell(x_1)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[CT immune Cell(x_1)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Necrotic Cell(v_1)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Necrotic Cell(v_1)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TE immune Cell(y_1)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[TE immune Cell(y_1)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Tumor Cell(u_1)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Tumor Cell(u_1)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure 3C-Secondary" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[CT immune Cell(x_2)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[CT immune Cell(x_2)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Necrotic Cell(v_2)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Necrotic Cell(v_2)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TE immune Cell(y_2)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[TE immune Cell(y_2)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Tumor Cell(u_2)]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rhodes2019 - Immune-Mediated theory of MetastasisNew Model,Vector=Compartments[compartment],Vector=Metabolites[Tumor Cell(u_2)],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="BioModels Immune-Mediated theory of Metastasis.xml">
    <SBMLMap SBMLid="CT_immune_Cell_x1__death" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="CT_immune_Cell_x1__killed" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="CT_immune_Cell_x1__natural_influx" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="CT_immune_Cell_x1__response" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="CT_immune_Cell_x1__transition" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="CT_immune_Cell_x2__death" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="CT_immune_Cell_x2__killed" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="CT_immune_Cell_x2__natural_influx" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="CT_immune_Cell_x2__response" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="CT_immune_Cell_x2__transition" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="CT_immune_Cell_x_1" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="CT_immune_Cell_x_2" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="Function_for_CT_immune_Cell_x1__death" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Function_for_CT_immune_Cell_x1__killed" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_for_CT_immune_Cell_x1__natural_influx" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_for_CT_immune_Cell_x1__response" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Function_for_CT_immune_Cell_x1__transition" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="Function_for_CT_immune_Cell_x2__death" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Function_for_CT_immune_Cell_x2__killed" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_CT_immune_Cell_x2__natural_influx" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Function_for_CT_immune_Cell_x2__response" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_CT_immune_Cell_x2__transition" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Function_for_Necrotic_cell_v1__lysis" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Function_for_Necrotic_cell_v1__rise" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Function_for_Necrotic_cell_v2__lysis" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_for_Necrotic_cell_v2__rise" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_TE_immune_Cell_y1__loss_in_circulatory" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Function_for_TE_immune_Cell_y1__natural_death" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="Function_for_TE_immune_Cell_y1__recruitment" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Function_for_TE_immune_Cell_y2__Supplement" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Function_for_TE_immune_Cell_y2__natural_death" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="Function_for_TE_immune_Cell_y2__recruitment" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="Function_for_Tumor_Cell_u1__Shedding" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_Tumor_Cell_u1__death" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_Tumor_Cell_u1__growth" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_Tumor_Cell_u2__Metastatic" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_Tumor_Cell_u2__death" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_Tumor_Cell_u2__growth" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="K_1" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="K_2" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="Necrotic_Cell_v1__lysis" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="Necrotic_Cell_v1__rise" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="Necrotic_Cell_v2__lysis" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="Necrotic_Cell_v2__rise" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Necrotic_Cell_v_1" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="Necrotic_Cell_v_2" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="TE_immune_Cell_y1__loss_in_circulatory" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="TE_immune_Cell_y1__natural_death" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="TE_immune_Cell_y1__recruitment" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="TE_immune_Cell_y2__natural_death" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="TE_immune_Cell_y2__recruitment" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="TE_immune_Cell_y2__supplement" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="TE_immune_Cell_y_1" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="TE_immune_Cell_y_2" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Tumor_Cell_u1__Shedding" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="Tumor_Cell_u1__death" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Tumor_Cell_u1__growth" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Tumor_Cell_u2__Metastatic" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="Tumor_Cell_u2__death" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="Tumor_Cell_u2__growth" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Tumor_Cell_u_1" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Tumor_Cell_u_2" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="a_11" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="a_12" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="a_21" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="a_22" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="a_31" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="a_32" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="alpha_1" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="alpha_2" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="b_11" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="b_12" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="b_21" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="b_22" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="b_31" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="b_32" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="chi_1" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="chi_2" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="e_x2_0_maxct_lowesstct_upestct" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="ed_1" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="ed_2" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="est" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="f_1" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="f_2" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="g_1" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="g_2" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="gamma_1" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="gamma_2" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="lambda_1" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="lambda_2" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="lowC_1" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="lowC_2" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="lowD_1" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="lowD_2" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="lowEst_CT" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="lowEst_TE" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="low_1" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="low_2" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="low_v" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="maxC_1" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="maxC_2" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="maxEst_TE" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="max_1" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="max_2" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="max_CT" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="max_v" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="minC_1" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="minC_2" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="minEst_TE" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="min_v" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="myu_1" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="myu_2" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="omega_1" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="omega_2" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="p" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="r_1" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="r_2" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="rho_1" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="rho_2" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="s_1" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="sigma_1" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="sigma_2" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="tau_1" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="tau_2" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="theta_1" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="theta_2" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="tilde_s_1" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="upC_1" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="upC_2" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="upD_1" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="upD_2" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="upEst_CT" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="upEst_TE" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="up_1" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="up_2" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="up_v" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="v_v2_minv_maxv_lowv_upv" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="v_y2_minestte_maxestte_lowestte_upestte" COPASIkey="ModelValue_33"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2020-03-28T07:08:06Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
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
<dcterms:W3CDTF>2020-03-28T07:08:06Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1
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
<dcterms:W3CDTF>2020-03-28T07:08:06Z</dcterms:W3CDTF>
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
