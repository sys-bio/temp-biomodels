<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-04-24 09:07:18 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="22" versionDevel="170" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="Function for R_7" type="UserDefined" reversible="false">
      <Expression>
        (AId*k3*xFinal_9*(rhoTr/(1-AId))+apopFBL*xFinal_9)/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="AId" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="apopFBL" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_254" name="k3" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="rhoTr" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_258" name="xFinal_9" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for R_6" type="UserDefined" reversible="false">
      <Expression>
        k2a*rhoTA*xFinal_8/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_272" name="compartmentOne" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_271" name="k2a" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="rhoTA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_246" name="xFinal_8" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for R_10" type="UserDefined" reversible="false">
      <Expression>
        k1ah*rhoSC*xFinal_7/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="compartmentOne" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_273" name="k1ah" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="rhoSC" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="xFinal_7" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for R_3" type="UserDefined" reversible="false">
      <Expression>
        k3*rhoTr*xFinal_9/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="compartmentOne" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_277" name="k3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="rhoTr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="xFinal_9" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for R_1" type="UserDefined" reversible="false">
      <Expression>
        k4*rhoTr*xFinal_10/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_284" name="compartmentOne" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_281" name="k4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="rhoTr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="xFinal_10" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for R_2" type="UserDefined" reversible="false">
      <Expression>
        (alpha*rhoDe*xFinal_12+apopFBL*xFinal_12)/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_285" name="alpha" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="apopFBL" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_275" name="rhoDe" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="xFinal_12" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for R_5" type="UserDefined" reversible="false">
      <Expression>
        k2s*rhoTA*xFinal_8/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_293" name="compartmentOne" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_291" name="k2s" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="rhoTA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="xFinal_8" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for R_4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:42:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (AId*k4*xFinal_10*(rhoTr/(1-AId))+apopFBL*xFinal_10)/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_294" name="AId" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="apopFBL" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_279" name="k4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="rhoTr" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="xFinal_10" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for R_12" type="UserDefined" reversible="false">
      <Expression>
        (AId*k2s*xFinal_8*(rhoTA/(1-AId))+apopFBL*xFinal_8)/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_302" name="AId" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="apopFBL" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_298" name="k2s" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="rhoTA" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="xFinal_8" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for R_14" type="UserDefined" reversible="false">
      <Expression>
        aProl*gamma1h*rhoSC*exp(bProl*doseBL)*xFinal_7/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_308" name="aProl" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="bProl" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_311" name="doseBL" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="gamma1h" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="rhoSC" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="xFinal_7" order="6" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for R_13" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T14:00:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        km1*xFinal_8/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_300" name="compartmentOne" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_316" name="km1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="xFinal_8" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for R_19" type="UserDefined" reversible="false">
      <Expression>
        k4*xFinal_4/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_317" name="compartmentOne" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_292" name="k4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_314" name="xFinal_4" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for R_8" type="UserDefined" reversible="false">
      <Expression>
        km2*xFinal_9/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_320" name="compartmentOne" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_318" name="km2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="xFinal_9" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for R_9" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-13T11:57:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k1sh*rhoSC*xFinal_7/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_325" name="compartmentOne" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_321" name="k1sh" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="rhoSC" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="xFinal_7" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for R_11" type="UserDefined" reversible="false">
      <Expression>
        aProl*aProl*gamma2*rhoTA*exp(bProl*doseBL)*exp(bProl*doseBL)*xFinal_8/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_326" name="aProl" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="bProl" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_331" name="doseBL" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="gamma2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="rhoTA" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="xFinal_8" order="6" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for R_17" type="UserDefined" reversible="false">
      <Expression>
        k5*xFinal_5/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_328" name="compartmentOne" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_336" name="k5" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="xFinal_5" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for R_22" type="UserDefined" reversible="false">
      <Expression>
        (k4*xFinal_4*(AIh/(1-AIh))+apopFBL*xFinal_4)/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_337" name="AIh" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="apopFBL" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_319" name="k4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="xFinal_4" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for R_15" type="UserDefined" reversible="false">
      <Expression>
        aProl*gamma1h*rhoSC*exp(bProl*doseBL)*xFinal_7*(xFinal_6/(lambda*Pscmax))/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_354" name="Pscmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="aProl" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_344" name="bProl" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="compartmentOne" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_346" name="doseBL" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="gamma1h" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_352" name="lambda" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="rhoSC" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_350" name="xFinal_6" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_348" name="xFinal_7" order="9" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for R_16" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:29:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (aProl*gamma1h*rhoSC*exp(bProl*doseBL)*xFinal_7*(xFinal_7/(lambda*Pscmax))+AId*k1sh*xFinal_7*(rhoSC/(1-AId))+apopFBL*xFinal_7+Kp*(1/(Ka^2+xFinal_7^2))*xFinal_7^2)/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_364" name="AId" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_372" name="Ka" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_370" name="Kp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="Pscmax" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="aProl" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="apopFBL" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="bProl" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_374" name="compartmentOne" order="7" role="volume"/>
        <ParameterDescription key="FunctionParameter_324" name="doseBL" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="gamma1h" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="k1sh" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="lambda" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="rhoSC" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="xFinal_7" order="13" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for R_18" type="UserDefined" reversible="false">
      <Expression>
        (alpha*xFinal_6+apopFBL*xFinal_6)/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_375" name="alpha" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="apopFBL" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_371" name="xFinal_6" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for R_26" type="UserDefined" reversible="false">
      <Expression>
        km2*xFinal_3/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_359" name="compartmentOne" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_361" name="km2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="xFinal_3" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for R_27" type="UserDefined" reversible="false">
      <Expression>
        omega*xFinal_1*(k1sh/(1+(omega-1)*((xFinal_2+xFinal_8)/Ptah)^n))/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_379" name="Ptah" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_383" name="compartmentOne" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_347" name="k1sh" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_381" name="n" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="omega" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_365" name="xFinal_1" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_355" name="xFinal_2" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_377" name="xFinal_8" order="7" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for R_20" type="UserDefined" reversible="false">
      <Expression>
        (k5*xFinal_5*(AIh/(1-AIh))+apopFBL*xFinal_5)/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_376" name="AIh" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="apopFBL" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_385" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_384" name="k5" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_380" name="xFinal_5" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for R_21" type="UserDefined" reversible="false">
      <Expression>
        k3*xFinal_3/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_382" name="compartmentOne" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_386" name="k3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="xFinal_3" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for R_23" type="UserDefined" reversible="false">
      <Expression>
        k2s*xFinal_2/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_389" name="compartmentOne" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_387" name="k2s" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_373" name="xFinal_2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for R_24" type="UserDefined" reversible="false">
      <Expression>
        k2a*xFinal_2/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_392" name="compartmentOne" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_390" name="k2a" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_378" name="xFinal_2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for R_25" type="UserDefined" reversible="false">
      <Expression>
        (k3*xFinal_3*(AIh/(1-AIh))+apopFBL*xFinal_3)/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_395" name="AIh" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_397" name="apopFBL" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_399" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_393" name="k3" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="xFinal_3" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for R_32" type="UserDefined" reversible="false">
      <Expression>
        aProl*gamma1h*exp(bProl*doseBL)*xFinal_1*(omega/(1+(omega-1)*((xFinal_2+xFinal_8)/Ptah)^n))/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_412" name="Ptah" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_400" name="aProl" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_391" name="bProl" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_416" name="compartmentOne" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_402" name="doseBL" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_396" name="gamma1h" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_414" name="n" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_406" name="omega" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_404" name="xFinal_1" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_408" name="xFinal_2" order="9" role="substrate"/>
        <ParameterDescription key="FunctionParameter_410" name="xFinal_8" order="10" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for R_35" type="UserDefined" reversible="false">
      <Expression>
        (k1sh*xFinal_1*(AIh/(1-AIh))+apopFBL*xFinal_1)/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_409" name="AIh" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_405" name="apopFBL" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_401" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_417" name="k1sh" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_413" name="xFinal_1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for R_28" type="UserDefined" reversible="false">
      <Expression>
        omega*xFinal_1*(k1ah/(1+(omega-1)*((xFinal_2+xFinal_8)/Ptah)^n))/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_422" name="Ptah" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_426" name="compartmentOne" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_415" name="k1ah" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_424" name="n" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_394" name="omega" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_407" name="xFinal_1" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_418" name="xFinal_2" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_420" name="xFinal_8" order="7" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for R_29" type="UserDefined" reversible="false">
      <Expression>
        aProl*gamma2*exp(bProl*doseBL)*xFinal_2/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_427" name="aProl" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_419" name="bProl" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_430" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_411" name="doseBL" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_423" name="gamma2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_428" name="xFinal_2" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for R_30" type="UserDefined" reversible="false">
      <Expression>
        (k2s*xFinal_2*(AIh/(1-AIh))+apopFBL*xFinal_2)/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_421" name="AIh" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_432" name="apopFBL" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_434" name="compartmentOne" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_431" name="k2s" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_403" name="xFinal_2" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Function for R_31" type="UserDefined" reversible="false">
      <Expression>
        km1*xFinal_2/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_429" name="compartmentOne" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_435" name="km1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_425" name="xFinal_2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function for R_33" type="UserDefined" reversible="false">
      <Expression>
        (gamma1h*(aProl*exp(bProl*doseBL)*xFinal_1*omega*xFinal_1/(1+(omega-1)*((xFinal_2+xFinal_8)/Ptah)^n)/Pscmax)+k1sh*xFinal_1*(omega/(1+(omega-1)*((xFinal_2+xFinal_8)/Ptah)^n)))/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_454" name="Pscmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_450" name="Ptah" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_433" name="aProl" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_438" name="bProl" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_458" name="compartmentOne" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_440" name="doseBL" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_436" name="gamma1h" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_456" name="k1sh" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_452" name="n" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_444" name="omega" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_442" name="xFinal_1" order="10" role="substrate"/>
        <ParameterDescription key="FunctionParameter_446" name="xFinal_2" order="11" role="substrate"/>
        <ParameterDescription key="FunctionParameter_448" name="xFinal_8" order="12" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Function for R_34" type="UserDefined" reversible="false">
      <Expression>
        gamma1h*(aProl*exp(bProl*doseBL)*xFinal_1*omega*xFinal_7/(1+(omega-1)*((xFinal_2+xFinal_8)/Ptah)^n)/lambda/Pscmax)/compartmentOne
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_471" name="Pscmax" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_465" name="Ptah" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_455" name="aProl" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_451" name="bProl" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_473" name="compartmentOne" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_447" name="doseBL" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_459" name="gamma1h" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_469" name="lambda" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_467" name="n" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_439" name="omega" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_443" name="xFinal_1" order="10" role="substrate"/>
        <ParameterDescription key="FunctionParameter_461" name="xFinal_2" order="11" role="substrate"/>
        <ParameterDescription key="FunctionParameter_398" name="xFinal_7" order="12" role="substrate"/>
        <ParameterDescription key="FunctionParameter_463" name="xFinal_8" order="13" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified)" simulationType="time" timeUnit="d" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="1" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:28184200"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:32:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>mroberts@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Roberts</vCard:Family>
            <vCard:Given>Matthew Grant</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:hasPart rdf:resource="urn:miriam:bto:BTO:0000667"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:efo:0000676"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:go:GO:0009637"/>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1701090001"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn rdf:resource="urn:miriam:bto:BTO:0000404"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_2" name="Healthy" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-24T09:22:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_3" name="Psoriatic" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-24T09:22:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_12" name="Stem Cells" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <bqbiol:hasProperty rdf:resource="urn:miriam:cl:CL:0000034" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:35:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000667" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="Transit Amplifying Cells" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T11:43:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000667" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="Growth Arrested Cells" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0007050" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T11:38:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000667" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="Spinous cells" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T11:20:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000667" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="Granular Cells" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <bqbiol:hasProperty rdf:resource="urn:miriam:cl:CL:0002189" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T11:36:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000667" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="Corneocytes" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <bqbiol:hasProperty rdf:resource="urn:miriam:bto:BTO:0001943" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T11:35:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000667" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="Stem Cells" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <bqbiol:hasProperty rdf:resource="urn:miriam:cl:CL:0000034" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T11:43:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000667" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Transit Amplifying Cells" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T11:43:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000667" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="Growth Arrested Cells" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0007050" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T11:20:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000667" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="Spinous cells" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:40:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000667" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="Granular Cells" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <bqbiol:hasProperty rdf:resource="urn:miriam:cl:CL:0002189" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:40:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000667" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Corneocytes" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <bqbiol:hasProperty rdf:resource="urn:miriam:bto:BTO:0001943" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:40:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0000667" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_54" name="AId" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:37:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C129675" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="AIh" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:55:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C129675" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="alpha" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:55:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0003336" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="alphaps" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:02:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoDe],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[alpha],Reference=InitialValue>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="apopFBL" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:06:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="aProl" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:07:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0009637" />
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0043616" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="beta1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:12:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C17557" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1sh],Reference=InitialValue>/(1-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>)
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="beta2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:12:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C17557" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2s],Reference=InitialValue>/(1-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>)
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="beta3" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:13:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C17557" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k3],Reference=InitialValue>/(1-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>)
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="beta4" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:13:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C17557" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k4],Reference=InitialValue>/(1-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>)
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="beta5" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:13:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C17557" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k5],Reference=InitialValue>/(1-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>)
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="betaps1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:13:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C17557" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1sh],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoSC],Reference=InitialValue>/(1-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>)
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="betaps2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:14:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C17557" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[kps2s],Reference=InitialValue>/(1-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>)
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="betaps3" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:14:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C17557" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[kps3],Reference=InitialValue>/(1-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>)
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="betaps4" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:14:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C17557" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[kps4],Reference=InitialValue>/(1-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>)
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="bProl" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:14:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0009637" />
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0043616" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="doseBL" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T10:31:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          90*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[skinType],Reference=InitialValue>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="gamma1h" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:19:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0072089" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="gamma1ps" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:19:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0072089" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoSC],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma1h],Reference=InitialValue>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="gamma2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:19:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0072089" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="gamma2ps" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:19:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0072089" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTA],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma2],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[thetaBLprol],Reference=InitialValue>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="k1ah" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:20:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0098722" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="k1sh" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:20:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0098724" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="k2a" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:21:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0008356" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="k2s" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:24:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0098725" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="k3" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:24:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0007050" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="k4" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:44:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0030154" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="k5" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:28:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0030154" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="Ka" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T12:28:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000287" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          3^(1/2)*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Psch],Reference=Value>/10
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="km1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T13:58:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          k_1h
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="km2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T14:03:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          k_2h
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="kmps1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T14:03:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          k_1h
        </Comment>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km1],Reference=InitialValue>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="kmps2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T14:04:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          k_2h
        </Comment>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km2],Reference=InitialValue>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_87" name="Kp" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T13:58:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0006955" />
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_88" name="kps1a" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_88">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T14:05:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoSC],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1ah],Reference=InitialValue>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="kps1s" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T16:20:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoSC],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1sh],Reference=InitialValue>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="kps2a" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T16:20:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTA],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2a],Reference=InitialValue>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_91" name="kps2s" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T16:20:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTA],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2s],Reference=InitialValue>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="kps3" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_92">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T16:20:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTr],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k3],Reference=InitialValue>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_93" name="kps4" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T16:20:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTr],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k4],Reference=InitialValue>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="lambda" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_94">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T14:06:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C25443" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="LPSI0" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_95">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T14:07:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_96" name="n" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_96">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T14:08:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C48923" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_97" name="omega" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_97">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T14:08:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0072089" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="Psch" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_98">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T16:21:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0072089" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Pscmax],Reference=InitialValue>*(1-1/&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma1h],Reference=InitialValue>*(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1sh],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[beta1],Reference=InitialValue>-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km1],Reference=InitialValue>*(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1ah],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1sh],Reference=InitialValue>*2)/(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km1],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2s],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[beta2],Reference=InitialValue>-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma2],Reference=InitialValue>-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km2],Reference=InitialValue>*(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2a],Reference=InitialValue>+2*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2s],Reference=InitialValue>)/(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km2],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k3],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[beta3],Reference=InitialValue>))))
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="Pscmax" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T16:22:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C25443" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_100" name="Ptah" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_100">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T16:22:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0008283" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          (&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1ah],Reference=InitialValue>+2*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1sh],Reference=InitialValue>)/(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km1],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2s],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[beta2],Reference=InitialValue>-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma2],Reference=InitialValue>-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km2],Reference=InitialValue>*(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2a],Reference=InitialValue>+2*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2s],Reference=InitialValue>)/(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km2],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k3],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[beta3],Reference=InitialValue>))*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Psch],Reference=InitialValue>
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_101" name="rhoDe" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_101">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T16:24:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0003336" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_102" name="rhoSC" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_102">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T16:24:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0003336" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="rhoTA" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_103">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T16:26:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0003336" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_104" name="rhoTr" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_104">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T16:26:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C51039" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_105" name="skinType" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_105">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T10:50:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C45995" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_106" name="therI" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_106">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T16:28:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_107" name="thetaBLprol" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_107">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T16:28:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0009637" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[aProl],Reference=InitialValue>*exp(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[bProl],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[doseBL],Reference=InitialValue>)
        </InitialExpression>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="Treatment_Duration" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_35" name="R_001" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:35:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4866" name="k4" value="0.0556"/>
          <Constant key="Parameter_4836" name="rhoTr" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="R_002" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:35:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4837" name="alpha" value="0.0714"/>
          <Constant key="Parameter_4838" name="apopFBL" value="0"/>
          <Constant key="Parameter_4839" name="rhoDe" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="R_003" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:36:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4840" name="k3" value="0.216"/>
          <Constant key="Parameter_4841" name="rhoTr" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="R_004" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:36:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4842" name="AId" value="0.00035"/>
          <Constant key="Parameter_4843" name="apopFBL" value="0"/>
          <Constant key="Parameter_4844" name="k4" value="0.0556"/>
          <Constant key="Parameter_4845" name="rhoTr" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="R_005" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:36:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4846" name="k2s" value="0.0173"/>
          <Constant key="Parameter_4847" name="rhoTA" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="R_006" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:36:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4848" name="k2a" value="0.138"/>
          <Constant key="Parameter_4849" name="rhoTA" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="R_007" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:36:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4850" name="AId" value="0.00035"/>
          <Constant key="Parameter_4851" name="apopFBL" value="0"/>
          <Constant key="Parameter_4852" name="k3" value="0.216"/>
          <Constant key="Parameter_4853" name="rhoTr" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="R_008" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:36:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4854" name="km2" value="1e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="R_009" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:36:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4855" name="k1sh" value="0.00164"/>
          <Constant key="Parameter_4856" name="rhoSC" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="R_010" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:35:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4857" name="k1ah" value="0.0131"/>
          <Constant key="Parameter_4858" name="rhoSC" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="R_011" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:36:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4859" name="aProl" value="1"/>
          <Constant key="Parameter_4860" name="bProl" value="-0.003404"/>
          <Constant key="Parameter_4861" name="doseBL" value="52.11"/>
          <Constant key="Parameter_4875" name="gamma2" value="0.014"/>
          <Constant key="Parameter_4876" name="rhoTA" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="R_012" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:36:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4877" name="AId" value="0.00035"/>
          <Constant key="Parameter_4878" name="apopFBL" value="0"/>
          <Constant key="Parameter_4879" name="k2s" value="0.0173"/>
          <Constant key="Parameter_4880" name="rhoTA" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="R_013" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:36:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4881" name="km1" value="1e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="R_014" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:35:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4882" name="aProl" value="1"/>
          <Constant key="Parameter_4883" name="bProl" value="-0.003404"/>
          <Constant key="Parameter_4884" name="doseBL" value="52.11"/>
          <Constant key="Parameter_4885" name="gamma1h" value="0.0033"/>
          <Constant key="Parameter_4886" name="rhoSC" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="R_015" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:36:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4887" name="Pscmax" value="4500"/>
          <Constant key="Parameter_4888" name="aProl" value="1"/>
          <Constant key="Parameter_4889" name="bProl" value="-0.003404"/>
          <Constant key="Parameter_4890" name="doseBL" value="52.11"/>
          <Constant key="Parameter_4891" name="gamma1h" value="0.0033"/>
          <Constant key="Parameter_4892" name="lambda" value="3.5"/>
          <Constant key="Parameter_4893" name="rhoSC" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="R_016" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:36:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4894" name="AId" value="0.00035"/>
          <Constant key="Parameter_4895" name="Ka" value="392.773"/>
          <Constant key="Parameter_4896" name="Kp" value="6"/>
          <Constant key="Parameter_4897" name="Pscmax" value="4500"/>
          <Constant key="Parameter_4898" name="aProl" value="1"/>
          <Constant key="Parameter_4899" name="apopFBL" value="0"/>
          <Constant key="Parameter_4900" name="bProl" value="-0.003404"/>
          <Constant key="Parameter_4901" name="doseBL" value="52.11"/>
          <Constant key="Parameter_4902" name="gamma1h" value="0.0033"/>
          <Constant key="Parameter_4903" name="k1sh" value="0.00164"/>
          <Constant key="Parameter_4904" name="lambda" value="3.5"/>
          <Constant key="Parameter_4905" name="rhoSC" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="R_017" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:36:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4906" name="k5" value="0.111"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="R_018" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:36:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4907" name="alpha" value="0.0714"/>
          <Constant key="Parameter_4913" name="apopFBL" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="R_019" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:36:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4912" name="k4" value="0.0556"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="R_020" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:36:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4911" name="AIh" value="0.0012"/>
          <Constant key="Parameter_4908" name="apopFBL" value="0"/>
          <Constant key="Parameter_4909" name="k5" value="0.111"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="R_021" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:37:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4910" name="k3" value="0.216"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="R_022" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:37:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4914" name="AIh" value="0.0012"/>
          <Constant key="Parameter_4915" name="apopFBL" value="0"/>
          <Constant key="Parameter_4918" name="k4" value="0.0556"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="R_023" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:37:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4917" name="k2s" value="0.0173"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="R_024" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:37:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4916" name="k2a" value="0.138"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="R_025" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:37:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4919" name="AIh" value="0.0012"/>
          <Constant key="Parameter_4920" name="apopFBL" value="0"/>
          <Constant key="Parameter_4921" name="k3" value="0.216"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="R_026" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:37:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Constant key="Parameter_4922" name="km2" value="1e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="R_027" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:37:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="3"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4923" name="Ptah" value="11184.8"/>
          <Constant key="Parameter_4924" name="k1sh" value="0.00164"/>
          <Constant key="Parameter_4925" name="n" value="3"/>
          <Constant key="Parameter_4926" name="omega" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="R_028" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:36:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="2"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4927" name="Ptah" value="11184.8"/>
          <Constant key="Parameter_4928" name="k1ah" value="0.0131"/>
          <Constant key="Parameter_4929" name="n" value="3"/>
          <Constant key="Parameter_4930" name="omega" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="R_029" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:37:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4931" name="aProl" value="1"/>
          <Constant key="Parameter_4932" name="bProl" value="-0.003404"/>
          <Constant key="Parameter_4933" name="doseBL" value="52.11"/>
          <Constant key="Parameter_4934" name="gamma2" value="0.014"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="R_030" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:37:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4935" name="AIh" value="0.0012"/>
          <Constant key="Parameter_4936" name="apopFBL" value="0"/>
          <Constant key="Parameter_4937" name="k2s" value="0.0173"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="R_031" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:37:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4938" name="km1" value="1e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="R_032" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:37:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="2"/>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4939" name="Ptah" value="11184.8"/>
          <Constant key="Parameter_4940" name="aProl" value="1"/>
          <Constant key="Parameter_4941" name="bProl" value="-0.003404"/>
          <Constant key="Parameter_4942" name="doseBL" value="52.11"/>
          <Constant key="Parameter_4943" name="gamma1h" value="0.0033"/>
          <Constant key="Parameter_4944" name="n" value="3"/>
          <Constant key="Parameter_4945" name="omega" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="R_033" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:37:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4946" name="Pscmax" value="4500"/>
          <Constant key="Parameter_4947" name="Ptah" value="11184.8"/>
          <Constant key="Parameter_4948" name="aProl" value="1"/>
          <Constant key="Parameter_4949" name="bProl" value="-0.003404"/>
          <Constant key="Parameter_4950" name="doseBL" value="52.11"/>
          <Constant key="Parameter_4951" name="gamma1h" value="0.0033"/>
          <Constant key="Parameter_4822" name="k1sh" value="0.00164"/>
          <Constant key="Parameter_4823" name="n" value="3"/>
          <Constant key="Parameter_4824" name="omega" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="R_034" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:37:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4825" name="Pscmax" value="4500"/>
          <Constant key="Parameter_4826" name="Ptah" value="11184.8"/>
          <Constant key="Parameter_4827" name="aProl" value="1"/>
          <Constant key="Parameter_4828" name="bProl" value="-0.003404"/>
          <Constant key="Parameter_4829" name="doseBL" value="52.11"/>
          <Constant key="Parameter_4830" name="gamma1h" value="0.0033"/>
          <Constant key="Parameter_4831" name="lambda" value="3.5"/>
          <Constant key="Parameter_4832" name="n" value="3"/>
          <Constant key="Parameter_4833" name="omega" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_74" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="R_035" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:37:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4834" name="AIh" value="0.0012"/>
          <Constant key="Parameter_4952" name="apopFBL" value="0"/>
          <Constant key="Parameter_4953" name="k1sh" value="0.00164"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_2" name="Treatment Break after 28 days" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T09:32:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time> > 28 and &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time> &lt; 84 and &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time>-floor(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time>/(7/3))*(7/3) > &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Treatment_Duration],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_70">
            <Expression>
              0*90*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[skinType],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_4" name="Treatment Start after 28 days" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T10:44:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time> > 28 and &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time> &lt; 84 and &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time>-floor(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time>/(7/3))*(7/3) &lt; &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Treatment_Duration],Reference=Value>
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_70">
            <Expression>
              90*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[skinType],Reference=Value>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_3" name="Treatment Stopped on Day 84" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-23T16:49:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time> > 84
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_70">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified)" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy],Vector=Metabolites[Stem Cells]" value="362" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy],Vector=Metabolites[Transit Amplifying Cells]" value="77" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy],Vector=Metabolites[Growth Arrested Cells]" value="61" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy],Vector=Metabolites[Spinous cells]" value="238" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy],Vector=Metabolites[Granular Cells]" value="119" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy],Vector=Metabolites[Corneocytes]" value="185" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic],Vector=Metabolites[Stem Cells]" value="6459" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic],Vector=Metabolites[Transit Amplifying Cells]" value="32098" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic],Vector=Metabolites[Growth Arrested Cells]" value="20536" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic],Vector=Metabolites[Spinous cells]" value="79788" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic],Vector=Metabolites[Granular Cells]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic],Vector=Metabolites[Corneocytes]" value="77633" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId]" value="0.00035" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh]" value="0.0011999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[alpha]" value="0.071400000000000005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[alphaps]" value="0.28560000000000002" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoDe],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[alpha],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[apopFBL]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[aProl]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[beta1]" value="1.9703644373247891e-06" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1sh],Reference=InitialValue>/(1-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[beta2]" value="2.0784941930316378e-05" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2s],Reference=InitialValue>/(1-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[beta3]" value="0.0002595114136964357" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k3],Reference=InitialValue>/(1-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[beta4]" value="6.6800160192230667e-05" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k4],Reference=InitialValue>/(1-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[beta5]" value="0.00013336003203844613" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k5],Reference=InitialValue>/(1-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[betaps1]" value="2.2968038813584755e-06" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1sh],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoSC],Reference=InitialValue>/(1-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[betaps2]" value="2.4228479967988794e-05" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[kps2s],Reference=InitialValue>/(1-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[betaps3]" value="0.00037813234632121242" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[kps3],Reference=InitialValue>/(1-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[betaps4]" value="9.7334066923423184e-05" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[kps4],Reference=InitialValue>/(1-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[bProl]" value="-0.0034039999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[doseBL]" value="52.109999999999999" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              90*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[skinType],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma1h]" value="0.0033" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma1ps]" value="0.0132" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoSC],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma1h],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma2]" value="0.014" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma2ps]" value="0.046897728935757006" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTA],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma2],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[thetaBLprol],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1ah]" value="0.013100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1sh]" value="0.00164" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2a]" value="0.13800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2s]" value="0.017299999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k3]" value="0.216" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k4]" value="0.055599999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k5]" value="0.111" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Ka]" value="392.7728876657734" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km1]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km2]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[kmps1]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km1],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[kmps2]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km2],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Kp]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[kps1a]" value="0.052400000000000002" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoSC],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1ah],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[kps1s]" value="0.0065599999999999999" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoSC],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1sh],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[kps2a]" value="0.55200000000000005" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTA],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2a],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[kps2s]" value="0.069199999999999998" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTA],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2s],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[kps3]" value="1.0800000000000001" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTr],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k3],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[kps4]" value="0.27799999999999997" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTr],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k4],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[lambda]" value="3.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[LPSI0]" value="5.3399999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[n]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[omega]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Psch]" value="2267.6753242422092" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Pscmax],Reference=InitialValue>*(1-1/&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma1h],Reference=InitialValue>*(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1sh],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[beta1],Reference=InitialValue>-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km1],Reference=InitialValue>*(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1ah],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1sh],Reference=InitialValue>*2)/(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km1],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2s],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[beta2],Reference=InitialValue>-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma2],Reference=InitialValue>-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km2],Reference=InitialValue>*(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2a],Reference=InitialValue>+2*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2s],Reference=InitialValue>)/(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km2],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k3],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[beta3],Reference=InitialValue>))))
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Pscmax]" value="4500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Ptah]" value="11184.784435358517" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              (&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1ah],Reference=InitialValue>+2*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1sh],Reference=InitialValue>)/(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km1],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2s],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[beta2],Reference=InitialValue>-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma2],Reference=InitialValue>-&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km2],Reference=InitialValue>*(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2a],Reference=InitialValue>+2*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2s],Reference=InitialValue>)/(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km2],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k3],Reference=InitialValue>+&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[beta3],Reference=InitialValue>))*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Psch],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoDe]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoSC]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTA]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTr]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[skinType]" value="0.57899999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[therI]" value="84" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[thetaBLprol]" value="0.83745944528137506" type="ModelValue" simulationType="fixed">
            <InitialExpression>
              &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[aProl],Reference=InitialValue>*exp(&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[bProl],Reference=InitialValue>*&lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[doseBL],Reference=InitialValue>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Treatment_Duration]" value="1" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_001]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_001],ParameterGroup=Parameters,Parameter=k4" value="0.055599999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_001],ParameterGroup=Parameters,Parameter=rhoTr" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_002]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_002],ParameterGroup=Parameters,Parameter=alpha" value="0.071400000000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[alpha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_002],ParameterGroup=Parameters,Parameter=apopFBL" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[apopFBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_002],ParameterGroup=Parameters,Parameter=rhoDe" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoDe],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_003]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_003],ParameterGroup=Parameters,Parameter=k3" value="0.216" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_003],ParameterGroup=Parameters,Parameter=rhoTr" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_004]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_004],ParameterGroup=Parameters,Parameter=AId" value="0.00035" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_004],ParameterGroup=Parameters,Parameter=apopFBL" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[apopFBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_004],ParameterGroup=Parameters,Parameter=k4" value="0.055599999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_004],ParameterGroup=Parameters,Parameter=rhoTr" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_005]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_005],ParameterGroup=Parameters,Parameter=k2s" value="0.017299999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2s],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_005],ParameterGroup=Parameters,Parameter=rhoTA" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_006]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_006],ParameterGroup=Parameters,Parameter=k2a" value="0.13800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_006],ParameterGroup=Parameters,Parameter=rhoTA" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_007]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_007],ParameterGroup=Parameters,Parameter=AId" value="0.00035" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_007],ParameterGroup=Parameters,Parameter=apopFBL" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[apopFBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_007],ParameterGroup=Parameters,Parameter=k3" value="0.216" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_007],ParameterGroup=Parameters,Parameter=rhoTr" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_008]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_008],ParameterGroup=Parameters,Parameter=km2" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_009]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_009],ParameterGroup=Parameters,Parameter=k1sh" value="0.00164" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1sh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_009],ParameterGroup=Parameters,Parameter=rhoSC" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoSC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_010]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_010],ParameterGroup=Parameters,Parameter=k1ah" value="0.013100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1ah],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_010],ParameterGroup=Parameters,Parameter=rhoSC" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoSC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_011]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_011],ParameterGroup=Parameters,Parameter=aProl" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[aProl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_011],ParameterGroup=Parameters,Parameter=bProl" value="-0.0034039999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[bProl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_011],ParameterGroup=Parameters,Parameter=doseBL" value="52.109999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[doseBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_011],ParameterGroup=Parameters,Parameter=gamma2" value="0.014" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_011],ParameterGroup=Parameters,Parameter=rhoTA" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_012]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_012],ParameterGroup=Parameters,Parameter=AId" value="0.00035" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_012],ParameterGroup=Parameters,Parameter=apopFBL" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[apopFBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_012],ParameterGroup=Parameters,Parameter=k2s" value="0.017299999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2s],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_012],ParameterGroup=Parameters,Parameter=rhoTA" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoTA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_013]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_013],ParameterGroup=Parameters,Parameter=km1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_014]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_014],ParameterGroup=Parameters,Parameter=aProl" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[aProl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_014],ParameterGroup=Parameters,Parameter=bProl" value="-0.0034039999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[bProl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_014],ParameterGroup=Parameters,Parameter=doseBL" value="52.109999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[doseBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_014],ParameterGroup=Parameters,Parameter=gamma1h" value="0.0033" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma1h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_014],ParameterGroup=Parameters,Parameter=rhoSC" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoSC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_015]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_015],ParameterGroup=Parameters,Parameter=Pscmax" value="4500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Pscmax],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_015],ParameterGroup=Parameters,Parameter=aProl" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[aProl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_015],ParameterGroup=Parameters,Parameter=bProl" value="-0.0034039999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[bProl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_015],ParameterGroup=Parameters,Parameter=doseBL" value="52.109999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[doseBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_015],ParameterGroup=Parameters,Parameter=gamma1h" value="0.0033" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma1h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_015],ParameterGroup=Parameters,Parameter=lambda" value="3.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_015],ParameterGroup=Parameters,Parameter=rhoSC" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoSC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_016]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_016],ParameterGroup=Parameters,Parameter=AId" value="0.00035" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AId],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_016],ParameterGroup=Parameters,Parameter=Ka" value="392.7728876657734" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Ka],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_016],ParameterGroup=Parameters,Parameter=Kp" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Kp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_016],ParameterGroup=Parameters,Parameter=Pscmax" value="4500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Pscmax],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_016],ParameterGroup=Parameters,Parameter=aProl" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[aProl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_016],ParameterGroup=Parameters,Parameter=apopFBL" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[apopFBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_016],ParameterGroup=Parameters,Parameter=bProl" value="-0.0034039999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[bProl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_016],ParameterGroup=Parameters,Parameter=doseBL" value="52.109999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[doseBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_016],ParameterGroup=Parameters,Parameter=gamma1h" value="0.0033" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma1h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_016],ParameterGroup=Parameters,Parameter=k1sh" value="0.00164" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1sh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_016],ParameterGroup=Parameters,Parameter=lambda" value="3.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_016],ParameterGroup=Parameters,Parameter=rhoSC" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[rhoSC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_017]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_017],ParameterGroup=Parameters,Parameter=k5" value="0.111" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_018]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_018],ParameterGroup=Parameters,Parameter=alpha" value="0.071400000000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[alpha],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_018],ParameterGroup=Parameters,Parameter=apopFBL" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[apopFBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_019]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_019],ParameterGroup=Parameters,Parameter=k4" value="0.055599999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_020]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_020],ParameterGroup=Parameters,Parameter=AIh" value="0.0011999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_020],ParameterGroup=Parameters,Parameter=apopFBL" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[apopFBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_020],ParameterGroup=Parameters,Parameter=k5" value="0.111" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_021]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_021],ParameterGroup=Parameters,Parameter=k3" value="0.216" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_022]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_022],ParameterGroup=Parameters,Parameter=AIh" value="0.0011999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_022],ParameterGroup=Parameters,Parameter=apopFBL" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[apopFBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_022],ParameterGroup=Parameters,Parameter=k4" value="0.055599999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_023]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_023],ParameterGroup=Parameters,Parameter=k2s" value="0.017299999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2s],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_024]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_024],ParameterGroup=Parameters,Parameter=k2a" value="0.13800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_025]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_025],ParameterGroup=Parameters,Parameter=AIh" value="0.0011999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_025],ParameterGroup=Parameters,Parameter=apopFBL" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[apopFBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_025],ParameterGroup=Parameters,Parameter=k3" value="0.216" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_026]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_026],ParameterGroup=Parameters,Parameter=km2" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_027]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_027],ParameterGroup=Parameters,Parameter=Ptah" value="11184.784435358517" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Ptah],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_027],ParameterGroup=Parameters,Parameter=k1sh" value="0.00164" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1sh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_027],ParameterGroup=Parameters,Parameter=n" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_027],ParameterGroup=Parameters,Parameter=omega" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[omega],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_028]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_028],ParameterGroup=Parameters,Parameter=Ptah" value="11184.784435358517" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Ptah],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_028],ParameterGroup=Parameters,Parameter=k1ah" value="0.013100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1ah],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_028],ParameterGroup=Parameters,Parameter=n" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_028],ParameterGroup=Parameters,Parameter=omega" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[omega],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_029]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_029],ParameterGroup=Parameters,Parameter=aProl" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[aProl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_029],ParameterGroup=Parameters,Parameter=bProl" value="-0.0034039999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[bProl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_029],ParameterGroup=Parameters,Parameter=doseBL" value="52.109999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[doseBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_029],ParameterGroup=Parameters,Parameter=gamma2" value="0.014" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_030]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_030],ParameterGroup=Parameters,Parameter=AIh" value="0.0011999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_030],ParameterGroup=Parameters,Parameter=apopFBL" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[apopFBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_030],ParameterGroup=Parameters,Parameter=k2s" value="0.017299999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k2s],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_031]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_031],ParameterGroup=Parameters,Parameter=km1" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[km1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_032]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_032],ParameterGroup=Parameters,Parameter=Ptah" value="11184.784435358517" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Ptah],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_032],ParameterGroup=Parameters,Parameter=aProl" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[aProl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_032],ParameterGroup=Parameters,Parameter=bProl" value="-0.0034039999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[bProl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_032],ParameterGroup=Parameters,Parameter=doseBL" value="52.109999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[doseBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_032],ParameterGroup=Parameters,Parameter=gamma1h" value="0.0033" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma1h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_032],ParameterGroup=Parameters,Parameter=n" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_032],ParameterGroup=Parameters,Parameter=omega" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[omega],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_033]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_033],ParameterGroup=Parameters,Parameter=Pscmax" value="4500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Pscmax],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_033],ParameterGroup=Parameters,Parameter=Ptah" value="11184.784435358517" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Ptah],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_033],ParameterGroup=Parameters,Parameter=aProl" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[aProl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_033],ParameterGroup=Parameters,Parameter=bProl" value="-0.0034039999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[bProl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_033],ParameterGroup=Parameters,Parameter=doseBL" value="52.109999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[doseBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_033],ParameterGroup=Parameters,Parameter=gamma1h" value="0.0033" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma1h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_033],ParameterGroup=Parameters,Parameter=k1sh" value="0.00164" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1sh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_033],ParameterGroup=Parameters,Parameter=n" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_033],ParameterGroup=Parameters,Parameter=omega" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[omega],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_034]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_034],ParameterGroup=Parameters,Parameter=Pscmax" value="4500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Pscmax],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_034],ParameterGroup=Parameters,Parameter=Ptah" value="11184.784435358517" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[Ptah],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_034],ParameterGroup=Parameters,Parameter=aProl" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[aProl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_034],ParameterGroup=Parameters,Parameter=bProl" value="-0.0034039999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[bProl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_034],ParameterGroup=Parameters,Parameter=doseBL" value="52.109999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[doseBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_034],ParameterGroup=Parameters,Parameter=gamma1h" value="0.0033" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[gamma1h],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_034],ParameterGroup=Parameters,Parameter=lambda" value="3.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[lambda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_034],ParameterGroup=Parameters,Parameter=n" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_034],ParameterGroup=Parameters,Parameter=omega" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[omega],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_035]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_035],ParameterGroup=Parameters,Parameter=AIh" value="0.0011999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[AIh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_035],ParameterGroup=Parameters,Parameter=apopFBL" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[apopFBL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Reactions[R_035],ParameterGroup=Parameters,Parameter=k1sh" value="0.00164" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[k1sh],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
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
      <StateTemplateVariable objectReference="ModelValue_53"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 77 32098 61 20536 362 6459 119 79788 238 77633 185 392.7728876657734 0 1 1 0.00035 0.0011999999999999999 0.071400000000000005 0.28560000000000002 0 1 1.9703644373247891e-06 2.0784941930316378e-05 0.0002595114136964357 6.6800160192230667e-05 0.00013336003203844613 2.2968038813584755e-06 2.4228479967988794e-05 0.00037813234632121242 9.7334066923423184e-05 -0.0034039999999999999 52.109999999999999 0.0033 0.0132 0.014 0.046897728935757006 0.013100000000000001 0.00164 0.13800000000000001 0.017299999999999999 0.216 0.055599999999999997 0.111 9.9999999999999995e-07 9.9999999999999995e-07 9.9999999999999995e-07 9.9999999999999995e-07 6 0.052400000000000002 0.0065599999999999999 0.55200000000000005 0.069199999999999998 1.0800000000000001 0.27799999999999997 3.5 5.3399999999999999 3 100 2267.6753242422092 4500 11184.784435358517 4 4 4 5 0.57899999999999996 84 0.83745944528137506 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_26" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_25" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="80000"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="800"/>
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
    <Task key="Task_24" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_23" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_22" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_21" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_26"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_18" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_17" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_16" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_15" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_27" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_26"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_17" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_12" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_11" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_10" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_9" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="figure 5A" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Corneocytes{Healthy}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy],Vector=Metabolites[Corneocytes],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Granular Cells{Healthy}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy],Vector=Metabolites[Granular Cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Growth Arrested Cells{Healthy}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy],Vector=Metabolites[Growth Arrested Cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Spinous cells{Healthy}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy],Vector=Metabolites[Spinous cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Stem Cells{Healthy}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy],Vector=Metabolites[Stem Cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Transit Amplifying Cells{Healthy}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Healthy],Vector=Metabolites[Transit Amplifying Cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="figure 5B" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Corneocytes{Psoriatic}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic],Vector=Metabolites[Corneocytes],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Granular Cells{Psoriatic}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic],Vector=Metabolites[Granular Cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Growth Arrested Cells{Psoriatic}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic],Vector=Metabolites[Growth Arrested Cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Spinous cells{Psoriatic}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic],Vector=Metabolites[Spinous cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Stem Cells{Psoriatic}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic],Vector=Metabolites[Stem Cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Transit Amplifying Cells{Psoriatic}]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Compartments[Psoriatic],Vector=Metabolites[Transit Amplifying Cells],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Treatment Exposure" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[doseBL]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified),Vector=Values[doseBL],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="MODEL1701090001_original.xml">
    <SBMLMap SBMLid="AId" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="AIh" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="Function_for_R_1" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Function_for_R_10" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_R_11" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Function_for_R_12" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Function_for_R_13" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_for_R_14" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_for_R_15" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_R_16" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="Function_for_R_17" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_for_R_18" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Function_for_R_19" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Function_for_R_2" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_R_20" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Function_for_R_21" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Function_for_R_22" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Function_for_R_23" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Function_for_R_24" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="Function_for_R_25" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="Function_for_R_26" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="Function_for_R_27" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="Function_for_R_28" COPASIkey="Function_69"/>
    <SBMLMap SBMLid="Function_for_R_29" COPASIkey="Function_70"/>
    <SBMLMap SBMLid="Function_for_R_3" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_R_30" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="Function_for_R_31" COPASIkey="Function_72"/>
    <SBMLMap SBMLid="Function_for_R_32" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="Function_for_R_33" COPASIkey="Function_73"/>
    <SBMLMap SBMLid="Function_for_R_34" COPASIkey="Function_74"/>
    <SBMLMap SBMLid="Function_for_R_35" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="Function_for_R_4" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_R_5" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_R_6" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Function_for_R_7" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_R_8" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Function_for_R_9" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Ka" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="Kp" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="LPSI0" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="Psch" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="Pscmax" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="Ptah" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="R_1" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="R_10" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="R_11" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="R_12" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="R_13" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="R_14" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="R_15" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="R_16" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="R_17" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="R_18" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="R_19" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="R_2" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="R_20" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="R_21" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="R_22" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="R_23" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="R_24" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="R_25" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="R_26" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="R_27" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="R_28" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="R_29" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="R_3" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="R_30" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="R_31" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="R_32" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="R_33" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="R_34" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="R_35" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="R_4" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="R_5" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="R_6" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="R_7" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="R_8" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="R_9" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="aProl" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="alpha" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="alphaps" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="apopFBL" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="bProl" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="beta1h" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="beta2" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="beta3" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="beta4" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="beta5" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="betaps1" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="betaps2" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="betaps3" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="betaps4" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="compartmentOne" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="doseBL" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="gamma1h" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="gamma1ps" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="gamma2" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="gamma2ps" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="k1ah" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="k1sh" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="k2a" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="k2s" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="k5" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="km1" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="km2" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="kmps1" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="kmps2" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="kps1a" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="kps1s" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="kps2a" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="kps2s" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="kps3" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="kps4" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="lambda" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="n" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="omega" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="rhoDe" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="rhoSC" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="rhoTA" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="rhoTr" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="skinType" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="therI" COPASIkey="ModelValue_106"/>
    <SBMLMap SBMLid="thetaBLprol" COPASIkey="ModelValue_107"/>
    <SBMLMap SBMLid="xFinal_1" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="xFinal_10" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="xFinal_11" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="xFinal_12" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="xFinal_2" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="xFinal_3" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="xFinal_4" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="xFinal_5" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="xFinal_6" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="xFinal_7" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="xFinal_8" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="xFinal_9" COPASIkey="Metabolite_20"/>
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
    <UnitDefinition key="Unit_7" name="dimensionless" symbol="1">
      <Expression>
        1
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
