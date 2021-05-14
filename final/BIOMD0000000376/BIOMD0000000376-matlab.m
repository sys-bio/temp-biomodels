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
% Model name = Bertram2007_IsletCell_Oscillations
%
% is http://identifiers.org/biomodels.db/MODEL7889980156
% is http://identifiers.org/biomodels.db/BIOMD0000000376
% isDescribedBy http://identifiers.org/pubmed/17172305
% is http://identifiers.org/biomodels.db/BIOMD0000000373
%


function main()
%Initial conditions vector
	x0=zeros(22,1);
	x0(12) = -60.0;
	x0(13) = 0.0;
	x0(14) = 301.0;
	x0(15) = 2.16;
	x0(16) = 0.4;
	x0(17) = 164.0;
	x0(18) = 0.2;
	x0(19) = 11.1;
	x0(20) = 1137.0;
	x0(21) = 0.17;
	x0(22) = 345.0;
	x0(1) = -60.0;
	x0(2) = 0.0;
	x0(3) = 301.0;
	x0(4) = 2.16;
	x0(5) = 0.4;
	x0(6) = 164.0;
	x0(7) = 0.2;
	x0(8) = 11.1;
	x0(9) = 1137.0;
	x0(10) = 0.17;
	x0(11) = 345.0;


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

% Compartment: id = Compartment, name = Compartment, constant
	compartment_Compartment=1.0;
% Parameter:   id =  cm, name = cm
	global_par_cm=5300.0;
% Parameter:   id =  Ik, name = Ik
% Parameter:   id =  gK, name = gK
	global_par_gK=2700.0;
% Parameter:   id =  n_infinity, name = n_infinity
% Parameter:   id =  tau_n, name = tau_n
	global_par_tau_n=20.0;
% Parameter:   id =  Ica, name = Ica
% Parameter:   id =  gCa, name = gCa
	global_par_gCa=1000.0;
% Parameter:   id =  m_infinity, name = m_infinity
% Parameter:   id =  Ikca, name = Ikca
% Parameter:   id =  gkCa, name = gkCa
	global_par_gkCa=300.0;
% Parameter:   id =  kd, name = kd
	global_par_kd=0.5;
% Parameter:   id =  Ikatp, name = Ikatp
% Parameter:   id =  gkATP_, name = gkATP_
	global_par_gkATP_=16000.0;
% Parameter:   id =  katpo, name = katpo
% Parameter:   id =  topo, name = topo
% Parameter:   id =  bottomo, name = bottomo
% Parameter:   id =  mgadp, name = mgadp
% Parameter:   id =  adp3m, name = adp3m
% Parameter:   id =  atp4m, name = atp4m
% Parameter:   id =  JGPDH, name = JGPDH
% Parameter:   id =  kGPDH, name = kGPDH
	global_par_kGPDH=5.0E-4;
% Parameter:   id =  F6P, name = F6P
% Parameter:   id =  JPFK, name = JPFK
% Parameter:   id =  JPFK_ms, name = JPFK_ms
% Parameter:   id =  bottom1, name = bottom1
	global_par_bottom1=1.0;
% Parameter:   id =  weight1, name = weight1
	global_par_weight1=1.0;
% Parameter:   id =  topa1, name = topa1
	global_par_topa1=0.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=30.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=50000.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=220.0;
% Parameter:   id =  VmaxPFK, name = VmaxPFK
	global_par_VmaxPFK=5.0;
% Parameter:   id =  weight2, name = weight2
% Parameter:   id =  topa2, name = topa2
% Parameter:   id =  bottom2, name = bottom2
% Parameter:   id =  topa3, name = topa3
% Parameter:   id =  weight3, name = weight3
% Parameter:   id =  bottom3, name = bottom3
% Parameter:   id =  f13, name = f13
	global_par_f13=0.02;
% Parameter:   id =  f43, name = f43
	global_par_f43=20.0;
% Parameter:   id =  f23, name = f23
	global_par_f23=0.2;
% Parameter:   id =  f42, name = f42
	global_par_f42=20.0;
% Parameter:   id =  f41, name = f41
	global_par_f41=20.0;
