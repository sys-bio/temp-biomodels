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
% Model name = Koo2013 - Integrated shear stress induced NO production model
%
% is http://identifiers.org/biomodels.db/MODEL1308190000
% is http://identifiers.org/biomodels.db/BIOMD0000000468
% isDescribedBy http://identifiers.org/pubmed/23708369
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000464
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000465
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000466
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000467
%


function main()
%Initial conditions vector
	x0=zeros(79,1);
	x0(1) = 1500000.0;
	x0(2) = 2830000.0;
	x0(3) = 117.2;
	x0(4) = 3870.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.246;
	x0(15) = 150.0;
	x0(16) = 167.616;
	x0(17) = 0.345;
	x0(18) = 0.1;
	x0(19) = 6967.271;
	x0(20) = 0.03;
	x0(21) = 0.0;
	x0(22) = 99.97;
	x0(23) = 0.0;
	x0(24) = 3.0;
	x0(25) = 999.754;
	x0(26) = 1.457;
	x0(27) = 1.723;
	x0(28) = 29.203;
	x0(29) = 0.0;
	x0(30) = 10000.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 50.0;
	x0(34) = 0.006;
	x0(35) = 0.0;
	x0(36) = 0.0415;
	x0(37) = 2.827;
	x0(38) = 347.52;
	x0(39) = 10.0;
	x0(40) = 2.12;
	x0(41) = 34.98;
	x0(42) = 7635.36;
	x0(43) = 199987.0;
	x0(44) = 1.037;
	x0(45) = 0.0089;
	x0(46) = 10.98;
	x0(47) = 0.106;
	x0(48) = 500000.0;
	x0(49) = 0.0;
	x0(50) = 0.643;
	x0(51) = 0.083;
	x0(52) = 819.25;
	x0(53) = 18.0;
	x0(54) = 0.605;
	x0(55) = 72.0;
	x0(56) = 57.0;
	x0(57) = 299.706;
	x0(58) = 98.514;
	x0(59) = 157.162;
	x0(60) = 299.997;
	x0(61) = 0.288;
	x0(62) = 1.486;
	x0(63) = 0.616;
	x0(64) = 119.384;
	x0(65) = 0.003;
	x0(66) = 0.0;
	x0(67) = 3.214;
	x0(68) = 0.0;
	x0(69) = 0.0;
	x0(70) = 0.857;
	x0(71) = 3.23;
	x0(72) = 15.962;
	x0(73) = 5.577;
	x0(74) = 1.193;
	x0(75) = 0.09;
	x0(76) = 0.0;
	x0(77) = 0.0;
	x0(78) = 0.0;
	x0(79) = 0.0;


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
% Compartment: id = c1, name = Cell, constant
	compartment_c1=1.0;
% Compartment: id = c2, name = ER, constant
	compartment_c2=1.0;
% Compartment: id = c3, name = nucleus, constant
	compartment_c3=1.0;
% Parameter:   id =  R_T, name = R_T
	global_par_R_T=44000.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.0012;
% Parameter:   id =  k2, name = k2
	global_par_k2=2.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=6.64;
% Parameter:   id =  k4, name = k4
	global_par_k4=5000.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=1.0E-10;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.1;
% Parameter:   id =  k7, name = k7
	global_par_k7=300.0;
% Parameter:   id =  K1, name = K1
	global_par_K1=0.0;
% Parameter:   id =  K2, name = K2
	global_par_K2=200.0;
% Parameter:   id =  K3, name = K3
	global_par_K3=150.0;
% Parameter:   id =  K4, name = K4
	global_par_K4=80.0;
% Parameter:   id =  K5, name = K5
	global_par_K5=321.0;
% Parameter:   id =  K_hi, name = K_hi
	global_par_K_hi=380.0;
% Parameter:   id =  k_CICR, name = k_CICR
	global_par_k_CICR=1.0;
% Parameter:   id =  K_CICR, name = K_CICR
	global_par_K_CICR=0.0;
% Parameter:   id =  k_CCE, name = k_CCE
	global_par_k_CCE=0.0;
% Parameter:   id =  B_T, name = B_T
	global_par_B_T=120000.0;
% Parameter:   id =  Vc_Vs, name = Vc_Vs
	global_par_Vc_Vs=3.5;
% Parameter:   id =  dot_Vp, name = dot_Vp
	global_par_dot_Vp=1630.0;
% Parameter:   id =  dot_Vex, name = dot_Vex
	global_par_dot_Vex=18330.0;
% Parameter:   id =  dot_Vhi, name = dot_Vhi
	global_par_dot_Vhi=4760.0;
% Parameter:   id =  dot_q_inpass, name = dot_q_inpass
	global_par_dot_q_inpass=6000.0;
% Parameter:   id =  dot_q_instim, name = dot_q_instim
	global_par_dot_q_instim=2500.0;
% Parameter:   id =  Cao, name = Cao
	global_par_Cao=100.0;
