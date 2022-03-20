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
% Model name = Peterson2010 - Integrated calcium homeostasis and bone remodelling
%
% is http://identifiers.org/biomodels.db/MODEL1604270004
% is http://identifiers.org/biomodels.db/BIOMD0000000613
% isDescribedBy http://identifiers.org/pubmed/19732857
%


function main()
%Initial conditions vector
	x0=zeros(31,1);
	x0(1) = 53.9;
	x0(2) = 0.5;
	x0(3) = 1.0;
	x0(4) = 1260.0;
	x0(5) = 0.0;
	x0(6) = 32.9;
	x0(7) = 16.8;
	x0(8) = 1.2375;
	x0(9) = 0.5;
	x0(10) = 1.0;
	x0(11) = 0.00501324;
	x0(12) = 0.839;
	x0(13) = 3226.0;
	x0(14) = 0.00115398;
	x0(15) = 0.00104122;
	x0(16) = 0.4;
	x0(17) = 10.0;
	x0(18) = 4.0;
	x0(19) = 100.0;
	x0(20) = 24900.0;
	x0(21) = 10.0;
	x0(22) = 10.0;
	x0(23) = 100.0;
	x0(24) = 0.0;
	x0(25) = 0;
	x0(26) = 0;
	x0(27) = 0;
	x0(28) = 0;
	x0(29) = 0;
	x0(30) = 0;
	x0(31) = 0;


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

% Compartment: id = Gut, name = Gut, constant
	compartment_Gut=1.0;
% Compartment: id = Vasculature, name = Vasculature, constant
	compartment_Vasculature=1.0;
% Compartment: id = Bone, name = Bone, constant
	compartment_Bone=1.0;
% Compartment: id = PTH_Gland, name = PTH_Gland, constant
	compartment_PTH_Gland=1.0;
% Compartment: id = Kidney, name = Kidney, constant
	compartment_Kidney=1.0;
% Compartment: id = Intracellular, name = Intracellular, constant
	compartment_Intracellular=1.0;
% Compartment: id = Osteoblast_Intracellular, name = Osteoblast_Intracellular, constant
	compartment_Osteoblast_Intracellular=1.0;
% Parameter:   id =  Pic0, name = Pic0
	global_par_Pic0=0.228142;
% Parameter:   id =  FracOBfast, name = FracOBfast
	global_par_FracOBfast=0.797629;
% Parameter:   id =  k3, name = k3
	global_par_k3=6.24E-6;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.112013;
% Parameter:   id =  k1, name = k1
	global_par_k1=6.24E-6;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.112013;
% Parameter:   id =  V1, name = V1
	global_par_V1=14.0;
% Parameter:   id =  CaDay, name = CaDay
	global_par_CaDay=88.0;
% Parameter:   id =  FracJ14, name = FracJ14
	global_par_FracJ14=0.107763;
% Parameter:   id =  J14OCmax, name = J14OCmax
	global_par_J14OCmax=0.543488;
% Parameter:   id =  J14OCgam, name = J14OCgam
	global_par_J14OCgam=1.6971;
% Parameter:   id =  FracJ15, name = FracJ15
	global_par_FracJ15=0.114376;
% Parameter:   id =  kinRNKgam, name = kinRNKgam
	global_par_kinRNKgam=0.151825;
% Parameter:   id =  koutRNK, name = koutRNK
	global_par_koutRNK=0.00323667;
% Parameter:   id =  MOCratioGam, name = MOCratioGam
	global_par_MOCratioGam=0.603754;
% Parameter:   id =  Da, name = Da
	global_par_Da=NaN;
% Parameter:   id =  OBtgfGAM, name = OBtgfGAM
	global_par_OBtgfGAM=0.0111319;
% Parameter:   id =  koutTGF0, name = koutTGF0
	global_par_koutTGF0=2.98449E-5;
% Parameter:   id =  koutTGFGam, name = koutTGFGam
	global_par_koutTGFGam=0.919131;
% Parameter:   id =  OCtgfGAM, name = OCtgfGAM
	global_par_OCtgfGAM=0.593891;
% Parameter:   id =  EmaxPicROB, name = EmaxPicROB
	global_par_EmaxPicROB=3.9745;
% Parameter:   id =  PicROBgam, name = PicROBgam
	global_par_PicROBgam=1.80968;
% Parameter:   id =  FracPicROB, name = FracPicROB
	global_par_FracPicROB=0.883824;
% Parameter:   id =  PicOBgam, name = PicOBgam
	global_par_PicOBgam=0.122313;
% Parameter:   id =  FracPicOB, name = FracPicOB
	global_par_FracPicOB=2.44818E-4;
% Parameter:   id =  EmaxPicOB, name = EmaxPicOB
	global_par_EmaxPicOB=0.251636;
% Parameter:   id =  E0Meff, name = E0Meff
	global_par_E0Meff=0.388267;
% Parameter:   id =  EmaxMeffOC, name = EmaxMeffOC
	global_par_EmaxMeffOC=3.15667;
% Parameter:   id =  kinOCgam, name = kinOCgam
	global_par_kinOCgam=8.53065;
% Parameter:   id =  EmaxPicOC, name = EmaxPicOC
	global_par_EmaxPicOC=1.9746;
% Parameter:   id =  FracPicOC, name = FracPicOC
	global_par_FracPicOC=0.878215;
% Parameter:   id =  PicOCgam, name = PicOCgam
	global_par_PicOCgam=1.0168;
% Parameter:   id =  E0RANKL, name = E0RANKL
	global_par_E0RANKL=3.80338;
% Parameter:   id =  EmaxL, name = EmaxL
	global_par_EmaxL=0.469779;
% Parameter:   id =  GFR, name = GFR
	global_par_GFR=NaN;
% Parameter:   id =  T16, name = T16
	global_par_T16=1.06147;
% Parameter:   id =  T64, name = T64
	global_par_T64=0.05;
% Parameter:   id =  T65, name = T65
	global_par_T65=6.3;
% Parameter:   id =  T67, name = T67
	global_par_T67=1.54865;
% Parameter:   id =  AlphOHgam, name = AlphOHgam
	global_par_AlphOHgam=0.111241;
% Parameter:   id =  k14a, name = k14a
	global_par_k14a=2.44437E-5;
% Parameter:   id =  HApMRT, name = HApMRT
	global_par_HApMRT=3.60609;
% Parameter:   id =  koutL, name = koutL
	global_par_koutL=0.00293273;
% Parameter:   id =  OsteoEffectGam, name = OsteoEffectGam
	global_par_OsteoEffectGam=0.173833;
% Parameter:   id =  TESTPOWER, name = TESTPOWER
	global_par_TESTPOWER=1.0;
% Parameter:   id =  opgPTH50, name = opgPTH50
	global_par_opgPTH50=3.85;
% Parameter:   id =  IO, name = IO
	global_par_IO=0.0;
% Parameter:   id =  RX2Kout0, name = RX2Kout0
	global_par_RX2Kout0=0.693;
% Parameter:   id =  E0rx2Kout, name = E0rx2Kout
	global_par_E0rx2Kout=0.125;
% Parameter:   id =  EmaxPTHRX2x, name = EmaxPTHRX2x
	global_par_EmaxPTHRX2x=5.0;
% Parameter:   id =  E0crebKin, name = E0crebKin
	global_par_E0crebKin=0.5;
