% PottersWheel model definition file

function m = getModel()

m             = pwGetEmptyModel();

%% Meta information

m.ID          = 'ERK_distributive_model';
m.name        = 'ERK_distributive_model';
m.description = 'ERK model calibrated to CFU-E as described in Schilling et al.';
m.authors     = {'Marcel Schilling','Thomas Maiwald'};
m.dates       = {'2009'};
m.type        = 'PW-2-0';

%% Dynamic variables
% m = pwAddX(m, ID, startValue, type, minValue, maxValue, unit, compartment, name, description, typeOfStartValue)

m = pwAddX(m, 'JAK2'         ,       2, 'fix'   ,   1, 3.7,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'EpoR'         ,       1, 'fix'   , 0.5, 1.5,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'SHP1'         , 10.7991, 'global', 0.1, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'SOS'          ,  2.5101, 'fix'   , 0.1, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'Raf'          ,  3.7719, 'global', 0.1, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'MEK2'         ,      11, 'fix'   ,   8,  14,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'MEK1'         ,      24, 'fix'   ,  18,  30,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'ERK1'         ,       7, 'global',   6,   9,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'ERK2'         ,      21, 'fix'   ,  16,  26,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'pJAK2'        ,       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'pEpoR'        ,       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'mSHP1'        ,       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'actSHP1'      ,       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'mSOS'         ,       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'pRaf'         ,       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'ppMEK2'       ,       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'ppMEK1'       ,       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'ppERK1'       ,       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'ppERK2'       ,       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'pSOS'         ,       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'pMEK2'        ,       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'pMEK1'        ,       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'pERK1'        ,       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'pERK2'        ,       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'Delay01_mSHP1',       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'Delay02_mSHP1',       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'Delay03_mSHP1',       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'Delay04_mSHP1',       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'Delay05_mSHP1',       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'Delay06_mSHP1',       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'Delay07_mSHP1',       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );
m = pwAddX(m, 'Delay08_mSHP1',       0, 'fix'   ,   0, 100,   [], 'cell', []  ,   [], 'concentration', []  );

%% Reactions
% m = pwAddR(m, reactants, products, modifiers, type, options, rateSignature, parameters, description, ID, name, fast, compartments, parameterTrunks, designerProps)

