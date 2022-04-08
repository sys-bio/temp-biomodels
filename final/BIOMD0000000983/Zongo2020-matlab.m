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
% Model name = Zongo2020 - model of COVID-19 transmission dynamics under containment measures in France
%
% isDescribedBy http://identifiers.org/pubmed/32958091
% is http://identifiers.org/biomodels.db/MODEL2101150002
% is http://identifiers.org/biomodels.db/BIOMD0000000983
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 0.0;
	x0(2) = 6.699E7;
	x0(3) = 112.0;
	x0(4) = 12.0;
	x0(5) = 50.0;
	x0(6) = 0.0;
	x0(7) = 36.0;


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

% Compartment: id = _1, name = France, constant
	compartment__1=1.0;
% Parameter:   id =  p, name = p
	global_par_p=0.93;
% Parameter:   id =  f, name = f
	global_par_f=0.2;
% Parameter:   id =  n, name = n
	global_par_n=0.5;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=0.3;
% Parameter:   id =  q, name = q
	global_par_q=0.83;
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=0.2;
% Parameter:   id =  beta, name = beta
	global_par_beta=2.115E-8;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.2;
% Parameter:   id =  eta_r, name = eta_r
	global_par_eta_r=0.1;
% Parameter:   id =  eta_u, name = eta_u
	global_par_eta_u=0.25;
% Parameter:   id =  theta, name = theta
	global_par_theta=0.07142857;
% Parameter:   id =  m_t, name = m_t
% Parameter:   id =  tau_1, name = tau_1
	global_par_tau_1=21.0;
% Parameter:   id =  tau_2, name = tau_2
	global_par_tau_2=47.0;
% Parameter:   id =  tau_3, name = tau_3
	global_par_tau_3=76.0;
% Parameter:   id =  tau_f, name = tau_f
	global_par_tau_f=189.0;
% Parameter:   id =  a, name = a
% Parameter:   id =  b, name = b
% Parameter:   id =  m_t_phase_1, name = trigger_phase_1
	global_par_m_t_phase_1=0.0;
% Parameter:   id =  m_t_phase_2, name = trigger_phase_2
	global_par_m_t_phase_2=0.0;
% Parameter:   id =  m_t_phase_3, name = trigger_phase_3
	global_par_m_t_phase_3=0.0;
% assignmentRule: variable = b
	global_par_b=(-global_par_p)/(global_par_tau_f-global_par_tau_3);
% assignmentRule: variable = a
	global_par_a=(-log(1-global_par_p))/(global_par_tau_2-global_par_tau_1);
% assignmentRule: variable = m_t
	global_par_m_t=0+global_par_m_t_phase_1*(1-exp((-global_par_a)*(time-global_par_tau_1)))+global_par_m_t_phase_2*global_par_p+global_par_m_t_phase_3*(global_par_p+global_par_b*(time-global_par_tau_3));

% Reaction: id = reaction, name = Susceptible_confined_to_Susceptible_unconfined
	reaction_reaction=compartment__1*Rate_Law_for_reaction(global_par_m_t, x(1));

% Reaction: id = reaction_1, name = Susceptible_unconfined_to_Susceptible_confined
	reaction_reaction_1=compartment__1*global_par_m_t*x(2);

% Reaction: id = reaction_2, name = Susceptible_unconfined_to_Exposed
	reaction_reaction_2=compartment__1*Rate_Law_for_reaction_2(global_par_sigma, global_par_beta, global_par_n, x(4), x(5), x(2));

% Reaction: id = reaction_3, name = Susceptible_unconfined_to_Quarantined
	reaction_reaction_3=compartment__1*Rate_Law_for_reaction_3(global_par_sigma, global_par_beta, global_par_n, x(4), x(5), x(2));

% Reaction: id = reaction_4, name = Quarantined_to_Infected_reported
	reaction_reaction_4=compartment__1*Rate_Law_for_reaction_4(global_par_theta, global_par_lambda, x(7));

% Reaction: id = reaction_5, name = Exposed_to_Infected_reported
	reaction_reaction_5=compartment__1*Rate_Law_for_reaction_5(global_par_mu, global_par_f, x(3));

% Reaction: id = reaction_6, name = Exposed_to_Infected_unreported
	reaction_reaction_6=compartment__1*Rate_Law_for_reaction_6(global_par_mu, global_par_f, x(3));

% Reaction: id = reaction_7, name = Infected_reported_to_Recovered
	reaction_reaction_7=compartment__1*global_par_eta_r*x(4);

% Reaction: id = reaction_8, name = Infected_unreported_to_Recovered
	reaction_reaction_8=compartment__1*global_par_eta_u*x(5);

% Reaction: id = reaction_9, name = Quarantined_to_Susceptible_unconfined
	reaction_reaction_9=compartment__1*Rate_Law_for_Quarantined_to_Susceptible_unconfined(global_par_theta, global_par_lambda, x(7));

%Event: id=Phase_1
	event_Phase_1=time > global_par_tau_1;

	if(event_Phase_1) 
		global_par_m_t_phase_1=1;
	end

%Event: id=Phase_2
	event_Phase_2=time > global_par_tau_2;

	if(event_Phase_2) 
		global_par_m_t_phase_1=0;
		global_par_m_t_phase_2=1;
	end

%Event: id=Phase_3
	event_Phase_3=time > global_par_tau_3;

	if(event_Phase_3) 
		global_par_m_t_phase_2=0;
		global_par_m_t_phase_3=1;
	end

%Event: id=End_phase
	event_End_phase=time > global_par_tau_f;

	if(event_End_phase) 
		global_par_m_t_phase_3=0;
	end

	xdot=zeros(7,1);
	
% Species:   id = S_c, name = Susceptible_confined, affected by kineticLaw
	xdot(1) = (1/(compartment__1))*((-1.0 * reaction_reaction) + ( 1.0 * reaction_reaction_1));
	
% Species:   id = S_u, name = Susceptible_unconfined, affected by kineticLaw
	xdot(2) = (1/(compartment__1))*(( 1.0 * reaction_reaction) + (-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_9));
	
% Species:   id = E, name = Exposed, affected by kineticLaw
	xdot(3) = (1/(compartment__1))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = I_r, name = Infected_reported, affected by kineticLaw
	xdot(4) = (1/(compartment__1))*(( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_7));
	
% Species:   id = I_u, name = Infected_unreported, affected by kineticLaw
	xdot(5) = (1/(compartment__1))*(( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_8));
	
% Species:   id = R, name = Recovered, affected by kineticLaw
	xdot(6) = (1/(compartment__1))*(( 1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_8));
	
% Species:   id = Q, name = Quarantined, affected by kineticLaw
	xdot(7) = (1/(compartment__1))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_9));
end

function z=Rate_Law_for_reaction(m_t,S_c), z=((1-m_t)*S_c);end

function z=Rate_Law_for_reaction_2(sigma,beta,n,I_r,I_u,S_u), z=((1-sigma)*beta*(n*I_r+I_u)*S_u);end

function z=Rate_Law_for_reaction_5(mu,f,E), z=(mu*f*E);end

function z=Rate_Law_for_reaction_6(mu,f,E), z=(mu*(1-f)*E);end

function z=Rate_Law_for_reaction_4(theta,lambda,Q), z=(theta*lambda*Q);end

function z=Rate_Law_for_reaction_3(sigma,beta,n,I_r,I_q,S_u), z=(sigma*beta*(n*I_r+I_q)*S_u);end

function z=Rate_Law_for_Quarantined_to_Susceptible_unconfined(theta,lambda,Q), z=(theta*(1-lambda)*Q);end

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


