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
% Model name = Leloup1998_CircClock_LD
%
% is http://identifiers.org/biomodels.db/MODEL0243843132
% is http://identifiers.org/biomodels.db/BIOMD0000000171
% isDescribedBy http://identifiers.org/pubmed/9486845
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000016
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(1) = 1.41;
	x0(2) = 0.09;
	x0(3) = 0.54;
	x0(4) = 0.79;
	x0(5) = 4.65;
	x0(6) = 0.02;
	x0(7) = 0.02;
	x0(8) = 0.01;
	x0(9) = 0.18;
	x0(10) = 1.2;
	x0(11) = 0;
	x0(12) = 0;


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

% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.0;
% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Parameter:   id =  n, name = transkr_rep_hill_coefficient
	global_par_n=4.0;
% Parameter:   id =  kd, name = degradation_rate
	global_par_kd=0.01;
% Parameter:   id =  v_dT, name = T2_lightdecay_rate
% Parameter:   id =  l_d, name = light_dark_period
	global_par_l_d=12.0;
% Parameter:   id =  v_dT_fac, name = v_dT_fold_incr_during_light
	global_par_v_dT_fac=2.0;
% Parameter:   id =  v_dT_dark, name = v_dT_value_darkness
	global_par_v_dT_dark=2.0;
% assignmentRule: variable = Tt
	x(11)=x(3)+x(4)+x(5)+x(9)+x(10)*compartment_nucleus/compartment_cytoplasm;
% assignmentRule: variable = Pt
	x(12)=x(6)+x(7)+x(8)+x(9)+x(10)*compartment_nucleus/compartment_cytoplasm;
% assignmentRule: variable = v_dT
	global_par_v_dT=(1+(global_par_v_dT_fac-1)*ceil(sin(time/global_par_l_d*pi)*0.9))*global_par_v_dT_dark;

% Reaction: id = per_trans, name = per transkription	% Local Parameter:   id =  v_sP, name = per_max_transkr_rate
	reaction_per_trans_v_sP=0.8;
	% Local Parameter:   id =  Ki_P, name = per_inh_konstant
	reaction_per_trans_Ki_P=1.0;

	reaction_per_trans=reaction_per_trans_v_sP*reaction_per_trans_Ki_P^global_par_n/(reaction_per_trans_Ki_P^global_par_n+x(10)^global_par_n);

% Reaction: id = tim_trans, name = tim transkription	% Local Parameter:   id =  v_sT, name = tim_max_transkr_rate
	reaction_tim_trans_v_sT=1.0;
	% Local Parameter:   id =  Ki_T, name = tim_inh_konstant
	reaction_tim_trans_Ki_T=1.0;

	reaction_tim_trans=reaction_tim_trans_v_sT*reaction_tim_trans_Ki_T^global_par_n/(reaction_tim_trans_Ki_T^global_par_n+x(10)^global_par_n);

% Reaction: id = M_T_decay, name = tim mRNA decay	% Local Parameter:   id =  v_mT, name = M_T_mm_decay
	reaction_M_T_decay_v_mT=0.7;
	% Local Parameter:   id =  K_mT, name = decay_KM_T
	reaction_M_T_decay_K_mT=0.2;

	reaction_M_T_decay=(reaction_M_T_decay_v_mT/(reaction_M_T_decay_K_mT+x(1))+global_par_kd)*x(1)*compartment_cytoplasm;

% Reaction: id = M_P_decay, name = per mRNA decay	% Local Parameter:   id =  v_mP, name = max_M_P_decay_rate
	reaction_M_P_decay_v_mP=0.8;
	% Local Parameter:   id =  K_mP, name = M_P_decay_Km
	reaction_M_P_decay_K_mP=0.2;

	reaction_M_P_decay=(reaction_M_P_decay_v_mP/(reaction_M_P_decay_K_mP+x(2))+global_par_kd)*x(2)*compartment_cytoplasm;

% Reaction: id = PER_transl, name = PER tranlation	% Local Parameter:   id =  k_sP, name = PER_translation_rate
	reaction_PER_transl_k_sP=0.9;

	reaction_PER_transl=reaction_PER_transl_k_sP*x(2)*compartment_cytoplasm;

% Reaction: id = TIM_transl, name = TIM translation	% Local Parameter:   id =  k_sT, name = TIM_translation_rate
	reaction_TIM_transl_k_sT=0.9;

	reaction_TIM_transl=reaction_TIM_transl_k_sT*x(1)*compartment_cytoplasm;

% Reaction: id = PO_decay, name = PER decay
	reaction_PO_decay=global_par_kd*x(6)*compartment_cytoplasm;

% Reaction: id = P1_decay, name = PER-p decay
	reaction_P1_decay=global_par_kd*x(7)*compartment_cytoplasm;

