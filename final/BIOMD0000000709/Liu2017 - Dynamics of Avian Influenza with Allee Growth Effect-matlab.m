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
% Model name = Liu2017 - Dynamics of Avian Influenza with Allee Growth Effect
%
% is http://identifiers.org/biomodels.db/MODEL1808240003
% is http://identifiers.org/biomodels.db/BIOMD0000000709
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 100000.0;
	x0(2) = 1000.0;
	x0(3) = 1000000.0;
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

% Compartment: id = compartment, name = Human Population, constant
	compartment_compartment=1.0;
% Compartment: id = Avian_population, name = Avian population, constant
	compartment_Avian_population=1.0;
% Parameter:   id =  r_a, name = r_a
	global_par_r_a=0.005;
% Parameter:   id =  K_a, name = K_a
	global_par_K_a=50000.0;
% Parameter:   id =  beta_a, name = beta_a
	global_par_beta_a=1.8E-8;
% Parameter:   id =  mu_a, name = mu_a
	global_par_mu_a=3.4246E-4;
% Parameter:   id =  delta_a, name = delta_a
	global_par_delta_a=4.0E-4;
% Parameter:   id =  pi_h, name = pi_h
	global_par_pi_h=30.0;
% Parameter:   id =  beta_h, name = beta_h
	global_par_beta_h=6.0E-9;
% Parameter:   id =  mu_h, name = mu_h
	global_par_mu_h=3.91E-5;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.1;
% Parameter:   id =  delta_h, name = delta_h
	global_par_delta_h=0.3445;
% Parameter:   id =  M_a, name = M_a
	global_par_M_a=50000.0;
% Parameter:   id =  m_a, name = m_a
	global_par_m_a=800.0;

% Reaction: id = reaction_1, name = Allee effect growth of Susceptible Avian
	reaction_reaction_1=compartment_Avian_population*Function_for_Reaction_1(global_par_r_a, x(1), global_par_M_a, global_par_m_a);

% Reaction: id = reaction_2, name = Infection of Susceptible Avian
	reaction_reaction_2=compartment_Avian_population*Function_for_Reaction_2(global_par_beta_a, x(1), x(2));

% Reaction: id = reaction_3, name = Natural death of Infected Avian
	reaction_reaction_3=compartment_Avian_population*global_par_mu_a*x(2);

% Reaction: id = reaction_4, name = Disease related death of Infected Avian
	reaction_reaction_4=compartment_Avian_population*global_par_delta_a*x(2);

% Reaction: id = reaction_6, name = Infection of Susceptible Human
	reaction_reaction_6=Function_for_Reaction_6(global_par_beta_h, x(2), x(3));

% Reaction: id = reaction_7, name = Natural death of susceptible Human
	reaction_reaction_7=compartment_compartment*global_par_mu_h*x(3);

% Reaction: id = reaction_8, name = Natural death of Infected Human
	reaction_reaction_8=compartment_compartment*global_par_mu_h*x(4);

% Reaction: id = reaction_9, name = Disease related death of Infected human
	reaction_reaction_9=compartment_compartment*global_par_delta_h*x(4);

% Reaction: id = reaction_10, name = Recovery of infected human
	reaction_reaction_10=compartment_compartment*global_par_gamma*x(4);

% Reaction: id = reaction_11, name = Natural death of recovered human
	reaction_reaction_11=compartment_compartment*global_par_mu_h*x(5);

	xdot=zeros(5,1);
	
% Species:   id = S_a, name = Susceptible Avian (S_a), affected by kineticLaw
	xdot(1) = (1/(compartment_Avian_population))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2));
	
% Species:   id = I_a, name = Infected Avian (I_a), affected by kineticLaw
	xdot(2) = (1/(compartment_Avian_population))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = S_h, name = Susceptible Human (S_h), affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7));
	
% Species:   id = I_h, name = Infected Human (I_h), affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10));
	
% Species:   id = R_h, name = Recovered Human (R_h), affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Reaction_1(r_a,S_a,M_a,m_a), z=(r_a*S_a*(1-S_a/M_a)*(S_a/m_a-1));end

function z=Function_for_Reaction_2(beta_a,S_a,I_a), z=(beta_a*S_a*I_a);end

function z=Function_for_Reaction_6(beta_h,I_a,S_h), z=(beta_h*I_a*S_h);end

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


