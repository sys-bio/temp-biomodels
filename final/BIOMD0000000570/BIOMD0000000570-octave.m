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
% Model name = Aubert2002 - Coupling between Brain electrical activity, Metabolism and Hemodynamics
%
% is http://identifiers.org/biomodels.db/MODEL1503020000
% is http://identifiers.org/biomodels.db/BIOMD0000000570
% isDescribedBy http://identifiers.org/pubmed/12414257
%


function main()
%Initial conditions vector
	x0=zeros(19,1);
	x0(18) = 0.0237;
	x0(19) = 2.2;
	x0(1) = 15.0;
	x0(2) = 2.2;
	x0(3) = 0.0119296850858459;
	x0(4) = 1.2;
	x0(5) = 0.0057;
	x0(6) = 0.186;
	x0(7) = 0.026;
	x0(8) = 0.16;
	x0(9) = 0.02;
	x0(10) = 1.0;
	x0(11) = 5.0;
	x0(12) = 5.0;
	x0(13) = 0.0262;
	x0(14) = 4.56;
	x0(15) = 0.35;
	x0(16) = 7.01;
	x0(17) = 0.0630000000000001;


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

% Compartment: id = compartment_1, name = Tissue, constant
	compartment_compartment_1=1.0;
% Compartment: id = compartment_2, name = Arteries, constant
	compartment_compartment_2=1.0;
% Compartment: id = compartment_3, name = Capillaries, constant
	compartment_compartment_3=1.0;
% Compartment: id = compartment_4, name = Venous balloon, defined by a Rule
% Parameter:   id =  parameter_1, name = S/V
	global_par_parameter_1=90000.0;
% Parameter:   id =  parameter_2, name = gNa
	global_par_parameter_2=0.0039;
% Parameter:   id =  parameter_3, name = F
	global_par_parameter_3=96500.0;
% Parameter:   id =  parameter_4, name = RT/F
	global_par_parameter_4=26.73;
% Parameter:   id =  parameter_5, name = Vm
	global_par_parameter_5=-70.0;
% Parameter:   id =  parameter_6, name = Na_extracellular
	global_par_parameter_6=150.0;
% Parameter:   id =  parameter_7, name = ATP
% Parameter:   id =  parameter_8, name = k_pump
	global_par_parameter_8=2.9E-7;
% Parameter:   id =  parameter_9, name = Km_pump
	global_par_parameter_9=0.5;
% Parameter:   id =  parameter_10, name = ADP
% Parameter:   id =  parameter_11, name = qAK
	global_par_parameter_11=0.92;
% Parameter:   id =  parameter_12, name = A
	global_par_parameter_12=2.212;
% Parameter:   id =  parameter_13, name = AMP
% Parameter:   id =  parameter_14, name = Tmax,GLC
	global_par_parameter_14=0.0476;
% Parameter:   id =  parameter_15, name = Kt,GLC
	global_par_parameter_15=9.0;
% Parameter:   id =  parameter_16, name = kHK-PFK
	global_par_parameter_16=0.12;
% Parameter:   id =  parameter_17, name = KI,ATP
	global_par_parameter_17=1.0;
% Parameter:   id =  parameter_18, name = nH
	global_par_parameter_18=4.0;
% Parameter:   id =  parameter_19, name = Kg
	global_par_parameter_19=0.05;
% Parameter:   id =  parameter_20, name = kPGK
	global_par_parameter_20=42.6;
% Parameter:   id =  parameter_21, name = N
	global_par_parameter_21=0.212;
% Parameter:   id =  parameter_22, name = NAD+
% Parameter:   id =  parameter_23, name = kPK
	global_par_parameter_23=86.7;
% Parameter:   id =  parameter_24, name = k+LDH
	global_par_parameter_24=2000.0;
% Parameter:   id =  parameter_25, name = k-LDH
	global_par_parameter_25=44.8;
% Parameter:   id =  parameter_26, name = Tmax,LAC
	global_par_parameter_26=0.00628;
% Parameter:   id =  parameter_27, name = Kt,LAC
	global_par_parameter_27=0.5;
% Parameter:   id =  parameter_28, name = vATPase
	global_par_parameter_28=0.149;
