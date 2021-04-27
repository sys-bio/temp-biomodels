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
% Model name = Nakakuki2010_CellFateDecision_Mechanistic
%
% is http://identifiers.org/biomodels.db/MODEL1004300000
% is http://identifiers.org/biomodels.db/BIOMD0000000250
% isDescribedBy http://identifiers.org/pubmed/20493519
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000175
% isDerivedFrom http://identifiers.org/pubmed/12242336
%


function main()
%Initial conditions vector
	x0=zeros(47,1);
	x0(1) = 182.3524;
	x0(2) = 0.0;
	x0(3) = 25.38702;
	x0(4) = 0.0;
	x0(5) = 13.09262;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 570.4179;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 82.66574;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 637.3212;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 353.0;
	x0(23) = 0.0;
	x0(24) = 247.4035;
	x0(25) = 0.0;
	x0(26) = 1000.0;
	x0(27) = 0.0;
	x0(28) = 1624.9;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 1510.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
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
	x0(46) = 0.0;
	x0(47) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=940.0;
% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=220.0;
% Parameter:   id =  V2, name = V2
	global_par_V2=0.22;
% Parameter:   id =  V3, name = V3
	global_par_V3=0.72;
% Parameter:   id =  K3, name = K3
	global_par_K3=160.0;
% Parameter:   id =  V4, name = V4
	global_par_V4=0.648;
% Parameter:   id =  K4, name = K4
	global_par_K4=60.0;
% Parameter:   id =  V5, name = V5
	global_par_V5=19.49872346;
% Parameter:   id =  K5, name = K5
	global_par_K5=29.94073716;
% Parameter:   id =  V6, name = V6
	global_par_V6=19.4987234631759;
% Parameter:   id =  K6, name = K6
	global_par_K6=29.9407371620698;
% Parameter:   id =  KimERK, name = KimERK
	global_par_KimERK=0.012;
% Parameter:   id =  KexERK, name = KexERK
	global_par_KexERK=0.018;
% Parameter:   id =  KimERKP, name = KimERKP
	global_par_KimERKP=0.012;
% Parameter:   id =  KexERKP, name = KexERKP
	global_par_KexERKP=0.018;
% Parameter:   id =  KimERKPP, name = KimERKPP
	global_par_KimERKPP=0.011;
% Parameter:   id =  KexERKPP, name = KexERKPP
	global_par_KexERKPP=0.013;
% Parameter:   id =  V10, name = V10
	global_par_V10=29.24109258;
% Parameter:   id =  K10, name = K10
	global_par_K10=169.0473748;
% Parameter:   id =  n10, name = n10
	global_par_n10=3.970849295;
% Parameter:   id =  p11, name = p11
	global_par_p11=1.26129E-4;
% Parameter:   id =  p12, name = p12
	global_par_p12=0.007875765;
% Parameter:   id =  p13, name = p13
	global_par_p13=0.001245747;
% Parameter:   id =  V14, name = V14
	global_par_V14=5.636949216;
% Parameter:   id =  K14, name = K14
	global_par_K14=34180.48;
% Parameter:   id =  V15, name = V15
	global_par_V15=2.992346912;
% Parameter:   id =  K15, name = K15
	global_par_K15=0.001172165;
% Parameter:   id =  p16, name = p16
	global_par_p16=2.57E-4;
% Parameter:   id =  p17, name = p17
	global_par_p17=4.81E-5;
% Parameter:   id =  KimDUSP, name = KimDUSP
	global_par_KimDUSP=0.024269764;
% Parameter:   id =  KexDUSP, name = KexDUSP
	global_par_KexDUSP=0.070467899;
% Parameter:   id =  KimDUSPP, name = KimDUSPP
	global_par_KimDUSPP=0.024269764;
% Parameter:   id =  KexDUSPP, name = KexDUSPP
	global_par_KexDUSPP=0.070467899;
% Parameter:   id =  V20, name = V20
	global_par_V20=0.157678678;
% Parameter:   id =  K20, name = K20
	global_par_K20=735598.6967;
% Parameter:   id =  V21, name = V21
	global_par_V21=0.005648117;
% Parameter:   id =  K21, name = K21
	global_par_K21=387.8377182;
% Parameter:   id =  p22, name = p22
	global_par_p22=2.57E-4;
% Parameter:   id =  p23, name = p23
	global_par_p23=4.81E-5;
% Parameter:   id =  V24, name = V24
	global_par_V24=0.550346114;
% Parameter:   id =  K24, name = K24
	global_par_K24=29516.06587;
% Parameter:   id =  V1, name = V1
	global_par_V1=0.342848369838443;
% Parameter:   id =  K1, name = K1
	global_par_K1=307.041525298866;
% Parameter:   id =  V25, name = V25
	global_par_V25=10.09063736;
% Parameter:   id =  K25, name = K25
	global_par_K25=0.913939859;
% Parameter:   id =  KimRSKP, name = KimRSKP
	global_par_KimRSKP=0.025925065;
% Parameter:   id =  KexRSKP, name = KexRSKP
	global_par_KexRSKP=0.129803956;
% Parameter:   id =  V27, name = V27
	global_par_V27=19.23118154;
% Parameter:   id =  K27, name = K27
	global_par_K27=441.5834425;
% Parameter:   id =  V28, name = V28
	global_par_V28=6.574759504;
% Parameter:   id =  K28, name = K28
	global_par_K28=14.99180922;
% Parameter:   id =  V29, name = V29
	global_par_V29=0.518529841;
% Parameter:   id =  K29, name = K29
	global_par_K29=21312.69109;