% Parameter:   id =  tau_I, name = tau_I
	global_par_tau_I=33.0;
% Parameter:   id =  tau_II, name = tau_II
	global_par_tau_II=0.005;
% Parameter:   id =  half, name = half
	global_par_half=0.5;
% Parameter:   id =  fracK, name = fracK
	global_par_fracK=7071067.81;
% Parameter:   id =  alp, name = alp
	global_par_alp=10.0;
% Parameter:   id =  gam, name = gam
	global_par_gam=0.1;
% Parameter:   id =  k8, name = k8
	global_par_k8=7.5E-5;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.004;
% Parameter:   id =  k12, name = k12
	global_par_k12=10.3;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.08;
% Parameter:   id =  k14, name = k14
	global_par_k14=1152.0;
% Parameter:   id =  k15, name = k15
	global_par_k15=0.015;
% Parameter:   id =  k16, name = k16
	global_par_k16=0.0;
% Parameter:   id =  k17, name = k17
	global_par_k17=1.5E-4;
% Parameter:   id =  k18, name = k18
	global_par_k18=1.5;
% Parameter:   id =  kp, name = kp
	global_par_kp=0.1;
% Parameter:   id =  Kmp, name = Kmp
	global_par_Kmp=5.0;
% Parameter:   id =  Kmdp, name = Kmdp
	global_par_Kmdp=20.0;
% Parameter:   id =  Vdp, name = Vdp
	global_par_Vdp=4.0;
% Parameter:   id =  k90, name = k90
	global_par_k90=0.002;
% Parameter:   id =  kr90, name = kr90
	global_par_kr90=1.5;
% Parameter:   id =  kDD, name = kDD
	global_par_kDD=9.45E-5;

% Reaction: id = re3, name = re1
	reaction_re3=(-global_par_k6)*x(3)*(global_par_B_T-x(4))+global_par_k7*x(4);

% Reaction: id = re4
	reaction_re4=global_par_k_CCE*(global_par_fracK*global_par_Cao/(global_par_K3+global_par_Cao)-x(2))*(x(1)-x(2));

% Reaction: id = re5
	reaction_re5=0.5*global_par_k1*(global_par_R_T-global_par_half*global_par_R_T*(exp((-x(12))/global_par_tau_I)+exp((-x(12))/global_par_tau_II)+(exp((-x(12))/global_par_tau_I)-exp((-x(12))/global_par_tau_II))*(global_par_tau_I+global_par_tau_II)/(global_par_tau_I-global_par_tau_II)))*x(3)/(global_par_K1+x(3));

% Reaction: id = re6
	reaction_re6=0.5*global_par_k2*x(6);

% Reaction: id = re7
	reaction_re7=0.5*global_par_k3*global_par_k_CICR*x(3)/(global_par_K_CICR+x(3))*(x(6)/(global_par_K2+x(6)))^3*x(2)-0.5*global_par_k4*(x(3)/(global_par_K3+x(3)))^2+0.5*global_par_k5*x(2)*x(2);

% Reaction: id = re8
	reaction_re8=0.5*global_par_dot_Vhi*x(3)^4/(global_par_K_hi^4+x(3)^4);

% Reaction: id = re9
	reaction_re9=0.5*global_par_dot_Vex*x(3)/(global_par_K5+x(3));

% Reaction: id = re10
	reaction_re10=0.5*global_par_dot_q_inpass;

% Reaction: id = re11	% Local Parameter:   id =  unisec, name = unisec
	reaction_re11_unisec=1.0;

	reaction_re11=reaction_re11_unisec*0.5;

% Reaction: id = re12
	reaction_re12=0.5*global_par_dot_Vp*x(3)^2/(global_par_K4^2+x(3)^2);

% Reaction: id = re37
	reaction_re37=global_par_k15*x(37)*x(41);

% Reaction: id = re38
	reaction_re38=global_par_k17*x(41)*x(38)-global_par_k18*x(40);

% Reaction: id = re41
	reaction_re41=global_par_k11*x(3)*x(42)-global_par_k12*x(38);

% Reaction: id = re42
	reaction_re42=global_par_k13*x(3)*x(38)-global_par_k14*x(37);

% Reaction: id = re50
	reaction_re50=global_par_gam*global_par_k14*x(36)-global_par_k13*x(3)*x(40);

% Reaction: id = re51
	reaction_re51=global_par_k90*x(36)*x(43);

% Reaction: id = re52
	reaction_re52=global_par_gam*global_par_k14*x(44)-global_par_k13*x(3)*x(46);

% Reaction: id = re53
	reaction_re53=global_par_kr90*x(46);

% Reaction: id = re54
	reaction_re54=global_par_gam*global_par_k14*x(45)-global_par_k13*x(3)*x(47);

% Reaction: id = re55
	reaction_re55=global_par_kp*x(44)*x(27)/(x(44)+global_par_Kmp)-global_par_Vdp*x(45)/(x(45)+global_par_Kmdp);

