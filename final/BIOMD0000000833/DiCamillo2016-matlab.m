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
% Model name = DiCamillo2016 - Insulin signalling pathway - Rule-based model
%
% isInstanceOf http://identifiers.org/biomodels.db/MODEL1604100005
% isInstanceOf http://identifiers.org/taxonomy/9606
% isInstanceOf http://identifiers.org/go/GO:0008286
% isDescribedBy http://identifiers.org/go/GO:0008286
% isDescribedBy http://identifiers.org/pubmed/27245161
% is http://identifiers.org/biomodels.db/MODEL1604100005
% is http://identifiers.org/biomodels.db/BIOMD0000000833
%


function main()
%Initial conditions vector
	x0=zeros(61,1);
	x0(1) = 6020000.0;
	x0(2) = 270900.0;
	x0(3) = 30100.0;
	x0(4) = 541800.0;
	x0(5) = 361200.0;
	x0(6) = 541924.32;
	x0(7) = 538549.2;
	x0(8) = 1679.58;
	x0(9) = 1571.22;
	x0(10) = 180600.0;
	x0(11) = 5.20128E7;
	x0(12) = 2167200.0;
	x0(13) = 286212.0;
	x0(14) = 586915.06;
	x0(15) = 180600.0;
	x0(16) = 719531.94;
	x0(17) = 537956.81;
	x0(18) = 409307.87;
	x0(19) = 426953.77;
	x0(20) = 361200.0;
	x0(21) = 90300.0;
	x0(22) = 541800.0;
	x0(23) = 935508.0;
	x0(24) = 270900.0;
	x0(25) = 180600.0;
	x0(26) = 361200.0;
	x0(27) = 722400.0;
	x0(28) = 1.0;
	x0(29) = 1.0;
	x0(30) = 0.0;
	x0(31) = 3606805.2;
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
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 0.0;
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

% Compartment: id = cell, name = Vol_cell, constant
	compartment_cell=1.0;
% Parameter:   id =  NA, name = NA
	global_par_NA=6.02E23;
% Parameter:   id =  Vo, name = Vo
	global_par_Vo=1.0E-10;
% Parameter:   id =  V, name = V
	global_par_V=3.0E-12;
% Parameter:   id =  nM, name = nM
	global_par_nM=1.0E-9;
% Parameter:   id =  SF2, name = SF2
	global_par_SF2=28621.0;
% Parameter:   id =  PTP, name = PTP
	global_par_PTP=1.0;
% Parameter:   id =  PTEN, name = PTEN
	global_par_PTEN=1.0;
% Parameter:   id =  SHIP, name = SHIP
	global_par_SHIP=1.0;
% Parameter:   id =  I_init, name = I_init
	global_par_I_init=0.0;
% Parameter:   id =  Amino_Acids_input, name = Amino_Acids_input
	global_par_Amino_Acids_input=0.0;
% Parameter:   id =  SynthG4_init, name = SynthG4_init
	global_par_SynthG4_init=1.0;
% Parameter:   id =  SynthIR_init, name = SynthIR_init
	global_par_SynthIR_init=1.0;
% Parameter:   id =  k_1, name = k_1
	global_par_k_1=0.2;
% Parameter:   id =  k_2, name = k_2
	global_par_k_2=20.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=2500.0;
% Parameter:   id =  k_3, name = k_3
	global_par_k_3=0.2;
% Parameter:   id =  Kd_akt, name = Kd_akt
	global_par_Kd_akt=2.955E12;
% Parameter:   id =  Kd_pkc, name = Kd_pkc
	global_par_Kd_pkc=2.955E12;
% Parameter:   id =  Kd_p70, name = Kd_p70
	global_par_Kd_p70=4.0E8;
% Parameter:   id =  n, name = n
	global_par_n=4.0;
% Parameter:   id =  n_p70, name = n_p70
	global_par_n_p70=2.0;
% Parameter:   id =  Vmax, name = Vmax
	global_par_Vmax=1.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=3.3333333E-4;
% Parameter:   id =  k_4, name = k_4
	global_par_k_4=0.003;
% Parameter:   id =  k4p, name = k4p
	global_par_k4p=0.0021;
% Parameter:   id =  k_4p, name = k_4p
	global_par_k_4p=2.1E-4;
% Parameter:   id =  k_5, name = k_5
	global_par_k_5=0.0012836059;
% Parameter:   id =  k5, name = k5
	global_par_k5=38.636537;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.461;
% Parameter:   id =  k7, name = k7
	global_par_k7=4.16;
% Parameter:   id =  k_7, name = k_7
	global_par_k_7=2.22;
% Parameter:   id =  k7p, name = k7p
	global_par_k7p=0.34657359;
% Parameter:   id =  k_7p, name = k_7p
	global_par_k_7p=1.386;
% Parameter:   id =  k8, name = k8
	global_par_k8=5.18091E-6;
% Parameter:   id =  k_8, name = k_8
	global_par_k_8=10.0;
% Parameter:   id =  k9s, name = k9s
	global_par_k9s=1.3862944;
% Parameter:   id =  k9a, name = k9a
	global_par_k9a=1.99817E-5;
% Parameter:   id =  k_10, name = k_10
	global_par_k_10=2.7725887;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.34657359;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.34657359;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.0069583333;
% Parameter:   id =  k_13, name = k_13
	global_par_k_13=0.167;
% Parameter:   id =  k13p, name = k13p
	global_par_k13p=0.104375;
% Parameter:   id =  k_14, name = k_14
	global_par_k_14=0.001155;
% Parameter:   id =  p15, name = p15
	global_par_p15=6.1129552E-7;
% Parameter:   id =  p_15, name = p_15
	global_par_p_15=10.0;
% Parameter:   id =  k15, name = k15
	global_par_k15=12.0;
% Parameter:   id =  k_16, name = k_16
	global_par_k_16=0.0107215;
% Parameter:   id =  k17, name = k17
	global_par_k17=4.592E-4;
% Parameter:   id =  k_19, name = k_19
	global_par_k_19=0.0183735;
% Parameter:   id =  k_20, name = k_20
	global_par_k_20=0.69314718;
% Parameter:   id =  k_21, name = k_21
	global_par_k_21=1.7650066E-5;
% Parameter:   id =  kcat24, name = kcat24
	global_par_kcat24=399.6;
% Parameter:   id =  alpha24, name = alpha24
	global_par_alpha24=2.5E-4;
% Parameter:   id =  kcat28, name = kcat28
	global_par_kcat28=319.8;
% Parameter:   id =  kcat29, name = kcat29
	global_par_kcat29=1200000.0;
% Parameter:   id =  kcat30, name = kcat30
	global_par_kcat30=6.0;
% Parameter:   id =  kcat31, name = kcat31
	global_par_kcat31=199.8;
% Parameter:   id =  kcat32, name = kcat32
	global_par_kcat32=39.96;
% Parameter:   id =  beta32, name = beta32
	global_par_beta32=2.0;
% Parameter:   id =  kcat33, name = kcat33
	global_par_kcat33=7.98;
% Parameter:   id =  kcat35, name = kcat35
	global_par_kcat35=19.98;
% Parameter:   id =  kcat36, name = kcat36
	global_par_kcat36=39.96;
% Parameter:   id =  kcat39, name = kcat39
	global_par_kcat39=2.796;
% Parameter:   id =  k_39, name = k_39
	global_par_k_39=0.003996;
% Parameter:   id =  k41, name = k41
	global_par_k41=39.96;
% Parameter:   id =  u, name = u
	global_par_u=1806.0;
% Parameter:   id =  IR_free_memb_init, name = IR_free_memb_init
	global_par_IR_free_memb_init=270900.0;
% Parameter:   id =  IR_free_cyt_init, name = IR_free_cyt_init
	global_par_IR_free_cyt_init=30100.0;
% Parameter:   id =  IRS1_init, name = IRS1_init
	global_par_IRS1_init=541800.0;
% Parameter:   id =  PI3K_init, name = PI3K_init
	global_par_PI3K_init=361200.0;
% Parameter:   id =  PI45_init, name = PI45_init
	global_par_PI45_init=538549.2;
% Parameter:   id =  PI345_init, name = PI345_init
	global_par_PI345_init=1679.58;
% Parameter:   id =  PI34_init, name = PI34_init
	global_par_PI34_init=1571.22;
% Parameter:   id =  PKC_init, name = PKC_init
	global_par_PKC_init=180600.0;
% Parameter:   id =  GLUT4_memb_init, name = GLUT4_memb_init
	global_par_GLUT4_memb_init=2167200.0;
