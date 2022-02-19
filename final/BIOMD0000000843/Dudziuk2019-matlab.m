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
% Model name = Dudziuk2019 - Biologically sound formal model of Hsp70 heat induction
%
% isDescribedBy http://identifiers.org/pubmed/31181241
% isDerivedFrom http://identifiers.org/pubmed/19327370
% isDerivedFrom http://identifiers.org/pubmed/23985732
% is http://identifiers.org/biomodels.db/MODEL1807160001
% is http://identifiers.org/biomodels.db/BIOMD0000000843
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 52.06;
	x0(2) = 0.001363;
	x0(3) = 8.122E-8;
	x0(4) = 0.01429;
	x0(5) = 5.268E-4;
	x0(6) = 9.082E-6;
	x0(7) = 3.996E-6;
	x0(8) = 4.484E-9;
	x0(9) = 1297.0;
	x0(10) = 4.946E-4;


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
% Parameter:   id =  k1, name = k1
	global_par_k1=12.6;
% Parameter:   id =  I1, name = I1
	global_par_I1=0.003028;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.218;
% Parameter:   id =  I2, name = I2
	global_par_I2=1.162;
% Parameter:   id =  k3, name = k3
	global_par_k3=446500.0;
% Parameter:   id =  I3, name = I3
	global_par_I3=2.392;
% Parameter:   id =  k4, name = k4
	global_par_k4=18.85;
% Parameter:   id =  k5, name = k5
	global_par_k5=8.709E-4;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.08899;
% Parameter:   id =  k7, name = k7
	global_par_k7=5892.0;
% Parameter:   id =  I_7_T, name = I_7_T
% Parameter:   id =  I_7_37, name = I_7_37
	global_par_I_7_37=47.68;
% Parameter:   id =  I_7_41, name = I_7_41
	global_par_I_7_41=1.233;
% Parameter:   id =  I_7_42, name = I_7_42
	global_par_I_7_42=0.6628;
% Parameter:   id =  I_7_43, name = I_7_43
	global_par_I_7_43=0.01639;
% Parameter:   id =  I_7_44, name = I_7_44
	global_par_I_7_44=50.01;
% Parameter:   id =  I_7_45, name = I_7_45
	global_par_I_7_45=84.27;
% Parameter:   id =  k_8_T, name = k_8_T
% Parameter:   id =  k_8_max, name = k_8_max
	global_par_k_8_max=96.07;
% Parameter:   id =  R_k_8, name = R_k_8
	global_par_R_k_8=15.93;
% Parameter:   id =  T_k_8, name = T_k_8
	global_par_T_k_8=42.89;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.001888;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.09813;
% Parameter:   id =  k_11_T, name = k_11_T
% Parameter:   id =  T_0, name = T_0
	global_par_T_0=35.81;
% Parameter:   id =  T_05, name = T_05
	global_par_T_05=47.13;
% Parameter:   id =  n_V, name = n_V
	global_par_n_V=6.522;
% Parameter:   id =  P_tot, name = P_tot
	global_par_P_tot=1297.0;
% Parameter:   id =  HSF_tot, name = HSF_tot
	global_par_HSF_tot=0.01568;
% Parameter:   id =  HSE_tot, name = HSE_tot
	global_par_HSE_tot=4.0E-6;
% Parameter:   id =  V_den_T, name = V_den_T
% Parameter:   id =  T, name = T
	global_par_T=42.0;
% Parameter:   id =  HSF_3_tot, name = HSF_3_tot
% Parameter:   id =  ModelValue_13, name = Initial for I_7_42
	global_par_ModelValue_13=0.6628;
% Parameter:   id =  ModelValue_20, name = Initial for R_k_8
	global_par_ModelValue_20=15.93;
% Parameter:   id =  ModelValue_21, name = Initial for T_k_8
	global_par_ModelValue_21=42.89;
% Parameter:   id =  ModelValue_23, name = Initial for k10
	global_par_ModelValue_23=0.09813;
% Parameter:   id =  ModelValue_19, name = Initial for k_8_max
	global_par_ModelValue_19=96.07;
% Parameter:   id =  ModelValue_27, name = Initial for n_V
	global_par_ModelValue_27=6.522;
% assignmentRule: variable = I_7_T
	global_par_I_7_T=global_par_ModelValue_13;
% assignmentRule: variable = k_8_T
	global_par_k_8_T=global_par_ModelValue_19*(1-1/(1+exp((-global_par_ModelValue_20)*(global_par_T-global_par_ModelValue_21))));
% assignmentRule: variable = V_den_T
	global_par_V_den_T=1-(1+((global_par_T-global_par_T_0)/(global_par_T_05-global_par_T_0))^global_par_ModelValue_27)^(-1);
% assignmentRule: variable = k_11_T
	global_par_k_11_T=global_par_ModelValue_23*global_par_V_den_T/(1-global_par_V_den_T);
% assignmentRule: variable = HSF_3_tot
	global_par_HSF_3_tot=x(6)+x(8);

% Reaction: id = HSF_Inactivation, name = HSF_Inactivation
	reaction_HSF_Inactivation=compartment_compartment*global_par_I3*x(1)*x(6);

