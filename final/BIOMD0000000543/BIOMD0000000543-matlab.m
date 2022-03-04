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
% Model name = Qi2013 - IL-6 and IFN crosstalk model (non-competitive)
%
% is http://identifiers.org/biomodels.db/MODEL1408190003
% is http://identifiers.org/biomodels.db/BIOMD0000000543
% isDescribedBy http://identifiers.org/pubmed/23384097
%


function main()
%Initial conditions vector
	x0=zeros(107,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 12.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 1000.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 50.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 85.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 34.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 19000.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 67.0;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 67.0;
	x0(46) = 0.0;
	x0(47) = 41667.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 0.0;
	x0(52) = 0.0;
	x0(53) = 67.0;
	x0(54) = 0.0;
	x0(55) = 35000.0;
	x0(56) = 0.0;
	x0(57) = 0.0;
	x0(58) = 0.0;
	x0(59) = 0.0;
	x0(60) = 16667.0;
	x0(61) = 0.0;
	x0(62) = 0.0;
	x0(63) = 40493.0;
	x0(64) = 0.0;
	x0(65) = 0.0;
	x0(66) = 0.0;
	x0(67) = 0.0;
	x0(68) = 0.0;
	x0(69) = 0.0;
	x0(70) = 0.0;
	x0(71) = 1000.0;
	x0(72) = 0.0;
	x0(73) = 0.0;
	x0(74) = 0.0;
	x0(75) = 0.0;
	x0(76) = 0.0;
	x0(77) = 0.0;
	x0(78) = 0.0;
	x0(79) = 0.0;
	x0(80) = 0.0;
	x0(81) = 0.0;
	x0(82) = 0.0;
	x0(83) = 0.0;
	x0(84) = 0.0;
	x0(85) = 12.0;
	x0(86) = 100.0;
	x0(87) = 0.0;
	x0(88) = 0.0;
	x0(89) = 0.0;
	x0(90) = 0.0;
	x0(91) = 12.0;
	x0(92) = 0.0;
	x0(93) = 0.0;
	x0(94) = 0.0;
	x0(95) = 0.0;
	x0(96) = 0.0;
	x0(97) = 0.0;
	x0(98) = 0.0;
	x0(99) = 0.0;
	x0(100) = 0.0;
	x0(101) = 60.0;
	x0(102) = 0.0;
	x0(103) = 0.0;
	x0(104) = 0.0;
	x0(105) = 0.0;
	x0(106) = 0.0;
	x0(107) = 0.0;


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

% Compartment: id = default, name = Extracellular, constant
	compartment_default=1.0;
% Compartment: id = compartment_1, name = Cell, constant
	compartment_compartment_1=1.0;
% Compartment: id = c2, name = Nucluse1, constant
	compartment_c2=1.0;
% Compartment: id = c3, name = Nucluse2, constant
	compartment_c3=1.0;
% Parameter:   id =  parameter_1, name = k1f
	global_par_parameter_1=0.1;
% Parameter:   id =  parameter_2, name = k1r
	global_par_parameter_2=0.05;
% Parameter:   id =  parameter_3, name = k2f
	global_par_parameter_3=0.1;
% Parameter:   id =  parameter_4, name = k2r
	global_par_parameter_4=0.05;
% Parameter:   id =  parameter_5, name = k3f
	global_par_parameter_5=0.02;
% Parameter:   id =  parameter_6, name = k3r
	global_par_parameter_6=0.02;
% Parameter:   id =  parameter_11, name = k6f
	global_par_parameter_11=0.04;
% Parameter:   id =  parameter_12, name = k6r
	global_par_parameter_12=0.2;
% Parameter:   id =  parameter_13, name = k7
	global_par_parameter_13=0.005;
% Parameter:   id =  parameter_14, name = k8f
	global_par_parameter_14=0.008;
% Parameter:   id =  parameter_15, name = k8r
	global_par_parameter_15=0.8;
% Parameter:   id =  parameter_16, name = k9
	global_par_parameter_16=0.4;
% Parameter:   id =  parameter_17, name = k10f
	global_par_parameter_17=0.005;
% Parameter:   id =  parameter_18, name = k10r
	global_par_parameter_18=0.5;
% Parameter:   id =  parameter_27, name = k16f
	global_par_parameter_27=0.02;
% Parameter:   id =  parameter_28, name = k16r
	global_par_parameter_28=0.1;
% Parameter:   id =  parameter_29, name = k17f
	global_par_parameter_29=0.001;
% Parameter:   id =  parameter_30, name = k17r
	global_par_parameter_30=0.2;
% Parameter:   id =  parameter_31, name = k18
	global_par_parameter_31=0.003;
% Parameter:   id =  parameter_32, name = k19f
	global_par_parameter_32=0.001;
% Parameter:   id =  parameter_33, name = k19r
	global_par_parameter_33=0.2;
% Parameter:   id =  parameter_34, name = k20
	global_par_parameter_34=0.003;
% Parameter:   id =  parameter_35, name = k21f
	global_par_parameter_35=0.001;
% Parameter:   id =  parameter_36, name = k21r
	global_par_parameter_36=0.2;
% Parameter:   id =  parameter_37, name = k22
	global_par_parameter_37=0.003;
% Parameter:   id =  parameter_38, name = k23f
	global_par_parameter_38=2.0E-7;
% Parameter:   id =  parameter_39, name = k23r
	global_par_parameter_39=0.2;
% Parameter:   id =  parameter_40, name = k24
	global_par_parameter_40=0.005;
% Parameter:   id =  parameter_41, name = k25f
	global_par_parameter_41=0.1;
% Parameter:   id =  parameter_42, name = k25r
	global_par_parameter_42=0.02;
% Parameter:   id =  parameter_43, name = k26f
	global_par_parameter_43=0.001;
% Parameter:   id =  parameter_44, name = k26r
	global_par_parameter_44=0.2;
% Parameter:   id =  parameter_45, name = k27
	global_par_parameter_45=0.005;
% Parameter:   id =  parameter_46, name = k28f
	global_par_parameter_46=0.001;
% Parameter:   id =  parameter_47, name = k28r
	global_par_parameter_47=0.2;
% Parameter:   id =  parameter_48, name = k29
	global_par_parameter_48=0.005;
% Parameter:   id =  parameter_49, name = k30f
	global_par_parameter_49=0.2;
% Parameter:   id =  parameter_50, name = k30r
	global_par_parameter_50=2.0E-7;
% Parameter:   id =  parameter_51, name = k31
	global_par_parameter_51=0.05;
% Parameter:   id =  parameter_52, name = k32f
	global_par_parameter_52=0.01;
% Parameter:   id =  parameter_53, name = k32r
	global_par_parameter_53=400.0;
% Parameter:   id =  parameter_54, name = k33
	global_par_parameter_54=0.001;
% Parameter:   id =  parameter_55, name = k34
	global_par_parameter_55=0.01;
% Parameter:   id =  parameter_56, name = k35f
	global_par_parameter_56=5.0;
% Parameter:   id =  parameter_57, name = k35r
	global_par_parameter_57=0.1;
% Parameter:   id =  parameter_58, name = k36
	global_par_parameter_58=5.0E-4;
% Parameter:   id =  parameter_59, name = k37
	global_par_parameter_59=6.0E-4;
% Parameter:   id =  parameter_60, name = k38
	global_par_parameter_60=0.003;
% Parameter:   id =  parameter_61, name = k39f
	global_par_parameter_61=6.0;
% Parameter:   id =  parameter_62, name = k39r
	global_par_parameter_62=0.06;
% Parameter:   id =  parameter_63, name = k40f
	global_par_parameter_63=0.01;
% Parameter:   id =  parameter_64, name = k40r
	global_par_parameter_64=0.55;
% Parameter:   id =  parameter_65, name = k41f
	global_par_parameter_65=0.01;
% Parameter:   id =  parameter_66, name = k41r
	global_par_parameter_66=0.0214;
% Parameter:   id =  parameter_67, name = k42f
	global_par_parameter_67=0.015;
% Parameter:   id =  parameter_68, name = k42r
	global_par_parameter_68=1.3;
% Parameter:   id =  parameter_69, name = k43f
	global_par_parameter_69=0.5;
% Parameter:   id =  parameter_70, name = k43r
	global_par_parameter_70=1.0E-4;
% Parameter:   id =  parameter_71, name = k44f
	global_par_parameter_71=0.001;
% Parameter:   id =  parameter_72, name = k44r
	global_par_parameter_72=0.0053;
% Parameter:   id =  parameter_73, name = k45f
	global_par_parameter_73=1.0;
% Parameter:   id =  parameter_74, name = k45r
	global_par_parameter_74=7.0E-4;
% Parameter:   id =  parameter_75, name = k46f
	global_par_parameter_75=0.0079;
% Parameter:   id =  parameter_76, name = k46r
	global_par_parameter_76=0.4;
% Parameter:   id =  parameter_77, name = k47f
	global_par_parameter_77=0.023;
% Parameter:   id =  parameter_78, name = k47r
	global_par_parameter_78=2.2E-4;
% Parameter:   id =  parameter_79, name = k48f
	global_par_parameter_79=0.47;
% Parameter:   id =  parameter_80, name = k48r
	global_par_parameter_80=2.45E-4;
% Parameter:   id =  parameter_81, name = k49f
	global_par_parameter_81=0.3;
% Parameter:   id =  parameter_82, name = k49r
	global_par_parameter_82=0.021;
% Parameter:   id =  parameter_83, name = k50f
	global_par_parameter_83=0.0015;
% Parameter:   id =  parameter_84, name = k50r
	global_par_parameter_84=0.0045;
% Parameter:   id =  parameter_85, name = k51f
	global_par_parameter_85=1.7;
% Parameter:   id =  parameter_86, name = k51r
	global_par_parameter_86=340.0;
% Parameter:   id =  parameter_87, name = k52f
	global_par_parameter_87=0.3;
% Parameter:   id =  parameter_88, name = k52r
	global_par_parameter_88=9.0E-4;
% Parameter:   id =  parameter_89, name = k53f
	global_par_parameter_89=0.01;
% Parameter:   id =  parameter_90, name = k53r
	global_par_parameter_90=0.55;
% Parameter:   id =  parameter_91, name = k54f
	global_par_parameter_91=0.3;
% Parameter:   id =  parameter_92, name = k54r
	global_par_parameter_92=9.0E-4;
% Parameter:   id =  parameter_93, name = k55f
	global_par_parameter_93=0.03;
% Parameter:   id =  parameter_94, name = k55r
	global_par_parameter_94=0.064;
% Parameter:   id =  parameter_95, name = k56f
	global_par_parameter_95=0.03;
% Parameter:   id =  parameter_96, name = k56r
	global_par_parameter_96=0.0429;
% Parameter:   id =  parameter_97, name = k57f
	global_par_parameter_97=0.0717;
% Parameter:   id =  parameter_98, name = k57r
	global_par_parameter_98=0.2;
% Parameter:   id =  parameter_99, name = k58
	global_par_parameter_99=1.0;
% Parameter:   id =  parameter_100, name = k59f
	global_par_parameter_100=0.011;
% Parameter:   id =  parameter_101, name = k59r
	global_par_parameter_101=0.001833;
% Parameter:   id =  parameter_102, name = k60
	global_par_parameter_102=3.5;
% Parameter:   id =  parameter_103, name = k61f
	global_par_parameter_103=0.011;
% Parameter:   id =  parameter_104, name = k61r
	global_par_parameter_104=0.001833;
% Parameter:   id =  parameter_105, name = k62
	global_par_parameter_105=2.9;
% Parameter:   id =  parameter_106, name = k63f
	global_par_parameter_106=0.0143;
% Parameter:   id =  parameter_107, name = k63r
	global_par_parameter_107=0.8;
% Parameter:   id =  parameter_108, name = k64
	global_par_parameter_108=0.058;
% Parameter:   id =  parameter_109, name = k65f
	global_par_parameter_109=2.5E-4;
% Parameter:   id =  parameter_110, name = k65r
	global_par_parameter_110=0.5;
% Parameter:   id =  parameter_111, name = k66
	global_par_parameter_111=0.058;
% Parameter:   id =  parameter_112, name = k67f
	global_par_parameter_112=1.1E-4;
% Parameter:   id =  parameter_113, name = k67r
	global_par_parameter_113=0.033;
% Parameter:   id =  parameter_114, name = k68
	global_par_parameter_114=16.0;
% Parameter:   id =  parameter_115, name = k69f
	global_par_parameter_115=1.1E-4;
% Parameter:   id =  parameter_116, name = k69r
	global_par_parameter_116=0.033;
% Parameter:   id =  parameter_117, name = k70
	global_par_parameter_117=6.7;
% Parameter:   id =  parameter_118, name = k71f
	global_par_parameter_118=0.014;
% Parameter:   id =  parameter_119, name = k71r
	global_par_parameter_119=0.6;
% Parameter:   id =  parameter_120, name = k72
	global_par_parameter_120=0.27;
% Parameter:   id =  parameter_121, name = k73f
	global_par_parameter_121=0.005;
% Parameter:   id =  parameter_122, name = k73r
	global_par_parameter_122=0.5;
% Parameter:   id =  parameter_123, name = k74
	global_par_parameter_123=0.3;
% Parameter:   id =  parameter_124, name = k75f
	global_par_parameter_124=0.2335;
% Parameter:   id =  parameter_125, name = k75r
	global_par_parameter_125=20000.0;
% Parameter:   id =  parameter_126, name = k76
	global_par_parameter_126=0.0388;
% Parameter:   id =  parameter_127, name = k77f
	global_par_parameter_127=0.9854;
% Parameter:   id =  parameter_128, name = k77r
	global_par_parameter_128=9.0E-4;
% Parameter:   id =  parameter_129, name = kf1
	global_par_parameter_129=0.1;
% Parameter:   id =  parameter_130, name = kb1
	global_par_parameter_130=0.05;
% Parameter:   id =  parameter_131, name = kf2
	global_par_parameter_131=0.02;
% Parameter:   id =  parameter_132, name = kb2
	global_par_parameter_132=0.02;
% Parameter:   id =  parameter_133, name = kf3
	global_par_parameter_133=0.04;
% Parameter:   id =  parameter_134, name = kb3
	global_par_parameter_134=0.2;
% Parameter:   id =  parameter_135, name = kf4
	global_par_parameter_135=0.005;
% Parameter:   id =  parameter_136, name = kf5
	global_par_parameter_136=0.008;
% Parameter:   id =  parameter_137, name = kb5
	global_par_parameter_137=0.8;
% Parameter:   id =  parameter_138, name = kf6
	global_par_parameter_138=0.4;
% Parameter:   id =  parameter_139, name = kf7
	global_par_parameter_139=0.005;
% Parameter:   id =  parameter_140, name = kb7
	global_par_parameter_140=0.5;
% Parameter:   id =  parameter_141, name = kf8
	global_par_parameter_141=0.02;
% Parameter:   id =  parameter_142, name = kb8
	global_par_parameter_142=0.1;
% Parameter:   id =  parameter_143, name = kf9
	global_par_parameter_143=0.001;
% Parameter:   id =  parameter_144, name = kb9
	global_par_parameter_144=0.2;
% Parameter:   id =  parameter_145, name = kf10
	global_par_parameter_145=0.003;
% Parameter:   id =  parameter_146, name = kf11
	global_par_parameter_146=0.001;
% Parameter:   id =  parameter_147, name = kb11
	global_par_parameter_147=0.2;
% Parameter:   id =  parameter_148, name = kf12
	global_par_parameter_148=0.003;
% Parameter:   id =  parameter_149, name = kf13
	global_par_parameter_149=2.0E-7;
% Parameter:   id =  parameter_150, name = kb13
	global_par_parameter_150=0.2;
% Parameter:   id =  parameter_151, name = kf14
	global_par_parameter_151=0.005;
% Parameter:   id =  parameter_152, name = kf15
	global_par_parameter_152=0.001;
% Parameter:   id =  parameter_153, name = kb15
	global_par_parameter_153=0.2;
% Parameter:   id =  parameter_154, name = kf17
	global_par_parameter_154=0.05;
% Parameter:   id =  parameter_155, name = kf16
	global_par_parameter_155=0.005;
% Parameter:   id =  parameter_156, name = k18a
	global_par_parameter_156=0.01;
% Parameter:   id =  parameter_157, name = k18b
	global_par_parameter_157=400.0;
% Parameter:   id =  parameter_158, name = kf19
	global_par_parameter_158=0.001;
% Parameter:   id =  parameter_159, name = kf20
	global_par_parameter_159=0.01;
% Parameter:   id =  parameter_160, name = kf21
	global_par_parameter_160=0.02;
% Parameter:   id =  parameter_161, name = kb21
	global_par_parameter_161=0.1;
% Parameter:   id =  parameter_162, name = kf22
	global_par_parameter_162=5.0E-4;
% Parameter:   id =  parameter_163, name = kf23
	global_par_parameter_163=5.0E-4;
% Parameter:   id =  parameter_164, name = kf24
	global_par_parameter_164=0.001;
% Parameter:   id =  parameter_165, name = kb24
	global_par_parameter_165=0.2;
% Parameter:   id =  parameter_166, name = kf25
	global_par_parameter_166=0.003;
% Parameter:   id =  parameter_167, name = kf26
	global_par_parameter_167=0.005;
% Parameter:   id =  parameter_168, name = kb26
	global_par_parameter_168=0.5;
% Parameter:   id =  parameter_169, name = kf27
	global_par_parameter_169=0.001;
% Parameter:   id =  parameter_170, name = kb27
	global_par_parameter_170=0.2;
% Parameter:   id =  parameter_171, name = kf28
	global_par_parameter_171=0.005;
% Parameter:   id =  parameter_172, name = kf29
	global_par_parameter_172=2.0E-7;
% Parameter:   id =  parameter_173, name = kb29
	global_par_parameter_173=0.2;
% Parameter:   id =  parameter_174, name = kf30
	global_par_parameter_174=0.008;
% Parameter:   id =  parameter_175, name = kb30
	global_par_parameter_175=0.8;
% Parameter:   id =  parameter_176, name = kf31
	global_par_parameter_176=0.001;
% Parameter:   id =  parameter_177, name = kb31
	global_par_parameter_177=0.2;
% Parameter:   id =  parameter_178, name = kf32
	global_par_parameter_178=0.003;
% Parameter:   id =  parameter_179, name = kf33
	global_par_parameter_179=5.0E-4;
% Parameter:   id =  parameter_221, name = n_kf1
	global_par_parameter_221=0.002;
% Parameter:   id =  parameter_222, name = n_kr1
	global_par_parameter_222=2.0;
% Parameter:   id =  parameter_223, name = n_k2
	global_par_parameter_223=0.2;
% Parameter:   id =  parameter_224, name = n_kf3
	global_par_parameter_224=0.005;
% Parameter:   id =  parameter_225, name = n_kr3
	global_par_parameter_225=0.5;
% Parameter:   id =  parameter_226, name = n_kf4
	global_par_parameter_226=0.002;
% Parameter:   id =  parameter_227, name = n_kr4
	global_par_parameter_227=2.0;
% Parameter:   id =  parameter_228, name = n_k5
	global_par_parameter_228=0.2;
% Parameter:   id =  parameter_229, name = n_kf6
	global_par_parameter_229=0.005;
% Parameter:   id =  parameter_230, name = n_kr6
	global_par_parameter_230=0.5;
% Parameter:   id =  parameter_231, name = n_kf7
	global_par_parameter_231=0.001;
% Parameter:   id =  parameter_232, name = n_kr7
	global_par_parameter_232=400.0;
% Parameter:   id =  parameter_233, name = n_kf8
	global_par_parameter_233=0.02;
% Parameter:   id =  parameter_234, name = n_kr8
	global_par_parameter_234=0.1;
% Parameter:   id =  parameter_235, name = n_kf9
	global_par_parameter_235=0.02;
% Parameter:   id =  parameter_236, name = n_kr9
	global_par_parameter_236=0.1;
% Parameter:   id =  parameter_237, name = n_k10
	global_par_parameter_237=0.005;
% Parameter:   id =  parameter_238, name = n_kf11
	global_par_parameter_238=0.001;
% Parameter:   id =  parameter_239, name = n_kr11
	global_par_parameter_239=0.2;
% Parameter:   id =  parameter_240, name = n_kf12
	global_par_parameter_240=0.001;
% Parameter:   id =  parameter_241, name = n_kr12
	global_par_parameter_241=0.2;
% Parameter:   id =  parameter_242, name = n_k13
	global_par_parameter_242=0.0015;
% Parameter:   id =  parameter_243, name = n_k14
	global_par_parameter_243=0.0015;
% Parameter:   id =  parameter_244, name = n_k15
	global_par_parameter_244=0.0025;
% Parameter:   id =  parameter_245, name = n_k16
	global_par_parameter_245=0.0025;
% Parameter:   id =  parameter_7, name = n_kf17
	global_par_parameter_7=0.008;
% Parameter:   id =  parameter_8, name = n_kr17
	global_par_parameter_8=0.8;
% Parameter:   id =  parameter_9, name = n_kf18
	global_par_parameter_9=0.002;
% Parameter:   id =  parameter_10, name = n_kr18
	global_par_parameter_10=2.0;
% Parameter:   id =  parameter_19, name = n_k19
	global_par_parameter_19=0.4;
% Parameter:   id =  parameter_20, name = n_k20
	global_par_parameter_20=0.2;
% Parameter:   id =  parameter_21, name = n_kf21
	global_par_parameter_21=0.002;
% Parameter:   id =  parameter_22, name = n_kr21
	global_par_parameter_22=2.0;
% Parameter:   id =  parameter_23, name = n_kf22
	global_par_parameter_23=0.008;
% Parameter:   id =  parameter_24, name = n_kr22
	global_par_parameter_24=0.8;
% Parameter:   id =  parameter_25, name = n_k23
	global_par_parameter_25=0.2;
% Parameter:   id =  parameter_26, name = n_k24
	global_par_parameter_26=0.4;
% assignmentRule: variable = s136
	x(88)=x(73)+2*x(81)+x(8)+x(76)+2*x(98)+x(7)+x(94)+2*x(74)+x(5)+x(72)+x(77)+2*x(93)+x(6)+x(95)+x(99)+x(90);
% assignmentRule: variable = s137
	x(87)=x(4)+x(18)+x(8)+2*x(26)+x(25)+x(7)+2*x(102)+x(104)+x(5)+x(6)+2*x(19)+x(17)+x(22)+2*x(100)+x(103)+x(106);

% Reaction: id = re160, name = reaciton-2
	reaction_re160=compartment_compartment_1*(global_par_parameter_3*x(91)*const_species_species_4-global_par_parameter_4*x(11));

% Reaction: id = reaction_1, name = reaction-1
	reaction_reaction_1=global_par_parameter_1*const_species_species_2*const_species_species_1-global_par_parameter_2*x(9);

% Reaction: id = reaction_8, name = reaction-10
	reaction_reaction_8=compartment_compartment_1*(global_par_parameter_17*x(14)*x(17)-global_par_parameter_18*x(18));

% Reaction: id = reaction_9, name = reaction-16
	reaction_reaction_9=compartment_compartment_1*(global_par_parameter_27*x(17)^2-global_par_parameter_28*x(19));

% Reaction: id = re138, name = reaction-17
	reaction_re138=compartment_compartment_1*(global_par_parameter_29*x(14)*x(86)-global_par_parameter_30*x(21));

% Reaction: id = re137, name = reaction-18
	reaction_re137=compartment_compartment_1*global_par_parameter_31*x(21);

% Reaction: id = reaction_12, name = reaction-19
	reaction_reaction_12=compartment_compartment_1*(global_par_parameter_32*x(17)*x(24)-global_par_parameter_33*x(25));

% Reaction: id = reaction_14, name = reaction-20
	reaction_reaction_14=compartment_compartment_1*global_par_parameter_34*x(25);

% Reaction: id = reaction_13, name = reaction-21
	reaction_reaction_13=compartment_compartment_1*(global_par_parameter_35*x(19)*x(24)-global_par_parameter_36*x(26));

% Reaction: id = reaction_15, name = reaction-22
	reaction_reaction_15=compartment_compartment_1*global_par_parameter_37*x(26);

% Reaction: id = reaction_16, name = reaction-23
	reaction_reaction_16=compartment_compartment_1*(global_par_parameter_38*x(16)*x(17)-global_par_parameter_39*x(22));

% Reaction: id = reaction_17, name = reaction-24
	reaction_reaction_17=global_par_parameter_40*x(19);

% Reaction: id = reaction_65, name = reaction-25
	reaction_reaction_65=compartment_c3*(global_par_parameter_41*x(100)-global_par_parameter_42*x(103)^2);

% Reaction: id = reaction_19, name = reaction-26
	reaction_reaction_19=compartment_c3*(global_par_parameter_43*x(101)*x(103)-global_par_parameter_44*x(104));

% Reaction: id = reaction_20, name = reaction-27
	reaction_reaction_20=compartment_c3*global_par_parameter_45*x(104);

% Reaction: id = reaction_18, name = reaction-28
	reaction_reaction_18=compartment_c3*(global_par_parameter_46*x(101)*x(100)-global_par_parameter_47*x(102));

% Reaction: id = reaction_21, name = reaction-29
	reaction_reaction_21=compartment_c3*global_par_parameter_48*x(102);

% Reaction: id = reaction_3, name = reaction-3
	reaction_reaction_3=compartment_compartment_1*(global_par_parameter_5*x(9)*x(11)-global_par_parameter_6*x(12));

% Reaction: id = reaction_66, name = reaction-30
	reaction_reaction_66=compartment_c3*(global_par_parameter_49*x(106)-global_par_parameter_50*x(103)*x(105));

% Reaction: id = reaction_22, name = reaction-31
	reaction_reaction_22=global_par_parameter_51*x(105);

% Reaction: id = reaction_23, name = reaction-32
	reaction_reaction_23=compartment_c3*function_1(global_par_parameter_52, global_par_parameter_53, x(100));

% Reaction: id = reaction_24, name = reaction-33
	reaction_reaction_24=global_par_parameter_54*x(107);

% Reaction: id = reaction_25, name = reaction-34
	reaction_reaction_25=compartment_compartment_1*function_2(global_par_parameter_55, x(27));

% Reaction: id = reaction_26, name = reaction-35
	reaction_reaction_26=compartment_compartment_1*(global_par_parameter_56*x(14)*x(23)-global_par_parameter_57*x(20));

% Reaction: id = reaction_27, name = reaction-36
	reaction_reaction_27=compartment_compartment_1*global_par_parameter_58*x(27);

% Reaction: id = reaction_28, name = reaction-37
	reaction_reaction_28=compartment_compartment_1*global_par_parameter_59*x(23);

% Reaction: id = reaction_73, name = reaction-38
	reaction_reaction_73=compartment_compartment_1*global_par_parameter_60*x(20);

% Reaction: id = reaction_39, name = reaction-39
	reaction_reaction_39=compartment_compartment_1*(global_par_parameter_61*x(21)-global_par_parameter_62*x(29));

% Reaction: id = reaction_29, name = reaction-40
	reaction_reaction_29=compartment_compartment_1*(global_par_parameter_63*x(29)*x(28)-global_par_parameter_64*x(30));

% Reaction: id = reaction_30, name = reaction-41
	reaction_reaction_30=compartment_compartment_1*(global_par_parameter_65*x(31)*x(30)-global_par_parameter_66*x(33));

% Reaction: id = reaction_31, name = reaction-42
	reaction_reaction_31=compartment_compartment_1*(global_par_parameter_67*x(34)*x(33)-global_par_parameter_68*x(35));

% Reaction: id = reaction_32, name = reaction-43
	reaction_reaction_32=compartment_compartment_1*(global_par_parameter_69*x(35)-global_par_parameter_70*x(36)*x(33));

% Reaction: id = reaction_33, name = reaction-44
	reaction_reaction_33=compartment_compartment_1*(global_par_parameter_71*x(36)*x(37)-global_par_parameter_72*x(38));

% Reaction: id = reaction_34, name = reaction-45
	reaction_reaction_34=compartment_compartment_1*(global_par_parameter_73*x(38)-global_par_parameter_74*x(39)*x(40));

% Reaction: id = reaction_35, name = reaction-46
	reaction_reaction_35=compartment_compartment_1*(global_par_parameter_75*x(33)*x(39)-global_par_parameter_76*x(41));

% Reaction: id = reaction_36, name = reaction-47
	reaction_reaction_36=compartment_compartment_1*(global_par_parameter_77*x(41)-global_par_parameter_78*x(33)*x(34));

% Reaction: id = reaction_37, name = reaction-48
	reaction_reaction_37=compartment_compartment_1*(global_par_parameter_79*x(33)-global_par_parameter_80*x(42)*x(14));

% Reaction: id = reaction_38, name = reaction-49
	reaction_reaction_38=compartment_compartment_1*(global_par_parameter_81*x(42)-global_par_parameter_82*x(43)*x(44));

% Reaction: id = reaction_40, name = reaction-50
	reaction_reaction_40=compartment_compartment_1*(global_par_parameter_83*x(43)-global_par_parameter_84*x(28)*x(31));

% Reaction: id = re136, name = reaction-51
	reaction_re136=compartment_compartment_1*function_3(x(44), global_par_parameter_86, global_par_parameter_85);

% Reaction: id = reaction_42, name = reaction-52
	reaction_reaction_42=compartment_compartment_1*(global_par_parameter_87*x(29)-global_par_parameter_88*x(14)*x(44));

% Reaction: id = reaction_43, name = reaction-53
	reaction_reaction_43=compartment_compartment_1*(global_par_parameter_89*x(28)*x(44)-global_par_parameter_90*x(32));

% Reaction: id = reaction_44, name = reaction-54
	reaction_reaction_44=compartment_compartment_1*(global_par_parameter_91*x(30)-global_par_parameter_92*x(14)*x(32));

% Reaction: id = reaction_45, name = reaction-55
	reaction_reaction_45=compartment_compartment_1*(global_par_parameter_93*x(31)*x(32)-global_par_parameter_94*x(42));

% Reaction: id = reaction_46, name = reaction-56
	reaction_reaction_46=compartment_compartment_1*(global_par_parameter_95*x(29)*x(43)-global_par_parameter_96*x(33));

% Reaction: id = reaction_47, name = reaction-57
	reaction_reaction_47=compartment_compartment_1*(global_par_parameter_97*x(45)*x(40)-global_par_parameter_98*x(46));

% Reaction: id = reaction_48, name = reaction-58
	reaction_reaction_48=compartment_compartment_1*global_par_parameter_99*x(46);

% Reaction: id = reaction_49, name = reaction-59
	reaction_reaction_49=compartment_compartment_1*(global_par_parameter_100*x(40)*x(47)-global_par_parameter_101*x(48));

% Reaction: id = reaction_5, name = reaction-6
	reaction_reaction_5=compartment_compartment_1*(global_par_parameter_11*x(12)^2-global_par_parameter_12*x(13));

% Reaction: id = reaction_50, name = reaction-60
	reaction_reaction_50=compartment_compartment_1*global_par_parameter_102*x(48);

% Reaction: id = reaction_51, name = reaction-61
	reaction_reaction_51=compartment_compartment_1*(global_par_parameter_103*x(40)*x(49)-global_par_parameter_104*x(50));

% Reaction: id = reaction_52, name = reaction-62
	reaction_reaction_52=compartment_compartment_1*global_par_parameter_105*x(50);

% Reaction: id = reaction_53, name = reaction-63
	reaction_reaction_53=compartment_compartment_1*(global_par_parameter_106*x(51)*x(53)-global_par_parameter_107*x(52));

% Reaction: id = reaction_54, name = reaction-64
	reaction_reaction_54=compartment_compartment_1*global_par_parameter_108*x(52);

% Reaction: id = reaction_55, name = reaction-65
	reaction_reaction_55=compartment_compartment_1*(global_par_parameter_109*x(49)*x(53)-global_par_parameter_110*x(54));

% Reaction: id = reaction_56, name = reaction-66
	reaction_reaction_56=compartment_compartment_1*global_par_parameter_111*x(54);

% Reaction: id = reaction_57, name = reaction-67
	reaction_reaction_57=compartment_compartment_1*(global_par_parameter_112*x(51)*x(55)-global_par_parameter_113*x(56));

% Reaction: id = reaction_58, name = reaction-68
	reaction_reaction_58=compartment_compartment_1*global_par_parameter_114*x(56);

% Reaction: id = reaction_59, name = reaction-69
	reaction_reaction_59=compartment_compartment_1*(global_par_parameter_115*x(51)*x(57)-global_par_parameter_116*x(58));

% Reaction: id = reaction_6, name = reaction-7
	reaction_reaction_6=compartment_compartment_1*global_par_parameter_13*x(13);

% Reaction: id = reaction_60, name = reaction-70
	reaction_reaction_60=compartment_compartment_1*global_par_parameter_117*x(58);

% Reaction: id = reaction_64, name = reaction-71
	reaction_reaction_64=compartment_compartment_1*(global_par_parameter_118*x(59)*x(60)-global_par_parameter_119*x(61));

% Reaction: id = reaction_61, name = reaction-72
	reaction_reaction_61=compartment_compartment_1*global_par_parameter_120*x(61);

% Reaction: id = reaction_62, name = reaction-73
	reaction_reaction_62=compartment_compartment_1*(global_par_parameter_121*x(57)*x(60)-global_par_parameter_122*x(62));

% Reaction: id = reaction_63, name = reaction-74
	reaction_reaction_63=compartment_compartment_1*global_par_parameter_123*x(62);

% Reaction: id = reaction_74, name = reaction-75
	reaction_reaction_74=compartment_compartment_1*function_activation(global_par_parameter_124, x(59), x(63), global_par_parameter_125);

% Reaction: id = reaction_75, name = reaction-76
	reaction_reaction_75=compartment_compartment_1*global_par_parameter_126*x(64);

% Reaction: id = reaction_76, name = reaction-77
	reaction_reaction_76=compartment_compartment_1*(global_par_parameter_127*x(64)^2-global_par_parameter_128*x(65));

% Reaction: id = reaction_4, name = reaction-8
	reaction_reaction_4=compartment_compartment_1*(global_par_parameter_14*x(14)*x(16)-global_par_parameter_15*x(15));

% Reaction: id = reaction_7, name = reaction-9
	reaction_reaction_7=compartment_compartment_1*global_par_parameter_16*x(15);

% Reaction: id = re135, name = reaction-v1
	reaction_re135=compartment_compartment_1*(global_par_parameter_129*x(10)*x(85)-global_par_parameter_130*x(66));

% Reaction: id = reaction_87, name = reaction-v10
	reaction_reaction_87=compartment_compartment_1*global_par_parameter_145*x(75);

% Reaction: id = re140, name = reaction-v11
	reaction_re140=compartment_compartment_1*(global_par_parameter_146*x(72)*x(24)-global_par_parameter_147*x(76));

% Reaction: id = re141, name = reaction-v12
	reaction_re141=compartment_compartment_1*global_par_parameter_148*x(76);

% Reaction: id = reaction_90, name = reaction-v13
	reaction_reaction_90=compartment_compartment_1*(global_par_parameter_149*x(71)*x(72)-global_par_parameter_150*x(77));

% Reaction: id = reaction_91, name = reaction-v14
	reaction_reaction_91=global_par_parameter_151*x(74);

% Reaction: id = re144, name = reaction-v15
	reaction_re144=function_4(compartment_c2, global_par_parameter_152, global_par_parameter_153, x(101), x(94), x(95));

% Reaction: id = re145, name = reaction-v16
	reaction_re145=function_5(compartment_c2, global_par_parameter_155, x(94));

% Reaction: id = reaction_94, name = reaction-v17
	reaction_reaction_94=global_par_parameter_154*x(96);

% Reaction: id = reaction_95, name = reaction-v18
	reaction_reaction_95=compartment_c2*function_6(global_par_parameter_156, global_par_parameter_157, x(93));

% Reaction: id = reaction_96, name = reaction-v19
	reaction_reaction_96=global_par_parameter_158*x(97);

% Reaction: id = reaction_80, name = reaction-v2
	reaction_reaction_80=global_par_parameter_131*const_species_species_79*x(66)-global_par_parameter_132*x(67);

% Reaction: id = reaction_97, name = reaction-v20
	reaction_reaction_97=compartment_compartment_1*function_7(global_par_parameter_159, x(78));

% Reaction: id = reaction_98, name = reaction-v21
	reaction_reaction_98=compartment_compartment_1*(global_par_parameter_160*x(79)*x(69)-global_par_parameter_161*x(80));

% Reaction: id = reaction_99, name = reaction-v22
	reaction_reaction_99=compartment_compartment_1*global_par_parameter_162*x(78);

% Reaction: id = reaction_100, name = reaction-v23
	reaction_reaction_100=compartment_compartment_1*global_par_parameter_163*x(79);

% Reaction: id = re142, name = reaction-v24
	reaction_re142=compartment_compartment_1*(global_par_parameter_164*x(74)*x(24)-global_par_parameter_165*x(81));

% Reaction: id = re143, name = reaction-v25
	reaction_re143=compartment_compartment_1*global_par_parameter_166*x(81);

% Reaction: id = reaction_103, name = reaction-v26
	reaction_reaction_103=compartment_c2*(global_par_parameter_167*x(95)^2-global_par_parameter_168*x(93));

% Reaction: id = re147, name = reaction-v27
	reaction_re147=function_8(compartment_c2, global_par_parameter_169, global_par_parameter_170, x(98), x(101), x(93));

% Reaction: id = re148, name = reaction-v28
	reaction_re148=function_9(compartment_c2, global_par_parameter_171, x(98));

% Reaction: id = reaction_106, name = reaction-v29
	reaction_reaction_106=compartment_c2*(global_par_parameter_172*x(96)*x(95)-global_par_parameter_173*x(99));

% Reaction: id = reaction_79, name = reaction-v3
	reaction_reaction_79=compartment_compartment_1*(global_par_parameter_133*x(67)^2-global_par_parameter_134*x(68));

% Reaction: id = reaction_107, name = reaction-v30
	reaction_reaction_107=compartment_compartment_1*(global_par_parameter_174*x(71)*x(80)-global_par_parameter_175*x(82));

% Reaction: id = reaction_110, name = reaction-v31
	reaction_reaction_110=compartment_compartment_1*(global_par_parameter_176*x(86)*x(82)-global_par_parameter_177*x(83));

% Reaction: id = reaction_108, name = reaction-v32
	reaction_reaction_108=compartment_compartment_1*global_par_parameter_178*x(83);

% Reaction: id = reaction_109, name = reaction-v33
	reaction_reaction_109=compartment_compartment_1*global_par_parameter_179*x(83);

% Reaction: id = reaction_81, name = reaction-v4
	reaction_reaction_81=compartment_compartment_1*global_par_parameter_135*x(68);

% Reaction: id = reaction_82, name = reaction-v5
	reaction_reaction_82=compartment_compartment_1*(global_par_parameter_136*x(69)*x(71)-global_par_parameter_137*x(70));

% Reaction: id = reaction_83, name = reaction-v6
	reaction_reaction_83=compartment_compartment_1*global_par_parameter_138*x(70);

% Reaction: id = reaction_84, name = reaction-v7
	reaction_reaction_84=compartment_compartment_1*(global_par_parameter_139*x(69)*x(72)-global_par_parameter_140*x(73));

% Reaction: id = reaction_85, name = reaction-v8
	reaction_reaction_85=compartment_compartment_1*(global_par_parameter_141*x(72)^2-global_par_parameter_142*x(74));

% Reaction: id = reaction_86, name = reaction-v9
	reaction_reaction_86=compartment_compartment_1*(global_par_parameter_143*x(69)*x(86)-global_par_parameter_144*x(75));

% Reaction: id = re112, name = reaction_n1
	reaction_re112=compartment_compartment_1*(global_par_parameter_221*x(69)*x(16)-global_par_parameter_222*x(3));

% Reaction: id = re117, name = reaction_n10
	reaction_re117=compartment_compartment_1*global_par_parameter_237*x(5);

% Reaction: id = re153, name = reaction_n11
	reaction_re153=compartment_compartment_1*(global_par_parameter_238*x(24)*x(5)-global_par_parameter_239*x(8));

% Reaction: id = re126, name = reaction_n12
	reaction_re126=global_par_parameter_240*x(6)*x(101)-global_par_parameter_241*x(7);

% Reaction: id = re113, name = reaction_n2
	reaction_re113=compartment_compartment_1*global_par_parameter_223*x(3);

% Reaction: id = re114, name = reaction_n3
	reaction_re114=compartment_compartment_1*(global_par_parameter_224*x(17)*x(69)-global_par_parameter_225*x(4));

% Reaction: id = re157, name = reaction_n4
	reaction_re157=compartment_compartment_1*(global_par_parameter_226*x(14)*x(71)-global_par_parameter_227*x(89));

% Reaction: id = re158, name = reaction_n5
	reaction_re158=compartment_compartment_1*global_par_parameter_228*x(89);

% Reaction: id = re159, name = reaction_n6
	reaction_re159=compartment_compartment_1*(global_par_parameter_229*x(72)*x(14)-global_par_parameter_230*x(90));

% Reaction: id = re116, name = reaction_n7
	reaction_re116=compartment_c3*function_4_reaction_n7_1(global_par_parameter_231, global_par_parameter_232, x(93));

% Reaction: id = re115, name = reaction_n8
	reaction_re115=compartment_compartment_1*(global_par_parameter_233*x(17)*x(72)-global_par_parameter_234*x(5));

% Reaction: id = re121, name = reaction_n9
	reaction_re121=global_par_parameter_235*x(103)*x(95)-global_par_parameter_236*x(6);

% Reaction: id = re161, name = reaction_n13
	reaction_re161=compartment_compartment_1*global_par_parameter_242*x(8);

% Reaction: id = re162, name = reaction_n14
	reaction_re162=compartment_compartment_1*global_par_parameter_243*x(8);

% Reaction: id = re163, name = reaction_n15
	reaction_re163=global_par_parameter_244*x(7);

% Reaction: id = re164, name = reaction_n16
	reaction_re164=global_par_parameter_245*x(7);

% Reaction: id = reaction_2, name = reaction_n17
	reaction_reaction_2=compartment_compartment_1*(global_par_parameter_7*x(3)*x(71)-global_par_parameter_8*x(92));

% Reaction: id = reaction_10, name = reaction_n18
	reaction_reaction_10=compartment_compartment_1*(global_par_parameter_9*x(70)*x(16)-global_par_parameter_10*x(92));

% Reaction: id = reaction_11, name = reaction_n19
	reaction_reaction_11=compartment_compartment_1*global_par_parameter_19*x(92);

% Reaction: id = reaction_41, name = reaction_n20
	reaction_reaction_41=compartment_compartment_1*global_par_parameter_20*x(92);

% Reaction: id = reaction_67, name = reaction_n21
	reaction_reaction_67=global_par_parameter_21*x(15)*x(71)-global_par_parameter_22*x(1);

% Reaction: id = reaction_68, name = reaction_n22
	reaction_reaction_68=global_par_parameter_23*x(2)*x(16)-global_par_parameter_24*x(1);

% Reaction: id = reaction_69, name = reaction_n23
	reaction_reaction_69=global_par_parameter_25*x(1);

% Reaction: id = reaction_70, name = reaction_n24
	reaction_reaction_70=global_par_parameter_26*x(1);

% Species:   id = species_1, name = IL6, constant	const_species_species_1=0.0;

% Species:   id = species_79, name = IFN, constant	const_species_species_79=0.1;

% Species:   id = species_2, name = gp80, constant	const_species_species_2=8.0;

% Species:   id = species_4, name = gp130, constant	const_species_species_4=0.8;

	xdot=zeros(107,1);
	
% Species:   id = species_17, name = (IL6-gp80-gp130-JAK)2*-STAT1C-STAT3C, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*(( 1.0 * reaction_reaction_67) + ( 1.0 * reaction_reaction_68) + (-1.0 * reaction_reaction_69) + (-1.0 * reaction_reaction_70));
	
% Species:   id = species_67, name = (IL6-gp80-gp130-JAK)2*-STAT1C, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*((-1.0 * reaction_reaction_68) + ( 1.0 * reaction_reaction_70));
	
% Species:   id = s118, name = (IFN-R-JAK)2*-STAT3C, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re112) + (-1.0 * reaction_re113) + (-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_11));
	