% Reaction: id = re56
	reaction_re56=global_par_kp*x(46)*x(27)/(x(46)+global_par_Kmp)-global_par_Vdp*x(47)/(x(47)+global_par_Kmdp);

% Reaction: id = re57	% Local Parameter:   id =  normal, name = normal
	reaction_re57_normal=0.907;
	% Local Parameter:   id =  unity, name = unity
	reaction_re57_unity=1.0;
	% Local Parameter:   id =  unimol, name = unimol
	reaction_re57_unimol=1.0;
	% Local Parameter:   id =  tf, name = tf
	reaction_re57_tf=15.0;

	reaction_re57=exp(reaction_re57_unity-(x(23)/reaction_re57_tf)^1.8)*reaction_re57_normal*(x(23)/reaction_re57_unimol)^0.8*(reaction_re57_unity-(x(23)/reaction_re57_tf)^1.8);

% Reaction: id = re58	% Local Parameter:   id =  k58, name = k58
	reaction_re58_k58=0.2;
	% Local Parameter:   id =  Km58, name = Km58
	reaction_re58_Km58=6170.0;

	reaction_re58=reaction_re58_k58*x(19)*x(20)/(reaction_re58_Km58+x(19));

% Reaction: id = re59	% Local Parameter:   id =  k59, name = k59
	reaction_re59_k59=7.5;
	% Local Parameter:   id =  Km59, name = Km59
	reaction_re59_Km59=80.9;

	reaction_re59=reaction_re59_k59*x(17)*x(18)/(reaction_re59_Km59+x(17));

% Reaction: id = re60	% Local Parameter:   id =  k60, name = k60
	reaction_re60_k60=0.045;
	% Local Parameter:   id =  kr60, name = kr60
	reaction_re60_kr60=0.089;

	reaction_re60=reaction_re60_k60*x(17)*x(16)-reaction_re60_kr60*x(28);

% Reaction: id = re61	% Local Parameter:   id =  k61, name = k61
	reaction_re61_k61=20.0;
	% Local Parameter:   id =  Km61, name = Km61
	reaction_re61_Km61=80000.0;

	reaction_re61=reaction_re61_k61*x(28)*x(14)/(reaction_re61_Km61+x(28));

% Reaction: id = re62	% Local Parameter:   id =  k62, name = k62
	reaction_re62_k62=20.0;
	% Local Parameter:   id =  Km62, name = Km62
	reaction_re62_Km62=80000.0;

	reaction_re62=reaction_re62_k62*x(26)*x(24)/(reaction_re62_Km62+x(26));

% Reaction: id = re63	% Local Parameter:   id =  k63, name = k63
	reaction_re63_k63=0.037;
	% Local Parameter:   id =  Km63, name = Km63
	reaction_re63_Km63=8800.0;

	reaction_re63=reaction_re63_k63*x(26)*x(15)/(reaction_re63_Km63+x(26));

% Reaction: id = re64	% Local Parameter:   id =  k64, name = k64
	reaction_re64_k64=0.04;
	% Local Parameter:   id =  Km64, name = Km64
	reaction_re64_Km64=48000.0;

	reaction_re64=reaction_re64_k64*x(27)*x(15)/(reaction_re64_Km64+x(27));

% Reaction: id = re65	% Local Parameter:   id =  k65, name = k65
	reaction_re65_k65=0.163;
	% Local Parameter:   id =  Km65, name = Km65
	reaction_re65_Km65=48000.0;

	reaction_re65=reaction_re65_k65*x(27)*x(15)/(reaction_re65_Km65+x(27));

% Reaction: id = re66	% Local Parameter:   id =  k66, name = k66
	reaction_re66_k66=7.0E-4;

	reaction_re66=reaction_re66_k66*x(17)*x(25);

% Reaction: id = re67	% Local Parameter:   id =  k67, name = k67
	reaction_re67_k67=0.98;

	reaction_re67=x(14)*reaction_re67_k67;

% Reaction: id = re68	% Local Parameter:   id =  unitime, name = unitime
	reaction_re68_unitime=1.0;

	reaction_re68=reaction_re68_unitime;

% Reaction: id = re69	% Local Parameter:   id =  K_cam_no, name = K_cam_no
	reaction_re69_K_cam_no=17.0;
	% Local Parameter:   id =  K_p_no, name = K_p_no
	reaction_re69_K_p_no=5.0;
	% Local Parameter:   id =  K_pcam_no, name = K_pcam_no
	reaction_re69_K_pcam_no=17.0;

	reaction_re69=reaction_re69_K_cam_no*(x(36)+x(44))+reaction_re69_K_p_no*(x(47)+x(50))+reaction_re69_K_pcam_no*x(45);

% Reaction: id = re70
	reaction_re70=global_par_Vdp*x(50)/(x(50)+global_par_Kmdp);

% Reaction: id = re71
	reaction_re71=global_par_kr90*x(51);

