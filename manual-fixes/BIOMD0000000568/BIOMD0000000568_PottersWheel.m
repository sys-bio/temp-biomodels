<notes>
      <body xmlns="http://www.w3.org/1999/xhtml">
        <p>SBML model exported from PottersWheel on 2014-01-08 01:49:18.</p>
        <pre>
% PottersWheel model definition file

function m = model_inputs_noinh_fitto_Data_July13_w()

m = pwGetEmptyModel();

%% Meta information

m.name        = &apos;model_new&apos;;
m.description = &apos;Converted from cc_small_v30.xml.&apos;;
m.authors     = {};
m.dates       = {&apos;2013-08-17&apos;};
m.modelFormat = 3;
m.amountBasedRates = true;
m.conversionSource = &apos;cc_small_v30.xml&apos;;
m.conversionActive = false;

%% Default sampling time points
m.t = 0:1:85;


%% X - Dynamic variables
% m = pwAddX(m, *ID, *startValue, fitSetting, minValue, maxValue, unit, compartment, name, description, typeOfStartValue, designerProps, classname)
m = pwAddX(m, &apos;S1&apos; , 25.5914, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::rb(S788~U,S800~U,b)&apos;           , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S2&apos; ,  0.0601, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::e2f(b!1).rb(S788~U,S800~U,b!1)&apos;, []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S3&apos; ,  6.2223, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::C2E(T160~U,b!1).p21(b!1)&apos;      , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S4&apos; ,   0.415, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@cyto::C2E(T160~U,b)&apos;                , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S5&apos; ,       1, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::dnapre()&apos;                      , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S10&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@cyto::C4D1(b)&apos;                      , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S11&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::p21(b)&apos;                        , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S12&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@cyto::p21(b)&apos;                       , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S13&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::C2E(T160~U,b)&apos;                 , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S14&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::e2f(b)&apos;                        , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S15&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::rb(S788~P,S800~U,b)&apos;           , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S16&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::e2f(b!1).rb(S788~P,S800~U,b!1)&apos;, []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S17&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::dnapre1()&apos;                     , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S18&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::C2E(T160~P,b)&apos;                 , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S19&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@cyto::C4D1(b!1).p21(b!1)&apos;           , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S20&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@cyto::C2E(T160~U,b!1).p21(b!1)&apos;     , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S21&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::rb(S788~P,S800~P,b)&apos;           , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S22&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::dnapre2()&apos;                     , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S23&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::C2E(T160~P,b!1).p21(b!1)&apos;      , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S24&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::C4D1(b!1).p21(b!1)&apos;            , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S25&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::dnapre3()&apos;                     , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S26&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::C4D1(b)&apos;                       , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S27&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::dnapre4()&apos;                     , []  , []             , []  , &apos;protein.generic&apos;);
m = pwAddX(m, &apos;S28&apos;,       0, &apos;fix&apos;, 1e-06, 1000,   [], []    , &apos;@nuc::dnapre5()&apos;                     , []  , []             , []  , &apos;protein.generic&apos;);