% Parameter:   id =  V30, name = V30
	global_par_V30=13.79479021;
% Parameter:   id =  K30, name = K30
	global_par_K30=15.04396629;
% Parameter:   id =  V31, name = V31
	global_par_V31=0.655214248;
% Parameter:   id =  K31, name = K31
	global_par_K31=185.9760682;
% Parameter:   id =  n31, name = n31
	global_par_n31=1.988003164;
% Parameter:   id =  p32, name = p32
	global_par_p32=0.003284434;
% Parameter:   id =  p33, name = p33
	global_par_p33=6.01234209304622E-4;
% Parameter:   id =  p34, name = p34
	global_par_p34=7.64816282169636E-5;
% Parameter:   id =  V35, name = V35
	global_par_V35=8.907637012;
% Parameter:   id =  K35, name = K35
	global_par_K35=8562.744184;
% Parameter:   id =  V36, name = V36
	global_par_V36=5.97315E-4;
% Parameter:   id =  K36, name = K36
	global_par_K36=528.552427;
% Parameter:   id =  V37, name = V37
	global_par_V37=1.745848179;
% Parameter:   id =  K37, name = K37
	global_par_K37=0.070379236;
% Parameter:   id =  p38, name = p38
	global_par_p38=2.57E-4;
% Parameter:   id =  p39, name = p39
	global_par_p39=4.81E-5;
% Parameter:   id =  KimFOS, name = KimFOS
	global_par_KimFOS=0.54528521;
% Parameter:   id =  KexFOS, name = KexFOS
	global_par_KexFOS=0.133249762;
% Parameter:   id =  KimFOSP, name = KimFOSP
	global_par_KimFOSP=0.54528521;
% Parameter:   id =  KexFOSP, name = KexFOSP
	global_par_KexFOSP=0.133249762;
% Parameter:   id =  V42, name = V42
	global_par_V42=0.909968714;
% Parameter:   id =  K42, name = K42
	global_par_K42=3992.061328;
% Parameter:   id =  V43, name = V43
	global_par_V43=0.076717457;
% Parameter:   id =  K43, name = K43
	global_par_K43=1157.116021;
% Parameter:   id =  V44, name = V44
	global_par_V44=0.078344305;
% Parameter:   id =  K44, name = K44
	global_par_K44=0.051168202;
% Parameter:   id =  p45, name = p45
	global_par_p45=2.57E-4;
% Parameter:   id =  p46, name = p46
	global_par_p46=4.81E-5;
% Parameter:   id =  p47, name = p47
	global_par_p47=0.001670815;
% Parameter:   id =  m47, name = m47
	global_par_m47=15.80783969;
% Parameter:   id =  p48, name = p48
	global_par_p48=0.686020478;
% Parameter:   id =  p49, name = p49
	global_par_p49=0.314470502;
% Parameter:   id =  m49, name = m49
	global_par_m49=2.335459127;
% Parameter:   id =  p50, name = p50
	global_par_p50=26.59483436;
% Parameter:   id =  p51, name = p51
	global_par_p51=0.01646825;
% Parameter:   id =  m51, name = m51
	global_par_m51=9.544308421;
% Parameter:   id =  Fct, name = Fct
	global_par_Fct=0.7485;
% Parameter:   id =  p52, name = p52
	global_par_p52=0.001670815;
% Parameter:   id =  m52, name = m52
	global_par_m52=15.80783969;
% Parameter:   id =  p53, name = p53
	global_par_p53=0.686020478;
% Parameter:   id =  p54, name = p54
	global_par_p54=0.314470502;
% Parameter:   id =  m54, name = m54
	global_par_m54=2.335459127;
% Parameter:   id =  p55, name = p55
	global_par_p55=26.59483436;
% Parameter:   id =  p56, name = p56
	global_par_p56=0.01646825;
% Parameter:   id =  m56, name = m56
	global_par_m56=9.544308421;
% Parameter:   id =  V57, name = V57
	global_par_V57=1.026834758;
% Parameter:   id =  K57, name = K57
	global_par_K57=0.637490056;
% Parameter:   id =  n57, name = n57
	global_par_n57=3.584464176;
% Parameter:   id =  p58, name = p58
	global_par_p58=2.70488E-4;
% Parameter:   id =  p59, name = p59
	global_par_p59=0.001443889;
% Parameter:   id =  p60, name = p60
	global_par_p60=0.002448164;
% Parameter:   id =  p61, name = p61
	global_par_p61=3.49860901414122E-5;
% Parameter:   id =  KimF, name = KimF
	global_par_KimF=0.019898797;
% Parameter:   id =  KexF, name = KexF
	global_par_KexF=0.396950616;
% Parameter:   id =  p63, name = p63
	global_par_p63=4.13466150826031E-5;
% Parameter:   id =  KF31, name = KF31
	global_par_KF31=0.013844393;
% Parameter:   id =  nF31, name = nF31
	global_par_nF31=2.800340453;
% Parameter:   id =  K2, name = K2
	global_par_K2=350.0;
% Parameter:   id =  Vn, name = Vn
	global_par_Vn=220.0;
% Parameter:   id =  Vc, name = Vc
	global_par_Vc=940.0;
% Parameter:   id =  V101, name = V101
	global_par_V101=0.01807448;
% Parameter:   id =  K101, name = K101
	global_par_K101=3475.168;
% Parameter:   id =  V102, name = V102
	global_par_V102=0.09858154;
% Parameter:   id =  K102, name = K102
	global_par_K102=237.2001;
% Parameter:   id =  V103, name = V103
	global_par_V103=0.3573399;
% Parameter:   id =  K103, name = K103
	global_par_K103=1334.132;
