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
% Model name = Khajanchi2017 - Uniform Persistence and Global Stability for a Brain Tumor and Immune System Interaction
%
% isDerivedFrom http://identifiers.org/mamo/MAMO_0000046
% isDerivedFrom http://identifiers.org/taxonomy/9606
% isDescribedBy http://identifiers.org/doi/10.1142/S1793048017500114
% is http://identifiers.org/biomodels.db/MODEL2003110001
% is http://identifiers.org/biomodels.db/BIOMD0000000921
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 100000.0;
	x0(2) = 100000.0;
	x0(3) = 1.0;
	x0(4) = 5000.0;
	x0(5) = 9000.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  r1, name = r1
	global_par_r1=0.01;
% Parameter:   id =  G_max, name = G_max
	global_par_G_max=882650.0;
% Parameter:   id =  e1, name = e1
	global_par_e1=10000.0;
% Parameter:   id =  alpha1, name = alpha1
	global_par_alpha1=1.5;
% Parameter:   id =  alpha2, name = alpha2
	global_par_alpha2=0.12;
% Parameter:   id =  k1, name = k1
	global_par_k1=27000.0;
% Parameter:   id =  r2, name = r2
	global_par_r2=0.3307;
% Parameter:   id =  m1, name = m1
	global_par_m1=1000000.0;
% Parameter:   id =  a1, name = a1
	global_par_a1=0.1163;
% Parameter:   id =  k4, name = k4
	global_par_k4=10500.0;
% Parameter:   id =  e2, name = e2
	global_par_e2=10000.0;
% Parameter:   id =  alpha3, name = alpha3
	global_par_alpha3=0.0194;
% Parameter:   id =  k2, name = k2
	global_par_k2=27000.0;
% Parameter:   id =  a2, name = a2
	global_par_a2=0.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=2000.0;
% Parameter:   id =  mu1, name = mu1
	global_par_mu1=0.007;
% Parameter:   id =  alpha4, name = alpha4
	global_par_alpha4=0.1694;
% Parameter:   id =  k3, name = k3
	global_par_k3=334450.0;
% Parameter:   id =  s1, name = s1
	global_par_s1=63305.0;
% Parameter:   id =  b1, name = b1
	global_par_b1=5.75E-6;
% Parameter:   id =  mu2, name = mu2
	global_par_mu2=6.93;
% Parameter:   id =  b2, name = b2
	global_par_b2=1.02E-4;
% Parameter:   id =  mu3, name = mu3
	global_par_mu3=0.102;
% Parameter:   id =  M_max, name = M_max
	global_par_M_max=1.0;

% Reaction: id = The_rate_of_change_of_glioma_whose_growth_follows_the_logistic_fashion_without_any_immune_intervention, name = The rate of change of glioma whose growth follows the logistic fashion without any immune intervention
	reaction_The_rate_of_change_of_glioma_whose_growth_follows_the_logistic_fashion_without_any_immune_intervention=compartment_compartment*Function_for_The_rate_of_change_of_glioma_whose_growth_follows_the_logistic_fashion_without_any_immune_intervention(global_par_r1, x(1), global_par_G_max);

% Reaction: id = Elimination_of_glioma_due_to_interaction_with_CTL_and_macrophage, name = Elimination of glioma due to interaction with CTL and macrophage
	reaction_Elimination_of_glioma_due_to_interaction_with_CTL_and_macrophage=compartment_compartment*Function_for_Elimination_of_glioma_due_to_interaction_with_CTL_and_macrophage(x(4), global_par_e1, global_par_alpha1, x(2), global_par_alpha2, x(3), x(1), global_par_k1);

% Reaction: id = Logistic_growth_term_for_macrophage, name = Logistic growth term for macrophage
	reaction_Logistic_growth_term_for_macrophage=compartment_compartment*Function_for_logistic_growth_term_for_macrophage(global_par_r2, x(2), global_par_M_max);

% Reaction: id = The_proliferative_enhancement_effect_of_macrophagesby_IFN_gama_and_negative_effect_of_TGF_beta, name = The proliferative enhancement effect of macrophagesby IFN-gama and negative effect of TGF-beta
	reaction_The_proliferative_enhancement_effect_of_macrophagesby_IFN_gama_and_negative_effect_of_TGF_beta=compartment_compartment*Function_for_The_proliferative_enhancement_effect_of_macrophagesby_IFN_gama_and_negative_effect_of_TGF_beta(global_par_a1, x(5), global_par_k4, x(4), global_par_e2);

% Reaction: id = The_limited_interaction_between_glioma_and_macrophage, name = The limited interaction between glioma and macrophage
	reaction_The_limited_interaction_between_glioma_and_macrophage=compartment_compartment*Function_for_The_limited_interaction_between_glioma_and_macrophage(global_par_alpha3, x(1), global_par_k2, x(2));

% Reaction: id = The_rate_of_change_of_CTL_whose_stimulation_is_followed_by_glioma_cell, name = The rate of change of CTL whose stimulation is followed by glioma cell
	reaction_The_rate_of_change_of_CTL_whose_stimulation_is_followed_by_glioma_cell=compartment_compartment*Function_for_The_rate_of_change_of_CTL_whose_stimulation_is_followed_by_glioma_cell(global_par_a2, x(1), global_par_k5, x(4));

