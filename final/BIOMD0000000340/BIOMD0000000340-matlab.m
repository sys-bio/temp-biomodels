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
% Model name = Wajima2009_BloodCoagulation_warfarin_heparin
%
% is http://identifiers.org/biomodels.db/MODEL1107010002
% is http://identifiers.org/biomodels.db/BIOMD0000000340
% isDescribedBy http://identifiers.org/pubmed/19516255
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000365
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1108260015
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1109160000
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1109160001
% isDerivedFrom http://identifiers.org/pubmed/9645916
% isDerivedFrom http://identifiers.org/pubmed/7843644
% isDerivedFrom http://identifiers.org/pubmed/16432308
% isDerivedFrom http://identifiers.org/pubmed/15804855
% isDerivedFrom http://identifiers.org/pubmed/12231555
% isDerivedFrom http://identifiers.org/pubmed/8948060
% isDerivedFrom http://identifiers.org/pubmed/2779263
% isDerivedFrom http://identifiers.org/pubmed/12524220
% isDerivedFrom http://identifiers.org/pubmed/18831981
%


function main()
%Initial conditions vector
	x0=zeros(56,1);
	x0(55) = 0.0;
	x0(56) = 0.0;
	x0(1) = 0.0;
	x0(2) = 0.7;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 89.6;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 30.6;
	x0(9) = 0.0;
	x0(10) = 10.0;
	x0(11) = 0.0;
	x0(12) = 174.3;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 26.7;
	x0(16) = 0.0;
	x0(17) = 1394.4;
	x0(18) = 0.0;
	x0(19) = 8945.5;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 70.3;
	x0(24) = 2154.3;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 60.0;
	x0(28) = 50.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 2.5;
	x0(34) = 300.0;
	x0(35) = 0.1;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 375.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 1.0;
	x0(43) = 0.0;
	x0(44) = 0.1;
	x0(45) = 450.0;
	x0(46) = 0.0;
	x0(47) = 0.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 0.0;
	x0(52) = 0.0;
	x0(53) = 0.0;
	x0(54) = 115.4754;


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

% Compartment: id = compartment_1, name = compartment_1, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  I_max, name = I_max
	global_par_I_max=1.0;
% Parameter:   id =  IC50, name = IC50
	global_par_IC50=0.34;
% Parameter:   id =  II0, name = II(0)
	global_par_II0=1394.4;
% Parameter:   id =  VII0, name = VII(0)
	global_par_VII0=10.0;
% Parameter:   id =  IX0, name = IX(0)
	global_par_IX0=89.6;
% Parameter:   id =  X0, name = X(0)
	global_par_X0=174.3;
% Parameter:   id =  PC0, name = PC(0)
	global_par_PC0=60.0;
% Parameter:   id =  PS0, name = PS(0)
	global_par_PS0=300.0;
% Parameter:   id =  VKH20, name = VKH2(0)
	global_par_VKH20=0.1;
% Parameter:   id =  d_II, name = d_II
	global_par_d_II=0.01;
% Parameter:   id =  d_VII, name = d_VII
	global_par_d_VII=0.12;
% Parameter:   id =  d_IX, name = d_IX
	global_par_d_IX=0.029;
% Parameter:   id =  d_X, name = d_X
	global_par_d_X=0.018;
% Parameter:   id =  d_PC, name = d_PC
	global_par_d_PC=0.05;
% Parameter:   id =  d_PS, name = d_PS
	global_par_d_PS=0.0165;
% Parameter:   id =  vitaminK_Vc, name = vitaminK_Vc
	global_par_vitaminK_Vc=24.0;
% Parameter:   id =  d_VK2, name = d_VK2
	global_par_d_VK2=0.0228;
% Parameter:   id =  d_VKH2, name = d_VKH2
	global_par_d_VKH2=0.228;
% Parameter:   id =  d_VKO, name = d_VKO
	global_par_d_VKO=0.228;
% Parameter:   id =  VK0, name = VK(0)
	global_par_VK0=1.0;
% Parameter:   id =  VKO0, name = VKO(0)
	global_par_VKO0=0.1;
% Parameter:   id =  vitaminK_k21_Vc, name = vitaminK_k21/Vc
	global_par_vitaminK_k21_Vc=5.08333333333333E-4;
% Parameter:   id =  vitaminK_k12, name = vitaminK_k12
	global_par_vitaminK_k12=0.0587;
% Parameter:   id =  heparin_ke, name = heparin_ke
	global_par_heparin_ke=0.693;
% Parameter:   id =  warfarin_ka, name = warfarin_ka
	global_par_warfarin_ka=1.0;
% Parameter:   id =  warfarin_Vd, name = warfarin_Vd
	global_par_warfarin_Vd=10.0;
% Parameter:   id =  warfarin_CL, name = warfarin_CL
	global_par_warfarin_CL=0.2;
% Parameter:   id =  warfarin_ke, name = warfarin_ke
	global_par_warfarin_ke=0.02;
% Parameter:   id =  d_XII, name = d_XII
	global_par_d_XII=0.012;
% Parameter:   id =  d_VIII, name = d_VIII
	global_par_d_VIII=0.058;
% Parameter:   id =  d_XI, name = d_XI
	global_par_d_XI=0.1;
% Parameter:   id =  d_V, name = d_V
	global_par_d_V=0.043;
% Parameter:   id =  d_Fg, name = d_Fg
	global_par_d_Fg=0.032;
% Parameter:   id =  d_XIII, name = d_XIII
	global_par_d_XIII=0.0036;
% Parameter:   id =  d_Pg, name = d_Pg
	global_par_d_Pg=0.05;
% Parameter:   id =  d_Tmod, name = d_Tmod
	global_par_d_Tmod=0.05;
% Parameter:   id =  d_TFPI, name = d_TFPI
	global_par_d_TFPI=20.0;
% Parameter:   id =  d_Pk, name = d_Pk
	global_par_d_Pk=0.05;
% Parameter:   id =  XII0, name = XII(0)
	global_par_XII0=375.0;
% Parameter:   id =  VIII0, name = VIII(0)
	global_par_VIII0=0.7;
% Parameter:   id =  XI0, name = XI(0)
	global_par_XI0=30.6;
