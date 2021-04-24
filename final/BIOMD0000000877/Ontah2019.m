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
% Model name = Ontah2019 - Dynamic analysis of a tumor treatment model using oncolytic virus and chemotherapy with saturated infection rate
%
% isDescribedBy http://identifiers.org/doi/10.1088/1757-899X/546/3/032025
% is http://identifiers.org/biomodels.db/MODEL1911270004
% is http://identifiers.org/biomodels.db/BIOMD0000000877
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 100.0;
	x0(2) = 10.0;
	x0(3) = 10.0;
	x0(4) = 30.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  r, name = r
	global_par_r=0.1;
% Parameter:   id =  K, name = K
	global_par_K=2139.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.01;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.5;
% Parameter:   id =  delta_u, name = delta_u
	global_par_delta_u=50.0;
% Parameter:   id =  K_c, name = K_c
	global_par_K_c=10000.0;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.5;
% Parameter:   id =  delta_i, name = delta_i
	global_par_delta_i=60.0;
% Parameter:   id =  b, name = b
	global_par_b=0.5;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.1;
% Parameter:   id =  mu, name = mu
	global_par_mu=150.0;
% Parameter:   id =  psi, name = psi
	global_par_psi=4.17;

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_compartment*Function_for_Tumor_Growth(global_par_r, x(1), x(2), global_par_K);

% Reaction: id = Tumor_Cell_Infection, name = Tumor_Cell_Infection
	reaction_Tumor_Cell_Infection=compartment_compartment*Function_for_Tumor_Cell_Infection(global_par_beta, x(1), x(3), x(2), global_par_alpha);

% Reaction: id = Uninfected_Tumor_Lysis_Drug, name = Uninfected_Tumor_Lysis_Drug
	reaction_Uninfected_Tumor_Lysis_Drug=compartment_compartment*Function_for_Uninfected_Tumor_Lysis_Drug(global_par_delta_u, x(1), x(4), global_par_K_c);

% Reaction: id = Infected_Tumor_Lysis_Drug, name = Infected_Tumor_Lysis_Drug
	reaction_Infected_Tumor_Lysis_Drug=compartment_compartment*Function_for_Infected_Tumor_Lysis_Drug(global_par_delta_i, x(2), x(4), global_par_K_c);

% Reaction: id = Infected_Tumor_Death, name = Infected_Tumor_Death
	reaction_Infected_Tumor_Death=compartment_compartment*global_par_delta*x(2);

% Reaction: id = Virus_Production, name = Virus_Production
	reaction_Virus_Production=compartment_compartment*Function_for_Virus_Production(global_par_b, global_par_delta, x(2));

% Reaction: id = Virus_Decay, name = Virus_Decay
	reaction_Virus_Decay=compartment_compartment*global_par_gamma*x(3);

% Reaction: id = Drug_Decay, name = Drug_Decay
	reaction_Drug_Decay=compartment_compartment*global_par_psi*x(4);

	xdot=zeros(4,1);
	
% Species:   id = U, name = U, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Tumor_Cell_Infection) + (-1.0 * reaction_Uninfected_Tumor_Lysis_Drug));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Cell_Infection) + (-1.0 * reaction_Infected_Tumor_Lysis_Drug) + (-1.0 * reaction_Infected_Tumor_Death));
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_Tumor_Cell_Infection) + ( 1.0 * reaction_Virus_Production) + (-1.0 * reaction_Virus_Decay));
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Drug_Injection) + (-1.0 * reaction_Drug_Decay));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Tumor_Growth(r,U,I,K), z=(r*U*(1-(U+I)/K));end

function z=Function_for_Uninfected_Tumor_Lysis_Drug(delta,U,C,K_c), z=(delta*U*C/(K_c+C));end

function z=Function_for_Tumor_Cell_Infection(beta,U,V,I,alpha), z=(beta*U*V/(U+I+alpha));end

function z=Function_for_Infected_Tumor_Lysis_Drug(delta_I,I,C,K_c), z=(delta_I*I*C/(K_c+C));end

function z=Function_for_Virus_Production(b,delta,I), z=(b*delta*I);end

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


