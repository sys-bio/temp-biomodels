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
% Model name = Chitnis2012 - Model Rift Valley Fever transmission between cattle and mosquitoes (Model 1)
%
% isDescribedBy http://identifiers.org/pubmed/23098257
% is http://identifiers.org/biomodels.db/MODEL1805230002
% is http://identifiers.org/biomodels.db/BIOMD0000000950
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(8) = 1000.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 19999.0;
	x0(13) = 0.0;
	x0(14) = 1.0;
	x0(1) = 1000.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 19999.0;
	x0(6) = 0.0;
	x0(7) = 1.0;


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

% Compartment: id = Cattle, name = Cattle, constant
	compartment_Cattle=1.0;
% Compartment: id = Vector, name = Vector, constant
	compartment_Vector=1.0;
% Parameter:   id =  u_h, name = u_h
% Parameter:   id =  u_v, name = u_v
% Parameter:   id =  psi_v, name = psi_v
% Parameter:   id =  theta_h, name = theta_h
% Parameter:   id =  sigma_v, name = sigma_v
% Parameter:   id =  sigma_h, name = sigma_h
% Parameter:   id =  beta_hv, name = beta_hv
% Parameter:   id =  beta_vh, name = beta_vh
% Parameter:   id =  beta_tilde_vh, name = beta_tilde_vh
% Parameter:   id =  v_v, name = v_v
% Parameter:   id =  gamma_h, name = gamma_h
% Parameter:   id =  gamma_tilde_h, name = gamma_tilde_h
% Parameter:   id =  delta_h, name = delta_h
% Parameter:   id =  gamma_e, name = gamma_e
% Parameter:   id =  M0, name = M0
% Parameter:   id =  C0, name = C0
% Parameter:   id =  N_v, name = N_v
% Parameter:   id =  lambda_h, name = lambda_h
% Parameter:   id =  lambda_v, name = lambda_v
% Parameter:   id =  N_h, name = N_h
% Parameter:   id =  Total_Infected_Cattle, name = Total_Infected_Cattle
% Parameter:   id =  Season_Dummy_Variable, name = Season_Dummy_Variable
	global_par_Season_Dummy_Variable=0.0;
% assignmentRule: variable = u_h
	global_par_u_h=piecewise(1/2190, global_par_Season_Dummy_Variable == 0, 1/2190);
% assignmentRule: variable = u_v
	global_par_u_v=piecewise(1/20, global_par_Season_Dummy_Variable == 0, 1/14);
% assignmentRule: variable = psi_v
	global_par_psi_v=piecewise(0.1, global_par_Season_Dummy_Variable == 0, 0.1);
% assignmentRule: variable = theta_h
	global_par_theta_h=piecewise(0.4, global_par_Season_Dummy_Variable == 0, 0.4);
% assignmentRule: variable = sigma_v
	global_par_sigma_v=piecewise(0.33, global_par_Season_Dummy_Variable == 0, 0.25);
% assignmentRule: variable = sigma_h
	global_par_sigma_h=piecewise(19, global_par_Season_Dummy_Variable == 0, 19);
% assignmentRule: variable = beta_hv
	global_par_beta_hv=piecewise(0.21, global_par_Season_Dummy_Variable == 0, 0.21);
% assignmentRule: variable = beta_vh
	global_par_beta_vh=piecewise(0.7, global_par_Season_Dummy_Variable == 0, 0.7);
% assignmentRule: variable = v_v
	global_par_v_v=piecewise(1/14, global_par_Season_Dummy_Variable == 0, 1/14);
% assignmentRule: variable = gamma_h
	global_par_gamma_h=piecewise(1/4, global_par_Season_Dummy_Variable == 0, 1/4);
% assignmentRule: variable = gamma_tilde_h
	global_par_gamma_tilde_h=piecewise(1/4, global_par_Season_Dummy_Variable == 0, 1/4);
% assignmentRule: variable = delta_h
	global_par_delta_h=piecewise(0.1, global_par_Season_Dummy_Variable == 0, 0.1);
% assignmentRule: variable = gamma_e
	global_par_gamma_e=piecewise(0.2, global_par_Season_Dummy_Variable == 0, 0.1);
% assignmentRule: variable = M0
	global_par_M0=piecewise(20000, global_par_Season_Dummy_Variable == 0, 4000);
% assignmentRule: variable = C0
	global_par_C0=piecewise(1000, global_par_Season_Dummy_Variable == 0, 1000);
% assignmentRule: variable = N_v
	global_par_N_v=x(5)+x(6)+x(7);
% assignmentRule: variable = N_h
	global_par_N_h=x(1)+x(3)+x(2)+x(4);
% assignmentRule: variable = lambda_h
	global_par_lambda_h=global_par_sigma_v*global_par_N_v*global_par_sigma_h/(global_par_sigma_v*global_par_N_v+global_par_sigma_h*global_par_N_h)*global_par_beta_hv*x(7)/global_par_N_v;
% assignmentRule: variable = Total_Infected_Cattle
	global_par_Total_Infected_Cattle=x(2)+x(3);
% assignmentRule: variable = beta_tilde_vh
	global_par_beta_tilde_vh=piecewise(0.3, global_par_Season_Dummy_Variable == 0, 0.3);
% assignmentRule: variable = lambda_v
	global_par_lambda_v=global_par_sigma_v*global_par_sigma_h*global_par_N_h/(global_par_sigma_v*global_par_N_v+global_par_sigma_h*global_par_N_h)*(global_par_beta_vh*x(3)/global_par_N_h+global_par_beta_tilde_vh*x(2)/global_par_N_h);
% rateRule: variable = S_h
x(1) = x(8);
% rateRule: variable = A_h
x(2) = x(9);
% rateRule: variable = I_h
x(3) = x(10);
% rateRule: variable = R_h
x(4) = x(11);
% rateRule: variable = S_v
x(5) = x(12);
% rateRule: variable = E_v
x(6) = x(13);
% rateRule: variable = I_v
x(7) = x(14);

	xdot=zeros(14,1);
	% rateRule: variable = S_h
	xdot(8) = global_par_u_h*global_par_C0-global_par_lambda_h*x(1)-global_par_u_h*x(1);
	% rateRule: variable = A_h
	xdot(9) = global_par_theta_h*global_par_lambda_h*x(1)-(global_par_u_h+global_par_gamma_tilde_h)*x(2);
	% rateRule: variable = I_h
	xdot(10) = (1-global_par_theta_h)*global_par_lambda_h*x(1)-(global_par_u_h+global_par_gamma_h+global_par_delta_h)*x(3);
	% rateRule: variable = R_h
	xdot(11) = global_par_gamma_h*x(3)+global_par_gamma_tilde_h*x(2)-global_par_u_h*x(4);
	% rateRule: variable = S_v
	xdot(12) = (global_par_N_v-global_par_psi_v*x(7))/global_par_N_v*global_par_u_v*global_par_M0-global_par_lambda_v*x(5)-global_par_u_v*x(5);
	% rateRule: variable = E_v
	xdot(13) = global_par_lambda_v*x(5)-(global_par_u_v+global_par_v_v)*x(6);
	% rateRule: variable = I_v
	xdot(14) = global_par_psi_v*x(7)/global_par_N_v*global_par_u_v*global_par_M0+global_par_v_v*x(6)-global_par_u_v*x(7);
	
% Species:   id = S_h, name = S_h, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = A_h, name = A_h, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = I_h, name = I_h, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = R_h, name = R_h, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = S_v, name = S_v, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = E_v, name = E_v, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = I_v, name = I_v, involved in a rule 	xdot(7) = x(7);
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


