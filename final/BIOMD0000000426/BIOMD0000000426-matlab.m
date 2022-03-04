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
% Model name = Mosca2012 - Central Carbon Metabolism Regulated by AKT
%
% is http://identifiers.org/biomodels.db/MODEL1210150000
% is http://identifiers.org/biomodels.db/BIOMD0000000426
% isDescribedBy http://identifiers.org/pubmed/23181020
%


function main()
%Initial conditions vector
	x0=zeros(24,1);
	x0(1) = 8.97E-4;
	x0(2) = 0.00109;
	x0(3) = 0.0027;
	x0(4) = 0.0087;
	x0(5) = 3.62E-5;
	x0(6) = 3.67E-4;
	x0(7) = 9.3E-4;
	x0(8) = 1.0E-4;
	x0(9) = 6.118E-7;
	x0(10) = 1.87082E-5;
	x0(11) = 6.29E-5;
	x0(12) = 1.43E-4;
	x0(13) = 2.42E-4;
	x0(14) = 2.74E-5;
	x0(15) = 1.53E-4;
	x0(16) = 8.58E-5;
	x0(17) = 5.00000000000001E-6;
	x0(18) = 0.00134;
	x0(19) = 3.41E-5;
	x0(20) = 5.53E-4;
	x0(21) = 3.07E-5;
	x0(22) = 4.98E-6;
	x0(23) = 5.79E-5;
	x0(24) = 0.00183;


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

% Compartment: id = compartment_1, name = compartment, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  parameter_1, name = Atot
	global_par_parameter_1=0.0114;
% Parameter:   id =  parameter_2, name = NPtot
	global_par_parameter_2=1.932E-5;
% Parameter:   id =  parameter_3, name = Ntot
	global_par_parameter_3=0.001345;
% Parameter:   id =  parameter_4, name = GPa_Vr
% Parameter:   id =  parameter_5, name = GPa_Keq
	global_par_parameter_5=0.42;
% Parameter:   id =  parameter_6, name = GPb_Keq
	global_par_parameter_6=16.62;
% Parameter:   id =  parameter_7, name = GPb_Vr
% Parameter:   id =  parameter_8, name = FBA_Vr
% Parameter:   id =  parameter_9, name = TPI_Vr
% Parameter:   id =  parameter_10, name = GAPDH_Vr
% Parameter:   id =  parameter_11, name = PGK_Vr
% Parameter:   id =  parameter_12, name = FBA_Keq
	global_par_parameter_12=0.0018;
% Parameter:   id =  parameter_13, name = PGI_Vmr
% Parameter:   id =  parameter_14, name = PGI_Keq
	global_par_parameter_14=0.0556;
% Parameter:   id =  parameter_15, name = PGLM_Vmr
% Parameter:   id =  parameter_16, name = PGLM_Keq
	global_par_parameter_16=17.2;
% Parameter:   id =  parameter_17, name = scale1e3
	global_par_parameter_17=1000.0;
% Parameter:   id =  parameter_18, name = TPI_Keq
	global_par_parameter_18=0.381;
% Parameter:   id =  parameter_19, name = GAPDH_Keq
	global_par_parameter_19=0.3574;
% Parameter:   id =  parameter_20, name = PGK_Keq
	global_par_parameter_20=11.369;
% Parameter:   id =  parameter_21, name = PGYM_Keq
	global_par_parameter_21=1.6491;
% Parameter:   id =  parameter_22, name = PGYM_Vr
% Parameter:   id =  parameter_23, name = ENO_Keq
	global_par_parameter_23=1.4127;
% Parameter:   id =  parameter_24, name = ENO_Vr
% Parameter:   id =  parameter_25, name = LDH_Keq
	global_par_parameter_25=3452.5;
% Parameter:   id =  parameter_26, name = LDH_Vr
% Parameter:   id =  parameter_27, name = AMP
% Parameter:   id =  parameter_28, name = AKT
	global_par_parameter_28=1.0;
% Parameter:   id =  parameter_29, name = AKT_MPM
	global_par_parameter_29=1.0;
% Parameter:   id =  parameter_30, name = GLUT_Vf
% Parameter:   id =  parameter_31, name = HK_Vf
% Parameter:   id =  parameter_32, name = PGI_Vmf
% Parameter:   id =  parameter_33, name = G6PDH_Vf
% Parameter:   id =  parameter_34, name = PGDH_Vf
% Parameter:   id =  parameter_35, name = TKL_Vf
% Parameter:   id =  parameter_36, name = TKL2_Vf
% Parameter:   id =  parameter_37, name = FBA_Vf
% Parameter:   id =  parameter_38, name = TPI_Vf
% Parameter:   id =  parameter_39, name = GAPDH_Vf
% Parameter:   id =  parameter_40, name = PGK_Vf
% Parameter:   id =  parameter_41, name = GS_Vf
% Parameter:   id =  parameter_42, name = PFK_Vf
% Parameter:   id =  parameter_43, name = ENO_Vf
% Parameter:   id =  parameter_44, name = PK_Vf
% Parameter:   id =  parameter_45, name = LDH_Vf
% Parameter:   id =  parameter_46, name = DHase_Vf
% Parameter:   id =  parameter_47, name = DPHase_Vf
% Parameter:   id =  parameter_48, name = MPM_Vf
% Parameter:   id =  parameter_49, name = PGK_Kp
	global_par_parameter_49=1.3E-4;
% Parameter:   id =  parameter_50, name = PGK_Kq
	global_par_parameter_50=2.7E-4;
% Parameter:   id =  parameter_51, name = PGK_Ka
	global_par_parameter_51=7.9E-5;
% Parameter:   id =  parameter_52, name = PGK_Kb
	global_par_parameter_52=4.0E-5;
% Parameter:   id =  parameter_53, name = ENO_Kmp
	global_par_parameter_53=6.0E-5;
% Parameter:   id =  parameter_54, name = ENO_Kms
	global_par_parameter_54=3.8E-5;
% Parameter:   id =  parameter_55, name = PGLM_Vmaxf
	global_par_parameter_55=7.364;
