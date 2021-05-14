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
% Model name = Tang2020 - Estimation of transmission risk of COVID-19 and impact of public health interventions - update
%
% isDerivedFrom http://identifiers.org/doid/DOID:0080600
% isDerivedFrom http://identifiers.org/mamo/MAMO_0000046
% isDerivedFrom http://identifiers.org/mamo/MAMO_0000028
% isDerivedFrom http://identifiers.org/taxonomy/2697049
% isDerivedFrom http://identifiers.org/taxonomy/9606
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000971
% isDescribedBy http://identifiers.org/pubmed/32099934
% is http://identifiers.org/biomodels.db/MODEL2011030001
% is http://identifiers.org/biomodels.db/BIOMD0000000972
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 1.1081E7;
	x0(2) = 23382.3126079714;
	x0(3) = 2200.0;
	x0(4) = 531.176;
	x0(5) = 163804.0;
	x0(6) = 0.378022;
	x0(7) = 515.168;
	x0(8) = 1898.36;


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

% Compartment: id = Wuhan, name = Wuhan, constant
	compartment_Wuhan=1.0;
% Parameter:   id =  c, name = c
% Parameter:   id =  beta, name = beta
	global_par_beta=2.1011E-8;
% Parameter:   id =  q, name = q
	global_par_q=1.2858E-5;
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=0.142857;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=0.0714285;
% Parameter:   id =  rho, name = rho
	global_par_rho=0.86834;
% Parameter:   id =  delta_I, name = delta_I
% Parameter:   id =  delta_q, name = delta_q
	global_par_delta_q=0.1259;
% Parameter:   id =  gamma_I, name = gamma_I
	global_par_gamma_I=0.33029;
% Parameter:   id =  gamma_A, name = gamma_A
	global_par_gamma_A=0.13978;
% Parameter:   id =  gamma_H, name = gamma_H
	global_par_gamma_H=0.11624;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=1.7826E-5;
% Parameter:   id =  theta, name = theta
	global_par_theta=1.0;
% Parameter:   id =  c_lockdown, name = c_lockdown
	global_par_c_lockdown=14.781;
% Parameter:   id =  q_lockdown, name = q_lockdown
	global_par_q_lockdown=1.2858E-5;
% Parameter:   id =  Infected_0, name = Infected
% Parameter:   id =  c_0, name = c_0
	global_par_c_0=14.781;
% Parameter:   id =  c_b, name = c_b
	global_par_c_b=2.9253;
% Parameter:   id =  r_1, name = r_1
	global_par_r_1=1.3768;
% Parameter:   id =  r_2, name = r_2
	global_par_r_2=0.3283;
% Parameter:   id =  delta_I_0, name = delta_I_0
	global_par_delta_I_0=0.13266;
% Parameter:   id =  delta_I_f, name = delta_I_f
	global_par_delta_I_f=2.7367;
% assignmentRule: variable = c
	global_par_c=(global_par_c_0-global_par_c_b)*exp((-global_par_r_1)*time)+global_par_c_b;
% assignmentRule: variable = delta_I
	global_par_delta_I=global_par_delta_I_f*global_par_delta_I_0/((global_par_delta_I_f-global_par_delta_I_0)*exp((-global_par_r_2)*time)+global_par_delta_I_0);
% assignmentRule: variable = Infected_0
	global_par_Infected_0=x(3)+x(4);

% Reaction: id = Susceptible_to_Exposed, name = Susceptible_to_Exposed
	reaction_Susceptible_to_Exposed=compartment_Wuhan*Rate_Law_for_reaction(global_par_beta, global_par_c, x(1), x(3), global_par_theta, x(4), global_par_q);

% Reaction: id = Susceptible_to_Susceptible_quarantined, name = Susceptible_to_Susceptible_quarantined
	reaction_Susceptible_to_Susceptible_quarantined=compartment_Wuhan*Rate_Law_for_reaction_1(global_par_c, global_par_q, global_par_beta, x(1), x(3), global_par_theta, x(4));

% Reaction: id = Quarantined_to_Susceptible, name = Quarantined_to_Susceptible
	reaction_Quarantined_to_Susceptible=compartment_Wuhan*global_par_lambda*x(5);

% Reaction: id = Exposed_to_Infected, name = Exposed_to_Infected
	reaction_Exposed_to_Infected=compartment_Wuhan*Rate_Law_for_reaction_3(global_par_sigma, global_par_rho, x(2));

% Reaction: id = Exposed_to_Asymptomatic, name = Exposed_to_Asymptomatic
	reaction_Exposed_to_Asymptomatic=compartment_Wuhan*Rate_Law_for_reaction_4(global_par_sigma, global_par_rho, x(2));

