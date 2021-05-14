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
% Model name = Mwalili2020 - SEIR model of COVID-19 transmission and environmental pathogen prevalence
%
% isDescribedBy http://identifiers.org/pubmed/32703315
% is http://identifiers.org/biomodels.db/MODEL2009210004
% is http://identifiers.org/biomodels.db/BIOMD0000000964
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 93000.0;
	x0(2) = 1000.0;
	x0(3) = 50.0;
	x0(4) = 50.0;
	x0(5) = 0.0;
	x0(6) = 500.0;


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

% Compartment: id = Human, name = Human, constant
	compartment_Human=1.0;
% Compartment: id = Pathogen, name = Pathogen, constant
	compartment_Pathogen=1.0;
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=0.1;
% Parameter:   id =  alpha_2, name = alpha_2
	global_par_alpha_2=0.1;
% Parameter:   id =  b, name = b
	global_par_b=1.8E-4;
% Parameter:   id =  mu, name = mu
	global_par_mu=4.563E-5;
% Parameter:   id =  mu_p, name = mu_p
	global_par_mu_p=0.1724;
% Parameter:   id =  beta_1, name = beta_1
	global_par_beta_1=0.00414;
% Parameter:   id =  beta_2, name = beta_2
	global_par_beta_2=0.0115;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.7;
% Parameter:   id =  psi, name = psi
	global_par_psi=0.005;
% Parameter:   id =  omega, name = omega
	global_par_omega=0.09;
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=0.0018;
% Parameter:   id =  gamma_S, name = gamma_S
	global_par_gamma_S=0.05;
% Parameter:   id =  gamma_A, name = gamma_A
	global_par_gamma_A=0.0714;
% Parameter:   id =  eta_S, name = eta_S
	global_par_eta_S=0.1;
% Parameter:   id =  eta_A, name = eta_A
	global_par_eta_A=0.05;

% Reaction: id = Exposed_to_Susceptible, name = Exposed_to_Susceptible
	reaction_Exposed_to_Susceptible=compartment_Human*global_par_psi*x(2);

% Reaction: id = Susceptible_to_Exposed, name = Susceptible_to_Exposed
	reaction_Susceptible_to_Exposed=Rate_Law_for_reaction_2(global_par_beta_1, x(1), x(6), global_par_alpha_1, global_par_beta_2, x(4), x(3), global_par_alpha_2);

% Reaction: id = Death_rate_Susceptible, name = Death_rate_Susceptible
	reaction_Death_rate_Susceptible=compartment_Human*global_par_mu*x(1);

% Reaction: id = Death_rate_Exposed, name = Death_rate_Exposed
	reaction_Death_rate_Exposed=compartment_Human*global_par_mu*x(2);

% Reaction: id = Symptomatic_infection_from_Exposed, name = Symptomatic_infection_from_Exposed
	reaction_Symptomatic_infection_from_Exposed=compartment_Human*Rate_Law_for_reaction_5(global_par_delta, global_par_omega, x(2));

% Reaction: id = Asymptomatic_infection_from_Exposed, name = Asymptomatic_infection_from_Exposed
	reaction_Asymptomatic_infection_from_Exposed=compartment_Human*Rate_Law_for_reaction_6(global_par_delta, global_par_omega, x(2));

% Reaction: id = Death_rate_Symptomatic_infected, name = Death_rate_Symptomatic_infected
	reaction_Death_rate_Symptomatic_infected=compartment_Human*Rate_Law_for_reaction_7(global_par_mu, global_par_sigma, x(3));

% Reaction: id = Death_rate_Asymptomatic_infected, name = Death_rate_Asymptomatic_infected
	reaction_Death_rate_Asymptomatic_infected=compartment_Human*Rate_Law_for_reaction_7(global_par_mu, global_par_sigma, x(4));

% Reaction: id = Recovery_from_Symptomatic_infection, name = Recovery_from_Symptomatic_infection
	reaction_Recovery_from_Symptomatic_infection=compartment_Human*global_par_gamma_S*x(3);