% Parameter:   id =  V0, name = V(0)
	global_par_V0=26.7;
% Parameter:   id =  Fg0, name = Fg(0)
	global_par_Fg0=8945.5;
% Parameter:   id =  XIII0, name = XIII(0)
	global_par_XIII0=70.3;
% Parameter:   id =  Pg0, name = Pg(0)
	global_par_Pg0=2154.3;
% Parameter:   id =  Tmod0, name = Tmod(0)
	global_par_Tmod0=50.0;
% Parameter:   id =  TFPI0, name = TFPI(0)
	global_par_TFPI0=2.5;
% Parameter:   id =  Pk0, name = Pk(0)
	global_par_Pk0=450.0;
% Parameter:   id =  R1, name = R1
	global_par_R1=0.140845070422535;
% Parameter:   id =  R2, name = R2
	global_par_R2=1.0;
% Parameter:   id =  c44, name = c44
	global_par_c44=0.119718309859155;
% Parameter:   id =  c45, name = c45
	global_par_c45=0.85;
% Parameter:   id =  c46, name = c46
	global_par_c46=0.85;
% Parameter:   id =  d_VK, name = d_VK
	global_par_d_VK=0.2052;
% Parameter:   id =  warfarin_daily_dose, name = warfarin_daily_dose
	global_par_warfarin_daily_dose=4.0;
% Parameter:   id =  heparin_infusion, name = heparin_infusion
	global_par_heparin_infusion=0.0;
% Parameter:   id =  heparin_bolus, name = heparin_bolus
	global_par_heparin_bolus=0.0;
% Parameter:   id =  heparin_infusion_duration_hr, name = heparin_infusion_duration [hr]
	global_par_heparin_infusion_duration_hr=24.0;
% assignmentRule: variable = DP
	x(20)=x(46)+x(47);
% rateRule: variable = C_warf
x(43) = x(55);
% rateRule: variable = A_warf
x(53) = x(56);

% Reaction: id = r1_, name = r1 	% Local Parameter:   id =  v, name = v
	reaction_r1__v=50000.0;
	% Local Parameter:   id =  k, name = k
	reaction_r1__k=1.0E-6;

	reaction_r1_=compartment_compartment_1*Hyperbolic_rate_law(reaction_r1__v, x(2), x(1), reaction_r1__k);

% Reaction: id = r2_, name = r2 	% Local Parameter:   id =  v, name = v
	reaction_r2__v=50.0;
	% Local Parameter:   id =  k, name = k
	reaction_r2__k=1.0;

	reaction_r2_=compartment_compartment_1*Hyperbolic_rate_law(reaction_r2__v, x(3), x(4), reaction_r2__k);

% Reaction: id = r3_, name = r3 	% Local Parameter:   id =  v, name = v
	reaction_r3__v=7.0;
	% Local Parameter:   id =  k, name = k
	reaction_r3__k=10.0;

	reaction_r3_=compartment_compartment_1*Hyperbolic_rate_law(reaction_r3__v, x(5), x(7), reaction_r3__k);

% Reaction: id = r4_, name = r4 	% Local Parameter:   id =  v, name = v
	reaction_r4__v=7.0;
	% Local Parameter:   id =  k, name = k
	reaction_r4__k=1.0;

	reaction_r4_=compartment_compartment_1*Hyperbolic_rate_law(reaction_r4__v, x(8), x(9), reaction_r4__k);

% Reaction: id = r5_, name = r5 	% Local Parameter:   id =  v, name = v
	reaction_r5__v=10.0;
	% Local Parameter:   id =  k, name = k
	reaction_r5__k=10.0;

	reaction_r5_=compartment_compartment_1*Hyperbolic_rate_law(reaction_r5__v, x(8), x(1), reaction_r5__k);

% Reaction: id = r6_, name = r6 	% Local Parameter:   id =  v, name = v
	reaction_r6__v=0.1;
	% Local Parameter:   id =  k, name = k
	reaction_r6__k=10.0;

	reaction_r6_=compartment_compartment_1*Hyperbolic_rate_law(reaction_r6__v, x(10), x(1), reaction_r6__k);

% Reaction: id = r7_, name = r7 	% Local Parameter:   id =  v, name = v
	reaction_r7__v=0.02;
	% Local Parameter:   id =  k, name = k
	reaction_r7__k=10.0;

	reaction_r7_=compartment_compartment_1*Hyperbolic_rate_law(reaction_r7__v, x(12), x(6), reaction_r7__k);

% Reaction: id = r8_, name = r8 	% Local Parameter:   id =  v, name = v
	reaction_r8__v=2.0;
	% Local Parameter:   id =  k, name = k
	reaction_r8__k=0.1;

	reaction_r8_=compartment_compartment_1*Hyperbolic_rate_law(reaction_r8__v, x(12), x(14), reaction_r8__k);

% Reaction: id = r9_, name = r9 	% Local Parameter:   id =  v, name = v
	reaction_r9__v=1.0E-9;
	% Local Parameter:   id =  k, name = k
	reaction_r9__k=10.0;

	reaction_r9_=compartment_compartment_1*Hyperbolic_rate_law(reaction_r9__v, x(12), x(11), reaction_r9__k);

% Reaction: id = r10, name = r10	% Local Parameter:   id =  v, name = v
	reaction_r10_v=50000.0;
	% Local Parameter:   id =  k, name = k
	reaction_r10_k=10.0;

	reaction_r10=compartment_compartment_1*Hyperbolic_rate_law(reaction_r10_v, x(15), x(1), reaction_r10_k);

% Reaction: id = r11, name = r11	% Local Parameter:   id =  v, name = v
	reaction_r11_v=50.0;
	% Local Parameter:   id =  k, name = k
	reaction_r11_k=1.0;

	reaction_r11=compartment_compartment_1*Hyperbolic_rate_law(reaction_r11_v, x(16), x(4), reaction_r11_k);

% Reaction: id = r12, name = r12	% Local Parameter:   id =  v, name = v
	reaction_r12_v=100.0;
	% Local Parameter:   id =  k, name = k
	reaction_r12_k=10.0;

	reaction_r12=compartment_compartment_1*Hyperbolic_rate_law(reaction_r12_v, x(17), x(36), reaction_r12_k);