% Reaction: id = HSP_S_Association, name = HSP_S_Association
	reaction_HSP_S_Association=compartment_compartment*global_par_k1*x(1)*x(3);

% Reaction: id = HSP_S_Dissociation, name = HSP_S_Dissociation
	reaction_HSP_S_Dissociation=compartment_compartment*global_par_I1*x(5);

% Reaction: id = HSP_HSF_Association, name = HSP_HSF_Association
	reaction_HSP_HSF_Association=compartment_compartment*global_par_k2*x(2)*x(1);

% Reaction: id = HSP_HSF_Dissociation, name = HSP_HSF_Dissociation
	reaction_HSP_HSF_Dissociation=compartment_compartment*global_par_I2*x(4);

% Reaction: id = HSP_Degradation, name = HSP_Degradation
	reaction_HSP_Degradation=compartment_compartment*global_par_k9*x(1);

% Reaction: id = HSP_S_Protein_Refolding, name = HSP_S_Protein_Refolding
	reaction_HSP_S_Protein_Refolding=compartment_compartment*global_par_k10*x(5);

% Reaction: id = HSP_Translation, name = HSP_Translation
	reaction_HSP_Translation=compartment_compartment*Function_for_HSP_Translation(global_par_k4, x(10));

% Reaction: id = HSF_Activation, name = HSF_Activation
	reaction_HSF_Activation=compartment_compartment*Function_for_HSF_Activation(global_par_k3, x(2));

% Reaction: id = P_Proteins_Denaturation, name = P_Proteins_Denaturation
	reaction_P_Proteins_Denaturation=compartment_compartment*global_par_k_11_T*x(9);

% Reaction: id = HSE_HSF_3_Association, name = HSE_HSF_3_Association
	reaction_HSE_HSF_3_Association=compartment_compartment*global_par_k7*x(7)*x(6);

% Reaction: id = HSE_HSF_3_Dissociation, name = HSE_HSF_3_Dissociation
	reaction_HSE_HSF_3_Dissociation=compartment_compartment*global_par_I_7_T*x(8);

% Reaction: id = mRNA_Transcription, name = mRNA_Transcription
	reaction_mRNA_Transcription=compartment_compartment*Function_for_mRNA_Transcription(global_par_k_8_T, x(8));

% Reaction: id = mRNA_Degradation, name = mRNA_Degradation
	reaction_mRNA_Degradation=compartment_compartment*global_par_k5*x(10);

	xdot=zeros(10,1);
	
% Species:   id = HSP, name = HSP, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_HSF_Inactivation) + (-1.0 * reaction_HSP_S_Association) + ( 1.0 * reaction_HSP_S_Dissociation) + (-1.0 * reaction_HSP_HSF_Association) + ( 1.0 * reaction_HSP_HSF_Dissociation) + (-1.0 * reaction_HSP_Degradation) + ( 1.0 * reaction_HSP_S_Protein_Refolding) + ( 1.0 * reaction_HSP_Translation) + ( 1.0 * reaction_HSP_Production_Constitutive));
	
% Species:   id = HSF, name = HSF, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 2.0 * reaction_HSF_Inactivation) + (-1.0 * reaction_HSP_HSF_Association) + ( 1.0 * reaction_HSP_HSF_Dissociation) + (-3.0 * reaction_HSF_Activation));
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_HSP_S_Association) + ( 1.0 * reaction_HSP_S_Dissociation) + ( 1.0 * reaction_P_Proteins_Denaturation));
	
% Species:   id = HSP_HSF, name = HSP_HSF, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_HSF_Inactivation) + ( 1.0 * reaction_HSP_HSF_Association) + (-1.0 * reaction_HSP_HSF_Dissociation));
	
% Species:   id = HSP_S, name = HSP_S, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_HSP_S_Association) + (-1.0 * reaction_HSP_S_Dissociation) + (-1.0 * reaction_HSP_S_Protein_Refolding));
	
% Species:   id = HSF_3, name = HSF_3, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_HSF_Inactivation) + ( 1.0 * reaction_HSF_Activation) + (-1.0 * reaction_HSE_HSF_3_Association) + ( 1.0 * reaction_HSE_HSF_3_Dissociation));
	
% Species:   id = HSE, name = HSE, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_HSE_HSF_3_Association) + ( 1.0 * reaction_HSE_HSF_3_Dissociation));
	
% Species:   id = HSE_HSF_3, name = HSE_HSF_3, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_HSE_HSF_3_Association) + (-1.0 * reaction_HSE_HSF_3_Dissociation));
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_HSP_S_Protein_Refolding) + (-1.0 * reaction_P_Proteins_Denaturation));
	
% Species:   id = mRNA, name = mRNA, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_mRNA_Transcription) + (-1.0 * reaction_mRNA_Degradation));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_HSP_Translation(k4,mRNA), z=(k4*mRNA);end

function z=Function_for_mRNA_Transcription(k_8_T,HSE_HSF_3), z=(k_8_T*HSE_HSF_3);end

function z=Function_for_HSF_Activation(k3,HSF), z=(k3*HSF^3);end

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


