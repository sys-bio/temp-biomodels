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
% Model name = Rodrigues2019 - A mathematical model for chemoimmunotherapy of chronic lymphocytic leukemia
%
% isDescribedBy http://identifiers.org/doi/10.1016/j.amc.2018.12.008
% is http://identifiers.org/biomodels.db/MODEL1911280001
% is http://identifiers.org/biomodels.db/BIOMD0000000879
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 2.0E10;
	x0(2) = 5.0E7;
	x0(3) = 0.0;


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
	global_par_r=0.01;
% Parameter:   id =  k, name = k
	global_par_k=1.0E12;
% Parameter:   id =  c_1, name = c_1
	global_par_c_1=5.0E-11;
% Parameter:   id =  c_2, name = c_2
	global_par_c_2=1.0E-13;
% Parameter:   id =  s_0, name = s_0
	global_par_s_0=700000.0;
% Parameter:   id =  d, name = d
	global_par_d=0.001;
% Parameter:   id =  rho, name = rho
	global_par_rho=1.0E-12;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=100.0;
% Parameter:   id =  mu, name = mu
	global_par_mu=8.0;
% Parameter:   id =  delta, name = delta
	global_par_delta=10000.0;
% Parameter:   id =  a, name = a
	global_par_a=2000.0;
% Parameter:   id =  b, name = b
	global_par_b=5000000.0;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=4.16;
% Parameter:   id =  Immunotherapy_Input, name = Immunotherapy_Input
	global_par_Immunotherapy_Input=0.0;
% Parameter:   id =  Chemotherapy_Input, name = Chemotherapy_Input
% Parameter:   id =  Infusion_Duration, name = Infusion_Duration
% Parameter:   id =  Infusion_Dose, name = Infusion_Dose
	global_par_Infusion_Dose=1080.0;
% Parameter:   id =  Infusion_Rate, name = Infusion_Rate
% assignmentRule: variable = Infusion_Duration
	global_par_Infusion_Duration=1/8;
% assignmentRule: variable = Infusion_Rate
	global_par_Infusion_Rate=global_par_Infusion_Dose/global_par_Infusion_Duration;
% assignmentRule: variable = Chemotherapy_Input
	global_par_Chemotherapy_Input=piecewise(global_par_Infusion_Rate, time <= global_par_Infusion_Duration, piecewise(global_par_Infusion_Rate, (time >= 21) && (time <= (21+global_par_Infusion_Duration)), piecewise(global_par_Infusion_Rate, (time >= 42) && (time <= (42+global_par_Infusion_Duration)), piecewise(global_par_Infusion_Rate, (time >= 63) && (time <= (63+global_par_Infusion_Duration)), piecewise(global_par_Infusion_Rate, (time >= 84) && (time <= (84+global_par_Infusion_Duration)), piecewise(global_par_Infusion_Rate, (time >= 105) && (time <= (105+global_par_Infusion_Duration)), piecewise(global_par_Infusion_Rate, (time >= 126) && (time <= (126+global_par_Infusion_Duration)), 0)))))));

% Reaction: id = Cancer_Growth, name = Cancer_Growth
	reaction_Cancer_Growth=compartment_compartment*Function_for_Cancer_Growth(global_par_r, x(1), global_par_k);

% Reaction: id = Cancer_Death_Immune, name = Cancer_Death_Immune
	reaction_Cancer_Death_Immune=compartment_compartment*Function_for_Cancer_Death_Immune(global_par_c_1, x(1), x(2));

% Reaction: id = Cancer_Death_Chemotherapy, name = Cancer_Death_Chemotherapy
	reaction_Cancer_Death_Chemotherapy=compartment_compartment*Function_for_Cancer_Death_Chemotherapy(global_par_mu, x(1), x(3), global_par_a);

% Reaction: id = Immune_Death_Natural, name = Immune_Death_Natural
	reaction_Immune_Death_Natural=compartment_compartment*global_par_d*x(2);

% Reaction: id = Immune_Growth_Cancer_Stimulation, name = Immune_Growth_Cancer_Stimulation
	reaction_Immune_Growth_Cancer_Stimulation=compartment_compartment*Function_for_Immune_Growth_Cancer_Stimulation(global_par_rho, x(1), x(2), global_par_gamma);

% Reaction: id = Immune_Death_Cancer, name = Immune_Death_Cancer
	reaction_Immune_Death_Cancer=compartment_compartment*Function_for_Immune_Death_Cancer(global_par_c_2, x(1), x(2));

% Reaction: id = Immune_Death_Chemotherapy, name = Immune_Death_Chemotherapy
	reaction_Immune_Death_Chemotherapy=compartment_compartment*Function_for_Immune_Death_Chemotherapy(global_par_delta, x(2), x(3), global_par_b);

% Reaction: id = Chemotherapy_Decay, name = Chemotherapy_Decay
	reaction_Chemotherapy_Decay=compartment_compartment*global_par_lambda*x(3);

	xdot=zeros(3,1);
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Cancer_Growth) + (-1.0 * reaction_Cancer_Death_Immune) + (-1.0 * reaction_Cancer_Death_Chemotherapy));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Immune_Growth_Constant) + (-1.0 * reaction_Immune_Death_Natural) + ( 1.0 * reaction_Immune_Growth_Cancer_Stimulation) + (-1.0 * reaction_Immune_Death_Cancer) + (-1.0 * reaction_Immune_Death_Chemotherapy) + ( 1.0 * reaction_Immune_Immunotherapy));
	
% Species:   id = Q, name = Q, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_Chemotherapy_Decay) + ( 1.0 * reaction_Chemotherapy));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Cancer_Death_Immune(c_1,N,I), z=(c_1*N*I);end

function z=Function_for_Immune_Death_Cancer(c_2,N,I), z=(c_2*N*I);end

function z=Function_for_Immune_Growth_Cancer_Stimulation(rho,N,I,gamma), z=(rho*N*I/(gamma+N));end

function z=Function_for_Immune_Death_Chemotherapy(delta,I,Q,b), z=(delta*I*Q/(b+Q));end

function z=Function_for_Cancer_Growth(r,N,k), z=(r*N*(1-N/k));end

function z=Function_for_Cancer_Death_Chemotherapy(mu,N,Q,a), z=(mu*N*Q/(a+Q));end

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