% Reaction: id = r13, name = r13	% Local Parameter:   id =  v, name = v
	reaction_r13_v=9.0;
	% Local Parameter:   id =  k, name = k
	reaction_r13_k=500.0;

	reaction_r13=compartment_compartment_1*Hyperbolic_rate_law(reaction_r13_v, x(17), x(13), reaction_r13_k);

% Reaction: id = r14, name = r14	% Local Parameter:   id =  v, name = v
	reaction_r14_v=20000.0;
	% Local Parameter:   id =  k, name = k
	reaction_r14_k=0.5;

	reaction_r14=compartment_compartment_1*Hyperbolic_rate_law(reaction_r14_v, x(19), x(1), reaction_r14_k);

% Reaction: id = r15, name = r15	% Local Parameter:   id =  v, name = v
	reaction_r15_v=500.0;
	% Local Parameter:   id =  k, name = k
	reaction_r15_k=500.0;

	reaction_r15=compartment_compartment_1*Hyperbolic_rate_law(reaction_r15_v, x(19), x(21), reaction_r15_k);

% Reaction: id = r16, name = r16	% Local Parameter:   id =  v, name = v
	reaction_r16_v=7.0;
	% Local Parameter:   id =  k, name = k
	reaction_r16_k=10.0;

	reaction_r16=compartment_compartment_1*Hyperbolic_rate_law(reaction_r16_v, x(18), x(50), reaction_r16_k);

% Reaction: id = r17, name = r17	% Local Parameter:   id =  v, name = v
	reaction_r17_v=7.0;
	% Local Parameter:   id =  k, name = k
	reaction_r17_k=10.0;

	reaction_r17=compartment_compartment_1*Hyperbolic_rate_law(reaction_r17_v, x(18), x(21), reaction_r17_k);

% Reaction: id = r18, name = r18	% Local Parameter:   id =  v, name = v
	reaction_r18_v=7.0;
	% Local Parameter:   id =  k, name = k
	reaction_r18_k=100.0;

	reaction_r18=compartment_compartment_1*Hyperbolic_rate_law(reaction_r18_v, x(22), x(21), reaction_r18_k);

% Reaction: id = r19, name = r19	% Local Parameter:   id =  v, name = v
	reaction_r19_v=1.0;
	% Local Parameter:   id =  k, name = k
	reaction_r19_k=1.0;

	reaction_r19=compartment_compartment_1*Hyperbolic_rate_law(reaction_r19_v, x(22), x(4), reaction_r19_k);

% Reaction: id = r20, name = r20	% Local Parameter:   id =  v, name = v
	reaction_r20_v=7.0;
	% Local Parameter:   id =  k, name = k
	reaction_r20_k=1.0;

	reaction_r20=compartment_compartment_1*Hyperbolic_rate_law(reaction_r20_v, x(23), x(1), reaction_r20_k);

% Reaction: id = r21, name = r21	% Local Parameter:   id =  v, name = v
	reaction_r21_v=7.0;
	% Local Parameter:   id =  k, name = k
	reaction_r21_k=5000.0;

	reaction_r21=compartment_compartment_1*Hyperbolic_rate_law(reaction_r21_v, x(24), x(1), reaction_r21_k);

% Reaction: id = r22, name = r22	% Local Parameter:   id =  v, name = v
	reaction_r22_v=5.0;
	% Local Parameter:   id =  k, name = k
	reaction_r22_k=10000.0;

	reaction_r22=compartment_compartment_1*Hyperbolic_rate_law(reaction_r22_v, x(24), x(18), reaction_r22_k);

% Reaction: id = r23, name = r23	% Local Parameter:   id =  v, name = v
	reaction_r23_v=2.0;
	% Local Parameter:   id =  k, name = k
	reaction_r23_k=1.0;

	reaction_r23=compartment_compartment_1*Hyperbolic_rate_law(reaction_r23_v, x(24), x(4), reaction_r23_k);

% Reaction: id = r24, name = r24	% Local Parameter:   id =  v, name = v
	reaction_r24_v=7.0;
	% Local Parameter:   id =  k, name = k
	reaction_r24_k=1.0;

	reaction_r24=compartment_compartment_1*Hyperbolic_rate_law(reaction_r24_v, x(27), x(26), reaction_r24_k);

% Reaction: id = r25, name = r25	% Local Parameter:   id =  v, name = v
	reaction_r25_v=2.0;
	% Local Parameter:   id =  k, name = k
	reaction_r25_k=1.0;

	reaction_r25=compartment_compartment_1*Hyperbolic_rate_law(reaction_r25_v, x(36), x(4), reaction_r25_k);

% Reaction: id = r26, name = r26	% Local Parameter:   id =  c, name = c
	reaction_r26_c=0.01;

	reaction_r26=compartment_compartment_1*Irreversible_association(x(6), x(3), reaction_r26_c);

% Reaction: id = r27, name = r27	% Local Parameter:   id =  c, name = c
	reaction_r27_c=0.5;

	reaction_r27=compartment_compartment_1*Irreversible_association(x(16), x(13), reaction_r27_c);

% Reaction: id = r28, name = r28	% Local Parameter:   id =  c, name = c
	reaction_r28_c=0.5;

	reaction_r28=compartment_compartment_1*Irreversible_association(x(1), x(28), reaction_r28_c);

% Reaction: id = r29, name = r29	% Local Parameter:   id =  c, name = c
	reaction_r29_c=0.5;

	reaction_r29=compartment_compartment_1*Irreversible_association(x(11), x(29), reaction_r29_c);

% Reaction: id = r30, name = r30	% Local Parameter:   id =  c, name = c
	reaction_r30_c=0.1;

	reaction_r30=compartment_compartment_1*Irreversible_association(x(10), x(29), reaction_r30_c);

% Reaction: id = r31, name = r31	% Local Parameter:   id =  c, name = c
	reaction_r31_c=0.5;

	reaction_r31=compartment_compartment_1*Irreversible_association(x(30), x(32), reaction_r31_c);

