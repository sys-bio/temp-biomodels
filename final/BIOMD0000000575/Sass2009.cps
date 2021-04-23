<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.14 (Build 89) (http://www.copasi.org) at 2015-04-13 15:05:10 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="14" versionDevel="89" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="J1Sub" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-09T17:09:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        K*(X^G)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_254" name="X" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_258" name="G" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="J2Sub" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-09T17:29:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        K*(X1^G1)*(X2^G2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="X1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_267" name="G1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="X2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_271" name="G2" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="J1Sub3Mod" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T10:16:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        K*X1^G1*X2^G2*X3^G3*X4^G4
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_272" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="X1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_246" name="G1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="X2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_276" name="G2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="X3" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_280" name="G3" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="X4" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_284" name="G4" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="J2Sub1Mod" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T10:41:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        K*X1^G1*X2^G2*X3^G3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_285" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="X1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_277" name="G1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="X2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_270" name="G2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="X3" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_289" name="G3" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="J1Sub1Mod" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T11:29:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        K*X1^G1*X2^G2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_290" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="X1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_275" name="G1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="X2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_292" name="G2" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="J3Sub1Mod" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T14:58:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        K*X1^G1*X2^G2*X3^G3*X4^G4
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_293" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="X1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_288" name="G1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="X2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_297" name="G2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="X3" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_301" name="G3" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="X4" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_305" name="G4" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="J3Sub" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-13T11:18:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        K*X1^G1*X2^G2*X3^G3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_596" name="K" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_589" name="X1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_604" name="G1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_610" name="X2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_611" name="G2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_613" name="X3" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_615" name="G3" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_4" name="Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease" simulationType="time" timeUnit="dimensionless" volumeUnit="dimensionless" areaUnit="m²" lengthUnit="m" quantityUnit="dimensionless" type="deterministic" avogadroConstant="6.02214179e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-30T15:42:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="Neuronal cytosol" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_3" name="Vesicle" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_5" name="Autophagosome" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_7" name="Proteasome" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_9" name="Lysosome" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_1" name="Protofibril" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T15:52:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Alpha synuclein protofibril
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Fibril" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T15:55:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Alpha synuclein fibril
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Lewy_body" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T15:55:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Lewy Bodies
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Dopamine" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:00:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Dopamine
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="OH-" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:14:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Hydroxide
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="OH_radical" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:14:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Hydroxyl radical
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="H2O2" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:51:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Hidrogen Peroxide
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="DA_quinone" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:14:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Dopamine quinone (oxidized form)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="Ubiquitin" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:17:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Ubiquitin
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="E1" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:20:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Ubiquitin-activating enzymes (E1)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="Ub-E1" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:20:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Ubiquitin - Ubiquitin-activating enzymes (E1)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="UbcH8" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:22:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Ubiquitin/ISG15-conjugating enzyme E2
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="UbcH8-Ub" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:23:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Ubiquitin - Ubiquitin/ISG15-conjugating enzyme E2
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="Parkin" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:36:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          E3 ubiquitin-protein ligase parkin
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Parkin-sub" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:14:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          E3 ubiquitin-protein ligase parkin - Substrate
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="Parkin-synphilin-1" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:02:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          E3 ubiquitin-protein ligase parkin - synphilin-1 complex
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="Parkin-synphilin-1-ub" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:02:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          E3 ubiquitin-protein ligase parkin - synphilin-1-ubiquitin complex
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="Parkin-sub-ub4" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:38:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          E3 ubiquitin-protein ligase parkin - 4 Ubiquitinated substrate
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="Fragments" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-31T18:19:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Degraded fragments
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="UCH-L1" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:32:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Ubiquitin carboxyl-terminal hydrolase isozyme L1 (UCH-L1)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="L-Dopa" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:43:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          L-3,4-dihydroxyphenylalanine
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="DOPAL" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:56:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          3,4-Dihydroxyphenylacetaldehyde (DOPAL)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="DOPAC" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:56:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          3,4-Dihydroxyphenylacetic acid (DOPAC)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="GSH" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:59:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Glutathione (GSH)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="GSSG" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T17:00:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Glutathione disulfide (GSSG)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="Fe2+" simulationType="ode" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T17:01:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Iron (2+)
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Reactions[J21],Reference=Flux&gt;-&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Reactions[J20],Reference=Flux&gt;+0.01
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="Fe3+" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T17:01:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Iron (Fe3+)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="UbcH8ub2" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:23:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          2 Ubiquitin - Ubiquitin/ISG15-conjugating enzyme E2
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="UbcH8ub3" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:23:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          3 Ubiquitin - Ubiquitin/ISG15-conjugating enzyme E2
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="UbcH8ub4" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:24:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          4 Ubiquitin - Ubiquitin/ISG15-conjugating enzyme E2
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="UbcH13/Uev1a" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:24:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Ubiquitin-conjugating enzyme (E2) / Ubiquitin-conjugating enzyme (Uev1a)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="UbcH13/Uev1a-ub" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:28:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Ubiquitin - Ubiquitin-conjugating enzyme (E2) / Ubiquitin-conjugating enzyme (Uev1a)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="asyn-UCH-L1" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:14:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Alpha synuclein - Ubiquitin carboxyl-terminal hydrolase isozyme L1 (UCH-L1)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_67" name="asyn-ub" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T15:52:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Ubiquitinated alpha synuclein
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_69" name="Protofibril-UCH-L1" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:14:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Alpha synuclein protofibril - Ubiquitin carboxyl-terminal hydrolase isozyme L1 (UCH-L1)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_71" name="Protofibril-Ub" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T15:57:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Ubiquitinated alpha synuclein protofibril
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_73" name="UCH-L1-asyn-ub4" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:33:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Ubiquitin carboxyl-terminal hydrolase isozyme L1 (UCH-L1) - 4 Ubiquitinated alpha synuclein
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_75" name="Hsc70-asyn" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:12:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Alpha synuclein - Heat shock cognate 70 kDa protein (chaperone)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_77" name="Hsc70-Protofibril" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:12:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Alpha synuclein protofibril - Heat shock cognate 70 kDa protein (chaperone)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_79" name="Hsc70-fibril" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:12:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Alpha synuclein fibril - Heat shock cognate 70 kDa protein (chaperone)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_81" name="Hsc70" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:10:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Heat shock cognate 70 kDa protein (chaperone)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_83" name="DA-S-parkin" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T17:03:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Dopamine quinone (oxidized form) - E3 ubiquitin-protein ligase parkin
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_85" name="O2-" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:14:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Superoxide radical (O2-)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_87" name="DA-GSH" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T17:00:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Dopamine - Glutathione (GSH)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_89" name="Neuromelanin" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T17:03:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Neuromelanin (NM)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_91" name="Neuromelanin-ntox-Fe3+" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-31T18:43:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Neuromelanin (NM) with neurotoxins and Fe2+. Neurotoxins such as rotenone and MPTP.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_93" name="Alpha_synuclein" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T17:58:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Alpha synuclein
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_95" name="ATP" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_95">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T17:59:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Adenosine triphosphate (ATP)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_97" name="Synphilin-1" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_97">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T17:59:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Synphilin-1
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_99" name="Substrate" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:00:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Substrate
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_101" name="TH" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_101">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:01:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Tyrosine hydroxylase (TH)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_103" name="L-Tyr" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_103">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:01:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          L-Tyrosine
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_105" name="CO2" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_105">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:02:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Carbon dioxide (CO2)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_107" name="Neurotoxins" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_107">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:02:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Neurotoxins such as rotenone and MPTP
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_109" name="Bioamines" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_109">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:04:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Biogenic amine
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_111" name="VMAT2" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_111">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:17:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          vesicular monoamine transporter 2 (VMAT2)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_113" name="O2" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_113">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:18:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Oxygen (O2)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_115" name="MAO" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_115">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:18:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          L-Monoamine oxidases (MAO)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_117" name="NH3" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_117">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:19:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Ammonia (NH3)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_119" name="ALDH" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_119">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:19:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Aldehyde dehydrogenases (ALDH)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_121" name="NAD+" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_121">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:20:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Nicotinamide adenine dinucleotide (oxidized)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_123" name="NADH" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_123">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:20:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Nicotinamide adenine dinucleotide (reduced)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_125" name="Catalase" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_125">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:21:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Catalase
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_127" name="H2O" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_127">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:22:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Water (H2O)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_129" name="Gluta_per" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_129">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:22:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Glutathione peroxidase
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_131" name="Gluta_red" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_131">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:22:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Glutathione reductase
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_133" name="DDC" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_133">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:24:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Aromatic L-amino acid decarboxylase (DDC)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_135" name="Preautophagosome_membrane" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_135">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:24:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Preautophagosome membrane
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_137" name="SOD" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_137">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:25:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Superoxide dismutases (SOD)
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_139" name="Cysteine" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_139">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:25:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Cysteine
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_141" name="V-DA" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_141">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-31T18:13:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Vesicular dopamine
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_143" name="V-ntox-ba" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_143">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-31T18:25:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Vesicular neurotoxins and bio-amines. Neurotoxins such as rotenone and MPTP.
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_145" name="Vesicle" simulationType="fixed" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_145">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:16:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Vesicle
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_147" name="Autophagosome" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_147">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T16:04:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Autophagosome
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_149" name="Proteasome" simulationType="fixed" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_149">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T17:59:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Proteasome
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_151" name="Lysosome" simulationType="fixed" compartment="Compartment_9">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_151">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-01T18:24:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Lysosome
        </Comment>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="g11" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="p186" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="p110" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="p19" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="p18" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-09T17:25:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="g22" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="p286" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="p210" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="p29" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="p28" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="i26" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="k2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="g326" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="g23" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="k3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="k4" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T10:33:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="i41" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="i42" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="i43" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="g412" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="g415" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="g427" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="g430" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="k6" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="g613" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="g614" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="g615" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="k7" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="g715" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="g716" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="g717" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="k8" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="g819" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="g821" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="k9" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="g919" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="g920" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="k10" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="g1025" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="g1072" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_41" name="k11" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_42" name="g1124" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="g1170" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_44" name="k13" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_45" name="i131" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_46" name="i1310" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="g1335" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_48" name="g1336" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_49" name="g1351" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_50" name="k14" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_51" name="g1437" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_52" name="g1467" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_53" name="k15" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_54" name="i152" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_55" name="g156" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_56" name="g1544" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_57" name="g1545" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_58" name="k16" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_59" name="g1643" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_60" name="g1644" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_61" name="k17" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_62" name="g1742" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_63" name="g1744" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_64" name="k18" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_65" name="g186" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_66" name="g1851" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_67" name="k19" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_68" name="g196" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_69" name="g1951" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_70" name="g1953" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_71" name="g1960" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_72" name="k20" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_73" name="g209" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_74" name="g2065" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_75" name="k21" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_76" name="g2166" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_77" name="k22" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_78" name="g229" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_79" name="g2259" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_80" name="k23" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_81" name="g239" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_82" name="g2361" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_83" name="g2362" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_84" name="k24" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_85" name="g2463" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_86" name="g2464" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_87" name="k25" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_88" name="g2552" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_89" name="g2555" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_90" name="g2556" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_91" name="k26f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_92" name="g26f15" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_93" name="g26f16" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_94" name="g26f18" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_95" name="k26r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_96" name="g26r30" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_97" name="g26r68" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_98" name="k27f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_99" name="g27f15" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_100" name="g27f16" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_101" name="g27f68" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_102" name="k27r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_103" name="g27r30" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_104" name="g27r69" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_105" name="k28f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_106" name="g28f15" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_107" name="g28f16" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_108" name="g28f69" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_109" name="k28r" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_110" name="g28r30" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_111" name="g28r70" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_112" name="k29" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_113" name="g2915" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_114" name="g2916" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_115" name="g2971" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_116" name="k30" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_117" name="g301" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_118" name="g3030" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_119" name="k31" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_120" name="g3172" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_121" name="g3173" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_122" name="k32" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_123" name="g321" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_124" name="p328" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_125" name="p329" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_126" name="p3210" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_127" name="p3286" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_128" name="g3274" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_129" name="k33" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_130" name="g332" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_131" name="g3330" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_132" name="k34" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_133" name="g3472" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_134" name="g3475" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_135" name="k35" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_136" name="g352" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_137" name="p358" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_138" name="p359" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_139" name="p3510" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_140" name="p3586" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_141" name="g3576" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_142" name="k36" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_143" name="i368" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_144" name="i369" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_145" name="i3610" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_146" name="i3686" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_147" name="g3677" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_148" name="g3679" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_149" name="k37" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_150" name="g3770" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_151" name="g3773" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_152" name="k38" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_153" name="i381" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_154" name="i382" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_155" name="i383" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_156" name="g3812" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_157" name="g3815" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_158" name="g3830" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_159" name="g3878" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_160" name="k43" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_161" name="g431" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_162" name="g4384" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_163" name="k44" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_164" name="g442" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_165" name="g4484" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_166" name="k45" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_167" name="g453" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_168" name="g4584" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_169" name="k46" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_170" name="i468" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_171" name="i469" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_172" name="i4610" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_173" name="i4686" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_174" name="g4677" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_175" name="g4681" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_176" name="k47" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_176">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T17:52:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_177" name="i478" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_178" name="i479" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_179" name="i4710" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_180" name="i4786" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_181" name="g4777" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_182" name="g4782" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_183" name="k48" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_184" name="i488" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_185" name="i489" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_186" name="i4810" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_187" name="i4886" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_188" name="g4877" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_189" name="g4883" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_190" name="k50" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_191" name="g501" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_192" name="g5080" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_193" name="k51" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_194" name="g512" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_195" name="g5180" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_196" name="k52" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_197" name="g523" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_198" name="g5280" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_199" name="k53" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_200" name="g534" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_201" name="g5380" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_202" name="k54" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_203" name="g5410" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_204" name="g5419" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_205" name="k55" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_206" name="g556" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_207" name="g5586" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_208" name="k56" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_209" name="g5686" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_210" name="g5687" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_211" name="k57" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_212" name="g5710" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_213" name="g5762" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_214" name="k100" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_215" name="g10037" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_216" name="g10051" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_217" name="g100115" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_218" name="k101" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_219" name="g10136" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_220" name="g10151" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_221" name="g101115" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_222" name="k102" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_223" name="g10210" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_224" name="g10251" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_225" name="g102115" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_226" name="k115" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_227" name="g11565" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_228" name="g11566" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_229" name="g115118" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_230" name="k116" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_231" name="g11642" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_232" name="g116118" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_233" name="k1'" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_233">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-09T17:14:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0003*(&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[p18],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[OH_radical],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[p19],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[H2O2],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[p110],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[DA_quinone],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[p186],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[O2-],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_234" name="k2'" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_234">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-09T17:24:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0001*(&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i26],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Dopamine],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[p28],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[OH_radical],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[p29],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[H2O2],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[p210],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[DA_quinone],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[p286],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[O2-],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_235" name="k4'" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_235">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T10:30:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.009*(&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i41],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Alpha_synuclein],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i42],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Protofibril],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i43],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Fibril],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_236" name="k13'" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_236">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T11:20:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.001*(&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i131],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Alpha_synuclein],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i1310],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[DA_quinone],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_237" name="k15'" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_237">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T11:43:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.002*(&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i152],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Protofibril],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_238" name="k32'" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_238">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T16:22:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.00001*(&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[p328],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[OH_radical],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[p329],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[H2O2],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[p3210],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[DA_quinone],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[p3286],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[O2-],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_239" name="k35'" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_239">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T16:55:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.00001*(&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[p358],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[OH_radical],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[p359],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[H2O2],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[p3510],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[DA_quinone],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[p3586],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[O2-],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_240" name="k36'" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_240">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T16:59:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0005*(&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i368],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[OH_radical],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i369],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[H2O2],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i3610],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[DA_quinone],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i3686],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[O2-],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_241" name="k38'" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_241">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T17:22:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.007*(&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i381],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Alpha_synuclein],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i382],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Protofibril],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i383],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Fibril],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_242" name="k46'" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_242">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T17:45:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0003*(&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i468],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[OH_radical],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i469],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[H2O2],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i4610],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[DA_quinone],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i4686],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[O2-],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_243" name="k47'" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_243">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T17:49:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0003*(&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i478],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[OH_radical],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i479],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[H2O2],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i4710],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[DA_quinone],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i4786],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[O2-],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_244" name="k48'" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_244">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T17:55:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          0.0003*(&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i488],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[OH_radical],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i489],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[H2O2],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i4810],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[DA_quinone],Reference=Concentration&gt;+&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[i4886],Reference=Value&gt;*&lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[O2-],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="J1" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-09T17:10:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Protofibril aggregation
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4543" name="K" value="0.03"/>
          <Constant key="Parameter_4544" name="G" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="J2" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-09T17:21:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Fibril aggregation
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4545" name="K" value="0.01"/>
          <Constant key="Parameter_4546" name="G" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="J3" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-09T17:30:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Lewy Body formation
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4547" name="K" value="0.007"/>
          <Constant key="Parameter_4548" name="G1" value="1"/>
          <Constant key="Parameter_4549" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="J4" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T10:25:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Proteasome Degradation of parkin-sub-ub4
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="4"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_149" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_95" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4550" name="K" value="0.9"/>
          <Constant key="Parameter_4551" name="G1" value="1"/>
          <Constant key="Parameter_4552" name="G2" value="1"/>
          <Constant key="Parameter_4553" name="G3" value="1"/>
          <Constant key="Parameter_4554" name="G4" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="J6" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T10:42:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Ubiquitin Activation
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4555" name="K" value="0.5"/>
          <Constant key="Parameter_4556" name="G1" value="1"/>
          <Constant key="Parameter_4557" name="G2" value="1"/>
          <Constant key="Parameter_4558" name="G3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="J7" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T10:46:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Ubiquitin Conjugation
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4559" name="K" value="0.03"/>
          <Constant key="Parameter_4560" name="G1" value="1"/>
          <Constant key="Parameter_4561" name="G2" value="1"/>
          <Constant key="Parameter_4562" name="G3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="J8" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T10:52:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Substrate ligation
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4563" name="K" value="0.001"/>
          <Constant key="Parameter_4564" name="G1" value="1"/>
          <Constant key="Parameter_4565" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="J9" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T10:55:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Synphilin-1 ligation
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4566" name="K" value="0.001"/>
          <Constant key="Parameter_4567" name="G1" value="1"/>
          <Constant key="Parameter_4568" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="J10" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T10:58:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          K63 Synphilin-1 Ubiquitination
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4569" name="K" value="0.05"/>
          <Constant key="Parameter_4570" name="G1" value="1"/>
          <Constant key="Parameter_4573" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="J11" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T11:06:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          K48 Substrate Ubiquitination
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4572" name="K" value="0.05"/>
          <Constant key="Parameter_4574" name="G1" value="1"/>
          <Constant key="Parameter_4571" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="J13" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T11:17:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          L-Dopa formation
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_103" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4575" name="K" value="0.1"/>
          <Constant key="Parameter_4576" name="G1" value="1"/>
          <Constant key="Parameter_4577" name="G2" value="1"/>
          <Constant key="Parameter_4578" name="G3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="J14" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T11:24:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Dopamine formation
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
          <Product metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4579" name="K" value="3"/>
          <Constant key="Parameter_4580" name="G1" value="1"/>
          <Constant key="Parameter_4581" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="J15" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T11:38:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Dopamine vesicle packaging
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4582" name="K" value="0.2"/>
          <Constant key="Parameter_4583" name="G1" value="1"/>
          <Constant key="Parameter_4584" name="G2" value="1"/>
          <Constant key="Parameter_4585" name="G3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="J16" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T11:45:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Bioamine vesicle packaging
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_109" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4586" name="K" value="0.0001"/>
          <Constant key="Parameter_4587" name="G1" value="1"/>
          <Constant key="Parameter_4588" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="J17" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T11:47:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Neurotoxin vesicle packaging
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4589" name="K" value="0.0001"/>
          <Constant key="Parameter_4590" name="G1" value="1"/>
          <Constant key="Parameter_4596" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="J18" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T14:51:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          DA quinone and superoxide radical synthesis
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4595" name="K" value="0.02"/>
          <Constant key="Parameter_4594" name="G1" value="1"/>
          <Constant key="Parameter_4591" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="J19" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T15:00:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          DOPAL and H2O2 synthesis
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4592" name="K" value="0.01"/>
          <Constant key="Parameter_4593" name="G1" value="1"/>
          <Constant key="Parameter_4597" name="G2" value="1"/>
          <Constant key="Parameter_4598" name="G3" value="1"/>
          <Constant key="Parameter_4601" name="G4" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="J20" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T15:08:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Iron oxidation and formation of OH radicals
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4600" name="K" value="0.1"/>
          <Constant key="Parameter_4599" name="G1" value="1"/>
          <Constant key="Parameter_4602" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="J21" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T15:12:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Iron reduction
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4603" name="K" value="0.1"/>
          <Constant key="Parameter_4604" name="G" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="J22" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T15:15:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          H2O2 depletion by catalase
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4605" name="K" value="0.5"/>
          <Constant key="Parameter_4606" name="G1" value="1"/>
          <Constant key="Parameter_4607" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="J23" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T15:19:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          H2O2 depletion by GSH
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4608" name="K" value="0.5"/>
          <Constant key="Parameter_4609" name="G1" value="1"/>
          <Constant key="Parameter_4610" name="G2" value="1"/>
          <Constant key="Parameter_4611" name="G3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="J24" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T15:23:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4612" name="K" value="1"/>
          <Constant key="Parameter_4613" name="G1" value="1"/>
          <Constant key="Parameter_4614" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="J25" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T15:25:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          DOPAC formation
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
          <Product metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4615" name="K" value="0.05"/>
          <Constant key="Parameter_4616" name="G1" value="1"/>
          <Constant key="Parameter_4617" name="G2" value="0.25"/>
          <Constant key="Parameter_4618" name="G3" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="J26f" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T15:33:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Forward ubiquitination tag 2
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4619" name="K" value="0.05"/>
          <Constant key="Parameter_4620" name="G1" value="1"/>
          <Constant key="Parameter_4621" name="G2" value="1"/>
          <Constant key="Parameter_4622" name="G3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="J26r" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T15:39:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Reverse ubiquitination tag 2
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4623" name="K" value="0.005"/>
          <Constant key="Parameter_4624" name="G1" value="1"/>
          <Constant key="Parameter_4637" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="J27f" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T15:44:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Forward ubiquitination tag 3
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4638" name="K" value="0.05"/>
          <Constant key="Parameter_4639" name="G1" value="1"/>
          <Constant key="Parameter_4640" name="G2" value="1"/>
          <Constant key="Parameter_4641" name="G3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="J27r" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T15:48:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Reverse ubiquitination tag 3
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="3"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4642" name="K" value="0.005"/>
          <Constant key="Parameter_4643" name="G1" value="1"/>
          <Constant key="Parameter_4644" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="J28f" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T15:50:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Forward ubiquitination tag 4
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4531" name="K" value="0.05"/>
          <Constant key="Parameter_4532" name="G1" value="1"/>
          <Constant key="Parameter_4533" name="G2" value="1"/>
          <Constant key="Parameter_4534" name="G3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="J28r" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T15:54:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Reverse ubiquitination tag 4
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="4"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4535" name="K" value="0.005"/>
          <Constant key="Parameter_4536" name="G1" value="1"/>
          <Constant key="Parameter_4537" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_110"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="J29" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T15:59:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          UbcH13/Uev1a conjugation
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4538" name="K" value="0.05"/>
          <Constant key="Parameter_4539" name="G1" value="1"/>
          <Constant key="Parameter_4540" name="G2" value="1"/>
          <Constant key="Parameter_4541" name="G3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_113"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="J30" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T16:05:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Asyn ligation to UCH-L1
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4645" name="K" value="0.001"/>
          <Constant key="Parameter_4646" name="G1" value="1"/>
          <Constant key="Parameter_4426" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="J31" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T16:10:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Alpha synuclein K63 ubiquitination
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4425" name="K" value="0.05"/>
          <Constant key="Parameter_4424" name="G1" value="1"/>
          <Constant key="Parameter_4423" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="J32" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T16:18:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Asyn reaction with asyn-ub to form protofibrils
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4422" name="K" value="0.001"/>
          <Constant key="Parameter_4421" name="G1" value="1"/>
          <Constant key="Parameter_4420" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="J33" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T16:32:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Protofibril ligation to UCH-L1
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4419" name="K" value="0.001"/>
          <Constant key="Parameter_4418" name="G1" value="1"/>
          <Constant key="Parameter_4417" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="J34" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T16:35:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Protofibril K63 ubiquitination
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4416" name="K" value="0.05"/>
          <Constant key="Parameter_4415" name="G1" value="1"/>
          <Constant key="Parameter_4414" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="J35" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T16:38:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Protofibril reaction with protofibril-ub to form fibrils
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4413" name="K" value="0.001"/>
          <Constant key="Parameter_4412" name="G1" value="1"/>
          <Constant key="Parameter_4411" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_141"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="J36" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T16:58:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Lysosomal degradation of autophagosome
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4410" name="K" value="0.05"/>
          <Constant key="Parameter_4409" name="G1" value="1"/>
          <Constant key="Parameter_4408" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_142"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="J37" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T17:10:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Asyn K48 ubiquitination
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_73" stoichiometry="1"/>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4407" name="K" value="0.05"/>
          <Constant key="Parameter_4406" name="G1" value="1"/>
          <Constant key="Parameter_4405" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_151"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="J38" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T17:15:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Proteasomal degradation of UCH-L1-asyn-ub4
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="4"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_149" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_95" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4404" name="K" value="0.7"/>
          <Constant key="Parameter_4403" name="G1" value="1"/>
          <Constant key="Parameter_4402" name="G2" value="1"/>
          <Constant key="Parameter_4401" name="G3" value="1"/>
          <Constant key="Parameter_4400" name="G4" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_152"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="ModelValue_159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_156"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_157"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_158"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="J43" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T17:30:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          hsc70-asyn formation
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4399" name="K" value="0.05"/>
          <Constant key="Parameter_4398" name="G1" value="1"/>
          <Constant key="Parameter_4397" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_160"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_161"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_162"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="J44" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T17:33:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Hsc70-protofibril formation
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4396" name="K" value="0.045"/>
          <Constant key="Parameter_4395" name="G1" value="1"/>
          <Constant key="Parameter_4394" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_164"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_165"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="J45" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T17:37:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Hsc70-fibril formation
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4393" name="K" value="0.04"/>
          <Constant key="Parameter_4392" name="G1" value="1"/>
          <Constant key="Parameter_4391" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_166"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_167"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_168"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="J46" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T17:42:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Lysosomal degradation of Hsc70-asyn
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4390" name="K" value="0.03"/>
          <Constant key="Parameter_4389" name="G1" value="1"/>
          <Constant key="Parameter_4388" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_169"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_174"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="J47" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T17:47:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Lysosomal degradation of Hsc70-protofibril
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4387" name="K" value="0.03"/>
          <Constant key="Parameter_4386" name="G1" value="1"/>
          <Constant key="Parameter_4385" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_182"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_181"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="J48" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-10T17:52:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Lysosomal degradation of Hsc70-fibril
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4384" name="K" value="0.03"/>
          <Constant key="Parameter_4383" name="G1" value="1"/>
          <Constant key="Parameter_4382" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_183"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_188"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="J50" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-13T10:36:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Autophagosome engulf alpha-synuclein
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4438" name="K" value="0.05"/>
          <Constant key="Parameter_4439" name="G1" value="1"/>
          <Constant key="Parameter_4440" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_190"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_192"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="J51" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-13T10:41:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Autophagosome engulf protofibril
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4441" name="K" value="0.05"/>
          <Constant key="Parameter_4442" name="G1" value="1"/>
          <Constant key="Parameter_4443" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_193"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_194"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="J52" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-13T10:44:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Autophagosome engulf fibril
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4444" name="K" value="0.05"/>
          <Constant key="Parameter_4445" name="G1" value="1"/>
          <Constant key="Parameter_4446" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_196"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_197"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_198"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="J53" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-13T10:51:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Autophagosome engulf lewy body
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4447" name="K" value="0.05"/>
          <Constant key="Parameter_4448" name="G1" value="1"/>
          <Constant key="Parameter_4449" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_200"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_201"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="J54" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-13T10:59:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          DA-S-Parkin formation
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4450" name="K" value="0.005"/>
          <Constant key="Parameter_4451" name="G1" value="1"/>
          <Constant key="Parameter_4452" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_202"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_203"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_204"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="J55" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-13T11:03:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          DA-quinone synthesis from DA and superoxide
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4453" name="K" value="0.05"/>
          <Constant key="Parameter_4454" name="G1" value="1"/>
          <Constant key="Parameter_4455" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_205"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_206"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_207"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="J56" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-13T11:07:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Superoxide dismutase reaction
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4457" name="K" value="0.05"/>
          <Constant key="Parameter_4458" name="G1" value="1"/>
          <Constant key="Parameter_4459" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_208"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_209"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_210"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="J57" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-13T11:11:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          DA-GSH formation
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4456" name="K" value="0.005"/>
          <Constant key="Parameter_4460" name="G1" value="1"/>
          <Constant key="Parameter_4461" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_211"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_212"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_213"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="J100" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-13T11:15:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Neuromelanin synthesis from L-DOPA
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_89" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4462" name="K" value="0.005"/>
          <Constant key="Parameter_4463" name="G1" value="1"/>
          <Constant key="Parameter_4464" name="G2" value="1"/>
          <Constant key="Parameter_4465" name="G3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="ModelValue_214"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_589">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_604">
              <SourceParameter reference="ModelValue_215"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_610">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_611">
              <SourceParameter reference="ModelValue_216"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_613">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_615">
              <SourceParameter reference="ModelValue_217"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="J101" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-13T11:21:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Neuromelanin synthesis from L-Tyr
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_103" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_89" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4466" name="K" value="0.005"/>
          <Constant key="Parameter_4469" name="G1" value="1"/>
          <Constant key="Parameter_4468" name="G2" value="1"/>
          <Constant key="Parameter_4470" name="G3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="ModelValue_218"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_589">
              <SourceParameter reference="Metabolite_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_604">
              <SourceParameter reference="ModelValue_219"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_610">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_611">
              <SourceParameter reference="ModelValue_220"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_613">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_615">
              <SourceParameter reference="ModelValue_221"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="J102" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-13T11:26:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Neuromelanin synthesis from DA quinone
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_89" stoichiometry="1"/>
          <Product metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4467" name="K" value="0.005"/>
          <Constant key="Parameter_4471" name="G1" value="1"/>
          <Constant key="Parameter_4472" name="G2" value="1"/>
          <Constant key="Parameter_4473" name="G3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="ModelValue_222"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_589">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_604">
              <SourceParameter reference="ModelValue_223"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_610">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_611">
              <SourceParameter reference="ModelValue_224"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_613">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_615">
              <SourceParameter reference="ModelValue_225"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="J115" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-13T11:32:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Neuromelanin Fe3+ sequestration
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4475" name="K" value="0.5"/>
          <Constant key="Parameter_4476" name="G1" value="1"/>
          <Constant key="Parameter_4477" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_226"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_227"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_229"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="J116" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-04-13T11:36:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Neuromelanin neurotoxin sequestration
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4474" name="K" value="0.5"/>
          <Constant key="Parameter_4478" name="G1" value="1"/>
          <Constant key="Parameter_4479" name="G2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_230"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_232"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_231"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Vesicle]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Autophagosome]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Proteasome]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Lysosome]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Protofibril]" value="0.05" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Fibril]" value="0.025" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Lewy_body]" value="0.01" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Dopamine]" value="2" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[OH-]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[OH_radical]" value="0.02" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[H2O2]" value="0.1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[DA_quinone]" value="0.05" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Ubiquitin]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[E1]" value="0.2" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Ub-E1]" value="0.35" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[UbcH8]" value="0.2" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[UbcH8-Ub]" value="0.35" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Parkin]" value="0.2" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Parkin-sub]" value="0.1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Parkin-synphilin-1]" value="1.3" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Parkin-synphilin-1-ub]" value="2.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Parkin-sub-ub4]" value="0.2" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Fragments]" value="0.1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[UCH-L1]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[L-Dopa]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[DOPAL]" value="0.05" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[DOPAC]" value="0.3" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[GSH]" value="1.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[GSSG]" value="1.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Fe2+]" value="0.5" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Fe3+]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[UbcH8ub2]" value="0.35" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[UbcH8ub3]" value="0.35" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[UbcH8ub4]" value="0.35" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[UbcH13/Uev1a]" value="0.2" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[UbcH13/Uev1a-ub]" value="0.35" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[asyn-UCH-L1]" value="0.1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[asyn-ub]" value="0.05" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Protofibril-UCH-L1]" value="0.025" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Protofibril-Ub]" value="0.013" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[UCH-L1-asyn-ub4]" value="0.1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Hsc70-asyn]" value="0.1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Hsc70-Protofibril]" value="0.025" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Hsc70-fibril]" value="0.013" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Hsc70]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[DA-S-parkin]" value="0.2" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[O2-]" value="0.02" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[DA-GSH]" value="0.2" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Neuromelanin]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Neuromelanin-ntox-Fe3+]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Alpha_synuclein]" value="0.2" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[ATP]" value="2" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Synphilin-1]" value="0.05" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Substrate]" value="0.4" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[TH]" value="0.6" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[L-Tyr]" value="5" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[CO2]" value="0.5" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Neurotoxins]" value="0.01" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Bioamines]" value="0.1" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[VMAT2]" value="2" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[O2]" value="2" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[MAO]" value="1.5" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[NH3]" value="0.5" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[ALDH]" value="1.5" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[NAD+]" value="1.5" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[NADH]" value="1.5" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Catalase]" value="1" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[H2O]" value="3" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Gluta_per]" value="0.8" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Gluta_red]" value="0.8" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[DDC]" value="1.5" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Preautophagosome_membrane]" value="1" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[SOD]" value="0.6" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Cysteine]" value="0.5" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Vesicle],Vector=Metabolites[V-DA]" value="10" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Vesicle],Vector=Metabolites[V-ntox-ba]" value="0.3" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Vesicle],Vector=Metabolites[Vesicle]" value="1" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Autophagosome],Vector=Metabolites[Autophagosome]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Proteasome],Vector=Metabolites[Proteasome]" value="1.5" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Lysosome],Vector=Metabolites[Lysosome]" value="2.5" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g11]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[p186]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[p110]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[p19]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[p18]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k1]" value="0.03" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g22]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[p286]" value="0.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[p210]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[p29]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[p28]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i26]" value="-1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k2]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g326]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g23]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k3]" value="0.007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k4]" value="0.9" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i41]" value="-0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i42]" value="-0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i43]" value="-0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g412]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g415]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g427]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g430]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k6]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g613]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g614]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g615]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k7]" value="0.03" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g715]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g716]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g717]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k8]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g819]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g821]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k9]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g919]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g920]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k10]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1025]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1072]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k11]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1124]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1170]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k13]" value="0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i131]" value="-0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i1310]" value="-0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1335]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1336]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1351]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k14]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1437]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1467]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k15]" value="0.2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i152]" value="-0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g156]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1544]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1545]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k16]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1643]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1644]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k17]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1742]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1744]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k18]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g186]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1851]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k19]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g196]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1951]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1953]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g1960]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k20]" value="0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g209]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g2065]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k21]" value="0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g2166]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k22]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g229]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g2259]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k23]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g239]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g2361]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g2362]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k24]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g2463]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g2464]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k25]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g2552]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g2555]" value="0.3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g2556]" value="0.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k26f]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g26f15]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g26f16]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g26f18]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k26r]" value="0.005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g26r30]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g26r68]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k27f]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g27f15]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g27f16]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g27f68]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k27r]" value="0.005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g27r30]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g27r69]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k28f]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g28f15]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g28f16]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g28f69]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k28r]" value="0.005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g28r30]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g28r70]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k29]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g2915]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g2916]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g2971]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k30]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g301]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g3030]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k31]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g3172]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g3173]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k32]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g321]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[p328]" value="0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[p329]" value="0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[p3210]" value="0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[p3286]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g3274]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k33]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g332]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g3330]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k34]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g3472]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g3475]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k35]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g352]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[p358]" value="0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[p359]" value="0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[p3510]" value="0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[p3586]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g3576]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k36]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i368]" value="-0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i369]" value="-0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i3610]" value="-0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i3686]" value="-0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g3677]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g3679]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k37]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g3770]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g3773]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k38]" value="0.7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i381]" value="-0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i382]" value="-0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i383]" value="-0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g3812]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g3815]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g3830]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g3878]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k43]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g431]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g4384]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k44]" value="0.045" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g442]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g4484]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k45]" value="0.04" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g453]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g4584]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k46]" value="0.03" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i468]" value="-0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i469]" value="-0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i4610]" value="-0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i4686]" value="-0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g4677]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g4681]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k47]" value="0.03" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i478]" value="-0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i479]" value="-0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i4710]" value="-0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i4786]" value="-0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g4777]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g4782]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k48]" value="0.03" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i488]" value="-0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i489]" value="-0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i4810]" value="-0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[i4886]" value="-0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g4877]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g4883]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k50]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g501]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g5080]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k51]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g512]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g5180]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k52]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g523]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g5280]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k53]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g534]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g5380]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k54]" value="0.005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g5410]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g5419]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k55]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g556]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g5586]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k56]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g5686]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g5687]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k57]" value="0.005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g5710]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g5762]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k100]" value="0.005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g10037]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g10051]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g100115]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k101]" value="0.005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g10136]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g10151]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g101115]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k102]" value="0.005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g10210]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g10251]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g102115]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k115]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g11565]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g11566]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g115118]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k116]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g11642]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[g116118]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k1']" value="5.4e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k2']" value="-0.000191" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k4']" value="-2.475e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k13']" value="-2.5e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k15']" value="-1e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k32']" value="1.8e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k35']" value="1.8e-07" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k36']" value="-9.000000000000002e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k38']" value="-1.925e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k46']" value="-5.4e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k47']" value="-5.4e-06" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Values[k48']" value="-5.4e-06" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J1],ParameterGroup=Parameters,Parameter=K" value="0.03" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J1],ParameterGroup=Parameters,Parameter=G" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g11],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J2],ParameterGroup=Parameters,Parameter=K" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J2],ParameterGroup=Parameters,Parameter=G" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g22],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J3],ParameterGroup=Parameters,Parameter=K" value="0.007" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J3],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g23],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J3],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g326],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J4],ParameterGroup=Parameters,Parameter=K" value="0.9" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J4],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g427],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J4],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g412],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J4],ParameterGroup=Parameters,Parameter=G3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g415],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J4],ParameterGroup=Parameters,Parameter=G4" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g430],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J6],ParameterGroup=Parameters,Parameter=K" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k6],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J6],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g613],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J6],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g614],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J6],ParameterGroup=Parameters,Parameter=G3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g615],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J7],ParameterGroup=Parameters,Parameter=K" value="0.03" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k7],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J7],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g716],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J7],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g717],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J7],ParameterGroup=Parameters,Parameter=G3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g715],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J8],ParameterGroup=Parameters,Parameter=K" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k8],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J8],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g819],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J8],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g821],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J9],ParameterGroup=Parameters,Parameter=K" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k9],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J9],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g919],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J9],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g920],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J10],ParameterGroup=Parameters,Parameter=K" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k10],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J10],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1025],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J10],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1072],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J11],ParameterGroup=Parameters,Parameter=K" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k11],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J11],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1124],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J11],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1170],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J13],ParameterGroup=Parameters,Parameter=K" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k13],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J13],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1336],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J13],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1351],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J13],ParameterGroup=Parameters,Parameter=G3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1335],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J14],ParameterGroup=Parameters,Parameter=K" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k14],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J14],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1437],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J14],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1467],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J15],ParameterGroup=Parameters,Parameter=K" value="0.2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k15],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J15],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g156],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J15],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1544],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J15],ParameterGroup=Parameters,Parameter=G3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1545],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J16],ParameterGroup=Parameters,Parameter=K" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k16],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J16],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1643],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J16],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1644],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J17],ParameterGroup=Parameters,Parameter=K" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k17],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J17],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1742],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J17],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1744],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J18]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J18],ParameterGroup=Parameters,Parameter=K" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k18],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J18],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g186],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J18],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1851],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J19]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J19],ParameterGroup=Parameters,Parameter=K" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k19],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J19],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g196],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J19],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1951],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J19],ParameterGroup=Parameters,Parameter=G3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1960],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J19],ParameterGroup=Parameters,Parameter=G4" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g1953],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J20],ParameterGroup=Parameters,Parameter=K" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k20],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J20],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g209],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J20],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g2065],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J21],ParameterGroup=Parameters,Parameter=K" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k21],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J21],ParameterGroup=Parameters,Parameter=G" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g2166],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J22],ParameterGroup=Parameters,Parameter=K" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k22],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J22],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g229],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J22],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g2259],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J23],ParameterGroup=Parameters,Parameter=K" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k23],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J23],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g239],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J23],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g2362],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J23],ParameterGroup=Parameters,Parameter=G3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g2361],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J24]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J24],ParameterGroup=Parameters,Parameter=K" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k24],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J24],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g2463],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J24],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g2464],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J25]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J25],ParameterGroup=Parameters,Parameter=K" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k25],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J25],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g2552],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J25],ParameterGroup=Parameters,Parameter=G2" value="0.25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g2556],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J25],ParameterGroup=Parameters,Parameter=G3" value="0.3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g2555],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J26f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J26f],ParameterGroup=Parameters,Parameter=K" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k26f],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J26f],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g26f16],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J26f],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g26f18],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J26f],ParameterGroup=Parameters,Parameter=G3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g26f15],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J26r]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J26r],ParameterGroup=Parameters,Parameter=K" value="0.005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k26r],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J26r],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g26r68],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J26r],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g26r30],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J27f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J27f],ParameterGroup=Parameters,Parameter=K" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k27f],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J27f],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g27f16],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J27f],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g27f68],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J27f],ParameterGroup=Parameters,Parameter=G3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g27f15],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J27r]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J27r],ParameterGroup=Parameters,Parameter=K" value="0.005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k27r],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J27r],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g27r69],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J27r],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g27r30],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J28f]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J28f],ParameterGroup=Parameters,Parameter=K" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k28f],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J28f],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g28f16],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J28f],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g28f69],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J28f],ParameterGroup=Parameters,Parameter=G3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g28f15],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J28r]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J28r],ParameterGroup=Parameters,Parameter=K" value="0.005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k28r],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J28r],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g28r70],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J28r],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g28r30],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J29]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J29],ParameterGroup=Parameters,Parameter=K" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k29],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J29],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g2916],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J29],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g2971],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J29],ParameterGroup=Parameters,Parameter=G3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g2915],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J30]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J30],ParameterGroup=Parameters,Parameter=K" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k30],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J30],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g301],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J30],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g3030],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J31]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J31],ParameterGroup=Parameters,Parameter=K" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k31],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J31],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g3172],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J31],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g3173],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J32]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J32],ParameterGroup=Parameters,Parameter=K" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k32],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J32],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g321],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J32],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g3274],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J33]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J33],ParameterGroup=Parameters,Parameter=K" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k33],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J33],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g332],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J33],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g3330],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J34],ParameterGroup=Parameters,Parameter=K" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k34],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J34],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g3472],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J34],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g3475],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J35]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J35],ParameterGroup=Parameters,Parameter=K" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k35],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J35],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g352],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J35],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g3576],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J36]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J36],ParameterGroup=Parameters,Parameter=K" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k36],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J36],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g3679],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J36],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g3677],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J37]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J37],ParameterGroup=Parameters,Parameter=K" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k37],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J37],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g3770],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J37],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g3773],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J38]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J38],ParameterGroup=Parameters,Parameter=K" value="0.7" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k38],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J38],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g3878],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J38],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g3812],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J38],ParameterGroup=Parameters,Parameter=G3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g3815],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J38],ParameterGroup=Parameters,Parameter=G4" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g3830],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J43]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J43],ParameterGroup=Parameters,Parameter=K" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k43],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J43],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g431],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J43],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g4384],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J44]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J44],ParameterGroup=Parameters,Parameter=K" value="0.045" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k44],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J44],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g442],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J44],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g4484],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J45]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J45],ParameterGroup=Parameters,Parameter=K" value="0.04" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k45],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J45],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g453],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J45],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g4584],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J46]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J46],ParameterGroup=Parameters,Parameter=K" value="0.03" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k46],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J46],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g4681],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J46],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g4677],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J47]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J47],ParameterGroup=Parameters,Parameter=K" value="0.03" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k47],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J47],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g4782],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J47],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g4777],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J48]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J48],ParameterGroup=Parameters,Parameter=K" value="0.03" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k48],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J48],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g4883],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J48],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g4877],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J50]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J50],ParameterGroup=Parameters,Parameter=K" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k50],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J50],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g501],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J50],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g5080],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J51]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J51],ParameterGroup=Parameters,Parameter=K" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k51],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J51],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g512],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J51],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g5180],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J52]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J52],ParameterGroup=Parameters,Parameter=K" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k52],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J52],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g523],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J52],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g5280],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J53]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J53],ParameterGroup=Parameters,Parameter=K" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k53],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J53],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g534],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J53],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g5380],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J54]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J54],ParameterGroup=Parameters,Parameter=K" value="0.005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k54],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J54],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g5410],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J54],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g5419],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J55]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J55],ParameterGroup=Parameters,Parameter=K" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k55],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J55],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g556],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J55],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g5586],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J56]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J56],ParameterGroup=Parameters,Parameter=K" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k56],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J56],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g5686],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J56],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g5687],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J57]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J57],ParameterGroup=Parameters,Parameter=K" value="0.005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k57],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J57],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g5710],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J57],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g5762],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J100]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J100],ParameterGroup=Parameters,Parameter=K" value="0.005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k100],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J100],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g10037],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J100],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g10051],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J100],ParameterGroup=Parameters,Parameter=G3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g100115],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J101]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J101],ParameterGroup=Parameters,Parameter=K" value="0.005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k101],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J101],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g10136],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J101],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g10151],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J101],ParameterGroup=Parameters,Parameter=G3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g101115],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J102]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J102],ParameterGroup=Parameters,Parameter=K" value="0.005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k102],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J102],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g10210],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J102],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g10251],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J102],ParameterGroup=Parameters,Parameter=G3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g102115],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J115]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J115],ParameterGroup=Parameters,Parameter=K" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k115],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J115],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g11565],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J115],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g115118],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J116]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J116],ParameterGroup=Parameters,Parameter=K" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[k116],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J116],ParameterGroup=Parameters,Parameter=G1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g116118],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Reactions[J116],ParameterGroup=Parameters,Parameter=G2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson&apos;s disease,Vector=Values[g11642],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_4"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_147"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_143"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_91"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_75"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_141"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="ModelValue_233"/>
      <StateTemplateVariable objectReference="ModelValue_234"/>
      <StateTemplateVariable objectReference="ModelValue_235"/>
      <StateTemplateVariable objectReference="ModelValue_236"/>
      <StateTemplateVariable objectReference="ModelValue_237"/>
      <StateTemplateVariable objectReference="ModelValue_238"/>
      <StateTemplateVariable objectReference="ModelValue_239"/>
      <StateTemplateVariable objectReference="ModelValue_240"/>
      <StateTemplateVariable objectReference="ModelValue_241"/>
      <StateTemplateVariable objectReference="ModelValue_242"/>
      <StateTemplateVariable objectReference="ModelValue_243"/>
      <StateTemplateVariable objectReference="ModelValue_244"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="Metabolite_95"/>
      <StateTemplateVariable objectReference="Metabolite_97"/>
      <StateTemplateVariable objectReference="Metabolite_99"/>
      <StateTemplateVariable objectReference="Metabolite_101"/>
      <StateTemplateVariable objectReference="Metabolite_103"/>
      <StateTemplateVariable objectReference="Metabolite_105"/>
      <StateTemplateVariable objectReference="Metabolite_107"/>
      <StateTemplateVariable objectReference="Metabolite_109"/>
      <StateTemplateVariable objectReference="Metabolite_111"/>
      <StateTemplateVariable objectReference="Metabolite_113"/>
      <StateTemplateVariable objectReference="Metabolite_115"/>
      <StateTemplateVariable objectReference="Metabolite_117"/>
      <StateTemplateVariable objectReference="Metabolite_119"/>
      <StateTemplateVariable objectReference="Metabolite_121"/>
      <StateTemplateVariable objectReference="Metabolite_123"/>
      <StateTemplateVariable objectReference="Metabolite_125"/>
      <StateTemplateVariable objectReference="Metabolite_127"/>
      <StateTemplateVariable objectReference="Metabolite_129"/>
      <StateTemplateVariable objectReference="Metabolite_131"/>
      <StateTemplateVariable objectReference="Metabolite_133"/>
      <StateTemplateVariable objectReference="Metabolite_135"/>
      <StateTemplateVariable objectReference="Metabolite_137"/>
      <StateTemplateVariable objectReference="Metabolite_139"/>
      <StateTemplateVariable objectReference="Metabolite_145"/>
      <StateTemplateVariable objectReference="Metabolite_149"/>
      <StateTemplateVariable objectReference="Metabolite_151"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="Compartment_5"/>
      <StateTemplateVariable objectReference="Compartment_7"/>
      <StateTemplateVariable objectReference="Compartment_9"/>
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
      <StateTemplateVariable objectReference="ModelValue_45"/>
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
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_105"/>
      <StateTemplateVariable objectReference="ModelValue_106"/>
      <StateTemplateVariable objectReference="ModelValue_107"/>
      <StateTemplateVariable objectReference="ModelValue_108"/>
      <StateTemplateVariable objectReference="ModelValue_109"/>
      <StateTemplateVariable objectReference="ModelValue_110"/>
      <StateTemplateVariable objectReference="ModelValue_111"/>
      <StateTemplateVariable objectReference="ModelValue_112"/>
      <StateTemplateVariable objectReference="ModelValue_113"/>
      <StateTemplateVariable objectReference="ModelValue_114"/>
      <StateTemplateVariable objectReference="ModelValue_115"/>
      <StateTemplateVariable objectReference="ModelValue_116"/>
      <StateTemplateVariable objectReference="ModelValue_117"/>
      <StateTemplateVariable objectReference="ModelValue_118"/>
      <StateTemplateVariable objectReference="ModelValue_119"/>
      <StateTemplateVariable objectReference="ModelValue_120"/>
      <StateTemplateVariable objectReference="ModelValue_121"/>
      <StateTemplateVariable objectReference="ModelValue_122"/>
      <StateTemplateVariable objectReference="ModelValue_123"/>
      <StateTemplateVariable objectReference="ModelValue_124"/>
      <StateTemplateVariable objectReference="ModelValue_125"/>
      <StateTemplateVariable objectReference="ModelValue_126"/>
      <StateTemplateVariable objectReference="ModelValue_127"/>
      <StateTemplateVariable objectReference="ModelValue_128"/>
      <StateTemplateVariable objectReference="ModelValue_129"/>
      <StateTemplateVariable objectReference="ModelValue_130"/>
      <StateTemplateVariable objectReference="ModelValue_131"/>
      <StateTemplateVariable objectReference="ModelValue_132"/>
      <StateTemplateVariable objectReference="ModelValue_133"/>
      <StateTemplateVariable objectReference="ModelValue_134"/>
      <StateTemplateVariable objectReference="ModelValue_135"/>
      <StateTemplateVariable objectReference="ModelValue_136"/>
      <StateTemplateVariable objectReference="ModelValue_137"/>
      <StateTemplateVariable objectReference="ModelValue_138"/>
      <StateTemplateVariable objectReference="ModelValue_139"/>
      <StateTemplateVariable objectReference="ModelValue_140"/>
      <StateTemplateVariable objectReference="ModelValue_141"/>
      <StateTemplateVariable objectReference="ModelValue_142"/>
      <StateTemplateVariable objectReference="ModelValue_143"/>
      <StateTemplateVariable objectReference="ModelValue_144"/>
      <StateTemplateVariable objectReference="ModelValue_145"/>
      <StateTemplateVariable objectReference="ModelValue_146"/>
      <StateTemplateVariable objectReference="ModelValue_147"/>
      <StateTemplateVariable objectReference="ModelValue_148"/>
      <StateTemplateVariable objectReference="ModelValue_149"/>
      <StateTemplateVariable objectReference="ModelValue_150"/>
      <StateTemplateVariable objectReference="ModelValue_151"/>
      <StateTemplateVariable objectReference="ModelValue_152"/>
      <StateTemplateVariable objectReference="ModelValue_153"/>
      <StateTemplateVariable objectReference="ModelValue_154"/>
      <StateTemplateVariable objectReference="ModelValue_155"/>
      <StateTemplateVariable objectReference="ModelValue_156"/>
      <StateTemplateVariable objectReference="ModelValue_157"/>
      <StateTemplateVariable objectReference="ModelValue_158"/>
      <StateTemplateVariable objectReference="ModelValue_159"/>
      <StateTemplateVariable objectReference="ModelValue_160"/>
      <StateTemplateVariable objectReference="ModelValue_161"/>
      <StateTemplateVariable objectReference="ModelValue_162"/>
      <StateTemplateVariable objectReference="ModelValue_163"/>
      <StateTemplateVariable objectReference="ModelValue_164"/>
      <StateTemplateVariable objectReference="ModelValue_165"/>
      <StateTemplateVariable objectReference="ModelValue_166"/>
      <StateTemplateVariable objectReference="ModelValue_167"/>
      <StateTemplateVariable objectReference="ModelValue_168"/>
      <StateTemplateVariable objectReference="ModelValue_169"/>
      <StateTemplateVariable objectReference="ModelValue_170"/>
      <StateTemplateVariable objectReference="ModelValue_171"/>
      <StateTemplateVariable objectReference="ModelValue_172"/>
      <StateTemplateVariable objectReference="ModelValue_173"/>
      <StateTemplateVariable objectReference="ModelValue_174"/>
      <StateTemplateVariable objectReference="ModelValue_175"/>
      <StateTemplateVariable objectReference="ModelValue_176"/>
      <StateTemplateVariable objectReference="ModelValue_177"/>
      <StateTemplateVariable objectReference="ModelValue_178"/>
      <StateTemplateVariable objectReference="ModelValue_179"/>
      <StateTemplateVariable objectReference="ModelValue_180"/>
      <StateTemplateVariable objectReference="ModelValue_181"/>
      <StateTemplateVariable objectReference="ModelValue_182"/>
      <StateTemplateVariable objectReference="ModelValue_183"/>
      <StateTemplateVariable objectReference="ModelValue_184"/>
      <StateTemplateVariable objectReference="ModelValue_185"/>
      <StateTemplateVariable objectReference="ModelValue_186"/>
      <StateTemplateVariable objectReference="ModelValue_187"/>
      <StateTemplateVariable objectReference="ModelValue_188"/>
      <StateTemplateVariable objectReference="ModelValue_189"/>
      <StateTemplateVariable objectReference="ModelValue_190"/>
      <StateTemplateVariable objectReference="ModelValue_191"/>
      <StateTemplateVariable objectReference="ModelValue_192"/>
      <StateTemplateVariable objectReference="ModelValue_193"/>
      <StateTemplateVariable objectReference="ModelValue_194"/>
      <StateTemplateVariable objectReference="ModelValue_195"/>
      <StateTemplateVariable objectReference="ModelValue_196"/>
      <StateTemplateVariable objectReference="ModelValue_197"/>
      <StateTemplateVariable objectReference="ModelValue_198"/>
      <StateTemplateVariable objectReference="ModelValue_199"/>
      <StateTemplateVariable objectReference="ModelValue_200"/>
      <StateTemplateVariable objectReference="ModelValue_201"/>
      <StateTemplateVariable objectReference="ModelValue_202"/>
      <StateTemplateVariable objectReference="ModelValue_203"/>
      <StateTemplateVariable objectReference="ModelValue_204"/>
      <StateTemplateVariable objectReference="ModelValue_205"/>
      <StateTemplateVariable objectReference="ModelValue_206"/>
      <StateTemplateVariable objectReference="ModelValue_207"/>
      <StateTemplateVariable objectReference="ModelValue_208"/>
      <StateTemplateVariable objectReference="ModelValue_209"/>
      <StateTemplateVariable objectReference="ModelValue_210"/>
      <StateTemplateVariable objectReference="ModelValue_211"/>
      <StateTemplateVariable objectReference="ModelValue_212"/>
      <StateTemplateVariable objectReference="ModelValue_213"/>
      <StateTemplateVariable objectReference="ModelValue_214"/>
      <StateTemplateVariable objectReference="ModelValue_215"/>
      <StateTemplateVariable objectReference="ModelValue_216"/>
      <StateTemplateVariable objectReference="ModelValue_217"/>
      <StateTemplateVariable objectReference="ModelValue_218"/>
      <StateTemplateVariable objectReference="ModelValue_219"/>
      <StateTemplateVariable objectReference="ModelValue_220"/>
      <StateTemplateVariable objectReference="ModelValue_221"/>
      <StateTemplateVariable objectReference="ModelValue_222"/>
      <StateTemplateVariable objectReference="ModelValue_223"/>
      <StateTemplateVariable objectReference="ModelValue_224"/>
      <StateTemplateVariable objectReference="ModelValue_225"/>
      <StateTemplateVariable objectReference="ModelValue_226"/>
      <StateTemplateVariable objectReference="ModelValue_227"/>
      <StateTemplateVariable objectReference="ModelValue_228"/>
      <StateTemplateVariable objectReference="ModelValue_229"/>
      <StateTemplateVariable objectReference="ModelValue_230"/>
      <StateTemplateVariable objectReference="ModelValue_231"/>
      <StateTemplateVariable objectReference="ModelValue_232"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0.5 1 0.1 0.05 0.2 0.5 0.05 0.5 0.5 0.2 1 2 0.025 0.2 0.2 0.35 1.5 0.1 0.5 0.35 1 0.02 0.3 0.05 0.1 1.3 0.05 0.025 0.013 0.01 0.35 0.5 0.1 0.1 2.5 10 0.5 1.5 0.2 0.3 0.2 0.1 0.35 0.35 0.013 0.2 0.025 0.35 0.02 5.4e-05 -0.000191 -2.475e-05 -2.5e-06 -1e-05 1.8e-07 1.8e-07 -9.000000000000002e-06 -1.925e-05 -5.4e-06 -5.4e-06 -5.4e-06 0.2 2 0.05 0.4 0.6 5 0.5 0.01 0.1 2 2 1.5 0.5 1.5 1.5 1.5 1 3 0.8 0.8 1.5 1 0.6 0.5 1 1.5 2.5 1 1 1 1 1 1 0.5 1 1 1 0.03 1 0.25 0.5 0.5 0.5 -1 0.01 1 1 0.007 0.9 -0.01 -0.01 -0.01 1 1 1 1 0.5 1 1 1 0.03 1 1 1 0.001 1 1 0.001 1 1 0.05 1 1 0.05 1 1 0.1 -0.01 -0.01 1 1 1 3 1 1 0.2 -0.1 1 1 1 0.0001 1 1 0.0001 1 1 0.02 1 1 0.01 1 1 1 1 0.1 1 1 0.1 1 0.5 1 1 0.5 1 1 1 1 1 1 0.05 1 0.3 0.25 0.05 1 1 1 0.005 1 1 0.05 1 1 1 0.005 1 1 0.05 1 1 1 0.005 1 1 0.05 1 1 1 0.001 1 1 0.05 1 1 0.001 1 0.1 0.1 0.1 0.05 1 0.001 1 1 0.05 1 1 0.001 1 0.1 0.1 0.1 0.05 1 0.05 -0.1 -0.1 -0.1 -0.05 1 1 0.05 1 1 0.7 -0.01 -0.01 -0.01 1 1 1 1 0.05 1 1 0.045 1 1 0.04 1 1 0.03 -0.1 -0.1 -0.1 -0.05 1 1 0.03 -0.1 -0.1 -0.1 -0.05 1 1 0.03 -0.1 -0.1 -0.1 -0.05 1 1 0.05 1 1 0.05 1 1 0.05 1 1 0.05 1 1 0.005 1 1 0.05 1 1 0.05 1 1 0.005 1 1 0.005 1 1 1 0.005 1 1 1 0.005 1 1 1 0.5 1 1 1 0.5 1 1 
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
        <Parameter name="Resolution" type="unsignedFloat" value="1e-09"/>
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
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="1000"/>
        <Parameter name="StepSize" type="float" value="0.1"/>
        <Parameter name="Duration" type="float" value="100"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
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
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
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
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
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
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-06"/>
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
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-12"/>
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
        <Parameter name="ConvergenceTolerance" type="float" value="1e-06"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="1e-06"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
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
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Fig 15" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Fibril]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Fibril],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Lewy_body]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Lewy_body],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Protofibril]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Sass2009 - Approach to an α-synuclein-based BST model of Parkinson's disease,Vector=Compartments[Neuronal cytosol],Vector=Metabolites[Protofibril],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
</COPASI>
