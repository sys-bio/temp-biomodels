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
% Model name = Ruan2017 - Transmission dynamics and control of rabies in China
%
% is http://identifiers.org/biomodels.db/MODEL1808280012
% is http://identifiers.org/biomodels.db/BIOMD0000000726
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 3.5E7;
	x0(2) = 200000.0;
	x0(3) = 100000.0;
	x0(4) = 200000.0;
	x0(5) = 1.29E9;
	x0(6) = 250.0;
	x0(7) = 89.0;
	x0(8) = 200000.0;


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

% Compartment: id = compartment, name = Dog Population, constant
	compartment_compartment=1.0;
% Compartment: id = Human_Population, name = Human Population, constant
	compartment_Human_Population=1.0;
% Parameter:   id =  A, name = A
	global_par_A=3000000.0;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=1.0;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.4;
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=6.0;
% Parameter:   id =  m, name = m
	global_par_m=0.08;
% Parameter:   id =  beta, name = beta
	global_par_beta=1.58E-7;
% Parameter:   id =  k, name = k
	global_par_k=0.09;
% Parameter:   id =  mu, name = mu
	global_par_mu=1.0;
% Parameter:   id =  B, name = B
	global_par_B=1.54E7;
% Parameter:   id =  lambda_h, name = lambda_h
	global_par_lambda_h=1.0;
% Parameter:   id =  gamma_h, name = gamma_h
	global_par_gamma_h=0.4;
% Parameter:   id =  sigma_h, name = sigma_h
	global_par_sigma_h=6.0;
% Parameter:   id =  m_h, name = m_h
	global_par_m_h=0.003;
% Parameter:   id =  beta_dh, name = beta_dh
	global_par_beta_dh=2.29E-12;
% Parameter:   id =  k_h, name = k_h
	global_par_k_h=0.54;
% Parameter:   id =  mu_h, name = mu_h
	global_par_mu_h=1.34;

% Reaction: id = reaction_2, name = Loss of immunity in recovered dogs
	reaction_reaction_2=compartment_compartment*global_par_lambda*x(4);

% Reaction: id = reaction_3, name = Exposed dogs that do not get infected
	reaction_reaction_3=compartment_compartment*Function_for_Reaction_3(global_par_sigma, global_par_gamma, x(2));

% Reaction: id = reaction_4, name = Exposure of virus to susceptible dogs
	reaction_reaction_4=compartment_compartment*Function_for_Reaction_4(global_par_beta, x(1), x(3));

% Reaction: id = reaction_5, name = Natural death of susceptible dogs
	reaction_reaction_5=compartment_compartment*global_par_m*x(1);

% Reaction: id = reaction_6, name = Infection of exposed dogs
	reaction_reaction_6=compartment_compartment*Function_for_Reaction_6(global_par_sigma, global_par_gamma, x(2));

% Reaction: id = reaction_7, name = Natural death of exposed dogs
	reaction_reaction_7=compartment_compartment*global_par_m*x(2);

% Reaction: id = reaction_8, name = Natural death of infected dogs
	reaction_reaction_8=compartment_compartment*global_par_m*x(3);

% Reaction: id = reaction_9, name = Vaccination of susceptible dogs
	reaction_reaction_9=compartment_compartment*global_par_k*x(1);

% Reaction: id = reaction_10, name = Vaccination of exposed dogs
	reaction_reaction_10=compartment_compartment*global_par_k*x(2);

% Reaction: id = reaction_11, name = Disease related death of infected dogs
	reaction_reaction_11=compartment_compartment*global_par_mu*x(3);

% Reaction: id = reaction_12, name = Natural death of recovered dogs
	reaction_reaction_12=compartment_compartment*global_par_m*x(4);

% Reaction: id = reaction_14, name = Loss of immunity in recovered humans
	reaction_reaction_14=compartment_Human_Population*global_par_lambda_h*x(8);

% Reaction: id = reaction_15, name = Exposure humans that were not infected
	reaction_reaction_15=compartment_Human_Population*Function_for_Reaction_15(global_par_sigma_h, global_par_gamma_h, x(6));

% Reaction: id = reaction_16, name = Natural death of susceptible humans
	reaction_reaction_16=compartment_Human_Population*global_par_m_h*x(5);

% Reaction: id = reaction_17, name = Exposure of virus to susceptible humans
	reaction_reaction_17=Function_for_Reaction_17(global_par_beta_dh, x(5), x(3));

% Reaction: id = reaction_18, name = Infection of exposed humans
	reaction_reaction_18=compartment_Human_Population*Function_for_Reaction_18(global_par_sigma_h, global_par_gamma_h, x(6));

% Reaction: id = reaction_19, name = Natural death of exposed humans
	reaction_reaction_19=compartment_Human_Population*global_par_m_h*x(6);

% Reaction: id = reaction_20, name = Vaccination of exposed humans
	reaction_reaction_20=compartment_Human_Population*global_par_k_h*x(6);

% Reaction: id = reaction_21, name = Natural death of infected humans
	reaction_reaction_21=compartment_Human_Population*global_par_m_h*x(7);

% Reaction: id = reaction_22, name = Disease related death of infected humans
	reaction_reaction_22=compartment_Human_Population*global_par_mu_h*x(7);

% Reaction: id = reaction_23, name = Natural death of recovered humans
	reaction_reaction_23=compartment_Human_Population*global_par_m_h*x(8);

	xdot=zeros(8,1);
	
% Species:   id = S_d, name = Susceptible dogs (S_d), affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_9));
	
% Species:   id = E_d, name = Exposed dogs (E_d), affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_10));
	
% Species:   id = I_d, name = Infectious dogs (I_d), affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_11));
	
% Species:   id = R_d, name = Recovered dogs (R_d), affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_12));
	
% Species:   id = S_h, name = Susceptible humans (S_h), affected by kineticLaw
	xdot(5) = (1/(compartment_Human_Population))*(( 1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17));
	
% Species:   id = E_h, name = Exposed humans (E_h), affected by kineticLaw
	xdot(6) = (1/(compartment_Human_Population))*((-1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_20));
	
% Species:   id = I_h, name = Infectious humans (I_h), affected by kineticLaw
	xdot(7) = (1/(compartment_Human_Population))*(( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_22));
	
% Species:   id = R_h, name = Recovered humans (R_h), affected by kineticLaw
	xdot(8) = (1/(compartment_Human_Population))*((-1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_23));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Reaction_3(sigma,gamma,E_d), z=(sigma*(1-gamma)*E_d);end

function z=Function_for_Reaction_4(beta,S_d,I_d), z=(beta*S_d*I_d);end

function z=Function_for_Reaction_6(sigma,gamma,E_d), z=(sigma*gamma*E_d);end

function z=Function_for_Reaction_15(sigma_h,gamma_h,E_h), z=(sigma_h*(1-gamma_h)*E_h);end

function z=Function_for_Reaction_17(beta_dh,S_h,I_d), z=(beta_dh*S_h*I_d);end

function z=Function_for_Reaction_18(sigma_h,gamma_h,E_h), z=(sigma_h*gamma_h*E_h);end

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