% Reaction: id = r32, name = r32	% Local Parameter:   id =  c, name = c
	reaction_r32_c=0.5;

	reaction_r32=compartment_compartment_1*Irreversible_association(x(13), x(33), reaction_r32_c);

% Reaction: id = r33, name = r33	% Local Parameter:   id =  v, name = v
	reaction_r33_v=70.0;
	% Local Parameter:   id =  k, name = k
	reaction_r33_k=1.0;

	reaction_r33=compartment_compartment_1*Hyperbolic_rate_law(reaction_r33_v, x(31), x(13), reaction_r33_k);

% Reaction: id = r34, name = r34	% Local Parameter:   id =  v, name = v
	reaction_r34_v=900.0;
	% Local Parameter:   id =  k, name = k
	reaction_r34_k=200.0;

	reaction_r34=compartment_compartment_1*Hyperbolic_rate_law(reaction_r34_v, x(12), x(30), reaction_r34_k);

% Reaction: id = r35, name = r35	% Local Parameter:   id =  v, name = v
	reaction_r35_v=70.0;
	% Local Parameter:   id =  k, name = k
	reaction_r35_k=1.0;

	reaction_r35=compartment_compartment_1*Hyperbolic_rate_law(reaction_r35_v, x(5), x(30), reaction_r35_k);

% Reaction: id = r36, name = r36	% Local Parameter:   id =  v, name = v
	reaction_r36_v=1000.0;
	% Local Parameter:   id =  k, name = k
	reaction_r36_k=1.0;

	reaction_r36=compartment_compartment_1*Hyperbolic_rate_law(reaction_r36_v, x(31), x(29), reaction_r36_k);

% Reaction: id = r37, name = r37	% Local Parameter:   id =  c, name = c
	reaction_r37_c=0.5;

	reaction_r37=compartment_compartment_1*Irreversible_association(x(25), x(34), reaction_r37_c);

% Reaction: id = r38, name = r38	% Local Parameter:   id =  v, name = v
	reaction_r38_v=1.0;
	% Local Parameter:   id =  k, name = k
	reaction_r38_k=10.0;

	reaction_r38=compartment_compartment_1*Hyperbolic_rate_law(reaction_r38_v, x(10), x(13), reaction_r38_k);

% Reaction: id = r39, name = r39	% Local Parameter:   id =  v, name = v
	reaction_r39_v=1.0;
	% Local Parameter:   id =  k, name = k
	reaction_r39_k=10.0;

	reaction_r39=compartment_compartment_1*Hyperbolic_rate_law(reaction_r39_v, x(10), x(30), reaction_r39_k);

% Reaction: id = r40, name = r40	% Local Parameter:   id =  v, name = v
	reaction_r40_v=0.2;
	% Local Parameter:   id =  k, name = k
	reaction_r40_k=10.0;

	reaction_r40=compartment_compartment_1*Hyperbolic_rate_law(reaction_r40_v, x(10), x(6), reaction_r40_k);

% Reaction: id = r41, name = r41	% Local Parameter:   id =  v, name = v
	reaction_r41_v=7.0;
	% Local Parameter:   id =  k, name = k
	reaction_r41_k=1.0;

	reaction_r41=compartment_compartment_1*Hyperbolic_rate_law(reaction_r41_v, x(38), x(37), reaction_r41_k);

% Reaction: id = r42, name = r42	% Local Parameter:   id =  v, name = v
	reaction_r42_v=70.0;
	% Local Parameter:   id =  k, name = k
	reaction_r42_k=1.0;

	reaction_r42=compartment_compartment_1*Hyperbolic_rate_law(reaction_r42_v, x(38), x(39), reaction_r42_k);

% Reaction: id = r43, name = r43	% Local Parameter:   id =  v, name = v
	reaction_r43_v=7.0;
	% Local Parameter:   id =  k, name = k
	reaction_r43_k=1.0;

	reaction_r43=compartment_compartment_1*Hyperbolic_rate_law(reaction_r43_v, x(45), x(9), reaction_r43_k);

% Reaction: id = r44, name = r44
	reaction_r44=compartment_compartment_1*Irreversible_association(x(1), x(40), global_par_c44);

% Reaction: id = r45, name = r45
	reaction_r45=compartment_compartment_1*Irreversible_association(x(13), x(40), global_par_c45);

% Reaction: id = r46, name = r46
	reaction_r46=compartment_compartment_1*Irreversible_association(x(6), x(40), global_par_c46);

% Reaction: id = r47, name = r47
	reaction_r47=compartment_compartment_1*Warfarin_inhibited_first_order_kinetics(global_par_I_max, x(43), global_par_IC50, x(42), global_par_d_VK2);

% Reaction: id = r48, name = r48
	reaction_r48=compartment_compartment_1*Warfarin_inhibited_first_order_kinetics(global_par_I_max, x(43), global_par_IC50, x(44), global_par_d_VKO);

% Reaction: id = pII_VKH2, name = pII_VKH2
	reaction_pII_VKH2=compartment_compartment_1*VKH2mediated_factor_production(global_par_d_II, global_par_II0, x(35), global_par_VKH20);

% Reaction: id = pVII_VKH2, name = pVII_VKH2
	reaction_pVII_VKH2=compartment_compartment_1*VKH2mediated_factor_production(global_par_d_VII, global_par_VII0, x(35), global_par_VKH20);

% Reaction: id = pIX_VKH2, name = pIX_VKH2
	reaction_pIX_VKH2=compartment_compartment_1*VKH2mediated_factor_production(global_par_d_IX, global_par_IX0, x(35), global_par_VKH20);

% Reaction: id = pX_VKH2, name = pX_VKH2
	reaction_pX_VKH2=compartment_compartment_1*VKH2mediated_factor_production(global_par_d_X, global_par_X0, x(35), global_par_VKH20);

% Reaction: id = pPC_VKH2, name = pPC_VKH2
	reaction_pPC_VKH2=compartment_compartment_1*VKH2mediated_factor_production(global_par_d_PC, global_par_PC0, x(35), global_par_VKH20);

% Reaction: id = pPS_VKH2, name = pPS_VKH2
	reaction_pPS_VKH2=compartment_compartment_1*VKH2mediated_factor_production(global_par_d_PS, global_par_PS0, x(35), global_par_VKH20);

