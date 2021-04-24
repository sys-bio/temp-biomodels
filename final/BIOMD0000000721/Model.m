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
% Model name = Graham2013 - Role of osteocytes in targeted bone remodeling
%
% is http://identifiers.org/biomodels.db/MODEL1811150001
% is http://identifiers.org/biomodels.db/BIOMD0000000721
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 180.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 100.0;


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

% Compartment: id = Bone, name = Bone, constant
	compartment_Bone=1.0;
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=0.5;
% Parameter:   id =  alpha_2, name = alpha_2
	global_par_alpha_2=0.1;
% Parameter:   id =  alpha_3, name = alpha_3
	global_par_alpha_3=0.1;
% Parameter:   id =  beta_1, name = beta_1
	global_par_beta_1=0.1;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.1;
% Parameter:   id =  beta_2, name = beta_2
	global_par_beta_2=0.1;
% Parameter:   id =  alpha_4, name = alpha_4
	global_par_alpha_4=0.1;
% Parameter:   id =  K_S, name = K_S
	global_par_K_S=200.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.7;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.015445;
% Parameter:   id =  g_31, name = g_31
	global_par_g_31=1.0;
% Parameter:   id =  g_21, name = g_21
	global_par_g_21=2.0;
% Parameter:   id =  g_22, name = g_22
	global_par_g_22=1.0;
% Parameter:   id =  g_32, name = g_32
	global_par_g_32=1.0;
% Parameter:   id =  g_41, name = g_41
	global_par_g_41=1.0;
% Parameter:   id =  g_42, name = g_42
	global_par_g_42=1.0;
% Parameter:   id =  g_43, name = g_43
	global_par_g_43=-1.0;
% Parameter:   id =  g_44, name = g_44
	global_par_g_44=1.0;
% Parameter:   id =  f_12, name = f_12
	global_par_f_12=1.0;
% Parameter:   id =  f_14, name = f_14
	global_par_f_14=1.0;
% Parameter:   id =  f_23, name = f_23
	global_par_f_23=1.0;
% Parameter:   id =  f_34, name = f_34
	global_par_f_34=1.0;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=1.0;
% Parameter:   id =  beta_3, name = beta_3
	global_par_beta_3=0.1;
% Parameter:   id =  rho, name = rho
	global_par_rho=20.0;

% Reaction: id = Differentiation_of_Osteoblast_to_Osteocytes, name = Differentiation of Osteoblast to Osteocytes
	reaction_Differentiation_of_Osteoblast_to_Osteocytes=compartment_Bone*Function_for_reaction_1(global_par_alpha_1, x(3), global_par_g_31, x(1), global_par_K_S);

% Reaction: id = Differentiation_of_MSC_cells_to_Pre_Osteoblast_cells, name = Differentiation of MSC cells to Pre-Osteoblast cells
	reaction_Differentiation_of_MSC_cells_to_Pre_Osteoblast_cells=compartment_Bone*Function_for_reaction_2(global_par_alpha_2, x(1), global_par_g_21, global_par_K_S, global_par_g_22);

% Reaction: id = Proliferation_of_pre_osteoblasts, name = Proliferation of pre-osteoblasts
	reaction_Proliferation_of_pre_osteoblasts=compartment_Bone*Function_for_reaction_3(global_par_alpha_3, x(2), global_par_g_32, x(1), global_par_K_S);

% Reaction: id = Differentiation_of_Pre_Osteoblast_to_mature_osteoblast, name = Differentiation of Pre-Osteoblast to mature osteoblast
	reaction_Differentiation_of_Pre_Osteoblast_to_mature_osteoblast=compartment_Bone*Function_for_reaction_4(global_par_beta_1, x(2), global_par_f_12, x(4), global_par_f_14);

% Reaction: id = Apoptosis_of_pre_osteoblast, name = Apoptosis of pre-osteoblast
	reaction_Apoptosis_of_pre_osteoblast=compartment_Bone*global_par_delta*x(2);

