%Model parameters were estimated and identified using PottersWheel version 3.0.12. 
%SBML model exported from PottersWheel. 
%Model perturbation and annotation were performed using COPASI version 4.8 (Build 35) with libSBML version 4.2.0.

% PottersWheel model definition file

function m = dallepezze_nelson_cellular_senescence_model()

m = pwGetEmptyModel();

m.name        	= 'dallepezze_nelson_cellular_senescence_model';
m.description 	= 'Dynamic modelling of pathways to cellular senescence reveals strategies for targeted interventions';
m.authors     	= {'Piero Dalle Pezze','Glyn Nelson'};
m.dates       	= {'2013'};
m.modelFormat 	= 3;

%% Default sampling time points
m.t = 0:0.02:21;  % simulation up to 21 days




%% X - Dynamic variables
% m = pwAddX(m, *ID, *startValue, fitSetting, minValue, maxValue, unit, compartment, name, description, typeOfStartValue, designerProps, classname)
% MODULE: IIS/TOR-FOXO-mitophagy signalling
m = pwAddX(m, 'Akt'				,	10.00, 'fix', 0, 100, [], 'Cell');
m = pwAddX(m, 'Akt_pS473'			,	10.00, 'fix', 0, 100, [], 'Cell');
m = pwAddX(m, 'AMPK'				,	10.00, 'fix', 0, 100, [], 'Cell');
m = pwAddX(m, 'AMPK_pT172'			,	10.00, 'fix', 0, 100, [], 'Cell'); 
m = pwAddX(m, 'mTORC1'			,	10.00, 'fix', 0, 100, [], 'Cell');
m = pwAddX(m, 'mTORC1_pS2448'			,	10.00, 'fix', 0, 100, [], 'Cell');
m = pwAddX(m, 'Mitophagy'			,	10.00, 'fix', 0, 100, [], 'Cell'); 
m = pwAddX(m, 'FoxO3a'			,	10.00, 'fix', 0, 100, [], 'Cell');
m = pwAddX(m, 'FoxO3a_pS253'			,	10.00, 'fix', 0, 100, [], 'Cell');
% MODULE: DNA damage / oxidative stress responses
m = pwAddX(m, 'CDKN1A'			,	10.00, 'fix', 0, 100, [], 'Cell'); 
m = pwAddX(m, 'CDKN1B'			,	10.00, 'fix', 0, 100, [], 'Cell'); 
m = pwAddX(m, 'JNK'				,	25.00, 'fix', 0, 100, [], 'Cell');
m = pwAddX(m, 'JNK_pT183'			,	10.00, 'fix', 0, 100, [], 'Cell');
m = pwAddX(m, 'ROS'				,	10.00, 'fix', 0, 100, [], 'Cell');
m = pwAddX(m, 'DNA_damage'			,	 1.00, 'fix', 0, 100, [], 'Cell');
m = pwAddX(m, 'SA_beta_gal'			,	 0.81, 'fix', 0, 100, [], 'Cell');
m = pwAddX(m, 'IKKbeta'			,	10.00, 'fix', 0, 100, [], 'Cell');
% MODULE: mitochondria
m = pwAddX(m, 'Mito_mass_new'			,	 1.00, 'fix', 0, 100, [], 'Cell');
m = pwAddX(m, 'Mito_mass_old'			,	 0.00, 'fix', 0, 100, [], 'Cell');
m = pwAddX(m, 'Mito_mass_turnover'		,	25.00, 'fix', 0, 100, [], 'Cell');  
m = pwAddX(m, 'Mito_membr_pot_new'		,	12.12, 'fix', 0, 100, [], 'Cell');
m = pwAddX(m, 'Mito_membr_pot_old'		,	 0.00, 'fix', 0, 100, [], 'Cell');
% Nil protein
m = pwAddX(m, 'Nil'				,	 0.00, 'fix', 0, 100, [], 'Cell');