% Parameter:   id =  V104, name = V104
	global_par_V104=4.635749;
% Parameter:   id =  K104, name = K104
	global_par_K104=4046.71;
% Parameter:   id =  V105, name = V105
	global_par_V105=0.05393704;
% Parameter:   id =  K105, name = K105
	global_par_K105=1.027895;
% Parameter:   id =  V106, name = V106
	global_par_V106=0.109304;
% Parameter:   id =  K106, name = K106
	global_par_K106=606.871;
% Parameter:   id =  V107, name = V107
	global_par_V107=5.291093;
% Parameter:   id =  K107, name = K107
	global_par_K107=424.6884;
% Parameter:   id =  V108, name = V108
	global_par_V108=0.03436149;
% Parameter:   id =  K108, name = K108
	global_par_K108=11.5048;
% Parameter:   id =  V109, name = V109
	global_par_V109=0.1374307;
% Parameter:   id =  K109, name = K109
	global_par_K109=7424.816;
% Parameter:   id =  V110, name = V110
	global_par_V110=0.08258693;
% Parameter:   id =  K110, name = K110
	global_par_K110=425.5268;
% Parameter:   id =  V111, name = V111
	global_par_V111=0.02487469;
% Parameter:   id =  K111, name = K111
	global_par_K111=858.3423;
% Parameter:   id =  V112, name = V112
	global_par_V112=0.8850982;
% Parameter:   id =  K112, name = K112
	global_par_K112=4665.217;
% Parameter:   id =  V113, name = V113
	global_par_V113=0.05377297;
% Parameter:   id =  K113, name = K113
	global_par_K113=20.50809;
% Parameter:   id =  V114, name = V114
	global_par_V114=0.03957055;
% Parameter:   id =  K114, name = K114
	global_par_K114=7.774197;
% Parameter:   id =  V115, name = V115
	global_par_V115=13.74244;
% Parameter:   id =  K115, name = K115
	global_par_K115=2122.045;

% Reaction: id = reaction_32, name = v001
	reaction_reaction_32=compartment_cytoplasm*function_4_v001(global_par_Fct, global_par_K1, global_par_K2, global_par_V1, x(8), x(9), x(18));

% Reaction: id = reaction_6, name = v002
	reaction_reaction_6=compartment_cytoplasm*function_4_v002(global_par_Fct, global_par_K1, global_par_K2, global_par_V2, x(8), x(9), x(18));

% Reaction: id = re85, name = v003
	reaction_re85=compartment_cytoplasm*function_4_v003(global_par_K3, global_par_K4, global_par_V3, x(9), x(10));

% Reaction: id = re86, name = v004
	reaction_re86=compartment_cytoplasm*function_4_v004(global_par_K3, global_par_K4, global_par_V4, x(9), x(10));

% Reaction: id = re87, name = v005
	reaction_re87=compartment_nucleus*function_4_v005(global_par_K5, global_par_K6, global_par_V5, x(29), x(30));

% Reaction: id = re88, name = v006
	reaction_re88=compartment_nucleus*function_4_v006(global_par_K5, global_par_K6, global_par_V6, x(29), x(30));

% Reaction: id = re106, name = v007
	reaction_re106=function_4_v007(global_par_KexERK, global_par_KimERK, global_par_Vc, global_par_Vn, x(8), x(28));

% Reaction: id = re107, name = v008
	reaction_re107=function_4_v008(global_par_KexERKP, global_par_KimERKP, global_par_Vc, global_par_Vn, x(9), x(29));

% Reaction: id = re108, name = v009
	reaction_re108=function_4_v009(global_par_KexERKPP, global_par_KimERKPP, global_par_Vc, global_par_Vn, x(10), x(30));

% Reaction: id = re109, name = v010
	reaction_re109=compartment_nucleus*function_4_v010(global_par_K10, global_par_V10, global_par_n10, x(30));

% Reaction: id = re110, name = v011
	reaction_re110=function_4_v011(global_par_Vn, global_par_p11, x(44));

% Reaction: id = reaction_17, name = v012
	reaction_reaction_17=compartment_cytoplasm*global_par_p12*x(7);

% Reaction: id = re89, name = v013
	reaction_re89=compartment_cytoplasm*function_4_v013(global_par_p13, x(7));

% Reaction: id = reaction_33, name = v014
	reaction_reaction_33=compartment_cytoplasm*function_4_v014(global_par_K14, global_par_V14, x(10), x(20));

% Reaction: id = reaction_34, name = v015
	reaction_reaction_34=compartment_cytoplasm*function_4_v015(global_par_K15, global_par_V15, x(21));

% Reaction: id = reaction_35, name = v016
	reaction_reaction_35=compartment_cytoplasm*global_par_p16*x(20);

% Reaction: id = reaction_36, name = v017
	reaction_reaction_36=compartment_cytoplasm*global_par_p17*x(21);

% Reaction: id = re111, name = v018
	reaction_re111=function_4_v018(global_par_KexDUSP, global_par_KimDUSP, global_par_Vc, global_par_Vn, x(36), x(20));

% Reaction: id = re112, name = v019
	reaction_re112=function_4_v019(global_par_KexDUSPP, global_par_KimDUSPP, global_par_Vc, global_par_Vn, x(21), x(37));

% Reaction: id = reaction_12, name = v020
	reaction_reaction_12=compartment_nucleus*function_4_v020(global_par_K20, global_par_V20, x(30), x(36));

% Reaction: id = reaction_13, name = v021
	reaction_reaction_13=compartment_nucleus*function_4_v021(global_par_K21, global_par_V21, x(37));

