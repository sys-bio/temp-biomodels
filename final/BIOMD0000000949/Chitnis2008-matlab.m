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
% Model name = Chitnis2008 - Mathematical model of malaria transmission
%
% isDescribedBy http://identifiers.org/pubmed/18293044
% is http://identifiers.org/biomodels.db/MODEL1805220002
% is http://identifiers.org/biomodels.db/BIOMD0000000949
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 600.0;
	x0(2) = 20.0;
	x0(3) = 3.0;
	x0(4) = 0.0;
	x0(5) = 2400.0;
	x0(6) = 30.0;
	x0(7) = 5.0;


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

% Compartment: id = Human, name = Human, constant
	compartment_Human=1.0;
% Compartment: id = Mosquito, name = Mosquito, constant
	compartment_Mosquito=1.0;
% Parameter:   id =  Capital_lambda_h, name = Capital_lambda_h
% Parameter:   id =  Psi_h, name = Psi_h
% Parameter:   id =  Psi_v, name = Psi_v
% Parameter:   id =  sigma_v, name = sigma_v
% Parameter:   id =  sigma_h, name = sigma_h
% Parameter:   id =  Beta_hv, name = Beta_hv
% Parameter:   id =  Beta_vh, name = Beta_vh
% Parameter:   id =  Beta_tilde_vh, name = Beta_tilde_vh
% Parameter:   id =  v_h, name = v_h
% Parameter:   id =  v_v, name = v_v
% Parameter:   id =  gamma_h, name = gamma_h
% Parameter:   id =  delta_h, name = delta_h
% Parameter:   id =  rho_h, name = rho_h
% Parameter:   id =  u_1h, name = u_1h
% Parameter:   id =  u_2h, name = u_2h
% Parameter:   id =  u_1v, name = u_1v
% Parameter:   id =  u_2v, name = u_2v
% Parameter:   id =  N_h, name = N_h
% Parameter:   id =  N_v, name = N_v
% Parameter:   id =  f_h, name = f_h
% Parameter:   id =  f_v, name = f_v
% Parameter:   id =  lambda_h, name = lambda_h
% Parameter:   id =  lambda_v, name = lambda_v
% Parameter:   id =  Baseline_dummy_variable, name = Baseline_dummy_variable
	global_par_Baseline_dummy_variable=0.0;
% assignmentRule: variable = Capital_lambda_h
	global_par_Capital_lambda_h=piecewise(0.041, global_par_Baseline_dummy_variable == 0, 0.033);
% assignmentRule: variable = Psi_h
	global_par_Psi_h=piecewise(5.5E-5, global_par_Baseline_dummy_variable == 0, 0.00011);
% assignmentRule: variable = Psi_v
	global_par_Psi_v=piecewise(0.13, global_par_Baseline_dummy_variable == 0, 0.13);
% assignmentRule: variable = sigma_v
	global_par_sigma_v=piecewise(0.33, global_par_Baseline_dummy_variable == 0, 0.5);
% assignmentRule: variable = sigma_h
	global_par_sigma_h=piecewise(4.3, global_par_Baseline_dummy_variable == 0, 19);
% assignmentRule: variable = Beta_hv
	global_par_Beta_hv=piecewise(0.022, global_par_Baseline_dummy_variable == 0, 0.022);
% assignmentRule: variable = Beta_vh
	global_par_Beta_vh=piecewise(0.24, global_par_Baseline_dummy_variable == 0, 0.48);
% assignmentRule: variable = Beta_tilde_vh
	global_par_Beta_tilde_vh=piecewise(0.024, global_par_Baseline_dummy_variable == 0, 0.048);
% assignmentRule: variable = v_h
	global_par_v_h=piecewise(0.1, global_par_Baseline_dummy_variable == 0, 0.1);
% assignmentRule: variable = v_v
	global_par_v_v=piecewise(0.083, global_par_Baseline_dummy_variable == 0, 0.091);
% assignmentRule: variable = gamma_h
	global_par_gamma_h=piecewise(0.0035, global_par_Baseline_dummy_variable == 0, 0.0035);
% assignmentRule: variable = delta_h
	global_par_delta_h=piecewise(1.8E-5, global_par_Baseline_dummy_variable == 0, 9E-5);
% assignmentRule: variable = rho_h
	global_par_rho_h=piecewise(0.0027, global_par_Baseline_dummy_variable == 0, 0.00055);
% assignmentRule: variable = u_1h
	global_par_u_1h=piecewise(8.8E-6, global_par_Baseline_dummy_variable == 0, 1.6E-5);
% assignmentRule: variable = u_2h
	global_par_u_2h=piecewise(2E-7, global_par_Baseline_dummy_variable == 0, 3E-7);
% assignmentRule: variable = u_1v
	global_par_u_1v=piecewise(0.033, global_par_Baseline_dummy_variable == 0, 0.033);
% assignmentRule: variable = u_2v
	global_par_u_2v=piecewise(4E-5, global_par_Baseline_dummy_variable == 0, 2E-5);
% assignmentRule: variable = N_h
	global_par_N_h=x(1)+x(2)+x(3)+x(4);
% assignmentRule: variable = N_v
	global_par_N_v=x(5)+x(6)+x(7);
% assignmentRule: variable = f_h
	global_par_f_h=global_par_u_1h+global_par_u_2h*global_par_N_h;
% assignmentRule: variable = f_v
	global_par_f_v=global_par_u_1v+global_par_u_2v*global_par_N_v;
% assignmentRule: variable = lambda_h
	global_par_lambda_h=global_par_sigma_v*global_par_N_v*global_par_sigma_h/(global_par_sigma_v*global_par_N_v+global_par_sigma_h*global_par_N_h)*global_par_Beta_hv*x(7)/global_par_N_v;
