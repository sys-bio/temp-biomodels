% This file works with OCTAVE and is automatically generated with 
% the System Biology Format Converter (http://sbfc.sourceforge.net/)
% from an SBML file.
% To run this file with Matlab you must edit the comments providing
% the definition of the ode solver and the signature for the 
% xdot function.
%
% The conversion system has the following limitations:
%  - You may have to re order some reactions and Assignment Rules definition
%  - Delays are not taken into account
%  - You should change the lsode parameters (start, end, steps) to get better results
%

%
% Model name = Saucerman2006_PKA
%
% is http://identifiers.org/biomodels.db/MODEL8003201958
% is http://identifiers.org/biomodels.db/BIOMD0000000165
% isDescribedBy http://identifiers.org/pubmed/16905651
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1006230118
%


function main()
%Initial conditions vector
	x0=zeros(37,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.014;
	x0(8) = 5000.0;
	x0(9) = 0.0132;
	x0(10) = 3.83;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0497;
	x0(20) = 0.18;
	x0(21) = 0.0;
	x0(22) = 1.18;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 10.0;
	x0(33) = 0.0;
	x0(34) = 0.67;
	x0(35) = 0.0;
	x0(36) = 3.01;
	x0(37) = 0.0;


% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
%	tspan=[0:0.01:100];
%	opts = odeset('AbsTol',1e-3);
%	[t,x]=ode23tb(@f,tspan,x0,opts);
% End Matlab code

% Start Octave code
	t=linspace(0,100,100);
	x=lsode('f',x0,t);
% End Octave code


	plot(t,x);
end



% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
%function xdot=f(t,x)
% End Matlab code

% Start Octave code
function xdot=f(x,t)
% End Octave code

% Compartment: id = ec, name = ec, constant
	compartment_ec=1.0;
% Compartment: id = cell, name = cell, constant
	compartment_cell=0.25;
% Compartment: id = membrane, name = membrane, constant
	compartment_membrane=0.25;
% Parameter:   id =  k_ac_gsa_cAMP_synthesis_GsAC, name = k_ac_gsa_cAMP_synthesis_GsAC
	global_par_k_ac_gsa_cAMP_synthesis_GsAC=2.5;
% Parameter:   id =  Vmax_cAMP_synthesis_GsAC, name = Vmax_cAMP_synthesis_GsAC
% Parameter:   id =  ton_global_light_cAMP_photolysis, name = ton_global_light_cAMP_photolysis
	global_par_ton_global_light_cAMP_photolysis=2160.0;
% Parameter:   id =  toff_global_light_cAMP_photolysis, name = toff_global_light_cAMP_photolysis
	global_par_toff_global_light_cAMP_photolysis=2165.0;
% Parameter:   id =  ton_local_light_cAMP_photolysis, name = ton_local_light_cAMP_photolysis
	global_par_ton_local_light_cAMP_photolysis=0.0;
% Parameter:   id =  toff_local_light_cAMP_photolysis, name = toff_local_light_cAMP_photolysis
	global_par_toff_local_light_cAMP_photolysis=0.0;
% Parameter:   id =  light_cAMP_photolysis, name = light_cAMP_photolysis
% Parameter:   id =  kfsk_cAMP_synthesis_FskAC, name = kfsk_cAMP_synthesis_FskAC
	global_par_kfsk_cAMP_synthesis_FskAC=7.3;
% Parameter:   id =  Vmax_cAMP_synthesis_FskAC, name = Vmax_cAMP_synthesis_FskAC
% Parameter:   id =  Kf_inhibit_PDE, name = Kf_inhibit_PDE
% Parameter:   id =  Kr_inhibit_PDE, name = Kr_inhibit_PDE
% Parameter:   id =  ar_for_add_propranolol, name = ar_for_add_propranolol
% Parameter:   id =  t_propadd, name = t_propadd
	global_par_t_propadd=2420.0;
% Parameter:   id =  Propranolol_pipette, name = Propranolol_pipette
	global_par_Propranolol_pipette=1.0;
% Parameter:   id =  tauPropranolol, name = tauPropranolol
	global_par_tauPropranolol=1.0;
% Parameter:   id =  ar_for_add_Ligand, name = ar_for_add_Ligand
% Parameter:   id =  t_Ladd, name = t_Ladd
	global_par_t_Ladd=2160.0;
% Parameter:   id =  L_pipette, name = L_pipette
	global_par_L_pipette=0.1;
% Parameter:   id =  tauL, name = tauL
	global_par_tauL=1.0;
% Parameter:   id =  Ratio_AKARp_AKARtot, name = Ratio_AKARp_AKARtot
% assignmentRule: variable = Vmax_cAMP_synthesis_GsAC
	global_par_Vmax_cAMP_synthesis_GsAC=global_par_k_ac_gsa_cAMP_synthesis_GsAC*x(25);
% assignmentRule: variable = light_cAMP_photolysis
	global_par_light_cAMP_photolysis=piecewise(1, (t > global_par_ton_global_light_cAMP_photolysis) && (t < global_par_toff_global_light_cAMP_photolysis), 0)+piecewise(x(18), (t > global_par_ton_local_light_cAMP_photolysis) && (t < global_par_toff_local_light_cAMP_photolysis), 0);
% assignmentRule: variable = Vmax_cAMP_synthesis_FskAC
	global_par_Vmax_cAMP_synthesis_FskAC=global_par_kfsk_cAMP_synthesis_FskAC*x(29);
% assignmentRule: variable = Kf_inhibit_PDE
	global_par_Kf_inhibit_PDE=piecewise(1000, t > 1000, 0);
% assignmentRule: variable = Kr_inhibit_PDE
	global_par_Kr_inhibit_PDE=piecewise(30000, t > 1000, 0);
% assignmentRule: variable = ar_for_add_propranolol
	global_par_ar_for_add_propranolol=piecewise((global_par_Propranolol_pipette+(-x(16)))*1/global_par_tauPropranolol, t > global_par_t_propadd, 0);
% assignmentRule: variable = ar_for_add_Ligand
	global_par_ar_for_add_Ligand=piecewise((global_par_L_pipette+(-x(2)))*1/global_par_tauL, t > global_par_t_Ladd, 0);
% assignmentRule: variable = Ratio_AKARp_AKARtot
	global_par_Ratio_AKARp_AKARtot=x(33)/(x(32)+x(33)+x(15)+x(35));

% Reaction: id = cAMP_synthesis_GsAC, name = cAMP_synthesis_GsAC	% Local Parameter:   id =  Km, name = Km
	reaction_cAMP_synthesis_GsAC_Km=315.0;

	reaction_cAMP_synthesis_GsAC=global_par_Vmax_cAMP_synthesis_GsAC*x(8)*1/(reaction_cAMP_synthesis_GsAC_Km+x(8))*compartment_cell;

% Reaction: id = bind_b1AR_propranolol, name = bind_b1AR_propranolol	% Local Parameter:   id =  Kf, name = Kf
	reaction_bind_b1AR_propranolol_Kf=1000.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_bind_b1AR_propranolol_Kr=8.0;

	reaction_bind_b1AR_propranolol=(reaction_bind_b1AR_propranolol_Kf*x(16)*x(9)+(-reaction_bind_b1AR_propranolol_Kr*x(17)))*compartment_cell;

% Reaction: id = add_propranolol, name = add_propranolol
	reaction_add_propranolol=global_par_ar_for_add_propranolol*compartment_cell;

% Reaction: id = cAMP_photolysis, name = cAMP_photolysis	% Local Parameter:   id =  kphot, name = kphot
	reaction_cAMP_photolysis_kphot=0.1;

	reaction_cAMP_photolysis=reaction_cAMP_photolysis_kphot*global_par_light_cAMP_photolysis*x(36)*compartment_cell;

% Reaction: id = LRG_activation, name = LRG_activation	% Local Parameter:   id =  k_gact, name = k_gact
	reaction_LRG_activation_k_gact=16.0;

	reaction_LRG_activation=reaction_LRG_activation_k_gact*x(37)*compartment_cell;

% Reaction: id = bind_Lb1AR_Gs, name = bind_Lb1AR_Gs	% Local Parameter:   id =  Kf, name = Kf
	reaction_bind_Lb1AR_Gs_Kf=1000.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_bind_Lb1AR_Gs_Kr=62.0;

	reaction_bind_Lb1AR_Gs=(reaction_bind_Lb1AR_Gs_Kf*x(10)*x(31)+(-reaction_bind_Lb1AR_Gs_Kr*x(37)))*compartment_cell;

% Reaction: id = desens_bark, name = desens_bark	% Local Parameter:   id =  k_barkp, name = k_barkp
	reaction_desens_bark_k_barkp=0.0011;

	reaction_desens_bark=reaction_desens_bark_k_barkp*(x(31)+x(37))*compartment_cell;

% Reaction: id = bind_cAMP_ARC, name = bind_cAMP_ARC	% Local Parameter:   id =  Kf, name = Kf
	reaction_bind_cAMP_ARC_Kf=1000.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_bind_cAMP_ARC_Kr=1640.0;

	reaction_bind_cAMP_ARC=(reaction_bind_cAMP_ARC_Kf*x(14)*x(24)+(-reaction_bind_cAMP_ARC_Kr*x(11)))*compartment_cell;

% Reaction: id = bind_b1AR_Gs, name = bind_b1AR_Gs	% Local Parameter:   id =  Kf, name = Kf
	reaction_bind_b1AR_Gs_Kf=1000.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_bind_b1AR_Gs_Kr=33000.0;

	reaction_bind_b1AR_Gs=(reaction_bind_b1AR_Gs_Kf*x(9)*x(10)+(-reaction_bind_b1AR_Gs_Kr*x(23)))*compartment_cell;

% Reaction: id = bind_PDEcAMP, name = bind_PDEcAMP	% Local Parameter:   id =  Kf, name = Kf
	reaction_bind_PDEcAMP_Kf=1000.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_bind_PDEcAMP_Kr=1300.0;

	reaction_bind_PDEcAMP=(reaction_bind_PDEcAMP_Kf*x(7)*x(24)+(-reaction_bind_PDEcAMP_Kr*x(6)))*compartment_cell;

% Reaction: id = Gs_gtp_hydrolysis, name = Gs_gtp_hydrolysis	% Local Parameter:   id =  khyd, name = khyd
	reaction_Gs_gtp_hydrolysis_khyd=0.8;

	reaction_Gs_gtp_hydrolysis=reaction_Gs_gtp_hydrolysis_khyd*x(4)*compartment_cell;

% Reaction: id = Gs_reassociation, name = Gs_reassociation	% Local Parameter:   id =  k_reassoc, name = k_reassoc
	reaction_Gs_reassociation_k_reassoc=1210.0;

	reaction_Gs_reassociation=reaction_Gs_reassociation_k_reassoc*x(3)*x(1)*compartment_cell;

% Reaction: id = bind_FskAC, name = bind_FskAC	% Local Parameter:   id =  Kf, name = Kf
	reaction_bind_FskAC_Kf=1000.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_bind_FskAC_Kr=860000.0;

	reaction_bind_FskAC=(reaction_bind_FskAC_Kf*x(19)*x(28)+(-reaction_bind_FskAC_Kr*x(29)))*compartment_cell;

% Reaction: id = bind_AKARp_PP, name = bind_AKARp_PP	% Local Parameter:   id =  Kf, name = Kf
	reaction_bind_AKARp_PP_Kf=1000.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_bind_AKARp_PP_Kr=7000.0;

	reaction_bind_AKARp_PP=(reaction_bind_AKARp_PP_Kf*x(34)*x(33)+(-reaction_bind_AKARp_PP_Kr*x(35)))*compartment_cell;

% Reaction: id = desens_pka, name = desens_pka	% Local Parameter:   id =  kpkap, name = kpkap
	reaction_desens_pka_kpkap=0.0036;
	% Local Parameter:   id =  kpkam, name = kpkam
	reaction_desens_pka_kpkam=0.0022;

	reaction_desens_pka=(reaction_desens_pka_kpkap*x(13)*(x(37)+x(9)+x(31))+(-reaction_desens_pka_kpkam*x(30)))*compartment_cell;

% Reaction: id = bind_L_b1ARGs, name = bind_L_b1ARGs	% Local Parameter:   id =  Kf, name = Kf
	reaction_bind_L_b1ARGs_Kf=1000.0;
	% Local Parameter:   id =  Kd, name = Kd
	reaction_bind_L_b1ARGs_Kd=0.535714;

	reaction_bind_L_b1ARGs=(reaction_bind_L_b1ARGs_Kf*x(23)*x(2)+(-reaction_bind_L_b1ARGs_Kd*x(37)))*compartment_cell;

% Reaction: id = bind_L_b1AR, name = bind_L_b1AR	% Local Parameter:   id =  Kf, name = Kf
	reaction_bind_L_b1AR_Kf=1000.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_bind_L_b1AR_Kr=285.0;

	reaction_bind_L_b1AR=(reaction_bind_L_b1AR_Kf*x(2)*x(9)+(-reaction_bind_L_b1AR_Kr*x(31)))*compartment_cell;

% Reaction: id = bind_A2R_PKAC, name = bind_A2R_PKAC	% Local Parameter:   id =  Kf, name = Kf
	reaction_bind_A2R_PKAC_Kf=4375.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_bind_A2R_PKAC_Kr=1000.0;

	reaction_bind_A2R_PKAC=(reaction_bind_A2R_PKAC_Kf*x(11)+(-reaction_bind_A2R_PKAC_Kr*x(12)*x(13)))*compartment_cell;

% Reaction: id = inhib_PKAC, name = inhib_PKAC	% Local Parameter:   id =  Kf, name = Kf
	reaction_inhib_PKAC_Kf=1000.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_inhib_PKAC_Kr=0.2;

	reaction_inhib_PKAC=(reaction_inhib_PKAC_Kf*x(13)*x(20)+(-reaction_inhib_PKAC_Kr*x(21)))*compartment_cell;

% Reaction: id = bind_RC_cAMP, name = bind_RC_cAMP	% Local Parameter:   id =  Kf, name = Kf
	reaction_bind_RC_cAMP_Kf=1000.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_bind_RC_cAMP_Kr=9140.0;

	reaction_bind_RC_cAMP=(reaction_bind_RC_cAMP_Kf*x(22)*x(24)+(-reaction_bind_RC_cAMP_Kr*x(14)))*compartment_cell;

% Reaction: id = cAMP_synthesis_FskAC, name = cAMP_synthesis_FskAC	% Local Parameter:   id =  Km, name = Km
	reaction_cAMP_synthesis_FskAC_Km=860.0;

	reaction_cAMP_synthesis_FskAC=global_par_Vmax_cAMP_synthesis_FskAC*x(8)*1/(reaction_cAMP_synthesis_FskAC_Km+x(8))*compartment_cell;

% Reaction: id = add_Ligand, name = add_Ligand
	reaction_add_Ligand=global_par_ar_for_add_Ligand*compartment_cell;

% Reaction: id = bind_Gs_AC, name = bind_Gs_AC	% Local Parameter:   id =  Kf, name = Kf
	reaction_bind_Gs_AC_Kf=1000.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_bind_Gs_AC_Kr=400.0;

	reaction_bind_Gs_AC=(reaction_bind_Gs_AC_Kf*x(4)*x(19)+(-reaction_bind_Gs_AC_Kr*x(25)))*compartment_cell;

% Reaction: id = resens_bark, name = resens_bark	% Local Parameter:   id =  k_barkm, name = k_barkm
	reaction_resens_bark_k_barkm=0.0022;

	reaction_resens_bark=reaction_resens_bark_k_barkm*x(5)*compartment_cell;

% Reaction: id = bind_PKAC_AKAR, name = bind_PKAC_AKAR	% Local Parameter:   id =  Kf, name = Kf
	reaction_bind_PKAC_AKAR_Kf=1000.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_bind_PKAC_AKAR_Kr=21000.0;

	reaction_bind_PKAC_AKAR=(reaction_bind_PKAC_AKAR_Kf*x(32)*x(13)+(-reaction_bind_PKAC_AKAR_Kr*x(15)))*compartment_cell;

% Reaction: id = inhibit_PDE, name = inhibit_PDE
	reaction_inhibit_PDE=(global_par_Kf_inhibit_PDE*x(7)*x(26)+(-global_par_Kr_inhibit_PDE*x(27)))*compartment_cell;

% Reaction: id = AKARp_dephosph, name = AKARp_dephosph	% Local Parameter:   id =  kcat_PP_AKARp, name = kcat_PP_AKARp
	reaction_AKARp_dephosph_kcat_PP_AKARp=8.5;

	reaction_AKARp_dephosph=reaction_AKARp_dephosph_kcat_PP_AKARp*x(35)*compartment_cell;

% Reaction: id = AKAR_phosph, name = AKAR_phosph	% Local Parameter:   id =  kpka_akar, name = kpka_akar
	reaction_AKAR_phosph_kpka_akar=54.0;

	reaction_AKAR_phosph=reaction_AKAR_phosph_kpka_akar*x(15)*compartment_cell;

% Reaction: id = RG_activation, name = RG_activation	% Local Parameter:   id =  k_gact, name = k_gact
	reaction_RG_activation_k_gact=16.0;

	reaction_RG_activation=reaction_RG_activation_k_gact*x(23)*compartment_cell;

% Reaction: id = cAMP_degradation, name = cAMP_degradation	% Local Parameter:   id =  kpde, name = kpde
	reaction_cAMP_degradation_kpde=5.0;

	reaction_cAMP_degradation=reaction_cAMP_degradation_kpde*x(6)*compartment_cell;

	xdot=zeros(37,1);
	
% Species:   id = Gsbg_cell, name = Gsbg, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_LRG_activation) + (-1.0 * reaction_Gs_reassociation) + ( 1.0 * reaction_RG_activation));
	