% Parameter:   id =  weight4, name = weight4
% Parameter:   id =  topa4, name = topa4
% Parameter:   id =  bottom4, name = bottom4
% Parameter:   id =  weight5, name = weight5
% Parameter:   id =  topa5, name = topa5
% Parameter:   id =  bottom5, name = bottom5
% Parameter:   id =  weight6, name = weight6
% Parameter:   id =  topa6, name = topa6
% Parameter:   id =  bottom6, name = bottom6
% Parameter:   id =  weight7, name = weight7
% Parameter:   id =  topa7, name = topa7
% Parameter:   id =  bottom7, name = bottom7
% Parameter:   id =  weight8, name = weight8
% Parameter:   id =  topa8, name = topa8
% Parameter:   id =  bottom8, name = bottom8
% Parameter:   id =  weight9, name = weight9
% Parameter:   id =  topa9, name = topa9
% Parameter:   id =  bottom9, name = bottom9
% Parameter:   id =  weight10, name = weight10
% Parameter:   id =  topa10, name = topa10
% Parameter:   id =  bottom10, name = bottom10
% Parameter:   id =  weight11, name = weight11
% Parameter:   id =  topa11, name = topa11
% Parameter:   id =  bottom11, name = bottom11
% Parameter:   id =  weight12, name = weight12
% Parameter:   id =  topa12, name = topa12
% Parameter:   id =  bottom12, name = bottom12
% Parameter:   id =  weight13, name = weight13
% Parameter:   id =  topa13, name = topa13
% Parameter:   id =  bottom13, name = bottom13
% Parameter:   id =  weight14, name = weight14
% Parameter:   id =  topa14, name = topa14
% Parameter:   id =  bottom14, name = bottom14
% Parameter:   id =  weight15, name = weight15
% Parameter:   id =  topa15, name = topa15
% Parameter:   id =  bottom15, name = bottom15
% Parameter:   id =  weight16, name = weight16
% Parameter:   id =  topa16, name = topa16
% Parameter:   id =  bottom16, name = bottom16
% Parameter:   id =  topb, name = topb
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=0.06;
% Parameter:   id =  JPDH, name = JPDH
% Parameter:   id =  p1, name = p1
	global_par_p1=400.0;
% Parameter:   id =  p2, name = p2
	global_par_p2=1.0;
% Parameter:   id =  p3, name = p3
	global_par_p3=0.01;
% Parameter:   id =  JGPDHbas, name = JGPDHbas
	global_par_JGPDHbas=5.0E-4;
% Parameter:   id =  JO, name = JO
% Parameter:   id =  p4, name = p4
	global_par_p4=0.6;
% Parameter:   id =  p5, name = p5
	global_par_p5=0.1;
% Parameter:   id =  p6, name = p6
	global_par_p6=177.0;
% Parameter:   id =  p7, name = p7
	global_par_p7=5.0;
% Parameter:   id =  NADm, name = NADm
% Parameter:   id =  NADmtot, name = NADmtot
	global_par_NADmtot=10.0;
% Parameter:   id =  Cmito, name = Cmito
	global_par_Cmito=1.8;
% Parameter:   id =  JHres, name = JHres
% Parameter:   id =  p8, name = p8
	global_par_p8=7.0;
% Parameter:   id =  p9, name = p9
	global_par_p9=0.1;
% Parameter:   id =  p10, name = p10
	global_par_p10=177.0;
% Parameter:   id =  p11, name = p11
	global_par_p11=5.0;
% Parameter:   id =  JF1F0, name = JF1F0
% Parameter:   id =  p13, name = p13
	global_par_p13=10.0;
% Parameter:   id =  p14, name = p14
	global_par_p14=190.0;
% Parameter:   id =  p15, name = p15
	global_par_p15=8.5;
% Parameter:   id =  p16, name = p16
	global_par_p16=35.0;
% Parameter:   id =  JHatp, name = JHatp
% Parameter:   id =  JGK_ms, name = JGK_ms
% Parameter:   id =  JGK, name = JGK
	global_par_JGK=0.4;
% Parameter:   id =  JHleak, name = JHleak
% Parameter:   id =  p17, name = p17
	global_par_p17=0.002;