% Reaction: id = The_natural_death_of_CTL, name = The natural death of CTL
	reaction_The_natural_death_of_CTL=compartment_compartment*Function_The_natural_death_of_CTL(global_par_mu1, x(3));

% Reaction: id = Clearance_of_CTL_due_to_their_interaction_with_glioma_cells, name = Clearance of CTL due to their interaction with glioma cells
	reaction_Clearance_of_CTL_due_to_their_interaction_with_glioma_cells=compartment_compartment*Function_for_Clearance_of_CTL_due_to_their_interaction_with_glioma_cells(global_par_alpha4, x(1), global_par_k3, x(3));

% Reaction: id = Glioma_secrete_the_cytokine_TGF_beta_to_suppress_the_immune_activity, name = Glioma secrete the cytokine TGF-beta to suppress the immune activity
	reaction_Glioma_secrete_the_cytokine_TGF_beta_to_suppress_the_immune_activity=compartment_compartment*Function_for_Glioma_secrete_the_cytokine_TGF_beta_to_suppress_the_immune_activity(global_par_b1, x(1));

% Reaction: id = The_degradation_of_TGF_beta, name = The degradation of TGF-beta
	reaction_The_degradation_of_TGF_beta=compartment_compartment*function_for_The_degradation_of_TGF_beta(global_par_mu2, x(4));

% Reaction: id = Linear_production_of_interferon_gamma_by_CTL, name = Linear production of interferon gamma by CTL
	reaction_Linear_production_of_interferon_gamma_by_CTL=compartment_compartment*Function_for_linear_production_of_inteferon_gamma_by_CTL(global_par_b2, x(3));

% Reaction: id = Decay_term_of_IFN_gamma, name = Decay term of IFN-gamma
	reaction_Decay_term_of_IFN_gamma=compartment_compartment*Function_for_Decay_term_of_IFN_gamma(global_par_mu3, x(5));

	xdot=zeros(5,1);
	
% Species:   id = G, name = G, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_The_rate_of_change_of_glioma_whose_growth_follows_the_logistic_fashion_without_any_immune_intervention) + (-1.0 * reaction_Elimination_of_glioma_due_to_interaction_with_CTL_and_macrophage));
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Logistic_growth_term_for_macrophage) + ( 1.0 * reaction_The_proliferative_enhancement_effect_of_macrophagesby_IFN_gama_and_negative_effect_of_TGF_beta) + (-1.0 * reaction_The_limited_interaction_between_glioma_and_macrophage));
	
% Species:   id = C_T, name = C_T, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_The_rate_of_change_of_CTL_whose_stimulation_is_followed_by_glioma_cell) + (-1.0 * reaction_The_natural_death_of_CTL) + (-1.0 * reaction_Clearance_of_CTL_due_to_their_interaction_with_glioma_cells));
	
% Species:   id = T_beta, name = T_beta, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Natural_production_of_bioactive_TGF__beta_in_the_central_nervous_system) + ( 1.0 * reaction_Glioma_secrete_the_cytokine_TGF_beta_to_suppress_the_immune_activity) + (-1.0 * reaction_The_degradation_of_TGF_beta));
	
% Species:   id = I_gamma, name = I_gamma, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_Linear_production_of_interferon_gamma_by_CTL) + (-1.0 * reaction_Decay_term_of_IFN_gamma));
end

function z=Function_for_The_limited_interaction_between_glioma_and_macrophage(alpha3,G,k2,M), z=(alpha3*G/(G+k2)*M);end

function z=Function_The_natural_death_of_CTL(mu_1,C_T), z=(mu_1*C_T);end

function z=Function_for_Decay_term_of_IFN_gamma(mu3,I_gamma), z=(mu3*I_gamma);end

function z=function_for_The_degradation_of_TGF_beta(mu2,T_beta), z=(mu2*T_beta);end

function z=Function_for_The_proliferative_enhancement_effect_of_macrophagesby_IFN_gama_and_negative_effect_of_TGF_beta(a1,I_gamma,k4,T_beta,e2), z=(a1*I_gamma/(k4+I_gamma)*1/(T_beta+e2));end

function z=Function_for_Natural_production_of_bioactive_TGF__beta_in_the_central_nervous_system(s1), z=(s1);end

function z=Function_for_linear_production_of_inteferon_gamma_by_CTL(b2,C_T), z=(b2*C_T);end

function z=Function_for_Clearance_of_CTL_due_to_their_interaction_with_glioma_cells(alpha4,G,k3,C_T), z=(alpha4*G/(G+k3)*C_T);end

function z=Function_for_Glioma_secrete_the_cytokine_TGF_beta_to_suppress_the_immune_activity(b1,G), z=(b1*G);end

function z=Function_for_Elimination_of_glioma_due_to_interaction_with_CTL_and_macrophage(T_beta,e1,alpha1,M,alpha2,C_T,G,k1), z=(1/(T_beta+e1)*(alpha1*M+alpha2*C_T)*G/(G+k1));end

function z=Function_for_The_rate_of_change_of_glioma_whose_growth_follows_the_logistic_fashion_without_any_immune_intervention(r1,G,G_max), z=(r1*G*(1-G/G_max));end

function z=Function_for_The_rate_of_change_of_CTL_whose_stimulation_is_followed_by_glioma_cell(a2,G,k5,T_beta), z=(a2*G/(k5+T_beta));end

function z=Function_for_logistic_growth_term_for_macrophage(r2,M,M_max), z=(r2*M*(1-M/M_max));end

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