% Reaction: id = Recovery_from_Asymptomatic_infection, name = Recovery_from_Asymptomatic_infection
	reaction_Recovery_from_Asymptomatic_infection=compartment_Human*global_par_gamma_A*x(4);

% Reaction: id = Death_rate_Recovered, name = Death_rate_Recovered
	reaction_Death_rate_Recovered=compartment_Human*global_par_mu*x(5);

% Reaction: id = Rate_of_pathogen_increase, name = Rate_of_pathogen_increase
	reaction_Rate_of_pathogen_increase=Rate_Law_for_reaction_12(global_par_eta_A, x(4), global_par_eta_S, x(3));

% Reaction: id = Death_rate_of_Pathogen, name = Death_rate_of_Pathogen
	reaction_Death_rate_of_Pathogen=compartment_Pathogen*global_par_mu_p*x(6);

	xdot=zeros(6,1);
	
% Species:   id = Susceptible, name = Susceptible, affected by kineticLaw
	xdot(1) = (1/(compartment_Human))*(( 1.0 * reaction_Birth_Rate) + ( 1.0 * reaction_Exposed_to_Susceptible) + (-1.0 * reaction_Susceptible_to_Exposed) + (-1.0 * reaction_Death_rate_Susceptible));
	
% Species:   id = Exposed, name = Exposed, affected by kineticLaw
	xdot(2) = (1/(compartment_Human))*((-1.0 * reaction_Exposed_to_Susceptible) + ( 1.0 * reaction_Susceptible_to_Exposed) + (-1.0 * reaction_Death_rate_Exposed) + (-1.0 * reaction_Symptomatic_infection_from_Exposed) + (-1.0 * reaction_Asymptomatic_infection_from_Exposed));
	
% Species:   id = Infected_Symptomatic, name = Infected_Symptomatic, affected by kineticLaw
	xdot(3) = (1/(compartment_Human))*(( 1.0 * reaction_Symptomatic_infection_from_Exposed) + (-1.0 * reaction_Death_rate_Symptomatic_infected) + (-1.0 * reaction_Recovery_from_Symptomatic_infection));
	
% Species:   id = Infected_Asymptomatic, name = Infected_Asymptomatic, affected by kineticLaw
	xdot(4) = (1/(compartment_Human))*(( 1.0 * reaction_Asymptomatic_infection_from_Exposed) + (-1.0 * reaction_Death_rate_Asymptomatic_infected) + (-1.0 * reaction_Recovery_from_Asymptomatic_infection));
	
% Species:   id = Recovered, name = Recovered, affected by kineticLaw
	xdot(5) = (1/(compartment_Human))*(( 1.0 * reaction_Recovery_from_Symptomatic_infection) + ( 1.0 * reaction_Recovery_from_Asymptomatic_infection) + (-1.0 * reaction_Death_rate_Recovered));
	
% Species:   id = Pathogen_0, name = Pathogen, affected by kineticLaw
	xdot(6) = (1/(compartment_Pathogen))*(( 1.0 * reaction_Rate_of_pathogen_increase) + (-1.0 * reaction_Death_rate_of_Pathogen));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Rate_Law_for_reaction_2(beta_1,S,P,alpha_1,beta_2,I_A,I_S,alpha_2), z=(beta_1*S*P/(1+alpha_1*P)+beta_2*S*(I_A+I_S)/(1+alpha_2*(I_A+I_S)));end

function z=Rate_Law_for_reaction_7(mu,sigma,I_S), z=((mu+sigma)*I_S);end

function z=Rate_Law_for_reaction_5(delta,omega,E), z=(delta*omega*E);end

function z=Rate_Law_for_reaction_12(eta_A,I_A,eta_S,I_S), z=(eta_A*I_A+eta_S*I_S);end

function z=Rate_Law_for_reaction_6(delta,omega,E), z=((1-delta)*omega*E);end

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


