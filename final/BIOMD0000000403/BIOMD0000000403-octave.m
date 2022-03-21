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
% Model name = Ayati2010_BoneRemodelingDynamics_WithTumour+DrugTreatment
%
% is http://identifiers.org/biomodels.db/MODEL1112060002
% is http://identifiers.org/biomodels.db/BIOMD0000000403
% isDescribedBy http://identifiers.org/pubmed/20406449
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000148
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000279
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(5) = 13.0;
	x0(6) = 300.0;
	x0(7) = 100.0;
	x0(8) = 1.0;
	x0(1) = 13.0;
	x0(2) = 300.0;
	x0(3) = 100.0;
	x0(4) = 1.0;


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
% Parameter:   id =  y1, name = y1
% Parameter:   id =  y2, name = y2
% Parameter:   id =  C_bar, name = C_bar
% Parameter:   id =  B_bar, name = B_bar
% Parameter:   id =  alpha1, name = alpha1
	global_par_alpha1=3.0;
% Parameter:   id =  beta1, name = beta1
	global_par_beta1=0.2;
% Parameter:   id =  alpha2, name = alpha2
	global_par_alpha2=4.0;
% Parameter:   id =  beta2, name = beta2
	global_par_beta2=0.02;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.0748;
% Parameter:   id =  k2, name = k2
	global_par_k2=6.395E-4;
% Parameter:   id =  g11, name = g11
	global_par_g11=1.1;
% Parameter:   id =  g21, name = g21
	global_par_g21=-0.5;
% Parameter:   id =  g12, name = g12
	global_par_g12=1.0;
% Parameter:   id =  g22, name = g22
	global_par_g22=0.0;
% Parameter:   id =  gamma, name = gamma
% Parameter:   id =  gammaT, name = gammaT
	global_par_gammaT=0.005;
% Parameter:   id =  LT, name = LT
	global_par_LT=100.0;
% Parameter:   id =  r11, name = r11
	global_par_r11=0.005;
% Parameter:   id =  r21, name = r21
	global_par_r21=0.0;
% Parameter:   id =  r12, name = r12
	global_par_r12=0.0;
% Parameter:   id =  r22, name = r22
	global_par_r22=0.2;
% Parameter:   id =  V1, name = V1
% Parameter:   id =  V2, name = V2
% Parameter:   id =  v1, name = v1
	global_par_v1=0.001;
% Parameter:   id =  v2, name = v2
	global_par_v2=0.008;
% rateRule: variable = C
x(1) = x(5);
% rateRule: variable = B
x(2) = x(6);
% rateRule: variable = z
x(3) = x(7);
% assignmentRule: variable = y1
	global_par_y1=piecewise(x(1)-global_par_C_bar, x(1) > global_par_C_bar, 0);
% assignmentRule: variable = y2
	global_par_y2=piecewise(x(2)-global_par_B_bar, x(2) > global_par_B_bar, 0);
% assignmentRule: variable = C_bar
	global_par_C_bar=(global_par_beta1/global_par_alpha1)^((1-global_par_g22+global_par_r22)/global_par_gamma)*(global_par_beta2/global_par_alpha2)^(global_par_g21*(1+global_par_r21)/global_par_gamma);
% assignmentRule: variable = B_bar
	global_par_B_bar=(global_par_beta1/global_par_alpha1)^(global_par_g12/(1+global_par_r12)/global_par_gamma)*(global_par_beta2/global_par_alpha2)^((1-global_par_g11*(1+global_par_r11))/global_par_gamma);
% assignmentRule: variable = gamma
	global_par_gamma=global_par_g12/(1+global_par_r12)*global_par_g21*(1+global_par_r21)-(1-global_par_g11*(1+global_par_r11))*(1-global_par_g22+global_par_r22);
% rateRule: variable = Tumour
x(4) = x(8);
% assignmentRule: variable = V1
	global_par_V1=piecewise(global_par_v1, time >= 600, 0);
% assignmentRule: variable = V2
	global_par_V2=piecewise(global_par_v2, time >= 600, 0);

	xdot=zeros(8,1);
	% rateRule: variable = C
	xdot(5) = global_par_alpha1*x(1)^(global_par_g11*(1+global_par_r11*x(4)/global_par_LT))*x(2)^(global_par_g21*(1+global_par_r21*x(4)/global_par_LT))-global_par_beta1*x(1);
	% rateRule: variable = B
	xdot(6) = global_par_alpha2*x(1)^(global_par_g12/(1+global_par_r12*x(4)/global_par_LT))*x(2)^(global_par_g22-global_par_r22*x(4)/global_par_LT)-(global_par_beta2-global_par_V1)*x(2);
	% rateRule: variable = z
	xdot(7) = global_par_k2*global_par_y2-global_par_k1*global_par_y1;
	% rateRule: variable = Tumour
	xdot(8) = (global_par_gammaT-global_par_V2)*x(4)*log(global_par_LT/x(4));
	
% Species:   id = C, name = Osteoclasts, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = B, name = Osteoblasts, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = z, name = BoneMass, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = Tumour, name = Tumour, defined in a rule 	xdot(4) = x(4);
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


