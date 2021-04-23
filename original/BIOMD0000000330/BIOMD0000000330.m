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
% Model name = Larsen2004_CalciumSpiking
%
% is http://identifiers.org/biomodels.db/MODEL1105060001
% is http://identifiers.org/biomodels.db/BIOMD0000000330
% isDescribedBy http://identifiers.org/pubmed/14871603
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000329
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(6) = 0.01;
	x0(7) = 0.01;
	x0(8) = 0.01;
	x0(9) = 10.0;
	x0(10) = 0.001;
	x0(1) = 0.01;
	x0(2) = 0.01;
	x0(3) = 0.01;
	x0(4) = 10.0;
	x0(5) = 0.001;


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

% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Compartment: id = ER, name = ER, constant
	compartment_ER=1.0;
% Compartment: id = mit, name = mitochondria, constant
	compartment_mit=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.35;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.0E-4;
% Parameter:   id =  K4, name = K4
	global_par_K4=0.783;
% Parameter:   id =  k5, name = k5
	global_par_k5=1.24;
% Parameter:   id =  K6, name = K6
	global_par_K6=0.7;
% Parameter:   id =  k7, name = k7
	global_par_k7=5.82;
% Parameter:   id =  k8, name = k8
	global_par_k8=32.24;
% Parameter:   id =  K9, name = K9
	global_par_K9=29.09;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.93;
% Parameter:   id =  K11, name = K11
	global_par_K11=2.667;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.76;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.0;
% Parameter:   id =  k14, name = k14
	global_par_k14=149.0;
% Parameter:   id =  K15, name = K15
	global_par_K15=0.16;
% Parameter:   id =  k16, name = k16
	global_par_k16=20.9;
% Parameter:   id =  K17, name = K17
	global_par_K17=0.05;
% Parameter:   id =  k18, name = k18
	global_par_k18=79.0;
% Parameter:   id =  K19, name = K19
	global_par_K19=2.0;
% Parameter:   id =  k20, name = k20
	global_par_k20=1.5;
% Parameter:   id =  K21, name = K21
	global_par_K21=1.5;
% rateRule: variable = G_alpha
x(1) = x(6);
% rateRule: variable = PLC
x(2) = x(7);
% rateRule: variable = Ca_cyt
x(3) = x(8);
% rateRule: variable = Ca_ER
x(4) = x(9);
% rateRule: variable = Ca_mit
x(5) = x(10);

	xdot=zeros(10,1);
	% rateRule: variable = G_alpha
	xdot(6) = global_par_k1+global_par_k2*x(1)-global_par_k3*x(1)*x(2)/(x(1)+global_par_K4)-global_par_k5*x(1)*x(3)/(x(1)+global_par_K6);
	% rateRule: variable = PLC
	xdot(7) = global_par_k7*x(1)-global_par_k8*x(2)/(x(2)+global_par_K9);
	% rateRule: variable = Ca_cyt
	xdot(8) = (x(4)-x(3))*global_par_k10*x(3)*x(2)^4/(x(2)^4+global_par_K11^4)+global_par_k12*x(2)+global_par_k13*x(1)-global_par_k14*x(3)/(x(3)+global_par_K15)-global_par_k16*x(3)/(x(3)+global_par_K17)-global_par_k18*x(3)^8/(global_par_K19^8+x(3)^8)+(x(5)-x(3))*global_par_k20*x(3)/(x(3)+global_par_K21);
	% rateRule: variable = Ca_ER
	xdot(9) = (-(x(4)-x(3)))*global_par_k10*x(3)*x(2)^4/(x(2)^4+global_par_K11^4)+global_par_k16*x(3)/(x(3)+global_par_K17);
	% rateRule: variable = Ca_mit
	xdot(10) = global_par_k18*x(3)^8/(global_par_K19^8+x(3)^8)-(x(5)-x(3))*global_par_k20*x(3)/(x(3)+global_par_K21);
	
% Species:   id = G_alpha, name = G-alpha, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = PLC, name = PLC, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = Ca_cyt, name = Calcium-Cyt, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = Ca_ER, name = Calcium-ER, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = Ca_mit, name = Calcium-mit, defined in a rule 	xdot(5) = x(5);
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