% Reaction: id = reaction_14, name = v022
	reaction_reaction_14=compartment_nucleus*global_par_p22*x(36);

% Reaction: id = reaction_15, name = v023
	reaction_reaction_15=compartment_nucleus*global_par_p23*x(37);

% Reaction: id = reaction_41, name = v024
	reaction_reaction_41=compartment_cytoplasm*function_4_v024(global_par_K24, global_par_V24, x(10), x(22));

% Reaction: id = reaction_42, name = v025
	reaction_reaction_42=compartment_cytoplasm*function_4_v025(global_par_K25, global_par_V25, x(23));

% Reaction: id = re113, name = v026
	reaction_re113=function_4_v026(global_par_KexRSKP, global_par_KimRSKP, global_par_Vc, global_par_Vn, x(47), x(23));

% Reaction: id = reaction_45, name = v027
	reaction_reaction_45=compartment_nucleus*function_4_v027(global_par_K27, global_par_V27, x(26), x(47));

% Reaction: id = reaction_46, name = v028
	reaction_reaction_46=compartment_nucleus*function_4_v028(global_par_K28, global_par_V28, x(27));

% Reaction: id = reaction_57, name = v029
	reaction_reaction_57=compartment_nucleus*function_4_v029(global_par_K29, global_par_V29, x(30), x(31));

% Reaction: id = reaction_58, name = v030
	reaction_reaction_58=compartment_nucleus*function_4_v030(global_par_K30, global_par_V30, x(32));

% Reaction: id = reaction_47, name = v031
	reaction_reaction_47=compartment_nucleus*function_4_v031(global_par_K31, global_par_KF31, global_par_V31, global_par_n31, global_par_nF31, x(35), x(27), x(32));

% Reaction: id = re115, name = v032
	reaction_re115=function_4_v032(global_par_Vn, global_par_p32, x(45));

% Reaction: id = reaction_50, name = v033
	reaction_reaction_50=compartment_cytoplasm*global_par_p33*x(14);

% Reaction: id = re90, name = v034
	reaction_re90=compartment_cytoplasm*function_4_v034(global_par_p34, x(14));

% Reaction: id = reaction_59, name = v035
	reaction_reaction_59=compartment_cytoplasm*function_4_v035(global_par_K35, global_par_V35, x(12), x(10));

% Reaction: id = reaction_67, name = v036
	reaction_reaction_67=compartment_cytoplasm*function_4_v036(global_par_K36, global_par_V36, x(12), x(23));

% Reaction: id = reaction_60, name = v037
	reaction_reaction_60=compartment_cytoplasm*function_4_v037(global_par_K37, global_par_V37, x(13));

% Reaction: id = reaction_61, name = v038
	reaction_reaction_61=compartment_cytoplasm*global_par_p38*x(12);

% Reaction: id = reaction_62, name = v039
	reaction_reaction_62=compartment_cytoplasm*global_par_p39*x(13);

% Reaction: id = re116, name = v040
	reaction_re116=function_4_v040(global_par_KexFOS, global_par_KimFOS, global_par_Vc, global_par_Vn, x(12), x(33));

% Reaction: id = re117, name = v041
	reaction_re117=function_4_v041(global_par_KexFOSP, global_par_KimFOSP, global_par_Vc, global_par_Vn, x(13), x(34));

% Reaction: id = reaction_52, name = v042
	reaction_reaction_52=compartment_nucleus*function_4_v042(global_par_K42, global_par_V42, x(30), x(33));

% Reaction: id = reaction_53, name = v043
	reaction_reaction_53=compartment_nucleus*function_4_v043(global_par_K43, global_par_V43, x(33), x(47));

% Reaction: id = reaction_54, name = v044
	reaction_reaction_54=compartment_nucleus*function_4_v044(global_par_K44, global_par_V44, x(34));

% Reaction: id = reaction_55, name = v045
	reaction_reaction_55=compartment_nucleus*global_par_p45*x(33);

% Reaction: id = reaction_56, name = v046
	reaction_reaction_56=compartment_nucleus*global_par_p46*x(34);

% Reaction: id = reaction_25, name = v047
	reaction_reaction_25=compartment_nucleus*(global_par_p52*x(37)*x(30)-global_par_m52*x(40));

% Reaction: id = reaction_26, name = v048
	reaction_reaction_26=compartment_nucleus*global_par_p53*x(40);

% Reaction: id = reaction_27, name = v049
	reaction_reaction_27=compartment_nucleus*(global_par_p54*x(37)*x(29)-global_par_m54*x(39));

% Reaction: id = reaction_28, name = v050
	reaction_reaction_28=compartment_nucleus*global_par_p55*x(39);

% Reaction: id = reaction_30, name = v051
	reaction_reaction_30=compartment_nucleus*(global_par_p56*x(37)*x(28)-global_par_m56*x(38));

% Reaction: id = reaction_21, name = v052
	reaction_reaction_21=compartment_nucleus*(global_par_p47*x(36)*x(30)-global_par_m47*x(43));

% Reaction: id = reaction_22, name = v053
	reaction_reaction_22=compartment_nucleus*global_par_p48*x(43);

% Reaction: id = reaction_23, name = v054
	reaction_reaction_23=compartment_nucleus*(global_par_p49*x(36)*x(29)-global_par_m49*x(42));

% Reaction: id = reaction_24, name = v055
	reaction_reaction_24=compartment_nucleus*global_par_p50*x(42);

% Reaction: id = reaction_29, name = v056
	reaction_reaction_29=compartment_nucleus*(global_par_p51*x(36)*x(28)-global_par_m51*x(41));

