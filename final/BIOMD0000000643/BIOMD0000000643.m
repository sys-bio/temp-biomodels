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
% Model name = Musante2017 - Switching behaviour of PP2A inhibition by ARPP-16 - mutual inhibitions
%
% is http://identifiers.org/biomodels.db/MODEL1707020000
% is http://identifiers.org/biomodels.db/BIOMD0000000643
% isDescribedBy http://identifiers.org/pubmed/28613156
% isDerivedFrom http://identifiers.org/bto/BTO:0002181
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(7) = 9.80000000000001;
	x0(8) = 0.199999999999994;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(1) = 9.80000000000001;
	x0(2) = 0.199999999999994;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 11.8161515151515;
	x0(6) = 1.9958693267679;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  ARPPtot, name = ARPPtot
	global_par_ARPPtot=10.0;
% Parameter:   id =  PP2Atot, name = PP2Atot
	global_par_PP2Atot=2.0;
% Parameter:   id =  MASTtot, name = MASTtot
	global_par_MASTtot=2.7;
% Parameter:   id =  PKActot, name = PKActot
	global_par_PKActot=12.0;
% Parameter:   id =  kass, name = kass
	global_par_kass=3.3;
% Parameter:   id =  kdiss, name = kdiss
	global_par_kdiss=0.0033;
% Parameter:   id =  kcatpp2a, name = kcatpp2a
	global_par_kcatpp2a=0.05;
% Parameter:   id =  kmpp2a, name = kmpp2a
% Parameter:   id =  kcatmast, name = kcatmast
	global_par_kcatmast=0.0988;
% Parameter:   id =  kmmast, name = kmmast
	global_par_kmmast=0.09;
% Parameter:   id =  kcatpka, name = kcatpka
	global_par_kcatpka=0.935;
% Parameter:   id =  kmpka, name = kmpka
	global_par_kmpka=1.6;
% Parameter:   id =  kcatpp1, name = kcatpp1
	global_par_kcatpp1=0.5;
% Parameter:   id =  pp1, name = pp1
	global_par_pp1=5.0;
% Parameter:   id =  kmpp1, name = kmpp1
	global_par_kmpp1=1.0;
% Parameter:   id =  k88, name = k88
	global_par_k88=0.01865;
% Parameter:   id =  kcamp, name = kcamp
	global_par_kcamp=0.7;
% Parameter:   id =  n, name = n
	global_par_n=2.0;
% Parameter:   id =  KA, name = KA
	global_par_KA=10.0;
% Parameter:   id =  k46, name = k46
	global_par_k46=0.02335;
% Parameter:   id =  cAMP, name = cAMP
	global_par_cAMP=0.0;
% Parameter:   id =  A46bar, name = A46bar
% Parameter:   id =  a, name = a
	global_par_a=0.37526;
% Parameter:   id =  b, name = b
	global_par_b=2.36;
% Parameter:   id =  kppx, name = kppx
	global_par_kppx=0.05;
% Parameter:   id =  ModelValue_0, name = Initial for ARPPtot
	global_par_ModelValue_0=10.0;
% Parameter:   id =  ModelValue_18, name = Initial for KA
	global_par_ModelValue_18=10.0;
% Parameter:   id =  ModelValue_2, name = Initial for MASTtot
	global_par_ModelValue_2=2.7;
% Parameter:   id =  ModelValue_3, name = Initial for PKActot
	global_par_ModelValue_3=12.0;
% Parameter:   id =  ModelValue_1, name = Initial for PP2Atot
	global_par_ModelValue_1=2.0;
% Parameter:   id =  ModelValue_22, name = Initial for a
	global_par_ModelValue_22=0.37526;
% Parameter:   id =  ModelValue_23, name = Initial for b
	global_par_ModelValue_23=2.36;
% Parameter:   id =  ModelValue_20, name = Initial for cAMP
	global_par_ModelValue_20=0.0;
% Parameter:   id =  ModelValue_19, name = Initial for k46
	global_par_ModelValue_19=0.02335;