% Parameter:   id =  GLUT4_cyt_init, name = GLUT4_cyt_init
	global_par_GLUT4_cyt_init=5.20128E7;
% Parameter:   id =  AMPK_init, name = AMPK_init
	global_par_AMPK_init=586913.6744;
% Parameter:   id =  mTORC1_init, name = mTORC1_init
	global_par_mTORC1_init=719531.94;
% Parameter:   id =  mTORC2_init, name = mTORC2_init
	global_par_mTORC2_init=537957.4539;
% Parameter:   id =  p70S6K_init, name = p70S6K_init
	global_par_p70S6K_init=409308.921;
% Parameter:   id =  TSC1_TSC2_pT1462_init, name = TSC1_TSC2_pT1462_init
	global_par_TSC1_TSC2_pT1462_init=426953.7675;
% Parameter:   id =  PI3K_variant_init, name = PI3K_variant_init
	global_par_PI3K_variant_init=541924.3245;
% Parameter:   id =  GS_init, name = GS_init
	global_par_GS_init=361200.0;
% Parameter:   id =  RasGAP_init, name = RasGAP_init
	global_par_RasGAP_init=90300.0;
% Parameter:   id =  SHP2_init, name = SHP2_init
	global_par_SHP2_init=541800.0;
% Parameter:   id =  iSrc_init, name = iSrc_init
	global_par_iSrc_init=935508.0;
% Parameter:   id =  RasGDP_init, name = RasGDP_init
	global_par_RasGDP_init=270900.0;
% Parameter:   id =  Raf_init, name = Raf_init
	global_par_Raf_init=180600.0;
% Parameter:   id =  Mek_init, name = Mek_init
	global_par_Mek_init=361200.0;
% Parameter:   id =  Erk_init, name = Erk_init
	global_par_Erk_init=722400.0;
% Parameter:   id =  Akt_init, name = Akt_init
	global_par_Akt_init=180600.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=9.96677740863787E-7;
% Parameter:   id =  k2, name = k2
	global_par_k2=9.96677740863787E-7;
% Parameter:   id =  k_9, name = k_9
	global_par_k_9=42.0360237419355;
% Parameter:   id =  k9b, name = k9b
	global_par_k9b=0.131098263179074;
% Parameter:   id =  k10, name = k10
	global_par_k10=2.9638017137931;
% Parameter:   id =  k_11, name = k_11
	global_par_k_11=3.4657359;
% Parameter:   id =  k_12, name = k_12
	global_par_k_12=3.4657359;
% Parameter:   id =  k14, name = k14
	global_par_k14=60074.784;
% Parameter:   id =  k16, name = k16
	global_par_k16=3.42324167569267E-4;
% Parameter:   id =  k_17, name = k_17
	global_par_k_17=0.0341513285744639;
% Parameter:   id =  k_18, name = k_18
	global_par_k_18=3.7263547744663E-7;
% Parameter:   id =  k18, name = k18
	global_par_k18=1.48142971943678E-8;
% Parameter:   id =  k19, name = k19
	global_par_k19=1.31146011669753E-5;
% Parameter:   id =  k20, name = k20
	global_par_k20=3.92661376963177E-6;
% Parameter:   id =  k21, name = k21
	global_par_k21=1.27734530589427E-6;
% Parameter:   id =  k22, name = k22
	global_par_k22=2.21262458471761E-9;
% Parameter:   id =  k_22, name = k_22
	global_par_k_22=7.992;
% Parameter:   id =  Km24, name = v25
	global_par_Km24=198660.0;
% Parameter:   id =  V25, name = V25
	global_par_V25=721677.6;
% Parameter:   id =  Km25, name = Km25
	global_par_Km25=90300.0;
% Parameter:   id =  k26, name = k26
	global_par_k26=2.21262458471761E-5;
% Parameter:   id =  k_26, name = k_26
	global_par_k_26=3996.0;
% Parameter:   id =  k27, name = k27
	global_par_k27=2.21262458471761E-5;
% Parameter:   id =  k_27, name = k_27
	global_par_k_27=39.96;
% Parameter:   id =  Km28, name = Km28
	global_par_Km28=90300.0;
% Parameter:   id =  bRasGAP, name = bRasGAP
	global_par_bRasGAP=0.01806;
% Parameter:   id =  Km29, name = Km29
	global_par_Km29=90300.0;
% Parameter:   id =  Km30, name = Km30
	global_par_Km30=722400.0;
% Parameter:   id =  Km31, name = Km31
	global_par_Km31=18060.0;
% Parameter:   id =  PKA, name = PKA
	global_par_PKA=180600.0;
% Parameter:   id =  Km32, name = Km32
	global_par_Km32=1.806E7;
% Parameter:   id =  alpha32, name = alpha32
	global_par_alpha32=3.32225913621262E-8;
% Parameter:   id =  Km33, name = Km33
	global_par_Km33=90300.0;
% Parameter:   id =  V34, name = V34
	global_par_V34=1798776.0;
% Parameter:   id =  Km34, name = Km34
	global_par_Km34=1219589.994;
% Parameter:   id =  Km35, name = Km35
	global_par_Km35=903000.0;
% Parameter:   id =  Km36, name = Km36
	global_par_Km36=903000.0;
% Parameter:   id =  V37, name = V37
	global_par_V37=3608388.0;
% Parameter:   id =  Km37, name = Km37
	global_par_Km37=903000.0;
% Parameter:   id =  Km38, name = Km38
	global_par_Km38=903000.0;
% Parameter:   id =  V38, name = V38
	global_par_V38=2528038.8;
% Parameter:   id =  Km39, name = Km39
	global_par_Km39=9030000.0;
% Parameter:   id =  V40, name = V40
	global_par_V40=3.608388E7;
% Parameter:   id =  Km40, name = Km40
	global_par_Km40=258799.8;
% Parameter:   id =  k42, name = k42
	global_par_k42=4.41860465116279E-4;
% Parameter:   id =  _rateLaw1, name = _rateLaw1
	global_par__rateLaw1=42.0360237419355;
% Parameter:   id =  _rateLaw2, name = _rateLaw2
	global_par__rateLaw2=2.7725887;
