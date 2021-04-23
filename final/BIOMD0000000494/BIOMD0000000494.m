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
% Model name = Roblitz2013 - Menstrual Cycle following GnRH analogue administration
%
% is http://identifiers.org/biomodels.db/MODEL1311220000
% is http://identifiers.org/biomodels.db/BIOMD0000000494
% isDescribedBy http://identifiers.org/pubmed/23206386
%


function main()
%Initial conditions vector
	x0=zeros(45,1);
	x0(1) = 2.26;
	x0(2) = 19.92;
	x0(3) = 45.0;
	x0(4) = 0.662;
	x0(5) = 4.1;
	x0(6) = 48627.2;
	x0(7) = 0.00326;
	x0(8) = 1.447E-5;
	x0(9) = 1.294E-5;
	x0(10) = 1.07;
	x0(11) = 86.84;
	x0(12) = 52.18;
	x0(13) = 261119.0;
	x0(14) = 0.263;
	x0(15) = 2.667;
	x0(16) = 2.762E-5;
	x0(17) = 3.772E-4;
	x0(18) = 0.00334;
	x0(19) = 0.01385;
	x0(20) = 7.652E-19;
	x0(21) = 2.41;
	x0(22) = 0.244;
	x0(23) = 6.341;
	x0(24) = 1.497;
	x0(25) = 0.119;
	x0(26) = 0.00928;
	x0(27) = 9.409E-4;
	x0(28) = 8.41;
	x0(29) = 0.699;
	x0(30) = 1.098E-8;
	x0(31) = 2.171E-6;
	x0(32) = 0.504;
	x0(33) = 1.604E-5;
	x0(34) = 0.0;
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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Parameter:   id =  p1, name = b_syn_LH
	global_par_p1=7309.91587614104;
% Parameter:   id =  p2, name = k_E2_LH
	global_par_p2=7309.91587614104;
% Parameter:   id =  p174, name = k_AF2_IhB
	global_par_p174=447.467334884553;
% Parameter:   id =  p173, name = b_IhB
	global_par_p173=89.4934669769107;
% Parameter:   id =  p3, name = T_E2_LH
	global_par_p3=192.2041;
% Parameter:   id =  p4, name = T_P4_LH
	global_par_p4=2.3708;
% Parameter:   id =  p6, name = n_E2_LH
	global_par_p6=10.0;
% Parameter:   id =  p7, name = n_P4_LH
	global_par_p7=1.0;
% Parameter:   id =  p175, name = k_Sc2_IhB
	global_par_p175=134240.200465366;
% Parameter:   id =  p152, name = k_AF2_E2
	global_par_p152=2.09450510112762;
% Parameter:   id =  p158, name = b_E2
	global_par_p158=51.558081260068;
% Parameter:   id =  p159, name = k_AF3_E2
	global_par_p159=9.28;
% Parameter:   id =  p160, name = k_AF4_E2
	global_par_p160=3480.27;
% Parameter:   id =  p161, name = k_PrF_E2
	global_par_p161=0.972;
% Parameter:   id =  p164, name = k_Lut1_E2
	global_par_p164=1713.71039914086;
% Parameter:   id =  p165, name = k_Lut4_E2
	global_par_p165=8675.13871487382;
% Parameter:   id =  p154, name = k_cl_E2
	global_par_p154=5.23500984428137;
% Parameter:   id =  p168, name = b_IhA
	global_par_p168=1.44522999821013;
% Parameter:   id =  p169, name = k_PrF_IhA
	global_par_p169=2.28494719885448;
% Parameter:   id =  p170, name = k_Lut2_IhA
	global_par_p170=28.2110255951316;
% Parameter:   id =  p171, name = k_Lut3_IhA
	global_par_p171=216.85;
% Parameter:   id =  p172, name = k_Lut4_IhA
	global_par_p172=114.247359942724;
% Parameter:   id =  p177, name = k_Sc1_IhA
	global_par_p177=60.0;
% Parameter:   id =  p178, name = k_Lut1_IhA
	global_par_p178=180.0;
% Parameter:   id =  p166, name = b_P4
	global_par_p166=0.9426346876678;
% Parameter:   id =  p167, name = k_Lut4_P4
	global_par_p167=761.643100053696;
% Parameter:   id =  p155, name = k_cl_P4
	global_par_p155=5.12958654018257;
% Parameter:   id =  p301, name = a_0
	global_par_p301=0.005593;
% Parameter:   id =  p203, name = T_P4_freq
	global_par_p203=1.2;
% Parameter:   id =  p204, name = n_P4_freq
	global_par_p204=2.0;
% Parameter:   id =  p205, name = T_E2_freq
	global_par_p205=220.0;
% Parameter:   id =  p206, name = n_E2_freq
	global_par_p206=10.0;
% Parameter:   id =  p208, name = T_E2_mass_1
	global_par_p208=220.0;
% Parameter:   id =  p209, name = n_E2_mass_1
	global_par_p209=2.0;
% Parameter:   id =  p210, name = T_E2_mass_2
	global_par_p210=9.6;
% Parameter:   id =  p211, name = n_E2_mass_2
	global_par_p211=1.0;
% Parameter:   id =  p12, name = V_blood
	global_par_p12=5.0;
% Parameter:   id =  p300, name = k_degr_G
	global_par_p300=0.447467334884553;
% Parameter:   id =  p30, name = k_cl_IhAe
	global_par_p30=0.1989;
% Parameter:   id =  p21, name = k_Ih_FSH
	global_par_p21=22129.0495793807;
% Parameter:   id =  p22, name = T_IhA
	global_par_p22=95.81;
% Parameter:   id =  p23, name = T_IhB
	global_par_p23=70.0;
% Parameter:   id =  p24, name = n_IhA
	global_par_p24=5.0;
% Parameter:   id =  p25, name = n_IhB
	global_par_p25=2.0;
% Parameter:   id =  p11, name = T_freq_FSH
	global_par_p11=10.0;
% Parameter:   id =  p13, name = n_freq_FSH
	global_par_p13=3.0;
% Parameter:   id =  p8, name = T_GR_LH
	global_par_p8=3.0E-4;
% Parameter:   id =  p9, name = n_GR_LH
	global_par_p9=5.0;
% Parameter:   id =  p16, name = b_rel_LH
	global_par_p16=0.00476024700196886;
% Parameter:   id =  p5, name = k_GR_LH
	global_par_p5=0.190415249686773;
