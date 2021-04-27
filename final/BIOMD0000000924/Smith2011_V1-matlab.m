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
% Model name = Smith2011 - Three Stage Innate Immune Response to a Pneumococcal Lung Infection
%
% is http://identifiers.org/biomodels.db/MODEL1808280007
% is http://identifiers.org/biomodels.db/BIOMD0000000924
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  r, name = r
	global_par_r=1.13;
% Parameter:   id =  K_P, name = K_P
	global_par_K_P=3.41765197726012E8;
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
% Parameter:   id =  log_Pneumococcal__P, name = log Pneumococcal (P)
% assignmentRule: variable = f_P_M_A
	global_par_f_P_M_A=global_par_n^global_par_x*global_par_M_Astar/(x(1)^global_par_x+global_par_n^global_par_x*global_par_M_Astar);
% assignmentRule: variable = log_Pneumococcal__P
	global_par_log_Pneumococcal__P=log(10, x(1));

% Reaction: id = reaction_for__P_production, name = reaction for  P production
	reaction_reaction_for__P_production=compartment_compartment*Rate_Law_for_reaction_for__P_production(global_par_r, x(1), global_par_K_P);

% Reaction: id = reaction_for_P_Decay, name = reaction for P Decay
	reaction_reaction_for_P_Decay=compartment_compartment*Rate_Law_for_reaction_for_P_Decay(global_par_gamma_M_A, global_par_f_P_M_A, global_par_k_d, x(6), global_par_M_Astar, x(1), global_par_gamma_N, x(5));

% Reaction: id = reaction_for__EU_decay, name = reaction for  EU decay
	reaction_reaction_for__EU_decay=compartment_compartment*Rate_Law_for_reaction_for__EU_decay(global_par_omega, x(1), x(2));

% Reaction: id = reaction_for_Ea_production, name = reaction for Ea production
	reaction_reaction_for_Ea_production=compartment_compartment*Rate_Law_for_reaction_for_Ea_production(global_par_omega, x(1), x(2));

% Reaction: id = reaction_for_Ea_decay, name = reaction for Ea decay
	reaction_reaction_for_Ea_decay=compartment_compartment*Rate_Law_for_reaction_for_Ea_decay(global_par_d_E, x(3));

% Reaction: id = reaction_for_C_production, name = reaction for C production
	reaction_reaction_for_C_production=compartment_compartment*Rate_Law_for_reaction_for_C_production(global_par_alpha, x(3), global_par_k_n, x(5), global_par_v, global_par_theta_M, global_par_M_Astar, global_par_d, global_par_kappa, x(1));

% Reaction: id = reaction_for_C_decay, name = reaction for C decay
	reaction_reaction_for_C_decay=compartment_compartment*Rate_Law_for_reaction_for_C_decay(global_par_d_C, x(4));

% Reaction: id = reaction_for_N_production, name = reaction for N production
	reaction_reaction_for_N_production=compartment_compartment*Rate_Law_for_reaction_for_N_production(global_par_eta, x(4), x(5), global_par_N_max);

% Reaction: id = reaction_for_N_decay, name = reaction for N decay
	reaction_reaction_for_N_decay=compartment_compartment*Rate_Law_for_reaction_for_N_decay(global_par_d_NP, x(5), x(1), global_par_d_N);

% Reaction: id = reaction_for_D_production, name = reaction for D production
	reaction_reaction_for_D_production=compartment_compartment*Rate_Law_for_reaction_for_D_production(global_par_rho1, global_par_d_NP, x(5), x(1), global_par_rho2, global_par_d_N, global_par_rho3, global_par_d_E, x(3));

% Reaction: id = reaction_for_D_decay, name = reaction for D decay
	reaction_reaction_for_D_decay=compartment_compartment*Rate_Law_for_reaction_for_D_decay(global_par_d_D, x(6), global_par_M_Astar);

	xdot=zeros(6,1);
	
% Species:   id = Pneumococci___P, name = Pneumococci  (P), affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for__P_production) + (-1.0 * reaction_reaction_for_P_Decay));
	
% Species:   id = Susceptible_epithelial_cells__EU, name = Susceptible epithelial cells (EU), affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_for__EU_decay));
	
% Species:   id = Epithelial_cells_with_bacteria_attached__Ea, name = Epithelial cells with bacteria attached (Ea), affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_Ea_production) + (-1.0 * reaction_reaction_for_Ea_decay));
	
% Species:   id = proinflammatory_cytokine__C, name = proinflammatory cytokine (C), affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_C_production) + (-1.0 * reaction_reaction_for_C_decay));
	
% Species:   id = Neutrophils__N, name = Neutrophils (N), affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_N_production) + (-1.0 * reaction_reaction_for_N_decay));
	
% Species:   id = Debris__D, name = Debris (D), affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_D_production) + (-1.0 * reaction_reaction_for_D_decay));
end

function z=Rate_Law_for_reaction_for__EU_decay(omega,P,Eu), z=(omega*P*Eu);end

function z=Rate_Law_for_reaction_for_Ea_decay(d_E,Ea), z=(d_E*Ea);end

function z=Rate_Law_for_reaction_for_P_Decay(gamma_M_A,f_P_M_A,kd,D,M_Astar,P,gamma_N,N), z=(gamma_M_A*f_P_M_A/(1+kd*D*M_Astar)*M_Astar*P+gamma_N*N*P);end

function z=Rate_Law_for_reaction_for__P_production(r,P,Kp), z=(r*P*(1-P/Kp));end

function z=Rate_Law_for_reaction_for_C_decay(dc,C), z=(dc*C);end

function z=Rate_Law_for_reaction_for_C_production(alpha,Ea,kn,N,v,theta_M,M_Astar,d,k,P), z=(alpha*Ea/(1+kn*N)+v*theta_M*P*M_Astar/(d+k+theta_M*P*(1+kn*N)));end

function z=Rate_Law_for_reaction_for_D_production(rho1,d_NP,N,P,rho2,d_N,rho3,d_E,Ea), z=(rho1*d_NP*N*P+rho2*d_N*N+rho3*d_E*Ea);end

function z=Rate_Law_for_reaction_for_Ea_production(omega,P,Eu), z=(omega*P*Eu);end

function z=Rate_Law_for_reaction_for_N_decay(d_NP,N,P,d_N), z=(d_NP*N*P+d_N*N);end

function z=Rate_Law_for_reaction_for_D_decay(d_D,D,M_Astar), z=(d_D*D*M_Astar);end

function z=Rate_Law_for_reaction_for_N_production(eta,C,N,N_max), z=(eta*C*(1-N/N_max));end

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


