<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-12-17 11:35:51 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="Function for re1" type="UserDefined" reversible="false">
      <Expression>
        s1*default*(s3*default)*k1/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="default" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_263" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="s1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_261" name="s3" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for re2" type="UserDefined" reversible="false">
      <Expression>
        s4*k2/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="default" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_266" name="k2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="s4" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for re3" type="UserDefined" reversible="false">
      <Expression>
        s1*default*k3/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="default" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_268" name="k3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="s1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for re4" type="UserDefined" reversible="false">
      <Expression>
        kcatGEF*s5*s4/(KmGEFRho*(1+s7*default/KmGEFGDI)+s5*(1+s7*default/KmGEFGDI))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_272" name="KmGEFGDI" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="KmGEFRho" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="default" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_273" name="kcatGEF" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="s4" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_275" name="s5" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_276" name="s7" order="6" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for re5" type="UserDefined" reversible="false">
      <Expression>
        kcatGAP*s6*(s8*default)/(KmGAPRho*(1+s7*default/KmGAPGDI)+s6*(1+s7*default/KmGAPGDI))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_283" name="KmGAPGDI" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="KmGAPRho" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="default" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_280" name="kcatGAP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="s6" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_278" name="s7" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_277" name="s8" order="6" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for re6" type="UserDefined" reversible="true">
      <Expression>
        (k4*s5*(s7*default)-k5*(s10*default))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_290" name="default" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_289" name="k4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="k5" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="s10" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_286" name="s5" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_285" name="s7" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for re7" type="UserDefined" reversible="true">
      <Expression>
        (k6*s6*(s7*default)-k7*s13)/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="default" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_294" name="k6" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="k7" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="s13" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_291" name="s6" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_284" name="s7" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for re8" type="UserDefined" reversible="true">
      <Expression>
        (k8*s6*(s9*default)-k9*s16)/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_301" name="default" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_300" name="k8" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="k9" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="s16" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_297" name="s6" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_296" name="s9" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="NoName" simulationType="time" timeUnit="min" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="µmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0051021"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C16650"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17298"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17494"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:25628036"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T15:19:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>johannes.p.meyer@gmail.com</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Meyer</vCard:Family>
            <vCard:Given>Johannes</vCard:Given>
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
      This is a ordinary differential equation mathematical model describing the Rho GTPase cycle in which Rho GDP-dissociation inhibitors (RhoGDIs) inhibit the regulatory activities of guanine nucleotide exchange factors (GEFs) and GTPase-activating proteins (GAPs) by interacting with them directly as well as by sequestering the Rho GTPases. The model was constructed with the intent of analyzing the role of RhoGDIs in Rho GTPase signaling.
    </Comment>
    <ListOfUnsupportedAnnotations>
      <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:modelVersion>4.0</celldesigner:modelVersion>
  <celldesigner:modelDisplay sizeX="1200" sizeY="800" />
  <celldesigner:listOfIncludedSpecies>
    <celldesigner:species id="s11" name="GDP-Rho">
      <celldesigner:notes>
        <html xmlns="http://www.w3.org/1999/xhtml">
          <head>
            <title />
          </head>
          <body />
        </html>
      </celldesigner:notes>
      <celldesigner:annotation>
        <celldesigner:complexSpecies>s10</celldesigner:complexSpecies>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr3</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:annotation>
    </celldesigner:species>
    <celldesigner:species id="s12" name="GDI">
      <celldesigner:notes>
        <html xmlns="http://www.w3.org/1999/xhtml">
          <head>
            <title />
          </head>
          <body />
        </html>
      </celldesigner:notes>
      <celldesigner:annotation>
        <celldesigner:complexSpecies>s10</celldesigner:complexSpecies>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr5</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:annotation>
    </celldesigner:species>
    <celldesigner:species id="s14" name="GTP-Rho">
      <celldesigner:notes>
        <html xmlns="http://www.w3.org/1999/xhtml">
          <head>
            <title />
          </head>
          <body />
        </html>
      </celldesigner:notes>
      <celldesigner:annotation>
        <celldesigner:complexSpecies>s13</celldesigner:complexSpecies>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr4</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:annotation>
    </celldesigner:species>
    <celldesigner:species id="s15" name="GDI">
      <celldesigner:notes>
        <html xmlns="http://www.w3.org/1999/xhtml">
          <head>
            <title />
          </head>
          <body />
        </html>
      </celldesigner:notes>
      <celldesigner:annotation>
        <celldesigner:complexSpecies>s13</celldesigner:complexSpecies>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr5</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:annotation>
    </celldesigner:species>
    <celldesigner:species id="s17" name="GTP-Rho">
      <celldesigner:notes>
        <html xmlns="http://www.w3.org/1999/xhtml">
          <head>
            <title />
          </head>
          <body />
        </html>
      </celldesigner:notes>
      <celldesigner:annotation>
        <celldesigner:complexSpecies>s16</celldesigner:complexSpecies>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr4</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:annotation>
    </celldesigner:species>
    <celldesigner:species id="s18" name="Effector">
      <celldesigner:notes>
        <html xmlns="http://www.w3.org/1999/xhtml">
          <head>
            <title />
          </head>
          <body />
        </html>
      </celldesigner:notes>
      <celldesigner:annotation>
        <celldesigner:complexSpecies>s16</celldesigner:complexSpecies>
        <celldesigner:speciesIdentity>
          <celldesigner:class>PROTEIN</celldesigner:class>
          <celldesigner:proteinReference>pr7</celldesigner:proteinReference>
        </celldesigner:speciesIdentity>
      </celldesigner:annotation>
    </celldesigner:species>
  </celldesigner:listOfIncludedSpecies>
  <celldesigner:listOfCompartmentAliases />
  <celldesigner:listOfComplexSpeciesAliases>
    <celldesigner:complexSpeciesAlias id="csa1" species="s10">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="383.0" y="434.0" w="93.0" h="93.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="complexnoborder" />
      <celldesigner:backupSize w="0.0" h="0.0" />
      <celldesigner:backupView state="none" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="93.0" height="93.0" />
        <celldesigner:singleLine width="2.0" />
        <celldesigner:paint color="fff7f7f7" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="2.0" />
        <celldesigner:paint color="fff7f7f7" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa2" species="s13">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="584.0" y="241.0" w="90.0" h="90.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="complexnoborder" />
      <celldesigner:backupSize w="0.0" h="0.0" />
      <celldesigner:backupView state="none" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="90.0" height="90.0" />
        <celldesigner:singleLine width="2.0" />
        <celldesigner:paint color="fff7f7f7" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="2.0" />
        <celldesigner:paint color="fff7f7f7" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa3" species="s16">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="780.0" y="434.0" w="89.0" h="88.0" />
      <celldesigner:font size="12" />
      <celldesigner:view state="complexnoborder" />
      <celldesigner:backupSize w="0.0" h="0.0" />
      <celldesigner:backupView state="none" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="89.0" height="88.0" />
        <celldesigner:singleLine width="2.0" />
        <celldesigner:paint color="fff7f7f7" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="2.0" />
        <celldesigner:paint color="fff7f7f7" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:complexSpeciesAlias>
  </celldesigner:listOfComplexSpeciesAliases>
  <celldesigner:listOfSpeciesAliases>
    <celldesigner:speciesAlias id="sa1" species="s1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="366.0" y="111.0" w="70.0" h="25.0" />
      <celldesigner:font size="15" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="70.0" height="25.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffccccff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa2" species="s2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="263.0" y="109.0" w="30.0" h="30.0" />
      <celldesigner:font size="14" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="30.0" height="30.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffffcccc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa3" species="s3">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="487.1666666666667" y="60.0" w="80.0" h="40.0" />
      <celldesigner:font size="15" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffffff00" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa4" species="s4">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="487.1666666666667" y="147.0" w="80.0" h="40.0" />
      <celldesigner:font size="15" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffffff00" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa5" species="s5">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="293.0" y="364.0" w="80.0" h="40.0" />
      <celldesigner:font size="15" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff66ff00" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa6" species="s6">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="682.1666666666666" y="364.0" w="80.0" h="40.0" />
      <celldesigner:font size="15" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffffcccc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa7" species="s7">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="487.1666666666667" y="364.0" w="80.0" h="40.0" />
      <celldesigner:font size="15" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff00ffff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa8" species="s8">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="488.1666666666667" y="578.0" w="80.0" h="40.0" />
      <celldesigner:font size="15" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffff9900" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa9" species="s9">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="877.0" y="364.0" w="80.0" h="40.0" />
      <celldesigner:font size="15" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffff66ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa10" species="s11" complexSpeciesAlias="csa1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="389.0" y="441.0" w="80.0" h="40.0" />
      <celldesigner:font size="15" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="6.0" y="7.0" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff66ff00" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa11" species="s12" complexSpeciesAlias="csa1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="389.0" y="481.0" w="80.0" h="40.0" />
      <celldesigner:font size="15" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="6.0" y="47.0" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff00ffff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa12" species="s14" complexSpeciesAlias="csa2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="589.0" y="245.0" w="80.0" h="40.0" />
      <celldesigner:font size="15" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="5.0" y="4.0" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffffcccc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa13" species="s15" complexSpeciesAlias="csa2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="589.0" y="285.0" w="80.0" h="40.0" />
      <celldesigner:font size="15" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="5.0" y="44.0" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ff00ffff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa14" species="s17" complexSpeciesAlias="csa3">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="784.0" y="438.0" w="80.0" h="40.0" />
      <celldesigner:font size="15" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="4.0" y="4.0" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffffcccc" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa15" species="s18" complexSpeciesAlias="csa3">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="784.0" y="478.0" w="80.0" h="40.0" />
      <celldesigner:font size="15" />
      <celldesigner:view state="usual" />
      <celldesigner:usualView>
        <celldesigner:innerPosition x="4.0" y="44.0" />
        <celldesigner:boxSize width="80.0" height="40.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="ffff66ff" scheme="Color" />
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0" />
        <celldesigner:boxSize width="80.0" height="60.0" />
        <celldesigner:singleLine width="1.0" />
        <celldesigner:paint color="3fff0000" scheme="Color" />
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966" />
    </celldesigner:speciesAlias>
  </celldesigner:listOfSpeciesAliases>
  <celldesigner:listOfGroups />
  <celldesigner:listOfProteins>
    <celldesigner:protein id="pr1" name="GEF" type="GENERIC" />
    <celldesigner:protein id="pr2" name="Active GEF" type="GENERIC" />
    <celldesigner:protein id="pr3" name="GDP-Rho" type="GENERIC" />
    <celldesigner:protein id="pr4" name="GTP-Rho" type="GENERIC" />
    <celldesigner:protein id="pr5" name="GDI" type="GENERIC" />
    <celldesigner:protein id="pr6" name="GAP" type="GENERIC" />
    <celldesigner:protein id="pr7" name="Effector" type="GENERIC" />
  </celldesigner:listOfProteins>
  <celldesigner:listOfGenes />
  <celldesigner:listOfRNAs />
  <celldesigner:listOfAntisenseRNAs />
  <celldesigner:listOfLayers />
  <celldesigner:listOfBlockDiagrams />