% Species:   id = s119, name = (IFN-R-JAK)2*-STAT3C*, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re114));
	
% Species:   id = s120, name = STAT1C*-STAT3C*, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*((-1.0 * reaction_re117) + (-1.0 * reaction_re153) + ( 1.0 * reaction_re115));
	
% Species:   id = s122, name = STAT1N*-STAT3N*, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re117) + (-1.0 * reaction_re126) + ( 1.0 * reaction_re121));
	
% Species:   id = s126, name = PP2-STAT1N*-STAT3N*, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re126) + (-1.0 * reaction_re163) + (-1.0 * reaction_re164));
	
% Species:   id = s135, name = PP1-STAT1C*-STAT3C*, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re153) + (-1.0 * reaction_re161) + (-1.0 * reaction_re162));
	
% Species:   id = species_3, name = IL6-gp80, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_3));
	
% Species:   id = species_5, name = JAK(IFN), affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_1))*((-1.0 * reaction_re135));
	
% Species:   id = species_6, name = gp130-JAK, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re160) + (-1.0 * reaction_reaction_3));
	
% Species:   id = species_7, name = IL6-gp80-gp130-JAK, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_3) + (-2.0 * reaction_reaction_5));
	
% Species:   id = species_8, name = (IL6-gp80-gp130-JAK)2, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re137) + ( 1.0 * reaction_reaction_73) + ( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = species_9, name = (IL6-gp80-gp130-JAK)2*, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_8) + (-1.0 * reaction_re138) + (-1.0 * reaction_reaction_26) + ( 1.0 * reaction_reaction_37) + ( 1.0 * reaction_reaction_42) + ( 1.0 * reaction_reaction_44) + ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_7) + (-1.0 * reaction_re157) + ( 1.0 * reaction_re158) + (-1.0 * reaction_re159));
	