%% K - Dynamic parameters
% m = pwAddK(m, *ID, *value, fitSetting, minValue, maxValue, unit, name, description)
m = pwAddK(m, &apos;Vnuc&apos;           , 0.25                , &apos;fix&apos;   );
m = pwAddK(m, &apos;Vcyto&apos;          , 12.67               , &apos;fix&apos;   );
m = pwAddK(m, &apos;perk&apos;           , 0.00857314138104046 , &apos;global&apos;, 0.0001, 1         );
m = pwAddK(m, &apos;nerk&apos;           , 1.14663416967514    , &apos;global&apos;, 0.1   , 10        );
m = pwAddK(m, &apos;pakt&apos;           , 0.0348              , &apos;fix&apos;   , 0.0001, 1         );
m = pwAddK(m, &apos;nakt&apos;           , 1.0957              , &apos;fix&apos;   , 0.1   , 10        );
m = pwAddK(m, &apos;aerk&apos;           , 0.16                , &apos;fix&apos;   );
m = pwAddK(m, &apos;aakt&apos;           , 0.53                , &apos;fix&apos;   );
m = pwAddK(m, &apos;atf&apos;            , 0.601288203846636   , &apos;global&apos;, 1e-06 , 1         );
m = pwAddK(m, &apos;ks_c4&apos;          , 14298.6715905912    , &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;kdeg_c4&apos;        , 1.01433121526038    , &apos;global&apos;, 1     , 2         );
m = pwAddK(m, &apos;kdeg_c4gsk3b&apos;   , 0.107637073030656   , &apos;global&apos;, 0.1   , 8         );
m = pwAddK(m, &apos;ks_c2myc&apos;       , 0.157511710670132   , &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;ks_c2e2f&apos;       , 2.19944932286058    , &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;kdeg_c2c2gsk3b&apos; , 5.58835572681068    , &apos;global&apos;, 1e-06 , 10        );
m = pwAddK(m, &apos;kdeg_c2gsk3b&apos;   , 1.55090179808215e-05, &apos;global&apos;, 1e-06 , 10        );
m = pwAddK(m, &apos;kdeg_c2&apos;        , 0.225746618767114   , &apos;global&apos;, 0.2   , 0.7       );
m = pwAddK(m, &apos;kdp_c2cak&apos;      , 101.282119534273    , &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;kc2cak&apos;         , 0.316993285134466   , &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;ks_p21p53&apos;      , 3.84136205729286e-06, &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;ks_p21e2f&apos;      , 0.811617200647839   , &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;kdeg_p21erkskp2&apos;, 0.000282976267377082, &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;kdeg_p21c2skp2&apos; , 0.040108041739907   , &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;kdeg_p21skp2&apos;   , 0.750574831653576   , &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;kdeg_p21gsk3b&apos;  , 0.00464010657330714 , &apos;global&apos;, 1e-06 , 10        );
m = pwAddK(m, &apos;kdeg_p21erk&apos;    , 0.736488746268804   , &apos;global&apos;, 1e-06 , 10        );
m = pwAddK(m, &apos;Kd_p21c4&apos;       , 99.9965429570432    , &apos;global&apos;, 0.01  , 100       );
m = pwAddK(m, &apos;kb_p21c4&apos;       , 14.3083360067931    , &apos;global&apos;, 0.01  , 1000      );
m = pwAddK(m, &apos;Kd_p21c2&apos;       , 0.0100024233821379  , &apos;global&apos;, 0.01  , 100       );
m = pwAddK(m, &apos;kb_p21c2&apos;       , 997.938141166465    , &apos;global&apos;, 0.01  , 1000      );
m = pwAddK(m, &apos;ki&apos;             , 0.0918326575000322  , &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;kinh_p21akt&apos;    , 0.439662894183616   , &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;ks_e2fe2f&apos;      , 0.459601740303536   , &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;ks_e2fmyc&apos;      , 2.49174531457788e-06, &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;kdege2fplus&apos;    , 4.18153340918872e-05, &apos;global&apos;, 1e-07 , 10        );
m = pwAddK(m, &apos;kdeg_e2fbound&apos;  , 0.0999954023364359  , &apos;global&apos;, 0.04  , 0.1       );
m = pwAddK(m, &apos;ks_rb&apos;          , 72.5245257602228    , &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;ks_rbe2f&apos;       , 20.0129834334888    , &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;kdeg_rbp21&apos;     , 0.863570809432207   , &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;kdeg_rbbound&apos;   , 0.0889964132806627  , &apos;global&apos;, 0.04  , 0.1       );
m = pwAddK(m, &apos;kdegrbplus&apos;     , 0.257763482477731   , &apos;global&apos;, 1e-07 , 10        );
m = pwAddK(m, &apos;kb_rbe2f&apos;       , 229.976400323907    , &apos;global&apos;, 0.01  , 1000      );
m = pwAddK(m, &apos;Kd_rb_e2f&apos;      , 50.002528361226     , &apos;global&apos;, 50    , 500       );
m = pwAddK(m, &apos;kb_rbpe2f&apos;      , 182.218452288549    , &apos;global&apos;, 0.01  , 1000      );
m = pwAddK(m, &apos;Kd_rbp_e2f&apos;     , 481.484530572552    , &apos;global&apos;, 50    , 500       );
m = pwAddK(m, &apos;kcatprbc4&apos;      , 2797.82326282727    , &apos;global&apos;, 1e-06 , 1000000000);
m = pwAddK(m, &apos;kcatp_rbc2&apos;     , 7142308.07232621    , &apos;global&apos;, 1e-06 , 1000000000);
m = pwAddK(m, &apos;kcatdp_rbc2&apos;    , 0.00313841707547858 , &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;kcatdp_rbc4&apos;    , 2892.0219338341     , &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;kinh_pp1&apos;       , 16634.9400020267    , &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;Km_dprb&apos;        , 0.118988383643671   , &apos;global&apos;, 0.1   , 500       );
m = pwAddK(m, &apos;Km_prb&apos;         , 2.03458881189349    , &apos;global&apos;, 1     , 5000      );
m = pwAddK(m, &apos;nrb&apos;            , 3                   , &apos;fix&apos;   );
m = pwAddK(m, &apos;k_dna&apos;          , 0.00949790539669408 , &apos;global&apos;, 1e-06 , 1000000   );
m = pwAddK(m, &apos;k_delay&apos;        , 23.6658781343201    , &apos;global&apos;, 1e-06 , 1000000   );


