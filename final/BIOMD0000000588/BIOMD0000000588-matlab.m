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
% Model name = Benson2013 - Identification of key drug targets in nerve growth factor pathway
%
% is http://identifiers.org/biomodels.db/MODEL1601290000
% is http://identifiers.org/biomodels.db/BIOMD0000000588
% isDescribedBy http://identifiers.org/pubmed/24427523
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000049
% isDerivedFrom http://identifiers.org/pubmed/16418172
%


function main()
%Initial conditions vector
	x0=zeros(75,1);
	x0(1) = 0.06189368;
	x0(2) = 0.0;
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
	x0(17) = 1.0;
	x0(18) = 0.0;
	x0(19) = 1.0;
	x0(20) = 0.4980158;
	x0(21) = 0.2993032;
	x0(22) = 6.12296E-4;
	x0(23) = 0.9373994;
	x0(24) = 0.03739938;
	x0(25) = 0.06260062;
	x0(26) = 0.0;
	x0(27) = 0.1;
	x0(28) = 0.0;
	x0(29) = 0.2;
	x0(30) = 0.5;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.1469897;
	x0(37) = 0.02803697;
	x0(38) = 0.1121076;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 1.941234;
	x0(46) = 0.01599799;
	x0(47) = 0.8432791;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 0.0;
	x0(52) = 0.2;
	x0(53) = 0.5019842;
	x0(54) = 0.001984189;
	x0(55) = 8.45291E-5;
	x0(56) = 0.09991547;
	x0(57) = 0.0;
	x0(58) = 0.0;
	x0(59) = 0.0;
	x0(60) = 0.0;
	x0(61) = 0.0;
	x0(62) = 0.0;
	x0(63) = 0.0;
	x0(64) = 0.0;
	x0(65) = 0.0;
	x0(66) = 5.0E-6;
	x0(67) = 1.0;
	x0(68) = 3.0E-5;
	x0(69) = 0.0;
	x0(70) = 0.0;
	x0(71) = 0.0;
	x0(72) = 0.0;
	x0(73) = 0.0;
	x0(74) = 0.0;
	x0(75) = 0.0;


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

% Compartment: id = mw3bc142df_1951_4fa9_b0a7_011c95012bbf, name = Neuron, constant
	compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf=0.001;
% Compartment: id = mwc2fe3668_8fb0_4cfb_b795_99057e61e290, name = Interstitial fluid, constant
	compartment_mwc2fe3668_8fb0_4cfb_b795_99057e61e290=12.0;
% Parameter:   id =  Km_104, name = Km_104
	global_par_Km_104=15.657;
% Parameter:   id =  Km_105, name = Km_105
	global_par_Km_105=15.657;
% Parameter:   id =  Km_106, name = Km_106
	global_par_Km_106=15.657;
% Parameter:   id =  Km_107, name = Km_107
	global_par_Km_107=15.657;
% Parameter:   id =  Km_108, name = Km_108
	global_par_Km_108=0.02;
% Parameter:   id =  Km_109, name = Km_109
	global_par_Km_109=0.02;
% Parameter:   id =  Km_39, name = Km_39
	global_par_Km_39=0.1;
% Parameter:   id =  Km_40, name = Km_40
	global_par_Km_40=0.1;
% Parameter:   id =  Km_41, name = Km_41
	global_par_Km_41=0.1;
% Parameter:   id =  Km_42, name = Km_42
	global_par_Km_42=0.1;
% Parameter:   id =  Km_43, name = Km_43
	global_par_Km_43=0.1;
% Parameter:   id =  Km_44, name = Km_44
	global_par_Km_44=0.1;
% Parameter:   id =  Km_45, name = Km_45
	global_par_Km_45=0.1;
% Parameter:   id =  Km_58, name = Km_58
	global_par_Km_58=0.02;
% Parameter:   id =  Km_59, name = Km_59
	global_par_Km_59=25.641;
% Parameter:   id =  Km_60, name = Km_60
	global_par_Km_60=25.641;
% Parameter:   id =  Km_61, name = Km_61
	global_par_Km_61=25.641;
% Parameter:   id =  Km_62, name = Km_62
	global_par_Km_62=1.0;
% Parameter:   id =  Km_63, name = Km_63
	global_par_Km_63=1.0;
% Parameter:   id =  Km_64, name = Km_64
	global_par_Km_64=1.0;
% Parameter:   id =  Km_70, name = Km_70
	global_par_Km_70=0.01;
% Parameter:   id =  Km_71, name = Km_71
	global_par_Km_71=1.0;
% Parameter:   id =  Km_72, name = Km_72
	global_par_Km_72=1.0;
% Parameter:   id =  Km_81, name = Km_81
	global_par_Km_81=0.16;
% Parameter:   id =  Km_82, name = Km_82
	global_par_Km_82=0.16;
% Parameter:   id =  Km_83, name = Km_83
	global_par_Km_83=0.16;
% Parameter:   id =  Km_84, name = Km_84
	global_par_Km_84=0.16;
% Parameter:   id =  Km_85, name = Km_85
	global_par_Km_85=0.16;
% Parameter:   id =  Km_86, name = Km_86
	global_par_Km_86=0.16;
% Parameter:   id =  Km_87, name = Km_87
	global_par_Km_87=0.16;
% Parameter:   id =  Km_88, name = Km_88
	global_par_Km_88=0.16;
% Parameter:   id =  Km_89, name = Km_89
	global_par_Km_89=0.16;
% Parameter:   id =  Km_90, name = Km_90
	global_par_Km_90=0.16;
% Parameter:   id =  Km_91, name = Km_91
	global_par_Km_91=0.16;
% Parameter:   id =  Km_92, name = Km_92
	global_par_Km_92=0.16;
% Parameter:   id =  Km_93, name = Km_93
	global_par_Km_93=15.657;
% Parameter:   id =  Km_94, name = Km_94
	global_par_Km_94=15.657;
% Parameter:   id =  Km_95, name = Km_95
	global_par_Km_95=15.657;
% Parameter:   id =  Km_96, name = Km_96
	global_par_Km_96=15.657;
% Parameter:   id =  Km_97, name = Km_97
	global_par_Km_97=0.02;
% Parameter:   id =  Km_98, name = Km_98
	global_par_Km_98=0.02;
% Parameter:   id =  MKP3cyt, name = MKP3cyt
	global_par_MKP3cyt=0.018;
% Parameter:   id =  MKP3nuc, name = MKP3nuc
	global_par_MKP3nuc=0.006;
% Parameter:   id =  PP2Acyt, name = PP2Acyt
	global_par_PP2Acyt=0.24;
% Parameter:   id =  PP2Anuc, name = PP2Anuc
	global_par_PP2Anuc=0.08;
% Parameter:   id =  Rap1GAP, name = Rap1GAP
	global_par_Rap1GAP=0.012;
% Parameter:   id =  Vmax_104, name = Vmax_104
	global_par_Vmax_104=180.0;
% Parameter:   id =  Vmax_105, name = Vmax_105
	global_par_Vmax_105=180.0;
% Parameter:   id =  Vmax_106, name = Vmax_106
	global_par_Vmax_106=180.0;
% Parameter:   id =  Vmax_107, name = Vmax_107
	global_par_Vmax_107=180.0;
% Parameter:   id =  Vmax_108, name = Vmax_108
	global_par_Vmax_108=3.6;
% Parameter:   id =  Vmax_109, name = Vmax_109
	global_par_Vmax_109=3.6;
% Parameter:   id =  Vmax_39, name = Vmax_39
	global_par_Vmax_39=1.2;
% Parameter:   id =  Vmax_40, name = Vmax_40
	global_par_Vmax_40=1.2;
% Parameter:   id =  Vmax_41, name = Vmax_41
	global_par_Vmax_41=1.2;
% Parameter:   id =  Vmax_42, name = Vmax_42
	global_par_Vmax_42=1.2;
% Parameter:   id =  Vmax_43, name = Vmax_43
	global_par_Vmax_43=1.2;
% Parameter:   id =  Vmax_44, name = Vmax_44
	global_par_Vmax_44=1.2;
% Parameter:   id =  Vmax_45, name = Vmax_45
	global_par_Vmax_45=1.2;
% Parameter:   id =  Vmax_58, name = Vmax_58
	global_par_Vmax_58=120.0;
% Parameter:   id =  Vmax_59, name = Vmax_59
	global_par_Vmax_59=60.0;
% Parameter:   id =  Vmax_60, name = Vmax_60
	global_par_Vmax_60=60.0;
% Parameter:   id =  Vmax_61, name = Vmax_61
	global_par_Vmax_61=60.0;
% Parameter:   id =  Vmax_62, name = Vmax_62
	global_par_Vmax_62=600.0;
% Parameter:   id =  Vmax_63, name = Vmax_63
	global_par_Vmax_63=600.0;
% Parameter:   id =  Vmax_64, name = Vmax_64
	global_par_Vmax_64=600.0;
% Parameter:   id =  Vmax_70, name = Vmax_70
	global_par_Vmax_70=2.88;
% Parameter:   id =  Vmax_71, name = Vmax_71
	global_par_Vmax_71=120.0;
% Parameter:   id =  Vmax_72, name = Vmax_72
	global_par_Vmax_72=120.0;
% Parameter:   id =  Vmax_81, name = Vmax_81
	global_par_Vmax_81=30.0;
% Parameter:   id =  Vmax_82, name = Vmax_82
	global_par_Vmax_82=30.0;
% Parameter:   id =  Vmax_83, name = Vmax_83
	global_par_Vmax_83=30.0;
% Parameter:   id =  Vmax_84, name = Vmax_84
	global_par_Vmax_84=30.0;
% Parameter:   id =  Vmax_85, name = Vmax_85
	global_par_Vmax_85=12.0;
% Parameter:   id =  Vmax_86, name = Vmax_86
	global_par_Vmax_86=12.0;
% Parameter:   id =  Vmax_87, name = Vmax_87
	global_par_Vmax_87=12.0;