% Species:   id = species_10, name = (IL6-gp80-gp130-JAK)2*-STAT3C, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_67) + ( 1.0 * reaction_reaction_69));
	
% Species:   id = species_11, name = STAT3C, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_re112) + ( 1.0 * reaction_re162) + (-1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_68));
	
% Species:   id = species_12, name = STAT3C*, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_8) + (-2.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_7) + ( 1.0 * reaction_re113) + (-1.0 * reaction_re114) + (-1.0 * reaction_re115) + ( 1.0 * reaction_re161) + ( 1.0 * reaction_reaction_41) + ( 1.0 * reaction_reaction_70));
	
% Species:   id = species_13, name = (IL6-gp80-gp130-JAK)2*-STAT3C*, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_8));
	
% Species:   id = species_14, name = (STAT3C*)2, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_17));
	
% Species:   id = species_15, name = (IL6-gp80-gp130-JAK)2*-SOCS3, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_73));
	
% Species:   id = species_16, name = (IL6-gp80-gp130-JAK)2*-SHP2, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re138) + (-1.0 * reaction_re137) + (-1.0 * reaction_reaction_39));
	
% Species:   id = species_18, name = STAT3C-STAT3C*, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_16));
	
% Species:   id = species_19, name = SOCS3, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_28) + ( 1.0 * reaction_reaction_73));
	
