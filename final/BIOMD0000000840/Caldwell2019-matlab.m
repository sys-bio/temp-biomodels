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
% Model name = Caldwell2019 - The Vicodin abuse problem
%
% isDescribedBy http://identifiers.org/pubmed/31513802
% is http://identifiers.org/biomodels.db/MODEL1910290002
% is http://identifiers.org/biomodels.db/BIOMD0000000840
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 3.76E7;
	x0(2) = 5640000.0;
	x0(3) = 3760000.0;
	x0(4) = 2000000.0;
	x0(5) = 700000.0;


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
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=3000000.0;
% Parameter:   id =  rho, name = rho
	global_par_rho=1.0E-6;
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=0.22;
% Parameter:   id =  alpha_2, name = alpha_2
	global_par_alpha_2=0.45;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.14;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.05;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.03;
% Parameter:   id =  gamma_1, name = gamma_1
	global_par_gamma_1=0.24;
% Parameter:   id =  gamma_2, name = gamma_2
	global_par_gamma_2=0.293;
% Parameter:   id =  gamma_3, name = gamma_3
	global_par_gamma_3=8.0E-10;

% Reaction: id = New_Vicodin_Prescriptions, name = New_Vicodin_Prescriptions
	reaction_New_Vicodin_Prescriptions=compartment_compartment*Function_for_New_Vicodin_Prescriptions(global_par_lambda, global_par_rho, x(4));

% Reaction: id = Vicodin_Use_Transition_Acute_Chronic, name = Vicodin_Use_Transition_Acute_Chronic
	reaction_Vicodin_Use_Transition_Acute_Chronic=compartment_compartment*global_par_alpha_1*x(1);

% Reaction: id = Vicodin_Use_Transition_Cessation, name = Vicodin_Use_Transition_Cessation
	reaction_Vicodin_Use_Transition_Cessation=compartment_compartment*global_par_alpha_2*x(1);

% Reaction: id = Vicodin_Use_Transition_Chronic_Abuse, name = Vicodin_Use_Transition_Chronic_Abuse
	reaction_Vicodin_Use_Transition_Chronic_Abuse=compartment_compartment*global_par_delta*x(3);

% Reaction: id = Vicodin_Use_Transition_Chronic_Exit, name = Vicodin_Use_Transition_Chronic_Exit
	reaction_Vicodin_Use_Transition_Chronic_Exit=compartment_compartment*global_par_beta*x(2);

% Reaction: id = Vicodin_Use_Transition_Chronic, name = Vicodin_Use_Transition_Chronic
	reaction_Vicodin_Use_Transition_Chronic=compartment_compartment*global_par_delta*x(2);

% Reaction: id = Vicodin_Use_Transition_Chronic2_Exit, name = Vicodin_Use_Transition_Chronic2_Exit
	reaction_Vicodin_Use_Transition_Chronic2_Exit=compartment_compartment*global_par_beta*x(3);

% Reaction: id = Vicodin_Use_Transition_Abuse_Treatment_Exit, name = Vicodin_Use_Transition_Abuse_Treatment_Exit
	reaction_Vicodin_Use_Transition_Abuse_Treatment_Exit=compartment_compartment*global_par_epsilon*x(4);

% Reaction: id = Vicodin_Use_Transition_Abuse_Relapse_Linear, name = Vicodin_Use_Transition_Abuse_Relapse_Linear
	reaction_Vicodin_Use_Transition_Abuse_Relapse_Linear=compartment_compartment*global_par_gamma_1*x(5);

% Reaction: id = Vicodin_Use_Transition_Abuse_Relapse_Nonlinear, name = Vicodin_Use_Transition_Abuse_Relapse_Nonlinear
	reaction_Vicodin_Use_Transition_Abuse_Relapse_Nonlinear=compartment_compartment*Function_for_Vicodin_Use_Transition_Abuse_Relapse_Nonlinear(global_par_gamma_3, x(4), x(5));

% Reaction: id = Vicodin_Use_Transition_Treatment_Succesful, name = Vicodin_Use_Transition_Treatment_Succesful
	reaction_Vicodin_Use_Transition_Treatment_Succesful=compartment_compartment*global_par_gamma_2*x(5);

	xdot=zeros(5,1);
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_New_Vicodin_Prescriptions) + (-1.0 * reaction_Vicodin_Use_Transition_Acute_Chronic) + (-1.0 * reaction_Vicodin_Use_Transition_Cessation));
	
% Species:   id = C1, name = C1, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Vicodin_Use_Transition_Acute_Chronic) + (-1.0 * reaction_Vicodin_Use_Transition_Chronic_Exit) + (-1.0 * reaction_Vicodin_Use_Transition_Chronic));
	
% Species:   id = C2, name = C2, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_Vicodin_Use_Transition_Chronic_Abuse) + ( 1.0 * reaction_Vicodin_Use_Transition_Chronic) + (-1.0 * reaction_Vicodin_Use_Transition_Chronic2_Exit));
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Vicodin_Use_Transition_Chronic_Abuse) + (-1.0 * reaction_Vicodin_Use_Transition_Abuse_Treatment_Exit) + ( 1.0 * reaction_Vicodin_Use_Transition_Abuse_Relapse_Linear) + ( 1.0 * reaction_Vicodin_Use_Transition_Abuse_Relapse_Nonlinear));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_Vicodin_Use_Transition_Abuse_Treatment_Exit) + (-1.0 * reaction_Vicodin_Use_Transition_Abuse_Relapse_Linear) + (-1.0 * reaction_Vicodin_Use_Transition_Abuse_Relapse_Nonlinear) + (-1.0 * reaction_Vicodin_Use_Transition_Treatment_Succesful));
end

function z=Function_for_Vicodin_Use_Transition_Abuse_Relapse_Nonlinear(gamma_3,A,T), z=(gamma_3*A*T);end

function z=Function_for_New_Vicodin_Prescriptions(lambda,rho,A), z=(lambda/(1+rho*A));end

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


