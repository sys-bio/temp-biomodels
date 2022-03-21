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
% Model name = Malinzi2018 - tumour-immune interaction model
%
% is http://identifiers.org/biomodels.db/MODEL1909060001
% is http://identifiers.org/biomodels.db/BIOMD0000000809
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(5) = 0.8;
	x0(1) = 0.3;
	x0(2) = 0.8;
	x0(3) = 1.0E-6;
	x0(4) = 0.1;


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
% Parameter:   id =  R, name = R
% Parameter:   id =  phi_1, name = phi_1
	global_par_phi_1=1.3398;
% Parameter:   id =  phi_2, name = phi_2
	global_par_phi_2=0.25;
% Parameter:   id =  delta, name = delta
	global_par_delta=3.0218;
% Parameter:   id =  nu_1, name = nu_1
	global_par_nu_1=0.00218;
% Parameter:   id =  sigma_1, name = sigma_1
	global_par_sigma_1=0.3;
% Parameter:   id =  sigma_2, name = sigma_2
	global_par_sigma_2=0.5;
% Parameter:   id =  nu_2, name = nu_2
	global_par_nu_2=0.7279;
% Parameter:   id =  nu_3, name = nu_3
	global_par_nu_3=300.0;
% Parameter:   id =  myu_1, name = myu_1
	global_par_myu_1=1.0;
% Parameter:   id =  rho, name = rho
	global_par_rho=0.1;
% Parameter:   id =  myu_2, name = myu_2
	global_par_myu_2=0.24;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=2.02;
% rateRule: variable = R
global_par_R = x(5);

% Reaction: id = x_logistic_growth, name = Immune cell x logistic growth
	reaction_x_logistic_growth=compartment_compartment*Function_for_x_logistic_growth(global_par_phi_1, x(1), global_par_phi_2);

% Reaction: id = x_proliferation, name = Immune cell x proliferation
	reaction_x_proliferation=compartment_compartment*Function_for_x_proliferation(global_par_delta, x(1), x(2), global_par_gamma);

% Reaction: id = x_immune_inactivation, name = Immune cell x immune inactivation
	reaction_x_immune_inactivation=compartment_compartment*Function_for_x_immune_inactivation(global_par_nu_1, x(1), x(2));

% Reaction: id = y_logistic_growth, name = Tumour cell y logistic growth
	reaction_y_logistic_growth=compartment_compartment*Function_for_y_logistic_growth(global_par_sigma_1, x(2), global_par_sigma_2);

% Reaction: id = y_tumour_lysis, name = Tumour cell y tumour lysis
	reaction_y_tumour_lysis=compartment_compartment*Function_for_y_tumour_lysis(global_par_nu_2, x(1), x(2));

% Reaction: id = u_production, name = Chemokine concentration u production
	reaction_u_production=compartment_compartment*Function_for_u_production(global_par_nu_3, x(1), x(2));

% Reaction: id = u_decay, name = Chemokine concentration u decay
	reaction_u_decay=compartment_compartment*Function_for_u_decay(global_par_myu_1, x(3));

% Reaction: id = ystar_formation, name = Dead tumour cell ystar formation
	reaction_ystar_formation=compartment_compartment*Function_for_y__formation(x(1), x(2), global_par_rho);

% Reaction: id = ystar_decay, name = Dead tumour cell ystar decay
	reaction_ystar_decay=compartment_compartment*Function_for_y__decay(global_par_myu_2, x(4));

	xdot=zeros(5,1);
	% rateRule: variable = R
	xdot(5) = global_par_R*(global_par_sigma_1*x(2)*(1-global_par_sigma_2*x(2))-global_par_myu_2*x(4))/(x(2)+x(4)-1)/3;
	
% Species:   id = x, name = Immune cell x, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_x_logistic_growth) + ( 1.0 * reaction_x_proliferation) + (-1.0 * reaction_x_immune_inactivation));
	
% Species:   id = y, name = Tumour cell y, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_y_logistic_growth) + (-1.0 * reaction_y_tumour_lysis));
	
% Species:   id = u, name = Chemokine concentration u, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_u_production) + (-1.0 * reaction_u_decay));
	
% Species:   id = ystar, name = Dead tumour cell ystar, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_ystar_formation) + (-1.0 * reaction_ystar_decay));
end

function z=Function_for_x_logistic_growth(phi_1,x,phi_2), z=(phi_1*x*(1-phi_2*x));end

function z=Function_for_x_proliferation(delta,x,y,gamma), z=(delta*x*y/(gamma+x));end

function z=Function_for_x_immune_inactivation(nu_1,x,y), z=(nu_1*x*y);end

function z=Function_for_y_logistic_growth(sigma_1,y,sigma_2), z=(sigma_1*y*(1-sigma_2*y));end

function z=Function_for_y_tumour_lysis(nu_2,x,y), z=(nu_2*x*y);end

function z=Function_for_u_production(nu_3,x,y), z=(nu_3*x*y);end

function z=Function_for_u_decay(myu_1,u), z=(myu_1*u);end

function z=Function_for_y__formation(x,y,rho), z=(rho*x*y);end

function z=Function_for_y__decay(myu_2,ystar), z=(myu_2*ystar);end

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