%% K - Dynamic parameters
% MODULE: IIS/TOR-FOXO-mitophagy signalling
m = pwAddK(m, 'Akt_S473_phos_by_insulin'               	, 0.588783148144923		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'Akt_pS473_dephos_by_mTORC1_pS2448'      	, 0.114598191621279		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'AMPK_T172_phos'                         	, 0.355183987378767		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'AMPK_pT172_dephos_by_Mito_membr_pot_new'	, 0.117744691539618		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'AMPK_pT172_dephos_by_Mito_membr_pot_old'	, 1.00000000000003e-06		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'mTORC1_S2448_phos_by_AA'                	, 1.00008999860285e-06		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'mTORC1_S2448_phos_by_AA_n_Akt_pS473'    	, 162.471039450073		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'mTORC1_pS2448_dephos_by_AMPK_pT172'     	, 191.297262771509		, 'global', 1e-06, 1e+04);  %     <--- locked
m = pwAddK(m, 'mitophagy_activ_by_FoxO3a_n_AMPK_pT172' 	, 1319.84219165251		, 'global', 1e-06, 1e+04);  %     <--- locked
m = pwAddK(m, 'mitophagy_inactiv_by_mTORC1_pS2448'     	, 645.999307230137		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'FoxO3a_phos_by_Akt_pS473'               	, 6.83511123229576		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'FoxO3a_phos_by_JNK_pT183'               	, 0.112877630496044		, 'global', 1e-06, 1e+04);  %     <--- locked
m = pwAddK(m, 'FoxO3a_pS253_degrad'                    	, 39.4068609318082		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'FoxO3a_synthesis'                       	, 407.307409980937		, 'global', 1e-06, 1e+04);  %     <--- fixed
% MODULE: DNA damage / oxidative stress responses
m = pwAddK(m, 'CDKN1A_transcr_by_FoxO3a_n_DNA_damage'  	, 0.0852182335681166 		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'CDKN1A_inactiv_by_Akt_pS473'            	, 0.0667971061916905 		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'CDKN1B_transcr_by_FoxO3a_n_DNA_damage'  	, 0.0920526565951487		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'CDKN1B_inactiv_by_Akt_pS473'            	, 0.0596841598127919		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'DNA_damaged_by_irradiation'             	, 9237.72311545872  		, 'global', 1e-06, 1e+06);  %     <--- fixed
m = pwAddK(m, 'DNA_repair'                             	, 0.325724769122274 		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'DNA_damaged_by_ROS'                     	, 0.118873655169353 		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'ROS_prod_by_Mito_membr_pot_new'         	, 4.55464788075885		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'ROS_prod_by_Mito_membr_pot_old'         	, 772.829490967078		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'ROS_turnover'                           	, 3.23082321168464		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'JNK_activ_by_ROS'                       	, 0.00502329152478409		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'JNK_pT183_inactiv'                      	, 0.0718429173444438		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'IKKbeta_activ_by_ROS'          		, 1				, 'fix', 1e-06, 1e+04);     %     <--- assumed
m = pwAddK(m, 'IKKbeta_inactiv'          			, 1				, 'fix', 1e-06, 1e+04);     %     <--- assumed
m = pwAddK(m, 'mTORC1_S2448_phos_by_AA_n_IKKbeta'      	, 1.00008996727694e-05		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'sen_ass_beta_gal_inc_by_ROS'            	, 0.0701139988718817		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'sen_ass_beta_gal_inc_by_Mitophagy'      	, 1.00000000000011e-06		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'sen_ass_beta_gal_dec'                   	, 0.154821166783837		, 'global', 1e-06, 1e+04);  %     <--- fixed
% MODULE: mitochondria
m = pwAddK(m, 'mito_biogenesis_by_mTORC1_pS2448'       	, 0.0133620123598202		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'mito_biogenesis_by_AMPK_pT172'          	, 5.8915457309741e-05		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'mitophagy_new'                          	, 0.22465992989378  		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'mitophagy_old'                          	, 0.00122607614891116		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'mito_dysfunction'                       	, 0.0270695257507146		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'mito_membr_pot_new_inc'                 	, 9882.02736076158		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'mito_membr_pot_old_inc'                 	, 0.00586017882122243		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'mito_membr_pot_new_dec'                 	, 1094.58423149719		, 'global', 1e-06, 1e+04);  %     <--- fixed
m = pwAddK(m, 'mito_membr_pot_old_dec'                 	, 0.954903499913184		, 'global', 1e-06, 1e+04);  %     <--- fixed









