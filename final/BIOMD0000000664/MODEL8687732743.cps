<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-01-29 12:19:52 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="22" versionDevel="170" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
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
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="function 1_1" type="UserDefined" reversible="false">
      <Expression>
        a1*(g1/(b1+g1))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_321" name="a1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="b1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="g1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="function 1_2" type="UserDefined" reversible="false">
      <Expression>
        a2*(g2/(b2+g2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_328" name="a2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="b2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="g2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="function 2_1" type="UserDefined" reversible="false">
      <Expression>
        f13*(E-C_Raf-C_Raf_inactive)*FGFR
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_338" name="C_Raf" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_339" name="C_Raf_inactive" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_340" name="E" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="FGFR" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_342" name="f13" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="function 3_1" type="UserDefined" reversible="false">
      <Expression>
        f53*(E-C_Raf-C_Raf_inactive)*MAPK
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_348" name="C_Raf" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_349" name="C_Raf_inactive" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_350" name="E" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="MAPK" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_352" name="f53" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="function 4_1" type="UserDefined" reversible="false">
      <Expression>
        f14*FGFR
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_334" name="FGFR" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_358" name="f14" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="function 4_2" type="UserDefined" reversible="false">
      <Expression>
        f24*MSH
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_361" name="MSH" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_362" name="f24" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="function 4_3" type="UserDefined" reversible="false">
      <Expression>
        f35*C_Raf
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_367" name="C_Raf" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_368" name="f35" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="function 4_4" type="UserDefined" reversible="false">
      <Expression>
        f45*B_Raf
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_371" name="B_Raf" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_372" name="f45" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="function 5_1" type="UserDefined" reversible="false">
      <Expression>
        h36_y3*MSH*C_Raf
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_378" name="C_Raf" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_379" name="MSH" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_380" name="h36_y3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Muller2008_MAPKactivation_Dynamics" simulationType="time" timeUnit="min" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/mamo/MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043408"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/18171696"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:13:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
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
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:13:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL8687732743"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bto/BTO:0000848"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <p>This a model from the article:      <br />
    <strong>Network topology determines dynamics of the mammalian MAPK1,2 signaling network: bifan motif regulation of C-Raf and B-Raf isoforms by FGFR and MC1R.</strong>
    <br />
          Muller M, Obeyesekere M, Mills GB, Ram PT.      <em>FASEB J.</em>
          2008;22(5):1393-403.      <a href="http://www.ncbi.nlm.nih.gov/pubmed/18171696">18171696</a>
          ,      <br />
    <strong>Abstract:</strong>
    <br />
          Activation of the fibroblast growth factor (FGFR) and melanocyte stimulating hormone (MC1R) receptors stimulates B-Raf and C-Raf isoforms that regulate the dynamics of MAPK1,2 signaling. Network topology motifs in mammalian cells include feed-forward and feedback loops and bifans where signals from two upstream molecules integrate to modulate the activity of two downstream molecules. We computationally modeled and experimentally tested signal processing in the FGFR/MC1R/B-Raf/C-Raf/MAPK1,2 network in human melanoma cells; identifying 7 regulatory loops and a bifan motif. Signaling from FGFR leads to sustained activation of MAPK1,2, whereas signaling from MC1R results in transient activation of MAPK1,2. The dynamics of MAPK activation depends critically on the expression level and connectivity to C-Raf, which is critical for a sustained MAPK1,2 response. A partially incoherent bifan motif with a feedback loop acts as a logic gate to integrate signals and regulate duration of activation of the MAPK signaling cascade. Further reducing a 106-node ordinary differential equations network encompassing the complete network to a 6-node network encompassing rate-limiting processes sustains the feedback loops and the bifan, providing sufficient information to predict biological responses.      </p>
    <p>This model was taken from the      <a href="http://www.cellml.org/models">CellML repository</a>
          and automatically converted to SBML.      <br />
          The original model was:      <a href="http://www.cellml.org/models/muller_obeyesekere_mills_ram_2008_version01">
      <strong>Muller, Obeyesekere, Mills, Ram. (2008) - version01</strong>
    </a>
    <br />
          The original CellML model was created by:      <br />
    <strong>Lloyd, Catherine, May</strong>
    <br />
          c.lloyd@auckland.ac.nz      <br />
          The University of Auckland      <br />
          Auckland Bioengineering Institute      <br /></p>
    <p>This model originates from BioModels Database: A Database of Annotated Published Models (http://www.ebi.ac.uk/biomodels/). It is copyright (c) 2005-2011 The BioModels.net Team.      <br />
          To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. Please refer to      <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a>
          for more information.      </p>
    <p>In summary, you are entitled to use this encoded model in absolutely any manner you deem suitable, verbatim, or with modification, alone or embedded it in a larger context, redistribute it, commercially or not, in a restricted way or not..      <br />
    <br />
          To cite BioModels Database, please use:      <a href="http://www.ncbi.nlm.nih.gov/pubmed/20587024" target="_blank">Li C, Donizelli M, Rodriguez N, Dharuri H, Endler L, Chelliah V, Li L, He E, Henry A, Stefan MI, Snoep JL, Hucka M, Le Novère N, Laibe C (2010) BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models. BMC Syst Biol., 4:92.</a>
  </p>
</body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Compartment" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="FGFR" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P11362" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="MSH" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pr/PR:000001239" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="B-Raf" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P15056" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="MAPK" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P28482" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="C-Raf inactive" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04049" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="g2" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C41210" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/fma/FMA:74643" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[g2],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="C-Raf" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04049" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="g1" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C41210" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P05230" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[g1],Reference=Value>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="a1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          0.06*mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="g1" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Reference=Time> ge 0 and &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Reference=Time> lt 5,0,if(&lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Reference=Time> ge 5 and &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Reference=Time> lt 10,1,0))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="b1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="d1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(59.9999*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="a2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          0.06*mmol/(l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="g2" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Reference=Time> ge 0 and &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Reference=Time> lt 5,1,0)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="b2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="d2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(59.9999*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="f53" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          0.06*ml/(mol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="f13" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          0.06*ml/(mol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="h36" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          0.06*ml/(mol*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="d3" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(59.9999*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="E" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="f14" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(59.9999*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="f24" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(59.9999*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="d4" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(59.9999*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="f35" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(59.9999*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="f45" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(59.9999*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="d5" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(59.9999*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="d6" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T12:14:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(59.9999*s)
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="FGFR Stimulus" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000170" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7527" name="a1" value="10"/>
          <Constant key="Parameter_5029" name="b1" value="10"/>
          <Constant key="Parameter_5035" name="g1" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="FGFR Degradation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5036" name="k1" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="MSH Stimulus" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000170" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5037" name="a2" value="10"/>
          <Constant key="Parameter_5038" name="b2" value="10"/>
          <Constant key="Parameter_5039" name="g2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="MSH Degradation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5045" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="C-Raf Activation 1" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/R-HSA-5673000" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/R-HSA-442726" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5044" name="E" value="10"/>
          <Constant key="Parameter_5032" name="f13" value="0.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="C_Raf Activation 2" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/R-HSA-5673000" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/R-HSA-442726" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5034" name="E" value="10"/>
          <Constant key="Parameter_5033" name="f53" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="C-Raf Degradation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5031" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="B-Raf Activation 1" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/R-HSA-5673000" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/R-HSA-442726" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5030" name="f14" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="B-Raf Activation 2" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/R-HSA-5673000" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/R-HSA-442726" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7520" name="f24" value="0.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="B-Raf Degradation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7521" name="k1" value="1.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="MAPK Activation 1" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/R-HSA-5674135" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/R-HSA-442737" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7522" name="f35" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="MAPK Activation 2" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/R-HSA-5674135" />
      </rdf:Bag>
    </CopasiMT:isPartOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/reactome/R-HSA-442737" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7523" name="f45" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="MAPK Degradation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7516" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="C-Raf Inactivation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-26T13:24:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7517" name="h36_y3" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="Inactive C-Raf degradation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000179" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_7518" name="k1" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment],Vector=Metabolites[FGFR]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment],Vector=Metabolites[MSH]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment],Vector=Metabolites[B-Raf]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment],Vector=Metabolites[MAPK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment],Vector=Metabolites[C-Raf inactive]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment],Vector=Metabolites[g2]" value="6.0221408570000002e+23" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment],Vector=Metabolites[C-Raf]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment],Vector=Metabolites[g1]" value="0" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[a1]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[g1]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[b1]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[d1]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[a2]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[g2]" value="1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[b2]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[d2]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[f53]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[f13]" value="0.59999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[h36]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[d3]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[E]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[f14]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[f24]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[d4]" value="1.1000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[f35]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[f45]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[d5]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[d6]" value="0.001" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[FGFR Stimulus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[FGFR Stimulus],ParameterGroup=Parameters,Parameter=a1" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[a1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[FGFR Stimulus],ParameterGroup=Parameters,Parameter=b1" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[b1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[FGFR Stimulus],ParameterGroup=Parameters,Parameter=g1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[g1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[FGFR Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[FGFR Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[d1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[MSH Stimulus]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[MSH Stimulus],ParameterGroup=Parameters,Parameter=a2" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[a2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[MSH Stimulus],ParameterGroup=Parameters,Parameter=b2" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[b2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[MSH Stimulus],ParameterGroup=Parameters,Parameter=g2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[g2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[MSH Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[MSH Degradation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[d2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[C-Raf Activation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[C-Raf Activation 1],ParameterGroup=Parameters,Parameter=E" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[C-Raf Activation 1],ParameterGroup=Parameters,Parameter=f13" value="0.59999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[f13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[C_Raf Activation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[C_Raf Activation 2],ParameterGroup=Parameters,Parameter=E" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[C_Raf Activation 2],ParameterGroup=Parameters,Parameter=f53" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[f53],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[C-Raf Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[C-Raf Degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[d3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[B-Raf Activation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[B-Raf Activation 1],ParameterGroup=Parameters,Parameter=f14" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[f14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[B-Raf Activation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[B-Raf Activation 2],ParameterGroup=Parameters,Parameter=f24" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[f24],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[B-Raf Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[B-Raf Degradation],ParameterGroup=Parameters,Parameter=k1" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[d4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[MAPK Activation 1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[MAPK Activation 1],ParameterGroup=Parameters,Parameter=f35" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[f35],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[MAPK Activation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[MAPK Activation 2],ParameterGroup=Parameters,Parameter=f45" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[f45],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[MAPK Degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[MAPK Degradation],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[d5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[C-Raf Inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[C-Raf Inactivation],ParameterGroup=Parameters,Parameter=h36_y3" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[h36],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[Inactive C-Raf degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Reactions[Inactive C-Raf degradation],ParameterGroup=Parameters,Parameter=k1" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Values[d6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 0 0 6.0221408570000002e+23 0 0 1 1 10 10 0.20000000000000001 10 10 0.10000000000000001 1.5 0.59999999999999998 0.10000000000000001 1 10 0.10000000000000001 0.80000000000000004 1.1000000000000001 0.29999999999999999 0.10000000000000001 1 0.001 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="100"/>
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
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
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
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
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
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
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
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
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
    <Task key="Task_0" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
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
    <PlotSpecification name="plot" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[MAPK]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Muller2008_MAPKactivation_Dynamics,Vector=Compartments[Compartment],Vector=Metabolites[MAPK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="MODEL8687732743.xml">
    <SBMLMap SBMLid="B_Raf" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="B_Raf_Activation_1" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="B_Raf_Activation_2" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="B_Raf_Degradation" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="C_Raf" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="C_Raf_Activation_1" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="C_Raf_Activation_2" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="C_Raf_Degradation" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="C_Raf_Inactivation" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="C_Raf_inactive" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="Compartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="E" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="FGFR" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="FGFR_Activation" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="FGFR_Degradation" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Inactive_C_Raf_degradation" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="MAPK" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="MAPK_Activation_1" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="MAPK_Activation_2" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="MAPK_Degradation" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="MSH" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="MSH_Activation" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="MSH_Degradation" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="a1" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="a2" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="b1" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="b2" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="d1" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="d2" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="d3" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="d4" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="d5" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="d6" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="f13" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="f14" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="f24" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="f35" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="f45" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="f53" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="function_1_1" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="function_1_2" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="function_2_1" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="function_3_1" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="function_4_1" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="function_4_2" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="function_4_3" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="function_4_4" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="function_5_1" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="g1" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="g1_0" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="g2" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="g2_0" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="h36_y3" COPASIkey="ModelValue_10"/>
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
    <UnitDefinition key="Unit_7" name="dimensionless" symbol="1">
      <Expression>
        1
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
  </ListOfUnitDefinitions>
</COPASI>
