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
% Model name = Fassoni2019 - Oncogenesis encompassing mutations and genetic instability
%
% is http://identifiers.org/biomodels.db/MODEL1909050003
% is http://identifiers.org/biomodels.db/BIOMD0000000807
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.99999999;
	x0(2) = 1.0E-8;
	x0(3) = 0.0;


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
% Parameter:   id =  r_N, name = r_N
	global_par_r_N=1000000.0;
% Parameter:   id =  mu_N, name = mu_N
	global_par_mu_N=0.01;
% Parameter:   id =  beta_1, name = beta_1
	global_par_beta_1=3.5E-10;
% Parameter:   id =  beta_4, name = beta_4
	global_par_beta_4=0.0;
% Parameter:   id =  r_G, name = r_G
	global_par_r_G=0.05;
% Parameter:   id =  mu_G, name = mu_G
	global_par_mu_G=0.01;
% Parameter:   id =  xi_G, name = xi_G
	global_par_xi_G=0.01;
% Parameter:   id =  beta_2, name = beta_2
	global_par_beta_2=3.5E-10;
% Parameter:   id =  beta_5, name = beta_5
	global_par_beta_5=0.0;
% Parameter:   id =  delta, name = delta
	global_par_delta=1.0E-5;
% Parameter:   id =  xi, name = xi
	global_par_xi=1000.0;
% Parameter:   id =  r_A, name = r_A
	global_par_r_A=0.05;
% Parameter:   id =  K_A, name = K_A
	global_par_K_A=1.0E7;
% Parameter:   id =  mu_A, name = mu_A
	global_par_mu_A=0.01;
% Parameter:   id =  xi_A, name = xi_A
	global_par_xi_A=0.006;
% Parameter:   id =  beta_3, name = beta_3
	global_par_beta_3=3.5E-10;
% Parameter:   id =  beta_6, name = beta_6
	global_par_beta_6=0.0;
% Parameter:   id =  K, name = K
	global_par_K=1.0E8;
% Parameter:   id =  A, name = A
% Parameter:   id =  G, name = G
% Parameter:   id =  N, name = N
% Parameter:   id =  G0, name = G0
	global_par_G0=1.0;
% Parameter:   id =  A0, name = A0
	global_par_A0=0.0;
% Parameter:   id =  N0, name = N0
% Parameter:   id =  n0, name = n0
% Parameter:   id =  a0, name = a0
% Parameter:   id =  g0, name = g0
% Parameter:   id =  a, name = a'
% assignmentRule: variable = N0
	global_par_N0=global_par_r_N/global_par_mu_N-1;
% assignmentRule: variable = g0
	global_par_g0=global_par_G0/global_par_K;
% assignmentRule: variable = a
	global_par_a=x(3)*10;
% assignmentRule: variable = A
	global_par_A=x(3)*global_par_K;
% assignmentRule: variable = G
	global_par_G=x(2)*global_par_K;
% assignmentRule: variable = n0
	global_par_n0=global_par_N0/global_par_K;
% assignmentRule: variable = a0
	global_par_a0=global_par_A0/global_par_K;
% assignmentRule: variable = N
	global_par_N=x(1)*global_par_K;

% Reaction: id = normal_cell_growth, name = normal cell growth
	reaction_normal_cell_growth=compartment_compartment*function_for_normal_cell_growth_1(global_par_K, global_par_r_N);

% Reaction: id = normal_cell_death, name = normal cell death
	reaction_normal_cell_death=compartment_compartment*global_par_mu_N*x(1);

% Reaction: id = normal_cell_damage_A, name = normal cell damage;A
	reaction_normal_cell_damage_A=compartment_compartment*function_for_normal_cell_damage_A_1(global_par_K, global_par_beta_1, x(3), x(1));

% Reaction: id = normal_cell_damage_G, name = normal cell damage;G
	reaction_normal_cell_damage_G=compartment_compartment*function_for_normal_cell_damage_G_1(global_par_beta_4, x(1), x(2));

% Reaction: id = pre_cancer_cell_logistic_growth, name = pre-cancer cell logistic growth
	reaction_pre_cancer_cell_logistic_growth=compartment_compartment*function_for_pre_cancer_cell_logistic_growth_1(x(2), global_par_r_G);

% Reaction: id = pre_cancer_cell_natural_death, name = pre-cancer cell natural death
	reaction_pre_cancer_cell_natural_death=compartment_compartment*global_par_mu_G*x(2);

% Reaction: id = pre_cancer_cell_death_tissue_repair_system, name = pre-cancer cell death;tissue repair system
	reaction_pre_cancer_cell_death_tissue_repair_system=compartment_compartment*function_for_pre_cancer_cell_death_tissue_repair_system_1(global_par_K, global_par_beta_2, x(1), x(2));

% Reaction: id = pre_cancer_cell_death_apoptosis, name = pre-cancer cell death;apoptosis
	reaction_pre_cancer_cell_death_apoptosis=compartment_compartment*global_par_xi_G*x(2);

