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
% Model name = Stefan2008 - calmodulin allostery
%
% is http://identifiers.org/biomodels.db/MODEL9885984404
% is http://identifiers.org/biomodels.db/BIOMD0000000183
% isDescribedBy http://identifiers.org/pubmed/18669651
%


function main()
%Initial conditions vector
	x0=zeros(67,1);
	x0(1) = 9.7E-12;
	x0(2) = 1.0E-5;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 2.0E-7;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 7.0E-5;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 0.0;
	x0(46) = 0.0;
	x0(47) = 0.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 1.6E-6;
	x0(52) = 0.0;
	x0(53) = 0.0;
	x0(54) = 0.0;
	x0(55) = 0.0;
	x0(56) = 0.0;
	x0(57) = 0.0;
	x0(58) = 0.0;
	x0(59) = 0.0;
	x0(60) = 0.0;
	x0(61) = 0.0;
	x0(62) = 0.0;
	x0(63) = 0.0;
	x0(64) = 0.0;
	x0(65) = 0.0;
	x0(66) = 0.0;
	x0(67) = 0.0;


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

% Compartment: id = compartment_0, name = Spine, constant
	compartment_compartment_0=1.0E-15;
% Parameter:   id =  parameter_0, name = kon
	global_par_parameter_0=1000000.0;
% Parameter:   id =  parameter_1, name = koffRA
% Parameter:   id =  parameter_2, name = koffRB
% Parameter:   id =  parameter_3, name = koffRC
% Parameter:   id =  parameter_4, name = koffRD
% Parameter:   id =  parameter_5, name = koffTA
% Parameter:   id =  parameter_6, name = koffTB
% Parameter:   id =  parameter_7, name = koffTC
% Parameter:   id =  parameter_8, name = koffTD
% Parameter:   id =  parameter_9, name = kRT
	global_par_parameter_9=1000000.0;
% Parameter:   id =  parameter_10, name = kTR
% Parameter:   id =  parameter_11, name = cA
	global_par_parameter_11=0.00396;
% Parameter:   id =  parameter_12, name = cB
	global_par_parameter_12=0.00396;
% Parameter:   id =  parameter_13, name = cC
	global_par_parameter_13=0.00396;
% Parameter:   id =  parameter_14, name = cD
	global_par_parameter_14=0.00396;
% Parameter:   id =  parameter_15, name = konCaMKII
	global_par_parameter_15=3200000.0;
% Parameter:   id =  parameter_16, name = koffCaMKII
	global_par_parameter_16=0.343;
% Parameter:   id =  parameter_17, name = konPP2B
	global_par_parameter_17=4.6E7;
% Parameter:   id =  parameter_18, name = koffPP2B
	global_par_parameter_18=0.0013;
% Parameter:   id =  parameter_19, name = free_camR_ca3_total
% Parameter:   id =  parameter_20, name = free_camT_ca3_total
% Parameter:   id =  parameter_21, name = free_cam_ca3_total
% Parameter:   id =  parameter_22, name = cam_ca4_total
% Parameter:   id =  parameter_23, name = CaMKII_camR_ca1
% Parameter:   id =  parameter_24, name = CaMKII_camR_ca2
% Parameter:   id =  parameter_25, name = CaMKII_camR_ca3
% Parameter:   id =  parameter_26, name = total_CaMKII_bound
% Parameter:   id =  parameter_27, name = total CaMKII
% Parameter:   id =  parameter_28, name = CaMKIIbar
% Parameter:   id =  parameter_29, name = PP2B_camR_ca1
% Parameter:   id =  parameter_30, name = PP2B_camR_ca2
% Parameter:   id =  parameter_31, name = PP2B_camR_ca3
% Parameter:   id =  parameter_32, name = total_PP2B_bound
% Parameter:   id =  parameter_33, name = total PP2B
% Parameter:   id =  parameter_34, name = PP2Bbar
% Parameter:   id =  parameter_35, name = camR_unbound
% Parameter:   id =  parameter_36, name = total camR
% Parameter:   id =  parameter_37, name = total camT
% Parameter:   id =  parameter_38, name = Rbar
% Parameter:   id =  parameter_39, name = cam_ca3_total
% Parameter:   id =  parameter_40, name = free_camR_ca2_total
% Parameter:   id =  parameter_41, name = free_camT_ca2_total
% Parameter:   id =  parameter_42, name = free_cam_ca2_total
% Parameter:   id =  parameter_43, name = cam_ca2_total
% Parameter:   id =  parameter_44, name = free_cam_ca1_total
% Parameter:   id =  parameter_45, name = cam_ca1_total
% Parameter:   id =  parameter_46, name = cam_ca0_total
% Parameter:   id =  parameter_47, name = cam_total
% Parameter:   id =  parameter_48, name = moles_bound_ca_per_moles_cam
% Parameter:   id =  parameter_49, name = L
	global_par_parameter_49=20670.0;
% Parameter:   id =  parameter_50, name = KRA
	global_par_parameter_50=8.32E-6;
% Parameter:   id =  parameter_51, name = KRB
	global_par_parameter_51=1.66E-8;
% Parameter:   id =  parameter_52, name = KRC
	global_par_parameter_52=1.74E-5;
% Parameter:   id =  parameter_53, name = KRD
	global_par_parameter_53=1.45E-8;
% Parameter:   id =  parameter_54, name = alpha
% Parameter:   id =  parameter_55, name = beta
% Parameter:   id =  parameter_56, name = gamma
% Parameter:   id =  parameter_57, name = delta
% Parameter:   id =  parameter_58, name = epsilon
% Parameter:   id =  parameter_59, name = ybar
% Parameter:   id =  parameter_60, name = ybar/(1-ybar)
% assignmentRule: variable = parameter_1
	global_par_parameter_1=global_par_parameter_50*global_par_parameter_0;
% assignmentRule: variable = parameter_20
	global_par_parameter_20=x(29)+x(30)+x(31)+x(32);
% assignmentRule: variable = parameter_2
	global_par_parameter_2=global_par_parameter_51*global_par_parameter_0;
% assignmentRule: variable = parameter_3
	global_par_parameter_3=global_par_parameter_52*global_par_parameter_0;
% assignmentRule: variable = parameter_4
	global_par_parameter_4=global_par_parameter_53*global_par_parameter_0;
% assignmentRule: variable = parameter_5
	global_par_parameter_5=global_par_parameter_1/global_par_parameter_11;
% assignmentRule: variable = parameter_6
	global_par_parameter_6=global_par_parameter_2/global_par_parameter_12;
% assignmentRule: variable = parameter_7
	global_par_parameter_7=global_par_parameter_3/global_par_parameter_13;
% assignmentRule: variable = parameter_8
	global_par_parameter_8=global_par_parameter_4/global_par_parameter_14;
% assignmentRule: variable = parameter_10
	global_par_parameter_10=global_par_parameter_9/global_par_parameter_49;
% assignmentRule: variable = parameter_19
	global_par_parameter_19=x(13)+x(14)+x(15)+x(16);
% assignmentRule: variable = parameter_21
	global_par_parameter_21=global_par_parameter_19+global_par_parameter_20;
% assignmentRule: variable = parameter_22
	global_par_parameter_22=x(17)+x(33)+x(50)+x(67);
% assignmentRule: variable = parameter_23
	global_par_parameter_23=x(36)+x(37)+x(38)+x(39);
% assignmentRule: variable = parameter_25
	global_par_parameter_25=x(46)+x(47)+x(48)+x(49);
% assignmentRule: variable = parameter_24
	global_par_parameter_24=x(40)+x(41)+x(42)+x(43)+x(44)+x(45);
% assignmentRule: variable = parameter_26
	global_par_parameter_26=x(35)+global_par_parameter_23+global_par_parameter_24+global_par_parameter_25+x(50);
% assignmentRule: variable = parameter_27
	global_par_parameter_27=global_par_parameter_26+x(34);
% assignmentRule: variable = parameter_28
	global_par_parameter_28=global_par_parameter_26/global_par_parameter_27;
% assignmentRule: variable = parameter_29
	global_par_parameter_29=x(53)+x(54)+x(55)+x(56);
% assignmentRule: variable = parameter_30
	global_par_parameter_30=x(57)+x(58)+x(59)+x(60)+x(61)+x(62);
% assignmentRule: variable = parameter_31
	global_par_parameter_31=x(63)+x(64)+x(65)+x(66);
% assignmentRule: variable = parameter_32
	global_par_parameter_32=x(52)+global_par_parameter_29+global_par_parameter_30+global_par_parameter_31+x(67);
% assignmentRule: variable = parameter_35
	global_par_parameter_35=x(1)+x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9)+x(10)+x(11)+x(12)+x(13)+x(14)+x(15)+x(16)+x(17);
% assignmentRule: variable = parameter_33
	global_par_parameter_33=global_par_parameter_32+x(51);
% assignmentRule: variable = parameter_34
	global_par_parameter_34=global_par_parameter_32/global_par_parameter_33;
% assignmentRule: variable = parameter_37
	global_par_parameter_37=x(18)+x(19)+x(20)+x(21)+x(22)+x(23)+x(24)+x(25)+x(26)+x(27)+x(28)+x(29)+x(30)+x(31)+x(32)+x(33);
% assignmentRule: variable = parameter_36
	global_par_parameter_36=global_par_parameter_35+global_par_parameter_26+global_par_parameter_32;
% assignmentRule: variable = parameter_39
	global_par_parameter_39=global_par_parameter_25+global_par_parameter_31+global_par_parameter_21;
% assignmentRule: variable = parameter_38
	global_par_parameter_38=global_par_parameter_36/(global_par_parameter_36+global_par_parameter_37);
% assignmentRule: variable = parameter_40
	global_par_parameter_40=x(7)+x(8)+x(9)+x(10)+x(11)+x(12);
% assignmentRule: variable = parameter_41
	global_par_parameter_41=x(23)+x(24)+x(25)+x(26)+x(27)+x(28);
% assignmentRule: variable = parameter_42
	global_par_parameter_42=global_par_parameter_40+global_par_parameter_41;
% assignmentRule: variable = parameter_43
	global_par_parameter_43=global_par_parameter_42+global_par_parameter_24+global_par_parameter_30;
% assignmentRule: variable = parameter_44
	global_par_parameter_44=x(3)+x(4)+x(5)+x(6)+x(19)+x(20)+x(21)+x(22);
% assignmentRule: variable = parameter_45
	global_par_parameter_45=global_par_parameter_44+global_par_parameter_23+global_par_parameter_29;
% assignmentRule: variable = parameter_46
	global_par_parameter_46=x(1)+x(18)+x(35)+x(52);
% assignmentRule: variable = parameter_47
	global_par_parameter_47=global_par_parameter_46+global_par_parameter_45+global_par_parameter_43+global_par_parameter_39+global_par_parameter_22;
% assignmentRule: variable = parameter_48
	global_par_parameter_48=(4*global_par_parameter_22+3*global_par_parameter_39+2*global_par_parameter_43+global_par_parameter_45)/global_par_parameter_47;
% assignmentRule: variable = parameter_54
	global_par_parameter_54=x(17)/(x(17)+x(33));
% assignmentRule: variable = parameter_55
	global_par_parameter_55=global_par_parameter_19/global_par_parameter_21;
% assignmentRule: variable = parameter_56
	global_par_parameter_56=global_par_parameter_40/global_par_parameter_42;
% assignmentRule: variable = parameter_57
	global_par_parameter_57=(x(3)+x(4)+x(5)+x(6))/(x(3)+x(4)+x(5)+x(6)+x(19)+x(20)+x(21)+x(22));
% assignmentRule: variable = parameter_58
	global_par_parameter_58=x(1)/(x(1)+x(18));
% assignmentRule: variable = parameter_59
	global_par_parameter_59=global_par_parameter_48/4;
% assignmentRule: variable = parameter_60
	global_par_parameter_60=global_par_parameter_59/(1-global_par_parameter_59);

% Reaction: id = reaction_0, name = Ca binding to camR site A
	reaction_reaction_0=compartment_compartment_0*global_par_parameter_0*x(1)*x(2);

% Reaction: id = reaction_1, name = Ca binding to camR site B
	reaction_reaction_1=compartment_compartment_0*global_par_parameter_0*x(1)*x(2);

% Reaction: id = reaction_2, name = Ca binding to camR site C
	reaction_reaction_2=compartment_compartment_0*global_par_parameter_0*x(1)*x(2);

% Reaction: id = reaction_3, name = Ca binding to camR site D
	reaction_reaction_3=compartment_compartment_0*global_par_parameter_0*x(1)*x(2);

% Reaction: id = reaction_4, name = Ca dissociating from camR_ca1_A site A
	reaction_reaction_4=compartment_compartment_0*global_par_parameter_1*x(3);

% Reaction: id = reaction_5, name = Ca dissociating from camR_ca1_B site B
	reaction_reaction_5=compartment_compartment_0*global_par_parameter_2*x(4);

% Reaction: id = reaction_6, name = Ca dissociating from camR_ca1_C site C
	reaction_reaction_6=compartment_compartment_0*global_par_parameter_3*x(5);

% Reaction: id = reaction_7, name = Ca dissociating from camR_ca1_D site D
	reaction_reaction_7=compartment_compartment_0*global_par_parameter_4*x(6);

% Reaction: id = reaction_8, name = Ca binding to camR_ca1_A site B
	reaction_reaction_8=compartment_compartment_0*global_par_parameter_0*x(3)*x(2);

% Reaction: id = reaction_9, name = Ca binding to camR_ca1_A site C
	reaction_reaction_9=compartment_compartment_0*global_par_parameter_0*x(3)*x(2);

% Reaction: id = reaction_10, name = Ca binding to camR_ca1_A site D
	reaction_reaction_10=compartment_compartment_0*global_par_parameter_0*x(3)*x(2);

% Reaction: id = reaction_11, name = Ca binding to camR_ca1_B site A
	reaction_reaction_11=compartment_compartment_0*global_par_parameter_0*x(4)*x(2);

% Reaction: id = reaction_12, name = Ca binding to camR_ca1_B site C
	reaction_reaction_12=compartment_compartment_0*global_par_parameter_0*x(4)*x(2);

% Reaction: id = reaction_13, name = Ca binding to camR_ca1_B site D
	reaction_reaction_13=compartment_compartment_0*global_par_parameter_0*x(4)*x(2);

% Reaction: id = reaction_14, name = Ca binding to camR_ca1_C site A
	reaction_reaction_14=compartment_compartment_0*global_par_parameter_0*x(5)*x(2);

% Reaction: id = reaction_15, name = Ca binding to camR_ca1_C site B
	reaction_reaction_15=compartment_compartment_0*global_par_parameter_0*x(5)*x(2);

% Reaction: id = reaction_16, name = Ca binding to camR_ca1_C site D
	reaction_reaction_16=compartment_compartment_0*global_par_parameter_0*x(5)*x(2);

% Reaction: id = reaction_17, name = Ca binding to camR_ca1_D site A
	reaction_reaction_17=compartment_compartment_0*global_par_parameter_0*x(6)*x(2);

% Reaction: id = reaction_18, name = Ca binding to camR_ca1_D site B
	reaction_reaction_18=compartment_compartment_0*global_par_parameter_0*x(6)*x(2);

% Reaction: id = reaction_19, name = Ca binding to camR_ca1_D site C
	reaction_reaction_19=compartment_compartment_0*global_par_parameter_0*x(6)*x(2);

% Reaction: id = reaction_20, name = Ca dissociating from camR_ca2_AB site B
	reaction_reaction_20=compartment_compartment_0*global_par_parameter_2*x(7);

% Reaction: id = reaction_21, name = Ca dissociating from camR_ca2_AC site C
	reaction_reaction_21=compartment_compartment_0*global_par_parameter_3*x(8);

% Reaction: id = reaction_22, name = Ca dissociating from camR_ca2_AD site D
	reaction_reaction_22=compartment_compartment_0*global_par_parameter_4*x(9);

% Reaction: id = reaction_23, name = Ca dissociating from camR_ca2_AB site A
	reaction_reaction_23=compartment_compartment_0*global_par_parameter_1*x(7);