% Species:   id = L_cell, name = L, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_bind_L_b1ARGs) + (-1.0 * reaction_bind_L_b1AR) + ( 1.0 * reaction_add_Ligand));
	
% Species:   id = Gsa_gdp_cell, name = Gsa_gdp, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_Gs_gtp_hydrolysis) + (-1.0 * reaction_Gs_reassociation));
	
% Species:   id = Gsa_gtp_cell, name = Gsa_gtp, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_LRG_activation) + (-1.0 * reaction_Gs_gtp_hydrolysis) + (-1.0 * reaction_bind_Gs_AC) + ( 1.0 * reaction_RG_activation));
	
% Species:   id = b1AR_S464_cell, name = b1AR_S464, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_desens_bark) + (-1.0 * reaction_resens_bark));
	
% Species:   id = PDEcAMP_cell, name = PDEcAMP, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_bind_PDEcAMP) + (-1.0 * reaction_cAMP_degradation));
	
% Species:   id = PDE_cell, name = PDE, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*((-1.0 * reaction_bind_PDEcAMP) + (-1.0 * reaction_inhibit_PDE) + ( 1.0 * reaction_cAMP_degradation));
	
% Species:   id = ATP_cell, name = ATP
%WARNING speciesID: ATP_cell, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(8) = 0.0;
	