% Reaction: id = re92, name = v057
	reaction_re92=compartment_nucleus*function_4_v057(global_par_K57, global_par_V57, global_par_n57, x(34));

% Reaction: id = re118, name = v058
	reaction_re118=function_4_v058(global_par_Vn, global_par_p58, x(46));

% Reaction: id = re94, name = v059
	reaction_re94=compartment_cytoplasm*global_par_p59*x(15);

% Reaction: id = re95, name = v060
	reaction_re95=compartment_cytoplasm*function_4_v060(global_par_p60, x(15));

% Reaction: id = re96, name = v061
	reaction_re96=compartment_cytoplasm*global_par_p61*x(11);

% Reaction: id = re119, name = v062
	reaction_re119=function_4_v062(global_par_KexF, global_par_KimF, global_par_Vc, global_par_Vn, x(11), x(35));

% Reaction: id = re99, name = v063
	reaction_re99=compartment_nucleus*function_4_v063(compartment_cytoplasm, compartment_nucleus, global_par_p63, x(35));

% Reaction: id = reaction_31, name = v101
	reaction_reaction_31=compartment_cytoplasm*function_4_v101(global_par_K101, global_par_V101, x(1), const_species_EGF);

% Reaction: id = reaction_68, name = v102
	reaction_reaction_68=compartment_cytoplasm*function_4_v102(global_par_K102, global_par_V102, x(2));

% Reaction: id = reaction_69, name = v103
	reaction_reaction_69=compartment_cytoplasm*function_4_v103(global_par_K103, global_par_V103, x(3), const_species_HRG);

% Reaction: id = reaction_70, name = v104
	reaction_reaction_70=compartment_cytoplasm*function_4_v104(global_par_K104, global_par_V104, x(4));

% Reaction: id = reaction_71, name = v105
	reaction_reaction_71=compartment_cytoplasm*function_4_v105(global_par_K105, global_par_V105, const_species_EGF, x(24));

% Reaction: id = reaction_72, name = v106
	reaction_reaction_72=compartment_cytoplasm*function_4_v106(global_par_K106, global_par_V106, const_species_HRG, x(24));

% Reaction: id = reaction_73, name = v107
	reaction_reaction_73=compartment_cytoplasm*function_4_v107(global_par_K107, global_par_V107, x(2), x(25));

% Reaction: id = reaction_74, name = v108
	reaction_reaction_74=compartment_cytoplasm*function_4_v108(global_par_K108, global_par_V108, x(4), x(25));

% Reaction: id = reaction_75, name = v109
	reaction_reaction_75=compartment_cytoplasm*function_4_v109(global_par_K109, global_par_V109, const_species_HRG, x(5));

% Reaction: id = reaction_76, name = v110
	reaction_reaction_76=compartment_cytoplasm*function_4_v110(global_par_K110, global_par_V110, x(6));

% Reaction: id = reaction_77, name = v111
	reaction_reaction_77=compartment_cytoplasm*function_4_v111(global_par_K111, global_par_V111, const_species_HRG, x(16));

% Reaction: id = reaction_78, name = v112
	reaction_reaction_78=compartment_cytoplasm*function_4_v112(global_par_K112, global_par_V112, x(6), x(17));

% Reaction: id = reaction_79, name = v113
	reaction_reaction_79=compartment_cytoplasm*function_4_v113(global_par_K113, global_par_V113, x(25), x(19));

% Reaction: id = reaction_80, name = v114
	reaction_reaction_80=compartment_cytoplasm*function_4_v114(global_par_K114, global_par_V114, x(17), x(19));

% Reaction: id = reaction_81, name = v115
	reaction_reaction_81=compartment_cytoplasm*function_4_v115(global_par_K115, global_par_V115, x(18));

% Species:   id = EGF, name = EGF, constant	const_species_EGF=0.0;

% Species:   id = HRG, name = HRG, constant	const_species_HRG=10.0;

	xdot=zeros(47,1);
	
% Species:   id = A1, name = A1, affected by kineticLaw
	xdot(1) = (1/(compartment_cytoplasm))*((-1.0 * reaction_reaction_31) + ( 1.0 * reaction_reaction_68));
	
% Species:   id = A1_2, name = A1_2, affected by kineticLaw
	xdot(2) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_68));
	
% Species:   id = A2, name = A2, affected by kineticLaw
	xdot(3) = (1/(compartment_cytoplasm))*((-1.0 * reaction_reaction_69) + ( 1.0 * reaction_reaction_70));
	
% Species:   id = A2_2, name = A2_2, affected by kineticLaw
	xdot(4) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_reaction_69) + (-1.0 * reaction_reaction_70));
	
% Species:   id = A3, name = A3, affected by kineticLaw
	xdot(5) = (1/(compartment_cytoplasm))*((-1.0 * reaction_reaction_75) + ( 1.0 * reaction_reaction_76));
	
% Species:   id = A3_2, name = A3_2, affected by kineticLaw
	xdot(6) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_reaction_75) + (-1.0 * reaction_reaction_76));
	
% Species:   id = DUSPmRNA, name = DUSPmRNA, affected by kineticLaw
	xdot(7) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_re110) + (-1.0 * reaction_reaction_17));
	
% Species:   id = ERK_c, name = ERK_c, affected by kineticLaw
	xdot(8) = (1/(compartment_cytoplasm))*((-1.0 * reaction_reaction_32) + ( 1.0 * reaction_re85) + (-1.0 * reaction_re106));
	
% Species:   id = pERK_c, name = pERK_c, affected by kineticLaw
	xdot(9) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_re85) + ( 1.0 * reaction_re86) + (-1.0 * reaction_re107));
	
