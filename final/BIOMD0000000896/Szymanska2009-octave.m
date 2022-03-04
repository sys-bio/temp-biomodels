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
% Model name = Szymanska2009 - Mathematical modeling of heat shock protein synthesis in response to temperature change
%
% isDescribedBy http://identifiers.org/pubmed/19327370
% is http://identifiers.org/biomodels.db/MODEL1912160005
% is http://identifiers.org/biomodels.db/BIOMD0000000896
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 2.73546;
	x0(2) = 0.332019;
	x0(3) = 3.09E-17;
	x0(4) = 76.4593;
	x0(5) = 1.74782E-14;
	x0(6) = 0.0535203;
	x0(7) = 18.984;
	x0(8) = 1.01603;
	x0(9) = 1.01603;


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
% Parameter:   id =  k_1, name = k_1
	global_par_k_1=0.42;
% Parameter:   id =  l_1, name = l_1
	global_par_l_1=0.005;
% Parameter:   id =  k_2, name = k_2
	global_par_k_2=0.42;
% Parameter:   id =  l_2, name = l_2
	global_par_l_2=0.005;
% Parameter:   id =  k_3, name = k_3
	global_par_k_3=0.023;
% Parameter:   id =  l_3, name = l_3
	global_par_l_3=0.00575;
% Parameter:   id =  k_4, name = k_4
	global_par_k_4=0.035;
% Parameter:   id =  k_6, name = k_6
	global_par_k_6=0.023;
% Parameter:   id =  l_6, name = l_6
	global_par_l_6=3.6E-4;
% Parameter:   id =  k_10, name = k_10
	global_par_k_10=0.014;
% Parameter:   id =  l_10, name = l_10
	global_par_l_10=0.013;
% Parameter:   id =  k_8, name = k_8
	global_par_k_8=0.035;
% Parameter:   id =  k_7, name = k_7
	global_par_k_7=0.035;
% Parameter:   id =  l_7, name = l_7
	global_par_l_7=0.035;
% Parameter:   id =  Temperature, name = Temperature
% Parameter:   id =  V_den, name = V_den
% Parameter:   id =  F_T, name = F_T
% Parameter:   id =  F_T_Scale, name = F_T_Scale
	global_par_F_T_Scale=5.5;
% assignmentRule: variable = Temperature
	global_par_Temperature=piecewise(37, time <= 10, 42);
% assignmentRule: variable = V_den
	global_par_V_den=(1-0.4/exp(global_par_Temperature-37))*0.03*1.4^(global_par_Temperature-37);
% assignmentRule: variable = F_T
	global_par_F_T=global_par_V_den*global_par_F_T_Scale;

% Reaction: id = Hsp70_Substrate_Association, name = Hsp70_Substrate_Association
	reaction_Hsp70_Substrate_Association=compartment_compartment*global_par_k_1*x(1)*x(2);

% Reaction: id = Hsp70_Substrate_Dissociation, name = Hsp70_Substrate_Dissociation
	reaction_Hsp70_Substrate_Dissociation=compartment_compartment*global_par_l_1*x(4);

% Reaction: id = Hsp70_S_Association, name = Hsp70_S_Association
	reaction_Hsp70_S_Association=compartment_compartment*global_par_k_2*x(1)*x(3);

% Reaction: id = Hsp70_S_Dissociation, name = Hsp70_S_Dissociation
	reaction_Hsp70_S_Dissociation=compartment_compartment*global_par_l_2*x(5);

% Reaction: id = Trimer_Formation, name = Trimer_Formation
	reaction_Trimer_Formation=compartment_compartment*Function_for_Trimer_Formation(global_par_k_3, x(2));

% Reaction: id = Trimer_Dissociation, name = Trimer_Dissociation
	reaction_Trimer_Dissociation=compartment_compartment*global_par_l_3*x(6)*x(1);

% Reaction: id = Hsp70_Synthesis, name = Hsp70_Synthesis
	reaction_Hsp70_Synthesis=compartment_compartment*global_par_k_4*x(9);

% Reaction: id = Hsp70_S_Substrate_Refolding, name = Hsp70_S_Substrate_Refolding
	reaction_Hsp70_S_Substrate_Refolding=compartment_compartment*global_par_k_10*x(5);