% Reaction: id = reaction_24, name = Ca dissociating from camR_ca2_BC site C
	reaction_reaction_24=compartment_compartment_0*global_par_parameter_3*x(10);

% Reaction: id = reaction_25, name = Ca dissociating from camR_ca2_BD site D
	reaction_reaction_25=compartment_compartment_0*global_par_parameter_4*x(11);

% Reaction: id = reaction_26, name = Ca dissociating from camR_ca2_AC site A
	reaction_reaction_26=compartment_compartment_0*global_par_parameter_1*x(8);

% Reaction: id = reaction_27, name = Ca dissociating from camR_ca2_BC site B
	reaction_reaction_27=compartment_compartment_0*global_par_parameter_2*x(10);

% Reaction: id = reaction_28, name = Ca dissociating from camR_ca2_CD site D
	reaction_reaction_28=compartment_compartment_0*global_par_parameter_4*x(12);

% Reaction: id = reaction_29, name = Ca dissociating from camR_ca2_AD site A
	reaction_reaction_29=compartment_compartment_0*global_par_parameter_1*x(9);

% Reaction: id = reaction_30, name = Ca dissociating from camR_ca2_BD site B
	reaction_reaction_30=compartment_compartment_0*global_par_parameter_2*x(11);

% Reaction: id = reaction_31, name = Ca dissociating from camR_ca2_CD site C
	reaction_reaction_31=compartment_compartment_0*global_par_parameter_3*x(12);

% Reaction: id = reaction_32, name = Ca binding to camR_ca2_AB site C
	reaction_reaction_32=compartment_compartment_0*global_par_parameter_0*x(7)*x(2);

% Reaction: id = reaction_33, name = Ca binding to camR_ca2_AB site D
	reaction_reaction_33=compartment_compartment_0*global_par_parameter_0*x(7)*x(2);

% Reaction: id = reaction_34, name = Ca binding to camR_ca2_AC site B
	reaction_reaction_34=compartment_compartment_0*global_par_parameter_0*x(8)*x(2);

% Reaction: id = reaction_35, name = Ca binding to camR_ca2_AC site D
	reaction_reaction_35=compartment_compartment_0*global_par_parameter_0*x(8)*x(2);

% Reaction: id = reaction_36, name = Ca binding to camR_ca2_AD site B
	reaction_reaction_36=compartment_compartment_0*global_par_parameter_0*x(9)*x(2);

% Reaction: id = reaction_37, name = Ca binding to camR_ca2_AD site C
	reaction_reaction_37=compartment_compartment_0*global_par_parameter_0*x(9)*x(2);

% Reaction: id = reaction_38, name = Ca binding to camR_ca2_BC site A
	reaction_reaction_38=compartment_compartment_0*global_par_parameter_0*x(10)*x(2);

% Reaction: id = reaction_39, name = Ca binding to camR_ca2_BC site D
	reaction_reaction_39=compartment_compartment_0*global_par_parameter_0*x(10)*x(2);

% Reaction: id = reaction_40, name = Ca binding to camR_ca2_BD site A
	reaction_reaction_40=compartment_compartment_0*global_par_parameter_0*x(11)*x(2);

% Reaction: id = reaction_41, name = Ca binding to camR_ca2_BD site C
	reaction_reaction_41=compartment_compartment_0*global_par_parameter_0*x(11)*x(2);

% Reaction: id = reaction_42, name = Ca binding to camR_ca2_CD site A
	reaction_reaction_42=compartment_compartment_0*global_par_parameter_0*x(12)*x(2);

% Reaction: id = reaction_43, name = Ca binding to camR_ca2_CD site B
	reaction_reaction_43=compartment_compartment_0*global_par_parameter_0*x(12)*x(2);

% Reaction: id = reaction_44, name = Ca dissociating from camR_ca3_ABC site A
	reaction_reaction_44=compartment_compartment_0*global_par_parameter_1*x(13);

% Reaction: id = reaction_45, name = Ca dissociating from camR_ca3_ABC site B
	reaction_reaction_45=compartment_compartment_0*global_par_parameter_2*x(13);

% Reaction: id = reaction_46, name = Ca dissociating from camR_ca3_ABC site C
	reaction_reaction_46=compartment_compartment_0*global_par_parameter_3*x(13);

% Reaction: id = reaction_47, name = Ca dissociating from camR_ca3_ABD site A
	reaction_reaction_47=compartment_compartment_0*global_par_parameter_1*x(14);

% Reaction: id = reaction_48, name = Ca dissociating from camR_ca3_ABD site B
	reaction_reaction_48=compartment_compartment_0*global_par_parameter_2*x(14);

% Reaction: id = reaction_49, name = Ca dissociating from camR_ca3_ABD site D
	reaction_reaction_49=compartment_compartment_0*global_par_parameter_4*x(14);

% Reaction: id = reaction_50, name = Ca dissociating from camR_ca3_ACD site A
	reaction_reaction_50=compartment_compartment_0*global_par_parameter_1*x(15);

% Reaction: id = reaction_51, name = Ca dissociating from camR_ca3_ACD site C
	reaction_reaction_51=compartment_compartment_0*global_par_parameter_3*x(15);

% Reaction: id = reaction_52, name = Ca dissociating from camR_ca3_ACD site D
	reaction_reaction_52=compartment_compartment_0*global_par_parameter_4*x(15);

% Reaction: id = reaction_53, name = Ca dissociating from camR_ca3_BCD site B
	reaction_reaction_53=compartment_compartment_0*global_par_parameter_2*x(16);

% Reaction: id = reaction_54, name = Ca dissociating from camR_ca3_BCD site C
	reaction_reaction_54=compartment_compartment_0*global_par_parameter_3*x(16);

% Reaction: id = reaction_55, name = Ca dissociating from camR_ca3_BCD site D
	reaction_reaction_55=compartment_compartment_0*global_par_parameter_4*x(16);

% Reaction: id = reaction_56, name = Ca binding to camR_ca3_ABC site D
	reaction_reaction_56=compartment_compartment_0*global_par_parameter_0*x(13)*x(2);

% Reaction: id = reaction_57, name = Ca binding to camR_ca3_ABD site C
	reaction_reaction_57=compartment_compartment_0*global_par_parameter_0*x(14)*x(2);

% Reaction: id = reaction_58, name = Ca binding to camR_ca3_ACD site B
	reaction_reaction_58=compartment_compartment_0*global_par_parameter_0*x(15)*x(2);

% Reaction: id = reaction_59, name = Ca binding to camR_ca3_BCD site A
	reaction_reaction_59=compartment_compartment_0*global_par_parameter_0*x(16)*x(2);

% Reaction: id = reaction_60, name = Ca dissociating from camR_ca4_ABCD site D
	reaction_reaction_60=compartment_compartment_0*global_par_parameter_4*x(17);

% Reaction: id = reaction_61, name = Ca dissociating from camR_ca4_ABCD site C
	reaction_reaction_61=compartment_compartment_0*global_par_parameter_3*x(17);

% Reaction: id = reaction_62, name = Ca dissociating from camR_ca4_ABCD site B
	reaction_reaction_62=compartment_compartment_0*global_par_parameter_2*x(17);

% Reaction: id = reaction_63, name = Ca dissociating from camR_ca4_ABCD site A
	reaction_reaction_63=compartment_compartment_0*global_par_parameter_1*x(17);

% Reaction: id = reaction_64, name = Ca binding to camT site A
	reaction_reaction_64=compartment_compartment_0*global_par_parameter_0*x(18)*x(2);

% Reaction: id = reaction_65, name = Ca binding to camT site B
	reaction_reaction_65=compartment_compartment_0*global_par_parameter_0*x(18)*x(2);

% Reaction: id = reaction_66, name = Ca binding to camT site C
	reaction_reaction_66=compartment_compartment_0*global_par_parameter_0*x(18)*x(2);

% Reaction: id = reaction_67, name = Ca binding to camT site D
	reaction_reaction_67=compartment_compartment_0*global_par_parameter_0*x(18)*x(2);

% Reaction: id = reaction_68, name = Ca dissociating from camT_ca1_A site A
	reaction_reaction_68=compartment_compartment_0*global_par_parameter_5*x(19);

% Reaction: id = reaction_69, name = Ca dissociating from camT_ca1_B site B
	reaction_reaction_69=compartment_compartment_0*global_par_parameter_6*x(20);

% Reaction: id = reaction_70, name = Ca dissociating from camT_ca1_C site C
	reaction_reaction_70=compartment_compartment_0*global_par_parameter_7*x(21);

% Reaction: id = reaction_71, name = Ca dissociating from camT_ca1_D site D
	reaction_reaction_71=compartment_compartment_0*global_par_parameter_8*x(22);

% Reaction: id = reaction_72, name = Ca binding to camT_ca1_A site B
	reaction_reaction_72=compartment_compartment_0*global_par_parameter_0*x(19)*x(2);

% Reaction: id = reaction_73, name = Ca binding to camT_ca1_A site C
	reaction_reaction_73=compartment_compartment_0*global_par_parameter_0*x(19)*x(2);

% Reaction: id = reaction_74, name = Ca binding to camT_ca1_A site D
	reaction_reaction_74=compartment_compartment_0*global_par_parameter_0*x(19)*x(2);

% Reaction: id = reaction_75, name = Ca binding to camT_ca1_B site A
	reaction_reaction_75=compartment_compartment_0*global_par_parameter_0*x(20)*x(2);

% Reaction: id = reaction_76, name = Ca binding to camT_ca1_B site C
	reaction_reaction_76=compartment_compartment_0*global_par_parameter_0*x(20)*x(2);

% Reaction: id = reaction_77, name = Ca binding to camT_ca1_B site D
	reaction_reaction_77=compartment_compartment_0*global_par_parameter_0*x(20)*x(2);

% Reaction: id = reaction_78, name = Ca binding to camT_ca1_C site A
	reaction_reaction_78=compartment_compartment_0*global_par_parameter_0*x(21)*x(2);

% Reaction: id = reaction_79, name = Ca binding to camT_ca1_C site B
	reaction_reaction_79=compartment_compartment_0*global_par_parameter_0*x(21)*x(2);

% Reaction: id = reaction_80, name = Ca binding to camT_ca1_C site D
	reaction_reaction_80=compartment_compartment_0*global_par_parameter_0*x(21)*x(2);

% Reaction: id = reaction_81, name = Ca binding to camT_ca1_D site A
	reaction_reaction_81=compartment_compartment_0*global_par_parameter_0*x(22)*x(2);

% Reaction: id = reaction_82, name = Ca binding to camT_ca1_D site B
	reaction_reaction_82=compartment_compartment_0*global_par_parameter_0*x(22)*x(2);

% Reaction: id = reaction_83, name = Ca binding to camT_ca1_D site C
	reaction_reaction_83=compartment_compartment_0*global_par_parameter_0*x(22)*x(2);

% Reaction: id = reaction_84, name = Ca dissociating from camT_ca2_AB site A
	reaction_reaction_84=compartment_compartment_0*global_par_parameter_5*x(23);

% Reaction: id = reaction_85, name = Ca dissociating from camT_ca2_AB site B
	reaction_reaction_85=compartment_compartment_0*global_par_parameter_6*x(23);

% Reaction: id = reaction_86, name = Ca dissociating from camT_ca2_AC site A
	reaction_reaction_86=compartment_compartment_0*global_par_parameter_5*x(24);

% Reaction: id = reaction_87, name = Ca dissociating from camT_ca2_AC site C
	reaction_reaction_87=compartment_compartment_0*global_par_parameter_7*x(24);

% Reaction: id = reaction_88, name = Ca dissociating from camT_ca2_AD site A
	reaction_reaction_88=compartment_compartment_0*global_par_parameter_5*x(25);

% Reaction: id = reaction_89, name = Ca dissociating from camT_ca2_AD site D
	reaction_reaction_89=compartment_compartment_0*global_par_parameter_8*x(25);

% Reaction: id = reaction_90, name = Ca dissociating from camT_ca2_BC site B
	reaction_reaction_90=compartment_compartment_0*global_par_parameter_6*x(26);

% Reaction: id = reaction_91, name = Ca dissociating from camT_ca2_BC site C
	reaction_reaction_91=compartment_compartment_0*global_par_parameter_7*x(26);

% Reaction: id = reaction_92, name = Ca dissociating from camT_ca2_BD site B
	reaction_reaction_92=compartment_compartment_0*global_par_parameter_6*x(27);

% Reaction: id = reaction_93, name = Ca dissociating from camT_ca2_BD site D
	reaction_reaction_93=compartment_compartment_0*global_par_parameter_8*x(27);

% Reaction: id = reaction_94, name = Ca dissociating from camT_ca2_CD site C
	reaction_reaction_94=compartment_compartment_0*global_par_parameter_7*x(28);

% Reaction: id = reaction_95, name = Ca dissociating from camT_ca2_CD site D
	reaction_reaction_95=compartment_compartment_0*global_par_parameter_8*x(28);

% Reaction: id = reaction_96, name = Ca binding to camT_ca2_AB site C
	reaction_reaction_96=compartment_compartment_0*global_par_parameter_0*x(23)*x(2);

% Reaction: id = reaction_97, name = Ca binding to camT_ca2_AB site D
	reaction_reaction_97=compartment_compartment_0*global_par_parameter_0*x(23)*x(2);

% Reaction: id = reaction_98, name = Ca binding to camT_ca2_AC site B
	reaction_reaction_98=compartment_compartment_0*global_par_parameter_0*x(24)*x(2);

% Reaction: id = reaction_99, name = Ca binding to camT_ca2_AC site D
	reaction_reaction_99=compartment_compartment_0*global_par_parameter_0*x(24)*x(2);

% Reaction: id = reaction_100, name = Ca binding to camT_ca2_AD site B
	reaction_reaction_100=compartment_compartment_0*global_par_parameter_0*x(25)*x(2);

% Reaction: id = reaction_101, name = Ca binding to camT_ca2_AD site C
	reaction_reaction_101=compartment_compartment_0*global_par_parameter_0*x(25)*x(2);

% Reaction: id = reaction_102, name = Ca binding to camT_ca2_BC site A
	reaction_reaction_102=compartment_compartment_0*global_par_parameter_0*x(26)*x(2);

% Reaction: id = reaction_103, name = Ca binding to camT_ca2_BC site D
	reaction_reaction_103=compartment_compartment_0*global_par_parameter_0*x(26)*x(2);

% Reaction: id = reaction_104, name = Ca binding to camT_ca2_BD site A
	reaction_reaction_104=compartment_compartment_0*global_par_parameter_0*x(27)*x(2);

% Reaction: id = reaction_105, name = Ca binding to camT_ca2_BD site C
	reaction_reaction_105=compartment_compartment_0*global_par_parameter_0*x(27)*x(2);

% Reaction: id = reaction_106, name = Ca binding to camT_ca2_CD site A
	reaction_reaction_106=compartment_compartment_0*global_par_parameter_0*x(28)*x(2);

% Reaction: id = reaction_107, name = Ca binding to camT_ca2_CD site B
	reaction_reaction_107=compartment_compartment_0*global_par_parameter_0*x(28)*x(2);

% Reaction: id = reaction_108, name = Ca dissociating from camT_ca3_ABC site B
	reaction_reaction_108=compartment_compartment_0*global_par_parameter_6*x(29);

% Reaction: id = reaction_109, name = Ca dissociating from camT_ca3_ABC site A
	reaction_reaction_109=compartment_compartment_0*global_par_parameter_5*x(29);

% Reaction: id = reaction_110, name = Ca dissociating from camT_ca3_ABD site D
	reaction_reaction_110=compartment_compartment_0*global_par_parameter_8*x(30);

% Reaction: id = reaction_111, name = Ca dissociating from camT_ca3_ABD site B
	reaction_reaction_111=compartment_compartment_0*global_par_parameter_6*x(30);

% Reaction: id = reaction_112, name = Ca dissociating from camT_ca3_ABD site A
	reaction_reaction_112=compartment_compartment_0*global_par_parameter_5*x(30);

% Reaction: id = reaction_113, name = Ca dissociating from camT_ca3_ACD site D
	reaction_reaction_113=compartment_compartment_0*global_par_parameter_8*x(31);

