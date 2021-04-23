<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.16 (Build 104) (http://www.copasi.org) at 2016-02-19 16:43:03 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="16" versionDevel="104" copasiSourcesModified="0">
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
        k1*PRODUCT&lt;substrate_i&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Function for reaction1" type="UserDefined" reversible="false">
      <Expression>
        1.25e-007*STAT5A^2*k_phos*exp(-Epo_degradation_BaF3*&quot;Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B&quot;)/cyt
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="&quot;Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B&quot;" order="0" role="time"/>
        <ParameterDescription key="FunctionParameter_266" name="Epo_degradation_BaF3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="STAT5A" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_268" name="cyt" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_269" name="k_phos" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for reaction2" type="UserDefined" reversible="false">
      <Expression>
        1.25e-007*STAT5A*STAT5B*k_phos*exp(-Epo_degradation_BaF3*&quot;Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B&quot;)/cyt
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="&quot;Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B&quot;" order="0" role="time"/>
        <ParameterDescription key="FunctionParameter_277" name="Epo_degradation_BaF3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="STAT5A" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_279" name="STAT5B" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_280" name="cyt" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_281" name="k_phos" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for reaction3" type="UserDefined" reversible="false">
      <Expression>
        1.25e-007*STAT5B^2*k_phos*exp(-Epo_degradation_BaF3*&quot;Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B&quot;)/cyt
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_246" name="&quot;Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B&quot;" order="0" role="time"/>
        <ParameterDescription key="FunctionParameter_288" name="Epo_degradation_BaF3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="STAT5B" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_290" name="cyt" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_291" name="k_phos" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_4" name="Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.02214179e+023">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-02-19T16:17:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1501220000"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="cyt" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_3" name="nuc" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_1" name="STAT5A" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-02-19T16:19:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          207.6*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[ratio],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="STAT5B" simulationType="reactions" compartment="Compartment_1">
        <InitialExpression>
          207.6-207.6*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[ratio],Reference=InitialValue&gt;
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="pApB" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_7" name="pApA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-02-19T16:19:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="pBpB" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-02-19T16:19:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="pAFull" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-02-19T16:19:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          100*(2*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[sp],Reference=Concentration&gt;*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pApA],Reference=Concentration&gt;+&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pApB],Reference=Concentration&gt;)/(2*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[sp],Reference=Concentration&gt;*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pApA],Reference=Concentration&gt;+&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[sp],Reference=Concentration&gt;*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[STAT5A],Reference=Concentration&gt;+&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pApB],Reference=Concentration&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="sp" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-02-19T16:20:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="pBFull" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-02-19T16:24:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          100*(2*(1-&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[sp],Reference=Concentration&gt;)*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pBpB],Reference=Concentration&gt;+&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pApB],Reference=Concentration&gt;)/(2*(1-&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[sp],Reference=Concentration&gt;)*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pBpB],Reference=Concentration&gt;+(1-&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[sp],Reference=Concentration&gt;)*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[STAT5B],Reference=Concentration&gt;+&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pApB],Reference=Concentration&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="rAFull" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-02-19T16:27:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          100*(2*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[sp],Reference=Concentration&gt;*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pApA],Reference=Concentration&gt;+&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[sp],Reference=Concentration&gt;*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[STAT5A],Reference=Concentration&gt;+&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pApB],Reference=Concentration&gt;)/(2*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[sp],Reference=Concentration&gt;*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pApA],Reference=Concentration&gt;+2*(1-&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[sp],Reference=Concentration&gt;)*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pBpB],Reference=Concentration&gt;+2*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pApB],Reference=Concentration&gt;+&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[sp],Reference=Concentration&gt;*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[STAT5A],Reference=Concentration&gt;+(1-&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[sp],Reference=Concentration&gt;)*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[STAT5B],Reference=Concentration&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="ptotFull" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-02-19T16:31:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[rAFull],Reference=Concentration&gt;*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pAFull],Reference=Concentration&gt;+(100-&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[rAFull],Reference=Concentration&gt;)*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pBFull],Reference=Concentration&gt;)/100
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="nucpApA" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-02-19T16:19:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="nucpApB" simulationType="reactions" compartment="Compartment_3">
      </Metabolite>
      <Metabolite key="Metabolite_15" name="nucpBpB" simulationType="reactions" compartment="Compartment_3">
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Epo_degradation_BaF3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k_exp_hetero" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="k_exp_homo" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k_imp_hetero" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k_imp_homo" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k_phos" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="ratio" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="reaction1" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4404" name="Epo_degradation_BaF3" value="0.0269765"/>
          <Constant key="Parameter_4405" name="k_phos" value="15767.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Model_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="reaction2" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4406" name="Epo_degradation_BaF3" value="0.0269765"/>
          <Constant key="Parameter_4407" name="k_phos" value="15767.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Model_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="reaction3" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4408" name="Epo_degradation_BaF3" value="0.0269765"/>
          <Constant key="Parameter_4409" name="k_phos" value="15767.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Model_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="reaction4" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4410" name="k1" value="96807.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="reaction5" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4411" name="k1" value="0.0163702"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="reaction6" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4412" name="k1" value="96807.7"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="reaction7" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4413" name="k1" value="0.00617238"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="reaction8" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4414" name="k1" value="1.00097e-005"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="reaction9" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4415" name="k1" value="0.00617238"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt]" value="1.4" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[nuc]" value="0.45" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[STAT5A]" value="1.212940775863001e+026" type="Species" simulationType="reactions">
            <InitialExpression>
              207.6*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[ratio],Reference=InitialValue&gt;
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[STAT5B]" value="5.373345139825993e+025" type="Species" simulationType="reactions">
            <InitialExpression>
              207.6-207.6*&lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[ratio],Reference=InitialValue&gt;
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pApB]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pApA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pBpB]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pAFull]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[sp]" value="9.021168401419997e+022" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pBFull]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[rAFull]" value="1.794899168590492e+025" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[ptotFull]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[nuc],Vector=Metabolites[nucpApA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[nuc],Vector=Metabolites[nucpApB]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[nuc],Vector=Metabolites[nucpBpB]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[Epo_degradation_BaF3]" value="0.0269765368088175" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[k_exp_hetero]" value="1.00097114635938e-005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[k_exp_homo]" value="0.0061723799618614" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[k_imp_hetero]" value="0.0163701561812467" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[k_imp_homo]" value="96807.6817909446" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[k_phos]" value="15767.6469913504" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[ratio]" value="0.693" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction1],ParameterGroup=Parameters,Parameter=Epo_degradation_BaF3" value="0.0269765368088175" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[Epo_degradation_BaF3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction1],ParameterGroup=Parameters,Parameter=k_phos" value="15767.6469913504" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[k_phos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction2],ParameterGroup=Parameters,Parameter=Epo_degradation_BaF3" value="0.0269765368088175" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[Epo_degradation_BaF3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction2],ParameterGroup=Parameters,Parameter=k_phos" value="15767.6469913504" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[k_phos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction3],ParameterGroup=Parameters,Parameter=Epo_degradation_BaF3" value="0.0269765368088175" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[Epo_degradation_BaF3],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction3],ParameterGroup=Parameters,Parameter=k_phos" value="15767.6469913504" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[k_phos],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction4],ParameterGroup=Parameters,Parameter=k1" value="96807.6817909446" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[k_imp_homo],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction5],ParameterGroup=Parameters,Parameter=k1" value="0.0163701561812467" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[k_imp_hetero],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction6],ParameterGroup=Parameters,Parameter=k1" value="96807.6817909446" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[k_imp_homo],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction7],ParameterGroup=Parameters,Parameter=k1" value="0.0061723799618614" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[k_exp_homo],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction8],ParameterGroup=Parameters,Parameter=k1" value="1.00097114635938e-005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[k_exp_hetero],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Reactions[reaction9],ParameterGroup=Parameters,Parameter=k1" value="0.0061723799618614" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Values[k_exp_homo],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_4"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 1.212940775863001e+026 5.373345139825993e+025 0 0 0 0 0 0 0 0 1.794899168590492e+025 0 9.021168401419997e+022 1.4 0.45 0.0269765368088175 1.00097114635938e-005 0.0061723799618614 0.0163701561812467 96807.6817909446 15767.6469913504 0.693 
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
        <Parameter name="Resolution" type="unsignedFloat" value="1e-009"/>
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
        <Parameter name="StepNumber" type="unsignedInteger" value="2500"/>
        <Parameter name="StepSize" type="float" value="0.1"/>
        <Parameter name="Duration" type="float" value="250"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="1"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
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
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-009"/>
        <Parameter name="Use Reeder" type="bool" value="1"/>
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
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
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
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-006"/>
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
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-012"/>
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
        <Parameter name="ConvergenceTolerance" type="float" value="1e-006"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="1e-006"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[STAT5A]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[STAT5A],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[STAT5B]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[STAT5B],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pApB]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pApB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pApA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pApA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pBpB]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pBpB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pAFull]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pAFull],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pBFull]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[pBFull],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[rAFull]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[rAFull],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ptotFull]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[cyt],Vector=Metabolites[ptotFull],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[nucpApA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[nuc],Vector=Metabolites[nucpApA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[nucpApB]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[nuc],Vector=Metabolites[nucpApB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[nucpBpB]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B,Vector=Compartments[nuc],Vector=Metabolites[nucpBpB],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="MODEL1501220000.xml">
    <SBMLMap SBMLid="Epo_degradation_BaF3" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="STAT5A" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="STAT5B" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="cyt" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="k_exp_hetero" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="k_exp_homo" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="k_imp_hetero" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="k_imp_homo" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="k_phos" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="nuc" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="nucpApA" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="nucpApB" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="nucpBpB" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="pApA" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="pApB" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="pBpB" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="ratio" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="reaction1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="reaction2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="reaction3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="reaction4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="reaction5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="reaction6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="reaction7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="reaction8" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="reaction9" COPASIkey="Reaction_8"/>
  </SBMLReference>
</COPASI>
