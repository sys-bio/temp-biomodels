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
% Model name = Hernandez-Vargas2012 - Innate immune system dynamics to Influenza virus
%
% is http://identifiers.org/biomodels.db/MODEL1808280005
% is http://identifiers.org/biomodels.db/BIOMD0000000710
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 5.0E8;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.001;
	x0(6) = 0.0;
	x0(7) = 800000.0;


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

% Compartment: id = compartment, name = Lung, constant
	compartment_compartment=1.0;
% Parameter:   id =  k_I, name = k_I
	global_par_k_I=0.003;
% Parameter:   id =  k_R, name = k_R
	global_par_k_R=7.0;
% Parameter:   id =  k_E, name = k_E
	global_par_k_E=0.5;
% Parameter:   id =  q_K, name = q_K
	global_par_q_K=3.0E-6;
% Parameter:   id =  phi_K, name = phi_K
	global_par_phi_K=0.001;
% Parameter:   id =  a_I, name = a_I
	global_par_a_I=3.0E-6;
% Parameter:   id =  p_V, name = p_V
	global_par_p_V=0.01;
% Parameter:   id =  delta_H, name = delta_H
	global_par_delta_H=0.01;
% Parameter:   id =  delta_I, name = delta_I
	global_par_delta_I=0.01;
% Parameter:   id =  delta_R, name = delta_R
	global_par_delta_R=0.01;
% Parameter:   id =  delta_IFN, name = delta_IFN
	global_par_delta_IFN=4.0;
% Parameter:   id =  delta_K, name = delta_K
	global_par_delta_K=0.04;
% Parameter:   id =  delta_V, name = delta_V
	global_par_delta_V=5.2;
% Parameter:   id =  S_H, name = S_H
% Parameter:   id =  S_K, name = S_K
% Parameter:   id =  Metabolite_0_0, name = Initial for Healthy Epithelial cells (U_H)
	global_par_Metabolite_0_0=5.0E8;
% Parameter:   id =  Metabolite_6_0, name = Initial for Natural Killers (K)
	global_par_Metabolite_6_0=800000.0;
% assignmentRule: variable = S_H
	global_par_S_H=global_par_Metabolite_0_0*global_par_delta_H;
% assignmentRule: variable = S_K
	global_par_S_K=global_par_Metabolite_6_0*global_par_delta_K;

% Reaction: id = reaction_2, name = Partial infection of Healthy Epithelial cells
	reaction_reaction_2=compartment_compartment*Function_for_Reaction_2(global_par_k_I, x(1), x(5));

% Reaction: id = reaction_3, name = Healthy Epithelial cells becoming resistant
	reaction_reaction_3=compartment_compartment*Function_for_Reaction_3(global_par_k_R, x(1), x(6));

% Reaction: id = reaction_4, name = Death of Healthy Epithelial cells
	reaction_reaction_4=compartment_compartment*global_par_delta_H*x(1);

% Reaction: id = reaction_5, name = Infection of partially infected Epithelial cells
	reaction_reaction_5=compartment_compartment*global_par_k_E*x(2);

% Reaction: id = reaction_6, name = Death of partially infected Epithelial cells caused by Natural Killers
	reaction_reaction_6=compartment_compartment*Function_for_Reaction_6(global_par_q_K, x(2), x(7));

% Reaction: id = reaction_7, name = Death of Infected Epithelial cells
	reaction_reaction_7=compartment_compartment*global_par_delta_I*x(3);

% Reaction: id = reaction_8, name = Death of infected Epithelial cells caused by Natural Killers
	reaction_reaction_8=compartment_compartment*Function_for_Reaction_8(global_par_q_K, x(3), x(7));

% Reaction: id = reaction_9, name = Death of Resistant Epithelial cells
	reaction_reaction_9=compartment_compartment*global_par_delta_R*x(4);

% Reaction: id = reaction_10, name = Release of Virus from Infected Epithelial cells
	reaction_reaction_10=compartment_compartment*Function_for_Reaction_10(global_par_p_V, x(3));

% Reaction: id = reaction_11, name = Degradation of Virus
	reaction_reaction_11=compartment_compartment*global_par_delta_V*x(5);

% Reaction: id = reaction_12, name = Production of Interferons
	reaction_reaction_12=compartment_compartment*Function_for_Reaction_12(global_par_a_I, x(3));

% Reaction: id = reaction_13, name = Degradation of Interferons
	reaction_reaction_13=compartment_compartment*global_par_delta_IFN*x(6);

% Reaction: id = reaction_15, name = Recruitment of Natural Killers from the Blood to the lungs
	reaction_reaction_15=compartment_compartment*Function_for_Reaction_15(global_par_phi_K, x(3));

% Reaction: id = reaction_16, name = Death of Natural Killers
	reaction_reaction_16=compartment_compartment*global_par_delta_K*x(7);

	xdot=zeros(7,1);
	
% Species:   id = U_H, name = Healthy Epithelial cells (U_H), affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = U_E, name = Partially infected Epithelial cells (U_E), affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = U_I, name = Infected Epithelial cells (U_I), affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
	
% Species:   id = U_R, name = Resistant Epithelial cells (U_R), affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_9));
	
% Species:   id = V, name = Viral Load (V), affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11));
	
% Species:   id = IFN, name = Interferon (IFN), affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13));
	
% Species:   id = K, name = Natural Killers (K), affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Reaction_2(k_I,U_H,V), z=(k_I*U_H*V);end

function z=Function_for_Reaction_3(k_R,U_H,IFN), z=(k_R*U_H*IFN);end

function z=Function_for_Reaction_6(q_K,U_E,K), z=(q_K*U_E*K);end

function z=Function_for_Reaction_8(q_K,U_I,K), z=(q_K*U_I*K);end

function z=Function_for_Reaction_10(p_V,U_I), z=(p_V*U_I);end

function z=Function_for_Reaction_12(a_I,U_I), z=(a_I*U_I);end

function z=Function_for_Reaction_15(phi_K,U_I), z=(phi_K*U_I);end

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