% Species:   id = species_20, name = PP1, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_re140) + ( 1.0 * reaction_re141) + (-1.0 * reaction_re142) + ( 1.0 * reaction_re143) + (-1.0 * reaction_re153) + ( 1.0 * reaction_re161) + ( 1.0 * reaction_re162));
	
% Species:   id = species_21, name = PP1-STAT3C*, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_14));
	
% Species:   id = species_22, name = PP1-(STAT3C*)2, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_15));
	
% Species:   id = species_31, name = mRNA-SOCS3C, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_27));
	
% Species:   id = species_32, name = Grb2, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_29) + ( 1.0 * reaction_reaction_40) + (-1.0 * reaction_reaction_43));
	
% Species:   id = species_33, name = (IL6-gp80-gp130-JAK)2*-SHP2*, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_39) + (-1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_46));
	
% Species:   id = species_34, name = (IL6-gp80-gp130-JAK)2*-SHP2*-Grb2, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_44));
	
% Species:   id = species_35, name = SOS, affected by kineticLaw
	xdot(31) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_30) + ( 1.0 * reaction_reaction_40) + (-1.0 * reaction_reaction_45));
	
% Species:   id = species_36, name = SHP2*-Grb2, affected by kineticLaw
	xdot(32) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_43) + ( 1.0 * reaction_reaction_44) + (-1.0 * reaction_reaction_45));
	