%% R - Reactions
% m = pwAddR(m, *ID, *reactants, *products, *modifiers, *type, *options, *rateSignature, *parameters, description, name, fast, compartments, parameterTrunks, designerPropsR, stoichiometry, reversible)
% MODULE: IIS/TOR-FOXO-mitophagy signalling
m = pwAddR(m, 'Akt_S473_phos_by_insulin', {'Akt'}, {'Akt_pS473'}, {'Insulin'}, 'A', [], [], {'Akt_S473_phos_by_insulin'}, 'Akt_S473_phos_by_insulin');
m = pwAddR(m, 'Akt_pS473_dephos_by_mTORC1_pS2448', {'Akt_pS473'}, {'Akt'}, {'mTORC1_pS2448'}, 'A', [], [], {'Akt_pS473_dephos_by_mTORC1_pS2448'}, 'Akt_pS473_dephos_by_mTORC1_pS2448');
m = pwAddR(m, 'AMPK_T172_phos', {'AMPK'}, {'AMPK_pT172'}, {}, 'A', [], [], {'AMPK_T172_phos'}, 'AMPK_T172_phos');
m = pwAddR(m, 'AMPK_pT172_dephos_by_Mito_membr_pot_new', {'AMPK_pT172'}, {'AMPK'}, {'Mito_membr_pot_new'}, 'A', [], [], {'AMPK_pT172_dephos_by_Mito_membr_pot_new'}, 'AMPK_pT172_dephos_by_Mito_membr_pot_new');
m = pwAddR(m, 'AMPK_pT172_dephos_by_Mito_membr_pot_old', {'AMPK_pT172'}, {'AMPK'}, {'Mito_membr_pot_old'}, 'A', [], [], {'AMPK_pT172_dephos_by_Mito_membr_pot_old'}, 'AMPK_pT172_dephos_by_Mito_membr_pot_old');
m = pwAddR(m, 'mTORC1_S2448_phos_by_AA', {'mTORC1'}, {'mTORC1_pS2448'}, {'Amino_Acids'}, 'A', [], [], {'mTORC1_S2448_phos_by_AA'}, 'mTORC1_S2448_phos_by_AA');
m = pwAddR(m, 'mTORC1_S2448_phos_by_AA_n_Akt_pS473', {'mTORC1'}, {'mTORC1_pS2448'}, {'Amino_Acids','Akt_pS473'}, 'C', [], ['k1*r1*m1*m2'], {'mTORC1_S2448_phos_by_AA_n_Akt_pS473'}, 'mTORC1_S2448_phos_by_AA_n_Akt_pS473');
m = pwAddR(m, 'mTORC1_pS2448_dephos_by_AMPK_pT172', {'mTORC1_pS2448'}, {'mTORC1'}, {'AMPK_pT172'}, 'A', [], [], {'mTORC1_pS2448_dephos_by_AMPK_pT172'}, 'mTORC1_pS2448_dephos_by_AMPK_pT172');
m = pwAddR(m, 'mitophagy_activ_by_FoxO3a_n_AMPK_pT172', {}, {'Mitophagy'}, {'FoxO3a','AMPK_pT172'}, 'A', [], [], {'mitophagy_activ_by_FoxO3a_n_AMPK_pT172'}, 'mitophagy_activ_by_FoxO3a_n_AMPK_pT172');
m = pwAddR(m, 'mitophagy_inactiv_by_mTORC1_pS2448', {'Mitophagy'}, {'Nil'}, {'mTORC1_pS2448'}, 'A', [], [], {'mitophagy_inactiv_by_mTORC1_pS2448'}, 'mitophagy_inactiv_by_mTORC1_pS2448');
m = pwAddR(m, 'FoxO3a_phos_by_Akt_pS473', {'FoxO3a'}, {'FoxO3a_pS253'}, {'Akt_pS473'}, 'A', [], [], {'FoxO3a_phos_by_Akt_pS473'}, 'FoxO3a_phos_by_Akt_pS473');
m = pwAddR(m, 'FoxO3a_phos_by_JNK_pT183', {'FoxO3a_pS253'}, {'FoxO3a'}, {'JNK_pT183'}, 'A', [], [], {'FoxO3a_phos_by_JNK_pT183'}, 'FoxO3a_phos_by_JNK_pT183');
m = pwAddR(m, 'FoxO3a_pS253_degrad', {'FoxO3a_pS253'}, {'Nil'}, {}, 'A', [], [], {'FoxO3a_pS253_degrad'}, 'FoxO3a_pS253_degrad');
m = pwAddR(m, 'FoxO3a_synthesis', {}, {'FoxO3a'}, {}, 'A', [], [], {'FoxO3a_synthesis'}, 'FoxO3a_synthesis');
% MODULE: DNA damage / oxidative stress responses
m = pwAddR(m, 'CDKN1A_transcr_by_FoxO3a_n_DNA_damage', {}, {'CDKN1A'}, {'DNA_damage','FoxO3a'}, 'A', [], [], {'CDKN1A_transcr_by_FoxO3a_n_DNA_damage'}, 'CDKN1A_transcr_by_FoxO3a_n_DNA_damage');
m = pwAddR(m, 'CDKN1A_inactiv_by_Akt_pS473', {'CDKN1A'}, {'Nil'}, {'Akt_pS473'}, 'A', [], [], {'CDKN1A_inactiv_by_Akt_pS473'}, 'CDKN1A_inactiv_by_Akt_pS473');
m = pwAddR(m, 'CDKN1B_transcr_by_FoxO3a_n_DNA_damage', {}, {'CDKN1B'}, {'DNA_damage','FoxO3a'}, 'A', [], [], {'CDKN1B_transcr_by_FoxO3a_n_DNA_damage'}, 'CDKN1B_transcr_by_FoxO3a_n_DNA_damage');
m = pwAddR(m, 'CDKN1B_inactiv_by_Akt_pS473', {'CDKN1B'}, {'Nil'}, {'Akt_pS473'}, 'A', [], [], {'CDKN1B_inactiv_by_Akt_pS473'}, 'CDKN1B_inactiv_by_Akt_pS473');
m = pwAddR(m, 'DNA_damaged_by_irradiation', {}, {'DNA_damage'}, {'Irradiation'}, 'A', [], [], {'DNA_damaged_by_irradiation'}, 'DNA_damaged_by_irradiation');
m = pwAddR(m, 'DNA_damaged_by_ROS', {}, {'DNA_damage'}, {'ROS'}, 'A', [], [], {'DNA_damaged_by_ROS'}, 'DNA_damaged_by_ROS');
m = pwAddR(m, 'DNA_repair', {'DNA_damage'}, {'Nil'}, {}, 'A', [], [], {'DNA_repair'}, 'DNA_repair');
m = pwAddR(m, 'ROS_prod_by_Mito_membr_pot_new', {}, {'ROS'}, {'Mito_membr_pot_new'}, 'A', [], [], {'ROS_prod_by_Mito_membr_pot_new'}, 'ROS_prod_by_Mito_membr_pot_new');
m = pwAddR(m, 'ROS_prod_by_Mito_membr_pot_old', {}, {'ROS'}, {'Mito_membr_pot_old'}, 'A', [], [], {'ROS_prod_by_Mito_membr_pot_old'}, 'ROS_prod_by_Mito_membr_pot_old');
m = pwAddR(m, 'ROS_turnover', {'ROS'}, {'Nil'}, {}, 'A', [], [], {'ROS_turnover'}, 'ROS_turnover');
m = pwAddR(m, 'JNK_activ_by_ROS', {'JNK'}, {'JNK_pT183'}, {'ROS'}, 'A', [], [], {'JNK_activ_by_ROS'}, 'JNK_activ_by_ROS');
m = pwAddR(m, 'JNK_pT183_inactiv', {'JNK_pT183'}, {'JNK'}, {}, 'A', [], [], {'JNK_pT183_inactiv'}, 'JNK_pT183_inactiv');
m = pwAddR(m, 'sen_ass_beta_gal_inc_by_ROS', {}, {'SA_beta_gal'}, {'ROS'}, 'A', [], [], {'sen_ass_beta_gal_inc_by_ROS'}, 'sen_ass_beta_gal_inc_by_ROS');
m = pwAddR(m, 'sen_ass_beta_gal_inc_by_Mitophagy', {}, {'SA_beta_gal'}, {'Mitophagy'}, 'A', [], [], {'sen_ass_beta_gal_inc_by_Mitophagy'}, 'sen_ass_beta_gal_inc_by_Mitophagy');
m = pwAddR(m, 'sen_ass_beta_gal_dec', {'SA_beta_gal'}, {}, {}, 'A', [], [], {'sen_ass_beta_gal_dec'}, 'sen_ass_beta_gal_dec');
% MODULE: mitochondria
m = pwAddR(m, 'mito_biogenesis_by_mTORC1_pS2448', {'Mito_mass_turnover'}, {'Mito_mass_new'}, {'mTORC1_pS2448'}, 'A', [], [], {'mito_biogenesis_by_mTORC1_pS2448'}, 'mito_biogenesis_by_mTORC1_pS2448');
m = pwAddR(m, 'mito_biogenesis_by_AMPK_pT172', {'Mito_mass_turnover'}, {'Mito_mass_new'}, {'mTORC1_pS2448'}, 'A', [], [], {'mito_biogenesis_by_AMPK_pT172'}, 'mito_biogenesis_by_AMPK_pT172');
m = pwAddR(m, 'mitophagy_new', {'Mito_mass_new'}, {'Mito_mass_turnover'}, {'Mitophagy'}, 'A', [], [], {'mitophagy_new'}, 'mitophagy_new');
m = pwAddR(m, 'mitophagy_old', {'Mito_mass_old'}, {'Mito_mass_turnover'}, {'Mitophagy'}, 'A', [], [], {'mitophagy_old'}, 'mitophagy_old');
%%% NOTE: See: Passos et al. Mol Syst Biol. 2010; 6: 347, doi:  10.1038/msb.2010.5
%%%       ROS-->DNA_damage-->p53-->CDKN1A-->GADD45-->MAPK14(p38MAPK)-->GRB2-->TGFBR2-->TGF-beta-->mito_mass-->ROS 
m = pwAddR(m, 'mito_dysfunction', {'Mito_mass_new'}, {'Mito_mass_old'}, {'CDKN1A'}, 'A', [], [], {'mito_dysfunction'}, 'mito_dysfunction');
%%%%%%% mitochondrial membrane potential
m = pwAddR(m, 'mito_membr_pot_new_inc', {}, {'Mito_membr_pot_new'}, {'Mito_mass_new'}, 'A', [], [], {'mito_membr_pot_new_inc'}, 'mito_membr_pot_new_inc');
m = pwAddR(m, 'mito_membr_pot_old_inc', {}, {'Mito_membr_pot_old'}, {'Mito_mass_old'}, 'A', [], [], {'mito_membr_pot_old_inc'}, 'mito_membr_pot_old_inc');
m = pwAddR(m, 'mito_membr_pot_new_dec', {'Mito_membr_pot_new'}, {'Nil'}, {}, 'A', [], [], {'mito_membr_pot_new_dec'}, 'mito_membr_pot_new_dec');
m = pwAddR(m, 'mito_membr_pot_old_dec', {'Mito_membr_pot_old'}, {'Nil'}, {}, 'A', [], [], {'mito_membr_pot_old_dec'}, 'mito_membr_pot_old_dec');
m = pwAddR(m, 'IKKbeta_activ_by_ROS', {}, {'IKKbeta'}, {'ROS'}, 'A', [], [], {'IKKbeta_activ_by_ROS'}, 'IKKbeta_activ_by_ROS');
m = pwAddR(m, 'IKKbeta_inactiv', {'IKKbeta'}, {'Nil'}, {}, 'A', [], [], {'IKKbeta_inactiv'}, 'IKKbeta_inactiv');
m = pwAddR(m, 'mTORC1_S2448_phos_by_AA_n_IKKbeta', {'mTORC1'}, {'mTORC1_pS2448'}, {'Amino_Acids','IKKbeta'}, 'C', [], ['k1*r1*m1*m2'], {'mTORC1_S2448_phos_by_AA_n_IKKbeta'}, 'mTORC1_S2448_phos_by_AA_n_IKKbeta');