% Parameter:   id =  EmaxPTHcreb, name = EmaxPTHcreb
	global_par_EmaxPTHcreb=3.39745;
% Parameter:   id =  crebKout, name = crebKout
	global_par_crebKout=0.00279513;
% Parameter:   id =  bcl2Kout, name = bcl2Kout
	global_par_bcl2Kout=0.693;
% Parameter:   id =  ScaEffGam, name = ScaEffGam
	global_par_ScaEffGam=0.9;
% Parameter:   id =  PhosEff0, name = PhosEff0
	global_par_PhosEff0=1.52493;
% Parameter:   id =  PhosEff50, name = PhosEff50
	global_par_PhosEff50=1.3021;
% Parameter:   id =  PhosEffGam, name = PhosEffGam
	global_par_PhosEffGam=8.25229;
% Parameter:   id =  PO4inhPTHgam, name = PO4inhPTHgam
	global_par_PO4inhPTHgam=0.0;
% Parameter:   id =  T69, name = T69
	global_par_T69=0.1;
% Parameter:   id =  Reabs50, name = Reabs50
	global_par_Reabs50=1.57322;
% Parameter:   id =  T7, name = T7
	global_par_T7=2.0;
% Parameter:   id =  T9, name = T9
	global_par_T9=90.0;
% Parameter:   id =  T70, name = T70
	global_par_T70=0.01;
% Parameter:   id =  T71, name = T71
	global_par_T71=0.03;
% Parameter:   id =  T33, name = T33
	global_par_T33=0.003;
% Parameter:   id =  T34, name = T34
	global_par_T34=0.037;
% Parameter:   id =  T35, name = T35
	global_par_T35=90.0;
% Parameter:   id =  CaPOgam, name = CaPOgam
	global_par_CaPOgam=1.0;
% Parameter:   id =  T46, name = T46
	global_par_T46=1.142;
% Parameter:   id =  T52, name = T52
	global_par_T52=0.365;
% Parameter:   id =  OralPhos, name = OralPhos
	global_par_OralPhos=NaN;
% Parameter:   id =  F12, name = F12
	global_par_F12=0.7;
% Parameter:   id =  T49, name = T49
	global_par_T49=51.8;
% Parameter:   id =  T55, name = T55
	global_par_T55=0.019268;
% Parameter:   id =  PicOBgamkb, name = PicOBgamkb
	global_par_PicOBgamkb=2.92375;
% Parameter:   id =  MultPicOBkb, name = MultPicOBkb
	global_par_MultPicOBkb=3.11842;
% Parameter:   id =  FracPic0kb, name = FracPic0kb
	global_par_FracPic0kb=0.764028;
% Parameter:   id =  E0RUNX2kbEffFACT, name = E0RUNX2kbEffFACT
	global_par_E0RUNX2kbEffFACT=1.01;
% Parameter:   id =  RUNkbGAM, name = RUNkbGAM
	global_par_RUNkbGAM=3.67798;
% Parameter:   id =  RUNkbMaxFact, name = RUNkbMaxFact
	global_par_RUNkbMaxFact=0.638114;
% Parameter:   id =  RUNX20, name = RUNX20
	global_par_RUNX20=10.0;
% Parameter:   id =  Frackb, name = Frackb
	global_par_Frackb=0.313186;
% Parameter:   id =  T81, name = T81
	global_par_T81=0.75;
% Parameter:   id =  T87, name = T87
	global_par_T87=0.0495;
% Parameter:   id =  T0, name = T0
	global_par_T0=1.58471;
% Parameter:   id =  T28, name = T28
	global_par_T28=0.9;
% Parameter:   id =  OralCa, name = OralCa
	global_par_OralCa=NaN;
% Parameter:   id =  T77, name = T77
	global_par_T77=0.909359;
% Parameter:   id =  T80, name = T80
	global_par_T80=4.0;
% Parameter:   id =  CtriolPTgam, name = CtriolPTgam
	global_par_CtriolPTgam=12.5033;
% Parameter:   id =  CtriolMax, name = CtriolMax
	global_par_CtriolMax=4.1029;
% Parameter:   id =  CtriolMin, name = CtriolMin
	global_par_CtriolMin=0.9;
% Parameter:   id =  PTout, name = PTout
	global_par_PTout=1.604E-4;
% Parameter:   id =  T57, name = T57
	global_par_T57=100.0;
% Parameter:   id =  T58, name = T58
	global_par_T58=6249.09;
% Parameter:   id =  T59, name = T59
	global_par_T59=11.7387;
% Parameter:   id =  T61, name = T61
	global_par_T61=96.25;
% Parameter:   id =  IPTHint, name = IPTHint
	global_par_IPTHint=0.0;
% Parameter:   id =  IPTHinf, name = IPTHinf
	global_par_IPTHinf=0.0;
% Parameter:   id =  LsurvOCCgam, name = LsurvOCCgam
	global_par_LsurvOCCgam=3.0923;
% Parameter:   id =  EmaxLpth, name = EmaxLpth
	global_par_EmaxLpth=1.30721;
% Parameter:   id =  kO, name = kO
	global_par_kO=15.8885;
% Parameter:   id =  kb, name = kb
	global_par_kb=6.05516E-4;
% Parameter:   id =  LsurvOCgam, name = LsurvOCgam
	global_par_LsurvOCgam=3.09023;
% Parameter:   id =  TERIVC, name = TERIVC
	global_par_TERIVC=133.0;
% Parameter:   id =  TERICL, name = TERICL
	global_par_TERICL=94.3;
% Parameter:   id =  TERIKA, name = TERIKA
	global_par_TERIKA=16.4;
% Parameter:   id =  Q0, name = Q0
	global_par_Q0=NaN;
% Parameter:   id =  OC0, name = OC0
	global_par_OC0=NaN;
% Parameter:   id =  RNK0, name = RNK0
	global_par_RNK0=NaN;
% Parameter:   id =  RANKL0, name = RANKL0
	global_par_RANKL0=NaN;
% Parameter:   id =  RNKL0, name = RNKL0
	global_par_RNKL0=NaN;
% Parameter:   id =  OB0, name = OB0
	global_par_OB0=NaN;
% Parameter:   id =  ROB0, name = ROB0
	global_par_ROB0=NaN;
% Parameter:   id =  QboneInit, name = QboneInit
	global_par_QboneInit=NaN;
% Parameter:   id =  OPG0, name = OPG0
	global_par_OPG0=NaN;
% Parameter:   id =  RX20, name = RX20
	global_par_RX20=NaN;
% Parameter:   id =  CREB0, name = CREB0
	global_par_CREB0=NaN;
% Parameter:   id =  M0, name = M0
	global_par_M0=NaN;
% Parameter:   id =  TGFBact0, name = TGFBact0
	global_par_TGFBact0=NaN;
% Parameter:   id =  TGFB0, name = TGFB0
	global_par_TGFB0=NaN;
