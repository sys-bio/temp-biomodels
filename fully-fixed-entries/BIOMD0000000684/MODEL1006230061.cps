<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-03-08 17:29:19 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="22" versionDevel="170" copasiSourcesModified="0">
  <Model key="Model_0" name="Wodarz2003 Immunological Memory" simulationType="time" timeUnit="d" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
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
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/13678598"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-25T13:23:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>mroberts@embl.ac.uk</vCard:EMAIL>
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
        <dcterms:W3CDTF>2010-06-25T13:23:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1006230061"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0002250"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <p>This a model from the article:      <br/>
    <strong>Evolution of immunological memory and the regulation of competition between
pathogens.</strong>
    <br/>
          Wodarz D.      <em>Curr Biol</em>
          2003 Sep 16;13(18):1648-52      <a href="http://www.ncbi.nlm.nih.gov/pubmed/13678598">13678598</a>
          ,      <br/>
    <strong>Abstract:</strong>
    <br/>
          Memory is a central characteristic of immune responses. It is defined as an
elevated number of specific immune cells that remain after resolution of
infection and can protect the host against reinfection. The evolution of
immunological memory is subject to debate. The advantages of memory discussed so
far include protection from reinfection, control of chronic infection, and the
transfer of immune function to the next generation. Mathematical models are used
to identify a new force that can drive the evolution of immunological memory:
the duration of memory can regulate the degree of competition between different
pathogens. While a long duration of memory provides lasting protection against
reinfection, it may also allow an inferior pathogen species to persist. This can
be detrimental for the host if the inferior pathogen is more virulent. On the
other hand, a shorter duration of memory ensures that an inferior pathogen
species is excluded. This can be beneficial for the host if the inferior
pathogen is more virulent. Thus, while in the absence of pathogen diversity
memory is always expected to evolve to a long duration, under specific
circumstances, memory can evolve toward shorter durations in the presence of
pathogen diversity.      </p>
    <p>This model was taken from the      <a href="http://www.cellml.org/models">CellML repository</a>
          and automatically converted to SBML.      <br/>
          The original model was:      <a href="http://models.cellml.org/exposure/0fbec879c60f5a3005da0ea829e1ff3e">
      <strong>Wodarz D. (2003) - version=1.0</strong>
    </a>
    <br/>
          The original CellML model was created by:      <br/>
    <strong>Catherine Lloyd</strong>
    <br/>
          c.lloyd@auckland.ac.nz      <br/>
          The University of Auckland      <br/></p>
    <p>This model originates from BioModels Database: A Database of Annotated Published Models (http://www.ebi.ac.uk/biomodels/). It is copyright (c) 2005-2011 The BioModels.net Team.      <br/>
          To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. Please refer to      <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Creative Commons CC0">CC0 Public Domain Dedication</a>
          for more information.      </p>
    <p>In summary, you are entitled to use this encoded model in absolutely any manner you deem suitable, verbatim, or with modification, alone or embedded it in a larger context, redistribute it, commercially or not, in a restricted way or not..      <br/>
    <br/>
          To cite BioModels Database, please use:      <a href="http://www.ncbi.nlm.nih.gov/pubmed/20587024" target="_blank">Li C, Donizelli M, Rodriguez N, Dharuri H, Endler L, Chelliah V, Li L, He E, Henry A, Stefan MI, Snoep JL, Hucka M, Le Novère N, Laibe C (2010) BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models. BMC Syst Biol., 4:92.</a>
  </p>
</body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="population" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:57:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:obi:OBI:0000181"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="S" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C16505"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:39:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[r],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[H],Reference=Value>/(&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[epsilon],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[H],Reference=Value>+1)-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[d],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[S],Reference=Value>-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[beta_1],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[S],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[P_1],Reference=Value>-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[beta_2],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[S],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[P_2],Reference=Value>+&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[g],Reference=Value>*(&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_1],Reference=Value>+&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_2],Reference=Value>+&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_12],Reference=Value>)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="r" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:46:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0000003"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="epsilon" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:46:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0000003"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Value = 0.1 from CellML
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="H" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:46:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:obi:OBI:0000181"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[S],Reference=Value>+&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_1],Reference=Value>+&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_1],Reference=Value>+&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_2],Reference=Value>+&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_2],Reference=Value>+&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_12],Reference=Value>+&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_21],Reference=Value>+&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_12],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="P" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:40:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[P_1],Reference=Value>+&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[P_2],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="I_1" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:efo:0000544"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:46:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[beta_1],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[S],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[P_1],Reference=Value>-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[a_1],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_1],Reference=Value>-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[alpha_1],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_1],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="I_2" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:efo:0000544"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:46:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[beta_2],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[S],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[P_2],Reference=Value>-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[a_2],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_2],Reference=Value>-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[alpha_2],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_2],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="I_12" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <bqbiol:hasProperty rdf:resource="urn:miriam:efo:0000544"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17997"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:46:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[beta_2],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_1],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[P_2],Reference=Value>-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[a_2],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_12],Reference=Value>-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[alpha_2],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_12],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="I_21" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <bqbiol:hasProperty rdf:resource="urn:miriam:efo:0000544"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17997"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:46:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[beta_1],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_2],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[P_1],Reference=Value>-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[a_1],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_21],Reference=Value>-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[alpha_1],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_21],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="R_1" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17997"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:41:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[alpha_1],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_1],Reference=Value>-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[d],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_1],Reference=Value>-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[g],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_1],Reference=Value>-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[beta_2],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_1],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[P_2],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="R_2" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17997"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:46:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[alpha_2],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_2],Reference=Value>-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[d],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_2],Reference=Value>-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[g],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_2],Reference=Value>-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[beta_1],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_2],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[P_1],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="R_12" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17997"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:41:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[alpha_2],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_12],Reference=Value>+&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[alpha_1],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_21],Reference=Value>-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[d],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_12],Reference=Value>-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[g],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_12],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="P_1" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:40:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:efo:EFO:0000643"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[k_1],Reference=Value>*(&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_1],Reference=Value>+&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_21],Reference=Value>)-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[u],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[P_1],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="k_1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:46:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C61404"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="log_P1" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:46:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          log10(&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[P_1],Reference=Value>)/log10(10)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="P_2" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:41:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:efo:EFO:0000643"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[k_2],Reference=Value>*(&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_2],Reference=Value>+&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_12],Reference=Value>)-&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[u],Reference=Value>*&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[P_2],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="k_2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:46:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C61404"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="log_P2" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:41:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          log10(&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[P_2],Reference=Value>)/log10(10)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="G" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:44:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0090716"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          1/&lt;CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[g],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="g" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:46:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0090716"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="beta_1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:46:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:efo:0000544"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="alpha_1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:46:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C25746"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="beta_2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:46:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:efo:0000544"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="alpha_2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:46:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:ncit:C25746"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="a_1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:39:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0016265"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="a_2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:46:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0016265"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="d" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T16:46:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:go:GO:0016265"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="u" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-08T17:23:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Compartments[population]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[S]" value="100" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[r]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[epsilon]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[H]" value="100" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[P]" value="0.20000000000000001" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_1]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_2]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_12]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[I_21]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_1]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_2]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[R_12]" value="0" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[P_1]" value="0.10000000000000001" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[k_1]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[log_P1]" value="-1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[P_2]" value="0.10000000000000001" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[k_2]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[log_P2]" value="-1" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[G]" value="100" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[g]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[beta_1]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[alpha_1]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[beta_2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[alpha_2]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[a_1]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[a_2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[d]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[u]" value="0.5" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 100 0 0 0 0 0 0 0 0.10000000000000001 0.10000000000000001 100 0.20000000000000001 -1 -1 100 1 0.5 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.01 1 0.10000000000000001 1 0.10000000000000001 0.029999999999999999 1 0.01 0.5 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="1000"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
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
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="1"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[g],Reference=InitialValue"/>
            <Parameter name="Minimum" type="float" value="0.01"/>
            <Parameter name="Maximum" type="float" value="10"/>
            <Parameter name="log" type="bool" value="0"/>
          </ParameterGroup>
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
    <PlotSpecification name="Figure 2 A" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[log_P1]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Wodarz2003 Immunological Memory,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[log_P1],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[log_P2]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Wodarz2003 Immunological Memory,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[log_P2],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_0" associatedEntityKey="Task_11" objectCN="CN=Root,Model=Wodarz2003 Immunological Memory,Vector=Values[epsilon],Reference=InitialValue" objectType="float" objectValue="0.1" minValue="0.01" maxValue="100" tickNumber="1000" tickFactor="100" scaling="linear"/>
    </ListOfSliders>
  </GUI>
  <SBMLReference file="MODEL1006230061 (copy).xml">
    <SBMLMap SBMLid="COMpartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="G" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="H" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="I_1" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="I_12" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="I_2" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="I_21" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="P" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="P_1" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="P_2" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="R_1" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="R_12" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="R_2" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="S" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="a_1" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="a_2" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="alpha_1" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="alpha_2" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="beta_1" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="beta_2" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="d" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="epsilon" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="g" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="k_1" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="k_2" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="log_P1" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="log_P2" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="r" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="u" COPASIkey="ModelValue_27"/>
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