% Parameter:   id =  p302, name = k_on_G
	global_par_p302=322.176481116879;
% Parameter:   id =  p307, name = k_recy_RG
	global_par_p307=32.2176481116879;
% Parameter:   id =  p306, name = k_inter_RG
	global_par_p306=3.22176481116878;
% Parameter:   id =  p308, name = k_degr_RG
	global_par_p308=0.0894934669769107;
% Parameter:   id =  p311, name = k_syn_RG
	global_par_p311=8.94934669769107E-5;
% Parameter:   id =  p303, name = k_off_G
	global_par_p303=644.352962233757;
% Parameter:   id =  p309, name = k_inact_GR
	global_par_p309=32.2176481116879;
% Parameter:   id =  p310, name = k_act_GR
	global_par_p310=3.222;
% Parameter:   id =  p305, name = k_diss_GRi
	global_par_p305=32.2176481116879;
% Parameter:   id =  p231, name = k_cl_LH
	global_par_p231=74.8505459101486;
% Parameter:   id =  p230, name = k_on_LH
	global_par_p230=2.1430105602291;
% Parameter:   id =  p234, name = k_des_LH
	global_par_p234=183.363164488992;
% Parameter:   id =  p232, name = k_recy_LH
	global_par_p232=68.9493466976911;
% Parameter:   id =  p17, name = b_rel_FSH
	global_par_p17=0.0569894397708967;
% Parameter:   id =  p28, name = k_GR_FSH
	global_par_p28=0.27201539287632;
% Parameter:   id =  p18, name = T_GR_FSH
	global_par_p18=3.0E-4;
% Parameter:   id =  p20, name = n_GR_FSH
	global_par_p20=2.0;
% Parameter:   id =  p240, name = k_on_FSH
	global_par_p240=3.52890638983354;
% Parameter:   id =  p242, name = k_recy_FSH
	global_par_p242=61.0291748702345;
% Parameter:   id =  p244, name = k_des_FSH
	global_par_p244=138.303203866118;
% Parameter:   id =  p94, name = k_s
	global_par_p94=0.2186056917845;
% Parameter:   id =  p90, name = T_FSH_s
	global_par_p90=3.0;
% Parameter:   id =  p91, name = n_FSH_s
	global_par_p91=5.0;
% Parameter:   id =  p95, name = k_cl_s
	global_par_p95=1.34267048505459;
% Parameter:   id =  p92, name = T_P4_s
	global_par_p92=1.2348;
% Parameter:   id =  p93, name = n_P4_s
	global_par_p93=5.0;
% Parameter:   id =  p49, name = k_AF1
	global_par_p49=3.66180418829425;
% Parameter:   id =  p48, name = T_FSHR_AF1
	global_par_p48=0.608121;
% Parameter:   id =  p47, name = n_FSHR_AF1
	global_par_p47=3.0;
% Parameter:   id =  p50, name = k_AF1_AF2
	global_par_p50=1.22060139609808;
% Parameter:   id =  p51, name = k_AF2_AF3
	global_par_p51=4.88231609092536;
% Parameter:   id =  p52, name = SF_LHR
	global_par_p52=2.7262;
% Parameter:   id =  p46, name = n_AF2_AF3
	global_par_p46=3.68896;
% Parameter:   id =  p32, name = k_AF3_AF4
	global_par_p32=122.060139609808;
% Parameter:   id =  p43, name = n_AF3_AF4
	global_par_p43=5.0;
% Parameter:   id =  p31, name = k_AF3_AF3
	global_par_p31=0.122060139609808;
% Parameter:   id =  p55, name = SeF_max
	global_par_p55=10.0;
% Parameter:   id =  p33, name = k_A42_AF4
	global_par_p33=12.2060139609808;
% Parameter:   id =  p44, name = n_AF4
	global_par_p44=2.0;
% Parameter:   id =  p34, name = k_AF4_PrF
	global_par_p34=332.754608913549;
% Parameter:   id =  p35, name = k_cl_PrF
	global_par_p35=122.060139609808;
% Parameter:   id =  p45, name = n_OvF
	global_par_p45=6.0;
% Parameter:   id =  p27, name = k_OvF
	global_par_p27=7.98433864327904;
% Parameter:   id =  p53, name = T_PrF_OvF
	global_par_p53=3.0;
% Parameter:   id =  p54, name = n_PrF_OvF
	global_par_p54=10.0;
% Parameter:   id =  p36, name = k_cl_OvF
	global_par_p36=12.2060139609808;
% Parameter:   id =  p26, name = k_Sc1
	global_par_p26=1.20834079112225;
% Parameter:   id =  p56, name = T_OvF_Sc1
	global_par_p56=0.02;
% Parameter:   id =  p57, name = n_OvF_Sc1
	global_par_p57=10.0;
% Parameter:   id =  p37, name = k_Sc1_Sc2
	global_par_p37=1.22060139609808;
% Parameter:   id =  p38, name = k_Sc2_Lut1
	global_par_p38=0.958117057454806;
% Parameter:   id =  p39, name = k_Lut1_Lut2
	global_par_p39=0.924735994272418;
% Parameter:   id =  p83, name = T_GR_Lut
	global_par_p83=8.0E-4;
% Parameter:   id =  p84, name = n_GR_Lut
	global_par_p84=5.0;
% Parameter:   id =  p40, name = k_Lut2_Lut3
	global_par_p40=0.756765706103455;
% Parameter:   id =  p41, name = k_Lut3_Lut4
	global_par_p41=0.610291748702345;
% Parameter:   id =  p42, name = k_cl_Lut4
	global_par_p42=0.542840522641847;
% Parameter:   id =  p156, name = k_IhA
	global_par_p156=4.28718453552891;
% Parameter:   id =  p157, name = k_cl_IhB
	global_par_p157=172.453910864507;
% Parameter:   id =  p304, name = k_degr_GRi
	global_par_p304=0.00894934669769107;
% Parameter:   id =  p241, name = k_cl_FSH
	global_par_p241=114.247359942724;
% Parameter:   id =  p80, name = m_GR_Lut
	global_par_p80=20.0;
% Parameter:   id =  freq, name = freq
% Parameter:   id =  mass, name = mass
% Parameter:   id =  facE2, name = facE2
	global_par_facE2=1.0;
% Parameter:   id =  facP4, name = facP4
	global_par_facP4=1.0;