% Parameter:   id =  parameter_56, name = PGLM_KG6P
	global_par_parameter_56=3.0E-5;
% Parameter:   id =  parameter_57, name = PGLM_KG1P
	global_par_parameter_57=6.3E-5;
% Parameter:   id =  parameter_58, name = GPa_Vmaxf
	global_par_parameter_58=0.03347;
% Parameter:   id =  parameter_59, name = GPa_KiGLYb
	global_par_parameter_59=1.5E-4;
% Parameter:   id =  parameter_60, name = GPa_KiG1P
	global_par_parameter_60=0.0101;
% Parameter:   id =  parameter_61, name = GPa_KiGLYf
	global_par_parameter_61=0.0017;
% Parameter:   id =  parameter_62, name = GPa_KPi
	global_par_parameter_62=0.004;
% Parameter:   id =  parameter_63, name = GPb_Vmaxf
	global_par_parameter_63=0.01049;
% Parameter:   id =  parameter_64, name = GPb_KiGLYb
	global_par_parameter_64=0.0044;
% Parameter:   id =  parameter_65, name = GPb_KG1P
	global_par_parameter_65=0.0015;
% Parameter:   id =  parameter_66, name = GPb_KiGLYf
	global_par_parameter_66=0.015;
% Parameter:   id =  parameter_67, name = GPb_KiPi
	global_par_parameter_67=0.0046;
% Parameter:   id =  parameter_68, name = FBA_Kdhap
	global_par_parameter_68=8.0E-5;
% Parameter:   id =  parameter_69, name = FBA_Kg3p
	global_par_parameter_69=1.6E-4;
% Parameter:   id =  parameter_70, name = FBA_Kfbp
	global_par_parameter_70=9.0E-6;
% Parameter:   id =  parameter_71, name = TPI_Kmp
	global_par_parameter_71=0.0016;
% Parameter:   id =  parameter_72, name = TPI_Kms
	global_par_parameter_72=5.1E-4;
% Parameter:   id =  parameter_73, name = GAPDH_Kdpg
	global_par_parameter_73=2.2E-5;
% Parameter:   id =  parameter_74, name = GAPDH_Knadh
	global_par_parameter_74=1.0E-5;
% Parameter:   id =  parameter_75, name = GAPDH_Kg3p
	global_par_parameter_75=1.9E-4;
% Parameter:   id =  parameter_76, name = GAPDH_Knad
	global_par_parameter_76=9.0E-5;
% Parameter:   id =  parameter_77, name = GAPDH_Kp
	global_par_parameter_77=0.029;
% Parameter:   id =  parameter_78, name = PGYM_Vmf
	global_par_parameter_78=154.0;
% Parameter:   id =  parameter_79, name = PGYM_Kmp
	global_par_parameter_79=1.2E-4;
% Parameter:   id =  parameter_80, name = PGYM_Kms
	global_par_parameter_80=1.9E-4;
% Parameter:   id =  parameter_81, name = PGI_Kf6p
	global_par_parameter_81=5.0E-5;
% Parameter:   id =  parameter_82, name = PGI_Kg6p
	global_par_parameter_82=4.0E-4;
% Parameter:   id =  parameter_83, name = LDH_Kp
	global_par_parameter_83=0.0047;
% Parameter:   id =  parameter_84, name = LDH_Kq
	global_par_parameter_84=7.0E-5;
% Parameter:   id =  parameter_85, name = LDH_Ka
	global_par_parameter_85=2.0E-6;
% Parameter:   id =  parameter_86, name = LDH_Kb
	global_par_parameter_86=3.0E-4;
% assignmentRule: variable = parameter_35
	global_par_parameter_35=1056*global_par_parameter_28;
% assignmentRule: variable = parameter_36
	global_par_parameter_36=0.1761*global_par_parameter_28;
% assignmentRule: variable = parameter_40
	global_par_parameter_40=73.41*global_par_parameter_28;
% assignmentRule: variable = parameter_44
	global_par_parameter_44=27.81*global_par_parameter_28;
% assignmentRule: variable = parameter_30
	global_par_parameter_30=23.03*global_par_parameter_28;
% assignmentRule: variable = parameter_42
	global_par_parameter_42=107.6*global_par_parameter_28;
% assignmentRule: variable = parameter_11
	global_par_parameter_11=global_par_parameter_40*global_par_parameter_49*global_par_parameter_50/(global_par_parameter_51*global_par_parameter_52*global_par_parameter_20);
% assignmentRule: variable = parameter_48
	global_par_parameter_48=9801000*global_par_parameter_29;
% assignmentRule: variable = parameter_34
	global_par_parameter_34=31.02*global_par_parameter_28;
% assignmentRule: variable = parameter_43
	global_par_parameter_43=160.9*global_par_parameter_28;
% assignmentRule: variable = parameter_24
	global_par_parameter_24=global_par_parameter_43*global_par_parameter_53/(global_par_parameter_54*global_par_parameter_23);
% assignmentRule: variable = parameter_15
	global_par_parameter_15=global_par_parameter_55*global_par_parameter_56/(global_par_parameter_57*global_par_parameter_16);
% assignmentRule: variable = parameter_47
	global_par_parameter_47=127800*global_par_parameter_28;
% assignmentRule: variable = species_10
	x(9)=global_par_parameter_2-x(10);
% assignmentRule: variable = species_3
	x(3)=global_par_parameter_1-x(4);
% assignmentRule: variable = species_18
	x(17)=global_par_parameter_3-x(18);
% assignmentRule: variable = parameter_4
	global_par_parameter_4=global_par_parameter_58*global_par_parameter_59*global_par_parameter_60/(global_par_parameter_61*global_par_parameter_62*global_par_parameter_5);
% assignmentRule: variable = parameter_7
	global_par_parameter_7=global_par_parameter_63*global_par_parameter_64*global_par_parameter_65/(global_par_parameter_66*global_par_parameter_67*global_par_parameter_6);
% assignmentRule: variable = parameter_37
	global_par_parameter_37=14.63*global_par_parameter_28;