% Parameter:   id =  Vmax_88, name = Vmax_88
	global_par_Vmax_88=12.0;
% Parameter:   id =  Vmax_89, name = Vmax_89
	global_par_Vmax_89=18.0;
% Parameter:   id =  Vmax_90, name = Vmax_90
	global_par_Vmax_90=18.0;
% Parameter:   id =  Vmax_91, name = Vmax_91
	global_par_Vmax_91=18.0;
% Parameter:   id =  Vmax_92, name = Vmax_92
	global_par_Vmax_92=18.0;
% Parameter:   id =  Vmax_93, name = Vmax_93
	global_par_Vmax_93=180.0;
% Parameter:   id =  Vmax_94, name = Vmax_94
	global_par_Vmax_94=180.0;
% Parameter:   id =  Vmax_95, name = Vmax_95
	global_par_Vmax_95=180.0;
% Parameter:   id =  Vmax_96, name = Vmax_96
	global_par_Vmax_96=180.0;
% Parameter:   id =  Vmax_97, name = Vmax_97
	global_par_Vmax_97=3.6;
% Parameter:   id =  Vmax_98, name = Vmax_98
	global_par_Vmax_98=3.6;
% Parameter:   id =  kb_1, name = kb_1
	global_par_kb_1=0.0166668;
% Parameter:   id =  kb_100, name = kb_100
	global_par_kb_100=4.5;
% Parameter:   id =  kb_101, name = kb_101
	global_par_kb_101=36.0;
% Parameter:   id =  kb_102, name = kb_102
	global_par_kb_102=36.0;
% Parameter:   id =  kb_103, name = kb_103
	global_par_kb_103=36.0;
% Parameter:   id =  kb_18, name = kb_18
	global_par_kb_18=12.0;
% Parameter:   id =  kb_19, name = kb_19
	global_par_kb_19=12.0;
% Parameter:   id =  kb_20, name = kb_20
	global_par_kb_20=12.0;
% Parameter:   id =  kb_21, name = kb_21
	global_par_kb_21=12.0;
% Parameter:   id =  kb_22, name = kb_22
	global_par_kb_22=12.0;
% Parameter:   id =  kb_23, name = kb_23
	global_par_kb_23=12.0;
% Parameter:   id =  kb_24, name = kb_24
	global_par_kb_24=6.0;
% Parameter:   id =  kb_25, name = kb_25
	global_par_kb_25=6.0;
% Parameter:   id =  kb_26, name = kb_26
	global_par_kb_26=6.0;
% Parameter:   id =  kb_27, name = kb_27
	global_par_kb_27=6.0;
% Parameter:   id =  kb_46, name = kb_46
	global_par_kb_46=1.008;
% Parameter:   id =  kb_47, name = kb_47
	global_par_kb_47=1.008;
% Parameter:   id =  kb_48, name = kb_48
	global_par_kb_48=12.0;
% Parameter:   id =  kb_49, name = kb_49
	global_par_kb_49=12.0;
% Parameter:   id =  kb_50, name = kb_50
	global_par_kb_50=12.0;
% Parameter:   id =  kb_55, name = kb_55
	global_par_kb_55=1.99999998;
% Parameter:   id =  kb_56, name = kb_56
	global_par_kb_56=6.0E-4;
% Parameter:   id =  kb_65, name = kb_65
	global_par_kb_65=0.12;
% Parameter:   id =  kb_66, name = kb_66
	global_par_kb_66=12.0;
% Parameter:   id =  kb_67, name = kb_67
	global_par_kb_67=12.0;
% Parameter:   id =  kb_73, name = kb_73
	global_par_kb_73=30.0;
% Parameter:   id =  kb_74, name = kb_74
	global_par_kb_74=30.0;
% Parameter:   id =  kb_75, name = kb_75
	global_par_kb_75=30.0;
% Parameter:   id =  kb_77, name = kb_77
	global_par_kb_77=4.5;
% Parameter:   id =  kb_78, name = kb_78
	global_par_kb_78=36.0;
% Parameter:   id =  kb_79, name = kb_79
	global_par_kb_79=36.0;
% Parameter:   id =  kb_80, name = kb_80
	global_par_kb_80=36.0;
% Parameter:   id =  kf_1, name = kf_1
	global_par_kf_1=0.049998;
% Parameter:   id =  kf_10, name = kf_10
	global_par_kf_10=0.0378;
% Parameter:   id =  kf_100, name = kf_100
	global_par_kf_100=600.0;
% Parameter:   id =  kf_101, name = kf_101
	global_par_kf_101=978.24;
% Parameter:   id =  kf_102, name = kf_102
	global_par_kf_102=978.24;
% Parameter:   id =  kf_103, name = kf_103
	global_par_kf_103=978.24;
% Parameter:   id =  kf_11, name = kf_11
	global_par_kf_11=0.0252;
% Parameter:   id =  kf_110, name = kf_110
	global_par_kf_110=6.48;
% Parameter:   id =  kf_111, name = kf_111
	global_par_kf_111=32.4;
% Parameter:   id =  kf_112, name = kf_112
	global_par_kf_112=0.48;
% Parameter:   id =  kf_113, name = kf_113
	global_par_kf_113=2.4;
% Parameter:   id =  kf_114, name = kf_114
	global_par_kf_114=3.12;
% Parameter:   id =  kf_115, name = kf_115
	global_par_kf_115=15.6;
% Parameter:   id =  kf_116, name = kf_116
	global_par_kf_116=0.42;
% Parameter:   id =  kf_117, name = kf_117
	global_par_kf_117=2.1;
% Parameter:   id =  kf_118, name = kf_118
	global_par_kf_118=0.216;
% Parameter:   id =  kf_119, name = kf_119
	global_par_kf_119=1.08;
% Parameter:   id =  kf_12, name = kf_12
	global_par_kf_12=0.0252;
% Parameter:   id =  kf_120, name = kf_120
	global_par_kf_120=0.1032;
% Parameter:   id =  kf_121, name = kf_121
	global_par_kf_121=0.516;
% Parameter:   id =  kf_122, name = kf_122
	global_par_kf_122=7.32;
% Parameter:   id =  kf_123, name = kf_123
	global_par_kf_123=36.6;
% Parameter:   id =  kf_124, name = kf_124
	global_par_kf_124=0.552;
% Parameter:   id =  kf_125, name = kf_125
	global_par_kf_125=2.76;
% Parameter:   id =  kf_126, name = kf_126
	global_par_kf_126=0.156;
% Parameter:   id =  kf_127, name = kf_127
	global_par_kf_127=0.78;
% Parameter:   id =  kf_128, name = kf_128
	global_par_kf_128=0.084;
% Parameter:   id =  kf_129, name = kf_129
	global_par_kf_129=0.42;
% Parameter:   id =  kf_13, name = kf_13
	global_par_kf_13=0.0252;
% Parameter:   id =  kf_130, name = kf_130
	global_par_kf_130=6.48;
% Parameter:   id =  kf_131, name = kf_131
	global_par_kf_131=32.4;
% Parameter:   id =  kf_132, name = kf_132
	global_par_kf_132=0.48;
% Parameter:   id =  kf_133, name = kf_133
	global_par_kf_133=2.4;
% Parameter:   id =  kf_134, name = kf_134
	global_par_kf_134=3.12;
% Parameter:   id =  kf_135, name = kf_135
	global_par_kf_135=15.6;
% Parameter:   id =  kf_136, name = kf_136
	global_par_kf_136=0.42;
% Parameter:   id =  kf_137, name = kf_137
	global_par_kf_137=2.1;
% Parameter:   id =  kf_138, name = kf_138
	global_par_kf_138=0.156;
% Parameter:   id =  kf_139, name = kf_139
	global_par_kf_139=0.78;
% Parameter:   id =  kf_14, name = kf_14
	global_par_kf_14=0.0252;
% Parameter:   id =  kf_140, name = kf_140
	global_par_kf_140=0.084;
% Parameter:   id =  kf_141, name = kf_141
	global_par_kf_141=0.42;
% Parameter:   id =  kf_142, name = kf_142
	global_par_kf_142=3.12;
% Parameter:   id =  kf_143, name = kf_143
	global_par_kf_143=15.6;
% Parameter:   id =  kf_144, name = kf_144
	global_par_kf_144=0.42;
% Parameter:   id =  kf_145, name = kf_145
	global_par_kf_145=2.1;
% Parameter:   id =  kf_15, name = kf_15
	global_par_kf_15=0.0252;
% Parameter:   id =  kf_16, name = kf_16
	global_par_kf_16=0.0252;
% Parameter:   id =  kf_17, name = kf_17
	global_par_kf_17=0.0252;
% Parameter:   id =  kf_19, name = kf_19
	global_par_kf_19=600.0;
% Parameter:   id =  kf_20, name = kf_20
	global_par_kf_20=600.0;
% Parameter:   id =  kf_21, name = kf_21
	global_par_kf_21=600.0;
% Parameter:   id =  kf_22, name = kf_22
	global_par_kf_22=600.0;
% Parameter:   id =  kf_23, name = kf_23
	global_par_kf_23=600.0;
% Parameter:   id =  kf_24, name = kf_24
	global_par_kf_24=300.0;
% Parameter:   id =  kf_25, name = kf_25
	global_par_kf_25=300.0;
% Parameter:   id =  kf_26, name = kf_26
	global_par_kf_26=300.0;
% Parameter:   id =  kf_27, name = kf_27
	global_par_kf_27=300.0;
% Parameter:   id =  kf_28, name = kf_28
	global_par_kf_28=6.0;
% Parameter:   id =  kf_29, name = kf_29
	global_par_kf_29=6.0;
% Parameter:   id =  kf_3, name = kf_3
	global_par_kf_3=60.0;
% Parameter:   id =  kf_30, name = kf_30
	global_par_kf_30=120.0;
% Parameter:   id =  kf_31, name = kf_31
	global_par_kf_31=120.0;
% Parameter:   id =  kf_32, name = kf_32
	global_par_kf_32=0.132;
