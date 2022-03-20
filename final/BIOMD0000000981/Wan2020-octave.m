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
% Model name = Wan2020 - risk estimation and prediction of the transmission of COVID-19 in maninland China excluding Hubei province
%
% isDescribedBy http://identifiers.org/pubmed/32831142
% is http://identifiers.org/biomodels.db/MODEL2012090001
% is http://identifiers.org/biomodels.db/BIOMD0000000981
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(13) = 0.0;
	x0(14) = 21.0;
	x0(1) = 1.33621E9;
	x0(2) = 501.23;
	x0(3) = 0.22839;
	x0(4) = 991.29;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 2.0;
	x0(8) = 240.76;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 21.0;
	x0(12) = 1.33621173350839E9;


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

% Compartment: id = China, name = China, constant
	compartment_China=1.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.054043;
% Parameter:   id =  c_0, name = c_0
	global_par_c_0=40.319;
% Parameter:   id =  phi, name = phi
	global_par_phi=0.19231;
% Parameter:   id =  theta, name = theta
	global_par_theta=0.6628;
% Parameter:   id =  eta, name = eta
	global_par_eta=17.379;
% Parameter:   id =  gamma_I, name = gamma_I
	global_par_gamma_I=0.15796;
% Parameter:   id =  gamma_A, name = gamma_A
	global_par_gamma_A=0.55671;
% Parameter:   id =  gamma_H, name = gamma_H
	global_par_gamma_H=0.035352;
% Parameter:   id =  d, name = d
	global_par_d=5.5888E-4;
% Parameter:   id =  xi, name = xi
	global_par_xi=0.80987;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.07142857;
% Parameter:   id =  q1, name = q1
	global_par_q1=1.0;
% Parameter:   id =  q2, name = q2
	global_par_q2=0.47218;
% Parameter:   id =  q3, name = q3
	global_par_q3=2.6954;
% Parameter:   id =  delta, name = delta
	global_par_delta=2.8286E-4;
% Parameter:   id =  c_t, name = c_t
% Parameter:   id =  q_1_t, name = q_1_t
% assignmentRule: variable = Total_population
	x(12)=x(4)+x(2)+x(3)+x(8)+x(1);
% assignmentRule: variable = q_1_t
	global_par_q_1_t=global_par_q1*exp((-global_par_delta)*x(11));
% assignmentRule: variable = c_t
	global_par_c_t=global_par_c_0*global_par_q_1_t;
% rateRule: variable = Recovered_from_hospitals
x(9) = x(13);
% rateRule: variable = Total_reported_cases
x(11) = x(14);

% Reaction: id = Susceptible_to_Exposed, name = Susceptible_to_Exposed
	reaction_Susceptible_to_Exposed=compartment_China*Rate_Law_for_reaction(global_par_beta, global_par_c_t, x(3), global_par_xi, x(4), x(1), x(12));

% Reaction: id = Susceptible_to_isolated, name = Susceptible_to_isolated
	reaction_Susceptible_to_isolated=compartment_China*Rate_Law_for_reaction_1(global_par_q3, global_par_q2, x(3), global_par_eta, x(6), x(1), x(12));

% Reaction: id = Isolated_to_Susceptible, name = Isolated_to_Susceptible
	reaction_Isolated_to_Susceptible=compartment_China*global_par_mu*x(5);

% Reaction: id = Exposed_to_Infected, name = Exposed_to_Infected
	reaction_Exposed_to_Infected=compartment_China*Rate_Law_for_reaction_3(global_par_theta, global_par_phi, x(2));

% Reaction: id = Exposed_to_Asymptomatic, name = Exposed_to_Asymptomatic
	reaction_Exposed_to_Asymptomatic=compartment_China*Rate_Law_for_reaction_4(global_par_theta, global_par_phi, x(2));

% Reaction: id = Exposed_to_Quarantined, name = Exposed_to_Quarantined
	reaction_Exposed_to_Quarantined=compartment_China*Rate_Law_for_reaction_5(global_par_q3, global_par_q2, x(3), global_par_eta, x(6), x(2), x(12));

% Reaction: id = Infected_to_Hospitalised, name = Infected_to_Hospitalised
	reaction_Infected_to_Hospitalised=compartment_China*global_par_q2*x(3);

% Reaction: id = Infected_to_dead, name = Infected_to_dead
	reaction_Infected_to_dead=compartment_China*global_par_d*x(3);

% Reaction: id = Infected_to_Recovered, name = Infected_to_Recovered
	reaction_Infected_to_Recovered=compartment_China*global_par_gamma_I*x(3);

% Reaction: id = Infected_to_Quarantined, name = Infected_to_Quarantined
	reaction_Infected_to_Quarantined=compartment_China*Rate_Law_for_reaction_5(global_par_q3, global_par_q2, x(3), global_par_eta, x(6), x(3), x(12));

% Reaction: id = Asymptomatic_to_Recovered, name = Asymptomatic_to_Recovered
	reaction_Asymptomatic_to_Recovered=compartment_China*global_par_gamma_A*x(4);

