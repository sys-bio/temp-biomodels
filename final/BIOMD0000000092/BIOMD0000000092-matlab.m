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
% Model name = Fuentes2005_ZymogenActivation
%
% is http://identifiers.org/biomodels.db/MODEL6623597435
% is http://identifiers.org/biomodels.db/BIOMD0000000092
% isDescribedBy http://identifiers.org/pubmed/15634334
% isDerivedFrom http://identifiers.org/pubmed/7558
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 2.4E-5;
	x0(2) = 0.0;
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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;

% Reaction: id = v1, name = Intramolecular autoactivation	% Local Parameter:   id =  k1, name = k1
	reaction_v1_k1=0.004;

	reaction_v1=compartment_compartment*reaction_v1_k1*x(1);

% Reaction: id = v2, name = Intermolecular autoactivation-Complex formation	% Local Parameter:   id =  k21, name = k21
	reaction_v2_k21=1000.0;
	% Local Parameter:   id =  k22, name = k22
	reaction_v2_k22=2.1E-4;

	reaction_v2=compartment_compartment*(reaction_v2_k21*x(2)*x(1)-reaction_v2_k22*x(4));

% Reaction: id = v3, name = Intermolecular autoactivation-Enzyme release	% Local Parameter:   id =  k3, name = k3
	reaction_v3_k3=5.4E-4;

	reaction_v3=compartment_compartment*reaction_v3_k3*x(4);

	xdot=zeros(4,1);
	
% Species:   id = z, name = Zymogen, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_v1) + (-1.0 * reaction_v2));
	
% Species:   id = e, name = Enzyme, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2) + ( 2.0 * reaction_v3));
	
% Species:   id = w, name = Peptide, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_v1) + ( 1.0 * reaction_v3));
	
% Species:   id = ez, name = Enzyme-Substrate complex, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v3));
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