%% C - Compartments
% m = pwAddC(m, *ID, *size, outside, spatialDim, name, unit, constant, designerProps, classname, description)
m = pwAddC(m, 'Cell', 1);



%% U - Driving inputs
% m = pwAddU(m, *ID, *uType, *uTimes, *uValues, compartment, name, description, u2Values, alternativeIDs, designerProps, classname, referenceXID, unit, uFormula)
m = pwAddU(m, 'Insulin'    , 'steps', [-1 0]          , [1 1]   , 'Cell');
m = pwAddU(m, 'Amino_Acids', 'steps', [-1 0]          , [1 1]   , 'Cell');
m = pwAddU(m, 'Irradiation', 'steps', [-1 0 0.003472] , [0 1 0] , 'Cell');



%% Y - Observables
% m = pwAddY(m, *ID, *rhs, errorModelRhs, noiseType, unit, name, description, alternativeIDs, designerProps, classname)
m = pwAddY(m, 'DNA_damage_gammaH2AX_obs'	, 'scale_DNA_damage_gammaH2AX_obs*DNA_damage'                 , 'y * 0.10 + max(y) * 0.10', 'Gaussian');
m = pwAddY(m, 'Akt_pS473_obs'     		, 'scale_Akt_pS473_obs*Akt_pS473'                             , 'y * 0.10 + max(y) * 0.10', 'Gaussian');
m = pwAddY(m, 'mTOR_pS2448_obs'   		, 'scale_mTOR_pS2448_obs*mTORC1_pS2448'                       , 'y * 0.10 + max(y) * 0.10', 'Gaussian');
m = pwAddY(m, 'AMPK_pT172_obs'    		, 'scale_AMPK_pT172_obs*AMPK_pT172'                           , 'y * 0.10 + max(y) * 0.10', 'Gaussian');
m = pwAddY(m, 'CDKN1A_obs'        		, 'scale_CDKN1A_obs*CDKN1A'                                   , 'y * 0.10 + max(y) * 0.10', 'Gaussian');
m = pwAddY(m, 'CDKN1B_obs'        		, 'scale_CDKN1B_obs*CDKN1B'                                   , 'y * 0.10 + max(y) * 0.10', 'Gaussian');
m = pwAddY(m, 'FoxO3a_pS253_obs'  		, 'scale_FoxO3a_pS253_obs*FoxO3a_pS253'                       , 'y * 0.10 + max(y) * 0.10', 'Gaussian');
m = pwAddY(m, 'FoxO3a_total_obs'  		, 'scale_FoxO3a_total_obs*(FoxO3a+FoxO3a_pS253)'              , 'y * 0.10 + max(y) * 0.10', 'Gaussian');
m = pwAddY(m, 'Mito_Mass_obs'     		, 'scale_Mito_Mass_obs*(Mito_mass_new+Mito_mass_old)'	        , 'y * 0.10 + max(y) * 0.10', 'Gaussian');
m = pwAddY(m, 'Mito_Membr_Pot_obs'     	, 'scale_Mito_Membr_Pot_obs*(Mito_membr_pot_new+Mito_membr_pot_old)', 'y * 0.10 + max(y) * 0.10', 'Gaussian');
m = pwAddY(m, 'Mitophagy_obs'     		, 'scale_Mitophagy_obs*Mitophagy'                             , 'y * 0.10 + max(y) * 0.10', 'Gaussian');
m = pwAddY(m, 'ROS_obs'           		, 'scale_ROS_obs*ROS'                             	        , 'y * 0.10 + max(y) * 0.10', 'Gaussian');
m = pwAddY(m, 'JNK_pT183_obs'     		, 'scale_JNK_pT183_obs*JNK_pT183'                             , 'y * 0.10 + max(y) * 0.10', 'Gaussian');
m = pwAddY(m, 'SA_beta_gal_obs'       	, 'scale_SA_beta_gal_obs*SA_beta_gal'		       	        , 'y * 0.10 + max(y) * 0.10', 'Gaussian');




