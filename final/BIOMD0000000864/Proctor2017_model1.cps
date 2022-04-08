<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-11-14 15:24:27 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="Function for miR_degradation" type="UserDefined" reversible="false">
      <Expression>
        kdegMiR*(miR*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_262" name="cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_263" name="kdegMiR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_264" name="miR" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for miR_gene_TF1_binding" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-14T12:03:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        kbinTF1miRgene*(miR_gene*cell)*(TF1*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_266" name="TF1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_261" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_250" name="kbinTF1miRgene" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="miR_gene" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for miR_gene_TF1_release" type="UserDefined" reversible="false">
      <Expression>
        krelTF1miRgene*(miR_gene_TF1*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_268" name="cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_269" name="krelTF1miRgene" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="miR_gene_TF1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for TF1_transcription" type="UserDefined" reversible="false">
      <Expression>
        ksynTF1mRNA*(Signal*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="Signal" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_281" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_282" name="ksynTF1mRNA" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for TF1_mRNA_degradation" type="UserDefined" reversible="false">
      <Expression>
        kdegTF1mRNA*(TF1_mRNA*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_283" name="TF1_mRNA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_284" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_285" name="kdegTF1mRNA" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for TF1_mRNA_degradation_via_miR" type="UserDefined" reversible="false">
      <Expression>
        kdegTF1mRNAbyMiR*(TF1_mRNA*cell)*(miR*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_289" name="TF1_mRNA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_286" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_287" name="kdegTF1mRNAbyMiR" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="miR" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for TF1_translation" type="UserDefined" reversible="false">
      <Expression>
        ksynTF1*(TF1_mRNA*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="TF1_mRNA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_292" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_293" name="ksynTF1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for TF1_degradation" type="UserDefined" reversible="false">
      <Expression>
        kdegTF1*(TF1*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_290" name="TF1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_294" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_295" name="kdegTF1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for miR_synthesis" type="UserDefined" reversible="false">
      <Expression>
        ksynMiR*(miR_gene_TF1*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_338" name="cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_339" name="ksynMiR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="miR_gene_TF1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA)" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="stochastic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C25966"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C3293"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <dcterms:description>Computer simulation models as a tool to investigate the role of microRNAs in osteoarthritis.</dcterms:description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/29095952"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-06T09:11:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>msharifshohan@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Sharif Shohan</vCard:Family>
            <vCard:Given>Mohammad Umer</vCard:Given>
          </rdf:Description>
        </vCard:N>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-06T09:11:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1610100001"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <div class="dc:title">Proctor2017- Role of microRNAs in
osteoarthritis (Negative Feedback By MicroRNA)</div>
    <div class="dc:bibliographicCitation">
      <p>This model is described in the article:</p>
      <div class="bibo:title">
        <a href="http://identifiers.org/pubmed/29095952" title="Access to this publication">Computer simulation models
    as a tool to investigate the role of microRNAs in
    osteoarthritis.</a>
      </div>
      <div class="bibo:authorList">Proctor CJ, Smith GR.</div>
      <div class="bibo:Journal">PLoS ONE 2017; 12(11): e0187568</div>
      <p>Abstract:</p>
      <div class="bibo:abstract">
        <p>The aim of this study was to show how computational models
    can be used to increase our understanding of the role of
    microRNAs in osteoarthritis (OA) using miR-140 as an example.
    Bioinformatics analysis and experimental results from the
    literature were used to create and calibrate models of gene
    regulatory networks in OA involving miR-140 along with key
    regulators such as NF-?B, SMAD3, and RUNX2. The individual
    models were created with the modelling standard, Systems
    Biology Markup Language, and integrated to examine the overall
    effect of miR-140 on cartilage homeostasis. Down-regulation of
    miR-140 may have either detrimental or protective effects for
    cartilage, indicating that the role of miR-140 is complex.
    Studies of individual networks in isolation may therefore lead
    to different conclusions. This indicated the need to combine
    the five chosen individual networks involving miR-140 into an
    integrated model. This model suggests that the overall effect
    of miR-140 is to change the response to an IL-1 stimulus from a
    prolonged increase in matrix degrading enzymes to a pulse-like
    response so that cartilage degradation is temporary. Our
    current model can easily be modified and extended as more
    experimental data become available about the role of miR-140 in
    OA. In addition, networks of other microRNAs that are important
    in OA could be incorporated. A fully integrated model could not
    only aid our understanding of the mechanisms of microRNAs in
    ageing cartilage but could also provide a useful tool to
    investigate the effect of potential interventions to prevent
    cartilage loss.</p>
      </div>
    </div>
    <div class="dc:publisher">
      <p>This model is hosted on 
  <a href="http://www.ebi.ac.uk/biomodels/">BioModels Database</a>
  and identified by: 
  <a href="http://identifiers.org/biomodels.db/MODEL1610100001">MODEL1610100001</a>.</p>
      <p>To cite BioModels Database, please use: 
  <a href="http://identifiers.org/pubmed/25414348" target="_blank">Chelliah V et al. BioModels: ten-year
  anniversary. Nucl. Acids Res. 2015, 43(Database
  issue):D542-8</a>.</p>
    </div>
    <div class="dc:license">
      <p>To the extent possible under law, all copyright and related or
  neighbouring rights to this encoded model have been dedicated to
  the public domain worldwide. Please refer to 
  <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Access to: CC0 1.0 Universal (CC0 1.0), Public Domain Dedication">CC0
  Public Domain Dedication</a> for more information.</p>
    </div>
  </body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="cell" simulationType="fixed" dimensionality="3" addNoise="false">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_9" name="miR" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_10" name="miR_gene" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_11" name="miR_gene_TF1" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_12" name="Signal" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_13" name="TF1" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_14" name="TF1_mRNA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_15" name="Sink" simulationType="fixed" compartment="Compartment_1" addNoise="false">
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_11" name="kbinTF1miRgene" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="kdegMiR" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="kdegTF1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="kdegTF1mRNA" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="kdegTF1mRNAbyMiR" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="krelTF1miRgene" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="ksynMiR" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="ksynTF1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="ksynTF1mRNA" simulationType="fixed" addNoise="false">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_11" name="miR_gene_TF1_binding" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-14T12:03:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4675" name="kbinTF1miRgene" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="miR_gene_TF1_release" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4674" name="krelTF1miRgene" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="miR_synthesis" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4673" name="ksynMiR" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="miR_degradation" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4670" name="kdegMiR" value="0.008"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="TF1_transcription" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4669" name="ksynTF1mRNA" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="TF1_mRNA_degradation" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4667" name="kdegTF1mRNA" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="TF1_mRNA_degradation_via_miR" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4666" name="kdegTF1mRNAbyMiR" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="TF1_translation" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4668" name="ksynTF1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="TF1_degradation" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4665" name="kdegTF1" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_2" name="ActivateSignal" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Reference=Time> gt 3600
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_12">
            <Expression>
              1/&lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell],Reference=Volume>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA)" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell],Vector=Metabolites[miR]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell],Vector=Metabolites[miR_gene]" value="2" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell],Vector=Metabolites[miR_gene_TF1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell],Vector=Metabolites[Signal]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell],Vector=Metabolites[TF1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell],Vector=Metabolites[TF1_mRNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell],Vector=Metabolites[Sink]" value="0" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Values[kbinTF1miRgene]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Values[kdegMiR]" value="0.0080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Values[kdegTF1]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Values[kdegTF1mRNA]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Values[kdegTF1mRNAbyMiR]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Values[krelTF1miRgene]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Values[ksynMiR]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Values[ksynTF1]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Values[ksynTF1mRNA]" value="10" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Reactions[miR_gene_TF1_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Reactions[miR_gene_TF1_binding],ParameterGroup=Parameters,Parameter=kbinTF1miRgene" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Values[kbinTF1miRgene],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Reactions[miR_gene_TF1_release]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Reactions[miR_gene_TF1_release],ParameterGroup=Parameters,Parameter=krelTF1miRgene" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Values[krelTF1miRgene],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Reactions[miR_synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Reactions[miR_synthesis],ParameterGroup=Parameters,Parameter=ksynMiR" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Values[ksynMiR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Reactions[miR_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Reactions[miR_degradation],ParameterGroup=Parameters,Parameter=kdegMiR" value="0.0080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Values[kdegMiR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Reactions[TF1_transcription]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Reactions[TF1_transcription],ParameterGroup=Parameters,Parameter=ksynTF1mRNA" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Values[ksynTF1mRNA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Reactions[TF1_mRNA_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Reactions[TF1_mRNA_degradation],ParameterGroup=Parameters,Parameter=kdegTF1mRNA" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Values[kdegTF1mRNA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Reactions[TF1_mRNA_degradation_via_miR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Reactions[TF1_mRNA_degradation_via_miR],ParameterGroup=Parameters,Parameter=kdegTF1mRNAbyMiR" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Values[kdegTF1mRNAbyMiR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Reactions[TF1_translation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Reactions[TF1_translation],ParameterGroup=Parameters,Parameter=ksynTF1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Values[ksynTF1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Reactions[TF1_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Reactions[TF1_degradation],ParameterGroup=Parameters,Parameter=kdegTF1" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Values[kdegTF1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
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
      0 0 0 0 0 2 0 0 1 0.0050000000000000001 0.0080000000000000002 0.0050000000000000001 0.0001 0.001 5 5 0.050000000000000003 10 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="488"/>
        <Parameter name="Duration" type="float" value="48800"/>
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
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
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
        <Parameter name="Steady-State" type="key" value=""/>
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[miR]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell],Vector=Metabolites[miR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[miR_gene]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell],Vector=Metabolites[miR_gene],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[miR_gene_TF1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell],Vector=Metabolites[miR_gene_TF1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Signal]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell],Vector=Metabolites[Signal],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TF1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell],Vector=Metabolites[TF1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TF1_mRNA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Negative Feedback By MicroRNA),Vector=Compartments[cell],Vector=Metabolites[TF1_mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Proctor2017_model1.xml">
    <SBMLMap SBMLid="ActivateSignal" COPASIkey="Event_2"/>
    <SBMLMap SBMLid="Function_for_TF1_degradation" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_for_TF1_mRNA_degradation" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_TF1_mRNA_degradation_via_miR" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Function_for_TF1_transcription" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_TF1_translation" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_for_miR_degradation" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_miR_gene_TF1_binding" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Function_for_miR_gene_TF1_release" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_miR_synthesis" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Signal" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="Sink" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="TF1" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="TF1_degradation" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="TF1_mRNA" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="TF1_mRNA_degradation" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="TF1_mRNA_degradation_via_miR" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="TF1_transcription" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="TF1_translation" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="cell" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="kbinTF1miRgene" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="kdegMiR" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="kdegTF1" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="kdegTF1mRNA" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="kdegTF1mRNAbyMiR" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="krelTF1miRgene" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="ksynMiR" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="ksynTF1" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="ksynTF1mRNA" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="miR" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="miR_degradation" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="miR_gene" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="miR_gene_TF1" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="miR_gene_TF1_binding" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="miR_gene_TF1_release" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="miR_synthesis" COPASIkey="Reaction_13"/>
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
