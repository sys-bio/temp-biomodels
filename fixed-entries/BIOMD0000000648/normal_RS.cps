<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.19 (Build 140) (http://www.copasi.org) at 2017-09-18 09:37:05 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="19" versionDevel="140" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="Function for freeEGFR degradation" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-15T10:56:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k3*fEGFR/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_254" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_262" name="fEGFR" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_264" name="k3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for APC and Axin phosphorylation (in compound)" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-15T10:43:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k32a*APCAxinGSK3B/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="APCAxinGSK3B" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_268" name="Cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_267" name="k32a" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="APC_Axin complex formation" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-15T10:44:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k33a1*Axin*APC-k33a2*APCAxin)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="APC" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_274" name="APCAxin" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_273" name="Axin" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_272" name="Cell" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_271" name="k33a1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="k33a2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for pAPC_pAxin_GSK3b_bCatenin complex formation" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-15T10:53:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k341*pAPCpAxinGSK3B*BCatenin-k342*pAPCpAxinGSK3BBCatenin)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_286" name="BCatenin" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_285" name="Cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_284" name="k341" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="k342" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="pAPCpAxinGSK3B" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_281" name="pAPCpAxinGSK3BBCatenin" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for APC and Axin dephosphorylation (in compound)" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-15T10:42:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k32b*pAPCpAxinGSK3B/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_306" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_305" name="k32b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="pAPCpAxinGSK3B" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for PI3K dephosphorylation" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-15T10:53:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k19c*pPI3K/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_319" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_318" name="k19c" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="pPI3K" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for Axin degradation" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-15T11:02:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k33b*Axin/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_327" name="Axin" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_326" name="Cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_325" name="k33b" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for P90Rsk dephosphorylation" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-15T10:49:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k18a*pP90Rsk/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_341" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_340" name="k18a" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="pP90Rsk" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for bCatenin phosphorylation (in compound)" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-15T10:46:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k35*pAPCpAxinGSK3BBCatenin/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_360" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_359" name="k35" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="pAPCpAxinGSK3BBCatenin" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for pAPC_pAxin_GSK3b_pbCatenin complex disassembly" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-15T10:53:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k36*pAPCpAxinGSK3BpBCatenin/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_363" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_362" name="k36" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="pAPCpAxinGSK3BpBCatenin" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for APC_bCatenin complex formation" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-15T11:02:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k37a1*APC*BCatenin-k37a2*APCBCatenin)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_369" name="APC" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_368" name="APCBCatenin" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_367" name="BCatenin" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_366" name="Cell" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_365" name="k37a1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_364" name="k37a2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for SOS dephosphorylation" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-15T10:47:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k6a*pSOS/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_380" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_379" name="k6a" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_378" name="pSOS" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for C3G dephosphorylation" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-15T10:59:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k23b*pC3G/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_393" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_392" name="k23b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_391" name="pC3G" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Function for pbCatenin degradation" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-15T10:53:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k41*pBCatenin/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_410" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_409" name="k41" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="pBCatenin" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_99" name="Function for bCatenin degradation" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-15T11:02:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k37c*BCatenin/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_515" name="BCatenin" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_514" name="Cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_513" name="k37c" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_103" name="Function for EGFR dephosphorylation_1" type="UserDefined" reversible="unspecified">
      <Expression>
        V1/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_533" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_534" name="V1" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_104" name="Function for Raf1 dephosphorylation (RafPPtase modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat10a*RafPPtase*pRaf1/(pRaf1+Km10a)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_540" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_541" name="Kcat10a" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_542" name="Km10a" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_543" name="RafPPtase" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_544" name="pRaf1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_105" name="Function for Raf1 dephosphorylation (pAkt modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat10b*pAkt*pRaf1/(pRaf1+Km10b)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_550" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_551" name="Kcat10b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_552" name="Km10b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_553" name="pAkt" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_554" name="pRaf1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_106" name="Function for MEK phosphorylation (pbRaf modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat11a*pBRaf*MEK/(MEK+Km11a)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_560" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_561" name="Kcat11a" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_562" name="Km11a" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_563" name="MEK" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_564" name="pBRaf" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_107" name="Function for MEK phosphorylation (pRaf1, pRKIP and RKIP modifiers)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        k11b1*pRaf1*MEK/(1+((RKIP-pRKIP)/k11b2)^2)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_572" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_573" name="MEK" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_574" name="RKIP" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_575" name="k11b1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_576" name="k11b2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_577" name="pRKIP" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_578" name="pRaf1" order="6" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_108" name="Function for MEK dephosphorylation (PP2A modifer)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat12*PP2A*pMEK/(pMEK+Km12)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_537" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_571" name="Kcat12" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_586" name="Km12" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_587" name="PP2A" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_588" name="pMEK" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_109" name="Function for ERK phosphorylation (pMEK modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat13*pMEK*ERK/(ERK+Km13)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_594" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_595" name="ERK" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_596" name="Kcat13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_597" name="Km13" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_598" name="pMEK" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_110" name="Function for ERK dephosphorylation (PP2A modifer)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat14*PP2A*pERK/(pERK+Km14)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_604" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_605" name="Kcat14" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_606" name="Km14" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_607" name="PP2A" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_608" name="pERK" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_111" name="Function for RKIP phosphorylation (pERK modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        k15a*pERK*(RKIP-pRKIP)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_614" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_615" name="RKIP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_616" name="k15a" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_617" name="pERK" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_618" name="pRKIP" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_112" name="Function for RKIP dephosphorylation_1" type="UserDefined" reversible="unspecified">
      <Expression>
        V15b*pRKIP/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_532" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_538" name="V15b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_624" name="pRKIP" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_113" name="Function for RKIP degradation_1" type="UserDefined" reversible="unspecified">
      <Expression>
        k15c*RKIP/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_628" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_629" name="RKIP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_630" name="k15c" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_114" name="Function for bRaf phosphorylation (pRas modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat16a*pRas*BRaf/(BRaf+Km16a)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_636" name="BRaf" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_637" name="Cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_638" name="Kcat16a" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_639" name="Km16a" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_640" name="pRas" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_115" name="Function for bRaf phosphorylation (pRap1 modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat16b*pRap1*BRaf/(BRaf+Km16b)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_646" name="BRaf" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_647" name="Cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_648" name="Kcat16b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_649" name="Km16b" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_650" name="pRap1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_116" name="Function for P90Rsk phosphorylation (pERK modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat18b*pERK*P90Rsk/(P90Rsk+Km18b)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_570" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_660" name="Kcat18b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_661" name="Km18b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_662" name="P90Rsk" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_663" name="pERK" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_117" name="Function for PI3K phosphorylation (boundEGFR modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat19a*bEGFR*PI3K/(PI3K+Km19a)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_669" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_670" name="Kcat19a" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_671" name="Km19a" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_672" name="PI3K" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_673" name="bEGFR" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_118" name="Function for PI3K phosphorylation (pRas modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat19b*pRas*PI3K/(PI3K+Km19b)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_679" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_680" name="Kcat19b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_681" name="Km19b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_682" name="PI3K" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_683" name="pRas" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_119" name="Function for EGFR binding_1" type="UserDefined" reversible="true">
      <Expression>
        (k21*EGF*fEGFR-k22*bEGFR)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_693" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_694" name="EGF" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_695" name="bEGFR" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_696" name="fEGFR" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_697" name="k21" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_698" name="k22" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_120" name="Function for PIP2 phosphorylated to PIP3_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat20*pPI3K*PIP2/(PIP2+Km20)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_539" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_705" name="Kcat20" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_706" name="Km20" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_707" name="PIP2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_708" name="pPI3K" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_121" name="Function for PIP3 dephosphorylated to PIP2_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat21*PTEN*PIP3/(PIP3+Km21)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_714" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_715" name="Kcat21" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_716" name="Km21" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_717" name="PIP3" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_718" name="PTEN" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_122" name="Function for Akt phosphorylation (PIP3 modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat22a*PIP3*Akt/(Akt+Km22a)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_724" name="Akt" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_725" name="Cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_726" name="Kcat22a" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_727" name="Km22a" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_728" name="PIP3" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_123" name="Function for Akt dephosphorylation _1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat22b*pAkt/(Km22b+pAkt)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_689" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_734" name="Kcat22b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_735" name="Km22b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_736" name="pAkt" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_124" name="Function for C3G phosphorylation (boundEGFR modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat23a*bEGFR*C3G/(C3G+Km23a)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_742" name="C3G" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_743" name="Cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_744" name="Kcat23a" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_745" name="Km23a" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_746" name="bEGFR" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_125" name="Function for Rap1 phosphorylation (pC3G modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat24*pC3G*Rap1/(Rap1+Km24)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_741" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_756" name="Kcat24" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_757" name="Km24" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_758" name="Rap1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_759" name="pC3G" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_126" name="Function for Rap1 dephosphorylation (Rap1_GAP modifer)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat25*Rap1Gap*pRap1/(pRap1+Km25)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_765" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_766" name="Kcat25" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_767" name="Km25" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_768" name="Rap1Gap" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_769" name="pRap1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_127" name="Function for PKCD synthesis_1" type="UserDefined" reversible="unspecified">
      <Expression>
        V26a/(1+(GSK3B/k26a)^2.5)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_531" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_775" name="GSK3B" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_776" name="V26a" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_777" name="k26a" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_128" name="Function for PKCD degradation_1" type="UserDefined" reversible="unspecified">
      <Expression>
        k26b*PKCD/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_634" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_782" name="PKCD" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_783" name="k26b" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_129" name="Function for GSK3b phosphorylation (pERK modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat27a*GSK3B*pERK/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_788" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_789" name="GSK3B" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_790" name="Kcat27a" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_791" name="pERK" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_130" name="Function for GSK3b phosphorylation (pAkt modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat27b*GSK3B*pAkt/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_796" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_797" name="GSK3B" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_798" name="Kcat27b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_799" name="pAkt" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_131" name="Function for GSK3b synthesis_1" type="UserDefined" reversible="unspecified">
      <Expression>
        k27c*RKIP/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_787" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_804" name="RKIP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_805" name="k27c" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_132" name="Function for GSK3b dephosphorylation_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat27d*pGSK3B/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_809" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_810" name="Kcat27d" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_811" name="pGSK3B" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_133" name="Function for Dsh activation_1" type="UserDefined" reversible="unspecified">
      <Expression>
        k28*Dshi*W/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_816" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_817" name="Dshi" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_818" name="W" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_819" name="k28" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_134" name="Function for Dsh deactivation_1" type="UserDefined" reversible="unspecified">
      <Expression>
        k29*Dsha/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_815" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_824" name="Dsha" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_825" name="k29" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_135" name="Function for APC_Axin_GSK3b complex disassembly (Dsha modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        k30*Dsha*APCAxinGSK3B/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_830" name="APCAxinGSK3B" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_829" name="Cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_835" name="Dsha" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_836" name="k30" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_136" name="Function for APC_Axin_GSK3b complex formation_1" type="UserDefined" reversible="true">
      <Expression>
        (k311*GSK3B*APCAxin-k312*APCAxinGSK3B)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_843" name="APCAxin" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_844" name="APCAxinGSK3B" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_845" name="Cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_846" name="GSK3B" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_847" name="k311" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_848" name="k312" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_137" name="Function for Axin synthesis_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (k33c1+k33c2*(TCFBCatenin+BCatenin))/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_752" name="BCatenin" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_863" name="Cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_862" name="TCFBCatenin" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_861" name="k33c1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_873" name="k33c2" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_138" name="Function for bCatenin synthesis_1" type="UserDefined" reversible="unspecified">
      <Expression>
        V37b/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_656" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_841" name="V37b" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_139" name="Function for bCatenin_TCF complex binding_1" type="UserDefined" reversible="true">
      <Expression>
        (k381*BCatenin*TCF-k382*TCFBCatenin)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_905" name="BCatenin" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_906" name="Cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_907" name="TCF" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_908" name="TCFBCatenin" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_909" name="k381" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_910" name="k382" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_140" name="Function for X synthesis_1" type="UserDefined" reversible="unspecified">
      <Expression>
        k39*TCFBCatenin^2/(Km39^2+TCFBCatenin^2)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_896" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_897" name="Km39" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_917" name="TCFBCatenin" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_918" name="k39" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_141" name="Function for boundEGFR degradation_1" type="UserDefined" reversible="unspecified">
      <Expression>
        k4*bEGFR/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_635" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_923" name="bEGFR" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_924" name="k4" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_142" name="Function for X degradation_1" type="UserDefined" reversible="unspecified">
      <Expression>
        k40*X/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_928" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_929" name="X" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_930" name="k40" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_143" name="Function for SOS phosphorylation (PKCD. pERK and boundEGFR modifiers) _1" type="UserDefined" reversible="unspecified">
      <Expression>
        (k51*bEGFR+k52+k53*PKCD)/(1+pERK/k54)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_942" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_943" name="PKCD" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_944" name="bEGFR" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_945" name="k51" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_946" name="k52" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_947" name="k53" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_948" name="k54" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_949" name="pERK" order="7" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_144" name="Function for SOS dephosphorylation (pP90Rsk modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat6b*pP90Rsk*pSOS/(pSOS+Km6b)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_895" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_959" name="Kcat6b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_960" name="Km6b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_961" name="pP90Rsk" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_962" name="pSOS" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_145" name="Function for Ras phosphorylation (pSOS modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat7*pSOS*Ras/(Ras+Km7)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_968" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_969" name="Kcat7" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_970" name="Km7" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_971" name="Ras" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_972" name="pSOS" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_146" name="Function for Ras synthesis_1" type="UserDefined" reversible="unspecified">
      <Expression>
        V8a/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_940" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_936" name="V8a" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_147" name="Function for Ras dephosphorylation (Ras_Gap modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat8b*RasGap*pRas/(pRas+Km8b)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_982" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_983" name="Kcat8b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_984" name="Km8b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_985" name="RasGap" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_986" name="pRas" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_148" name="Function for Raf1 phosphorylation (pRas modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat9a*pRas*Raf1/(Raf1+Km9a)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_992" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_993" name="Kcat9a" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_994" name="Km9a" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_995" name="Raf1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_996" name="pRas" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_149" name="Function for Raf1 phosphorylation (X modifier)_1" type="UserDefined" reversible="unspecified">
      <Expression>
        k9b*W*X*Raf1/(Km9b+Raf1)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1003" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1004" name="Km9b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1005" name="Raf1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1006" name="W" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_1007" name="X" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1008" name="k9b" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_150" name="function for bRaf dephosphorylation _1" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat17a*RafPPtase*pBRaf/(Km17a+RafPPtase)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1002" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1015" name="Kcat17a" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1016" name="Km17a" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1017" name="RafPPtase" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1018" name="pBRaf" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_151" name="function for bRaf dephosphorylation _2" type="UserDefined" reversible="unspecified">
      <Expression>
        Kcat17b*pBRaf*pAkt/(Km17b+pBRaf)/Cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1024" name="Cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1025" name="Kcat17b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1026" name="Km17b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1027" name="pAkt" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1028" name="pBRaf" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_4" name="Padala2017- ERK, PI3K/Akt and Wnt signalling network (normal)" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.022140857e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_4">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043408"/>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0051896"/>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0060828"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <bqmodel:isDerivedFrom>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000033"/>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000149"/>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000623"/>
      </rdf:Bag>
    </bqmodel:isDerivedFrom>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/21391741"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/mamo/MAMO_0000046"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/28367561"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-14T10:34:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>efairbanks@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Fairbanks</vCard:Family>
                <vCard:Given>Emma</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-14T10:34:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000165"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.pathway/map04010"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.pathway/map04151"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.pathway/map04310"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1708290005"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000648"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="Cell" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-18T10:32:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005623"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_1" name="APC" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P25054"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="APC_Axin" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15169"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P25054"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="APC_Axin_GSK3b" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15169"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P25054"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P49841"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="APC_bCatenin" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P25054"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P35222"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="Akt" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P31749"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="Axin" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15169"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="bCatenin" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P35222"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="bRaf" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P15056"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="C3G" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q13905"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Dsha" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O14640"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="Dshi" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O14640"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="EGF" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01133"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="ERK" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P27361"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="GSK3b" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P49841"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="MEK" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q02750"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="P90Rsk" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q15418"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="PI3K" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/omit/0027264"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="PIP2" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/0018348"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="PIP3" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/0016618"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="PKCD" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q05655"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="PP2A" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P67775"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="PTEN" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P60484"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="RKIP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30086"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="Raf1" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04049"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="RafPPtase" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P67775"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="Rap1" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P62834"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="Rap1_Gap" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_53">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47736"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="Ras" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01112"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="Ras_Gap" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_57">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P20936"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="SOS" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_59">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07889"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="TCF" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_61">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9UJU2"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="bCatenin_TCF" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_63">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P35222"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9UJU2"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="X" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-14T10:57:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_67" name="boundEGFR" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_67">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00533"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01133"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_69" name="freeEGFR" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_69">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00533"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_71" name="pAPC_pAxin_GSK3b" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_71">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15169"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P25054"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P49841"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_73" name="pAPC_pAxin_GSK3b_bCatenin" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_73">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15169"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P25054"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P35222"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P49841"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_75" name="pAPC_pAxin_GSK3b_pbCatenin" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_75">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15169"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P25054"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P35222"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P49841"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_77" name="pAkt" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_77">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P31749"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_79" name="pbCatenin" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_79">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P35222"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_81" name="pbRaf" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_81">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P15056"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_83" name="pC3G" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_83">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01024"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_85" name="pEGFR" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_85">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00533"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_87" name="pERK" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_87">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P28482"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_89" name="pGSK3b" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_89">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P49841"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_91" name="pMEK" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_91">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q02750"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_93" name="pP90Rsk" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_93">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q15418"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_95" name="pPI3K" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_95">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/omit/0027264"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_97" name="pRKIP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_97">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30086"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_99" name="pRaf1" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_99">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04049"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_101" name="pRap1" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_101">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P62834"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_103" name="pRas" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_103">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P62070"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_105" name="pSOS" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_105">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bao/0002007"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07889"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_107" name="null" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Kcat10a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Kcat10b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="Kcat11a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="Kcat12" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="Kcat13" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Kcat14" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="Kcat16a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="Kcat16b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="Kcat17a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="Kcat17b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="Kcat18b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="Kcat19a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="Kcat19b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="Kcat20" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="Kcat21" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="Kcat22a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="Kcat22b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="Kcat23a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="Kcat24" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="Kcat25" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="Kcat27a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="Kcat27b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="Kcat27d" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="Kcat6b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="Kcat7" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="Kcat8b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="Kcat9a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="Km10a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="Km10b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="Km11a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="Km12" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="Km13" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="Km14" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="Km16a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="Km16b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="Km17a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="Km17b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="Km18b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="Km19a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="Km19b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="Km20" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_41" name="Km21" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_42" name="Km22a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="Km22b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_44" name="Km23a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_45" name="Km24" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_46" name="Km25" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="Km39" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_48" name="Km6b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_49" name="Km7" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_50" name="Km8b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_51" name="Km9a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_52" name="Km9b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_53" name="V1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_54" name="V15b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_55" name="V26a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_56" name="V37b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_57" name="V8a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_58" name="W" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_59" name="k11b1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_60" name="k11b2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_61" name="k15a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_62" name="k15c" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_63" name="k18a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_64" name="k19c" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_65" name="k21" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_66" name="k22" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_67" name="k23b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_68" name="k26a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_69" name="k26b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_70" name="k27c" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_71" name="k28" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_72" name="k29" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_73" name="k3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_74" name="k30" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_75" name="k311" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_76" name="k312" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_77" name="k32a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_78" name="k32b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_79" name="k33a1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_80" name="k33a2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_81" name="k33b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_82" name="k33c1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_83" name="k33c2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_84" name="k341" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_85" name="k342" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_86" name="k35" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_87" name="k36" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_88" name="k37a1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_89" name="k37a2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_90" name="k37c" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_91" name="k381" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_92" name="k382" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_93" name="k39" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_94" name="k4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_95" name="k40" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_96" name="k41" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_97" name="k51" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_98" name="k52" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_99" name="k53" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_100" name="k54" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_101" name="k6a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_102" name="k9b" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="EGFR dephosphorylation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0038004"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5113" name="V1" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_103" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_533">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Raf1 dephosphorylation (RafPPtase modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000185"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5114" name="Kcat10a" value="0.12633"/>
          <Constant key="Parameter_5115" name="Km10a" value="1061.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_104" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Raf1 dephosphorylation (pAkt modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0051390"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5116" name="Kcat10b" value="15.1212"/>
          <Constant key="Parameter_5117" name="Km10b" value="119355"/>
        </ListOfConstants>
        <KineticLaw function="Function_105" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_550">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="MEK phosphorylation (pbRaf modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.11.1"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GI:0004709"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000186"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
          <Product metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5118" name="Kcat11a" value="185.76"/>
          <Constant key="Parameter_5119" name="Km11a" value="4.7684e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_106" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_561">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_564">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="MEK phosphorylation (pRaf1, pRKIP and RKIP modifiers)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.11.1"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000186"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0004709"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_97" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_99" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_97" stoichiometry="1"/>
          <Product metabolite="Metabolite_99" stoichiometry="1"/>
          <Product metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5120" name="k11b1" value="1.1167e-05"/>
          <Constant key="Parameter_5108" name="k11b2" value="120"/>
        </ListOfConstants>
        <KineticLaw function="Function_107" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_572">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_573">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_574">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_575">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_576">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_578">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="MEK dephosphorylation (PP2A modifer)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0051389"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5109" name="Kcat12" value="2.8324"/>
          <Constant key="Parameter_5110" name="Km12" value="518750"/>
        </ListOfConstants>
        <KineticLaw function="Function_108" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_586">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_587">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_588">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="ERK phosphorylation (pMEK modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.12.2"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000187"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0004708"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_91" stoichiometry="1"/>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5111" name="Kcat13" value="9.8537"/>
          <Constant key="Parameter_5112" name="Km13" value="1.0073e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_109" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_594">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_595">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_597">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_598">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="ERK dephosphorylation (PP2A modifer)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000188"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5082" name="Kcat14" value="8.8912"/>
          <Constant key="Parameter_5083" name="Km14" value="3.4965e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_110" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_604">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_605">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_606">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_607">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_608">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="RKIP phosphorylation (pERK modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
          <Product metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5084" name="k15a" value="1.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_111" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_614">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_615">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_616">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_617">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_618">
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="RKIP dephosphorylation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5085" name="V15b" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_112" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_532">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_624">
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="RKIP degradation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0030163"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5086" name="k15c" value="0.00193"/>
        </ListOfConstants>
        <KineticLaw function="Function_113" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_628">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_629">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_630">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="bRaf phosphorylation (pRas modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_103" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_103" stoichiometry="1"/>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5087" name="Kcat16a" value="0.8841"/>
          <Constant key="Parameter_5088" name="Km16a" value="62645"/>
        </ListOfConstants>
        <KineticLaw function="Function_114" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_636">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_637">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_638">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_639">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_640">
              <SourceParameter reference="Metabolite_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="bRaf phosphorylation (pRap1 modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_101" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_101" stoichiometry="1"/>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5089" name="Kcat16b" value="0.8841"/>
          <Constant key="Parameter_5090" name="Km16b" value="62464.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_115" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_646">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_647">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_648">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_649">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_650">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="P90Rsk dephosphorylation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5091" name="k18a" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="P90Rsk phosphorylation (pERK modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
          <Product metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5092" name="Kcat18b" value="0.02137"/>
          <Constant key="Parameter_5093" name="Km18b" value="763523"/>
        </ListOfConstants>
        <KineticLaw function="Function_116" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_570">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_660">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_661">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_662">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_663">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="PI3K phosphorylation (boundEGFR modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
          <Product metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5094" name="Kcat19a" value="10.6737"/>
          <Constant key="Parameter_5095" name="Km19a" value="184912"/>
        </ListOfConstants>
        <KineticLaw function="Function_117" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_669">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_670">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_671">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_672">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_673">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="PI3K phosphorylation (pRas modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5096" name="Kcat19b" value="0.07711"/>
          <Constant key="Parameter_5097" name="Km19b" value="272056"/>
        </ListOfConstants>
        <KineticLaw function="Function_118" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_679">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_680">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="Metabolite_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="PI3K dephosphorylation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5098" name="k19c" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="EGFR binding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070851"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5099" name="k21" value="2.18503e-05"/>
          <Constant key="Parameter_5100" name="k22" value="0.121008"/>
        </ListOfConstants>
        <KineticLaw function="Function_119" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_693">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_694">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_695">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_696">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_697">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_698">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="PIP2 phosphorylated to PIP3" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_95" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_95" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5101" name="Kcat20" value="4"/>
          <Constant key="Parameter_5102" name="Km20" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_120" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_705">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_706">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_707">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_708">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="PIP3 dephosphorylated to PIP2" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5103" name="Kcat21" value="5.5"/>
          <Constant key="Parameter_5104" name="Km21" value="0.08"/>
        </ListOfConstants>
        <KineticLaw function="Function_121" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_714">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_715">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_716">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_717">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_718">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="Akt phosphorylation (PIP3 modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5105" name="Kcat22a" value="0.33"/>
          <Constant key="Parameter_5106" name="Km22a" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_122" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_724">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_725">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_726">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_727">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_728">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="Akt dephosphorylation " reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5107" name="Kcat22b" value="48.667"/>
          <Constant key="Parameter_5121" name="Km22b" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_123" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_689">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_734">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_735">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_736">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="C3G phosphorylation (boundEGFR modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5122" name="Kcat23a" value="694.73"/>
          <Constant key="Parameter_5123" name="Km23a" value="6.0861e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_124" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_742">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_743">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_744">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_745">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_746">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="C3G dephosphorylation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5124" name="k23b" value="2.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="Rap1 phosphorylation (pC3G modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
          <Product metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5125" name="Kcat24" value="32.344"/>
          <Constant key="Parameter_5126" name="Km24" value="35954.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_125" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_741">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_756">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_757">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_758">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_759">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="Rap1 dephosphorylation (Rap1_GAP modifer)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5127" name="Kcat25" value="1509.4"/>
          <Constant key="Parameter_5128" name="Km25" value="1.4324e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_126" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_765">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_766">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_767">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_768">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_769">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="PKCD synthesis" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0009058"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5129" name="V26a" value="0.00154"/>
          <Constant key="Parameter_5130" name="k26a" value="20"/>
        </ListOfConstants>
        <KineticLaw function="Function_127" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_775">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_776">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_777">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="PKCD degradation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0030163"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5131" name="k26b" value="0.000385"/>
        </ListOfConstants>
        <KineticLaw function="Function_128" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_634">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_782">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_783">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="GSK3b phosphorylation (pERK modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
          <Product metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5132" name="Kcat27a" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_129" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_788">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_789">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_790">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_791">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="GSK3b phosphorylation (pAkt modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
          <Product metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5133" name="Kcat27b" value="0.04596"/>
        </ListOfConstants>
        <KineticLaw function="Function_130" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_796">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_797">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_798">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_799">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="GSK3b synthesis" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0009058"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5134" name="k27c" value="0.00015"/>
        </ListOfConstants>
        <KineticLaw function="Function_131" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_787">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_804">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_805">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="GSK3b dephosphorylation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5135" name="Kcat27d" value="0.01541"/>
        </ListOfConstants>
        <KineticLaw function="Function_132" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_809">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_810">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_811">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="Dsh activation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0072376"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5136" name="W" value="0"/>
          <Constant key="Parameter_5137" name="k28" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_133" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_816">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_817">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_818">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_819">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="Dsh deactivation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:2000257"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5138" name="k29" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_134" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_815">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_824">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_825">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="freeEGFR degradation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0030163"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5139" name="k3" value="0.00125"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="APC_Axin_GSK3b complex disassembly (Dsha modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043624"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5140" name="k30" value="0.000833"/>
        </ListOfConstants>
        <KineticLaw function="Function_135" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_830">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_829">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_835">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_836">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="APC_Axin_GSK3b complex formation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005515"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5141" name="k311" value="0.001515"/>
          <Constant key="Parameter_5142" name="k312" value="0.01515"/>
        </ListOfConstants>
        <KineticLaw function="Function_136" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_843">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_844">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_845">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_846">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_847">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_848">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="APC and Axin phosphorylation (in compound)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5143" name="k32a" value="0.00445"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="APC and Axin dephosphorylation (in compound)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5144" name="k32b" value="0.002217"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="APC_Axin complex formation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005515"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5145" name="k33a1" value="0.01667"/>
          <Constant key="Parameter_5146" name="k33a2" value="0.8333"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="Axin degradation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0030163"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5147" name="k33b" value="0.002783"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="Axin synthesis" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0045727"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5148" name="k33c1" value="1.37e-06"/>
          <Constant key="Parameter_5149" name="k33c2" value="1.667e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_137" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_752">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_863">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_862">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_861">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_873">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="pAPC_pAxin_GSK3b_bCatenin complex formation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005515"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5150" name="k341" value="0.01667"/>
          <Constant key="Parameter_5151" name="k342" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="bCatenin phosphorylation (in compond)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5152" name="k35" value="3.433"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="pAPC_pAxin_GSK3b_pbCatenin complex disassembly" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043624"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5153" name="k36" value="3.433"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="APC_bCatenin complex formation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043624"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5159" name="k37a1" value="0.01667"/>
          <Constant key="Parameter_5158" name="k37a2" value="20"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="bCatenin synthesis" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0045727"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5157" name="V37b" value="0.00705"/>
        </ListOfConstants>
        <KineticLaw function="Function_138" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_656">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_841">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="bCatenin degradation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0030163"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5154" name="k37c" value="4.283e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_99" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_514">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_513">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="bCatenin_TCF complex binding" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005515"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5155" name="k381" value="0.01667"/>
          <Constant key="Parameter_5156" name="k382" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_139" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_905">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_906">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_907">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_908">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_909">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_910">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="X synthesis" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0009058"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5160" name="Km39" value="15"/>
          <Constant key="Parameter_5161" name="k39" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_140" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_896">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_897">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_917">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_918">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="boundEGFR degradation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0030163"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5164" name="k4" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_141" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_635">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_923">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_924">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="X degradation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0030163"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5163" name="k40" value="0.00025"/>
        </ListOfConstants>
        <KineticLaw function="Function_142" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_928">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_929">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_930">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="pbCatenin degradation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0030163"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5162" name="k41" value="0.00695"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="SOS phosphorylation (PKCD. pERK and boundEGFR modifiers) " reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
          <Product metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5165" name="k51" value="0.003465"/>
          <Constant key="Parameter_5166" name="k52" value="3.85e-05"/>
          <Constant key="Parameter_5167" name="k53" value="0.00028833"/>
          <Constant key="Parameter_5168" name="k54" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_143" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_942">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_943">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_944">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_945">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_946">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_947">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_948">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_949">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="SOS dephosphorylation" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5169" name="k6a" value="2.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Metabolite_105"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="SOS dephosphorylation (pP90Rsk modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_93" stoichiometry="1"/>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5170" name="Kcat6b" value="1611.97"/>
          <Constant key="Parameter_5171" name="Km6b" value="896896"/>
        </ListOfConstants>
        <KineticLaw function="Function_144" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_895">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_959">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_960">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_961">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_962">
              <SourceParameter reference="Metabolite_105"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="Ras phosphorylation (pSOS modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_105" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_105" stoichiometry="1"/>
          <Product metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5172" name="Kcat7" value="32.644"/>
          <Constant key="Parameter_5173" name="Km7" value="35954.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_145" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_968">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_969">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_970">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_971">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_972">
              <SourceParameter reference="Metabolite_105"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="Ras synthesis" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0045727"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5174" name="V8a" value="0.0717"/>
        </ListOfConstants>
        <KineticLaw function="Function_146" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_940">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_936">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="Ras dephosphorylation (Ras_Gap modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016311"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5175" name="Kcat8b" value="1509.36"/>
          <Constant key="Parameter_5176" name="Km8b" value="1.43241e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_147" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_982">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_983">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_984">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_985">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_986">
              <SourceParameter reference="Metabolite_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="Raf1 phosphorylation (pRas modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_103" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_103" stoichiometry="1"/>
          <Product metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5177" name="Kcat9a" value="0.884096"/>
          <Constant key="Parameter_5178" name="Km9a" value="62464.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_148" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_992">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_993">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_994">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_995">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_996">
              <SourceParameter reference="Metabolite_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="Raf1 phosphorylation (X modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016310"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
          <Product metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5179" name="Km9b" value="15"/>
          <Constant key="Parameter_5180" name="W" value="0"/>
          <Constant key="Parameter_5181" name="k9b" value="0.025"/>
        </ListOfConstants>
        <KineticLaw function="Function_149" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1003">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1004">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1005">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1006">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1007">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1008">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="bRaf dephosphorylation (RafPPtase modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-15T10:23:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5182" name="Kcat17a" value="0.12633"/>
          <Constant key="Parameter_5195" name="Km17a" value="1061.71"/>
        </ListOfConstants>
        <KineticLaw function="Function_150" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1002">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1015">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1016">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1017">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1018">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="bRaf dephosphorylation (pAkt modifier)" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-15T10:31:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5196" name="Kcat17b" value="15.1212"/>
          <Constant key="Parameter_5197" name="Km17b" value="119355"/>
        </ListOfConstants>
        <KineticLaw function="Function_151" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1024">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1025">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1026">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1027">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1028">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal)" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[APC]" value="5.817508510679139e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[APC_Axin]" value="9.033211285499998e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[APC_Axin_GSK3b]" value="4.576827051319999e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[APC_bCatenin]" value="2.07113468353944e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Akt]" value="1.2044281714e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Axin]" value="4.817712685599999e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[bCatenin]" value="2.572779016927539e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[bRaf]" value="1.2044281714e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[C3G]" value="3.0110704285e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Dsha]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Dshi]" value="6.022140856999998e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[EGF]" value="3.613284514199998e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[ERK]" value="1.565756622819999e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[GSK3b]" value="2.959099352904089e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[MEK]" value="4.095055782759998e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[P90Rsk]" value="3.613284514199999e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PI3K]" value="6.022140856999998e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PIP2]" value="4.215498599899998e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PIP3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PKCD]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PP2A]" value="1.44531380568e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PTEN]" value="1.625978031389999e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[RKIP]" value="1.25916943179013e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Raf1]" value="6.022140856999998e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[RafPPtase]" value="3.613284514199999e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Rap1]" value="1.2044281714e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Rap1_Gap]" value="7.226569028399998e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Ras]" value="6.022140856999998e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Ras_Gap]" value="6.022140856999998e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[SOS]" value="6.022140856999998e+25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[TCF]" value="3.726440540903029e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[bCatenin_TCF]" value="5.30677074459697e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[X]" value="6.180523161539098e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[boundEGFR]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[freeEGFR]" value="1.806642257099999e+26" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pAPC_pAxin_GSK3b]" value="9.213875511209998e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pAPC_pAxin_GSK3b_bCatenin]" value="1.2044281714e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pAPC_pAxin_GSK3b_pbCatenin]" value="1.2044281714e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pAkt]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pbCatenin]" value="5.950477380801698e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pbRaf]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pC3G]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pEGFR]" value="3.011070428499999e+22" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pERK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pGSK3b]" value="5.151580174712079e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pMEK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pP90Rsk]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pPI3K]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pRKIP]" value="5.190483204648299e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pRaf1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pRap1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pRas]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pSOS]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[null]" value="6.022140856999999e+23" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat10a]" value="0.12633" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat10b]" value="15.1212" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat11a]" value="185.76" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat12]" value="2.8324" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat13]" value="9.8537" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat14]" value="8.8912" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat16a]" value="0.8841" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat16b]" value="0.8841" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat17a]" value="0.12633" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat17b]" value="15.1212" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat18b]" value="0.02137" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat19a]" value="10.6737" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat19b]" value="0.07711" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat20]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat21]" value="5.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat22a]" value="0.33" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat22b]" value="48.667" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat23a]" value="694.73" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat24]" value="32.344" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat25]" value="1509.4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat27a]" value="0.002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat27b]" value="0.04596" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat27d]" value="0.01541" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat6b]" value="1611.97" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat7]" value="32.644" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat8b]" value="1509.36" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat9a]" value="0.884096" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km10a]" value="1061.7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km10b]" value="119355" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km11a]" value="4768400" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km12]" value="518750" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km13]" value="1007300" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km14]" value="3496500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km16a]" value="62645" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km16b]" value="62464.6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km17a]" value="1061.71" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km17b]" value="119355" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km18b]" value="763523" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km19a]" value="184912" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km19b]" value="272056" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km20]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km21]" value="0.08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km22a]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km22b]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km23a]" value="6086100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km24]" value="35954.3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km25]" value="1432400" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km39]" value="15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km6b]" value="896896" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km7]" value="35954.3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km8b]" value="1432410" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km9a]" value="62464.6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km9b]" value="15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[V1]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[V15b]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[V26a]" value="0.00154" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[V37b]" value="0.00705" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[V8a]" value="0.0717" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[W]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k11b1]" value="1.1167e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k11b2]" value="120" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k15a]" value="1.3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k15c]" value="0.00193" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k18a]" value="0.005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k19c]" value="0.005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k21]" value="2.18503e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k22]" value="0.121008" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k23b]" value="2.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k26a]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k26b]" value="0.000385" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k27c]" value="0.00015" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k28]" value="0.003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k29]" value="0.003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k3]" value="0.00125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k30]" value="0.000833" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k311]" value="0.001515" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k312]" value="0.01515" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k32a]" value="0.00445" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k32b]" value="0.002217" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k33a1]" value="0.01667" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k33a2]" value="0.8333" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k33b]" value="0.002783" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k33c1]" value="1.37e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k33c2]" value="1.667e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k341]" value="0.01667" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k342]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k35]" value="3.433" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k36]" value="3.433" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k37a1]" value="0.01667" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k37a2]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k37c]" value="4.283e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k381]" value="0.01667" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k382]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k39]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k4]" value="0.2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k40]" value="0.00025" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k41]" value="0.00695" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k51]" value="0.003465" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k52]" value="3.85e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k53]" value="0.00028833" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k54]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k6a]" value="2.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k9b]" value="0.025" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[EGFR dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[EGFR dephosphorylation],ParameterGroup=Parameters,Parameter=V1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[V1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 dephosphorylation (RafPPtase modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 dephosphorylation (RafPPtase modifier)],ParameterGroup=Parameters,Parameter=Kcat10a" value="0.12633" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat10a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 dephosphorylation (RafPPtase modifier)],ParameterGroup=Parameters,Parameter=Km10a" value="1061.7" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km10a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 dephosphorylation (pAkt modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 dephosphorylation (pAkt modifier)],ParameterGroup=Parameters,Parameter=Kcat10b" value="15.1212" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat10b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 dephosphorylation (pAkt modifier)],ParameterGroup=Parameters,Parameter=Km10b" value="119355" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km10b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[MEK phosphorylation (pbRaf modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[MEK phosphorylation (pbRaf modifier)],ParameterGroup=Parameters,Parameter=Kcat11a" value="185.76" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat11a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[MEK phosphorylation (pbRaf modifier)],ParameterGroup=Parameters,Parameter=Km11a" value="4768400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km11a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[MEK phosphorylation (pRaf1\, pRKIP and RKIP modifiers)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[MEK phosphorylation (pRaf1\, pRKIP and RKIP modifiers)],ParameterGroup=Parameters,Parameter=k11b1" value="1.1167e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k11b1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[MEK phosphorylation (pRaf1\, pRKIP and RKIP modifiers)],ParameterGroup=Parameters,Parameter=k11b2" value="120" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k11b2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[MEK dephosphorylation (PP2A modifer)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[MEK dephosphorylation (PP2A modifer)],ParameterGroup=Parameters,Parameter=Kcat12" value="2.8324" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[MEK dephosphorylation (PP2A modifer)],ParameterGroup=Parameters,Parameter=Km12" value="518750" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[ERK phosphorylation (pMEK modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[ERK phosphorylation (pMEK modifier)],ParameterGroup=Parameters,Parameter=Kcat13" value="9.8537" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[ERK phosphorylation (pMEK modifier)],ParameterGroup=Parameters,Parameter=Km13" value="1007300" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[ERK dephosphorylation (PP2A modifer)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[ERK dephosphorylation (PP2A modifer)],ParameterGroup=Parameters,Parameter=Kcat14" value="8.8912" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[ERK dephosphorylation (PP2A modifer)],ParameterGroup=Parameters,Parameter=Km14" value="3496500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[RKIP phosphorylation (pERK modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[RKIP phosphorylation (pERK modifier)],ParameterGroup=Parameters,Parameter=k15a" value="1.3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k15a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[RKIP dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[RKIP dephosphorylation],ParameterGroup=Parameters,Parameter=V15b" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[V15b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[RKIP degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[RKIP degradation],ParameterGroup=Parameters,Parameter=k15c" value="0.00193" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k15c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf phosphorylation (pRas modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf phosphorylation (pRas modifier)],ParameterGroup=Parameters,Parameter=Kcat16a" value="0.8841" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat16a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf phosphorylation (pRas modifier)],ParameterGroup=Parameters,Parameter=Km16a" value="62645" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km16a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf phosphorylation (pRap1 modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf phosphorylation (pRap1 modifier)],ParameterGroup=Parameters,Parameter=Kcat16b" value="0.8841" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat16b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf phosphorylation (pRap1 modifier)],ParameterGroup=Parameters,Parameter=Km16b" value="62464.6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km16b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[P90Rsk dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[P90Rsk dephosphorylation],ParameterGroup=Parameters,Parameter=k18a" value="0.005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k18a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[P90Rsk phosphorylation (pERK modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[P90Rsk phosphorylation (pERK modifier)],ParameterGroup=Parameters,Parameter=Kcat18b" value="0.02137" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat18b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[P90Rsk phosphorylation (pERK modifier)],ParameterGroup=Parameters,Parameter=Km18b" value="763523" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km18b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PI3K phosphorylation (boundEGFR modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PI3K phosphorylation (boundEGFR modifier)],ParameterGroup=Parameters,Parameter=Kcat19a" value="10.6737" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat19a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PI3K phosphorylation (boundEGFR modifier)],ParameterGroup=Parameters,Parameter=Km19a" value="184912" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km19a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PI3K phosphorylation (pRas modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PI3K phosphorylation (pRas modifier)],ParameterGroup=Parameters,Parameter=Kcat19b" value="0.07711" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat19b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PI3K phosphorylation (pRas modifier)],ParameterGroup=Parameters,Parameter=Km19b" value="272056" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km19b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PI3K dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PI3K dephosphorylation],ParameterGroup=Parameters,Parameter=k19c" value="0.005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k19c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[EGFR binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[EGFR binding],ParameterGroup=Parameters,Parameter=k21" value="2.18503e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[EGFR binding],ParameterGroup=Parameters,Parameter=k22" value="0.121008" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k22],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PIP2 phosphorylated to PIP3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PIP2 phosphorylated to PIP3],ParameterGroup=Parameters,Parameter=Kcat20" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PIP2 phosphorylated to PIP3],ParameterGroup=Parameters,Parameter=Km20" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PIP3 dephosphorylated to PIP2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PIP3 dephosphorylated to PIP2],ParameterGroup=Parameters,Parameter=Kcat21" value="5.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PIP3 dephosphorylated to PIP2],ParameterGroup=Parameters,Parameter=Km21" value="0.08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Akt phosphorylation (PIP3 modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Akt phosphorylation (PIP3 modifier)],ParameterGroup=Parameters,Parameter=Kcat22a" value="0.33" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat22a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Akt phosphorylation (PIP3 modifier)],ParameterGroup=Parameters,Parameter=Km22a" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km22a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Akt dephosphorylation ]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Akt dephosphorylation ],ParameterGroup=Parameters,Parameter=Kcat22b" value="48.667" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat22b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Akt dephosphorylation ],ParameterGroup=Parameters,Parameter=Km22b" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km22b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[C3G phosphorylation (boundEGFR modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[C3G phosphorylation (boundEGFR modifier)],ParameterGroup=Parameters,Parameter=Kcat23a" value="694.73" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat23a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[C3G phosphorylation (boundEGFR modifier)],ParameterGroup=Parameters,Parameter=Km23a" value="6086100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km23a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[C3G dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[C3G dephosphorylation],ParameterGroup=Parameters,Parameter=k23b" value="2.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k23b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Rap1 phosphorylation (pC3G modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Rap1 phosphorylation (pC3G modifier)],ParameterGroup=Parameters,Parameter=Kcat24" value="32.344" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat24],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Rap1 phosphorylation (pC3G modifier)],ParameterGroup=Parameters,Parameter=Km24" value="35954.3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km24],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Rap1 dephosphorylation (Rap1_GAP modifer)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Rap1 dephosphorylation (Rap1_GAP modifer)],ParameterGroup=Parameters,Parameter=Kcat25" value="1509.4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Rap1 dephosphorylation (Rap1_GAP modifer)],ParameterGroup=Parameters,Parameter=Km25" value="1432400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PKCD synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PKCD synthesis],ParameterGroup=Parameters,Parameter=V26a" value="0.00154" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[V26a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PKCD synthesis],ParameterGroup=Parameters,Parameter=k26a" value="20" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k26a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PKCD degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PKCD degradation],ParameterGroup=Parameters,Parameter=k26b" value="0.000385" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k26b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b phosphorylation (pERK modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b phosphorylation (pERK modifier)],ParameterGroup=Parameters,Parameter=Kcat27a" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat27a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b phosphorylation (pAkt modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b phosphorylation (pAkt modifier)],ParameterGroup=Parameters,Parameter=Kcat27b" value="0.04596" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat27b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b synthesis],ParameterGroup=Parameters,Parameter=k27c" value="0.00015" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k27c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b dephosphorylation],ParameterGroup=Parameters,Parameter=Kcat27d" value="0.01541" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat27d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Dsh activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Dsh activation],ParameterGroup=Parameters,Parameter=W" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[W],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Dsh activation],ParameterGroup=Parameters,Parameter=k28" value="0.003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k28],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Dsh deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Dsh deactivation],ParameterGroup=Parameters,Parameter=k29" value="0.003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k29],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[freeEGFR degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[freeEGFR degradation],ParameterGroup=Parameters,Parameter=k3" value="0.00125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC_Axin_GSK3b complex disassembly (Dsha modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC_Axin_GSK3b complex disassembly (Dsha modifier)],ParameterGroup=Parameters,Parameter=k30" value="0.000833" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k30],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC_Axin_GSK3b complex formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC_Axin_GSK3b complex formation],ParameterGroup=Parameters,Parameter=k311" value="0.001515" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k311],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC_Axin_GSK3b complex formation],ParameterGroup=Parameters,Parameter=k312" value="0.01515" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k312],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC and Axin phosphorylation (in compound)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC and Axin phosphorylation (in compound)],ParameterGroup=Parameters,Parameter=k32a" value="0.00445" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k32a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC and Axin dephosphorylation (in compound)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC and Axin dephosphorylation (in compound)],ParameterGroup=Parameters,Parameter=k32b" value="0.002217" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k32b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC_Axin complex formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC_Axin complex formation],ParameterGroup=Parameters,Parameter=k33a1" value="0.01667" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k33a1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC_Axin complex formation],ParameterGroup=Parameters,Parameter=k33a2" value="0.8333" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k33a2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Axin degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Axin degradation],ParameterGroup=Parameters,Parameter=k33b" value="0.002783" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k33b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Axin synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Axin synthesis],ParameterGroup=Parameters,Parameter=k33c1" value="1.37e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k33c1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Axin synthesis],ParameterGroup=Parameters,Parameter=k33c2" value="1.667e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k33c2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[pAPC_pAxin_GSK3b_bCatenin complex formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[pAPC_pAxin_GSK3b_bCatenin complex formation],ParameterGroup=Parameters,Parameter=k341" value="0.01667" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k341],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[pAPC_pAxin_GSK3b_bCatenin complex formation],ParameterGroup=Parameters,Parameter=k342" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k342],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bCatenin phosphorylation (in compond)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bCatenin phosphorylation (in compond)],ParameterGroup=Parameters,Parameter=k35" value="3.433" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k35],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[pAPC_pAxin_GSK3b_pbCatenin complex disassembly]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[pAPC_pAxin_GSK3b_pbCatenin complex disassembly],ParameterGroup=Parameters,Parameter=k36" value="3.433" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k36],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC_bCatenin complex formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC_bCatenin complex formation],ParameterGroup=Parameters,Parameter=k37a1" value="0.01667" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k37a1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC_bCatenin complex formation],ParameterGroup=Parameters,Parameter=k37a2" value="20" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k37a2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bCatenin synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bCatenin synthesis],ParameterGroup=Parameters,Parameter=V37b" value="0.00705" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[V37b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bCatenin degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bCatenin degradation],ParameterGroup=Parameters,Parameter=k37c" value="4.283e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k37c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bCatenin_TCF complex binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bCatenin_TCF complex binding],ParameterGroup=Parameters,Parameter=k381" value="0.01667" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k381],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bCatenin_TCF complex binding],ParameterGroup=Parameters,Parameter=k382" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k382],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[X synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[X synthesis],ParameterGroup=Parameters,Parameter=Km39" value="15" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km39],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[X synthesis],ParameterGroup=Parameters,Parameter=k39" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k39],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[boundEGFR degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[boundEGFR degradation],ParameterGroup=Parameters,Parameter=k4" value="0.2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[X degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[X degradation],ParameterGroup=Parameters,Parameter=k40" value="0.00025" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k40],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[pbCatenin degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[pbCatenin degradation],ParameterGroup=Parameters,Parameter=k41" value="0.00695" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k41],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[SOS phosphorylation (PKCD. pERK and boundEGFR modifiers) ]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[SOS phosphorylation (PKCD. pERK and boundEGFR modifiers) ],ParameterGroup=Parameters,Parameter=k51" value="0.003465" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k51],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[SOS phosphorylation (PKCD. pERK and boundEGFR modifiers) ],ParameterGroup=Parameters,Parameter=k52" value="3.85e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k52],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[SOS phosphorylation (PKCD. pERK and boundEGFR modifiers) ],ParameterGroup=Parameters,Parameter=k53" value="0.00028833" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k53],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[SOS phosphorylation (PKCD. pERK and boundEGFR modifiers) ],ParameterGroup=Parameters,Parameter=k54" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k54],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[SOS dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[SOS dephosphorylation],ParameterGroup=Parameters,Parameter=k6a" value="2.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k6a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[SOS dephosphorylation (pP90Rsk modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[SOS dephosphorylation (pP90Rsk modifier)],ParameterGroup=Parameters,Parameter=Kcat6b" value="1611.97" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat6b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[SOS dephosphorylation (pP90Rsk modifier)],ParameterGroup=Parameters,Parameter=Km6b" value="896896" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km6b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Ras phosphorylation (pSOS modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Ras phosphorylation (pSOS modifier)],ParameterGroup=Parameters,Parameter=Kcat7" value="32.644" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Ras phosphorylation (pSOS modifier)],ParameterGroup=Parameters,Parameter=Km7" value="35954.3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Ras synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Ras synthesis],ParameterGroup=Parameters,Parameter=V8a" value="0.0717" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[V8a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Ras dephosphorylation (Ras_Gap modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Ras dephosphorylation (Ras_Gap modifier)],ParameterGroup=Parameters,Parameter=Kcat8b" value="1509.36" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat8b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Ras dephosphorylation (Ras_Gap modifier)],ParameterGroup=Parameters,Parameter=Km8b" value="1432410" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km8b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 phosphorylation (pRas modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 phosphorylation (pRas modifier)],ParameterGroup=Parameters,Parameter=Kcat9a" value="0.884096" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat9a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 phosphorylation (pRas modifier)],ParameterGroup=Parameters,Parameter=Km9a" value="62464.6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km9a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 phosphorylation (X modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 phosphorylation (X modifier)],ParameterGroup=Parameters,Parameter=Km9b" value="15" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km9b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 phosphorylation (X modifier)],ParameterGroup=Parameters,Parameter=W" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[W],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 phosphorylation (X modifier)],ParameterGroup=Parameters,Parameter=k9b" value="0.025" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k9b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf dephosphorylation (RafPPtase modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf dephosphorylation (RafPPtase modifier)],ParameterGroup=Parameters,Parameter=Kcat17a" value="0.12633" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat17a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf dephosphorylation (RafPPtase modifier)],ParameterGroup=Parameters,Parameter=Km17a" value="1061.71" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km17a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf dephosphorylation (pAkt modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf dephosphorylation (pAkt modifier)],ParameterGroup=Parameters,Parameter=Kcat17b" value="15.1212" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat17b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf dephosphorylation (pAkt modifier)],ParameterGroup=Parameters,Parameter=Km17b" value="119355" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km17b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_4"/>
      <StateTemplateVariable objectReference="Metabolite_107"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_75"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_103"/>
      <StateTemplateVariable objectReference="Metabolite_97"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_105"/>
      <StateTemplateVariable objectReference="Metabolite_95"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_101"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="Metabolite_91"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_99"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 6.022140856999999e+23 2.959099352904089e+25 2.572779016927539e+25 1.2044281714e+26 6.022140856999998e+25 9.213875511209998e+21 4.095055782759998e+26 6.022140856999998e+25 6.022140856999998e+25 1.25916943179013e+25 6.022140856999998e+25 1.806642257099999e+26 4.817712685599999e+20 4.576827051319999e+21 3.613284514199999e+25 4.215498599899998e+26 0 1.2044281714e+26 1.2044281714e+26 3.0110704285e+26 1.565756622819999e+26 0 6.180523161539098e+24 1.2044281714e+21 0 5.817508510679139e+25 5.950477380801698e+23 5.151580174712079e+23 5.30677074459697e+24 9.033211285499998e+20 0 5.190483204648299e+23 3.613284514199998e+26 2.07113468353944e+24 1.2044281714e+21 0 0 3.726440540903029e+24 0 6.022140856999998e+25 0 0 0 0 0 0 0 0 3.011070428499999e+22 1.44531380568e+26 1.625978031389999e+26 3.613284514199999e+25 7.226569028399998e+24 6.022140856999998e+25 1 0.12633 15.1212 185.76 2.8324 9.8537 8.8912 0.8841 0.8841 0.12633 15.1212 0.02137 10.6737 0.07711 4 5.5 0.33 48.667 694.73 32.344 1509.4 0.002 0.04596 0.01541 1611.97 32.644 1509.36 0.884096 1061.7 119355 4768400 518750 1007300 3496500 62645 62464.6 1061.71 119355 763523 184912 272056 4 0.08 100 100 6086100 35954.3 1432400 15 896896 35954.3 1432410 62464.6 15 100 4 0.00154 0.00705 0.0717 0 1.1167e-05 120 1.3 0.00193 0.005 0.005 2.18503e-05 0.121008 2.5 20 0.000385 0.00015 0.003 0.003 0.00125 0.000833 0.001515 0.01515 0.00445 0.002217 0.01667 0.8333 0.002783 1.37e-06 1.667e-08 0.01667 2 3.433 3.433 0.01667 20 4.283e-06 0.01667 0.5 0.01 0.2 0.00025 0.00695 0.003465 3.85e-05 0.00028833 1.5 2.5 0.025 
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
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="150"/>
        <Parameter name="Duration" type="float" value="15000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
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
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
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
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
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
    <PlotSpecification name="plot_ppERK" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[pERK]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pERK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="plot_pAkt" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[pAkt]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pAkt],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="plot_bCatenin_TCF" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[bCatenin_TCF]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[bCatenin_TCF],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="normal_RS_V2.xml">
    <SBMLMap SBMLid="APC" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="APCAxin" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="APCAxinGSK3B" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="APCBCatenin" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="APC_Axin_complex_formation" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Akt" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="Axin" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="BCatenin" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="BRaf" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="C3G" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="Cell" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="Dsha" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="Dshi" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="EGF" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="ERK" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="Function_for_APC_and_Axin_dephosphorylation__in_compound" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_for_APC_and_Axin_phosphorylation__in_compound" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_APC_bCatenin_complex_formation" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="Function_for_Axin_degradation" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_for_C3G_dephosphorylation" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="Function_for_P90Rsk_dephosphorylation" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Function_for_PI3K_dephosphorylation" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_SOS_dephosphorylation" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="Function_for_bCatenin_degradation" COPASIkey="Function_99"/>
    <SBMLMap SBMLid="Function_for_bCatenin_phosphorylation__in_compound" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Function_for_freeEGFR_degradation" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_pAPC_pAxin_GSK3b_bCatenin_complex_formation" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_pAPC_pAxin_GSK3b_pbCatenin_complex_disassembly" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Function_for_pbCatenin_degradation" COPASIkey="Function_75"/>
    <SBMLMap SBMLid="GSK3B" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="Kcat10a" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="Kcat10b" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="Kcat11a" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="Kcat12" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="Kcat13" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="Kcat14" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="Kcat16a" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="Kcat16b" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="Kcat17a" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="Kcat17b" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="Kcat18b" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="Kcat19a" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="Kcat19b" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="Kcat20" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="Kcat21" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="Kcat22a" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="Kcat22b" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="Kcat23a" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="Kcat24" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="Kcat25" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="Kcat27a" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="Kcat27b" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="Kcat27d" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="Kcat6b" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="Kcat7" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="Kcat8b" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="Kcat9a" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="Km10a" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="Km10b" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="Km11a" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="Km12" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="Km13" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="Km14" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="Km16a" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="Km16b" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="Km17a" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="Km17b" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="Km18b" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="Km19a" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="Km19b" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="Km20" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="Km21" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="Km22a" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="Km22b" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="Km23a" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="Km24" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="Km25" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="Km39" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="Km6b" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="Km7" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="Km8b" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="Km9a" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="Km9b" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="MEK" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="P90Rsk" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="PI3K" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="PIP2" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="PIP3" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="PKCD" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="PP2A" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="PTEN" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="RKIP" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="Raf1" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="RafPPtase" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="Rap1" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="Rap1Gap" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="Ras" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="RasGap" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="SOS" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="TCF" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="TCFBCatenin" COPASIkey="Metabolite_63"/>
    <SBMLMap SBMLid="V1" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="V15b" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="V26a" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="V37b" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="V8a" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="W" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="X" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="bEGFR" COPASIkey="Metabolite_67"/>
    <SBMLMap SBMLid="bRaf_dephosphorylation__RafPPtase_modifier" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="bRaf_dephosphorylation__pAkt_modifier" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="fEGFR" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="k11b1" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="k11b2" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="k15a" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="k15c" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="k18a" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="k19c" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="k21" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="k22" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="k23b" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="k26a" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="k26b" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="k27c" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="k28" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="k29" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="k30" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="k311" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="k312" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="k32a" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="k32b" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="k33a1" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="k33a2" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="k33b" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="k33c1" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="k33c2" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="k341" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="k342" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="k35" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="k36" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="k37a1" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="k37a2" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="k37c" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="k381" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="k382" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="k39" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="k40" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="k41" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="k51" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="k52" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="k53" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="k54" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="k6a" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="k9b" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="null" COPASIkey="Metabolite_107"/>
    <SBMLMap SBMLid="pAPCpAxinGSK3B" COPASIkey="Metabolite_71"/>
    <SBMLMap SBMLid="pAPCpAxinGSK3BBCatenin" COPASIkey="Metabolite_73"/>
    <SBMLMap SBMLid="pAPCpAxinGSK3BpBCatenin" COPASIkey="Metabolite_75"/>
    <SBMLMap SBMLid="pAkt" COPASIkey="Metabolite_77"/>
    <SBMLMap SBMLid="pBCatenin" COPASIkey="Metabolite_79"/>
    <SBMLMap SBMLid="pBRaf" COPASIkey="Metabolite_81"/>
    <SBMLMap SBMLid="pC3G" COPASIkey="Metabolite_83"/>
    <SBMLMap SBMLid="pEGFR" COPASIkey="Metabolite_85"/>
    <SBMLMap SBMLid="pERK" COPASIkey="Metabolite_87"/>
    <SBMLMap SBMLid="pGSK3B" COPASIkey="Metabolite_89"/>
    <SBMLMap SBMLid="pMEK" COPASIkey="Metabolite_91"/>
    <SBMLMap SBMLid="pP90Rsk" COPASIkey="Metabolite_93"/>
    <SBMLMap SBMLid="pPI3K" COPASIkey="Metabolite_95"/>
    <SBMLMap SBMLid="pRKIP" COPASIkey="Metabolite_97"/>
    <SBMLMap SBMLid="pRaf1" COPASIkey="Metabolite_99"/>
    <SBMLMap SBMLid="pRap1" COPASIkey="Metabolite_101"/>
    <SBMLMap SBMLid="pRas" COPASIkey="Metabolite_103"/>
    <SBMLMap SBMLid="pSOS" COPASIkey="Metabolite_105"/>
    <SBMLMap SBMLid="v1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="v10a" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="v10b" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="v11a" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="v11b" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="v12" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="v13" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="v14" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="v15a" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="v15b" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="v15c" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="v16a" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="v16b" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="v18a" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="v18b" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="v19a" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="v19b" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="v19c" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="v2" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="v20" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="v21" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="v22a" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="v22b" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="v23a" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="v23b" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="v24" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="v25" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="v26a" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="v26b" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="v27a" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="v27b" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="v27c" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="v27d" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="v28" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="v29" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="v3" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="v30" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="v31" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="v32a" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="v32b" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="v33a" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="v33b" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="v33c" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="v34" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="v35" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="v36" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="v37a" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="v37b" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="v37c" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="v38" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="v39" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="v4" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="v40" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="v41" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="v5" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="v6a" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="v6b" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="v7" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="v8a" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="v8b" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="v9a" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="v9b" COPASIkey="Reaction_61"/>
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
  </ListOfUnitDefinitions>
</COPASI>
