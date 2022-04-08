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
% Model name = Li2016 - Model for pancreatic cancer patients receiving immunotherapy
%
% isDescribedBy http://identifiers.org/pubmed/27338302
% is http://identifiers.org/biomodels.db/MODEL2004060001
% is http://identifiers.org/biomodels.db/BIOMD0000000929
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 1.0E9;
	x0(2) = 5600000.0;
	x0(3) = 7.0E8;
	x0(4) = 3.528E8;
	x0(5) = 1.8816E9;


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

% Compartment: id = Pancreas, name = Pancreas, constant
	compartment_Pancreas=1.0;
% Parameter:   id =  a_c, name = a_c
	global_par_a_c=0.0195;
% Parameter:   id =  b_c, name = b_c
	global_par_b_c=1.02E-11;
% Parameter:   id =  c_c, name = c_c
	global_par_c_c=1.5E-11;
% Parameter:   id =  d_c, name = d_c
	global_par_d_c=0.005;
% Parameter:   id =  mu_c, name = mu_c
% Parameter:   id =  l, name = l
% Parameter:   id =  s, name = s
	global_par_s=0.3;
% Parameter:   id =  a_p, name = a_p
% Parameter:   id =  b_p, name = b_p
	global_par_b_p=1.7857E-9;
% Parameter:   id =  f_p, name = f_p
	global_par_f_p=0.125;
% Parameter:   id =  mu_p, name = mu_p
	global_par_mu_p=5.6E7;
% Parameter:   id =  lambda_p, name = lambda_p
	global_par_lambda_p=0.015;
% Parameter:   id =  a_t, name = a_t
	global_par_a_t=3500.0;
% Parameter:   id =  b_t, name = b_t
	global_par_b_t=0.02;
% Parameter:   id =  c_t, name = c_t
	global_par_c_t=3.42E-12;
% Parameter:   id =  d_t, name = d_t
	global_par_d_t=3.0E-10;
% Parameter:   id =  e_t, name = e_t
	global_par_e_t=5.0E-12;
% Parameter:   id =  p_t, name = p_t
	global_par_p_t=0.125;
% Parameter:   id =  g_t, name = g_t
	global_par_g_t=0.3;
% Parameter:   id =  f_t, name = f_t
	global_par_f_t=0.125;
% Parameter:   id =  h_t, name = h_t
	global_par_h_t=0.3;
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
% Parameter:   id =  a_h, name = a_h
	global_par_a_h=9600.0;
% Parameter:   id =  b_h, name = b_h
	global_par_b_h=0.0012;
% Parameter:   id =  c_h, name = c_h
	global_par_c_h=5.0E-11;
% Parameter:   id =  p_h, name = p_h
	global_par_p_h=0.125;
% Parameter:   id =  g_h, name = g_h
	global_par_g_h=0.3;
% Parameter:   id =  f_h, name = f_h
	global_par_f_h=0.125;
% Parameter:   id =  h_h, name = h_h
	global_par_h_h=0.3;
% Parameter:   id =  tau1_alpha1, name = tau1_alpha1
	global_par_tau1_alpha1=2.2483E11;
% Parameter:   id =  alpha2_tau2, name = alpha2_tau2
	global_par_alpha2_tau2=4.4691E-13;
% Parameter:   id =  beta2_tau2, name = beta2_tau2
	global_par_beta2_tau2=4.4691E-13;
% Parameter:   id =  gamma2_tau2, name = gamma2_tau2
	global_par_gamma2_tau2=4.4691E-13;
% assignmentRule: variable = mu_c
	global_par_mu_c=0.1*global_par_a_c*global_par_b_p;
% assignmentRule: variable = l
	global_par_l=2/3;
% assignmentRule: variable = a_p
	global_par_a_p=0.1*global_par_a_c;

% Reaction: id = Logistic_growth_of_cancer_cells, name = Logistic growth of cancer cells
	reaction_Logistic_growth_of_cancer_cells=compartment_Pancreas*Function_for_reaction_1(global_par_a_c, x(1), global_par_b_c);

% Reaction: id = Interaction_between_cancer_cells_and_NK_cells, name = Interaction between cancer cells and NK cells
	reaction_Interaction_between_cancer_cells_and_NK_cells=compartment_Pancreas*Function_for_reaction_2(global_par_c_c, x(4), x(1));

% Reaction: id = Lysis_of_cancer_cells_by_CD8__T_cells, name = Lysis of cancer cells by CD8+ T cells
	reaction_Lysis_of_cancer_cells_by_CD8__T_cells=compartment_Pancreas*Function_for_reaction_3(global_par_d_c, x(3), x(1), global_par_l, global_par_s);

% Reaction: id = Basal_growth_of_stellate_cells, name = Basal growth of stellate cells
	reaction_Basal_growth_of_stellate_cells=compartment_Pancreas*Function_for_reaction_4(global_par_a_p, x(2), global_par_b_p);

