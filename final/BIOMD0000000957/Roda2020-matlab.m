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
% Model name = Roda2020 - SIR model of COVID-19 spread in Wuhan
%
% isDescribedBy http://identifiers.org/pubmed/32289100
% is http://identifiers.org/biomodels.db/MODEL2008110001
% is http://identifiers.org/biomodels.db/BIOMD0000000957
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 5999755.0;
	x0(2) = 60.0;
	x0(3) = 0.0;
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

% Compartment: id = Wuhan, name = Wuhan, constant
	compartment_Wuhan=1.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=2.09E-7;
% Parameter:   id =  rho, name = rho
	global_par_rho=0.909;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.1;

% Reaction: id = Susceptible_to_Infected, name = Susceptible_to_Infected
	reaction_Susceptible_to_Infected=compartment_Wuhan*Rate_Law_for_Susceptible_to_Infected(global_par_beta, x(2), x(1));

% Reaction: id = Infected_to_Recovered, name = Infected_to_Recovered
	reaction_Infected_to_Recovered=compartment_Wuhan*global_par_mu*x(2);

% Reaction: id = Infected_to_Confirmed, name = Infected_to_Confirmed
	reaction_Infected_to_Confirmed=compartment_Wuhan*global_par_rho*x(2);

	xdot=zeros(4,1);
	
% Species:   id = Susceptible, name = Susceptible, affected by kineticLaw
	xdot(1) = (1/(compartment_Wuhan))*((-1.0 * reaction_Susceptible_to_Infected));
	
% Species:   id = Infected, name = Infected, affected by kineticLaw
	xdot(2) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Susceptible_to_Infected) + (-1.0 * reaction_Infected_to_Recovered) + (-1.0 * reaction_Infected_to_Confirmed));
	
% Species:   id = Recovered, name = Recovered, affected by kineticLaw
	xdot(3) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Infected_to_Recovered));
	
% Species:   id = Confirmed, name = Confirmed, affected by kineticLaw
	xdot(4) = (1/(compartment_Wuhan))*(( 1.0 * reaction_Infected_to_Confirmed));
end

function z=Rate_Law_for_Susceptible_to_Infected(beta,I,S), z=(beta*I*S);end

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


