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
% Model name = Ghanbari2020 - forecasting the second wave of COVID-19 in Iran
%
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 7.8841214132441E7;
	x0(2) = 5060.4;
	x0(3) = 4487.6;
	x0(4) = 4590.0;


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

% Compartment: id = Iran, name = Iran, constant
	compartment_Iran=1.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.55;
% Parameter:   id =  gamma_1, name = gamma_1
	global_par_gamma_1=0.1;
% Parameter:   id =  gamma_2, name = gamma_2
	global_par_gamma_2=0.061;
% Parameter:   id =  tau, name = tau
	global_par_tau=2.0E-9;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.02;
% Parameter:   id =  Lockdown_start, name = Lockdown_start
	global_par_Lockdown_start=19.0;
% Parameter:   id =  Lockdown_end, name = Lockdown_end
	global_par_Lockdown_end=33.0;

% Reaction: id = Susceptible_to_Infected_I1, name = Susceptible_to_Infected_I1
	reaction_Susceptible_to_Infected_I1=compartment_Iran*Rate_Law_for_reaction(global_par_tau, x(1), global_par_alpha, x(2), x(3));

% Reaction: id = Susceptible_to_Infected_I2, name = Susceptible_to_Infected_I2
	reaction_Susceptible_to_Infected_I2=compartment_Iran*Rate_Law_for_reaction_1(global_par_alpha, global_par_tau, x(1), x(2), x(3));

% Reaction: id = Infected_I1_to_Recovered, name = Infected_I1_to_Recovered
	reaction_Infected_I1_to_Recovered=compartment_Iran*global_par_gamma_1*x(2);

% Reaction: id = Infected_I2_to_Recovered, name = Infected_I2_to_Recovered
	reaction_Infected_I2_to_Recovered=compartment_Iran*global_par_gamma_2*x(3);

% Reaction: id = Infected_I2_to_Deceased, name = Infected_I2_to_Deceased
	reaction_Infected_I2_to_Deceased=compartment_Iran*global_par_mu*x(3);

%Event: id=Lockdown
	event_Lockdown=(global_par_Lockdown_start < time) && (time < global_par_Lockdown_end);

	if(event_Lockdown) 
		global_par_tau=2E-9*exp((-global_par_alpha)*time);
	end

%Event: id=After_Lockdown
	event_After_Lockdown=time > global_par_Lockdown_end;

	if(event_After_Lockdown) 
		global_par_tau=1.47E-9;
	end

	xdot=zeros(4,1);
	
% Species:   id = Susceptible, name = Susceptible, affected by kineticLaw
	xdot(1) = (1/(compartment_Iran))*((-1.0 * reaction_Susceptible_to_Infected_I1) + (-1.0 * reaction_Susceptible_to_Infected_I2));
	
% Species:   id = Infected_strong_immune_system, name = Infected_strong_immune_system, affected by kineticLaw
	xdot(2) = (1/(compartment_Iran))*(( 1.0 * reaction_Susceptible_to_Infected_I1) + (-1.0 * reaction_Infected_I1_to_Recovered));
	
% Species:   id = Infected_weak_immune_system, name = Infected_weak_immune_system, affected by kineticLaw
	xdot(3) = (1/(compartment_Iran))*(( 1.0 * reaction_Susceptible_to_Infected_I2) + (-1.0 * reaction_Infected_I2_to_Recovered) + (-1.0 * reaction_Infected_I2_to_Deceased));
	
% Species:   id = Recovered, name = Recovered, affected by kineticLaw
	xdot(4) = (1/(compartment_Iran))*(( 1.0 * reaction_Infected_I1_to_Recovered) + ( 1.0 * reaction_Infected_I2_to_Recovered));
end

function z=Rate_Law_for_reaction(tau,S,alpha,I1,I2), z=(tau*S*alpha*(I1+I2));end

function z=Rate_Law_for_reaction_1(alpha,tau,S,I1,I2), z=((1-alpha)*tau*S*(I1+I2));end

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


