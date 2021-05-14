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
% Model name = Cao2013 - Application of ABSIS method in the bistable Schl?gl model
%
% is http://identifiers.org/biomodels.db/MODEL1308080005
% is http://identifiers.org/biomodels.db/BIOMD0000000485
% isDescribedBy http://identifiers.org/pubmed/23862966
% isDerivedFrom http://identifiers.org/doi/10.1007/BF01379769
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 1.0;
	x0(2) = 1.0;


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
	global_par_k1=3.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.6;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.25;
% Parameter:   id =  k4, name = k4
	global_par_k4=2.95;
% Parameter:   id =  A, name = A
	global_par_A=1.0;
% Parameter:   id =  B, name = B
	global_par_B=2.0;
% Parameter:   id =  V, name = V
	global_par_V=25.0;
% Parameter:   id =  value, name = value
	global_par_value=1.0;

% Reaction: id = Reaction1
	reaction_Reaction1=compartment_default*global_par_k1*global_par_A*x(1)*(x(1)-1)/global_par_V;

% Reaction: id = Reaction2
	reaction_Reaction2=compartment_default*global_par_k2/1*x(1)*(x(1)-1)*(x(1)-2)/global_par_V^2;

% Reaction: id = Reaction6
	reaction_Reaction6=compartment_default*global_par_k3*global_par_B*global_par_V;

% Reaction: id = Reaction7
	reaction_Reaction7=compartment_default*global_par_k4*x(1);

	xdot=zeros(2,1);
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*(( 1.0 * reaction_Reaction1) + (-1.0 * reaction_Reaction2) + ( 1.0 * reaction_Reaction6) + (-1.0 * reaction_Reaction7));
	
% Species:   id = ES, name = ES, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*((-1.0 * reaction_Reaction1) + ( 1.0 * reaction_Reaction2) + (-1.0 * reaction_Reaction6) + ( 1.0 * reaction_Reaction7));
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


