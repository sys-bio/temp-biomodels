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
% Model name = Lemaire2004_BoneRemodeling_addRANKLandOPG
%
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(4) = 7.734E-4;
	x0(5) = 7.282E-4;
	x0(6) = 9.127E-4;
	x0(1) = 7.734E-4;
	x0(2) = 7.282E-4;
	x0(3) = 9.127E-4;


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
% Parameter:   id =  C_s, name = C_s
	global_par_C_s=0.005;
% Parameter:   id =  D_A, name = D_A
	global_par_D_A=0.7;
% Parameter:   id =  d_B, name = d_B
	global_par_d_B=0.7;
% Parameter:   id =  D_C, name = D_C
	global_par_D_C=0.0021;
% Parameter:   id =  D_R, name = D_R
	global_par_D_R=7.0E-4;
% Parameter:   id =  f0, name = f0
	global_par_f0=0.05;
% Parameter:   id =  I_L, name = I_L
% Parameter:   id =  I_O, name = I_O
% Parameter:   id =  I_P, name = I_P
	global_par_I_P=0.0;
% Parameter:   id =  K, name = K
	global_par_K=10.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.01;
% Parameter:   id =  k2, name = k2
	global_par_k2=10.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=5.8E-4;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.017;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.02;
% Parameter:   id =  k6, name = k6
	global_par_k6=3.0;
% Parameter:   id =  k_B, name = k_B
	global_par_k_B=0.189;
% Parameter:   id =  K_L_P, name = K_L_P
	global_par_K_L_P=3000000.0;
% Parameter:   id =  kO, name = kO
	global_par_kO=0.35;
% Parameter:   id =  K_O_P, name = K_O_P
	global_par_K_O_P=200000.0;
% Parameter:   id =  k_P, name = k_P
	global_par_k_P=86.0;
% Parameter:   id =  r_L, name = r_L
	global_par_r_L=1000.0;
% Parameter:   id =  S_P, name = S_P
	global_par_S_P=250.0;
% Parameter:   id =  Phi_C, name = Phi_C
% Parameter:   id =  D_B, name = D_B
% Parameter:   id =  Phi_L, name = Phi_L
% Parameter:   id =  Phi_P, name = Phi_P
% Parameter:   id =  Pbar, name = Pbar
% Parameter:   id =  P_O, name = P_O
% Parameter:   id =  P_S, name = P_S
% assignmentRule: variable = I_O
	global_par_I_O=piecewise(90000, time >= 80, 0);
% assignmentRule: variable = I_L
	global_par_I_L=piecewise(10000, time >= 20, 0);
% assignmentRule: variable = D_B
	global_par_D_B=global_par_f0*global_par_d_B;
% assignmentRule: variable = Phi_C
	global_par_Phi_C=(x(3)+global_par_f0*global_par_C_s)/(x(3)+global_par_C_s);
% assignmentRule: variable = Phi_L
	global_par_Phi_L=global_par_k3/global_par_k4*global_par_K_L_P*global_par_Phi_P*x(2)/(1+global_par_k3*global_par_K/global_par_k4+global_par_k1/(global_par_k2*global_par_kO)*(global_par_I_O+global_par_K_O_P*x(1)/global_par_Phi_P))*(1+global_par_I_L/global_par_r_L);
% assignmentRule: variable = Phi_P
	global_par_Phi_P=(global_par_Pbar+global_par_P_O)/(global_par_Pbar+global_par_P_S);
% assignmentRule: variable = Pbar
	global_par_Pbar=global_par_I_P/global_par_k_P;
% assignmentRule: variable = P_O
	global_par_P_O=global_par_S_P/global_par_k_P;
% assignmentRule: variable = P_S
	global_par_P_S=global_par_k6/global_par_k5;
% rateRule: variable = R
x(1) = x(4);
% rateRule: variable = B
x(2) = x(5);
% rateRule: variable = C
x(3) = x(6);

	xdot=zeros(6,1);
	% rateRule: variable = R
	xdot(4) = global_par_D_R*global_par_Phi_C-global_par_D_B*x(1)/global_par_Phi_C;
	% rateRule: variable = B
	xdot(5) = global_par_D_B*x(1)/global_par_Phi_C-global_par_k_B*x(2);
	% rateRule: variable = C
	xdot(6) = global_par_D_C*global_par_Phi_L-global_par_D_A*global_par_Phi_C*x(3);
	
% Species:   id = R, name = Responding_Osteoblasts, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = B, name = Active_Osteoblasts, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = C, name = Active_Osteoclasts, defined in a rule 	xdot(3) = x(3);
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