% Parameter:   id =  ModelValue_15, name = Initial for k88
	global_par_ModelValue_15=0.01865;
% Parameter:   id =  ModelValue_4, name = Initial for kass
	global_par_ModelValue_4=3.3;
% Parameter:   id =  ModelValue_16, name = Initial for kcamp
	global_par_ModelValue_16=0.7;
% Parameter:   id =  ModelValue_8, name = Initial for kcatmast
	global_par_ModelValue_8=0.0988;
% Parameter:   id =  ModelValue_10, name = Initial for kcatpka
	global_par_ModelValue_10=0.935;
% Parameter:   id =  ModelValue_12, name = Initial for kcatpp1
	global_par_ModelValue_12=0.5;
% Parameter:   id =  ModelValue_6, name = Initial for kcatpp2a
	global_par_ModelValue_6=0.05;
% Parameter:   id =  ModelValue_5, name = Initial for kdiss
	global_par_ModelValue_5=0.0033;
% Parameter:   id =  ModelValue_9, name = Initial for kmmast
	global_par_ModelValue_9=0.09;
% Parameter:   id =  ModelValue_11, name = Initial for kmpka
	global_par_ModelValue_11=1.6;
% Parameter:   id =  ModelValue_14, name = Initial for kmpp1
	global_par_ModelValue_14=1.0;
% Parameter:   id =  ModelValue_17, name = Initial for n
	global_par_ModelValue_17=2.0;
% Parameter:   id =  ModelValue_13, name = Initial for pp1
	global_par_ModelValue_13=5.0;
% assignmentRule: variable = kmpp2a
	global_par_kmpp2a=(global_par_ModelValue_5+global_par_ModelValue_6)/global_par_ModelValue_4;
% assignmentRule: variable = BB
	x(5)=x(1)+global_par_ModelValue_1+global_par_kmpp2a;
% assignmentRule: variable = Complex
	x(6)=(x(5)-(x(5)^2-4*x(1)*global_par_ModelValue_1)^(0.5))/2;
% assignmentRule: variable = A46bar
	global_par_A46bar=x(1)/global_par_ModelValue_0;
% rateRule: variable = A46
x(1) = x(7);
% rateRule: variable = A88
x(2) = x(8);
% rateRule: variable = M
x(3) = x(9);
% rateRule: variable = PKA
x(4) = x(10);

	xdot=zeros(10,1);
	% rateRule: variable = A46
	xdot(7) = global_par_ModelValue_8*x(3)*(global_par_ModelValue_0-x(1))/(global_par_ModelValue_9+global_par_ModelValue_22*x(2)/global_par_ModelValue_0+(global_par_ModelValue_0-x(1)))-global_par_ModelValue_6*x(6);
	% rateRule: variable = A88
	xdot(8) = global_par_ModelValue_10*x(4)*(global_par_ModelValue_0-x(2))/(global_par_ModelValue_11+global_par_ModelValue_23*x(1)/global_par_ModelValue_0+global_par_ModelValue_0-x(2))-global_par_ModelValue_12*global_par_ModelValue_13*x(2)/(global_par_ModelValue_14+x(2));
	% rateRule: variable = M
	xdot(9) = global_par_kppx*(global_par_ModelValue_2-x(3))-global_par_ModelValue_15*x(2)*x(3);
	% rateRule: variable = PKA
	xdot(10) = global_par_ModelValue_16*(global_par_ModelValue_3-x(4))*global_par_ModelValue_20^global_par_ModelValue_17/(global_par_ModelValue_18^global_par_ModelValue_17+global_par_ModelValue_20^global_par_ModelValue_17)-global_par_ModelValue_19*x(1)*x(4);
	
% Species:   id = A46, name = A46, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = A88, name = A88, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = M, name = M, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = PKA, name = PKA, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = BB, name = BB, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = Complex, name = Complex, involved in a rule 	xdot(6) = x(6);
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


