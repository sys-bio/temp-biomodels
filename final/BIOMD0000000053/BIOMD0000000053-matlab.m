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
% Model name = Ferreira2003_CML_generation2
%
% is http://identifiers.org/biomodels.db/MODEL0733584307
% is http://identifiers.org/biomodels.db/BIOMD0000000053
% isDescribedBy http://identifiers.org/pubmed/12911334
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.25;
	x0(2) = 0.0034;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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
% Parameter:   id =  Fraction_Amadori, name = Fraction_Amadori
% Parameter:   id =  Fraction_CML, name = Fraction_CML
% assignmentRule: variable = Fraction_Amadori
	global_par_Fraction_Amadori=x(4)/0.0034;
% assignmentRule: variable = Fraction_CML
	global_par_Fraction_CML=x(6)/0.0034;

% Reaction: id = v1a	% Local Parameter:   id =  p1, name = p1
	reaction_v1a_p1=0.115;
	% Local Parameter:   id =  k1a, name = k1a
	reaction_v1a_k1a=0.09;

	reaction_v1a=compartment_compartment*reaction_v1a_p1*reaction_v1a_k1a*x(1)*x(2);

% Reaction: id = v1b	% Local Parameter:   id =  k1b, name = k1b
	reaction_v1b_k1b=0.36;

	reaction_v1b=compartment_compartment*reaction_v1b_k1b*x(3);

% Reaction: id = v2a	% Local Parameter:   id =  p2, name = p2
	reaction_v2a_p2=0.75;
	% Local Parameter:   id =  k2a, name = k2a
	reaction_v2a_k2a=0.033;

	reaction_v2a=compartment_compartment*reaction_v2a_p2*reaction_v2a_k2a*x(3);

% Reaction: id = v2b	% Local Parameter:   id =  p2, name = p2
	reaction_v2b_p2=0.75;
	% Local Parameter:   id =  k2b, name = k2b
	reaction_v2b_k2b=0.0012;

	reaction_v2b=compartment_compartment*reaction_v2b_p2*reaction_v2b_k2b*x(4);

% Reaction: id = v3	% Local Parameter:   id =  ox, name = ox
	reaction_v3_ox=1.0;
	% Local Parameter:   id =  p3, name = p3
	reaction_v3_p3=1.0;
	% Local Parameter:   id =  k3, name = k3
	reaction_v3_k3=7.92E-7;

	reaction_v3=compartment_compartment*reaction_v3_ox*reaction_v3_p3*reaction_v3_k3*(x(1)/0.25)^0.36;

% Reaction: id = v4	% Local Parameter:   id =  ox, name = ox
	reaction_v4_ox=1.0;
	% Local Parameter:   id =  p4, name = p4
	reaction_v4_p4=1.0;
	% Local Parameter:   id =  k4, name = k4
	reaction_v4_k4=8.6E-5;

	reaction_v4=compartment_compartment*reaction_v4_ox*reaction_v4_p4*reaction_v4_k4*x(4);

% Reaction: id = v5	% Local Parameter:   id =  ox, name = ox
	reaction_v5_ox=1.0;
	% Local Parameter:   id =  p5, name = p5
	reaction_v5_p5=1.0;
	% Local Parameter:   id =  k5, name = k5
	reaction_v5_k5=0.019;

	reaction_v5=compartment_compartment*reaction_v5_ox*reaction_v5_p5*reaction_v5_k5*x(5)*x(2);

% Reaction: id = v5b	% Local Parameter:   id =  k5b, name = k5b
	reaction_v5b_k5b=0.0017;

	reaction_v5b=compartment_compartment*reaction_v5b_k5b*x(5);

% Reaction: id = v6	% Local Parameter:   id =  ox, name = ox
	reaction_v6_ox=1.0;
	% Local Parameter:   id =  p6, name = p6
	reaction_v6_p6=2.7;
	% Local Parameter:   id =  k3, name = k3
	reaction_v6_k3=7.92E-7;

	reaction_v6=compartment_compartment*reaction_v6_ox*reaction_v6_p6*reaction_v6_k3*(x(3)/0.25)^0.36;

% Reaction: id = v7a	% Local Parameter:   id =  ox, name = ox
	reaction_v7a_ox=1.0;
	% Local Parameter:   id =  p7, name = p7
	reaction_v7a_p7=60.0;
	% Local Parameter:   id =  k3, name = k3
	reaction_v7a_k3=7.92E-7;

	reaction_v7a=compartment_compartment*0.05*reaction_v7a_ox*reaction_v7a_p7*reaction_v7a_k3*(x(3)/0.25)^0.36;

% Reaction: id = v7b	% Local Parameter:   id =  ox, name = ox
	reaction_v7b_ox=1.0;
	% Local Parameter:   id =  p7, name = p7
	reaction_v7b_p7=60.0;
	% Local Parameter:   id =  k3, name = k3
	reaction_v7b_k3=7.92E-7;

	reaction_v7b=compartment_compartment*0.005*reaction_v7b_ox*reaction_v7b_p7*reaction_v7b_k3*(x(3)/0.25)^0.36;

% Reaction: id = v7c	% Local Parameter:   id =  ox, name = ox
	reaction_v7c_ox=1.0;
	% Local Parameter:   id =  p7, name = p7
	reaction_v7c_p7=60.0;
	% Local Parameter:   id =  k3, name = k3
	reaction_v7c_k3=7.92E-7;

	reaction_v7c=compartment_compartment*reaction_v7c_ox*reaction_v7c_p7*reaction_v7c_k3*(x(3)/0.25)^0.36;

	xdot=zeros(6,1);
	
% Species:   id = Glucose, name = Glucose, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_v1a) + ( 1.0 * reaction_v1b) + (-1.0 * reaction_v3));
	
% Species:   id = Lysine, name = Lysine, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_v1a) + ( 1.0 * reaction_v1b) + (-1.0 * reaction_v5) + ( 1.0 * reaction_v7a));
	
% Species:   id = Schiff, name = Schiff, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_v1a) + (-1.0 * reaction_v1b) + (-1.0 * reaction_v2a) + ( 1.0 * reaction_v2b) + (-1.0 * reaction_v6) + (-1.0 * reaction_v7c));
	
% Species:   id = Amadori, name = Amadori, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_v2a) + (-1.0 * reaction_v2b) + (-1.0 * reaction_v4));
	
% Species:   id = Glyoxal, name = Glyoxal, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v5) + (-1.0 * reaction_v5b) + ( 1.0 * reaction_v7b));
	
% Species:   id = CML, name = CML, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_v4) + ( 1.0 * reaction_v5) + ( 1.0 * reaction_v6));
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