% Species:   id = ppERK_c, name = ppERK_c, affected by kineticLaw
	xdot(10) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_reaction_6) + (-1.0 * reaction_re86) + (-1.0 * reaction_re108));
	
% Species:   id = F, name = F, affected by kineticLaw
	xdot(11) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_re95) + (-1.0 * reaction_re96) + (-1.0 * reaction_re119));
	
% Species:   id = c_FOS_c, name = c_FOS_c, affected by kineticLaw
	xdot(12) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_re90) + (-1.0 * reaction_reaction_59) + (-1.0 * reaction_reaction_67) + ( 1.0 * reaction_reaction_60) + (-1.0 * reaction_reaction_61) + (-1.0 * reaction_re116));
	
% Species:   id = pc_FOS_c, name = pc_FOS_c, affected by kineticLaw
	xdot(13) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_reaction_59) + ( 1.0 * reaction_reaction_67) + (-1.0 * reaction_reaction_60) + (-1.0 * reaction_reaction_62) + (-1.0 * reaction_re117));
	
% Species:   id = c_FOSmRNA, name = c_FOSmRNA, affected by kineticLaw
	xdot(14) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_re115) + (-1.0 * reaction_reaction_50));
	
% Species:   id = FmRNA, name = FmRNA, affected by kineticLaw
	xdot(15) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_re118) + (-1.0 * reaction_re94));
	
% Species:   id = Kin, name = Kin, affected by kineticLaw
	xdot(16) = (1/(compartment_cytoplasm))*((-1.0 * reaction_reaction_77) + ( 1.0 * reaction_reaction_78));
	
% Species:   id = Kin_2, name = Kin_2, affected by kineticLaw
	xdot(17) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_reaction_77) + (-1.0 * reaction_reaction_78));
	
% Species:   id = pMEK, name = pMEK, affected by kineticLaw
	xdot(18) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_reaction_79) + ( 1.0 * reaction_reaction_80) + (-1.0 * reaction_reaction_81));
	
% Species:   id = MEK, name = MEK, affected by kineticLaw
	xdot(19) = (1/(compartment_cytoplasm))*((-1.0 * reaction_reaction_79) + (-1.0 * reaction_reaction_80) + ( 1.0 * reaction_reaction_81));
	
% Species:   id = DUSP_c, name = DUSP_c, affected by kineticLaw
	xdot(20) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_re89) + (-1.0 * reaction_reaction_33) + ( 1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_35) + (-1.0 * reaction_re111));
	
% Species:   id = pDUSP_c, name = pDUSP_c, affected by kineticLaw
	xdot(21) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_reaction_33) + (-1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_36) + (-1.0 * reaction_re112));
	
% Species:   id = RSK_c, name = RSK_c, affected by kineticLaw
	xdot(22) = (1/(compartment_cytoplasm))*((-1.0 * reaction_reaction_41) + ( 1.0 * reaction_reaction_42));
	
% Species:   id = pRSK_c, name = pRSK_c, affected by kineticLaw
	xdot(23) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_reaction_41) + (-1.0 * reaction_reaction_42) + (-1.0 * reaction_re113));
	
% Species:   id = RsD, name = RsD, affected by kineticLaw
	xdot(24) = (1/(compartment_cytoplasm))*((-1.0 * reaction_reaction_71) + (-1.0 * reaction_reaction_72) + ( 1.0 * reaction_reaction_73) + ( 1.0 * reaction_reaction_74));
	
% Species:   id = RsT, name = RsT, affected by kineticLaw
	xdot(25) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_reaction_71) + ( 1.0 * reaction_reaction_72) + (-1.0 * reaction_reaction_73) + (-1.0 * reaction_reaction_74));
	
% Species:   id = CREB_n, name = CREB_n, affected by kineticLaw
	xdot(26) = (1/(compartment_nucleus))*((-1.0 * reaction_reaction_45) + ( 1.0 * reaction_reaction_46));
	
% Species:   id = pCREB_n, name = pCREB_n, affected by kineticLaw
	xdot(27) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_45) + (-1.0 * reaction_reaction_46));
	
% Species:   id = ERK_n, name = ERK_n, affected by kineticLaw
	xdot(28) = (1/(compartment_nucleus))*(( 1.0 * reaction_re87) + ( 1.0 * reaction_re106) + ( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_30) + ( 1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_29));
	
% Species:   id = pERK_n, name = pERK_n, affected by kineticLaw
	xdot(29) = (1/(compartment_nucleus))*((-1.0 * reaction_re87) + ( 1.0 * reaction_re88) + ( 1.0 * reaction_re107) + ( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_27) + ( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_23));
	
% Species:   id = ppERK_n, name = ppERK_n, affected by kineticLaw
	xdot(30) = (1/(compartment_nucleus))*((-1.0 * reaction_re88) + ( 1.0 * reaction_re108) + (-1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_21));
	
% Species:   id = Elk1_n, name = Elk1_n, affected by kineticLaw
	xdot(31) = (1/(compartment_nucleus))*((-1.0 * reaction_reaction_57) + ( 1.0 * reaction_reaction_58));
	
% Species:   id = pElk1_n, name = pElk1_n, affected by kineticLaw
	xdot(32) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_57) + (-1.0 * reaction_reaction_58));
	
% Species:   id = FOSn, name = FOSn, affected by kineticLaw
	xdot(33) = (1/(compartment_nucleus))*(( 1.0 * reaction_re116) + (-1.0 * reaction_reaction_52) + (-1.0 * reaction_reaction_53) + ( 1.0 * reaction_reaction_54) + (-1.0 * reaction_reaction_55));
	
