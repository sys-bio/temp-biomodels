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
% Model name = Komarova2005_PTHaction_OsteoclastOsteoblastCoupling
%
% is http://identifiers.org/biomodels.db/MODEL1011230000
% is http://identifiers.org/biomodels.db/BIOMD0000000279
% isDescribedBy http://identifiers.org/pubmed/15860557
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000148
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(4) = 1.06066;
	x0(5) = 212.132;
	x0(6) = 100.0;
	x0(1) = 1.06066;
	x0(2) = 212.132;
	x0(3) = 100.0;


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

% Compartment: id = Compartment, name = Compartment, constant
	compartment_Compartment=1.0;
% Parameter:   id =  y1, name = y1
% Parameter:   id =  y2, name = y2
% Parameter:   id =  x1_bar, name = x1_bar
% Parameter:   id =  x2_bar, name = x2_bar
% Parameter:   id =  alpha1, name = alpha1
	global_par_alpha1=3.0;
% Parameter:   id =  beta1, name = beta1
	global_par_beta1=0.2;
% Parameter:   id =  alpha2, name = alpha2
	global_par_alpha2=4.0;
% Parameter:   id =  beta2, name = beta2
	global_par_beta2=0.02;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.24;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.0017;
% Parameter:   id =  g11, name = g11
	global_par_g11=0.5;
% Parameter:   id =  g21, name = g21
	global_par_g21=-0.5;
% Parameter:   id =  g12, name = g12
	global_par_g12=1.0;
% Parameter:   id =  g22, name = g22
	global_par_g22=0.0;
% Parameter:   id =  gamma, name = gamma
% rateRule: variable = x1
x(1) = x(4);
% rateRule: variable = x2
x(2) = x(5);
% rateRule: variable = z
x(3) = x(6);
% assignmentRule: variable = y1
	global_par_y1=piecewise(x(1)-global_par_x1_bar, x(1) > global_par_x1_bar, 0);
% assignmentRule: variable = y2
	global_par_y2=piecewise(x(2)-global_par_x2_bar, x(2) > global_par_x2_bar, 0);
% assignmentRule: variable = x1_bar
	global_par_x1_bar=(global_par_beta1/global_par_alpha1)^((1-global_par_g22)/global_par_gamma)*(global_par_beta2/global_par_alpha2)^(global_par_g21/global_par_gamma);
% assignmentRule: variable = x2_bar
	global_par_x2_bar=(global_par_beta1/global_par_alpha1)^(global_par_g12/global_par_gamma)*(global_par_beta2/global_par_alpha2)^((1-global_par_g11)/global_par_gamma);
% assignmentRule: variable = gamma
	global_par_gamma=global_par_g12*global_par_g21-(1-global_par_g11)*(1-global_par_g22);

	xdot=zeros(6,1);
	% rateRule: variable = x1
	xdot(4) = global_par_alpha1*x(1)^global_par_g11*x(2)^global_par_g21-global_par_beta1*x(1);
	% rateRule: variable = x2
	xdot(5) = global_par_alpha2*x(1)^global_par_g12*x(2)^global_par_g22-global_par_beta2*x(2);
	% rateRule: variable = z
	xdot(6) = global_par_k2*global_par_y2-global_par_k1*global_par_y1;
	
% Species:   id = x1, name = Osteoclasts, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = x2, name = Osteoblasts, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = z, name = BoneMass, defined in a rule 	xdot(3) = x(3);
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