% Parameter:   id =  parameter_29, name = k+CK
	global_par_parameter_29=3666.0;
% Parameter:   id =  parameter_30, name = k-CK
	global_par_parameter_30=20.0;
% Parameter:   id =  parameter_31, name = C
	global_par_parameter_31=10.0;
% Parameter:   id =  parameter_32, name = PS/V
	global_par_parameter_32=1.6;
% Parameter:   id =  parameter_33, name = KO2
	global_par_parameter_33=0.0361;
% Parameter:   id =  parameter_34, name = Hb*OP
	global_par_parameter_34=8.6;
% Parameter:   id =  parameter_35, name = nh
	global_par_parameter_35=2.73;
% Parameter:   id =  parameter_36, name = F0
	global_par_parameter_36=0.012;
% Parameter:   id =  parameter_37, name = F_in
% Parameter:   id =  parameter_38, name = V_cap
	global_par_parameter_38=0.0055;
% Parameter:   id =  parameter_47, name = v_Mito
	global_par_parameter_47=0.0192;
% Parameter:   id =  dAMP_dATP, name = dAMP/dATP
% Parameter:   id =  v_Mito_H3, name = v_Mito_H3
% Parameter:   id =  V_max_Mito, name = V_max_Mito
	global_par_V_max_Mito=0.05233;
% Parameter:   id =  Km_Mito, name = Km,Mito
	global_par_Km_Mito=0.05;
% Parameter:   id =  KI_Mito, name = KI,Mito
	global_par_KI_Mito=183.3;
% Parameter:   id =  n_Mito, name = n_Mito
	global_par_n_Mito=0.1;
% Parameter:   id =  K_O2_Mito, name = K_O2_Mito
	global_par_K_O2_Mito=0.001;
% Parameter:   id =  is_maximum, name = is_maximum
	global_par_is_maximum=0.0;
% Parameter:   id =  is_rising, name = is_rising
	global_par_is_rising=1.0;
% Parameter:   id =  is_falling, name = is_falling
	global_par_is_falling=0.0;
% Parameter:   id =  slope_up, name = slope_up
% Parameter:   id =  alpha_F_in, name = alpha_F_in
	global_par_alpha_F_in=0.5;
% Parameter:   id =  maximum, name = maximum
% Parameter:   id =  t_on, name = t_on
	global_par_t_on=5.0;
% Parameter:   id =  t_end, name = t_end
	global_par_t_end=360.0;
% Parameter:   id =  slope_down, name = slope_down
% Parameter:   id =  F_out, name = F_out
% Parameter:   id =  v_stim_constant, name = v_stim_constant
	global_par_v_stim_constant=0.23;
% Parameter:   id =  rCBF, name = rCBF
% Parameter:   id =  rCMRO2, name = rCMRO2
% Parameter:   id =  rVv, name = rVv
% Parameter:   id =  O2c_bar, name = O2c_bar
% Parameter:   id =  ratioO2c_bar, name = ratioO2c_bar
% Parameter:   id =  Compartment_7, name = Initial for Venous balloon
	global_par_Compartment_7=0.0237;
% Parameter:   id =  ModelValue_35, name = Initial for F0
	global_par_ModelValue_35=0.012;
% Parameter:   id =  ModelValue_60, name = Initial for O2c_bar
	global_par_ModelValue_60=5.68;
% Parameter:   id =  ModelValue_50, name = Initial for alpha_F_in
	global_par_ModelValue_50=0.5;
% Parameter:   id =  ModelValue_51, name = Initial for maximum
	global_par_ModelValue_51=0.006;
% Parameter:   id =  ModelValue_53, name = Initial for t_end
	global_par_ModelValue_53=360.0;
% Parameter:   id =  ModelValue_52, name = Initial for t_on
	global_par_ModelValue_52=5.0;
% assignmentRule: variable = species_2
	x(2)=global_par_parameter_7*compartment_compartment_1;
% assignmentRule: variable = species_12
	x(12)=(global_par_parameter_31-x(11)/compartment_compartment_1)*compartment_compartment_1;
% assignmentRule: variable = parameter_10
	global_par_parameter_10=global_par_parameter_7/2*(-global_par_parameter_11+(global_par_parameter_11^2+4*global_par_parameter_11*(global_par_parameter_12/global_par_parameter_7-1))^0.5);
