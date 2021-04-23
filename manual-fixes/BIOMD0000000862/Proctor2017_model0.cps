<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-11-14 11:04:48 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_41" name="Function for miR_degradation" type="UserDefined" reversible="false">
      <Expression>
        kdegMiR*(miR*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_270" name="kdegMiR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="miR" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for miR_gene_TF1_binding" type="UserDefined" reversible="false">
      <Expression>
        kbinTF1miRgene*(miR_gene*cell)*(TF1*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_310" name="TF1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_311" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_312" name="kbinTF1miRgene" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="miR_gene" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for miR_gene_TF1_release" type="UserDefined" reversible="false">
      <Expression>
        krelTF1miRgene*(miR_gene_TF1*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_318" name="cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_306" name="krelTF1miRgene" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="miR_gene_TF1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for miR_gene_TF2_binding" type="UserDefined" reversible="false">
      <Expression>
        kbinTF2miRgene*(miR_gene*cell)*(TF2*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_297" name="TF2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_298" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_330" name="kbinTF2miRgene" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="miR_gene" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for miR_gene_TF2_release" type="UserDefined" reversible="false">
      <Expression>
        krelTF2miRgene*(miR_gene_TF2*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_296" name="cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_337" name="krelTF2miRgene" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="miR_gene_TF2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for miR_synthesis_2" type="UserDefined" reversible="false">
      <Expression>
        ksynMiR*(miR_gene_TF2*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_342" name="cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_343" name="ksynMiR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_344" name="miR_gene_TF2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for TF1_transcription" type="UserDefined" reversible="false">
      <Expression>
        ksynTF1mRNA*(Signal*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_350" name="Signal" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_349" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_348" name="ksynTF1mRNA" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for TF1_mRNA_degradation" type="UserDefined" reversible="false">
      <Expression>
        kdegTF1mRNA*(TF1_mRNA*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_357" name="TF1_mRNA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_358" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_359" name="kdegTF1mRNA" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for TF1_mRNA_degradation_via_miR" type="UserDefined" reversible="false">
      <Expression>
        kdegTF1mRNAbyMiR*(TF1_mRNA*cell)*(miR*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_364" name="TF1_mRNA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_365" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_366" name="kdegTF1mRNAbyMiR" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="miR" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for TF1_translation" type="UserDefined" reversible="false">
      <Expression>
        ksynTF1*(TF1_mRNA*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_316" name="TF1_mRNA" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_372" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_373" name="ksynTF1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for TF1_degradation" type="UserDefined" reversible="false">
      <Expression>
        kdegTF1*(TF1*cell)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_377" name="TF1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_378" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_379" name="kdegTF1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA)" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="stochastic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:taxonomy:9606"/>
    <bqmodel:isDescribedBy rdf:resource="urn:miriam:ncit:C25966"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Computer simulation models as a tool to investigate the role of microRNAs in osteoarthritis.</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:29095952"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-11-14T10:57:36Z</dcterms:W3CDTF>
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
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1610100000"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <div class="dc:title">Proctor2017- Role of microRNAs in
osteoarthritis (Positive Feedback By Micro RNA)</div>
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
  <a href="http://identifiers.org/biomodels.db/MODEL1610100000">MODEL1610100000</a>.</p>
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
      <Metabolite key="Metabolite_7" name="miR" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_6" name="miR_gene" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_5" name="miR_gene_TF1" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_4" name="miR_gene_TF2" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_8" name="Signal" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_9" name="TF1" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_10" name="TF1_mRNA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_11" name="TF2" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_12" name="Sink" simulationType="fixed" compartment="Compartment_1" addNoise="false">
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_9" name="kbinTF1miRgene" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="kbinTF2miRgene" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="kdegMiR" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="kdegTF1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="kdegTF1mRNA" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="kdegTF1mRNAbyMiR" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="krelTF1miRgene" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="krelTF2miRgene" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="ksynMiR" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="ksynTF1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="ksynTF1mRNA" simulationType="fixed" addNoise="false">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_9" name="miR_gene_TF1_binding" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2845" name="kbinTF1miRgene" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="miR_gene_TF1_release" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2846" name="krelTF1miRgene" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="miR_gene_TF2_binding" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2884" name="kbinTF2miRgene" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="miR_gene_TF2_release" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2883" name="krelTF2miRgene" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="miR_synthesis" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2882" name="ksynMiR" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="miR_degradation" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2885" name="kdegMiR" value="0.0004"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="TF1_transcription" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2886" name="ksynTF1mRNA" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="TF1_mRNA_degradation" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2887" name="kdegTF1mRNA" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="TF1_mRNA_degradation_via_miR" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2888" name="kdegTF1mRNAbyMiR" value="1e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="TF1_translation" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2889" name="ksynTF1" value="0.0003"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="TF1_degradation" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2890" name="kdegTF1" value="1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_1" name="ActivateSignal" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Reference=Time> gt 3600
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_8">
            <Expression>
              100/&lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Reference=Volume>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_2" name="DeactivateSignal" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Reference=Time> gt 7200
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_8">
            <Expression>
              0/&lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Reference=Volume>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA)" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Vector=Metabolites[miR]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Vector=Metabolites[miR_gene]" value="2" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Vector=Metabolites[miR_gene_TF1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Vector=Metabolites[miR_gene_TF2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Vector=Metabolites[Signal]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Vector=Metabolites[TF1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Vector=Metabolites[TF1_mRNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Vector=Metabolites[TF2]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Vector=Metabolites[Sink]" value="0" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[kbinTF1miRgene]" value="0.002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[kbinTF2miRgene]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[kdegMiR]" value="0.00040000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[kdegTF1]" value="1.0000000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[kdegTF1mRNA]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[kdegTF1mRNAbyMiR]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[krelTF1miRgene]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[krelTF2miRgene]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[ksynMiR]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[ksynTF1]" value="0.00029999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[ksynTF1mRNA]" value="0.01" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[miR_gene_TF1_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[miR_gene_TF1_binding],ParameterGroup=Parameters,Parameter=kbinTF1miRgene" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[kbinTF1miRgene],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[miR_gene_TF1_release]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[miR_gene_TF1_release],ParameterGroup=Parameters,Parameter=krelTF1miRgene" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[krelTF1miRgene],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[miR_gene_TF2_binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[miR_gene_TF2_binding],ParameterGroup=Parameters,Parameter=kbinTF2miRgene" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[kbinTF2miRgene],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[miR_gene_TF2_release]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[miR_gene_TF2_release],ParameterGroup=Parameters,Parameter=krelTF2miRgene" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[krelTF2miRgene],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[miR_synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[miR_synthesis],ParameterGroup=Parameters,Parameter=ksynMiR" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[ksynMiR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[miR_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[miR_degradation],ParameterGroup=Parameters,Parameter=kdegMiR" value="0.00040000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[kdegMiR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[TF1_transcription]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[TF1_transcription],ParameterGroup=Parameters,Parameter=ksynTF1mRNA" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[ksynTF1mRNA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[TF1_mRNA_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[TF1_mRNA_degradation],ParameterGroup=Parameters,Parameter=kdegTF1mRNA" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[kdegTF1mRNA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[TF1_mRNA_degradation_via_miR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[TF1_mRNA_degradation_via_miR],ParameterGroup=Parameters,Parameter=kdegTF1mRNAbyMiR" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[kdegTF1mRNAbyMiR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[TF1_translation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[TF1_translation],ParameterGroup=Parameters,Parameter=ksynTF1" value="0.00029999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[ksynTF1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[TF1_degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Reactions[TF1_degradation],ParameterGroup=Parameters,Parameter=kdegTF1" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Values[kdegTF1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 2 0 0 1000 0 0 1000 0 0 1 0.002 0.0001 0.00040000000000000002 1.0000000000000001e-05 0.0001 9.9999999999999995e-07 0.001 0.001 0.20000000000000001 0.00029999999999999997 0.01 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_27" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
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
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="288"/>
        <Parameter name="Duration" type="float" value="28800"/>
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
        <Parameter name="Steady-State" type="key" value="Task_27"/>
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
    <Task key="Task_14" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
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
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Vector=Metabolites[miR],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Vector=Metabolites[miR_gene],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Vector=Metabolites[miR_gene_TF1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[miR_gene_TF2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Vector=Metabolites[miR_gene_TF2],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Vector=Metabolites[Signal],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Vector=Metabolites[TF1],Reference=Concentration"/>
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
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Vector=Metabolites[TF1_mRNA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TF2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Proctor2017- Role of microRNAs in osteoarthritis (Positive Feedback By Micro RNA),Vector=Compartments[cell],Vector=Metabolites[TF2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Proctor2017_model0.xml">
    <SBMLMap SBMLid="ActivateSignal" COPASIkey="Event_1"/>
    <SBMLMap SBMLid="DeactivateSignal" COPASIkey="Event_2"/>
    <SBMLMap SBMLid="Function_for_TF1_degradation" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="Function_for_TF1_mRNA_degradation" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_TF1_mRNA_degradation_via_miR" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="Function_for_TF1_transcription" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Function_for_TF1_translation" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Function_for_miR_degradation" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Function_for_miR_gene_TF1_binding" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Function_for_miR_gene_TF1_release" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Function_for_miR_gene_TF2_binding" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_miR_gene_TF2_release" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Function_for_miR_synthesis_2" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Signal" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="Sink" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="TF1" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="TF1_degradation" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="TF1_mRNA" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="TF1_mRNA_degradation" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="TF1_mRNA_degradation_via_miR" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="TF1_transcription" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="TF1_translation" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="TF2" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="cell" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="kbinTF1miRgene" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="kbinTF2miRgene" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="kdegMiR" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="kdegTF1" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="kdegTF1mRNA" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="kdegTF1mRNAbyMiR" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="krelTF1miRgene" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="krelTF2miRgene" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="ksynMiR" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="ksynTF1" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="ksynTF1mRNA" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="miR" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="miR_degradation" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="miR_gene" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="miR_gene_TF1" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="miR_gene_TF1_binding" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="miR_gene_TF1_release" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="miR_gene_TF2" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="miR_gene_TF2_binding" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="miR_gene_TF2_release" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="miR_synthesis" COPASIkey="Reaction_5"/>
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
