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
% Model name = Bertram2000_PancreaticBetaCells_Oscillations
%
% is http://identifiers.org/biomodels.db/MODEL0911270001
% is http://identifiers.org/biomodels.db/BIOMD0000000377
% isDescribedBy http://identifiers.org/pubmed/11106596
% isDerivedFrom http://identifiers.org/pubmed/1850840
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(5) = -43.0;
	x0(6) = 0.03;
	x0(7) = 0.1;
	x0(8) = 0.434;
	x0(1) = -43.0;
	x0(2) = 0.03;
	x0(3) = 0.1;
	x0(4) = 0.434;


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

% Compartment: id = Compartment, name = Compartment, constant
	compartment_Compartment=1.0;
% Parameter:   id =  Cm, name = Cm
	global_par_Cm=4524.0;
% Parameter:   id =  Vm, name = Vm
	global_par_Vm=-22.0;
% Parameter:   id =  VCa, name = VCa
	global_par_VCa=100.0;
% Parameter:   id =  gCa, name = gCa
	global_par_gCa=280.0;
% Parameter:   id =  minf, name = minf
% Parameter:   id =  sm, name = sm
	global_par_sm=7.5;
% Parameter:   id =  ICa, name = ICa
% Parameter:   id =  IK, name = IK
% Parameter:   id =  VK, name = VK
	global_par_VK=-80.0;
% Parameter:   id =  gK, name = gK
	global_par_gK=1300.0;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=1.1;
% Parameter:   id =  tnbar, name = tnbar
	global_par_tnbar=8.3;
% Parameter:   id =  Vn, name = Vn
	global_par_Vn=-9.0;
% Parameter:   id =  sn, name = sn
	global_par_sn=10.0;
% Parameter:   id =  taun, name = taun
% Parameter:   id =  ninf, name = ninf
% Parameter:   id =  Is1, name = Is1
% Parameter:   id =  gs1, name = gs1
	global_par_gs1=20.0;
% Parameter:   id =  s1inf, name = s1inf
% Parameter:   id =  Vs1, name = Vs1
	global_par_Vs1=-40.0;
% Parameter:   id =  ss1, name = ss1
	global_par_ss1=0.5;
% Parameter:   id =  taus1, name = taus1
	global_par_taus1=1000.0;
% Parameter:   id =  Vs2, name = Vs2
	global_par_Vs2=-42.0;
% Parameter:   id =  s2inf, name = s2inf
% Parameter:   id =  ss2, name = ss2
	global_par_ss2=0.4;
% Parameter:   id =  gs2, name = gs2
	global_par_gs2=32.0;
% Parameter:   id =  taus2, name = taus2
	global_par_taus2=120000.0;
% Parameter:   id =  Is2, name = Is2
% Parameter:   id =  Il, name = Il
% Parameter:   id =  gl, name = gl
	global_par_gl=25.0;
% Parameter:   id =  Vl, name = Vl
	global_par_Vl=-40.0;
% Parameter:   id =  parameter_1, name = I1+I2
% assignmentRule: variable = s1inf
	global_par_s1inf=1/(1+exp((global_par_Vs1-x(1))/global_par_ss1));
% assignmentRule: variable = minf
	global_par_minf=1/(1+exp((global_par_Vm-x(1))/global_par_sm));
% assignmentRule: variable = ICa
	global_par_ICa=global_par_gCa*global_par_minf*(x(1)-global_par_VCa);
% assignmentRule: variable = IK
	global_par_IK=global_par_gK*x(2)*(x(1)-global_par_VK);
% assignmentRule: variable = taun
	global_par_taun=global_par_tnbar/(1+exp((x(1)-global_par_Vn)/global_par_sn));
% assignmentRule: variable = ninf
	global_par_ninf=1/(1+exp((global_par_Vn-x(1))/global_par_sn));
% assignmentRule: variable = Is1
	global_par_Is1=global_par_gs1*x(3)*(x(1)-global_par_VK);
% assignmentRule: variable = s2inf
	global_par_s2inf=1/(1+exp((global_par_Vs2-x(1))/global_par_ss2));
% assignmentRule: variable = Is2
	global_par_Is2=global_par_gs2*x(4)*(x(1)-global_par_VK);
% assignmentRule: variable = Il
	global_par_Il=global_par_gl*(x(1)-global_par_Vl);
% assignmentRule: variable = parameter_1
	global_par_parameter_1=global_par_Is1+global_par_Is2;
% rateRule: variable = V
x(1) = x(5);
% rateRule: variable = n
x(2) = x(6);
% rateRule: variable = s1
x(3) = x(7);
% rateRule: variable = s2
x(4) = x(8);

	xdot=zeros(8,1);
	% rateRule: variable = V
	xdot(5) = (-(global_par_ICa+global_par_IK+global_par_Il+global_par_Is1+global_par_Is2))/global_par_Cm;
	% rateRule: variable = n
	xdot(6) = (global_par_ninf-x(2))/global_par_taun;
	% rateRule: variable = s1
	xdot(7) = (global_par_s1inf-x(3))/global_par_taus1;
	% rateRule: variable = s2
	xdot(8) = (global_par_s2inf-x(4))/global_par_taus2;
	
% Species:   id = V, name = V, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = n, name = n, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = s1, name = s1, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = s2, name = s2, defined in a rule 	xdot(4) = x(4);
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