% Parameter:   id =  facLH, name = facLH
	global_par_facLH=1.0;
% Parameter:   id =  facFSH, name = facFSH
	global_par_facFSH=1.0;
% Parameter:   id =  p202, name = f_0
	global_par_p202=16.0;
% Parameter:   id =  p201, name = m_E2_freq
	global_par_p201=1.0;
% Parameter:   id =  p274, name = k_A_Ago
	global_par_p274=54.2;
% Parameter:   id =  p275, name = cl_Ago
	global_par_p275=2.65;
% Parameter:   id =  p273, name = V_c_F_Ago
	global_par_p273=38.12;
% Parameter:   id =  p313, name = k_off_Ago
	global_par_p313=644.35;
% Parameter:   id =  p312, name = k_on_Ago
	global_par_p312=322.18;
% Parameter:   id =  p314, name = k_degr_AgoR
	global_par_p314=0.009;
% Parameter:   id =  p315, name = k_diss_AgoR
	global_par_p315=32.22;
% Parameter:   id =  p319, name = k_inact_AgoR
	global_par_p319=32.22;
% Parameter:   id =  p320, name = k_act_AgoR
	global_par_p320=3.22;
% Parameter:   id =  p269, name = t_0_Ago
	global_par_p269=91.0;
% Parameter:   id =  p272, name = dose_Ago
	global_par_p272=100.0;
% Parameter:   id =  p512, name = k_on_ant
	global_par_p512=322.18;
% Parameter:   id =  p513, name = k_off_Ant
	global_par_p513=644.35;
% Parameter:   id =  p514, name = k_degr_Ant
	global_par_p514=0.009;
% Parameter:   id =  p474, name = k_A_Ant
	global_par_p474=45.56;
% Parameter:   id =  p475, name = cl_Ant
	global_par_p475=5.0;
% Parameter:   id =  p473, name = V_c_F_Ant
	global_par_p473=34.9;
% Parameter:   id =  p476, name = k_cp_Ant
	global_par_p476=3.216;
% Parameter:   id =  p477, name = k_pc_Ant
	global_par_p477=4.76;
% Parameter:   id =  p469, name = t_0_Ant
	global_par_p469=34.0;
% Parameter:   id =  p472, name = dose_Ant
	global_par_p472=500.0;
% assignmentRule: variable = freq
	global_par_freq=global_par_p202/(1+(x(21)*global_par_p201*compartment_default/global_par_p7/(global_par_p203*global_par_facP4))^global_par_p204)*(1+global_par_p201*(x(3)*global_par_p201*compartment_default/global_par_p7/(global_par_p205*global_par_facE2))^global_par_p206/(1+(x(3)*global_par_p201*compartment_default/global_par_p7/(global_par_p205*global_par_facE2))^global_par_p206));
% assignmentRule: variable = mass
	global_par_mass=global_par_p301*((x(3)*global_par_p201*compartment_default/global_par_p7/(global_par_p208*global_par_facE2))^global_par_p209/(1+(x(3)*global_par_p201*compartment_default/global_par_p7/(global_par_p208*global_par_facE2))^global_par_p209)+1/(1+(x(3)*global_par_p201*compartment_default/global_par_p7/(global_par_p210*global_par_facE2))^global_par_p211));

% Reaction: id = re2, name = re2
	reaction_re2=compartment_default*function_1(x(8), compartment_default, global_par_p309);

% Reaction: id = re3, name = re3
	reaction_re3=compartment_default*function_2(x(9), compartment_default, global_par_p310);

% Reaction: id = re4, name = re4
	reaction_re4=compartment_default*function_3(x(27), compartment_default, global_par_p307);

% Reaction: id = re5, name = re5
	reaction_re5=compartment_default*function_4(x(26), compartment_default, global_par_p306);

% Reaction: id = re6, name = re6
	reaction_re6=compartment_default*function_5(x(9), compartment_default, global_par_p305);

% Reaction: id = re8, name = re8
	reaction_re8=compartment_default*function_6(x(7), x(26), compartment_default, global_par_p302);

% Reaction: id = re11, name = re11
	reaction_re11=compartment_default*function_7(x(27), compartment_default, global_par_p308);

% Reaction: id = re15, name = re15
	reaction_re15=compartment_default*function_8(x(8), compartment_default, global_par_p303);

% Reaction: id = re24, name = re24
	reaction_re24=compartment_default*function_9(x(7), compartment_default, global_par_p300);

% Reaction: id = re25, name = re25
	reaction_re25=compartment_default*function_10(x(3), x(21), compartment_default, global_par_facE2, global_par_facP4, global_par_p1, global_par_p2, global_par_p3, global_par_p4, global_par_p6, global_par_p7);

% Reaction: id = re26, name = re26
	reaction_re26=compartment_default*function_11(x(11), x(12), compartment_default, global_par_freq, global_par_p11, global_par_p13, global_par_p21, global_par_p22, global_par_p23, global_par_p24, global_par_p25);

% Reaction: id = re28, name = re28
	reaction_re28=compartment_default*function_12(x(37), x(8), x(13), compartment_default, global_par_p16, global_par_p5, global_par_p8, global_par_p9);

% Reaction: id = re29, name = re29
	reaction_re29=compartment_default*function_13(x(37), x(6), x(8), compartment_default, global_par_p17, global_par_p18, global_par_p20, global_par_p28);

% Reaction: id = re35, name = re35
	reaction_re35=compartment_default*function_14(x(15), x(28), compartment_default, global_par_facLH, global_par_p230);

% Reaction: id = re36, name = re36
	reaction_re36=compartment_default*function_15(x(14), compartment_default, global_par_p234);

% Reaction: id = re37, name = re37
	reaction_re37=compartment_default*function_16(x(29), compartment_default, global_par_p232);

% Reaction: id = re38, name = re38
	reaction_re38=compartment_default*function_17(x(15), compartment_default, global_par_p231);

% Reaction: id = re39, name = re39
	reaction_re39=compartment_default*function_18(x(4), compartment_default, global_par_p244);

% Reaction: id = re40, name = re40
	reaction_re40=compartment_default*function_19(x(24), compartment_default, global_par_p242);

% Reaction: id = re42, name = re42
	reaction_re42=compartment_default*function_20(x(1), x(4), compartment_default, global_par_p50);