% Parameter:   id =  T13, name = T13
% Parameter:   id =  T15, name = T15
% Parameter:   id =  T17, name = T17
% Parameter:   id =  Osteoclast, name = Osteoclast
% Parameter:   id =  J14OC50, name = J14OC50
% Parameter:   id =  OCeqn, name = OCeqn
% Parameter:   id =  kinRNK, name = kinRNK
% Parameter:   id =  MOCratio, name = MOCratio
% Parameter:   id =  MOCratio0, name = MOCratio0
% Parameter:   id =  MOCratioEff, name = MOCratioEff
% Parameter:   id =  J14OCdepend, name = J14OCdepend
% Parameter:   id =  J14, name = J14
% Parameter:   id =  J41, name = J41
% Parameter:   id =  PicOCkin, name = PicOCkin
% Parameter:   id =  bigDb, name = bigDb
% Parameter:   id =  kinTGF, name = kinTGF
% Parameter:   id =  koutTGF, name = koutTGF
% Parameter:   id =  koutTGFact, name = koutTGFact
% Parameter:   id =  koutTGFeqn, name = koutTGFeqn
% Parameter:   id =  E0PicROB, name = E0PicROB
% Parameter:   id =  EC50PicROBparen, name = EC50PicROBparen
% Parameter:   id =  EC50PicROB, name = EC50PicROB
% Parameter:   id =  Dr, name = Dr
% Parameter:   id =  PicROB, name = PicROB
% Parameter:   id =  ROBin2, name = ROBin2
% Parameter:   id =  ROBin, name = ROBin
% Parameter:   id =  E0PicOB, name = E0PicOB
% Parameter:   id =  EC50PicOBparen, name = EC50PicOBparen
% Parameter:   id =  EC50PicOB, name = EC50PicOB
% Parameter:   id =  PicOB, name = PicOB
% Parameter:   id =  KPT, name = KPT
% Parameter:   id =  D, name = D
% Parameter:   id =  EC50MeffOC, name = EC50MeffOC
% Parameter:   id =  MeffOC, name = MeffOC
% Parameter:   id =  kinOC2, name = kinOC2
% Parameter:   id =  E0PicOC, name = E0PicOC
% Parameter:   id =  EC50PicOCparen, name = EC50PicOCparen
% Parameter:   id =  EC50PicOC, name = EC50PicOC
% Parameter:   id =  PicOC, name = PicOC
% Parameter:   id =  PiL0, name = PiL0
% Parameter:   id =  PiL, name = PiL
% Parameter:   id =  EC50survInPar, name = EC50survInPar
% Parameter:   id =  EC50surv, name = EC50surv
% Parameter:   id =  LsurvOC, name = LsurvOC
% Parameter:   id =  KLSoc, name = KLSoc
% Parameter:   id =  C4, name = C4
% Parameter:   id =  T66, name = T66
% Parameter:   id =  k15a, name = k15a
% Parameter:   id =  J14a, name = J14a
% Parameter:   id =  J15a, name = J15a
% Parameter:   id =  kLShap, name = kLShap
% Parameter:   id =  kHApIn, name = kHApIn
% Parameter:   id =  J15, name = J15
% Parameter:   id =  J42, name = J42
% Parameter:   id =  OBfast0, name = OBfast0
% Parameter:   id =  Osteoblast, name = Osteoblast
% Parameter:   id =  kinLbase, name = kinLbase
% Parameter:   id =  OsteoEffect, name = OsteoEffect
% Parameter:   id =  PTH50, name = PTH50
% Parameter:   id =  PTHconc, name = PTHconc
% Parameter:   id =  LpthEff, name = LpthEff
% Parameter:   id =  kinL, name = kinL
% Parameter:   id =  pObase, name = pObase
% Parameter:   id =  pO, name = pO
% Parameter:   id =  RX2Kin, name = RX2Kin
% Parameter:   id =  EC50PTHRX2x, name = EC50PTHRX2x
% Parameter:   id =  RX2Kout, name = RX2Kout
% Parameter:   id =  EC50PTHcreb, name = EC50PTHcreb
% Parameter:   id =  crebKin0, name = crebKin0
% Parameter:   id =  crebKin, name = crebKin
% Parameter:   id =  bcl2Kin, name = bcl2Kin
% Parameter:   id =  CaConc, name = CaConc
% Parameter:   id =  C2, name = C2
% Parameter:   id =  PO4inhPTH, name = PO4inhPTH
% Parameter:   id =  PhosEffTop, name = PhosEffTop
% Parameter:   id =  PhosEffBot, name = PhosEffBot
% Parameter:   id =  PhosEffMax, name = PhosEffMax
% Parameter:   id =  PhosEff, name = PhosEff
% Parameter:   id =  PhosEffect, name = PhosEffect
% Parameter:   id =  T68, name = T68
% Parameter:   id =  SE, name = SE
% Parameter:   id =  C8, name = C8
% Parameter:   id =  C1, name = C1
% Parameter:   id =  T36, name = T36
% Parameter:   id =  T37, name = T37
% Parameter:   id =  CaFilt, name = CaFilt
% Parameter:   id =  ReabsMax, name = ReabsMax
% Parameter:   id =  ReabsPTHeff, name = ReabsPTHeff
% Parameter:   id =  CaReabsActive, name = CaReabsActive
% Parameter:   id =  T20, name = T20
% Parameter:   id =  T10, name = T10
% Parameter:   id =  J27a, name = J27a
% Parameter:   id =  J27, name = J27
% Parameter:   id =  ScaEff, name = ScaEff
% Parameter:   id =  T72, name = T72
% Parameter:   id =  T73, name = T73
% Parameter:   id =  T74, name = T74
% Parameter:   id =  T75, name = T75
% Parameter:   id =  T76, name = T76
% Parameter:   id =  T47, name = T47
% Parameter:   id =  J48a, name = J48a
% Parameter:   id =  J48, name = J48
% Parameter:   id =  J53, name = J53
% Parameter:   id =  J54, name = J54
% Parameter:   id =  J56, name = J56
% Parameter:   id =  E0PicOBkb, name = E0PicOBkb
% Parameter:   id =  EmaxPicOBkb, name = EmaxPicOBkb
% Parameter:   id =  EC50PicOBparenKb, name = EC50PicOBparenKb
% Parameter:   id =  EC50PicOBkb, name = EC50PicOBkb
% Parameter:   id =  PicOBkb, name = PicOBkb
% Parameter:   id =  PicOBkbEff, name = PicOBkbEff
% Parameter:   id =  E0RUNX2kbEff, name = E0RUNX2kbEff
% Parameter:   id =  RUNX2, name = RUNX2
% Parameter:   id =  RUNkbMax, name = RUNkbMax
% Parameter:   id =  INparen, name = INparen
% Parameter:   id =  RUNkb50, name = RUNkb50
% Parameter:   id =  RUNX2kbPrimeEff, name = RUNX2kbPrimeEff
% Parameter:   id =  kbprime, name = kbprime
% Parameter:   id =  kbslow, name = kbslow
% Parameter:   id =  kbfast, name = kbfast
% Parameter:   id =  Frackb2, name = Frackb2
% Parameter:   id =  T29, name = T29
% Parameter:   id =  T31, name = T31
% Parameter:   id =  T83, name = T83
% Parameter:   id =  J40, name = J40
% Parameter:   id =  T85Rpart, name = T85Rpart
% Parameter:   id =  T85, name = T85
% Parameter:   id =  F11, name = F11
% Parameter:   id =  INparenCtriol, name = INparenCtriol
% Parameter:   id =  Ctriol50, name = Ctriol50
% Parameter:   id =  CtriolPTeff, name = CtriolPTeff
% Parameter:   id =  PTin, name = PTin
% Parameter:   id =  INparenCa, name = INparenCa
% Parameter:   id =  T60, name = T60
% Parameter:   id =  FCTD, name = FCTD
% Parameter:   id =  T63, name = T63
% Parameter:   id =  EPTH, name = EPTH
% Parameter:   id =  IPTH, name = IPTH
% Parameter:   id =  SPTH, name = SPTH
% Parameter:   id =  kout, name = kout
% Parameter:   id =  TERIPK, name = TERIPK
% Parameter:   id =  event_counter, name = event_counter
	global_par_event_counter=0.0;
