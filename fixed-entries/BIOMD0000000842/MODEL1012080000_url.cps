<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.27 (Build 217) (http://www.copasi.org) at 2019-11-04T13:45:51Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="27" versionDevel="217" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="Function for R_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        k0*G/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_261" name="G" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_250" name="compartmentOne" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_265" name="k0" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for R_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        k1*G*HRP1/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_270" name="G" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_271" name="HRP1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_272" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_273" name="k1" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for R_3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        k2*G*HR/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_278" name="G" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_279" name="HR" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_280" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_281" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for R_4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_43">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*G_a*PIP2/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_286" name="G_a" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_287" name="PIP2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_288" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_289" name="k3" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for R_5" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_44">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k4*DAG*PKC/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_294" name="DAG" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_295" name="PKC" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_296" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_297" name="k4" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for R_6" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_45">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k5*ERK*PKC_a/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_302" name="ERK" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_303" name="PKC_a" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_304" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_305" name="k5" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for R_7" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_46">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k6*G_a/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_262" name="G_a" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_310" name="compartmentOne" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_311" name="k6" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for R_8" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_47">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k7*DAG/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_315" name="DAG" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_316" name="compartmentOne" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_317" name="k7" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for R_9" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_48">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k8*PKC_a/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_321" name="PKC_a" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_322" name="compartmentOne" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_323" name="k8" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for R_10" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        k9*GpERK/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_327" name="GpERK" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_328" name="compartmentOne" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_329" name="k9" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for R_11" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        k10*GRK23*HR/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_334" name="GRK23" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="HR" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_336" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_337" name="k10" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for R_12" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_51">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k11*barr1*HRP1/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_342" name="HRP1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_343" name="barr1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_344" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_345" name="k11" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for R_13" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_52">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k13*Hbarr1RP1/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_263" name="Hbarr1RP1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_350" name="compartmentOne" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_351" name="k13" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for R_14" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_53">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k12*barr2*HRP1/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_356" name="HRP1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_357" name="barr2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_358" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_359" name="k12" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for R_15" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_54">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k14*Hbarr2RP1/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="Hbarr2RP1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_364" name="compartmentOne" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_365" name="k14" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for R_16" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_55">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k15*Hbarr1RP1/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_369" name="Hbarr1RP1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_370" name="compartmentOne" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_371" name="k15" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for R_17" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_56">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k16*Hbarr2RP1/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_375" name="Hbarr2RP1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_376" name="compartmentOne" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_377" name="k16" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for R_18" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_57">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k18*GRK56*HR/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_382" name="GRK56" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_383" name="HR" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_384" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_385" name="k18" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for R_19" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_58">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k17*HRP2/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_333" name="HRP2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_390" name="compartmentOne" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_391" name="k17" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for R_20" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_59">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k19*barr2*HR/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_396" name="HR" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_397" name="barr2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_398" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_399" name="k19" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for R_21" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_60">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k23*HRbarr2/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_381" name="HRbarr2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_404" name="compartmentOne" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_405" name="k23" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for R_22" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_61">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k20*barr2*HRP2/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_410" name="HRP2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_411" name="barr2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_412" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_413" name="k20" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for R_23" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_62">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k24*Hbarr2RP2/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_395" name="Hbarr2RP2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_418" name="compartmentOne" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_419" name="k24" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for R_24" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_63">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k21*ERK*HRbarr2/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_424" name="ERK" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_425" name="HRbarr2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_426" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_427" name="k21" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for R_25" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_64">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k22*ERK*Hbarr2RP2/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_432" name="ERK" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_433" name="Hbarr2RP2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_434" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_435" name="k22" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for R_26" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_65">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k25*bpERK/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_423" name="bpERK" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_440" name="compartmentOne" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_441" name="k25" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Heitzler2012_GPCRsignalling" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
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
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <bqmodel:isInstanceOf rdf:resource="http://identifiers.org/go/GO:0007178"/>
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:go:GO:0038166"/>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:22735336"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>tiwarik@babraham.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Tiwari</vCard:Family>
            <vCard:Given>Krishna</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>Babraham Institute</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-04T13:45:47</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1012080000"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bto/BTO:0000671"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <p>This model is from the article:      <br/>
    <strong>Competing G protein-coupled receptor kinases balance G protein and β-arrestin signaling</strong>
    <br/>
          Heitzler D, Durand G, Gallay N, Rizk A, Ahn S, Kim J, Violin JD, Dupuy L, Gauthier C, Piketty V, Crépieux P, Poupon A, Clément F, Fages F, Lefkowitz RJ, Reiter E.      <em>Mol Syst Biol.</em>
          2012; 8: 590.      <a href="http://www.ncbi.nlm.nih.gov/pubmed/22735336">22735336</a>
          ,      <br/>
    <strong>Abstract:</strong>
    <br/>
          Seven-transmembrane receptors (7TMRs) are involved in nearly all aspects of chemical communications and represent major drug targets. 7TMRs transmit their signals not only via heterotrimeric G proteins but also through β-arrestins, whose recruitment to the activated receptor is regulated by G protein-coupled receptor kinases (GRKs). In this paper, we combined experimental approaches with computational modeling to decipher the molecular mechanisms as well as the hidden dynamics governing extracellular signal-regulated kinase (ERK) activation by the angiotensin II type 1A receptor (AT(1A)R) in human embryonic kidney (HEK)293 cells. We built an abstracted ordinary differential equations (ODE)-based model that captured the available knowledge and experimental data. We inferred the unknown parameters by simultaneously fitting experimental data generated in both control and perturbed conditions. We demonstrate that, in addition to its well-established function in the desensitization of G-protein activation, GRK2 exerts a strong negative effect on β-arrestin-dependent signaling through its competition with GRK5 and 6 for receptor phosphorylation. Importantly, we experimentally confirmed the validity of this novel GRK2-dependent mechanism in both primary vascular smooth muscle cells naturally expressing the AT(1A)R, and HEK293 cells expressing other 7TMRs.      </p>
  </body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:bto:BTO:0002733"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="HR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P01019"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P30556"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Gp" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P63092"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          G protein
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="ERK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P27361"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="PIP2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:83417"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="DAG" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:17962"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="PKC" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P17252"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="PKC_a" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002354"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P17252"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Gp_pERK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P27361"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          G protein activated ERK
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="b_pERK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P27361"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          beta arrestin activated ERK
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="b-arrestin1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:uniprot:P49407"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="b-arrestin2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasVersion rdf:resource="urn:miriam:uniprot:P32121"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="Gp_a" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002354"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P63092"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="HR-P1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P01019"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P30556"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="HR-P1-b-arrestin1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P01019"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P30556"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P49407"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="HR-P1-b-arrestin2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P01019"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P30556"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="HR-P2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P01019"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P30556"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="HR_b-arrestin2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot.isoform:P01019"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P30556"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="HR-P2-b-arrestin2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P01019"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P30556"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P32121"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="GRK2/3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <bqbiol:hasProperty rdf:resource="urn:miriam:uniprot:P25098"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:uniprot:P35626"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T16:31:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="GRK5/6" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <bqbiol:hasProperty rdf:resource="urn:miriam:uniprot:P34947"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:uniprot:P43250"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T16:36:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="pERK" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-04T12:28:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P27361"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[Gp_pERK],Reference=Concentration>+&lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[b_pERK],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="k0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="k2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_3">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_5">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="k6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_6">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="k7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_7">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="k8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_8">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="k9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_9">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="k10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_10">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="k11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_11">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="k12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_12">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="k13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_13">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="k14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_14">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="k15" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_15">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="k16" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_16">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="k17" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_17">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="k18" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_18">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="k19" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_19">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="k20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_20">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="k21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_21">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="k22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_22">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="k23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_23">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="k24" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_24">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="k25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_25">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="GRK23" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="GRK56" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="GRK23_si" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="GRK56_si" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="P0_Ro" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="P0_a_Ro" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="barr2_0_si" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="nDAG" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="nPKC" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Cons_Gp_activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5027" name="k0" value="0.000311"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Gp activation HR-P1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5026" name="k1" value="0.0178"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Gp activation HR" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5030" name="k2" value="7.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="DAG production" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000393"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5028" name="k3" value="4.63"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="PKC activation DAG" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000656"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5031" name="k4" value="0.0787"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="ERk phosphorylation PKC" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000216"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5032" name="k5" value="2.65"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Gp_a deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0005085"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5036" name="k6" value="5.0985"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="DAG catalysis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000172"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5038" name="k7" value="0.461"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="PKC_a deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0042313"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5039" name="k8" value="1.77"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="G_pERK_dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000216"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5033" name="k9" value="3.04"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="HR phosphorylation GRK23" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000216"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5035" name="GRK23" value="0.899448"/>
          <Constant key="Parameter_5034" name="k10" value="2.27"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="b-arrestin1 HR-P1 binding" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0005515"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5037" name="k11" value="2.61"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="HR-P1-b-arrestin1 dissociation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000180"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5040" name="k13" value="0.00619"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="b-arrestin2 HR-P1 binding" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0005515"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5041" name="k12" value="2.59"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="HR-P1-b-arrestin2 dissociation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000180"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5075" name="k14" value="0.0311"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="HR-P1-b-arrestin1 dissociation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:sbo:SBO:0000180"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5076" name="k15" value="6.54e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="HR-P1-b-arrestin2 dissociation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000180"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5080" name="k16" value="0.0723"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="HR phosphorylation GRK56" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000216"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5082" name="GRK56" value="1.51808"/>
          <Constant key="Parameter_5083" name="k18" value="0.59"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="HR-P2 dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:go:GO:0016311"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5077" name="k17" value="0.0665"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="b-arrestin2 HR binding" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0005515"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5079" name="k19" value="0.205"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="HR_b-arrestin2 dissociation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000180"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5078" name="k23" value="1.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="b-arrestin2 HR-P2 binding" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:go:GO:0005515"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5081" name="k20" value="1.04"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="HR-P2-b-arrestin2 dissociation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000180"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5084" name="k24" value="0.347"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="ERK phosphorylation 1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000216"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5073" name="k21" value="0.00042"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="ERK phosphorylation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <bqbiol:hasProperty rdf:resource="urn:miriam:sbo:SBO:0000216"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5071" name="k22" value="14.44"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="b_pERK dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0016311"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5070" name="k25" value="0.762"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="ModelValue_25"/>
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
<dcterms:W3CDTF>2019-10-31T15:43:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[HR]" value="4.8177126856000004e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[Gp]" value="3.4320180744043e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[ERK]" value="2.5551943656251e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[PIP2]" value="6.0040744344290001e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[DAG]" value="5.4199267712999998e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[PKC]" value="5.3247769457594004e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[PKC_a]" value="1.2044281714e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[Gp_pERK]" value="9.0332112854999997e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[b_pERK]" value="9.0332112854999997e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[b-arrestin1]" value="5.166996855306e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[b-arrestin2]" value="2.908694033931e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[Gp_a]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[HR-P1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[HR-P1-b-arrestin1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[HR-P1-b-arrestin2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[HR-P2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[HR_b-arrestin2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[HR-P2-b-arrestin2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[GRK2/3]" value="5.4165543724200806e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[GRK5/6]" value="9.1416098209260005e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[pERK]" value="1.8066422570999999e+22" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k0]" value="0.00031100000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k1]" value="0.0178" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k2]" value="7.5999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k3]" value="4.6299999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k4]" value="0.078700000000000006" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k5]" value="2.6499999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k6]" value="5.0984999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k7]" value="0.46100000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k8]" value="1.77" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k9]" value="3.04" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k10]" value="2.27" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k11]" value="2.6099999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k12]" value="2.5899999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k13]" value="0.0061900000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k14]" value="0.031099999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k15]" value="6.5400000000000004e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k16]" value="0.072300000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k17]" value="0.066500000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k18]" value="0.58999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k19]" value="0.20499999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k20]" value="1.04" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k21]" value="0.00042000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k22]" value="14.44" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k23]" value="1.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k24]" value="0.34699999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k25]" value="0.76200000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[GRK23]" value="0.89944757900000005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[GRK56]" value="1.5180818" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[GRK23_si]" value="0.47886509199999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[GRK56_si]" value="0.0010351249099999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[P0_Ro]" value="0.00173556731" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[P0_a_Ro]" value="2.09075206e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[barr2_0_si]" value="0.00011230696300000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[nDAG]" value="4.1197442300000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[nPKC]" value="7.2090178600000003" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[Cons_Gp_activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[Cons_Gp_activation],ParameterGroup=Parameters,Parameter=k0" value="0.00031100000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[Gp activation HR-P1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[Gp activation HR-P1],ParameterGroup=Parameters,Parameter=k1" value="0.0178" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[Gp activation HR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[Gp activation HR],ParameterGroup=Parameters,Parameter=k2" value="7.5999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[DAG production]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[DAG production],ParameterGroup=Parameters,Parameter=k3" value="4.6299999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[PKC activation DAG]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[PKC activation DAG],ParameterGroup=Parameters,Parameter=k4" value="0.078700000000000006" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[ERk phosphorylation PKC]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[ERk phosphorylation PKC],ParameterGroup=Parameters,Parameter=k5" value="2.6499999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[Gp_a deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[Gp_a deactivation],ParameterGroup=Parameters,Parameter=k6" value="5.0984999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[DAG catalysis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[DAG catalysis],ParameterGroup=Parameters,Parameter=k7" value="0.46100000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[PKC_a deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[PKC_a deactivation],ParameterGroup=Parameters,Parameter=k8" value="1.77" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[G_pERK_dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[G_pERK_dephosphorylation],ParameterGroup=Parameters,Parameter=k9" value="3.04" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR phosphorylation GRK23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR phosphorylation GRK23],ParameterGroup=Parameters,Parameter=GRK23" value="0.89944757900000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[GRK23],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR phosphorylation GRK23],ParameterGroup=Parameters,Parameter=k10" value="2.27" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[b-arrestin1 HR-P1 binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[b-arrestin1 HR-P1 binding],ParameterGroup=Parameters,Parameter=k11" value="2.6099999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR-P1-b-arrestin1 dissociation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR-P1-b-arrestin1 dissociation],ParameterGroup=Parameters,Parameter=k13" value="0.0061900000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[b-arrestin2 HR-P1 binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[b-arrestin2 HR-P1 binding],ParameterGroup=Parameters,Parameter=k12" value="2.5899999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR-P1-b-arrestin2 dissociation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR-P1-b-arrestin2 dissociation],ParameterGroup=Parameters,Parameter=k14" value="0.031099999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR-P1-b-arrestin1 dissociation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR-P1-b-arrestin1 dissociation 2],ParameterGroup=Parameters,Parameter=k15" value="6.5400000000000004e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR-P1-b-arrestin2 dissociation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR-P1-b-arrestin2 dissociation 2],ParameterGroup=Parameters,Parameter=k16" value="0.072300000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k16],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR phosphorylation GRK56]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR phosphorylation GRK56],ParameterGroup=Parameters,Parameter=GRK56" value="1.5180818" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[GRK56],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR phosphorylation GRK56],ParameterGroup=Parameters,Parameter=k18" value="0.58999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k18],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR-P2 dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR-P2 dephosphorylation],ParameterGroup=Parameters,Parameter=k17" value="0.066500000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k17],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[b-arrestin2 HR binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[b-arrestin2 HR binding],ParameterGroup=Parameters,Parameter=k19" value="0.20499999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k19],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR_b-arrestin2 dissociation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR_b-arrestin2 dissociation],ParameterGroup=Parameters,Parameter=k23" value="1.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k23],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[b-arrestin2 HR-P2 binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[b-arrestin2 HR-P2 binding],ParameterGroup=Parameters,Parameter=k20" value="1.04" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR-P2-b-arrestin2 dissociation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[HR-P2-b-arrestin2 dissociation],ParameterGroup=Parameters,Parameter=k24" value="0.34699999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k24],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[ERK phosphorylation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[ERK phosphorylation 1],ParameterGroup=Parameters,Parameter=k21" value="0.00042000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[ERK phosphorylation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[ERK phosphorylation 2],ParameterGroup=Parameters,Parameter=k22" value="14.44" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k22],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[b_pERK dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Reactions[b_pERK dephosphorylation],ParameterGroup=Parameters,Parameter=k25" value="0.76200000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Values[k25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
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
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 4.8177126856000004e+22 2.908694033931e+23 2.5551943656251e+24 3.4320180744043e+25 0 5.3247769457594004e+24 6.0040744344290001e+23 0 9.0332112854999997e+21 0 0 0 0 5.4199267712999998e+21 1.2044281714e+21 9.0332112854999997e+21 5.166996855306e+23 0 1.8066422570999999e+22 5.4165543724200806e+23 9.1416098209260005e+23 1 0.00031100000000000002 0.0178 7.5999999999999996 4.6299999999999999 0.078700000000000006 2.6499999999999999 5.0984999999999996 0.46100000000000002 1.77 3.04 2.27 2.6099999999999999 2.5899999999999999 0.0061900000000000002 0.031099999999999999 6.5400000000000004e-05 0.072300000000000003 0.066500000000000004 0.58999999999999997 0.20499999999999999 1.04 0.00042000000000000002 14.44 1.05 0.34699999999999998 0.76200000000000001 0.89944757900000005 1.5180818 0.47886509199999999 0.0010351249099999999 0.00173556731 2.09075206e-05 0.00011230696300000001 4.1197442300000002 7.2090178600000003 
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
        <Parameter name="StepSize" type="float" value="0.90000000000000002"/>
        <Parameter name="Duration" type="float" value="90"/>
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
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="3"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[Gp],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="56.990000000000002"/>
            <Parameter name="Maximum" type="float" value="0"/>
            <Parameter name="log" type="bool" value="0"/>
            <Parameter name="Values" type="string" value=""/>
            <Parameter name="Use Values" type="bool" value="0"/>
          </ParameterGroup>
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[HR]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[HR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Gp]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[Gp],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ERK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[ERK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PIP2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[PIP2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[DAG]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[DAG],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PKC]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[PKC],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PKC_a]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[PKC_a],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Gp_pERK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[Gp_pERK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[b_pERK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[b_pERK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[b-arrestin1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[b-arrestin1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[b-arrestin2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[b-arrestin2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Gp_a]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[Gp_a],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HR-P1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[HR-P1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HR-P1-b-arrestin1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[HR-P1-b-arrestin1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HR-P1-b-arrestin2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[HR-P1-b-arrestin2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HR-P2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[HR-P2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HR_b-arrestin2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[HR_b-arrestin2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[HR-P2-b-arrestin2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[HR-P2-b-arrestin2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[GRK2/3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[GRK2/3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[GRK5/6]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[GRK5/6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pERK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[pERK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="plot" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[pERK]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Heitzler2012_GPCRsignalling,Vector=Compartments[Cell],Vector=Metabolites[pERK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="MODEL1012080000.xml">
    <SBMLMap SBMLid="DAG" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="ERK" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Function_for_R_1" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_R_10" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_for_R_11" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_for_R_12" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Function_for_R_13" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Function_for_R_14" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_R_15" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Function_for_R_16" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_for_R_17" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Function_for_R_18" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_R_19" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="Function_for_R_2" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Function_for_R_20" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Function_for_R_21" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="Function_for_R_22" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="Function_for_R_23" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Function_for_R_24" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Function_for_R_25" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Function_for_R_26" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="Function_for_R_3" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_R_4" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_R_5" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Function_for_R_6" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_R_7" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_R_8" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_R_9" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="G" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="GRK23" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="GRK23_si" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="GRK2_3" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="GRK56" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="GRK56_si" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="GRK5_6" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="G_a" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="GpERK" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="HR" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="HRP1" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="HRP2" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="HRbarr2" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="Hbarr1RP1" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="Hbarr2RP1" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="Hbarr2RP2" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="P0_Ro" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="P0_a_Ro" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="PIP2" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="PKC" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="PKC_a" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="R_1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="R_10" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="R_11" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="R_12" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="R_13" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="R_14" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="R_15" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="R_16" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="R_17" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="R_18" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="R_19" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="R_2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="R_20" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="R_21" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="R_22" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="R_23" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="R_24" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="R_25" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="R_26" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="R_3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="R_4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="R_5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="R_6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="R_7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="R_8" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="R_9" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="barr1" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="barr2" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="barr2_0_si" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="bpERK" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="compartmentOne" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="k0" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="k10" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="k11" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="k12" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="k13" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="k14" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="k15" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="k16" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="k17" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="k18" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="k19" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="k20" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="k21" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="k22" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="k23" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="k24" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="k25" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="k5" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="k6" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="k7" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="k8" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="k9" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="nDAG" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="nPKC" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="pERK" COPASIkey="Metabolite_20"/>
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
<dcterms:W3CDTF>2019-10-31T15:43:00Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2019-10-31T15:43:00Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2019-10-31T15:43:00Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2019-10-31T15:43:00Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2019-10-31T15:43:00Z</dcterms:W3CDTF>
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
<dcterms:W3CDTF>2019-10-31T15:43:00Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
