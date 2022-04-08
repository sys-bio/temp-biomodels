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
% Model name = Larsen2004_CalciumSpiking_EnzymeBinding
%
% is http://identifiers.org/biomodels.db/MODEL1105060002
% is http://identifiers.org/biomodels.db/BIOMD0000000331
% isDescribedBy http://identifiers.org/pubmed/14871603
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(8) = 0.01;
	x0(9) = 0.01;
	x0(10) = 0.01;
	x0(11) = 10.0;
	x0(12) = 0.001;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(1) = 0.01;
	x0(2) = 0.01;
	x0(3) = 0.01;
	x0(4) = 10.0;
	x0(5) = 0.001;
	x0(6) = 0.0;
	x0(7) = 0.0;


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

% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Compartment: id = ER, name = ER, constant
	compartment_ER=1.0;
% Compartment: id = mit, name = mitochondria, constant
	compartment_mit=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.01;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.65;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.64;
% Parameter:   id =  K4, name = K4
	global_par_K4=0.09;
% Parameter:   id =  k5, name = k5
	global_par_k5=4.88;
% Parameter:   id =  K6, name = K6
	global_par_K6=1.18;
% Parameter:   id =  k7, name = k7
	global_par_k7=2.08;
% Parameter:   id =  k8, name = k8
	global_par_k8=32.24;
% Parameter:   id =  K9, name = K9
	global_par_K9=29.09;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.7;
% Parameter:   id =  K11, name = K11
	global_par_K11=3.0;
% Parameter:   id =  k12, name = k12
	global_par_k12=2.8;
% Parameter:   id =  k13, name = k13
	global_par_k13=13.4;
% Parameter:   id =  k14, name = k14
	global_par_k14=153.0;
% Parameter:   id =  K15, name = K15
	global_par_K15=0.16;
% Parameter:   id =  k16, name = k16
	global_par_k16=7.0;
% Parameter:   id =  K17, name = K17
	global_par_K17=0.05;
% Parameter:   id =  k18, name = k18
	global_par_k18=79.0;
% Parameter:   id =  K19, name = K19
	global_par_K19=3.5;
% Parameter:   id =  k20, name = k20
	global_par_k20=0.81;
% Parameter:   id =  K21, name = K21
	global_par_K21=4.5;
% Parameter:   id =  k_act, name = k_act
	global_par_k_act=5.0;
% Parameter:   id =  KM, name = KM
	global_par_KM=0.62;
% Parameter:   id =  k_inact, name = k_inact
	global_par_k_inact=0.4;
% Parameter:   id =  p, name = p
	global_par_p=4.0;
% Parameter:   id =  k_enz, name = k_enz
	global_par_k_enz=3.0;
% Parameter:   id =  k_rem, name = k_rem
	global_par_k_rem=3.0;
% rateRule: variable = G_alpha
x(1) = x(8);
% rateRule: variable = PLC
x(2) = x(9);
% rateRule: variable = Ca_cyt
x(3) = x(10);
% rateRule: variable = Ca_ER
x(4) = x(11);
% rateRule: variable = Ca_mit
x(5) = x(12);
% rateRule: variable = Enz
x(6) = x(13);
% rateRule: variable = Product
x(7) = x(14);

	xdot=zeros(14,1);
	% rateRule: variable = G_alpha
	xdot(8) = global_par_k1+global_par_k2*x(1)-global_par_k3*x(1)*x(2)/(x(1)+global_par_K4)-global_par_k5*x(1)*x(3)/(x(1)+global_par_K6);
	% rateRule: variable = PLC
	xdot(9) = global_par_k7*x(1)-global_par_k8*x(2)/(x(2)+global_par_K9);
	% rateRule: variable = Ca_cyt
	xdot(10) = (x(4)-x(3))*global_par_k10*x(3)*x(2)^4/(x(2)^4+global_par_K11^4)+global_par_k12*x(2)+global_par_k13*x(1)-global_par_k14*x(3)/(x(3)+global_par_K15)-global_par_k16*x(3)/(x(3)+global_par_K17)-global_par_k18*x(3)^8/(global_par_K19^8+x(3)^8)+(x(5)-x(3))*global_par_k20*x(3)/(x(3)+global_par_K21);
	% rateRule: variable = Ca_ER
	xdot(11) = (-(x(4)-x(3)))*global_par_k10*x(3)*x(2)^4/(x(2)^4+global_par_K11^4)+global_par_k16*x(3)/(x(3)+global_par_K17);
	% rateRule: variable = Ca_mit
	xdot(12) = global_par_k18*x(3)^8/(global_par_K19^8+x(3)^8)-(x(5)-x(3))*global_par_k20*x(3)/(x(3)+global_par_K21);
	% rateRule: variable = Enz
	xdot(13) = global_par_k_act*x(3)^global_par_p/(global_par_KM^global_par_p+x(3)^global_par_p)-global_par_k_inact*x(6);
	% rateRule: variable = Product
	xdot(14) = global_par_k_enz*x(6)-global_par_k_rem*x(7);
	
% Species:   id = G_alpha, name = G-alpha, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = PLC, name = PLC, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = Ca_cyt, name = Calcium-Cyt, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = Ca_ER, name = Calcium-ER, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = Ca_mit, name = Calcium-mit, defined in a rule 	xdot(5) = x(5);
	
% Species:   id = Enz, name = Enzyme, defined in a rule 	xdot(6) = x(6);
	
% Species:   id = Product, name = EnzCatlysedProduct, defined in a rule 	xdot(7) = x(7);
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