% assignmentRule: variable = species_3
	x(3)=global_par_parameter_10*compartment_compartment_1;
% assignmentRule: variable = parameter_13
	global_par_parameter_13=global_par_parameter_12-global_par_parameter_7-global_par_parameter_10;
% assignmentRule: variable = parameter_22
	global_par_parameter_22=global_par_parameter_21-x(7)/compartment_compartment_1;
% assignmentRule: variable = species_6
	x(6)=global_par_parameter_22*compartment_compartment_1;
% assignmentRule: variable = dAMP_dATP
	global_par_dAMP_dATP=-1+global_par_parameter_11/2-1/2*(global_par_parameter_11^2+4*global_par_parameter_11*(global_par_parameter_12/global_par_parameter_7-1))^(1/2)+global_par_parameter_11*global_par_parameter_12/(global_par_parameter_7*(global_par_parameter_11^2+4*global_par_parameter_11*(global_par_parameter_12/global_par_parameter_7-1))^(1/2));
% assignmentRule: variable = v_Mito_H3
	global_par_v_Mito_H3=global_par_V_max_Mito*x(8)/compartment_compartment_1/(global_par_Km_Mito+x(8)/compartment_compartment_1)*1/(1+(global_par_parameter_7/(global_par_parameter_10*global_par_KI_Mito))^global_par_n_Mito)*x(13)/compartment_compartment_1/(global_par_K_O2_Mito+x(13)/compartment_compartment_1);
% assignmentRule: variable = maximum
	global_par_maximum=global_par_ModelValue_35*global_par_ModelValue_50;
% assignmentRule: variable = slope_up
	global_par_slope_up=global_par_ModelValue_51/global_par_ModelValue_52*time;
% assignmentRule: variable = slope_down
	global_par_slope_down=global_par_maximum*(global_par_t_on+global_par_t_end-time)/global_par_t_on;
% assignmentRule: variable = parameter_37
	global_par_parameter_37=global_par_parameter_36+global_par_is_rising*global_par_slope_up+global_par_is_maximum*global_par_maximum+global_par_is_falling*global_par_slope_down;
% assignmentRule: variable = F_out
	global_par_F_out=global_par_parameter_36*((compartment_compartment_4/global_par_Compartment_7)^2+(compartment_compartment_4/global_par_Compartment_7)^(-0.5)*35*1/global_par_Compartment_7*global_par_parameter_37)/(1+global_par_parameter_36*(compartment_compartment_4/global_par_Compartment_7)^(-0.5)*35*1/global_par_Compartment_7);
% assignmentRule: variable = rCBF
	global_par_rCBF=global_par_parameter_37/global_par_ModelValue_35;
% assignmentRule: variable = rCMRO2
	global_par_rCMRO2=reaction_mitochondrial_respiration/0.0192;
% assignmentRule: variable = rVv
	global_par_rVv=compartment_compartment_4/global_par_Compartment_7;
% assignmentRule: variable = O2c_bar
	global_par_O2c_bar=2*x(16)/compartment_compartment_3-const_species_species_14/compartment_compartment_2;
% assignmentRule: variable = ratioO2c_bar
	global_par_ratioO2c_bar=global_par_O2c_bar/global_par_ModelValue_60;
% rateRule: variable = compartment_4
compartment_compartment_4 = x(18);
% rateRule: variable = parameter_7
global_par_parameter_7 = x(19);

% Reaction: id = reaction_1, name = Sodium leak
	reaction_reaction_1=compartment_compartment_1*function_1(global_par_parameter_1, global_par_parameter_2, global_par_parameter_3, global_par_parameter_4, global_par_parameter_6, x(1)/compartment_compartment_1, global_par_parameter_5);

% Reaction: id = reaction_2, name = Na/K - pump
	reaction_reaction_2=compartment_compartment_1*v_pump(global_par_parameter_1, global_par_parameter_8, x(2)/compartment_compartment_1, x(1)/compartment_compartment_1, global_par_parameter_9);

% Reaction: id = reaction_3, name = Blood-brain transport of glucose
	reaction_reaction_3=v_GLC_m(global_par_parameter_14, x(14)/compartment_compartment_3, global_par_parameter_15, x(4)/compartment_compartment_1);