m = pwAddR(m, {'JAK2'         }, {'pJAK2'        }, {'Epo'    }, 'E' , [] , []  , {'JAK2_phosphorylation_by_Epo'         }, '...', 'reaction0001', [], [], {}, {}, {});
m = pwAddR(m, {'EpoR'         }, {'pEpoR'        }, {'pJAK2'  }, 'E' , [] , []  , {'EpoR_phosphorylation_by_pJAK2'       }, '...', 'reaction0002', [], [], {}, {}, {});
m = pwAddR(m, {'SHP1'         }, {'mSHP1'        }, {'pEpoR'  }, 'E' , [] , []  , {'SHP1_activation_by_pEpoR'            }, '...', 'reaction0003', [], [], {}, {}, {});
m = pwAddR(m, {'mSHP1'        }, {'Delay01_mSHP1'}, {         }, 'MA', [] , []  , {'SHP1_activation_by_pEpoR'            }, '...', 'reaction0004', [], [], {}, {}, {});
m = pwAddR(m, {'Delay01_mSHP1'}, {'Delay02_mSHP1'}, {         }, 'MA', [] , []  , {'SHP1_activation_by_pEpoR'            }, '...', 'reaction0005', [], [], {}, {}, {});
m = pwAddR(m, {'Delay02_mSHP1'}, {'Delay03_mSHP1'}, {         }, 'MA', [] , []  , {'SHP1_activation_by_pEpoR'            }, '...', 'reaction0006', [], [], {}, {}, {});
m = pwAddR(m, {'Delay03_mSHP1'}, {'Delay04_mSHP1'}, {         }, 'MA', [] , []  , {'SHP1_activation_by_pEpoR'            }, '...', 'reaction0007', [], [], {}, {}, {});
m = pwAddR(m, {'Delay04_mSHP1'}, {'Delay05_mSHP1'}, {         }, 'MA', [] , []  , {'SHP1_activation_by_pEpoR'            }, '...', 'reaction0008', [], [], {}, {}, {});
m = pwAddR(m, {'Delay05_mSHP1'}, {'Delay06_mSHP1'}, {         }, 'MA', [] , []  , {'SHP1_activation_by_pEpoR'            }, '...', 'reaction0009', [], [], {}, {}, {});
m = pwAddR(m, {'Delay06_mSHP1'}, {'Delay07_mSHP1'}, {         }, 'MA', [] , []  , {'SHP1_activation_by_pEpoR'            }, '...', 'reaction0010', [], [], {}, {}, {});
m = pwAddR(m, {'Delay07_mSHP1'}, {'Delay08_mSHP1'}, {         }, 'MA', [] , []  , {'SHP1_activation_by_pEpoR'            }, '...', 'reaction0011', [], [], {}, {}, {});
m = pwAddR(m, {'Delay08_mSHP1'}, {'actSHP1'      }, {         }, 'MA', [] , []  , {'SHP1_activation_by_pEpoR'            }, '...', 'reaction0012', [], [], {}, {}, {});
m = pwAddR(m, {'actSHP1'      }, {'SHP1'         }, {         }, 'MA', [] , []  , {'actSHP1_deactivation'                }, '...', 'reaction0005', [], [], {}, {}, {});
m = pwAddR(m, {'pEpoR'        }, {'EpoR'         }, {'actSHP1'}, 'E' , [] , []  , {'pEpoR_dephosphorylation_by_actSHP1'  }, '...', 'reaction0006', [], [], {}, {}, {});
m = pwAddR(m, {'pJAK2'        }, {'JAK2'         }, {'actSHP1'}, 'E' , [] , []  , {'pJAK2_dephosphorylation_by_actSHP1'  }, '...', 'reaction0007', [], [], {}, {}, {});
m = pwAddR(m, {'SOS'          }, {'mSOS'         }, {'pEpoR'  }, 'E' , [] , []  , {'SOS_recruitment_by_pEpoR'            }, '...', 'reaction0008', [], [], {}, {}, {});
m = pwAddR(m, {'mSOS'         }, {'SOS'          }, {         }, 'MA', [] , []  , {'mSOS_release_from_membrane'          }, '...', 'reaction0009', [], [], {}, {}, {});
m = pwAddR(m, {'Raf'          }, {'pRaf'         }, {'mSOS'   }, 'E' , [] , []  , {'mSOS_induced_Raf_phosphorylation'    }, '...', 'reaction0010', [], [], {}, {}, {});
m = pwAddR(m, {'pRaf'         }, {'Raf'          }, {         }, 'MA', [] , []  , {'pRaf_dephosphorylation'              }, '...', 'reaction0011', [], [], {}, {}, {});
m = pwAddR(m, {'MEK2'         }, {'pMEK2'        }, {'pRaf'   }, 'E' , [] , []  , {'First_MEK2_phosphorylation_by_pRaf'  }, '...', 'reaction0012', [], [], {}, {}, {});
m = pwAddR(m, {'MEK1'         }, {'pMEK1'        }, {'pRaf'   }, 'E' , [] , []  , {'First_MEK1_phosphorylation_by_pRaf'  }, '...', 'reaction0013', [], [], {}, {}, {});
m = pwAddR(m, {'pMEK2'        }, {'ppMEK2'       }, {'pRaf'   }, 'E' , [] , []  , {'Second_MEK2_phosphorylation_by_pRaf' }, '...', 'reaction0014', [], [], {}, {}, {});
m = pwAddR(m, {'pMEK1'        }, {'ppMEK1'       }, {'pRaf'   }, 'E' , [] , []  , {'Second_MEK1_phosphorylation_by_pRaf' }, '...', 'reaction0015', [], [], {}, {}, {});
m = pwAddR(m, {'ppMEK2'       }, {'pMEK2'        }, {         }, 'MA', [] , []  , {'First_MEK_dephosphorylation'         }, '...', 'reaction0016', [], [], {}, {}, {});
m = pwAddR(m, {'ppMEK1'       }, {'pMEK1'        }, {         }, 'MA', [] , []  , {'First_MEK_dephosphorylation'         }, '...', 'reaction0017', [], [], {}, {}, {});
m = pwAddR(m, {'pMEK2'        }, {'MEK2'         }, {         }, 'MA', [] , []  , {'Second_MEK_dephosphorylation'        }, '...', 'reaction0018', [], [], {}, {}, {});
m = pwAddR(m, {'pMEK1'        }, {'MEK1'         }, {         }, 'MA', [] , []  , {'Second_MEK_dephosphorylation'        }, '...', 'reaction0019', [], [], {}, {}, {});
m = pwAddR(m, {'ERK1'         }, {'pERK1'        }, {'ppMEK2' }, 'E' , [] , []  , {'First_ERK1_phosphorylation_by_ppMEK' }, '...', 'reaction0020', [], [], {}, {}, {});
m = pwAddR(m, {'ERK2'         }, {'pERK2'        }, {'ppMEK2' }, 'E' , [] , []  , {'First_ERK2_phosphorylation_by_ppMEK' }, '...', 'reaction0021', [], [], {}, {}, {});
m = pwAddR(m, {'ERK1'         }, {'pERK1'        }, {'ppMEK1' }, 'E' , [] , []  , {'First_ERK1_phosphorylation_by_ppMEK' }, '...', 'reaction0022', [], [], {}, {}, {});
m = pwAddR(m, {'ERK2'         }, {'pERK2'        }, {'ppMEK1' }, 'E' , [] , []  , {'First_ERK2_phosphorylation_by_ppMEK' }, '...', 'reaction0023', [], [], {}, {}, {});
m = pwAddR(m, {'pERK1'        }, {'ppERK1'       }, {'ppMEK2' }, 'E' , [] , []  , {'Second_ERK1_phosphorylation_by_ppMEK'}, '...', 'reaction0024', [], [], {}, {}, {});
m = pwAddR(m, {'pERK2'        }, {'ppERK2'       }, {'ppMEK2' }, 'E' , [] , []  , {'Second_ERK2_phosphorylation_by_ppMEK'}, '...', 'reaction0025', [], [], {}, {}, {});
m = pwAddR(m, {'pERK1'        }, {'ppERK1'       }, {'ppMEK1' }, 'E' , [] , []  , {'Second_ERK1_phosphorylation_by_ppMEK'}, '...', 'reaction0026', [], [], {}, {}, {});
m = pwAddR(m, {'pERK2'        }, {'ppERK2'       }, {'ppMEK1' }, 'E' , [] , []  , {'Second_ERK2_phosphorylation_by_ppMEK'}, '...', 'reaction0027', [], [], {}, {}, {});
m = pwAddR(m, {'ppERK1'       }, {'pERK1'        }, {         }, 'MA', [] , []  , {'First_ERK_dephosphorylation'         }, '...', 'reaction0028', [], [], {}, {}, {});
m = pwAddR(m, {'ppERK2'       }, {'pERK2'        }, {         }, 'MA', [] , []  , {'First_ERK_dephosphorylation'         }, '...', 'reaction0029', [], [], {}, {}, {});
m = pwAddR(m, {'pERK1'        }, {'ERK1'         }, {         }, 'MA', [] , []  , {'Second_ERK_dephosphorylation'        }, '...', 'reaction0030', [], [], {}, {}, {});
m = pwAddR(m, {'pERK2'        }, {'ERK2'         }, {         }, 'MA', [] , []  , {'Second_ERK_dephosphorylation'        }, '...', 'reaction0031', [], [], {}, {}, {});
m = pwAddR(m, {'mSOS'         }, {'pSOS'         }, {'ppERK1' }, 'E' , [] , []  , {'ppERK_neg_feedback_on_mSOS'          }, '...', 'reaction0032', [], [], {}, {}, {});
m = pwAddR(m, {'mSOS'         }, {'pSOS'         }, {'ppERK2' }, 'E' , [] , []  , {'ppERK_neg_feedback_on_mSOS'          }, '...', 'reaction0033', [], [], {}, {}, {});
m = pwAddR(m, {'pSOS'         }, {'SOS'          }, {         }, 'MA', [] , []  , {'pSOS_dephosphorylation'              }, '...', 'reaction0034', [], [], {}, {}, {});

