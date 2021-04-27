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
% Model name = Lee2018 - Avian human bilinear incidence (BI) model
%
% is http://identifiers.org/biomodels.db/MODEL1808280009
% is http://identifiers.org/biomodels.db/BIOMD0000000716
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 244956.0;
	x0(2) = 36485.0;
	x0(3) = 171977.0;
	x0(4) = 0.0;


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

% Compartment: id = compartment, name = Bird Population, constant
	compartment_compartment=1.0;
% Compartment: id = Human_Population, name = Human Population, constant
	compartment_Human_Population=1.0;
% Parameter:   id =  Nb, name = Nb
% Parameter:   id =  Nh, name = Nh
% Parameter:   id =  LAMBDA_b, name = LAMBDA_b
% Parameter:   id =  LAMBDA_h, name = LAMBDA_h
% Parameter:   id =  mu_b, name = mu_b
% Parameter:   id =  mu_h, name = mu_h
% Parameter:   id =  beta_bh, name = beta_bh
% Parameter:   id =  beta_b, name = beta_b
% Parameter:   id =  beta_v, name = beta_v
% Parameter:   id =  H_b, name = H_b
	global_par_H_b=180000.0;
% Parameter:   id =  H_bh, name = H_bh
	global_par_H_bh=120000.0;
% Parameter:   id =  H_v, name = H_v
	global_par_H_v=850.0;
% Parameter:   id =  d, name = d
% Parameter:   id =  delta_b, name = delta_b
% Parameter:   id =  p, name = p
	global_par_p=0.0;
% Parameter:   id =  phi, name = phi
	global_par_phi=0.0;
% Parameter:   id =  gamma_b, name = gamma_b
	global_par_gamma_b=0.003;
% Parameter:   id =  c, name = c
	global_par_c=0.0;
% Parameter:   id =  q, name = q
	global_par_q=0.0;
% Parameter:   id =  ModelValue_1, name = Initial for Nh
	global_par_ModelValue_1=171977.0;
% assignmentRule: variable = Nb
	global_par_Nb=x(1)+x(2);
% assignmentRule: variable = Nh
	global_par_Nh=x(3)+x(4);
% assignmentRule: variable = LAMBDA_b
	global_par_LAMBDA_b=2060/365;
% assignmentRule: variable = LAMBDA_h
	global_par_LAMBDA_h=23.7*global_par_ModelValue_1/365000;
% assignmentRule: variable = mu_b
	global_par_mu_b=1/(2*365);
% assignmentRule: variable = mu_h
	global_par_mu_h=1/(69.2*365);
% assignmentRule: variable = beta_bh
	global_par_beta_bh=16/(108*1000000*912.5);
% assignmentRule: variable = beta_b
	global_par_beta_b=45685/(439197*30);
% assignmentRule: variable = beta_v
	global_par_beta_v=45685/(2*439197*30);
% assignmentRule: variable = d
	global_par_d=6/(108*1000000*912.5);
% assignmentRule: variable = delta_b
	global_par_delta_b=45682/(439197*30);

% Reaction: id = reaction_2, name = Natural death of susceptible bird
	reaction_reaction_2=compartment_compartment*global_par_mu_b*x(1);

% Reaction: id = reaction_3, name = Infection of susceptible bird
	reaction_reaction_3=compartment_compartment*Rate_for_reaction_3__1(global_par_beta_b, x(1), x(2));

% Reaction: id = reaction_4, name = Disease related death of infected bird
	reaction_reaction_4=compartment_compartment*global_par_delta_b*x(2);

% Reaction: id = reaction_5, name = Natural death of infected bird
	reaction_reaction_5=compartment_compartment*global_par_mu_b*x(2);

% Reaction: id = reaction_7, name = Natural death of susceptible human
	reaction_reaction_7=compartment_Human_Population*global_par_mu_h*x(3);

% Reaction: id = reaction_8, name = Infection of susceptible human
	reaction_reaction_8=Rate_for_reaction_8__2(global_par_beta_bh, x(3), x(2));

% Reaction: id = reaction_9, name = Disease related death of infected human
	reaction_reaction_9=compartment_Human_Population*global_par_d*x(4);

% Reaction: id = reaction_10, name = Natural death of infected human
	reaction_reaction_10=compartment_Human_Population*global_par_mu_h*x(4);

	xdot=zeros(4,1);
	
% Species:   id = S_b, name = Susceptible bird (S_b), affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3));
	
% Species:   id = I_b, name = Infected bird (I_b), affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = S_h, name = Susceptible human (S_h), affected by kineticLaw
	xdot(3) = (1/(compartment_Human_Population))*(( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
	
% Species:   id = I_a, name = Infected Human (I_a), affected by kineticLaw
	xdot(4) = (1/(compartment_Human_Population))*(( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Rate_for_reaction_3__1(beta_b,S_b,I_b), z=(beta_b*S_b*I_b);end

function z=Rate_for_reaction_8__2(beta_bh,S_h,I_b), z=(beta_bh*S_h*I_b);end

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