%% R - Reactions
% m = pwAddR(m, *ID, *reactants, *products, *modifiers, *type, *options, *rateSignature, *parameters, description, name, fast, compartments, parameterTrunks, designerPropsR, stoichiometry, reversible)
m = pwAddR(m, &apos;R1&apos; , {           }, {&apos;S10&apos;      }, {           }, &apos;C&apos; , [] , &apos;k1*k2&apos;                                     , {&apos;ks_c4&apos;,&apos;tf&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R2&apos; , {           }, {&apos;S4&apos;       }, {&apos;S14&apos;,&apos;S16&apos;}, &apos;C&apos; , [] , &apos;(k1*k3 + k2*(m1 + m2))&apos;                    , {&apos;ks_c2myc&apos;,&apos;ks_c2e2f&apos;,&apos;tf&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R3&apos; , {&apos;S3&apos;       }, {&apos;S11&apos;      }, {           }, &apos;C&apos; , [] , &apos;(k2 + k1*k3)*r1&apos;                           , {&apos;kdeg_c2gsk3b&apos;,&apos;kdeg_c2&apos;,&apos;gsk3b&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R4&apos; , {&apos;S4&apos;       }, {           }, {           }, &apos;C&apos; , [] , &apos;(k2 + k1*k3)*r1&apos;                           , {&apos;kdeg_c2gsk3b&apos;,&apos;kdeg_c2&apos;,&apos;gsk3b&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R5&apos; , {           }, {&apos;S12&apos;      }, {&apos;S14&apos;      }, &apos;C&apos; , [] , &apos;(k1 + k2*m1)*k3&apos;                           , {&apos;ks_p21p53&apos;,&apos;ks_p21e2f&apos;,&apos;tfp21&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R6&apos; , {&apos;S3&apos;       }, {&apos;S11&apos;,&apos;S13&apos;}, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;kd_p21c2&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R7&apos; , {&apos;S3&apos;       }, {&apos;S13&apos;      }, {&apos;S18&apos;,&apos;S14&apos;}, &apos;C&apos; , [] , &apos;(k1*k4 + k2*m1 + k3)*m2*r1&apos;                , {&apos;kdeg_p21erkskp2&apos;,&apos;kdeg_p21c2skp2&apos;,&apos;kdeg_p21skp2&apos;,&apos;erk&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R8&apos; , {           }, {&apos;S1&apos;       }, {&apos;S14&apos;      }, &apos;C&apos; , [] , &apos;(k1 + k2*m1)&apos;                              , {&apos;ks_rb&apos;,&apos;ks_rbe2f&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R9&apos; , {&apos;S1&apos;       }, {           }, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;kdeg_rbfree&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R10&apos;, {&apos;S2&apos;       }, {&apos;S14&apos;      }, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;kdeg_rbbound&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R11&apos;, {&apos;S1&apos;       }, {           }, {&apos;S11&apos;      }, &apos;C&apos; , [] , &apos;k1*m1*r1&apos;                                  , {&apos;kdeg_rbp21&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R12&apos;, {&apos;S2&apos;       }, {&apos;S14&apos;      }, {&apos;S11&apos;      }, &apos;C&apos; , [] , &apos;k1*m1*r1&apos;                                  , {&apos;kdeg_rbp21&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R13&apos;, {           }, {&apos;S14&apos;      }, {&apos;S14&apos;      }, &apos;C&apos; , [] , &apos;(k1*m1 + k2)*k3&apos;                           , {&apos;ks_e2fe2f&apos;,&apos;ks_e2fmyc&apos;,&apos;tf&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R14&apos;, {&apos;S2&apos;       }, {&apos;S1&apos;       }, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;kdeg_e2fbound&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R15&apos;, {&apos;S2&apos;       }, {&apos;S1&apos;,&apos;S14&apos; }, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;kd_rbe2f&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R16&apos;, {&apos;S1&apos;       }, {&apos;S15&apos;      }, {&apos;S24&apos;      }, &apos;C&apos; , [] , &apos;k3*m1*r1^k2/(k1^k2 + r1^k2)&apos;               , {&apos;Km_prb&apos;,&apos;nrb&apos;,&apos;kcatp_rbc4&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R17&apos;, {&apos;S2&apos;       }, {&apos;S16&apos;      }, {&apos;S24&apos;      }, &apos;C&apos; , [] , &apos;k3*m1*r1^k2/(k1^k2 + r1^k2)&apos;               , {&apos;Km_prb&apos;,&apos;nrb&apos;,&apos;kcatp_rbc4&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R18&apos;, {&apos;S5&apos;       }, {&apos;S17&apos;      }, {&apos;S18&apos;,&apos;S14&apos;}, &apos;C&apos; , [] , &apos;k1*m1*m2*r1&apos;                               , {&apos;k_dna&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R19&apos;, {&apos;S10&apos;      }, {           }, {           }, &apos;C&apos; , [] , &apos;(k1 + k2*k3)*r1&apos;                           , {&apos;kdeg_c4&apos;,&apos;kdeg_c4gsk3b&apos;,&apos;gsk3b&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R20&apos;, {&apos;S13&apos;      }, {           }, {           }, &apos;C&apos; , [] , &apos;(k2 + k1*k3)*r1&apos;                           , {&apos;kdeg_c2gsk3b&apos;,&apos;kdeg_c2&apos;,&apos;gsk3b&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R21&apos;, {&apos;S13&apos;      }, {&apos;S18&apos;      }, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;kp_c2cak&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R22&apos;, {&apos;S10&apos;,&apos;S12&apos;}, {&apos;S19&apos;      }, {           }, &apos;C&apos; , [] , &apos;k1*r1*r2&apos;                                  , {&apos;kb_p21c4&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R23&apos;, {&apos;S4&apos;,&apos;S12&apos; }, {&apos;S20&apos;      }, {           }, &apos;C&apos; , [] , &apos;k1*r1*r2&apos;                                  , {&apos;kb_p21c2&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R24&apos;, {&apos;S11&apos;,&apos;S13&apos;}, {&apos;S3&apos;       }, {           }, &apos;C&apos; , [] , &apos;k1*r1*r2&apos;                                  , {&apos;kb_p21c2&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R25&apos;, {&apos;S12&apos;      }, {&apos;S11&apos;      }, {           }, &apos;C&apos; , [] , &apos;k2/k1*r1&apos;                                  , {&apos;Vratio&apos;,&apos;kimport&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R26&apos;, {&apos;S12&apos;      }, {           }, {           }, &apos;C&apos; , [] , &apos;k2*(1.0 - 1.0/k1)*r1&apos;                      , {&apos;Vratio&apos;,&apos;kimport&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R27&apos;, {&apos;S11&apos;      }, {           }, {           }, &apos;C&apos; , [] , &apos;(k1*k4 + k2*k3)*r1&apos;                        , {&apos;kdeg_p21gsk3b&apos;,&apos;kdeg_p21erk&apos;,&apos;erk&apos;,&apos;gsk3b&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R28&apos;, {&apos;S12&apos;      }, {           }, {           }, &apos;C&apos; , [] , &apos;(k1*k4 + k2*k3)*r1&apos;                        , {&apos;kdeg_p21gsk3b&apos;,&apos;kdeg_p21erk&apos;,&apos;erk&apos;,&apos;gsk3b&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R29&apos;, {&apos;S15&apos;      }, {           }, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;kdeg_rbfree&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R30&apos;, {&apos;S16&apos;      }, {&apos;S14&apos;      }, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;kdeg_rbbound&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R31&apos;, {&apos;S15&apos;      }, {           }, {&apos;S11&apos;      }, &apos;C&apos; , [] , &apos;k1*m1*r1&apos;                                  , {&apos;kdeg_rbp21&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R32&apos;, {&apos;S16&apos;      }, {&apos;S14&apos;      }, {&apos;S11&apos;      }, &apos;C&apos; , [] , &apos;k1*m1*r1&apos;                                  , {&apos;kdeg_rbp21&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R33&apos;, {&apos;S14&apos;      }, {           }, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;kdeg_e2ffree&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R34&apos;, {&apos;S16&apos;      }, {&apos;S15&apos;      }, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;kdeg_e2fbound&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R35&apos;, {&apos;S1&apos;,&apos;S14&apos; }, {&apos;S2&apos;       }, {           }, &apos;C&apos; , [] , &apos;k1*r1*r2&apos;                                  , {&apos;kb_rbe2f&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R36&apos;, {&apos;S14&apos;,&apos;S15&apos;}, {&apos;S16&apos;      }, {           }, &apos;C&apos; , [] , &apos;k1*r1*r2&apos;                                  , {&apos;kb_rbpe2f&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R37&apos;, {&apos;S16&apos;      }, {&apos;S14&apos;,&apos;S15&apos;}, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;kd_rbpe2f&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R38&apos;, {&apos;S15&apos;      }, {&apos;S21&apos;      }, {&apos;S18&apos;      }, &apos;C&apos; , [] , &apos;k1*m1*r1^k3/(k2^k3 + r1^k3)&apos;               , {&apos;kcatp_rbc2&apos;,&apos;Km_prb&apos;,&apos;nrb&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R39&apos;, {&apos;S16&apos;      }, {&apos;S14&apos;,&apos;S21&apos;}, {&apos;S18&apos;      }, &apos;C&apos; , [] , &apos;k1*m1*r1^k3/(k2^k3 + r1^k3)&apos;               , {&apos;kcatp_rbc2&apos;,&apos;Km_prb&apos;,&apos;nrb&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R40&apos;, {&apos;S15&apos;      }, {&apos;S1&apos;       }, {&apos;S18&apos;      }, &apos;C&apos; , [] , &apos;k1*r1^k4/(k3^k4 + r1^k4)*1.0/(1.0 + k2*m1)&apos;, {&apos;kcatdp_rbc4&apos;,&apos;kinh_pp1&apos;,&apos;Km_dprb&apos;,&apos;nrb&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R41&apos;, {&apos;S16&apos;      }, {&apos;S2&apos;       }, {&apos;S18&apos;      }, &apos;C&apos; , [] , &apos;k1*r1^k4/(k3^k4 + r1^k4)*1.0/(1.0 + k2*m1)&apos;, {&apos;kcatdp_rbc4&apos;,&apos;kinh_pp1&apos;,&apos;Km_dprb&apos;,&apos;nrb&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R42&apos;, {&apos;S17&apos;      }, {&apos;S22&apos;      }, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;k_delay&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R43&apos;, {&apos;S19&apos;      }, {&apos;S12&apos;      }, {           }, &apos;C&apos; , [] , &apos;(k1 + k2*k3)*r1&apos;                           , {&apos;kdeg_c4&apos;,&apos;kdeg_c4gsk3b&apos;,&apos;gsk3b&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R44&apos;, {&apos;S18&apos;      }, {           }, {           }, &apos;C&apos; , [] , &apos;(k2 + k1*k3)*r1&apos;                           , {&apos;kdeg_c2gsk3b&apos;,&apos;kdeg_c2&apos;,&apos;gsk3b&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R45&apos;, {&apos;S20&apos;      }, {&apos;S12&apos;      }, {           }, &apos;C&apos; , [] , &apos;(k2 + k1*k3)*r1&apos;                           , {&apos;kdeg_c2gsk3b&apos;,&apos;kdeg_c2&apos;,&apos;gsk3b&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R46&apos;, {&apos;S18&apos;      }, {           }, {           }, &apos;C&apos; , [] , &apos;k1*k2*r1&apos;                                  , {&apos;kdeg_c2c2gsk3b&apos;,&apos;gsk3b&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R47&apos;, {&apos;S18&apos;      }, {&apos;S13&apos;      }, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;kdp_c2cak&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R48&apos;, {&apos;S19&apos;      }, {&apos;S10&apos;,&apos;S12&apos;}, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;kd_p21c4&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R49&apos;, {&apos;S11&apos;,&apos;S18&apos;}, {&apos;S23&apos;      }, {           }, &apos;C&apos; , [] , &apos;k1*r1*r2&apos;                                  , {&apos;kb_p21c2&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R50&apos;, {&apos;S20&apos;      }, {&apos;S4&apos;,&apos;S12&apos; }, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;kd_p21c2&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R51&apos;, {&apos;S19&apos;      }, {&apos;S24&apos;      }, {           }, &apos;C&apos; , [] , &apos;k2/k1*r1&apos;                                  , {&apos;Vratio&apos;,&apos;kimport&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R52&apos;, {&apos;S20&apos;      }, {&apos;S3&apos;       }, {           }, &apos;C&apos; , [] , &apos;k2/k1*r1&apos;                                  , {&apos;Vratio&apos;,&apos;kimport&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R53&apos;, {&apos;S19&apos;      }, {           }, {           }, &apos;C&apos; , [] , &apos;k2*(1.0 - 1.0/k1)*r1&apos;                      , {&apos;Vratio&apos;,&apos;kimport&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R54&apos;, {&apos;S20&apos;      }, {           }, {           }, &apos;C&apos; , [] , &apos;k2*(1.0 - 1.0/k1)*r1&apos;                      , {&apos;Vratio&apos;,&apos;kimport&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R55&apos;, {&apos;S21&apos;      }, {           }, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;kdeg_rbfree&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R56&apos;, {&apos;S21&apos;      }, {           }, {&apos;S11&apos;      }, &apos;C&apos; , [] , &apos;k1*m1*r1&apos;                                  , {&apos;kdeg_rbp21&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R57&apos;, {&apos;S21&apos;      }, {&apos;S15&apos;      }, {&apos;S18&apos;      }, &apos;C&apos; , [] , &apos;k1*r1^k4/(k3^k4 + r1^k4)*1.0/(1.0 + k2*m1)&apos;, {&apos;kcatdp_rbc2&apos;,&apos;kinh_pp1&apos;,&apos;Km_dprb&apos;,&apos;nrb&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R58&apos;, {&apos;S22&apos;      }, {&apos;S25&apos;      }, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;k_delay&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R59&apos;, {&apos;S24&apos;      }, {           }, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;kdeg_c4&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R60&apos;, {&apos;S23&apos;      }, {&apos;S11&apos;      }, {           }, &apos;C&apos; , [] , &apos;(k2 + k1*k3)*r1&apos;                           , {&apos;kdeg_c2gsk3b&apos;,&apos;kdeg_c2&apos;,&apos;gsk3b&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R61&apos;, {&apos;S24&apos;      }, {&apos;S11&apos;,&apos;S26&apos;}, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;kd_p21c4&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R62&apos;, {&apos;S23&apos;      }, {&apos;S11&apos;,&apos;S18&apos;}, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;kd_p21c2&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R63&apos;, {&apos;S23&apos;      }, {&apos;S18&apos;      }, {&apos;S18&apos;,&apos;S14&apos;}, &apos;C&apos; , [] , &apos;(k1*k4 + k2*m1 + k3)*m2*r1&apos;                , {&apos;kdeg_p21erkskp2&apos;,&apos;kdeg_p21c2skp2&apos;,&apos;kdeg_p21skp2&apos;,&apos;erk&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R64&apos;, {&apos;S24&apos;      }, {&apos;S26&apos;      }, {&apos;S18&apos;,&apos;S14&apos;}, &apos;C&apos; , [] , &apos;(k1*k4 + k2*m1 + k3)*m2*r1&apos;                , {&apos;kdeg_p21erkskp2&apos;,&apos;kdeg_p21c2skp2&apos;,&apos;kdeg_p21skp2&apos;,&apos;erk&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R65&apos;, {&apos;S25&apos;      }, {&apos;S27&apos;      }, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;k_delay&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R66&apos;, {&apos;S26&apos;      }, {           }, {           }, &apos;C&apos; , [] , &apos;(k1 + k2*k3)*r1&apos;                           , {&apos;kdeg_c4&apos;,&apos;kdeg_c4gsk3b&apos;,&apos;gsk3b&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R67&apos;, {&apos;S11&apos;,&apos;S26&apos;}, {&apos;S24&apos;      }, {           }, &apos;C&apos; , [] , &apos;k1*r1*r2&apos;                                  , {&apos;kb_p21c4&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R68&apos;, {&apos;S27&apos;      }, {&apos;S28&apos;      }, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;k_delay&apos;}, [], [], [], {}, {}, {}, {}, 0);
m = pwAddR(m, &apos;R69&apos;, {&apos;S28&apos;      }, {           }, {           }, &apos;C&apos; , [] , &apos;k1*r1&apos;                                     , {&apos;k_delay&apos;}, [], [], [], {}, {}, {}, {}, 0);


%% A - Algebraic equations
% m = pwAddA(m, *ID, *rhs, description, name, designerProps, classname, targetType, compartment, valueType)
m = pwAddA(m, &apos;Vratio&apos;      , &apos;Vnuc/Vcyto&apos;                                                            , [], [], [], [], &apos;parameter&apos;, &apos;cell&apos;);
m = pwAddA(m, &apos;erk&apos;         , &apos;(1-inherk)*((1-aerk)*(perk^nerk+1)*hgf^nerk/(hgf^nerk+perk^nerk)+aerk)&apos;, [], [], [], [], &apos;parameter&apos;, &apos;cell&apos;);
m = pwAddA(m, &apos;akt&apos;         , &apos;(1-inhakt)*((1-aakt)*(pakt^nakt+1)*hgf^nakt/(hgf^nakt+pakt^nakt)+aakt)&apos;, [], [], [], [], &apos;parameter&apos;, &apos;cell&apos;);
m = pwAddA(m, &apos;gsk3b&apos;       , &apos;1-akt&apos;                                                                 , [], [], [], [], &apos;parameter&apos;, &apos;cell&apos;);
m = pwAddA(m, &apos;tf&apos;          , &apos;(1-atf)*(erk*(1-gsk3b))+atf&apos;                                           , [], [], [], [], &apos;parameter&apos;, &apos;cell&apos;);
m = pwAddA(m, &apos;tfp21&apos;       , &apos;(1-inhp53)*tf&apos;                                                         , [], [], [], [], &apos;parameter&apos;, &apos;cell&apos;);
m = pwAddA(m, &apos;kp_c2cak&apos;    , &apos;kdp_c2cak+kc2cak&apos;                                                      , [], [], [], [], &apos;parameter&apos;, &apos;cell&apos;);
m = pwAddA(m, &apos;kd_p21c4&apos;    , &apos;Kd_p21c4*kb_p21c4&apos;                                                     , [], [], [], [], &apos;parameter&apos;, &apos;cell&apos;);
m = pwAddA(m, &apos;kd_p21c2&apos;    , &apos;Kd_p21c2*kb_p21c2&apos;                                                     , [], [], [], [], &apos;parameter&apos;, &apos;cell&apos;);
m = pwAddA(m, &apos;kimport&apos;     , &apos;ki/(1+kinh_p21akt*akt)&apos;                                                , [], [], [], [], &apos;parameter&apos;, &apos;cell&apos;);
m = pwAddA(m, &apos;kdeg_e2ffree&apos;, &apos;kdeg_e2fbound+kdege2fplus&apos;                                             , [], [], [], [], &apos;parameter&apos;, &apos;cell&apos;);
m = pwAddA(m, &apos;kdeg_rbfree&apos; , &apos;kdeg_rbbound+kdegrbplus&apos;                                               , [], [], [], [], &apos;parameter&apos;, &apos;cell&apos;);
m = pwAddA(m, &apos;kd_rbe2f&apos;    , &apos;kb_rbe2f*Kd_rb_e2f&apos;                                                    , [], [], [], [], &apos;parameter&apos;, &apos;cell&apos;);
m = pwAddA(m, &apos;kd_rbpe2f&apos;   , &apos;kb_rbpe2f*Kd_rbp_e2f&apos;                                                  , [], [], [], [], &apos;parameter&apos;, &apos;cell&apos;);
m = pwAddA(m, &apos;kcatp_rbc4&apos;  , &apos;kcatprbc4*(1-inhc4d1)&apos;                                                 , [], [], [], [], &apos;parameter&apos;, &apos;cell&apos;);


%% U - Driving inputs
% m = pwAddU(m, *ID, *uType, *uTimes, *uValues, compartment, name, description, u2Values, alternativeIDs, designerProps, classname, referenceXID, unit, uFormula)
m = pwAddU(m, &apos;hgf&apos;    , &apos;steps&apos;, [-1 0]  , [0 0]  , [], [], [], [], {}, [], &apos;protein.generic&apos;);
m = pwAddU(m, &apos;inhp53&apos; , &apos;steps&apos;, [-1 0]  , [0 0]  , [], [], [], [], {}, [], &apos;protein.generic&apos;);
m = pwAddU(m, &apos;inherk&apos; , &apos;steps&apos;, [-1 0]  , [0 0]  , [], [], [], [], {}, [], &apos;protein.generic&apos;);
m = pwAddU(m, &apos;inhakt&apos; , &apos;steps&apos;, [-1 0]  , [0 0]  , [], [], [], [], {}, [], &apos;protein.generic&apos;);
m = pwAddU(m, &apos;inhc4d1&apos;, &apos;steps&apos;, [-1 0]  , [0 0]  , [], [], [], [], {}, [], &apos;protein.generic&apos;);


%% Y - Observables
% m = pwAddY(m, *ID, *rhs, errorModelRhs, noiseType, unit, name, description, alternativeIDs, designerProps, classname)
m = pwAddY(m, &apos;ObsTotCycDCDK4_obs&apos;, &apos;scale_TotcycDCDK4*(Vnuc*S24+Vcyto*S19)/(Vnuc+Vcyto)&apos;                  , [], [], [], [], &apos;ObsTotCycDCDK4&apos;);
m = pwAddY(m, &apos;ObsTotCycECDK2_obs&apos;, &apos;scale_TotcycECDK2*(Vnuc*(S3+S13+S18+S23)+Vcyto*(S4+S20))/(Vnuc+Vcyto)&apos;, [], [], [], [], &apos;ObsTotCycECDK2&apos;);
m = pwAddY(m, &apos;ObsTotCDK2T160_obs&apos;, &apos;scale_TotCDK2T160*(Vnuc*(S18+S23))/(Vnuc+Vcyto)&apos;                      , [], [], [], [], &apos;ObsTotCDK2T160&apos;);
m = pwAddY(m, &apos;ObsTotP21_obs&apos;     , &apos;scale_Totp21*(Vnuc*(S3+S11+S23+S24)+Vcyto*(S12+S19+S20))/(Vnuc+Vcyto)&apos;, [], [], [], [], &apos;ObsTotP21&apos;);
m = pwAddY(m, &apos;ObsTotE2F_obs&apos;     , &apos;(scale_TotE2F+scale_TotRb)*Vnuc*(S2+S14+S16)/(Vnuc+Vcyto)&apos;            , [], [], [], [], &apos;ObsTotE2F&apos;);
m = pwAddY(m, &apos;ObsTotRb_obs&apos;      , &apos;scale_TotRb*Vnuc*(S1+S2+S15+S16+S21)/(Vnuc+Vcyto)&apos;                    , [], [], [], [], &apos;ObsTotRb&apos;);
m = pwAddY(m, &apos;ObsPhosRbS788_obs&apos; , &apos;scale_PhosRbS788*Vnuc*(S15+S16+S21)/(Vnuc+Vcyto)&apos;                     , [], [], [], [], &apos;ObsPhosRbS788&apos;);
m = pwAddY(m, &apos;ObsPhosRbS800_obs&apos; , &apos;scale_PhosRbS800*Vnuc*S21/(Vnuc+Vcyto)&apos;                               , [], [], [], [], &apos;ObsPhosRbS800&apos;);
m = pwAddY(m, &apos;ObsCDK2P21_obs&apos;    , &apos;scale_Totp21CDK2*(Vnuc*(S3+S23)+Vcyto*S20)/(Vnuc+Vcyto)&apos;              , [], [], [], [], &apos;ObsTotP21&apos;);
m = pwAddY(m, &apos;ObsDNAContent_obs&apos; , &apos;2-(S5+S17+S22+S25+S27+S28)&apos;                                           , [], [], [], [], &apos;DNA content&apos;);


%% S - Observation parameters
% m = pwAddS(m, *ID, *value, fitSetting, minValue, maxValue, unit, name, description, usedInTimeTransformation)
m = pwAddS(m, &apos;scale_TotcycDCDK4&apos;,            0.5651,    &apos;fix&apos;);
m = pwAddS(m, &apos;scale_TotcycECDK2&apos;,            0.1889,    &apos;fix&apos;);
m = pwAddS(m, &apos;scale_Totp21CDK2&apos; , 0.339790715037712, &apos;global&apos;);
m = pwAddS(m, &apos;scale_TotCDK2T160&apos;,    2.728395741944, &apos;global&apos;);
m = pwAddS(m, &apos;scale_TotRb&apos;      ,            0.2605,    &apos;fix&apos;);
m = pwAddS(m, &apos;scale_PhosRbS788&apos; , 0.673907327042472, &apos;global&apos;,   0.2,   5.21);
m = pwAddS(m, &apos;scale_PhosRbS800&apos; ,  0.82377467648995, &apos;global&apos;,   0.3,   5.21);
m = pwAddS(m, &apos;scale_Totp21&apos;     ,            0.1728,    &apos;fix&apos;);
m = pwAddS(m, &apos;scale_TotE2F&apos;     ,           28.7418,    &apos;fix&apos;);


%% Z - Derived variables
% m = pwAddZ(m, *ID, *rhs, unit, name, description, designerProps, classname)
m = pwAddZ(m, &apos;ratioFreeE2F&apos;, &apos;S14/(S2+S14+S16)&apos;            , [], &apos;rE2F&apos;, &apos;ratio free E2F/Total E2F&apos;);
m = pwAddZ(m, &apos;ratioBoundRb&apos;, &apos;(S2+S16)/(S1+S2+S15+S16+S21)&apos;, [], &apos;rBoundRb&apos;, &apos;ratio Bound Rb/Total Rb&apos;);
m = pwAddZ(m, &apos;ratioPhosRb&apos; , &apos;S21/(S1+S2+S15+S16+S21)&apos;     , [], &apos;rPhosRb&apos;, &apos;ratio hyperphos Rb/Total Rb&apos;);


%% Designer layout properties
m.designerPropsM = [1 1 1 0 0 0 400 250 600 400 1 1 1 0 0 0 0 0 0 0];
</pre>
      </body>
    </notes>
