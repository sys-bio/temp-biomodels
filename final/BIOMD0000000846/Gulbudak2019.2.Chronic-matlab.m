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
% Model name = Gulbudak2019.2 - Heterogeneous viral strategies promote coexistence in virus-microbe systems (Chronic)
%
% isDescribedBy http://identifiers.org/pubmed/30389532
% is http://identifiers.org/biomodels.db/MODEL1911100004
% is http://identifiers.org/biomodels.db/BIOMD0000000846
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 8.3E8;
	x0(2) = 0.0;
	x0(3) = 3.32E7;


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
	global_par_r=0.339;
% Parameter:   id =  K, name = K
	global_par_K=8.947E8;
% Parameter:   id =  d, name = d
% Parameter:   id =  phi, name = phi
% Parameter:   id =  beta, name = beta
	global_par_beta=20.0;
% Parameter:   id =  eta, name = eta
	global_par_eta=1.5;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.0866;
% Parameter:   id =  r_tilde, name = r_tilde
	global_par_r_tilde=0.2;
% Parameter:   id =  phi_tilde, name = phi_tilde
	global_par_phi_tilde=5.0E-12;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.1;
% Parameter:   id =  d_tilde, name = d_tilde
% Parameter:   id =  N, name = N
% assignmentRule: variable = d
	global_par_d=1/24;
% assignmentRule: variable = phi
	global_par_phi=0.55*10^(-9.5);
% assignmentRule: variable = d_tilde
	global_par_d_tilde=1/20;
% assignmentRule: variable = N
	global_par_N=x(1)+x(2);

% Reaction: id = Susceptible_Logistic_Growth, name = Susceptible_Logistic_Growth
	reaction_Susceptible_Logistic_Growth=compartment_compartment*Function_for_Susceptible_Logistic_Growth(global_par_r, x(1), global_par_N, global_par_K);

% Reaction: id = Susceptible_Absorption_Virus, name = Susceptible_Absorption_Virus
	reaction_Susceptible_Absorption_Virus=compartment_compartment*global_par_phi_tilde*x(1)*x(3);

% Reaction: id = Susceptible_Death, name = Susceptible_Death
	reaction_Susceptible_Death=compartment_compartment*global_par_d*x(1);

% Reaction: id = Chronic_Infected_Death, name = Chronic_Infected_Death
	reaction_Chronic_Infected_Death=compartment_compartment*global_par_d_tilde*x(2);

% Reaction: id = Chronic_Infected_Logistic_Growth, name = Chronic_Infected_Logistic_Growth
	reaction_Chronic_Infected_Logistic_Growth=compartment_compartment*Function_for_Chronic_Logistic_Growth(global_par_r_tilde, x(2), global_par_N, global_par_K);

% Reaction: id = Virus_Chronic_Release_From_Chronic_Infected, name = Virus_Chronic_Release_From_Chronic_Infected
	reaction_Virus_Chronic_Release_From_Chronic_Infected=compartment_compartment*Function_for_Virus_Chronic_Release_From_Chronic_Infected(global_par_alpha, x(2));

% Reaction: id = Virus_Chronic_Decay, name = Virus_Chronic_Decay
	reaction_Virus_Chronic_Decay=compartment_compartment*global_par_mu*x(3);

	xdot=zeros(3,1);
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Susceptible_Logistic_Growth) + (-1.0 * reaction_Susceptible_Absorption_Virus) + (-1.0 * reaction_Susceptible_Death));
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Susceptible_Absorption_Virus) + (-1.0 * reaction_Chronic_Infected_Death) + ( 1.0 * reaction_Chronic_Infected_Logistic_Growth));
	
% Species:   id = V_C, name = V_C, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_Susceptible_Absorption_Virus) + ( 1.0 * reaction_Virus_Chronic_Release_From_Chronic_Infected) + (-1.0 * reaction_Virus_Chronic_Decay));
end

function z=Function_for_Susceptible_Logistic_Growth(r,S,N,K), z=(r*S*(1-N/K));end

function z=Function_for_Chronic_Logistic_Growth(r_tilde,C,N,K), z=(r_tilde*C*(1-N/K));end

function z=Function_for_Virus_Chronic_Release_From_Chronic_Infected(alpha,C), z=(alpha*C);end

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