% Parameter:   id =  kf_33, name = kf_33
	global_par_kf_33=0.132;
% Parameter:   id =  kf_34, name = kf_34
	global_par_kf_34=0.132;
% Parameter:   id =  kf_35, name = kf_35
	global_par_kf_35=0.132;
% Parameter:   id =  kf_36, name = kf_36
	global_par_kf_36=0.132;
% Parameter:   id =  kf_37, name = kf_37
	global_par_kf_37=0.132;
% Parameter:   id =  kf_38, name = kf_38
	global_par_kf_38=0.132;
% Parameter:   id =  kf_4, name = kf_4
	global_par_kf_4=0.0378;
% Parameter:   id =  kf_46, name = kf_46
	global_par_kf_46=1.8;
% Parameter:   id =  kf_47, name = kf_47
	global_par_kf_47=1.8;
% Parameter:   id =  kf_48, name = kf_48
	global_par_kf_48=600.0;
% Parameter:   id =  kf_49, name = kf_49
	global_par_kf_49=600.0;
% Parameter:   id =  kf_5, name = kf_5
	global_par_kf_5=0.0378;
% Parameter:   id =  kf_50, name = kf_50
	global_par_kf_50=600.0;
% Parameter:   id =  kf_51, name = kf_51
	global_par_kf_51=0.3;
% Parameter:   id =  kf_52, name = kf_52
	global_par_kf_52=0.3;
% Parameter:   id =  kf_53, name = kf_53
	global_par_kf_53=0.12;
% Parameter:   id =  kf_54, name = kf_54
	global_par_kf_54=0.12;
% Parameter:   id =  kf_55, name = kf_55
	global_par_kf_55=3.0;
% Parameter:   id =  kf_56, name = kf_56
	global_par_kf_56=0.12;
% Parameter:   id =  kf_57, name = kf_57
	global_par_kf_57=0.0070002;
% Parameter:   id =  kf_6, name = kf_6
	global_par_kf_6=0.0378;
% Parameter:   id =  kf_65, name = kf_65
	global_par_kf_65=60.0;
% Parameter:   id =  kf_66, name = kf_66
	global_par_kf_66=60.0;
% Parameter:   id =  kf_67, name = kf_67
	global_par_kf_67=60.0;
% Parameter:   id =  kf_68, name = kf_68
	global_par_kf_68=0.3;
% Parameter:   id =  kf_69, name = kf_69
	global_par_kf_69=0.006996;
% Parameter:   id =  kf_7, name = kf_7
	global_par_kf_7=0.0378;
% Parameter:   id =  kf_73, name = kf_73
	global_par_kf_73=3600.0;
% Parameter:   id =  kf_74, name = kf_74
	global_par_kf_74=3600.0;
% Parameter:   id =  kf_75, name = kf_75
	global_par_kf_75=3600.0;
% Parameter:   id =  kf_76, name = kf_76
	global_par_kf_76=9.0;
% Parameter:   id =  kf_77, name = kf_77
	global_par_kf_77=600.0;
% Parameter:   id =  kf_78, name = kf_78
	global_par_kf_78=978.24;
% Parameter:   id =  kf_79, name = kf_79
	global_par_kf_79=978.24;
% Parameter:   id =  kf_8, name = kf_8
	global_par_kf_8=0.0378;
% Parameter:   id =  kf_80, name = kf_80
	global_par_kf_80=978.24;
% Parameter:   id =  kf_9, name = kf_9
	global_par_kf_9=0.0378;
% Parameter:   id =  kf_99, name = kf_99
	global_par_kf_99=9.0;
% Parameter:   id =  mwdfa3719d_20cc_4f14_b45e_3f097c3aff65, name = kf_18
	global_par_mwdfa3719d_20cc_4f14_b45e_3f097c3aff65=600.0;

% Reaction: id = R1, name = R1
	reaction_R1=global_par_kf_1*const_species_mwf82ad06a_b8aa_40fa_a532_a1da44e3425f-global_par_kb_1*x(1);

% Reaction: id = R3, name = R3
	reaction_R3=global_par_kf_3*x(2);

% Reaction: id = R4, name = R4
	reaction_R4=global_par_kf_4*x(3);

% Reaction: id = R5, name = R5
	reaction_R5=global_par_kf_5*x(5);

% Reaction: id = R6, name = R6
	reaction_R6=global_par_kf_6*x(7);

% Reaction: id = R7, name = R7
	reaction_R7=global_par_kf_7*x(9);

% Reaction: id = R8, name = R8
	reaction_R8=global_par_kf_8*x(11);

% Reaction: id = R9, name = R9
	reaction_R9=global_par_kf_9*x(13);

% Reaction: id = R10, name = R10
	reaction_R10=global_par_kf_10*x(15);

% Reaction: id = R11, name = R11
	reaction_R11=global_par_kf_11*x(4);

% Reaction: id = R12, name = R12
	reaction_R12=global_par_kf_12*x(6);

% Reaction: id = R13, name = R13
	reaction_R13=global_par_kf_13*x(8);

% Reaction: id = R14, name = R14
	reaction_R14=global_par_kf_14*x(10);

% Reaction: id = R15, name = R15
	reaction_R15=global_par_kf_15*x(12);

% Reaction: id = R16, name = R16
	reaction_R16=global_par_kf_16*x(14);

% Reaction: id = R17, name = R17
	reaction_R17=global_par_kf_17*x(16);

% Reaction: id = R18, name = R18
	reaction_R18=global_par_mwdfa3719d_20cc_4f14_b45e_3f097c3aff65*x(17)*x(3)-global_par_kb_18*x(5);

% Reaction: id = R19, name = R19
	reaction_R19=global_par_kf_19*x(58)*x(3)-global_par_kb_19*x(7);

% Reaction: id = R20, name = R20
	reaction_R20=global_par_kf_20*x(18)*x(3)-global_par_kb_20*x(9);

% Reaction: id = R21, name = R21
	reaction_R21=global_par_kf_21*x(17)*x(4)-global_par_kb_21*x(6);

% Reaction: id = R22, name = R22
	reaction_R22=global_par_kf_22*x(58)*x(4)-global_par_kb_22*x(8);

% Reaction: id = R23, name = R23
	reaction_R23=global_par_kf_23*x(18)*x(4)-global_par_kb_23*x(10);

% Reaction: id = R24, name = R24
	reaction_R24=global_par_kf_24*x(19)*x(3)-global_par_kb_24*x(11);

% Reaction: id = R25, name = R25
	reaction_R25=global_par_kf_25*x(60)*x(3)-global_par_kb_25*x(13);

% Reaction: id = R26, name = R26
	reaction_R26=global_par_kf_26*x(19)*x(4)-global_par_kb_26*x(12);

% Reaction: id = R27, name = R27
	reaction_R27=global_par_kf_27*x(60)*x(4)-global_par_kb_27*x(14);

% Reaction: id = R28, name = R28
	reaction_R28=global_par_kf_28*x(5);

% Reaction: id = R29, name = R29
	reaction_R29=global_par_kf_29*x(6);

% Reaction: id = R30, name = R30
	reaction_R30=global_par_kf_30*x(11);

% Reaction: id = R31, name = R31
	reaction_R31=global_par_kf_31*x(12);

% Reaction: id = R32, name = R32
	reaction_R32=global_par_kf_32*x(3);

% Reaction: id = R33, name = R33
	reaction_R33=global_par_kf_33*x(5);

% Reaction: id = R34, name = R34
	reaction_R34=global_par_kf_34*x(7);

% Reaction: id = R35, name = R35
	reaction_R35=global_par_kf_35*x(9);

% Reaction: id = R36, name = R36
	reaction_R36=global_par_kf_36*x(11);

% Reaction: id = R37, name = R37
	reaction_R37=global_par_kf_37*x(13);

% Reaction: id = R38, name = R38
	reaction_R38=global_par_kf_38*x(15);

% Reaction: id = R39, name = R39
	reaction_R39=global_par_Vmax_39*x(3)*x(21)/(global_par_Km_39+x(21));

% Reaction: id = R40, name = R40
	reaction_R40=global_par_Vmax_40*x(5)*x(21)/(global_par_Km_40+x(21));

% Reaction: id = R41, name = R41
	reaction_R41=global_par_Vmax_41*x(7)*x(21)/(global_par_Km_41+x(21));

% Reaction: id = R42, name = R42
	reaction_R42=global_par_Vmax_42*x(9)*x(21)/(global_par_Km_42+x(21));

% Reaction: id = R43, name = R43
	reaction_R43=global_par_Vmax_43*x(11)*x(21)/(global_par_Km_43+x(21));

% Reaction: id = R44, name = R44
	reaction_R44=global_par_Vmax_44*x(13)*x(21)/(global_par_Km_44+x(21));

% Reaction: id = R45, name = R45
	reaction_R45=global_par_Vmax_45*x(15)*x(21)/(global_par_Km_45+x(21));

% Reaction: id = R46, name = R46
	reaction_R46=global_par_kf_46*x(23)*x(24)-global_par_kb_46*x(25);

% Reaction: id = R47, name = R47
	reaction_R47=global_par_kf_47*x(23)*x(59)-global_par_kb_47*x(57);

% Reaction: id = R48, name = R48
	reaction_R48=global_par_kf_48*x(25)*x(58)-global_par_kb_48*x(18);

% Reaction: id = R49, name = R49
	reaction_R49=global_par_kf_49*x(25)*x(7)-global_par_kb_49*x(9);

% Reaction: id = R50, name = R50
	reaction_R50=global_par_kf_50*x(25)*x(8)-global_par_kb_50*x(10);

% Reaction: id = R51, name = R51
	reaction_R51=global_par_kf_51*x(58);

% Reaction: id = R52, name = R52
	reaction_R52=global_par_kf_52*x(18);

% Reaction: id = R53, name = R53
	reaction_R53=global_par_kf_53*x(59);

% Reaction: id = R54, name = R54
	reaction_R54=global_par_kf_54*x(57);

