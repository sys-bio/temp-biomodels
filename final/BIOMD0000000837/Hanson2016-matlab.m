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
% Model name = Hanson2016 - Toxicity Management in CAR T cell therapy for B-ALL
%
% isDescribedBy http://identifiers.org/doi/10.1101/049908
% is http://identifiers.org/biomodels.db/MODEL1910250001
% is http://identifiers.org/biomodels.db/BIOMD0000000837
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 10.0;
	x0(2) = 10.0;
	x0(3) = 10.0;
	x0(4) = 10.0;
	x0(5) = 1600.0;
	x0(6) = 140.0;
	x0(7) = 300.0;
	x0(8) = 0.0;


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
% Parameter:   id =  n, name = n
	global_par_n=6.0;
% Parameter:   id =  r_1, name = r_1
	global_par_r_1=0.003;
% Parameter:   id =  r_2, name = r_2
	global_par_r_2=0.1;
% Parameter:   id =  r_3, name = r_3
	global_par_r_3=0.1;
% Parameter:   id =  r_4, name = r_4
	global_par_r_4=0.1;
% Parameter:   id =  d_1, name = d_1
	global_par_d_1=2.0E-4;
% Parameter:   id =  d_2, name = d_2
	global_par_d_2=1.5;
% Parameter:   id =  d_3, name = d_3
	global_par_d_3=0.004;
% Parameter:   id =  d_4, name = d_4
	global_par_d_4=0.004;
% Parameter:   id =  d_5, name = d_5
	global_par_d_5=2.0E-4;
% Parameter:   id =  p_1, name = p_1
	global_par_p_1=0.002;
% Parameter:   id =  p_2, name = p_2
	global_par_p_2=0.4;
% Parameter:   id =  a_1, name = a_1
	global_par_a_1=4.0E-7;
% Parameter:   id =  a_2, name = a_2
	global_par_a_2=2.0;
% Parameter:   id =  a_3, name = a_3
	global_par_a_3=8.0E-5;
% Parameter:   id =  b, name = b
	global_par_b=800.0;
% Parameter:   id =  l, name = l
	global_par_l=1600.0;
% Parameter:   id =  k, name = k
	global_par_k=4800.0;
% Parameter:   id =  Total_Lymphocytes, name = Total_Lymphocytes
% Parameter:   id =  Lymphocyte_Term, name = Lymphocyte_Term
% Parameter:   id =  p_0, name = p_0
	global_par_p_0=200.0;
% Parameter:   id =  ModelValue_16, name = Initial for l
	global_par_ModelValue_16=1600.0;
% assignmentRule: variable = Total_Lymphocytes
	global_par_Total_Lymphocytes=x(7)+x(2)+x(1)+x(4)+x(3)+x(5);
% assignmentRule: variable = Lymphocyte_Term
	global_par_Lymphocyte_Term=piecewise(1-global_par_Total_Lymphocytes/global_par_ModelValue_16, (1-global_par_Total_Lymphocytes/global_par_ModelValue_16) > 0, 0);

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_compartment*Function_for_Tumor_Growth(global_par_r_1, x(7), global_par_k);

% Reaction: id = Tumor_Killing_C_e, name = Tumor_Killing_C_e
	reaction_Tumor_Killing_C_e=compartment_compartment*Function_for_Tumor_Killing_C_e(global_par_d_1, x(7), x(2));

% Reaction: id = Inflammation_Stimulation_C_e, name = Inflammation_Stimulation_C_e
	reaction_Inflammation_Stimulation_C_e=compartment_compartment*Function_for_Immune_Stimulation_C_e(global_par_p_1, x(7), x(2), x(4));

% Reaction: id = Inflammation_Decay, name = Inflammation_Decay
	reaction_Inflammation_Decay=compartment_compartment*global_par_d_2*x(6);

% Reaction: id = Inflammation_Suppression_Drug, name = Inflammation_Suppression_Drug
	reaction_Inflammation_Suppression_Drug=compartment_compartment*Function_for_Inflammation_Suppression_Drug(x(8));

% Reaction: id = Cytotoxic_T_Cells_Effector_Formation, name = Cytotoxic_T_Cells_Effector_Formation
	reaction_Cytotoxic_T_Cells_Effector_Formation=compartment_compartment*Function_for_Cytotoxic_T_Cells_Effector_Formation(global_par_n, global_par_a_1, x(7), x(1), x(6), global_par_a_2, x(4), global_par_b);

% Reaction: id = Cytotoxic_T_Cells_Effector_Decay, name = Cytotoxic_T_Cells_Effector_Decay
	reaction_Cytotoxic_T_Cells_Effector_Decay=compartment_compartment*global_par_d_3*x(2);

% Reaction: id = Cytotoxic_T_Cells_Memory_Formation, name = Cytotoxic_T_Cells_Memory_Formation
	reaction_Cytotoxic_T_Cells_Memory_Formation=compartment_compartment*Function_for_Cytotoxic_T_Cells_Memory_Formation(global_par_r_2, x(1), global_par_Lymphocyte_Term);

