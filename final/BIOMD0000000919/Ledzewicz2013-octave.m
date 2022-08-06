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
% Model name = Ledzewicz2013 - On optimal chemotherapy with a strongly targeted agent for a model of tumor immune system interactions with generalized logistic growth
%
% isInstanceOf http://identifiers.org/mamo/MAMO_0000046
% isInstanceOf http://identifiers.org/taxonomy/9606
% isDescribedBy http://identifiers.org/pubmed/23906150
% is http://identifiers.org/biomodels.db/MODEL2003060003
% is http://identifiers.org/biomodels.db/BIOMD0000000919
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 0.1;
	x0(2) = 600.0;


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
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.1181;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.00264;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=1.0;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.37451;
% Parameter:   id =  mu_C, name = mu_C
	global_par_mu_C=0.5599;
% Parameter:   id =  mu_I, name = mu_I
	global_par_mu_I=0.00484;
% Parameter:   id =  x_inf, name = x_inf
	global_par_x_inf=780.0;
% Parameter:   id =  kappa, name = kappa
	global_par_kappa=1.0;
% Parameter:   id =  v, name = v
	global_par_v=1.0;

% Reaction: id = Natural_death_of_T_cells, name = Natural death of T cells
	reaction_Natural_death_of_T_cells=compartment_compartment*Function_for_natural_death_of_T_cells(global_par_delta, x(1));

% Reaction: id = Tumor_immune_interaction_on_the_immune_system, name = Tumor immune interaction on the immune system
	reaction_Tumor_immune_interaction_on_the_immune_system=compartment_compartment*Function_for_tumor_immune_interaction_on_the_immune_system(global_par_mu_I, global_par_beta, x(2), x(1));

% Reaction: id = Elimination_effect_of_the_tumor_immune_interaction_on_the_cancer_volume, name = Elimination effect of the tumor immune interaction on the cancer volume
	reaction_Elimination_effect_of_the_tumor_immune_interaction_on_the_cancer_volume=compartment_compartment*Function_for_elimination_of_effects_of_the_tumor_immune_interaction_on_the_cancer_volume(global_par_gamma, x(2), x(1));

% Reaction: id = Increase_in_tumor_volume, name = Increase in tumor volume
	reaction_Increase_in_tumor_volume=compartment_compartment*Function_for_increase_in_tumor_volume(global_par_mu_C, x(2), global_par_x_inf, global_par_v);

	xdot=zeros(2,1);
	
% Species:   id = y, name = y, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_a_constant_rate_of_influx_of_T_cells_generated_through_the_primary_organs) + (-1.0 * reaction_Natural_death_of_T_cells) + ( 1.0 * reaction_Tumor_immune_interaction_on_the_immune_system));
	
% Species:   id = x, name = x, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_Elimination_effect_of_the_tumor_immune_interaction_on_the_cancer_volume) + ( 1.0 * reaction_Increase_in_tumor_volume));
end

function z=Function_for_a_constant_rate_of_influx_of_T_cells_generated_through_the_primary_organs(alpha), z=(alpha);end

function z=Function_for_elimination_of_effects_of_the_tumor_immune_interaction_on_the_cancer_volume(gamma,x,y), z=(gamma*x*y);end

function z=Function_for_increase_in_tumor_volume(mu_C,x,x_inf,v), z=(mu_C*x*(1-(x/x_inf)^v));end

function z=Function_for_natural_death_of_T_cells(delta,y), z=(delta*y);end

function z=Function_for_tumor_immune_interaction_on_the_immune_system(mu_I,beta,x,y), z=(mu_I*(1-beta*x)*x*y);end

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