% Reaction: id = R55, name = R55
	reaction_R55=global_par_kf_55*x(22)*x(56)-global_par_kb_55*x(55);

% Reaction: id = R56, name = R56
	reaction_R56=global_par_kf_56*x(22)-global_par_kb_56*x(21);

% Reaction: id = R57, name = R57
	reaction_R57=global_par_kf_57*x(26);

% Reaction: id = R58, name = R58
	reaction_R58=global_par_Vmax_58*x(9)*x(27)/(global_par_Km_58+x(27));

% Reaction: id = R59, name = R59
	reaction_R59=global_par_Vmax_59*x(35)*x(24)/(global_par_Km_59+x(24));

% Reaction: id = R60, name = R60
	reaction_R60=global_par_Vmax_60*x(35)*x(18)/(global_par_Km_60+x(18));

% Reaction: id = R61, name = R61
	reaction_R61=global_par_Vmax_61*x(35)*x(25)/(global_par_Km_61+x(25));

% Reaction: id = R62, name = R62
	reaction_R62=global_par_Vmax_62*x(55)*x(26)/(global_par_Km_62+x(26));

% Reaction: id = R63, name = R63
	reaction_R63=global_par_Vmax_63*x(55)*x(28)/(global_par_Km_63+x(28));

% Reaction: id = R64, name = R64
	reaction_R64=global_par_Vmax_64*x(55)*x(50)/(global_par_Km_64+x(50));

% Reaction: id = R65, name = R65
	reaction_R65=global_par_kf_65*x(54)*x(53)-global_par_kb_65*x(20);

% Reaction: id = R66, name = R66
	reaction_R66=global_par_kf_66*x(20)*x(13)-global_par_kb_66*x(15);

% Reaction: id = R67, name = R67
	reaction_R67=global_par_kf_67*x(20)*x(14)-global_par_kb_67*x(16);

% Reaction: id = R68, name = R68
	reaction_R68=global_par_kf_68*x(60);

% Reaction: id = R69, name = R69
	reaction_R69=global_par_kf_69*x(31);

% Reaction: id = R70, name = R70
	reaction_R70=global_par_Vmax_70*x(16)*x(52)/(global_par_Km_70+x(52));

% Reaction: id = R71, name = R71
	reaction_R71=global_par_Vmax_71*global_par_Rap1GAP*x(31)/(global_par_Km_71+x(31));

% Reaction: id = R72, name = R72
	reaction_R72=global_par_Vmax_72*global_par_Rap1GAP*x(51)/(global_par_Km_72+x(51));

% Reaction: id = R73, name = R73
	reaction_R73=global_par_kf_73*x(30)*x(26)-global_par_kb_73*x(50);

% Reaction: id = R74, name = R74
	reaction_R74=global_par_kf_74*x(29)*x(26)-global_par_kb_74*x(28);

% Reaction: id = R75, name = R75
	reaction_R75=global_par_kf_75*x(29)*x(31)-global_par_kb_75*x(51);

% Reaction: id = R76, name = R76
	reaction_R76=global_par_kf_76*x(32);

% Reaction: id = R77, name = R77
	reaction_R77=global_par_kf_77*x(34)*x(34)-global_par_kb_77*x(35);

% Reaction: id = R78, name = R78
	reaction_R78=global_par_kf_78*x(36)*x(37)-global_par_kb_78*x(38);

% Reaction: id = R79, name = R79
	reaction_R79=global_par_kf_79*x(39)*x(37)-global_par_kb_79*x(40);

% Reaction: id = R80, name = R80
	reaction_R80=global_par_kf_80*x(33)*x(37)-global_par_kb_80*x(32);

% Reaction: id = R81, name = R81
	reaction_R81=global_par_Vmax_81*x(50)*x(36)/(global_par_Km_81+x(36));

% Reaction: id = R82, name = R82
	reaction_R82=global_par_Vmax_82*x(50)*x(39)/(global_par_Km_82+x(39));

% Reaction: id = R83, name = R83
	reaction_R83=global_par_Vmax_83*x(50)*x(38)/(global_par_Km_83+x(38));

% Reaction: id = R84, name = R84
	reaction_R84=global_par_Vmax_84*x(50)*x(40)/(global_par_Km_84+x(40));

% Reaction: id = R85, name = R85
	reaction_R85=global_par_Vmax_85*x(28)*x(36)/(global_par_Km_85+x(36));

% Reaction: id = R86, name = R86
	reaction_R86=global_par_Vmax_86*x(28)*x(39)/(global_par_Km_86+x(39));

% Reaction: id = R87, name = R87
	reaction_R87=global_par_Vmax_87*x(28)*x(38)/(global_par_Km_87+x(38));

% Reaction: id = R88, name = R88
	reaction_R88=global_par_Vmax_88*x(28)*x(40)/(global_par_Km_88+x(40));

% Reaction: id = R89, name = R89
	reaction_R89=global_par_Vmax_89*x(51)*x(36)/(global_par_Km_89+x(36));

% Reaction: id = R90, name = R90
	reaction_R90=global_par_Vmax_90*x(51)*x(39)/(global_par_Km_90+x(39));

% Reaction: id = R91, name = R91
	reaction_R91=global_par_Vmax_91*x(51)*x(38)/(global_par_Km_91+x(38));

% Reaction: id = R92, name = R92
	reaction_R92=global_par_Vmax_92*x(51)*x(40)/(global_par_Km_92+x(40));

% Reaction: id = R93, name = R93
	reaction_R93=global_par_Vmax_93*global_par_PP2Acyt*x(39)/(global_par_Km_93+x(39));

% Reaction: id = R94, name = R94
	reaction_R94=global_par_Vmax_94*global_par_PP2Acyt*x(33)/(global_par_Km_94+x(33));

% Reaction: id = R95, name = R95
	reaction_R95=global_par_Vmax_95*global_par_PP2Acyt*x(40)/(global_par_Km_95+x(40));

% Reaction: id = R96, name = R96
	reaction_R96=global_par_Vmax_96*global_par_PP2Acyt*x(32)/(global_par_Km_96+x(32));

% Reaction: id = R97, name = R97
	reaction_R97=global_par_Vmax_97*global_par_MKP3cyt*x(34)/(global_par_Km_97+x(34));

% Reaction: id = R98, name = R98
	reaction_R98=global_par_Vmax_98*global_par_MKP3cyt*x(35)/(global_par_Km_98+x(35));

% Reaction: id = R99, name = R99
	reaction_R99=global_par_kf_99*x(41);

% Reaction: id = R100, name = R100
	reaction_R100=global_par_kf_100*x(43)*x(43)-global_par_kb_100*x(44);

% Reaction: id = R101, name = R101
	reaction_R101=global_par_kf_101*x(45)*x(46)-global_par_kb_101*x(47);

% Reaction: id = R102, name = R102
	reaction_R102=global_par_kf_102*x(48)*x(46)-global_par_kb_102*x(49);

% Reaction: id = R103, name = R103
	reaction_R103=global_par_kf_103*x(42)*x(46)-global_par_kb_103*x(41);

% Reaction: id = R104, name = R104
	reaction_R104=global_par_Vmax_104*global_par_PP2Anuc*x(48)/(global_par_Km_104+x(48));

% Reaction: id = R105, name = R105
	reaction_R105=global_par_Vmax_105*global_par_PP2Anuc*x(42)/(global_par_Km_105+x(42));

% Reaction: id = R106, name = R106
	reaction_R106=global_par_Vmax_106*global_par_PP2Anuc*x(49)/(global_par_Km_106+x(49));

% Reaction: id = R107, name = R107
	reaction_R107=global_par_Vmax_107*global_par_PP2Anuc*x(41)/(global_par_Km_107+x(41));

% Reaction: id = R108, name = R108
	reaction_R108=global_par_Vmax_108*global_par_MKP3nuc*x(43)/(global_par_Km_108+x(43));

% Reaction: id = R109, name = R109
	reaction_R109=global_par_Vmax_109*global_par_MKP3nuc*x(44)/(global_par_Km_109+x(44));

% Reaction: id = R110, name = R110
	reaction_R110=global_par_kf_110*x(39);

% Reaction: id = R111, name = R111
	reaction_R111=global_par_kf_111*x(39);

% Reaction: id = R112, name = R112
	reaction_R112=global_par_kf_112*x(48);

% Reaction: id = R113, name = R113
	reaction_R113=global_par_kf_113*x(48);

% Reaction: id = R114, name = R114
	reaction_R114=global_par_kf_114*x(38);

% Reaction: id = R115, name = R115
	reaction_R115=global_par_kf_115*x(38);

% Reaction: id = R116, name = R116
	reaction_R116=global_par_kf_116*x(47);

% Reaction: id = R117, name = R117
	reaction_R117=global_par_kf_117*x(47);

% Reaction: id = R118, name = R118
	reaction_R118=global_par_kf_118*x(37);

% Reaction: id = R119, name = R119
	reaction_R119=global_par_kf_119*x(37);

% Reaction: id = R120, name = R120
	reaction_R120=global_par_kf_120*x(46);

% Reaction: id = R121, name = R121
	reaction_R121=global_par_kf_121*x(46);

% Reaction: id = R122, name = R122
	reaction_R122=global_par_kf_122*x(36);

% Reaction: id = R123, name = R123
	reaction_R123=global_par_kf_123*x(36);

% Reaction: id = R124, name = R124
	reaction_R124=global_par_kf_124*x(45);

% Reaction: id = R125, name = R125
	reaction_R125=global_par_kf_125*x(45);

% Reaction: id = R126, name = R126
	reaction_R126=global_par_kf_126*x(34);

% Reaction: id = R127, name = R127
	reaction_R127=global_par_kf_127*x(34);

% Reaction: id = R128, name = R128
	reaction_R128=global_par_kf_128*x(43);

% Reaction: id = R129, name = R129
	reaction_R129=global_par_kf_129*x(43);

% Reaction: id = R130, name = R130
	reaction_R130=global_par_kf_130*x(33);

