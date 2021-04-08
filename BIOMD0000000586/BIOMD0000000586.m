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
% Model name = Karapetyan2016 - Genetic oscillatory network - Activator Titration Circuit (ATC)
%
% is http://identifiers.org/biomodels.db/MODEL1512100000
% is http://identifiers.org/biomodels.db/BIOMD0000000586
% isDescribedBy http://identifiers.org/pubmed/26764732
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;


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

% Compartment: id = yeast, name = yeast, constant
	compartment_yeast=1.0;
% Parameter:   id =  Theta, name = Theta
	global_par_Theta=0.02;
% Parameter:   id =  Alpha, name = Alpha
% Parameter:   id =  rho_f, name = rho_f
	global_par_rho_f=0.1781;
% Parameter:   id =  rho_b, name = rho_b
% Parameter:   id =  rho_0, name = rho_0
% Parameter:   id =  beta, name = beta
	global_par_beta=14.109;
% Parameter:   id =  delta_m, name = delta_m
	global_par_delta_m=0.0186;
% Parameter:   id =  delta_p, name = delta_p
	global_par_delta_p=0.0077;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.025;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.024;
% Parameter:   id =  epsilon_1, name = epsilon_1
	global_par_epsilon_1=6.0;
% Parameter:   id =  a_01, name = a_01
% Parameter:   id =  a_12, name = a_12
% Parameter:   id =  a_23, name = a_23
% Parameter:   id =  t_10, name = t_10
% Parameter:   id =  t_21, name = t_21
% Parameter:   id =  t_32, name = t_32
% Parameter:   id =  _3sites, name = 3sites
	global_par__3sites=0.0;
% Parameter:   id =  f, name = f
	global_par_f=30.0;
% Parameter:   id =  ModelValue_17, name = Initial for 3sites
	global_par_ModelValue_17=0.0;
% Parameter:   id =  ModelValue_1, name = Initial for Alpha
	global_par_ModelValue_1=2.49202551834131E-4;
% Parameter:   id =  ModelValue_0, name = Initial for Theta
	global_par_ModelValue_0=0.02;
% Parameter:   id =  ModelValue_18, name = Initial for f
	global_par_ModelValue_18=30.0;
% Parameter:   id =  ModelValue_3, name = Initial for rho_b
	global_par_ModelValue_3=5.343;
% Parameter:   id =  ModelValue_2, name = Initial for rho_f
	global_par_ModelValue_2=0.1781;
% assignmentRule: variable = Alpha
	global_par_Alpha=global_par_ModelValue_0/(24*3.344);
% assignmentRule: variable = rho_b
	global_par_rho_b=global_par_ModelValue_2*global_par_ModelValue_18;
% assignmentRule: variable = rho_0
	global_par_rho_0=(global_par_ModelValue_3*global_par_ModelValue_2)^(0.5);
% assignmentRule: variable = a_01
	global_par_a_01=piecewise(3*global_par_ModelValue_1, global_par_ModelValue_17 == 1, global_par_ModelValue_1);
% assignmentRule: variable = a_12
	global_par_a_12=piecewise(2*global_par_ModelValue_1, global_par_ModelValue_17 == 1, 0);
% assignmentRule: variable = a_23
	global_par_a_23=piecewise(1*global_par_ModelValue_1, global_par_ModelValue_17 == 1, 0);
% assignmentRule: variable = t_10
	global_par_t_10=global_par_ModelValue_0;
% assignmentRule: variable = t_21
	global_par_t_21=piecewise(2*global_par_ModelValue_0, global_par_ModelValue_17 == 1, 0);
% assignmentRule: variable = t_32
	global_par_t_32=piecewise(3*global_par_ModelValue_0, global_par_ModelValue_17 == 1, 0);

% Reaction: id = G1____G0___A2, name = G1 -> G0 + A2
	reaction_G1____G0___A2=compartment_yeast*global_par_t_10*x(2);

% Reaction: id = G0___A2____G1, name = G0 + A2 -> G1
	reaction_G0___A2____G1=compartment_yeast*global_par_a_01*x(1)*x(8);

% Reaction: id = G____G___rI, name = G -> G + rI
	reaction_G____G___rI=compartment_yeast*global_par_rho_f*x(1);

% Reaction: id = G1____G1___rI, name = G1 -> G1 + rI
	reaction_G1____G1___rI=compartment_yeast*global_par_rho_b*x(2);

% Reaction: id = rA___, name = rA -> 
	reaction_rA___=compartment_yeast*global_par_delta_m*x(3);

% Reaction: id = rI___, name = rI -> 
	reaction_rI___=compartment_yeast*global_par_delta_m*x(5);

% Reaction: id = rA____rA___A, name = rA -> rA + A
	reaction_rA____rA___A=compartment_yeast*global_par_beta*x(3);

% Reaction: id = I___, name = I -> 
	reaction_I___=compartment_yeast*global_par_delta_p*x(4);

% Reaction: id = rI____rI___I, name = rI -> rI + I
	reaction_rI____rI___I=compartment_yeast*global_par_beta*x(5);

% Reaction: id = A___, name = A -> 
	reaction_A___=compartment_yeast*global_par_delta_p*x(6);

% Reaction: id = A___I____AI, name = A + I -> AI
	reaction_A___I____AI=compartment_yeast*global_par_gamma*x(6)*x(4);

% Reaction: id = _2___A____A2, name = 2 * A -> A2
	reaction__2___A____A2=compartment_yeast*global_par_gamma*x(6)^2;

