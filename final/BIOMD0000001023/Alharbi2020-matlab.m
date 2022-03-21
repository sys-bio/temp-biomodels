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
% Model name = Alharbi2020 - An ODE-based model of the dynamics of tumor cell progression and its effects on normal cell growth and immune system functionality
%
% is http://identifiers.org/biomodels.db/MODEL2107290002
% is http://identifiers.org/biomodels.db/BIOMD0000001023
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 1.22;


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

% Compartment: id = Whole_organism, name = Whole_organism, constant
	compartment_Whole_organism=1.0;
% Parameter:   id =  r, name = r
	global_par_r=0.4312;
% Parameter:   id =  beta_1, name = beta_1
	global_par_beta_1=2.99E-6;
% Parameter:   id =  eta, name = eta
	global_par_eta=0.1379;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.9314;
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=0.4426;
% Parameter:   id =  alpha_2, name = alpha_2
	global_par_alpha_2=0.4;
% Parameter:   id =  beta_2, name = beta_2
	global_par_beta_2=1.189;
% Parameter:   id =  alpha_3, name = alpha_3
	global_par_alpha_3=0.1469;
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=0.7;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.57;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.813;
% Parameter:   id =  rho, name = rho
	global_par_rho=0.271;
% Parameter:   id =  m, name = m
	global_par_m=0.813;
% Parameter:   id =  mu_1, name = mu_1
	global_par_mu_1=0.3634;
% Parameter:   id =  rho_1, name = rho_1
	global_par_rho_1=0.7829;
% Parameter:   id =  m_1, name = m_1
	global_par_m_1=0.862;

% Reaction: id = Normal_cell_growth, name = Normal_cell_growth
	reaction_Normal_cell_growth=compartment_Whole_organism*Rate_Law_for_Normal_cell_growth(global_par_r, x(1), global_par_beta_1);

% Reaction: id = Normal_cell_death_inhibition, name = Normal_cell_death/inhibition
	reaction_Normal_cell_death_inhibition=compartment_Whole_organism*Rate_Law_for_Normal_cell_death_inhibition(global_par_eta, x(1), x(3), global_par_gamma, x(2));

% Reaction: id = Tumor_cell_growth, name = Tumor_cell_growth
	reaction_Tumor_cell_growth=compartment_Whole_organism*Rate_Law_for_Tumor_cell_growth(global_par_alpha_1, x(2), global_par_alpha_2, global_par_beta_2, x(1));

% Reaction: id = Tumor_cell_death_inhibition, name = Tumor_cell_death/inhibition
	reaction_Tumor_cell_death_inhibition=compartment_Whole_organism*Rate_Law_for_Tumor_cell_death_inhibition(global_par_alpha_3, x(2), x(3));

% Reaction: id = Immune_cell_increase, name = Immune_cell_increase
	reaction_Immune_cell_increase=compartment_Whole_organism*Rate_Law_for_Immune_cell_increase(global_par_sigma, global_par_rho, x(1), x(3), global_par_m, global_par_rho_1, x(2), global_par_m_1);

% Reaction: id = Immune_cell_decrease, name = Immune_cell_decrease
	reaction_Immune_cell_decrease=compartment_Whole_organism*Rate_Law_for_Immune_cell_decrease(global_par_delta, x(3), global_par_mu, x(1), global_par_mu_1, x(2));

	xdot=zeros(3,1);
	
% Species:   id = Normal_cells, name = Normal_cells, affected by kineticLaw
	xdot(1) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_Normal_cell_growth) + (-1.0 * reaction_Normal_cell_death_inhibition));
	
% Species:   id = Tumor_cells, name = Tumor_cells, affected by kineticLaw
	xdot(2) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_Tumor_cell_growth) + (-1.0 * reaction_Tumor_cell_death_inhibition));
	
% Species:   id = Immune_cells, name = Immune_cells, affected by kineticLaw
	xdot(3) = (1/(compartment_Whole_organism))*(( 1.0 * reaction_Immune_cell_increase) + (-1.0 * reaction_Immune_cell_decrease));
end

function z=Rate_Law_for_Normal_cell_growth(r,N,beta_1), z=(r*N*(1-beta_1*N));end

function z=Rate_Law_for_Normal_cell_death_inhibition(eta,N,I,gamma,T), z=(eta*N*I+gamma*N*T);end

function z=Rate_Law_for_Tumor_cell_growth(alpha_1,T,alpha_2,beta_2,N), z=(alpha_1*T*(1-alpha_2*T)+beta_2*N*T);end

function z=Rate_Law_for_Tumor_cell_death_inhibition(alpha_3,T,I), z=(alpha_3*T*I);end

function z=Rate_Law_for_Immune_cell_increase(sigma,rho,N,I,m,rho_1,T,m_1), z=(sigma+rho*N*I/(m+N)+rho_1*T*I/(m_1+T));end

function z=Rate_Law_for_Immune_cell_decrease(delta,I,mu,N,mu_1,T), z=(delta*I+mu*N*I+mu_1*T*I);end

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