% Reaction: id = P2_decay, name = PER-pp decay
	reaction_P2_decay=global_par_kd*x(8)*compartment_cytoplasm;

% Reaction: id = T0_decay, name = TIM decay
	reaction_T0_decay=global_par_kd*x(3)*compartment_cytoplasm;

% Reaction: id = T1_decay, name = TIM-p decay
	reaction_T1_decay=global_par_kd*x(4)*compartment_cytoplasm;

% Reaction: id = T2_decay, name = TIM-pp decay
	reaction_T2_decay=global_par_kd*x(5)*compartment_cytoplasm;

% Reaction: id = C_form, name = Per_TIM complex formation	% Local Parameter:   id =  k3, name = T_P_ass_rate
	reaction_C_form_k3=1.2;
	% Local Parameter:   id =  k4, name = C_diss_rate
	reaction_C_form_k4=0.6;

	reaction_C_form=(reaction_C_form_k3*x(5)*x(8)-reaction_C_form_k4*x(9))*compartment_cytoplasm;

% Reaction: id = C_decay, name = cytopl. PER_TIM compl. decay	% Local Parameter:   id =  kd_C, name = C_decay_rate
	reaction_C_decay_kd_C=0.01;

	reaction_C_decay=reaction_C_decay_kd_C*x(9)*compartment_cytoplasm;

% Reaction: id = CN_decay, name = nuclear PER_TIM compl. decay	% Local Parameter:   id =  kd_CN, name = CN_decay_rate
	reaction_CN_decay_kd_CN=0.01;

	reaction_CN_decay=reaction_CN_decay_kd_CN*x(10)*compartment_nucleus;

% Reaction: id = C_transp, name = PER_TIM complex shuttling	% Local Parameter:   id =  k1, name = C_import_rate
	reaction_C_transp_k1=1.2;
	% Local Parameter:   id =  k2, name = C_export_rate
	reaction_C_transp_k2=0.2;

	reaction_C_transp=reaction_C_transp_k1*x(9)*compartment_cytoplasm-reaction_C_transp_k2*x(10)*compartment_nucleus;

% Reaction: id = P_pho, name = PER phosphorylation	% Local Parameter:   id =  V_1P, name = P0_phos_rate
	reaction_P_pho_V_1P=8.0;
	% Local Parameter:   id =  K_1P, name = P0_kinase_KM
	reaction_P_pho_K_1P=2.0;

	reaction_P_pho=reaction_P_pho_V_1P*x(6)/(reaction_P_pho_K_1P+x(6))*compartment_cytoplasm;

% Reaction: id = P1_pho, name = PER-p phosphorylation	% Local Parameter:   id =  V_3P, name = P1_phosph_rate
	reaction_P1_pho_V_3P=8.0;
	% Local Parameter:   id =  K_3P, name = P1_kinase_KM
	reaction_P1_pho_K_3P=2.0;

	reaction_P1_pho=reaction_P1_pho_V_3P*x(7)/(reaction_P1_pho_K_3P+x(7))*compartment_cytoplasm;

% Reaction: id = P1_depho, name = PER-p dephosphorylation	% Local Parameter:   id =  K_2P, name = P1_phosphatase_KM
	reaction_P1_depho_K_2P=2.0;
	% Local Parameter:   id =  V_2P, name = P1_dephos_rate
	reaction_P1_depho_V_2P=1.0;

	reaction_P1_depho=reaction_P1_depho_V_2P*x(7)/(reaction_P1_depho_K_2P+x(7))*compartment_cytoplasm;

% Reaction: id = P2_depho, name = PER-pp dephosphorylation	% Local Parameter:   id =  V_4P, name = P2_dephos_rate
	reaction_P2_depho_V_4P=1.0;
	% Local Parameter:   id =  K_4P, name = P2_phosphatase_KM
	reaction_P2_depho_K_4P=2.0;

	reaction_P2_depho=reaction_P2_depho_V_4P*x(8)/(reaction_P2_depho_K_4P+x(8))*compartment_cytoplasm;

% Reaction: id = T_pho, name = TIM phosphorylation	% Local Parameter:   id =  V_1T, name = T0_phos_rate
	reaction_T_pho_V_1T=8.0;
	% Local Parameter:   id =  K_1T, name = T0_kinase_KM
	reaction_T_pho_K_1T=2.0;

	reaction_T_pho=reaction_T_pho_V_1T*x(3)/(reaction_T_pho_K_1T+x(3))*compartment_cytoplasm;

% Reaction: id = T1_pho, name = TIM-p phosphorylation	% Local Parameter:   id =  V_3T, name = T1_phosph_rate
	reaction_T1_pho_V_3T=8.0;
	% Local Parameter:   id =  K_3T, name = T1_kinase_KM
	reaction_T1_pho_K_3T=2.0;

	reaction_T1_pho=reaction_T1_pho_V_3T*x(4)/(reaction_T1_pho_K_3T+x(4))*compartment_cytoplasm;

