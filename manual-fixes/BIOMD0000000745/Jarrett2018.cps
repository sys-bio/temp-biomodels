<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.25 (Build 207) (http://www.copasi.org) at 2019-07-10T09:05:43Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="25" versionDevel="207" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_54" name="t-d_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_54">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-08T14:21:06Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ut*T*I
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_356" name="I" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_357" name="T" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_358" name="ut" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="t-g_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_55">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-08T14:21:06Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        g*T*(rho*H+1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_361" name="H" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_360" name="T" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_359" name="g" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="rho" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="i+_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_56">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-08T14:21:06Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        av*V+an*N
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_366" name="N" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_365" name="V" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_364" name="an" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="av" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="i-_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_57">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-08T14:21:06Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        av*V*I+an*N*I+ui*I*T
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_370" name="I" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_369" name="N" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_368" name="T" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_367" name="V" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_371" name="an" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_372" name="av" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_373" name="ui" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="v+_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_58">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-08T14:21:06Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        at*T+ai*I
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_380" name="I" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_379" name="T" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_378" name="ai" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_377" name="at" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="v-_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_59">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-08T14:21:06Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        at*T*V+ai*I*V+uv*V*T
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_381" name="I" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_374" name="T" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_375" name="V" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_376" name="ai" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_382" name="at" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_383" name="uv" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="n+_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_60">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-08T14:21:06Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        beta+beta*V*N
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_389" name="N" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_388" name="V" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_387" name="beta" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="n-_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_61">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-08T14:21:06Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        beta*V+beta*N+un*N*I
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_384" name="I" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_385" name="N" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_386" name="V" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_390" name="beta" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_391" name="un" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="h+_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_62">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-08T14:21:06Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        gamma*delta*H+gamma*V*H*H
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_396" name="H" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_395" name="V" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_394" name="delta" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_393" name="gamma" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="h-_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_63">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-08T14:21:06Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        gamma*delta*H*H+gamma*V*H
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_399" name="H" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_398" name="V" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_397" name="delta" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_392" name="gamma" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1" simulationType="time" timeUnit="d" volumeUnit="1" areaUnit="m²" lengthUnit="m" quantityUnit="1" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:efo:0000305"/>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/10090"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:30239754"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-03T15:01:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>jm2187@cam.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Men</vCard:Family>
                <vCard:Given>Jinghao</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Cambridge</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-03T15:01:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1907050004"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0002418"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:occursIn rdf:resource="urn:miriam:bto:BTO:0000149"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>The paper describes a model on the trastuzumab-induced immune response in murine(mouse) HER2+ breast cancer.
Created by COPASI 4.25 (Build 207) 

This model is described in the article: Mathematical modelling of trastuzumab-induced immune response in an in vivo murine model of HER2+ breast cancer 
Angela M. Jarrett, Meghan J. Bloom, Wesley Godfrey, Anum K. Syed, David A. Ekrut, Lauren I. Ehrlich, Thomas E. Yankeelov, Anna G. Sorace 
Mathematical Medicine and Biology: A Journal of the IMA (2018) 00, 1–30 

Abstract: 
The goal of this study is to develop an integrated, mathematical–experimental approach for understanding the interactions between the immune system and the effects of trastuzumab on breast cancer that overexpresses the human epidermal growth factor receptor 2 (HER2+). A system of coupled, ordinary differential equations was constructed to describe the temporal changes in tumour growth, along with intratumoural changes in the immune response, vascularity, necrosis and hypoxia. The mathematical model is calibrated with serially acquired experimental data of tumour volume, vascularity, necrosis and hypoxia obtained from either imaging or histology from a murine model of HER2+ breast cancer. Sensitivity analysis shows that model components are sensitive for 12 of 13 parameters, but accounting for uncertainty in the parameter values, model simulations still agree with the experimental data. Given theinitial conditions, the mathematical model predicts an increase in the immune infiltrates over time in the treated animals. Immunofluorescent staining results are presented that validate this prediction by showing an increased co-staining of CD11c and F4/80 (proteins expressed by dendritic cells and/or macrophages) in the total tissue for the treated tumours compared to the controls. We posit that the proposed mathematical–experimental approach can be used to elucidate driving interactions between the trastuzumab-induced responses in the tumour and the immune system that drive the stabilization of vasculature while simultaneously decreasing tumour growth—conclusions revealed by the mathematical model that were not deducible from the experimental data alone. 

This model is hosted on BioModels Database and identified by: MODEL1907050004. 
To cite BioModels Database, please use: BioModels Database: An enhanced, curated and annotated resource for published quantitative kinetic models . 
To the extent possible under law, all copyright and related or neighbouring rights to this encoded model have been dedicated to the public domain worldwide. 
Please refer to CC0 Public Domain Dedication for more information.</pre>
  </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="breast tumor" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94498" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_5" name="T" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94515" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>volume of tumor in ml</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="I" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO:0002418" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>fraction of immune response</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="V" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-03T15:04:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>fraction of vascular delivery</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="N" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070265" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>fraction of necrosis</pre>
  </body>
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="H" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C3890" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>fraction of hypoxia


normal tissue 0</pre>
  </body>
        </Comment>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_23" name="g" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <bqbiol:isPropertyOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0008283" />
      </rdf:Bag>
    </bqbiol:isPropertyOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000610" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>tumor volume growth rate</pre>
  </body>
        </Comment>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="an" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <bqbiol:isPropertyOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0050778" />
      </rdf:Bag>
    </bqbiol:isPropertyOf>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Rate immune response increases due to necrosis</pre>
  </body>
        </Comment>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="av" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <bqbiol:isPropertyOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0050778" />
      </rdf:Bag>
    </bqbiol:isPropertyOf>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Rate immune response increases due to vascular delivery</pre>
  </body>
        </Comment>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="ut" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <bqbiol:isPropertyOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0002418" />
      </rdf:Bag>
    </bqbiol:isPropertyOf>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Rate tumour volume decreases due to immune response</pre>
  </body>
        </Comment>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="ui" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <bqbiol:isPropertyOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0050777" />
      </rdf:Bag>
    </bqbiol:isPropertyOf>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Rate immune response decreases per tumour volume</pre>
  </body>
        </Comment>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="at" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <bqbiol:isPropertyOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010232" />
      </rdf:Bag>
    </bqbiol:isPropertyOf>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Rate vascular delivery increases per tumour volume</pre>
  </body>
        </Comment>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="ai" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <bqbiol:isPropertyOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010232" />
      </rdf:Bag>
    </bqbiol:isPropertyOf>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Rate vascular delivery increases due to immune response</pre>
  </body>
        </Comment>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="uv" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-03T15:05:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Rate vascular delivery decreases per tumour volume</pre>
  </body>
        </Comment>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="beta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <bqbiol:isPropertyOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070265" />
      </rdf:Bag>
    </bqbiol:isPropertyOf>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Rate of increased necrosis due to decreased vascular delivery</pre>
  </body>
        </Comment>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="un" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <bqbiol:isPropertyOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070265" />
      </rdf:Bag>
    </bqbiol:isPropertyOf>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Rate necrosis decreases due to immune response</pre>
  </body>
        </Comment>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="gamma" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <bqbiol:isPropertyOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C3890" />
      </rdf:Bag>
    </bqbiol:isPropertyOf>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C94967" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Rate of hypoxia increases/decreases due to vascular delivery</pre>
  </body>
        </Comment>
        <Unit>
          1/ms
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="delta" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <bqbiol:isPropertyOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C3890" />
      </rdf:Bag>
    </bqbiol:isPropertyOf>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C48228" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Hypoxia increase/decrease threshold due to vascular delivery</pre>
  </body>
        </Comment>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="rho" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-07-03T15:06:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Ability of hypoxia to promote tumour growth</pre>
  </body>
        </Comment>
        <Unit>
          1
        </Unit>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_14" name="tumor death" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0008219" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C94498" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5243" name="ut" value="0.187"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="tumor growth" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000393" />
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0008283" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C94498" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5255" name="g" value="0.044"/>
          <Constant key="Parameter_5200" name="rho" value="1.523"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="immune stimulation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0050778" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C94498" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5201" name="an" value="0.2"/>
          <Constant key="Parameter_5202" name="av" value="0.199"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="immune inhibition" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0050777" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C94498" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5733" name="an" value="0.2"/>
          <Constant key="Parameter_5734" name="av" value="0.199"/>
          <Constant key="Parameter_3083" name="ui" value="0.722"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="vasc increase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010232" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C94498" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3086" name="ai" value="0.045"/>
          <Constant key="Parameter_3084" name="at" value="0.101"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="vasc decrease" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C94498" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3085" name="ai" value="0.045"/>
          <Constant key="Parameter_5732" name="at" value="0.101"/>
          <Constant key="Parameter_5735" name="uv" value="1.723"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="necrotise" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <CopasiMT:isVersionOf rdf:resource="http://identifiers.org/go/GO:0070265" />
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C94498" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5199" name="beta" value="0.027"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="de-necrotise" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqmodel="http://biomodels.net/model-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <bqmodel:isDerivedFrom>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070265" />
      </rdf:Bag>
    </bqmodel:isDerivedFrom>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C94498" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5198" name="beta" value="0.027"/>
          <Constant key="Parameter_5197" name="un" value="0.911"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="hypoxia" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C94498" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5196" name="delta" value="0.284"/>
          <Constant key="Parameter_5252" name="gamma" value="0.743"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="normoxia" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ncit:C94498" />
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5250" name="delta" value="0.284"/>
          <Constant key="Parameter_5251" name="gamma" value="0.743"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-10T09:05:10Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor],Vector=Metabolites[T]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor],Vector=Metabolites[I]" value="0.070999999999999994" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor],Vector=Metabolites[V]" value="0.12" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor],Vector=Metabolites[N]" value="0.10000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor],Vector=Metabolites[H]" value="0.17999999999999999" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[g]" value="0.043999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[an]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[av]" value="0.19900000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[ut]" value="0.187" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[ui]" value="0.72199999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[at]" value="0.10100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[ai]" value="0.044999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[uv]" value="1.7230000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[beta]" value="0.027" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[un]" value="0.91100000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[gamma]" value="0.74299999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[delta]" value="0.28399999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[rho]" value="1.5229999999999999" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[tumor death]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[tumor death],ParameterGroup=Parameters,Parameter=ut" value="0.187" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[ut],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[tumor growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[tumor growth],ParameterGroup=Parameters,Parameter=g" value="0.043999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[g],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[tumor growth],ParameterGroup=Parameters,Parameter=rho" value="1.5229999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[rho],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[immune stimulation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[immune stimulation],ParameterGroup=Parameters,Parameter=an" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[an],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[immune stimulation],ParameterGroup=Parameters,Parameter=av" value="0.19900000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[av],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[immune inhibition]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[immune inhibition],ParameterGroup=Parameters,Parameter=an" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[an],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[immune inhibition],ParameterGroup=Parameters,Parameter=av" value="0.19900000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[av],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[immune inhibition],ParameterGroup=Parameters,Parameter=ui" value="0.72199999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[ui],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[vasc increase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[vasc increase],ParameterGroup=Parameters,Parameter=ai" value="0.044999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[ai],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[vasc increase],ParameterGroup=Parameters,Parameter=at" value="0.10100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[at],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[vasc decrease]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[vasc decrease],ParameterGroup=Parameters,Parameter=ai" value="0.044999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[ai],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[vasc decrease],ParameterGroup=Parameters,Parameter=at" value="0.10100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[at],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[vasc decrease],ParameterGroup=Parameters,Parameter=uv" value="1.7230000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[uv],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[necrotise]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[necrotise],ParameterGroup=Parameters,Parameter=beta" value="0.027" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[de-necrotise]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[de-necrotise],ParameterGroup=Parameters,Parameter=beta" value="0.027" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[beta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[de-necrotise],ParameterGroup=Parameters,Parameter=un" value="0.91100000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[un],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[hypoxia]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[hypoxia],ParameterGroup=Parameters,Parameter=delta" value="0.28399999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[delta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[hypoxia],ParameterGroup=Parameters,Parameter=gamma" value="0.74299999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[gamma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[normoxia]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[normoxia],ParameterGroup=Parameters,Parameter=delta" value="0.28399999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[delta],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Reactions[normoxia],ParameterGroup=Parameters,Parameter=gamma" value="0.74299999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Values[gamma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 0.20000000000000001 0.070999999999999994 0.12 0.10000000000000001 0.17999999999999999 1 0.043999999999999997 0.20000000000000001 0.19900000000000001 0.187 0.72199999999999998 0.10100000000000001 0.044999999999999998 1.7230000000000001 0.027 0.91100000000000003 0.74299999999999999 0.28399999999999997 1.5229999999999999 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
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
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.070000000000000007"/>
        <Parameter name="Duration" type="float" value="7"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
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
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_8" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_7" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
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
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
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
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
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
    <Report key="Report_9" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_8" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_2" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_1" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
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
    <PlotSpecification name="Fig.5A" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Hypoxia" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor],Vector=Metabolites[H],Reference=ParticleNumber"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Immune Response" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor],Vector=Metabolites[I],Reference=ParticleNumber"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Necrosis" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor],Vector=Metabolites[N],Reference=ParticleNumber"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Vasculature" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor],Vector=Metabolites[V],Reference=ParticleNumber"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Fig.5B" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Tumor Volume" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Jarrett2018 - trastuzumab-induced immune response in murine HER2+ breast cancer model_1,Vector=Compartments[breast tumor],Vector=Metabolites[T],Reference=ParticleNumber"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Jarrett2018.xml">
    <SBMLMap SBMLid="H" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="I" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="N" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="T" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="V" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="ai" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="an" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="at" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="av" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="beta" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="de_necrotise" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="delta" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="g" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="gamma" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="hypoxia" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="immune_inhibition" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="immune_stimulation" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="necrotise" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="normoxia" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="rho" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="tumor" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="tumor_death" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="tumor_growth" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="ui" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="un" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="ut" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="uv" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="vasc_decrease" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="vasc_increase" COPASIkey="Reaction_18"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-10T09:03:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-10T09:03:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_15" name="dimensionless" symbol="1">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_14">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-10T09:03:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_69" name="day" symbol="d">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_68">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-10T09:03:13Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        86400*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
