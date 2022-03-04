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
% Model name = Smallbone2013 - Colon Crypt cycle - Version 0
%
% is http://identifiers.org/biomodels.db/MODEL1306190000
% is http://identifiers.org/biomodels.db/BIOMD0000000520
% isDescribedBy http://identifiers.org/pubmed/24354351
% is http://identifiers.org/biomodels.db/MODEL1306190000
% isDerivedFrom http://identifiers.org/pubmed/17360468
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1.75444831412765;
	x0(2) = 43.8146704098797;
	x0(3) = 27.4558812768926;


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

% Compartment: id = compartment, name = crypt, constant
	compartment_compartment=1.0;
% Parameter:   id =  d0, name = d0
	global_par_d0=0.1;
% Parameter:   id =  b0, name = b0
	global_par_b0=0.218;
% Parameter:   id =  c0, name = c0
	global_par_c0=1.0;
% Parameter:   id =  m0, name = m0
	global_par_m0=2.92408052354609;
% Parameter:   id =  a0, name = a0
	global_par_a0=0.0999999999999998;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.263;
% Parameter:   id =  b1, name = b1
	global_par_b1=0.547;
% Parameter:   id =  c1, name = c1
	global_par_c1=1.0;
% Parameter:   id =  m1, name = m1
	global_par_m1=29.2408052354609;
% Parameter:   id =  a1, name = a1
	global_par_a1=0.239254806051979;
% Parameter:   id =  d2, name = d2
	global_par_d2=1.83;
% Parameter:   id =  T, name = cellularity
% assignmentRule: variable = T
	global_par_T=x(1)+x(2)+x(3);

% Reaction: id = R0X, name = N0 death
	reaction_R0X=global_par_d0*x(1);

% Reaction: id = R01, name = N0 differentiation
	reaction_R01=(global_par_b0+global_par_c0*x(1)/(x(1)+global_par_m0))*x(1);

% Reaction: id = R00, name = N0 renewal
	reaction_R00=global_par_a0*x(1);

% Reaction: id = R1X, name = N1 death
	reaction_R1X=global_par_d1*x(2);

% Reaction: id = R12, name = N1 differentiation
	reaction_R12=(global_par_b1+global_par_c1*x(2)/(x(2)+global_par_m1))*x(2);

% Reaction: id = R11, name = N1 renewal
	reaction_R11=global_par_a1*x(2);

% Reaction: id = R2X, name = N2 death
	reaction_R2X=global_par_d2*x(3);

	xdot=zeros(3,1);
	
% Species:   id = N0, name = N0, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_R0X) + (-1.0 * reaction_R01) + ( 1.0 * reaction_R01) + (-1.0 * reaction_R00) + ( 2.0 * reaction_R00));
	
% Species:   id = N1, name = N1, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_R01) + (-1.0 * reaction_R1X) + (-1.0 * reaction_R12) + ( 1.0 * reaction_R12) + (-1.0 * reaction_R11) + ( 2.0 * reaction_R11));
	
% Species:   id = N2, name = N2, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_R12) + (-1.0 * reaction_R2X));
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