% Reaction: id = reaction_4, name = Hexokinase-phosphofructokinase system
	reaction_reaction_4=compartment_compartment_1*function_2(x(2)/compartment_compartment_1, x(4)/compartment_compartment_1, global_par_parameter_19, global_par_parameter_17, global_par_parameter_18, global_par_parameter_16);

% Reaction: id = reaction_5, name = Phosphoglycerate kinase
	reaction_reaction_5=compartment_compartment_1*v_PGK(global_par_parameter_20, x(5)/compartment_compartment_1, x(3)/compartment_compartment_1, x(6)/compartment_compartment_1, x(7)/compartment_compartment_1);

% Reaction: id = reaction_6, name = Pyruvate kinase
	reaction_reaction_6=global_par_parameter_23*x(3)*x(9)/compartment_compartment_1;

% Reaction: id = reaction_7, name = Lactate dehydrogenase
	reaction_reaction_7=compartment_compartment_1*(global_par_parameter_24*x(8)/compartment_compartment_1*x(7)/compartment_compartment_1-global_par_parameter_25*x(10)/compartment_compartment_1*x(6)/compartment_compartment_1);

% Reaction: id = reaction_8, name = Blood-brain transport of lactate
	reaction_reaction_8=v_LAC_m(global_par_parameter_26, x(10)/compartment_compartment_1, global_par_parameter_27, x(15)/compartment_compartment_3);

% Reaction: id = reaction_9, name = Creatine Kinase
	reaction_reaction_9=compartment_compartment_1*(global_par_parameter_29*x(11)/compartment_compartment_1*x(3)/compartment_compartment_1-global_par_parameter_30*x(12)/compartment_compartment_1*x(2)/compartment_compartment_1);

% Reaction: id = reaction_10, name = Blood-brain transport of oxygen
	reaction_reaction_10=v_O2_m(global_par_parameter_32, global_par_parameter_33, global_par_parameter_34, x(16)/compartment_compartment_3, global_par_parameter_35, x(13)/compartment_compartment_1);

% Reaction: id = reaction_11, name = Blood flow contribution to O2 variation
	reaction_reaction_11=v_O2_c(global_par_parameter_37, global_par_parameter_38, const_species_species_14/compartment_compartment_2, x(16)/compartment_compartment_3);

% Reaction: id = reaction_12, name = Blood flow contribution to GLC_c variation
	reaction_reaction_12=v_GLC_c(global_par_parameter_37, global_par_parameter_38, const_species_species_15/compartment_compartment_2, x(14)/compartment_compartment_3);

% Reaction: id = reaction_13, name = Blood flow contribution to LAC_c variation
	reaction_reaction_13=v_LAC_c(global_par_parameter_37, global_par_parameter_38, const_species_species_16/compartment_compartment_2, x(15)/compartment_compartment_3);

% Reaction: id = inflow_of_dHb, name = inflow of dHb
	reaction_inflow_of_dHb=compartment_compartment_3*v_dHb_in(global_par_parameter_37, const_species_species_14/compartment_compartment_2, x(16)/compartment_compartment_3);

% Reaction: id = outflow_of_dHb, name = outflow of dHb
	reaction_outflow_of_dHb=compartment_compartment_3*v_dHb_out(global_par_F_out, x(17)/compartment_compartment_3, compartment_compartment_4);

% Species:   id = species_14, name = O2, constant	const_species_species_14=8.34;

% Species:   id = species_15, name = GLC, constant	const_species_species_15=4.8;

% Species:   id = species_16, name = LAC, constant	const_species_species_16=0.313;

%Event: id=from_increase_to_stable
	event_from_increase_to_stable=time == global_par_ModelValue_52;

	if(event_from_increase_to_stable) 
		global_par_is_maximum=1;
		global_par_is_rising=0;
	end

%Event: id=from_stable_to_decrease__end_of_stimulation
	event_from_stable_to_decrease__end_of_stimulation=time == global_par_ModelValue_53;

	if(event_from_stable_to_decrease__end_of_stimulation) 
		global_par_is_maximum=0;
		global_par_is_falling=1;
		global_par_v_stim_constant=0;
	end

