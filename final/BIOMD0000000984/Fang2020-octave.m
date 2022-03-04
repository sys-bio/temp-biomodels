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
% Model name = Fang2020 - SEIR model of COVID-19 transmission considering government interventions in Wuhan
%
% isDescribedBy http://identifiers.org/pubmed/32141624
% is http://identifiers.org/biomodels.db/MODEL2101190001
% is http://identifiers.org/biomodels.db/BIOMD0000000984
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 9999999.0;
	x0(2) = 0.0;
	x0(3) = 1.0;
	x0(4) = 0.0;
	x0(5) = 1.0E7;


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
% Parameter:   id =  beta_o, name = beta_o
	global_par_beta_o=0.1;
% Parameter:   id =  k, name = k
	global_par_k=10.0;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.097561;
% Parameter:   id =  omega, name = omega
	global_par_omega=0.142857;
% Parameter:   id =  beta, name = beta
% assignmentRule: variable = beta
	global_par_beta=global_par_k*global_par_beta_o;

% Reaction: id = Susceptible_to_Exposed, name = Susceptible_to_Exposed
	reaction_Susceptible_to_Exposed=compartment_Wuhan*Rate_Law_for_reaction(global_par_beta, x(1), x(3), x(5));

% Reaction: id = Exposed_to_Infected, name = Exposed_to_Infected
	reaction_Exposed_to_Infected=compartment_Wuhan*global_par_omega*x(2);

% Reaction: id = Infected_to_Recovered, name = Infected_to_Recovered
	reaction_Infected_to_Recovered=compartment_Wuhan*global_par_gamma*x(3);

	xdot=zeros(5,1);
	
% Species:   id = Susceptible, name = Susceptible, affected by kineticLaw
	xdot(1) = (1/(compartment_Wuhan))*((-1.0 * reaction_Susceptible_to_Exposed));
	
% Species:   id = Exposed, name = Exposed, affected by kineticLaw
	xdot(2) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Susceptible_to_Exposed) + (-1.0 * reaction_Exposed_to_Infected));
	
% Species:   id = Infected, name = Infected, affected by kineticLaw
	xdot(3) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Exposed_to_Infected) + (-1.0 * reaction_Infected_to_Recovered));
	
% Species:   id = Recovered, name = Recovered, affected by kineticLaw
	xdot(4) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Infected_to_Recovered));
	
% Species:   id = Total_population, name = Total_population
% Warning species is not changed by either rules or reactions
	xdot(5) = ;
end

function z=Rate_Law_for_reaction(beta,S,I,N), z=(beta*S*I/N);end

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