% assignmentRule: variable = parameter_8
	global_par_parameter_8=global_par_parameter_37*global_par_parameter_68*global_par_parameter_69/(global_par_parameter_12*global_par_parameter_70);
% assignmentRule: variable = parameter_38
	global_par_parameter_38=5.976*global_par_parameter_28;
% assignmentRule: variable = parameter_9
	global_par_parameter_9=global_par_parameter_38*global_par_parameter_71/(global_par_parameter_72*global_par_parameter_18);
% assignmentRule: variable = parameter_39
	global_par_parameter_39=109.1*global_par_parameter_28;
% assignmentRule: variable = parameter_10
	global_par_parameter_10=global_par_parameter_39*global_par_parameter_73*global_par_parameter_74/(global_par_parameter_75*global_par_parameter_76*global_par_parameter_77*global_par_parameter_19);
% assignmentRule: variable = parameter_41
	global_par_parameter_41=32040*global_par_parameter_28;
% assignmentRule: variable = parameter_46
	global_par_parameter_46=4982000*global_par_parameter_28;
% assignmentRule: variable = parameter_22
	global_par_parameter_22=global_par_parameter_78*global_par_parameter_79/(global_par_parameter_80*global_par_parameter_21);
% assignmentRule: variable = parameter_31
	global_par_parameter_31=86.85*global_par_parameter_28;
% assignmentRule: variable = parameter_33
	global_par_parameter_33=1.008*global_par_parameter_28;
% assignmentRule: variable = parameter_32
	global_par_parameter_32=7778*global_par_parameter_28;
% assignmentRule: variable = parameter_13
	global_par_parameter_13=global_par_parameter_32*global_par_parameter_81/(global_par_parameter_82*global_par_parameter_14);
% assignmentRule: variable = parameter_27
	global_par_parameter_27=const_species_species_20;
% assignmentRule: variable = parameter_45
	global_par_parameter_45=340.3*global_par_parameter_28;
% assignmentRule: variable = parameter_26
	global_par_parameter_26=global_par_parameter_45*global_par_parameter_83*global_par_parameter_84/(global_par_parameter_85*global_par_parameter_86*global_par_parameter_25);

% Reaction: id = reaction_1, name = GLUT	% Local Parameter:   id =  keq, name = keq
	reaction_reaction_1_keq=1.0;
	% Local Parameter:   id =  KGlc_e, name = KGlc_e
	reaction_reaction_1_KGlc_e=0.01;
	% Local Parameter:   id =  KGlc, name = KGlc
	reaction_reaction_1_KGlc=0.0093;

	reaction_reaction_1=compartment_compartment_1*GLUT(global_par_parameter_30, const_species_species_9, x(1), reaction_reaction_1_keq, reaction_reaction_1_KGlc_e, reaction_reaction_1_KGlc);

% Reaction: id = reaction_2, name = HK	% Local Parameter:   id =  Ka, name = Ka
	reaction_reaction_2_Ka=1.0E-4;
	% Local Parameter:   id =  Kb, name = Kb
	reaction_reaction_2_Kb=0.0011;
	% Local Parameter:   id =  Kapp, name = Kapp
	reaction_reaction_2_Kapp=651.0;
	% Local Parameter:   id =  Kp, name = Kp
	reaction_reaction_2_Kp=2.0E-5;
	% Local Parameter:   id =  Kq, name = Kq
	reaction_reaction_2_Kq=0.0035;

	reaction_reaction_2=compartment_compartment_1*HK(global_par_parameter_31, reaction_reaction_2_Ka, reaction_reaction_2_Kb, x(1), x(4), x(2), x(3), reaction_reaction_2_Kapp, reaction_reaction_2_Kp, reaction_reaction_2_Kq);

% Reaction: id = reaction_3, name = PGI	% Local Parameter:   id =  Kery4p, name = Kery4p
	reaction_reaction_3_Kery4p=1.0E-6;
	% Local Parameter:   id =  Kfbp, name = Kfbp
	reaction_reaction_3_Kfbp=6.0E-5;
	% Local Parameter:   id =  Kpg, name = Kpg
	reaction_reaction_3_Kpg=1.5E-5;

	reaction_reaction_3=compartment_compartment_1*PGI(global_par_parameter_32, x(2), global_par_parameter_82, global_par_parameter_13, x(5), global_par_parameter_81, x(7), reaction_reaction_3_Kery4p, x(6), reaction_reaction_3_Kfbp, x(8), reaction_reaction_3_Kpg);

% Reaction: id = reaction_4, name = G6PDH	% Local Parameter:   id =  KG6P, name = KG6P
	reaction_reaction_4_KG6P=6.67E-8;
	% Local Parameter:   id =  KNADP, name = KNADP
	reaction_reaction_4_KNADP=3.67E-9;
	% Local Parameter:   id =  Kapp, name = Kapp
	reaction_reaction_4_Kapp=2000.0;
	% Local Parameter:   id =  KATP, name = KATP
	reaction_reaction_4_KATP=7.49E-7;
	% Local Parameter:   id =  KNADPH, name = KNADPH
	reaction_reaction_4_KNADPH=3.12E-9;
	% Local Parameter:   id =  KPGA23, name = KPGA23
	reaction_reaction_4_KPGA23=2.289E-6;

	reaction_reaction_4=compartment_compartment_1*G6PDH(global_par_parameter_33, reaction_reaction_4_KG6P, reaction_reaction_4_KNADP, x(2), x(9), x(8), x(10), reaction_reaction_4_Kapp, x(4), reaction_reaction_4_KATP, reaction_reaction_4_KNADPH, x(11), reaction_reaction_4_KPGA23);

