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
% Model name = Morris1981_MuscleFibre_Voltage_reduced
%
% is http://identifiers.org/biomodels.db/MODEL1011240000
% is http://identifiers.org/biomodels.db/BIOMD0000000280
% isDescribedBy http://identifiers.org/pubmed/7260316
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = -50.0;
	x0(2) = NaN;


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

% Compartment: id = musclefiber, name = musclefiber, constant
	compartment_musclefiber=1.0;
% Parameter:   id =  Minf, name = Minf
% Parameter:   id =  V, name = V
% Parameter:   id =  V1, name = V1
	global_par_V1=10.0;
% Parameter:   id =  V2, name = V2
	global_par_V2=15.0;
% Parameter:   id =  Ninf, name = Ninf
% Parameter:   id =  V3, name = V3
	global_par_V3=-1.0;
% Parameter:   id =  V4, name = V4
	global_par_V4=14.5;
% Parameter:   id =  lambdaN, name = lambdaN
% Parameter:   id =  lambdaN_bar, name = lambdaN_bar
	global_par_lambdaN_bar=0.066666666667;
% Parameter:   id =  Iapp, name = Iapp
	global_par_Iapp=300.0;
% Parameter:   id =  gL, name = gL
	global_par_gL=2.0;
% Parameter:   id =  VL, name = VL
	global_par_VL=-50.0;
% Parameter:   id =  gCa, name = gCa
	global_par_gCa=4.0;
% Parameter:   id =  VCa, name = VCa
	global_par_VCa=100.0;
% Parameter:   id =  gK, name = gK
	global_par_gK=8.0;
% Parameter:   id =  N, name = N
% Parameter:   id =  VK, name = VK
	global_par_VK=-70.0;
% Parameter:   id =  C, name = C
	global_par_C=20.0;
% assignmentRule: variable = Minf
	global_par_Minf=(1+tanh((global_par_V-global_par_V1)/global_par_V2))/2;
% rateRule: variable = V
global_par_V = x(1);
% assignmentRule: variable = Ninf
	global_par_Ninf=(1+tanh((global_par_V-global_par_V3)/global_par_V4))/2;
% assignmentRule: variable = lambdaN
	global_par_lambdaN=global_par_lambdaN_bar*cosh((global_par_V-global_par_V3)/(2*global_par_V4));
% rateRule: variable = N
global_par_N = x(2);

	xdot=zeros(2,1);
	% rateRule: variable = V
	xdot(1) = (global_par_Iapp-global_par_gL*(global_par_V-global_par_VL)-global_par_gCa*global_par_Minf*(global_par_V-global_par_VCa)-global_par_gK*global_par_N*(global_par_V-global_par_VK))/global_par_C;
	% rateRule: variable = N
	xdot(2) = global_par_lambdaN*(global_par_Ninf-global_par_N);
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