% Reaction: id = Asymptomatic_to_Quarantined, name = Asymptomatic_to_Quarantined
	reaction_Asymptomatic_to_Quarantined=compartment_China*Rate_Law_for_reaction_5(global_par_q3, global_par_q2, x(3), global_par_eta, x(6), x(4), x(12));

% Reaction: id = Quarantined_to_Hospitalised, name = Quarantined_to_Hospitalised
	reaction_Quarantined_to_Hospitalised=compartment_China*global_par_eta*x(6);

% Reaction: id = Hospitalised_to_Deceased, name = Hospitalised_to_Deceased
	reaction_Hospitalised_to_Deceased=compartment_China*global_par_d*x(7);

% Reaction: id = Hospitalised_to_Recovered, name = Hospitalised_to_Recovered
	reaction_Hospitalised_to_Recovered=compartment_China*global_par_gamma_H*x(7);

	xdot=zeros(14,1);
	% rateRule: variable = Recovered_from_hospitals
	xdot(13) = global_par_gamma_H*x(7);
	% rateRule: variable = Total_reported_cases
	xdot(14) = global_par_q2*x(3)+global_par_eta*x(6);
	
% Species:   id = Susceptible, name = Susceptible, affected by kineticLaw
	xdot(1) = (1/(compartment_China))*((-1.0 * reaction_Susceptible_to_Exposed) + (-1.0 * reaction_Susceptible_to_isolated) + ( 1.0 * reaction_Isolated_to_Susceptible));
	
% Species:   id = Exposed, name = Exposed, affected by kineticLaw
	xdot(2) = (1/(compartment_China))*(( 1.0 * reaction_Susceptible_to_Exposed) + (-1.0 * reaction_Exposed_to_Infected) + (-1.0 * reaction_Exposed_to_Asymptomatic) + (-1.0 * reaction_Exposed_to_Quarantined));
	
% Species:   id = Infected, name = Infected, affected by kineticLaw
	xdot(3) = (1/(compartment_China))*(( 1.0 * reaction_Exposed_to_Infected) + (-1.0 * reaction_Infected_to_Hospitalised) + (-1.0 * reaction_Infected_to_dead) + (-1.0 * reaction_Infected_to_Recovered) + (-1.0 * reaction_Infected_to_Quarantined));
	
% Species:   id = Asymptomatic, name = Asymptomatic, affected by kineticLaw
	xdot(4) = (1/(compartment_China))*(( 1.0 * reaction_Exposed_to_Asymptomatic) + (-1.0 * reaction_Asymptomatic_to_Recovered) + (-1.0 * reaction_Asymptomatic_to_Quarantined));
	
% Species:   id = Susceptible_isolated, name = Susceptible_isolated, affected by kineticLaw
	xdot(5) = (1/(compartment_China))*(( 1.0 * reaction_Susceptible_to_isolated) + (-1.0 * reaction_Isolated_to_Susceptible));
	
% Species:   id = Quarantined, name = Quarantined, affected by kineticLaw
	xdot(6) = (1/(compartment_China))*(( 1.0 * reaction_Exposed_to_Quarantined) + ( 1.0 * reaction_Infected_to_Quarantined) + ( 1.0 * reaction_Asymptomatic_to_Quarantined) + (-1.0 * reaction_Quarantined_to_Hospitalised));
	
% Species:   id = Hospitalised, name = Hospitalised, affected by kineticLaw
	xdot(7) = (1/(compartment_China))*(( 1.0 * reaction_Infected_to_Hospitalised) + ( 1.0 * reaction_Quarantined_to_Hospitalised) + (-1.0 * reaction_Hospitalised_to_Deceased) + (-1.0 * reaction_Hospitalised_to_Recovered));
	
% Species:   id = Recovered, name = Recovered, affected by kineticLaw
	xdot(8) = (1/(compartment_China))*(( 1.0 * reaction_Infected_to_Recovered) + ( 1.0 * reaction_Asymptomatic_to_Recovered) + ( 1.0 * reaction_Hospitalised_to_Recovered));
	
% Species:   id = Recovered_from_hospitals, name = Recovered_from_hospitals, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = Deceased, name = Deceased, affected by kineticLaw
	xdot(10) = (1/(compartment_China))*(( 1.0 * reaction_Hospitalised_to_Deceased));
	
% Species:   id = Total_reported_cases, name = Total_reported_cases, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = Total_population, name = Total_population, involved in a rule 	xdot(12) = x(12);
end

function z=Rate_Law_for_reaction(beta,c_t,I,xi,A,S,N), z=(beta*c_t*(I+xi*A)*S/N);end

function z=Rate_Law_for_reaction_4(theta,phi,E), z=((1-theta)*phi*E);end

function z=Rate_Law_for_reaction_5(q_3,q_2,I,eta,Q,E,N), z=(q_3*(q_2*I+eta*Q)*E/N);end

function z=Rate_Law_for_reaction_1(q_3,q_2,I,eta,Q,S,N), z=(q_3*(q_2*I+eta*Q)*S/N);end

function z=Rate_Law_for_reaction_3(theta,phi,E), z=(theta*phi*E);end

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


