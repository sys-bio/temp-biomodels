<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-01-23 11:29:09 UTC -->
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
    <Function key="Function_40" name="function for naive activation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:09:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k * naive * ( CML / (CML + eta) )
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_254" name="naive" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_258" name="CML" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_266" name="eta" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_264" name="k" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="function for T_cell_effector death by CML" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:27:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        param*CML*effector
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="param" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_246" name="CML" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_268" name="effector" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="function for CML growth" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:28:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        r*C * log(Cmax/C)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="r" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="C" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_271" name="Cmax" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="function for CML death by T_cell_effector" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:36:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        param*mod*substrate
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_272" name="param" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="mod" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_274" name="substrate" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="function for T_cell_effector production from T_cell_naive activation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:57:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        alpha * k * naive * ( CML / (CML + eta) )
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="alpha" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="k" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="naive" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_279" name="CML" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_281" name="eta" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="function for T_cell_effector_recruitment" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T18:01:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        alpha*effector*(CML / (CML + eta))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_282" name="alpha" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="effector" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_273" name="CML" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_284" name="eta" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Moore2004_CML_TcellInteration" simulationType="time" timeUnit="d" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty rdf:resource="http://identifiers.org/go/GO:0002262"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/15038986"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2010-06-25T13:18:54Z</dcterms:W3CDTF>
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
      <rdf:Description>
        <vCard:EMAIL>sheriff@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Sheriff</vCard:Family>
            <vCard:Given>Rahuman</vCard:Given>
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
        <dcterms:W3CDTF>2010-06-25T13:18:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1006230057"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/efo/0000339"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <p>This a model from the article:      <br />
    <strong>A mathematical model for chronic myelogenous leukemia (CML) and T cell
interaction.</strong>
    <br />
          Moore H, Li NK.      <em>J Theor Biol</em>
          2004 Apr 21;227(4):513-23      <a href="http://www.ncbi.nlm.nih.gov/pubmed/15038986">15038986</a>
          ,      <br />
    <strong>Abstract:</strong>
    <br />
          In this paper, we propose and analyse a mathematical model for chronic