% Reaction: id = reaction_5, name = PGDH	% Local Parameter:   id =  K6PG1, name = K6PG1
	reaction_reaction_5_K6PG1=1.0E-8;
	% Local Parameter:   id =  KNADP, name = KNADP
	reaction_reaction_5_KNADP=1.8E-8;
	% Local Parameter:   id =  Kapp, name = Kapp
	reaction_reaction_5_Kapp=141.7;
	% Local Parameter:   id =  KPGA23, name = KPGA23
	reaction_reaction_5_KPGA23=1.2E-7;
	% Local Parameter:   id =  KATP, name = KATP
	reaction_reaction_5_KATP=1.54E-7;
	% Local Parameter:   id =  K6PG2, name = K6PG2
	reaction_reaction_5_K6PG2=5.8E-8;
	% Local Parameter:   id =  KNADPH, name = KNADPH
	reaction_reaction_5_KNADPH=4.5E-9;

	reaction_reaction_5=compartment_compartment_1*PGDH(global_par_parameter_34, reaction_reaction_5_K6PG1, reaction_reaction_5_KNADP, x(8), x(9), x(12), x(10), reaction_reaction_5_Kapp, x(11), reaction_reaction_5_KPGA23, x(4), reaction_reaction_5_KATP, reaction_reaction_5_K6PG2, reaction_reaction_5_KNADPH);

% Reaction: id = reaction_6, name = RUPE	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_reaction_6_Vmax=1.471;
	% Local Parameter:   id =  Keq_RUPE, name = Keq_RUPE
	reaction_reaction_6_Keq_RUPE=2.7;
	% Local Parameter:   id =  KRu5P, name = KRu5P
	reaction_reaction_6_KRu5P=1.9E-7;
	% Local Parameter:   id =  KX5P, name = KX5P
	reaction_reaction_6_KX5P=5.0E-7;

	reaction_reaction_6=compartment_compartment_1*RUPE(reaction_reaction_6_Vmax, x(12), x(13), reaction_reaction_6_Keq_RUPE, reaction_reaction_6_KRu5P, reaction_reaction_6_KX5P);

% Reaction: id = reaction_7, name = R5PI	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_reaction_7_Vmax=0.7646;
	% Local Parameter:   id =  Keq_R5PI, name = Keq_R5PI
	reaction_reaction_7_Keq_R5PI=3.0;
	% Local Parameter:   id =  KRu5P, name = KRu5P
	reaction_reaction_7_KRu5P=7.8E-7;
	% Local Parameter:   id =  KR5P, name = KR5P
	reaction_reaction_7_KR5P=2.2E-6;

	reaction_reaction_7=compartment_compartment_1*R5PI(reaction_reaction_7_Vmax, x(12), x(14), reaction_reaction_7_Keq_R5PI, reaction_reaction_7_KRu5P, reaction_reaction_7_KR5P);

% Reaction: id = reaction_8, name = TKL	% Local Parameter:   id =  Keq_TKL, name = Keq_TKL
	reaction_reaction_8_Keq_TKL=2.08;
	% Local Parameter:   id =  K1, name = K1
	reaction_reaction_8_K1=4.177E-7;
	% Local Parameter:   id =  K2, name = K2
	reaction_reaction_8_K2=3.055E-7;
	% Local Parameter:   id =  K6, name = K6
	reaction_reaction_8_K6=0.00774;
	% Local Parameter:   id =  K3, name = K3
	reaction_reaction_8_K3=1.2432E-5;
	% Local Parameter:   id =  K5, name = K5
	reaction_reaction_8_K5=0.41139;
	% Local Parameter:   id =  K4, name = K4
	reaction_reaction_8_K4=4.96E-9;
	% Local Parameter:   id =  K7, name = K7
	reaction_reaction_8_K7=48.8;

	reaction_reaction_8=compartment_compartment_1*TKL(global_par_parameter_35, x(14), x(13), x(15), x(16), reaction_reaction_8_Keq_TKL, reaction_reaction_8_K1, reaction_reaction_8_K2, reaction_reaction_8_K6, reaction_reaction_8_K3, reaction_reaction_8_K5, reaction_reaction_8_K4, reaction_reaction_8_K7);

% Reaction: id = reaction_9, name = TKL2	% Local Parameter:   id =  Keq_TKL2, name = Keq_TKL2
	reaction_reaction_9_Keq_TKL2=29.7;
	% Local Parameter:   id =  K1, name = K1
	reaction_reaction_9_K1=1.84E-9;
	% Local Parameter:   id =  K2, name = K2
	reaction_reaction_9_K2=3.055E-7;
	% Local Parameter:   id =  K6, name = K6
	reaction_reaction_9_K6=0.122;
	% Local Parameter:   id =  K3, name = K3
	reaction_reaction_9_K3=5.48E-8;
	% Local Parameter:   id =  K5, name = K5
	reaction_reaction_9_K5=0.0287;
	% Local Parameter:   id =  K4, name = K4
	reaction_reaction_9_K4=3.0E-10;
	% Local Parameter:   id =  K7, name = K7
	reaction_reaction_9_K7=0.215;

	reaction_reaction_9=compartment_compartment_1*TKL2(global_par_parameter_36, x(7), x(13), x(15), x(5), reaction_reaction_9_Keq_TKL2, reaction_reaction_9_K1, reaction_reaction_9_K2, reaction_reaction_9_K6, reaction_reaction_9_K3, reaction_reaction_9_K5, reaction_reaction_9_K4, reaction_reaction_9_K7);

% Reaction: id = reaction_10, name = TAL	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_reaction_10_Vmax=58.27;
	% Local Parameter:   id =  Keq_TAL, name = Keq_TAL
	reaction_reaction_10_Keq_TAL=2.703;
	% Local Parameter:   id =  K1, name = K1
	reaction_reaction_10_K1=8.23E-9;
	% Local Parameter:   id =  K2, name = K2
	reaction_reaction_10_K2=4.765E-8;
	% Local Parameter:   id =  K6, name = K6
	reaction_reaction_10_K6=0.4653;
	% Local Parameter:   id =  K3, name = K3
	reaction_reaction_10_K3=1.733E-7;
	% Local Parameter:   id =  K5, name = K5
	reaction_reaction_10_K5=0.8683;
	% Local Parameter:   id =  K4, name = K4
	reaction_reaction_10_K4=6.095E-9;
	% Local Parameter:   id =  K7, name = K7
	reaction_reaction_10_K7=2.524;

	reaction_reaction_10=compartment_compartment_1*TAL(reaction_reaction_10_Vmax, x(16), x(15), x(7), x(5), reaction_reaction_10_Keq_TAL, reaction_reaction_10_K1, reaction_reaction_10_K2, reaction_reaction_10_K6, reaction_reaction_10_K3, reaction_reaction_10_K5, reaction_reaction_10_K4, reaction_reaction_10_K7);