% Species:   id = species_37, name = (IL6-gp80-gp130-JAK)2*-SHP2*-Grb2-SOS, affected by kineticLaw
	xdot(33) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_31) + ( 1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_35) + ( 1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_37) + ( 1.0 * reaction_reaction_46));
	
% Species:   id = species_38, name = Ras-GDP, affected by kineticLaw
	xdot(34) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_31) + ( 1.0 * reaction_reaction_36));
	
% Species:   id = species_39, name = (IL6-gp80-gp130-JAK)2*-SHP2*-Grb2-SOS-Ras-GDP, affected by kineticLaw
	xdot(35) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_32));
	
% Species:   id = species_40, name = Ras-GTP, affected by kineticLaw
	xdot(36) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_33));
	
% Species:   id = species_41, name = Raf, affected by kineticLaw
	xdot(37) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_33) + ( 1.0 * reaction_reaction_48));
	
% Species:   id = species_42, name = Raf-Ras-GTP, affected by kineticLaw
	xdot(38) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_33) + (-1.0 * reaction_reaction_34));
	
% Species:   id = species_43, name = Ras-GTP*, affected by kineticLaw
	xdot(39) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_35));
	
% Species:   id = species_44, name = Raf*, affected by kineticLaw
	xdot(40) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_47) + (-1.0 * reaction_reaction_49) + ( 1.0 * reaction_reaction_50) + (-1.0 * reaction_reaction_51) + ( 1.0 * reaction_reaction_52));
	
