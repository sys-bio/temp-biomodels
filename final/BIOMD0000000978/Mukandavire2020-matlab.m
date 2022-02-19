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
% Model name = Mukandavire2020 - SEIR model of early COVID-19 transmission in South Africa
%
% isDescribedBy http://identifiers.org/pubmed/32706790
% is http://identifiers.org/biomodels.db/MODEL2012010001
% is http://identifiers.org/biomodels.db/BIOMD0000000978
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 3.6196938E7;
	x0(2) = 0.0;
	x0(3) = 2.0;
	x0(4) = 0.0;


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

% Compartment: id = South_Africa, name = South_Africa, constant
	compartment_South_Africa=1.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=1.3;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.0;
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=0.311;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.3389830508;
% Parameter:   id =  N, name = N
	global_par_N=3.6196938E7;
% Parameter:   id =  Event_trigger, name = Event_trigger
	global_par_Event_trigger=1.0;
% Parameter:   id =  Cumulative_cases, name = Cumulative_cases
% assignmentRule: variable = Cumulative_cases
	global_par_Cumulative_cases=x(3)+x(4);

% Reaction: id = Susceptible_to_Exposed, name = Susceptible_to_Exposed
	reaction_Susceptible_to_Exposed=compartment_South_Africa*Rate_Law_for_reaction(global_par_beta, x(1), x(3), global_par_N, global_par_epsilon);

% Reaction: id = Exposed_to_Infected, name = Exposed_to_Infected
	reaction_Exposed_to_Infected=compartment_South_Africa*global_par_sigma*x(2);

% Reaction: id = Infected_to_Recovered, name = Infected_to_Recovered
	reaction_Infected_to_Recovered=compartment_South_Africa*global_par_gamma*x(3);

%Event: id=Lockdown
	event_Lockdown=time > 23;

	if(event_Lockdown) 
		global_par_epsilon=global_par_Event_trigger*0.8031;
	end

	xdot=zeros(4,1);
	
% Species:   id = Susceptible, name = Susceptible, affected by kineticLaw
	xdot(1) = (1/(compartment_South_Africa))*((-1.0 * reaction_Susceptible_to_Exposed));
	
% Species:   id = Exposed, name = Exposed, affected by kineticLaw
	xdot(2) = (1/(compartment_South_Africa))*(( 1.0 * reaction_Susceptible_to_Exposed) + (-1.0 * reaction_Exposed_to_Infected));
	
% Species:   id = Infected, name = Infected, affected by kineticLaw
	xdot(3) = (1/(compartment_South_Africa))*(( 1.0 * reaction_Exposed_to_Infected) + (-1.0 * reaction_Infected_to_Recovered));
	
% Species:   id = Recovered, name = Recovered, affected by kineticLaw
	xdot(4) = (1/(compartment_South_Africa))*(( 1.0 * reaction_Infected_to_Recovered));
end

function z=Rate_Law_for_reaction(beta,S,I,N,epsilon), z=((1-epsilon)*beta*S*I/N);end

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