% Reaction: id = re72
	reaction_re72=global_par_k18*x(47)-global_par_k17*x(50)*x(38);

% Reaction: id = re102	% Local Parameter:   id =  normal, name = normal
	reaction_re102_normal=4.0;
	% Local Parameter:   id =  tf, name = tf
	reaction_re102_tf=60.0;
	% Local Parameter:   id =  unity, name = unity
	reaction_re102_unity=1.0;
	% Local Parameter:   id =  unimol, name = unimol
	reaction_re102_unimol=1.0;
	% Local Parameter:   id =  tiny_num, name = tiny_num
	reaction_re102_tiny_num=1.0E-6;

	reaction_re102=exp(reaction_re102_unity-(x(32)/reaction_re102_tf)^0.35)*reaction_re102_normal*((x(32)+reaction_re102_tiny_num)/reaction_re102_unimol)^(-0.65)*(reaction_re102_unity-(x(32)/reaction_re102_tf)^0.35);

% Reaction: id = re103	% Local Parameter:   id =  normal, name = normal
	reaction_re103_normal=0.026;
	% Local Parameter:   id =  tf, name = tf
	reaction_re103_tf=540.0;
	% Local Parameter:   id =  unity, name = unity
	reaction_re103_unity=1.0;
	% Local Parameter:   id =  unimol, name = unimol
	reaction_re103_unimol=1.0;

	reaction_re103=exp(reaction_re103_unity-(x(32)/reaction_re103_tf)^1.3)*reaction_re103_normal*(x(32)/reaction_re103_unimol)^0.3*(reaction_re103_unity-(x(32)/reaction_re103_tf)^1.3);

% Reaction: id = re104	% Local Parameter:   id =  k105, name = k105
	reaction_re104_k105=0.1;
	% Local Parameter:   id =  k_105, name = k_105
	reaction_re104_k_105=1.0;

	reaction_re104=reaction_re104_k105*x(52)*x(54)-reaction_re104_k_105*x(70);

% Reaction: id = re105	% Local Parameter:   id =  kcat_src, name = kcat_src
	reaction_re105_kcat_src=8.33;
	% Local Parameter:   id =  k_6, name = k_6
	reaction_re105_k_6=5.0;

	reaction_re105=reaction_re105_kcat_src*x(70)*x(53)-reaction_re105_k_6*x(72);

% Reaction: id = re106	% Local Parameter:   id =  k107, name = k107
	reaction_re106_k107=60.0;
	% Local Parameter:   id =  k_107, name = k_107
	reaction_re106_k_107=546.0;

	reaction_re106=reaction_re106_k107*x(71)*x(72)-reaction_re106_k_107*x(73);

% Reaction: id = re107	% Local Parameter:   id =  k108, name = k108
	reaction_re107_k108=2040.0;
	% Local Parameter:   id =  k_108, name = k_108
	reaction_re107_k_108=15700.0;

	reaction_re107=reaction_re107_k108*x(73)-reaction_re107_k_108*x(54)*x(74);

% Reaction: id = re108	% Local Parameter:   id =  V10, name = V10
	reaction_re108_V10=154.0;
	% Local Parameter:   id =  K10, name = K10
	reaction_re108_K10=340.0;

	reaction_re108=reaction_re108_V10*x(59)/(reaction_re108_K10+x(59));

% Reaction: id = re109	% Local Parameter:   id =  k9, name = k9
	reaction_re109_k9=40.8;

	reaction_re109=reaction_re109_k9*x(74);

% Reaction: id = re110	% Local Parameter:   id =  kT, name = kT
	reaction_re110_kT=0.001;

	reaction_re110=x(75)*reaction_re110_kT;

% Reaction: id = re111	% Local Parameter:   id =  ktr1, name = ktr1
	reaction_re111_ktr1=1.2E-4;
	% Local Parameter:   id =  ktr1k2, name = ktr1k2
	reaction_re111_ktr1k2=9.0E-6;
	% Local Parameter:   id =  tr2, name = tr2
	reaction_re111_tr2=3.0E-6;

	reaction_re111=reaction_re111_ktr1*x(68)+reaction_re111_ktr1k2*x(39);

% Reaction: id = re112	% Local Parameter:   id =  k111, name = k111
	reaction_re112_k111=0.222;
	% Local Parameter:   id =  K111, name = K111
	reaction_re112_K111=0.181;

	reaction_re112=reaction_re112_k111*x(74)*x(64)/(x(64)+reaction_re112_K111);

% Reaction: id = re113	% Local Parameter:   id =  V12, name = V12
	reaction_re113_V12=0.289;
	% Local Parameter:   id =  K12, name = K12
	reaction_re113_K12=0.0571;

	reaction_re113=reaction_re113_V12*x(63)/(reaction_re113_K12+x(63));