% Parameter:   id =  teri_times_interval, name = teri_times_interval
	global_par_teri_times_interval=24.0;
% Parameter:   id =  teri_times_initial, name = teri_times_initial
	global_par_teri_times_initial=12.0;
% Parameter:   id =  teri_number_of_doses, name = teri_number_of_doses
	global_par_teri_number_of_doses=3.0;
% Parameter:   id =  teri_dose_mcg, name = teri_dose_mcg
	global_par_teri_dose_mcg=20.0;
% assignmentRule: variable = T13
	global_par_T13=global_par_CaDay/24/global_par_Q0;
% assignmentRule: variable = T15
	global_par_T15=global_par_CaDay/(2.35*14*24);
% assignmentRule: variable = T17
	global_par_T17=3.85*global_par_T16-3.85;
% assignmentRule: variable = Osteoclast
	global_par_Osteoclast=x(14);
% assignmentRule: variable = J14OC50
	global_par_J14OC50=exp(log(global_par_J14OCmax*global_par_OC0^global_par_J14OCgam/global_par_T13-global_par_OC0^global_par_J14OCgam)/global_par_J14OCgam);
% assignmentRule: variable = OCeqn
	global_par_OCeqn=global_par_J14OCmax*global_par_Osteoclast^global_par_J14OCgam/(global_par_Osteoclast^global_par_J14OCgam+global_par_J14OC50^global_par_J14OCgam);
% assignmentRule: variable = kinRNK
	global_par_kinRNK=(global_par_koutRNK*global_par_RNK0+global_par_k3*global_par_RNK0*global_par_RANKL0-global_par_k4*global_par_M0)/global_par_TGFBact0^global_par_kinRNKgam;
% assignmentRule: variable = MOCratio
	global_par_MOCratio=x(30)/global_par_Osteoclast;
% assignmentRule: variable = MOCratio0
	global_par_MOCratio0=global_par_M0/global_par_OC0;
% assignmentRule: variable = MOCratioEff
	global_par_MOCratioEff=(global_par_MOCratio/global_par_MOCratio0)^global_par_MOCratioGam;
% assignmentRule: variable = J14OCdepend
	global_par_J14OCdepend=global_par_OCeqn*global_par_Q0*global_par_FracJ14*global_par_MOCratioEff;
% assignmentRule: variable = J14
	global_par_J14=global_par_T13*global_par_Q0*(1-global_par_FracJ14)+global_par_J14OCdepend;
% assignmentRule: variable = J41
	global_par_J41=0.464*global_par_J14;
% assignmentRule: variable = PicOCkin
	global_par_PicOCkin=global_par_Pic0;
% assignmentRule: variable = bigDb
	global_par_bigDb=global_par_kb*global_par_OB0*global_par_Pic0/global_par_ROB0;
% assignmentRule: variable = kinTGF
	global_par_kinTGF=global_par_koutTGF0*global_par_TGFB0;
% assignmentRule: variable = koutTGF
	global_par_koutTGF=global_par_koutTGF0;
% assignmentRule: variable = koutTGFact
	global_par_koutTGFact=global_par_koutTGF0*1000;
% assignmentRule: variable = koutTGFeqn
	global_par_koutTGFeqn=global_par_koutTGF*x(26)*(global_par_Osteoclast/global_par_OC0)^global_par_OCtgfGAM;
% assignmentRule: variable = E0PicROB
	global_par_E0PicROB=global_par_FracPicROB*global_par_Pic0;
% assignmentRule: variable = EC50PicROBparen
	global_par_EC50PicROBparen=global_par_EmaxPicROB*global_par_TGFBact0^global_par_PicROBgam/(global_par_Pic0-global_par_E0PicROB)-global_par_TGFBact0^global_par_PicROBgam;
% assignmentRule: variable = Dr
	global_par_Dr=global_par_kb*global_par_OB0/global_par_Pic0;
% assignmentRule: variable = PicROB
	global_par_PicROB=global_par_E0PicROB+global_par_EmaxPicROB*x(27)^global_par_PicROBgam/(x(27)^global_par_PicROBgam+global_par_EC50PicROB^global_par_PicROBgam);
% assignmentRule: variable = ROBin2
	global_par_ROBin2=global_par_Dr*global_par_PicROB;
% assignmentRule: variable = ROBin
	global_par_ROBin=global_par_ROBin2;
% assignmentRule: variable = E0PicOB
	global_par_E0PicOB=global_par_FracPicOB*global_par_Pic0;
% assignmentRule: variable = EC50PicOBparen
	global_par_EC50PicOBparen=global_par_EmaxPicOB*global_par_TGFBact0^global_par_PicOBgam/(global_par_Pic0-global_par_E0PicOB)-global_par_TGFBact0^global_par_PicOBgam;
% assignmentRule: variable = PicOB
	global_par_PicOB=global_par_E0PicOB+global_par_EmaxPicOB*x(27)^global_par_PicOBgam/(x(27)^global_par_PicOBgam+global_par_EC50PicOB^global_par_PicOBgam);
% assignmentRule: variable = KPT
	global_par_KPT=1*global_par_bigDb/global_par_PicOB;
% assignmentRule: variable = D
	global_par_D=x(15);
% assignmentRule: variable = EC50MeffOC
	global_par_EC50MeffOC=exp(log(global_par_M0^global_par_kinOCgam*global_par_EmaxMeffOC/(1-global_par_E0Meff)-global_par_M0^global_par_kinOCgam)/global_par_kinOCgam);
% assignmentRule: variable = MeffOC
	global_par_MeffOC=global_par_E0Meff+global_par_EmaxMeffOC*x(30)^global_par_kinOCgam/(x(30)^global_par_kinOCgam+global_par_EC50MeffOC^global_par_kinOCgam);
% assignmentRule: variable = kinOC2
	global_par_kinOC2=global_par_Da*global_par_PicOCkin*global_par_MeffOC*global_par_OC0;
% assignmentRule: variable = E0PicOC
	global_par_E0PicOC=global_par_FracPicOC*global_par_Pic0;
% assignmentRule: variable = EC50PicOCparen
	global_par_EC50PicOCparen=global_par_EmaxPicOC*global_par_TGFBact0^global_par_PicOCgam/(global_par_Pic0-global_par_E0PicOC)-global_par_TGFBact0^global_par_PicOCgam;
% assignmentRule: variable = PicOC
	global_par_PicOC=global_par_E0PicOC+global_par_EmaxPicOC*x(27)^global_par_PicOCgam/(x(27)^global_par_PicOCgam+global_par_EC50PicOC^global_par_PicOCgam);
% assignmentRule: variable = PiL0
	global_par_PiL0=global_par_k3/global_par_k4*global_par_RANKL0;
% assignmentRule: variable = PiL
	global_par_PiL=x(30)/10;
