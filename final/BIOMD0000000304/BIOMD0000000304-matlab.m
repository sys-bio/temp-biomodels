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
% Model name = Plant1981_BurstingNerveCells
%
% is http://identifiers.org/biomodels.db/MODEL6762427183
% is http://identifiers.org/biomodels.db/BIOMD0000000304
% isDescribedBy http://identifiers.org/pubmed/7252375
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(6) = 0.9;
	x0(7) = 0.27;
	x0(8) = 0.03;
	x0(9) = 0.4;
	x0(10) = -55.0;
	x0(1) = -55.0;
	x0(2) = 0.9;
	x0(3) = 0.27;
	x0(4) = 0.03;
	x0(5) = 0.4;


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

% Compartment: id = COMpartment, name = COMpartment, constant
	compartment_COMpartment=1.0;
% Parameter:   id =  i_Na, name = i_Na
% Parameter:   id =  V_I, name = V_I
	global_par_V_I=30.0;
% Parameter:   id =  V_K, name = V_K
	global_par_V_K=-75.0;
% Parameter:   id =  V_L, name = V_L
	global_par_V_L=-40.0;
% Parameter:   id =  V_Ca, name = V_Ca
	global_par_V_Ca=140.0;
% Parameter:   id =  g_I, name = g_I
	global_par_g_I=4.0;
% Parameter:   id =  g_K, name = g_K
	global_par_g_K=0.3;
% Parameter:   id =  g_T, name = g_T
	global_par_g_T=0.01;
% Parameter:   id =  g_K_Ca, name = g_K_Ca
	global_par_g_K_Ca=0.03;
% Parameter:   id =  g_L, name = g_L
	global_par_g_L=0.003;
% Parameter:   id =  K_p, name = K_p
	global_par_K_p=0.5;
% Parameter:   id =  K_c, name = K_c
	global_par_K_c=0.0085;
% Parameter:   id =  f, name = f
	global_par_f=3.0E-4;
% Parameter:   id =  tau_x, name = tau_x
	global_par_tau_x=235.0;
% Parameter:   id =  a, name = a
	global_par_a=1.209;
% Parameter:   id =  b, name = b
	global_par_b=78.714;
% Parameter:   id =  Vs, name = Vs
% Parameter:   id =  m_infinity, name = m_infinity
% Parameter:   id =  alpha_m, name = alpha_m
% Parameter:   id =  beta_m, name = beta_m
% Parameter:   id =  h_infinity, name = h_infinity
% Parameter:   id =  alpha_h, name = alpha_h
% Parameter:   id =  beta_h, name = beta_h
% Parameter:   id =  tau_h, name = tau_h
% Parameter:   id =  g_Ca, name = g_Ca
% Warning parameter g_Ca is not constant, it should be controlled by a Rule and/or events
	global_par_g_Ca=0.004;
% Parameter:   id =  x_infinity, name = x_infinity
% Parameter:   id =  i_Ca, name = i_Ca
% Parameter:   id =  n_infinity, name = n_infinity
% Parameter:   id =  i_K, name = i_K
% Parameter:   id =  alpha_n, name = alpha_n
% Parameter:   id =  beta_n, name = beta_n
% Parameter:   id =  tau_n, name = tau_n
% Parameter:   id =  i_K_Ca, name = i_K_Ca
% Parameter:   id =  i_L, name = i_L
% assignmentRule: variable = Vs
	global_par_Vs=global_par_a*x(1)+global_par_b;
% assignmentRule: variable = alpha_m
	global_par_alpha_m=0.1*(50-global_par_Vs)/(exp((50-global_par_Vs)/10)-1);
% assignmentRule: variable = beta_m
	global_par_beta_m=4*exp((25-global_par_Vs)/18);
% assignmentRule: variable = m_infinity
	global_par_m_infinity=global_par_alpha_m/(global_par_alpha_m+global_par_beta_m);
% assignmentRule: variable = alpha_h
	global_par_alpha_h=0.07*exp((25-global_par_Vs)/20);
% assignmentRule: variable = beta_h
	global_par_beta_h=1/(exp((55-global_par_Vs)/10)+1);
% assignmentRule: variable = h_infinity
	global_par_h_infinity=global_par_alpha_h/(global_par_alpha_h+global_par_beta_h);
% assignmentRule: variable = tau_h
	global_par_tau_h=12.5/(global_par_alpha_h+global_par_beta_h);
% rateRule: variable = h1
x(2) = x(6);
% assignmentRule: variable = i_Na
	global_par_i_Na=global_par_g_I*global_par_m_infinity^3*x(2)*(global_par_V_I-x(1));
% assignmentRule: variable = x_infinity
	global_par_x_infinity=1/(exp(0.15*(-x(1)-50))+1);
% rateRule: variable = x1
x(3) = x(7);
% assignmentRule: variable = i_Ca
	global_par_i_Ca=global_par_g_T*x(3)*(global_par_V_I-x(1));
% assignmentRule: variable = alpha_n
	global_par_alpha_n=0.01*(55-global_par_Vs)/(exp((55-global_par_Vs)/10)-1);
% assignmentRule: variable = beta_n
	global_par_beta_n=0.125*exp((45-global_par_Vs)/80);
% assignmentRule: variable = n_infinity
	global_par_n_infinity=global_par_alpha_n/(global_par_alpha_n+global_par_beta_n);
% assignmentRule: variable = tau_n
	global_par_tau_n=12.5/(global_par_alpha_n+global_par_beta_n);
% rateRule: variable = n1
x(4) = x(8);
% assignmentRule: variable = i_K
	global_par_i_K=global_par_g_K*x(4)^4*(global_par_V_K-x(1));
% rateRule: variable = c
x(5) = x(9);
% assignmentRule: variable = i_K_Ca
	global_par_i_K_Ca=global_par_g_K_Ca*x(5)/(global_par_K_p+x(5))*(global_par_V_K-x(1));
% assignmentRule: variable = i_L
	global_par_i_L=global_par_g_L*(global_par_V_L-x(1));
% rateRule: variable = V_membrane
x(1) = x(10);

	xdot=zeros(10,1);
	% rateRule: variable = h1
	xdot(6) = (global_par_h_infinity-x(2))/global_par_tau_h;
	% rateRule: variable = x1
	xdot(7) = (global_par_x_infinity-x(3))/global_par_tau_x;
	% rateRule: variable = n1
	xdot(8) = (global_par_n_infinity-x(4))/global_par_tau_n;
	% rateRule: variable = c
	xdot(9) = global_par_f*(global_par_K_c*x(3)*(global_par_V_Ca-x(1))-x(5));
	% rateRule: variable = V_membrane
	xdot(10) = global_par_i_Na+global_par_i_Ca+global_par_i_K+global_par_i_K_Ca+global_par_i_L;
	
% Species:   id = V_membrane, name = V, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = h1, name = h1, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = x1, name = x1, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = n1, name = n1, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = c, name = c, defined in a rule 	xdot(5) = x(5);
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