% Reaction: id = R131, name = R131
	reaction_R131=global_par_kf_131*x(33);

% Reaction: id = R132, name = R132
	reaction_R132=global_par_kf_132*x(42);

% Reaction: id = R133, name = R133
	reaction_R133=global_par_kf_133*x(42);

% Reaction: id = R134, name = R134
	reaction_R134=global_par_kf_134*x(32);

% Reaction: id = R135, name = R135
	reaction_R135=global_par_kf_135*x(32);

% Reaction: id = R136, name = R136
	reaction_R136=global_par_kf_136*x(41);

% Reaction: id = R137, name = R137
	reaction_R137=global_par_kf_137*x(41);

% Reaction: id = R138, name = R138
	reaction_R138=global_par_kf_138*x(35);

% Reaction: id = R139, name = R139
	reaction_R139=global_par_kf_139*x(35);

% Reaction: id = R140, name = R140
	reaction_R140=global_par_kf_140*x(44);

% Reaction: id = R141, name = R141
	reaction_R141=global_par_kf_141*x(44);

% Reaction: id = R142, name = R142
	reaction_R142=global_par_kf_142*x(40);

% Reaction: id = R143, name = R143
	reaction_R143=global_par_kf_143*x(40);

% Reaction: id = R144, name = R144
	reaction_R144=global_par_kf_144*x(49);

% Reaction: id = R145, name = R145
	reaction_R145=global_par_kf_145*x(49);

% Reaction: id = mwe8ee00ff_3d59_44d5_8d7f_a2074823f29d, name = reaction_1	% Local Parameter:   id =  mw7d6fb5c7_061a_49ff_99a2_d76de2f025f7, name = ksynthngf
	reaction_mwe8ee00ff_3d59_44d5_8d7f_a2074823f29d_mw7d6fb5c7_061a_49ff_99a2_d76de2f025f7=3.849E-8;

	reaction_mwe8ee00ff_3d59_44d5_8d7f_a2074823f29d=reaction_mwe8ee00ff_3d59_44d5_8d7f_a2074823f29d_mw7d6fb5c7_061a_49ff_99a2_d76de2f025f7*x(67);

% Reaction: id = mw711542fd_b235_40f7_9782_f78eb654d773, name = reaction_2	% Local Parameter:   id =  mw65c9272f_da7a_4626_86c0_f834524601e6, name = kdegnfg
	reaction_mw711542fd_b235_40f7_9782_f78eb654d773_mw65c9272f_da7a_4626_86c0_f834524601e6=0.001283;

	reaction_mw711542fd_b235_40f7_9782_f78eb654d773=reaction_mw711542fd_b235_40f7_9782_f78eb654d773_mw65c9272f_da7a_4626_86c0_f834524601e6*x(68);

% Reaction: id = mwc7ff2b7b_e2c9_4420_87bc_f285d98de30b, name = reaction_3	% Local Parameter:   id =  mw4b2ef456_cb6c_46b8_919b_734f320058c1, name = konngf
	reaction_mwc7ff2b7b_e2c9_4420_87bc_f285d98de30b_mw4b2ef456_cb6c_46b8_919b_734f320058c1=372.0;
	% Local Parameter:   id =  mw3d826840_83ab_4394_ae58_99f8d7180f29, name = koffngf
	reaction_mwc7ff2b7b_e2c9_4420_87bc_f285d98de30b_mw3d826840_83ab_4394_ae58_99f8d7180f29=0.00384;

	reaction_mwc7ff2b7b_e2c9_4420_87bc_f285d98de30b=reaction_mwc7ff2b7b_e2c9_4420_87bc_f285d98de30b_mw4b2ef456_cb6c_46b8_919b_734f320058c1*x(66)*x(68)-reaction_mwc7ff2b7b_e2c9_4420_87bc_f285d98de30b_mw3d826840_83ab_4394_ae58_99f8d7180f29*x(70);

% Reaction: id = mw02775189_5c04_4c2f_a5f4_2f15723e1ece, name = reaction_4	% Local Parameter:   id =  mw748e0940_792f_4420_8ece_0de52ecaa556, name = kontz
	reaction_mw02775189_5c04_4c2f_a5f4_2f15723e1ece_mw748e0940_792f_4420_8ece_0de52ecaa556=16.2;
	% Local Parameter:   id =  mw87c66aa4_69ab_4cad_aa55_4b28455f804a, name = kofftz
	reaction_mw02775189_5c04_4c2f_a5f4_2f15723e1ece_mw87c66aa4_69ab_4cad_aa55_4b28455f804a=1.8E-4;

	reaction_mw02775189_5c04_4c2f_a5f4_2f15723e1ece=reaction_mw02775189_5c04_4c2f_a5f4_2f15723e1ece_mw748e0940_792f_4420_8ece_0de52ecaa556*x(68)*x(71)-reaction_mw02775189_5c04_4c2f_a5f4_2f15723e1ece_mw87c66aa4_69ab_4cad_aa55_4b28455f804a*x(72);

% Reaction: id = mwfb02ea2a_1f06_4f8f_80a0_721149f213ff, name = reaction_5	% Local Parameter:   id =  mw27805dbc_be23_402e_95ec_fab51829ca51, name = kdegtz
	reaction_mwfb02ea2a_1f06_4f8f_80a0_721149f213ff_mw27805dbc_be23_402e_95ec_fab51829ca51=2.3E-5;

	reaction_mwfb02ea2a_1f06_4f8f_80a0_721149f213ff=reaction_mwfb02ea2a_1f06_4f8f_80a0_721149f213ff_mw27805dbc_be23_402e_95ec_fab51829ca51*x(71);

% Reaction: id = mw12b652db_d0da_4723_b160_001fa36f9190, name = reaction_6	% Local Parameter:   id =  mw2bbef0c4_48a5_4757_8f66_81da5c6894bd, name = kdegtrkaI
	reaction_mw12b652db_d0da_4723_b160_001fa36f9190_mw2bbef0c4_48a5_4757_8f66_81da5c6894bd=0.001925;

	reaction_mw12b652db_d0da_4723_b160_001fa36f9190=reaction_mw12b652db_d0da_4723_b160_001fa36f9190_mw2bbef0c4_48a5_4757_8f66_81da5c6894bd*x(74);

% Reaction: id = mwffc6fab3_9f90_4da4_bf71_214b9b723899, name = reaction_7	% Local Parameter:   id =  mw307c003f_3906_4fa9_a1a8_bafaa3d0d901, name = ktrkaiin
	reaction_mwffc6fab3_9f90_4da4_bf71_214b9b723899_mw307c003f_3906_4fa9_a1a8_bafaa3d0d901=83.33;
	% Local Parameter:   id =  mw6208f472_c677_43ef_a590_554bc0d88d2c, name = ktrkaiout
	reaction_mwffc6fab3_9f90_4da4_bf71_214b9b723899_mw6208f472_c677_43ef_a590_554bc0d88d2c=1000000.0;

	reaction_mwffc6fab3_9f90_4da4_bf71_214b9b723899=reaction_mwffc6fab3_9f90_4da4_bf71_214b9b723899_mw307c003f_3906_4fa9_a1a8_bafaa3d0d901*x(74)*compartment_mwc2fe3668_8fb0_4cfb_b795_99057e61e290-reaction_mwffc6fab3_9f90_4da4_bf71_214b9b723899_mw6208f472_c677_43ef_a590_554bc0d88d2c*x(61)*compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf;

% Reaction: id = mwf371eb20_7bda_4140_9a43_dfad70900057, name = reaction_8	% Local Parameter:   id =  mw5d69c45e_20e6_4a18_b22a_b79692b9c57d, name = ktranstngfrlout
	reaction_mwf371eb20_7bda_4140_9a43_dfad70900057_mw5d69c45e_20e6_4a18_b22a_b79692b9c57d=2000.0;
	% Local Parameter:   id =  mw88063cbd_d06b_40bd_bbed_3f8a4a9ee082, name = ktransngfrlin
	reaction_mwf371eb20_7bda_4140_9a43_dfad70900057_mw88063cbd_d06b_40bd_bbed_3f8a4a9ee082=2000.0;

	reaction_mwf371eb20_7bda_4140_9a43_dfad70900057=reaction_mwf371eb20_7bda_4140_9a43_dfad70900057_mw5d69c45e_20e6_4a18_b22a_b79692b9c57d*x(70)*compartment_mwc2fe3668_8fb0_4cfb_b795_99057e61e290-reaction_mwf371eb20_7bda_4140_9a43_dfad70900057_mw88063cbd_d06b_40bd_bbed_3f8a4a9ee082*x(2)*compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf;

% Reaction: id = mw8105f0dc_19ad_4f7a_80df_3f84de216c42, name = Intercomp mass transfer	% Local Parameter:   id =  mwc3897a3e_bec3_478d_9450_afc4751c2775, name = ktransinneuron
	reaction_mw8105f0dc_19ad_4f7a_80df_3f84de216c42_mwc3897a3e_bec3_478d_9450_afc4751c2775=2000.0;
	% Local Parameter:   id =  mwda0271e2_458c_4419_9c7d_8fb1bf692c13, name = ktransoutneuron
	reaction_mw8105f0dc_19ad_4f7a_80df_3f84de216c42_mwda0271e2_458c_4419_9c7d_8fb1bf692c13=2000.0;

	reaction_mw8105f0dc_19ad_4f7a_80df_3f84de216c42=reaction_mw8105f0dc_19ad_4f7a_80df_3f84de216c42_mwc3897a3e_bec3_478d_9450_afc4751c2775*x(1)*compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf-reaction_mw8105f0dc_19ad_4f7a_80df_3f84de216c42_mwda0271e2_458c_4419_9c7d_8fb1bf692c13*x(66)*compartment_mwc2fe3668_8fb0_4cfb_b795_99057e61e290;

