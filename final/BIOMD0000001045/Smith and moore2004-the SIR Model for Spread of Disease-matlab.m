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
% Model name = Smith&Moore2004 - The SIR model for the spread of HongKong Flu
%
% is http://identifiers.org/biomodels.db/MODEL2201270001
% is http://identifiers.org/biomodels.db/BIOMD0000001045
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1.27E-6;
	x0(2) = 0.0;
	x0(3) = 0.999999999999998;


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

% Compartment: id = New_York_1968_69, name = New York_1968_69, constant
	compartment_New_York_1968_69=1.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.5;
% Parameter:   id =  k, name = k
	global_par_k=0.33;

% Reaction: id = Susceptible_to_Infected, name = Susceptible_to_Infected
	reaction_Susceptible_to_Infected=compartment_New_York_1968_69*Rate_Law_for_Susceptible_to_Infected(global_par_beta, x(1), x(3));

% Reaction: id = Infected_to_Recovered, name = Infected_to_Recovered
	reaction_Infected_to_Recovered=compartment_New_York_1968_69*global_par_k*x(1);

	xdot=zeros(3,1);
	
% Species:   id = Infected, name = Infected, affected by kineticLaw
	xdot(1) = (1/(compartment_New_York_1968_69))*(( 1.0 * reaction_Susceptible_to_Infected) + (-1.0 * reaction_Infected_to_Recovered));
	
% Species:   id = Recovered, name = Recovered, affected by kineticLaw
	xdot(2) = (1/(compartment_New_York_1968_69))*(( 1.0 * reaction_Infected_to_Recovered));
	
% Species:   id = Susceptible, name = Susceptible, affected by kineticLaw
	xdot(3) = (1/(compartment_New_York_1968_69))*((-1.0 * reaction_Susceptible_to_Infected));
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