% Reaction: id = Hsp70_Degradation, name = Hsp70_Degradation
	reaction_Hsp70_Degradation=compartment_compartment*global_par_l_10*x(1);

% Reaction: id = Hsp70_S_Formation, name = Hsp70_S_Formation
	reaction_Hsp70_S_Formation=compartment_compartment*global_par_k_6*x(3)*x(4);

% Reaction: id = Hsp70_S_Substrate_Dissociation, name = Hsp70_S_Substrate_Dissociation
	reaction_Hsp70_S_Substrate_Dissociation=compartment_compartment*global_par_l_6*x(5)*x(2);

% Reaction: id = HSF_HSE_Association, name = HSF_HSE_Association
	reaction_HSF_HSE_Association=compartment_compartment*global_par_k_7*x(6)*x(7);

% Reaction: id = HSF_HSE_Dissociation, name = HSF_HSE_Dissociation
	reaction_HSF_HSE_Dissociation=compartment_compartment*global_par_l_7*x(8);

% Reaction: id = mRNA_Transcription, name = mRNA_Transcription
	reaction_mRNA_Transcription=compartment_compartment*Function_for_mRNA_Transcription(global_par_k_8, x(8));

	xdot=zeros(9,1);
	
% Species:   id = Hsp70, name = Hsp70, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_Hsp70_Substrate_Association) + ( 1.0 * reaction_Hsp70_Substrate_Dissociation) + (-1.0 * reaction_Hsp70_S_Association) + ( 1.0 * reaction_Hsp70_S_Dissociation) + (-1.0 * reaction_Trimer_Dissociation) + ( 1.0 * reaction_Hsp70_Synthesis) + ( 1.0 * reaction_Hsp70_S_Substrate_Refolding) + (-1.0 * reaction_Hsp70_Degradation));
	
% Species:   id = HSF, name = HSF, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_Hsp70_Substrate_Association) + ( 1.0 * reaction_Hsp70_Substrate_Dissociation) + (-3.0 * reaction_Trimer_Formation) + ( 2.0 * reaction_Trimer_Dissociation) + ( 1.0 * reaction_Hsp70_S_Formation) + (-1.0 * reaction_Hsp70_S_Substrate_Dissociation));
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_Hsp70_S_Association) + ( 1.0 * reaction_Hsp70_S_Dissociation) + (-1.0 * reaction_Hsp70_S_Formation) + ( 1.0 * reaction_Hsp70_S_Substrate_Dissociation) + ( 1.0 * reaction_Protein_Denaturation));
	
% Species:   id = Hsp70_HSF, name = Hsp70_HSF, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Hsp70_Substrate_Association) + (-1.0 * reaction_Hsp70_Substrate_Dissociation) + ( 1.0 * reaction_Trimer_Dissociation) + (-1.0 * reaction_Hsp70_S_Formation) + ( 1.0 * reaction_Hsp70_S_Substrate_Dissociation));
	
% Species:   id = Hsp70_S, name = Hsp70_S, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_Hsp70_S_Association) + (-1.0 * reaction_Hsp70_S_Dissociation) + (-1.0 * reaction_Hsp70_S_Substrate_Refolding) + ( 1.0 * reaction_Hsp70_S_Formation) + (-1.0 * reaction_Hsp70_S_Substrate_Dissociation));
	
% Species:   id = HSF_3, name = HSF_3, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_Trimer_Formation) + (-1.0 * reaction_Trimer_Dissociation) + (-1.0 * reaction_HSF_HSE_Association) + ( 1.0 * reaction_HSF_HSE_Dissociation));
	
% Species:   id = HSE, name = HSE, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_HSF_HSE_Association) + ( 1.0 * reaction_HSF_HSE_Dissociation));
	
% Species:   id = HSF_3_HSE, name = HSF_3_HSE, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_HSF_HSE_Association) + (-1.0 * reaction_HSF_HSE_Dissociation));
	
% Species:   id = mRNA, name = mRNA, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_Hsp70_Synthesis) + ( 1.0 * reaction_mRNA_Transcription));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Trimer_Formation(k_3,HSF), z=(k_3*HSF^3);end

function z=Function_for_mRNA_Transcription(k_8,HSF_3_HSE), z=(k_8*HSF_3_HSE);end

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