% Reaction: id = re114	% Local Parameter:   id =  k113, name = k113
	reaction_re114_k113=0.035;
	% Local Parameter:   id =  K113, name = K113
	reaction_re114_K113=10.0;

	reaction_re114=reaction_re114_k113*x(63)*x(58)/(reaction_re114_K113+x(58));

% Reaction: id = re115	% Local Parameter:   id =  K18, name = K18
	reaction_re115_K18=8.0;
	% Local Parameter:   id =  V18, name = V18
	reaction_re115_V18=0.125;

	reaction_re115=reaction_re115_V18*x(62)/(reaction_re115_K18+x(62));

% Reaction: id = re116	% Local Parameter:   id =  k19, name = k19
	reaction_re116_k19=0.005;
	% Local Parameter:   id =  K19, name = K19
	reaction_re116_K19=15.0;

	reaction_re116=reaction_re116_k19*x(62)*x(57)/(reaction_re116_K19+x(57));

% Reaction: id = re117	% Local Parameter:   id =  K20, name = K20
	reaction_re117_K20=15.0;
	% Local Parameter:   id =  V20, name = V20
	reaction_re117_V20=0.375;

	reaction_re117=reaction_re117_V20*x(61)/(x(61)+reaction_re117_K20);

% Reaction: id = re118	% Local Parameter:   id =  k21, name = k21
	reaction_re118_k21=0.002;
	% Local Parameter:   id =  K21, name = K21
	reaction_re118_K21=30.0;

	reaction_re118=reaction_re118_k21*x(60)*x(34)/(x(60)+reaction_re118_K21);

% Reaction: id = re119	% Local Parameter:   id =  K22, name = K22
	reaction_re119_K22=15.0;
	% Local Parameter:   id =  V22, name = V22
	reaction_re119_V22=0.05;

	reaction_re119=reaction_re119_V22*x(65)/(x(65)+reaction_re119_K22);

% Reaction: id = re120	% Local Parameter:   id =  kD, name = kD
	reaction_re120_kD=2.8E-5;

	reaction_re120=reaction_re120_kD*x(67);

% Reaction: id = re121	% Local Parameter:   id =  kP, name = kP
	reaction_re121_kP=0.02824;
	% Local Parameter:   id =  K30, name = K30
	reaction_re121_K30=16.0;

	reaction_re121=reaction_re121_kP*x(67)/(x(67)+reaction_re121_K30);

% Reaction: id = re122	% Local Parameter:   id =  unitime, name = unitime
	reaction_re122_unitime=1.0;

	reaction_re122=reaction_re122_unitime;

% Reaction: id = re123	% Local Parameter:   id =  V37, name = V37
	reaction_re123_V37=0.375;
	% Local Parameter:   id =  K37, name = K37
	reaction_re123_K37=15.0;

	reaction_re123=reaction_re123_V37*x(34)/(x(34)+reaction_re123_K37);

% Reaction: id = re124	% Local Parameter:   id =  k38, name = k38
	reaction_re124_k38=0.005;
	% Local Parameter:   id =  K38, name = K38
	reaction_re124_K38=15.0;

	reaction_re124=reaction_re124_k38*x(61)*x(62)/(reaction_re124_K38+x(61));

% Reaction: id = re125	% Local Parameter:   id =  V39, name = V39
	reaction_re125_V39=0.05;
	% Local Parameter:   id =  K39, name = K39
	reaction_re125_K39=15.0;

	reaction_re125=reaction_re125_V39*x(35)/(reaction_re125_K39+x(35));

% Reaction: id = re126	% Local Parameter:   id =  k40, name = k40
	reaction_re126_k40=0.002;
	% Local Parameter:   id =  K40, name = K40
	reaction_re126_K40=30.0;

	reaction_re126=reaction_re126_k40*x(65)*x(34)/(reaction_re126_K40+x(65));

% Reaction: id = re127	% Local Parameter:   id =  K43, name = K43
	reaction_re127_K43=25.0;
	% Local Parameter:   id =  k43, name = k43
	reaction_re127_k43=4.0E-5;

	reaction_re127=x(35)*x(33)*reaction_re127_k43/(reaction_re127_K43+x(33));

% Reaction: id = re128	% Local Parameter:   id =  K44, name = K44
	reaction_re128_K44=5.0;
	% Local Parameter:   id =  V44, name = V44
	reaction_re128_V44=0.002;

	reaction_re128=reaction_re128_V44*x(68)/(x(68)+reaction_re128_K44);

% Reaction: id = re129	% Local Parameter:   id =  tau, name = tau
	reaction_re129_tau=0.55;
	% Local Parameter:   id =  tc, name = tc
	reaction_re129_tc=3600.0;
	% Local Parameter:   id =  uc, name = uc
	reaction_re129_uc=3600.0;
	% Local Parameter:   id =  delay, name = delay
	reaction_re129_delay=5.0;
	% Local Parameter:   id =  unity, name = unity
	reaction_re129_unity=20.0;

	reaction_re129=exp(reaction_re129_tau*(reaction_re129_delay-x(32)/reaction_re129_tc))/(1+2*exp(reaction_re129_tau*(reaction_re129_delay-x(32)/reaction_re129_tc))+exp(2*reaction_re129_tau*(reaction_re129_delay-x(32)/reaction_re129_tc)))/reaction_re129_uc*29.256;