% Reaction: id = reaction_11, name = PRPPS	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_reaction_11_Vmax=0.5104;
	% Local Parameter:   id =  Kapp, name = Kapp
	reaction_reaction_11_Kapp=100000.0;
	% Local Parameter:   id =  KATP, name = KATP
	reaction_reaction_11_KATP=3.0E-8;
	% Local Parameter:   id =  KR5P, name = KR5P
	reaction_reaction_11_KR5P=5.7E-7;

	reaction_reaction_11=compartment_compartment_1*PRPPS(reaction_reaction_11_Vmax, x(14), x(4), const_species_species_21, const_species_species_20, reaction_reaction_11_Kapp, reaction_reaction_11_KATP, reaction_reaction_11_KR5P);

% Reaction: id = reaction_12, name = PGLM
	reaction_reaction_12=compartment_compartment_1*PGLM(global_par_parameter_55, x(19), global_par_parameter_57, global_par_parameter_15, x(2), global_par_parameter_56);

% Reaction: id = reaction_13, name = GPa	% Local Parameter:   id =  KGLYb, name = KGLYb
	reaction_reaction_13_KGLYb=1.5E-4;
	% Local Parameter:   id =  KiPi, name = KiPi
	reaction_reaction_13_KiPi=0.0047;

	reaction_reaction_13=compartment_compartment_1*GPa(global_par_parameter_58, const_species_species_24, const_species_species_23, global_par_parameter_61, global_par_parameter_62, global_par_parameter_4, x(19), reaction_reaction_13_KGLYb, global_par_parameter_60, reaction_reaction_13_KiPi, global_par_parameter_59);

% Reaction: id = reaction_14, name = FBA
	reaction_reaction_14=compartment_compartment_1*FBA(global_par_parameter_37, x(6), global_par_parameter_70, global_par_parameter_8, x(20), x(15), global_par_parameter_68, global_par_parameter_69);

% Reaction: id = reaction_15, name = TPI
	reaction_reaction_15=compartment_compartment_1*TPI(global_par_parameter_38, x(15), global_par_parameter_72, global_par_parameter_9, x(20), global_par_parameter_71);

% Reaction: id = reaction_16, name = GAPDH
	reaction_reaction_16=compartment_compartment_1*GAPDH(global_par_parameter_39, x(18), x(15), const_species_species_23, global_par_parameter_76, global_par_parameter_75, global_par_parameter_77, global_par_parameter_10, x(11), x(17), global_par_parameter_73, global_par_parameter_74);

% Reaction: id = reaction_17, name = PGK	% Local Parameter:   id =  alfa, name = alfa
	reaction_reaction_17_alfa=1.0;
	% Local Parameter:   id =  beta, name = beta
	reaction_reaction_17_beta=1.0;

	reaction_reaction_17=compartment_compartment_1*PGK(global_par_parameter_40, x(11), x(3), reaction_reaction_17_alfa, global_par_parameter_51, global_par_parameter_52, global_par_parameter_11, x(21), x(4), reaction_reaction_17_beta, global_par_parameter_49, global_par_parameter_50);

% Reaction: id = reaction_18, name = GPb	% Local Parameter:   id =  KPi, name = KPi
	reaction_reaction_18_KPi=2.0E-4;
	% Local Parameter:   id =  KiG1P, name = KiG1P
	reaction_reaction_18_KiG1P=0.0074;
	% Local Parameter:   id =  nH, name = nH
	reaction_reaction_18_nH=1.75;
	% Local Parameter:   id =  Kamp, name = Kamp
	reaction_reaction_18_Kamp=1.9E-12;

	reaction_reaction_18=compartment_compartment_1*GPb(global_par_parameter_63, const_species_species_24, const_species_species_23, global_par_parameter_66, reaction_reaction_18_KPi, global_par_parameter_7, x(19), global_par_parameter_64, global_par_parameter_65, global_par_parameter_67, reaction_reaction_18_KiG1P, global_par_parameter_27, reaction_reaction_18_nH, reaction_reaction_18_Kamp);

% Reaction: id = reaction_19, name = GS	% Local Parameter:   id =  Kf, name = Kf
	reaction_reaction_19_Kf=17400.0;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_reaction_19_Keq=267100.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_reaction_19_Kr=158.0;

	reaction_reaction_19=compartment_compartment_1*GS(global_par_parameter_41, reaction_reaction_19_Kf, global_par_parameter_17, x(19), x(4), const_species_species_24, const_species_species_23, x(3), reaction_reaction_19_Keq, reaction_reaction_19_Kr);

% Reaction: id = reaction_20, name = PFK	% Local Parameter:   id =  Katp, name = Katp
	reaction_reaction_20_Katp=2.1E-5;
	% Local Parameter:   id =  beta, name = beta
	reaction_reaction_20_beta=0.98;
	% Local Parameter:   id =  alfa, name = alfa
	reaction_reaction_20_alfa=0.32;
	% Local Parameter:   id =  Kf26bp, name = Kf26bp
	reaction_reaction_20_Kf26bp=8.4E-7;
	% Local Parameter:   id =  Kf6p, name = Kf6p
	reaction_reaction_20_Kf6p=1.0;
	% Local Parameter:   id =  L, name = L
	reaction_reaction_20_L=4.1;
	% Local Parameter:   id =  Kcit, name = Kcit
	reaction_reaction_20_Kcit=6.8;
	% Local Parameter:   id =  Kiatp, name = Kiatp
	reaction_reaction_20_Kiatp=20.0;
	% Local Parameter:   id =  Kadp, name = Kadp
	reaction_reaction_20_Kadp=5.0;
	% Local Parameter:   id =  Kfbp, name = Kfbp
	reaction_reaction_20_Kfbp=5.0;
	% Local Parameter:   id =  Kapp, name = Kapp
	reaction_reaction_20_Kapp=247.0;

	reaction_reaction_20=compartment_compartment_1*PFK(global_par_parameter_42, global_par_parameter_17, x(4), reaction_reaction_20_Katp, reaction_reaction_20_beta, const_species_species_26, reaction_reaction_20_alfa, reaction_reaction_20_Kf26bp, x(5), reaction_reaction_20_Kf6p, reaction_reaction_20_L, const_species_species_25, reaction_reaction_20_Kcit, reaction_reaction_20_Kiatp, x(3), x(6), reaction_reaction_20_Kadp, reaction_reaction_20_Kfbp, reaction_reaction_20_Kapp);