myelogenous leukemia (CML), a cancer of the blood. We model the interaction
between naive T cells, effector T cells, and CML cancer cells in the body, using
a system of ordinary differential equations which gives rates of change of the
three cell populations. One of the difficulties in modeling CML is the scarcity
of experimental data which can be used to estimate parameters values. To
compensate for the resulting uncertainties, we use Latin hypercube sampling
(LHS) on large ranges of possible parameter values in our analysis. A major goal
of this work is the determination of parameters which play a critical role in
remission or clearance of the cancer in the model. Our analysis examines 12
parameters, and identifies two of these, the growth and death rates of CML, as
critical to the outcome of the system. Our results indicate that the most
promising research avenues for treatments of CML should be those that affect
these two significant parameters (CML growth and death rates), while altering
the other parameters should have little effect on the outcome.      </p>
    <p>This model was taken from the      <a href="http://www.cellml.org/models">CellML repository</a>
          and automatically converted to SBML.      <br />
          The original model was:      <a href="http://models.cellml.org/exposure/f1aaa04a7e0de5bf974d296a1ff9dd25">
      <strong>Moore H, Li NK. (2004) - version=1.0</strong>
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
      <Compartment key="Compartment_0" name="Blood" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-22T17:32:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0001102" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="CML" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:05:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:bto:BTO:0001271" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="T_cell_naive" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:05:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C104081" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="T_cell_effector" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:06:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C104083" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Source" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T18:12:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="Sink" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T18:12:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="sn" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T16:41:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          value obtained from: Mohri, H., Perelson, A., Tung, K., Ribeiro, R., Ramratnam, B., Markowitz, M., Kost, R., Hurley, A., Weinberger, L., Cesar, D., Hellerstein, M., Ho, D., 2001. Increased turnover of T lymphocytes in HIV-1 infection and its reduction by antiretroviral therapy. J. Exp. Med. 194 (9) (November 5), 1277–1287.
        </Comment>
        <Unit>
          1/(11.5741*l*s)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="dn" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T18:19:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Value obtained from: Mohri, H., Perelson, A., Tung, K., Ribeiro, R., Ramratnam, B., Markowitz, M., Kost, R., Hurley, A., Weinberger, L., Cesar, D., Hellerstein, M., Ho, D., 2001. Increased turnover of T lymphocytes in HIV-1 infection and its reduction by antiretroviral therapy. J. Exp. Med. 194 (9) (November 5), 1277–1287.
        </Comment>
        <Unit>
          1/(0.0115741*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="alpha_n" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:isbn:081533642X" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:06:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Value obtained from: C.A. Janeway, P. Travers, M. Walport, M. Shlomchik. Immunobiology: The Immune System in Health and Disease, Garland Publishing, New York (2001)
        </Comment>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="alpha_e" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T18:18:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.0115741*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="de" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:8186756" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T18:19:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.0115741*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="gamma_e" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T16:41:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          0.0864*l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="Cmax" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T18:20:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/Ml
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="rc" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:10812720" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T18:20:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.0115741*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="dc" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:5239861" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T18:19:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.0115741*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="gamma_c" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1006/jtbi.1994.1199" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T16:41:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          0.0864*l/s
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="kn" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1006/jtbi.1994.1199" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T18:19:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/(0.0115741*ms)
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="eta" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T18:19:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Unit>
          1/Ml
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="T_cell_naive Source" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:06:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C25683"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4995" name="k1" value="0.071"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="T_cell_naive Natural Death" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:07:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4996" name="k1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="T_cell_naive Activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:08:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0042110"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4997" name="eta" value="43"/>
          <Constant key="Parameter_4998" name="k" value="0.063"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="T_cell_effector Recruitment" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:18:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0050778"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4999" name="alpha" value="0.53"/>
          <Constant key="Parameter_5000" name="eta" value="43"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="T_cell_effector Natural Death" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:22:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5001" name="k1" value="0.12"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="T_cell_effector Death by CML" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:26:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:GO:0070241"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5002" name="param" value="0.0077"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="CML Growth" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:35:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C19387"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4990" name="r" value="0.23"/>
          <Constant key="Parameter_4991" name="Cmax" value="190000"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="CML death by T_cell_effector" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:37:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4992" name="param" value="0.047"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="CML natural death" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:38:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008219"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4993" name="k1" value="0.68"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="T_cell_effector Production from T_cell_Naive activation" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-19T17:55:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0042110"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4994" name="alpha" value="0.56"/>
          <Constant key="Parameter_4964" name="k" value="0.063"/>
          <Constant key="Parameter_4965" name="eta" value="43"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Compartments[Blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Compartments[Blood]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Compartments[Blood],Vector=Metabolites[CML]" value="10000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Compartments[Blood],Vector=Metabolites[T_cell_naive]" value="1510" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Compartments[Blood],Vector=Metabolites[T_cell_effector]" value="20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Compartments[Blood],Vector=Metabolites[Source]" value="1" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Compartments[Blood],Vector=Metabolites[Sink]" value="1" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[sn]" value="0.070999999999999994" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[dn]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[alpha_n]" value="0.56000000000000005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[alpha_e]" value="0.53000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[de]" value="0.12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[gamma_e]" value="0.0077000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[Cmax]" value="190000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[rc]" value="0.23000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[dc]" value="0.68000000000000005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[gamma_c]" value="0.047" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[kn]" value="0.063" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[eta]" value="43" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[T_cell_naive Source]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[T_cell_naive Source],ParameterGroup=Parameters,Parameter=k1" value="0.070999999999999994" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[sn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[T_cell_naive Natural Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[T_cell_naive Natural Death],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[dn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[T_cell_naive Activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[T_cell_naive Activation],ParameterGroup=Parameters,Parameter=eta" value="43" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[T_cell_naive Activation],ParameterGroup=Parameters,Parameter=k" value="0.063" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[kn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[T_cell_effector Recruitment]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[T_cell_effector Recruitment],ParameterGroup=Parameters,Parameter=alpha" value="0.53000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[alpha_e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[T_cell_effector Recruitment],ParameterGroup=Parameters,Parameter=eta" value="43" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[T_cell_effector Natural Death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[T_cell_effector Natural Death],ParameterGroup=Parameters,Parameter=k1" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[de],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[T_cell_effector Death by CML]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[T_cell_effector Death by CML],ParameterGroup=Parameters,Parameter=param" value="0.0077000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[gamma_e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[CML Growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[CML Growth],ParameterGroup=Parameters,Parameter=r" value="0.23000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[rc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[CML Growth],ParameterGroup=Parameters,Parameter=Cmax" value="190000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[Cmax],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[CML death by T_cell_effector]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[CML death by T_cell_effector],ParameterGroup=Parameters,Parameter=param" value="0.047" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[gamma_c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[CML natural death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[CML natural death],ParameterGroup=Parameters,Parameter=k1" value="0.68000000000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[dc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[T_cell_effector Production from T_cell_Naive activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[T_cell_effector Production from T_cell_Naive activation],ParameterGroup=Parameters,Parameter=alpha" value="0.56000000000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[alpha_n],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[T_cell_effector Production from T_cell_Naive activation],ParameterGroup=Parameters,Parameter=k" value="0.063" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[kn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Reactions[T_cell_effector Production from T_cell_Naive activation],ParameterGroup=Parameters,Parameter=eta" value="43" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[eta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 20 1510 10000 1 1 1 0.070999999999999994 0.050000000000000003 0.56000000000000005 0.53000000000000003 0.12 0.0077000000000000002 190000 0.23000000000000001 0.68000000000000005 0.047 0.063 43 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="500"/>
        <Parameter name="StepSize" type="float" value="0.2"/>
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
    <PlotSpecification name="plot" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="CML.ParticleNumber|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Moore2004_CML_TcellInteration,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Compartments[Blood],Vector=Metabolites[CML],Reference=ParticleNumber"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_0" associatedEntityKey="Task_11" objectCN="CN=Root,Model=Moore2004_CML_TcellInteration,Vector=Values[dc],Reference=InitialValue" objectType="float" objectValue="0.68" minValue="0.012" maxValue="0.75" tickNumber="1000" tickFactor="100" scaling="linear"/>
    </ListOfSliders>
  </GUI>
  <SBMLReference file="Moore2004.xml">
    <SBMLMap SBMLid="CML" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="CML_Growth" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="CML_death_by_T_cell_effector" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="CML_natural_death" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="COMpartment" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="Cmax" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="Sink" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="Source" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="T_cell_effector" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="T_cell_effector_Death_by_CML" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="T_cell_effector_Natural_Death" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="T_cell_effector_Production_from_T_cell_Naive_activation" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="T_cell_effector_Recruitment" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="T_cell_naive" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="T_cell_naive_Activation" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="T_cell_naive_Natural_Death" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="T_cell_naive_Source" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="alpha_e" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="alpha_n" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="dc" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="de" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="dn" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="eta" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="function_for_CML_death_by_T_cell_effector" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="function_for_CML_growth" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="function_for_T_cell_effector_death_by_CML" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="function_for_T_cell_effector_production_from_T_cell_naive_activation" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="function_for_T_cell_effector_recruitment" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="function_for_naive_activation" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="gamma_c" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="gamma_e" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="kn" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="rc" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="sn" COPASIkey="ModelValue_0"/>
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
  </ListOfUnitDefinitions>
</COPASI>