% assignmentRule: variable = lambda_v
	global_par_lambda_v=global_par_sigma_v*global_par_sigma_h*global_par_N_h/(global_par_sigma_v*global_par_N_v+global_par_sigma_h*global_par_N_h)*(global_par_Beta_vh*x(3)/global_par_N_h+global_par_Beta_tilde_vh*x(4)/global_par_N_h);

% Reaction: id = Human_Birth, name = Human Birth
	reaction_Human_Birth=compartment_Human*human_birth_rate(global_par_Psi_h, global_par_N_h);

% Reaction: id = Human_Loss_of_Immunity, name = Human Loss of Immunity
	reaction_Human_Loss_of_Immunity=compartment_Human*global_par_rho_h*x(4);

% Reaction: id = Human_Infection, name = Human Infection
	reaction_Human_Infection=compartment_Human*global_par_lambda_h*x(1);

% Reaction: id = Human_Susceptible_natural_death, name = Human Susceptible natural death
	reaction_Human_Susceptible_natural_death=compartment_Human*global_par_f_h*x(1);

% Reaction: id = Human_disease_progression, name = Human disease progression
	reaction_Human_disease_progression=compartment_Human*global_par_v_h*x(2);

% Reaction: id = Human_Exposed_natural_death, name = Human Exposed natural death
	reaction_Human_Exposed_natural_death=compartment_Human*global_par_f_h*x(2);

% Reaction: id = Human_Recovery, name = Human Recovery
	reaction_Human_Recovery=compartment_Human*global_par_gamma_h*x(3);

% Reaction: id = Human_disease_induced_death, name = Human disease-induced death
	reaction_Human_disease_induced_death=compartment_Human*global_par_delta_h*x(3);

% Reaction: id = Human_Infectious_natural_death, name = Human Infectious natural death
	reaction_Human_Infectious_natural_death=compartment_Human*global_par_f_h*x(3);

% Reaction: id = Human_Recovered_natural_death, name = Human Recovered natural death
	reaction_Human_Recovered_natural_death=compartment_Human*global_par_f_h*x(4);

% Reaction: id = Mosquito_birth, name = Mosquito birth
	reaction_Mosquito_birth=compartment_Mosquito*Mosquito_birth_rate(global_par_Psi_v, global_par_N_v);

% Reaction: id = Mosquito_infection, name = Mosquito infection
	reaction_Mosquito_infection=compartment_Mosquito*global_par_lambda_v*x(5);

% Reaction: id = Mosquito_Susceptible_death, name = Mosquito Susceptible death
	reaction_Mosquito_Susceptible_death=compartment_Mosquito*global_par_f_v*x(5);

% Reaction: id = Mosquito_disease_progression, name = Mosquito disease progression
	reaction_Mosquito_disease_progression=compartment_Mosquito*global_par_v_v*x(6);

% Reaction: id = Mosquito_Exposed_death, name = Mosquito Exposed death
	reaction_Mosquito_Exposed_death=compartment_Mosquito*global_par_f_v*x(6);

% Reaction: id = Mosquito_Infected_death, name = Mosquito Infected death
	reaction_Mosquito_Infected_death=compartment_Mosquito*global_par_f_v*x(7);

	xdot=zeros(7,1);
	
% Species:   id = Susceptible_Human, name = Susceptible, affected by kineticLaw
	xdot(1) = (1/(compartment_Human))*(( 1.0 * reaction_Human_Immigration) + ( 1.0 * reaction_Human_Birth) + ( 1.0 * reaction_Human_Loss_of_Immunity) + (-1.0 * reaction_Human_Infection) + (-1.0 * reaction_Human_Susceptible_natural_death));
	
% Species:   id = Exposed_Human, name = Exposed, affected by kineticLaw
	xdot(2) = (1/(compartment_Human))*(( 1.0 * reaction_Human_Infection) + (-1.0 * reaction_Human_disease_progression) + (-1.0 * reaction_Human_Exposed_natural_death));
	
% Species:   id = Infected_Human, name = Infected, affected by kineticLaw
	xdot(3) = (1/(compartment_Human))*(( 1.0 * reaction_Human_disease_progression) + (-1.0 * reaction_Human_Recovery) + (-1.0 * reaction_Human_disease_induced_death) + (-1.0 * reaction_Human_Infectious_natural_death));
	
% Species:   id = Recovered, name = Recovered, affected by kineticLaw
	xdot(4) = (1/(compartment_Human))*((-1.0 * reaction_Human_Loss_of_Immunity) + ( 1.0 * reaction_Human_Recovery) + (-1.0 * reaction_Human_Recovered_natural_death));
	
% Species:   id = Susceptible_Mosquito, name = Susceptible, affected by kineticLaw
	xdot(5) = (1/(compartment_Mosquito))*(( 1.0 * reaction_Mosquito_birth) + (-1.0 * reaction_Mosquito_infection) + (-1.0 * reaction_Mosquito_Susceptible_death));
	
% Species:   id = Exposed_Mosquito, name = Exposed, affected by kineticLaw
	xdot(6) = (1/(compartment_Mosquito))*(( 1.0 * reaction_Mosquito_infection) + (-1.0 * reaction_Mosquito_disease_progression) + (-1.0 * reaction_Mosquito_Exposed_death));
	
% Species:   id = Infected_Mosquito, name = Infected, affected by kineticLaw
	xdot(7) = (1/(compartment_Mosquito))*(( 1.0 * reaction_Mosquito_disease_progression) + (-1.0 * reaction_Mosquito_Infected_death));
end

function z=human_birth_rate(Psi_h,N_h), z=(Psi_h*N_h);end

function z=Mosquito_birth_rate(Psi_v,N_v), z=(Psi_v*N_v);end

function z=Constant_flux__irreversible(v), z=(v);end

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