% Reaction: id = reaction_114, name = Ca dissociating from camT_ca3_ACD site C
	reaction_reaction_114=compartment_compartment_0*global_par_parameter_7*x(31);

% Reaction: id = reaction_115, name = Ca dissociating from camT_ca3_ACD site A
	reaction_reaction_115=compartment_compartment_0*global_par_parameter_5*x(31);

% Reaction: id = reaction_116, name = Ca dissociating from camT_ca3_BCD site D
	reaction_reaction_116=compartment_compartment_0*global_par_parameter_8*x(32);

% Reaction: id = reaction_117, name = Ca dissociating from camT_ca3_BCD site C
	reaction_reaction_117=compartment_compartment_0*global_par_parameter_7*x(32);

% Reaction: id = reaction_118, name = Ca dissociating from camT_ca3_BCD site B
	reaction_reaction_118=compartment_compartment_0*global_par_parameter_6*x(32);

% Reaction: id = reaction_119, name = Ca binding to camT_ca3_ABC site D
	reaction_reaction_119=compartment_compartment_0*global_par_parameter_0*x(29)*x(2);

% Reaction: id = reaction_120, name = Ca binding to camT_ca3_ABD site C
	reaction_reaction_120=compartment_compartment_0*global_par_parameter_0*x(30)*x(2);

% Reaction: id = reaction_121, name = Ca binding to camT_ca3_ACD site B
	reaction_reaction_121=compartment_compartment_0*global_par_parameter_0*x(31)*x(2);

% Reaction: id = reaction_122, name = Ca binding to camT_ca3_BCD site A
	reaction_reaction_122=compartment_compartment_0*global_par_parameter_0*x(32)*x(2);

% Reaction: id = reaction_123, name = Ca dissociating from camT_ca4_ABCD site D
	reaction_reaction_123=compartment_compartment_0*global_par_parameter_8*x(33);

% Reaction: id = reaction_124, name = Ca dissociating from camT_ca4_ABCD site C
	reaction_reaction_124=compartment_compartment_0*global_par_parameter_7*x(33);

% Reaction: id = reaction_125, name = Ca dissociating from camT_ca4_ABCD site B
	reaction_reaction_125=compartment_compartment_0*global_par_parameter_6*x(33);

% Reaction: id = reaction_126, name = Ca dissociating from camT_ca4_ABCD site A
	reaction_reaction_126=compartment_compartment_0*global_par_parameter_5*x(33);

% Reaction: id = reaction_127, name = Transition camR to camT
	reaction_reaction_127=compartment_compartment_0*global_par_parameter_9*x(1);

% Reaction: id = reaction_128, name = Transition camT to camR
	reaction_reaction_128=compartment_compartment_0*global_par_parameter_10*x(18);

% Reaction: id = reaction_129, name = Transition camR_ca1_A to camT_ca1_A
	reaction_reaction_129=compartment_compartment_0*transition1_R_T(global_par_parameter_9, global_par_parameter_10, x(3));

% Reaction: id = reaction_130, name = Transition camR_ca1_B to camT_ca1_B
	reaction_reaction_130=compartment_compartment_0*transition1_R_T(global_par_parameter_9, global_par_parameter_12, x(4));

% Reaction: id = reaction_131, name = Transition camR_ca1_C to camT_ca1_C
	reaction_reaction_131=compartment_compartment_0*transition1_R_T(global_par_parameter_9, global_par_parameter_13, x(5));

% Reaction: id = reaction_132, name = Transition camR_ca1_D to camT_ca1_D
	reaction_reaction_132=compartment_compartment_0*transition1_R_T(global_par_parameter_9, global_par_parameter_14, x(6));

% Reaction: id = reaction_133, name = Transition camT_ca1_A to camR_ca1_A
	reaction_reaction_133=compartment_compartment_0*function_1(global_par_parameter_10, global_par_parameter_11, x(19));

% Reaction: id = reaction_134, name = Transition camT_ca1_B to camR_ca1_B
	reaction_reaction_134=compartment_compartment_0*function_2(global_par_parameter_10, global_par_parameter_12, x(20));

% Reaction: id = reaction_135, name = Transition camT_ca1_C to camR_ca1_C
	reaction_reaction_135=compartment_compartment_0*function_3(global_par_parameter_10, global_par_parameter_13, x(21));

% Reaction: id = reaction_136, name = Transition camT_ca1_D to camR_ca1_D
	reaction_reaction_136=compartment_compartment_0*function_4(global_par_parameter_10, global_par_parameter_14, x(22));

% Reaction: id = reaction_137, name = Transition camR_ca2_AB to camT_ca2_AB
	reaction_reaction_137=compartment_compartment_0*function_5(global_par_parameter_11, global_par_parameter_12, global_par_parameter_9, x(7));

% Reaction: id = reaction_138, name = Transition camR_ca2_AC to camT_ca2_AC
	reaction_reaction_138=compartment_compartment_0*function_6(global_par_parameter_11, global_par_parameter_13, global_par_parameter_9, x(8));

% Reaction: id = reaction_139, name = Transition camR_ca2_AD to camT_ca2_AD
	reaction_reaction_139=compartment_compartment_0*function_7(global_par_parameter_11, global_par_parameter_14, global_par_parameter_9, x(9));

% Reaction: id = reaction_140, name = Transition camR_ca2_BC to camT_ca2_BC
	reaction_reaction_140=compartment_compartment_0*function_8(global_par_parameter_12, global_par_parameter_13, global_par_parameter_9, x(10));

% Reaction: id = reaction_141, name = Transition camR_ca2_BD to camT_ca2_BD
	reaction_reaction_141=compartment_compartment_0*function_9(global_par_parameter_12, global_par_parameter_14, global_par_parameter_9, x(11));

% Reaction: id = reaction_142, name = Transition camR_ca2_CD to camT_ca2_CD
	reaction_reaction_142=compartment_compartment_0*function_10(global_par_parameter_13, global_par_parameter_14, global_par_parameter_9, x(12));

% Reaction: id = reaction_143, name = Transition camT_ca2_AB to camR_ca2_AB
	reaction_reaction_143=compartment_compartment_0*function_11(global_par_parameter_10, global_par_parameter_11, global_par_parameter_12, x(23));

% Reaction: id = reaction_144, name = Transition camT_ca2_AC to camR_ca2_AC
	reaction_reaction_144=compartment_compartment_0*function_12(global_par_parameter_10, global_par_parameter_11, global_par_parameter_13, x(24));

% Reaction: id = reaction_145, name = Transition camT_ca2_AD to camR_ca2_AD
	reaction_reaction_145=compartment_compartment_0*function_13(global_par_parameter_10, global_par_parameter_11, global_par_parameter_14, x(25));

% Reaction: id = reaction_146, name = Transition camT_ca2_BC to camR_ca2_BC
	reaction_reaction_146=compartment_compartment_0*function_14(global_par_parameter_10, global_par_parameter_12, global_par_parameter_13, x(26));

% Reaction: id = reaction_147, name = Transition camT_ca2_BD to camR_ca2_BD
	reaction_reaction_147=compartment_compartment_0*function_15(global_par_parameter_10, global_par_parameter_12, global_par_parameter_14, x(27));

% Reaction: id = reaction_148, name = Transition camT_ca2_CD to camR_ca2_CD
	reaction_reaction_148=compartment_compartment_0*function_16(global_par_parameter_10, global_par_parameter_13, global_par_parameter_14, x(28));

% Reaction: id = reaction_149, name = Transition camR_ca3_ABC to camT_ca3_ABC
	reaction_reaction_149=compartment_compartment_0*function_17(global_par_parameter_11, global_par_parameter_12, global_par_parameter_13, global_par_parameter_9, x(13));

% Reaction: id = reaction_150, name = Transition camR_ca3_ABD to camT_ca3_ABD
	reaction_reaction_150=compartment_compartment_0*function_18(global_par_parameter_11, global_par_parameter_12, global_par_parameter_14, global_par_parameter_9, x(14));

% Reaction: id = reaction_151, name = Transition camR_ca3_ACD to camT_ca3_ACD
	reaction_reaction_151=compartment_compartment_0*function_19(global_par_parameter_11, global_par_parameter_13, global_par_parameter_14, global_par_parameter_9, x(15));

% Reaction: id = reaction_152, name = Transition camR_ca3_BCD to camT_ca3_BCD
	reaction_reaction_152=compartment_compartment_0*function_20(global_par_parameter_12, global_par_parameter_13, global_par_parameter_14, global_par_parameter_9, x(16));

% Reaction: id = reaction_153, name = Transition camT_ca3_ABC to camR_ca3_ABC
	reaction_reaction_153=compartment_compartment_0*function_21(global_par_parameter_10, global_par_parameter_11, global_par_parameter_12, global_par_parameter_13, x(29));

% Reaction: id = reaction_154, name = Transition camT_ca3_ABD to camR_ca3_ABD
	reaction_reaction_154=compartment_compartment_0*function_22(global_par_parameter_10, global_par_parameter_11, global_par_parameter_12, global_par_parameter_14, x(30));

% Reaction: id = reaction_155, name = Transition camT_ca3_ACD to camR_ca3_ACD
	reaction_reaction_155=compartment_compartment_0*function_23(global_par_parameter_10, global_par_parameter_11, global_par_parameter_13, global_par_parameter_14, x(31));

% Reaction: id = reaction_156, name = Transition camT_ca3_BCD to camR_ca3_BCD
	reaction_reaction_156=compartment_compartment_0*function_24(global_par_parameter_10, global_par_parameter_12, global_par_parameter_13, global_par_parameter_14, x(32));

% Reaction: id = reaction_157, name = Transition camR_ca4_ABCD to camT_ca4_ABCD
	reaction_reaction_157=compartment_compartment_0*function_25(global_par_parameter_11, global_par_parameter_12, global_par_parameter_13, global_par_parameter_14, global_par_parameter_9, x(17));

% Reaction: id = reaction_158, name = Transition camT_ca4_ABCD to camR_ca4_ABCD
	reaction_reaction_158=compartment_compartment_0*function_26(global_par_parameter_10, global_par_parameter_11, global_par_parameter_12, global_par_parameter_13, global_par_parameter_14, x(33));

% Reaction: id = reaction_159, name = CaMKII binding to camR
	reaction_reaction_159=compartment_compartment_0*global_par_parameter_15*x(1)*x(34);

% Reaction: id = reaction_160, name = CaMKII binding to camR_ca1_A
	reaction_reaction_160=compartment_compartment_0*global_par_parameter_15*x(3)*x(34);

% Reaction: id = reaction_161, name = CaMKII binding to camR_ca1_B
	reaction_reaction_161=compartment_compartment_0*global_par_parameter_15*x(4)*x(34);

% Reaction: id = reaction_162, name = CaMKII binding to camR_ca1_C
	reaction_reaction_162=compartment_compartment_0*global_par_parameter_15*x(5)*x(34);

% Reaction: id = reaction_163, name = CaMKII binding to camR_ca1_D
	reaction_reaction_163=compartment_compartment_0*global_par_parameter_15*x(6)*x(34);

% Reaction: id = reaction_164, name = CaMKII binding to camR_ca2_AB
	reaction_reaction_164=compartment_compartment_0*global_par_parameter_15*x(7)*x(34);

% Reaction: id = reaction_165, name = CaMKII binding to camR_ca2_AC
	reaction_reaction_165=compartment_compartment_0*global_par_parameter_15*x(8)*x(34);

% Reaction: id = reaction_166, name = CaMKII binding to camR_ca2_AD
	reaction_reaction_166=compartment_compartment_0*global_par_parameter_15*x(9)*x(34);

% Reaction: id = reaction_167, name = CaMKII binding to camR_ca2_BC
	reaction_reaction_167=compartment_compartment_0*global_par_parameter_15*x(10)*x(34);

% Reaction: id = reaction_168, name = CaMKII binding to camR_ca2_BD
	reaction_reaction_168=compartment_compartment_0*global_par_parameter_15*x(11)*x(34);

% Reaction: id = reaction_169, name = CaMKII binding to camR_ca2_CD
	reaction_reaction_169=compartment_compartment_0*global_par_parameter_15*x(12)*x(34);

% Reaction: id = reaction_170, name = CaMKII binding to camR_ca3_ABC
	reaction_reaction_170=compartment_compartment_0*global_par_parameter_15*x(13)*x(34);

% Reaction: id = reaction_171, name = CaMKII binding to camR_ca3_ABD
	reaction_reaction_171=compartment_compartment_0*global_par_parameter_15*x(14)*x(34);

% Reaction: id = reaction_172, name = CaMKII binding to camR_ca3_ACD
	reaction_reaction_172=compartment_compartment_0*global_par_parameter_15*x(15)*x(34);

% Reaction: id = reaction_173, name = CaMKII binding to camR_ca3_BCD
	reaction_reaction_173=compartment_compartment_0*global_par_parameter_15*x(16)*x(34);

% Reaction: id = reaction_174, name = CaMKII binding to camR_ca4_ABCD
	reaction_reaction_174=compartment_compartment_0*global_par_parameter_15*x(17)*x(34);

% Reaction: id = reaction_175, name = CaMKII dissociation from camR
	reaction_reaction_175=compartment_compartment_0*global_par_parameter_16*x(35);

% Reaction: id = reaction_176, name = CaMKII dissociation from camR_ca1_A
	reaction_reaction_176=compartment_compartment_0*global_par_parameter_16*x(36);

% Reaction: id = reaction_177, name = CaMKII dissociation from camR_ca1_B
	reaction_reaction_177=compartment_compartment_0*global_par_parameter_16*x(37);

% Reaction: id = reaction_178, name = CaMKII dissociation from camR_ca1_C
	reaction_reaction_178=compartment_compartment_0*global_par_parameter_16*x(38);

% Reaction: id = reaction_179, name = CaMKII dissociation from camR_ca1_D
	reaction_reaction_179=compartment_compartment_0*global_par_parameter_16*x(39);

% Reaction: id = reaction_180, name = CaMKII dissociation from camR_ca2_AB
	reaction_reaction_180=compartment_compartment_0*global_par_parameter_16*x(40);

% Reaction: id = reaction_181, name = CaMKII dissociation from camR_ca2_AC
	reaction_reaction_181=compartment_compartment_0*global_par_parameter_16*x(41);

% Reaction: id = reaction_182, name = CaMKII dissociation from camR_ca2_AD
	reaction_reaction_182=compartment_compartment_0*global_par_parameter_16*x(42);

% Reaction: id = reaction_183, name = CaMKII dissociation from camR_ca2_BC
	reaction_reaction_183=compartment_compartment_0*global_par_parameter_16*x(43);

% Reaction: id = reaction_184, name = CaMKII dissociation from camR_ca2_BD
	reaction_reaction_184=compartment_compartment_0*global_par_parameter_16*x(44);

% Reaction: id = reaction_185, name = CaMKII dissociation from camR_ca2_CD
	reaction_reaction_185=compartment_compartment_0*global_par_parameter_16*x(45);

% Reaction: id = reaction_186, name = CaMKII dissociation from camR_ca3_ABC
	reaction_reaction_186=compartment_compartment_0*global_par_parameter_16*x(46);

% Reaction: id = reaction_187, name = CaMKII dissociation from camR_ca3_ABD
	reaction_reaction_187=compartment_compartment_0*global_par_parameter_16*x(47);

% Reaction: id = reaction_188, name = CaMKII dissociation from camR_ca3_ACD
	reaction_reaction_188=compartment_compartment_0*global_par_parameter_16*x(48);

% Reaction: id = reaction_189, name = CaMKII dissociation from camR_ca3_BCD
	reaction_reaction_189=compartment_compartment_0*global_par_parameter_16*x(49);

% Reaction: id = reaction_190, name = CaMKII dissociation from camR_ca4_ABCD
	reaction_reaction_190=compartment_compartment_0*global_par_parameter_16*x(50);

% Reaction: id = reaction_191, name = PP2B binding to camR
	reaction_reaction_191=compartment_compartment_0*global_par_parameter_17*x(1)*x(51);

