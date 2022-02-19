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
% Model name = He2017 - A mathematical model of pancreatic cancer with two kinds of treatments
%
% isDescribedBy http://identifiers.org/doi/10.1142/S021833901750005X
% isDerivedFrom http://identifiers.org/pubmed/8186756
% is http://identifiers.org/biomodels.db/MODEL1909120001
% is http://identifiers.org/biomodels.db/BIOMD0000000811
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 1.0E9;
	x0(2) = 5600000.0;
	x0(3) = 8.736E8;
	x0(4) = 4.816E8;
	x0(5) = 2.1168E9;
	x0(6) = 1.5876E8;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  k_c, name = k_c
	global_par_k_c=0.0195;
% Parameter:   id =  mu_c, name = mu_c
% Parameter:   id =  a_c, name = a_c
	global_par_a_c=1.02E-11;
% Parameter:   id =  b_c, name = b_c
	global_par_b_c=1.5E-11;
% Parameter:   id =  d_c, name = d_c
	global_par_d_c=7.87E-5;
% Parameter:   id =  r_1, name = r_1
	global_par_r_1=0.345;
% Parameter:   id =  r_2, name = r_2
	global_par_r_2=0.286;
% Parameter:   id =  k_p, name = k_p
% Parameter:   id =  a_p, name = a_p
	global_par_a_p=1.7857E-9;
% Parameter:   id =  f_p, name = f_p
	global_par_f_p=0.125;
% Parameter:   id =  mu_p, name = mu_p
	global_par_mu_p=5.6E7;
% Parameter:   id =  lambda_p, name = lambda_p
	global_par_lambda_p=0.015;
% Parameter:   id =  a_e, name = a_e
	global_par_a_e=13000.0;
% Parameter:   id =  b_e, name = b_e
	global_par_b_e=0.02;
% Parameter:   id =  c_e, name = c_e
	global_par_c_e=3.42E-12;
% Parameter:   id =  r_e, name = r_e
	global_par_r_e=5.0E-12;
% Parameter:   id =  p_e, name = p_e
	global_par_p_e=0.125;
% Parameter:   id =  g_e, name = g_e
	global_par_g_e=0.3;
% Parameter:   id =  f_e, name = f_e
	global_par_f_e=0.125;
% Parameter:   id =  h_e, name = h_e
	global_par_h_e=0.3;
% Parameter:   id =  delta_e, name = delta_e
	global_par_delta_e=1.0E-10;
% Parameter:   id =  a_n, name = a_n
	global_par_a_n=130000.0;
% Parameter:   id =  b_n, name = b_n
	global_par_b_n=0.015;
% Parameter:   id =  c_n, name = c_n
	global_par_c_n=1.0E-13;
% Parameter:   id =  p_n, name = p_n
	global_par_p_n=0.125;
% Parameter:   id =  g_n, name = g_n
	global_par_g_n=0.3;
% Parameter:   id =  f_n, name = f_n
	global_par_f_n=0.125;
% Parameter:   id =  h_n, name = h_n
	global_par_h_n=0.3;
% Parameter:   id =  delta_n, name = delta_n
	global_par_delta_n=1.0E-10;
% Parameter:   id =  a_h, name = a_h
	global_par_a_h=360000.0;
% Parameter:   id =  b_h, name = b_h
	global_par_b_h=0.0012;
% Parameter:   id =  p_h, name = p_h
	global_par_p_h=0.125;
% Parameter:   id =  g_h, name = g_h
	global_par_g_h=0.3;
% Parameter:   id =  f_h, name = f_h
	global_par_f_h=0.125;
% Parameter:   id =  h_h, name = h_h
	global_par_h_h=0.3;
% Parameter:   id =  delta_h, name = delta_h
	global_par_delta_h=1.0E-10;
% Parameter:   id =  a, name = a
	global_par_a=560000.0;
% Parameter:   id =  delta_r, name = delta_r
	global_par_delta_r=0.023;
% Parameter:   id =  a_r, name = a_r
	global_par_a_r=2.0E-4;
% Parameter:   id =  b_r, name = b_r
	global_par_b_r=4.0E-4;
% Parameter:   id =  p_r, name = p_r
	global_par_p_r=0.125;
% Parameter:   id =  g_r, name = g_r
	global_par_g_r=0.3;
% Parameter:   id =  r, name = r
	global_par_r=1.0E-11;
% Parameter:   id =  tau_1_alpha_1, name = tau_1_alpha_1
	global_par_tau_1_alpha_1=2.2483E11;