% Reaction: id = reaction_21, name = PGYM
	reaction_reaction_21=compartment_compartment_1*function_1(global_par_parameter_78, x(21), global_par_parameter_80, global_par_parameter_22, x(22), global_par_parameter_79);

% Reaction: id = reaction_22, name = ENO
	reaction_reaction_22=compartment_compartment_1*function_2(global_par_parameter_43, x(22), global_par_parameter_54, global_par_parameter_24, x(23), global_par_parameter_53);

% Reaction: id = reaction_23, name = PK	% Local Parameter:   id =  Kadp, name = Kadp
	reaction_reaction_23_Kadp=0.4;
	% Local Parameter:   id =  Kpep, name = Kpep
	reaction_reaction_23_Kpep=0.014;
	% Local Parameter:   id =  L, name = L
	reaction_reaction_23_L=1.0;
	% Local Parameter:   id =  Kiatp, name = Kiatp
	reaction_reaction_23_Kiatp=2.5;
	% Local Parameter:   id =  Kfbp, name = Kfbp
	reaction_reaction_23_Kfbp=4.0E-4;
	% Local Parameter:   id =  Katp, name = Katp
	reaction_reaction_23_Katp=0.86;
	% Local Parameter:   id =  Kpyr, name = Kpyr
	reaction_reaction_23_Kpyr=10.0;
	% Local Parameter:   id =  Kapp, name = Kapp
	reaction_reaction_23_Kapp=195172.0;

	reaction_reaction_23=compartment_compartment_1*function_3(global_par_parameter_44, x(3), reaction_reaction_23_Kadp, x(23), reaction_reaction_23_Kpep, reaction_reaction_23_L, x(4), reaction_reaction_23_Kiatp, x(6), reaction_reaction_23_Kfbp, x(24), reaction_reaction_23_Katp, reaction_reaction_23_Kpyr, reaction_reaction_23_Kapp, global_par_parameter_17);

% Reaction: id = reaction_24, name = LDH	% Local Parameter:   id =  alfa, name = alfa
	reaction_reaction_24_alfa=1.0;
	% Local Parameter:   id =  beta, name = beta
	reaction_reaction_24_beta=1.0;

	reaction_reaction_24=compartment_compartment_1*function_4(global_par_parameter_45, x(17), x(24), reaction_reaction_24_alfa, global_par_parameter_85, global_par_parameter_86, global_par_parameter_26, const_species_species_32, x(18), reaction_reaction_24_beta, global_par_parameter_83, global_par_parameter_84);

% Reaction: id = reaction_25, name = AK	% Local Parameter:   id =  Vf, name = Vf
	reaction_reaction_25_Vf=141.2;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_reaction_25_Keq=2.26;

	reaction_reaction_25=compartment_compartment_1*function_5(reaction_reaction_25_Vf, x(3), x(4), const_species_species_20, reaction_reaction_25_Keq);

% Reaction: id = reaction_26, name = DHase	% Local Parameter:   id =  Keq, name = Keq
	reaction_reaction_26_Keq=300.0;

	reaction_reaction_26=compartment_compartment_1*function_6(global_par_parameter_46, x(17), x(18), reaction_reaction_26_Keq);

% Reaction: id = reaction_27, name = DPHase	% Local Parameter:   id =  Keq, name = Keq
	reaction_reaction_27_Keq=0.2;

	reaction_reaction_27=compartment_compartment_1*function_7(global_par_parameter_47, x(10), x(9), reaction_reaction_27_Keq);

% Reaction: id = reaction_28, name = MPM	% Local Parameter:   id =  y, name = y
	reaction_reaction_28_y=12.5;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_reaction_28_Keq=1000000.0;

	reaction_reaction_28=compartment_compartment_1*function_8(global_par_parameter_48, x(24), reaction_reaction_28_y, const_species_species_23, x(3), const_species_species_34, x(4), const_species_species_33, reaction_reaction_28_Keq);

% Reaction: id = reaction_29, name = ATPase	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_29_k1=6210.0;

	reaction_reaction_29=compartment_compartment_1*reaction_reaction_29_k1*x(4);

% Species:   id = species_9, name = GLC_e, constant	const_species_species_9=0.01;

% Species:   id = species_20, name = AMP, constant	const_species_species_20=0.00311;

% Species:   id = species_21, name = PRPP, constant	const_species_species_21=0.001;

% Species:   id = species_23, name = Pi, constant	const_species_species_23=0.02;

% Species:   id = species_24, name = GLY, constant	const_species_species_24=0.208403745497308;

% Species:   id = species_25, name = CIT, constant	const_species_species_25=0.00108;

% Species:   id = species_26, name = F26P, constant	const_species_species_26=3.67E-6;

% Species:   id = species_32, name = LAC, constant	const_species_species_32=0.0155;

% Species:   id = species_33, name = CO2, constant	const_species_species_33=0.0214;

% Species:   id = species_34, name = O2, constant	const_species_species_34=6.5E-5;

	xdot=zeros(24,1);
	
% Species:   id = species_1, name = GLC, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2));
	
% Species:   id = species_2, name = G6P, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_12));
	