% Reaction: id = T1_depho, name = TIM-p dephosphorylation	% Local Parameter:   id =  K_2T, name = T1_phosphatase_KM
	reaction_T1_depho_K_2T=2.0;
	% Local Parameter:   id =  V_2T, name = T1_dephos_rate
	reaction_T1_depho_V_2T=1.0;

	reaction_T1_depho=reaction_T1_depho_V_2T*x(4)/(reaction_T1_depho_K_2T+x(4))*compartment_cytoplasm;

% Reaction: id = T2_depho, name = TIM-pp dephosphorylation	% Local Parameter:   id =  V_4T, name = T2_dephos_rate
	reaction_T2_depho_V_4T=1.0;
	% Local Parameter:   id =  K_4T, name = T2_phosphatase_KM
	reaction_T2_depho_K_4T=2.0;

	reaction_T2_depho=reaction_T2_depho_V_4T*x(5)/(reaction_T2_depho_K_4T+x(5))*compartment_cytoplasm;

% Reaction: id = T2_light_deact, name = TIM-pp light deactivation	% Local Parameter:   id =  K_dT, name = T2_light_deact_KM
	reaction_T2_light_deact_K_dT=0.2;

	reaction_T2_light_deact=global_par_v_dT*x(5)/(reaction_T2_light_deact_K_dT+x(5))*compartment_cytoplasm;

% Reaction: id = P2_light_deact, name = PER-pp light deactivation	% Local Parameter:   id =  v_dP, name = P2_light_deactivation_rate
	reaction_P2_light_deact_v_dP=2.0;
	% Local Parameter:   id =  K_dP, name = P2_light_deactivation_KM
	reaction_P2_light_deact_K_dP=0.2;

	reaction_P2_light_deact=reaction_P2_light_deact_v_dP*x(8)/(reaction_P2_light_deact_K_dP+x(8))*compartment_cytoplasm;

	xdot=zeros(12,1);
	
% Species:   id = M_T, name = tim mRNA, affected by kineticLaw
	xdot(1) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_tim_trans) + (-1.0 * reaction_M_T_decay));
	
% Species:   id = M_P, name = per mRNA, affected by kineticLaw
	xdot(2) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_per_trans) + (-1.0 * reaction_M_P_decay));
	
% Species:   id = T0, name = TIM, affected by kineticLaw
	xdot(3) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_TIM_transl) + (-1.0 * reaction_T0_decay) + (-1.0 * reaction_T_pho) + ( 1.0 * reaction_T1_depho));
	
% Species:   id = T1, name = TIM-p, affected by kineticLaw
	xdot(4) = (1/(compartment_cytoplasm))*((-1.0 * reaction_T1_decay) + ( 1.0 * reaction_T_pho) + (-1.0 * reaction_T1_pho) + (-1.0 * reaction_T1_depho) + ( 1.0 * reaction_T2_depho));
	
% Species:   id = T2, name = TIM-pp, affected by kineticLaw
	xdot(5) = (1/(compartment_cytoplasm))*((-1.0 * reaction_T2_decay) + (-1.0 * reaction_C_form) + ( 1.0 * reaction_T1_pho) + (-1.0 * reaction_T2_depho) + (-1.0 * reaction_T2_light_deact));
	
% Species:   id = P0, name = PER, affected by kineticLaw
	xdot(6) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_PER_transl) + (-1.0 * reaction_PO_decay) + (-1.0 * reaction_P_pho) + ( 1.0 * reaction_P1_depho));
	
% Species:   id = P1, name = PER-p, affected by kineticLaw
	xdot(7) = (1/(compartment_cytoplasm))*((-1.0 * reaction_P1_decay) + ( 1.0 * reaction_P_pho) + (-1.0 * reaction_P1_pho) + (-1.0 * reaction_P1_depho) + ( 1.0 * reaction_P2_depho));
	
% Species:   id = P2, name = PER-pp, affected by kineticLaw
	xdot(8) = (1/(compartment_cytoplasm))*((-1.0 * reaction_P2_decay) + (-1.0 * reaction_C_form) + ( 1.0 * reaction_P1_pho) + (-1.0 * reaction_P2_depho) + (-1.0 * reaction_P2_light_deact));
	
% Species:   id = C, name = PER_TIM complex cytoplasm, affected by kineticLaw
	xdot(9) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_C_form) + (-1.0 * reaction_C_decay) + (-1.0 * reaction_C_transp));
	
% Species:   id = CN, name = PER_TIM complex nuclear, affected by kineticLaw
	xdot(10) = (1/(compartment_nucleus))*((-1.0 * reaction_CN_decay) + ( 1.0 * reaction_C_transp));
	
% Species:   id = Tt, name = total TIM, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = Pt, name = total PER, involved in a rule 	xdot(12) = x(12);
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


