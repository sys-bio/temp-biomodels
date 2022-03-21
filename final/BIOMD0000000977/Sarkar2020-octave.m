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
% Model name = Sarkar2020 - SAIR model of COVID-19 transmission with quarantine measures in India
%
% isDescribedBy http://identifiers.org/pubmed/32834603
% is http://identifiers.org/biomodels.db/MODEL2011300001
% is http://identifiers.org/biomodels.db/BIOMD0000000977
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 902654.0;
	x0(2) = 1.0;
	x0(3) = 114.0;
	x0(4) = 10785.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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

% Compartment: id = Wuhan, name = India, constant
	compartment_Wuhan=1.0;
% Parameter:   id =  lambda_s, name = lambda_s
	global_par_lambda_s=0.0;
% Parameter:   id =  beta_s, name = beta_s
	global_par_beta_s=0.8799;
% Parameter:   id =  rho_s, name = rho_s
	global_par_rho_s=0.3199;
% Parameter:   id =  epsilon_s, name = epsilon_s
	global_par_epsilon_s=14.83;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.0;
% Parameter:   id =  m_s, name = m_s
	global_par_m_s=0.04167;
% Parameter:   id =  gamma_a, name = gamma_a
	global_par_gamma_a=0.0168;
% Parameter:   id =  xi_a, name = xi_a
	global_par_xi_a=0.71;
% Parameter:   id =  gamma_i, name = gamma_i
	global_par_gamma_i=0.07151;
% Parameter:   id =  xi_i, name = xi_i
	global_par_xi_i=0.0286;
% Parameter:   id =  xi_q, name = xi_q
	global_par_xi_q=0.13369;
% Parameter:   id =  Total_population, name = Total_population
% Parameter:   id =  Cumulative_cases, name = Cumulative_cases
% assignmentRule: variable = Cumulative_cases
	global_par_Cumulative_cases=x(5);
% assignmentRule: variable = Total_population
	global_par_Total_population=x(3)+x(2)+x(5)+x(6)+x(1)+x(4);

% Reaction: id = Susceptible_to_Susceptible_quarantined, name = Susceptible_to_Susceptible_quarantined
	reaction_Susceptible_to_Susceptible_quarantined=compartment_Wuhan*Rate_Law_for_Susceptible_to_Susceptible_quarantined(global_par_beta_s, global_par_rho_s, global_par_epsilon_s, x(1), x(2), global_par_Total_population);

% Reaction: id = Infected_to_Recovered, name = Infected_to_Recovered
	reaction_Infected_to_Recovered=compartment_Wuhan*global_par_xi_i*x(2);

% Reaction: id = Susceptible_quarantined_to_Susceptible, name = Susceptible_quarantined_to_Susceptible
	reaction_Susceptible_quarantined_to_Susceptible=compartment_Wuhan*global_par_m_s*x(4);

% Reaction: id = Susceptible_to_Deceased, name = Susceptible_to_Deceased
	reaction_Susceptible_to_Deceased=compartment_Wuhan*global_par_delta*x(1);

% Reaction: id = Susceptible_quarantined_to_Deceased, name = Susceptible_quarantined_to_Deceased
	reaction_Susceptible_quarantined_to_Deceased=compartment_Wuhan*global_par_delta*x(4);

% Reaction: id = Susceptible_to_Asymptomatic, name = Susceptible_to_Asymptomatic
	reaction_Susceptible_to_Asymptomatic=compartment_Wuhan*Rate_Law_for_Susceptible_to_Asymptomatic(global_par_beta_s, global_par_rho_s, global_par_epsilon_s, x(1), x(2), global_par_Total_population);

% Reaction: id = Susceptible_to_Infected_quarantined, name = Susceptible_to_Infected_quarantined
	reaction_Susceptible_to_Infected_quarantined=compartment_Wuhan*Rate_Law_for_Susceptible_to_Infected_quarantined(global_par_beta_s, global_par_epsilon_s, global_par_rho_s, x(1), x(2), global_par_Total_population);

% Reaction: id = Asymptomatic_to_Infected, name = Asymptomatic_to_Infected
	reaction_Asymptomatic_to_Infected=compartment_Wuhan*global_par_gamma_a*x(3);

