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
% Model name = Manchanda2014 - Effect on Immune System by 4 different Influenza A virus strains
%
% is http://identifiers.org/biomodels.db/MODEL1808280001
% is http://identifiers.org/biomodels.db/BIOMD0000000712
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.01;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.01;


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

% Compartment: id = compartment, name = Mice, constant
	compartment_compartment=1.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=3.63;
% Parameter:   id =  k_p, name = k_p
	global_par_k_p=3.23;
% Parameter:   id =  beta, name = beta
	global_par_beta=1.0;
% Parameter:   id =  gamma, name = gamma'
	global_par_gamma=0.51;
% Parameter:   id =  theta, name = theta
	global_par_theta=0.01;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=6.81;
% Parameter:   id =  delta, name = delta'
	global_par_delta=4.27;
% Parameter:   id =  omega, name = omega'
	global_par_omega=0.13;
% Parameter:   id =  rho, name = rho
	global_par_rho=1.82;
% Parameter:   id =  f_D, name = f_D
% assignmentRule: variable = S
	x(4)=x(1)+x(3);
% assignmentRule: variable = f_D
	global_par_f_D=1+tanh((x(2)-global_par_delta)/global_par_omega);

% Reaction: id = reaction_1, name = Infection of Virus
	reaction_reaction_1=compartment_compartment*Function_for_Reaction_1(global_par_alpha, x(1), global_par_k_p);

% Reaction: id = reaction_2, name = Early immune response to the virus
	reaction_reaction_2=compartment_compartment*Function_for_Reaction_2(global_par_beta, x(2), x(1));

% Reaction: id = reaction_3, name = Activation of the defense system
	reaction_reaction_3=compartment_compartment*Function_for_Reaction_3(global_par_gamma, x(1));

% Reaction: id = reaction_4, name = Decay in immunity
	reaction_reaction_4=compartment_compartment*global_par_theta*x(2);

% Reaction: id = reaction_5, name = Inflammatory response by the host
	reaction_reaction_5=compartment_compartment*Function_for_Reaction_5(global_par_epsilon, global_par_f_D);

% Reaction: id = reaction_6, name = Anti-inflammatory response by the host
	reaction_reaction_6=compartment_compartment*global_par_rho*x(3);

	xdot=zeros(4,1);
	
% Species:   id = P, name = Virus Pathogenicity (P), affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2));
	
% Species:   id = D, name = Antiviral Immune defense (D), affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = I, name = Inflammation (I), affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = S, name = Clinical Score (S), involved in a rule 	xdot(4) = x(4);
end

function z=Function_for_Reaction_1(alpha,P,k_p), z=(alpha*P*(1-P/k_p));end

function z=Function_for_Reaction_5(epsilon,f_D), z=(epsilon*f_D);end

function z=Function_for_Reaction_2(beta,D,P), z=(beta*D*P/(P+0.01));end

function z=Function_for_Reaction_3(gamma,P), z=(gamma*P);end

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