% Reaction: id = dFg, name = dFg
	reaction_dFg=compartment_compartment_1*global_par_d_Fg*x(19);

% Reaction: id = dF, name = dF	% Local Parameter:   id =  k1, name = k1
	reaction_dF_k1=0.05;

	reaction_dF=compartment_compartment_1*reaction_dF_k1*x(18);

% Reaction: id = dXF, name = dXF	% Local Parameter:   id =  k1, name = k1
	reaction_dXF_k1=0.05;

	reaction_dXF=compartment_compartment_1*reaction_dXF_k1*x(22);

% Reaction: id = dII, name = dII
	reaction_dII=compartment_compartment_1*global_par_d_II*x(17);

% Reaction: id = dIIa, name = dIIa	% Local Parameter:   id =  k1, name = k1
	reaction_dIIa_k1=67.4;

	reaction_dIIa=compartment_compartment_1*reaction_dIIa_k1*x(1);

% Reaction: id = dTF, name = dTF	% Local Parameter:   id =  k1, name = k1
	reaction_dTF_k1=0.05;

	reaction_dTF=compartment_compartment_1*reaction_dTF_k1*x(29);

% Reaction: id = dV, name = dV
	reaction_dV=compartment_compartment_1*global_par_d_V*x(15);

% Reaction: id = dVa, name = dVa	% Local Parameter:   id =  k1, name = k1
	reaction_dVa_k1=20.0;

	reaction_dVa=compartment_compartment_1*reaction_dVa_k1*x(16);

% Reaction: id = dVII, name = dVII
	reaction_dVII=compartment_compartment_1*global_par_d_VII*x(10);

% Reaction: id = dVIIa, name = dVIIa	% Local Parameter:   id =  k1, name = k1
	reaction_dVIIa_k1=20.0;

	reaction_dVIIa=compartment_compartment_1*reaction_dVIIa_k1*x(11);

% Reaction: id = dVIII, name = dVIII
	reaction_dVIII=compartment_compartment_1*global_par_d_VIII*x(2);

% Reaction: id = dVIIIa, name = dVIIIa	% Local Parameter:   id =  k1, name = k1
	reaction_dVIIIa_k1=20.0;

	reaction_dVIIIa=compartment_compartment_1*reaction_dVIIIa_k1*x(3);

% Reaction: id = dX, name = dX
	reaction_dX=compartment_compartment_1*global_par_d_X*x(12);

% Reaction: id = dXa, name = dXa	% Local Parameter:   id =  k1, name = k1
	reaction_dXa_k1=20.0;

	reaction_dXa=compartment_compartment_1*reaction_dXa_k1*x(13);

% Reaction: id = dIX, name = dIX
	reaction_dIX=compartment_compartment_1*global_par_d_IX*x(5);

% Reaction: id = dIXa, name = dIXa	% Local Parameter:   id =  k1, name = k1
	reaction_dIXa_k1=20.0;

	reaction_dIXa=compartment_compartment_1*reaction_dIXa_k1*x(6);

% Reaction: id = dXII, name = dXII
	reaction_dXII=compartment_compartment_1*global_par_d_XII*x(38);

% Reaction: id = dXIIa, name = dXIIa	% Local Parameter:   id =  k1, name = k1
	reaction_dXIIa_k1=20.0;

	reaction_dXIIa=compartment_compartment_1*reaction_dXIIa_k1*x(9);

% Reaction: id = dXIII, name = dXIII
	reaction_dXIII=compartment_compartment_1*global_par_d_XIII*x(23);

% Reaction: id = dXIIIa, name = dXIIIa	% Local Parameter:   id =  k1, name = k1
	reaction_dXIIIa_k1=0.69;

	reaction_dXIIIa=compartment_compartment_1*reaction_dXIIIa_k1*x(50);

% Reaction: id = dPk, name = dPk
	reaction_dPk=compartment_compartment_1*global_par_d_Pk*x(45);

% Reaction: id = dK, name = dK	% Local Parameter:   id =  k1, name = k1
	reaction_dK_k1=20.0;

	reaction_dK=compartment_compartment_1*reaction_dK_k1*x(39);

% Reaction: id = dPg, name = dPg
	reaction_dPg=compartment_compartment_1*global_par_d_Pg*x(24);

% Reaction: id = dP, name = dP	% Local Parameter:   id =  k1, name = k1
	reaction_dP_k1=20.0;

	reaction_dP=compartment_compartment_1*reaction_dP_k1*x(21);

% Reaction: id = dPC, name = dPC
	reaction_dPC=compartment_compartment_1*global_par_d_PC*x(27);

% Reaction: id = dAPC, name = dAPC	% Local Parameter:   id =  k1, name = k1
	reaction_dAPC_k1=20.4;

	reaction_dAPC=compartment_compartment_1*reaction_dAPC_k1*x(25);

% Reaction: id = dPS, name = dPS
	reaction_dPS=compartment_compartment_1*global_par_d_PS*x(34);

% Reaction: id = dFDP, name = dFDP	% Local Parameter:   id =  k1, name = k1
	reaction_dFDP_k1=3.5;

	reaction_dFDP=compartment_compartment_1*reaction_dFDP_k1*x(46);

% Reaction: id = dD, name = dD	% Local Parameter:   id =  k1, name = k1
	reaction_dD_k1=0.1;

	reaction_dD=compartment_compartment_1*reaction_dD_k1*x(47);

% Reaction: id = dTFPI, name = dTFPI
	reaction_dTFPI=compartment_compartment_1*global_par_d_TFPI*x(33);

% Reaction: id = dVIIa_TF, name = dVIIa_TF	% Local Parameter:   id =  k1, name = k1
	reaction_dVIIa_TF_k1=20.0;

	reaction_dVIIa_TF=compartment_compartment_1*reaction_dVIIa_TF_k1*x(30);

% Reaction: id = dVII_TF, name = dVII_TF	% Local Parameter:   id =  k1, name = k1
	reaction_dVII_TF_k1=0.7;

	reaction_dVII_TF=compartment_compartment_1*reaction_dVII_TF_k1*x(31);