% Reaction: id = Asymptomatic_to_Recovered, name = Asymptomatic_to_Recovered
	reaction_Asymptomatic_to_Recovered=compartment_Wuhan*global_par_xi_a*x(3);

% Reaction: id = Asymptomatic_to_Deceased, name = Asymptomatic_to_Deceased
	reaction_Asymptomatic_to_Deceased=compartment_Wuhan*global_par_delta*x(3);

% Reaction: id = Infected_to_Deceased, name = Infected_to_Deceased
	reaction_Infected_to_Deceased=compartment_Wuhan*global_par_delta*x(2);

% Reaction: id = Infected_to_Infected_quarantined, name = Infected_to_Infected_quarantined
	reaction_Infected_to_Infected_quarantined=compartment_Wuhan*global_par_gamma_i*x(2);

% Reaction: id = Infected_quarantined_to_Recovered, name = Infected_quarantined_to_Recovered
	reaction_Infected_quarantined_to_Recovered=compartment_Wuhan*global_par_xi_q*x(5);

% Reaction: id = Infected_quarantined_to_Deceased, name = Infected_quarantined_to_Deceased
	reaction_Infected_quarantined_to_Deceased=compartment_Wuhan*global_par_delta*x(5);

% Reaction: id = Recovered_to_Deceased, name = Recovered_to_Deceased
	reaction_Recovered_to_Deceased=compartment_Wuhan*global_par_delta*x(6);

	xdot=zeros(6,1);
	
% Species:   id = Susceptible, name = Susceptible, affected by kineticLaw
	xdot(1) = (1/(compartment_Wuhan))*((-1.0 * reaction_Susceptible_to_Susceptible_quarantined) + ( 1.0 * reaction_Susceptible_quarantined_to_Susceptible) + (-1.0 * reaction_Susceptible_to_Deceased) + (-1.0 * reaction_Susceptible_to_Asymptomatic) + (-1.0 * reaction_Susceptible_to_Infected_quarantined));
	
% Species:   id = Infected, name = Infected, affected by kineticLaw
	xdot(2) = (1/(compartment_Wuhan))*((-1.0 * reaction_Infected_to_Recovered) + ( 1.0 * reaction_Asymptomatic_to_Infected) + (-1.0 * reaction_Infected_to_Deceased) + (-1.0 * reaction_Infected_to_Infected_quarantined));
	
% Species:   id = Asymptomatic, name = Asymptomatic, affected by kineticLaw
	xdot(3) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Susceptible_to_Asymptomatic) + (-1.0 * reaction_Asymptomatic_to_Infected) + (-1.0 * reaction_Asymptomatic_to_Recovered) + (-1.0 * reaction_Asymptomatic_to_Deceased));
	
% Species:   id = Susceptible_quarantined, name = Susceptible_quarantined, affected by kineticLaw
	xdot(4) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Susceptible_to_Susceptible_quarantined) + (-1.0 * reaction_Susceptible_quarantined_to_Susceptible) + (-1.0 * reaction_Susceptible_quarantined_to_Deceased));
	
% Species:   id = Exposed_quarantined, name = Infected_quarantined, affected by kineticLaw
	xdot(5) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Susceptible_to_Infected_quarantined) + ( 1.0 * reaction_Infected_to_Infected_quarantined) + (-1.0 * reaction_Infected_quarantined_to_Recovered) + (-1.0 * reaction_Infected_quarantined_to_Deceased));
	
% Species:   id = Recovered, name = Recovered, affected by kineticLaw
	xdot(6) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Infected_to_Recovered) + ( 1.0 * reaction_Asymptomatic_to_Recovered) + ( 1.0 * reaction_Infected_quarantined_to_Recovered) + (-1.0 * reaction_Recovered_to_Deceased));
end

function z=Rate_Law_for_Susceptible_to_Susceptible_quarantined(beta_s,rho_s,epsilon_s,S,I,n), z=(rho_s*(1-beta_s)*epsilon_s*S*I/n);end

function z=Rate_Law_for_Susceptible_to_Infected_quarantined(beta_s,epsilon_S,rho_s,S,I,n), z=(beta_s*epsilon_S*rho_s*S*I/n);end

function z=Rate_Law_for_Susceptible_to_Asymptomatic(beta_s,rho_s,epsilon_s,S,I,n), z=(beta_s*(1-rho_s)*epsilon_s*S*I/n);end

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