% Reaction: id = re43, name = re43
	reaction_re43=compartment_default*function_21(x(4), compartment_default, global_par_p47, global_par_p48, global_par_p49);

% Reaction: id = re44, name = re44
	reaction_re44=compartment_default*function_22(x(2), x(14), x(25), compartment_default, global_par_p46, global_par_p51, global_par_p52);

% Reaction: id = re45, name = re45
	reaction_re45=compartment_default*function_23(x(32), x(14), x(25), compartment_default, global_par_p32, global_par_p43, global_par_p52);

% Reaction: id = re46, name = re46
	reaction_re46=compartment_default*function_24(x(33), x(14), x(25), compartment_default, global_par_p34, global_par_p52);

% Reaction: id = re49, name = re49
	reaction_re49=compartment_default*function_25(x(30), compartment_default, global_par_p37);

% Reaction: id = re50, name = re50
	reaction_re50=compartment_default*function_26(x(31), compartment_default, global_par_p38);

% Reaction: id = re51, name = re51
	reaction_re51=compartment_default*function_27(x(37), x(8), x(16), compartment_default, global_par_p39, global_par_p80, global_par_p83, global_par_p84);

% Reaction: id = re52, name = re52
	reaction_re52=compartment_default*function_28(x(37), x(8), x(17), compartment_default, global_par_p40, global_par_p80, global_par_p83, global_par_p84);

% Reaction: id = re53, name = re53
	reaction_re53=compartment_default*function_29(x(37), x(8), x(18), compartment_default, global_par_p41, global_par_p80, global_par_p83, global_par_p84);

% Reaction: id = re54, name = re54
	reaction_re54=compartment_default*function_30(x(5), compartment_default, global_par_p90, global_par_p91, global_par_p94);

% Reaction: id = re56, name = re56
	reaction_re56=compartment_default*function_31(x(21), x(25), compartment_default, global_par_facP4, global_par_p92, global_par_p93, global_par_p95);

% Reaction: id = re57, name = re57
	reaction_re57=compartment_default*function_32(x(32), x(4), compartment_default, global_par_p31, global_par_p55);

% Reaction: id = re58, name = re58
	reaction_re58=compartment_default*function_33(x(33), x(14), compartment_default, global_par_p33, global_par_p44, global_par_p52, global_par_p55);

% Reaction: id = re59, name = re59
	reaction_re59=compartment_default*function_34(x(14), x(22), x(25), compartment_default, global_par_p35, global_par_p45, global_par_p52);

% Reaction: id = re60, name = re60
	reaction_re60=compartment_default*function_35(x(14), x(22), x(25), compartment_default, global_par_p27, global_par_p45, global_par_p52, global_par_p53, global_par_p54);

% Reaction: id = re61, name = re61
	reaction_re61=compartment_default*function_36(x(20), compartment_default, global_par_p36);

% Reaction: id = re62, name = re62
	reaction_re62=compartment_default*function_37(x(20), compartment_default, global_par_p26, global_par_p56, global_par_p57);

% Reaction: id = re64, name = re64
	reaction_re64=compartment_default*function_38(x(37), x(8), x(19), compartment_default, global_par_p42, global_par_p80, global_par_p83, global_par_p84);

% Reaction: id = re65, name = re65
	reaction_re65=compartment_default*function_39(x(2), x(32), x(33), x(15), x(16), x(19), x(22), compartment_default, global_par_facE2, global_par_p152, global_par_p158, global_par_p159, global_par_p160, global_par_p161, global_par_p164, global_par_p165);

% Reaction: id = re66, name = re66
	reaction_re66=compartment_default*function_40(x(3), compartment_default, global_par_p154);

% Reaction: id = re67, name = re67
	reaction_re67=compartment_default*function_41(x(19), compartment_default, global_par_facP4, global_par_p166, global_par_p167);

% Reaction: id = re69, name = re69
	reaction_re69=compartment_default*function_42(x(16), x(17), x(18), x(19), x(22), x(30), compartment_default, global_par_p168, global_par_p169, global_par_p170, global_par_p171, global_par_p172, global_par_p177, global_par_p178);

% Reaction: id = re71, name = re71
	reaction_re71=compartment_default*function_43(x(21), compartment_default, global_par_p155);

% Reaction: id = re72, name = re72
	reaction_re72=compartment_default*function_44(x(2), x(31), compartment_default, global_par_p173, global_par_p174, global_par_p175);

% Reaction: id = re73, name = re73
	reaction_re73=compartment_default*function_45(x(12), compartment_default, global_par_p157);

% Reaction: id = re74, name = re74
	reaction_re74=compartment_default*function_46(x(11), compartment_default, global_par_p30);

% Reaction: id = re75, name = re75
	reaction_re75=compartment_default*function_47(compartment_default, global_par_p311);

% Reaction: id = re76, name = re76
	reaction_re76=compartment_default*function_48(x(9), compartment_default, global_par_p304);

% Reaction: id = re78, name = re78
	reaction_re78=compartment_default*function_49(compartment_default, global_par_freq, global_par_mass);

% Reaction: id = re82, name = re82
	reaction_re82=compartment_default*function_50(x(5), compartment_default, global_par_p241);

% Reaction: id = re83, name = re83
	reaction_re83=compartment_default*function_51(x(37), x(8), x(13), compartment_default, global_par_facLH, global_par_p12, global_par_p16, global_par_p5, global_par_p8, global_par_p9);

% Reaction: id = re84, name = re84
	reaction_re84=compartment_default*function_52(x(37), x(6), x(8), compartment_default, global_par_facFSH, global_par_p12, global_par_p17, global_par_p18, global_par_p20, global_par_p28);

% Reaction: id = re85, name = re85
	reaction_re85=compartment_default*function_53(x(5), x(23), compartment_default, global_par_facFSH, global_par_p240);

% Reaction: id = re87, name = re87
	reaction_re87=compartment_default*function_54(x(10), compartment_default, global_par_p156);

% Reaction: id = re90, name = re90
	reaction_re90=compartment_default*function_55(x(34), compartment_default, global_par_p275);

% Reaction: id = re93, name = re93
	reaction_re93=compartment_default*function_56(x(37), compartment_default, global_par_p319);

% Reaction: id = re94, name = re94
	reaction_re94=compartment_default*function_57(x(36), compartment_default, global_par_p320);

% Reaction: id = re95, name = re95
	reaction_re95=compartment_default*function_58(x(36), compartment_default, global_par_p314);

