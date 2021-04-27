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
% Model name = West2019 - Cellular interactions constrain tumor growth
%
% is http://identifiers.org/biomodels.db/MODEL1909240001
% is http://identifiers.org/biomodels.db/BIOMD0000000820
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 1.0;
	x0(4) = 1.0;
	x0(5) = 1.0;
	x0(6) = 1.0;
	x0(7) = 1.0;


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
% Parameter:   id =  alpha_0, name = alpha_0
	global_par_alpha_0=1.0;
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=10000.0;
% Parameter:   id =  tau, name = tau
	global_par_tau=10.0;
% Parameter:   id =  alpha_1_variable, name = alpha_1 variable
	global_par_alpha_1_variable=0.0;
% Parameter:   id =  alpha_0_variable, name = alpha_0 variable
	global_par_alpha_0_variable=1.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=1.0;
% Parameter:   id =  K, name = K
	global_par_K=100.0;
% Parameter:   id =  nu, name = nu
	global_par_nu=0.3;
% Parameter:   id =  a, name = a
	global_par_a=4.0;
% Parameter:   id =  b, name = b
	global_par_b=0.2;
% Parameter:   id =  gamma, name = gamma
% assignmentRule: variable = gamma
	global_par_gamma=2/3;

% Reaction: id = exponential_linear_growth, name = exponential-linear growth
	reaction_exponential_linear_growth=compartment_compartment*Function_for_exponential_linear_growth(global_par_alpha_0_variable, x(1), global_par_alpha_1_variable);

% Reaction: id = generalized_logistic_growth, name = generalized logistic growth
	reaction_generalized_logistic_growth=compartment_compartment*Function_for_generalized_logistic_growth(global_par_alpha, x(2), global_par_K, global_par_nu);

% Reaction: id = Gompertz_growth, name = Gompertz growth
	reaction_Gompertz_growth=compartment_compartment*Function_for_Gompertz_growth(global_par_alpha, x(3), global_par_K);

% Reaction: id = power_law_model, name = power law model
	reaction_power_law_model=compartment_compartment*Function_for_power_law_model(global_par_a, x(4), global_par_gamma);

% Reaction: id = Von_Bertalanffy_equation, name = Von Bertalanffy equation
	reaction_Von_Bertalanffy_equation=compartment_compartment*Function_for_Von_Bertalanffy_equation(global_par_a, x(5), global_par_gamma, global_par_b);

% Reaction: id = exponential_growth, name = exponential growth
	reaction_exponential_growth=compartment_compartment*Function_for_exponential_growth(global_par_alpha_0, x(6));

% Reaction: id = logistic_growth, name = logistic growth
	reaction_logistic_growth=compartment_compartment*Function_for_logistic_growth(global_par_alpha, x(7), global_par_K);

%Event: id=exponential_model_switch
	event_exponential_model_switch=time > global_par_tau;

	if(event_exponential_model_switch) 
		global_par_alpha_1_variable=global_par_alpha_1_variable+global_par_alpha_1;
		global_par_alpha_0_variable=global_par_alpha_0_variable-global_par_alpha_0;
	end

	xdot=zeros(7,1);
	
% Species:   id = tumor_at_Exp_Lin_growth, name = tumor at Exp-Lin growth, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_exponential_linear_growth));
	
% Species:   id = tumor_at_Gen__logistic_growth, name = tumor at Gen. logistic growth, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_generalized_logistic_growth));
	
% Species:   id = tumor_at_Gomp__growth, name = tumor at Gomp. growth, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Gompertz_growth));
	
% Species:   id = tumor_at_Power_growth, name = tumor at Power growth, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_power_law_model));
	
% Species:   id = tumor_at_Von_Bert__growth, name = tumor at Von Bert. growth, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_Von_Bertalanffy_equation));
	
% Species:   id = tumor_at_Exp_growth, name = tumor at Exp growth, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_exponential_growth));
	
% Species:   id = tumor_at_Logistic_growth, name = tumor at Logistic growth, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_logistic_growth));
end

function z=Function_for_exponential_linear_growth(alpha_0,n,alpha_1), z=(alpha_0*n+alpha_1);end

function z=Function_for_generalized_logistic_growth(alpha,n,K,v), z=(alpha*n*(1-(n/K)^v));end

function z=Function_for_Gompertz_growth(alpha,n,K), z=(alpha*n*log(K)-alpha*n*log(n));end

function z=Function_for_Von_Bertalanffy_equation(a,n,gamma,b), z=(a*n^gamma-b*n);end

function z=Function_for_exponential_growth(alpha_0,n), z=(alpha_0*n);end

function z=Function_for_power_law_model(a,n,gamma), z=(a*n^gamma);end

function z=Function_for_logistic_growth(alpha,n,K), z=(alpha*n*(1-n/K));end

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