%% Compartments
% m = pwAddC(m, ID, size,  outside, spatialDimensions, name, unit, constant)

m = pwAddC(m, 'cell', 1, [], 3, 'cell', [], 1);

%% Dynamical parameters
% m = pwAddK(m, ID, value, type, minValue, maxValue, unit, name, description)

m = pwAddK(m, 'JAK2_phosphorylation_by_Epo'         , 0.0122149, 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'EpoR_phosphorylation_by_pJAK2'       , 3.15714  , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'SHP1_activation_by_pEpoR'            , 0.408408 , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'SHP1_delay'                          , 0.408408 , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'actSHP1_deactivation'                , 0.0248773, 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'pEpoR_dephosphorylation_by_actSHP1'  , 1.19995  , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'pJAK2_dephosphorylation_by_actSHP1'  , 0.368384 , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'SOS_recruitment_by_pEpoR'            , 0.10271  , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'mSOS_release_from_membrane'          , 15.5956  , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'mSOS_induced_Raf_phosphorylation'    , 0.144515 , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'pRaf_dephosphorylation'              , 0.374228 , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'First_MEK2_phosphorylation_by_pRaf'  , 3.11919  , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'Second_MEK2_phosphorylation_by_pRaf' , 215.158  , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'First_MEK1_phosphorylation_by_pRaf'  , 0.687193 , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'Second_MEK1_phosphorylation_by_pRaf' , 667.957  , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'First_MEK_dephosphorylation'         , 0.130937 , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'Second_MEK_dephosphorylation'        , 0.0732724, 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'First_ERK1_phosphorylation_by_ppMEK' , 2.4927   , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'Second_ERK1_phosphorylation_by_ppMEK', 59.5251  , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'First_ERK2_phosphorylation_by_ppMEK' , 2.44361  , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'Second_ERK2_phosphorylation_by_ppMEK', 53.0816  , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'First_ERK_dephosphorylation'         , 39.0886  , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'Second_ERK_dephosphorylation'        , 3.00453  , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'ppERK_neg_feedback_on_mSOS'          , 5122.68  , 'fix', 1e-006, 10000, [], [], []);
m = pwAddK(m, 'pSOS_dephosphorylation'              , 0.124944 , 'fix', 1e-006, 10000, [], [], []);