% Reaction: id = re97, name = re97
	reaction_re97=compartment_default*function_59(x(34), x(26), compartment_default, global_par_p312);

% Reaction: id = re98, name = re98
	reaction_re98=compartment_default*function_60(x(37), compartment_default, global_par_p313);

% Reaction: id = re99, name = re99
	reaction_re99=compartment_default*function_61(x(36), compartment_default, global_par_p315);

% Reaction: id = re100, name = re100
	reaction_re100=compartment_default*function_62(x(35), compartment_default, global_par_p274);

% Reaction: id = re101, name = re101
	reaction_re101=compartment_default*function_63(x(35), compartment_default, global_par_p273, global_par_p274);

% Reaction: id = re102, name = re102
	reaction_re102=compartment_default*function_64(x(38), compartment_default, global_par_p474);

% Reaction: id = re103, name = re103
	reaction_re103=compartment_default*function_65(x(38), compartment_default, global_par_p473, global_par_p474);

% Reaction: id = re104, name = re104
	reaction_re104=compartment_default*function_66(x(39), compartment_default, global_par_p475);

% Reaction: id = re105, name = re105
	reaction_re105=compartment_default*function_67(x(41), compartment_default, global_par_p513);

% Reaction: id = re106, name = re106
	reaction_re106=compartment_default*function_68(x(39), x(26), compartment_default, global_par_p512);

% Reaction: id = re107, name = re107
	reaction_re107=compartment_default*function_69(x(41), compartment_default, global_par_p514);

% Reaction: id = re108, name = re108
	reaction_re108=compartment_default*function_70(x(39), compartment_default, global_par_p476);

% Reaction: id = re109, name = re109
	reaction_re109=compartment_default*function_71(x(40), compartment_default, global_par_p477);

% Species:   id = csa1_degraded, name = csa1_degraded, constant	const_species_csa1_degraded=1.0;

% Species:   id = s33, name = s33, constant	const_species_s33=1.0;

% Species:   id = s38, name = s38, constant	const_species_s38=1.0;

% Species:   id = s62, name = s62, constant	const_species_s62=1.0;

% Species:   id = s64, name = s64, constant	const_species_s64=1.0;

% Species:   id = s66, name = s66, constant	const_species_s66=1.0;

% Species:   id = s67, name = s67, constant	const_species_s67=1.0;

% Species:   id = s69, name = s69, constant	const_species_s69=1.0;

% Species:   id = s71, name = s71, constant	const_species_s71=1.0;

% Species:   id = s72, name = s72, constant	const_species_s72=1.0;

% Species:   id = s74, name = s74, constant	const_species_s74=1.0;

% Species:   id = s76, name = s76, constant	const_species_s76=1.0;

% Species:   id = s78, name = s78, constant	const_species_s78=1.0;

% Species:   id = s82, name = s82, constant	const_species_s82=1.0;

% Species:   id = s85, name = s85, constant	const_species_s85=1.0;

% Species:   id = s87, name = s87, constant	const_species_s87=1.0;

% Species:   id = s92, name = s92, constant	const_species_s92=1.0;

% Species:   id = s93, name = s93, constant	const_species_s93=1.0;

% Species:   id = s94, name = s94, constant	const_species_s94=1.0;

% Species:   id = s95, name = s95, constant	const_species_s95=1.0;

% Species:   id = sa1_degraded, name = sa1_degraded, constant	const_species_sa1_degraded=1.0;

% Species:   id = sa28_degraded, name = sa28_degraded, constant	const_species_sa28_degraded=1.0;

% Species:   id = sa31_degraded, name = sa31_degraded, constant	const_species_sa31_degraded=1.0;

% Species:   id = sa35_degraded, name = sa35_degraded, constant	const_species_sa35_degraded=1.0;

% Species:   id = sa3_degraded, name = sa3_degraded, constant	const_species_sa3_degraded=1.0;

% Species:   id = sa52_degraded, name = sa52_degraded, constant	const_species_sa52_degraded=1.0;

% Species:   id = sa53_degraded, name = sa53_degraded, constant	const_species_sa53_degraded=1.0;

% Species:   id = sa61_degraded, name = sa61_degraded, constant	const_species_sa61_degraded=1.0;

% Species:   id = sa75_degraded, name = sa75_degraded, constant	const_species_sa75_degraded=1.0;

% Species:   id = sa78_degraded, name = sa78_degraded, constant	const_species_sa78_degraded=1.0;

% Species:   id = sa86_degraded, name = sa86_degraded, constant	const_species_sa86_degraded=1.0;

% Species:   id = s102, name = s102, constant	const_species_s102=1.0;

% Species:   id = s106, name = s106, constant	const_species_s106=1.0;

% Species:   id = s108, name = s108, constant	const_species_s108=1.0;

% Species:   id = s107, name = s107, constant	const_species_s107=1.0;

%Event: id=event_1
	event_event_1=time >= global_par_p269;

	if(event_event_1) 
		x(35)=global_par_p272/compartment_default;
	end

%Event: id=event_2
	event_event_2=time >= global_par_p469;

	if(event_event_2) 
		x(38)=x(38)+global_par_p472;
	end

	xdot=zeros(45,1);
	
% Species:   id = AF1, name = AF1, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*((-1.0 * reaction_re42) + ( 1.0 * reaction_re43));
	
% Species:   id = AF2, name = AF2, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*(( 1.0 * reaction_re42) + (-1.0 * reaction_re44));
	
% Species:   id = E2, name = E2, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_re65) + (-1.0 * reaction_re66));
	
% Species:   id = FSH_R, name = FSH_R, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*((-1.0 * reaction_re39) + ( 1.0 * reaction_re85));
	
% Species:   id = FSH_bld, name = FSH_bld, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*((-1.0 * reaction_re82) + ( 1.0 * reaction_re84) + (-1.0 * reaction_re85));
	
% Species:   id = FSH_pit, name = FSH_pit, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_re26) + (-1.0 * reaction_re29));
	
% Species:   id = GnRH, name = GnRH, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*((-1.0 * reaction_re8) + ( 1.0 * reaction_re15) + (-1.0 * reaction_re24) + ( 1.0 * reaction_re78));
	
% Species:   id = GnRH_R_a, name = GnRH_R-a, affected by kineticLaw
	xdot(8) = (1/(compartment_default))*((-1.0 * reaction_re2) + ( 1.0 * reaction_re3) + ( 1.0 * reaction_re8) + (-1.0 * reaction_re15));
	
