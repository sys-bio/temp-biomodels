% This file works with MATLAB and is automatically generated with 
% the System Biology Format Converter (http://sbfc.sourceforge.net/)
% from an SBML file. 
% To run this file with Octave you must edit the comments providing
% the definition of the ode solver and the signature for the 
% xdot function.
%
% The conversion system has the following limitations:
%  - You may have to re order some reactions and Assignment Rules definition
%  - Delays are not taken into account
%  - You should change the lsode parameters (start, end, steps) to get better results
%

%
% Model name = Curien2009_Aspartate_Metabolism
%
% is http://identifiers.org/biomodels.db/MODEL3336584391
% is http://identifiers.org/biomodels.db/BIOMD0000000212
% isDescribedBy http://identifiers.org/pubmed/19455135
%


function main()
%Initial conditions vector
	x0=zeros(31,1);
	x0(1) = 1500.0;
	x0(2) = 0.25;
	x0(3) = 0.0;
	x0(4) = 20.0;
	x0(5) = 0.0;
	x0(6) = 0.25;
	x0(7) = 0.63;
	x0(8) = 0.63;
	x0(9) = 0.0;
	x0(10) = 11.6;
	x0(11) = 0.0;
	x0(12) = 1.6;
	x0(13) = 1.6;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 4.0;
	x0(17) = 7.4;
	x0(18) = 10000.0;
	x0(19) = 15.0;
	x0(20) = 0.7;
	x0(21) = 0.0;
	x0(22) = 0.36;
	x0(23) = 0.0;
	x0(24) = 100.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;


% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
	tspan=[0:0.01:100];
	opts = odeset('AbsTol',1e-3);
	[t,x]=ode23tb(@f,tspan,x0,opts);
% End Matlab code

% Start Octave code
%	t=linspace(0,100,100);
%	x=lsode('f',x0,t);
% End Octave code


	plot(t,x);
end



% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
function xdot=f(t,x)
% End Matlab code

% Start Octave code
%function xdot=f(x,t)
% End Octave code

% Compartment: id = c1, name = chl, constant
	compartment_c1=1.0;
% Parameter:   id =  V_Lys_RS, name = V_Lys_RS
% Parameter:   id =  V_Thr_RS, name = V_Thr_RS
% Parameter:   id =  V_Ile_RS, name = V_Ile_RS
% Parameter:   id =  V_AA_RS, name = Vmax_AA_RS
	global_par_V_AA_RS=0.43;
% assignmentRule: variable = V_Lys_RS
	global_par_V_Lys_RS=global_par_V_AA_RS;
% assignmentRule: variable = V_Thr_RS
	global_par_V_Thr_RS=global_par_V_AA_RS;
% assignmentRule: variable = V_Ile_RS
	global_par_V_Ile_RS=global_par_V_AA_RS;

% Reaction: id = Vak1, name = Aspartate kinase 1 react.	% Local Parameter:   id =  AK1_kforward_app_exp, name = AK1_kforward_app_exp
	reaction_Vak1_AK1_kforward_app_exp=5.65;
	% Local Parameter:   id =  AK1_kreverse_app_exp, name = AK1_kreverse_app_exp
	reaction_Vak1_AK1_kreverse_app_exp=1.6;
	% Local Parameter:   id =  AK1_Lys_Ki_app_exp, name = AK1_Lys_Ki_app_exp
	reaction_Vak1_AK1_Lys_Ki_app_exp=550.0;
	% Local Parameter:   id =  AK1_AdoMet_Ka_app_exp, name = AK1_AdoMet_Ka_app_exp
	reaction_Vak1_AK1_AdoMet_Ka_app_exp=3.5;
	% Local Parameter:   id =  AK1_nH_exp, name = AK1_nH_exp
	reaction_Vak1_AK1_nH_exp=2.0;

	reaction_Vak1=compartment_c1*x(2)*(reaction_Vak1_AK1_kforward_app_exp-reaction_Vak1_AK1_kreverse_app_exp*x(5))/(1+(x(3)/reaction_Vak1_AK1_Lys_Ki_app_exp/(1+x(4)/reaction_Vak1_AK1_AdoMet_Ka_app_exp))^reaction_Vak1_AK1_nH_exp);

% Reaction: id = Vak2, name = Aspartate kinase 2 react.	% Local Parameter:   id =  AK2_kforward_app_exp, name = AK2_kforward_app_exp
	reaction_Vak2_AK2_kforward_app_exp=3.15;
	% Local Parameter:   id =  AK2_kreverse_app_exp, name = AK2_kreverse_app_exp
	reaction_Vak2_AK2_kreverse_app_exp=0.86;
	% Local Parameter:   id =  AK2_Lys_Ki_app_exp, name = AK2_Lys_Ki_app_exp
	reaction_Vak2_AK2_Lys_Ki_app_exp=22.0;
	% Local Parameter:   id =  AK2_nH_exp, name = AK2_nH_exp
	reaction_Vak2_AK2_nH_exp=1.1;

	reaction_Vak2=compartment_c1*x(6)*(reaction_Vak2_AK2_kforward_app_exp-reaction_Vak2_AK2_kreverse_app_exp*x(5))/(1+(x(3)/reaction_Vak2_AK2_Lys_Ki_app_exp)^reaction_Vak2_AK2_nH_exp);

% Reaction: id = VakI, name = aspartate kinase react. (AKI-HSDHI)	% Local Parameter:   id =  AKI_kforward_app_exp, name = AKI_kforward_app_exp
	reaction_VakI_AKI_kforward_app_exp=0.36;
	% Local Parameter:   id =  AKI_kreverse_app_exp, name = AKI_kreverse_app_exp
	reaction_VakI_AKI_kreverse_app_exp=0.15;
	% Local Parameter:   id =  AKI_Thr_Ki_app_exp, name = AKI_Thr_Ki_app_exp
	reaction_VakI_AKI_Thr_Ki_app_exp=124.0;
	% Local Parameter:   id =  AKI_nH_exp, name = AKI_nH_exp
	reaction_VakI_AKI_nH_exp=2.0;

	reaction_VakI=compartment_c1*x(7)*(reaction_VakI_AKI_kforward_app_exp-reaction_VakI_AKI_kreverse_app_exp*x(5))/(1+(x(9)/reaction_VakI_AKI_Thr_Ki_app_exp)^reaction_VakI_AKI_nH_exp);

% Reaction: id = VakII, name = aspartate kinase react. (AKII-HSDHII)	% Local Parameter:   id =  AKII_kforward_app_exp, name = AKII_kforward_app_exp
	reaction_VakII_AKII_kforward_app_exp=1.35;
	% Local Parameter:   id =  AKII_kreverse_app_exp, name = AKII_kreverse_app_exp
	reaction_VakII_AKII_kreverse_app_exp=0.22;
	% Local Parameter:   id =  AKII_Thr_Ki_app_exp, name = AKII_Thr_Ki_app_exp
	reaction_VakII_AKII_Thr_Ki_app_exp=109.0;
	% Local Parameter:   id =  AKII_nH_exp, name = AKII_nH_exp
	reaction_VakII_AKII_nH_exp=2.0;

	reaction_VakII=compartment_c1*x(8)*(reaction_VakII_AKII_kforward_app_exp-reaction_VakII_AKII_kreverse_app_exp*x(5))/(1+(x(9)/reaction_VakII_AKII_Thr_Ki_app_exp)^reaction_VakII_AKII_nH_exp);

% Reaction: id = Vasadh, name = Aspartate semialdehyde dehydrogenase react.	% Local Parameter:   id =  ASADH_kforward_app_exp, name = ASADH_kforward_app_exp
	reaction_Vasadh_ASADH_kforward_app_exp=0.9;
	% Local Parameter:   id =  ASADH_kreverse_app_exp, name = ASADH_kreverse_app_exp
	reaction_Vasadh_ASADH_kreverse_app_exp=0.23;

	reaction_Vasadh=compartment_c1*x(10)*(reaction_Vasadh_ASADH_kforward_app_exp*x(5)-reaction_Vasadh_ASADH_kreverse_app_exp*x(11));

% Reaction: id = Vdhdps1, name = DHDPS1 react.	% Local Parameter:   id =  DHDPS1_k_app_exp, name = DHDPS1_k_app_exp
	reaction_Vdhdps1_DHDPS1_k_app_exp=1.0;
	% Local Parameter:   id =  DHDPS1_Lys_Ki_app_exp, name = DHDPS1_Lys_Ki_app_exp
	reaction_Vdhdps1_DHDPS1_Lys_Ki_app_exp=10.0;
	% Local Parameter:   id =  DHDPS1_nH_exp, name = DHDPS1_nH_exp
	reaction_Vdhdps1_DHDPS1_nH_exp=2.0;

	reaction_Vdhdps1=compartment_c1*reaction_Vdhdps1_DHDPS1_k_app_exp*x(12)*x(11)*1/(1+(x(3)/reaction_Vdhdps1_DHDPS1_Lys_Ki_app_exp)^reaction_Vdhdps1_DHDPS1_nH_exp);

% Reaction: id = Vdhdps2, name = DHDPS2 react.	% Local Parameter:   id =  DHDPS2_k_app_exp, name = DHDPS2_k_app_exp
	reaction_Vdhdps2_DHDPS2_k_app_exp=1.0;
	% Local Parameter:   id =  DHDPS2_Lys_Ki_app_exp, name = DHDPS2_Lys_Ki_app_exp
	reaction_Vdhdps2_DHDPS2_Lys_Ki_app_exp=33.0;
	% Local Parameter:   id =  DHDPS2_nH_exp, name = DHDPS2_nH_exp
	reaction_Vdhdps2_DHDPS2_nH_exp=2.0;

	reaction_Vdhdps2=compartment_c1*reaction_Vdhdps2_DHDPS2_k_app_exp*x(13)*x(11)*1/(1+(x(3)/reaction_Vdhdps2_DHDPS2_Lys_Ki_app_exp)^reaction_Vdhdps2_DHDPS2_nH_exp);

% Reaction: id = Vhsdh1, name = homoserine dehydrogenase react. (AKI-HSDHI)	% Local Parameter:   id =  HSDHI_kforward_app_exp, name = HSDHI_kforward_app_exp
	reaction_Vhsdh1_HSDHI_kforward_app_exp=0.84;
	% Local Parameter:   id =  HSDHI_Thr_relative_residual_activity_app_exp, name = HSDHI_Thr_relative_residual_activity_app_exp
	reaction_Vhsdh1_HSDHI_Thr_relative_residual_activity_app_exp=0.14;
	% Local Parameter:   id =  HSDHI_Thr_relative_inhibition_app_exp, name = HSDHI_Thr_relative_inhibition_app_exp
	reaction_Vhsdh1_HSDHI_Thr_relative_inhibition_app_exp=0.86;
	% Local Parameter:   id =  HSDHI_Thr_Ki_app_exp, name = HSDHI_Thr_Ki_app_exp
	reaction_Vhsdh1_HSDHI_Thr_Ki_app_exp=400.0;

	reaction_Vhsdh1=compartment_c1*reaction_Vhsdh1_HSDHI_kforward_app_exp*x(7)*x(11)*(reaction_Vhsdh1_HSDHI_Thr_relative_residual_activity_app_exp+reaction_Vhsdh1_HSDHI_Thr_relative_inhibition_app_exp/(1+x(9)/reaction_Vhsdh1_HSDHI_Thr_Ki_app_exp));

% Reaction: id = Vhsdh2, name = homoserine dehydrogenase react. (AKII-HSDHII)	% Local Parameter:   id =  HSDHII_kforward_app_exp, name = HSDHII_kforward_app_exp
	reaction_Vhsdh2_HSDHII_kforward_app_exp=0.64;
	% Local Parameter:   id =  HSDHII_Thr_relative_residual_activity_app_exp, name = HSDHII_Thr_relative_residual_activity_app_exp
	reaction_Vhsdh2_HSDHII_Thr_relative_residual_activity_app_exp=0.25;
	% Local Parameter:   id =  HSDHII_Thr_relative_inhibition_app_exp, name = HSDHII_Thr_relative_inhibition_app_exp
	reaction_Vhsdh2_HSDHII_Thr_relative_inhibition_app_exp=0.75;
	% Local Parameter:   id =  HSDHII_Thr_Ki_app_exp, name = HSDHII_Thr_Ki_app_exp
	reaction_Vhsdh2_HSDHII_Thr_Ki_app_exp=8500.0;

	reaction_Vhsdh2=compartment_c1*reaction_Vhsdh2_HSDHII_kforward_app_exp*x(8)*x(11)*(reaction_Vhsdh2_HSDHII_Thr_relative_residual_activity_app_exp+reaction_Vhsdh2_HSDHII_Thr_relative_inhibition_app_exp/(1+x(9)/reaction_Vhsdh2_HSDHII_Thr_Ki_app_exp));

% Reaction: id = Vhsk, name = homoserine kinase react.	% Local Parameter:   id =  HSK_kcat_app_exp, name = HSK_kcat_app_exp
	reaction_Vhsk_HSK_kcat_app_exp=2.8;
	% Local Parameter:   id =  HSK_Hser_app_exp, name = HSK_Hser_app_exp
	reaction_Vhsk_HSK_Hser_app_exp=14.0;

	reaction_Vhsk=compartment_c1*reaction_Vhsk_HSK_kcat_app_exp*x(16)*x(14)/(reaction_Vhsk_HSK_Hser_app_exp+x(14));

% Reaction: id = Vts1, name = Threonine synthase react. (TS1)	% Local Parameter:   id =  TS1_kcatmin_exp, name = TS1_kcatmin_exp
	reaction_Vts1_TS1_kcatmin_exp=0.42;
	% Local Parameter:   id =  TS1_AdoMet_kcatmax_exp, name = TS1_AdoMet_kcatmax_exp
	reaction_Vts1_TS1_AdoMet_kcatmax_exp=3.5;
	% Local Parameter:   id =  TS1_AdoMet_Ka1_exp, name = TS1_AdoMet_Ka1_exp
	reaction_Vts1_TS1_AdoMet_Ka1_exp=73.0;
	% Local Parameter:   id =  TS1_nH_exp, name = TS1_nH_exp
	reaction_Vts1_TS1_nH_exp=2.0;
	% Local Parameter:   id =  TS1_Phosphate_Ki_exp, name = TS1_Phosphate_Ki_exp
	reaction_Vts1_TS1_Phosphate_Ki_exp=1000.0;
	% Local Parameter:   id =  TS1_AdoMEt_Km_no_AdoMet_exp, name = TS1_AdoMEt_Km_no_AdoMet_exp
	reaction_Vts1_TS1_AdoMEt_Km_no_AdoMet_exp=250.0;
	% Local Parameter:   id =  TS1_AdoMet_Ka2_exp, name = TS1_AdoMet_Ka2_exp
	reaction_Vts1_TS1_AdoMet_Ka2_exp=0.5;
	% Local Parameter:   id =  TS1_AdoMet_Ka3_exp, name = TS1_AdoMet_Ka3_exp
	reaction_Vts1_TS1_AdoMet_Ka3_exp=1.09;
	% Local Parameter:   id =  TS1_AdoMet_Ka4_exp, name = TS1_AdoMet_Ka4_exp
	reaction_Vts1_TS1_AdoMet_Ka4_exp=140.0;

	reaction_Vts1=compartment_c1*x(17)*x(15)*(reaction_Vts1_TS1_kcatmin_exp+reaction_Vts1_TS1_AdoMet_kcatmax_exp*x(4)^reaction_Vts1_TS1_nH_exp/reaction_Vts1_TS1_AdoMet_Ka1_exp)/(1+x(4)^reaction_Vts1_TS1_nH_exp/reaction_Vts1_TS1_AdoMet_Ka1_exp)/(reaction_Vts1_TS1_AdoMEt_Km_no_AdoMet_exp*(1+x(4)/reaction_Vts1_TS1_AdoMet_Ka2_exp)/(1+x(4)/reaction_Vts1_TS1_AdoMet_Ka3_exp)/(1+x(4)^reaction_Vts1_TS1_nH_exp/reaction_Vts1_TS1_AdoMet_Ka4_exp)*(1+x(18)/reaction_Vts1_TS1_Phosphate_Ki_exp)+x(15));

% Reaction: id = Vcgs, name = Cystathionine gamma synthase react.	% Local Parameter:   id =  CGS_kcat_exp, name = CGS_kcat_exp
	reaction_Vcgs_CGS_kcat_exp=30.0;
	% Local Parameter:   id =  CGS_Cys_Km_exp, name = CGS_Cys_Km_exp
	reaction_Vcgs_CGS_Cys_Km_exp=460.0;
	% Local Parameter:   id =  CGS_Phser_Km_exp, name = CGS_Phser_Km_exp
	reaction_Vcgs_CGS_Phser_Km_exp=2500.0;
	% Local Parameter:   id =  CGS_Phosphate_Ki_exp, name = CGS_Phosphate_Ki_exp
	reaction_Vcgs_CGS_Phosphate_Ki_exp=2000.0;

	reaction_Vcgs=compartment_c1*x(20)*x(15)*reaction_Vcgs_CGS_kcat_exp/(1+reaction_Vcgs_CGS_Cys_Km_exp/x(19))/(reaction_Vcgs_CGS_Phser_Km_exp/(1+reaction_Vcgs_CGS_Cys_Km_exp/x(19))*(1+x(18)/reaction_Vcgs_CGS_Phosphate_Ki_exp)+x(15));

% Reaction: id = Vtd, name = Threonine deaminase react.	% Local Parameter:   id =  TD_k_app_exp, name = TD_k_app_exp
	reaction_Vtd_TD_k_app_exp=0.0124;
	% Local Parameter:   id =  TD_Ile_Ki_no_Val_app_exp, name = TD_Ile_Ki_no_Val_app_exp
	reaction_Vtd_TD_Ile_Ki_no_Val_app_exp=30.0;
	% Local Parameter:   id =  TD_Val_Ka1_app_exp, name = TD_Val_Ka1_app_exp
	reaction_Vtd_TD_Val_Ka1_app_exp=73.0;
	% Local Parameter:   id =  TD_Val_Ka2_app_exp, name = TD_Val_Ka2_app_exp
	reaction_Vtd_TD_Val_Ka2_app_exp=615.0;
	% Local Parameter:   id =  TD_nH_app_exp, name = TD_nH_app_exp
	reaction_Vtd_TD_nH_app_exp=3.0;

	reaction_Vtd=compartment_c1*x(22)*x(9)*reaction_Vtd_TD_k_app_exp/(1+(x(23)/(reaction_Vtd_TD_Ile_Ki_no_Val_app_exp+reaction_Vtd_TD_Val_Ka1_app_exp*x(24)/(reaction_Vtd_TD_Val_Ka2_app_exp+x(24))))^reaction_Vtd_TD_nH_app_exp);

% Reaction: id = VlysTRNA, name = Lys aminoacyl tRNA synthetase react.	% Local Parameter:   id =  Lys_tRNAS_Lys_Km, name = Lys_tRNAS_Lys_Km
	reaction_VlysTRNA_Lys_tRNAS_Lys_Km=25.0;

	reaction_VlysTRNA=compartment_c1*global_par_V_Lys_RS*x(3)/(reaction_VlysTRNA_Lys_tRNAS_Lys_Km+x(3));

% Reaction: id = VthrTRNA, name = Thr aminoacyl tRNA synthetase react.	% Local Parameter:   id =  Thr_tRNAS_Thr_Km, name = Thr_tRNAS_Thr_Km
	reaction_VthrTRNA_Thr_tRNAS_Thr_Km=100.0;

	reaction_VthrTRNA=compartment_c1*global_par_V_Thr_RS*x(9)/(reaction_VthrTRNA_Thr_tRNAS_Thr_Km+x(9));

% Reaction: id = VileTRNA, name = Ile aminoacyl tRNA synthetase react.	% Local Parameter:   id =  Ile_tRNAS_Ile_Km, name = Ile_tRNAS_Ile_Km
	reaction_VileTRNA_Ile_tRNAS_Ile_Km=20.0;

	reaction_VileTRNA=compartment_c1*global_par_V_Ile_RS*x(23)/(reaction_VileTRNA_Ile_tRNAS_Ile_Km+x(23));

% Reaction: id = VlysKR, name = Lys ketoglutarate reductase react.	% Local Parameter:   id =  LKR_kcat_exp, name = LKR_kcat_exp
	reaction_VlysKR_LKR_kcat_exp=3.1;
	% Local Parameter:   id =  LKR_Lys_Km_exp, name = LKR_Lys_Km_exp
	reaction_VlysKR_LKR_Lys_Km_exp=13000.0;

	reaction_VlysKR=compartment_c1*reaction_VlysKR_LKR_kcat_exp*x(28)*x(3)/(reaction_VlysKR_LKR_Lys_Km_exp+x(3));

% Reaction: id = Vtha, name = Thr aldolase react.	% Local Parameter:   id =  THA_kcat_exp, name = THA_kcat_exp
	reaction_Vtha_THA_kcat_exp=1.7;
	% Local Parameter:   id =  THA_Thr_Km_exp, name = THA_Thr_Km_exp
	reaction_Vtha_THA_Thr_Km_exp=7100.0;

	reaction_Vtha=compartment_c1*reaction_Vtha_THA_kcat_exp*x(30)*x(9)/(reaction_Vtha_THA_Thr_Km_exp+x(9));

	xdot=zeros(31,1);
	
% Species:   id = Asp, name = Aspartate
%WARNING speciesID: Asp, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = AK1, name = AK1
%WARNING speciesID: AK1, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(2) = 0.0;
	
% Species:   id = Lys, name = Lysine, affected by kineticLaw
	xdot(3) = (1/(compartment_c1))*(( 1.0 * reaction_Vdhdps1) + ( 1.0 * reaction_Vdhdps2) + (-1.0 * reaction_VlysTRNA) + (-1.0 * reaction_VlysKR));
	
% Species:   id = AdoMet, name = S-adenosyl-methionine
%WARNING speciesID: AdoMet, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(4) = 0.0;
	
% Species:   id = AspP, name = Aspartyl_P, affected by kineticLaw
	xdot(5) = (1/(compartment_c1))*(( 1.0 * reaction_Vak1) + ( 1.0 * reaction_Vak2) + ( 1.0 * reaction_VakI) + ( 1.0 * reaction_VakII) + (-1.0 * reaction_Vasadh));
	
% Species:   id = AK2, name = AK2
%WARNING speciesID: AK2, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(6) = 0.0;
	
% Species:   id = AKHSDHI, name = AKI-HSDHI
%WARNING speciesID: AKHSDHI, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(7) = 0.0;
	
% Species:   id = AKHSDHII, name = AKII-HSDHII
%WARNING speciesID: AKHSDHII, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(8) = 0.0;
	
% Species:   id = Thr, name = Threonine, affected by kineticLaw
	xdot(9) = (1/(compartment_c1))*(( 1.0 * reaction_Vts1) + (-1.0 * reaction_Vtd) + (-1.0 * reaction_VthrTRNA) + (-1.0 * reaction_Vtha));
	
% Species:   id = ASADH, name = ASADH
%WARNING speciesID: ASADH, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(10) = 0.0;
	
% Species:   id = ASA, name = Aspartate semialdehyde, affected by kineticLaw
	xdot(11) = (1/(compartment_c1))*(( 1.0 * reaction_Vasadh) + (-1.0 * reaction_Vdhdps1) + (-1.0 * reaction_Vdhdps2) + (-1.0 * reaction_Vhsdh1) + (-1.0 * reaction_Vhsdh2));
	
% Species:   id = DHDPS1, name = DHDPS1
%WARNING speciesID: DHDPS1, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(12) = 0.0;
	
% Species:   id = DHDPS2, name = DHDPS2
%WARNING speciesID: DHDPS2, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(13) = 0.0;
	
% Species:   id = Hser, name = Homoserine, affected by kineticLaw
	xdot(14) = (1/(compartment_c1))*(( 1.0 * reaction_Vhsdh1) + ( 1.0 * reaction_Vhsdh2) + (-1.0 * reaction_Vhsk));
	
% Species:   id = PHser, name = Phosphohomoserine, affected by kineticLaw
	xdot(15) = (1/(compartment_c1))*(( 1.0 * reaction_Vhsk) + (-1.0 * reaction_Vts1) + (-1.0 * reaction_Vcgs));
	
% Species:   id = HSK, name = HSK
%WARNING speciesID: HSK, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(16) = 0.0;
	
% Species:   id = TS1, name = TS1
% Warning species is not changed by either rules or reactions
	xdot(17) = ;
	
% Species:   id = Phosphate, name = Phosphate
%WARNING speciesID: Phosphate, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(18) = 0.0;
	
% Species:   id = Cys, name = Cysteine
%WARNING speciesID: Cys, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(19) = 0.0;
	
% Species:   id = CGS, name = CGS
%WARNING speciesID: CGS, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(20) = 0.0;
	
% Species:   id = Cysta, name = Cystathione
%WARNING speciesID: Cysta, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(21) = 0.0;
	
% Species:   id = TD, name = TD
%WARNING speciesID: TD, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(22) = 0.0;
	
% Species:   id = Ile, name = Isoleucine, affected by kineticLaw
	xdot(23) = (1/(compartment_c1))*(( 1.0 * reaction_Vtd) + (-1.0 * reaction_VileTRNA));
	
% Species:   id = Val, name = Valine
%WARNING speciesID: Val, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(24) = 0.0;
	
% Species:   id = LysTRNA, name = Lys-tRNA
%WARNING speciesID: LysTRNA, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(25) = 0.0;
	
% Species:   id = ThrTRNA, name = Thr-tRNA
%WARNING speciesID: ThrTRNA, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(26) = 0.0;
	
% Species:   id = IleTRNA, name = Ile-tRNA
%WARNING speciesID: IleTRNA, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(27) = 0.0;
	
% Species:   id = LKR, name = LKR
%WARNING speciesID: LKR, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(28) = 0.0;
	
% Species:   id = Sacc, name = Saccharopine
%WARNING speciesID: Sacc, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(29) = 0.0;
	
% Species:   id = THA, name = THA
%WARNING speciesID: THA, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(30) = 0.0;
	
% Species:   id = Gly, name = Glycine
%WARNING speciesID: Gly, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(31) = 0.0;
end

% adding few functions representing operators used in SBML but not present directly 
% in either matlab or octave. 
function z=pow(x,y),z=x^y;end
function z=root(x,y),z=y^(1/x);end
function z = piecewise(varargin)
	numArgs = nargin;
	result = 0;
	foundResult = 0;
	for k=1:2: numArgs-1
		if varargin{k+1} == 1
			result = varargin{k};
			foundResult = 1;
			break;
		end
	end
	if foundResult == 0
		result = varargin{numArgs};
	end
	z = result;
end