%% S - Observation parameters
% m = pwAddS(m, *ID, *value, fitSetting, minValue, maxValue, unit, name, description, usedInTimeTransformation)
m = pwAddS(m, 'scale_Akt_pS473_obs'            , 1, 'fix', 0.01, 50);
m = pwAddS(m, 'scale_AMPK_pT172_obs'           , 1, 'fix', 0.01, 50);
m = pwAddS(m, 'scale_mTOR_pS2448_obs'          , 1, 'fix', 0.01, 50);
m = pwAddS(m, 'scale_Mitophagy_obs'            , 1, 'fix', 0.01, 50);
m = pwAddS(m, 'scale_FoxO3a_pS253_obs'         , 1, 'fix', 0.01, 50);
m = pwAddS(m, 'scale_FoxO3a_total_obs'         , 1, 'fix', 0.01, 50);
m = pwAddS(m, 'scale_CDKN1A_obs'               , 1, 'fix', 0.01, 50);
m = pwAddS(m, 'scale_CDKN1B_obs'               , 1, 'fix', 0.01, 50);
m = pwAddS(m, 'scale_JNK_pT183_obs'            , 1, 'fix', 0.01, 50);
m = pwAddS(m, 'scale_ROS_obs'                  , 1, 'fix', 0.01, 50);
m = pwAddS(m, 'scale_DNA_damage_gammaH2AX_obs' , 1, 'fix', 0.01, 50);
m = pwAddS(m, 'scale_SA_beta_gal_obs'          , 1, 'fix', 0.01, 50);
m = pwAddS(m, 'scale_Mito_Mass_obs'            , 1, 'fix', 0.01, 50);
m = pwAddS(m, 'scale_Mito_Membr_Pot_obs'       , 1, 'fix', 0.01, 50);