% Species:   id = species_3, name = ADP, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = species_4, name = ATP, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_20) + ( 1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_29));
	
% Species:   id = species_5, name = F6P, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_20));
	
% Species:   id = species_6, name = F16P, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_20));
	
% Species:   id = species_7, name = E4P, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_10));
	
% Species:   id = species_8, name = PGN, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = species_10, name = NADP, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = species_11, name = NADPH, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_27));
	
% Species:   id = species_12, name = BPG, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17));
	
% Species:   id = species_13, name = RU5P, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7));
	
% Species:   id = species_14, name = X5P, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9));
	
% Species:   id = species_15, name = R5P, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_11));
	
% Species:   id = species_16, name = GAP, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16));
	
% Species:   id = species_17, name = S7P, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_10));
	
% Species:   id = species_18, name = NADH, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = species_19, name = NAD, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_24) + ( 1.0 * reaction_reaction_26));
	
% Species:   id = species_22, name = G1P, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19));
	
% Species:   id = species_27, name = DHAP, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_15));
	
% Species:   id = species_28, name = PG3, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_21));
	
% Species:   id = species_29, name = PG2, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_22));
	
% Species:   id = species_30, name = PEP, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_23));
	
% Species:   id = species_31, name = PYR, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_24) + (-0.08 * reaction_reaction_28));
end

function z=RUPE(Vmax,RU5P,X5P,Keq_RUPE,KRu5P,KX5P), z=(Vmax*(RU5P-X5P/Keq_RUPE)/(RU5P+KRu5P*(1+X5P/KX5P)));end

function z=PGDH(Vmax,K6PG1,KNADP,PGN,NADP,RU5P,NADPH,Kapp,BPG,KPGA23,ATP,KATP,K6PG2,KNADPH), z=(Vmax/K6PG1/KNADP*(PGN*NADP-RU5P*NADPH/Kapp)/((1+NADP/KNADP)*(1+PGN/K6PG1+BPG/KPGA23)+ATP/KATP+NADPH*(1+PGN/K6PG2)/KNADPH));end

function z=G6PDH(Vmax,KG6P,KNADP,G6P,NADP,PGN,NADPH,Kapp,ATP,KATP,KNADPH,BPG,KPGA23), z=(Vmax/KG6P/KNADP*(G6P*NADP-PGN*NADPH/Kapp)/(1+NADP*(1+G6P/KG6P)/KNADP+ATP/KATP+NADPH/KNADPH+BPG/KPGA23));end

function z=TKL(Vmax,R5P,X5P,GAP,S7P,Keq_TKL,K1,K2,K6,K3,K5,K4,K7), z=(Vmax*(R5P*X5P-GAP*S7P/Keq_TKL)/((K1+R5P)*X5P+(K2+K6*S7P)*R5P+(K3+K5*S7P)*GAP+K4*S7P+K7*X5P*GAP));end

function z=PGI(Vmf,A,Kg6p,Vmr,P,Kf6p,E4P,Kery4p,F16P,Kfbp,PGN,Kpg), z=((Vmf*A/Kg6p-Vmr*P/Kf6p)/(1+A/Kg6p+P/Kf6p+E4P/Kery4p+F16P/Kfbp+PGN/Kpg));end

function z=TKL2(Vmax,E4P,X5P,GAP,F6P,Keq_TKL2,K1,K2,K6,K3,K5,K4,K7), z=(Vmax*(E4P*X5P-GAP*F6P/Keq_TKL2)/((K1+E4P)*X5P+(K2+K6*F6P)*E4P+(K3+K5*F6P)*GAP+K4*F6P+K7*X5P*GAP));end

function z=HK(Vmf,Ka,Kb,A,B,P,Q,Kapp,Kp,Kq), z=(Vmf/(Ka*Kb)*(A*B-P*Q/Kapp)/(1+A/Ka+B/Kb+A*B/(Ka*Kb)+P/Kp+Q/Kq+P*Q/(Kp*Kq)+A*Q/(Ka*Kq)+P*B/(Kp*Kb)));end

function z=R5PI(Vmax,RU5P,R5P,Keq_R5PI,KRu5P,KR5P), z=(Vmax*(RU5P-R5P/Keq_R5PI)/(RU5P+KRu5P*(1+R5P/KR5P)));end

function z=GLUT(Vmaxf,GLC_e,GLC,keq,KGlc_e,KGlc), z=(Vmaxf*(GLC_e-GLC/keq)/(KGlc_e*(1+GLC/KGlc)+GLC_e));end

function z=TAL(Vmax,S7P,GAP,E4P,F6P,Keq_TAL,K1,K2,K6,K3,K5,K4,K7), z=(Vmax*(S7P*GAP-E4P*F6P/Keq_TAL)/((K1+GAP)*S7P+(K2+K6*F6P)*GAP+(K3+K5*F6P)*E4P+K4*F6P+K7*S7P*E4P));end

function z=PGLM(Vmaxf,G1P,KG1P,Vmaxr,G6P,KG6P), z=((Vmaxf*G1P/KG1P-Vmaxr*G6P/KG6P)/(1+G1P/KG1P+G6P/KG6P));end

function z=PRPPS(Vmax,R5P,ATP,PRPP,AMP,Kapp,KATP,KR5P), z=(Vmax*(R5P*ATP-PRPP*AMP/Kapp)/((KATP+ATP)*(KR5P+R5P)));end

function z=GPa(Vmaxf,GLY,Pi,KiGLYf,KPi,Vmaxr,G1P,KGLYb,KiG1P,KiPi,KiGLYb), z=((Vmaxf*GLY*Pi/(KiGLYf*KPi)-Vmaxr*GLY*G1P/(KGLYb*KiG1P))/(1+GLY/KiGLYf+Pi/KiPi+GLY/KiGLYb+G1P/KiG1P+GLY*Pi/(KiGLYf*KiPi)+GLY*G1P/(KiGLYb*KiG1P)));end

