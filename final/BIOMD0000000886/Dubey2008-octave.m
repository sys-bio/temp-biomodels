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
% Model name = Dubey2008 - Modeling the interaction between avascular cancerous cells and acquired immune response
%
% is http://identifiers.org/biomodels.db/MODEL1912100002
% is http://identifiers.org/biomodels.db/BIOMD0000000886
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 9.0;
	x0(2) = 7.0;
	x0(3) = 1.0;
	x0(4) = 1.0;
	x0(5) = 1.0;


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
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.18;
% Parameter:   id =  alpha_0, name = alpha_0
	global_par_alpha_0=4.6;
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=0.101;
% Parameter:   id =  delta_2, name = delta_2
	global_par_delta_2=0.008;
% Parameter:   id =  mu_1, name = mu_1
	global_par_mu_1=1.5;
% Parameter:   id =  mu_10, name = mu_10
	global_par_mu_10=0.2;
% Parameter:   id =  mu_11, name = mu_11
	global_par_mu_11=0.3;
% Parameter:   id =  mu_2, name = mu_2
	global_par_mu_2=1.4;
% Parameter:   id =  mu_20, name = mu_20
	global_par_mu_20=0.0412;
% Parameter:   id =  beta_1, name = beta_1
	global_par_beta_1=0.3;
% Parameter:   id =  beta_2, name = beta_2
	global_par_beta_2=0.05;
% Parameter:   id =  mu_3, name = mu_3
	global_par_mu_3=0.45;
% Parameter:   id =  mu_30, name = mu_30
	global_par_mu_30=0.03;
% Parameter:   id =  gamma_1, name = gamma_1
	global_par_gamma_1=0.4;
% Parameter:   id =  gamma_2, name = gamma_2
	global_par_gamma_2=0.3;
% Parameter:   id =  mu_4, name = mu_4
	global_par_mu_4=0.35;
% Parameter:   id =  mu_40, name = mu_40
	global_par_mu_40=0.3;
% Parameter:   id =  delta_1, name = delta_1
	global_par_delta_1=0.5;

% Reaction: id = Formation_of_tumor_cell, name = Formation of tumor cell
	reaction_Formation_of_tumor_cell=compartment_compartment*Function_for_Formation_of_tumor_cell(global_par_alpha, x(1));

% Reaction: id = Removal_of_tumor_cell_from_the_system, name = Removal of tumor cell from the system
	reaction_Removal_of_tumor_cell_from_the_system=compartment_compartment*Function_for_removal_of_tumor_cell_from_the_system(global_par_alpha_0, x(1), global_par_alpha_1, x(3), global_par_delta_2, x(5));

% Reaction: id = Formation_of_T_helper_cell, name = Formation of T helper cell
	reaction_Formation_of_T_helper_cell=compartment_compartment*Function_for_formation_of_T_helper_cell(global_par_mu_1, x(1), global_par_mu_11, x(2));

% Reaction: id = Removal_of_T_helper_cell_from_the_system, name = Removal of T helper cell from the system
	reaction_Removal_of_T_helper_cell_from_the_system=compartment_compartment*Function_for_removal_of_T_helper_cell_from_the_system(global_par_mu_10, x(2));

% Reaction: id = formation_of_cytotoxic_T_cell, name = formation of cytotoxic T cell
	reaction_formation_of_cytotoxic_T_cell=compartment_compartment*Function_for_formation_of_cytotoxic_T_cell_in_the_system(global_par_mu_2, x(1), global_par_beta_1, x(3), global_par_beta_2, x(2));

% Reaction: id = Removal_of_cytotoxic_T_cell, name = Removal of cytotoxic T cell
	reaction_Removal_of_cytotoxic_T_cell=compartment_compartment*Function_for_removal_of_cytotoxic_T_cell(global_par_mu_20, x(3));

% Reaction: id = Formation_of_B_cell, name = Formation of B cell
	reaction_Formation_of_B_cell=compartment_compartment*Function_for_formation_of_B_cell(global_par_mu_3, x(1), global_par_gamma_1, x(4), global_par_gamma_2, x(2));

% Reaction: id = Removal_of_B_cell_from_the_system, name = Removal of B cell from the system
	reaction_Removal_of_B_cell_from_the_system=compartment_compartment*Function_for_removal_of_B_cell_from_the_system(global_par_mu_30, x(4));

% Reaction: id = introduction_of_antibody_against_cancer, name = introduction of antibody against cancer
	reaction_introduction_of_antibody_against_cancer=compartment_compartment*Function_for_introduction_of_antibody_against_cancer(global_par_mu_4, x(4));

% Reaction: id = Removal_of_antibody_from_the_system, name = Removal of antibody from the system
	reaction_Removal_of_antibody_from_the_system=compartment_compartment*Function_for_removal_of_antibody_from_the_system(global_par_mu_40, x(5), global_par_delta_1, x(1));

	xdot=zeros(5,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Formation_of_tumor_cell) + (-1.0 * reaction_Removal_of_tumor_cell_from_the_system));
	
% Species:   id = Th, name = Th, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Formation_of_T_helper_cell) + (-1.0 * reaction_Removal_of_T_helper_cell_from_the_system));
	
% Species:   id = Tc, name = Tc, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_formation_of_cytotoxic_T_cell) + (-1.0 * reaction_Removal_of_cytotoxic_T_cell));
	
% Species:   id = B, name = B, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Formation_of_B_cell) + (-1.0 * reaction_Removal_of_B_cell_from_the_system));
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_introduction_of_antibody_against_cancer) + (-1.0 * reaction_Removal_of_antibody_from_the_system));
end

function z=Function_for_Formation_of_tumor_cell(alpha,T), z=(alpha*T);end

function z=Function_for_removal_of_T_helper_cell_from_the_system(mu_10,Th), z=(mu_10*Th);end

function z=Function_for_removal_of_tumor_cell_from_the_system(alpha_0,T,alpha_1,Tc,delta_2,A), z=(alpha_0*T*T+alpha_1*T*Tc+delta_2*T*A);end

function z=Function_for_formation_of_B_cell(mu_3,T,gamma_1,B,gamma_2,Th), z=(mu_3*T+gamma_1*T*B+gamma_2*Th*B);end

function z=Function_for_formation_of_T_helper_cell(mu_1,T,mu_11,Th), z=(mu_1*T+mu_11*T*Th);end

function z=Function_for_removal_of_cytotoxic_T_cell(mu_20,Tc), z=(mu_20*Tc);end

function z=Function_for_formation_of_cytotoxic_T_cell_in_the_system(mu_2,T,bela_1,Tc,beta_2,Th), z=(mu_2*T+bela_1*T*Tc+beta_2*Th*Tc);end

function z=Function_for_removal_of_B_cell_from_the_system(mu_30,B), z=(mu_30*B);end

function z=Function_for_introduction_of_antibody_against_cancer(mu_4,B), z=(mu_4*B);end

function z=Function_for_removal_of_antibody_from_the_system(mu_40,A,delta_1,T), z=(mu_40*A+delta_1*T*A);end

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


