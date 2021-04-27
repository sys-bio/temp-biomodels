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
% Model name = Huo2017 - SEIS epidemic model with the impact of media
%
% is http://identifiers.org/biomodels.db/MODEL1808280008
% is http://identifiers.org/biomodels.db/BIOMD0000000715
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 3.5;
	x0(2) = 2.5;
	x0(3) = 3.0;
	x0(4) = 6.0;
	x0(5) = 9.0;


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
% Parameter:   id =  A, name = A
	global_par_A=0.8;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.8;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.08;
% Parameter:   id =  rho, name = rho
	global_par_rho=0.09;
% Parameter:   id =  mu1, name = mu1
	global_par_mu1=0.99;
% Parameter:   id =  mu2, name = mu2
	global_par_mu2=0.4;
% Parameter:   id =  mu3, name = mu3
	global_par_mu3=0.8;
% Parameter:   id =  alpha1, name = alpha1
	global_par_alpha1=0.6;
% Parameter:   id =  alpha2, name = alpha2
	global_par_alpha2=0.02;
% Parameter:   id =  tau, name = tau
	global_par_tau=0.6;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.7;
% assignmentRule: variable = N
	x(5)=x(1)+x(2)+x(3);

% Reaction: id = reaction_2, name = Transmission of virus to Susceptible individuals
	reaction_reaction_2=compartment_compartment*global_par_gamma*x(3);

% Reaction: id = reaction_3, name = Exposure to the virus
	reaction_reaction_3=compartment_compartment*Function_for_Reaction_3(global_par_beta, x(1), x(3), global_par_alpha, x(4));

% Reaction: id = reaction_4, name = Death of Susceptible Individuals
	reaction_reaction_4=compartment_compartment*global_par_alpha1*x(1);

% Reaction: id = reaction_5, name = Exposed individuals becoming infectious
	reaction_reaction_5=compartment_compartment*global_par_rho*x(2);

% Reaction: id = reaction_6, name = Death of Exposed Individuals
	reaction_reaction_6=compartment_compartment*global_par_alpha1*x(2);

% Reaction: id = reaction_7, name = Death of Infected Individuals
	reaction_reaction_7=compartment_compartment*Function_for_Reaction_7(global_par_alpha1, global_par_alpha2, x(3));

% Reaction: id = reaction_8, name = Message sent by Susceptible Individuals
	reaction_reaction_8=compartment_compartment*Function_for_Message(global_par_mu1, x(1));

% Reaction: id = reaction_9, name = Message sent by Exposed Individuals
	reaction_reaction_9=compartment_compartment*Function_for_Message(global_par_mu2, x(2));

% Reaction: id = reaction_10, name = Message sent by Infected Individuals
	reaction_reaction_10=compartment_compartment*Function_for_Message(global_par_mu3, x(3));

% Reaction: id = reaction_11, name = Message becoming outdated
	reaction_reaction_11=compartment_compartment*global_par_tau*x(4);

	xdot=zeros(5,1);
	
% Species:   id = S, name = Susceptible Individuals (S), affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = E, name = Exposed Individuals (E), affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = I, name = Infected Individuals (I), affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_7));
	
% Species:   id = M, name = Message (M), affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11));
	
% Species:   id = N, name = Total population (N), involved in a rule 	xdot(5) = x(5);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Reaction_3(beta,S,I,alpha,M), z=(beta*S*I*exp((-alpha)*M));end

function z=Function_for_Reaction_7(alpha1,alpha2,I), z=((alpha1+alpha2)*I);end

function z=Function_for_Message(mu,modifier), z=(mu*modifier);end

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