%% Z - Derived variables
% m = pwAddZ(m, *ID, *rhs, unit, name, description, designerProps, classname)




%% CS - Constraints
% m = pwAddCS(m, ID, lhs, operator, rhs, lambda)
%  % energy production
m = pwAddCS(m,'CS01', 'DNA_damaged_by_ROS/DNA_damaged_by_irradiation', '<', '1', 100);
m = pwAddCS(m,'CS02', 'AMPK_pT172_dephos_by_Mito_membr_pot_new/AMPK_pT172_dephos_by_Mito_membr_pot_old', '>', '1', 100);
m = pwAddCS(m,'CS03', 'ROS_prod_by_Mito_membr_pot_new/ROS_prod_by_Mito_membr_pot_old', '<', '0.01', 100);
m = pwAddCS(m,'CS04', 'mTORC1_S2448_phos_by_AA/mTORC1_S2448_phos_by_AA_n_Akt_pS473', '<', '0.1', 100);
m = pwAddCS(m,'CS05', 'mTORC1_S2448_phos_by_AA/mTORC1_S2448_phos_by_AA_n_IKKbeta', '<', '0.1', 100);
m = pwAddCS(m,'CS06', 'mito_membr_pot_old_inc/mito_membr_pot_new_inc', '<', '0.3', 100);
m = pwAddCS(m,'CS07', 'mitophagy_old/mitophagy_new', '<', '1', 100);
m = pwAddCS(m,'CS08', 'Mito_mass_new', '<', '1.5', 100);
m = pwAddCS(m,'CS09', 'Mito_mass_new', '>', '0.5', 100);