% Reaction: id = Apoptosis_of_osteoblasts, name = Apoptosis of osteoblasts
	reaction_Apoptosis_of_osteoblasts=compartment_Bone*Function_for_reaction_6_and_8(global_par_beta_2, x(3), global_par_f_23);

% Reaction: id = Differentiation_of_pre_osteoclast_to_osteoclasts, name = Differentiation of pre-osteoclast to osteoclasts
	reaction_Differentiation_of_pre_osteoclast_to_osteoclasts=compartment_Bone*Function_for_reaction_7(global_par_alpha_4, x(1), global_par_g_41, x(2), global_par_g_42, global_par_epsilon, x(3), global_par_g_43, global_par_K_S, global_par_g_44);

% Reaction: id = Apoptosis_of_osteoclasts, name = Apoptosis of osteoclasts
	reaction_Apoptosis_of_osteoclasts=compartment_Bone*Function_for_reaction_6_and_8(global_par_beta_3, x(4), global_par_f_34);

% Reaction: id = Resorption_of_bone, name = Resorption of bone
	reaction_Resorption_of_bone=compartment_Bone*Function_for_reaction_9(global_par_k1, x(4));

% Reaction: id = Formation_of_bone, name = Formation of bone
	reaction_Formation_of_bone=compartment_Bone*Function_for_reaction_10(global_par_k2, x(3));

	xdot=zeros(5,1);
	
% Species:   id = Osteocytes__S, name = Osteocytes (S), affected by kineticLaw
	xdot(1) = (1/(compartment_Bone))*(( 1.0 * reaction_Differentiation_of_Osteoblast_to_Osteocytes));
	
% Species:   id = Pre_Osteoblasts__P, name = Pre-Osteoblasts (P), affected by kineticLaw
	xdot(2) = (1/(compartment_Bone))*(( 1.0 * reaction_Differentiation_of_MSC_cells_to_Pre_Osteoblast_cells) + ( 1.0 * reaction_Proliferation_of_pre_osteoblasts) + (-1.0 * reaction_Differentiation_of_Pre_Osteoblast_to_mature_osteoblast) + (-1.0 * reaction_Apoptosis_of_pre_osteoblast));
	
% Species:   id = Osteoblasts__B, name = Osteoblasts (B), affected by kineticLaw
	xdot(3) = (1/(compartment_Bone))*((-1.0 * reaction_Differentiation_of_Osteoblast_to_Osteocytes) + ( 1.0 * reaction_Differentiation_of_Pre_Osteoblast_to_mature_osteoblast) + (-1.0 * reaction_Apoptosis_of_osteoblasts));
	
% Species:   id = Osteoclasts__C, name = Osteoclasts (C), affected by kineticLaw
	xdot(4) = (1/(compartment_Bone))*(( 1.0 * reaction_Differentiation_of_pre_osteoclast_to_osteoclasts) + (-1.0 * reaction_Apoptosis_of_osteoclasts));
	
% Species:   id = Bone_volume__z, name = Bone volume (z), affected by kineticLaw
	xdot(5) = (1/(compartment_Bone))*((-1.0 * reaction_Resorption_of_bone) + ( 1.0 * reaction_Formation_of_bone));
end

function z=Function_for_reaction_1(alpha,sub,g,S,K_S), z=(alpha*sub^g*(1-S/K_S));end

function z=Function_for_reaction_2(alpha,S,g,K_S,g2), z=(alpha*S^g*(1-S/K_S)*g2);end

function z=Function_for_reaction_3(alpha,pro,g,S,K_S), z=(alpha*pro^g*(1-S/K_S));end

function z=Function_for_reaction_4(beta1,P,f12,C,f14), z=(beta1*P^f12*C^f14);end

function z=Function_for_reaction_6_and_8(beta,sub,f), z=(beta*sub^f);end

function z=Function_for_reaction_7(alpha,S,g41,P,g42,epsilon,B,g43,K_S,g44), z=(alpha*S^g41*P^g42*(epsilon+B)^g43*(1-S/K_S)^g44);end

function z=Function_for_reaction_9(k1,C), z=(k1*C);end

function z=Function_for_reaction_10(k2,B), z=(k2*B);end

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