% Parameter:   id =  beta_1_tau_2, name = beta_1_tau_2
	global_par_beta_1_tau_2=4.4691E-13;
% Parameter:   id =  beta_2_tau_2, name = beta_2_tau_2
	global_par_beta_2_tau_2=4.4691E-13;
% Parameter:   id =  beta_3_tau_2, name = beta_3_tau_2
	global_par_beta_3_tau_2=4.4691E-13;
% Parameter:   id =  gamma_2_tau_3, name = gamma_2_tau_3
	global_par_gamma_2_tau_3=4.4691E-13;
% Parameter:   id =  k_R, name = k_R
	global_par_k_R=1.5E-11;
% Parameter:   id =  ModelValue_2, name = Initial for a_c
	global_par_ModelValue_2=1.02E-11;
% Parameter:   id =  ModelValue_8, name = Initial for a_p
	global_par_ModelValue_8=1.7857E-9;
% Parameter:   id =  ModelValue_0, name = Initial for k_c
	global_par_ModelValue_0=0.0195;
% assignmentRule: variable = mu_c
	global_par_mu_c=0.1*global_par_ModelValue_2*global_par_ModelValue_8;
% assignmentRule: variable = k_p
	global_par_k_p=0.1*global_par_ModelValue_0;

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_compartment*Function_for_Tumor_Growth(global_par_k_c, global_par_mu_c, x(2), x(1), global_par_a_c);

% Reaction: id = Tumor_Interaction_NK, name = Tumor_Interaction_NK
	reaction_Tumor_Interaction_NK=compartment_compartment*Function_for_Tumor_Interaction_NK(global_par_b_c, x(4), x(1));

% Reaction: id = Tumor_Removal_CD8, name = Tumor_Removal_CD8
	reaction_Tumor_Removal_CD8=compartment_compartment*Function_for_Tumor_Removal_CD8(global_par_d_c, x(3), x(1), global_par_r_1, x(6), global_par_r_2, global_par_gamma_2_tau_3);

% Reaction: id = PSC_Growth, name = PSC_Growth
	reaction_PSC_Growth=compartment_compartment*Function_for_PSC_Growth(global_par_k_p, global_par_f_p, x(1), global_par_mu_p, x(2), global_par_a_p);

% Reaction: id = PSC_Death, name = PSC_Death
	reaction_PSC_Death=compartment_compartment*global_par_lambda_p*x(2);

% Reaction: id = CD8_Death_Natural, name = CD8_Death_Natural
	reaction_CD8_Death_Natural=compartment_compartment*global_par_b_e*x(3);

% Reaction: id = CD8_Inactivation, name = CD8_Inactivation
	reaction_CD8_Inactivation=compartment_compartment*Function_for_CD8_Inactivation(global_par_c_e, x(3), x(1));

% Reaction: id = CD8_Recruitment_NK, name = CD8_Recruitment_NK
	reaction_CD8_Recruitment_NK=compartment_compartment*Function_for_CD8_Recruitment_NK(global_par_r_e, x(4), x(1));

% Reaction: id = CD8_Proliferation_Stimulation_IL_2, name = CD8_Proliferation_Stimulation_IL-2
	reaction_CD8_Proliferation_Stimulation_IL_2=compartment_compartment*Function_for_CD8_Proliferation_Stimulation_IL_2(global_par_p_e, x(5), x(3), global_par_g_e, global_par_tau_1_alpha_1);

% Reaction: id = CD8_Proliferation_Stimulation_IFNG, name = CD8_Proliferation_Stimulation_IFNG
	reaction_CD8_Proliferation_Stimulation_IFNG=compartment_compartment*Function_for_CD8_Proliferation_Stimulation_IFNG(global_par_f_e, x(3), global_par_beta_1_tau_2, global_par_beta_2_tau_2, x(4), global_par_beta_3_tau_2, x(5), global_par_h_e);

% Reaction: id = CD8_Death_Treg, name = CD8_Death_Treg
	reaction_CD8_Death_Treg=compartment_compartment*Function_for_CD8_Death_Treg(global_par_delta_e, x(6), x(3));

% Reaction: id = NK_Death, name = NK_Death
	reaction_NK_Death=compartment_compartment*global_par_b_n*x(4);

% Reaction: id = NK_Inactivation, name = NK_Inactivation
	reaction_NK_Inactivation=compartment_compartment*Function_for_NK_Inactivation(global_par_c_n, x(4), x(1));

