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
% Model name = Rovers1995_Photsynthetic_Oscillations
%
% is http://identifiers.org/biomodels.db/MODEL1101060001
% is http://identifiers.org/biomodels.db/BIOMD0000000292
% isDescribedBy http://identifiers.org/pubmed/7772723
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 0.7;
	x0(2) = 2.0;
	x0(3) = 0.5;
	x0(4) = 2.0;
	x0(5) = 0.5;


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

% Compartment: id = c, name = c, constant
	compartment_c=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.123;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.625;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.3;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.614;
% Parameter:   id =  N0, name = N0
	global_par_N0=1.2;
% Parameter:   id =  A0, name = A0
	global_par_A0=2.5;
% assignmentRule: variable = NADP
	x(5)=global_par_N0-x(1);
% assignmentRule: variable = ADP
	x(2)=global_par_A0-x(3);

% Reaction: id = v4, name = v4
	reaction_v4=compartment_c*global_par_k4*x(5);

% Reaction: id = v3, name = v3
	reaction_v3=compartment_c*global_par_k3*x(2)*x(5);

% Reaction: id = v2, name = v2
	reaction_v2=compartment_c*global_par_k2*x(3);

% Reaction: id = v1, name = v1
	reaction_v1=compartment_c*global_par_k1*x(4);

% Species:   id = Y, name = Y, constant	const_species_Y=1.0;

	xdot=zeros(5,1);
	
% Species:   id = NADPH, name = NADPH, affected by kineticLaw
	xdot(1) = (1/(compartment_c))*(( 1.0 * reaction_v4) + (-1.0 * reaction_v2));
	
% Species:   id = ADP, name = ADP, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(3) = (1/(compartment_c))*(( 2.0 * reaction_v3) + (-1.0 * reaction_v2) + (-1.0 * reaction_v1));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(4) = (1/(compartment_c))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v1));
	
% Species:   id = NADP, name = NADP_super_+, involved in a rule 	xdot(5) = x(5);
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