% Parameter:   id =  IRS1_unphos, name = IRS1_unphos
% Parameter:   id =  IRS1_pY, name = IRS1_pY
% Parameter:   id =  IRS1_pS636, name = IRS1_pS636
% Parameter:   id =  IRS1_pYtot, name = IRS1_pYtot
% Parameter:   id =  IRS1_PI3K_complex, name = IRS1_PI3K_complex
% Parameter:   id =  PI3K_variant_p, name = PI3K_variant_p
% Parameter:   id =  Akt_pT, name = Akt_pT
% Parameter:   id =  Akt_pS, name = Akt_pS
% Parameter:   id =  mTORC1, name = mTORC1
% Parameter:   id =  mTORC1_pS2448, name = mTORC1_pS2448
% Parameter:   id =  p70S6K_pT389, name = p70S6K_pT389
% Parameter:   id =  TSC1_TSC2_pS1387, name = TSC1_TSC2_pS1387
% Parameter:   id =  TSC1_TSC2_pT1462, name = TSC1_TSC2_pT1462
% Parameter:   id =  mTORC2_pS2481, name = mTORC2_pS2481
% Parameter:   id =  PI345, name = PI345
% Parameter:   id =  PKC_pT410, name = PKC_pT410
% Parameter:   id =  GLUT4_memb, name = GLUT4_memb
% Parameter:   id =  IR_unphos_memb, name = IR_unphos_memb
% Parameter:   id =  IR_bound_memb, name = IR_bound_memb
% Parameter:   id =  IR_bound1_memb, name = IR_bound1_memb
% Parameter:   id =  IR_bound2_memb, name = IR_bound2_memb
% Parameter:   id =  IR_phos_memb, name = IR_phos_memb
% Parameter:   id =  Insulin, name = Insulin
% Parameter:   id =  PI34, name = PI34
% Parameter:   id =  GLUT4_cyt, name = GLUT4_cyt
% Parameter:   id =  Aminoacids, name = Aminoacids
% Parameter:   id =  AMPK_pT172, name = AMPK_pT172
% Parameter:   id =  Akt_pT309, name = Akt_pT309
% Parameter:   id =  Akt_pS474, name = Akt_pS474
% Parameter:   id =  Akt_pp, name = Akt_pp
% Parameter:   id =  iSrc, name = iSrc
% Parameter:   id =  aSrc, name = aSrc
% Parameter:   id =  RasGDP, name = RasGDP
% Parameter:   id =  IRS1_GS_complex, name = IRS1_GS_complex
% Parameter:   id =  RasGTP, name = RasGTP
% Parameter:   id =  IR_RasGAP_complex, name = IR_RasGAP_complex
% Parameter:   id =  Raf, name = Raf
% Parameter:   id =  aRaf, name = aRaf
% Parameter:   id =  aaRaf, name = aaRaf
% Parameter:   id =  Mek, name = Mek
% Parameter:   id =  Mek_pS218_S222, name = Mek_pS218_S222
% Parameter:   id =  Erk, name = Erk
% Parameter:   id =  Erk_pT202_T185, name = Erk_pT202_T185
% Parameter:   id =  Erk_ppY204_Y187, name = Erk_ppY204_Y187
% Parameter:   id =  GS, name = GS
% Parameter:   id =  iGS, name = iGS
% Parameter:   id =  IRS1_SHP2_complex, name = IRS1_SHP2_complex
% Parameter:   id =  f_3, name = f_3
% Parameter:   id =  f6, name = f6
% Parameter:   id =  f7, name = f7
% Parameter:   id =  f_7, name = f_7
% Parameter:   id =  f7p, name = f7p
% Parameter:   id =  f9, name = f9
% Parameter:   id =  f11, name = f11
% Parameter:   id =  f12, name = f12
% Parameter:   id =  f13, name = f13
% Parameter:   id =  fp15, name = fp15
% Parameter:   id =  f15, name = f15
% Parameter:   id =  f16, name = f16
% Parameter:   id =  f17, name = f17
% Parameter:   id =  f_18, name = f_18
% Parameter:   id =  f18, name = f18
% Parameter:   id =  f19, name = f19
% Parameter:   id =  f20, name = f20
% Parameter:   id =  f_21, name = f_21
% Parameter:   id =  f21, name = f21
% Parameter:   id =  f24, name = f24
% Parameter:   id =  f25, name = f25
% Parameter:   id =  f28, name = f28
% Parameter:   id =  f29, name = f29
% Parameter:   id =  f30, name = f30
% Parameter:   id =  f31, name = f31
% Parameter:   id =  f32, name = f32
% Parameter:   id =  f33, name = f33
% Parameter:   id =  f34, name = f34
% Parameter:   id =  f35, name = f35
% Parameter:   id =  f36, name = f36
% Parameter:   id =  f37, name = f37
% Parameter:   id =  f38, name = f38
% Parameter:   id =  f39, name = f39
% Parameter:   id =  f_39, name = f_39
% Parameter:   id =  f40, name = f40
% Parameter:   id =  f42, name = f42
% assignmentRule: variable = IRS1_GS_complex
	global_par_IRS1_GS_complex=x(52)+x(59);
% assignmentRule: variable = Akt_pS474
	global_par_Akt_pS474=0+x(38);
% assignmentRule: variable = IRS1_unphos
	global_par_IRS1_unphos=0+x(4);
% assignmentRule: variable = GLUT4_cyt
	global_par_GLUT4_cyt=0+x(11);
% assignmentRule: variable = RasGDP
	global_par_RasGDP=0+x(24);
% assignmentRule: variable = IRS1_pYtot
	global_par_IRS1_pYtot=x(32)+x(50)+x(52)+x(53)+x(59);
% assignmentRule: variable = Aminoacids
	global_par_Aminoacids=0+x(13);
% assignmentRule: variable = f18
	global_par_f18=global_par_k18*global_par_Aminoacids;
% assignmentRule: variable = TSC1_TSC2_pS1387
	global_par_TSC1_TSC2_pS1387=0+x(39);
% assignmentRule: variable = f_18
	global_par_f_18=global_par_k_18*global_par_TSC1_TSC2_pS1387;
% assignmentRule: variable = IR_bound2_memb
	global_par_IR_bound2_memb=x(56)+x(61);
% assignmentRule: variable = mTORC2_pS2481
	global_par_mTORC2_pS2481=0+x(41);
% assignmentRule: variable = IR_unphos_memb
	global_par_IR_unphos_memb=0+x(2);
% assignmentRule: variable = IR_bound1_memb
	global_par_IR_bound1_memb=x(49)+x(58);
% assignmentRule: variable = TSC1_TSC2_pT1462
	global_par_TSC1_TSC2_pT1462=0+x(19);
% assignmentRule: variable = p70S6K_pT389
	global_par_p70S6K_pT389=0+x(42);
% assignmentRule: variable = Akt_pS
	global_par_Akt_pS=x(38)+x(51);
% assignmentRule: variable = IRS1_pS636
	global_par_IRS1_pS636=0+x(33);
% assignmentRule: variable = PI34
	global_par_PI34=0+x(9);
% assignmentRule: variable = Akt_pT
	global_par_Akt_pT=x(34)+x(51);
% assignmentRule: variable = f40
	global_par_f40=global_par_V40/(global_par_Km40+global_par_IRS1_GS_complex);
% assignmentRule: variable = mTORC1_pS2448
	global_par_mTORC1_pS2448=0+x(40);
% assignmentRule: variable = f20
	global_par_f20=global_par_k20*global_par_mTORC1_pS2448;
% assignmentRule: variable = Mek_pS218_S222
	global_par_Mek_pS218_S222=0+x(46);
% assignmentRule: variable = PI345
	global_par_PI345=0+x(8);
% assignmentRule: variable = f11
	global_par_f11=global_par_k11*(global_par_PI345-global_par_PI345_init)/(global_par_PI345_init*10-global_par_PI345_init);
% assignmentRule: variable = GLUT4_memb
	global_par_GLUT4_memb=0+x(12);
% assignmentRule: variable = f12
	global_par_f12=global_par_k12*(global_par_PI345-global_par_PI345_init)/(global_par_PI345_init*10-global_par_PI345_init);
% assignmentRule: variable = Akt_pT309
	global_par_Akt_pT309=0+x(34);
% assignmentRule: variable = mTORC1
	global_par_mTORC1=0+x(16);
% assignmentRule: variable = AMPK_pT172
	global_par_AMPK_pT172=0+x(37);
% assignmentRule: variable = IRS1_pY
	global_par_IRS1_pY=0+x(32);
% assignmentRule: variable = f16
	global_par_f16=global_par_k16*global_par_IRS1_pY;
% assignmentRule: variable = Akt_pp
	global_par_Akt_pp=0+x(51);
% assignmentRule: variable = IR_bound_memb
	global_par_IR_bound_memb=x(49)+x(56)+x(58)+x(61);
% assignmentRule: variable = PKC_pT410
	global_par_PKC_pT410=0+x(35);
% assignmentRule: variable = f13
	global_par_f13=global_par_k13+global_par_k13p*(0.2*(global_par_Akt_pT309+global_par_Akt_pS474+global_par_Akt_pp)/global_par_Akt_init+0.8*global_par_PKC_pT410/global_par_PKC_init);
% assignmentRule: variable = f_21
	global_par_f_21=global_par_k_21*global_par_Akt_pT;
% assignmentRule: variable = f17
	global_par_f17=global_par_k17*global_par_mTORC2_pS2481;
% assignmentRule: variable = f28
	global_par_f28=global_par_kcat28*global_par_IRS1_GS_complex/(global_par_Km28+global_par_RasGDP);
% assignmentRule: variable = f21
	global_par_f21=global_par_k21*global_par_AMPK_pT172;
% assignmentRule: variable = iSrc
	global_par_iSrc=0+x(23);
% assignmentRule: variable = IR_phos_memb
	global_par_IR_phos_memb=x(49)+x(56)+x(58)+x(61);
% assignmentRule: variable = f24
	global_par_f24=0.1/10*global_par_kcat24*global_par_alpha24*global_par_IR_phos_memb/(global_par_Km24+global_par_iSrc);
% assignmentRule: variable = fp15
	global_par_fp15=global_par_p15*global_par_IR_phos_memb;
% assignmentRule: variable = Insulin
	global_par_Insulin=0+x(1);
% assignmentRule: variable = RasGTP
	global_par_RasGTP=0+x(44);
% assignmentRule: variable = f_39
	global_par_f_39=global_par_k_39;
% assignmentRule: variable = f15
	global_par_f15=global_par_k15*global_par_Vmax*global_par_p70S6K_pT389^global_par_n_p70/(global_par_Kd_p70+global_par_p70S6K_pT389^global_par_n_p70);
% assignmentRule: variable = f34
	global_par_f34=global_par_V34/(global_par_Km34+global_par_Mek_pS218_S222);