% assignmentRule: variable = EC50survInPar
	global_par_EC50survInPar=(global_par_E0RANKL-global_par_EmaxL)*global_par_PiL0^global_par_LsurvOCgam/(global_par_E0RANKL-1)-global_par_PiL0^global_par_LsurvOCgam;
% assignmentRule: variable = LsurvOC
	global_par_LsurvOC=global_par_E0RANKL-(global_par_E0RANKL-global_par_EmaxL)*global_par_PiL^global_par_LsurvOCgam/(global_par_PiL^global_par_LsurvOCgam+global_par_EC50surv^global_par_LsurvOCgam);
% assignmentRule: variable = KLSoc
	global_par_KLSoc=global_par_Da*global_par_PicOC*global_par_LsurvOC;
% assignmentRule: variable = C4
	global_par_C4=x(1)/global_par_V1;
% assignmentRule: variable = T66
	global_par_T66=(global_par_T67^global_par_AlphOHgam+3.85^global_par_AlphOHgam)/3.85^global_par_AlphOHgam;
% assignmentRule: variable = k15a
	global_par_k15a=global_par_k14a*global_par_QboneInit/global_par_Q0;
% assignmentRule: variable = J14a
	global_par_J14a=global_par_k14a*x(20);
% assignmentRule: variable = J15a
	global_par_J15a=global_par_k15a*x(19);
% assignmentRule: variable = kLShap
	global_par_kLShap=1/global_par_HApMRT;
% assignmentRule: variable = kHApIn
	global_par_kHApIn=global_par_kLShap/global_par_OB0;
% assignmentRule: variable = J15
	global_par_J15=global_par_T15*x(6)*(1-global_par_FracJ15)+global_par_T15*x(6)*global_par_FracJ15*x(10);
% assignmentRule: variable = J42
	global_par_J42=0.464*global_par_J15;
% assignmentRule: variable = OBfast0
	global_par_OBfast0=global_par_OB0*global_par_FracOBfast;
% assignmentRule: variable = Osteoblast
	global_par_Osteoblast=x(28)+x(29);
% assignmentRule: variable = kinLbase
	global_par_kinLbase=global_par_koutL*global_par_RANKL0;
% assignmentRule: variable = OsteoEffect
	global_par_OsteoEffect=(global_par_Osteoblast/global_par_OB0)^global_par_OsteoEffectGam;
% assignmentRule: variable = PTH50
	global_par_PTH50=global_par_EmaxLpth*3.85-3.85;
% assignmentRule: variable = PTHconc
	global_par_PTHconc=global_par_C4;
% assignmentRule: variable = LpthEff
	global_par_LpthEff=global_par_EmaxLpth*global_par_PTHconc/(global_par_PTH50*global_par_OsteoEffect^global_par_TESTPOWER+global_par_PTHconc);
% assignmentRule: variable = kinL
	global_par_kinL=global_par_kinLbase*global_par_OsteoEffect*global_par_LpthEff;
% assignmentRule: variable = pObase
	global_par_pObase=global_par_kO*global_par_OPG0;
% assignmentRule: variable = pO
	global_par_pO=global_par_pObase*global_par_D/global_par_ROB0*(global_par_PTHconc+global_par_opgPTH50*global_par_D/global_par_ROB0)/(2*global_par_PTHconc)+global_par_IO;
% assignmentRule: variable = RX2Kin
	global_par_RX2Kin=global_par_RX2Kout0*global_par_RX20;
% assignmentRule: variable = EC50PTHRX2x
	global_par_EC50PTHRX2x=global_par_EmaxPTHRX2x*3.85/(global_par_RX2Kout0-global_par_E0rx2Kout)-3.85;
% assignmentRule: variable = RX2Kout
	global_par_RX2Kout=global_par_E0rx2Kout+global_par_EmaxPTHRX2x*global_par_PTHconc/(global_par_PTHconc+global_par_EC50PTHRX2x);
% assignmentRule: variable = EC50PTHcreb
	global_par_EC50PTHcreb=global_par_EmaxPTHcreb*3.85/(1-global_par_E0crebKin)-3.85;
% assignmentRule: variable = crebKin0
	global_par_crebKin0=global_par_crebKout*global_par_CREB0;
% assignmentRule: variable = crebKin
	global_par_crebKin=global_par_crebKin0*(global_par_E0crebKin+global_par_EmaxPTHcreb*global_par_PTHconc/(global_par_PTHconc+global_par_EC50PTHcreb));
% assignmentRule: variable = bcl2Kin
	global_par_bcl2Kin=x(21)*x(22)*0.693;
% assignmentRule: variable = CaConc
	global_par_CaConc=x(6)/14;
% assignmentRule: variable = C2
	global_par_C2=x(7)/global_par_V1;
% assignmentRule: variable = PO4inhPTH
	global_par_PO4inhPTH=(global_par_C2/1.2)^global_par_PO4inhPTHgam;
% assignmentRule: variable = PhosEffTop
	global_par_PhosEffTop=(global_par_PhosEff0-1)*(1.2^global_par_PhosEffGam+global_par_PhosEff50^global_par_PhosEffGam);
% assignmentRule: variable = PhosEffBot
	global_par_PhosEffBot=global_par_PhosEff0*1.2^global_par_PhosEffGam;
% assignmentRule: variable = PhosEffMax
	global_par_PhosEffMax=global_par_PhosEffTop/global_par_PhosEffBot;
% assignmentRule: variable = PhosEff
	global_par_PhosEff=global_par_PhosEff0-global_par_PhosEffMax*global_par_PhosEff0*global_par_C2^global_par_PhosEffGam/(global_par_C2^global_par_PhosEffGam+global_par_PhosEff50^global_par_PhosEffGam);
% assignmentRule: variable = PhosEffect
	global_par_PhosEffect=piecewise(global_par_PhosEff, global_par_C2 > 1.2, 1);
% assignmentRule: variable = T68
	global_par_T68=global_par_T66*global_par_C4^global_par_AlphOHgam/(global_par_T67^global_par_AlphOHgam*global_par_PO4inhPTH+global_par_C4^global_par_AlphOHgam);
% assignmentRule: variable = SE
	global_par_SE=global_par_T65*global_par_T68*global_par_PhosEffect;
% assignmentRule: variable = C8
	global_par_C8=x(4)/global_par_V1;
% assignmentRule: variable = C1
	global_par_C1=x(6)/global_par_V1;
% assignmentRule: variable = T36
	global_par_T36=global_par_T33+(global_par_T34-global_par_T33)*global_par_C8^global_par_CaPOgam/(global_par_T35^global_par_CaPOgam+global_par_C8^global_par_CaPOgam);
% assignmentRule: variable = T37
	global_par_T37=global_par_T34-(global_par_T34-global_par_T33)*global_par_C8^global_par_CaPOgam/(global_par_T35^global_par_CaPOgam+global_par_C8^global_par_CaPOgam);
% assignmentRule: variable = CaFilt
	global_par_CaFilt=0.6*0.5*global_par_GFR*global_par_C1;
% assignmentRule: variable = ReabsMax
	global_par_ReabsMax=(0.3*global_par_GFR*2.35-0.149997)*(global_par_Reabs50+2.35)/2.35;
% assignmentRule: variable = ReabsPTHeff
	global_par_ReabsPTHeff=global_par_T16*global_par_C4/(global_par_C4+global_par_T17);
% assignmentRule: variable = CaReabsActive
	global_par_CaReabsActive=global_par_ReabsMax*global_par_C1/(global_par_Reabs50+global_par_C1)*global_par_ReabsPTHeff;