% Species:   id = GnRH_R_i, name = GnRH_R-i, affected by kineticLaw
	xdot(9) = (1/(compartment_default))*(( 1.0 * reaction_re2) + (-1.0 * reaction_re3) + (-1.0 * reaction_re6) + (-1.0 * reaction_re76));
	
% Species:   id = InhA, name = InhA, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*(( 1.0 * reaction_re69) + (-1.0 * reaction_re87));
	
% Species:   id = InhA_delay, name = InhA_delay, affected by kineticLaw
	xdot(11) = (1/(compartment_default))*((-1.0 * reaction_re74) + ( 1.0 * reaction_re87));
	
% Species:   id = InhB, name = InhB, affected by kineticLaw
	xdot(12) = (1/(compartment_default))*(( 1.0 * reaction_re72) + (-1.0 * reaction_re73));
	
% Species:   id = LH_Pit, name = LH_Pit, affected by kineticLaw
	xdot(13) = (1/(compartment_default))*(( 1.0 * reaction_re25) + (-1.0 * reaction_re28));
	
% Species:   id = LH_R, name = LH_R, affected by kineticLaw
	xdot(14) = (1/(compartment_default))*(( 1.0 * reaction_re35) + (-1.0 * reaction_re36));
	
% Species:   id = LH_bld, name = LH_bld, affected by kineticLaw
	xdot(15) = (1/(compartment_default))*((-1.0 * reaction_re35) + (-1.0 * reaction_re38) + ( 1.0 * reaction_re83));
	
% Species:   id = Lut1, name = Lut1, affected by kineticLaw
	xdot(16) = (1/(compartment_default))*(( 1.0 * reaction_re50) + (-1.0 * reaction_re51));
	
% Species:   id = Lut2, name = Lut2, affected by kineticLaw
	xdot(17) = (1/(compartment_default))*(( 1.0 * reaction_re51) + (-1.0 * reaction_re52));
	
% Species:   id = Lut3, name = Lut3, affected by kineticLaw
	xdot(18) = (1/(compartment_default))*(( 1.0 * reaction_re52) + (-1.0 * reaction_re53));
	
% Species:   id = Lut4, name = Lut4, affected by kineticLaw
	xdot(19) = (1/(compartment_default))*(( 1.0 * reaction_re53) + (-1.0 * reaction_re64));
	
% Species:   id = OvF, name = OvF, affected by kineticLaw
	xdot(20) = (1/(compartment_default))*(( 1.0 * reaction_re60) + (-1.0 * reaction_re61));
	
% Species:   id = P4, name = P4, affected by kineticLaw
	xdot(21) = (1/(compartment_default))*(( 1.0 * reaction_re67) + (-1.0 * reaction_re71));
	
% Species:   id = PrF, name = PrF, affected by kineticLaw
	xdot(22) = (1/(compartment_default))*(( 1.0 * reaction_re46) + (-1.0 * reaction_re59));
	
% Species:   id = R_FSH, name = R_FSH, affected by kineticLaw
	xdot(23) = (1/(compartment_default))*(( 1.0 * reaction_re40) + (-1.0 * reaction_re85));
	
% Species:   id = R_FSH_des, name = R_FSH_des, affected by kineticLaw
	xdot(24) = (1/(compartment_default))*(( 1.0 * reaction_re39) + (-1.0 * reaction_re40));
	
% Species:   id = R_Foll, name = R_Foll, affected by kineticLaw
	xdot(25) = (1/(compartment_default))*(( 1.0 * reaction_re54) + (-1.0 * reaction_re56));
	
% Species:   id = R_GnRH_a, name = R_GnRH-a, affected by kineticLaw
	xdot(26) = (1/(compartment_default))*(( 1.0 * reaction_re4) + (-1.0 * reaction_re5) + (-1.0 * reaction_re8) + ( 1.0 * reaction_re15) + (-1.0 * reaction_re97) + ( 1.0 * reaction_re98) + ( 1.0 * reaction_re105) + (-1.0 * reaction_re106));
	
% Species:   id = R_GnRH_i, name = R_GnRH-i, affected by kineticLaw
	xdot(27) = (1/(compartment_default))*((-1.0 * reaction_re4) + ( 1.0 * reaction_re5) + ( 1.0 * reaction_re6) + (-1.0 * reaction_re11) + ( 1.0 * reaction_re75) + ( 1.0 * reaction_re99));
	
% Species:   id = R_LH, name = R_LH, affected by kineticLaw
	xdot(28) = (1/(compartment_default))*((-1.0 * reaction_re35) + ( 1.0 * reaction_re37));
	
% Species:   id = R_LH_des, name = R_LH_des, affected by kineticLaw
	xdot(29) = (1/(compartment_default))*(( 1.0 * reaction_re36) + (-1.0 * reaction_re37));
	
% Species:   id = Sc1, name = Sc1, affected by kineticLaw
	xdot(30) = (1/(compartment_default))*((-1.0 * reaction_re49) + ( 1.0 * reaction_re62));
	
% Species:   id = Sc2, name = Sc2, affected by kineticLaw
	xdot(31) = (1/(compartment_default))*(( 1.0 * reaction_re49) + (-1.0 * reaction_re50));
	
% Species:   id = AF3, name = AF3, affected by kineticLaw
	xdot(32) = (1/(compartment_default))*(( 1.0 * reaction_re44) + (-1.0 * reaction_re45) + ( 1.0 * reaction_re57));
	
% Species:   id = AF4, name = AF4, affected by kineticLaw
	xdot(33) = (1/(compartment_default))*(( 1.0 * reaction_re45) + (-1.0 * reaction_re46) + ( 1.0 * reaction_re58));
	
% Species:   id = Ago_c, name = Ago_c, affected by kineticLaw
	xdot(34) = (1/(compartment_default))*((-1.0 * reaction_re90) + (-1.0 * reaction_re97) + ( 1.0 * reaction_re98) + ( 1.0 * reaction_re101));
	
% Species:   id = Ago_d, name = Ago_d, affected by kineticLaw
	xdot(35) = (1/(compartment_default))*((-1.0 * reaction_re100));
	
% Species:   id = Ago_R_i, name = Ago_R-i, affected by kineticLaw
	xdot(36) = (1/(compartment_default))*(( 1.0 * reaction_re93) + (-1.0 * reaction_re94) + (-1.0 * reaction_re95) + (-1.0 * reaction_re99));
	