%% Default driving input
% m = pwAddU(m, ID, uType, uTimes, uValues, compartment, name, description, u2Values)

m = pwAddU(m, 'Epo', 'steps', [-60 0]  , [0 50]  , 'cell', [], [], [0 0]);

%% Default sampling time points
m.t = 0:1:35;

%% Observables
% m = pwAddY(m, rhs, ID, scalingParameter, errorModel, noiseType, unit, name, description)

m = pwAddY(m, 'pEpoR'     , 'pEpoR_obs' , 'scale_pEpoR_obs', 'y * 0.05 + max(y) * 0.05', 'Gaussian', [], [], []);
m = pwAddY(m, 'pJAK2'     , 'pJAK2_obs' , 'scale_pJAK2_obs', 'y * 0.05 + max(y) * 0.05', 'Gaussian', [], [], []);
m = pwAddY(m, 'ppMEK2'    , 'ppMEK2_obs', 'scale_ppMEK_obs', 'y * 0.05 + max(y) * 0.05', 'Gaussian', [], [], []);
m = pwAddY(m, 'ppMEK1'    , 'ppMEK1_obs', 'scale_ppMEK_obs', 'y * 0.05 + max(y) * 0.05', 'Gaussian', [], [], []);
m = pwAddY(m, 'ppERK1'    , 'ppERK1_obs', 'scale_ppERK_obs', 'y * 0.05 + max(y) * 0.05', 'Gaussian', [], [], []);
m = pwAddY(m, 'ppERK2'    , 'ppERK2_obs', 'scale_ppERK_obs', 'y * 0.05 + max(y) * 0.05', 'Gaussian', [], [], []);
m = pwAddY(m, 'pSOS'      , 'pSOS_obs'  , 'scale_SOS_obs'  , 'y * 0.05 + max(y) * 0.05', 'Gaussian', [], [], []);
m = pwAddY(m, 'SOS + mSOS', 'SOS_obs'   , 'scale_SOS_obs'  , 'y * 0.05 + max(y) * 0.05', 'Gaussian', [], [], []);

%% Scaling parameters
% m = pwAddS(m, ID, value, type, minValue, maxValue, unit, name, description)

m = pwAddS(m, 'scale_pEpoR_obs', 0.493312, 'fix', 0.01, 50, [], [], []);
m = pwAddS(m, 'scale_pJAK2_obs',  0.21008, 'fix', 0.01, 50, [], [], []);
m = pwAddS(m, 'scale_ppMEK_obs',  40.5364, 'fix', 0.01, 50, [], [], []);
m = pwAddS(m, 'scale_ppERK_obs',  13.5981, 'fix', 0.01, 50, [], [], []);
m = pwAddS(m, 'scale_SOS_obs'  ,  1.10228, 'fix', 0.01, 50, [], [], []);

%% Derived variables
% m = pwAddZ(m, rhs, ID, unit, name, description)

m = pwAddZ(m, 'ppERK1', 'ppERK1', [], [], []);
m = pwAddZ(m, 'ppERK2', 'ppERK2', [], [], []);

%% Derived parameters
% m = pwAddP(m, rhs, ID, unit, name, description)