% Reaction: id = mw9da48a51_bbd0_4395_9883_8441d8153b00, name = reaction_9	% Local Parameter:   id =  mwfc8fe87e_6841_4214_9c2f_5d821794f38d, name = kontrkaI
	reaction_mw9da48a51_bbd0_4395_9883_8441d8153b00_mwfc8fe87e_6841_4214_9c2f_5d821794f38d=1.0E7;
	% Local Parameter:   id =  mw3716109a_c83e_4fd4_911e_ccc67b036bb7, name = kofftrkaI
	reaction_mw9da48a51_bbd0_4395_9883_8441d8153b00_mw3716109a_c83e_4fd4_911e_ccc67b036bb7=0.001;

	reaction_mw9da48a51_bbd0_4395_9883_8441d8153b00=reaction_mw9da48a51_bbd0_4395_9883_8441d8153b00_mwfc8fe87e_6841_4214_9c2f_5d821794f38d*x(2)*x(61)-reaction_mw9da48a51_bbd0_4395_9883_8441d8153b00_mw3716109a_c83e_4fd4_911e_ccc67b036bb7*x(62);

% Reaction: id = mwc467edb6_a255_45d6_8014_33bd0209b36f, name = reaction_10	% Local Parameter:   id =  mwd74ca4a6_566f_4161_859e_2b05bf2851fc, name = kontrkaI
	reaction_mwc467edb6_a255_45d6_8014_33bd0209b36f_mwd74ca4a6_566f_4161_859e_2b05bf2851fc=1.0E7;
	% Local Parameter:   id =  mw924e0439_7ac5_4812_b1c2_11e46b4737b8, name = kofftrkaI
	reaction_mwc467edb6_a255_45d6_8014_33bd0209b36f_mw924e0439_7ac5_4812_b1c2_11e46b4737b8=0.001;

	reaction_mwc467edb6_a255_45d6_8014_33bd0209b36f=reaction_mwc467edb6_a255_45d6_8014_33bd0209b36f_mwd74ca4a6_566f_4161_859e_2b05bf2851fc*x(61)*x(1)-reaction_mwc467edb6_a255_45d6_8014_33bd0209b36f_mw924e0439_7ac5_4812_b1c2_11e46b4737b8*x(63);

% Reaction: id = mwe4f77287_e0fe_47f7_a74e_312151e578a4, name = reaction_14	% Local Parameter:   id =  mwee585562_2580_4943_bd3e_731f12217004, name = kdegEI
	reaction_mwe4f77287_e0fe_47f7_a74e_312151e578a4_mwee585562_2580_4943_bd3e_731f12217004=0.0167;

	reaction_mwe4f77287_e0fe_47f7_a74e_312151e578a4=reaction_mwe4f77287_e0fe_47f7_a74e_312151e578a4_mwee585562_2580_4943_bd3e_731f12217004*x(63);

% Reaction: id = mw4f0ee780_12f5_436d_a227_c5e7cd420259, name = reaction_15	% Local Parameter:   id =  mwfbeb575a_0864_4d0d_b862_240f7f6506c1, name = kdegEI
	reaction_mw4f0ee780_12f5_436d_a227_c5e7cd420259_mwfbeb575a_0864_4d0d_b862_240f7f6506c1=0.0167;

	reaction_mw4f0ee780_12f5_436d_a227_c5e7cd420259=reaction_mw4f0ee780_12f5_436d_a227_c5e7cd420259_mwfbeb575a_0864_4d0d_b862_240f7f6506c1*x(62);

% Species:   id = mwf82ad06a_b8aa_40fa_a532_a1da44e3425f, name = pro_TrkA, constant	const_species_mwf82ad06a_b8aa_40fa_a532_a1da44e3425f=0.020631;

	xdot=zeros(75,1);
	
% Species:   id = NGFR, name = NGFR, affected by kineticLaw
	xdot(1) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R1) + (-1.0 * reaction_mw8105f0dc_19ad_4f7a_80df_3f84de216c42) + (-1.0 * reaction_mwc467edb6_a255_45d6_8014_33bd0209b36f));
	
% Species:   id = L_NGFR, name = L_NGFR, affected by kineticLaw
	xdot(2) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R3) + ( 1.0 * reaction_mwf371eb20_7bda_4140_9a43_dfad70900057) + (-1.0 * reaction_mw9da48a51_bbd0_4395_9883_8441d8153b00));
	
% Species:   id = pTrkA, name = pTrkA, affected by kineticLaw
	xdot(3) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R3) + (-1.0 * reaction_R4) + (-1.0 * reaction_R18) + (-1.0 * reaction_R19) + (-1.0 * reaction_R20) + (-1.0 * reaction_R24) + (-1.0 * reaction_R25) + (-1.0 * reaction_R32) + (-1.0 * reaction_R39) + ( 1.0 * reaction_R39));
	
% Species:   id = pTrkA_endo, name = pTrkA_endo, affected by kineticLaw
	xdot(4) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R4) + (-1.0 * reaction_R11) + (-1.0 * reaction_R21) + (-1.0 * reaction_R22) + (-1.0 * reaction_R23) + (-1.0 * reaction_R26) + (-1.0 * reaction_R27));
	
% Species:   id = Shc_pTrkA, name = Shc_pTrkA, affected by kineticLaw
	xdot(5) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R5) + ( 1.0 * reaction_R18) + (-1.0 * reaction_R28) + (-1.0 * reaction_R33) + (-1.0 * reaction_R40) + ( 1.0 * reaction_R40));
	
% Species:   id = Shc_pTrkA_endo, name = Shc_pTrkA_endo, affected by kineticLaw
	xdot(6) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R5) + (-1.0 * reaction_R12) + ( 1.0 * reaction_R21) + (-1.0 * reaction_R29));
	
% Species:   id = pShc_pTrkA, name = pShc_pTrkA, affected by kineticLaw
	xdot(7) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R6) + ( 1.0 * reaction_R19) + ( 1.0 * reaction_R28) + (-1.0 * reaction_R34) + (-1.0 * reaction_R41) + ( 1.0 * reaction_R41) + (-1.0 * reaction_R49));
	
% Species:   id = pShc_pTrkA_endo, name = pShc_pTrkA_endo, affected by kineticLaw
	xdot(8) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R13) + ( 1.0 * reaction_R22) + ( 1.0 * reaction_R29) + (-1.0 * reaction_R50));
	
% Species:   id = Grb2_SOS_pShc_pTrkA, name = Grb2_SOS_pShc_pTrkA, affected by kineticLaw
	xdot(9) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R7) + ( 1.0 * reaction_R20) + (-1.0 * reaction_R35) + (-1.0 * reaction_R42) + ( 1.0 * reaction_R42) + ( 1.0 * reaction_R49) + (-1.0 * reaction_R58) + ( 1.0 * reaction_R58));
	
% Species:   id = Grb2_SOS_pShc_pTrkA_endo, name = Grb2_SOS_pShc_pTrkA_endo, affected by kineticLaw
	xdot(10) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R7) + (-1.0 * reaction_R14) + ( 1.0 * reaction_R23) + ( 1.0 * reaction_R50));
	
% Species:   id = FRS2_pTrkA, name = FRS2_pTrkA, affected by kineticLaw
	xdot(11) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R8) + ( 1.0 * reaction_R24) + (-1.0 * reaction_R30) + (-1.0 * reaction_R36) + (-1.0 * reaction_R43) + ( 1.0 * reaction_R43));
	
% Species:   id = FRS2_pTrkA_endo, name = FRS2_pTrkA_endo, affected by kineticLaw
	xdot(12) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R8) + (-1.0 * reaction_R15) + ( 1.0 * reaction_R26) + (-1.0 * reaction_R31));
	
% Species:   id = pFRS2_pTrkA, name = pFRS2_pTrkA, affected by kineticLaw
	xdot(13) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R9) + ( 1.0 * reaction_R25) + ( 1.0 * reaction_R30) + (-1.0 * reaction_R37) + (-1.0 * reaction_R44) + ( 1.0 * reaction_R44) + (-1.0 * reaction_R66));
	
% Species:   id = pFRS2_pTrkA_endo, name = pFRS2_pTrkA_endo, affected by kineticLaw
	xdot(14) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R9) + (-1.0 * reaction_R16) + ( 1.0 * reaction_R27) + ( 1.0 * reaction_R31) + (-1.0 * reaction_R67));
	
% Species:   id = Crk_C3G_pFRS2_pTrkA, name = Crk_C3G_pFRS2_pTrkA, affected by kineticLaw
	xdot(15) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R10) + (-1.0 * reaction_R38) + (-1.0 * reaction_R45) + ( 1.0 * reaction_R45) + ( 1.0 * reaction_R66));
	
% Species:   id = Crk_C3G_pFRS2_pTrkA_endo, name = Crk_C3G_pFRS2_pTrkA_endo, affected by kineticLaw
	xdot(16) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R10) + (-1.0 * reaction_R17) + ( 1.0 * reaction_R67) + (-1.0 * reaction_R70) + ( 1.0 * reaction_R70));
	
% Species:   id = Shc, name = Shc, affected by kineticLaw
	xdot(17) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R12) + (-1.0 * reaction_R18) + (-1.0 * reaction_R21) + ( 1.0 * reaction_R33) + ( 1.0 * reaction_R51) + ( 1.0 * reaction_R52));
	
% Species:   id = Grb2_SOS_pShc, name = Grb2_SOS_pShc, affected by kineticLaw
	xdot(18) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R14) + (-1.0 * reaction_R20) + (-1.0 * reaction_R23) + ( 1.0 * reaction_R35) + ( 1.0 * reaction_R48) + (-1.0 * reaction_R52) + (-1.0 * reaction_R60));
	
% Species:   id = FRS2, name = FRS2, affected by kineticLaw
	xdot(19) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R15) + (-1.0 * reaction_R24) + (-1.0 * reaction_R26) + ( 1.0 * reaction_R36) + ( 1.0 * reaction_R68));
	