% Reaction: id = Cytotoxic_T_Cells_Memory_Decay, name = Cytotoxic_T_Cells_Memory_Decay
	reaction_Cytotoxic_T_Cells_Memory_Decay=compartment_compartment*Function_for_Cytotoxic_T_Cells_Memory_Decay(global_par_a_1, x(7), x(1), global_par_a_2, x(4), x(6), global_par_b);

% Reaction: id = Helper_T_Cells_Effector_Formation, name = Helper_T_Cells_Effector_Formation
	reaction_Helper_T_Cells_Effector_Formation=compartment_compartment*Function_for_Helper_T_Cells_Effector_Formation(global_par_n, global_par_a_3, x(7), x(3), x(6), global_par_b);

% Reaction: id = Helper_T_Cells_Effector_Decay, name = Helper_T_Cells_Effector_Decay
	reaction_Helper_T_Cells_Effector_Decay=compartment_compartment*global_par_d_4*x(4);

% Reaction: id = Helper_T_Cells_Memory_Formation, name = Helper_T_Cells_Memory_Formation
	reaction_Helper_T_Cells_Memory_Formation=compartment_compartment*Function_for_Helper_T_Cells_Memory_Formation(global_par_r_3, x(3), global_par_Lymphocyte_Term);

% Reaction: id = Helper_T_Cells_Memory_Decay, name = Helper_T_Cells_Memory_Decay
	reaction_Helper_T_Cells_Memory_Decay=compartment_compartment*Function_for_Helper_T_Cells_Memory_Decay(global_par_a_3, x(7), x(3), x(6), global_par_b);

% Reaction: id = Lympocyte_Formation, name = Lympocyte_Formation
	reaction_Lympocyte_Formation=compartment_compartment*Function_for_Lympocyte_Formation(global_par_r_4, x(5), global_par_Lymphocyte_Term);

% Reaction: id = Lympocyte_Decay, name = Lympocyte_Decay
	reaction_Lympocyte_Decay=compartment_compartment*global_par_d_5*x(5);

	xdot=zeros(8,1);
	
% Species:   id = C_m, name = C_m, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Cytotoxic_T_Cells_Memory_Formation) + (-1.0 * reaction_Cytotoxic_T_Cells_Memory_Decay));
	
% Species:   id = C_e, name = C_e, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Cytotoxic_T_Cells_Effector_Formation) + (-1.0 * reaction_Cytotoxic_T_Cells_Effector_Decay));
	
% Species:   id = H_m, name = H_m, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Helper_T_Cells_Memory_Formation) + (-1.0 * reaction_Helper_T_Cells_Memory_Decay));
	
% Species:   id = H_e, name = H_e, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Helper_T_Cells_Effector_Formation) + (-1.0 * reaction_Helper_T_Cells_Effector_Decay));
	
% Species:   id = L, name = L, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_Lympocyte_Formation_Constant) + ( 1.0 * reaction_Lympocyte_Formation) + (-1.0 * reaction_Lympocyte_Decay));
	
% Species:   id = Inflam, name = Inflam, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_Inflammation_Stimulation_C_e) + (-1.0 * reaction_Inflammation_Decay) + (-1.0 * reaction_Inflammation_Suppression_Drug) + ( 1.0 * reaction_Inflammation_Input));
	
% Species:   id = B, name = B, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Tumor_Killing_C_e));
	
% Species:   id = D, name = D
% Warning species is not changed by either rules or reactions
	xdot(8) = ;
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Cytotoxic_T_Cells_Memory_Formation(r_2,C_m,LT), z=(r_2*C_m*LT);end

function z=Function_for_Inflammation_Suppression_Drug(D), z=(D);end

function z=Function_for_Tumor_Growth(r_1,B,k_1), z=(r_1*B*(1-B/k_1));end

function z=Function_for_Tumor_Killing_C_e(d_1,B,C_e), z=(d_1*B*C_e);end

function z=Function_for_Immune_Stimulation_C_e(p_1,B,C_e,H_e), z=(p_1*B*(C_e+H_e));end

function z=Function_for_Cytotoxic_T_Cells_Effector_Formation(n,a_1,B,C_m,I,a_2,H_e,b), z=(2^n*a_1*B*C_m*I^2/(I^2+b^2)*(1+a_2*H_e));end

function z=Function_for_Helper_T_Cells_Memory_Formation(r_3,H_m,LT), z=(r_3*H_m*LT);end

function z=Function_for_Lympocyte_Formation(r_4,L,LT), z=(r_4*L*LT);end

function z=Function_for_Cytotoxic_T_Cells_Memory_Decay(a_1,B,C_m,a_2,H_e,I,b), z=(a_1*B*C_m*(1+a_2*H_e)*I^2/(I^2+b^2));end

function z=Function_for_Helper_T_Cells_Memory_Decay(a_3,B,H_m,I,b), z=(a_3*B*H_m*I^2/(I^2+b^2));end

function z=Function_for_Helper_T_Cells_Effector_Formation(n,a_3,B,H_m,I,b), z=(2^n*a_3*B*H_m*I^2/(I^2+b^2));end

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


