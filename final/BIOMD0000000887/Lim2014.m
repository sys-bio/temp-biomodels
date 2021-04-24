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
% Model name = Lim2014 - HTLV-I infection A dynamic struggle between viral persistence and host immunity
%
% isDescribedBy http://identifiers.org/pubmed/24583256
% is http://identifiers.org/biomodels.db/MODEL1912100003
% is http://identifiers.org/biomodels.db/BIOMD0000000887
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 850.0;
	x0(2) = 0.1;
	x0(3) = 0.5;
	x0(4) = 0.1;


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
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=10.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.001;
% Parameter:   id =  r, name = r
	global_par_r=0.011;
% Parameter:   id =  tau, name = tau
	global_par_tau=0.003;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.029;
% Parameter:   id =  nu, name = nu
	global_par_nu=0.036;
% Parameter:   id =  mu_1, name = mu_1
	global_par_mu_1=0.012;
% Parameter:   id =  mu_2, name = mu_2
	global_par_mu_2=0.03;
% Parameter:   id =  mu_3, name = mu_3
	global_par_mu_3=0.03;
% Parameter:   id =  mu_4, name = mu_4
	global_par_mu_4=0.03;

% Reaction: id = Infectious_Transmission, name = Infectious_Transmission
	reaction_Infectious_Transmission=compartment_compartment*Function_for_Infectious_Transmission(global_par_beta, x(1), x(3));

% Reaction: id = CD4_Natural_Death, name = CD4_Natural_Death
	reaction_CD4_Natural_Death=compartment_compartment*global_par_mu_1*x(1);

% Reaction: id = Mitotic_Transmission, name = Mitotic_Transmission
	reaction_Mitotic_Transmission=compartment_compartment*Function_for_Mitotic_Transmission(global_par_r, x(3));

% Reaction: id = CD4LI_Spontaneous_Activation, name = CD4LI_Spontaneous_Activation
	reaction_CD4LI_Spontaneous_Activation=compartment_compartment*global_par_tau*x(2);

% Reaction: id = CD4LI_Natural_Death, name = CD4LI_Natural_Death
	reaction_CD4LI_Natural_Death=compartment_compartment*global_par_mu_2*x(2);

% Reaction: id = CD4AI_Lysis_CTL, name = CD4AI_Lysis_CTL
	reaction_CD4AI_Lysis_CTL=compartment_compartment*Function_for_CD4AI_Lysis_CTL(global_par_gamma, x(3), x(4));

% Reaction: id = CD4AI_Natural_Death, name = CD4AI_Natural_Death
	reaction_CD4AI_Natural_Death=compartment_compartment*global_par_mu_3*x(3);

% Reaction: id = CTL_Proliferation, name = CTL_Proliferation
	reaction_CTL_Proliferation=compartment_compartment*Function_for_CTL_Proliferation(global_par_nu, x(3));

% Reaction: id = CTL_Natural_Death, name = CTL_Natural_Death
	reaction_CTL_Natural_Death=compartment_compartment*global_par_mu_4*x(4);

	xdot=zeros(4,1);
	
% Species:   id = x, name = x, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_CD4_Production) + (-1.0 * reaction_Infectious_Transmission) + (-1.0 * reaction_CD4_Natural_Death));
	
% Species:   id = u, name = u, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Infectious_Transmission) + ( 1.0 * reaction_Mitotic_Transmission) + (-1.0 * reaction_CD4LI_Spontaneous_Activation) + (-1.0 * reaction_CD4LI_Natural_Death));
	
% Species:   id = y, name = y, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_CD4LI_Spontaneous_Activation) + (-1.0 * reaction_CD4AI_Lysis_CTL) + (-1.0 * reaction_CD4AI_Natural_Death));
	
% Species:   id = z, name = z, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_CTL_Proliferation) + (-1.0 * reaction_CTL_Natural_Death));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Mitotic_Transmission(r,y), z=(r*y);end

function z=Function_for_Infectious_Transmission(beta,x,y), z=(beta*x*y);end

function z=Function_for_CTL_Proliferation(nu,y), z=(nu*y);end

function z=Function_for_CD4AI_Lysis_CTL(gamma,y,z), z=(gamma*y*z);end

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