% Reaction: id = dAPC_PS, name = dAPC_PS	% Local Parameter:   id =  k1, name = k1
	reaction_dAPC_PS_k1=20.0;

	reaction_dAPC_PS=compartment_compartment_1*reaction_dAPC_PS_k1*x(4);

% Reaction: id = dVa_Xa, name = dVa_Xa	% Local Parameter:   id =  k1, name = k1
	reaction_dVa_Xa_k1=20.0;

	reaction_dVa_Xa=compartment_compartment_1*reaction_dVa_Xa_k1*x(36);

% Reaction: id = dIXa_VIIIa, name = dIXa_VIIIa	% Local Parameter:   id =  k1, name = k1
	reaction_dIXa_VIIIa_k1=20.0;

	reaction_dIXa_VIIIa=compartment_compartment_1*reaction_dIXa_VIIIa_k1*x(14);

% Reaction: id = dTmod, name = dTmod
	reaction_dTmod=compartment_compartment_1*global_par_d_Tmod*x(28);

% Reaction: id = dIIa_Tmod, name = dIIa_Tmod	% Local Parameter:   id =  k1, name = k1
	reaction_dIIa_Tmod_k1=20.0;

	reaction_dIIa_Tmod=compartment_compartment_1*reaction_dIIa_Tmod_k1*x(26);

% Reaction: id = dXa_TFPI, name = dXa_TFPI	% Local Parameter:   id =  k1, name = k1
	reaction_dXa_TFPI_k1=20.0;

	reaction_dXa_TFPI=compartment_compartment_1*reaction_dXa_TFPI_k1*x(32);

% Reaction: id = dVIIa_TF_Xa_TFPI, name = dVIIa_TF_Xa_TFPI	% Local Parameter:   id =  k1, name = k1
	reaction_dVIIa_TF_Xa_TFPI_k1=20.0;

	reaction_dVIIa_TF_Xa_TFPI=compartment_compartment_1*reaction_dVIIa_TF_Xa_TFPI_k1*x(49);

% Reaction: id = dTAT, name = dTAT	% Local Parameter:   id =  k1, name = k1
	reaction_dTAT_k1=0.2;

	reaction_dTAT=compartment_compartment_1*reaction_dTAT_k1*x(48);

% Reaction: id = dCA, name = dCA	% Local Parameter:   id =  k1, name = k1
	reaction_dCA_k1=0.05;

	reaction_dCA=compartment_compartment_1*reaction_dCA_k1*x(37);

% Reaction: id = dXIa, name = dXIa	% Local Parameter:   id =  k1, name = k1
	reaction_dXIa_k1=20.0;

	reaction_dXIa=compartment_compartment_1*reaction_dXIa_k1*x(7);

% Reaction: id = dVKH2, name = dVKH2
	reaction_dVKH2=compartment_compartment_1*global_par_d_VKH2*x(35);

% Reaction: id = VK_transport, name = VK_transport
	reaction_VK_transport=compartment_compartment_1*(global_par_vitaminK_k12*x(42)-global_par_vitaminK_k21_Vc*x(54));

% Reaction: id = eHeparin, name = eHeparin
	reaction_eHeparin=compartment_compartment_1*global_par_heparin_ke*x(40);

% Reaction: id = eHeparinXa, name = eHeparinXa
	reaction_eHeparinXa=compartment_compartment_1*global_par_heparin_ke*x(41);

% Reaction: id = eHeparinIXa, name = eHeparinIXa
	reaction_eHeparinIXa=compartment_compartment_1*global_par_heparin_ke*x(52);

% Reaction: id = eHeparinIIa, name = eHeparinIIa
	reaction_eHeparinIIa=compartment_compartment_1*global_par_heparin_ke*x(51);

% Reaction: id = dXI, name = dXI	% Local Parameter:   id =  k1, name = k1
	reaction_dXI_k1=0.1;

	reaction_dXI=compartment_compartment_1*reaction_dXI_k1*x(8);

% Reaction: id = pXII, name = pXII
	reaction_pXII=compartment_compartment_1*Factor_production(global_par_XII0, global_par_d_XII);

% Reaction: id = pVIII, name = pVIII
	reaction_pVIII=compartment_compartment_1*Factor_production(global_par_VIII0, global_par_d_VIII);

% Reaction: id = pXI, name = pXI
	reaction_pXI=compartment_compartment_1*Factor_production(global_par_XI0, global_par_d_XI);

% Reaction: id = pV, name = pV
	reaction_pV=compartment_compartment_1*Factor_production(global_par_V0, global_par_d_V);

% Reaction: id = pFg, name = pFg
	reaction_pFg=compartment_compartment_1*Factor_production(global_par_Fg0, global_par_d_Fg);

% Reaction: id = pXIII, name = pXIII
	reaction_pXIII=compartment_compartment_1*Factor_production(global_par_XIII0, global_par_d_XIII);

% Reaction: id = pPg, name = pPg
	reaction_pPg=compartment_compartment_1*Factor_production(global_par_Pg0, global_par_d_Pg);

% Reaction: id = pTmod, name = pTmod
	reaction_pTmod=compartment_compartment_1*Factor_production(global_par_Tmod0, global_par_d_Tmod);

% Reaction: id = pTFPI, name = pTFPI
	reaction_pTFPI=compartment_compartment_1*Factor_production(global_par_TFPI0, global_par_d_TFPI);

% Reaction: id = pPk, name = pPk
	reaction_pPk=compartment_compartment_1*Factor_production(global_par_Pk0, global_par_d_Pk);

% Reaction: id = pVK, name = pVK
	reaction_pVK=compartment_compartment_1*Factor_production(global_par_VK0, global_par_d_VK);

% Reaction: id = dVK, name = dVK
	reaction_dVK=compartment_compartment_1*global_par_d_VK*x(42);

%Event: id=warfarin_administration
	event_warfarin_administration=piecewise(time-24*ceil(time/24),  xor (time < 0, 24 < 0), time-24*floor(time/24)) > 1;

	if(event_warfarin_administration) 
		x(53)=x(53)+global_par_warfarin_daily_dose;
	end