</celldesigner:extension>
      </UnsupportedAnnotation>
    </ListOfUnsupportedAnnotations>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="default" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-17T11:02:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C12508"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Activator" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-17T11:03:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C154897"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>UNKNOWN</celldesigner:class>
    <celldesigner:name>Activator</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re1" />
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Degrade" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C154407"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-17T11:04:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C154897"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>Degrade</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="GEF" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-17T11:13:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C17494"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr1</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Active GEF" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C45329"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-17T11:06:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr2</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re4" />
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="GDP-Rho" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T15:20:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasVersion rdf:resource="urn:miriam:pr:PR:000000122"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr3</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="GTP-Rho" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-17T11:10:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:pr:PR:000000122"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr4</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="GDI" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T15:23:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr5</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re4" />
    <celldesigner:catalyzed reaction="re5" />
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="GAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-17T11:29:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C17298"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr6</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re5" />
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="Effector" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-17T11:05:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:35224"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr7</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="GDI·GDP-Rho" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-17T11:00:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:pr:PR:000000122"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:pr:PR:000004242"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>GDI·GDP-Rho</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="GDI·GTP-Rho" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pr:PR:000000122"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-17T10:56:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:pr:PR:000004242"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>GDI·GTP-Rho</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="Effector GTP-Rho" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-17T11:06:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:35224"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:pr:PR:000000122"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>Effector GTP-Rho</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="re1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T15:19:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C64382"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s3" alias="sa3">
      <celldesigner:linkAnchor position="SSW" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s4" alias="sa4">
      <celldesigner:linkAnchor position="NNW" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
  <celldesigner:listOfModification>
    <celldesigner:modification type="UNKNOWN_CATALYSIS" modifiers="s1" aliases="sa1" targetLineIndex="-1,3">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s1" alias="sa1">
        <celldesigner:linkAnchor position="E" />
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000" />
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5024" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_5024"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="re2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T15:22:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000180"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s4" alias="sa4">
      <celldesigner:linkAnchor position="NNE" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s3" alias="sa3">
      <celldesigner:linkAnchor position="SSE" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5022" name="k2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_5022"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="re3" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T15:22:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s1" alias="sa1">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s2" alias="sa2">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5021" name="k3" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Parameter_5021"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="re4" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T15:22:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000177"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s5" alias="sa5">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s6" alias="sa6">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
      <celldesigner:lineDirection index="1" value="unknown" />
      <celldesigner:lineDirection index="2" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>-0.0025695931477516254,-0.34689507494646654 0.9995717344753748,-0.3468950749464661</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000" />
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s4" aliases="sa4" targetLineIndex="-1,2">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s4" alias="sa4">
        <celldesigner:linkAnchor position="S" />
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000" />
    </celldesigner:modification>
    <celldesigner:modification type="INHIBITION" modifiers="s7" aliases="sa7" targetLineIndex="-1,3">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s7" alias="sa7">
        <celldesigner:linkAnchor position="N" />
      </celldesigner:linkTarget>
      <celldesigner:line width="3.0" color="ffff3333" />
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5020" name="kcatGEF" value="5.64"/>
          <Constant key="Parameter_5019" name="KmGEFRho" value="24.5"/>
          <Constant key="Parameter_5018" name="KmGEFGDI" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Parameter_5018"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_5019"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Parameter_5020"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="re5" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T15:20:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C16702"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s6" alias="sa6">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s5" alias="sa5">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown" />
      <celldesigner:lineDirection index="1" value="unknown" />
      <celldesigner:lineDirection index="2" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>4.2826552462504885E-4,-0.3494646680942186 0.9999999999999999,-0.3494646680942186</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000" />
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s8" aliases="sa8" targetLineIndex="-1,2">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s8" alias="sa8">
        <celldesigner:linkAnchor position="N" />
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000" />
    </celldesigner:modification>
    <celldesigner:modification type="INHIBITION" modifiers="s7" aliases="sa7" targetLineIndex="-1,3">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown" />
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s7" alias="sa7">
        <celldesigner:linkAnchor position="S" />
      </celldesigner:linkTarget>
      <celldesigner:line width="3.0" color="ffff3333" />
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5017" name="kcatGAP" value="95.9"/>
          <Constant key="Parameter_5016" name="KmGAPRho" value="4.48"/>
          <Constant key="Parameter_5015" name="KmGAPGDI" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Parameter_5015"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Parameter_5016"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_5017"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="re6" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T15:22:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000177"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s5" alias="sa5">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseReactant>
    <celldesigner:baseReactant species="s7" alias="sa7">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s10" alias="csa1">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="unknown" />
      <celldesigner:lineDirection arm="1" index="0" value="unknown" />
      <celldesigner:lineDirection arm="2" index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="0" num1="0" num2="0" tShapeIndex="0">0.48669527896995757,0.01036269430051684</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5014" name="k4" value="0.5"/>
          <Constant key="Parameter_5013" name="k5" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Parameter_5014"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Parameter_5013"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="re7" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T15:22:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000177"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s7" alias="sa7">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseReactant>
    <celldesigner:baseReactant species="s6" alias="sa6">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s13" alias="csa2">
      <celldesigner:linkAnchor position="S" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="unknown" />
      <celldesigner:lineDirection arm="1" index="0" value="unknown" />
      <celldesigner:lineDirection arm="2" index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="0" num1="0" num2="0" tShapeIndex="0">0.517094017094017,0.0</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5012" name="k6" value="0.5"/>
          <Constant key="Parameter_5011" name="k7" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Parameter_5012"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Parameter_5011"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="re8" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-12-04T15:22:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000177"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s6" alias="sa6">
      <celldesigner:linkAnchor position="E" />
    </celldesigner:baseReactant>
    <celldesigner:baseReactant species="s9" alias="sa9">
      <celldesigner:linkAnchor position="W" />
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s16" alias="csa3">
      <celldesigner:linkAnchor position="N" />
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="unknown" />
      <celldesigner:lineDirection arm="1" index="0" value="unknown" />
      <celldesigner:lineDirection arm="2" index="0" value="unknown" />
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="0" num1="0" num2="0" tShapeIndex="0">0.5201026518391789,0.0</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000" />
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5010" name="k8" value="28.2"/>
          <Constant key="Parameter_5009" name="k9" value="0.18"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=NoName,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Parameter_5010"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Parameter_5009"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=NoName" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default],Vector=Metabolites[Activator]" value="6.022140857e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default],Vector=Metabolites[Degrade]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default],Vector=Metabolites[GEF]" value="1.86686366567e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default],Vector=Metabolites[Active GEF]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default],Vector=Metabolites[GDP-Rho]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default],Vector=Metabolites[GTP-Rho]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default],Vector=Metabolites[GDI]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default],Vector=Metabolites[GAP]" value="60221408570000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default],Vector=Metabolites[Effector]" value="6.022140857e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default],Vector=Metabolites[GDI·GDP-Rho]" value="7.8287831141e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default],Vector=Metabolites[GDI·GTP-Rho]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NoName,Vector=Compartments[default],Vector=Metabolites[Effector GTP-Rho]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[re1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[re1],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[re2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[re2],ParameterGroup=Parameters,Parameter=k2" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[re3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[re3],ParameterGroup=Parameters,Parameter=k3" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[re4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[re4],ParameterGroup=Parameters,Parameter=kcatGEF" value="5.6399999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[re4],ParameterGroup=Parameters,Parameter=KmGEFRho" value="24.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[re4],ParameterGroup=Parameters,Parameter=KmGEFGDI" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[re5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[re5],ParameterGroup=Parameters,Parameter=kcatGAP" value="95.900000000000006" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[re5],ParameterGroup=Parameters,Parameter=KmGAPRho" value="4.4800000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[re5],ParameterGroup=Parameters,Parameter=KmGAPGDI" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[re6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[re6],ParameterGroup=Parameters,Parameter=k4" value="0.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[re6],ParameterGroup=Parameters,Parameter=k5" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[re7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[re7],ParameterGroup=Parameters,Parameter=k6" value="0.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[re7],ParameterGroup=Parameters,Parameter=k7" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NoName,Vector=Reactions[re8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[re8],ParameterGroup=Parameters,Parameter=k8" value="28.199999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NoName,Vector=Reactions[re8],ParameterGroup=Parameters,Parameter=k9" value="0.17999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 1.86686366567e+17 0 0 0 0 7.8287831141e+17 0 6.022140857e+17 6.022140857e+17 0 60221408570000000 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_14" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
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
    <Task key="Task_15" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1000"/>
        <Parameter name="StepSize" type="float" value="0.59999999999999998"/>
        <Parameter name="Duration" type="float" value="600"/>
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
    <Task key="Task_16" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="4"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NoName,Vector=Compartments[default],Vector=Metabolites[GDI],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="0"/>
            <Parameter name="Maximum" type="float" value="2.3999999999999999"/>
            <Parameter name="log" type="bool" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_17" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_18" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_19" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_22" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_23" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_24" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_25" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value=""/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
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
    <Report key="Report_10" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_12" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="Ota2015_Figure_2_B" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Effector GTP-Rho]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NoName,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NoName,Vector=Compartments[default],Vector=Metabolites[Effector GTP-Rho],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_2" name="Layout">
      <Dimensions width="1200" height="800"/>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_3" name="SpeciesGlyph" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="366" y="111"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_4" name="SpeciesGlyph_1" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="263" y="109"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_5" name="SpeciesGlyph_2" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="487.16666666666669" y="60"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_6" name="SpeciesGlyph_3" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="487.16666666666669" y="147"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_7" name="SpeciesGlyph_4" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="293" y="364"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="SpeciesGlyph_5" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="682.16666666666663" y="364"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_9" name="SpeciesGlyph_6" metabolite="Metabolite_6">
          <BoundingBox>
            <Position x="487.16666666666669" y="364"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_10" name="SpeciesGlyph_7" metabolite="Metabolite_7">
          <BoundingBox>
            <Position x="488.16666666666669" y="578"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_11" name="SpeciesGlyph_8" metabolite="Metabolite_8">
          <BoundingBox>
            <Position x="877" y="364"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_12" name="SpeciesGlyph_9" metabolite="Metabolite_9">
          <BoundingBox>
            <Position x="383" y="434"/>
            <Dimensions width="93" height="93"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_13" name="SpeciesGlyph_10" metabolite="Metabolite_10">
          <BoundingBox>
            <Position x="584" y="241"/>
            <Dimensions width="90" height="90"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_14" name="SpeciesGlyph_11" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="780" y="434"/>
            <Dimensions width="89" height="88"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_15" name="ReactionGlyph" reaction="Reaction_0">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="507.16666666666669" y="116"/>
                <End x="507.16666666666669" y="131"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_16" name="SpeciesReferenceGlyph" metaboliteGlyph="Layout_5" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="507.16666666666669" y="116"/>
                    <End x="507.16666666666669" y="100"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_17" name="SpeciesReferenceGlyph_1" metaboliteGlyph="Layout_6" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="507.16666666666669" y="131"/>
                    <End x="507.16666666666669" y="147"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_18" name="SpeciesReferenceGlyph_2" metaboliteGlyph="Layout_3" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="436" y="123.5"/>
                    <End x="503.41666666666669" y="127.25"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_19" name="ReactionGlyph_1" reaction="Reaction_1">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="547.16666666666674" y="131"/>
                <End x="547.16666666666674" y="116"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_20" name="SpeciesReferenceGlyph_3" metaboliteGlyph="Layout_6" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="547.16666666666674" y="131"/>
                    <End x="547.16666666666674" y="147"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_21" name="SpeciesReferenceGlyph_4" metaboliteGlyph="Layout_5" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="547.16666666666674" y="116"/>
                    <End x="547.16666666666674" y="100"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_22" name="ReactionGlyph_2" reaction="Reaction_2">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="336.99982408200123" y="123.6986313419041"/>
                <End x="322.00017591799877" y="123.8013686580959"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_23" name="SpeciesReferenceGlyph_5" metaboliteGlyph="Layout_3" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="336.99982408200123" y="123.6986313419041"/>
                    <End x="366" y="123.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_24" name="SpeciesReferenceGlyph_6" metaboliteGlyph="Layout_4" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="322.00017591799877" y="123.8013686580959"/>
                    <End x="293" y="124"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_25" name="ReactionGlyph_3" reaction="Reaction_3">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="519.5" y="229.0000000000002"/>
                <End x="534.5" y="229.0000000000002"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_26" name="SpeciesReferenceGlyph_7" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="519.5" y="229.0000000000002"/>
                    <End x="332" y="229.00000000000011"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="332" y="229.00000000000011"/>
                    <End x="333" y="364"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_27" name="SpeciesReferenceGlyph_8" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="534.5" y="229.0000000000002"/>
                    <End x="722" y="229.00000000000028"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="722" y="229.00000000000028"/>
                    <End x="722.16666666666663" y="364"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_28" name="SpeciesReferenceGlyph_9" metaboliteGlyph="Layout_6" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="527.16666666666674" y="187"/>
                    <End x="527" y="224.0000000000002"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_29" name="SpeciesReferenceGlyph_10" metaboliteGlyph="Layout_9" role="inhibitor">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="527.16666666666674" y="364"/>
                    <End x="527" y="234.0000000000002"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_30" name="ReactionGlyph_4" reaction="Reaction_4">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="535" y="540"/>
                <End x="520" y="540"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_31" name="SpeciesReferenceGlyph_11" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="535" y="540"/>
                    <End x="722" y="540"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="722" y="540"/>
                    <End x="722.16666666666663" y="404"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_32" name="SpeciesReferenceGlyph_12" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="520" y="540"/>
                    <End x="333.00000000000006" y="540"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="333.00000000000006" y="540"/>
                    <End x="333" y="404"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_33" name="SpeciesReferenceGlyph_13" metaboliteGlyph="Layout_10" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="528.16666666666674" y="578"/>
                    <End x="535" y="545"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_34" name="SpeciesReferenceGlyph_14" metaboliteGlyph="Layout_9" role="inhibitor">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="527.16666666666674" y="404"/>
                    <End x="535" y="535"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_35" name="ReactionGlyph_5" reaction="Reaction_5">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="428.5" y="384.99999999999989"/>
                <End x="428.80605871993777" y="399.99687727695158"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_36" name="SpeciesReferenceGlyph_15" metaboliteGlyph="Layout_12" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="428.5" y="384.99999999999989"/>
                    <End x="429.5" y="434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_37" name="SpeciesReferenceGlyph_16" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="428.5" y="384.99999999999989"/>
                    <End x="373" y="384"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_38" name="SpeciesReferenceGlyph_17" metaboliteGlyph="Layout_9" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="428.5" y="384.99999999999989"/>
                    <End x="487.16666666666669" y="384"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_39" name="ReactionGlyph_6" reaction="Reaction_6">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="628" y="384"/>
                <End x="628.28296850421418" y="369.00266927664717"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_40" name="SpeciesReferenceGlyph_18" metaboliteGlyph="Layout_13" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="628" y="384"/>
                    <End x="629" y="331"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_41" name="SpeciesReferenceGlyph_19" metaboliteGlyph="Layout_9" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="628" y="384"/>
                    <End x="567.16666666666674" y="384"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_42" name="SpeciesReferenceGlyph_20" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="628" y="384"/>
                    <End x="682.16666666666663" y="384"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_43" name="ReactionGlyph_7" reaction="Reaction_7">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="823.5" y="384"/>
                <End x="823.799940017994" y="398.99700089970008"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_44" name="SpeciesReferenceGlyph_21" metaboliteGlyph="Layout_14" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="823.5" y="384"/>
                    <End x="824.5" y="434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_45" name="SpeciesReferenceGlyph_22" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="823.5" y="384"/>
                    <End x="762.16666666666663" y="384"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_46" name="SpeciesReferenceGlyph_23" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="823.5" y="384"/>
                    <End x="877" y="384"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_47" name="TextGlyph" graphicalObject="Layout_3" text="Activator">
          <BoundingBox>
            <Position x="366" y="111"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_48" name="TextGlyph_1" graphicalObject="Layout_5" text="GEF">
          <BoundingBox>
            <Position x="487.16666666666669" y="60"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_49" name="TextGlyph_2" graphicalObject="Layout_6" text="Active GEF">
          <BoundingBox>
            <Position x="487.16666666666669" y="147"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_50" name="TextGlyph_3" graphicalObject="Layout_7" text="GDP-Rho">
          <BoundingBox>
            <Position x="293" y="364"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_51" name="TextGlyph_4" graphicalObject="Layout_8" text="GTP-Rho">
          <BoundingBox>
            <Position x="682.16666666666663" y="364"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_52" name="TextGlyph_5" graphicalObject="Layout_9" text="GDI">
          <BoundingBox>
            <Position x="487.16666666666669" y="364"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_53" name="TextGlyph_6" graphicalObject="Layout_10" text="GAP">
          <BoundingBox>
            <Position x="488.16666666666669" y="578"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_54" name="TextGlyph_7" graphicalObject="Layout_11" text="Effector">
          <BoundingBox>
            <Position x="877" y="364"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_55" name="TextGlyph_8" graphicalObject="Layout_12" text="GDI·GDP-Rho">
          <BoundingBox>
            <Position x="383" y="434"/>
            <Dimensions width="93" height="93"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_56" name="TextGlyph_9" graphicalObject="Layout_13" text="GDI·GTP-Rho">
          <BoundingBox>
            <Position x="584" y="241"/>
            <Dimensions width="90" height="90"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_57" name="TextGlyph_10" graphicalObject="Layout_14" text="Effector GTP-Rho">
          <BoundingBox>
            <Position x="780" y="434"/>
            <Dimensions width="89" height="88"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
      <ListOfRenderInformation>
        <RenderInformation key="LocalRenderInformation_0" backgroundColor="#FFFFFFFF">
          <ListOfColorDefinitions>
            <ColorDefinition id="black" value="#000000"/>
            <ColorDefinition id="ColorDefinition" value="#ccccff"/>
            <ColorDefinition id="ColorDefinition_1" value="#ffcccc"/>
            <ColorDefinition id="ColorDefinition_2" value="#ffff00"/>
            <ColorDefinition id="ColorDefinition_3" value="#66ff00"/>
            <ColorDefinition id="ColorDefinition_4" value="#00ffff"/>
            <ColorDefinition id="ColorDefinition_5" value="#ff9900"/>
            <ColorDefinition id="ColorDefinition_6" value="#ff66ff"/>
            <ColorDefinition id="ColorDefinition_7" value="#f7f7f7"/>
          </ListOfColorDefinitions>
          <ListOfLineEndings>
            <LineEnding id="modifier_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Polygon stroke="#000000" fill="#000000">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="50%" y="100%"/>
                    <Element x="100%" y="50%"/>
                    <Element x="50%" y="0"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
            <LineEnding id="inhibitor_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="0" y="-5"/>
                <Dimensions width="3" height="10"/>
              </BoundingBox>
              <Group>
                <Rectangle stroke-width="1" fill="#000000" x="0" y="0" width="100%" height="100%"/>
              </Group>
            </LineEnding>
            <LineEnding id="activator_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Polygon>
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="0" y="100%"/>
                    <Element x="100%" y="50%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
            <LineEnding id="catalysis_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="#ffffff" cx="5" cy="5" rx="5" ry="5"/>
              </Group>
            </LineEnding>
            <LineEnding id="product_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-10" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Polygon fill="#000000">
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="0" y="100%"/>
                    <Element x="100%" y="50%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
          </ListOfLineEndings>
          <ListOfStyles>
            <Style key="LocalStyle_0" typeList="REACTIONGLYPH SPECIESREFERENCEGLYPH">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              </Group>
            </Style>
            <Style key="LocalStyle_1" roleList="modifier">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="modifier_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_2" roleList="inhibitor">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="inhibitor_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_3" roleList="activator">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="activator_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_4" keyList="Layout_28 Layout_33">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="catalysis_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_5" keyList="Layout_18">
              <Group stroke="black" stroke-width="1" stroke-dasharray="5, 5" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="catalysis_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_6" roleList="product sideproduct">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top" endHead="product_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_7" roleList="sidesubstrate substrate">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
              </Group>
            </Style>
            <Style key="LocalStyle_8" keyList="Layout_47">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="15" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_9" keyList="Layout_48">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="15" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_10" keyList="Layout_49">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="15" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_11" keyList="Layout_50">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="15" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_12" keyList="Layout_51">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="15" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_13" keyList="Layout_52">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="15" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_14" keyList="Layout_53">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="15" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_15" keyList="Layout_54">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="15" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_16" keyList="Layout_55">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_17" keyList="Layout_56">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_18" keyList="Layout_57">
              <Group stroke="black" stroke-width="1" fill="none" fill-rule="nonzero" font-size="12" font-family="Arial" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_19" keyList="Layout_3">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse fill="ColorDefinition" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_20" keyList="Layout_4">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_1" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_21" keyList="Layout_5">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_22" keyList="Layout_6">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_23" keyList="Layout_7">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_3" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_24" keyList="Layout_8">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_1" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_25" keyList="Layout_9">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_4" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_26" keyList="Layout_10">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_5" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_27" keyList="Layout_11">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_28" keyList="Layout_14">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="2" fill="ColorDefinition_7">
                  <ListOfElements>
                    <Element x="9.88764%" y="0"/>
                    <Element x="90.1124%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="90.1124%" y="100%"/>
                    <Element x="9.88764%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_1" x="4" y="4" width="80" height="40" rx="10%" ry="10%"/>
                <Text stroke="#000000" x="44" y="24" font-size="10" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
                  GTP-Rho
                </Text>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_6" x="4" y="44" width="80" height="40" rx="10%" ry="10%"/>
                <Text stroke="#000000" x="44" y="64" font-size="10" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
                  Effector
                </Text>
              </Group>
            </Style>
            <Style key="LocalStyle_29" keyList="Layout_12">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="2" fill="ColorDefinition_7">
                  <ListOfElements>
                    <Element x="10%" y="0"/>
                    <Element x="90%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="90%" y="100%"/>
                    <Element x="10%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_3" x="6" y="7" width="80" height="40" rx="10%" ry="10%"/>
                <Text stroke="#000000" x="46" y="27" font-size="10" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
                  GDP-Rho
                </Text>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_4" x="6" y="47" width="80" height="40" rx="10%" ry="10%"/>
                <Text stroke="#000000" x="46" y="67" font-size="10" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
                  GDI
                </Text>
              </Group>
            </Style>
            <Style key="LocalStyle_30" keyList="Layout_13">
              <Group stroke-width="0" fill="none" fill-rule="nonzero" font-family="sans-serif" text-anchor="start" vtext-anchor="top">
                <Polygon stroke="#000000" stroke-width="2" fill="ColorDefinition_7">
                  <ListOfElements>
                    <Element x="10%" y="0"/>
                    <Element x="90%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="90%" y="100%"/>
                    <Element x="10%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_1" x="5" y="4" width="80" height="40" rx="10%" ry="10%"/>
                <Text stroke="#000000" x="45" y="24" font-size="10" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
                  GTP-Rho
                </Text>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_4" x="5" y="44" width="80" height="40" rx="10%" ry="10%"/>
                <Text stroke="#000000" x="45" y="64" font-size="10" font-family="Arial" text-anchor="middle" vtext-anchor="middle">
                  GDI
                </Text>
              </Group>
            </Style>
          </ListOfStyles>
        </RenderInformation>
      </ListOfRenderInformation>
    </Layout>
  </ListOfLayouts>
  <SBMLReference file="1809384225113243_add3.xml">
    <SBMLMap SBMLid="default" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="re1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="re2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="re3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="re4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="re5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="re6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="re7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="re8" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="s1" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="s10" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="s13" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="s16" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="s2" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="s3" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="s4" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="s5" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="s6" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="s7" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="s8" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="s9" COPASIkey="Metabolite_8"/>
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
    <UnitDefinition key="Unit_32" name="minute" symbol="min">
      <Expression>
        60*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