% assignmentRule: variable = T20
	global_par_T20=global_par_CaFilt-global_par_CaReabsActive;
% assignmentRule: variable = T10
	global_par_T10=global_par_T7*global_par_C8/(global_par_C8+global_par_T9);
% assignmentRule: variable = J27a
	global_par_J27a=(2-global_par_T10)*global_par_T20;
% assignmentRule: variable = J27
	global_par_J27=piecewise(0, global_par_J27a < 0, global_par_J27a);
% assignmentRule: variable = ScaEff
	global_par_ScaEff=(2.35/global_par_CaConc)^global_par_ScaEffGam;
% assignmentRule: variable = T72
	global_par_T72=90*global_par_ScaEff;
% assignmentRule: variable = T73
	global_par_T73=global_par_T71*(global_par_C8-global_par_T72);
% assignmentRule: variable = T75
	global_par_T75=global_par_T70*(0.85*(1+global_par_T74)+0.15);
% assignmentRule: variable = T76
	global_par_T76=global_par_T70*(0.85*(1-global_par_T74)+0.15);
% assignmentRule: variable = T47
	global_par_T47=global_par_T46*0.88*global_par_GFR;
% assignmentRule: variable = J48a
	global_par_J48a=0.88*global_par_GFR*global_par_C2-global_par_T47;
% assignmentRule: variable = J48
	global_par_J48=piecewise(0, global_par_J48a < 0, global_par_J48a);
% assignmentRule: variable = J53
	global_par_J53=global_par_T52*x(12);
% assignmentRule: variable = J54
	global_par_J54=global_par_T49*global_par_C2;
% assignmentRule: variable = J56
	global_par_J56=global_par_T55*x(13);
% assignmentRule: variable = E0PicOBkb
	global_par_E0PicOBkb=global_par_MultPicOBkb*global_par_Pic0;
% assignmentRule: variable = EmaxPicOBkb
	global_par_EmaxPicOBkb=global_par_FracPic0kb*global_par_Pic0;
% assignmentRule: variable = EC50PicOBparenKb
	global_par_EC50PicOBparenKb=(global_par_E0PicOBkb-global_par_EmaxPicOBkb)*global_par_TGFBact0^global_par_PicOBgamkb/(global_par_E0PicOBkb-global_par_Pic0)-global_par_TGFBact0^global_par_PicOBgamkb;
% assignmentRule: variable = PicOBkb
	global_par_PicOBkb=global_par_E0PicOBkb-(global_par_E0PicOBkb-global_par_EmaxPicOBkb)*x(27)^global_par_PicOBgamkb/(x(27)^global_par_PicOBgamkb+global_par_EC50PicOBkb^global_par_PicOBgamkb);
% assignmentRule: variable = PicOBkbEff
	global_par_PicOBkbEff=global_par_PicOBkb/global_par_Pic0;
% assignmentRule: variable = E0RUNX2kbEff
	global_par_E0RUNX2kbEff=global_par_E0RUNX2kbEffFACT*global_par_kb;
% assignmentRule: variable = RUNX2
	global_par_RUNX2=piecewise(x(23)-90, x(23) > 105, 10);
% assignmentRule: variable = RUNkbMax
	global_par_RUNkbMax=global_par_E0RUNX2kbEff*global_par_RUNkbMaxFact;
% assignmentRule: variable = INparen
	global_par_INparen=global_par_RUNkbMax*global_par_RUNX20^global_par_RUNkbGAM/(global_par_E0RUNX2kbEff-global_par_kb)-global_par_RUNX20^global_par_RUNkbGAM;
% assignmentRule: variable = RUNX2kbPrimeEff
	global_par_RUNX2kbPrimeEff=global_par_RUNkbMax*global_par_RUNX2^global_par_RUNkbGAM/(global_par_RUNX2^global_par_RUNkbGAM+global_par_RUNkb50^global_par_RUNkbGAM);
% assignmentRule: variable = kbprime
	global_par_kbprime=global_par_E0RUNX2kbEff*global_par_PicOBkbEff-global_par_RUNX2kbPrimeEff;
% assignmentRule: variable = kbslow
	global_par_kbslow=global_par_kbprime*global_par_Frackb;
% assignmentRule: variable = kbfast
	global_par_kbfast=(global_par_kb*global_par_OB0+global_par_kbslow*global_par_OBfast0-global_par_kbslow*global_par_OB0)/global_par_OBfast0;
% assignmentRule: variable = Frackb2
	global_par_Frackb2=global_par_kbfast/global_par_kbprime;
% assignmentRule: variable = T29
	global_par_T29=(global_par_T28*global_par_T0-0.17533*global_par_T0)/0.17533;
% assignmentRule: variable = T31
	global_par_T31=global_par_T28*x(8)/(x(8)+global_par_T29);
% assignmentRule: variable = T83
	global_par_T83=x(9)/0.5;
% assignmentRule: variable = J40
	global_par_J40=global_par_T31*x(8)*global_par_T83/(x(8)+global_par_T81)+global_par_T87*x(8);
% assignmentRule: variable = T85Rpart
	global_par_T85Rpart=x(9)^global_par_T80/(x(9)^global_par_T80+global_par_T81^global_par_T80);
% assignmentRule: variable = T85
	global_par_T85=global_par_T77*global_par_T85Rpart;
% assignmentRule: variable = F11
	global_par_F11=global_par_T85;
% assignmentRule: variable = INparenCtriol
	global_par_INparenCtriol=(global_par_CtriolMax-global_par_CtriolMin)*global_par_C8^global_par_CtriolPTgam/(global_par_CtriolMax-1)-global_par_C8^global_par_CtriolPTgam;
% assignmentRule: variable = CtriolPTeff
	global_par_CtriolPTeff=global_par_CtriolMax-(global_par_CtriolMax-global_par_CtriolMin)*global_par_C8^global_par_CtriolPTgam/(global_par_C8^global_par_CtriolPTgam+global_par_Ctriol50^global_par_CtriolPTgam);
% assignmentRule: variable = PTin
	global_par_PTin=global_par_PTout*global_par_CtriolPTeff;
% assignmentRule: variable = INparenCa
	global_par_INparenCa=(global_par_T58-global_par_T61)*2.35^global_par_T59/(global_par_T58-385)-2.35^global_par_T59;
% assignmentRule: variable = FCTD
	global_par_FCTD=x(2)/0.5*x(3);
% assignmentRule: variable = T63
	global_par_T63=global_par_T58-(global_par_T58-global_par_T61)*global_par_CaConc^global_par_T59/(global_par_CaConc^global_par_T59+global_par_T60^global_par_T59);
% assignmentRule: variable = EPTH
	global_par_EPTH=global_par_T63*global_par_FCTD;
% assignmentRule: variable = IPTH
	global_par_IPTH=0.693*x(5)+global_par_IPTHinf;
% assignmentRule: variable = SPTH
	global_par_SPTH=global_par_EPTH+global_par_IPTH;
% assignmentRule: variable = kout
	global_par_kout=global_par_T57/14;
% assignmentRule: variable = TERIPK
	global_par_TERIPK=x(24)*global_par_TERICL/global_par_TERIVC;

% Reaction: id = PTH_production
	reaction_PTH_production=global_par_SPTH;