% Species:   id = species_45, name = (IL6-gp80-gp130-JAK)2*-SHP2*-Grb2-SOS-Ras-GTP, affected by kineticLaw
	xdot(41) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_35) + (-1.0 * reaction_reaction_36));
	
% Species:   id = species_46, name = SHP2*-Grb2-SOS, affected by kineticLaw
	xdot(42) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_37) + (-1.0 * reaction_reaction_38) + ( 1.0 * reaction_reaction_45));
	
% Species:   id = species_47, name = Grb2-SOS, affected by kineticLaw
	xdot(43) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_38) + (-1.0 * reaction_reaction_40) + (-1.0 * reaction_reaction_46));
	
% Species:   id = species_48, name = SHP2*, affected by kineticLaw
	xdot(44) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_38) + (-1.0 * reaction_re136) + ( 1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_43));
	
% Species:   id = species_49, name = Phosp1, affected by kineticLaw
	xdot(45) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_47) + ( 1.0 * reaction_reaction_48));
	
% Species:   id = species_50, name = Raf*-Phosp1, affected by kineticLaw
	xdot(46) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_47) + (-1.0 * reaction_reaction_48));
	
% Species:   id = species_51, name = MEK, affected by kineticLaw
	xdot(47) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_49) + ( 1.0 * reaction_reaction_56));
	