% Species:   id = FOSn_2, name = FOSn_2, affected by kineticLaw
	xdot(34) = (1/(compartment_nucleus))*(( 1.0 * reaction_re117) + ( 1.0 * reaction_reaction_52) + ( 1.0 * reaction_reaction_53) + (-1.0 * reaction_reaction_54) + (-1.0 * reaction_reaction_56));
	
% Species:   id = Fn, name = Fn, affected by kineticLaw
	xdot(35) = (1/(compartment_nucleus))*(( 1.0 * reaction_re119) + (-1.0 * reaction_re99));
	
% Species:   id = DUSP_n, name = DUSP_n, affected by kineticLaw
	xdot(36) = (1/(compartment_nucleus))*(( 1.0 * reaction_re111) + (-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_29));
	
% Species:   id = pDUSP_n, name = pDUSP_n, affected by kineticLaw
	xdot(37) = (1/(compartment_nucleus))*(( 1.0 * reaction_re112) + ( 1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_27) + ( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_30));
	
% Species:   id = pDUSP_n_ERK_n, name = pDUSP_n_ERK_n, affected by kineticLaw
	xdot(38) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_30));
	
% Species:   id = pDUSP_n_pERK_n, name = pDUSP_n_pERK_n, affected by kineticLaw
	xdot(39) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_27) + (-1.0 * reaction_reaction_28));
	
% Species:   id = pDUSP_n_ppERK_n, name = pDUSP_n_ppERK_n, affected by kineticLaw
	xdot(40) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_26));
	
% Species:   id = DUSP_n_ERK_n, name = DUSP_n_ERK_n, affected by kineticLaw
	xdot(41) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_29));
	
% Species:   id = DUSP_n_pERK_n, name = DUSP_n_pERK_n, affected by kineticLaw
	xdot(42) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_24));
	
% Species:   id = DUSP_n_ppERK_n, name = DUSP_n_ppERK_n, affected by kineticLaw
	xdot(43) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_22));
	
% Species:   id = PreDUSPmRNA, name = PreDUSPmRNA, affected by kineticLaw
	xdot(44) = (1/(compartment_nucleus))*(( 1.0 * reaction_re109) + (-1.0 * reaction_re110));
	
% Species:   id = PreFOSmRNA, name = PreFOSmRNA, affected by kineticLaw
	xdot(45) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_47) + (-1.0 * reaction_re115));
	
% Species:   id = PreFmRNA, name = PreFmRNA, affected by kineticLaw
	xdot(46) = (1/(compartment_nucleus))*(( 1.0 * reaction_re92) + (-1.0 * reaction_re118));
	
% Species:   id = pRSK_n, name = pRSK_n, affected by kineticLaw
	xdot(47) = (1/(compartment_nucleus))*(( 1.0 * reaction_re113));
end

function z=function_4_v003(K3,K4,V3,pERK_c,ppERK_c), z=(V3*pERK_c/(K3*(1+ppERK_c/K4)+pERK_c));end

function z=function_4_v004(K3,K4,V4,pERK_c,ppERK_c), z=(V4*ppERK_c/(K4*(1+pERK_c/K3)+ppERK_c));end

function z=function_4_v005(K5,K6,V5,pERK_n,ppERK_n), z=(V5*pERK_n/(K5*(1+ppERK_n/K6)+pERK_n));end

function z=function_4_v006(K5,K6,V6,pERK_n,ppERK_n), z=(V6*ppERK_n/(K6*(1+pERK_n/K5)+ppERK_n));end

function z=function_4_v007(KexERK,KimERK,Vc,Vn,ERK_c,ERK_n), z=(KimERK*Vc*ERK_c-KexERK*Vn*ERK_n);end

function z=function_4_v008(KexERKP,KimERKP,Vc,Vn,pERK_c,pERK_n), z=(KimERKP*Vc*pERK_c-KexERKP*Vn*pERK_n);end

function z=function_4_v015(K15,V15,pDUSP_c), z=(V15*pDUSP_c/(K15+pDUSP_c));end

function z=function_4_v018(KexDUSP,KimDUSP,Vc,Vn,DUSP_n,DUSP_c), z=(KimDUSP*Vc*DUSP_c-KexDUSP*Vn*DUSP_n);end

function z=function_4_v019(KexDUSPP,KimDUSPP,Vc,Vn,pDUSP_c,pDUSP_n), z=(KimDUSPP*Vc*pDUSP_c-KexDUSPP*Vn*pDUSP_n);end

function z=function_4_v020(K20,V20,ppERK_n,DUSP_n), z=(V20*ppERK_n*DUSP_n/(K20+DUSP_n));end

function z=function_4_v021(K21,V21,pDUSP_n), z=(V21*pDUSP_n/(K21+pDUSP_n));end

function z=function_4_v024(K24,V24,ppERK_c,RSK_c), z=(V24*ppERK_c*RSK_c/(K24+RSK_c));end

function z=function_4_v001(Fct,K1,K2,V1,ERK_c,pERK_c,MEKc), z=(V1*Fct*MEKc*ERK_c/(K1*(1+pERK_c/K2)+ERK_c));end

function z=function_4_v009(KexERKPP,KimERKPP,Vc,Vn,ppERK_c,ppERK_n), z=(KimERKPP*Vc*ppERK_c-KexERKPP*Vn*ppERK_n);end

function z=function_4_v010(K10,V10,n10,ppERK_n), z=(V10*ppERK_n^n10/(K10^n10+ppERK_n^n10));end

function z=function_4_v011(Vn,p11,PreDUSPmRNA), z=(p11*Vn*PreDUSPmRNA);end