% Parameter:   id =  p18, name = p18
	global_par_p18=-0.03;
% Parameter:   id =  JANT, name = JANT
% Parameter:   id =  p19, name = p19
	global_par_p19=0.35;
% Parameter:   id =  p20, name = p20
	global_par_p20=2.0;
% Parameter:   id =  FRT, name = FRT
	global_par_FRT=0.037410133;
% Parameter:   id =  RATm, name = RATm
% Parameter:   id =  Juni, name = Juni
% Parameter:   id =  p21, name = p21
	global_par_p21=0.04;
% Parameter:   id =  p22, name = p22
	global_par_p22=1.1;
% Parameter:   id =  JNaCa, name = JNaCa
% Parameter:   id =  p23, name = p23
	global_par_p23=0.01;
% Parameter:   id =  p24, name = p24
	global_par_p24=0.016;
% Parameter:   id =  fmito, name = fmito
	global_par_fmito=0.01;
% Parameter:   id =  Jmito, name = Jmito
% Parameter:   id =  ATPm, name = ATPm
% Parameter:   id =  Amtot, name = Amtot
	global_par_Amtot=15.0;
% Parameter:   id =  Jhyd, name = Jhyd
% Parameter:   id =  khyd, name = khyd
	global_par_khyd=5.0E-5;
% Parameter:   id =  khydbas, name = khydbas
	global_par_khydbas=5.0E-5;
% Parameter:   id =  atp, name = atp
% Parameter:   id =  atot, name = atot
	global_par_atot=2500.0;
% Parameter:   id =  fcyt, name = fcyt
	global_par_fcyt=0.01;
% Parameter:   id =  Jmem, name = Jmem
% Parameter:   id =  kPMCA, name = kPMCA
	global_par_kPMCA=0.1;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=4.5E-6;
% Parameter:   id =  Cbas, name = Cbas
	global_par_Cbas=0.05;
% Parameter:   id =  Jleak, name = Jleak
% Parameter:   id =  pleak, name = pleak
	global_par_pleak=2.0E-4;
% Parameter:   id =  JSERCA, name = JSERCA
% Parameter:   id =  kSERCA, name = kSERCA
	global_par_kSERCA=0.4;
% Parameter:   id =  Jer, name = Jer
% Parameter:   id =  fer, name = fer
	global_par_fer=0.01;
% Parameter:   id =  Vc_Ver, name = Vc_Ver
	global_par_Vc_Ver=31.0;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.001;
% Parameter:   id =  kappa, name = kappa
	global_par_kappa=0.001;
% Parameter:   id =  delta, name = delta
% Parameter:   id =  VK, name = VK
	global_par_VK=-75.0;
% Parameter:   id =  VCa, name = VCa
	global_par_VCa=25.0;
% Parameter:   id =  AMP, name = AMP
	global_par_AMP=500.0;
% assignmentRule: variable = Ik
	global_par_Ik=global_par_gK*x(2)*(x(1)-global_par_VK);
% assignmentRule: variable = n_infinity
	global_par_n_infinity=1/(1+exp((-(16+x(1)))/5));
% assignmentRule: variable = m_infinity
	global_par_m_infinity=1/(1+exp((-(20+x(1)))/12));
% assignmentRule: variable = Ica
	global_par_Ica=global_par_gCa*global_par_m_infinity*(x(1)-global_par_VCa);
% assignmentRule: variable = Ikca
	global_par_Ikca=global_par_gkCa*x(10)^2/(x(10)^2+global_par_kd^2)*(x(1)-global_par_VK);
% assignmentRule: variable = mgadp
	global_par_mgadp=0.165*x(9);
% assignmentRule: variable = topo
	global_par_topo=0.08*(1+2*global_par_mgadp/17)+0.89*(global_par_mgadp/17)^2;
% assignmentRule: variable = adp3m
	global_par_adp3m=0.135*x(9);
% assignmentRule: variable = JGPDH
	global_par_JGPDH=global_par_kGPDH*x(4)^(1/2);
% assignmentRule: variable = F6P
	global_par_F6P=0.3*x(3);