% assignmentRule: variable = aRaf
	global_par_aRaf=0+x(45);
% assignmentRule: variable = Raf
	global_par_Raf=0+x(25);
% assignmentRule: variable = f30
	global_par_f30=global_par_kcat30*global_par_RasGTP/(global_par_Km30+global_par_Raf);
% assignmentRule: variable = aSrc
	global_par_aSrc=0+x(43);
% assignmentRule: variable = f25
	global_par_f25=global_par_V25/(global_par_Km25+global_par_aSrc);
% assignmentRule: variable = IRS1_PI3K_complex
	global_par_IRS1_PI3K_complex=x(50)+x(59);
% assignmentRule: variable = Mek
	global_par_Mek=0+x(26);
% assignmentRule: variable = f7p
	global_par_f7p=global_par_k7p*global_par_Vmax*global_par_PKC_pT410^global_par_n/(global_par_Kd_pkc+global_par_PKC_pT410^global_par_n);
% assignmentRule: variable = PI3K_variant_p
	global_par_PI3K_variant_p=0+x(36);
% assignmentRule: variable = f19
	global_par_f19=global_par_k19*global_par_PI3K_variant_p;
% assignmentRule: variable = aaRaf
	global_par_aaRaf=0+x(54);
% assignmentRule: variable = f32
	global_par_f32=global_par_kcat32*global_par_PKA/(global_par_Km32+global_par_aaRaf)+global_par_alpha32*(global_par_Akt_pT309+global_par_beta32*global_par_Akt_pp);
% assignmentRule: variable = f7
	global_par_f7=global_par_k7*global_par_IR_phos_memb/global_par_IR_free_memb_init;
% assignmentRule: variable = f6
	global_par_f6=global_par_k6*global_par_PTP*(1-global_par_Vmax/2*global_par_Akt_pT^global_par_n/(global_par_Kd_akt+global_par_Akt_pT^global_par_n));
% assignmentRule: variable = iGS
	global_par_iGS=0+x(48);
% assignmentRule: variable = IR_RasGAP_complex
	global_par_IR_RasGAP_complex=x(58)+x(61);
% assignmentRule: variable = f29
	global_par_f29=global_par_kcat29*(global_par_bRasGAP+global_par_IR_RasGAP_complex)/(global_par_Km29+global_par_RasGTP);
% assignmentRule: variable = f_7
	global_par_f_7=global_par_k_7*global_par_PTP*(1-global_par_Vmax/2*global_par_Akt_pT^global_par_n/(global_par_Kd_akt+global_par_Akt_pT^global_par_n));
% assignmentRule: variable = GS
	global_par_GS=0+x(20);
% assignmentRule: variable = Erk_ppY204_Y187
	global_par_Erk_ppY204_Y187=0+x(55);
% assignmentRule: variable = f39
	global_par_f39=global_par_kcat39*global_par_Erk_ppY204_Y187/(global_par_Km39+global_par_GS);
% assignmentRule: variable = f_3
	global_par_f_3=global_par_k_3*global_par_PTP*(1-global_par_Vmax/2*global_par_Akt_pT^global_par_n/(global_par_Kd_akt+global_par_Akt_pT^global_par_n));
% assignmentRule: variable = Erk_pT202_T185
	global_par_Erk_pT202_T185=0+x(47);
% assignmentRule: variable = f37
	global_par_f37=global_par_V37/(global_par_Km37+global_par_Erk_ppY204_Y187+global_par_Erk_pT202_T185*global_par_Km37/global_par_Km38);
% assignmentRule: variable = f38
	global_par_f38=global_par_V38/(global_par_Km38+global_par_Erk_pT202_T185+global_par_Erk_ppY204_Y187*global_par_Km38/global_par_Km37);
% assignmentRule: variable = Erk
	global_par_Erk=0+x(27);
% assignmentRule: variable = f36
	global_par_f36=global_par_kcat36*global_par_Mek_pS218_S222/(global_par_Km36+global_par_Erk_pT202_T185+global_par_Erk*global_par_Km36/global_par_Km35);
% assignmentRule: variable = f35
	global_par_f35=global_par_kcat35*global_par_Mek_pS218_S222/(global_par_Km35+global_par_Erk+global_par_Erk_pT202_T185*global_par_Km35/global_par_Km36);
% assignmentRule: variable = IRS1_SHP2_complex
	global_par_IRS1_SHP2_complex=0+x(53);
% assignmentRule: variable = f42
	global_par_f42=global_par_k42*global_par_IRS1_SHP2_complex;
% assignmentRule: variable = f31
	global_par_f31=global_par_kcat31*global_par_aSrc/(global_par_Km31+global_par_aRaf);
% assignmentRule: variable = f9
	global_par_f9=global_par_k9a*global_par_IRS1_PI3K_complex+global_par_k9b;
% assignmentRule: variable = f33
	global_par_f33=global_par_kcat33*global_par_aaRaf/(global_par_Km33+global_par_Mek);

% Reaction: id = R1, name = Receptor binding to 1st insulin molecule
	reaction_R1=compartment_cell*Function_for_R1(x(1), x(2), compartment_cell, global_par_k1);

% Reaction: id = R2, name = Free receptor internalization
	reaction_R2=compartment_cell*Function_for_R2(x(2), compartment_cell, global_par_k4);

% Reaction: id = R3, name = Free receptor externalization
	reaction_R3=compartment_cell*Function_for_R3(x(3), compartment_cell, global_par_k_4);

% Reaction: id = R4, name = receptor synthesis
	reaction_R4=compartment_cell*Function_for_R4(x(29), compartment_cell, global_par_k5);

% Reaction: id = R5, name = Receptor Degradation
	reaction_R5=compartment_cell*Function_for_R5(x(3), compartment_cell, global_par_k_5);

% Reaction: id = R6, name = IRS-1 phosphorylation in Tyr
	reaction_R6=compartment_cell*Function_for_R6(x(4), compartment_cell, global_par_f7);

% Reaction: id = R7, name = IRS-1 phosphorylation in Ser
	reaction_R7=compartment_cell*Function_for_R7(x(4), compartment_cell, global_par_f7p);

% Reaction: id = R8, name = Lipid formation 145
	reaction_R8=compartment_cell*Function_for_R8(x(7), compartment_cell, global_par_f9);

% Reaction: id = R9, name = PI45 formation
	reaction_R9=compartment_cell*Function_for_R9(x(8), global_par__rateLaw1, compartment_cell);

% Reaction: id = R10, name = Lipids formation 134
	reaction_R10=compartment_cell*Function_for_R10(x(9), compartment_cell, global_par_k10);

% Reaction: id = R11, name = Lipid formation rate
	reaction_R11=compartment_cell*Function_for_R11(x(8), global_par__rateLaw2, compartment_cell);

% Reaction: id = R12, name = Akt phosphorylation
	reaction_R12=compartment_cell*Function_for_R12(x(15), compartment_cell, global_par_f11);

% Reaction: id = R13, name = PKC phosphorylation
	reaction_R13=compartment_cell*Function_for_R13(x(10), compartment_cell, global_par_f12);

% Reaction: id = R14, name = GLUT4 translocation externalize
	reaction_R14=compartment_cell*Function_for_R14(x(11), compartment_cell, global_par_f13);

% Reaction: id = R15, name = GLUT4 translocation internalize
	reaction_R15=compartment_cell*Function_for_R15(x(12), compartment_cell, global_par_k_13);

% Reaction: id = R16, name = GLUT4 synthesis
	reaction_R16=compartment_cell*Function_for_R16(x(28), compartment_cell, global_par_k14);

% Reaction: id = R17, name = GLUT4 degradation
	reaction_R17=compartment_cell*Function_for_R17(x(11), compartment_cell, global_par_k_14);

% Reaction: id = R18, name = PI3k variant phosphorylation
	reaction_R18=compartment_cell*Function_for_R18(x(6), compartment_cell, global_par_fp15);

% Reaction: id = R19, name = IRS1 phosphorylation by P70S6K
	reaction_R19=compartment_cell*Function_for_R19(x(4), compartment_cell, global_par_f15);

% Reaction: id = R20, name = AMPK_T172 phosphorylation
	reaction_R20=compartment_cell*Function_for_R20(x(14), compartment_cell, global_par_f16);

% Reaction: id = R21, name = Akt phosphorylation in Ser mediated by mTORC2_pS2481
	reaction_R21=compartment_cell*Function_for_R21(x(15), compartment_cell, global_par_f17);