% Reaction: id = reaction_192, name = PP2B binding to camR_ca1_A
	reaction_reaction_192=compartment_compartment_0*global_par_parameter_17*x(3)*x(51);

% Reaction: id = reaction_193, name = PP2B binding to camR_ca1_B
	reaction_reaction_193=compartment_compartment_0*global_par_parameter_17*x(4)*x(51);

% Reaction: id = reaction_194, name = PP2B binding to camR_ca1_C
	reaction_reaction_194=compartment_compartment_0*global_par_parameter_17*x(5)*x(51);

% Reaction: id = reaction_195, name = PP2B binding to camR_ca1_D
	reaction_reaction_195=compartment_compartment_0*global_par_parameter_17*x(6)*x(51);

% Reaction: id = reaction_196, name = PP2B binding to camR_ca2_AB
	reaction_reaction_196=compartment_compartment_0*global_par_parameter_17*x(7)*x(51);

% Reaction: id = reaction_197, name = PP2B binding to camR_ca2_AC
	reaction_reaction_197=compartment_compartment_0*global_par_parameter_17*x(8)*x(51);

% Reaction: id = reaction_198, name = PP2B binding to camR_ca2_AD
	reaction_reaction_198=compartment_compartment_0*global_par_parameter_17*x(9)*x(51);

% Reaction: id = reaction_199, name = PP2B binding to camR_ca2_BC
	reaction_reaction_199=compartment_compartment_0*global_par_parameter_17*x(10)*x(51);

% Reaction: id = reaction_200, name = PP2B binding to camR_ca2_BD
	reaction_reaction_200=compartment_compartment_0*global_par_parameter_17*x(11)*x(51);

% Reaction: id = reaction_201, name = PP2B binding to camR_ca2_CD
	reaction_reaction_201=compartment_compartment_0*global_par_parameter_17*x(12)*x(51);

% Reaction: id = reaction_202, name = PP2B binding to camR_ca3_ABC
	reaction_reaction_202=compartment_compartment_0*global_par_parameter_17*x(13)*x(51);

% Reaction: id = reaction_203, name = PP2B binding to camR_ca3_ABD
	reaction_reaction_203=compartment_compartment_0*global_par_parameter_17*x(14)*x(51);

% Reaction: id = reaction_204, name = PP2B binding to camR_ca3_ACD
	reaction_reaction_204=compartment_compartment_0*global_par_parameter_17*x(15)*x(51);

% Reaction: id = reaction_205, name = PP2B binding to camR_ca3_BCD
	reaction_reaction_205=compartment_compartment_0*global_par_parameter_17*x(16)*x(51);

% Reaction: id = reaction_206, name = PP2B binding to camR_ca4_ABCD
	reaction_reaction_206=compartment_compartment_0*global_par_parameter_17*x(17)*x(51);

% Reaction: id = reaction_207, name = PP2B dissociation from camR
	reaction_reaction_207=compartment_compartment_0*global_par_parameter_18*x(52);

% Reaction: id = reaction_208, name = PP2B dissociation from camR_ca1_A
	reaction_reaction_208=compartment_compartment_0*global_par_parameter_18*x(53);

% Reaction: id = reaction_209, name = PP2B dissociation from camR_ca1_B
	reaction_reaction_209=compartment_compartment_0*global_par_parameter_18*x(54);

% Reaction: id = reaction_210, name = PP2B dissociation from camR_ca1_C
	reaction_reaction_210=compartment_compartment_0*global_par_parameter_18*x(55);

% Reaction: id = reaction_211, name = PP2B dissociation from camR_ca1_D
	reaction_reaction_211=compartment_compartment_0*global_par_parameter_18*x(56);

% Reaction: id = reaction_212, name = PP2B dissociation from camR_ca2_AB
	reaction_reaction_212=compartment_compartment_0*global_par_parameter_18*x(57);

% Reaction: id = reaction_213, name = PP2B dissociation from camR_ca2_AC
	reaction_reaction_213=compartment_compartment_0*global_par_parameter_18*x(58);

% Reaction: id = reaction_214, name = PP2B dissociation from camR_ca2_AD
	reaction_reaction_214=compartment_compartment_0*global_par_parameter_18*x(59);

% Reaction: id = reaction_215, name = PP2B dissociation from camR_ca2_BC
	reaction_reaction_215=compartment_compartment_0*global_par_parameter_18*x(60);

% Reaction: id = reaction_216, name = PP2B dissociation from camR_ca2_BD
	reaction_reaction_216=compartment_compartment_0*global_par_parameter_18*x(61);

% Reaction: id = reaction_217, name = PP2B dissociation from camR_ca2_CD
	reaction_reaction_217=compartment_compartment_0*global_par_parameter_18*x(62);

% Reaction: id = reaction_218, name = PP2B dissociation from camR_ca3_ABC
	reaction_reaction_218=compartment_compartment_0*global_par_parameter_18*x(63);

% Reaction: id = reaction_219, name = PP2B dissociation from camR_ca3_ABD
	reaction_reaction_219=compartment_compartment_0*global_par_parameter_18*x(64);

% Reaction: id = reaction_220, name = PP2B dissociation from camR_ca3_ACD
	reaction_reaction_220=compartment_compartment_0*global_par_parameter_18*x(65);

% Reaction: id = reaction_221, name = PP2B dissociation from camR_ca3_BCD
	reaction_reaction_221=compartment_compartment_0*global_par_parameter_18*x(66);

% Reaction: id = reaction_222, name = PP2B dissociation from camR_ca4_ABCD
	reaction_reaction_222=compartment_compartment_0*global_par_parameter_18*x(67);

% Reaction: id = reaction_223, name = Ca binding to camR_CaMKII site A
	reaction_reaction_223=compartment_compartment_0*global_par_parameter_0*x(35)*x(2);

% Reaction: id = reaction_224, name = Ca binding to camR_CaMKII site B
	reaction_reaction_224=compartment_compartment_0*global_par_parameter_0*x(35)*x(2);

% Reaction: id = reaction_225, name = Ca binding to camR_CaMKII site C
	reaction_reaction_225=compartment_compartment_0*global_par_parameter_0*x(35)*x(2);

% Reaction: id = reaction_226, name = Ca binding to camR_CaMKII site D
	reaction_reaction_226=compartment_compartment_0*global_par_parameter_0*x(35)*x(2);

% Reaction: id = reaction_227, name = Ca dissociation from camR_ca1_CaMKII site A
	reaction_reaction_227=compartment_compartment_0*global_par_parameter_1*x(36);

% Reaction: id = reaction_228, name = Ca dissociation from camR_ca1_CaMKII site C
	reaction_reaction_228=compartment_compartment_0*global_par_parameter_3*x(38);

% Reaction: id = reaction_229, name = Ca dissociation from camR_ca1_CaMKII site D
	reaction_reaction_229=compartment_compartment_0*global_par_parameter_4*x(39);

% Reaction: id = reaction_230, name = Ca binding to camR_ca1_A_CaMKII site B
	reaction_reaction_230=compartment_compartment_0*global_par_parameter_0*x(36)*x(2);

% Reaction: id = reaction_231, name = Ca binding to camR_ca1_A_CaMKII site C
	reaction_reaction_231=compartment_compartment_0*global_par_parameter_0*x(36)*x(2);

% Reaction: id = reaction_232, name = Ca binding to camR_ca1_A_CaMKII site D
	reaction_reaction_232=compartment_compartment_0*global_par_parameter_0*x(36)*x(2);

% Reaction: id = reaction_233, name = Ca binding to camR_ca1_B_CaMKII site A
	reaction_reaction_233=compartment_compartment_0*global_par_parameter_0*x(37)*x(2);

% Reaction: id = reaction_234, name = Ca binding to camR_ca1_B_CaMKII site C
	reaction_reaction_234=compartment_compartment_0*global_par_parameter_0*x(37)*x(2);

% Reaction: id = reaction_235, name = Ca binding to camR_ca1_B_CaMKII site D
	reaction_reaction_235=compartment_compartment_0*global_par_parameter_0*x(37)*x(2);

% Reaction: id = reaction_236, name = Ca binding to camR_ca1_C_CaMKII site A
	reaction_reaction_236=compartment_compartment_0*global_par_parameter_0*x(38)*x(2);

% Reaction: id = reaction_237, name = Ca binding to camR_ca1_C_CaMKII site B
	reaction_reaction_237=compartment_compartment_0*global_par_parameter_0*x(38)*x(2);

% Reaction: id = reaction_238, name = Ca binding to camR_ca1_C_CaMKII site D
	reaction_reaction_238=compartment_compartment_0*global_par_parameter_0*x(38)*x(2);

% Reaction: id = reaction_239, name = Ca binding to camR_ca1_D_CaMKII site A
	reaction_reaction_239=compartment_compartment_0*global_par_parameter_0*x(39)*x(2);

% Reaction: id = reaction_240, name = Ca binding to camR_ca1_D_CaMKII site B
	reaction_reaction_240=compartment_compartment_0*global_par_parameter_0*x(39)*x(2);

% Reaction: id = reaction_241, name = Ca binding to camR_ca1_D_CaMKII site C
	reaction_reaction_241=compartment_compartment_0*global_par_parameter_0*x(39)*x(2);

% Reaction: id = reaction_242, name = Ca dissociation from camR_ca2_AB_CaMKII site A
	reaction_reaction_242=compartment_compartment_0*global_par_parameter_1*x(40);

% Reaction: id = reaction_243, name = Ca dissociation from camR_ca2_AB_CaMKII site B
	reaction_reaction_243=compartment_compartment_0*global_par_parameter_2*x(40);

% Reaction: id = reaction_244, name = Ca dissociation from camR_ca2_AC_CaMKII site A
	reaction_reaction_244=compartment_compartment_0*global_par_parameter_1*x(41);

% Reaction: id = reaction_245, name = Ca dissociation from camR_ca2_AC_CaMKII site C
	reaction_reaction_245=compartment_compartment_0*global_par_parameter_3*x(41);

% Reaction: id = reaction_246, name = Ca dissociation from camR_ca2_AD_CaMKII site A
	reaction_reaction_246=compartment_compartment_0*global_par_parameter_1*x(42);

% Reaction: id = reaction_247, name = Ca dissociation from camR_ca2_AD_CaMKII site D
	reaction_reaction_247=compartment_compartment_0*global_par_parameter_4*x(42);

% Reaction: id = reaction_248, name = Ca dissociation from camR_ca2_BC_CaMKII site B
	reaction_reaction_248=compartment_compartment_0*global_par_parameter_2*x(43);

% Reaction: id = reaction_249, name = Ca dissociation from camR_ca2_BC_CaMKII site C
	reaction_reaction_249=compartment_compartment_0*global_par_parameter_3*x(43);

% Reaction: id = reaction_250, name = Ca dissociation from camR_ca2_BD_CaMKII site B
	reaction_reaction_250=compartment_compartment_0*global_par_parameter_2*x(44);

% Reaction: id = reaction_251, name = Ca dissociation from camR_ca2_BD_CaMKII site D
	reaction_reaction_251=compartment_compartment_0*global_par_parameter_4*x(44);

% Reaction: id = reaction_252, name = Ca dissociation from camR_ca2_CD_CaMKII site C
	reaction_reaction_252=compartment_compartment_0*global_par_parameter_3*x(45);

% Reaction: id = reaction_253, name = Ca dissociation from camR_ca2_CD_CaMKII site D
	reaction_reaction_253=compartment_compartment_0*global_par_parameter_4*x(45);

% Reaction: id = reaction_254, name = Ca binding to camR_ca2_AB_CaMKII site C
	reaction_reaction_254=compartment_compartment_0*global_par_parameter_0*x(40)*x(2);

% Reaction: id = reaction_255, name = Ca binding to camR_ca2_AB_CaMKII site D
	reaction_reaction_255=compartment_compartment_0*global_par_parameter_0*x(40)*x(2);

% Reaction: id = reaction_256, name = Ca binding to camR_ca2_AC_CaMKII site B
	reaction_reaction_256=compartment_compartment_0*global_par_parameter_0*x(41)*x(2);

% Reaction: id = reaction_257, name = Ca binding to camR_ca2_AC_CaMKII site D
	reaction_reaction_257=compartment_compartment_0*global_par_parameter_0*x(41)*x(2);

% Reaction: id = reaction_258, name = Ca binding to camR_ca2_AD_CaMKII site B
	reaction_reaction_258=compartment_compartment_0*global_par_parameter_0*x(42)*x(2);

% Reaction: id = reaction_259, name = Ca binding to camR_ca2_AD_CaMKII site C
	reaction_reaction_259=compartment_compartment_0*global_par_parameter_0*x(42)*x(2);

% Reaction: id = reaction_260, name = Ca binding to camR_ca2_BC_CaMKII site A
	reaction_reaction_260=compartment_compartment_0*global_par_parameter_0*x(43)*x(2);

% Reaction: id = reaction_261, name = Ca binding to camR_ca2_BC_CaMKII site D
	reaction_reaction_261=compartment_compartment_0*global_par_parameter_0*x(43)*x(2);

% Reaction: id = reaction_262, name = Ca binding to camR_ca2_BD_CaMKII site A
	reaction_reaction_262=compartment_compartment_0*global_par_parameter_0*x(44)*x(2);

% Reaction: id = reaction_263, name = Ca binding to camR_ca2_BD_CaMKII site C
	reaction_reaction_263=compartment_compartment_0*global_par_parameter_0*x(44)*x(2);

% Reaction: id = reaction_264, name = Ca binding to camR_ca2_CD_CaMKII site A
	reaction_reaction_264=compartment_compartment_0*global_par_parameter_0*x(45)*x(2);

% Reaction: id = reaction_265, name = Ca binding to camR_ca2_CD_CaMKII site B
	reaction_reaction_265=compartment_compartment_0*global_par_parameter_0*x(45)*x(2);

% Reaction: id = reaction_266, name = Ca dissociation from camR_ca3_ABC_CaMKII site C
	reaction_reaction_266=compartment_compartment_0*global_par_parameter_3*x(46);

% Reaction: id = reaction_267, name = Ca dissociation from camR_ca3_ABC_CaMKII site B
	reaction_reaction_267=compartment_compartment_0*global_par_parameter_2*x(46);

% Reaction: id = reaction_268, name = Ca dissociation from camR_ca3_ABC_CaMKII site A
	reaction_reaction_268=compartment_compartment_0*global_par_parameter_1*x(46);

% Reaction: id = reaction_269, name = Ca dissociation from camR_ca3_ABD_CaMKII site D
	reaction_reaction_269=compartment_compartment_0*global_par_parameter_4*x(47);

% Reaction: id = reaction_270, name = Ca dissociation from camR_ca3_ABD_CaMKII site B
	reaction_reaction_270=compartment_compartment_0*global_par_parameter_2*x(47);

% Reaction: id = reaction_271, name = Ca dissociation from camR_ca3_ABD_CaMKII site A
	reaction_reaction_271=compartment_compartment_0*global_par_parameter_1*x(47);

% Reaction: id = reaction_272, name = Ca dissociation from camR_ca3_ACD_CaMKII site D
	reaction_reaction_272=compartment_compartment_0*global_par_parameter_4*x(48);

% Reaction: id = reaction_273, name = Ca dissociation from camR_ca3_ACD_CaMKII site C
	reaction_reaction_273=compartment_compartment_0*global_par_parameter_3*x(48);

% Reaction: id = reaction_274, name = Ca dissociation from camR_ca3_ACD_CaMKII site A
	reaction_reaction_274=compartment_compartment_0*global_par_parameter_1*x(48);

% Reaction: id = reaction_275, name = Ca dissociation from camR_ca3_BCD_CaMKII site D
	reaction_reaction_275=compartment_compartment_0*global_par_parameter_4*x(49);

% Reaction: id = reaction_276, name = Ca dissociation from camR_ca3_BCD_CaMKII site C
	reaction_reaction_276=compartment_compartment_0*global_par_parameter_3*x(49);

% Reaction: id = reaction_277, name = Ca dissociation from camR_ca3_BCD_CaMKII site B
	reaction_reaction_277=compartment_compartment_0*global_par_parameter_2*x(49);

