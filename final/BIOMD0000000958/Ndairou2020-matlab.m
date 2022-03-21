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
% Model name = Ndairou2020 - early-stage transmission dynamics of COVID-19 in Wuhan
%
% isDescribedBy http://identifiers.org/pubmed/32341628
% is http://identifiers.org/biomodels.db/MODEL2008140001
% is http://identifiers.org/biomodels.db/BIOMD0000000958
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 43994.0;
	x0(2) = 0.0;
	x0(3) = 1.0;
	x0(4) = 5.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;


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

% Compartment: id = Wuhan, name = Wuhan, constant
	compartment_Wuhan=1.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=2.8;
% Parameter:   id =  beta_prime, name = beta_prime
	global_par_beta_prime=7.65;
% Parameter:   id =  rho1, name = rho1
	global_par_rho1=0.58;
% Parameter:   id =  rho2, name = rho2
	global_par_rho2=0.001;
% Parameter:   id =  l, name = l
	global_par_l=1.56;
% Parameter:   id =  kappa, name = kappa
	global_par_kappa=0.25;
% Parameter:   id =  gamma_a, name = gamma_a
	global_par_gamma_a=0.94;
% Parameter:   id =  gamma_i, name = gamma_i
	global_par_gamma_i=0.27;
% Parameter:   id =  gamma_r, name = gamma_r
	global_par_gamma_r=0.5;
% Parameter:   id =  delta_i, name = delta_i
	global_par_delta_i=0.035;
% Parameter:   id =  delta_p, name = delta_p
	global_par_delta_p=1.0;
% Parameter:   id =  delta_h, name = delta_h
	global_par_delta_h=0.085;
% Parameter:   id =  N, name = N
	global_par_N=44000.0;
% Parameter:   id =  Confimed_cases, name = Confimed_cases
% assignmentRule: variable = Confimed_cases
	global_par_Confimed_cases=x(3)+x(4)+x(6);

% Reaction: id = Susceptible_to_Exposed, name = Susceptible_to_Exposed
	reaction_Susceptible_to_Exposed=compartment_Wuhan*Rate_Law_for_R1(global_par_beta, x(3), x(1), global_par_N, global_par_l, x(6), global_par_beta_prime, x(4));

% Reaction: id = Exposed_to_Asymptomatic, name = Exposed_to_Asymptomatic
	reaction_Exposed_to_Asymptomatic=compartment_Wuhan*Rate_Law_for_R2(global_par_kappa, global_par_rho1, global_par_rho2, x(2));

% Reaction: id = Exposed_to_Superspreaders, name = Exposed_to_Superspreaders
	reaction_Exposed_to_Superspreaders=compartment_Wuhan*Rate_Law_for_R3(global_par_kappa, global_par_rho2, x(2));

% Reaction: id = Exposed_to_Infectious, name = Exposed_to_Infectious
	reaction_Exposed_to_Infectious=compartment_Wuhan*Rate_Law_for_R4(global_par_kappa, global_par_rho1, x(2));

% Reaction: id = Superspreaders_to_Fatalities, name = Superspreaders_to_Fatalities
	reaction_Superspreaders_to_Fatalities=compartment_Wuhan*global_par_delta_p*x(4);

% Reaction: id = Superspreaders_to_Hospitalised, name = Superspreaders_to_Hospitalised
	reaction_Superspreaders_to_Hospitalised=compartment_Wuhan*global_par_gamma_a*x(4);

% Reaction: id = Superspreaders_to_Recovered, name = Superspreaders_to_Recovered
	reaction_Superspreaders_to_Recovered=compartment_Wuhan*global_par_gamma_i*x(4);

% Reaction: id = Infectious_to_Fatalities, name = Infectious_to_Fatalities
	reaction_Infectious_to_Fatalities=compartment_Wuhan*global_par_delta_i*x(3);

% Reaction: id = Infectious_to_Hospitalised, name = Infectious_to_Hospitalised
	reaction_Infectious_to_Hospitalised=compartment_Wuhan*global_par_gamma_a*x(3);

% Reaction: id = Infectious_To_Recovered, name = Infectious_To_Recovered
	reaction_Infectious_To_Recovered=compartment_Wuhan*global_par_gamma_i*x(3);

% Reaction: id = Hospitalised_to_Recovered, name = Hospitalised_to_Recovered
	reaction_Hospitalised_to_Recovered=compartment_Wuhan*global_par_gamma_r*x(6);

% Reaction: id = Hospitalised_to_Fatalities, name = Hospitalised_to_Fatalities
	reaction_Hospitalised_to_Fatalities=compartment_Wuhan*global_par_delta_h*x(6);

	xdot=zeros(8,1);
	
% Species:   id = Susceptible, name = Susceptible, affected by kineticLaw
	xdot(1) = (1/(compartment_Wuhan))*((-1.0 * reaction_Susceptible_to_Exposed));
	
% Species:   id = Exposed, name = Exposed, affected by kineticLaw
	xdot(2) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Susceptible_to_Exposed) + (-1.0 * reaction_Exposed_to_Asymptomatic) + (-1.0 * reaction_Exposed_to_Superspreaders) + (-1.0 * reaction_Exposed_to_Infectious));
	
% Species:   id = Infectious, name = Infectious, affected by kineticLaw
	xdot(3) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Exposed_to_Infectious) + (-1.0 * reaction_Infectious_to_Fatalities) + (-1.0 * reaction_Infectious_to_Hospitalised) + (-1.0 * reaction_Infectious_To_Recovered));
	
% Species:   id = Super_spreaders, name = Super_spreaders, affected by kineticLaw
	xdot(4) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Exposed_to_Superspreaders) + (-1.0 * reaction_Superspreaders_to_Fatalities) + (-1.0 * reaction_Superspreaders_to_Hospitalised) + (-1.0 * reaction_Superspreaders_to_Recovered));
	
% Species:   id = Asymptomatic, name = Asymptomatic, affected by kineticLaw
	xdot(5) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Exposed_to_Asymptomatic));
	
% Species:   id = Hospitalised, name = Hospitalised, affected by kineticLaw
	xdot(6) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Superspreaders_to_Hospitalised) + ( 1.0 * reaction_Infectious_to_Hospitalised) + (-1.0 * reaction_Hospitalised_to_Recovered) + (-1.0 * reaction_Hospitalised_to_Fatalities));
	
% Species:   id = Recovered, name = Recovered, affected by kineticLaw
	xdot(7) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Superspreaders_to_Recovered) + ( 1.0 * reaction_Infectious_To_Recovered) + ( 1.0 * reaction_Hospitalised_to_Recovered));
	
% Species:   id = Fatalities, name = Fatalities, affected by kineticLaw
	xdot(8) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Superspreaders_to_Fatalities) + ( 1.0 * reaction_Infectious_to_Fatalities) + ( 1.0 * reaction_Hospitalised_to_Fatalities));
end

function z=Rate_Law_for_R4(kappa,rho1,E), z=(kappa*rho1*E);end

function z=Rate_Law_for_R3(kappa,rho2,E), z=(kappa*rho2*E);end

function z=Rate_Law_for_R1(beta,I,S,N,l,H,beta_prime,P), z=(beta*I*S/N+l*beta*H*S/N+beta_prime*P*S/N);end

function z=Rate_Law_for_R2(kappa,rho1,rho2,E), z=(kappa*(1-rho1-rho2)*E);end

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