% Species:   id = Crk_C3G, name = Crk_C3G, affected by kineticLaw
	xdot(20) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R17) + ( 1.0 * reaction_R38) + ( 1.0 * reaction_R65) + (-1.0 * reaction_R66) + (-1.0 * reaction_R67));
	
% Species:   id = Dok, name = Dok, affected by kineticLaw
	xdot(21) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R39) + (-1.0 * reaction_R40) + (-1.0 * reaction_R41) + (-1.0 * reaction_R42) + (-1.0 * reaction_R43) + (-1.0 * reaction_R44) + (-1.0 * reaction_R45) + ( 1.0 * reaction_R56));
	
% Species:   id = pDok, name = pDok, affected by kineticLaw
	xdot(22) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R39) + ( 1.0 * reaction_R40) + ( 1.0 * reaction_R41) + ( 1.0 * reaction_R42) + ( 1.0 * reaction_R43) + ( 1.0 * reaction_R44) + ( 1.0 * reaction_R45) + (-1.0 * reaction_R55) + (-1.0 * reaction_R56));
	
% Species:   id = Grb2, name = Grb2, affected by kineticLaw
	xdot(23) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R46) + (-1.0 * reaction_R47));
	
% Species:   id = SOS, name = SOS, affected by kineticLaw
	xdot(24) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R46) + ( 1.0 * reaction_R53) + (-1.0 * reaction_R59));
	
% Species:   id = Grb2_SOS, name = Grb2_SOS, affected by kineticLaw
	xdot(25) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R46) + (-1.0 * reaction_R48) + (-1.0 * reaction_R49) + (-1.0 * reaction_R50) + ( 1.0 * reaction_R52) + ( 1.0 * reaction_R54) + (-1.0 * reaction_R61));
	
% Species:   id = Ras_GTP, name = Ras_GTP, affected by kineticLaw
	xdot(26) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R57) + ( 1.0 * reaction_R58) + (-1.0 * reaction_R62) + (-1.0 * reaction_R73) + (-1.0 * reaction_R74));
	
% Species:   id = Ras_GDP, name = Ras_GDP, affected by kineticLaw
	xdot(27) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R57) + (-1.0 * reaction_R58) + ( 1.0 * reaction_R62) + ( 1.0 * reaction_R63) + ( 1.0 * reaction_R64));
	
% Species:   id = B_Raf_Ras_GTP, name = B_Raf_Ras_GTP, affected by kineticLaw
	xdot(28) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R63) + ( 1.0 * reaction_R74) + (-1.0 * reaction_R85) + ( 1.0 * reaction_R85) + (-1.0 * reaction_R86) + ( 1.0 * reaction_R86) + (-1.0 * reaction_R87) + ( 1.0 * reaction_R87) + (-1.0 * reaction_R88) + ( 1.0 * reaction_R88));
	
% Species:   id = B_Raf, name = B_Raf, affected by kineticLaw
	xdot(29) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R63) + ( 1.0 * reaction_R72) + (-1.0 * reaction_R74) + (-1.0 * reaction_R75));
	
% Species:   id = c_Raf, name = c_Raf, affected by kineticLaw
	xdot(30) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R64) + (-1.0 * reaction_R73));
	
% Species:   id = Rap1_GTP, name = Rap1_GTP, affected by kineticLaw
	xdot(31) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R69) + ( 1.0 * reaction_R70) + (-1.0 * reaction_R71) + (-1.0 * reaction_R75));
	
% Species:   id = ppMEKcyt_ERKcyt, name = ppMEKcyt_ERKcyt, affected by kineticLaw
	xdot(32) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R76) + ( 1.0 * reaction_R80) + ( 1.0 * reaction_R84) + ( 1.0 * reaction_R88) + ( 1.0 * reaction_R92) + (-1.0 * reaction_R96) + (-1.0 * reaction_R134) + (-1.0 * reaction_R135) + ( 1.0 * reaction_R135) + ( 1.0 * reaction_R136));
	
% Species:   id = ppMEKcyt, name = ppMEKcyt, affected by kineticLaw
	xdot(33) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R76) + (-1.0 * reaction_R80) + ( 1.0 * reaction_R82) + ( 1.0 * reaction_R86) + ( 1.0 * reaction_R90) + (-1.0 * reaction_R94) + (-1.0 * reaction_R130) + (-1.0 * reaction_R131) + ( 1.0 * reaction_R131) + ( 1.0 * reaction_R132));
	
% Species:   id = ppERKcyt, name = ppERKcyt, affected by kineticLaw
	xdot(34) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R76) + (-2.0 * reaction_R77) + (-1.0 * reaction_R97) + ( 1.0 * reaction_R98) + (-1.0 * reaction_R126) + (-1.0 * reaction_R127) + ( 1.0 * reaction_R127) + ( 1.0 * reaction_R128));
	
% Species:   id = dppERKcyt, name = dppERKcyt, affected by kineticLaw
	xdot(35) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R59) + ( 1.0 * reaction_R59) + (-1.0 * reaction_R60) + ( 1.0 * reaction_R60) + (-1.0 * reaction_R61) + ( 1.0 * reaction_R61) + ( 1.0 * reaction_R77) + (-1.0 * reaction_R98) + (-1.0 * reaction_R138) + (-1.0 * reaction_R139) + ( 1.0 * reaction_R139) + ( 1.0 * reaction_R140));
	
% Species:   id = MEKcyt, name = MEKcyt, affected by kineticLaw
	xdot(36) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R78) + (-1.0 * reaction_R81) + (-1.0 * reaction_R85) + (-1.0 * reaction_R89) + ( 1.0 * reaction_R93) + (-1.0 * reaction_R122) + (-1.0 * reaction_R123) + ( 1.0 * reaction_R123) + ( 1.0 * reaction_R124));
	
% Species:   id = ERKcyt, name = ERKcyt, affected by kineticLaw
	xdot(37) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R78) + (-1.0 * reaction_R79) + (-1.0 * reaction_R80) + ( 1.0 * reaction_R97) + ( 1.0 * reaction_R98) + (-1.0 * reaction_R118) + (-1.0 * reaction_R119) + ( 1.0 * reaction_R119) + ( 1.0 * reaction_R120));
	
% Species:   id = MEKcyt_ERKcyt, name = MEKcyt_ERKcyt, affected by kineticLaw
	xdot(38) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R78) + (-1.0 * reaction_R83) + (-1.0 * reaction_R87) + (-1.0 * reaction_R91) + ( 1.0 * reaction_R95) + (-1.0 * reaction_R114) + (-1.0 * reaction_R115) + ( 1.0 * reaction_R115) + ( 1.0 * reaction_R116));
	
% Species:   id = pMEKcyt, name = pMEKcyt, affected by kineticLaw
	xdot(39) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R79) + ( 1.0 * reaction_R81) + (-1.0 * reaction_R82) + ( 1.0 * reaction_R85) + (-1.0 * reaction_R86) + ( 1.0 * reaction_R89) + (-1.0 * reaction_R90) + (-1.0 * reaction_R93) + ( 1.0 * reaction_R94) + (-1.0 * reaction_R110) + (-1.0 * reaction_R111) + ( 1.0 * reaction_R111) + ( 1.0 * reaction_R112));
	
% Species:   id = pMEKcyt_ERKcyt, name = pMEKcyt_ERKcyt, affected by kineticLaw
	xdot(40) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R79) + ( 1.0 * reaction_R83) + (-1.0 * reaction_R84) + ( 1.0 * reaction_R87) + (-1.0 * reaction_R88) + ( 1.0 * reaction_R91) + (-1.0 * reaction_R92) + (-1.0 * reaction_R95) + ( 1.0 * reaction_R96) + (-1.0 * reaction_R142) + (-1.0 * reaction_R143) + ( 1.0 * reaction_R143) + ( 1.0 * reaction_R144));
	
% Species:   id = ppMEKnuc_ERKnuc, name = ppMEKnuc_ERKnuc, affected by kineticLaw
	xdot(41) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R99) + ( 1.0 * reaction_R103) + (-1.0 * reaction_R107) + ( 1.0 * reaction_R135) + (-1.0 * reaction_R136) + ( 1.0 * reaction_R136) + (-1.0 * reaction_R137));
	
% Species:   id = ppMEKnuc, name = ppMEKnuc, affected by kineticLaw
	xdot(42) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R99) + (-1.0 * reaction_R103) + (-1.0 * reaction_R105) + ( 1.0 * reaction_R131) + (-1.0 * reaction_R132) + ( 1.0 * reaction_R132) + (-1.0 * reaction_R133));
	
% Species:   id = ppERKnuc, name = ppERKnuc, affected by kineticLaw
	xdot(43) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R99) + (-2.0 * reaction_R100) + (-1.0 * reaction_R108) + ( 1.0 * reaction_R109) + ( 1.0 * reaction_R127) + (-1.0 * reaction_R128) + ( 1.0 * reaction_R128) + (-1.0 * reaction_R129));
	
% Species:   id = dppERKnuc, name = dppERKnuc, affected by kineticLaw
	xdot(44) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R100) + (-1.0 * reaction_R109) + ( 1.0 * reaction_R139) + (-1.0 * reaction_R140) + ( 1.0 * reaction_R140) + (-1.0 * reaction_R141));
	
% Species:   id = MEKnuc, name = MEKnuc, affected by kineticLaw
	xdot(45) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R101) + ( 1.0 * reaction_R104) + ( 1.0 * reaction_R123) + (-1.0 * reaction_R124) + ( 1.0 * reaction_R124) + (-1.0 * reaction_R125));
	
% Species:   id = ERKnuc, name = ERKnuc, affected by kineticLaw
	xdot(46) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R101) + (-1.0 * reaction_R102) + (-1.0 * reaction_R103) + ( 1.0 * reaction_R108) + ( 1.0 * reaction_R109) + ( 1.0 * reaction_R119) + (-1.0 * reaction_R120) + ( 1.0 * reaction_R120) + (-1.0 * reaction_R121));
	