% Reaction: id = reaction_278, name = Ca binding to camR_ca3_BCD_CaMKII site A
	reaction_reaction_278=compartment_compartment_0*global_par_parameter_0*x(49)*x(2);

% Reaction: id = reaction_279, name = Ca binding to camR_ca3_ACD_CaMKII site B
	reaction_reaction_279=compartment_compartment_0*global_par_parameter_0*x(48)*x(2);

% Reaction: id = reaction_280, name = Ca binding to camR_ca3_ABD_CaMKII site C
	reaction_reaction_280=compartment_compartment_0*global_par_parameter_0*x(47)*x(2);

% Reaction: id = reaction_281, name = Ca binding to camR_ca3_ABC_CaMKII site D
	reaction_reaction_281=compartment_compartment_0*global_par_parameter_0*x(46)*x(2);

% Reaction: id = reaction_282, name = Ca dissociation from camR_ca4_ABCD_CaMKII site A
	reaction_reaction_282=compartment_compartment_0*global_par_parameter_1*x(50);

% Reaction: id = reaction_283, name = Ca dissociation from camR_ca4_ABCD_CaMKII site B
	reaction_reaction_283=compartment_compartment_0*global_par_parameter_2*x(50);

% Reaction: id = reaction_284, name = Ca dissociation from camR_ca4_ABCD_CaMKII site C
	reaction_reaction_284=compartment_compartment_0*global_par_parameter_3*x(50);

% Reaction: id = reaction_285, name = Ca dissociation from camR_ca4_ABCD_CaMKII site D
	reaction_reaction_285=compartment_compartment_0*global_par_parameter_4*x(50);

% Reaction: id = reaction_286, name = Ca binding to camR_PP2B site A
	reaction_reaction_286=compartment_compartment_0*global_par_parameter_0*x(52)*x(2);

% Reaction: id = reaction_287, name = Ca binding to camR_PP2B site B
	reaction_reaction_287=compartment_compartment_0*global_par_parameter_0*x(52)*x(2);

% Reaction: id = reaction_288, name = Ca binding to camR_PP2B site C
	reaction_reaction_288=compartment_compartment_0*global_par_parameter_0*x(52)*x(2);

% Reaction: id = reaction_289, name = Ca binding to camR_PP2B site D
	reaction_reaction_289=compartment_compartment_0*global_par_parameter_0*x(52)*x(2);

% Reaction: id = reaction_290, name = Ca dissociation from camR_ca1_A_PP2B site A
	reaction_reaction_290=compartment_compartment_0*global_par_parameter_1*x(53);

% Reaction: id = reaction_291, name = Ca dissociation from camR_ca1_B_PP2B site B
	reaction_reaction_291=compartment_compartment_0*global_par_parameter_2*x(54);

% Reaction: id = reaction_292, name = Ca dissociation from camR_ca1_C_PP2B site C
	reaction_reaction_292=compartment_compartment_0*global_par_parameter_3*x(55);

% Reaction: id = reaction_293, name = Ca dissociation from camR_ca1_D_PP2B site D
	reaction_reaction_293=compartment_compartment_0*global_par_parameter_4*x(56);

% Reaction: id = reaction_294, name = Ca binding to camR_ca1_A_PP2B site B
	reaction_reaction_294=compartment_compartment_0*global_par_parameter_0*x(53)*x(2);

% Reaction: id = reaction_295, name = Ca binding to camR_ca1_A_PP2B site C
	reaction_reaction_295=compartment_compartment_0*global_par_parameter_0*x(53)*x(2);

% Reaction: id = reaction_296, name = Ca binding to camR_ca1_A_PP2B site D
	reaction_reaction_296=compartment_compartment_0*global_par_parameter_0*x(53)*x(2);

% Reaction: id = reaction_297, name = Ca binding to camR_ca1_B_PP2B site A
	reaction_reaction_297=compartment_compartment_0*global_par_parameter_0*x(54)*x(2);

% Reaction: id = reaction_298, name = Ca binding to camR_ca1_B_PP2B site C
	reaction_reaction_298=compartment_compartment_0*global_par_parameter_0*x(54)*x(2);

% Reaction: id = reaction_299, name = Ca binding to camR_ca1_B_PP2B site D
	reaction_reaction_299=compartment_compartment_0*global_par_parameter_0*x(54)*x(2);

% Reaction: id = reaction_300, name = Ca binding to camR_ca1_C_PP2B site A
	reaction_reaction_300=compartment_compartment_0*global_par_parameter_0*x(55)*x(2);

% Reaction: id = reaction_301, name = Ca binding to camR_ca1_C_PP2B site B
	reaction_reaction_301=compartment_compartment_0*global_par_parameter_0*x(55)*x(2);

% Reaction: id = reaction_302, name = Ca binding to camR_ca1_C_PP2B site D
	reaction_reaction_302=compartment_compartment_0*global_par_parameter_0*x(55)*x(2);

% Reaction: id = reaction_303, name = Ca binding to camR_ca1_D_PP2B site A
	reaction_reaction_303=compartment_compartment_0*global_par_parameter_0*x(56)*x(2);

% Reaction: id = reaction_304, name = Ca binding to camR_ca1_D_PP2B site B
	reaction_reaction_304=compartment_compartment_0*global_par_parameter_0*x(56)*x(2);

% Reaction: id = reaction_305, name = Ca binding to camR_ca1_D_PP2B site C
	reaction_reaction_305=compartment_compartment_0*global_par_parameter_0*x(56)*x(2);

% Reaction: id = reaction_306, name = Ca dissociating from camR_ca2_AB_PP2B site A
	reaction_reaction_306=compartment_compartment_0*global_par_parameter_1*x(57);

% Reaction: id = reaction_307, name = Ca dissociating from camR_ca2_AB_PP2B site B
	reaction_reaction_307=compartment_compartment_0*global_par_parameter_2*x(57);

% Reaction: id = reaction_308, name = Ca dissociating from camR_ca2_AC_PP2B site A
	reaction_reaction_308=compartment_compartment_0*global_par_parameter_1*x(58);

% Reaction: id = reaction_309, name = Ca dissociating from camR_ca2_AC_PP2B site C
	reaction_reaction_309=compartment_compartment_0*global_par_parameter_3*x(58);

% Reaction: id = reaction_310, name = Ca dissociating from camR_ca2_AD_PP2B site A
	reaction_reaction_310=compartment_compartment_0*global_par_parameter_1*x(59);

% Reaction: id = reaction_311, name = Ca dissociating from camR_ca2_AD_PP2B site D
	reaction_reaction_311=compartment_compartment_0*global_par_parameter_4*x(59);

% Reaction: id = reaction_312, name = Ca dissociating from camR_ca2_BC_PP2B site B
	reaction_reaction_312=compartment_compartment_0*global_par_parameter_2*x(60);

% Reaction: id = reaction_313, name = Ca dissociating from camR_ca2_BC_PP2B site C
	reaction_reaction_313=compartment_compartment_0*global_par_parameter_3*x(60);

% Reaction: id = reaction_314, name = Ca dissociating from camR_ca2_BD_PP2B site B
	reaction_reaction_314=compartment_compartment_0*global_par_parameter_2*x(61);

% Reaction: id = reaction_315, name = Ca dissociating from camR_ca2_BD_PP2B site D
	reaction_reaction_315=compartment_compartment_0*global_par_parameter_4*x(61);

% Reaction: id = reaction_316, name = Ca dissociating from camR_ca2_CD_PP2B site C
	reaction_reaction_316=compartment_compartment_0*global_par_parameter_3*x(62);

% Reaction: id = reaction_317, name = Ca dissociating from camR_ca2_CD_PP2B site D
	reaction_reaction_317=compartment_compartment_0*global_par_parameter_4*x(62);

% Reaction: id = reaction_318, name = Ca binding to camR_ca2_AB_PP2B site C
	reaction_reaction_318=compartment_compartment_0*global_par_parameter_0*x(57)*x(2);

% Reaction: id = reaction_319, name = Ca binding to camR_ca2_AB_PP2B site D
	reaction_reaction_319=compartment_compartment_0*global_par_parameter_0*x(57)*x(2);

% Reaction: id = reaction_320, name = Ca binding to camR_ca2_AC_PP2B site B
	reaction_reaction_320=compartment_compartment_0*global_par_parameter_0*x(58)*x(2);

% Reaction: id = reaction_321, name = Ca binding to camR_ca2_AC_PP2B site D
	reaction_reaction_321=compartment_compartment_0*global_par_parameter_0*x(58)*x(2);

% Reaction: id = reaction_322, name = Ca binding to camR_ca2_AD_PP2B site B
	reaction_reaction_322=compartment_compartment_0*global_par_parameter_0*x(59)*x(2);

% Reaction: id = reaction_323, name = Ca binding to camR_ca2_AD_PP2B site C
	reaction_reaction_323=compartment_compartment_0*global_par_parameter_0*x(59)*x(2);

% Reaction: id = reaction_324, name = Ca binding to camR_ca2_BC_PP2B site A
	reaction_reaction_324=compartment_compartment_0*global_par_parameter_0*x(60)*x(2);

% Reaction: id = reaction_325, name = Ca binding to camR_ca2_BC_PP2B site D
	reaction_reaction_325=compartment_compartment_0*global_par_parameter_0*x(60)*x(2);

% Reaction: id = reaction_326, name = Ca binding to camR_ca2_BD_PP2B site A
	reaction_reaction_326=compartment_compartment_0*global_par_parameter_0*x(61)*x(2);

% Reaction: id = reaction_327, name = Ca binding to camR_ca2_BD_PP2B site C
	reaction_reaction_327=compartment_compartment_0*global_par_parameter_0*x(61)*x(2);

% Reaction: id = reaction_328, name = Ca binding to camR_ca2_CD_PP2B site A
	reaction_reaction_328=compartment_compartment_0*global_par_parameter_0*x(62)*x(2);

% Reaction: id = reaction_329, name = Ca binding to camR_ca2_CD_PP2B site B
	reaction_reaction_329=compartment_compartment_0*global_par_parameter_0*x(62)*x(2);

% Reaction: id = reaction_330, name = Ca dissociation from camR_ca3_ABC_PP2B site A
	reaction_reaction_330=compartment_compartment_0*global_par_parameter_1*x(63);

% Reaction: id = reaction_331, name = Ca dissociation from camR_ca3_ABC_PP2B site B
	reaction_reaction_331=compartment_compartment_0*global_par_parameter_2*x(63);

% Reaction: id = reaction_332, name = Ca dissociation from camR_ca3_ABC_PP2B site C
	reaction_reaction_332=compartment_compartment_0*global_par_parameter_3*x(63);

% Reaction: id = reaction_333, name = Ca dissociation from camR_ca3_ABD_PP2B site A
	reaction_reaction_333=compartment_compartment_0*global_par_parameter_1*x(64);

% Reaction: id = reaction_334, name = Ca dissociation from camR_ca3_ABD_PP2B site B
	reaction_reaction_334=compartment_compartment_0*global_par_parameter_2*x(64);

% Reaction: id = reaction_335, name = Ca dissociation from camR_ca3_ABD_PP2B site D
	reaction_reaction_335=compartment_compartment_0*global_par_parameter_4*x(64);

% Reaction: id = reaction_336, name = Ca dissociation from camR_ca3_ACD_PP2B site A
	reaction_reaction_336=compartment_compartment_0*global_par_parameter_1*x(65);

% Reaction: id = reaction_337, name = Ca dissociation from camR_ca3_ACD_PP2B site C
	reaction_reaction_337=compartment_compartment_0*global_par_parameter_3*x(65);

% Reaction: id = reaction_338, name = Ca dissociation from camR_ca3_ACD_PP2B site D
	reaction_reaction_338=compartment_compartment_0*global_par_parameter_4*x(65);

% Reaction: id = reaction_339, name = Ca dissociation from camR_ca3_BCD_PP2B site B
	reaction_reaction_339=compartment_compartment_0*global_par_parameter_2*x(66);

% Reaction: id = reaction_340, name = Ca dissociation from camR_ca3_BCD_PP2B site C
	reaction_reaction_340=compartment_compartment_0*global_par_parameter_3*x(66);

% Reaction: id = reaction_341, name = Ca dissociation from camR_ca3_BCD_PP2B site D
	reaction_reaction_341=compartment_compartment_0*global_par_parameter_4*x(66);

% Reaction: id = reaction_342, name = Ca binding to camR_ca3_ABC_PP2B site D
	reaction_reaction_342=compartment_compartment_0*global_par_parameter_0*x(63)*x(2);

% Reaction: id = reaction_343, name = Ca binding to camR_ca3_ABD_PP2B site C
	reaction_reaction_343=compartment_compartment_0*global_par_parameter_0*x(64)*x(2);

% Reaction: id = reaction_344, name = Ca binding to camR_ca3_ACD_PP2B site B
	reaction_reaction_344=compartment_compartment_0*global_par_parameter_0*x(65)*x(2);

% Reaction: id = reaction_345, name = Ca binding to camR_ca3_BCD_PP2B site A
	reaction_reaction_345=compartment_compartment_0*global_par_parameter_0*x(66)*x(2);

% Reaction: id = reaction_346, name = Ca dissociating from camR_ca4_ABCD_PP2B site A
	reaction_reaction_346=compartment_compartment_0*global_par_parameter_1*x(67);

% Reaction: id = reaction_347, name = Ca dissociating from camR_ca4_ABCD_PP2B site B
	reaction_reaction_347=compartment_compartment_0*global_par_parameter_2*x(67);

% Reaction: id = reaction_348, name = Ca dissociating from camR_ca4_ABCD_PP2B site C
	reaction_reaction_348=compartment_compartment_0*global_par_parameter_3*x(67);

% Reaction: id = reaction_349, name = Ca dissociating from camR_ca4_ABCD_PP2B site D
	reaction_reaction_349=compartment_compartment_0*global_par_parameter_4*x(67);

% Reaction: id = reaction_350, name = Ca dissociation from camR_ca1_CaMKII site B
	reaction_reaction_350=compartment_compartment_0*global_par_parameter_2*x(37);

% Reaction: id = reaction_351, name = Ca dissociating from camT_ca3_ABC site C
	reaction_reaction_351=compartment_compartment_0*global_par_parameter_7*x(29);

	xdot=zeros(67,1);
	
% Species:   id = species_0, name = camR, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_0) + (-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_127) + ( 1.0 * reaction_reaction_128) + (-1.0 * reaction_reaction_159) + ( 1.0 * reaction_reaction_175) + (-1.0 * reaction_reaction_191) + ( 1.0 * reaction_reaction_207));
	