% Species:   id = b1AR_cell, name = b1AR, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*((-1.0 * reaction_bind_b1AR_propranolol) + (-1.0 * reaction_bind_b1AR_Gs) + (-1.0 * reaction_desens_pka) + (-1.0 * reaction_bind_L_b1AR) + ( 1.0 * reaction_RG_activation));
	
% Species:   id = Gs_cell, name = Gs, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*((-1.0 * reaction_bind_Lb1AR_Gs) + (-1.0 * reaction_bind_b1AR_Gs) + ( 1.0 * reaction_Gs_reassociation));
	
% Species:   id = A2RC_cell, name = A2RC, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_bind_cAMP_ARC) + (-1.0 * reaction_bind_A2R_PKAC));
	
% Species:   id = A2R_cell, name = A2R, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_bind_A2R_PKAC));
	
% Species:   id = PKAC_cell, name = PKAC, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_bind_A2R_PKAC) + (-1.0 * reaction_inhib_PKAC) + (-1.0 * reaction_bind_PKAC_AKAR) + ( 1.0 * reaction_AKAR_phosph));
	
% Species:   id = ARC_cell, name = ARC, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*((-1.0 * reaction_bind_cAMP_ARC) + ( 1.0 * reaction_bind_RC_cAMP));
	
% Species:   id = PKAC_AKAR_cell, name = PKAC_AKAR, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*(( 1.0 * reaction_bind_PKAC_AKAR) + (-1.0 * reaction_AKAR_phosph));
	