% Reaction: id = R22, name = TSC1-TSC2 S1387_phosphorylation_by_AMPK_pT172 and T1462_phosphorylation_by_Akt_pT308
	reaction_R22=compartment_cell*Function_for_R22(x(19), compartment_cell, global_par_f21);

% Reaction: id = R23, name = mTORC1 phosphorylation mediated by TSC1_TSC2_pS1387 and Aminoacids
	reaction_R23=compartment_cell*Function_for_R23(x(16), compartment_cell, global_par_f18);

% Reaction: id = R24, name = mTORC2 phosphorylation mediated by phosphorylated PI3K_variant
	reaction_R24=compartment_cell*Function_for_R24(x(17), compartment_cell, global_par_f19);

% Reaction: id = R25, name = p70S6K phosphorylation mediated by mTORC1_pS2448
	reaction_R25=compartment_cell*Function_for_R25(x(18), compartment_cell, global_par_f20);

% Reaction: id = R26, name = Src module active
	reaction_R26=compartment_cell*Function_for_R26(x(23), compartment_cell, global_par_f24);

% Reaction: id = R27, name = RAS module GTP
	reaction_R27=compartment_cell*Function_for_R27(x(24), compartment_cell, global_par_f28);

% Reaction: id = R28, name = RAF module active
	reaction_R28=compartment_cell*Function_for_R28(x(25), compartment_cell, global_par_f30);

% Reaction: id = R29, name = Mek phosphorylated
	reaction_R29=compartment_cell*Function_for_R29(x(26), compartment_cell, global_par_f33);

% Reaction: id = R30, name = ERK module phosphorylated 1
	reaction_R30=compartment_cell*Function_for_R30(x(27), compartment_cell, global_par_f35);

% Reaction: id = R31, name = GS inhibition
	reaction_R31=compartment_cell*Function_for_R31(x(20), compartment_cell, global_par_f39);

% Reaction: id = R32, name = Receptor releasing1st insulin molecule
	reaction_R32=compartment_cell*Function_for_R32(x(30), compartment_cell, global_par_k_1);

% Reaction: id = R33, name = Receptor phosphorylation
	reaction_R33=compartment_cell*Function_for_R33(x(30), compartment_cell, global_par_k3);

% Reaction: id = R34, name = IRS-1 dephosphorylation in Tyr
	reaction_R34=compartment_cell*Function_for_R34(x(32), compartment_cell, global_par_f_7);

% Reaction: id = R35, name = IRS-1 dephosphorylation in Ser
	reaction_R35=compartment_cell*Function_for_R35(x(33), compartment_cell, global_par_k_7p);

% Reaction: id = R36, name = IRS-1_PI3-K complex formation (PI3-K activation)
	reaction_R36=compartment_cell*Function_for_R36(x(32), x(5), compartment_cell, global_par_k8);

% Reaction: id = R37, name = Akt phosphorylation in Tyr
	reaction_R37=compartment_cell*Function_for_R37(x(38), compartment_cell, global_par_f11);

% Reaction: id = R38, name = Akt dephosphorylation in Tyr
	reaction_R38=compartment_cell*Function_for_R38(x(34), compartment_cell, global_par_k_11);

% Reaction: id = R39, name = PKC dephosphorylation
	reaction_R39=compartment_cell*Function_for_R39(x(35), compartment_cell, global_par_k_12);

% Reaction: id = R40, name = PI3K_variant dephosphorylation by IRp
	reaction_R40=compartment_cell*Function_for_R40(x(36), compartment_cell, global_par_p_15);

% Reaction: id = R41, name = AMPK_T172_dephosphorylation mediated by IRS1_pY
	reaction_R41=compartment_cell*Function_for_R41(x(37), compartment_cell, global_par_k_16);

% Reaction: id = R42, name = Akt phosphorylation in Ser mediated by mTORC2_pS2481_2
	reaction_R42=compartment_cell*Function_for_R42(x(34), compartment_cell, global_par_f17);

% Reaction: id = R43, name = Akt dephosphorylation in Ser mediated by mTORC2_pS2481
	reaction_R43=compartment_cell*Function_for_R43(x(38), compartment_cell, global_par_k_17);

% Reaction: id = R44, name = TSC1-TSC2 S1387_dephosphorylation_by_AMPK_pT172 and T1462_phosphorylation_by_Akt_pT308
	reaction_R44=compartment_cell*Function_for_R44(x(39), compartment_cell, global_par_f_21);

% Reaction: id = R45, name = mTORC1 dephosphorylation mediated by TSC1_TSC2_pS1387 and Aminoacids
	reaction_R45=compartment_cell*Function_for_R45(x(40), compartment_cell, global_par_f_18);

% Reaction: id = R46, name = mTORC2 dephosphorylation mediated by phosphorylated PI3K_variant
	reaction_R46=compartment_cell*Function_for_R46(x(41), compartment_cell, global_par_k_19);

% Reaction: id = R47, name = p70S6K dephosphorylation mediated by mTORC1_pS2448
	reaction_R47=compartment_cell*Function_for_R47(x(42), compartment_cell, global_par_k_20);

% Reaction: id = R48, name = Src module inactive
	reaction_R48=compartment_cell*Function_for_R48(x(43), compartment_cell, global_par_f25);

% Reaction: id = R49, name = IRS1-GS complex formation
	reaction_R49=compartment_cell*Function_for_R49(x(20), x(32), compartment_cell, global_par_k26);

% Reaction: id = R50, name = IRS1-SHP2 complex formation
	reaction_R50=compartment_cell*Function_for_R50(x(22), x(32), compartment_cell, global_par_k27);

% Reaction: id = R51, name = Ras module GDP
	reaction_R51=compartment_cell*Function_for_R51(x(44), compartment_cell, global_par_f29);

% Reaction: id = R52, name = RAF module active-active
	reaction_R52=compartment_cell*Function_for_R52(x(45), compartment_cell, global_par_f31);

% Reaction: id = R53, name = MEK dephosphorylation
	reaction_R53=compartment_cell*Function_for_R53(x(46), compartment_cell, global_par_f34);

% Reaction: id = R54, name = ERK module dephosphorylation
	reaction_R54=compartment_cell*Function_for_R54(x(47), compartment_cell, global_par_f38);

% Reaction: id = R55, name = ERK module y204_y187 dephosphorylation
	reaction_R55=compartment_cell*Function_for_R55(x(47), compartment_cell, global_par_f36);

% Reaction: id = R56, name = GS activation
	reaction_R56=compartment_cell*Function_for_R56(x(48), compartment_cell, global_par_f_39);

% Reaction: id = R57, name = Receptor binding 2nd insulin molecule
	reaction_R57=compartment_cell*Function_for_R57(x(1), x(49), compartment_cell, global_par_k2);

% Reaction: id = R58, name = Receptor unbinding and dephosphorylation (on the cell membrane)
	reaction_R58=compartment_cell*Function_for_R58(x(49), compartment_cell, global_par_f_3);

% Reaction: id = R59, name = Phosphorylated receptor internalization
	reaction_R59=compartment_cell*Function_for_R59(x(49), compartment_cell, global_par_k4p);

% Reaction: id = R60, name = IRS-1_PI3-K complex dissociation (PI3-K inactivation)
	reaction_R60=compartment_cell*Function_for_R60(x(50), compartment_cell, global_par_k_8);

% Reaction: id = R61, name = Akt phosphorylation/dephosphorylation in Tyr
	reaction_R61=compartment_cell*Function_for_R61(x(51), compartment_cell, global_par_k_11);

% Reaction: id = R62, name = Akt dephosphorylation in Tyr phosphorylated form
	reaction_R62=compartment_cell*Function_for_R62(x(51), compartment_cell, global_par_k_17);

% Reaction: id = R63, name = RasGAP module_forward
	reaction_R63=compartment_cell*Function_for_R63(x(21), x(49), compartment_cell, global_par_k22);

% Reaction: id = R64, name = IRS1-GS complex formation_2
	reaction_R64=compartment_cell*Function_for_R64(x(20), x(50), compartment_cell, global_par_k26);

% Reaction: id = R65, name = IRS1-GS complex dissociation
	reaction_R65=compartment_cell*Function_for_R65(x(52), compartment_cell, global_par_k_26);

% Reaction: id = R66, name = IRS1-SHP2 complex dissociation
	reaction_R66=compartment_cell*Function_for_R66(x(53), compartment_cell, global_par_k_27);

% Reaction: id = R67, name = RAF module inactivation
	reaction_R67=compartment_cell*Function_for_R67(x(54), compartment_cell, global_par_f32);