% assignmentRule: variable = topa2
	global_par_topa2=global_par_topa1;
% assignmentRule: variable = weight3
	global_par_weight3=global_par_F6P^2/global_par_k3;
% assignmentRule: variable = topa3
	global_par_topa3=global_par_topa2+global_par_weight3;
% assignmentRule: variable = weight5
	global_par_weight5=x(4)/global_par_k2;
% assignmentRule: variable = weight7
	global_par_weight7=x(4)*global_par_F6P^2/(global_par_k2*global_par_f23*global_par_k3);
% assignmentRule: variable = weight9
	global_par_weight9=global_par_AMP/global_par_k1;
% assignmentRule: variable = weight11
	global_par_weight11=global_par_AMP*global_par_F6P^2/(global_par_k1*global_par_k3*global_par_f13);
% assignmentRule: variable = weight13
	global_par_weight13=global_par_AMP*x(4)/(global_par_k1*global_par_k2);
% assignmentRule: variable = weight15
	global_par_weight15=global_par_AMP*x(4)*global_par_F6P^2/(global_par_k1*global_par_k2*global_par_f23*global_par_f13*global_par_k3);
% assignmentRule: variable = topb
	global_par_topb=global_par_weight15;
% assignmentRule: variable = JO
	global_par_JO=global_par_p4*x(5)/(global_par_p5+x(5))/(1+exp((x(6)-global_par_p6)/global_par_p7));
% assignmentRule: variable = NADm
	global_par_NADm=global_par_NADmtot-x(5);
% assignmentRule: variable = JPDH
	global_par_JPDH=global_par_p1/(global_par_p2+x(5)/global_par_NADm)*x(7)/(global_par_p3+x(7))*(global_par_JGPDH+global_par_JGPDHbas);
% assignmentRule: variable = JHres
	global_par_JHres=global_par_p8*x(5)/(global_par_p9+x(5))*1/(1+exp((x(6)-global_par_p10)/global_par_p11));
% assignmentRule: variable = JGK_ms
	global_par_JGK_ms=global_par_kappa*global_par_JGK;
% assignmentRule: variable = JHleak
	global_par_JHleak=global_par_p17*x(6)+global_par_p18;
% assignmentRule: variable = Juni
	global_par_Juni=(global_par_p21*x(6)-global_par_p22)*x(10)^2;
% assignmentRule: variable = JNaCa
	global_par_JNaCa=global_par_p23*x(7)/x(10)*exp(global_par_p24*x(6));
% assignmentRule: variable = Jmito
	global_par_Jmito=global_par_JNaCa-global_par_Juni;
% assignmentRule: variable = ATPm
	global_par_ATPm=global_par_Amtot-x(8);
% assignmentRule: variable = JF1F0
	global_par_JF1F0=global_par_p16*global_par_p13/(global_par_p13+global_par_ATPm)*1/(1+exp((global_par_p14-x(6))/global_par_p15));
% assignmentRule: variable = JHatp
	global_par_JHatp=3*global_par_JF1F0;
% assignmentRule: variable = RATm
	global_par_RATm=global_par_ATPm/x(8);
% assignmentRule: variable = JANT
	global_par_JANT=global_par_p19*global_par_RATm/(global_par_RATm+global_par_p20)*exp(0.5*global_par_FRT*x(6));
% assignmentRule: variable = atp
	global_par_atp=global_par_atot-x(9);
% assignmentRule: variable = atp4m
	global_par_atp4m=0.05*global_par_atp;
% assignmentRule: variable = bottomo
	global_par_bottomo=(1+global_par_mgadp/17)^2*(1+global_par_adp3m/26+global_par_atp4m/1);
% assignmentRule: variable = katpo
	global_par_katpo=global_par_topo/global_par_bottomo;
% assignmentRule: variable = Ikatp
	global_par_Ikatp=global_par_gkATP_*global_par_katpo*(x(1)-global_par_VK);
% assignmentRule: variable = weight2
	global_par_weight2=global_par_atp^2/global_par_k4;
% assignmentRule: variable = bottom2
	global_par_bottom2=global_par_bottom1+global_par_weight2;
