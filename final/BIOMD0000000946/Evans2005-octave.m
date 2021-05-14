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
% Model name = Evans2005 - Compartmental model for antineoplastic drug topotecan in breast cancer cells
%
% is http://identifiers.org/biomodels.db/MODEL1805210001
% is http://identifiers.org/biomodels.db/BIOMD0000000946
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(8) = 10.00015045;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(1) = 10.00015045;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;


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

% Compartment: id = breast_cancer_cell, name = breast cancer cell, constant
	compartment_breast_cancer_cell=1.0;
% Parameter:   id =  k_mi, name = k_mi
	global_par_k_mi=1.3974E-6;
% Parameter:   id =  k_mo, name = k_mo
	global_par_k_mo=0.085551;
% Parameter:   id =  k_i, name = k_i
	global_par_k_i=0.02211;
% Parameter:   id =  k_e, name = k_e
	global_par_k_e=0.0078915;
% Parameter:   id =  k_b, name = k_b
	global_par_k_b=3.8085E-4;
% Parameter:   id =  k_dl, name = k_dl
	global_par_k_dl=0.055522;
% Parameter:   id =  k_dh, name = k_dh
	global_par_k_dh=1.5639E-7;
% Parameter:   id =  B_T, name = B_T
	global_par_B_T=89.972;
% Parameter:   id =  V_c, name = V_c
	global_par_V_c=829.0;
% Parameter:   id =  V_e, name = V_e
% Parameter:   id =  V_m, name = V_m
% Parameter:   id =  V_n, name = V_n
	global_par_V_n=326.0;
% Parameter:   id =  v0, name = v0
	global_par_v0=1.5045E-5;
% Parameter:   id =  v1, name = v1
% Parameter:   id =  v2, name = v2
% Parameter:   id =  D, name = D
	global_par_D=10.0;
% Parameter:   id =  k_om, name = k_om
	global_par_k_om=1.5599E-4;
% Parameter:   id =  k_cm, name = k_cm
	global_par_k_cm=2.9553E-4;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=24125.0;
% Parameter:   id =  k_oc, name = k_oc
	global_par_k_oc=1.2913E-4;
% Parameter:   id =  k_cc, name = k_cc
	global_par_k_cc=3.1578E-4;
% assignmentRule: variable = V_e
	global_par_V_e=2E12*global_par_v0/(1+global_par_v0);
% assignmentRule: variable = V_m
	global_par_V_m=2E12-global_par_V_e;
% assignmentRule: variable = v1
	global_par_v1=global_par_alpha*global_par_v0/(1+global_par_v0);
% assignmentRule: variable = v2
	global_par_v2=global_par_V_n/global_par_V_c;
% rateRule: variable = L_m
x(1) = x(8);
% rateRule: variable = H_m
x(2) = x(9);
% rateRule: variable = L_e
x(3) = x(10);
% rateRule: variable = H_e
x(4) = x(11);
% rateRule: variable = L_c
x(5) = x(12);
% rateRule: variable = H_c
x(6) = x(13);
% rateRule: variable = L_n
x(7) = x(14);

	xdot=zeros(14,1);
	% rateRule: variable = L_m
	xdot(8) = (-(global_par_k_om+global_par_k_mi))*x(1)+global_par_k_cm*x(2)+global_par_k_mo*global_par_v0*x(3);
	% rateRule: variable = H_m
	xdot(9) = global_par_k_om*x(1)-(global_par_k_cm+global_par_k_mi)*x(2)+global_par_k_mo*global_par_v0*x(4);
	% rateRule: variable = L_e
	xdot(10) = global_par_k_mi/global_par_v0*x(1)-(global_par_k_mo+global_par_k_om+global_par_k_i)*x(3)+global_par_k_cm*x(4)+global_par_k_e/global_par_v1*x(5);
	% rateRule: variable = H_e
	xdot(11) = global_par_k_mi/global_par_v0*x(2)+global_par_k_om*x(3)-(global_par_k_cm+global_par_k_mo)*x(4);
	% rateRule: variable = L_c
	xdot(12) = global_par_k_i*global_par_v1*x(3)-(global_par_k_e+global_par_k_oc)*x(5)+global_par_k_cc*x(6)+global_par_k_dl*global_par_v2*x(7)-global_par_k_b*(global_par_B_T-x(7))*x(5);
	% rateRule: variable = H_c
	xdot(13) = global_par_k_oc*x(5)-global_par_k_cc*x(6)+global_par_k_dh*global_par_v2*x(7);
	% rateRule: variable = L_n
	xdot(14) = global_par_k_b/global_par_v2*(global_par_B_T-x(7))*x(5)-(global_par_k_dl+global_par_k_dh)*x(7);
	
% Species:   id = L_m, name = L_m, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = H_m, name = H_m, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = L_e, name = L_e, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = H_e, name = H_e, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = L_c, name = L_c, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = H_c, name = H_c, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = L_n, name = L_n, involved in a rule 	xdot(7) = x(7);
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