% Reaction: id = negative_effect_on_G_A, name = negative effect on G;A
	reaction_negative_effect_on_G_A=compartment_compartment*function_for_negative_effect_on_G_A_1(global_par_beta_5, x(3), x(2));

% Reaction: id = negative_effect_on_A_G, name = negative effect on A;G
	reaction_negative_effect_on_A_G=compartment_compartment*function_for_negative_effect_on_A_G_1(global_par_beta_6, x(3), x(2));

% Reaction: id = cancer_cell_natural_death, name = cancer cell natural death
	reaction_cancer_cell_natural_death=compartment_compartment*global_par_mu_A*x(3);

% Reaction: id = cancer_cell_logistic_growth, name = cancer cell logistic growth
	reaction_cancer_cell_logistic_growth=compartment_compartment*function_for_cancer_cell_logistic_growth_1(global_par_K, global_par_K_A, x(3), global_par_r_A);

% Reaction: id = cancer_cell_death_tissue_repair_system, name = cancer cell death;tissue repair system
	reaction_cancer_cell_death_tissue_repair_system=compartment_compartment*function_for_cancer_cell_death_tissue_repair_system_1(global_par_K, global_par_beta_3, x(3), x(1));

% Reaction: id = cancer_cell_death_apoptosis, name = cancer cell death;apoptosis
	reaction_cancer_cell_death_apoptosis=compartment_compartment*global_par_xi_A*x(3);

% Reaction: id = transition_to_cancer_cell, name = transition to cancer cell
	reaction_transition_to_cancer_cell=compartment_compartment*function_for_transition_to_cancer_cell_1(global_par_K, global_par_delta, x(2), global_par_xi);

	xdot=zeros(3,1);
	
% Species:   id = normalized_normal_cell_n, name = normalized normal cell n, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_normal_cell_growth) + (-1.0 * reaction_normal_cell_death) + (-1.0 * reaction_normal_cell_damage_A) + (-1.0 * reaction_normal_cell_damage_G));
	
% Species:   id = normalized_pre_cancer_cell_g, name = normalized pre-cancer cell g, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_pre_cancer_cell_logistic_growth) + (-1.0 * reaction_pre_cancer_cell_natural_death) + (-1.0 * reaction_pre_cancer_cell_death_tissue_repair_system) + (-1.0 * reaction_pre_cancer_cell_death_apoptosis) + (-1.0 * reaction_negative_effect_on_G_A) + (-1.0 * reaction_transition_to_cancer_cell));
	
% Species:   id = normalized_cancer_cell_a, name = normalized cancer cell a, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_negative_effect_on_A_G) + (-1.0 * reaction_cancer_cell_natural_death) + ( 1.0 * reaction_cancer_cell_logistic_growth) + (-1.0 * reaction_cancer_cell_death_tissue_repair_system) + (-1.0 * reaction_cancer_cell_death_apoptosis) + ( 1.0 * reaction_transition_to_cancer_cell));
end

function z=function_for_normal_cell_growth_1(K,r_N), z=(r_N/K);end

function z=function_for_cancer_cell_death_tissue_repair_system_1(K,beta_3,normalized_cancer_cell_a,normalized_normal_cell_n), z=(beta_3*K*normalized_normal_cell_n*normalized_cancer_cell_a);end

function z=function_for_negative_effect_on_G_A_1(beta_5,normalized_cancer_cell_a,normalized_pre_cancer_cell_g), z=(beta_5*normalized_cancer_cell_a*normalized_pre_cancer_cell_g);end

function z=function_for_transition_to_cancer_cell_1(K,delta,normalized_pre_cancer_cell_g,xi), z=(delta*normalized_pre_cancer_cell_g^2/(xi/K+normalized_pre_cancer_cell_g));end

function z=function_for_normal_cell_damage_A_1(K,beta_1,normalized_cancer_cell_a,normalized_normal_cell_n), z=(beta_1*K*normalized_normal_cell_n*normalized_cancer_cell_a);end

function z=function_for_negative_effect_on_A_G_1(beta_6,normalized_cancer_cell_a,normalized_pre_cancer_cell_g), z=(beta_6*normalized_cancer_cell_a*normalized_pre_cancer_cell_g);end

function z=function_for_normal_cell_damage_G_1(beta_4,normalized_normal_cell_n,normalized_pre_cancer_cell_g), z=(beta_4*normalized_normal_cell_n*normalized_pre_cancer_cell_g);end

function z=function_for_pre_cancer_cell_logistic_growth_1(normalized_pre_cancer_cell_g,r_G), z=(r_G*normalized_pre_cancer_cell_g);end

function z=function_for_pre_cancer_cell_death_tissue_repair_system_1(K,beta_2,normalized_normal_cell_n,normalized_pre_cancer_cell_g), z=(beta_2*K*normalized_normal_cell_n*normalized_pre_cancer_cell_g);end

function z=function_for_cancer_cell_logistic_growth_1(K,K_A,normalized_cancer_cell_a,r_A), z=(r_A*normalized_cancer_cell_a*(1-normalized_cancer_cell_a/K_A/K));end

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