% Species:   id = species_52, name = MEK-Raf*, affected by kineticLaw
	xdot(48) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_49) + (-1.0 * reaction_reaction_50));
	
% Species:   id = species_53, name = MEK-P, affected by kineticLaw
	xdot(49) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_50) + (-1.0 * reaction_reaction_51) + ( 1.0 * reaction_reaction_54) + (-1.0 * reaction_reaction_55));
	
% Species:   id = species_54, name = MEK-P-Raf*, affected by kineticLaw
	xdot(50) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_51) + (-1.0 * reaction_reaction_52));
	
% Species:   id = species_55, name = MEK-PP, affected by kineticLaw
	xdot(51) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_52) + (-1.0 * reaction_reaction_53) + (-1.0 * reaction_reaction_57) + ( 1.0 * reaction_reaction_58) + (-1.0 * reaction_reaction_59) + ( 1.0 * reaction_reaction_60));
	
% Species:   id = species_56, name = MEK-PP-Phosp2, affected by kineticLaw
	xdot(52) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_53) + (-1.0 * reaction_reaction_54));
	
% Species:   id = species_57, name = Phosp2, affected by kineticLaw
	xdot(53) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_53) + ( 1.0 * reaction_reaction_54) + (-1.0 * reaction_reaction_55) + ( 1.0 * reaction_reaction_56));
	
% Species:   id = species_58, name = MEK-P-Phosp2, affected by kineticLaw
	xdot(54) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_55) + (-1.0 * reaction_reaction_56));
	
% Species:   id = species_59, name = ERK, affected by kineticLaw
	xdot(55) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_57) + ( 1.0 * reaction_reaction_63));
	
% Species:   id = species_60, name = ERK-MEK-PP, affected by kineticLaw
	xdot(56) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_57) + (-1.0 * reaction_reaction_58));
	
% Species:   id = species_61, name = ERK-P, affected by kineticLaw
	xdot(57) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_58) + (-1.0 * reaction_reaction_59) + ( 1.0 * reaction_reaction_61) + (-1.0 * reaction_reaction_62));
	
% Species:   id = species_62, name = ERK-P-MEK-PP, affected by kineticLaw
	xdot(58) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_59) + (-1.0 * reaction_reaction_60));
	
% Species:   id = species_63, name = ERK-PP, affected by kineticLaw
	xdot(59) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_60) + (-1.0 * reaction_reaction_64));
	
% Species:   id = species_64, name = Phosp3, affected by kineticLaw
	xdot(60) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_64) + ( 1.0 * reaction_reaction_61) + (-1.0 * reaction_reaction_62) + ( 1.0 * reaction_reaction_63));
	
% Species:   id = species_65, name = ERK-PP-Phosp3, affected by kineticLaw
	xdot(61) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_64) + (-1.0 * reaction_reaction_61));
	
% Species:   id = species_66, name = ERK-P-Phosp3, affected by kineticLaw
	xdot(62) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_62) + (-1.0 * reaction_reaction_63));
	
% Species:   id = species_74, name = CEBPi, affected by kineticLaw
	xdot(63) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_74) + ( 1.0 * reaction_reaction_75));
	
% Species:   id = species_75, name = CEBP, affected by kineticLaw
	xdot(64) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_74) + (-1.0 * reaction_reaction_75) + (-2.0 * reaction_reaction_76));
	
% Species:   id = species_76, name = CEBPn, affected by kineticLaw
	xdot(65) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_76));
	
% Species:   id = species_78, name = R-JAK, affected by kineticLaw
	xdot(66) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re135) + (-1.0 * reaction_reaction_80));
	
% Species:   id = species_80, name = IFN-R-JAK, affected by kineticLaw
	xdot(67) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_80) + (-2.0 * reaction_reaction_79));
	
% Species:   id = species_81, name = (IFN-R-JAK)2, affected by kineticLaw
	xdot(68) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_87) + ( 1.0 * reaction_reaction_79) + ( 1.0 * reaction_reaction_108) + (-1.0 * reaction_reaction_81));
	
% Species:   id = species_82, name = (IFN-R-JAK)2*, affected by kineticLaw
	xdot(69) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_98) + ( 1.0 * reaction_reaction_81) + (-1.0 * reaction_reaction_82) + ( 1.0 * reaction_reaction_83) + (-1.0 * reaction_reaction_84) + (-1.0 * reaction_reaction_86) + (-1.0 * reaction_re112) + ( 1.0 * reaction_re113) + (-1.0 * reaction_re114));
	
% Species:   id = species_83, name = (IFN-R-JAK)2*-STAT1C, affected by kineticLaw
	xdot(70) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_82) + (-1.0 * reaction_reaction_83) + (-1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_41));
	
% Species:   id = species_84, name = STAT1C, affected by kineticLaw
	xdot(71) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re141) + (-1.0 * reaction_reaction_90) + ( 1.0 * reaction_reaction_94) + (-1.0 * reaction_reaction_107) + ( 1.0 * reaction_reaction_108) + (-1.0 * reaction_reaction_82) + (-1.0 * reaction_re157) + ( 1.0 * reaction_re161) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_67));
	
% Species:   id = species_85, name = STAT1C*, affected by kineticLaw
	xdot(72) = (1/(compartment_compartment_1))*((-1.0 * reaction_re140) + (-1.0 * reaction_reaction_90) + ( 1.0 * reaction_reaction_83) + (-1.0 * reaction_reaction_84) + (-2.0 * reaction_reaction_85) + ( 1.0 * reaction_re158) + (-1.0 * reaction_re159) + (-1.0 * reaction_re115) + ( 1.0 * reaction_re162) + ( 1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_69));
	
% Species:   id = species_86, name = (IFN-R-JAK)2*-STAT1C*, affected by kineticLaw
	xdot(73) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_84));
	
% Species:   id = species_87, name = (STAT1C*)2, affected by kineticLaw
	xdot(74) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_91) + (-1.0 * reaction_re142) + ( 1.0 * reaction_reaction_85));
	