function z=function_4_v013(p13,DUSPmRNA), z=(p13*DUSPmRNA);end

function z=function_4_v014(K14,V14,ppERK_c,DUSP_c), z=(V14*ppERK_c*DUSP_c/(K14+DUSP_c));end

function z=function_4_v002(Fct,K1,K2,V2,ERK_c,pERK_c,MEKc), z=(V2*Fct*MEKc*pERK_c/(K2*(1+ERK_c/K1)+pERK_c));end

function z=function_4_v029(K29,V29,ppERK_n,Elk1_n), z=(V29*ppERK_n*Elk1_n/(K29+Elk1_n));end

function z=function_4_v025(K25,V25,pRSK_c), z=(V25*pRSK_c/(K25+pRSK_c));end

function z=function_4_v026(KexRSKP,KimRSKP,Vc,Vn,pRSK_n,pRSK_c), z=(KimRSKP*Vc*pRSK_c-KexRSKP*Vn*pRSK_n);end

function z=function_4_v032(Vn,p32,PreFOSmRNA), z=(p32*Vn*PreFOSmRNA);end

function z=function_4_v034(p34,c_FOSmRNA), z=(p34*c_FOSmRNA);end

function z=function_4_v035(K35,V35,c_FOS_c,ppERK_c), z=(V35*ppERK_c*c_FOS_c/(K35+c_FOS_c));end

function z=function_4_v036(K36,V36,c_FOS_c,pRSK_c), z=(V36*pRSK_c*c_FOS_c/(K36+c_FOS_c));end

function z=function_4_v037(K37,V37,pc_FOS_c), z=(V37*pc_FOS_c/(K37+pc_FOS_c));end

function z=function_4_v027(K27,V27,CREB_n,pRSK_n), z=(V27*pRSK_n*CREB_n/(K27+CREB_n));end

function z=function_4_v028(K28,V28,pCREB_n), z=(V28*pCREB_n/(K28+pCREB_n));end

function z=function_4_v030(K30,V30,pElk1_n), z=(V30*pElk1_n/(K30+pElk1_n));end

function z=function_4_v031(K31,KF31,V31,n31,nF31,Fn,pCREB_n,pElk1_n), z=(V31*(pCREB_n*pElk1_n)^n31/(K31^n31+(pCREB_n*pElk1_n)^n31+(Fn/KF31)^nF31));end

function z=function_4_v040(KexFOS,KimFOS,Vc,Vn,c_FOS_c,FOSn), z=(KimFOS*Vc*c_FOS_c-KexFOS*Vn*FOSn);end

function z=function_4_v041(KexFOSP,KimFOSP,Vc,Vn,pc_FOS_c,FOSn_2), z=(KimFOSP*Vc*pc_FOS_c-KexFOSP*Vn*FOSn_2);end

function z=function_4_v042(K42,V42,ppERK_n,FOSn), z=(V42*ppERK_n*FOSn/(K42+FOSn));end

function z=function_4_v043(K43,V43,FOSn,pRSK_n), z=(V43*pRSK_n*FOSn/(K43+FOSn));end

function z=function_4_v044(K44,V44,FOSn_2), z=(V44*FOSn_2/(K44+FOSn_2));end

function z=function_4_v057(K57,V57,n57,FOSn_2), z=(V57*FOSn_2^n57/(K57^n57+FOSn_2^n57));end

function z=function_4_v058(Vn,p58,PreFmRNA), z=(p58*Vn*PreFmRNA);end

function z=function_4_v060(p60,FmRNA), z=(p60*FmRNA);end

function z=function_4_v062(KexF,KimF,Vc,Vn,F,Fn), z=(KimF*Vc*F-KexF*Vn*Fn);end

function z=function_4_v063(cytoplasm,nucleus,p63,Fn), z=(cytoplasm*p63*Fn/nucleus);end

function z=function_4_v101(K101,V101,A1,EGF), z=(V101*EGF*A1/(K101+A1));end

function z=function_4_v102(K102,V102,A1_2), z=(V102*A1_2/(K102+A1_2));end

function z=function_4_v103(K103,V103,A2,HRG), z=(V103*HRG*A2/(K103+A2));end

function z=function_4_v104(K104,V104,A2_2), z=(V104*A2_2/(K104+A2_2));end

function z=function_4_v105(K105,V105,EGF,RsD), z=(V105*EGF*RsD/(K105+RsD));end

function z=function_4_v106(K106,V106,HRG,RsD), z=(V106*HRG*RsD/(K106+RsD));end

function z=function_4_v107(K107,V107,A1_2,RsT), z=(V107*A1_2*RsT/(K107+RsT));end

function z=function_4_v108(K108,V108,A2_2,RsT), z=(V108*A2_2*RsT/(K108+RsT));end

function z=function_4_v109(K109,V109,HRG,A3), z=(V109*HRG*A3/(K109+A3));end

function z=function_4_v110(K110,V110,A3_2), z=(V110*A3_2/(K110+A3_2));end

function z=function_4_v111(K111,V111,HRG,Kin), z=(V111*HRG*Kin/(K111+Kin));end

function z=function_4_v112(K112,V112,A3_2,Kin_2), z=(V112*A3_2*Kin_2/(K112+Kin_2));end

function z=function_4_v113(K113,V113,RsT,pMEK_c), z=(V113*RsT*pMEK_c/(K113+pMEK_c));end

function z=function_4_v114(K114,V114,Kin_2,pMEK_c), z=(V114*Kin_2*pMEK_c/(K114+pMEK_c));end

function z=function_4_v115(K115,V115,MEKc), z=(V115*MEKc/(K115+MEKc));end

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


