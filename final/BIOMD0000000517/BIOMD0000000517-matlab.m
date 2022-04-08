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
% Model name = Smallbone2013 - Colon Crypt cycle - Version 3
%
% is http://identifiers.org/biomodels.db/MODEL1306190003
% is http://identifiers.org/biomodels.db/BIOMD0000000517
% isDescribedBy http://identifiers.org/pubmed/24354351
% is http://identifiers.org/biomodels.db/MODEL1306190003
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000518
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1.71589842441293;
	x0(2) = 26.8036712557471;
	x0(3) = 44.6167755224769;
	x0(4) = 1.53646349229917;


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

% Compartment: id = compartment, name = crypt, constant
	compartment_compartment=1.0;
% Parameter:   id =  d0, name = d0
	global_par_d0=0.02;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.5480597115;
% Parameter:   id =  d2, name = d2
	global_par_d2=1.888676618;
% Parameter:   id =  T, name = cellularity
% Parameter:   id =  K, name = capacity
	global_par_K=106.090440772217;
% Parameter:   id =  r0, name = r0
	global_par_r0=1.998624424;
% Parameter:   id =  f0, name = N0 division rate
% Parameter:   id =  p00, name = p00
% Parameter:   id =  p01, name = p01
	global_par_p01=0.6313780928;
% Parameter:   id =  r1, name = r1
	global_par_r1=10.58581849;
% Parameter:   id =  f1, name = N1 division rate
% Parameter:   id =  p11, name = p11
% Parameter:   id =  p12, name = p12
	global_par_p12=0.8050459589;
% Parameter:   id =  p03, name = p03
% Parameter:   id =  q03, name = q03
	global_par_q03=0.9351494412;
% Parameter:   id =  K03, name = K03
	global_par_K03=0.783656669828271;
% Parameter:   id =  d3, name = d3
	global_par_d3=0.1677359306;
% Parameter:   id =  K0X, name = K0X
	global_par_K0X=0.153646265911768;
% Parameter:   id =  K1X, name = K1X
	global_par_K1X=15.3645644864404;
% Parameter:   id =  K2X, name = K2X
	global_par_K2X=2.70405837954268;
% assignmentRule: variable = T
	global_par_T=x(1)+x(2)+x(3)+x(4);
% assignmentRule: variable = f0
	global_par_f0=global_par_r0*x(1)*(1-global_par_T/global_par_K);
% assignmentRule: variable = p00
	global_par_p00=1-global_par_p01-global_par_p03;
% assignmentRule: variable = f1
	global_par_f1=global_par_r1*x(2)*(1-global_par_T/global_par_K);
% assignmentRule: variable = p11
	global_par_p11=1-global_par_p12;
% assignmentRule: variable = p03
	global_par_p03=global_par_q03*global_par_K03/(x(4)+global_par_K03);

% Reaction: id = R0X, name = N0 death
	reaction_R0X=global_par_d0*x(1)*global_par_K0X/(x(4)+global_par_K0X);

% Reaction: id = R01, name = N0 differentiation to N1
	reaction_R01=global_par_p01*global_par_f0;

% Reaction: id = R00, name = N0 renewal
	reaction_R00=global_par_p00*global_par_f0;

% Reaction: id = R1X, name = N1 death
	reaction_R1X=global_par_d1*x(2)*global_par_K1X/(x(4)+global_par_K1X);

% Reaction: id = R12, name = N1 differentiation
	reaction_R12=global_par_p12*global_par_f1;

% Reaction: id = R11, name = N1 renewal
	reaction_R11=global_par_p11*global_par_f1;

% Reaction: id = R2X, name = N2 death
	reaction_R2X=global_par_d2*x(3)*global_par_K2X/(x(4)+global_par_K2X);

% Reaction: id = R03, name = N0 differentiation to N3
	reaction_R03=global_par_p03*global_par_f0;

% Reaction: id = R3X, name = N3 death
	reaction_R3X=global_par_d3*x(4);

	xdot=zeros(4,1);
	
% Species:   id = N0, name = N0, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_R0X) + (-1.0 * reaction_R01) + ( 1.0 * reaction_R01) + (-1.0 * reaction_R00) + ( 2.0 * reaction_R00) + (-1.0 * reaction_R03) + ( 1.0 * reaction_R03));
	
% Species:   id = N1, name = N1, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_R01) + (-1.0 * reaction_R1X) + (-1.0 * reaction_R12) + ( 1.0 * reaction_R12) + (-1.0 * reaction_R11) + ( 2.0 * reaction_R11));
	
% Species:   id = N2, name = N2, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_R12) + (-1.0 * reaction_R2X));
	
% Species:   id = N3, name = N3, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_R03) + (-1.0 * reaction_R3X));
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


