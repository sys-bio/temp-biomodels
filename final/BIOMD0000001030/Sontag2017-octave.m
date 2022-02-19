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
% Model name = Sontag2017 - Dynamic model of immune responses to antigen presentation by tumor or pathogen
%
% is http://identifiers.org/biomodels.db/MODEL2108160001
% is http://identifiers.org/biomodels.db/BIOMD0000001030
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 1.0;


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

% Compartment: id = Whole_organism, name = Whole_organism, constant
	compartment_Whole_organism=1.0;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=0.0;
% Parameter:   id =  kappa, name = kappa
	global_par_kappa=0.0;
% Parameter:   id =  delta_x, name = delta_x
	global_par_delta_x=1.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=1.0;
% Parameter:   id =  mu, name = mu
	global_par_mu=1.0;
% Parameter:   id =  detla_y, name = detla_y
	global_par_detla_y=1.0;
% assignmentRule: variable = Antigen_expressing_cells
	x(1)=piecewise(time-99, time >= 100, 1);

% Reaction: id = pathogen_tumor_production, name = pathogen/tumor_production
	reaction_pathogen_tumor_production=compartment_Whole_organism*Rate_Law_for_u_production(global_par_lambda, x(1));

% Reaction: id = pathogen_tumor_consumption, name = pathogen/tumor_consumption
	reaction_pathogen_tumor_consumption=compartment_Whole_organism*Rate_Law_for_u_consumption(global_par_kappa, x(3), x(1));

% Reaction: id = regulatory_production, name = regulatory_production
	reaction_regulatory_production=compartment_Whole_organism*Rate_Law_for_x_production(global_par_beta, x(1));

% Reaction: id = regulatory_consumption, name = regulatory_consumption
	reaction_regulatory_consumption=compartment_Whole_organism*global_par_delta_x*x(2);

% Reaction: id = effector_production, name = effector_production
	reaction_effector_production=compartment_Whole_organism*Rate_Law_for_y_production(global_par_mu, x(1), x(2));

% Reaction: id = effector_consumption, name = effector_consumption
	reaction_effector_consumption=compartment_Whole_organism*global_par_detla_y*x(3);

	xdot=zeros(3,1);
	
% Species:   id = Antigen_expressing_cells, name = Antigen-expressing_cells, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = Regulatory_cells, name = Regulatory_cells, affected by kineticLaw
	xdot(2) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_regulatory_production) + (-1.0 * reaction_regulatory_consumption));
	
% Species:   id = Effector_cells, name = Effector_cells, affected by kineticLaw
	xdot(3) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_effector_production) + (-1.0 * reaction_effector_consumption));
end

function z=Rate_Law_for_u_production(lambda,u), z=(lambda*u);end

function z=Rate_Law_for_u_consumption(kappa,y,u), z=(kappa*y*u);end

function z=Rate_Law_for_x_production(beta,u), z=(beta*u);end

function z=Rate_Law_for_y_production(mu,u,x), z=(mu*u/x);end

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