% Species:   id = Propranolol_cell, name = Propranolol, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*((-1.0 * reaction_bind_b1AR_propranolol) + ( 1.0 * reaction_add_propranolol));
	
% Species:   id = b1ARinhib_cell, name = b1ARinhib, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*(( 1.0 * reaction_bind_b1AR_propranolol));
	
% Species:   id = light_spot_cell, name = light_spot
% Warning species is not changed by either rules or reactions
	xdot(18) = ;
	
% Species:   id = AC_cell, name = AC, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*((-1.0 * reaction_bind_FskAC) + (-1.0 * reaction_bind_Gs_AC));
	
% Species:   id = PKI_cell, name = PKI, affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*((-1.0 * reaction_inhib_PKAC));
	
% Species:   id = PKAC_PKI_cell, name = PKAC_PKI, affected by kineticLaw
	xdot(21) = (1/(compartment_cell))*(( 1.0 * reaction_inhib_PKAC));
	
% Species:   id = RC_cell, name = RC, affected by kineticLaw
	xdot(22) = (1/(compartment_cell))*((-1.0 * reaction_bind_RC_cAMP));
	
% Species:   id = b1AR_Gs_cell, name = b1AR_Gs, affected by kineticLaw
	xdot(23) = (1/(compartment_cell))*(( 1.0 * reaction_bind_b1AR_Gs) + (-1.0 * reaction_bind_L_b1ARGs) + (-1.0 * reaction_RG_activation));
	