% Species:   id = species_1, name = ca, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_0) + (-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_20) + ( 1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_22) + ( 1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_24) + ( 1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_26) + ( 1.0 * reaction_reaction_27) + ( 1.0 * reaction_reaction_28) + ( 1.0 * reaction_reaction_29) + ( 1.0 * reaction_reaction_30) + ( 1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_33) + (-1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_35) + (-1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_37) + (-1.0 * reaction_reaction_38) + (-1.0 * reaction_reaction_39) + (-1.0 * reaction_reaction_40) + (-1.0 * reaction_reaction_41) + (-1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_43) + ( 1.0 * reaction_reaction_44) + ( 1.0 * reaction_reaction_45) + ( 1.0 * reaction_reaction_46) + ( 1.0 * reaction_reaction_47) + ( 1.0 * reaction_reaction_48) + ( 1.0 * reaction_reaction_49) + ( 1.0 * reaction_reaction_50) + ( 1.0 * reaction_reaction_51) + ( 1.0 * reaction_reaction_52) + ( 1.0 * reaction_reaction_53) + ( 1.0 * reaction_reaction_54) + ( 1.0 * reaction_reaction_55) + (-1.0 * reaction_reaction_56) + (-1.0 * reaction_reaction_57) + (-1.0 * reaction_reaction_58) + (-1.0 * reaction_reaction_59) + ( 1.0 * reaction_reaction_60) + ( 1.0 * reaction_reaction_61) + ( 1.0 * reaction_reaction_62) + ( 1.0 * reaction_reaction_63) + (-1.0 * reaction_reaction_64) + (-1.0 * reaction_reaction_65) + (-1.0 * reaction_reaction_66) + (-1.0 * reaction_reaction_67) + ( 1.0 * reaction_reaction_68) + ( 1.0 * reaction_reaction_69) + ( 1.0 * reaction_reaction_70) + ( 1.0 * reaction_reaction_71) + (-1.0 * reaction_reaction_72) + (-1.0 * reaction_reaction_73) + (-1.0 * reaction_reaction_74) + (-1.0 * reaction_reaction_75) + (-1.0 * reaction_reaction_76) + (-1.0 * reaction_reaction_77) + (-1.0 * reaction_reaction_78) + (-1.0 * reaction_reaction_79) + (-1.0 * reaction_reaction_80) + (-1.0 * reaction_reaction_81) + (-1.0 * reaction_reaction_82) + (-1.0 * reaction_reaction_83) + ( 1.0 * reaction_reaction_84) + ( 1.0 * reaction_reaction_85) + ( 1.0 * reaction_reaction_86) + ( 1.0 * reaction_reaction_87) + ( 1.0 * reaction_reaction_88) + ( 1.0 * reaction_reaction_89) + ( 1.0 * reaction_reaction_90) + ( 1.0 * reaction_reaction_91) + ( 1.0 * reaction_reaction_92) + ( 1.0 * reaction_reaction_93) + ( 1.0 * reaction_reaction_94) + ( 1.0 * reaction_reaction_95) + (-1.0 * reaction_reaction_96) + (-1.0 * reaction_reaction_97) + (-1.0 * reaction_reaction_98) + (-1.0 * reaction_reaction_99) + (-1.0 * reaction_reaction_100) + (-1.0 * reaction_reaction_101) + (-1.0 * reaction_reaction_102) + (-1.0 * reaction_reaction_103) + (-1.0 * reaction_reaction_104) + (-1.0 * reaction_reaction_105) + (-1.0 * reaction_reaction_106) + (-1.0 * reaction_reaction_107) + ( 1.0 * reaction_reaction_108) + ( 1.0 * reaction_reaction_109) + ( 1.0 * reaction_reaction_110) + ( 1.0 * reaction_reaction_111) + ( 1.0 * reaction_reaction_112) + ( 1.0 * reaction_reaction_113) + ( 1.0 * reaction_reaction_114) + ( 1.0 * reaction_reaction_115) + ( 1.0 * reaction_reaction_116) + ( 1.0 * reaction_reaction_117) + ( 1.0 * reaction_reaction_118) + (-1.0 * reaction_reaction_119) + (-1.0 * reaction_reaction_120) + (-1.0 * reaction_reaction_121) + (-1.0 * reaction_reaction_122) + ( 1.0 * reaction_reaction_123) + ( 1.0 * reaction_reaction_124) + ( 1.0 * reaction_reaction_125) + ( 1.0 * reaction_reaction_126) + (-1.0 * reaction_reaction_223) + (-1.0 * reaction_reaction_224) + (-1.0 * reaction_reaction_225) + (-1.0 * reaction_reaction_226) + ( 1.0 * reaction_reaction_227) + ( 1.0 * reaction_reaction_228) + ( 1.0 * reaction_reaction_229) + (-1.0 * reaction_reaction_230) + (-1.0 * reaction_reaction_231) + (-1.0 * reaction_reaction_232) + (-1.0 * reaction_reaction_233) + (-1.0 * reaction_reaction_234) + (-1.0 * reaction_reaction_235) + (-1.0 * reaction_reaction_236) + (-1.0 * reaction_reaction_237) + (-1.0 * reaction_reaction_238) + (-1.0 * reaction_reaction_239) + (-1.0 * reaction_reaction_240) + (-1.0 * reaction_reaction_241) + ( 1.0 * reaction_reaction_242) + ( 1.0 * reaction_reaction_243) + ( 1.0 * reaction_reaction_244) + ( 1.0 * reaction_reaction_245) + ( 1.0 * reaction_reaction_246) + ( 1.0 * reaction_reaction_247) + ( 1.0 * reaction_reaction_248) + ( 1.0 * reaction_reaction_249) + ( 1.0 * reaction_reaction_250) + ( 1.0 * reaction_reaction_251) + ( 1.0 * reaction_reaction_252) + ( 1.0 * reaction_reaction_253) + (-1.0 * reaction_reaction_254) + (-1.0 * reaction_reaction_255) + (-1.0 * reaction_reaction_256) + (-1.0 * reaction_reaction_257) + (-1.0 * reaction_reaction_258) + (-1.0 * reaction_reaction_259) + (-1.0 * reaction_reaction_260) + (-1.0 * reaction_reaction_261) + (-1.0 * reaction_reaction_262) + (-1.0 * reaction_reaction_263) + (-1.0 * reaction_reaction_264) + (-1.0 * reaction_reaction_265) + ( 1.0 * reaction_reaction_266) + ( 1.0 * reaction_reaction_267) + ( 1.0 * reaction_reaction_268) + ( 1.0 * reaction_reaction_269) + ( 1.0 * reaction_reaction_270) + ( 1.0 * reaction_reaction_271) + ( 1.0 * reaction_reaction_272) + ( 1.0 * reaction_reaction_273) + ( 1.0 * reaction_reaction_274) + ( 1.0 * reaction_reaction_275) + ( 1.0 * reaction_reaction_276) + ( 1.0 * reaction_reaction_277) + (-1.0 * reaction_reaction_278) + (-1.0 * reaction_reaction_279) + (-1.0 * reaction_reaction_280) + (-1.0 * reaction_reaction_281) + ( 1.0 * reaction_reaction_282) + ( 1.0 * reaction_reaction_283) + ( 1.0 * reaction_reaction_284) + ( 1.0 * reaction_reaction_285) + (-1.0 * reaction_reaction_286) + (-1.0 * reaction_reaction_287) + (-1.0 * reaction_reaction_288) + (-1.0 * reaction_reaction_289) + ( 1.0 * reaction_reaction_290) + ( 1.0 * reaction_reaction_291) + ( 1.0 * reaction_reaction_292) + ( 1.0 * reaction_reaction_293) + (-1.0 * reaction_reaction_294) + (-1.0 * reaction_reaction_295) + (-1.0 * reaction_reaction_296) + (-1.0 * reaction_reaction_297) + (-1.0 * reaction_reaction_298) + (-1.0 * reaction_reaction_299) + (-1.0 * reaction_reaction_300) + (-1.0 * reaction_reaction_301) + (-1.0 * reaction_reaction_302) + (-1.0 * reaction_reaction_303) + (-1.0 * reaction_reaction_304) + (-1.0 * reaction_reaction_305) + ( 1.0 * reaction_reaction_306) + ( 1.0 * reaction_reaction_307) + ( 1.0 * reaction_reaction_308) + ( 1.0 * reaction_reaction_309) + ( 1.0 * reaction_reaction_310) + ( 1.0 * reaction_reaction_311) + ( 1.0 * reaction_reaction_312) + ( 1.0 * reaction_reaction_313) + ( 1.0 * reaction_reaction_314) + ( 1.0 * reaction_reaction_315) + ( 1.0 * reaction_reaction_316) + ( 1.0 * reaction_reaction_317) + (-1.0 * reaction_reaction_318) + (-1.0 * reaction_reaction_319) + (-1.0 * reaction_reaction_320) + (-1.0 * reaction_reaction_321) + (-1.0 * reaction_reaction_322) + (-1.0 * reaction_reaction_323) + (-1.0 * reaction_reaction_324) + (-1.0 * reaction_reaction_325) + (-1.0 * reaction_reaction_326) + (-1.0 * reaction_reaction_327) + (-1.0 * reaction_reaction_328) + (-1.0 * reaction_reaction_329) + ( 1.0 * reaction_reaction_330) + ( 1.0 * reaction_reaction_331) + ( 1.0 * reaction_reaction_332) + ( 1.0 * reaction_reaction_333) + ( 1.0 * reaction_reaction_334) + ( 1.0 * reaction_reaction_335) + ( 1.0 * reaction_reaction_336) + ( 1.0 * reaction_reaction_337) + ( 1.0 * reaction_reaction_338) + ( 1.0 * reaction_reaction_339) + ( 1.0 * reaction_reaction_340) + ( 1.0 * reaction_reaction_341) + (-1.0 * reaction_reaction_342) + (-1.0 * reaction_reaction_343) + (-1.0 * reaction_reaction_344) + (-1.0 * reaction_reaction_345) + ( 1.0 * reaction_reaction_346) + ( 1.0 * reaction_reaction_347) + ( 1.0 * reaction_reaction_348) + ( 1.0 * reaction_reaction_349) + ( 1.0 * reaction_reaction_350) + ( 1.0 * reaction_reaction_351));
	
% Species:   id = species_2, name = camR_ca1_A, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_0) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_20) + ( 1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_129) + ( 1.0 * reaction_reaction_133) + (-1.0 * reaction_reaction_160) + ( 1.0 * reaction_reaction_176) + (-1.0 * reaction_reaction_192) + ( 1.0 * reaction_reaction_208));
	
% Species:   id = species_3, name = camR_ca1_B, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_24) + ( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_130) + ( 1.0 * reaction_reaction_134) + (-1.0 * reaction_reaction_161) + ( 1.0 * reaction_reaction_177) + (-1.0 * reaction_reaction_193) + ( 1.0 * reaction_reaction_209));
	
% Species:   id = species_4, name = camR_ca1_C, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_26) + ( 1.0 * reaction_reaction_27) + ( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_131) + ( 1.0 * reaction_reaction_135) + (-1.0 * reaction_reaction_162) + ( 1.0 * reaction_reaction_178) + (-1.0 * reaction_reaction_194) + ( 1.0 * reaction_reaction_210));
	
% Species:   id = species_5, name = camR_ca1_D, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_29) + ( 1.0 * reaction_reaction_30) + ( 1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_132) + ( 1.0 * reaction_reaction_136) + (-1.0 * reaction_reaction_163) + ( 1.0 * reaction_reaction_179) + (-1.0 * reaction_reaction_195) + ( 1.0 * reaction_reaction_211));
	
% Species:   id = species_6, name = camR_ca2_AB, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_33) + ( 1.0 * reaction_reaction_46) + ( 1.0 * reaction_reaction_49) + (-1.0 * reaction_reaction_137) + ( 1.0 * reaction_reaction_143) + (-1.0 * reaction_reaction_164) + ( 1.0 * reaction_reaction_180) + (-1.0 * reaction_reaction_196) + ( 1.0 * reaction_reaction_212));
	
% Species:   id = species_7, name = camR_ca2_AC, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_35) + ( 1.0 * reaction_reaction_45) + ( 1.0 * reaction_reaction_52) + (-1.0 * reaction_reaction_138) + ( 1.0 * reaction_reaction_144) + (-1.0 * reaction_reaction_165) + ( 1.0 * reaction_reaction_181) + (-1.0 * reaction_reaction_197) + ( 1.0 * reaction_reaction_213));
	
% Species:   id = species_8, name = camR_ca2_AD, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_37) + ( 1.0 * reaction_reaction_48) + ( 1.0 * reaction_reaction_51) + (-1.0 * reaction_reaction_139) + ( 1.0 * reaction_reaction_145) + (-1.0 * reaction_reaction_166) + ( 1.0 * reaction_reaction_182) + (-1.0 * reaction_reaction_198) + ( 1.0 * reaction_reaction_214));
	
% Species:   id = species_9, name = camR_ca2_BC, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_27) + (-1.0 * reaction_reaction_38) + (-1.0 * reaction_reaction_39) + ( 1.0 * reaction_reaction_44) + ( 1.0 * reaction_reaction_55) + (-1.0 * reaction_reaction_140) + ( 1.0 * reaction_reaction_146) + (-1.0 * reaction_reaction_167) + ( 1.0 * reaction_reaction_183) + (-1.0 * reaction_reaction_199) + ( 1.0 * reaction_reaction_215));
	
% Species:   id = species_10, name = camR_ca2_BD, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_40) + (-1.0 * reaction_reaction_41) + ( 1.0 * reaction_reaction_47) + ( 1.0 * reaction_reaction_54) + (-1.0 * reaction_reaction_141) + ( 1.0 * reaction_reaction_147) + (-1.0 * reaction_reaction_168) + ( 1.0 * reaction_reaction_184) + (-1.0 * reaction_reaction_200) + ( 1.0 * reaction_reaction_216));
	
% Species:   id = species_11, name = camR_ca2_CD, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_43) + ( 1.0 * reaction_reaction_50) + ( 1.0 * reaction_reaction_53) + (-1.0 * reaction_reaction_142) + ( 1.0 * reaction_reaction_148) + (-1.0 * reaction_reaction_169) + ( 1.0 * reaction_reaction_185) + (-1.0 * reaction_reaction_201) + ( 1.0 * reaction_reaction_217));
	
% Species:   id = species_12, name = camR_ca3_ABC, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_32) + ( 1.0 * reaction_reaction_34) + ( 1.0 * reaction_reaction_38) + (-1.0 * reaction_reaction_44) + (-1.0 * reaction_reaction_45) + (-1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_56) + ( 1.0 * reaction_reaction_60) + (-1.0 * reaction_reaction_149) + ( 1.0 * reaction_reaction_153) + (-1.0 * reaction_reaction_170) + ( 1.0 * reaction_reaction_186) + (-1.0 * reaction_reaction_202) + ( 1.0 * reaction_reaction_218));
	
% Species:   id = species_13, name = camR_ca3_ABD, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_33) + ( 1.0 * reaction_reaction_36) + ( 1.0 * reaction_reaction_40) + (-1.0 * reaction_reaction_47) + (-1.0 * reaction_reaction_48) + (-1.0 * reaction_reaction_49) + (-1.0 * reaction_reaction_57) + ( 1.0 * reaction_reaction_61) + (-1.0 * reaction_reaction_150) + ( 1.0 * reaction_reaction_154) + (-1.0 * reaction_reaction_171) + ( 1.0 * reaction_reaction_187) + (-1.0 * reaction_reaction_203) + ( 1.0 * reaction_reaction_219));
	
% Species:   id = species_14, name = camR_ca3_ACD, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_35) + ( 1.0 * reaction_reaction_37) + ( 1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_50) + (-1.0 * reaction_reaction_51) + (-1.0 * reaction_reaction_52) + (-1.0 * reaction_reaction_58) + ( 1.0 * reaction_reaction_62) + (-1.0 * reaction_reaction_151) + ( 1.0 * reaction_reaction_155) + (-1.0 * reaction_reaction_172) + ( 1.0 * reaction_reaction_188) + (-1.0 * reaction_reaction_204) + ( 1.0 * reaction_reaction_220));
	
% Species:   id = species_15, name = camR_ca3_BCD, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_39) + ( 1.0 * reaction_reaction_41) + ( 1.0 * reaction_reaction_43) + (-1.0 * reaction_reaction_53) + (-1.0 * reaction_reaction_54) + (-1.0 * reaction_reaction_55) + (-1.0 * reaction_reaction_59) + ( 1.0 * reaction_reaction_63) + (-1.0 * reaction_reaction_152) + ( 1.0 * reaction_reaction_156) + (-1.0 * reaction_reaction_173) + ( 1.0 * reaction_reaction_189) + (-1.0 * reaction_reaction_205) + ( 1.0 * reaction_reaction_221));
	
% Species:   id = species_16, name = camR_ca4_ABCD, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_56) + ( 1.0 * reaction_reaction_57) + ( 1.0 * reaction_reaction_58) + ( 1.0 * reaction_reaction_59) + (-1.0 * reaction_reaction_60) + (-1.0 * reaction_reaction_61) + (-1.0 * reaction_reaction_62) + (-1.0 * reaction_reaction_63) + (-1.0 * reaction_reaction_157) + ( 1.0 * reaction_reaction_158) + (-1.0 * reaction_reaction_174) + ( 1.0 * reaction_reaction_190) + (-1.0 * reaction_reaction_206) + ( 1.0 * reaction_reaction_222));
	
