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
% Model name = Brown1997 - Plasma Melatonin Levels
%
% is http://identifiers.org/biomodels.db/MODEL1006230019
% is http://identifiers.org/biomodels.db/BIOMD0000000672
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 0.05;
	x0(2) = 1.0;


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

% Compartment: id = COMpartment, name = COMpartment, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  H1, name = H1
% Parameter:   id =  H2, name = H2
% Parameter:   id =  A, name = A
% Parameter:   id =  t_on, name = t_on
	global_par_t_on=1316.0;
% Parameter:   id =  t_off, name = t_off
	global_par_t_off=1794.0;
% Parameter:   id =  A_max, name = A_max
	global_par_A_max=6.51;
% Parameter:   id =  beta_I, name = beta_I
% Parameter:   id =  beta_C, name = beta_C
% Parameter:   id =  alpha, name = alpha
% Parameter:   id =  lamda, name = lamda
% Parameter:   id =  tau_I, name = tau_I
	global_par_tau_I=2.82;
% Parameter:   id =  tau_C, name = tau_C
	global_par_tau_C=23.67;
% Parameter:   id =  tau_alpha, name = tau_alpha
	global_par_tau_alpha=25.92;
% Parameter:   id =  tau_lamda, name = tau_lamda
	global_par_tau_lamda=24.04;
% assignmentRule: variable = A
	global_par_A=piecewise(global_par_A_max*(1-exp((-global_par_lamda)*(time-global_par_t_on)))/(1-exp((-global_par_lamda)*(global_par_t_off-global_par_t_on))), (time < global_par_t_off) && (time >= global_par_t_on), piecewise(global_par_A_max*exp((-global_par_alpha)*(time-global_par_t_off)), time >= global_par_t_off, 0));
% rateRule: variable = H1
global_par_H1 = x(1);
% rateRule: variable = H2
global_par_H2 = x(2);

	xdot=zeros(2,1);
	% rateRule: variable = H1
	xdot(1) = (-global_par_beta_I*global_par_H1)+global_par_A;
	% rateRule: variable = H2
	xdot(2) = global_par_beta_I*global_par_H1-global_par_beta_C*global_par_H2;
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


