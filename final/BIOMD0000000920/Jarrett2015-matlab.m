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
% Model name = Jarrett2015 - Modelling the interaction between immune response, bacterial dynamics and inflammatory damage
%
% is http://identifiers.org/biomodels.db/MODEL1803200002
% is http://identifiers.org/biomodels.db/BIOMD0000000920
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 3.0;
	x0(2) = 1.0;
	x0(3) = 1.0;
	x0(4) = 1.0;


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

% Compartment: id = BALB_c_Mouse, name = BALB/c Mouse, constant
	compartment_BALB_c_Mouse=1.0;
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=0.27;
% Parameter:   id =  rho_1, name = rho_1
	global_par_rho_1=0.2;
% Parameter:   id =  beta_1, name = beta_1
	global_par_beta_1=0.01;
% Parameter:   id =  mu_1, name = mu_1
	global_par_mu_1=0.12;
% Parameter:   id =  K_B, name = K_B
	global_par_K_B=1.0;
% Parameter:   id =  alpha_2, name = alpha_2
	global_par_alpha_2=0.11;
% Parameter:   id =  beta_2, name = beta_2
	global_par_beta_2=0.135;
% Parameter:   id =  mu_2, name = mu_2
	global_par_mu_2=0.25;
% Parameter:   id =  alpha_3, name = alpha_3
	global_par_alpha_3=1.05;
% Parameter:   id =  beta_3, name = beta_3
	global_par_beta_3=2.0;
% Parameter:   id =  rho_2, name = rho_2
	global_par_rho_2=0.45;
% Parameter:   id =  mu_3, name = mu_3
	global_par_mu_3=0.0174;
% Parameter:   id =  g, name = g
	global_par_g=0.9;
% Parameter:   id =  alpha_4, name = alpha_4
	global_par_alpha_4=1.5;
% Parameter:   id =  beta_4, name = beta_4
	global_par_beta_4=5.0;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.01;

% Reaction: id = reaction_for_A, name = reaction for A
	reaction_reaction_for_A=compartment_BALB_c_Mouse*Rate_Law_for_reaction_for_A(global_par_alpha_2, x(4), global_par_beta_2, x(2), global_par_mu_2, x(3), x(1), global_par_K_B);

% Reaction: id = reaction_For_I, name = reaction For I
	reaction_reaction_For_I=compartment_BALB_c_Mouse*Rate_Law_for_reaction_for_I(global_par_alpha_3, x(4), global_par_rho_2, x(3), global_par_beta_3, x(1), global_par_mu_3, x(2));

% Reaction: id = reaction_for_B, name = reaction for B
	reaction_reaction_for_B=compartment_BALB_c_Mouse*Rate_Law_for_reaction_for_B(global_par_g, x(3), global_par_K_B, global_par_alpha_4, x(2), global_par_beta_4, x(4), global_par_gamma, time);

% Reaction: id = reaction_For_P, name = reaction For P
	reaction_reaction_For_P=compartment_BALB_c_Mouse*Rate_Law_for_reaction_for_P(global_par_alpha_1, x(2), global_par_rho_1, x(3), x(4), global_par_beta_1, x(1), global_par_mu_1, global_par_K_B);

	xdot=zeros(4,1);
	
% Species:   id = anti_inflammatory__A, name = anti-inflammatory (A), affected by kineticLaw
	xdot(1) = (1/(compartment_BALB_c_Mouse))*(( 1.0 * reaction_reaction_for_A));
	
% Species:   id = inflammation__I, name = inflammation (I), affected by kineticLaw
	xdot(2) = (1/(compartment_BALB_c_Mouse))*(( 1.0 * reaction_reaction_For_I));
	
% Species:   id = bacterial_infection__B, name = bacterial infection (B), affected by kineticLaw
	xdot(3) = (1/(compartment_BALB_c_Mouse))*(( 1.0 * reaction_reaction_for_B));
	
% Species:   id = pro_inflammatory__P, name = pro-inflammatory (P), affected by kineticLaw
	xdot(4) = (1/(compartment_BALB_c_Mouse))*(( 1.0 * reaction_reaction_For_P));
end

function z=Rate_Law_for_reaction_for_A(alpha_2,P,beta_2,I,mu_2,B,A,K_B), z=(alpha_2*P-(beta_2*I+mu_2*(1-B/K_B))*A);end

function z=Rate_Law_for_reaction_for_B(g,B,K_B,alpha_4,I,beta_4,P,gamma,time), z=((g*(1-B/K_B)+alpha_4*I-beta_4*P)*B+exp((-1)*gamma*time));end

function z=Rate_Law_for_reaction_for_I(alpha_3,P,rho_2,B,beta_3,A,mu_3,I), z=(alpha_3*P+rho_2*B-(beta_3*A+mu_3)*I);end

function z=Rate_Law_for_reaction_for_P(alpha_1,I,rho_1,B,P,beta_1,A,mu_1,K_B), z=((alpha_1*I+rho_1*B)*(1-P)-(beta_1*A+mu_1*(1-B/K_B))*P);end

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


