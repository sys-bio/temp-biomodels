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
% Model name = Evans2004 - Cell based mathematical model of topotecan
%
% is http://identifiers.org/biomodels.db/MODEL1805170002
% is http://identifiers.org/biomodels.db/BIOMD0000000945
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(6) = 10.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(1) = 10.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;


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

% Compartment: id = human_lymphoma_cells, name = human lymphoma cells, constant
	compartment_human_lymphoma_cells=1.0;
% Parameter:   id =  k_0_m, name = k_0,m
	global_par_k_0_m=0.0289;
% Parameter:   id =  k_i, name = k_i
	global_par_k_i=3.09E-4;
% Parameter:   id =  k_e, name = k_e
	global_par_k_e=1.014;
% Parameter:   id =  k_o_c, name = k_o,c
	global_par_k_o_c=0.026553;
% Parameter:   id =  k_c_c, name = k_c,c
	global_par_k_c_c=0.18637;
% Parameter:   id =  k_d, name = k_d
	global_par_k_d=4.4489;
% Parameter:   id =  k_c_m, name = k_c,m
	global_par_k_c_m=1.06E-4;
% Parameter:   id =  k_b, name = k_b
	global_par_k_b=8.5341E-4;
% Parameter:   id =  B_T, name = B_T
	global_par_B_T=28.9;
% Parameter:   id =  v_1, name = v_1
% Parameter:   id =  v_2, name = v_2
% Parameter:   id =  V_m, name = V_m
	global_par_V_m=2.0E12;
% Parameter:   id =  V_c, name = V_c
	global_par_V_c=829.0;
% Parameter:   id =  V_n, name = V_n
	global_par_V_n=326.0;
% Parameter:   id =  D, name = D
	global_par_D=10.0;
% assignmentRule: variable = v_1
	global_par_v_1=global_par_V_m/(global_par_V_c*400000)*0.001;
% assignmentRule: variable = v_2
	global_par_v_2=global_par_V_n/global_par_V_c;
% rateRule: variable = L_m
x(1) = x(6);
% rateRule: variable = H_m
x(2) = x(7);
% rateRule: variable = L_c
x(3) = x(8);
% rateRule: variable = H_c
x(4) = x(9);
% rateRule: variable = L_n
x(5) = x(10);

	xdot=zeros(10,1);
	% rateRule: variable = L_m
	xdot(6) = (-(global_par_k_0_m+global_par_k_i))*x(1)+global_par_k_c_m*x(2)+global_par_k_e*global_par_v_1*x(3);
	% rateRule: variable = H_m
	xdot(7) = global_par_k_0_m*x(1)-global_par_k_c_m*x(2);
	% rateRule: variable = L_c
	xdot(8) = global_par_k_i*global_par_v_1*x(1)-(global_par_k_e+global_par_k_o_c)*x(3)+global_par_k_c_c*x(4)-global_par_k_b*(global_par_B_T-x(5))*x(3)+global_par_v_2*global_par_k_d*x(5);
	% rateRule: variable = H_c
	xdot(9) = global_par_k_o_c*x(3)-global_par_k_c_c*x(4);
	% rateRule: variable = L_n
	xdot(10) = global_par_k_b*global_par_v_2*(global_par_B_T-x(5))*x(3)-global_par_k_d*x(5);
	
% Species:   id = L_m, name = L_m, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = H_m, name = H_m, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = L_c, name = L_c, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = H_c, name = H_c, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = L_n, name = L_n, involved in a rule 	xdot(5) = x(5);
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


