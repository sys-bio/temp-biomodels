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
% Model name = Schropp2019 - Target-Mediated Drug Disposition Model for Bispecific Antibodies
%
% isDescribedBy http://identifiers.org/pubmed/30480383
% is http://identifiers.org/biomodels.db/MODEL1907240003
% is http://identifiers.org/biomodels.db/BIOMD0000000788
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 50.0;
	x0(2) = 10.0;
	x0(3) = 100.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;


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

% Compartment: id = Central, name = Central, constant
	compartment_Central=1.0;
% Compartment: id = Peripheral, name = Peripheral, constant
	compartment_Peripheral=1.0;
% Parameter:   id =  V, name = V
	global_par_V=3.0;
% Parameter:   id =  k_a, name = k_a
	global_par_k_a=0.2;
% Parameter:   id =  F, name = F
	global_par_F=0.75;
% Parameter:   id =  k_el, name = k_el
	global_par_k_el=0.1;
% Parameter:   id =  k_12, name = k_12
	global_par_k_12=0.1;
% Parameter:   id =  k_21, name = k_21
	global_par_k_21=0.03;
% Parameter:   id =  k_on_1, name = k_on_1
	global_par_k_on_1=10.0;
% Parameter:   id =  k_off_1, name = k_off_1
	global_par_k_off_1=0.01;
% Parameter:   id =  k_on_2, name = k_on_2
	global_par_k_on_2=1.0;
% Parameter:   id =  k_off_2, name = k_off_2
	global_par_k_off_2=0.01;
% Parameter:   id =  k_syn_A, name = k_syn_A
	global_par_k_syn_A=1.0;
% Parameter:   id =  k_deg_A, name = k_deg_A
	global_par_k_deg_A=0.1;
% Parameter:   id =  k_syn_B, name = k_syn_B
	global_par_k_syn_B=10.0;
% Parameter:   id =  k_deg_B, name = k_deg_B
	global_par_k_deg_B=0.1;
% Parameter:   id =  k_int_A, name = k_int_A
	global_par_k_int_A=0.05;
% Parameter:   id =  k_int_B, name = k_int_B
	global_par_k_int_B=0.05;
% Parameter:   id =  k_int_AB, name = k_int_AB
	global_par_k_int_AB=0.1;
% Parameter:   id =  k_off_3, name = k_off_3
	global_par_k_off_3=0.01;
% Parameter:   id =  k_off_4, name = k_off_4
	global_par_k_off_4=0.01;
% Parameter:   id =  k_on_3, name = k_on_3
	global_par_k_on_3=1.0;
% Parameter:   id =  k_on_4, name = k_on_4
	global_par_k_on_4=10.0;

% Reaction: id = Binding_C_R_A, name = Binding_C_R_A
	reaction_Binding_C_R_A=compartment_Central*global_par_k_on_1*x(1)*x(2);

% Reaction: id = Binding_C_R_B, name = Binding_C_R_B
	reaction_Binding_C_R_B=compartment_Central*global_par_k_on_2*x(1)*x(3);

% Reaction: id = Binding_RC_A_R_B, name = Binding_RC_A_R_B
	reaction_Binding_RC_A_R_B=compartment_Central*global_par_k_on_3*x(4)*x(3);

% Reaction: id = Binding_RC_B_R_A, name = Binding_RC_B_R_A
	reaction_Binding_RC_B_R_A=compartment_Central*global_par_k_on_4*x(5)*x(2);

% Reaction: id = Disassociation_RC_A, name = Disassociation_RC_A
	reaction_Disassociation_RC_A=compartment_Central*Function_for_Disassociation_RC_A_1(x(4), global_par_k_off_1);

% Reaction: id = Disassociation_RC_B, name = Disassociation_RC_B
	reaction_Disassociation_RC_B=compartment_Central*Function_for_Disassociation_RC_A_1_1(x(5), global_par_k_off_2);

% Reaction: id = Disassociation_RC_AB_3, name = Disassociation_RC_AB_3
	reaction_Disassociation_RC_AB_3=compartment_Central*Function_for_Disassociation_RC_AB_3_1(x(6), global_par_k_off_3);

% Reaction: id = Disassociation_RC_AB_4, name = Disassociation_RC_AB_4
	reaction_Disassociation_RC_AB_4=compartment_Central*Function_for_Disassociation_RC_AB_4_1(x(6), global_par_k_off_4);

% Reaction: id = Elimination_C, name = Elimination_C
	reaction_Elimination_C=compartment_Central*global_par_k_el*x(1);

% Reaction: id = Distribution_C_Central, name = Distribution_C_Central
	reaction_Distribution_C_Central=compartment_Central*global_par_k_12*x(1);

% Reaction: id = Distribution_C_Peripheral, name = Distribution_C_Peripheral
	reaction_Distribution_C_Peripheral=Function_for_C_Peripheral_Distribution_1(x(7), global_par_V, global_par_k_21);

% Reaction: id = Distribution_AP_Central, name = Distribution_AP_Central
	reaction_Distribution_AP_Central=Function_for_Distribution_AP_Central_1(x(1), global_par_V, global_par_k_12);

% Reaction: id = Distribution_AP_Peripheral, name = Distribution_AP_Peripheral
	reaction_Distribution_AP_Peripheral=compartment_Peripheral*global_par_k_21*x(7);

% Reaction: id = Association_AD, name = Association_AD
	reaction_Association_AD=compartment_Peripheral*global_par_k_a*x(8);

% Reaction: id = Association_AD_C, name = Association_AD_C
	reaction_Association_AD_C=Function_for_Distribution_AP_Central_2(x(8), global_par_V, global_par_k_a);