% Reaction: id = NK_Proliferation_Stimulation_IL_2, name = NK_Proliferation_Stimulation_IL-2
	reaction_NK_Proliferation_Stimulation_IL_2=compartment_compartment*Function_for_NK_Proliferation_Stimulation_IL_2(global_par_p_n, x(4), global_par_g_n, x(5), global_par_tau_1_alpha_1);

% Reaction: id = NK_Proliferation_Stimulation_IFNG, name = NK_Proliferation_Stimulation_IFNG
	reaction_NK_Proliferation_Stimulation_IFNG=compartment_compartment*Function_for_NK_Proliferation_Stimulation_IFNG(global_par_f_n, x(4), global_par_beta_1_tau_2, x(3), global_par_beta_2_tau_2, global_par_beta_3_tau_2, x(5), global_par_h_n);

% Reaction: id = NK_Death_Treg, name = NK_Death_Treg
	reaction_NK_Death_Treg=compartment_compartment*global_par_delta_n*x(4);

% Reaction: id = Thelp_Death_Natural, name = Thelp_Death_Natural
	reaction_Thelp_Death_Natural=compartment_compartment*global_par_b_h*x(5);

% Reaction: id = Thelp_Proliferation_Stimulation_IL_2, name = Thelp_Proliferation_Stimulation_IL-2
	reaction_Thelp_Proliferation_Stimulation_IL_2=compartment_compartment*Function_for_Thelp_Proliferation_Stimulation_IL_2(global_par_p_h, x(5), global_par_g_h, global_par_tau_1_alpha_1);

% Reaction: id = Thelp_Proliferation_Stimulation_IFNG, name = Thelp_Proliferation_Stimulation_IFNG
	reaction_Thelp_Proliferation_Stimulation_IFNG=compartment_compartment*Function_for_Thelp_Proliferation_Stimulation_IFNG(global_par_f_h, x(5), global_par_beta_1_tau_2, x(3), global_par_beta_2_tau_2, x(4), global_par_beta_3_tau_2, global_par_h_h);

% Reaction: id = Thelp_Death_Treg, name = Thelp_Death_Treg
	reaction_Thelp_Death_Treg=compartment_compartment*Function_for_Thelp_Death_Treg(global_par_delta_h, x(6), x(5));

% Reaction: id = Treg_Death_Natural, name = Treg_Death_Natural
	reaction_Treg_Death_Natural=compartment_compartment*global_par_delta_r*x(6);

% Reaction: id = Treg_Origination_Thelp, name = Treg_Origination_Thelp
	reaction_Treg_Origination_Thelp=compartment_compartment*Function_for_Treg_Origination_Thelp(global_par_b_r, x(5));

% Reaction: id = Treg_Origination_CD8, name = Treg_Origination_CD8
	reaction_Treg_Origination_CD8=compartment_compartment*Function_for_Treg_Origination_CD8(global_par_a_r, x(3));

% Reaction: id = Treg_Proliferation_Stimulation_IL_2, name = Treg_Proliferation_Stimulation_IL-2
	reaction_Treg_Proliferation_Stimulation_IL_2=compartment_compartment*Function_for_Treg_Proliferation_Stimulation_IL_2(global_par_p_r, x(5), x(6), global_par_g_r, global_par_tau_1_alpha_1);

% Reaction: id = Treg_Lysis_NK, name = Treg_Lysis_NK
	reaction_Treg_Lysis_NK=compartment_compartment*Function_for_Treg_Lysis_NK(global_par_r, x(4), x(6));

	xdot=zeros(6,1);
	
% Species:   id = C_PCC, name = C_PCC, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Tumor_Interaction_NK) + (-1.0 * reaction_Tumor_Removal_CD8));
	
% Species:   id = P_PSC, name = P_PSC, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_PSC_Growth) + (-1.0 * reaction_PSC_Death));
	
% Species:   id = E_CD8, name = E_CD8, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_CD8_Growth_Constant) + (-1.0 * reaction_CD8_Death_Natural) + (-1.0 * reaction_CD8_Inactivation) + ( 1.0 * reaction_CD8_Recruitment_NK) + ( 1.0 * reaction_CD8_Proliferation_Stimulation_IL_2) + ( 1.0 * reaction_CD8_Proliferation_Stimulation_IFNG) + (-1.0 * reaction_CD8_Death_Treg));
	
% Species:   id = N_Killer, name = N_Killer, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_NK_Growth_Constant) + (-1.0 * reaction_NK_Death) + (-1.0 * reaction_NK_Inactivation) + ( 1.0 * reaction_NK_Proliferation_Stimulation_IL_2) + ( 1.0 * reaction_NK_Proliferation_Stimulation_IFNG) + (-1.0 * reaction_NK_Death_Treg));
	