% Species:   id = species_17, name = camT, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_64) + (-1.0 * reaction_reaction_65) + (-1.0 * reaction_reaction_66) + (-1.0 * reaction_reaction_67) + ( 1.0 * reaction_reaction_68) + ( 1.0 * reaction_reaction_69) + ( 1.0 * reaction_reaction_70) + ( 1.0 * reaction_reaction_71) + ( 1.0 * reaction_reaction_127) + (-1.0 * reaction_reaction_128));
	
% Species:   id = species_18, name = camT_ca1_A, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_64) + (-1.0 * reaction_reaction_68) + (-1.0 * reaction_reaction_72) + (-1.0 * reaction_reaction_73) + (-1.0 * reaction_reaction_74) + ( 1.0 * reaction_reaction_85) + ( 1.0 * reaction_reaction_87) + ( 1.0 * reaction_reaction_89) + ( 1.0 * reaction_reaction_129) + (-1.0 * reaction_reaction_133));
	
% Species:   id = species_19, name = camT_ca1_B, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_65) + (-1.0 * reaction_reaction_69) + (-1.0 * reaction_reaction_75) + (-1.0 * reaction_reaction_76) + (-1.0 * reaction_reaction_77) + ( 1.0 * reaction_reaction_84) + ( 1.0 * reaction_reaction_91) + ( 1.0 * reaction_reaction_93) + ( 1.0 * reaction_reaction_130) + (-1.0 * reaction_reaction_134));
	
% Species:   id = species_20, name = camT_ca1_C, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_66) + (-1.0 * reaction_reaction_70) + (-1.0 * reaction_reaction_78) + (-1.0 * reaction_reaction_79) + (-1.0 * reaction_reaction_80) + ( 1.0 * reaction_reaction_86) + ( 1.0 * reaction_reaction_90) + ( 1.0 * reaction_reaction_95) + ( 1.0 * reaction_reaction_131) + (-1.0 * reaction_reaction_135));
	
% Species:   id = species_21, name = camT_ca1_D, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_67) + (-1.0 * reaction_reaction_71) + (-1.0 * reaction_reaction_81) + (-1.0 * reaction_reaction_82) + (-1.0 * reaction_reaction_83) + ( 1.0 * reaction_reaction_88) + ( 1.0 * reaction_reaction_92) + ( 1.0 * reaction_reaction_94) + ( 1.0 * reaction_reaction_132) + (-1.0 * reaction_reaction_136));
	
% Species:   id = species_22, name = camT_ca2_AB, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_72) + ( 1.0 * reaction_reaction_75) + (-1.0 * reaction_reaction_84) + (-1.0 * reaction_reaction_85) + (-1.0 * reaction_reaction_96) + (-1.0 * reaction_reaction_97) + ( 1.0 * reaction_reaction_110) + ( 1.0 * reaction_reaction_137) + (-1.0 * reaction_reaction_143) + ( 1.0 * reaction_reaction_351));
	
% Species:   id = species_23, name = camT_ca2_AC, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_73) + ( 1.0 * reaction_reaction_78) + (-1.0 * reaction_reaction_86) + (-1.0 * reaction_reaction_87) + (-1.0 * reaction_reaction_98) + (-1.0 * reaction_reaction_99) + ( 1.0 * reaction_reaction_108) + ( 1.0 * reaction_reaction_113) + ( 1.0 * reaction_reaction_138) + (-1.0 * reaction_reaction_144));
	
% Species:   id = species_24, name = camT_ca2_AD, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_74) + ( 1.0 * reaction_reaction_81) + (-1.0 * reaction_reaction_88) + (-1.0 * reaction_reaction_89) + (-1.0 * reaction_reaction_100) + (-1.0 * reaction_reaction_101) + ( 1.0 * reaction_reaction_111) + ( 1.0 * reaction_reaction_114) + ( 1.0 * reaction_reaction_139) + (-1.0 * reaction_reaction_145));
	
% Species:   id = species_25, name = camT_ca2_BC, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_76) + ( 1.0 * reaction_reaction_79) + (-1.0 * reaction_reaction_90) + (-1.0 * reaction_reaction_91) + (-1.0 * reaction_reaction_102) + (-1.0 * reaction_reaction_103) + ( 1.0 * reaction_reaction_109) + ( 1.0 * reaction_reaction_116) + ( 1.0 * reaction_reaction_140) + (-1.0 * reaction_reaction_146));
	
% Species:   id = species_26, name = camT_ca2_BD, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_77) + ( 1.0 * reaction_reaction_82) + (-1.0 * reaction_reaction_92) + (-1.0 * reaction_reaction_93) + (-1.0 * reaction_reaction_104) + (-1.0 * reaction_reaction_105) + ( 1.0 * reaction_reaction_112) + ( 1.0 * reaction_reaction_117) + ( 1.0 * reaction_reaction_141) + (-1.0 * reaction_reaction_147));
	
% Species:   id = species_27, name = camT_ca2_CD, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_80) + ( 1.0 * reaction_reaction_83) + (-1.0 * reaction_reaction_94) + (-1.0 * reaction_reaction_95) + (-1.0 * reaction_reaction_106) + (-1.0 * reaction_reaction_107) + ( 1.0 * reaction_reaction_115) + ( 1.0 * reaction_reaction_118) + ( 1.0 * reaction_reaction_142) + (-1.0 * reaction_reaction_148));
	
% Species:   id = species_28, name = camT_ca3_ABC, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_96) + ( 1.0 * reaction_reaction_98) + ( 1.0 * reaction_reaction_102) + (-1.0 * reaction_reaction_108) + (-1.0 * reaction_reaction_109) + (-1.0 * reaction_reaction_119) + ( 1.0 * reaction_reaction_123) + ( 1.0 * reaction_reaction_149) + (-1.0 * reaction_reaction_153) + (-1.0 * reaction_reaction_351));
	
% Species:   id = species_29, name = camT_ca3_ABD, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_97) + ( 1.0 * reaction_reaction_100) + ( 1.0 * reaction_reaction_104) + (-1.0 * reaction_reaction_110) + (-1.0 * reaction_reaction_111) + (-1.0 * reaction_reaction_112) + (-1.0 * reaction_reaction_120) + ( 1.0 * reaction_reaction_124) + ( 1.0 * reaction_reaction_150) + (-1.0 * reaction_reaction_154));
	
% Species:   id = species_30, name = camT_ca3_ACD, affected by kineticLaw
	xdot(31) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_99) + ( 1.0 * reaction_reaction_101) + ( 1.0 * reaction_reaction_106) + (-1.0 * reaction_reaction_113) + (-1.0 * reaction_reaction_114) + (-1.0 * reaction_reaction_115) + (-1.0 * reaction_reaction_121) + ( 1.0 * reaction_reaction_125) + ( 1.0 * reaction_reaction_151) + (-1.0 * reaction_reaction_155));
	
% Species:   id = species_31, name = camT_ca3_BCD, affected by kineticLaw
	xdot(32) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_103) + ( 1.0 * reaction_reaction_105) + ( 1.0 * reaction_reaction_107) + (-1.0 * reaction_reaction_116) + (-1.0 * reaction_reaction_117) + (-1.0 * reaction_reaction_118) + (-1.0 * reaction_reaction_122) + ( 1.0 * reaction_reaction_126) + ( 1.0 * reaction_reaction_152) + (-1.0 * reaction_reaction_156));
	
% Species:   id = species_32, name = camT_ca4_ABCD, affected by kineticLaw
	xdot(33) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_119) + ( 1.0 * reaction_reaction_120) + ( 1.0 * reaction_reaction_121) + ( 1.0 * reaction_reaction_122) + (-1.0 * reaction_reaction_123) + (-1.0 * reaction_reaction_124) + (-1.0 * reaction_reaction_125) + (-1.0 * reaction_reaction_126) + ( 1.0 * reaction_reaction_157) + (-1.0 * reaction_reaction_158));
	
% Species:   id = species_33, name = CaMKII, affected by kineticLaw
	xdot(34) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_159) + (-1.0 * reaction_reaction_160) + (-1.0 * reaction_reaction_161) + (-1.0 * reaction_reaction_162) + (-1.0 * reaction_reaction_163) + (-1.0 * reaction_reaction_164) + (-1.0 * reaction_reaction_165) + (-1.0 * reaction_reaction_166) + (-1.0 * reaction_reaction_167) + (-1.0 * reaction_reaction_168) + (-1.0 * reaction_reaction_169) + (-1.0 * reaction_reaction_170) + (-1.0 * reaction_reaction_171) + (-1.0 * reaction_reaction_172) + (-1.0 * reaction_reaction_173) + (-1.0 * reaction_reaction_174) + ( 1.0 * reaction_reaction_175) + ( 1.0 * reaction_reaction_176) + ( 1.0 * reaction_reaction_177) + ( 1.0 * reaction_reaction_178) + ( 1.0 * reaction_reaction_179) + ( 1.0 * reaction_reaction_180) + ( 1.0 * reaction_reaction_181) + ( 1.0 * reaction_reaction_182) + ( 1.0 * reaction_reaction_183) + ( 1.0 * reaction_reaction_184) + ( 1.0 * reaction_reaction_185) + ( 1.0 * reaction_reaction_186) + ( 1.0 * reaction_reaction_187) + ( 1.0 * reaction_reaction_188) + ( 1.0 * reaction_reaction_189) + ( 1.0 * reaction_reaction_190));
	
% Species:   id = species_34, name = camR_CaMKII, affected by kineticLaw
	xdot(35) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_159) + (-1.0 * reaction_reaction_175) + (-1.0 * reaction_reaction_223) + (-1.0 * reaction_reaction_224) + (-1.0 * reaction_reaction_225) + (-1.0 * reaction_reaction_226) + ( 1.0 * reaction_reaction_227) + ( 1.0 * reaction_reaction_228) + ( 1.0 * reaction_reaction_229) + ( 1.0 * reaction_reaction_350));
	
% Species:   id = species_35, name = camR_ca1_A_CaMKII, affected by kineticLaw
	xdot(36) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_160) + (-1.0 * reaction_reaction_176) + ( 1.0 * reaction_reaction_223) + (-1.0 * reaction_reaction_227) + (-1.0 * reaction_reaction_230) + (-1.0 * reaction_reaction_231) + (-1.0 * reaction_reaction_232) + ( 1.0 * reaction_reaction_243) + ( 1.0 * reaction_reaction_245) + ( 1.0 * reaction_reaction_247));
	
% Species:   id = species_36, name = camR_ca1_B_CaMKII, affected by kineticLaw
	xdot(37) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_161) + (-1.0 * reaction_reaction_177) + ( 1.0 * reaction_reaction_224) + (-1.0 * reaction_reaction_233) + (-1.0 * reaction_reaction_234) + (-1.0 * reaction_reaction_235) + ( 1.0 * reaction_reaction_242) + ( 1.0 * reaction_reaction_249) + ( 1.0 * reaction_reaction_251) + (-1.0 * reaction_reaction_350));
	
% Species:   id = species_37, name = camR_ca1_C_CaMKII, affected by kineticLaw
	xdot(38) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_162) + (-1.0 * reaction_reaction_178) + ( 1.0 * reaction_reaction_225) + (-1.0 * reaction_reaction_228) + (-1.0 * reaction_reaction_236) + (-1.0 * reaction_reaction_237) + (-1.0 * reaction_reaction_238) + ( 1.0 * reaction_reaction_244) + ( 1.0 * reaction_reaction_248) + ( 1.0 * reaction_reaction_253));
	
% Species:   id = species_38, name = camR_ca1_D_CaMKII, affected by kineticLaw
	xdot(39) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_163) + (-1.0 * reaction_reaction_179) + ( 1.0 * reaction_reaction_226) + (-1.0 * reaction_reaction_229) + (-1.0 * reaction_reaction_239) + (-1.0 * reaction_reaction_240) + (-1.0 * reaction_reaction_241) + ( 1.0 * reaction_reaction_246) + ( 1.0 * reaction_reaction_250) + ( 1.0 * reaction_reaction_252));
	
% Species:   id = species_39, name = camR_ca2_AB_CaMKII, affected by kineticLaw
	xdot(40) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_164) + (-1.0 * reaction_reaction_180) + ( 1.0 * reaction_reaction_230) + ( 1.0 * reaction_reaction_233) + (-1.0 * reaction_reaction_242) + (-1.0 * reaction_reaction_243) + (-1.0 * reaction_reaction_254) + (-1.0 * reaction_reaction_255) + ( 1.0 * reaction_reaction_266) + ( 1.0 * reaction_reaction_269));
	
% Species:   id = species_40, name = camR_ca2_AC_CaMKII, affected by kineticLaw
	xdot(41) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_165) + (-1.0 * reaction_reaction_181) + ( 1.0 * reaction_reaction_231) + ( 1.0 * reaction_reaction_236) + (-1.0 * reaction_reaction_244) + (-1.0 * reaction_reaction_245) + (-1.0 * reaction_reaction_256) + (-1.0 * reaction_reaction_257) + ( 1.0 * reaction_reaction_267) + ( 1.0 * reaction_reaction_272));
	
% Species:   id = species_41, name = camR_ca2_AD_CaMKII, affected by kineticLaw
	xdot(42) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_166) + (-1.0 * reaction_reaction_182) + ( 1.0 * reaction_reaction_232) + ( 1.0 * reaction_reaction_239) + (-1.0 * reaction_reaction_246) + (-1.0 * reaction_reaction_247) + (-1.0 * reaction_reaction_258) + (-1.0 * reaction_reaction_259) + ( 1.0 * reaction_reaction_270) + ( 1.0 * reaction_reaction_273));
	
% Species:   id = species_42, name = camR_ca2_BC_CaMKII, affected by kineticLaw
	xdot(43) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_167) + (-1.0 * reaction_reaction_183) + ( 1.0 * reaction_reaction_234) + ( 1.0 * reaction_reaction_237) + (-1.0 * reaction_reaction_248) + (-1.0 * reaction_reaction_249) + (-1.0 * reaction_reaction_260) + (-1.0 * reaction_reaction_261) + ( 1.0 * reaction_reaction_268) + ( 1.0 * reaction_reaction_275));
	
% Species:   id = species_43, name = camR_ca2_BD_CaMKII, affected by kineticLaw
	xdot(44) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_168) + (-1.0 * reaction_reaction_184) + ( 1.0 * reaction_reaction_235) + ( 1.0 * reaction_reaction_240) + (-1.0 * reaction_reaction_250) + (-1.0 * reaction_reaction_251) + (-1.0 * reaction_reaction_262) + (-1.0 * reaction_reaction_263) + ( 1.0 * reaction_reaction_271) + ( 1.0 * reaction_reaction_276));
	
% Species:   id = species_44, name = camR_ca2_CD_CaMKII, affected by kineticLaw
	xdot(45) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_169) + (-1.0 * reaction_reaction_185) + ( 1.0 * reaction_reaction_238) + ( 1.0 * reaction_reaction_241) + (-1.0 * reaction_reaction_252) + (-1.0 * reaction_reaction_253) + (-1.0 * reaction_reaction_264) + (-1.0 * reaction_reaction_265) + ( 1.0 * reaction_reaction_274) + ( 1.0 * reaction_reaction_277));
	
% Species:   id = species_45, name = camR_ca3_ABC_CaMKII, affected by kineticLaw
	xdot(46) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_170) + (-1.0 * reaction_reaction_186) + ( 1.0 * reaction_reaction_254) + ( 1.0 * reaction_reaction_256) + ( 1.0 * reaction_reaction_260) + (-1.0 * reaction_reaction_266) + (-1.0 * reaction_reaction_267) + (-1.0 * reaction_reaction_268) + (-1.0 * reaction_reaction_281) + ( 1.0 * reaction_reaction_285));
	
% Species:   id = species_46, name = camR_ca3_ABD_CaMKII, affected by kineticLaw
	xdot(47) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_171) + (-1.0 * reaction_reaction_187) + ( 1.0 * reaction_reaction_255) + ( 1.0 * reaction_reaction_258) + ( 1.0 * reaction_reaction_262) + (-1.0 * reaction_reaction_269) + (-1.0 * reaction_reaction_270) + (-1.0 * reaction_reaction_271) + (-1.0 * reaction_reaction_280) + ( 1.0 * reaction_reaction_284));
	