% Reaction: id = R68, name = ERK module phosphorylated and Y187 dephosphorylated
	reaction_R68=compartment_cell*Function_for_R68(x(55), compartment_cell, global_par_f37);

% Reaction: id = R69, name = IRS1-GS and IRS1-SHP2 complex disruption and IRS1 dephosphorylation
	reaction_R69=compartment_cell*Function_for_R69(x(52), compartment_cell, global_par_f40);

% Reaction: id = R70, name = IRS1-GS and IRS1-SHP2 complex formation and IRS1 phosphorylation
	reaction_R70=compartment_cell*Function_for_R70(x(53), compartment_cell, global_par_k41);

% Reaction: id = R71, name = Receptor dissociating 2nd insulin molecule
	reaction_R71=compartment_cell*Function_for_R71(x(56), compartment_cell, global_par_k_2);

% Reaction: id = R72, name = Phosphorylated receptor internalization_ 2
	reaction_R72=compartment_cell*Function_for_R72(x(56), compartment_cell, global_par_k4p);

% Reaction: id = R73, name = Phosphorylated receptor externalization
	reaction_R73=compartment_cell*Function_for_R73(x(57), compartment_cell, global_par_k_4p);

% Reaction: id = R74, name = Receptor unbinding and dephosphorylation (inside the cell)
	reaction_R74=compartment_cell*Function_for_R74(x(57), compartment_cell, global_par_f6);

% Reaction: id = R75, name = RasGAP module activation
	reaction_R75=compartment_cell*Function_for_R75(x(21), x(56), compartment_cell, global_par_k22);

% Reaction: id = R76, name = RasGAP module inactivation
	reaction_R76=compartment_cell*Function_for_R76(x(58), compartment_cell, global_par_k_22);

% Reaction: id = R77, name = IRS1-GS complex formation_3
	reaction_R77=compartment_cell*Function_for_R77(x(59), compartment_cell, global_par_k_26);

% Reaction: id = R78, name = IRS1-GS and IRS1-SHP2 complex disruption and IRS1 dephosphorylation _2
	reaction_R78=compartment_cell*Function_for_R78(x(59), compartment_cell, global_par_f40);

% Reaction: id = R79, name = SHP2 activity against RasGAP
	reaction_R79=compartment_cell*Function_for_R79(x(58), compartment_cell, global_par_f42);

% Reaction: id = R80, name = Phosphorylated receptor internalization_3
	reaction_R80=compartment_cell*Function_for_R80(x(60), compartment_cell, global_par_k_4p);

% Reaction: id = R81, name = Receptor unbinding and dephosphorylation (inside the cell) _2
	reaction_R81=compartment_cell*Function_for_R81(x(60), compartment_cell, global_par_f6);

% Reaction: id = R82, name = RasGAP module _2
	reaction_R82=compartment_cell*Function_for_R82(x(61), compartment_cell, global_par_k_22);

% Reaction: id = R83, name = SHP2 activity against RasGAP_2
	reaction_R83=compartment_cell*Function_for_R83(x(61), compartment_cell, global_par_f42);

	xdot=zeros(61,1);
	
% Species:   id = S1, name = I(bs), affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_R1) + ( 1.0 * reaction_R32) + (-1.0 * reaction_R57) + ( 1.0 * reaction_R58) + ( 1.0 * reaction_R71));
	
% Species:   id = S2, name = IR(NPXY,Y999~u,alpha,beta,loc~m), affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_R1) + (-1.0 * reaction_R2) + ( 1.0 * reaction_R3) + ( 1.0 * reaction_R32) + ( 1.0 * reaction_R58));
	
% Species:   id = S3, name = IR(NPXY,Y999~u,alpha,beta,loc~c), affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + ( 1.0 * reaction_R4) + (-1.0 * reaction_R5) + ( 1.0 * reaction_R74) + ( 1.0 * reaction_R81));
	
% Species:   id = S4, name = IRS1(S636~u,Y~u,Y896,YXXM), affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*((-1.0 * reaction_R6) + (-1.0 * reaction_R7) + (-1.0 * reaction_R19) + ( 1.0 * reaction_R34) + ( 1.0 * reaction_R35));
	
% Species:   id = S5, name = PI3K(SH2), affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*((-1.0 * reaction_R36) + ( 1.0 * reaction_R60));
	
% Species:   id = S6, name = PI3K_variant(Y~u), affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*((-1.0 * reaction_R18) + ( 1.0 * reaction_R40));
	
% Species:   id = S7, name = PI45(), affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*((-1.0 * reaction_R8) + ( 1.0 * reaction_R9));
	
% Species:   id = S8, name = PI345(), affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_R8) + (-1.0 * reaction_R9) + ( 1.0 * reaction_R10) + (-1.0 * reaction_R11));
	
% Species:   id = S9, name = PI34(), affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*((-1.0 * reaction_R10) + ( 1.0 * reaction_R11));
	
% Species:   id = S10, name = PKC(T410~u), affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*((-1.0 * reaction_R13) + ( 1.0 * reaction_R39));
	
% Species:   id = S11, name = GLUT4(loc~c), affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*((-1.0 * reaction_R14) + ( 1.0 * reaction_R15) + ( 1.0 * reaction_R16) + (-1.0 * reaction_R17));
	
% Species:   id = S12, name = GLUT4(loc~m), affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_R14) + (-1.0 * reaction_R15));
	
% Species:   id = S13, name = Amino_Acids()
% Warning species is not changed by either rules or reactions
	xdot(13) = ;
	
% Species:   id = S14, name = AMPK(T172~u), affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*((-1.0 * reaction_R20) + ( 1.0 * reaction_R41));
	
% Species:   id = S15, name = Akt(S474~u,T309~u), affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*((-1.0 * reaction_R12) + (-1.0 * reaction_R21) + ( 1.0 * reaction_R38) + ( 1.0 * reaction_R43));
	
% Species:   id = S16, name = mTORC1(S2448~u), affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*((-1.0 * reaction_R23) + ( 1.0 * reaction_R45));
	
% Species:   id = S17, name = mTORC2(S2481~u), affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*((-1.0 * reaction_R24) + ( 1.0 * reaction_R46));
	
% Species:   id = S18, name = p70S6K(T389~u), affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*((-1.0 * reaction_R25) + ( 1.0 * reaction_R47));
	
% Species:   id = S19, name = TSC1_TSC2(S1387~u,T1462~p), affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*((-1.0 * reaction_R22) + ( 1.0 * reaction_R44));
	
% Species:   id = S20, name = GS(SH2,state~a), affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*((-1.0 * reaction_R31) + (-1.0 * reaction_R49) + ( 1.0 * reaction_R56) + (-1.0 * reaction_R64) + ( 1.0 * reaction_R65) + ( 1.0 * reaction_R69) + ( 1.0 * reaction_R77) + ( 1.0 * reaction_R78));
	
% Species:   id = S21, name = RasGAP(bs), affected by kineticLaw
	xdot(21) = (1/(compartment_cell))*((-1.0 * reaction_R63) + (-1.0 * reaction_R75) + ( 1.0 * reaction_R76) + ( 1.0 * reaction_R79) + ( 1.0 * reaction_R82) + ( 1.0 * reaction_R83));
	
% Species:   id = S22, name = SHP2(SH2), affected by kineticLaw
	xdot(22) = (1/(compartment_cell))*((-1.0 * reaction_R50) + ( 1.0 * reaction_R66) + ( 1.0 * reaction_R70));
	
% Species:   id = S23, name = Src(state~i), affected by kineticLaw
	xdot(23) = (1/(compartment_cell))*((-1.0 * reaction_R26) + ( 1.0 * reaction_R48));
	
% Species:   id = S24, name = Ras(state~GDP), affected by kineticLaw
	xdot(24) = (1/(compartment_cell))*((-1.0 * reaction_R27) + ( 1.0 * reaction_R51));
	
% Species:   id = S25, name = Raf(state~i), affected by kineticLaw
	xdot(25) = (1/(compartment_cell))*((-1.0 * reaction_R28) + ( 1.0 * reaction_R67));
	
% Species:   id = S26, name = Mek(S218_S222~u), affected by kineticLaw
	xdot(26) = (1/(compartment_cell))*((-1.0 * reaction_R29) + ( 1.0 * reaction_R53));
	
% Species:   id = S27, name = Erk(T202_T185~u,Y204_Y187~u), affected by kineticLaw
	xdot(27) = (1/(compartment_cell))*((-1.0 * reaction_R30) + ( 1.0 * reaction_R54));
	
