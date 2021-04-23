<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-02-20 10:11:41 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="22" versionDevel="170" copasiSourcesModified="0">
  <Model key="Model_0" name="Chen2000_CellCycle" simulationType="time" timeUnit="min" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/4932"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:10098216"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:9552349"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/10637314"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-25T12:06:06Z</dcterms:W3CDTF>
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
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>c.lloyd@auckland.ac.nz</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Lloyd</vCard:Family>
                <vCard:Given>Catherine</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Auckland</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-25T12:06:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1006230004"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://www.geneontology.org/GO:0000075"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <p>This a model from the article:      <br />
    <strong>Kinetic analysis of a molecular model of the budding yeast cell cycle.</strong>
    <br />
          Chen KC, Csikasz-Nagy A, Gyorffy B, Val J, Novak B, Tyson JJ.      <em>Mol Biol Cell</em>
          2000 Jan;11(1):369-91      <a href="http://www.ncbi.nlm.nih.gov/pubmed/10637314">10637314</a>
          ,      <br />
    <strong>Abstract:</strong>
    <br />
          The molecular machinery of cell cycle control is known in more detail for
budding yeast, Saccharomyces cerevisiae, than for any other eukaryotic organism.
In recent years, many elegant experiments on budding yeast have dissected the
roles of cyclin molecules (Cln1-3 and Clb1-6) in coordinating the events of DNA
synthesis, bud emergence, spindle formation, nuclear division, and cell
separation. These experimental clues suggest a mechanism for the principal
molecular interactions controlling cyclin synthesis and degradation. Using
standard techniques of biochemical kinetics, we convert the mechanism into a set
of differential equations, which describe the time courses of three major
classes of cyclin-dependent kinase activities. Model in hand, we examine the
molecular events controlling "Start" (the commitment step to a new round of
chromosome replication, bud formation, and mitosis) and "Finish" (the transition
from metaphase to anaphase, when sister chromatids are pulled apart and the bud
separates from the mother cell) in wild-type cells and 50 mutants. The model
accounts for many details of the physiology, biochemistry, and genetics of cell
cycle control in budding yeast.      </p>
    <p>This model was taken from the      <a href="http://www.cellml.org/models">CellML repository</a>
          and automatically converted to SBML.      <br />
          The original model was:      <a href="http://models.cellml.org/exposure/8502bac4a83d9faaaa57edd9f682acfa">
      <strong>Chen KC, Csikasz-Nagy A, Gyorffy B, Val J, Novak B, Tyson JJ. (2000) - version=1.0</strong>
    </a>
    <br />
          The original CellML model was created by:      <br />
    <strong>Catherine Lloyd</strong>
    <br />
          c.lloyd@auckland.ac.nz      <br />
          The University of Auckland      <br /></p>
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
      <Compartment key="Compartment_0" name="Yeast Cell" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0007114" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T12:07:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C14271" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Cln2" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T12:44:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P20438" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[mass],Reference=Value>*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_n2_prime],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_n2_2prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[SBF],Reference=Value>)-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_n2],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cln2],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="ks_n2_prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="ks_n2_2prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="kd_n2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:19:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="Clb2_T" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T12:42:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P24869" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[mass],Reference=Value>*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_b2_prime],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_b2_2prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Mcm1],Reference=Value>)-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Vd_b2],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2_T],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Hct1_T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:07:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P53197" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="ks_b2_prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:51:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="ks_b2_2prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:51:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="kd_b2_prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:46:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="kd_b2_2prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:46:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="kd_b2_3prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:46:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="Vd_b2" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000612" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_b2_prime],Reference=Value>*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Hct1_T],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Hct1],Reference=Value>)+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_b2_2prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Hct1],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_b2_3prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cdc20],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="Clb2" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T12:37:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P24869" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2_T],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2_Sic1],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="Clb5" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-15T18:11:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot.isoform:P30283" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb5_T],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb5_Sic1],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="Sic1" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P38634" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Sic1_T],Reference=Value>-(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2_Sic1],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb5_Sic1],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="Clb5_T" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T12:43:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P30283" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[mass],Reference=Value>*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_b5_prime],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_b5_2prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[MBF],Reference=Value>)-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Vd_b5],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb5_T],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="ks_b5_prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-15T18:30:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="ks_b5_2prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="kd_b5_prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:47:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="kd_b5_2prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:47:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="Vd_b5" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000612" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_b5_prime],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_b5_2prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cdc20],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="Bck2" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:45:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P33306" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Bck2_0],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[mass],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="Bck2_0" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:45:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C85644" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="Cln3" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T12:46:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P13365" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cln3_max],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Dn3],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[mass],Reference=Value>/(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Jn3],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Dn3],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[mass],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="Jn3" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:13:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:obi:OBI:0001180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="Dn3" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T11:00:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000186"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="Cln3_max" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T12:46:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000186" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="Sic1_T" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P38634" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_c1],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_c1_2prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Swi5],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Sic1_T],Reference=Value>*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd1_c1],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Vd2_c1],Reference=Value>/(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Jd2_c1],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Sic1_T],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="ks_c1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="ks_c1_2prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="Clb2_Sic1" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T12:39:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P24869" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38634" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kas_b2],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Sic1],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2_Sic1],Reference=Value>*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kdi_b2],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Vd_b2],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd1_c1],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Vd2_c1],Reference=Value>/(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Jd2_c1],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Sic1_T],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="kas_b2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:18:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="kdi_b2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:19:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="Clb5_Sic1" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-15T18:11:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P30283" />
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:P38634" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kas_b5],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb5],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Sic1],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb5_Sic1],Reference=Value>*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kdi_b5],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Vd_b5],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd1_c1],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Vd2_c1],Reference=Value>/(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Jd2_c1],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Sic1_T],Reference=Value>))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="kas_b5" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:18:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="kdi_b5" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:19:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="Vd2_c1" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000612" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd2_c1],Reference=Value>*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsilonc1_n3],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cln3],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsilonc1_k2],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Bck2],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cln2],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsilonc1_b5],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb5],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsilonc1_b2],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="kd2_c1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:18:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="epsilonc1_n3" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:05:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000302" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="epsilonc1_k2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:05:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000302" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="epsilonc1_b5" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:05:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000302" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="epsilonc1_b2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:05:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000302" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="Cdc20_T" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T12:28:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P26309" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_20_prime],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_20_2prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_20],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cdc20_T],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="ks_20_prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:50:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="ks_20_2prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:50:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="Cdc20" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T12:28:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P26309" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_20],Reference=Value>*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cdc20_T],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cdc20],Reference=Value>)-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cdc20],Reference=Value>*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Vi_20],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_20],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="ka_20" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:14:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="ki_20_prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-15T17:27:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="ki_20_2prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-15T17:27:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="Vi_20" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-15T17:26:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000612" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Chen2000_CellCycle,Reference=Time> >= &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[START_S],Reference=Value> and &lt;CN=Root,Model=Chen2000_CellCycle,Reference=Time> &lt; &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[END_M],Reference=Value>,10,if(&lt;CN=Root,Model=Chen2000_CellCycle,Reference=Time> >= &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[END_M],Reference=Value> and &lt;CN=Root,Model=Chen2000_CellCycle,Reference=Time> &lt; &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[END_M],Reference=Value>+12,10-9.9*((&lt;CN=Root,Model=Chen2000_CellCycle,Reference=Time>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[END_M],Reference=Value>)/12),0.1))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="Hct1" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:06:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P53197" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_t1_prime],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_t1_2prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cdc20],Reference=Value>)*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Hct1_T],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Hct1],Reference=Value>)/(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ja_t1],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Hct1_T],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Hct1],Reference=Value>)-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Vi_t1],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Hct1],Reference=Value>/(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ji_t1],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Hct1],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="ka_t1_prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:50:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="ka_t1_2prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:50:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="ki_t1_prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:49:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="ki_t1_2prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:49:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="Vi_t1" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-15T17:45:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000612" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_t1_prime],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_t1_2prime],Reference=Value>*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cln3],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsiloni_t1_n2],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cln2],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsiloni_t1_b5],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb5],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsiloni_t1_b2],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="Ji_t1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:13:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:obi:OBI:0001180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="Ja_t1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:12:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:obi:OBI:0001180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="epsiloni_t1_n2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:05:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000302" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="epsiloni_t1_b5" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:05:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000302" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="epsiloni_t1_b2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:05:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000302" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="mass" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-15T18:34:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C43246" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[mu],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[mass],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="mu" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:mp:MP:0003904" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="ORI" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-15T18:10:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q35811" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_ori],Reference=Value>*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb5],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsilonori_b2],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>)-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_ori],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ORI],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="ks_ori" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-15T18:11:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="kd_ori" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:19:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="epsilonori_b2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:05:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000302" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="BUD" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:45:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0007114" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_bud],Reference=Value>*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cln2],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cln3],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsilonbud_b5],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb5],Reference=Value>)-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_bud],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[BUD],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="ks_bud" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="kd_bud" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:19:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="epsilonbud_b5" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:01:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000302" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="SPN" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:Q06505" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_spn],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>/(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[J_spn],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>)-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_spn],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[SPN],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="ks_spn" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="kd_spn" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:19:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="J_spn" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:07:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:obi:OBI:0001180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="SBF" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0033309" />
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P11938" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Va_sbf],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ji_sbf],Reference=Value>/(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_sbf_prime],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_sbf_2prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Va_sbf],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ji_sbf],Reference=Value>+(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_sbf_prime],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_sbf_2prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>)*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ja_sbf],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Va_sbf],Reference=Value>+((&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_sbf_prime],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_sbf_2prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Va_sbf],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ji_sbf],Reference=Value>+(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_sbf_prime],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_sbf_2prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>)*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ja_sbf],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Va_sbf],Reference=Value>)^2-4*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Va_sbf],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ji_sbf],Reference=Value>*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_sbf_prime],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_sbf_2prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Va_sbf],Reference=Value>))^(1/2))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="ka_sbf" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:18:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="ki_sbf_prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:47:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="ki_sbf_2prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:47:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="Va_sbf" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000612" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_sbf],Reference=Value>*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cln2],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsilonsbf_n3],Reference=Value>*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cln3],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Bck2],Reference=Value>)+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsilonsbf_b5],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb5],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="Ji_sbf" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:13:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:obi:OBI:0001180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="Ja_sbf" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:10:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:obi:OBI:0001180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="epsilonsbf_n3" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:06:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000302" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="epsilonsbf_b5" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:06:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000302" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="MBF" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:O14467" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[SBF],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="Mcm1" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P11746" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_mcm],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ji_mcm],Reference=Value>/(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_mcm],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_mcm],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ji_mcm],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_mcm],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ja_mcm],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_mcm],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>+((&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_mcm],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_mcm],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ji_mcm],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_mcm],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ja_mcm],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_mcm],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>)^2-4*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_mcm],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_mcm],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>)*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_mcm],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ji_mcm],Reference=Value>)^(1/2))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="ka_mcm" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:17:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_87" name="ki_mcm" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:47:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_88" name="Ji_mcm" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_88">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:12:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:obi:OBI:0001180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="Ja_mcm" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:09:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:obi:OBI:0001180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="Swi5" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:40:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:uniprot:P08153" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_swi],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cdc20],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ji_swi],Reference=Value>/(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_swi_prime],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_swi_2prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_swi],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cdc20],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ji_swi],Reference=Value>+(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_swi_prime],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_swi_2prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>)*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ja_swi],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_swi],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cdc20],Reference=Value>+((&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_swi_prime],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_swi_2prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_swi],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cdc20],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ji_swi],Reference=Value>+(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_swi_prime],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_swi_2prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>)*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ja_swi],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_swi],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cdc20],Reference=Value>)^2-4*(&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_swi_prime],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_swi_2prime],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>-&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_swi],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cdc20],Reference=Value>)*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_swi],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cdc20],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ji_swi],Reference=Value>)^(1/2))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_91" name="ka_swi" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:18:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="ki_swi_prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_92">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:47:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_93" name="ki_swi_2prime" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:48:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="Ji_swi" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_94">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:13:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:obi:OBI:0001180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="Ja_swi" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_95">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:11:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:obi:OBI:0001180"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_96" name="kd1_c1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_96">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:50:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_97" name="kd_20" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_97">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:18:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="Jd2_c1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_98">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T13:12:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:obi:OBI:0001180" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="END_M" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-15T18:16:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C82574"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_100" name="START_S" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_100">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-15T18:27:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C82575" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_101" name="D" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_101">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T11:23:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:mp:MP:0003904" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1.026/&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[mu],Reference=Value>-32
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfEvents>
      <Event key="Event_0" name="Event detection for END_M" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-15T18:16:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[SPN],Reference=Value> >= 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_99">
            <Expression>
              &lt;CN=Root,Model=Chen2000_CellCycle,Reference=Time>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="Event detection for Cell Division and BUD/SPN reset" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-15T18:34:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value> &lt; 0.3
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_61">
            <Expression>
              exp(-1*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[mu],Reference=Value>*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[D],Reference=Value>)*&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[mass],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment targetKey="ModelValue_67">
            <Expression>
              0
            </Expression>
          </Assignment>
          <Assignment targetKey="ModelValue_71">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_2" name="Event detection for START_S" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T10:18:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[ORI],Reference=Value> > 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_100">
            <Expression>
              &lt;CN=Root,Model=Chen2000_CellCycle,Reference=Time>
            </Expression>
          </Assignment>
          <Assignment targetKey="ModelValue_99">
            <Expression>
              &lt;CN=Root,Model=Chen2000_CellCycle,Reference=Time>+1000
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_3" name="Event detection for ORI reset" fireAtInitialTime="0" persistentTrigger="0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-16T11:37:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2],Reference=Value>+&lt;CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb5],Reference=Value> &lt; 0.2
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_63">
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
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Compartments[Yeast Cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cln2]" value="0.0077999999999999996" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_n2_prime]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_n2_2prime]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_n2]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2_T]" value="0.23419999999999999" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Hct1_T]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_b2_prime]" value="0.002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_b2_2prime]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_b2_prime]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_b2_2prime]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_b2_3prime]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Vd_b2]" value="2.0234939999999999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2]" value="0.1552" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb5]" value="0.0407" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Sic1]" value="0.023400000000000004" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb5_T]" value="0.061400000000000003" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_b5_prime]" value="0.0060000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_b5_2prime]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_b5_prime]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_b5_2prime]" value="0.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Vd_b5]" value="0.2712" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Bck2]" value="0.0017841600000000003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Bck2_0]" value="0.0027000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cln3]" value="0.0019841460485227002" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Jn3]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Dn3]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cln3_max]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Sic1_T]" value="0.1231" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_c1]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_c1_2prime]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2_Sic1]" value="0.079000000000000001" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[kas_b2]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[kdi_b2]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb5_Sic1]" value="0.0207" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[kas_b5]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[kdi_b5]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Vd2_c1]" value="0.030644892291136202" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd2_c1]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsilonc1_n3]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsilonc1_k2]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsilonc1_b5]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsilonc1_b2]" value="0.067000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cdc20_T]" value="0.83320000000000005" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_20_prime]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_20_2prime]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cdc20]" value="0.68479999999999996" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_20]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_20_prime]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_20_2prime]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Vi_20]" value="0.10000000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Hct1]" value="0.99460000000000004" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_t1_prime]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_t1_2prime]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_t1_prime]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_t1_2prime]" value="0.64000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Vi_t1]" value="0.11861385347105455" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ji_t1]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ja_t1]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsiloni_t1_n2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsiloni_t1_b5]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsiloni_t1_b2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[mass]" value="0.66080000000000005" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[mu]" value="0.0057759999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ORI]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_ori]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_ori]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsilonori_b2]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[BUD]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_bud]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_bud]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsilonbud_b5]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[SPN]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ks_spn]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_spn]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[J_spn]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[SBF]" value="0.0027386225148617192" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_sbf]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_sbf_prime]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_sbf_2prime]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Va_sbf]" value="0.31077295363920249" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ji_sbf]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ja_sbf]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsilonsbf_n3]" value="75" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[epsilonsbf_b5]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[MBF]" value="0.0027386225148617192" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Mcm1]" value="0.51277572496863677" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_mcm]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_mcm]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ji_mcm]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ja_mcm]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Swi5]" value="0.92265075972798616" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ka_swi]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_swi_prime]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ki_swi_2prime]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ji_swi]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Ja_swi]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd1_c1]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[kd_20]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Jd2_c1]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[END_M]" value="2000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[START_S]" value="1000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[D]" value="145.63157894736844" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 0.0077999999999999996 0.23419999999999999 0.061400000000000003 0.1231 0.079000000000000001 0.0207 0.83320000000000005 0.68479999999999996 0.99460000000000004 0.66080000000000005 0 0 0 2.0234939999999999 0.1552 0.0407 0.023400000000000004 0.2712 0.0017841600000000003 0.0019841460485227002 0.030644892291136202 0.10000000000000001 0.11861385347105455 0.0027386225148617192 0.31077295363920249 0.0027386225148617192 0.51277572496863677 0.92265075972798616 145.63157894736844 1 0 0.050000000000000003 0.10000000000000001 1 0.002 0.050000000000000003 0.01 2 0.050000000000000003 0.0060000000000000001 0.02 0.10000000000000001 0.25 0.0027000000000000001 6 1 0.02 0.02 0.10000000000000001 50 0.050000000000000003 50 0.050000000000000003 0.29999999999999999 20 2 1 0.067000000000000004 0.0050000000000000001 0.059999999999999998 1 0.10000000000000001 10 0.040000000000000001 2 0 0.64000000000000001 0.050000000000000003 0.050000000000000003 1 0.5 1 0.0057759999999999999 2 0.059999999999999998 0.40000000000000002 0.29999999999999999 0.059999999999999998 1 0.080000000000000002 0.059999999999999998 0.20000000000000001 1 0.5 6 0.01 0.01 75 0.5 1 0.14999999999999999 1 1 1 0.29999999999999999 0.20000000000000001 0.10000000000000001 0.10000000000000001 0.01 0.080000000000000002 0.050000000000000003 2000 1000 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="350"/>
        <Parameter name="StepSize" type="float" value="0.5"/>
        <Parameter name="Duration" type="float" value="175"/>
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
        <Parameter name="Steady-State" type="key" value="Task_12"/>
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
    <PlotSpecification name="figure3_top" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Clb2_T]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb2_T],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Clb5_T]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Clb5_T],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Cln2]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cln2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Sic1_T]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Sic1_T],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[mass]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[mass],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="figure3_middle" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[BUD]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[BUD],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Hct1]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Hct1],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[ORI]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[ORI],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[SBF]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[SBF],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Sic1_T]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Sic1_T],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="figure3_bottom" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Cdc20]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Cdc20],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Hct1]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Hct1],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Mcm1]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Mcm1],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[SPN]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[SPN],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Sic1_T]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Sic1_T],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Swi5]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Chen2000_CellCycle,Vector=Values[Swi5],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="MODEL1006230004.xml">
    <SBMLMap SBMLid="BUD" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="Bck2" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="Bck2_0" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="COMpartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="Cdc20" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="Cdc20_T" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="Clb2" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="Clb2_Sic1" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="Clb2_T" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="Clb5" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="Clb5_Sic1" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="Clb5_T" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="Cln2" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="Cln3" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="Cln3_max" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="Dn3" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="Hct1" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="Hct1_T" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="J_spn" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="Ja_mcm" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="Ja_sbf" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="Ja_swi" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="Ja_t1" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="Jd2_c1" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="Ji_mcm" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="Ji_sbf" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="Ji_swi" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="Ji_t1" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="Jn3" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="MBF" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="Mcm1" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="ORI" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="SBF" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="SPN" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="Sic1" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="Sic1_T" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="Swi5" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="Va_sbf" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="Vd2_c1" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="Vd_b2" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="Vd_b5" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="Vi_20" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="Vi_t1" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="epsilonbud_b5" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="epsilonc1_b2" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="epsilonc1_b5" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="epsilonc1_k2" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="epsilonc1_n3" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="epsiloni_t1_b2" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="epsiloni_t1_b5" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="epsiloni_t1_n2" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="epsilonori_b2" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="epsilonsbf_b5" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="epsilonsbf_n3" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="ka_20" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="ka_mcm" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="ka_sbf" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="ka_swi" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="ka_t1" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="ka_t1_" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="kas_b2" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="kas_b5" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="kd1_c1" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="kd2_c1" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="kd_20" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="kd_b2" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="kd_b2_" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="kd_b2__" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="kd_b5" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="kd_b5_" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="kd_bud" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="kd_n2" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="kd_ori" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="kd_spn" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="kdi_b2" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="kdi_b5" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="ki_20" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="ki_20_" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="ki_mcm" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="ki_sbf" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="ki_sbf_" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="ki_swi" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="ki_swi_" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="ki_t1" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="ki_t1_" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="ks_20" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="ks_20_" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="ks_b2" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="ks_b2_" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="ks_b5" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="ks_b5_" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="ks_bud" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="ks_c1" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="ks_c1_" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="ks_n2" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="ks_n2_" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="ks_ori" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="ks_spn" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="mass" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="mu" COPASIkey="ModelValue_62"/>
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