% Species:   id = species_47, name = camR_ca3_ACD_CaMKII, affected by kineticLaw
	xdot(48) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_172) + (-1.0 * reaction_reaction_188) + ( 1.0 * reaction_reaction_257) + ( 1.0 * reaction_reaction_259) + ( 1.0 * reaction_reaction_264) + (-1.0 * reaction_reaction_272) + (-1.0 * reaction_reaction_273) + (-1.0 * reaction_reaction_274) + (-1.0 * reaction_reaction_279) + ( 1.0 * reaction_reaction_283));
	
% Species:   id = species_48, name = camR_ca3_BCD_CaMKII, affected by kineticLaw
	xdot(49) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_173) + (-1.0 * reaction_reaction_189) + ( 1.0 * reaction_reaction_261) + ( 1.0 * reaction_reaction_263) + ( 1.0 * reaction_reaction_265) + (-1.0 * reaction_reaction_275) + (-1.0 * reaction_reaction_276) + (-1.0 * reaction_reaction_277) + (-1.0 * reaction_reaction_278) + ( 1.0 * reaction_reaction_282));
	
% Species:   id = species_49, name = camR_ca4_ABCD_CaMKII, affected by kineticLaw
	xdot(50) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_174) + (-1.0 * reaction_reaction_190) + ( 1.0 * reaction_reaction_278) + ( 1.0 * reaction_reaction_279) + ( 1.0 * reaction_reaction_280) + ( 1.0 * reaction_reaction_281) + (-1.0 * reaction_reaction_282) + (-1.0 * reaction_reaction_283) + (-1.0 * reaction_reaction_284) + (-1.0 * reaction_reaction_285));
	
% Species:   id = species_50, name = PP2B, affected by kineticLaw
	xdot(51) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_191) + (-1.0 * reaction_reaction_192) + (-1.0 * reaction_reaction_193) + (-1.0 * reaction_reaction_194) + (-1.0 * reaction_reaction_195) + (-1.0 * reaction_reaction_196) + (-1.0 * reaction_reaction_197) + (-1.0 * reaction_reaction_198) + (-1.0 * reaction_reaction_199) + (-1.0 * reaction_reaction_200) + (-1.0 * reaction_reaction_201) + (-1.0 * reaction_reaction_202) + (-1.0 * reaction_reaction_203) + (-1.0 * reaction_reaction_204) + (-1.0 * reaction_reaction_205) + (-1.0 * reaction_reaction_206) + ( 1.0 * reaction_reaction_207) + ( 1.0 * reaction_reaction_208) + ( 1.0 * reaction_reaction_209) + ( 1.0 * reaction_reaction_210) + ( 1.0 * reaction_reaction_211) + ( 1.0 * reaction_reaction_212) + ( 1.0 * reaction_reaction_213) + ( 1.0 * reaction_reaction_214) + ( 1.0 * reaction_reaction_215) + ( 1.0 * reaction_reaction_216) + ( 1.0 * reaction_reaction_217) + ( 1.0 * reaction_reaction_218) + ( 1.0 * reaction_reaction_219) + ( 1.0 * reaction_reaction_220) + ( 1.0 * reaction_reaction_221) + ( 1.0 * reaction_reaction_222));
	
% Species:   id = species_51, name = camR_PP2B, affected by kineticLaw
	xdot(52) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_191) + (-1.0 * reaction_reaction_207) + (-1.0 * reaction_reaction_286) + (-1.0 * reaction_reaction_287) + (-1.0 * reaction_reaction_288) + (-1.0 * reaction_reaction_289) + ( 1.0 * reaction_reaction_290) + ( 1.0 * reaction_reaction_291) + ( 1.0 * reaction_reaction_292) + ( 1.0 * reaction_reaction_293));
	
% Species:   id = species_52, name = camR_ca1_A_PP2B, affected by kineticLaw
	xdot(53) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_192) + (-1.0 * reaction_reaction_208) + ( 1.0 * reaction_reaction_286) + (-1.0 * reaction_reaction_290) + (-1.0 * reaction_reaction_294) + (-1.0 * reaction_reaction_295) + (-1.0 * reaction_reaction_296) + ( 1.0 * reaction_reaction_307) + ( 1.0 * reaction_reaction_309) + ( 1.0 * reaction_reaction_311));
	
% Species:   id = species_53, name = camR_ca1_B_PP2B, affected by kineticLaw
	xdot(54) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_193) + (-1.0 * reaction_reaction_209) + ( 1.0 * reaction_reaction_287) + (-1.0 * reaction_reaction_291) + (-1.0 * reaction_reaction_297) + (-1.0 * reaction_reaction_298) + (-1.0 * reaction_reaction_299) + ( 1.0 * reaction_reaction_306) + ( 1.0 * reaction_reaction_313) + ( 1.0 * reaction_reaction_315));
	
% Species:   id = species_54, name = camR_ca1_C_PP2B, affected by kineticLaw
	xdot(55) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_194) + (-1.0 * reaction_reaction_210) + ( 1.0 * reaction_reaction_288) + (-1.0 * reaction_reaction_292) + (-1.0 * reaction_reaction_300) + (-1.0 * reaction_reaction_301) + (-1.0 * reaction_reaction_302) + ( 1.0 * reaction_reaction_308) + ( 1.0 * reaction_reaction_312) + ( 1.0 * reaction_reaction_317));
	
% Species:   id = species_55, name = camR_ca1_D_PP2B, affected by kineticLaw
	xdot(56) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_195) + (-1.0 * reaction_reaction_211) + ( 1.0 * reaction_reaction_289) + (-1.0 * reaction_reaction_293) + (-1.0 * reaction_reaction_303) + (-1.0 * reaction_reaction_304) + (-1.0 * reaction_reaction_305) + ( 1.0 * reaction_reaction_310) + ( 1.0 * reaction_reaction_314) + ( 1.0 * reaction_reaction_316));
	
% Species:   id = species_56, name = camR_ca2_AB_PP2B, affected by kineticLaw
	xdot(57) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_196) + (-1.0 * reaction_reaction_212) + ( 1.0 * reaction_reaction_294) + ( 1.0 * reaction_reaction_297) + (-1.0 * reaction_reaction_306) + (-1.0 * reaction_reaction_307) + (-1.0 * reaction_reaction_318) + (-1.0 * reaction_reaction_319) + ( 1.0 * reaction_reaction_332) + ( 1.0 * reaction_reaction_335));
	
% Species:   id = species_57, name = camR_ca2_AC_PP2B, affected by kineticLaw
	xdot(58) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_197) + (-1.0 * reaction_reaction_213) + ( 1.0 * reaction_reaction_295) + ( 1.0 * reaction_reaction_300) + (-1.0 * reaction_reaction_308) + (-1.0 * reaction_reaction_309) + (-1.0 * reaction_reaction_320) + (-1.0 * reaction_reaction_321) + ( 1.0 * reaction_reaction_331) + ( 1.0 * reaction_reaction_338));
	
% Species:   id = species_58, name = camR_ca2_AD_PP2B, affected by kineticLaw
	xdot(59) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_198) + (-1.0 * reaction_reaction_214) + ( 1.0 * reaction_reaction_296) + ( 1.0 * reaction_reaction_303) + (-1.0 * reaction_reaction_310) + (-1.0 * reaction_reaction_311) + (-1.0 * reaction_reaction_322) + (-1.0 * reaction_reaction_323) + ( 1.0 * reaction_reaction_334) + ( 1.0 * reaction_reaction_337));
	
% Species:   id = species_59, name = camR_ca2_BC_PP2B, affected by kineticLaw
	xdot(60) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_199) + (-1.0 * reaction_reaction_215) + ( 1.0 * reaction_reaction_298) + ( 1.0 * reaction_reaction_301) + (-1.0 * reaction_reaction_312) + (-1.0 * reaction_reaction_313) + (-1.0 * reaction_reaction_324) + (-1.0 * reaction_reaction_325) + ( 1.0 * reaction_reaction_330) + ( 1.0 * reaction_reaction_341));
	
% Species:   id = species_60, name = camR_ca2_BD_PP2B, affected by kineticLaw
	xdot(61) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_200) + (-1.0 * reaction_reaction_216) + ( 1.0 * reaction_reaction_299) + ( 1.0 * reaction_reaction_304) + (-1.0 * reaction_reaction_314) + (-1.0 * reaction_reaction_315) + (-1.0 * reaction_reaction_326) + (-1.0 * reaction_reaction_327) + ( 1.0 * reaction_reaction_333) + ( 1.0 * reaction_reaction_340));
	
% Species:   id = species_61, name = camR_ca2_CD_PP2B, affected by kineticLaw
	xdot(62) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_201) + (-1.0 * reaction_reaction_217) + ( 1.0 * reaction_reaction_302) + ( 1.0 * reaction_reaction_305) + (-1.0 * reaction_reaction_316) + (-1.0 * reaction_reaction_317) + (-1.0 * reaction_reaction_328) + (-1.0 * reaction_reaction_329) + ( 1.0 * reaction_reaction_336) + ( 1.0 * reaction_reaction_339));
	
% Species:   id = species_62, name = camR_ca3_ABC_PP2B, affected by kineticLaw
	xdot(63) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_202) + (-1.0 * reaction_reaction_218) + ( 1.0 * reaction_reaction_318) + ( 1.0 * reaction_reaction_320) + ( 1.0 * reaction_reaction_324) + (-1.0 * reaction_reaction_330) + (-1.0 * reaction_reaction_331) + (-1.0 * reaction_reaction_332) + (-1.0 * reaction_reaction_342) + ( 1.0 * reaction_reaction_349));
	
% Species:   id = species_63, name = camR_ca3_ABD_PP2B, affected by kineticLaw
	xdot(64) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_203) + (-1.0 * reaction_reaction_219) + ( 1.0 * reaction_reaction_319) + ( 1.0 * reaction_reaction_322) + ( 1.0 * reaction_reaction_326) + (-1.0 * reaction_reaction_333) + (-1.0 * reaction_reaction_334) + (-1.0 * reaction_reaction_335) + (-1.0 * reaction_reaction_343) + ( 1.0 * reaction_reaction_348));
	
% Species:   id = species_64, name = camR_ca3_ACD_PP2B, affected by kineticLaw
	xdot(65) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_204) + (-1.0 * reaction_reaction_220) + ( 1.0 * reaction_reaction_321) + ( 1.0 * reaction_reaction_323) + ( 1.0 * reaction_reaction_328) + (-1.0 * reaction_reaction_336) + (-1.0 * reaction_reaction_337) + (-1.0 * reaction_reaction_338) + (-1.0 * reaction_reaction_344) + ( 1.0 * reaction_reaction_347));
	
% Species:   id = species_65, name = camR_ca3_BCD_PP2B, affected by kineticLaw
	xdot(66) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_205) + (-1.0 * reaction_reaction_221) + ( 1.0 * reaction_reaction_325) + ( 1.0 * reaction_reaction_327) + ( 1.0 * reaction_reaction_329) + (-1.0 * reaction_reaction_339) + (-1.0 * reaction_reaction_340) + (-1.0 * reaction_reaction_341) + (-1.0 * reaction_reaction_345) + ( 1.0 * reaction_reaction_346));
	
% Species:   id = species_66, name = camR_ca4_ABCD_PP2B, affected by kineticLaw
	xdot(67) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_206) + (-1.0 * reaction_reaction_222) + ( 1.0 * reaction_reaction_342) + ( 1.0 * reaction_reaction_343) + ( 1.0 * reaction_reaction_344) + ( 1.0 * reaction_reaction_345) + (-1.0 * reaction_reaction_346) + (-1.0 * reaction_reaction_347) + (-1.0 * reaction_reaction_348) + (-1.0 * reaction_reaction_349));
end

function z=transition1_R_T(ka,b,species), z=(species*ka*b^(1/2));end

function z=function_1(parameter_10,parameter_11,species_18), z=(species_18*parameter_10/parameter_11^(1/2));end

function z=function_2(parameter_10,parameter_12,species_19), z=(species_19*parameter_10/parameter_12^(1/2));end

function z=function_5(parameter_11,parameter_12,parameter_9,species_6), z=(species_6*parameter_9*(parameter_11*parameter_12)^(1/2));end

function z=function_3(parameter_10,parameter_13,species_20), z=(species_20*parameter_10/parameter_13^(1/2));end

function z=function_6(parameter_11,parameter_13,parameter_9,species_7), z=(species_7*parameter_9*(parameter_11*parameter_13)^(1/2));end

function z=function_7(parameter_11,parameter_14,parameter_9,species_8), z=(species_8*parameter_9*(parameter_11*parameter_14)^(1/2));end

function z=function_4(parameter_10,parameter_14,species_21), z=(species_21*parameter_10/parameter_14^(1/2));end

function z=function_13(parameter_10,parameter_11,parameter_14,species_24), z=(species_24*parameter_10/(parameter_11*parameter_14)^(1/2));end

function z=function_14(parameter_10,parameter_12,parameter_13,species_25), z=(species_25*parameter_10/(parameter_12*parameter_13)^(1/2));end

function z=function_15(parameter_10,parameter_12,parameter_14,species_26), z=(species_26*parameter_10/(parameter_12*parameter_14)^(1/2));end

function z=function_16(parameter_10,parameter_13,parameter_14,species_27), z=(species_27*parameter_10/(parameter_13*parameter_14)^(1/2));end

function z=function_17(parameter_11,parameter_12,parameter_13,parameter_9,species_12), z=(species_12*parameter_9*(parameter_11*parameter_12*parameter_13)^(1/2));end

function z=function_18(parameter_11,parameter_12,parameter_14,parameter_9,species_13), z=(species_13*parameter_9*(parameter_11*parameter_12*parameter_14)^(1/2));end

function z=function_19(parameter_11,parameter_13,parameter_14,parameter_9,species_14), z=(species_14*parameter_9*(parameter_11*parameter_13*parameter_14)^(1/2));end

function z=function_20(parameter_12,parameter_13,parameter_14,parameter_9,species_15), z=(species_15*parameter_9*(parameter_12*parameter_13*parameter_14)^(1/2));end

function z=function_8(parameter_12,parameter_13,parameter_9,species_9), z=(species_9*parameter_9*(parameter_12*parameter_13)^(1/2));end

function z=function_9(parameter_12,parameter_14,parameter_9,species_10), z=(species_10*parameter_9*(parameter_12*parameter_14)^(1/2));end

function z=function_10(parameter_13,parameter_14,parameter_9,species_11), z=(species_11*parameter_9*(parameter_13*parameter_14)^(1/2));end

function z=function_11(parameter_10,parameter_11,parameter_12,species_22), z=(species_22*parameter_10/(parameter_11*parameter_12)^(1/2));end

function z=function_12(parameter_10,parameter_11,parameter_13,species_23), z=(species_23*parameter_10/(parameter_11*parameter_13)^(1/2));end

function z=function_21(parameter_10,parameter_11,parameter_12,parameter_13,species_28), z=(species_28*parameter_10/(parameter_11*parameter_12*parameter_13)^(1/2));end

function z=function_22(parameter_10,parameter_11,parameter_12,parameter_14,species_29), z=(species_29*parameter_10/(parameter_11*parameter_12*parameter_14)^(1/2));end

function z=function_23(parameter_10,parameter_11,parameter_13,parameter_14,species_30), z=(species_30*parameter_10/(parameter_11*parameter_13*parameter_14)^(1/2));end

function z=function_24(parameter_10,parameter_12,parameter_13,parameter_14,species_31), z=(species_31*parameter_10/(parameter_12*parameter_13*parameter_14)^(1/2));end

function z=function_25(parameter_11,parameter_12,parameter_13,parameter_14,parameter_9,species_16), z=(species_16*parameter_9*(parameter_11*parameter_12*parameter_13*parameter_14)^(1/2));end

function z=function_26(parameter_10,parameter_11,parameter_12,parameter_13,parameter_14,species_32), z=(species_32*parameter_10/(parameter_11*parameter_12*parameter_13*parameter_14)^(1/2));end

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


