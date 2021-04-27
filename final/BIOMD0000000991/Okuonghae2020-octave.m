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
% Model name = Okuonghae2020 - SEAIR model of COVID-19 transmission in Lagos, Nigeria
%
% isDescribedBy http://identifiers.org/pubmed/32834593
% is http://identifiers.org/biomodels.db/MODEL2102180001
% is http://identifiers.org/biomodels.db/BIOMD0000000991
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 1.4367982E7;
	x0(2) = 441.0;
	x0(3) = 188.0;
	x0(4) = 212.0;
	x0(5) = 1.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 1.4368824E7;
	x0(9) = 1.0;


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

% Compartment: id = Lagos, name = Lagos, constant
	compartment_Lagos=1.0;
% Parameter:   id =  transmission_rate_effective, name = transmission_rate_effective
	global_par_transmission_rate_effective=0.4236;
% Parameter:   id =  gamma_a, name = gamma_a
	global_par_gamma_a=0.13978;
% Parameter:   id =  gamma_0, name = gamma_0
	global_par_gamma_0=0.13978;
% Parameter:   id =  gamma_i, name = gamma_i
	global_par_gamma_i=0.0666666666666667;
% Parameter:   id =  psi, name = psi
	global_par_psi=0.0135;
% Parameter:   id =  theta, name = theta
	global_par_theta=1.8999E-12;
% Parameter:   id =  d_0, name = d_0
	global_par_d_0=0.015;
% Parameter:   id =  d_D, name = d_D
	global_par_d_D=0.015;
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=0.192307692307692;
% Parameter:   id =  nu, name = nu
	global_par_nu=0.5;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.5;
% Parameter:   id =  eps, name = eps
	global_par_eps=0.0;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.0;
% Parameter:   id =  lam, name = lam
% Parameter:   id =  exposed_start, name = exposed_start
	global_par_exposed_start=441.0;
% Parameter:   id =  asymptomatic_start, name = asymptomatic_start
	global_par_asymptomatic_start=188.0;
% Parameter:   id =  symptomatic_start, name = symptomatic_start
	global_par_symptomatic_start=212.0;
% assignmentRule: variable = total_pop
	x(8)=x(3)+x(5)+x(2)+x(6)+x(1)+x(4);
% assignmentRule: variable = lam
	global_par_lam=global_par_transmission_rate_effective*(1-global_par_eps)*(1-global_par_delta)*(global_par_alpha*x(3)+x(4))/(x(8)-x(5));

% Reaction: id = susceptible_to_exposed, name = susceptible_to_exposed
	reaction_susceptible_to_exposed=compartment_Lagos*global_par_lam*x(1);

% Reaction: id = exposed_to_symptomatic, name = exposed_to_symptomatic
	reaction_exposed_to_symptomatic=compartment_Lagos*Rate_Law_for_exposed_to_symptomatic(global_par_sigma, global_par_nu, x(2));

% Reaction: id = exposed_to_asymptopmatic, name = exposed_to_asymptopmatic
	reaction_exposed_to_asymptopmatic=compartment_Lagos*Rate_Law_for_exposed_to_asymptopmatic(global_par_sigma, global_par_nu, x(2));

% Reaction: id = symptomatic_to_detected, name = symptomatic_to_detected
	reaction_symptomatic_to_detected=compartment_Lagos*global_par_psi*x(4);

% Reaction: id = asymptomatic_to_detected, name = asymptomatic_to_detected
	reaction_asymptomatic_to_detected=compartment_Lagos*global_par_theta*x(3);

% Reaction: id = symptomatic_to_recovered, name = symptomatic_to_recovered
	reaction_symptomatic_to_recovered=compartment_Lagos*global_par_gamma_0*x(4);

% Reaction: id = asymptomatic_to_recovered, name = asymptomatic_to_recovered
	reaction_asymptomatic_to_recovered=compartment_Lagos*global_par_gamma_a*x(3);

% Reaction: id = detected_to_recovered, name = detected_to_recovered
	reaction_detected_to_recovered=compartment_Lagos*global_par_gamma_i*x(5);

% Reaction: id = symptomatic_to_deceased, name = symptomatic_to_deceased
	reaction_symptomatic_to_deceased=compartment_Lagos*global_par_d_0*x(4);

% Reaction: id = detected_to_deceased, name = detected_to_deceased
	reaction_detected_to_deceased=compartment_Lagos*global_par_d_D*x(5);

	xdot=zeros(9,1);
	
% Species:   id = susceptible, name = susceptible, affected by kineticLaw
	xdot(1) = (1/(compartment_Lagos))*((-1.0 * reaction_susceptible_to_exposed));
	
% Species:   id = exposed, name = exposed, affected by kineticLaw
	xdot(2) = (1/(compartment_Lagos))*(( 1.0 * reaction_susceptible_to_exposed) + (-1.0 * reaction_exposed_to_symptomatic) + (-1.0 * reaction_exposed_to_asymptopmatic));
	
% Species:   id = asymptomatic, name = asymptomatic, affected by kineticLaw
	xdot(3) = (1/(compartment_Lagos))*(( 1.0 * reaction_exposed_to_asymptopmatic) + (-1.0 * reaction_asymptomatic_to_detected) + (-1.0 * reaction_asymptomatic_to_recovered));
	
% Species:   id = symptomatic, name = symptomatic, affected by kineticLaw
	xdot(4) = (1/(compartment_Lagos))*(( 1.0 * reaction_exposed_to_symptomatic) + (-1.0 * reaction_symptomatic_to_detected) + (-1.0 * reaction_symptomatic_to_recovered) + (-1.0 * reaction_symptomatic_to_deceased));
	
% Species:   id = detected, name = detected, affected by kineticLaw
	xdot(5) = (1/(compartment_Lagos))*(( 1.0 * reaction_symptomatic_to_detected) + ( 1.0 * reaction_asymptomatic_to_detected) + (-1.0 * reaction_detected_to_recovered) + (-1.0 * reaction_detected_to_deceased));
	
% Species:   id = recovered, name = recovered, affected by kineticLaw
	xdot(6) = (1/(compartment_Lagos))*(( 1.0 * reaction_symptomatic_to_recovered) + ( 1.0 * reaction_asymptomatic_to_recovered) + ( 1.0 * reaction_detected_to_recovered));
	
% Species:   id = deceased, name = deceased, affected by kineticLaw
	xdot(7) = (1/(compartment_Lagos))*(( 1.0 * reaction_symptomatic_to_deceased) + ( 1.0 * reaction_detected_to_deceased));
	
% Species:   id = total_pop, name = total_pop, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = detected_cumulative, name = detected_cumulative, affected by kineticLaw
	xdot(9) = (1/(compartment_Lagos))*(( 1.0 * reaction_symptomatic_to_detected) + ( 1.0 * reaction_asymptomatic_to_detected));
end

function z=Rate_Law_for_exposed_to_asymptopmatic(k1,k2,substrate), z=(k1*k2*substrate);end

function z=Rate_Law_for_exposed_to_symptomatic(k1,k2,substrate), z=(k1*(1-k2)*substrate);end

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