% Species:   id = cAMP_cell, name = cAMP, affected by kineticLaw
	xdot(24) = (1/(compartment_cell))*(( 1.0 * reaction_cAMP_synthesis_GsAC) + ( 1.0 * reaction_cAMP_photolysis) + (-1.0 * reaction_bind_cAMP_ARC) + (-1.0 * reaction_bind_PDEcAMP) + (-1.0 * reaction_bind_RC_cAMP) + ( 1.0 * reaction_cAMP_synthesis_FskAC));
	
% Species:   id = GsAC_cell, name = GsAC, affected by kineticLaw
	xdot(25) = (1/(compartment_cell))*(( 1.0 * reaction_bind_Gs_AC));
	
% Species:   id = IBMX_cell, name = IBMX, affected by kineticLaw
	xdot(26) = (1/(compartment_cell))*((-1.0 * reaction_inhibit_PDE));
	
% Species:   id = PDE_IBMX_cell, name = PDE_IBMX, affected by kineticLaw
	xdot(27) = (1/(compartment_cell))*(( 1.0 * reaction_inhibit_PDE));
	
% Species:   id = Fsk_cell, name = Fsk, affected by kineticLaw
	xdot(28) = (1/(compartment_cell))*((-1.0 * reaction_bind_FskAC));
	