function z=GPb(Vmaxf,GLY,Pi,KiGLYf,KPi,Vmaxr,G1P,KiGLYb,KG1P,KiPi,KiG1P,AMP,nH,Kamp), z=((Vmaxf*GLY*Pi/(KiGLYf*KPi)-Vmaxr*GLY*G1P/(KiGLYb*KG1P))/(1+GLY/KiGLYf+Pi/KiPi+GLY/KiGLYb+G1P/KiG1P+GLY*Pi/(KiGLYf*KPi)+GLY*G1P/(KiGLYb*KG1P))*AMP^nH/Kamp/(1+AMP^nH/Kamp));end

function z=FBA(Vmf,A,Kfbp,Vmr,P,Q,Kdhap,Kg3p), z=((Vmf*A/Kfbp-Vmr*P*Q/(Kdhap*Kg3p))/(1+A/Kfbp+P/Kdhap+Q/Kg3p+P*Q/(Kdhap*Kg3p)));end

function z=TPI(Vf,GAP,Kms,Vr,DHAP,Kmp), z=((Vf*GAP/Kms-Vr*DHAP/Kmp)/(1+GAP/Kms+DHAP/Kmp));end

function z=GAPDH(Vmf,A,B,C,Knad,Kg3p,Kp,Vmr,P,Q,Kdpg,Knadh), z=((Vmf*A*B*C/(Knad*Kg3p*Kp)-Vmr*P*Q/(Kdpg*Knadh))/(1+A/Knad+A*B/(Knad*Kg3p)+A*B*C/(Knad*Kg3p*Kp)+P*Q/(Kdpg*Knadh)+Q/Knadh));end

function z=PGK(Vmf,A,B,alfa,Ka,Kb,Vmr,P,Q,beta,Kp,Kq), z=((Vmf*A*B/(alfa*Ka*Kb)-Vmr*P*Q/(beta*Kp*Kq))/(1+A/Ka+B/Kb+A*B/(alfa*Ka*Kb)+P*Q/(beta*Kp*Kq)+P/Kp+Q/Kq));end

function z=PFK(Vm,a,B,Katp,beta,F26P,alfa,Kf26bp,A,Kf6p,L,CIT,Kcit,Kiatp,Q,P,Kadp,Kfbp,Kapp), z=(Vm*a*B/Katp/(1+a*B/Katp)*(1+beta*a*F26P/(alfa*Kf26bp))/(1+a*F26P/(alfa*Kf26bp))*(a*A*(1+a*F26P/(alfa*Kf26bp))/(Kf6p*(1+a*F26P/Kf26bp))*(1+a*A*(1+a*F26P/(alfa*Kf26bp))/(Kf6p*(1+a*F26P/Kf26bp)))^3/(L*(1+a*CIT/Kcit)^4*(1+a*B/Kiatp)^4/(1+a*F26P/Kf26bp)^4+(1+a*A*(1+a*F26P/(alfa*Kf26bp))/(Kf6p*(1+a*F26P/Kf26bp)))^4)-a*Q*a*P/(Kadp*Kfbp*Kapp)/(a*Q/Kadp+a*P/Kfbp+a*Q*a*P/(Kadp*Kfbp)+1)));end

function z=function_1(Vmf,PG3,Kms,Vmr,PG2,Kmp), z=((Vmf*PG3/Kms-Vmr*PG2/Kmp)/(1+PG3/Kms+PG2/Kmp));end

function z=GS(Vmaxf,Kf,a,G1P,ATP,GLY,Pi,ADP,Keq,Kr), z=(Vmaxf/Kf*a*G1P*a*ATP*a*GLY*(1-(a*Pi)^2*a*ADP/(a*G1P*a*ATP*Keq))/(1+a*G1P*a*ATP*a*GLY/Kf+a*GLY*(a*Pi)^2*a*ADP/Kr));end

function z=function_2(Vmf,PG2,Kms,Vmr,PEP,Kmp), z=((Vmf*PG2/Kms-Vmr*PEP/Kmp)/(1+PG2/Kms+PEP/Kmp));end

function z=function_3(Vm,B,Kadp,A,Kpep,L,Q,Kiatp,F16P,Kfbp,P,Katp,Kpyr,Kapp,a), z=(Vm*(a*B/Kadp/(1+a*B/Kadp)*a*A/Kpep*(1+a*A/Kpep)^3/(L*(1+a*Q/Kiatp)^4/(1+a*F16P/Kfbp)^4+(1+a*A/Kpep)^4)-a*Q*a*P/(Katp*Kpyr*Kapp)/(a*Q/Katp+a*P/Kpyr+a*Q*a*P/(Katp*Kpyr)+1)));end

function z=function_4(Vmf,A,B,alfa,Ka,Kb,Vmr,P,Q,beta,Kp,Kq), z=((Vmf*A*B/(alfa*Ka*Kb)-Vmr*P*Q/(beta*Kp*Kq))/(1+A/Ka+B/Kb+A*B/(alfa*Ka*Kb)+P*Q/(beta*Kp*Kq)+P/Kp+Q/Kq));end

function z=function_5(Vf,ADP,ATP,AMP,Keq), z=(Vf*ADP^2*(1-ATP*AMP/Keq)/((1+ADP)^2+(1+ATP)*(1+AMP)-1));end

function z=function_6(Vf,NADH,NAD,Keq), z=(Vf*NADH*(1-NAD/(NADH*Keq))/(1+NADH+1+NAD-1));end

function z=function_7(Vf,NADPH,NADP,Keq), z=(Vf*NADPH*(1-NADP/(NADPH*Keq))/(1+NADPH+1+NADP-1));end

function z=function_8(Vmf,PYR,y,Pi,ADP,O2,ATP,CO2,Keq), z=(Vmf*PYR^(1/y)*Pi*ADP*O2^(5/(2*y))*(1-ATP*CO2^(3/y)/(PYR^(1/y)*O2^(5/(2*y))*Pi*ADP*Keq))/((1+PYR)^(1/y)*(1+O2)^(5/(2*y))*(1+Pi)*(1+ADP)+(1+ATP)*(1+CO2)^(3/y)-1));end

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


