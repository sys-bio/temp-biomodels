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
% Model name = Cao2013 - Application of ABSIS method in the reversible isomerization model
%
% is http://identifiers.org/biomodels.db/MODEL1308080006
% is http://identifiers.org/biomodels.db/BIOMD0000000486
% isDescribedBy http://identifiers.org/pubmed/23862966
% isDerivedFrom http://identifiers.org/pubmed/22191865
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 0.0;
	x0(2) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.12;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.0;

% Reaction: id = re2
	reaction_re2=global_par_k2*x(2);

% Reaction: id = re12
	reaction_re12=global_par_k1*x(1);

	xdot=zeros(2,1);
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*(( 1.0 * reaction_re2) + (-1.0 * reaction_re12));
	
% Species:   id = B, name = B, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*((-1.0 * reaction_re2) + ( 1.0 * reaction_re12));
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