% Reaction: id = Infected_to_Hospitalised, name = Infected_to_Hospitalised
	reaction_Infected_to_Hospitalised=compartment_Wuhan*global_par_delta_I*x(3);

% Reaction: id = Infected_to_Recovered, name = Infected_to_Recovered
	reaction_Infected_to_Recovered=compartment_Wuhan*global_par_gamma_I*x(3);

% Reaction: id = Asymptomatic_to_Recovered, name = Asymptomatic_to_Recovered
	reaction_Asymptomatic_to_Recovered=compartment_Wuhan*global_par_gamma_A*x(4);

% Reaction: id = Hospitalised_to_Recovered, name = Hospitalised_to_Recovered
	reaction_Hospitalised_to_Recovered=compartment_Wuhan*global_par_gamma_H*x(7);

% Reaction: id = Infected_to_Deceased, name = Infected_to_Deceased
	reaction_Infected_to_Deceased=compartment_Wuhan*global_par_alpha*x(3);

% Reaction: id = Hospitalised_to_Deceased, name = Hospitalised_to_Deceased
	reaction_Hospitalised_to_Deceased=compartment_Wuhan*global_par_alpha*x(7);

% Reaction: id = Susceptible_to_Exposed_quarantined, name = Susceptible_to_Exposed_quarantined
	reaction_Susceptible_to_Exposed_quarantined=compartment_Wuhan*Rate_Law_for_reaction_11(global_par_beta, global_par_c, global_par_q, x(1), x(3), global_par_theta, x(4));

% Reaction: id = Exposed_quarantined_to_Hospitalised, name = Exposed_quarantined_to_Hospitalised
	reaction_Exposed_quarantined_to_Hospitalised=compartment_Wuhan*global_par_delta_q*x(6);

	xdot=zeros(8,1);
	
% Species:   id = Susceptible, name = Susceptible, affected by kineticLaw
	xdot(1) = (1/(compartment_Wuhan))*((-1.0 * reaction_Susceptible_to_Exposed) + (-1.0 * reaction_Susceptible_to_Susceptible_quarantined) + ( 1.0 * reaction_Quarantined_to_Susceptible) + (-1.0 * reaction_Susceptible_to_Exposed_quarantined));
	
% Species:   id = Exposed, name = Exposed, affected by kineticLaw
	xdot(2) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Susceptible_to_Exposed) + (-1.0 * reaction_Exposed_to_Infected) + (-1.0 * reaction_Exposed_to_Asymptomatic));
	
% Species:   id = Infected, name = Infected, affected by kineticLaw
	xdot(3) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Exposed_to_Infected) + (-1.0 * reaction_Infected_to_Hospitalised) + (-1.0 * reaction_Infected_to_Recovered) + (-1.0 * reaction_Infected_to_Deceased));
	
% Species:   id = Asymptomatic, name = Asymptomatic, affected by kineticLaw
	xdot(4) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Exposed_to_Asymptomatic) + (-1.0 * reaction_Asymptomatic_to_Recovered));
	
% Species:   id = Susceptible_quarantined, name = Susceptible_quarantined, affected by kineticLaw
	xdot(5) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Susceptible_to_Susceptible_quarantined) + (-1.0 * reaction_Quarantined_to_Susceptible));
	
% Species:   id = Exposed_quarantined, name = Exposed_quarantined, affected by kineticLaw
	xdot(6) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Susceptible_to_Exposed_quarantined) + (-1.0 * reaction_Exposed_quarantined_to_Hospitalised));
	
% Species:   id = Hospitalised, name = Hospitalised, affected by kineticLaw
	xdot(7) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Infected_to_Hospitalised) + (-1.0 * reaction_Hospitalised_to_Recovered) + (-1.0 * reaction_Hospitalised_to_Deceased) + ( 1.0 * reaction_Exposed_quarantined_to_Hospitalised));
	
% Species:   id = Recovered, name = Recovered, affected by kineticLaw
	xdot(8) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Infected_to_Recovered) + ( 1.0 * reaction_Asymptomatic_to_Recovered) + ( 1.0 * reaction_Hospitalised_to_Recovered));
end

function z=Rate_Law_for_reaction_4(sigma,rho,E), z=(sigma*(1-rho)*E);end

function z=Rate_Law_for_reaction_3(sigma,rho,E), z=(sigma*rho*E);end

function z=Rate_Law_for_reaction(beta,c,S,I,theta,A,q), z=(beta*c*(1-q)*S*(I+theta*A));end

function z=Rate_Law_for_reaction_1(c,q,beta,S,I,theta,A), z=(c*q*(1-beta)*S*(I+theta*A));end

function z=Rate_Law_for_reaction_11(beta,c,q,S,I,theta,A), z=(beta*c*q*S*(I+theta*A));end

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