% assignmentRule: variable = bottom3
	global_par_bottom3=global_par_bottom2+global_par_weight3;
% assignmentRule: variable = weight4
	global_par_weight4=(global_par_F6P*global_par_atp)^2/(global_par_k3*global_par_k4*global_par_f43);
% assignmentRule: variable = topa4
	global_par_topa4=global_par_topa3+global_par_weight4;
% assignmentRule: variable = bottom4
	global_par_bottom4=global_par_bottom3+global_par_weight4;
% assignmentRule: variable = topa5
	global_par_topa5=global_par_topa4;
% assignmentRule: variable = bottom5
	global_par_bottom5=global_par_bottom4+global_par_weight5;
% assignmentRule: variable = weight6
	global_par_weight6=x(4)*global_par_atp^2/(global_par_k2*global_par_f42*global_par_k4);
% assignmentRule: variable = topa6
	global_par_topa6=global_par_topa5;
% assignmentRule: variable = bottom6
	global_par_bottom6=global_par_bottom5+global_par_weight6;
% assignmentRule: variable = topa7
	global_par_topa7=global_par_topa6+global_par_weight7;
% assignmentRule: variable = bottom7
	global_par_bottom7=global_par_bottom6+global_par_weight7;
% assignmentRule: variable = weight8
	global_par_weight8=x(4)*global_par_F6P^2*global_par_atp^2/(global_par_k2*global_par_f23*global_par_f42*global_par_f43*global_par_k3*global_par_k4);
% assignmentRule: variable = topa8
	global_par_topa8=global_par_topa7+global_par_weight8;
% assignmentRule: variable = topa9
	global_par_topa9=global_par_topa8;
% assignmentRule: variable = bottom8
	global_par_bottom8=global_par_bottom7+global_par_weight8;
% assignmentRule: variable = bottom9
	global_par_bottom9=global_par_bottom8+global_par_weight9;
% assignmentRule: variable = weight10
	global_par_weight10=global_par_AMP*global_par_atp^2/(global_par_k1*global_par_k4*global_par_f41);
% assignmentRule: variable = topa10
	global_par_topa10=global_par_topa9;
% assignmentRule: variable = bottom10
	global_par_bottom10=global_par_bottom9+global_par_weight10;
% assignmentRule: variable = topa11
	global_par_topa11=global_par_topa10+global_par_weight11;
% assignmentRule: variable = bottom11
	global_par_bottom11=global_par_bottom10+global_par_weight11;
% assignmentRule: variable = weight12
	global_par_weight12=global_par_AMP*global_par_F6P^2*global_par_atp^2/(global_par_k1*global_par_f13*global_par_f41*global_par_f43*global_par_k3*global_par_k4);
% assignmentRule: variable = topa12
	global_par_topa12=global_par_topa11+global_par_weight12;
% assignmentRule: variable = bottom12
	global_par_bottom12=global_par_bottom11+global_par_weight12;
% assignmentRule: variable = topa13
	global_par_topa13=global_par_topa12;
% assignmentRule: variable = bottom13
	global_par_bottom13=global_par_bottom12+global_par_weight13;
% assignmentRule: variable = weight14
	global_par_weight14=global_par_AMP*x(4)*global_par_atp^2/(global_par_k1*global_par_k2*global_par_f42*global_par_f41*global_par_k4);
% assignmentRule: variable = topa14
	global_par_topa14=global_par_topa13;
% assignmentRule: variable = bottom14
	global_par_bottom14=global_par_bottom13+global_par_weight14;
% assignmentRule: variable = topa15
	global_par_topa15=global_par_topa14;
% assignmentRule: variable = bottom15
	global_par_bottom15=global_par_bottom14+global_par_weight15;
% assignmentRule: variable = weight16
	global_par_weight16=global_par_AMP*x(4)*global_par_F6P^2*global_par_atp^2/(global_par_k1*global_par_k2*global_par_k3*global_par_k4*global_par_f23*global_par_f13*global_par_f42*global_par_f41*global_par_f43);
% assignmentRule: variable = topa16
	global_par_topa16=global_par_topa15+global_par_weight16;
% assignmentRule: variable = bottom16
	global_par_bottom16=global_par_bottom15+global_par_weight16;