% Reaction: id = Death_of_stellate_cells, name = Death of stellate cells
	reaction_Death_of_stellate_cells=compartment_Pancreas*global_par_lambda_p*x(2);

% Reaction: id = Death_of_CD8__T_cells, name = Death of CD8+ T cells
	reaction_Death_of_CD8__T_cells=compartment_Pancreas*global_par_b_t*x(3);

% Reaction: id = Inactivation_of_CD8__T_cells_by_cancer_cells, name = Inactivation of CD8+ T cells by cancer cells
	reaction_Inactivation_of_CD8__T_cells_by_cancer_cells=compartment_Pancreas*Function_for_reaction_8(global_par_c_t, x(3), x(1));

% Reaction: id = Self__regulation_of_CD8__T_cells, name = Self- regulation of CD8+ T cells
	reaction_Self__regulation_of_CD8__T_cells=compartment_Pancreas*Function_for_reaction_9(global_par_d_t, x(3));

% Reaction: id = Recruitment_of_CD8__cells_by_debris_from_cancer_cells_lysed, name = Recruitment of CD8+ cells by debris from cancer cells lysed
	reaction_Recruitment_of_CD8__cells_by_debris_from_cancer_cells_lysed=compartment_Pancreas*Function_for_reaction_10(global_par_e_t, x(4), x(1));

% Reaction: id = Proliferation_of_CD8__T_cells_by_IL_2, name = Proliferation of CD8+ T cells by IL-2
	reaction_Proliferation_of_CD8__T_cells_by_IL_2=compartment_Pancreas*Function_for_reaction_11_16_21(x(5), global_par_tau1_alpha1, global_par_p_t, x(3), global_par_g_t);

% Reaction: id = Proliferation_of_CD8__T_cells_by_IFN_gamma, name = Proliferation of CD8+ T cells by IFN-gamma
	reaction_Proliferation_of_CD8__T_cells_by_IFN_gamma=compartment_Pancreas*Function_for_reaction_12_17_22(global_par_f_t, global_par_alpha2_tau2, x(3), global_par_beta2_tau2, x(4), global_par_gamma2_tau2, x(5), x(3), global_par_h_t);

% Reaction: id = Death_of_NK_cells, name = Death of NK cells
	reaction_Death_of_NK_cells=compartment_Pancreas*global_par_b_n*x(4);

% Reaction: id = Inactivation_of_NK_cells_after_interaction_with_cancer_cells, name = Inactivation of NK cells after interaction with cancer cells
	reaction_Inactivation_of_NK_cells_after_interaction_with_cancer_cells=compartment_Pancreas*Function_for_reaction_2(global_par_c_n, x(1), x(4));

% Reaction: id = Proliferation_of_NK_cells_by_IL_2, name = Proliferation of NK cells by IL-2
	reaction_Proliferation_of_NK_cells_by_IL_2=compartment_Pancreas*Function_for_reaction_11_16_21(x(5), global_par_tau1_alpha1, global_par_p_n, x(4), global_par_g_n);

% Reaction: id = Proliferation_of_NK_cells_by_IFN_gamma, name = Proliferation of NK cells by IFN-gamma
	reaction_Proliferation_of_NK_cells_by_IFN_gamma=compartment_Pancreas*Function_for_reaction_12_17_22(global_par_f_n, global_par_alpha2_tau2, x(3), global_par_beta2_tau2, x(4), global_par_gamma2_tau2, x(5), x(4), global_par_h_n);

% Reaction: id = Death_of_helper_T_cells, name = Death of helper T cells
	reaction_Death_of_helper_T_cells=compartment_Pancreas*global_par_b_h*x(5);

% Reaction: id = Inactivation_of_helper_T_cells, name = Inactivation of helper T cells
	reaction_Inactivation_of_helper_T_cells=compartment_Pancreas*Function_for_reaction_20(global_par_c_h, x(5));

% Reaction: id = Proliferation_of_helper_T_cells_by_IL_2, name = Proliferation of helper T cells by IL-2
	reaction_Proliferation_of_helper_T_cells_by_IL_2=compartment_Pancreas*Function_for_reaction_11_16_21(x(5), global_par_tau1_alpha1, global_par_p_h, x(5), global_par_g_h);

% Reaction: id = Proliferation_of_helper_T_cells_by_IFN_gamma, name = Proliferation of helper T cells by IFN-gamma
	reaction_Proliferation_of_helper_T_cells_by_IFN_gamma=compartment_Pancreas*Function_for_reaction_12_17_22(global_par_f_h, global_par_alpha2_tau2, x(3), global_par_beta2_tau2, x(4), global_par_gamma2_tau2, x(5), x(5), global_par_h_h);

% Reaction: id = Stellate_cells_promotes_cancer_growth_through_cytokines, name = Stellate cells promotes cancer growth through cytokines
	reaction_Stellate_cells_promotes_cancer_growth_through_cytokines=compartment_Pancreas*Function_for_reaction_23(global_par_mu_c, x(2), x(1), global_par_b_c);