% Species:   id = S28, name = SynthG4(), affected by kineticLaw
	xdot(28) = (1/(compartment_cell))*((-1.0 * reaction_R16) + ( 1.0 * reaction_R16));
	
% Species:   id = S29, name = SynthIR(), affected by kineticLaw
	xdot(29) = (1/(compartment_cell))*((-1.0 * reaction_R4) + ( 1.0 * reaction_R4));
	
% Species:   id = S30, name = I(bs!1).IR(NPXY,Y999~u,alpha!1,beta,loc~m), affected by kineticLaw
	xdot(30) = (1/(compartment_cell))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R32) + (-1.0 * reaction_R33));
	
% Species:   id = S31, name = Degr(), affected by kineticLaw
	xdot(31) = (1/(compartment_cell))*(( 1.0 * reaction_R5) + ( 1.0 * reaction_R17));
	
% Species:   id = S32, name = IRS1(S636~u,Y~p,Y896,YXXM), affected by kineticLaw
	xdot(32) = (1/(compartment_cell))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R34) + (-1.0 * reaction_R36) + (-1.0 * reaction_R49) + (-1.0 * reaction_R50) + ( 1.0 * reaction_R60) + ( 1.0 * reaction_R65) + ( 1.0 * reaction_R66) + ( 1.0 * reaction_R69) + ( 1.0 * reaction_R70));
	
% Species:   id = S33, name = IRS1(S636~p,Y~u,Y896,YXXM), affected by kineticLaw
	xdot(33) = (1/(compartment_cell))*(( 1.0 * reaction_R7) + ( 1.0 * reaction_R19) + (-1.0 * reaction_R35));
	
% Species:   id = S34, name = Akt(S474~u,T309~p), affected by kineticLaw
	xdot(34) = (1/(compartment_cell))*(( 1.0 * reaction_R12) + (-1.0 * reaction_R38) + (-1.0 * reaction_R42) + ( 1.0 * reaction_R62));
	
% Species:   id = S35, name = PKC(T410~p), affected by kineticLaw
	xdot(35) = (1/(compartment_cell))*(( 1.0 * reaction_R13) + (-1.0 * reaction_R39));
	
% Species:   id = S36, name = PI3K_variant(Y~p), affected by kineticLaw
	xdot(36) = (1/(compartment_cell))*(( 1.0 * reaction_R18) + (-1.0 * reaction_R40));
	
% Species:   id = S37, name = AMPK(T172~p), affected by kineticLaw
	xdot(37) = (1/(compartment_cell))*(( 1.0 * reaction_R20) + (-1.0 * reaction_R41));
	
% Species:   id = S38, name = Akt(S474~p,T309~u), affected by kineticLaw
	xdot(38) = (1/(compartment_cell))*(( 1.0 * reaction_R21) + (-1.0 * reaction_R37) + (-1.0 * reaction_R43) + ( 1.0 * reaction_R61));
	
% Species:   id = S39, name = TSC1_TSC2(S1387~p,T1462~u), affected by kineticLaw
	xdot(39) = (1/(compartment_cell))*(( 1.0 * reaction_R22) + (-1.0 * reaction_R44));
	
% Species:   id = S40, name = mTORC1(S2448~p), affected by kineticLaw
	xdot(40) = (1/(compartment_cell))*(( 1.0 * reaction_R23) + (-1.0 * reaction_R45));
	
% Species:   id = S41, name = mTORC2(S2481~p), affected by kineticLaw
	xdot(41) = (1/(compartment_cell))*(( 1.0 * reaction_R24) + (-1.0 * reaction_R46));
	
% Species:   id = S42, name = p70S6K(T389~p), affected by kineticLaw
	xdot(42) = (1/(compartment_cell))*(( 1.0 * reaction_R25) + (-1.0 * reaction_R47));
	
% Species:   id = S43, name = Src(state~a), affected by kineticLaw
	xdot(43) = (1/(compartment_cell))*(( 1.0 * reaction_R26) + (-1.0 * reaction_R48));
	
% Species:   id = S44, name = Ras(state~GTP), affected by kineticLaw
	xdot(44) = (1/(compartment_cell))*(( 1.0 * reaction_R27) + (-1.0 * reaction_R51));
	
% Species:   id = S45, name = Raf(state~a), affected by kineticLaw
	xdot(45) = (1/(compartment_cell))*(( 1.0 * reaction_R28) + (-1.0 * reaction_R52));
	
% Species:   id = S46, name = Mek(S218_S222~p), affected by kineticLaw
	xdot(46) = (1/(compartment_cell))*(( 1.0 * reaction_R29) + (-1.0 * reaction_R53));
	
% Species:   id = S47, name = Erk(T202_T185~p,Y204_Y187~u), affected by kineticLaw
	xdot(47) = (1/(compartment_cell))*(( 1.0 * reaction_R30) + (-1.0 * reaction_R54) + (-1.0 * reaction_R55) + ( 1.0 * reaction_R68));
	
% Species:   id = S48, name = GS(SH2,state~i), affected by kineticLaw
	xdot(48) = (1/(compartment_cell))*(( 1.0 * reaction_R31) + (-1.0 * reaction_R56));
	
% Species:   id = S49, name = I(bs!1).IR(NPXY,Y999~p,alpha!1,beta,loc~m), affected by kineticLaw
	xdot(49) = (1/(compartment_cell))*(( 1.0 * reaction_R33) + (-1.0 * reaction_R57) + (-1.0 * reaction_R58) + (-1.0 * reaction_R59) + (-1.0 * reaction_R63) + ( 1.0 * reaction_R71) + ( 1.0 * reaction_R73) + ( 1.0 * reaction_R76) + ( 1.0 * reaction_R79));
	
% Species:   id = S50, name = IRS1(S636~u,Y~p,Y896,YXXM!1).PI3K(SH2!1), affected by kineticLaw
	xdot(50) = (1/(compartment_cell))*(( 1.0 * reaction_R36) + (-1.0 * reaction_R60) + (-1.0 * reaction_R64) + ( 1.0 * reaction_R77) + ( 1.0 * reaction_R78));
	
% Species:   id = S51, name = Akt(S474~p,T309~p), affected by kineticLaw
	xdot(51) = (1/(compartment_cell))*(( 1.0 * reaction_R37) + ( 1.0 * reaction_R42) + (-1.0 * reaction_R61) + (-1.0 * reaction_R62));
	
% Species:   id = S52, name = GS(SH2!1,state~a).IRS1(S636~u,Y~p,Y896!1,YXXM), affected by kineticLaw
	xdot(52) = (1/(compartment_cell))*(( 1.0 * reaction_R49) + (-1.0 * reaction_R65) + (-1.0 * reaction_R69));
	
% Species:   id = S53, name = IRS1(S636~u,Y~p,Y896!1,YXXM).SHP2(SH2!1), affected by kineticLaw
	xdot(53) = (1/(compartment_cell))*(( 1.0 * reaction_R50) + (-1.0 * reaction_R66) + (-1.0 * reaction_R70));
	
% Species:   id = S54, name = Raf(state~aa), affected by kineticLaw
	xdot(54) = (1/(compartment_cell))*(( 1.0 * reaction_R52) + (-1.0 * reaction_R67));
	
% Species:   id = S55, name = Erk(T202_T185~p,Y204_Y187~p), affected by kineticLaw
	xdot(55) = (1/(compartment_cell))*(( 1.0 * reaction_R55) + (-1.0 * reaction_R68));
	
% Species:   id = S56, name = I(bs!1).I(bs!2).IR(NPXY,Y999~p,alpha!1,beta!2,loc~m), affected by kineticLaw
	xdot(56) = (1/(compartment_cell))*(( 1.0 * reaction_R57) + (-1.0 * reaction_R71) + (-1.0 * reaction_R72) + (-1.0 * reaction_R75) + ( 1.0 * reaction_R80) + ( 1.0 * reaction_R82) + ( 1.0 * reaction_R83));
	
% Species:   id = S57, name = I(bs!1).IR(NPXY,Y999~p,alpha!1,beta,loc~c), affected by kineticLaw
	xdot(57) = (1/(compartment_cell))*(( 1.0 * reaction_R59) + (-1.0 * reaction_R73) + (-1.0 * reaction_R74));
	
% Species:   id = S58, name = I(bs!1).IR(NPXY!2,Y999~p,alpha!1,beta,loc~m).RasGAP(bs!2), affected by kineticLaw
	xdot(58) = (1/(compartment_cell))*(( 1.0 * reaction_R63) + (-1.0 * reaction_R76) + (-1.0 * reaction_R79));
	