% assignmentRule: variable = JPFK
	global_par_JPFK=(global_par_VmaxPFK*global_par_lambda*global_par_topa16+global_par_VmaxPFK*global_par_topb)/global_par_bottom16;
% assignmentRule: variable = JPFK_ms
	global_par_JPFK_ms=global_par_kappa*global_par_JPFK;
% assignmentRule: variable = Jhyd
	global_par_Jhyd=(global_par_khyd*x(10)+global_par_khydbas)*global_par_atp;
% assignmentRule: variable = Jmem
	global_par_Jmem=-(global_par_alpha*global_par_Ica+global_par_kPMCA*(x(10)-global_par_Cbas));
% assignmentRule: variable = Jleak
	global_par_Jleak=global_par_pleak*(x(11)-x(10));
% assignmentRule: variable = JSERCA
	global_par_JSERCA=global_par_kSERCA*x(10);
% assignmentRule: variable = Jer
	global_par_Jer=global_par_Jleak-global_par_JSERCA;
% assignmentRule: variable = delta
	global_par_delta=3.9/53.2;
% rateRule: variable = Vm
x(1) = x(12);
% rateRule: variable = n
x(2) = x(13);
% rateRule: variable = G6P
x(3) = x(14);
% rateRule: variable = FBP
x(4) = x(15);
% rateRule: variable = NADHm
x(5) = x(16);
% rateRule: variable = delta_psi
x(6) = x(17);
% rateRule: variable = Cam
x(7) = x(18);
% rateRule: variable = ADPm
x(8) = x(19);
% rateRule: variable = adp
x(9) = x(20);
% rateRule: variable = c
x(10) = x(21);
% rateRule: variable = Caer
x(11) = x(22);

	xdot=zeros(22,1);
	% rateRule: variable = Vm
	xdot(12) = (-(global_par_Ik+global_par_Ica+global_par_Ikca+global_par_Ikatp))/global_par_cm;
	% rateRule: variable = n
	xdot(13) = (global_par_n_infinity-x(2))/global_par_tau_n;
	% rateRule: variable = G6P
	xdot(14) = global_par_JGK_ms-global_par_JPFK_ms;
	% rateRule: variable = FBP
	xdot(15) = global_par_JPFK_ms-0.5*global_par_JGPDH;
	% rateRule: variable = NADHm
	xdot(16) = global_par_gamma*(global_par_JPDH-global_par_JO);
	% rateRule: variable = delta_psi
	xdot(17) = (global_par_JHres-(global_par_JHatp+global_par_JANT+global_par_JHleak+global_par_JNaCa+2*global_par_Juni))/global_par_Cmito;
	% rateRule: variable = Cam
	xdot(18) = (-global_par_fmito)*global_par_Jmito;
	% rateRule: variable = ADPm
	xdot(19) = global_par_gamma*(global_par_JANT-global_par_JF1F0);
	% rateRule: variable = adp
	xdot(20) = (-global_par_delta)*global_par_JANT+global_par_Jhyd;
	% rateRule: variable = c
	xdot(21) = global_par_fcyt*(global_par_Jmem+global_par_Jer+global_par_delta*global_par_Jmito);
	% rateRule: variable = Caer
	xdot(22) = (-global_par_fer)*global_par_Vc_Ver*global_par_Jer;
	
% Species:   id = Vm, name = Vm, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = n, name = n, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = G6P, name = G6P, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = FBP, name = FBP, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = NADHm, name = NADHm, defined in a rule 	xdot(5) = x(5);
	
% Species:   id = delta_psi, name = delta_psi, defined in a rule 	xdot(6) = x(6);
	
% Species:   id = Cam, name = Cam, defined in a rule 	xdot(7) = x(7);
	
% Species:   id = ADPm, name = ADPm, defined in a rule 	xdot(8) = x(8);
	
% Species:   id = adp, name = adp, defined in a rule 	xdot(9) = x(9);
	
% Species:   id = c, name = c, defined in a rule 	xdot(10) = x(10);
	
% Species:   id = Caer, name = Caer, defined in a rule 	xdot(11) = x(11);
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