% Reaction: id = re131
	reaction_re131=global_par_kDD*x(41);

% Reaction: id = re132
	reaction_re132=global_par_kDD*x(36);

% Reaction: id = re133
	reaction_re133=global_par_kDD*x(40);

% Reaction: id = re134
	reaction_re134=global_par_kDD*x(51);

% Reaction: id = re135
	reaction_re135=global_par_kDD*x(50);

% Reaction: id = re136
	reaction_re136=global_par_kDD*x(46);

% Reaction: id = re137
	reaction_re137=global_par_kDD*x(47);

% Reaction: id = re138
	reaction_re138=global_par_kDD*x(44);

% Reaction: id = re139
	reaction_re139=global_par_kDD*x(45);

	xdot=zeros(79,1);
	
% Species:   id = s1, name = Ca_ex
% Warning species is not changed by either rules or reactions
	xdot(1) = ;
	
% Species:   id = s2, name = Ca_s, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_re4) + (-1.0 * reaction_re7);
	
% Species:   id = s3, name = Ca_c, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_re3) + ( 1.0 * reaction_re7) + (-1.0 * reaction_re8) + (-1.0 * reaction_re9) + ( 1.0 * reaction_re10) + (-1.0 * reaction_re12);
	
% Species:   id = s4, name = Ca_B, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_re3);
	
% Species:   id = s5, name = s5, affected by kineticLaw
	xdot(5) = (-1.0 * reaction_re4);
	
% Species:   id = s6, name = IP3, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_re5) + (-1.0 * reaction_re6);
	
% Species:   id = s7, name = s7, affected by kineticLaw
	xdot(7) = (-1.0 * reaction_re5);
	
% Species:   id = s8, name = s8, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_re6);
	
% Species:   id = s9, name = s9, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_re8) + ( 1.0 * reaction_re12);
	
% Species:   id = s10, name = s10, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_re9);
	
% Species:   id = s11, name = s11, affected by kineticLaw
	xdot(11) = (-1.0 * reaction_re10);
	
% Species:   id = s12, name = TimeT, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_re11);
	
% Species:   id = s13, name = s13, affected by kineticLaw
	xdot(13) = (-1.0 * reaction_re11);
	
% Species:   id = s14, name = PDK1, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_re66) + (-1.0 * reaction_re67);
	
% Species:   id = s15, name = PP2A
% Warning species is not changed by either rules or reactions
	xdot(15) = ;
	
% Species:   id = s16, name = AKT, affected by kineticLaw
	xdot(16) = (-1.0 * reaction_re60) + ( 1.0 * reaction_re65);
	
% Species:   id = s17, name = PI3P, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_re58) + (-1.0 * reaction_re59) + (-1.0 * reaction_re60) + ( 1.0 * reaction_re65);
	
% Species:   id = s18, name = PTEN
% Warning species is not changed by either rules or reactions
	xdot(18) = ;
	
% Species:   id = s19, name = PIP2, affected by kineticLaw
	xdot(19) = (-1.0 * reaction_re58) + ( 1.0 * reaction_re59);
	
% Species:   id = s20, name = p-PI3K, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_re57);
	
% Species:   id = s21, name = s3, affected by kineticLaw
	xdot(21) = (-1.0 * reaction_re68);
	
% Species:   id = s22, name = PI3K, affected by kineticLaw
	xdot(22) = (-1.0 * reaction_re57);
	
% Species:   id = s23, name = Time, affected by kineticLaw
	xdot(23) = ( 1.0 * reaction_re68);
	
% Species:   id = s24, name = PDK2
% Warning species is not changed by either rules or reactions
	xdot(24) = ;
	
% Species:   id = s25, name = PDK1_cyto, affected by kineticLaw
	xdot(25) = (-1.0 * reaction_re66) + ( 1.0 * reaction_re67);
	
% Species:   id = s26, name = p-AKT:PI3P, affected by kineticLaw
	xdot(26) = ( 1.0 * reaction_re61) + (-1.0 * reaction_re62) + (-1.0 * reaction_re63) + ( 1.0 * reaction_re64);
	
% Species:   id = s27, name = pp-AKT:PI3P, affected by kineticLaw
	xdot(27) = ( 1.0 * reaction_re62) + (-1.0 * reaction_re64) + (-1.0 * reaction_re65);
	
% Species:   id = s28, name = AKT:PI3P, affected by kineticLaw
	xdot(28) = ( 1.0 * reaction_re60) + (-1.0 * reaction_re61) + ( 1.0 * reaction_re63);
	
% Species:   id = s35, name = s35, affected by kineticLaw
	xdot(29) = ( 1.0 * reaction_re120);
	