% Species:   id = Ago_R_a, name = Ago_R-a, affected by kineticLaw
	xdot(37) = (1/(compartment_default))*((-1.0 * reaction_re93) + ( 1.0 * reaction_re94) + ( 1.0 * reaction_re97) + (-1.0 * reaction_re98));
	
% Species:   id = Ant_d, name = Ant_d, affected by kineticLaw
	xdot(38) = (1/(compartment_default))*((-1.0 * reaction_re102));
	
% Species:   id = Ant_c, name = Ant_c, affected by kineticLaw
	xdot(39) = (1/(compartment_default))*(( 1.0 * reaction_re103) + (-1.0 * reaction_re104) + ( 1.0 * reaction_re105) + (-1.0 * reaction_re106) + (-1.0 * reaction_re108) + ( 1.0 * reaction_re109));
	
% Species:   id = Ant_p, name = Ant_p, affected by kineticLaw
	xdot(40) = (1/(compartment_default))*(( 1.0 * reaction_re108) + (-1.0 * reaction_re109));
	
% Species:   id = Ant_R, name = Ant_R, affected by kineticLaw
	xdot(41) = (1/(compartment_default))*((-1.0 * reaction_re105) + ( 1.0 * reaction_re106) + (-1.0 * reaction_re107));
	
% Species:   id = s113, name = s113, affected by kineticLaw
	xdot(42) = (1/(compartment_default))*(( 1.0 * reaction_re102));
	
% Species:   id = s114, name = s114, affected by kineticLaw
	xdot(43) = (1/(compartment_default))*((-1.0 * reaction_re103));
	
% Species:   id = s115, name = s115, affected by kineticLaw
	xdot(44) = (1/(compartment_default))*(( 1.0 * reaction_re104));
	
% Species:   id = s116, name = s116, affected by kineticLaw
	xdot(45) = (1/(compartment_default))*(( 1.0 * reaction_re107));
end

function z=function_1(GnRH_R_a,default,p309), z=(p309*GnRH_R_a*default/default);end

function z=function_2(GnRH_R_i,default,p310), z=(p310*GnRH_R_i*default/default);end

function z=function_3(R_GnRH_i,default,p307), z=(p307*R_GnRH_i*default/default);end

function z=function_4(R_GnRH_a,default,p306), z=(p306*R_GnRH_a*default/default);end

function z=function_5(GnRH_R_i,default,p305), z=(p305*GnRH_R_i*default/default);end

function z=function_6(GnRH,R_GnRH_a,default,p302), z=(p302*GnRH*default*R_GnRH_a*default/default);end

function z=function_7(R_GnRH_i,default,p308), z=(p308*R_GnRH_i*default/default);end

function z=function_8(GnRH_R_a,default,p303), z=(p303*GnRH_R_a*default/default);end

function z=function_9(GnRH,default,p300), z=(p300*GnRH*default/default);end

function z=function_10(E2,P4,default,facE2,facP4,p1,p2,p3,p4,p6,p7), z=((p1+p2*(E2*default/(p3*facE2))^p6/(1+(E2*default/(p3*facE2))^p6))/(1+(P4*default/(p4*facP4))^p7)/default);end

function z=function_11(InhA_delay,InhB,default,freq,p11,p13,p21,p22,p23,p24,p25), z=(p21/(1+(InhA_delay*default/p22)^p24+(InhB*default/p23)^p25)*1/(1+(freq/p11)^p13)/default);end

function z=function_12(Ago_R_a,GnRH_R_a,LH_Pit,default,p16,p5,p8,p9), z=((p16+p5*((GnRH_R_a*default+Ago_R_a*default)/p8)^p9/(1+((GnRH_R_a*default+Ago_R_a*default)/p8)^p9))*LH_Pit*default/default);end

function z=function_13(Ago_R_a,FSH_pit,GnRH_R_a,default,p17,p18,p20,p28), z=((p17+p28*((GnRH_R_a*default+Ago_R_a*default)/p18)^p20/(1+((GnRH_R_a*default+Ago_R_a*default)/p18)^p20))*FSH_pit*default/default);end

function z=function_14(LH_bld,R_LH,default,facLH,p230), z=(p230/facLH*LH_bld*default*R_LH*default/default);end

function z=function_15(LH_R,default,p234), z=(p234*LH_R*default/default);end

function z=function_16(R_LH_des,default,p232), z=(p232*R_LH_des*default/default);end

function z=function_17(LH_bld,default,p231), z=(p231*LH_bld*default/default);end

function z=function_18(FSH_R,default,p244), z=(p244*FSH_R*default/default);end

function z=function_19(R_FSH_des,default,p242), z=(p242*R_FSH_des*default/default);end

function z=function_20(AF1,FSH_R,default,p50), z=(p50*FSH_R*default*AF1*default/default);end

function z=function_21(FSH_R,default,p47,p48,p49), z=(p49*(FSH_R*default/p48)^p47/(1+(FSH_R*default/p48)^p47)/default);end

function z=function_22(AF2,LH_R,R_Foll,default,p46,p51,p52), z=(p51*(LH_R*default/p52)^p46*R_Foll*default*AF2*default/default);end

function z=function_23(AF3,LH_R,R_Foll,default,p32,p43,p52), z=(p32*(LH_R*default/p52)^p43*R_Foll*default*AF3*default/default);end

function z=function_24(AF4,LH_R,R_Foll,default,p34,p52), z=(p34*LH_R*default/p52*R_Foll*default*AF4*default/default);end

function z=function_25(Sc1,default,p37), z=(p37*Sc1*default/default);end

function z=function_26(Sc2,default,p38), z=(p38*Sc2*default/default);end

function z=function_27(Ago_R_a,GnRH_R_a,Lut1,default,p39,p80,p83,p84), z=(p39*(1+p80*((GnRH_R_a*default+Ago_R_a*default)/p83)^p84/(1+((GnRH_R_a*default+Ago_R_a*default)/p83)^p84))*Lut1*default/default);end

function z=function_28(Ago_R_a,GnRH_R_a,Lut2,default,p40,p80,p83,p84), z=(p40*(1+p80*((GnRH_R_a*default+Ago_R_a*default)/p83)^p84/(1+((GnRH_R_a*default+Ago_R_a*default)/p83)^p84))*Lut2*default/default);end

