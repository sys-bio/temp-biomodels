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
% Model name = Kamihira2000
%
% is http://identifiers.org/biomodels.db/MODEL1608100002
% is http://identifiers.org/biomodels.db/BIOMD0000000614
% isDescribedBy http://identifiers.org/pubmed/10850796
%


function main()
%Initial conditions vector
	x0=zeros(1,1);
	x0(1) = 0.0;


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

% Compartment: id = compartment_, name = compartment_, constant
	compartment_compartment_=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=2.79E-6;
% Parameter:   id =  k2, name = k2
	global_par_k2=2.29;
% Parameter:   id =  a, name = a
	global_par_a=5.85E-5;

% Reaction: id = R2, name = R2
	reaction_R2=compartment_compartment_*Function_for_R2(global_par_a, x(1), global_par_k2);

% Reaction: id = R3, name = R3
	reaction_R3=compartment_compartment_*Function_for_R3(x(1), global_par_k1);

% Reaction: id = R4, name = R4
	reaction_R4=compartment_compartment_*Function_for_R4(global_par_a, x(1), global_par_k2);

	xdot=zeros(1,1);
	
% Species:   id = f, name = fibril fraction, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_))*(( 1.0 * reaction_R1) + ( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R4));
end

function z=Constant_flux__reversible(v), z=(v);end

function z=Function_for_R2(a,f,k2), z=(k2*a*f);end

function z=Function_for_R3(f,k1), z=(k1*f);end

function z=Function_for_R4(a,f,k2), z=(k2*a*f*f);end

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