% Species:   id = H_T_Helper, name = H_T_Helper, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_Thelp_Growth_Constant) + (-1.0 * reaction_Thelp_Death_Natural) + ( 1.0 * reaction_Thelp_Proliferation_Stimulation_IL_2) + ( 1.0 * reaction_Thelp_Proliferation_Stimulation_IFNG) + (-1.0 * reaction_Thelp_Death_Treg));
	
% Species:   id = R_T_Regulatory, name = R_T_Regulatory, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_Treg_Growth_Constant) + (-1.0 * reaction_Treg_Death_Natural) + ( 1.0 * reaction_Treg_Origination_Thelp) + ( 1.0 * reaction_Treg_Origination_CD8) + ( 1.0 * reaction_Treg_Proliferation_Stimulation_IL_2) + (-1.0 * reaction_Treg_Lysis_NK));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_PSC_Growth(k_p,f_p,C,mu_p,P,a_p), z=((k_p+f_p*C/(mu_p+C))*P*(1-a_p*P));end

function z=Function_for_Tumor_Removal_CD8(d_c,E,C,r_1,R,r_2,gamma_2_tau_3), z=(d_c*E*C/((1+r_1*R)*(1+r_2*gamma_2_tau_3*C)));end

function z=Function_for_CD8_Recruitment_NK(r_e,N,C), z=(r_e*N*C);end

function z=Function_for_Tumor_Interaction_NK(b_c,N,C), z=(b_c*N*C);end

function z=Function_for_CD8_Inactivation(c_e,E,C), z=(c_e*E*C);end

function z=Function_for_CD8_Proliferation_Stimulation_IL_2(p_e,H,E,g_e,tau_1_alpha_1), z=(p_e*H*E/(g_e*tau_1_alpha_1+H));end

function z=Function_for_CD8_Proliferation_Stimulation_IFNG(f_e,E,beta_1_tau_2,beta_2_tau_2,N,beta_3_tau_2,H,h_e), z=(f_e*E*(beta_1_tau_2*E+beta_2_tau_2*N+beta_3_tau_2*H)/(h_e+beta_1_tau_2*E+beta_2_tau_2*N+beta_3_tau_2*H));end

function z=Function_for_CD8_Death_Treg(delta_e,R,E), z=(delta_e*R*E);end

function z=Function_for_NK_Proliferation_Stimulation_IL_2(p_n,N,g_n,H,tau_1_alpha_1), z=(p_n*H*N/(g_n*tau_1_alpha_1+H));end

function z=Function_for_NK_Proliferation_Stimulation_IFNG(f_n,N,beta_1_tau_2,E,beta_2_tau_2,beta_3_tau_2,H,h_n), z=(f_n*N*(beta_1_tau_2*E+beta_2_tau_2*N+beta_3_tau_2*H)/(h_n+beta_1_tau_2*E+beta_2_tau_2*N+beta_3_tau_2*H));end

function z=Function_for_Thelp_Proliferation_Stimulation_IFNG(f_h,H,beta_1_tau_2,E,beta_2_tau_2,N,beta_3_tau_2,h_h), z=(f_h*H*(beta_1_tau_2*E+beta_2_tau_2*N+beta_3_tau_2*H)/(h_h+beta_1_tau_2*E+beta_2_tau_2*N+beta_3_tau_2*H));end

function z=Function_for_Thelp_Proliferation_Stimulation_IL_2(p_h,H,g_h,tau_1_alpha_1), z=(p_h*H*H/(g_h*tau_1_alpha_1+H));end

function z=Function_for_NK_Inactivation(c_n,N,C), z=(c_n*N*C);end

function z=Function_for_Treg_Origination_CD8(a_r,E), z=(a_r*E);end

function z=Function_for_Tumor_Growth(k_c,mu_c,P,C,a_c), z=((k_c+mu_c*P)*C*(1-a_c*C));end

function z=Function_for_Thelp_Death_Treg(delta_h,R,H), z=(delta_h*R*H);end

function z=Function_for_Treg_Lysis_NK(r,N,R), z=(r*N*R);end

function z=Function_for_Treg_Proliferation_Stimulation_IL_2(p_r,H,R,g_r,tau_1_alpha_1), z=(p_r*H*R/(g_r*tau_1_alpha_1+H));end

function z=Function_for_Treg_Origination_Thelp(b_r,H), z=(b_r*H);end

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