% Species:   id = s37, name = s37, affected by kineticLaw
	xdot(30) = (-1.0 * reaction_re121);
	
% Species:   id = s38, name = pre_time, affected by kineticLaw
	xdot(31) = (-1.0 * reaction_re122);
	
% Species:   id = s39, name = Time, affected by kineticLaw
	xdot(32) = ( 1.0 * reaction_re122);
	
% Species:   id = s42, name = AP-1, affected by kineticLaw
	xdot(33) = (-1.0 * reaction_re127) + ( 1.0 * reaction_re128);
	
% Species:   id = s43, name = pp-JNKK, affected by kineticLaw
	xdot(34) = (-1.0 * reaction_re123) + ( 1.0 * reaction_re124);
	
% Species:   id = s44, name = pp-JNK, affected by kineticLaw
	xdot(35) = (-1.0 * reaction_re125) + ( 1.0 * reaction_re126);
	
% Species:   id = s45, name = eNOS-CaM-Ca4, affected by kineticLaw
	xdot(36) = ( 1.0 * reaction_re37) + (-1.0 * reaction_re50) + (-1.0 * reaction_re51) + (-1.0 * reaction_re132);
	
% Species:   id = s47, name = CaM-Ca4, affected by kineticLaw
	xdot(37) = (-1.0 * reaction_re37) + ( 1.0 * reaction_re42) + ( 1.0 * reaction_re132) + ( 1.0 * reaction_re138) + ( 1.0 * reaction_re139);
	
% Species:   id = s48, name = CaM-Ca2, affected by kineticLaw
	xdot(38) = (-1.0 * reaction_re38) + ( 1.0 * reaction_re41) + (-1.0 * reaction_re42) + ( 1.0 * reaction_re72) + ( 1.0 * reaction_re133) + ( 1.0 * reaction_re136) + ( 1.0 * reaction_re137);
	
% Species:   id = s49, name = KLF2, affected by kineticLaw
	xdot(39) = ( 1.0 * reaction_re129);
	
% Species:   id = s50, name = eNOS-CaM-Ca2, affected by kineticLaw
	xdot(40) = ( 1.0 * reaction_re38) + ( 1.0 * reaction_re50) + ( 1.0 * reaction_re53) + (-1.0 * reaction_re133);
	
% Species:   id = s51, name = eNOS-Cav-1, affected by kineticLaw
	xdot(41) = (-1.0 * reaction_re37) + (-1.0 * reaction_re38) + ( 1.0 * reaction_re71) + ( 1.0 * reaction_re121) + (-1.0 * reaction_re131);
	
% Species:   id = s52, name = Calmodulin, affected by kineticLaw
	xdot(42) = (-1.0 * reaction_re41);
	
% Species:   id = s57, name = Hsp90, affected by kineticLaw
	xdot(43) = (-1.0 * reaction_re51) + ( 1.0 * reaction_re53) + ( 1.0 * reaction_re71) + ( 1.0 * reaction_re134) + ( 1.0 * reaction_re135) + ( 1.0 * reaction_re136) + ( 1.0 * reaction_re137) + ( 1.0 * reaction_re138) + ( 1.0 * reaction_re139);
	
% Species:   id = s58, name = Hsp90-eNOS-CaM-Ca4, affected by kineticLaw
	xdot(44) = ( 1.0 * reaction_re51) + (-1.0 * reaction_re52) + (-1.0 * reaction_re55) + (-1.0 * reaction_re138);
	
% Species:   id = s60, name = Hsp90-p-eNOS-CaM-Ca4, affected by kineticLaw
	xdot(45) = (-1.0 * reaction_re54) + ( 1.0 * reaction_re55) + (-1.0 * reaction_re139);
	
% Species:   id = s61, name = Hsp90-eNOS-CaM-Ca2, affected by kineticLaw
	xdot(46) = ( 1.0 * reaction_re52) + (-1.0 * reaction_re53) + (-1.0 * reaction_re56) + (-1.0 * reaction_re136);
	
% Species:   id = s62, name = Hsp90-p-eNOS-CaM-Ca2, affected by kineticLaw
	xdot(47) = ( 1.0 * reaction_re54) + ( 1.0 * reaction_re56) + (-1.0 * reaction_re72) + (-1.0 * reaction_re137);
	
% Species:   id = s63, name = L-Arg, affected by kineticLaw
	xdot(48) = (-1.0 * reaction_re69);
	
% Species:   id = s64, name = NO, affected by kineticLaw
	xdot(49) = ( 1.0 * reaction_re69);
	
% Species:   id = s65, name = Hsp90-p-eNOS, affected by kineticLaw
	xdot(50) = (-1.0 * reaction_re70) + ( 1.0 * reaction_re72) + (-1.0 * reaction_re135);
	
% Species:   id = s66, name = Hsp90-eNOS, affected by kineticLaw
	xdot(51) = ( 1.0 * reaction_re70) + (-1.0 * reaction_re71) + (-1.0 * reaction_re134);
	