% Reaction: id = Degradation_R_A, name = Degradation_R_A
	reaction_Degradation_R_A=compartment_Central*global_par_k_deg_A*x(2);

% Reaction: id = Degradation_R_B, name = Degradation_R_B
	reaction_Degradation_R_B=compartment_Central*global_par_k_deg_B*x(3);

% Reaction: id = Internalisation_RC_A, name = Internalisation_RC_A
	reaction_Internalisation_RC_A=compartment_Central*Function_for_Internalisation_RC_A_1(x(4), global_par_k_int_A, global_par_k_off_1);

% Reaction: id = Internalisation_RC_B, name = Internalisation_RC_B
	reaction_Internalisation_RC_B=compartment_Central*Function_for_Internalisation_RC_B_1(x(5), global_par_k_int_B, global_par_k_off_2);

% Reaction: id = Internalisation_RC_AB, name = Internalisation_RC_AB
	reaction_Internalisation_RC_AB=compartment_Central*Function_for_Internalisation_RC_AB_1(x(6), global_par_k_int_AB, global_par_k_off_3, global_par_k_off_4);

	xdot=zeros(8,1);
	
% Species:   id = C_free, name = C_free, affected by kineticLaw
	xdot(1) = (1/(compartment_Central))*((-1.0 * reaction_Binding_C_R_A) + (-1.0 * reaction_Binding_C_R_B) + ( 1.0 * reaction_Disassociation_RC_A) + ( 1.0 * reaction_Disassociation_RC_B) + (-1.0 * reaction_Elimination_C) + (-1.0 * reaction_Distribution_C_Central) + ( 1.0 * reaction_Distribution_C_Peripheral) + ( 1.0 * reaction_Association_AD_C));
	
% Species:   id = R_A, name = R_A, affected by kineticLaw
	xdot(2) = (1/(compartment_Central))*((-1.0 * reaction_Binding_C_R_A) + (-1.0 * reaction_Binding_RC_B_R_A) + ( 1.0 * reaction_Disassociation_RC_A) + ( 1.0 * reaction_Disassociation_RC_AB_4) + ( 1.0 * reaction_Synthesis_R_A) + (-1.0 * reaction_Degradation_R_A));
	
% Species:   id = R_B, name = R_B, affected by kineticLaw
	xdot(3) = (1/(compartment_Central))*((-1.0 * reaction_Binding_C_R_B) + (-1.0 * reaction_Binding_RC_A_R_B) + ( 1.0 * reaction_Disassociation_RC_B) + ( 1.0 * reaction_Disassociation_RC_AB_3) + ( 1.0 * reaction_Synthesis_R_B) + (-1.0 * reaction_Degradation_R_B));
	
% Species:   id = RC_A, name = RC_A, affected by kineticLaw
	xdot(4) = (1/(compartment_Central))*(( 1.0 * reaction_Binding_C_R_A) + (-1.0 * reaction_Binding_RC_A_R_B) + ( 1.0 * reaction_Disassociation_RC_AB_4) + (-1.0 * reaction_Internalisation_RC_A));
	
% Species:   id = RC_B, name = RC_B, affected by kineticLaw
	xdot(5) = (1/(compartment_Central))*(( 1.0 * reaction_Binding_C_R_B) + (-1.0 * reaction_Binding_RC_B_R_A) + ( 1.0 * reaction_Disassociation_RC_AB_3) + (-1.0 * reaction_Internalisation_RC_B));
	
% Species:   id = RC_AB, name = RC_AB, affected by kineticLaw
	xdot(6) = (1/(compartment_Central))*(( 1.0 * reaction_Binding_RC_A_R_B) + ( 1.0 * reaction_Binding_RC_B_R_A) + (-1.0 * reaction_Internalisation_RC_AB));
	
% Species:   id = AP, name = AP, affected by kineticLaw
	xdot(7) = (1/(compartment_Peripheral))*(( 1.0 * reaction_Distribution_AP_Central) + (-1.0 * reaction_Distribution_AP_Peripheral));
	
% Species:   id = AD, name = AD, affected by kineticLaw
	xdot(8) = (1/(compartment_Peripheral))*((-1.0 * reaction_Association_AD));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Disassociation_RC_AB_3_1(RC_AB,k_off_3), z=(k_off_3*RC_AB);end

function z=Function_for_C_Peripheral_Distribution_1(AP,V,k_21), z=(k_21*AP/V);end

function z=Function_for_Distribution_AP_Central_1(C_free,V,k_12), z=(k_12*C_free*V);end

function z=Function_for_Internalisation_RC_A_1(RC_A,k_int_A,k_off_1), z=((k_off_1+k_int_A)*RC_A);end

function z=Function_for_Disassociation_RC_AB_4_1(RC_AB,k_off_4), z=(k_off_4*RC_AB);end

function z=Function_for_Disassociation_RC_A_1_1(RC_B,k_off_2), z=(k_off_2*RC_B);end

function z=Function_for_Internalisation_RC_B_1(RC_B,k_int_B,k_off_2), z=((k_off_2+k_int_B)*RC_B);end

function z=Function_for_Internalisation_RC_AB_1(RC_AB,k_int_AB,k_off_3,k_off_4), z=((k_off_3+k_off_4+k_int_AB)*RC_AB);end

function z=Function_for_Distribution_AP_Central_2(AD,V,k_a), z=(k_a*AD*V);end

function z=Function_for_Disassociation_RC_A_1(RC_A,k_off_1), z=(k_off_1*RC_A);end

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


