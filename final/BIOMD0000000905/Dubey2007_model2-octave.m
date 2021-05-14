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
% Model name = Dubey2007 - A mathematical model for the effect of toxicant on the immune system (with toxicant effect) Model2
%
% hasInstance http://identifiers.org/mamo/MAMO_0000046
% hasInstance http://identifiers.org/taxonomy/9606
% hasInstance http://identifiers.org/bto/BTO:0005810
% isDescribedBy http://identifiers.org/bto/BTO:0005810
% isDescribedBy http://identifiers.org/doi/10.1142/S0218339007002301
% is http://identifiers.org/biomodels.db/MODEL1912190001
% is http://identifiers.org/biomodels.db/BIOMD0000000905
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 1.0;
	x0(4) = 1.0;
	x0(5) = 1.0;


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
% Parameter:   id =  beta, name = beta
	global_par_beta=0.5;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.05;
% Parameter:   id =  beta0, name = beta0
	global_par_beta0=0.2;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.04;
% Parameter:   id =  a, name = a
	global_par_a=0.8;
% Parameter:   id =  b, name = b
	global_par_b=0.3;
% Parameter:   id =  n, name = n
	global_par_n=0.1;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=2.4;
% Parameter:   id =  alpha0, name = alpha0
	global_par_alpha0=0.1;
% Parameter:   id =  Q0, name = Q0
	global_par_Q0=5.0;
% Parameter:   id =  delta_0, name = delta_0
	global_par_delta_0=0.4;
% Parameter:   id =  theta_0, name = theta_0
	global_par_theta_0=1.2;
% Parameter:   id =  delta_1, name = delta_1
	global_par_delta_1=0.02;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.6;
% Parameter:   id =  n1, name = n1
	global_par_n1=0.5;

% Reaction: id = increase_in_the_amount_of_pathogenic_micro_organism, name = increase in the amount of pathogenic micro-organism
	reaction_increase_in_the_amount_of_pathogenic_micro_organism=compartment_compartment*Function_for_increase_in_the_amount_of_pathogenic_micro_organism(global_par_beta, x(1));

% Reaction: id = Decrease_in_the_amount_of_pathogenic_micro_organism, name = Decrease in the amount of pathogenic micro-organism
	reaction_Decrease_in_the_amount_of_pathogenic_micro_organism=compartment_compartment*Function_for_decrease_in_the_amount_of_pathogenic_micro_organism(global_par_gamma, x(2), x(1), global_par_beta0);

% Reaction: id = Increase_of_appropriate_immune_response_with_respect_to_pathogen, name = Increase of appropriate immune response with respect to pathogen
	reaction_Increase_of_appropriate_immune_response_with_respect_to_pathogen=compartment_compartment*Function_for_increase_in_the_immune_response(global_par_mu, global_par_b, x(2), x(1));

% Reaction: id = Reduction_of_immune_response, name = Reduction of immune response
	reaction_Reduction_of_immune_response=compartment_compartment*Function_for_reduction_of_immune_response(global_par_a, x(2), global_par_n, global_par_gamma, x(1), global_par_n1, global_par_k1, x(5));

% Reaction: id = betterment_of_relative_characteristics_of_the_damaged_part_of_the_organ, name = betterment of relative characteristics of the damaged part of the organ
	reaction_betterment_of_relative_characteristics_of_the_damaged_part_of_the_organ=compartment_compartment*Function_for_betterment_of_the_relative_characteristics_of_the_damaged_part_of_the_organ(global_par_alpha, x(1));

% Reaction: id = removal_of_relative_characteristics_of_the_damaged_part_of_the_organ, name = removal of relative characteristics of the damaged part of the organ
	reaction_removal_of_relative_characteristics_of_the_damaged_part_of_the_organ=compartment_compartment*Function_for_decrease_in_the_relative_characteeristics_of_damaged_part_of_the_organ(global_par_alpha0, x(3));

% Reaction: id = Decrease_in_the_concentration_of_toxicant_in_the_environment, name = Decrease in the concentration of toxicant in the environment
	reaction_Decrease_in_the_concentration_of_toxicant_in_the_environment=compartment_compartment*Function_for_decrease_in_the_concentration_of_toxicant_in_the_environment(global_par_delta_0, x(4));

% Reaction: id = Increase_in_the_uptake_concentration_of_toxicant_by_the_body, name = Increase in the uptake concentration of toxicant by the body
	reaction_Increase_in_the_uptake_concentration_of_toxicant_by_the_body=compartment_compartment*Function_for_increase_in_the_uptake_of_toxicant_by_the_body(global_par_theta_0, x(4));

% Reaction: id = Decrease_in_the_uptake_concentration_of_toxcant_by_the_body, name = Decrease in the uptake concentration of toxcant by the body
	reaction_Decrease_in_the_uptake_concentration_of_toxcant_by_the_body=compartment_compartment*Function_for_decrease_in_the_uptake_of_toxicant_by_the_body(global_par_delta_1, x(5), global_par_k1, x(2));

	xdot=zeros(5,1);
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_increase_in_the_amount_of_pathogenic_micro_organism) + (-1.0 * reaction_Decrease_in_the_amount_of_pathogenic_micro_organism));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_of_appropriate_immune_response_with_respect_to_pathogen) + (-1.0 * reaction_Reduction_of_immune_response));
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_betterment_of_relative_characteristics_of_the_damaged_part_of_the_organ) + (-1.0 * reaction_removal_of_relative_characteristics_of_the_damaged_part_of_the_organ));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_the_concentration_of_toxicant_in_the_environment) + (-1.0 * reaction_Decrease_in_the_concentration_of_toxicant_in_the_environment));
	
% Species:   id = U, name = U, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_the_uptake_concentration_of_toxicant_by_the_body) + (-1.0 * reaction_Decrease_in_the_uptake_concentration_of_toxcant_by_the_body));
end

function z=Function_for_betterment_of_the_relative_characteristics_of_the_damaged_part_of_the_organ(alpha,P), z=(alpha*P);end

function z=Function_for_increase_in_the_uptake_of_toxicant_by_the_body(theta_0,T), z=(theta_0*T);end

function z=Function_for_decrease_in_the_uptake_of_toxicant_by_the_body(delta_1,U,k1,I), z=(delta_1*U+k1*U*I);end

function z=Function_for_increase_in_the_amount_of_pathogenic_micro_organism(beta,P), z=(beta*P);end

function z=Function_for_decrease_in_the_amount_of_pathogenic_micro_organism(gamma,I,P,beta0), z=(gamma*I*P+beta0*P*P);end

function z=Function_for_increase_in_the_immune_response(mu,b,I,P), z=(mu+b*I*P);end

function z=Function_for_decrease_in_the_relative_characteeristics_of_damaged_part_of_the_organ(alpha0,M), z=(alpha0*M);end

function z=Function_for_reduction_of_immune_response(a,I,n,gamma,P,n1,k1,U), z=(a*I+n*gamma*I*P+n1*k1*U*I);end

function z=Function_for_decrease_in_the_concentration_of_toxicant_in_the_environment(delta_0,T), z=(delta_0*T);end

function z=Function_for_increase_in_the_concentration_of_toxicant_in_the_environment(Q0), z=(Q0);end

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