% Reaction: id = PTH_administration
	reaction_PTH_administration=global_par_TERIPK;

% Reaction: id = PTH_degradation
	reaction_PTH_degradation=global_par_kout*x(1);

% Reaction: id = PTH_gland_pool_production
	reaction_PTH_gland_pool_production=(1-x(2))*global_par_T76;

% Reaction: id = PTH_gland_pool_degradation
	reaction_PTH_gland_pool_degradation=x(2)*global_par_T75;

% Reaction: id = PTH_max_capacity_increase
	reaction_PTH_max_capacity_increase=global_par_PTin;

% Reaction: id = PTH_max_capacity_decrease
	reaction_PTH_max_capacity_decrease=global_par_PTout*x(3);

% Reaction: id = Calcitriol_production
	reaction_Calcitriol_production=x(25);

% Reaction: id = Calcitriol_degradation
	reaction_Calcitriol_degradation=global_par_T69*x(4);

% Reaction: id = SC_in
	reaction_SC_in=global_par_IPTHint;

% Reaction: id = SC_out
	reaction_SC_out=0.693*x(5);

% Reaction: id = alpha_hydroxylase_production
	reaction_alpha_hydroxylase_production=global_par_SE;

% Reaction: id = alpha_hydroxylase_degradation
	reaction_alpha_hydroxylase_degradation=global_par_T64*x(25);

% Reaction: id = Ca_flux_from_Bone
	reaction_Ca_flux_from_Bone=global_par_J14;

% Reaction: id = Ca_absorption
	reaction_Ca_absorption=global_par_J40;

% Reaction: id = Ca_flux_to_Bone
	reaction_Ca_flux_to_Bone=global_par_J15;

% Reaction: id = Ca_filtration
	reaction_Ca_filtration=global_par_J27;

% Reaction: id = Ca_oral_intake
	reaction_Ca_oral_intake=global_par_OralCa*global_par_F11;

% Reaction: id = PO4_transfer_from_bone
	reaction_PO4_transfer_from_bone=global_par_J41;

% Reaction: id = PO4_absorption
	reaction_PO4_absorption=global_par_J53;

% Reaction: id = PO4_flux_from_intracellular
	reaction_PO4_flux_from_intracellular=global_par_J56;

% Reaction: id = PO4_transfer_to_bone
	reaction_PO4_transfer_to_bone=global_par_J42;

% Reaction: id = PO4_filtration
	reaction_PO4_filtration=global_par_J48;

% Reaction: id = PO4_flux_to_intracellular
	reaction_PO4_flux_to_intracellular=global_par_J54;

% Reaction: id = PO4_oral_intake
	reaction_PO4_oral_intake=global_par_OralPhos*global_par_F12;

% Reaction: id = Intestinal_calcium_in
	reaction_Intestinal_calcium_in=global_par_T36*(1-x(9));

% Reaction: id = Intestinal_calcium_out
	reaction_Intestinal_calcium_out=global_par_T37*x(9);

% Reaction: id = HAp_prouction
	reaction_HAp_prouction=global_par_kHApIn*global_par_Osteoblast;

% Reaction: id = HAp_out
	reaction_HAp_out=global_par_kLShap*x(10);

% Reaction: id = OBfast_fraction
	reaction_OBfast_fraction=global_par_bigDb/global_par_PicOB*global_par_D*global_par_FracOBfast*global_par_Frackb2;

% Reaction: id = OBfast_degradation
	reaction_OBfast_degradation=global_par_kbfast*x(28);

% Reaction: id = OBslow_fraction
	reaction_OBslow_fraction=global_par_bigDb/global_par_PicOB*global_par_D*(1-global_par_FracOBfast)*global_par_Frackb;

% Reaction: id = OBslow_degradation
	reaction_OBslow_degradation=global_par_kbslow*x(29);

% Reaction: id = Osteoclast_production
	reaction_Osteoclast_production=global_par_kinOC2;

% Reaction: id = Osteoclast_degradation
	reaction_Osteoclast_degradation=global_par_KLSoc*x(14);

% Reaction: id = Responding_Osteoblast_production
	reaction_Responding_Osteoblast_production=global_par_ROBin;

% Reaction: id = Responding_Osteoblast_degradation
	reaction_Responding_Osteoblast_degradation=global_par_KPT*x(15);

% Reaction: id = TGFB_production
	reaction_TGFB_production=global_par_kinTGF*(global_par_Osteoblast/global_par_OB0)^global_par_OBtgfGAM;

% Reaction: id = TGFB_activation
	reaction_TGFB_activation=global_par_koutTGFeqn;

% Reaction: id = TGFB_degradation
	reaction_TGFB_degradation=global_par_koutTGFact*x(27);

% Reaction: id = RANKL_production
	reaction_RANKL_production=global_par_kinL;

% Reaction: id = RANKL_degradation
	reaction_RANKL_degradation=global_par_koutL*x(16);

% Reaction: id = RANK_production
	reaction_RANK_production=global_par_kinRNK*x(27)^global_par_kinRNKgam;

% Reaction: id = RANK_degradation
	reaction_RANK_degradation=global_par_koutRNK*x(17);

% Reaction: id = OPG_production
	reaction_OPG_production=global_par_pO;

% Reaction: id = OPG_degradation
	reaction_OPG_degradation=global_par_kO*x(18);

% Reaction: id = RANKLRANKL_association
	reaction_RANKLRANKL_association=global_par_k3*x(17)*x(16);

% Reaction: id = RANKLRANKL_dissociation
	reaction_RANKLRANKL_dissociation=global_par_k4*x(30);

% Reaction: id = OPGRANKL_association
	reaction_OPGRANKL_association=global_par_k1*x(18)*x(16);

% Reaction: id = OPGRANKL_dissociation
	reaction_OPGRANKL_dissociation=global_par_k2*x(31);

% Reaction: id = Ca_to_intracellular_transfer
	reaction_Ca_to_intracellular_transfer=global_par_J14a;

% Reaction: id = Ca_to_extracellular_transfer
	reaction_Ca_to_extracellular_transfer=global_par_J15a;

% Reaction: id = RunX2_production
	reaction_RunX2_production=global_par_RX2Kin;

% Reaction: id = RunX2_degradation
	reaction_RunX2_degradation=global_par_RX2Kout*x(21);

% Reaction: id = CREB_production
	reaction_CREB_production=global_par_crebKin;

% Reaction: id = CREB_degradation
	reaction_CREB_degradation=global_par_crebKout*x(22);

% Reaction: id = Bcl2_production
	reaction_Bcl2_production=global_par_bcl2Kin;

% Reaction: id = Bcl2_degradation
	reaction_Bcl2_degradation=global_par_bcl2Kout*x(23);

%Event: id=Event
	event_Event=(time == global_par_teri_times_initial) || ((time == (global_par_event_counter+global_par_teri_times_initial)) && (time < (global_par_teri_times_interval*global_par_teri_number_of_doses+global_par_teri_times_initial)));

	if(event_Event) 
		global_par_event_counter=global_par_event_counter+global_par_teri_times_interval;
		x(24)=global_par_teri_dose_mcg*1000000/4117.8;
	end

	xdot=zeros(31,1);
	
