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
% Model name = Isaeva2008 - Modelling of Anti-Tumour Immune Response Immunocorrective Effect of Weak Centimetre Electromagnetic Waves
%
% isDescribedBy http://identifiers.org/doi/10.1080/17486700802373540
% is http://identifiers.org/biomodels.db/MODEL2001140001
% is http://identifiers.org/biomodels.db/BIOMD0000000910
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 240000.0;
	x0(2) = 200000.0;
	x0(3) = 3.6E7;


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
% Parameter:   id =  alpha_T, name = alpha_T
	global_par_alpha_T=0.22;
% Parameter:   id =  beta_T, name = beta_T
	global_par_beta_T=8.4E-8;
% Parameter:   id =  gama_prime_L, name = gama_prime_L
	global_par_gama_prime_L=4.0E-7;
% Parameter:   id =  VL, name = VL
	global_par_VL=79000.0;
% Parameter:   id =  alpha_L, name = alpha_L
	global_par_alpha_L=9.9E-9;
% Parameter:   id =  beta_L, name = beta_L
	global_par_beta_L=0.33;
% Parameter:   id =  alpha_I2, name = alpha_I2
	global_par_alpha_I2=1.25E7;
% Parameter:   id =  alpha_bar_L, name = alpha_bar_L
	global_par_alpha_bar_L=6.6E-8;
% Parameter:   id =  gama_T, name = gama_T
	global_par_gama_T=6.6E-7;
% Parameter:   id =  K_T, name = K_T
	global_par_K_T=52000.0;

% Reaction: id = Activation_and_transfer_of_cytotoxic_T_lymphocyte_at_the_site_of_tumor, name = Activation and transfer of cytotoxic T lymphocyte at the site of tumor
	reaction_Activation_and_transfer_of_cytotoxic_T_lymphocyte_at_the_site_of_tumor=compartment_compartment*Function_for_activation_and_transfer_of_cytotoxic_T_lymphocyte_at_the_site_of_tumor(global_par_VL, global_par_alpha_L, x(1), x(3));

% Reaction: id = Deactivation_and_removal_of_cytotoxic_T_lymphocyte_from_the_site_of_action, name = Deactivation and removal of cytotoxic T lymphocyte from the site of action
	reaction_Deactivation_and_removal_of_cytotoxic_T_lymphocyte_from_the_site_of_action=compartment_compartment*Function_for_Deactivation_and_removal_of_cytotoxic_T_lymphocyte_from_the_site_of_action(global_par_beta_L, x(1));

% Reaction: id = Formation_and_removal_of_tumor, name = Formation and removal of tumor
	reaction_Formation_and_removal_of_tumor=compartment_compartment*Function_for_formation_and_removal_of_tumor(global_par_alpha_T, x(2), global_par_beta_T, global_par_gama_prime_L, x(1));

% Reaction: id = Secretion_of_interleukin_2, name = Secretion of interleukin 2
	reaction_Secretion_of_interleukin_2=compartment_compartment*Function_for_secretion_of_interleukin_2(global_par_alpha_I2, x(2), global_par_K_T);

% Reaction: id = Removal_of_interleukin_2_from_site_of_tumor, name = Removal of interleukin 2 from site of tumor
	reaction_Removal_of_interleukin_2_from_site_of_tumor=compartment_compartment*Function_for_removal_of_interleukin2_from_site_of_tumor(global_par_alpha_bar_L, x(1), x(3), global_par_gama_T, x(2));

	xdot=zeros(3,1);
	
% Species:   id = L, name = L, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_and_transfer_of_cytotoxic_T_lymphocyte_at_the_site_of_tumor) + (-1.0 * reaction_Deactivation_and_removal_of_cytotoxic_T_lymphocyte_from_the_site_of_action));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_Formation_and_removal_of_tumor));
	
% Species:   id = I2, name = I2, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Secretion_of_interleukin_2) + (-1.0 * reaction_Removal_of_interleukin_2_from_site_of_tumor));
end

function z=Function_for_activation_and_transfer_of_cytotoxic_T_lymphocyte_at_the_site_of_tumor(Vl,alpha_L,L,I2), z=(Vl+alpha_L*L*I2);end

function z=Function_for_secretion_of_interleukin_2(alpha_I2,T,K_T), z=(alpha_I2*T/(T+K_T));end

function z=Function_for_removal_of_interleukin2_from_site_of_tumor(alpha_bar_L,L,I2,gama_T,T), z=(alpha_bar_L*L*I2+gama_T*T*I2);end

function z=Function_for_Deactivation_and_removal_of_cytotoxic_T_lymphocyte_from_the_site_of_action(beta_L,L), z=(beta_L*L);end

function z=Function_for_formation_and_removal_of_tumor(alpha_T,T,beta_T,gama_prime_L,L), z=(alpha_T*T*log(beta_T*T/alpha_T)+gama_prime_L*L*T);end

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


