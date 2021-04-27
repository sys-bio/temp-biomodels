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
% Model name = Wodarz2003 Immunological Memory
%
% is http://identifiers.org/biomodels.db/MODEL1006230061
% isDescribedBy http://identifiers.org/pubmed/13678598
% is http://identifiers.org/biomodels.db/BIOMD0000000684
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 100.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.1;
	x0(10) = 0.1;


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

% Compartment: id = COMpartment, name = population, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  S, name = S
% Parameter:   id =  r, name = r
	global_par_r=0.5;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.1;
% Parameter:   id =  H, name = H
% Parameter:   id =  P, name = P
% Parameter:   id =  I_1, name = I_1
% Parameter:   id =  I_2, name = I_2
% Parameter:   id =  I_12, name = I_12
% Parameter:   id =  I_21, name = I_21
% Parameter:   id =  R_1, name = R_1
% Parameter:   id =  R_2, name = R_2
% Parameter:   id =  R_12, name = R_12
% Parameter:   id =  P_1, name = P_1
% Parameter:   id =  k_1, name = k_1
	global_par_k_1=0.1;
% Parameter:   id =  log_P1, name = log_P1
% Parameter:   id =  P_2, name = P_2
% Parameter:   id =  k_2, name = k_2
	global_par_k_2=0.1;
% Parameter:   id =  log_P2, name = log_P2
% Parameter:   id =  G, name = G
% Parameter:   id =  g, name = g
	global_par_g=0.01;
% Parameter:   id =  beta_1, name = beta_1
	global_par_beta_1=1.0;
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=0.1;
% Parameter:   id =  beta_2, name = beta_2
	global_par_beta_2=1.0;
% Parameter:   id =  alpha_2, name = alpha_2
	global_par_alpha_2=0.1;
% Parameter:   id =  a_1, name = a_1
	global_par_a_1=0.03;
% Parameter:   id =  a_2, name = a_2
	global_par_a_2=1.0;
% Parameter:   id =  d, name = d
	global_par_d=0.01;
% Parameter:   id =  u, name = u
	global_par_u=0.5;
% assignmentRule: variable = H
	global_par_H=global_par_S+global_par_I_1+global_par_R_1+global_par_I_2+global_par_R_2+global_par_I_12+global_par_I_21+global_par_R_12;
% assignmentRule: variable = P
	global_par_P=global_par_P_1+global_par_P_2;
% assignmentRule: variable = log_P2
	global_par_log_P2=log(10, global_par_P_2)/log(10, 10);
% assignmentRule: variable = G
	global_par_G=1/global_par_g;
% assignmentRule: variable = log_P1
	global_par_log_P1=log(10, global_par_P_1)/log(10, 10);
% rateRule: variable = S
global_par_S = x(1);
% rateRule: variable = I_1
global_par_I_1 = x(2);
% rateRule: variable = I_2
global_par_I_2 = x(3);
% rateRule: variable = I_12
global_par_I_12 = x(4);
% rateRule: variable = I_21
global_par_I_21 = x(5);
% rateRule: variable = R_1
global_par_R_1 = x(6);
% rateRule: variable = R_2
global_par_R_2 = x(7);
% rateRule: variable = R_12
global_par_R_12 = x(8);
% rateRule: variable = P_1
global_par_P_1 = x(9);
% rateRule: variable = P_2
global_par_P_2 = x(10);

	xdot=zeros(10,1);
	% rateRule: variable = S
	xdot(1) = global_par_r*global_par_H/(global_par_epsilon*global_par_H+1)-global_par_d*global_par_S-global_par_beta_1*global_par_S*global_par_P_1-global_par_beta_2*global_par_S*global_par_P_2+global_par_g*(global_par_R_1+global_par_R_2+global_par_R_12);
	% rateRule: variable = I_1
	xdot(2) = global_par_beta_1*global_par_S*global_par_P_1-global_par_a_1*global_par_I_1-global_par_alpha_1*global_par_I_1;
	% rateRule: variable = I_2
	xdot(3) = global_par_beta_2*global_par_S*global_par_P_2-global_par_a_2*global_par_I_2-global_par_alpha_2*global_par_I_2;
	% rateRule: variable = I_12
	xdot(4) = global_par_beta_2*global_par_R_1*global_par_P_2-global_par_a_2*global_par_I_12-global_par_alpha_2*global_par_I_12;
	% rateRule: variable = I_21
	xdot(5) = global_par_beta_1*global_par_R_2*global_par_P_1-global_par_a_1*global_par_I_21-global_par_alpha_1*global_par_I_21;
	% rateRule: variable = R_1
	xdot(6) = global_par_alpha_1*global_par_I_1-global_par_d*global_par_R_1-global_par_g*global_par_R_1-global_par_beta_2*global_par_R_1*global_par_P_2;
	% rateRule: variable = R_2
	xdot(7) = global_par_alpha_2*global_par_I_2-global_par_d*global_par_R_2-global_par_g*global_par_R_2-global_par_beta_1*global_par_R_2*global_par_P_1;
	% rateRule: variable = R_12
	xdot(8) = global_par_alpha_2*global_par_I_12+global_par_alpha_1*global_par_I_21-global_par_d*global_par_R_12-global_par_g*global_par_R_12;
	% rateRule: variable = P_1
	xdot(9) = global_par_k_1*(global_par_I_1+global_par_I_21)-global_par_u*global_par_P_1;
	% rateRule: variable = P_2
	xdot(10) = global_par_k_2*(global_par_I_2+global_par_I_12)-global_par_u*global_par_P_2;
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


