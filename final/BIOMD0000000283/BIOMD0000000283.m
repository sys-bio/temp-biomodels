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
% Model name = Chance1943_Peroxidase_ES_Kinetics
%
% is http://identifiers.org/biomodels.db/MODEL1010190000
% is http://identifiers.org/biomodels.db/BIOMD0000000283
% isDescribedBy http://identifiers.org/pubmed/10218104
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 8.0;
	x0(2) = 1.0;
	x0(3) = 0.0;
	x0(4) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  K2, name = K2
	global_par_K2=0.0;
% Parameter:   id =  K3, name = K3
	global_par_K3=0.5;

% Reaction: id = r1, name = r1
	reaction_r1=compartment_cell*(x(2)*x(1)-global_par_K2*x(3));

% Reaction: id = r2, name = r2
	reaction_r2=compartment_cell*global_par_K3*x(3);

	xdot=zeros(4,1);
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_r1));
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_r1) + ( 1.0 * reaction_r2));
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_r1) + (-1.0 * reaction_r2));
	
% Species:   id = Q, name = Q, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_r2));
end

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


