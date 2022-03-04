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
% Model name = Weitz2020 - SIR model of COVID-19 transmission with shielding
%
% isDescribedBy http://identifiers.org/pubmed/32382154
% is http://identifiers.org/biomodels.db/MODEL2009160002
% is http://identifiers.org/biomodels.db/BIOMD0000000963
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.999;
	x0(2) = 0.001;
	x0(3) = 0.0;


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

% Compartment: id = Country, name = Country, constant
	compartment_Country=1.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.25;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.1;
% Parameter:   id =  Epidemic_size, name = Epidemic_size
	global_par_Epidemic_size=0.0;
% Parameter:   id =  Uninfected, name = Uninfected
	global_par_Uninfected=0.0;

% Reaction: id = Susceptible_to_Infected, name = Susceptible_to_Infected
	reaction_Susceptible_to_Infected=compartment_Country*Rate_Law_for_reaction(global_par_beta, x(1), x(2), global_par_alpha, x(3));

% Reaction: id = Infected_to_Recovered, name = Infected_to_Recovered	% Local Parameter:   id =  k1, name = k1
	reaction_Infected_to_Recovered_k1=0.1;

	reaction_Infected_to_Recovered=compartment_Country*reaction_Infected_to_Recovered_k1*x(2);

%Event: id=Simulation_end
	event_Simulation_end=time == 199;

	if(event_Simulation_end) 
		global_par_Epidemic_size=x(3);
		global_par_Uninfected=x(1);
	end

	xdot=zeros(3,1);
	
% Species:   id = Susceptible, name = Susceptible, affected by kineticLaw
	xdot(1) = (1/(compartment_Country))*((-1.0 * reaction_Susceptible_to_Infected));
	
% Species:   id = Infected, name = Infected, affected by kineticLaw
	xdot(2) = (1/(compartment_Country))*(( 1.0 * reaction_Susceptible_to_Infected) + (-1.0 * reaction_Infected_to_Recovered));
	
% Species:   id = Recovered, name = Recovered, affected by kineticLaw
	xdot(3) = (1/(compartment_Country))*(( 1.0 * reaction_Infected_to_Recovered));
end

function z=Rate_Law_for_reaction(beta,S,I,alpha,R), z=(beta*S*I/(1+alpha*R));end

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