% Reaction: id = TGF_beta__induced_growth_of_stellate_cells, name = TGF-beta  induced growth of stellate cells
	reaction_TGF_beta__induced_growth_of_stellate_cells=compartment_Pancreas*Function_for_reaction_24(global_par_f_p, x(1), global_par_mu_p, x(2), global_par_b_p);

	xdot=zeros(5,1);
	
% Species:   id = Pancreatic_cancer_cells__C, name = Pancreatic cancer cells (C), affected by kineticLaw
	xdot(1) = (1/(compartment_Pancreas))*(( 1.0 * reaction_Logistic_growth_of_cancer_cells) + (-1.0 * reaction_Interaction_between_cancer_cells_and_NK_cells) + (-1.0 * reaction_Lysis_of_cancer_cells_by_CD8__T_cells) + ( 1.0 * reaction_Stellate_cells_promotes_cancer_growth_through_cytokines));
	
% Species:   id = Pancreatic_stellate_cells__P, name = Pancreatic stellate cells (P), affected by kineticLaw
	xdot(2) = (1/(compartment_Pancreas))*(( 1.0 * reaction_Basal_growth_of_stellate_cells) + (-1.0 * reaction_Death_of_stellate_cells) + ( 1.0 * reaction_TGF_beta__induced_growth_of_stellate_cells));
	
% Species:   id = CD8__T_cells__T, name = CD8+ T cells (T), affected by kineticLaw
	xdot(3) = (1/(compartment_Pancreas))*(( 1.0 * reaction_Production_of_CD8__T_cells) + (-1.0 * reaction_Death_of_CD8__T_cells) + (-1.0 * reaction_Inactivation_of_CD8__T_cells_by_cancer_cells) + (-1.0 * reaction_Self__regulation_of_CD8__T_cells) + ( 1.0 * reaction_Recruitment_of_CD8__cells_by_debris_from_cancer_cells_lysed) + ( 1.0 * reaction_Proliferation_of_CD8__T_cells_by_IL_2) + ( 1.0 * reaction_Proliferation_of_CD8__T_cells_by_IFN_gamma));
	
% Species:   id = NK_cells__N, name = NK cells (N), affected by kineticLaw
	xdot(4) = (1/(compartment_Pancreas))*(( 1.0 * reaction_Production_of_NK_cells) + (-1.0 * reaction_Death_of_NK_cells) + (-1.0 * reaction_Inactivation_of_NK_cells_after_interaction_with_cancer_cells) + ( 1.0 * reaction_Proliferation_of_NK_cells_by_IL_2) + ( 1.0 * reaction_Proliferation_of_NK_cells_by_IFN_gamma));
	
% Species:   id = helper_T_cells__H, name = helper T cells (H), affected by kineticLaw
	xdot(5) = (1/(compartment_Pancreas))*(( 1.0 * reaction_Production_of_helper_T_cells) + (-1.0 * reaction_Death_of_helper_T_cells) + (-1.0 * reaction_Inactivation_of_helper_T_cells) + ( 1.0 * reaction_Proliferation_of_helper_T_cells_by_IL_2) + ( 1.0 * reaction_Proliferation_of_helper_T_cells_by_IFN_gamma));
end

function z=Function_for_reaction_8(c_t,T,C), z=(c_t*T*C);end

function z=Function_for_reaction_3(d_c,T,C,l,s), z=(d_c*(T/C)^l/(s+(T/C)^l)*C);end

function z=Function_for_reaction_4(a_p,P,b_p), z=(a_p*P*(1-b_p*P));end

function z=Function_for_reaction_9(d_t,T), z=(d_t*T^2);end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_reaction_1(a_c,C,b_c), z=(a_c*C*(1-b_c*C));end

function z=Function_for_reaction_2(c_c,N,C), z=(c_c*N*C);end

function z=Function_for_reaction_10(e_t,N,C), z=(e_t*N*C);end

function z=Function_for_reaction_11_16_21(H,tau1_alpha1,p,prod,g), z=(p*H*prod/(g*tau1_alpha1+H));end

function z=Function_for_reaction_12_17_22(f,alpha2_tau2,T,beta2_tau2,N,gamma2_tau2,H,prod,h), z=(f*(alpha2_tau2*T+beta2_tau2*N+gamma2_tau2*H)*prod/(h+alpha2_tau2*T+beta2_tau2*N+gamma2_tau2*H));end

function z=Function_for_reaction_20(c_h,H), z=(c_h*H^2);end

function z=Function_for_reaction_23(mu_c,P,C,b_C), z=(mu_c*P*C*(1-b_C*C));end

function z=Function_for_reaction_24(f_p,C,mu_p,P,b_p), z=(f_p*C/(mu_p+C)*P*(1-b_p*P));end

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