% Reaction: id = A2____2___A, name = A2 -> 2 * A
	reaction_A2____2___A=compartment_yeast*global_par_epsilon_1*x(8);

% Reaction: id = AI____A___I, name = AI -> A + I
	reaction_AI____A___I=compartment_yeast*global_par_epsilon*x(7);

% Reaction: id = AI___, name = AI -> 
	reaction_AI___=compartment_yeast*global_par_delta_p*x(7);

% Reaction: id = A2___, name = A2 -> 
	reaction_A2___=compartment_yeast*global_par_delta_p*x(8);

% Reaction: id = G1___A2____G2, name = G1 + A2 -> G2
	reaction_G1___A2____G2=compartment_yeast*global_par_a_12*x(2)*x(8);

% Reaction: id = G2____G1___A2, name = G2 -> G1 + A2
	reaction_G2____G1___A2=compartment_yeast*global_par_t_21*x(9);

% Reaction: id = G2____G2___rI, name = G2 -> G2 + rI
	reaction_G2____G2___rI=compartment_yeast*global_par_rho_b*x(9);

% Reaction: id = G2___A2____G3, name = G2 + A2 -> G3
	reaction_G2___A2____G3=compartment_yeast*global_par_a_23*x(9)*x(8);

% Reaction: id = G3____G2___A2, name = G3 -> G2 + A2
	reaction_G3____G2___A2=compartment_yeast*global_par_t_32*x(10);

% Reaction: id = G3____G3___rI, name = G3 -> G3 + rI
	reaction_G3____G3___rI=compartment_yeast*global_par_rho_b*x(10);

	xdot=zeros(10,1);
	
% Species:   id = G0, name = G0, affected by kineticLaw
	xdot(1) = (1/(compartment_yeast))*(( 1.0 * reaction_G1____G0___A2) + (-1.0 * reaction_G0___A2____G1) + (-1.0 * reaction_G____G___rI) + ( 1.0 * reaction_G____G___rI));
	
% Species:   id = G1, name = G1, affected by kineticLaw
	xdot(2) = (1/(compartment_yeast))*((-1.0 * reaction_G1____G0___A2) + ( 1.0 * reaction_G0___A2____G1) + (-1.0 * reaction_G1____G1___rI) + ( 1.0 * reaction_G1____G1___rI) + (-1.0 * reaction_G1___A2____G2) + ( 1.0 * reaction_G2____G1___A2));
	
% Species:   id = rA, name = rA, affected by kineticLaw
	xdot(3) = (1/(compartment_yeast))*((-1.0 * reaction_rA___) + ( 1.0 * reaction_____rA) + (-1.0 * reaction_rA____rA___A) + ( 1.0 * reaction_rA____rA___A));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(4) = (1/(compartment_yeast))*((-1.0 * reaction_I___) + ( 1.0 * reaction_rI____rI___I) + (-1.0 * reaction_A___I____AI) + ( 1.0 * reaction_AI____A___I));
	
% Species:   id = rI, name = rI, affected by kineticLaw
	xdot(5) = (1/(compartment_yeast))*(( 1.0 * reaction_G____G___rI) + ( 1.0 * reaction_G1____G1___rI) + (-1.0 * reaction_rI___) + (-1.0 * reaction_rI____rI___I) + ( 1.0 * reaction_rI____rI___I) + ( 1.0 * reaction_G2____G2___rI) + ( 1.0 * reaction_G3____G3___rI));
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(6) = (1/(compartment_yeast))*(( 1.0 * reaction_rA____rA___A) + (-1.0 * reaction_A___) + (-1.0 * reaction_A___I____AI) + (-2.0 * reaction__2___A____A2) + ( 2.0 * reaction_A2____2___A) + ( 1.0 * reaction_AI____A___I));
	
% Species:   id = AI, name = AI, affected by kineticLaw
	xdot(7) = (1/(compartment_yeast))*(( 1.0 * reaction_A___I____AI) + (-1.0 * reaction_AI____A___I) + (-1.0 * reaction_AI___));
	
% Species:   id = A2, name = A2, affected by kineticLaw
	xdot(8) = (1/(compartment_yeast))*(( 1.0 * reaction_G1____G0___A2) + (-1.0 * reaction_G0___A2____G1) + ( 1.0 * reaction__2___A____A2) + (-1.0 * reaction_A2____2___A) + (-1.0 * reaction_A2___) + (-1.0 * reaction_G1___A2____G2) + ( 1.0 * reaction_G2____G1___A2) + (-1.0 * reaction_G2___A2____G3) + ( 1.0 * reaction_G3____G2___A2));
	
% Species:   id = G2, name = G2, affected by kineticLaw
	xdot(9) = (1/(compartment_yeast))*(( 1.0 * reaction_G1___A2____G2) + (-1.0 * reaction_G2____G1___A2) + (-1.0 * reaction_G2____G2___rI) + ( 1.0 * reaction_G2____G2___rI) + (-1.0 * reaction_G2___A2____G3) + ( 1.0 * reaction_G3____G2___A2));
	
% Species:   id = G3, name = G3, affected by kineticLaw
	xdot(10) = (1/(compartment_yeast))*(( 1.0 * reaction_G2___A2____G3) + (-1.0 * reaction_G3____G2___A2) + (-1.0 * reaction_G3____G3___rI) + ( 1.0 * reaction_G3____G3___rI));
end

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