% Species:   id = species_88, name = (IFN-R-JAK)2*-SHP2, affected by kineticLaw
	xdot(75) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_87) + ( 1.0 * reaction_reaction_86));
	
% Species:   id = species_90, name = PP1-STAT1C*, affected by kineticLaw
	xdot(76) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re140) + (-1.0 * reaction_re141));
	
% Species:   id = species_91, name = STAT1C-STAT1C*, affected by kineticLaw
	xdot(77) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_90) + ( 1.0 * reaction_re143));
	
% Species:   id = species_98, name = mRNA-SOCS1C, affected by kineticLaw
	xdot(78) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_96) + (-1.0 * reaction_reaction_99));
	
% Species:   id = species_99, name = SOCS1, affected by kineticLaw
	xdot(79) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_97) + (-1.0 * reaction_reaction_98) + (-1.0 * reaction_reaction_100) + ( 1.0 * reaction_reaction_108) + ( 1.0 * reaction_reaction_109));
	
% Species:   id = species_100, name = (IFN-R-JAK)2*-SOCS1, affected by kineticLaw
	xdot(80) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_98) + (-1.0 * reaction_reaction_107));
	
% Species:   id = species_101, name = PP1-(STAT1C*)2, affected by kineticLaw
	xdot(81) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re142) + (-1.0 * reaction_re143));
	
% Species:   id = species_104, name = (IFN-R-JAK)2*-STAT1C-SOCS1, affected by kineticLaw
	xdot(82) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_107) + (-1.0 * reaction_reaction_110));
	
% Species:   id = species_105, name = (IFN-R-JAK)2*-STAT1C-SHP2-SOCS1, affected by kineticLaw
	xdot(83) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_110) + (-1.0 * reaction_reaction_108) + (-1.0 * reaction_reaction_109));
	
% Species:   id = species_106, name = (IFN-R-JAK)2*-STAT1C-SHP2, affected by kineticLaw
	xdot(84) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_109));
	
% Species:   id = species_107, name = R, affected by kineticLaw
	xdot(85) = (1/(compartment_compartment_1))*((-1.0 * reaction_re135));
	
% Species:   id = species_108, name = SHP2, affected by kineticLaw
	xdot(86) = (1/(compartment_compartment_1))*((-1.0 * reaction_re138) + ( 1.0 * reaction_re137) + ( 1.0 * reaction_re136) + ( 1.0 * reaction_reaction_87) + (-1.0 * reaction_reaction_110) + ( 1.0 * reaction_reaction_108) + (-1.0 * reaction_reaction_86));
	
% Species:   id = s137, name = STAT3*, involved in a rule 	xdot(87) = x(87);
	
% Species:   id = s136, name = STAT1*, involved in a rule 	xdot(88) = x(88);
	
% Species:   id = s138, name = (IL6-gp80-gp130-JAK)2*-STAT1, affected by kineticLaw
	xdot(89) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re157) + (-1.0 * reaction_re158));
	
% Species:   id = s139, name = (IL6-gp80-gp130-JAK)2*-STAT1*, affected by kineticLaw
	xdot(90) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re159));
	
% Species:   id = s140, name = JAK(IL-6), affected by kineticLaw
	xdot(91) = (1/(compartment_compartment_1))*((-1.0 * reaction_re160));
	
% Species:   id = species_68, name = (IFN-R-JAK)2*-STAT1C-STAT3C, affected by kineticLaw
	xdot(92) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_41));
	
% Species:   id = species_92, name = (STAT1N*)2, affected by kineticLaw
	xdot(93) = (1/(compartment_c2))*(( 1.0 * reaction_reaction_91) + ( 1.0 * reaction_reaction_103) + (-1.0 * reaction_re147));
	
% Species:   id = species_94, name = PP2-STAT1N*, affected by kineticLaw
	xdot(94) = (1/(compartment_c2))*(( 1.0 * reaction_re144) + (-1.0 * reaction_re145));
	
% Species:   id = species_95, name = STAT1N*, affected by kineticLaw
	xdot(95) = (1/(compartment_c2))*((-1.0 * reaction_re144) + (-2.0 * reaction_reaction_103) + (-1.0 * reaction_reaction_106) + (-1.0 * reaction_re121) + ( 1.0 * reaction_re164));
	
% Species:   id = species_96, name = STAT1N, affected by kineticLaw
	xdot(96) = (1/(compartment_c2))*(( 1.0 * reaction_re145) + (-1.0 * reaction_reaction_94) + (-1.0 * reaction_reaction_106) + ( 1.0 * reaction_re163));
	
% Species:   id = species_97, name = mRNA-SOCS1N, affected by kineticLaw
	xdot(97) = (1/(compartment_c2))*(( 1.0 * reaction_reaction_95) + (-1.0 * reaction_reaction_96));
	
% Species:   id = species_102, name = PP2-(STAT1N*)2, affected by kineticLaw
	xdot(98) = (1/(compartment_c2))*(( 1.0 * reaction_re147) + (-1.0 * reaction_re148));
	
% Species:   id = species_103, name = STAT1N-STAT1N*, affected by kineticLaw
	xdot(99) = (1/(compartment_c2))*(( 1.0 * reaction_re148) + ( 1.0 * reaction_reaction_106));
	
% Species:   id = species_23, name = (STAT3N*)2, affected by kineticLaw
	xdot(100) = (1/(compartment_c3))*(( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_65) + (-1.0 * reaction_reaction_18));
	
% Species:   id = species_24, name = PP2, affected by kineticLaw
	xdot(101) = (1/(compartment_c3))*((-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_18) + ( 1.0 * reaction_reaction_21) + (-1.0 * reaction_re144) + ( 1.0 * reaction_re145) + (-1.0 * reaction_re147) + ( 1.0 * reaction_re148) + (-1.0 * reaction_re126) + ( 1.0 * reaction_re163) + ( 1.0 * reaction_re164));
	
% Species:   id = species_25, name = PP2-(STAT3N*)2, affected by kineticLaw
	xdot(102) = (1/(compartment_c3))*(( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_21));
	
% Species:   id = species_26, name = STAT3N*, affected by kineticLaw
	xdot(103) = (1/(compartment_c3))*(( 2.0 * reaction_reaction_65) + (-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_66) + (-1.0 * reaction_re121) + ( 1.0 * reaction_re163));
	
% Species:   id = species_27, name = PP2-STAT3N*, affected by kineticLaw
	xdot(104) = (1/(compartment_c3))*(( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_20));
	
% Species:   id = species_28, name = STAT3N, affected by kineticLaw
	xdot(105) = (1/(compartment_c3))*(( 1.0 * reaction_reaction_20) + ( 1.0 * reaction_reaction_66) + (-1.0 * reaction_reaction_22) + ( 1.0 * reaction_re164));
	
% Species:   id = species_29, name = STAT3N-STAT3N*, affected by kineticLaw
	xdot(106) = (1/(compartment_c3))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_66));
	
% Species:   id = species_30, name = mRNA-SOCS3N, affected by kineticLaw
	xdot(107) = (1/(compartment_c3))*(( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_24) + ( 1.0 * reaction_re116));
end

function z=function_3(substrate,Km,V), z=(V*substrate/(Km+substrate));end

function z=function_2(parameter_55,species_31), z=(parameter_55*species_31);end

function z=function_1(parameter_52,parameter_53,species_23), z=(parameter_52*species_23/(parameter_53+species_23));end

function z=function_4(c2,parameter_152,parameter_153,species_24,species_94,species_95), z=(c2*(parameter_152*species_24*species_95-parameter_153*species_94));end

function z=function_5(c2,parameter_155,species_94), z=(c2*parameter_155*species_94);end

function z=function_6(parameter_156,parameter_157,species_92), z=(parameter_156*species_92/(parameter_157+species_92));end

function z=function_7(parameter_159,species_98), z=(parameter_159*species_98);end

function z=function_8(c2,parameter_169,parameter_170,species_102,species_24,species_92), z=(c2*(parameter_169*species_24*species_92-parameter_170*species_102));end

function z=function_9(c2,parameter_171,species_102), z=(c2*parameter_171*species_102);end

function z=function_4_reaction_n7_1(parameter_231,parameter_232,species_92), z=(parameter_231*species_92/(parameter_232+species_92));end

function z=function_activation(v,a,b,k), z=(v*a*b/(b+k));end

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