%Event: id=heparin_administration
	event_heparin_administration=time > global_par_heparin_infusion_duration_hr;

	if(event_heparin_administration) 
		global_par_heparin_infusion=0;
	end

	xdot=zeros(56,1);
	% rateRule: variable = C_warf
	xdot(55) = global_par_warfarin_ka*x(53)/global_par_warfarin_Vd-global_par_warfarin_ke*x(43);
	% rateRule: variable = A_warf
	xdot(56) = (-global_par_warfarin_ka)*x(53);
	
% Species:   id = IIa, name = IIa, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r12) + ( 1.0 * reaction_r13) + (-1.0 * reaction_r28) + (-1.0 * reaction_r44) + (-1.0 * reaction_dIIa));
	
% Species:   id = VIII, name = VIII, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*((-1.0 * reaction_r1_) + (-1.0 * reaction_dVIII) + ( 1.0 * reaction_pVIII));
	
% Species:   id = VIIIa, name = VIIIa, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r1_) + (-1.0 * reaction_r2_) + (-1.0 * reaction_r26) + (-1.0 * reaction_dVIIIa));
	
% Species:   id = APC_PS, name = APC_PS, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r37) + (-1.0 * reaction_dAPC_PS));
	
% Species:   id = IX, name = IX, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*((-1.0 * reaction_r3_) + (-1.0 * reaction_r35) + ( 1.0 * reaction_pIX_VKH2) + (-1.0 * reaction_dIX));
	
% Species:   id = IXa, name = IXa, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r3_) + (-1.0 * reaction_r26) + ( 1.0 * reaction_r35) + (-1.0 * reaction_r46) + (-1.0 * reaction_dIXa));
	
% Species:   id = XIa, name = XIa, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r4_) + ( 1.0 * reaction_r5_) + (-1.0 * reaction_dXIa));
	
% Species:   id = XI, name = XI, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*((-1.0 * reaction_r4_) + (-1.0 * reaction_r5_) + (-1.0 * reaction_dXI) + ( 1.0 * reaction_pXI));
	
% Species:   id = XIIa, name = XIIa, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r41) + ( 1.0 * reaction_r42) + (-1.0 * reaction_dXIIa));
	
% Species:   id = VII, name = VII, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_1))*((-1.0 * reaction_r6_) + (-1.0 * reaction_r30) + (-1.0 * reaction_r38) + (-1.0 * reaction_r39) + (-1.0 * reaction_r40) + ( 1.0 * reaction_pVII_VKH2) + (-1.0 * reaction_dVII));
	
% Species:   id = VIIa, name = VIIa, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r6_) + (-1.0 * reaction_r29) + ( 1.0 * reaction_r38) + ( 1.0 * reaction_r39) + ( 1.0 * reaction_r40) + (-1.0 * reaction_dVIIa));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_1))*((-1.0 * reaction_r7_) + (-1.0 * reaction_r8_) + (-1.0 * reaction_r9_) + (-1.0 * reaction_r34) + ( 1.0 * reaction_pX_VKH2) + (-1.0 * reaction_dX));
	
% Species:   id = Xa, name = Xa, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r7_) + ( 1.0 * reaction_r8_) + ( 1.0 * reaction_r9_) + (-1.0 * reaction_r27) + (-1.0 * reaction_r32) + ( 1.0 * reaction_r34) + (-1.0 * reaction_r45) + (-1.0 * reaction_dXa));
	
% Species:   id = IXa_VIIIa, name = IXa_VIIIa, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r26) + (-1.0 * reaction_dIXa_VIIIa));
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_1))*((-1.0 * reaction_r10) + (-1.0 * reaction_dV) + ( 1.0 * reaction_pV));
	
% Species:   id = Va, name = Va, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r10) + (-1.0 * reaction_r11) + (-1.0 * reaction_r27) + (-1.0 * reaction_dVa));
	
% Species:   id = II, name = II, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_1))*((-1.0 * reaction_r12) + (-1.0 * reaction_r13) + ( 1.0 * reaction_pII_VKH2) + (-1.0 * reaction_dII));
	
% Species:   id = F, name = F, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r14) + (-1.0 * reaction_r16) + (-1.0 * reaction_r17) + (-1.0 * reaction_dF));
	
% Species:   id = Fg, name = Fg, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_1))*((-1.0 * reaction_r14) + (-1.0 * reaction_r15) + (-1.0 * reaction_dFg) + ( 1.0 * reaction_pFg));
	
% Species:   id = DP, name = DP, involved in a rule 	xdot(20) = x(20);
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r21) + ( 1.0 * reaction_r22) + ( 1.0 * reaction_r23) + (-1.0 * reaction_dP));
	
% Species:   id = XF, name = XF, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r16) + (-1.0 * reaction_r18) + (-1.0 * reaction_r19) + (-1.0 * reaction_dXF));
	
% Species:   id = XIII, name = XIII, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_1))*((-1.0 * reaction_r20) + (-1.0 * reaction_dXIII) + ( 1.0 * reaction_pXIII));
	
% Species:   id = Pg, name = Pg, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_1))*((-1.0 * reaction_r21) + (-1.0 * reaction_r22) + (-1.0 * reaction_r23) + (-1.0 * reaction_dPg) + ( 1.0 * reaction_pPg));
	
% Species:   id = APC, name = APC, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r24) + (-1.0 * reaction_r37) + (-1.0 * reaction_dAPC));
	
% Species:   id = IIa_Tmod, name = IIa_Tmod, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r28) + (-1.0 * reaction_dIIa_Tmod));
	
% Species:   id = PC, name = PC, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment_1))*((-1.0 * reaction_r24) + ( 1.0 * reaction_pPC_VKH2) + (-1.0 * reaction_dPC));
	
% Species:   id = Tmod, name = Tmod, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment_1))*((-1.0 * reaction_r28) + (-1.0 * reaction_dTmod) + ( 1.0 * reaction_pTmod));
	
% Species:   id = TF, name = TF, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment_1))*((-1.0 * reaction_r29) + (-1.0 * reaction_r30) + (-1.0 * reaction_dTF));
	
% Species:   id = VIIa_TF, name = VIIa_TF, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r29) + (-1.0 * reaction_r31) + ( 1.0 * reaction_r33) + ( 1.0 * reaction_r36) + (-1.0 * reaction_dVIIa_TF));
	