% Species:   id = FskAC_cell, name = FskAC, affected by kineticLaw
	xdot(29) = (1/(compartment_cell))*(( 1.0 * reaction_bind_FskAC));
	
% Species:   id = b1AR_p_cell, name = b1AR_p, affected by kineticLaw
	xdot(30) = (1/(compartment_cell))*(( 1.0 * reaction_desens_pka));
	
% Species:   id = L_b1AR_cell, name = L_b1AR, affected by kineticLaw
	xdot(31) = (1/(compartment_cell))*(( 1.0 * reaction_LRG_activation) + (-1.0 * reaction_bind_Lb1AR_Gs) + (-1.0 * reaction_desens_bark) + ( 1.0 * reaction_bind_L_b1AR) + ( 1.0 * reaction_resens_bark));
	
% Species:   id = AKAR_cell, name = AKAR, affected by kineticLaw
	xdot(32) = (1/(compartment_cell))*((-1.0 * reaction_bind_PKAC_AKAR) + ( 1.0 * reaction_AKARp_dephosph));
	
% Species:   id = AKARp_cell, name = AKARp, affected by kineticLaw
	xdot(33) = (1/(compartment_cell))*((-1.0 * reaction_bind_AKARp_PP) + ( 1.0 * reaction_AKAR_phosph));
	
% Species:   id = PP_cell, name = PP, affected by kineticLaw
	xdot(34) = (1/(compartment_cell))*((-1.0 * reaction_bind_AKARp_PP) + ( 1.0 * reaction_AKARp_dephosph));
	
% Species:   id = PP_AKARp_cell, name = PP_AKARp, affected by kineticLaw
	xdot(35) = (1/(compartment_cell))*(( 1.0 * reaction_bind_AKARp_PP) + (-1.0 * reaction_AKARp_dephosph));
	
% Species:   id = DMNB_cAMP_cell, name = DMNB_cAMP, affected by kineticLaw
	xdot(36) = (1/(compartment_cell))*((-1.0 * reaction_cAMP_photolysis));
	
% Species:   id = L_b1AR_Gs_cell, name = L_b1AR_Gs, affected by kineticLaw
	xdot(37) = (1/(compartment_cell))*((-1.0 * reaction_LRG_activation) + ( 1.0 * reaction_bind_Lb1AR_Gs) + ( 1.0 * reaction_bind_L_b1ARGs));
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