function z=function_29(Ago_R_a,GnRH_R_a,Lut3,default,p41,p80,p83,p84), z=(p41*(1+p80*((GnRH_R_a*default+Ago_R_a*default)/p83)^p84/(1+((GnRH_R_a*default+Ago_R_a*default)/p83)^p84))*Lut3*default/default);end

function z=function_30(FSH_bld,default,p90,p91,p94), z=(p94*(FSH_bld*default/p90)^p91/(1+(FSH_bld*default/p90)^p91)/default);end

function z=function_31(P4,R_Foll,default,facP4,p92,p93,p95), z=(p95*(P4*default/(p92*facP4))^p93/(1+(P4*default/(p92*facP4))^p93)*R_Foll*default/default);end

function z=function_32(AF3,FSH_R,default,p31,p55), z=(p31*FSH_R*default*AF3*default*(1-AF3*default/p55)/default);end

function z=function_33(AF4,LH_R,default,p33,p44,p52,p55), z=(p33*(LH_R*default/p52)^p44*AF4*default*(1-AF4*default/p55)/default);end

function z=function_34(LH_R,PrF,R_Foll,default,p35,p45,p52), z=(p35*(LH_R*default/p52)^p45*R_Foll*default*PrF*default/default);end

function z=function_35(LH_R,PrF,R_Foll,default,p27,p45,p52,p53,p54), z=(p27*R_Foll*default*(LH_R*default/p52)^p45*(PrF*default/p53)^p54/(1+(PrF*default/p53)^p54)/default);end

function z=function_36(OvF,default,p36), z=(p36*OvF*default/default);end

function z=function_37(OvF,default,p26,p56,p57), z=(p26*(OvF*default/p56)^p57/(1+(OvF*default/p56)^p57)/default);end

function z=function_39(AF2,AF3,AF4,LH_bld,Lut1,Lut4,PrF,default,facE2,p152,p158,p159,p160,p161,p164,p165), z=(facE2*(p158+p152*AF2*default+p159*AF3*default*LH_bld*default+p160*AF4*default+p161*PrF*default*LH_bld*default+p164*Lut1*default+p165*Lut4*default)/default);end

function z=function_38(Ago_R_a,GnRH_R_a,Lut4,default,p42,p80,p83,p84), z=(p42*(1+p80*((GnRH_R_a*default+Ago_R_a*default)/p83)^p84/(1+((GnRH_R_a*default+Ago_R_a*default)/p83)^p84))*Lut4*default/default);end

function z=function_40(E2,default,p154), z=(p154*E2*default/default);end

function z=function_41(Lut4,default,facP4,p166,p167), z=(facP4*(p166+p167*Lut4*default)/default);end

function z=function_42(Lut1,Lut2,Lut3,Lut4,PrF,Sc1,default,p168,p169,p170,p171,p172,p177,p178), z=((p168+p169*PrF*default+p177*Sc1*default+p178*Lut1*default+p170*Lut2*default+p171*Lut3*default+p172*Lut4*default)/default);end

function z=function_43(P4,default,p155), z=(p155*P4*default/default);end

function z=function_44(AF2,Sc2,default,p173,p174,p175), z=((p173+p174*AF2*default+p175*Sc2*default)/default);end

function z=function_45(InhB,default,p157), z=(p157*InhB*default/default);end

function z=function_46(InhA_delay,default,p30), z=(p30*InhA_delay*default/default);end

function z=function_47(default,p311), z=(p311/default);end

function z=function_48(GnRH_R_i,default,p304), z=(p304*GnRH_R_i*default/default);end

function z=function_49(default,freq,mass), z=(freq*mass/default);end

function z=function_50(FSH_bld,default,p241), z=(p241*FSH_bld*default/default);end

function z=function_51(Ago_R_a,GnRH_R_a,LH_Pit,default,facLH,p12,p16,p5,p8,p9), z=(facLH/p12*(p16+p5*((GnRH_R_a*default+Ago_R_a*default)/p8)^p9/(1+((GnRH_R_a*default+Ago_R_a*default)/p8)^p9))*LH_Pit*default/default);end

function z=function_52(Ago_R_a,FSH_pit,GnRH_R_a,default,facFSH,p12,p17,p18,p20,p28), z=(facFSH/p12*(p17+p28*((GnRH_R_a*default+Ago_R_a*default)/p18)^p20/(1+((GnRH_R_a*default+Ago_R_a*default)/p18)^p20))*FSH_pit*default/default);end

function z=function_53(FSH_bld,R_FSH,default,facFSH,p240), z=(p240/facFSH*FSH_bld*default*R_FSH*default/default);end

function z=function_54(InhA,default,p156), z=(p156*InhA*default/default);end

function z=function_55(Ago_c,default,p275), z=(p275*Ago_c*default/default);end

function z=function_56(Ago_R_a,default,p319), z=(p319*Ago_R_a*default/default);end

function z=function_57(Ago_R_i,default,p320), z=(p320*Ago_R_i*default/default);end

function z=function_58(Ago_R_i,default,p314), z=(p314*Ago_R_i*default/default);end

function z=function_59(Ago_c,R_GnRH_a,default,p312), z=(p312*R_GnRH_a*default*Ago_c*default/default);end

function z=function_60(Ago_R_a,default,p313), z=(p313*Ago_R_a*default/default);end

function z=function_61(Ago_R_i,default,p315), z=(p315*Ago_R_i*default/default);end

function z=function_62(Ago_d,default,p274), z=(p274*Ago_d*default/default);end

function z=function_63(Ago_d,default,p273,p274), z=(p274/p273*Ago_d*default/default);end

function z=function_64(Ant_d,default,p474), z=(p474*Ant_d/default);end

function z=function_65(Ant_d,default,p473,p474), z=(p474/p473*Ant_d/default);end

function z=function_66(Ant_c,default,p475), z=(p475*Ant_c/default);end

function z=function_67(Ant_R,default,p513), z=(p513*Ant_R/default);end

function z=function_68(Ant_c,R_GnRH_a,default,p512), z=(p512*R_GnRH_a*default*Ant_c/default);end

function z=function_69(Ant_R,default,p514), z=(p514*Ant_R/default);end

function z=function_70(Ant_c,default,p476), z=(p476*Ant_c/default);end

function z=function_71(Ant_p,default,p477), z=(p477*Ant_p/default);end

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