% Species:   id = PTH, name = PTH, affected by kineticLaw
	xdot(1) = (1/(compartment_Vasculature))*(( 1.0 * reaction_PTH_production) + ( 1.0 * reaction_PTH_administration) + (-1.0 * reaction_PTH_degradation));
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(2) = (1/(compartment_PTH_Gland))*(( 1.0 * reaction_PTH_gland_pool_production) + (-1.0 * reaction_PTH_gland_pool_degradation));
	
% Species:   id = PTmax, name = PTmax, affected by kineticLaw
	xdot(3) = (1/(compartment_PTH_Gland))*(( 1.0 * reaction_PTH_max_capacity_increase) + (-1.0 * reaction_PTH_max_capacity_decrease));
	
% Species:   id = B, name = B, affected by kineticLaw
	xdot(4) = (1/(compartment_Vasculature))*(( 1.0 * reaction_Calcitriol_production) + (-1.0 * reaction_Calcitriol_degradation));
	
% Species:   id = SC, name = SC, affected by kineticLaw
	xdot(5) = (1/(compartment_Vasculature))*(( 1.0 * reaction_SC_in) + (-1.0 * reaction_SC_out));
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(6) = (1/(compartment_Vasculature))*(( 1.0 * reaction_Ca_flux_from_Bone) + ( 1.0 * reaction_Ca_absorption) + (-1.0 * reaction_Ca_flux_to_Bone) + (-1.0 * reaction_Ca_filtration));
	
% Species:   id = ECCPhos, name = ECCPhos, affected by kineticLaw
	xdot(7) = (1/(compartment_Vasculature))*(( 1.0 * reaction_PO4_transfer_from_bone) + ( 1.0 * reaction_PO4_absorption) + ( 1.0 * reaction_PO4_flux_from_intracellular) + (-1.0 * reaction_PO4_transfer_to_bone) + (-1.0 * reaction_PO4_filtration) + (-1.0 * reaction_PO4_flux_to_intracellular));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(8) = (1/(compartment_Gut))*((-1.0 * reaction_Ca_absorption) + ( 1.0 * reaction_Ca_oral_intake));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(9) = (1/(compartment_Gut))*(( 1.0 * reaction_Intestinal_calcium_in) + (-1.0 * reaction_Intestinal_calcium_out));
	
% Species:   id = HAp, name = HAp, affected by kineticLaw
	xdot(10) = (1/(compartment_Bone))*(( 1.0 * reaction_HAp_prouction) + (-1.0 * reaction_HAp_out));
	
% Species:   id = OB, name = OB
% Warning species is not changed by either rules or reactions
	xdot(11) = ;
	
% Species:   id = PhosGut, name = PhosGut, affected by kineticLaw
	xdot(12) = (1/(compartment_Gut))*((-1.0 * reaction_PO4_absorption) + ( 1.0 * reaction_PO4_oral_intake));
	
% Species:   id = IntraPO, name = IntraPO, affected by kineticLaw
	xdot(13) = (1/(compartment_Intracellular))*((-1.0 * reaction_PO4_flux_from_intracellular) + ( 1.0 * reaction_PO4_flux_to_intracellular));
	
% Species:   id = OC, name = OC, affected by kineticLaw
	xdot(14) = (1/(compartment_Bone))*(( 1.0 * reaction_Osteoclast_production) + (-1.0 * reaction_Osteoclast_degradation));
	
% Species:   id = ROB1, name = ROB1, affected by kineticLaw
	xdot(15) = (1/(compartment_Bone))*(( 1.0 * reaction_Responding_Osteoblast_production) + (-1.0 * reaction_Responding_Osteoblast_degradation));
	
% Species:   id = L, name = L, affected by kineticLaw
	xdot(16) = (1/(compartment_Bone))*(( 1.0 * reaction_RANKL_production) + (-1.0 * reaction_RANKL_degradation) + (-1.0 * reaction_RANKLRANKL_association) + ( 1.0 * reaction_RANKLRANKL_dissociation));
	
% Species:   id = RNK, name = RNK, affected by kineticLaw
	xdot(17) = (1/(compartment_Bone))*(( 1.0 * reaction_RANK_production) + (-1.0 * reaction_RANK_degradation) + (-1.0 * reaction_RANKLRANKL_association) + ( 1.0 * reaction_RANKLRANKL_dissociation));
	
% Species:   id = O, name = O, affected by kineticLaw
	xdot(18) = (1/(compartment_Bone))*(( 1.0 * reaction_OPG_production) + (-1.0 * reaction_OPG_degradation));
	
% Species:   id = Q, name = Q, affected by kineticLaw
	xdot(19) = (1/(compartment_Bone))*((-1.0 * reaction_Ca_flux_from_Bone) + ( 1.0 * reaction_Ca_flux_to_Bone) + ( 1.0 * reaction_Ca_to_intracellular_transfer) + (-1.0 * reaction_Ca_to_extracellular_transfer));
	
% Species:   id = Qbone, name = Qbone, affected by kineticLaw
	xdot(20) = (1/(compartment_Bone))*((-1.0 * reaction_Ca_to_intracellular_transfer) + ( 1.0 * reaction_Ca_to_extracellular_transfer));
	
% Species:   id = RX2, name = RX2, affected by kineticLaw
	xdot(21) = (1/(compartment_Osteoblast_Intracellular))*(( 1.0 * reaction_RunX2_production) + (-1.0 * reaction_RunX2_degradation));
	
% Species:   id = CREB, name = CREB, affected by kineticLaw
	xdot(22) = (1/(compartment_Osteoblast_Intracellular))*(( 1.0 * reaction_CREB_production) + (-1.0 * reaction_CREB_degradation));
	
% Species:   id = BCL2, name = BCL2, affected by kineticLaw
	xdot(23) = (1/(compartment_Osteoblast_Intracellular))*(( 1.0 * reaction_Bcl2_production) + (-1.0 * reaction_Bcl2_degradation));
	
% Species:   id = TERISC, name = TERISC, affected by kineticLaw
	xdot(24) = (1/(compartment_Vasculature))*((-1.0 * reaction_PTH_administration));
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(25) = (1/(compartment_Kidney))*(( 1.0 * reaction_alpha_hydroxylase_production) + (-1.0 * reaction_alpha_hydroxylase_degradation));
	
% Species:   id = TGFB, name = TGFB, affected by kineticLaw
	xdot(26) = (1/(compartment_Bone))*(( 1.0 * reaction_TGFB_production) + (-1.0 * reaction_TGFB_activation));
	
% Species:   id = TGFBact, name = TGFBact, affected by kineticLaw
	xdot(27) = (1/(compartment_Bone))*(( 1.0 * reaction_TGFB_activation) + (-1.0 * reaction_TGFB_degradation));
	
% Species:   id = OBfast, name = OBfast, affected by kineticLaw
	xdot(28) = (1/(compartment_Bone))*(( 1.0 * reaction_OBfast_fraction) + (-1.0 * reaction_OBfast_degradation));
	
% Species:   id = OBslow, name = OBslow, affected by kineticLaw
	xdot(29) = (1/(compartment_Bone))*(( 1.0 * reaction_OBslow_fraction) + (-1.0 * reaction_OBslow_degradation));
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(30) = (1/(compartment_Bone))*(( 1.0 * reaction_RANKLRANKL_association) + (-1.0 * reaction_RANKLRANKL_dissociation));
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(31) = (1/(compartment_Bone))*(( 1.0 * reaction_OPGRANKL_association) + (-1.0 * reaction_OPGRANKL_dissociation));
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


