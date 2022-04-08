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
% Model name = Sturis1991_InsulinGlucoseModel_UltradianOscillation
%
% is http://identifiers.org/biomodels.db/MODEL1110180000
% is http://identifiers.org/biomodels.db/BIOMD0000000382
% isDescribedBy http://identifiers.org/pubmed/2035636
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(7) = 90.0;
	x0(8) = 180.0;
	x0(9) = 13000.0;
	x0(10) = 70.0;
	x0(11) = 70.0;
	x0(12) = 70.0;
	x0(1) = 90.0;
	x0(2) = 180.0;
	x0(3) = 13000.0;
	x0(4) = 70.0;
	x0(5) = 70.0;
	x0(6) = 70.0;


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

% Compartment: id = compartment1, name = compartment1, constant
	compartment_compartment1=1.0;
% Parameter:   id =  f1, name = f1
% Parameter:   id =  f2, name = f2
% Parameter:   id =  f3, name = f3
% Parameter:   id =  f4, name = f4
% Parameter:   id =  f5, name = f5
% Parameter:   id =  v1, name = v1
	global_par_v1=3.0;
% Parameter:   id =  v2, name = v2
	global_par_v2=11.0;
% Parameter:   id =  v3, name = v3
	global_par_v3=10.0;
% Parameter:   id =  t1, name = t1
	global_par_t1=6.0;
% Parameter:   id =  t2, name = t2
	global_par_t2=100.0;
% Parameter:   id =  t3, name = t3
	global_par_t3=36.0;
% Parameter:   id =  I, name = I
	global_par_I=216.0;
% Parameter:   id =  E, name = E
	global_par_E=0.21;
% rateRule: variable = x
x(1) = x(7);
% rateRule: variable = y
x(2) = x(8);
% rateRule: variable = z
x(3) = x(9);
% rateRule: variable = h1
x(4) = x(10);
% rateRule: variable = h2
x(5) = x(11);
% rateRule: variable = h3
x(6) = x(12);
% assignmentRule: variable = f1
	global_par_f1=209/(1+exp((-x(3))/(300*global_par_v3)+6.6));
% assignmentRule: variable = f2
	global_par_f2=72*(1-exp((-x(3))/144*global_par_v3));
% assignmentRule: variable = f3
	global_par_f3=0.01*x(3)/global_par_v3;
% assignmentRule: variable = f5
	global_par_f5=180/(1+exp(0.29*x(6)/global_par_v1-7.5));
% assignmentRule: variable = f4
	global_par_f4=90/(1+exp((-1.772)*log(x(2)*(1/global_par_v2+1/(global_par_E*global_par_t2)))+7.76))+4;

	xdot=zeros(12,1);
	% rateRule: variable = x
	xdot(7) = global_par_f1-global_par_E*(x(1)/global_par_v1-x(2)/global_par_v2)-x(1)/global_par_t1;
	% rateRule: variable = y
	xdot(8) = global_par_E*(x(1)/global_par_v1-x(2)/global_par_v2)-x(2)/global_par_t2;
	% rateRule: variable = z
	xdot(9) = global_par_f5+global_par_I-global_par_f2-global_par_f3*global_par_f4;
	% rateRule: variable = h1
	xdot(10) = 3*(x(1)-x(4))/global_par_t3;
	% rateRule: variable = h2
	xdot(11) = 3*(x(4)-x(5))/global_par_t3;
	% rateRule: variable = h3
	xdot(12) = 3*(x(5)-x(6))/global_par_t3;
	
% Species:   id = x, name = x, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = y, name = y, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = z, name = z, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = h1, name = h1, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = h2, name = h2, defined in a rule 	xdot(5) = x(5);
	
% Species:   id = h3, name = h3, defined in a rule 	xdot(6) = x(6);
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


