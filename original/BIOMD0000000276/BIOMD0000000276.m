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
% Model name = Shrestha2010_HypoCalcemia_PTHresponse
%
% is http://identifiers.org/biomodels.db/MODEL1011170001
% is http://identifiers.org/biomodels.db/BIOMD0000000276
% isDescribedBy http://identifiers.org/pubmed/20406649
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 1.22;


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

% Compartment: id = PTG_pool, name = PTG_pool, constant
	compartment_PTG_pool=1.0;
% Compartment: id = Plasma_pool, name = Plasma_pool, constant
	compartment_Plasma_pool=1.0;
% Parameter:   id =  k, name = k
% Parameter:   id =  lambda_Ca, name = lambda_Ca
% Parameter:   id =  m_Ca, name = m_Ca
% Parameter:   id =  m1, name = m1
	global_par_m1=112.52;
% Parameter:   id =  m2, name = m2
	global_par_m2=15.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=1000000.0;
% Parameter:   id =  R, name = R
	global_par_R=1.2162;
% Parameter:   id =  lambda_1, name = lambda_1
	global_par_lambda_1=0.0125;
% Parameter:   id =  lambda_2, name = lambda_2
	global_par_lambda_2=0.5595;
% Parameter:   id =  A, name = A
% Parameter:   id =  B, name = B
% Parameter:   id =  S, name = S
% Parameter:   id =  Ca0, name = Ca0
	global_par_Ca0=1.255;
% Parameter:   id =  Ca1, name = Ca1
	global_par_Ca1=0.1817;
% Parameter:   id =  t0, name = t0
	global_par_t0=575.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.0442;
% Parameter:   id =  x1_n, name = x1_n
	global_par_x1_n=490.78;
% Parameter:   id =  x2_n, name = x2_n
	global_par_x2_n=6.629;
% Parameter:   id =  x2_min, name = x2_min
	global_par_x2_min=0.6697;
% Parameter:   id =  x2_max, name = x2_max
	global_par_x2_max=14.043;
% Parameter:   id =  Ca0_baseline, name = Ca0_baseline
	global_par_Ca0_baseline=1.255;
% assignmentRule: variable = lambda_Ca
	global_par_lambda_Ca=(global_par_A-global_par_B)/(1+(x(3)/global_par_S)^global_par_m_Ca)+global_par_B;
% assignmentRule: variable = m_Ca
	global_par_m_Ca=global_par_m1/(1+exp((-global_par_beta)*(global_par_R-x(3))))+global_par_m2;
% assignmentRule: variable = Ca
	x(3)=piecewise(global_par_Ca0, time < global_par_t0, global_par_Ca0-global_par_Ca1*(1-exp((-global_par_alpha)*(time-global_par_t0))));
% rateRule: variable = x1
x(1) = x(4);
% rateRule: variable = x2
x(2) = x(5);
% assignmentRule: variable = S
	global_par_S=global_par_Ca0_baseline*((-(global_par_x1_n*global_par_B-global_par_lambda_2*global_par_x2_n))/(global_par_x1_n*global_par_A-global_par_lambda_2*global_par_x2_n))^(1/global_par_m_Ca);
% assignmentRule: variable = k
	global_par_k=global_par_lambda_2*global_par_x2_n+global_par_lambda_1*global_par_x1_n;
% assignmentRule: variable = A
	global_par_A=global_par_lambda_1*global_par_lambda_2*global_par_x2_max/(global_par_k-global_par_lambda_2*global_par_x2_max);
% assignmentRule: variable = B
	global_par_B=global_par_lambda_1*global_par_lambda_2*global_par_x2_min/(global_par_k-global_par_lambda_2*global_par_x2_min);

	xdot=zeros(5,1);
	% rateRule: variable = x1
	xdot(4) = global_par_k-global_par_lambda_Ca*x(1)-global_par_lambda_1*x(1);
	% rateRule: variable = x2
	xdot(5) = global_par_lambda_Ca*x(1)-global_par_lambda_2*x(2);
	
% Species:   id = x1, name = PTH_in_PTG, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = x2, name = PTH_in_Plasma, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = Ca, name = Ca_in_Plasma, defined in a rule 	xdot(3) = x(3);
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