%Event: id=from_decrease_to_at_rest
	event_from_decrease_to_at_rest=time == (global_par_ModelValue_53+global_par_ModelValue_52);

	if(event_from_decrease_to_at_rest) 
		global_par_is_falling=0;
	end

	xdot=zeros(19,1);
	% rateRule: variable = compartment_4
	xdot(18) = global_par_parameter_37-global_par_F_out;
	% rateRule: variable = parameter_7
	xdot(19) = ((-2)*reaction_reaction_4+reaction_reaction_5+reaction_reaction_6-reaction_reaction_2+15*reaction_mitochondrial_respiration+reaction_reaction_9-reaction_ATPases)*(1-global_par_dAMP_dATP)^(-1);
	
% Species:   id = species_1, name = Na+, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_reaction_1) + (-3.0 * reaction_reaction_2) + ( 1.0 * reaction_Na__inflow_after_stimulation);
	
% Species:   id = species_2, name = ATP, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = species_3, name = ADP, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = species_4, name = GLC, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4);
	
% Species:   id = species_5, name = GAP, affected by kineticLaw
	xdot(5) = ( 2.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5);
	
% Species:   id = species_6, name = NAD+, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = species_7, name = NADH, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_mitochondrial_respiration);
	
% Species:   id = species_8, name = PYR, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_mitochondrial_respiration);
	
% Species:   id = species_9, name = PEP, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6);
	
% Species:   id = species_10, name = LAC, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8);
	
% Species:   id = species_11, name = PCr, affected by kineticLaw
	xdot(11) = (-1.0 * reaction_reaction_9);
	
% Species:   id = species_12, name = Cr, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = species_13, name = O2, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_reaction_10) + (-3.0 * reaction_mitochondrial_respiration);
	
% Species:   id = species_17, name = GLC, affected by kineticLaw
	xdot(14) = (-100.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_12);
	
% Species:   id = species_18, name = LAC, affected by kineticLaw
	xdot(15) = ( 100.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_13);
	
% Species:   id = species_19, name = O2, affected by kineticLaw
	xdot(16) = (-100.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_11);
	
% Species:   id = dHb, name = dHb, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_inflow_of_dHb) + (-1.0 * reaction_outflow_of_dHb);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=v_pump(S_V,k_pump,ATP,NA,Km_pump), z=(S_V*k_pump*ATP*NA/(1+ATP/Km_pump));end

function z=function_1(S_V,gNA,F,RT_F,Na_e,Na,Vm), z=(S_V*gNA/F*(RT_F*log(Na_e/Na)-Vm));end

function z=v_GLC_m(Tmax,GLC_c,Kt_GLC,GLC_i), z=(Tmax*(GLC_c/(GLC_c+Kt_GLC)-GLC_i/(GLC_i+Kt_GLC)));end

function z=function_2(ATP,GLC_i,Kg,KI_ATP,nH,kHK_PFK), z=(kHK_PFK*ATP*GLC_i/(GLC_i+Kg)/(1+(ATP/KI_ATP)^nH));end

function z=v_PGK(kPGK,GAP,ADP,NAD,NADH), z=(kPGK*GAP*ADP*NAD/NADH);end

function z=v_LAC_m(Tmax,LAC_i,Kt_LAC,LAC_c), z=(Tmax*(LAC_i/(LAC_i+Kt_LAC)-LAC_c/(LAC_c+Kt_LAC)));end

function z=v_O2_m(PS_V,KO2,HbOP,O2_c,nh,O2_i), z=(PS_V*(KO2*(HbOP/O2_c-1)^((-1)/nh)-O2_i));end

function z=v_O2_c(F_in,V_cap,O2_a,O2_c), z=(2*F_in/V_cap*(O2_a-O2_c));end

function z=v_GLC_c(F_in,V_cap,GLC_a,GLC_c), z=(2*F_in/V_cap*(GLC_a-GLC_c));end

function z=v_LAC_c(F_in,V_cap,LAC_a,LAC_c), z=(2*F_in/V_cap*(LAC_a-LAC_c));end

function z=v_dHb_in(F_in,O2_a,O2_c), z=(F_in*2*(O2_a-O2_c));end

function z=v_dHb_out(F_out,dHb,V_v), z=(F_out*dHb/V_v);end

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