% Species:   id = S59, name = GS(SH2!1,state~a).IRS1(S636~u,Y~p,Y896!1,YXXM!2).PI3K(SH2!2), affected by kineticLaw
	xdot(59) = (1/(compartment_cell))*(( 1.0 * reaction_R64) + (-1.0 * reaction_R77) + (-1.0 * reaction_R78));
	
% Species:   id = S60, name = I(bs!1).I(bs!2).IR(NPXY,Y999~p,alpha!1,beta!2,loc~c), affected by kineticLaw
	xdot(60) = (1/(compartment_cell))*(( 1.0 * reaction_R72) + (-1.0 * reaction_R80) + (-1.0 * reaction_R81));
	
% Species:   id = S61, name = I(bs!1).I(bs!2).IR(NPXY!3,Y999~p,alpha!1,beta!2,loc~m).RasGAP(bs!3), affected by kineticLaw
	xdot(61) = (1/(compartment_cell))*(( 1.0 * reaction_R75) + (-1.0 * reaction_R82) + (-1.0 * reaction_R83));
end

function z=Function_for_R69(S52,cell,f40), z=(f40*S52/cell);end

function z=Function_for_R10(S9,cell,k10), z=(k10*S9/cell);end

function z=Function_for_R71(S56,cell,k_2), z=(k_2*S56/cell);end

function z=Function_for_R46(S41,cell,k_19), z=(k_19*S41/cell);end

function z=Function_for_R60(S50,cell,k_8), z=(k_8*S50/cell);end

function z=Function_for_R78(S59,cell,f40), z=(f40*S59/cell);end

function z=Function_for_R34(S32,cell,f_7), z=(f_7*S32/cell);end

function z=Function_for_R11(S8,_rateLaw2,cell), z=(_rateLaw2*S8/cell);end

function z=Function_for_R22(S19,cell,f21), z=(f21*S19/cell);end

function z=Function_for_R36(S32,S5,cell,k8), z=(k8*S5*S32/cell);end

function z=Function_for_R65(S52,cell,k_26), z=(k_26*S52/cell);end

function z=Function_for_R75(S21,S56,cell,k22), z=(k22*S21*S56/cell);end

function z=Function_for_R52(S45,cell,f31), z=(f31*S45/cell);end

function z=Function_for_R8(S7,cell,f9), z=(f9*S7/cell);end

function z=Function_for_R13(S10,cell,f12), z=(f12*S10/cell);end

function z=Function_for_R53(S46,cell,f34), z=(f34*S46/cell);end

function z=Function_for_R72(S56,cell,k4p), z=(k4p*S56/cell);end

function z=Function_for_R70(S53,cell,k41), z=(k41*S53/cell);end

function z=Function_for_R45(S40,cell,f_18), z=(f_18*S40/cell);end

function z=Function_for_R1(S1,S2,cell,k1), z=(k1*S1*S2/cell);end

function z=Function_for_R43(S38,cell,k_17), z=(k_17*S38/cell);end

function z=Function_for_R39(S35,cell,k_12), z=(k_12*S35/cell);end

function z=Function_for_R59(S49,cell,k4p), z=(k4p*S49/cell);end

function z=Function_for_R77(S59,cell,k_26), z=(k_26*S59/cell);end

function z=Function_for_R31(S20,cell,f39), z=(f39*S20/cell);end

function z=Function_for_R42(S34,cell,f17), z=(f17*S34/cell);end

function z=Function_for_R25(S18,cell,f20), z=(f20*S18/cell);end

function z=Function_for_R21(S15,cell,f17), z=(f17*S15/cell);end

function z=Function_for_R56(S48,cell,f_39), z=(f_39*S48/cell);end

function z=Function_for_R20(S14,cell,f16), z=(f16*S14/cell);end

function z=Function_for_R47(S42,cell,k_20), z=(k_20*S42/cell);end

function z=Function_for_R14(S11,cell,f13), z=(f13*S11/cell);end

function z=Function_for_R63(S21,S49,cell,k22), z=(k22*S21*S49/cell);end

function z=Function_for_R67(S54,cell,f32), z=(f32*S54/cell);end

function z=Function_for_R27(S24,cell,f28), z=(f28*S24/cell);end

function z=Function_for_R24(S17,cell,f19), z=(f19*S17/cell);end

function z=Function_for_R33(S30,cell,k3), z=(k3*S30/cell);end

function z=Function_for_R7(S4,cell,f7p), z=(f7p*S4/cell);end

function z=Function_for_R15(S12,cell,k_13), z=(k_13*S12/cell);end

function z=Function_for_R82(S61,cell,k_22), z=(k_22*S61/cell);end

function z=Function_for_R38(S34,cell,k_11), z=(k_11*S34/cell);end

function z=Function_for_R58(S49,cell,f_3), z=(f_3*S49/cell);end

function z=Function_for_R37(S38,cell,f11), z=(f11*S38/cell);end

function z=Function_for_R74(S57,cell,f6), z=(f6*S57/cell);end

function z=Function_for_R12(S15,cell,f11), z=(f11*S15/cell);end

function z=Function_for_R79(S58,cell,f42), z=(f42*S58/cell);end

function z=Function_for_R83(S61,cell,f42), z=(f42*S61/cell);end

function z=Function_for_R2(S2,cell,k4), z=(k4*S2/cell);end

function z=Function_for_R16(S28,cell,k14), z=(k14*S28/cell);end

function z=Function_for_R51(S44,cell,f29), z=(f29*S44/cell);end

function z=Function_for_R68(S55,cell,f37), z=(f37*S55/cell);end

function z=Function_for_R54(S47,cell,f38), z=(f38*S47/cell);end

function z=Function_for_R5(S3,cell,k_5), z=(k_5*S3/cell);end

function z=Function_for_R35(S33,cell,k_7p), z=(k_7p*S33/cell);end

function z=Function_for_R62(S51,cell,k_17), z=(k_17*S51/cell);end

function z=Function_for_R44(S39,cell,f_21), z=(f_21*S39/cell);end

function z=Function_for_R76(S58,cell,k_22), z=(k_22*S58/cell);end

function z=Function_for_R4(S29,cell,k5), z=(k5*S29/cell);end

function z=Function_for_R73(S57,cell,k_4p), z=(k_4p*S57/cell);end

function z=Function_for_R57(S1,S49,cell,k2), z=(k2*S1*S49/cell);end

function z=Function_for_R19(S4,cell,f15), z=(f15*S4/cell);end

function z=Function_for_R55(S47,cell,f36), z=(f36*S47/cell);end

function z=Function_for_R81(S60,cell,f6), z=(f6*S60/cell);end

function z=Function_for_R32(S30,cell,k_1), z=(k_1*S30/cell);end

function z=Function_for_R30(S27,cell,f35), z=(f35*S27/cell);end

function z=Function_for_R9(S8,_rateLaw1,cell), z=(_rateLaw1*S8/cell);end

function z=Function_for_R41(S37,cell,k_16), z=(k_16*S37/cell);end

function z=Function_for_R18(S6,cell,fp15), z=(fp15*S6/cell);end

function z=Function_for_R64(S20,S50,cell,k26), z=(k26*S20*S50/cell);end

function z=Function_for_R17(S11,cell,k_14), z=(k_14*S11/cell);end

function z=Function_for_R48(S43,cell,f25), z=(f25*S43/cell);end

function z=Function_for_R28(S25,cell,f30), z=(f30*S25/cell);end

function z=Function_for_R66(S53,cell,k_27), z=(k_27*S53/cell);end

function z=Function_for_R61(S51,cell,k_11), z=(k_11*S51/cell);end

function z=Function_for_R26(S23,cell,f24), z=(f24*S23/cell);end

function z=Function_for_R29(S26,cell,f33), z=(f33*S26/cell);end

function z=Function_for_R49(S20,S32,cell,k26), z=(k26*S20*S32/cell);end

function z=Function_for_R23(S16,cell,f18), z=(f18*S16/cell);end

function z=Function_for_R80(S60,cell,k_4p), z=(k_4p*S60/cell);end

function z=Function_for_R6(S4,cell,f7), z=(f7*S4/cell);end

function z=Function_for_R3(S3,cell,k_4), z=(k_4*S3/cell);end

function z=Function_for_R50(S22,S32,cell,k27), z=(k27*S22*S32/cell);end

function z=Function_for_R40(S36,cell,p_15), z=(p_15*S36/cell);end

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