% Species:   id = s91, name = Shc, affected by kineticLaw
	xdot(52) = (-1.0 * reaction_re104) + ( 1.0 * reaction_re108);
	
% Species:   id = s92, name = p-Src, affected by kineticLaw
	xdot(53) = ( 1.0 * reaction_re103);
	
% Species:   id = s93, name = p-FAK, affected by kineticLaw
	xdot(54) = ( 1.0 * reaction_re102) + (-1.0 * reaction_re104) + ( 1.0 * reaction_re107);
	
% Species:   id = s94, name = Src, affected by kineticLaw
	xdot(55) = (-1.0 * reaction_re103);
	
% Species:   id = s95, name = FAK, affected by kineticLaw
	xdot(56) = (-1.0 * reaction_re102);
	
% Species:   id = s96, name = JNKK, affected by kineticLaw
	xdot(57) = (-1.0 * reaction_re116) + ( 1.0 * reaction_re117);
	
% Species:   id = s97, name = MEKK1, affected by kineticLaw
	xdot(58) = (-1.0 * reaction_re114) + ( 1.0 * reaction_re115);
	
% Species:   id = s98, name = p-Shc, affected by kineticLaw
	xdot(59) = (-1.0 * reaction_re108) + ( 1.0 * reaction_re109);
	
% Species:   id = s99, name = JNK, affected by kineticLaw
	xdot(60) = (-1.0 * reaction_re118) + ( 1.0 * reaction_re119);
	
% Species:   id = s100, name = p-JNKK, affected by kineticLaw
	xdot(61) = ( 1.0 * reaction_re116) + (-1.0 * reaction_re117) + ( 1.0 * reaction_re123) + (-1.0 * reaction_re124);
	
% Species:   id = s101, name = p-MEKK1, affected by kineticLaw
	xdot(62) = ( 1.0 * reaction_re114) + (-1.0 * reaction_re115);
	
% Species:   id = s102, name = Ras:GTP, affected by kineticLaw
	xdot(63) = ( 1.0 * reaction_re112) + (-1.0 * reaction_re113);
	
% Species:   id = s103, name = Ras:GDP, affected by kineticLaw
	xdot(64) = (-1.0 * reaction_re112) + ( 1.0 * reaction_re113);
	
% Species:   id = s104, name = p-JNK, affected by kineticLaw
	xdot(65) = ( 1.0 * reaction_re118) + (-1.0 * reaction_re119) + ( 1.0 * reaction_re125) + (-1.0 * reaction_re126);
	
% Species:   id = s105, name = KLF2, affected by kineticLaw
	xdot(66) = (-1.0 * reaction_re129);
	
% Species:   id = s106, name = eNOS, affected by kineticLaw
	xdot(67) = ( 1.0 * reaction_re110) + (-1.0 * reaction_re120);
	
% Species:   id = s107, name = aAP-1, affected by kineticLaw
	xdot(68) = ( 1.0 * reaction_re127) + (-1.0 * reaction_re128);
	
% Species:   id = s108, name = eNOS, affected by kineticLaw
	xdot(69) = (-1.0 * reaction_re111);
	
% Species:   id = s110, name = p-FAK:Shc, affected by kineticLaw
	xdot(70) = ( 1.0 * reaction_re104) + (-1.0 * reaction_re105);
	
% Species:   id = s111, name = Grb2:Sos, affected by kineticLaw
	xdot(71) = (-1.0 * reaction_re106) + ( 1.0 * reaction_re109);
	
% Species:   id = s112, name = p-FAK:p-Shc, affected by kineticLaw
	xdot(72) = ( 1.0 * reaction_re105) + (-1.0 * reaction_re106);
	
% Species:   id = s113, name = p-FAK:p-Shc:Grb2:Sos, affected by kineticLaw
	xdot(73) = ( 1.0 * reaction_re106) + (-1.0 * reaction_re107);
	
% Species:   id = s114, name = p-Shc:Grb2:Sos, affected by kineticLaw
	xdot(74) = ( 1.0 * reaction_re107) + (-1.0 * reaction_re109);
	
% Species:   id = s115, name = eNOS, affected by kineticLaw
	xdot(75) = (-1.0 * reaction_re110) + ( 1.0 * reaction_re111);
	
% Species:   id = s116, name = sa49_degraded, affected by kineticLaw
	xdot(76) = ( 1.0 * reaction_re131);
	
% Species:   id = s117, name = s117, affected by kineticLaw
	xdot(77) = ( 1.0 * reaction_re132) + ( 1.0 * reaction_re133);
	
% Species:   id = s118, name = s118, affected by kineticLaw
	xdot(78) = ( 1.0 * reaction_re134) + ( 1.0 * reaction_re135);
	
% Species:   id = s119, name = Shear Stress
% Warning species is not changed by either rules or reactions
	xdot(79) = ;
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


