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
% Model name = Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection
%
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(7) = 100000.0;
	x0(8) = 1.0E8;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(1) = 100000.0;
	x0(2) = 1.0E8;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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
% Parameter:   id =  r, name = r
	global_par_r=1.13;
% Parameter:   id =  K_P, name = K_P
	global_par_K_P=2.3E8;
% Parameter:   id =  gamma_M_A, name = gamma_M_A
	global_par_gamma_M_A=5.6E-6;
% Parameter:   id =  n, name = n
	global_par_n=5.0;
% Parameter:   id =  x, name = x
	global_par_x=2.0;
% Parameter:   id =  d, name = d
	global_par_d=0.001;
% Parameter:   id =  M_Astar, name = M_Astar
	global_par_M_Astar=1000000.0;
% Parameter:   id =  gamma_N, name = gamma_N
	global_par_gamma_N=1.0E-5;
% Parameter:   id =  theta_M, name = theta_M
	global_par_theta_M=4.2E-8;
% Parameter:   id =  kappa, name = kappa
	global_par_kappa=0.042;
% Parameter:   id =  v, name = v
	global_par_v=0.029;
% Parameter:   id =  omega, name = omega
	global_par_omega=2.1E-8;
% Parameter:   id =  d_E, name = d_E
	global_par_d_E=0.167;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.021;
% Parameter:   id =  k_n, name = k_n
	global_par_k_n=1.4E-5;
% Parameter:   id =  d_C, name = d_C
	global_par_d_C=0.83;
% Parameter:   id =  N_max, name = N_max
	global_par_N_max=180000.0;
% Parameter:   id =  eta, name = eta
	global_par_eta=1.33;
% Parameter:   id =  d_N, name = d_N
	global_par_d_N=0.063;
% Parameter:   id =  d_NP, name = d_NP
	global_par_d_NP=1.76E-7;
% Parameter:   id =  rho1, name = rho1
	global_par_rho1=0.15;
% Parameter:   id =  rho2, name = rho2
	global_par_rho2=0.001;
% Parameter:   id =  rho3, name = rho3
	global_par_rho3=1.0E-5;
% Parameter:   id =  d_D, name = d_D
	global_par_d_D=1.4E-7;
% Parameter:   id =  k_d, name = k_d
	global_par_k_d=5.0E-9;
% Parameter:   id =  f_P_M_A, name = f_P_M_A
% Parameter:   id =  s, name = s
	global_par_s=1000.0;
% assignmentRule: variable = f_P_M_A
	global_par_f_P_M_A=global_par_n^global_par_x*global_par_M_Astar/(x(1)^global_par_x+global_par_n^global_par_x*global_par_M_Astar);
% rateRule: variable = P
x(1) = x(7);
% rateRule: variable = E_U
x(2) = x(8);
% rateRule: variable = E_A
x(3) = x(9);
% rateRule: variable = C
x(4) = x(10);
% rateRule: variable = N
x(5) = x(11);
% rateRule: variable = D
x(6) = x(12);

%Event: id=event
	event_event=x(2) < 0;

	if(event_event) 
		x(2)=0;
	end

%Event: id=event_1
	event_event_1=x(1) < 0;

	if(event_event_1) 
		x(1)=0;
	end

	xdot=zeros(12,1);
	% rateRule: variable = P
	xdot(7) = global_par_r*x(1)*(1-x(1)/global_par_K_P)-global_par_gamma_M_A*global_par_f_P_M_A/(1+global_par_k_d*x(6)*global_par_M_Astar)*global_par_M_Astar*x(1)-global_par_gamma_N*x(5)*x(1);
	% rateRule: variable = E_U
	xdot(8) = (-global_par_omega)*x(1)*x(2);
	% rateRule: variable = E_A
	xdot(9) = global_par_omega*x(1)*x(2)-global_par_d_E*x(3);
	% rateRule: variable = C
	xdot(10) = global_par_alpha*x(3)/(1+global_par_k_n*x(5))+global_par_v*global_par_theta_M*x(1)*global_par_M_Astar/((global_par_d+global_par_kappa+global_par_theta_M*x(1))*(1+global_par_k_n*x(5)))-global_par_d_C*x(4);
	% rateRule: variable = N
	xdot(11) = global_par_eta*x(4)*(1-x(5)/global_par_N_max)-global_par_d_NP*x(5)*x(1)-global_par_d_N*x(5);
	% rateRule: variable = D
	xdot(12) = global_par_rho1*global_par_d_NP*x(5)*x(1)+global_par_rho2*global_par_d_N*x(5)+global_par_rho3*global_par_d_E*x(3)-global_par_d_D*x(6)*global_par_M_Astar;
	
% Species:   id = P, name = P, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = E_U, name = E_U, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = E_A, name = E_A, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = C, name = C, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = N, name = N, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = D, name = D, involved in a rule 	xdot(6) = x(6);
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