% Species:   id = VII_TF, name = VII_TF, affected by kineticLaw
	xdot(31) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r30) + (-1.0 * reaction_r33) + (-1.0 * reaction_r36) + (-1.0 * reaction_dVII_TF));
	
% Species:   id = Xa_TFPI, name = Xa_TFPI, affected by kineticLaw
	xdot(32) = (1/(compartment_compartment_1))*((-1.0 * reaction_r31) + ( 1.0 * reaction_r32) + (-1.0 * reaction_dXa_TFPI));
	
% Species:   id = TFPI, name = TFPI, affected by kineticLaw
	xdot(33) = (1/(compartment_compartment_1))*((-1.0 * reaction_r32) + (-1.0 * reaction_dTFPI) + ( 1.0 * reaction_pTFPI));
	
% Species:   id = PS, name = PS, affected by kineticLaw
	xdot(34) = (1/(compartment_compartment_1))*((-1.0 * reaction_r37) + ( 1.0 * reaction_pPS_VKH2) + (-1.0 * reaction_dPS));
	
% Species:   id = VKH2, name = VKH2, affected by kineticLaw
	xdot(35) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r47) + (-1.0 * reaction_dVKH2));
	
% Species:   id = Va_Xa, name = Va_Xa, affected by kineticLaw
	xdot(36) = (1/(compartment_compartment_1))*((-1.0 * reaction_r25) + ( 1.0 * reaction_r27) + (-1.0 * reaction_dVa_Xa));
	
% Species:   id = CA, name = CA, affected by kineticLaw
	xdot(37) = (1/(compartment_compartment_1))*((-1.0 * reaction_dCA));
	
% Species:   id = XII, name = XII, affected by kineticLaw
	xdot(38) = (1/(compartment_compartment_1))*((-1.0 * reaction_r41) + (-1.0 * reaction_r42) + (-1.0 * reaction_dXII) + ( 1.0 * reaction_pXII));
	
% Species:   id = K, name = K, affected by kineticLaw
	xdot(39) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r43) + (-1.0 * reaction_dK));
	
% Species:   id = ATIII_Heparin, name = ATIII_Heparin, affected by kineticLaw
	xdot(40) = (1/(compartment_compartment_1))*((-1.0 * reaction_r44) + (-1.0 * reaction_r45) + (-1.0 * reaction_r46) + (-1.0 * reaction_eHeparin) + ( 1.0 * reaction_pHeparin));
	
% Species:   id = Xa_ATIII_Heparin, name = Xa_ATIII_Heparin, affected by kineticLaw
	xdot(41) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r45) + (-1.0 * reaction_eHeparinXa));
	
% Species:   id = VK, name = VK, affected by kineticLaw
	xdot(42) = (1/(compartment_compartment_1))*((-1.0 * reaction_r47) + ( 1.0 * reaction_r48) + (-1.0 * reaction_VK_transport) + ( 1.0 * reaction_pVK) + (-1.0 * reaction_dVK));
	
% Species:   id = C_warf, name = C_warf, involved in a rule 	xdot(43) = x(43);
	
% Species:   id = VKO, name = VKO, affected by kineticLaw
	xdot(44) = (1/(compartment_compartment_1))*((-1.0 * reaction_r48) + ( 1.0 * reaction_dVKH2));
	
% Species:   id = Pk, name = Pk, affected by kineticLaw
	xdot(45) = (1/(compartment_compartment_1))*((-1.0 * reaction_r43) + (-1.0 * reaction_dPk) + ( 1.0 * reaction_pPk));
	
% Species:   id = FDP, name = FDP, affected by kineticLaw
	xdot(46) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r15) + ( 1.0 * reaction_r17) + ( 1.0 * reaction_dFg) + ( 1.0 * reaction_dF) + (-1.0 * reaction_dFDP));
	
% Species:   id = D, name = D, affected by kineticLaw
	xdot(47) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r18) + ( 1.0 * reaction_r19) + ( 1.0 * reaction_dXF) + (-1.0 * reaction_dD));
	
% Species:   id = TAT, name = TAT, affected by kineticLaw
	xdot(48) = (1/(compartment_compartment_1))*(( 1.0 * reaction_dIIa) + (-1.0 * reaction_dTAT));
	
% Species:   id = VIIa_TF_Xa_TFPI, name = VIIa_TF_Xa_TFPI, affected by kineticLaw
	xdot(49) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r31) + (-1.0 * reaction_dVIIa_TF_Xa_TFPI));
	
% Species:   id = XIIIa, name = XIIIa, affected by kineticLaw
	xdot(50) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r20) + (-1.0 * reaction_dXIIIa));
	
% Species:   id = IIa_ATIII_Heparin, name = IIa_ATIII_Heparin, affected by kineticLaw
	xdot(51) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r44) + (-1.0 * reaction_eHeparinIIa));
	
% Species:   id = IXa_ATIII_Heparin, name = IXa_ATIII_Heparin, affected by kineticLaw
	xdot(52) = (1/(compartment_compartment_1))*(( 1.0 * reaction_r46) + (-1.0 * reaction_eHeparinIXa));
	
% Species:   id = A_warf, name = A_warf, involved in a rule 	xdot(53) = x(53);
	
% Species:   id = VK_p, name = VK_p, affected by kineticLaw
	xdot(54) = (1/(compartment_compartment_1))*(( 1.0 * reaction_VK_transport));
end

function z=Constant_flux_irreversible(v), z=(v);end

function z=Factor_production(initial,degradation), z=(initial*degradation);end

function z=Hyperbolic_rate_law(v,substrate,enzyme,k), z=(v*substrate*enzyme/(k+enzyme));end

function z=VKH2mediated_factor_production(d_factor,factor_initial,VKH2,VKH2_initial), z=(d_factor*factor_initial*VKH2/VKH2_initial);end

function z=Irreversible_association(s1,s2,c), z=(s1*s2/c);end

function z=Warfarin_inhibited_first_order_kinetics(Imax,Cwarf,IC50,substrate,degradation), z=(degradation*substrate*(1-Imax*Cwarf/(IC50+Cwarf)));end

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