%m = pwAddP(m, 'JAK2_phosphorylation_by_Epo');
%m = pwAddP(m, 'EpoR_phosphorylation_by_pJAK2');
%m = pwAddP(m, 'SHP1_activation_by_pEpoR');
%m = pwAddP(m, 'SHP1_delay');
%m = pwAddP(m, 'actSHP1_deactivation');
%m = pwAddP(m, 'pEpoR_dephosphorylation_by_actSHP1');
%m = pwAddP(m, 'pJAK2_dephosphorylation_by_actSHP1');
%m = pwAddP(m, 'SOS_recruitment_by_pEpoR');
%m = pwAddP(m, 'mSOS_release_from_membrane');
%m = pwAddP(m, 'mSOS_induced_Raf_phosphorylation');
%m = pwAddP(m, 'pRaf_dephosphorylation');
%m = pwAddP(m, 'First_MEK2_phosphorylation_by_pRaf');
%m = pwAddP(m, 'Second_MEK2_phosphorylation_by_pRaf');
%m = pwAddP(m, 'First_MEK1_phosphorylation_by_pRaf');
%m = pwAddP(m, 'Second_MEK1_phosphorylation_by_pRaf');
%m = pwAddP(m, 'First_MEK_dephosphorylation');
%m = pwAddP(m, 'Second_MEK_dephosphorylation');
%m = pwAddP(m, 'First_ERK1_phosphorylation_by_ppMEK');
%m = pwAddP(m, 'Second_ERK1_phosphorylation_by_ppMEK');
%m = pwAddP(m, 'First_ERK2_phosphorylation_by_ppMEK');
%m = pwAddP(m, 'Second_ERK2_phosphorylation_by_ppMEK');
%m = pwAddP(m, 'First_ERK_dephosphorylation');
%m = pwAddP(m, 'Second_ERK_dephosphorylation');
%m = pwAddP(m, 'ppERK_neg_feedback_on_mSOS');
%m = pwAddP(m, 'pSOS_dephosphorylation');
%m = pwAddP(m, 'JAK2');
%m = pwAddP(m, 'EpoR');
%m = pwAddP(m, 'SHP1');
%m = pwAddP(m, 'SOS');
%m = pwAddP(m, 'Raf');
%m = pwAddP(m, 'MEK2');
%m = pwAddP(m, 'MEK1');
%m = pwAddP(m, 'ERK1');
%m = pwAddP(m, 'ERK2');
%m = pwAddP(m, 'pJAK2');
%m = pwAddP(m, 'pEpoR');
%m = pwAddP(m, 'mSHP1');
%m = pwAddP(m, 'actSHP1');
%m = pwAddP(m, 'mSOS');
%m = pwAddP(m, 'pRaf');
%m = pwAddP(m, 'ppMEK2');
%m = pwAddP(m, 'ppMEK1');
%m = pwAddP(m, 'ppERK1');
%m = pwAddP(m, 'ppERK2');
%m = pwAddP(m, 'pSOS');
%m = pwAddP(m, 'pMEK2');
%m = pwAddP(m, 'pMEK1');
%m = pwAddP(m, 'pERK1');
%m = pwAddP(m, 'pERK2');
%m = pwAddP(m, 'Delay01_mSHP1');
%m = pwAddP(m, 'Delay02_mSHP1');
%m = pwAddP(m, 'Delay03_mSHP1');
%m = pwAddP(m, 'Delay04_mSHP1');
%m = pwAddP(m, 'Delay05_mSHP1');
%m = pwAddP(m, 'Delay06_mSHP1');
%m = pwAddP(m, 'Delay07_mSHP1');
%m = pwAddP(m, 'Delay08_mSHP1');
%m = pwAddP(m, 'scale_pEpoR_obs');
%m = pwAddP(m, 'scale_pJAK2_obs');
%m = pwAddP(m, 'scale_ppMEK_obs');
%m = pwAddP(m, 'scale_ppERK_obs');
%m = pwAddP(m, 'scale_SOS_obs');

%% Rules
% m = pwAddRule(m, lhs, reactants, parameters, ruleSignature, type, description, ID)


%% Constraints
% m = pwAddConstraint(m, lhs, operator, rhs, reactants, parameters, lambda)

m = pwAddConstraint(m, 'max(r1)/max(r2)', '=', '0.2', {'pERK1','ERK1'}, {}, 200);
m = pwAddConstraint(m, 'max(r1)/max(r2)', '=', '0.2', {'pERK2','ERK2'}, {}, 200);
m = pwAddConstraint(m, 'max(r1)/max(r2)', '=', '0.1', {'ppERK1','ERK1'}, {}, 200);
m = pwAddConstraint(m, 'max(r1)/max(r2)', '=', '0.1', {'ppERK2','ERK2'}, {}, 200);