% Species:   id = MEKnuc_ERKnuc, name = MEKnuc_ERKnuc, affected by kineticLaw
	xdot(47) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R101) + ( 1.0 * reaction_R106) + ( 1.0 * reaction_R115) + (-1.0 * reaction_R116) + ( 1.0 * reaction_R116) + (-1.0 * reaction_R117));
	
% Species:   id = pMEKnuc, name = pMEKnuc, affected by kineticLaw
	xdot(48) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R102) + (-1.0 * reaction_R104) + ( 1.0 * reaction_R105) + ( 1.0 * reaction_R111) + (-1.0 * reaction_R112) + ( 1.0 * reaction_R112) + (-1.0 * reaction_R113));
	
% Species:   id = pMEKnuc_ERKnuc, name = pMEKnuc_ERKnuc, affected by kineticLaw
	xdot(49) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R102) + (-1.0 * reaction_R106) + ( 1.0 * reaction_R107) + ( 1.0 * reaction_R143) + (-1.0 * reaction_R144) + ( 1.0 * reaction_R144) + (-1.0 * reaction_R145));
	
% Species:   id = c_Raf_Ras_GTP, name = c_Raf_Ras_GTP, affected by kineticLaw
	xdot(50) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R64) + ( 1.0 * reaction_R73) + (-1.0 * reaction_R81) + ( 1.0 * reaction_R81) + (-1.0 * reaction_R82) + ( 1.0 * reaction_R82) + (-1.0 * reaction_R83) + ( 1.0 * reaction_R83) + (-1.0 * reaction_R84) + ( 1.0 * reaction_R84));
	
% Species:   id = B_Raf_Rap1_GTP, name = B_Raf_Rap1_GTP, affected by kineticLaw
	xdot(51) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R72) + ( 1.0 * reaction_R75) + (-1.0 * reaction_R89) + ( 1.0 * reaction_R89) + (-1.0 * reaction_R90) + ( 1.0 * reaction_R90) + (-1.0 * reaction_R91) + ( 1.0 * reaction_R91) + (-1.0 * reaction_R92) + ( 1.0 * reaction_R92));
	
% Species:   id = Rap1_GDP, name = Rap1_GDP, affected by kineticLaw
	xdot(52) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R69) + (-1.0 * reaction_R70) + ( 1.0 * reaction_R71) + ( 1.0 * reaction_R72));
	
% Species:   id = Crk, name = Crk, affected by kineticLaw
	xdot(53) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R65));
	
% Species:   id = C3G, name = C3G, affected by kineticLaw
	xdot(54) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R65));
	
% Species:   id = pDok_RasGAP, name = pDok_RasGAP, affected by kineticLaw
	xdot(55) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R55) + (-1.0 * reaction_R62) + ( 1.0 * reaction_R62) + (-1.0 * reaction_R63) + ( 1.0 * reaction_R63) + (-1.0 * reaction_R64) + ( 1.0 * reaction_R64));
	
% Species:   id = RasGAP, name = RasGAP, affected by kineticLaw
	xdot(56) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R55));
	
% Species:   id = Grb2_pSOS, name = Grb2_pSOS, affected by kineticLaw
	xdot(57) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R47) + (-1.0 * reaction_R54) + ( 1.0 * reaction_R60) + ( 1.0 * reaction_R61));
	
% Species:   id = pShc, name = pShc, affected by kineticLaw
	xdot(58) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R13) + (-1.0 * reaction_R19) + (-1.0 * reaction_R22) + ( 1.0 * reaction_R34) + (-1.0 * reaction_R48) + (-1.0 * reaction_R51) + ( 1.0 * reaction_R60));
	
% Species:   id = pSOS, name = pSOS, affected by kineticLaw
	xdot(59) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*((-1.0 * reaction_R47) + (-1.0 * reaction_R53) + ( 1.0 * reaction_R59));
	
% Species:   id = pFRS2, name = pFRS2, affected by kineticLaw
	xdot(60) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_R16) + ( 1.0 * reaction_R17) + (-1.0 * reaction_R25) + (-1.0 * reaction_R27) + ( 1.0 * reaction_R37) + ( 1.0 * reaction_R38) + (-1.0 * reaction_R68));
	
% Species:   id = mwd4cc05d6_6e19_4e2e_b540_45954f2df4f0, name = trkaI_int, affected by kineticLaw
	xdot(61) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_mwffc6fab3_9f90_4da4_bf71_214b9b723899) + (-1.0 * reaction_mw9da48a51_bbd0_4395_9883_8441d8153b00) + (-1.0 * reaction_mwc467edb6_a255_45d6_8014_33bd0209b36f));
	
% Species:   id = mwe009ad7f_90fd_4186_8855_77780724ddb8, name = L_NGFR_I, affected by kineticLaw
	xdot(62) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_mw9da48a51_bbd0_4395_9883_8441d8153b00) + (-1.0 * reaction_mw4f0ee780_12f5_436d_a227_c5e7cd420259));
	
% Species:   id = mw5afa8250_0cf0_40a2_a97a_f7cf20a9cfbd, name = NGFR_I, affected by kineticLaw
	xdot(63) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_mwc467edb6_a255_45d6_8014_33bd0209b36f) + (-1.0 * reaction_mwe4f77287_e0fe_47f7_a74e_312151e578a4));
	
% Species:   id = mwb4295eb0_bd92_4221_b49d_bbbd48ca25bc, name = NGFR_I_deg, affected by kineticLaw
	xdot(64) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_mwe4f77287_e0fe_47f7_a74e_312151e578a4));
	
% Species:   id = mwa4903466_fc58_4bfe_b3ec_76a90f9d20e2, name = L_NGFR_I_deg, affected by kineticLaw
	xdot(65) = (1/(compartment_mw3bc142df_1951_4fa9_b0a7_011c95012bbf))*(( 1.0 * reaction_mw4f0ee780_12f5_436d_a227_c5e7cd420259));
	
% Species:   id = mwe979ec8f_a55c_470c_a554_9fa8013eab74, name = NGFR_interstitial_fluid, affected by kineticLaw
	xdot(66) = (1/(compartment_mwc2fe3668_8fb0_4cfb_b795_99057e61e290))*((-1.0 * reaction_mwc7ff2b7b_e2c9_4420_87bc_f285d98de30b) + ( 1.0 * reaction_mw8105f0dc_19ad_4f7a_80df_3f84de216c42));
	
% Species:   id = mw4478fbeb_51b1_4764_92ad_a86d314ae0eb, name = source
%WARNING speciesID: mw4478fbeb_51b1_4764_92ad_a86d314ae0eb, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(67) = 0.0;
	
% Species:   id = mw29fa4e00_a430_4f11_b62e_1bcbc0a767a0, name = NGF, affected by kineticLaw
	xdot(68) = (1/(compartment_mwc2fe3668_8fb0_4cfb_b795_99057e61e290))*(( 1.0 * reaction_mwe8ee00ff_3d59_44d5_8d7f_a2074823f29d) + (-1.0 * reaction_mw711542fd_b235_40f7_9782_f78eb654d773) + (-1.0 * reaction_mwc7ff2b7b_e2c9_4420_87bc_f285d98de30b) + (-1.0 * reaction_mw02775189_5c04_4c2f_a5f4_2f15723e1ece));
	
% Species:   id = mwa81400ac_76f5_4446_8a4d_6446ab4b11c9, name = NGFdeg, affected by kineticLaw
	xdot(69) = (1/(compartment_mwc2fe3668_8fb0_4cfb_b795_99057e61e290))*(( 1.0 * reaction_mw711542fd_b235_40f7_9782_f78eb654d773));
	
% Species:   id = mw6782adfa_29ee_41a8_acbb_4c86c6c81596, name = NGFR_L_interstitial_fluid, affected by kineticLaw
	xdot(70) = (1/(compartment_mwc2fe3668_8fb0_4cfb_b795_99057e61e290))*(( 1.0 * reaction_mwc7ff2b7b_e2c9_4420_87bc_f285d98de30b) + (-1.0 * reaction_mwf371eb20_7bda_4140_9a43_dfad70900057));
	
% Species:   id = mwe599c4c1_2d8e_446c_bf3f_4c97baced8a9, name = tanezumab, affected by kineticLaw
	xdot(71) = (1/(compartment_mwc2fe3668_8fb0_4cfb_b795_99057e61e290))*((-1.0 * reaction_mw02775189_5c04_4c2f_a5f4_2f15723e1ece) + (-1.0 * reaction_mwfb02ea2a_1f06_4f8f_80a0_721149f213ff));
	
% Species:   id = mw46e8693e_348e_4f1d_8c49_c13485fae7ba, name = NGF_tanezumab, affected by kineticLaw
	xdot(72) = (1/(compartment_mwc2fe3668_8fb0_4cfb_b795_99057e61e290))*(( 1.0 * reaction_mw02775189_5c04_4c2f_a5f4_2f15723e1ece));
	
% Species:   id = mwe0b9d340_24f5_4c7e_a80f_4faadae6c0fc, name = tz_deg, affected by kineticLaw
	xdot(73) = (1/(compartment_mwc2fe3668_8fb0_4cfb_b795_99057e61e290))*(( 1.0 * reaction_mwfb02ea2a_1f06_4f8f_80a0_721149f213ff));
	
% Species:   id = mw89ebbe2d_1ec2_457a_9367_6c5e86a1a924, name = trkaI, affected by kineticLaw
	xdot(74) = (1/(compartment_mwc2fe3668_8fb0_4cfb_b795_99057e61e290))*((-1.0 * reaction_mw12b652db_d0da_4723_b160_001fa36f9190) + (-1.0 * reaction_mwffc6fab3_9f90_4da4_bf71_214b9b723899));
	
% Species:   id = mw555a08dc_922d_4b35_8f69_5c6e8a4ad614, name = trkaI_deg, affected by kineticLaw
	xdot(75) = (1/(compartment_mwc2fe3668_8fb0_4cfb_b795_99057e61e290))*(( 1.0 * reaction_mw12b652db_d0da_4723_b160_001fa36f9190));
end

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


