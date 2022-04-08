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
% Model name = Invergo2014 - Phototransduction cascade in mouse rod cells
%
% is http://identifiers.org/biomodels.db/MODEL1501210000
% is http://identifiers.org/biomodels.db/BIOMD0000000578
% isDescribedBy http://identifiers.org/pubmed/24675755
% isDerivedFrom http://identifiers.org/pubmed/21843151
%


function main()
%Initial conditions vector
	x0=zeros(77,1);
	x0(77) = 0.25;
	x0(1) = 1260760.0;
	x0(2) = 1123300.0;
	x0(3) = 891810.0;
	x0(4) = 19.2199;
	x0(5) = 0.25;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 8152500.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 2000000.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 9.81525E7;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
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
	x0(62) = 0.0;
	x0(63) = 0.0;
	x0(64) = 0.0;
	x0(65) = 0.0;
	x0(66) = 0.0;
	x0(67) = 0.0;
	x0(68) = 100000.0;
	x0(69) = 0.0;
	x0(70) = 0.0;
	x0(71) = 580.0;
	x0(72) = 1847500.0;
	x0(73) = 510930.0;
	x0(74) = 199420.0;
	x0(75) = 9289650.0;
	x0(76) = 6.4944;


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

% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=0.03916;
% Parameter:   id =  Rtot, name = Rtot
	global_par_Rtot=1.0E8;
% Parameter:   id =  PDEtot, name = PDEtot
	global_par_PDEtot=2000000.0;
% Parameter:   id =  Gtot, name = Gtot
	global_par_Gtot=1.0E7;
% Parameter:   id =  RGStot, name = RGStot
	global_par_RGStot=100000.0;
% Parameter:   id =  ArrTot, name = ArrTot
	global_par_ArrTot=7074600.0;
% Parameter:   id =  flashBG, name = flashBG
	global_par_flashBG=0.0;
% Parameter:   id =  flash0Dur, name = flash0Dur
	global_par_flash0Dur=0.001;
% Parameter:   id =  flash0Mag, name = flash0Mag
	global_par_flash0Mag=0.0;
% Parameter:   id =  flashDel, name = flashDel
	global_par_flashDel=0.0;
% Parameter:   id =  flashDur, name = flashDur
	global_par_flashDur=0.001;
% Parameter:   id =  flashMag, name = flashMag
	global_par_flashMag=0.0;
% Parameter:   id =  otherstimulus, name = otherstimulus
	global_par_otherstimulus=0.0;
% Parameter:   id =  kRK1_0, name = kRK1_0
	global_par_kRK1_0=0.1724;
% Parameter:   id =  omega, name = omega
	global_par_omega=2.5;
% Parameter:   id =  kRK2, name = kRK2
	global_par_kRK2=250.0;
% Parameter:   id =  kRK3_ATP, name = kRK3_ATP
	global_par_kRK3_ATP=4000.0;
% Parameter:   id =  kRK4, name = kRK4
	global_par_kRK4=250.0;
% Parameter:   id =  kArr, name = kArr
	global_par_kArr=9.9147E-6;
% Parameter:   id =  kA2, name = kA2
	global_par_kA2=0.026;
% Parameter:   id =  m_Arr, name = m_Arr
	global_par_m_Arr=9.5475E-6;
% Parameter:   id =  kA3, name = kA3
	global_par_kA3=1.1651;
% Parameter:   id =  kA4, name = kA4
	global_par_kA4=2.9965E-7;
% Parameter:   id =  kA5, name = kA5
	global_par_kA5=0.424;
% Parameter:   id =  kOps, name = kOps
	global_par_kOps=6.1172E-13;
% Parameter:   id =  kRrecyc, name = kRrecyc
	global_par_kRrecyc=7.0E-4;
% Parameter:   id =  omega_G, name = omega_G
	global_par_omega_G=0.6;
% Parameter:   id =  kG1_0, name = kG1_0
	global_par_kG1_0=0.001;
% Parameter:   id =  kG2, name = kG2
	global_par_kG2=2200.0;
% Parameter:   id =  kG3, name = kG3
	global_par_kG3=8500.0;
% Parameter:   id =  kG4_GDP, name = kG4_GDP
	global_par_kG4_GDP=400.0;
% Parameter:   id =  kG5_GTP, name = kG5_GTP
	global_par_kG5_GTP=3500.0;
% Parameter:   id =  kG6, name = kG6
	global_par_kG6=8500.0;
% Parameter:   id =  kG7, name = kG7
	global_par_kG7=200.0;
% Parameter:   id =  kGrecyc, name = kGrecyc
	global_par_kGrecyc=2.0;
% Parameter:   id =  kGshutoff, name = kGshutoff
	global_par_kGshutoff=0.05;
% Parameter:   id =  kP1, name = kP1
	global_par_kP1=0.05497;
% Parameter:   id =  kP1_rev, name = kP1_rev
	global_par_kP1_rev=0.0;
% Parameter:   id =  kP2, name = kP2
	global_par_kP2=940.7;
% Parameter:   id =  kP3, name = kP3
	global_par_kP3=1.4983E-9;
% Parameter:   id =  kP4, name = kP4
	global_par_kP4=21.088;
% Parameter:   id =  kPDEshutoff, name = kPDEshutoff
	global_par_kPDEshutoff=0.1;
% Parameter:   id =  kRGS1, name = kRGS1
	global_par_kRGS1=4.8182E-5;
% Parameter:   id =  kRGS2, name = kRGS2
	global_par_kRGS2=98.0;
% Parameter:   id =  kRec1, name = kRec1
	global_par_kRec1=0.011;
% Parameter:   id =  kRec2, name = kRec2
	global_par_kRec2=0.05;
% Parameter:   id =  kRec3, name = kRec3
	global_par_kRec3=4.1081E-4;
% Parameter:   id =  kRec4, name = kRec4
	global_par_kRec4=0.610084;
% Parameter:   id =  Vcyto, name = Vcyto
	global_par_Vcyto=0.03916;
% Parameter:   id =  Kc1, name = Kc1
	global_par_Kc1=0.171;
% Parameter:   id =  Kc2, name = Kc2
	global_par_Kc2=0.059;
% Parameter:   id =  m1, name = m1
	global_par_m1=3.0;
% Parameter:   id =  m2, name = m2
	global_par_m2=1.5;
% Parameter:   id =  alfamax, name = alfamax
	global_par_alfamax=60.0;
% Parameter:   id =  betadark, name = betadark
	global_par_betadark=3.19;
% Parameter:   id =  betasub, name = betasub
	global_par_betasub=0.0021826;
% Parameter:   id =  fCa, name = fCa
	global_par_fCa=0.12;
% Parameter:   id =  Jdark, name = Jdark
	global_par_Jdark=14.87;
% Parameter:   id =  F, name = F
	global_par_F=96485.34;
% Parameter:   id =  cGMPdark, name = cGMPdark
	global_par_cGMPdark=6.4944;
% Parameter:   id =  ncg, name = ncg
	global_par_ncg=3.8;
% Parameter:   id =  gammaCa, name = gammaCa
	global_par_gammaCa=981.3558;
% Parameter:   id =  Ca2dark, name = Ca2dark
	global_par_Ca2dark=0.25;
% Parameter:   id =  Ca2_0, name = Ca2_0
	global_par_Ca2_0=0.023;
% Parameter:   id =  k1, name = k1
	global_par_k1=9.37059;
% Parameter:   id =  k2, name = k2
	global_par_k2=46.412;
% Parameter:   id =  eT, name = eT
	global_par_eT=400.0;
% Parameter:   id =  ktherm, name = ktherm
	global_par_ktherm=0.0238;
% Parameter:   id =  background, name = background
% Parameter:   id =  premag, name = premag
% Parameter:   id =  mag, name = mag
% Parameter:   id =  predur, name = predur
% Parameter:   id =  dur, name = dur
% Parameter:   id =  del, name = del
% Parameter:   id =  preflash, name = preflash
% Parameter:   id =  testflash, name = testflash
% Parameter:   id =  stimulus, name = stimulus
% Parameter:   id =  numConcFactor, name = numConcFactor
% Parameter:   id =  kRK1_1, name = kRK1_1
% Parameter:   id =  kRK1_2, name = kRK1_2
% Parameter:   id =  kRK1_3, name = kRK1_3
% Parameter:   id =  kRK1_4, name = kRK1_4
% Parameter:   id =  kRK1_5, name = kRK1_5
% Parameter:   id =  kRK1_6, name = kRK1_6
% Parameter:   id =  kA1_1, name = kA1_1
% Parameter:   id =  kA1_2, name = kA1_2
% Parameter:   id =  kA1_3, name = kA1_3
% Parameter:   id =  kA1_4, name = kA1_4
% Parameter:   id =  kA1_5, name = kA1_5
% Parameter:   id =  kA1_6, name = kA1_6
% Parameter:   id =  kGpre1, name = kGpre1
% Parameter:   id =  kGpre2, name = kGpre2
% Parameter:   id =  kG1ops, name = kG1ops
% Parameter:   id =  kG2ops, name = kG2ops
% Parameter:   id =  kG1_1, name = kG1_1
% Parameter:   id =  kG1_2, name = kG1_2
% Parameter:   id =  kG1_3, name = kG1_3
% Parameter:   id =  kG1_4, name = kG1_4
% Parameter:   id =  kG1_5, name = kG1_5
% Parameter:   id =  kG1_6, name = kG1_6
% Parameter:   id =  E, name = E
% Parameter:   id =  Ca2_frac, name = Ca2_frac
% Parameter:   id =  J, name = J
% Parameter:   id =  deltaJ, name = deltaJ
% assignmentRule: variable = background
	global_par_background=global_par_flashBG;
% assignmentRule: variable = premag
	global_par_premag=global_par_flash0Mag/global_par_flash0Dur;
% assignmentRule: variable = mag
	global_par_mag=global_par_flashMag/global_par_flashDur;
% assignmentRule: variable = predur
	global_par_predur=global_par_flash0Dur;
% assignmentRule: variable = dur
	global_par_dur=global_par_flashDur;
% assignmentRule: variable = del
	global_par_del=global_par_flashDel;
% assignmentRule: variable = preflash
	global_par_preflash=piecewise(global_par_premag, time <= global_par_predur, 0);
% assignmentRule: variable = testflash
	global_par_testflash=piecewise(global_par_mag, (time >= global_par_del) && (time <= (global_par_del+global_par_dur)), 0);
% assignmentRule: variable = stimulus
	global_par_stimulus=global_par_background+global_par_preflash+global_par_testflash+global_par_otherstimulus;
% assignmentRule: variable = numConcFactor
	global_par_numConcFactor=1/(6.022E5*global_par_Vcyto);
% assignmentRule: variable = kRK1_1
	global_par_kRK1_1=global_par_kRK1_0*exp(-global_par_omega);
% assignmentRule: variable = kRK1_2
	global_par_kRK1_2=global_par_kRK1_0*exp((-global_par_omega)*2);
% assignmentRule: variable = kRK1_3
	global_par_kRK1_3=global_par_kRK1_0*exp((-global_par_omega)*3);
% assignmentRule: variable = kRK1_4
	global_par_kRK1_4=global_par_kRK1_0*exp((-global_par_omega)*4);
% assignmentRule: variable = kRK1_5
	global_par_kRK1_5=global_par_kRK1_0*exp((-global_par_omega)*5);
% assignmentRule: variable = kRK1_6
	global_par_kRK1_6=0;
% assignmentRule: variable = kA1_1
	global_par_kA1_1=global_par_kArr;
% assignmentRule: variable = kA1_2
	global_par_kA1_2=global_par_kArr+1*global_par_m_Arr;
% assignmentRule: variable = kA1_3
	global_par_kA1_3=global_par_kArr+2*global_par_m_Arr;
% assignmentRule: variable = kA1_4
	global_par_kA1_4=global_par_kArr+3*global_par_m_Arr;
% assignmentRule: variable = kA1_5
	global_par_kA1_5=global_par_kArr+3*global_par_m_Arr;
% assignmentRule: variable = kA1_6
	global_par_kA1_6=global_par_kArr+3*global_par_m_Arr;
% assignmentRule: variable = kGpre1
	global_par_kGpre1=global_par_kG1_0*1.6;
% assignmentRule: variable = kGpre2
	global_par_kGpre2=global_par_kG2*315;
% assignmentRule: variable = kG1ops
	global_par_kG1ops=global_par_kG1_0*1.9;
% assignmentRule: variable = kG2ops
	global_par_kG2ops=global_par_kG2*3;
% assignmentRule: variable = kG1_1
	global_par_kG1_1=global_par_kG1_0*exp(-global_par_omega_G);
% assignmentRule: variable = kG1_2
	global_par_kG1_2=global_par_kG1_0*exp((-global_par_omega_G)*2);
% assignmentRule: variable = kG1_3
	global_par_kG1_3=global_par_kG1_0*exp((-global_par_omega_G)*3);
% assignmentRule: variable = kG1_4
	global_par_kG1_4=global_par_kG1_0*exp((-global_par_omega_G)*4);
% assignmentRule: variable = kG1_5
	global_par_kG1_5=global_par_kG1_0*exp((-global_par_omega_G)*5);
% assignmentRule: variable = kG1_6
	global_par_kG1_6=global_par_kG1_0*exp((-global_par_omega_G)*6);
% assignmentRule: variable = E
	global_par_E=x(19)+2*x(10)+x(9);
% assignmentRule: variable = Ca2_frac
	global_par_Ca2_frac=(x(5)-global_par_Ca2_0)/(global_par_Ca2dark-global_par_Ca2_0);
% assignmentRule: variable = J
	global_par_J=2/(2+global_par_fCa)*(x(76)/global_par_cGMPdark)^global_par_ncg*global_par_Jdark+global_par_fCa/(global_par_fCa+2)*global_par_Ca2_frac*global_par_Jdark;
% assignmentRule: variable = deltaJ
	global_par_deltaJ=global_par_Jdark-global_par_J;
% rateRule: variable = Ca2_free
x(5) = x(77);

% Reaction: id = v_r1, name = v_r1
	reaction_v_r1=global_par_stimulus*x(20)/global_par_Rtot;

% Reaction: id = v_rstprec, name = v_rstprec
	reaction_v_rstprec=global_par_stimulus*x(72)/global_par_Rtot;

% Reaction: id = v_r2_0, name = v_r2_0
	reaction_v_r2_0=global_par_kRK1_0*x(71)*x(21)-global_par_kRK2*x(25);

% Reaction: id = v_r2_1, name = v_r2_1
	reaction_v_r2_1=global_par_kRK1_1*x(71)*x(26)-global_par_kRK2*x(32);

% Reaction: id = v_r2_2, name = v_r2_2
	reaction_v_r2_2=global_par_kRK1_2*x(71)*x(33)-global_par_kRK2*x(39);

% Reaction: id = v_r2_3, name = v_r2_3
	reaction_v_r2_3=global_par_kRK1_3*x(71)*x(40)-global_par_kRK2*x(46);

% Reaction: id = v_r2_4, name = v_r2_4
	reaction_v_r2_4=global_par_kRK1_4*x(71)*x(47)-global_par_kRK2*x(53);

% Reaction: id = v_r2_5, name = v_r2_5
	reaction_v_r2_5=global_par_kRK1_5*x(71)*x(54)-global_par_kRK2*x(60);

% Reaction: id = v_r2_6, name = v_r2_6
	reaction_v_r2_6=global_par_kRK1_6*x(71)*x(61)-global_par_kRK2*x(67);

% Reaction: id = v_r3_0, name = v_r3_0
	reaction_v_r3_0=global_par_kRK3_ATP*x(25);

% Reaction: id = v_r3_1, name = v_r3_1
	reaction_v_r3_1=global_par_kRK3_ATP*x(32);

% Reaction: id = v_r3_2, name = v_r3_2
	reaction_v_r3_2=global_par_kRK3_ATP*x(39);

% Reaction: id = v_r3_3, name = v_r3_3
	reaction_v_r3_3=global_par_kRK3_ATP*x(46);

% Reaction: id = v_r3_4, name = v_r3_4
	reaction_v_r3_4=global_par_kRK3_ATP*x(53);

% Reaction: id = v_r3_5, name = v_r3_5
	reaction_v_r3_5=global_par_kRK3_ATP*x(60);

% Reaction: id = v_r4_1, name = v_r4_1
	reaction_v_r4_1=global_par_kRK4*x(31);

% Reaction: id = v_r4_2, name = v_r4_2
	reaction_v_r4_2=global_par_kRK4*x(38);

% Reaction: id = v_r4_3, name = v_r4_3
	reaction_v_r4_3=global_par_kRK4*x(45);

% Reaction: id = v_r4_4, name = v_r4_4
	reaction_v_r4_4=global_par_kRK4*x(52);

% Reaction: id = v_r4_5, name = v_r4_5
	reaction_v_r4_5=global_par_kRK4*x(59);

% Reaction: id = v_r4_6, name = v_r4_6
	reaction_v_r4_6=global_par_kRK4*x(66);

% Reaction: id = v_r5_1, name = v_r5_1
	reaction_v_r5_1=global_par_kA1_1*x(1)*x(26)-global_par_kA2*x(27);

% Reaction: id = v_r5_2, name = v_r5_2
	reaction_v_r5_2=global_par_kA1_2*x(1)*x(33)-global_par_kA2*x(34);

% Reaction: id = v_r5_3, name = v_r5_3
	reaction_v_r5_3=global_par_kA1_3*x(1)*x(40)-global_par_kA2*x(41);

% Reaction: id = v_r5_4, name = v_r5_4
	reaction_v_r5_4=global_par_kA1_4*x(1)*x(47)-global_par_kA2*x(48);

% Reaction: id = v_r5_5, name = v_r5_5
	reaction_v_r5_5=global_par_kA1_5*x(1)*x(54)-global_par_kA2*x(55);

% Reaction: id = v_r5_6, name = v_r5_6
	reaction_v_r5_6=global_par_kA1_6*x(1)*x(61)-global_par_kA2*x(62);

% Reaction: id = v_r6_1, name = v_r6_1
	reaction_v_r6_1=global_par_kA3*x(27);

% Reaction: id = v_r6_2, name = v_r6_2
	reaction_v_r6_2=global_par_kA3*x(34);

% Reaction: id = v_r6_3, name = v_r6_3
	reaction_v_r6_3=global_par_kA3*x(41);

% Reaction: id = v_r6_4, name = v_r6_4
	reaction_v_r6_4=global_par_kA3*x(48);

% Reaction: id = v_r6_5, name = v_r6_5
	reaction_v_r6_5=global_par_kA3*x(55);

% Reaction: id = v_r6_6, name = v_r6_6
	reaction_v_r6_6=global_par_kA3*x(62);

% Reaction: id = v_r7_0, name = v_r7_0
	reaction_v_r7_0=global_par_ktherm*x(21);

% Reaction: id = v_r7_1, name = v_r7_1
	reaction_v_r7_1=global_par_ktherm*x(26);

% Reaction: id = v_r7_2, name = v_r7_2
	reaction_v_r7_2=global_par_ktherm*x(33);

% Reaction: id = v_r7_3, name = v_r7_3
	reaction_v_r7_3=global_par_ktherm*x(40);

% Reaction: id = v_r7_4, name = v_r7_4
	reaction_v_r7_4=global_par_ktherm*x(47);

% Reaction: id = v_r7_5, name = v_r7_5
	reaction_v_r7_5=global_par_ktherm*x(54);

% Reaction: id = v_r7_6, name = v_r7_6
	reaction_v_r7_6=global_par_ktherm*x(61);

% Reaction: id = v_r8, name = v_r8
	reaction_v_r8=global_par_kG1ops*x(13)*x(12)-global_par_kG2ops*x(16);

% Reaction: id = v_r9, name = v_r9
	reaction_v_r9=global_par_kOps*x(16)-global_par_kG4_GDP*x(14);

% Reaction: id = v_r10, name = v_r10
	reaction_v_r10=global_par_kG5_GTP*x(14);

% Reaction: id = v_r11, name = v_r11
	reaction_v_r11=global_par_kG6*x(15);

% Reaction: id = v_r12, name = v_r12
	reaction_v_r12=global_par_kRrecyc*x(13);

% Reaction: id = v_GtRpre, name = v_GtRpre
	reaction_v_GtRpre=global_par_kGpre1*x(12)*x(20)-global_par_kGpre2*x(72);

% Reaction: id = v_r13_0, name = v_r13_0
	reaction_v_r13_0=global_par_kG1_0*x(12)*x(21)-global_par_kG2*x(24);

% Reaction: id = v_r13_1, name = v_r13_1
	reaction_v_r13_1=global_par_kG1_1*x(12)*x(26)-global_par_kG2*x(30);

% Reaction: id = v_r13_2, name = v_r13_2
	reaction_v_r13_2=global_par_kG1_2*x(12)*x(33)-global_par_kG2*x(37);

% Reaction: id = v_r13_3, name = v_r13_3
	reaction_v_r13_3=global_par_kG1_3*x(12)*x(40)-global_par_kG2*x(44);

% Reaction: id = v_r13_4, name = v_r13_4
	reaction_v_r13_4=global_par_kG1_4*x(12)*x(47)-global_par_kG2*x(51);

% Reaction: id = v_r13_5, name = v_r13_5
	reaction_v_r13_5=global_par_kG1_5*x(12)*x(54)-global_par_kG2*x(58);

% Reaction: id = v_r13_6, name = v_r13_6
	reaction_v_r13_6=global_par_kG1_6*x(12)*x(61)-global_par_kG2*x(65);

% Reaction: id = v_r14_0, name = v_r14_0
	reaction_v_r14_0=global_par_kG3*x(24)-global_par_kG4_GDP*x(22);

% Reaction: id = v_r14_1, name = v_r14_1
	reaction_v_r14_1=global_par_kG3*x(30)-global_par_kG4_GDP*x(28);

% Reaction: id = v_r14_2, name = v_r14_2
	reaction_v_r14_2=global_par_kG3*x(37)-global_par_kG4_GDP*x(35);

% Reaction: id = v_r14_3, name = v_r14_3
	reaction_v_r14_3=global_par_kG3*x(44)-global_par_kG4_GDP*x(42);

% Reaction: id = v_r14_4, name = v_r14_4
	reaction_v_r14_4=global_par_kG3*x(51)-global_par_kG4_GDP*x(49);

% Reaction: id = v_r14_5, name = v_r14_5
	reaction_v_r14_5=global_par_kG3*x(58)-global_par_kG4_GDP*x(56);

% Reaction: id = v_r14_6, name = v_r14_6
	reaction_v_r14_6=global_par_kG3*x(65)-global_par_kG4_GDP*x(63);

% Reaction: id = v_r15_0, name = v_r15_0
	reaction_v_r15_0=global_par_kG5_GTP*x(22);

% Reaction: id = v_r15_1, name = v_r15_1
	reaction_v_r15_1=global_par_kG5_GTP*x(28);

% Reaction: id = v_r15_2, name = v_r15_2
	reaction_v_r15_2=global_par_kG5_GTP*x(35);

% Reaction: id = v_r15_3, name = v_r15_3
	reaction_v_r15_3=global_par_kG5_GTP*x(42);

% Reaction: id = v_r15_4, name = v_r15_4
	reaction_v_r15_4=global_par_kG5_GTP*x(49);

% Reaction: id = v_r15_5, name = v_r15_5
	reaction_v_r15_5=global_par_kG5_GTP*x(56);

% Reaction: id = v_r15_6, name = v_r15_6
	reaction_v_r15_6=global_par_kG5_GTP*x(63);

% Reaction: id = v_r16_0, name = v_r16_0
	reaction_v_r16_0=global_par_kG6*x(23);

% Reaction: id = v_r16_1, name = v_r16_1
	reaction_v_r16_1=global_par_kG6*x(29);

% Reaction: id = v_r16_2, name = v_r16_2
	reaction_v_r16_2=global_par_kG6*x(36);

% Reaction: id = v_r16_3, name = v_r16_3
	reaction_v_r16_3=global_par_kG6*x(43);

% Reaction: id = v_r16_4, name = v_r16_4
	reaction_v_r16_4=global_par_kG6*x(50);

% Reaction: id = v_r16_5, name = v_r16_5
	reaction_v_r16_5=global_par_kG6*x(57);

% Reaction: id = v_r16_6, name = v_r16_6
	reaction_v_r16_6=global_par_kG6*x(64);

% Reaction: id = v_r17, name = v_r17
	reaction_v_r17=global_par_kG7*x(6);

% Reaction: id = v_r18, name = v_r18
	reaction_v_r18=global_par_kP1*x(17)*x(8)-global_par_kP1_rev*x(18);

% Reaction: id = v_r19, name = v_r19
	reaction_v_r19=global_par_kP2*x(18);

% Reaction: id = v_r20, name = v_r20
	reaction_v_r20=global_par_kP3*x(19)*x(8);

% Reaction: id = v_r21, name = v_r21
	reaction_v_r21=global_par_kP4*x(9);

% Reaction: id = v_r22, name = v_r22
	reaction_v_r22=global_par_kRGS1*x(68)*x(10);

% Reaction: id = v_r23, name = v_r23
	reaction_v_r23=global_par_kRGS2*x(69);

% Reaction: id = v_r24, name = v_r24
	reaction_v_r24=global_par_kRGS1*x(68)*x(19);

% Reaction: id = v_r25, name = v_r25
	reaction_v_r25=global_par_kRGS2*x(70);

% Reaction: id = v_r26, name = v_r26
	reaction_v_r26=global_par_kPDEshutoff*x(19);

% Reaction: id = v_r27, name = v_r27
	reaction_v_r27=global_par_kPDEshutoff*x(10);

% Reaction: id = v_r28, name = v_r28
	reaction_v_r28=global_par_kGshutoff*x(8);

% Reaction: id = v_r29, name = v_r29
	reaction_v_r29=global_par_kGrecyc*x(11)*x(7);

% Reaction: id = v_r30, name = v_r30
	reaction_v_r30=global_par_kRec1*x(75)*x(5)-global_par_kRec2*x(73);

% Reaction: id = v_r31, name = v_r31
	reaction_v_r31=global_par_kRec3*x(73)*x(71)-global_par_kRec4*x(74);

% Reaction: id = v_r_diarr, name = v_r_diarr
	reaction_v_r_diarr=global_par_kA4*x(1)*x(1)-global_par_kA5*x(2);

% Reaction: id = v_r_tetraarr, name = v_r_tetraarr
	reaction_v_r_tetraarr=global_par_kA4*x(2)*x(2)-global_par_kA5*x(3);

% Reaction: id = v_r33, name = v_r33
	reaction_v_r33=global_par_k1*(global_par_eT-x(4))*x(5)-global_par_k2*x(4);

% Reaction: id = v_r34, name = v_r34
	reaction_v_r34=global_par_gammaCa*(x(5)-global_par_Ca2_0);

% Reaction: id = v_r35, name = v_r35
	reaction_v_r35=1E6*global_par_fCa*global_par_Jdark/((2+global_par_fCa)*global_par_F*global_par_Vcyto)*(x(76)/global_par_cGMPdark)^global_par_ncg;

% Reaction: id = v_r36, name = v_r36
	reaction_v_r36=global_par_alfamax/(1+(x(5)/global_par_Kc1)^global_par_m1)+global_par_alfamax/(1+(x(5)/global_par_Kc2)^global_par_m2);

% Reaction: id = v_r37, name = v_r37
	reaction_v_r37=(global_par_betadark+global_par_betasub*global_par_E)*x(76);

	xdot=zeros(77,1);
	% rateRule: variable = Ca2_free
	xdot(77) = -reaction_v_r33-reaction_v_r34+reaction_v_r35-2*reaction_v_r30*global_par_numConcFactor;
	
% Species:   id = Arr, name = Arr, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_v_r5_1) + (-1.0 * reaction_v_r5_2) + (-1.0 * reaction_v_r5_3) + (-1.0 * reaction_v_r5_4) + (-1.0 * reaction_v_r5_5) + (-1.0 * reaction_v_r5_6) + ( 1.0 * reaction_v_r6_1) + ( 1.0 * reaction_v_r6_2) + ( 1.0 * reaction_v_r6_3) + ( 1.0 * reaction_v_r6_4) + ( 1.0 * reaction_v_r6_5) + ( 1.0 * reaction_v_r6_6) + (-2.0 * reaction_v_r_diarr);
	
% Species:   id = Arr_di, name = Arr_di, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_v_r_diarr) + (-2.0 * reaction_v_r_tetraarr);
	
% Species:   id = Arr_tetra, name = Arr_tetra, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_v_r_tetraarr);
	
% Species:   id = Ca2_buff, name = Ca2_buff, affected by kineticLaw
	xdot(4) = (1/(compartment_cytosol))*(( 1.0 * reaction_v_r33));
	
% Species:   id = Ca2_free, name = Ca2_free, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = G_GTP, name = G_GTP, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_v_r11) + ( 1.0 * reaction_v_r16_0) + ( 1.0 * reaction_v_r16_1) + ( 1.0 * reaction_v_r16_2) + ( 1.0 * reaction_v_r16_3) + ( 1.0 * reaction_v_r16_4) + ( 1.0 * reaction_v_r16_5) + ( 1.0 * reaction_v_r16_6) + (-1.0 * reaction_v_r17);
	
% Species:   id = Ga_GDP, name = Ga_GDP, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_v_r23) + ( 1.0 * reaction_v_r25) + ( 1.0 * reaction_v_r26) + ( 1.0 * reaction_v_r27) + ( 1.0 * reaction_v_r28) + (-1.0 * reaction_v_r29);
	
% Species:   id = Ga_GTP, name = Ga_GTP, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_v_r17) + (-1.0 * reaction_v_r18) + (-1.0 * reaction_v_r20) + (-1.0 * reaction_v_r28);
	
% Species:   id = Ga_GTP_PDE_a_Ga_GTP, name = Ga_GTP_PDE_a_Ga_GTP, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_v_r20) + (-1.0 * reaction_v_r21);
	
% Species:   id = Ga_GTP_a_PDE_a_Ga_GTP, name = Ga_GTP_a_PDE_a_Ga_GTP, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_v_r21) + (-1.0 * reaction_v_r22) + (-1.0 * reaction_v_r27);
	
% Species:   id = Gbg, name = Gbg, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_v_r17) + (-1.0 * reaction_v_r29);
	
% Species:   id = Gt, name = Gt, affected by kineticLaw
	xdot(12) = (-1.0 * reaction_v_r8) + (-1.0 * reaction_v_GtRpre) + (-1.0 * reaction_v_r13_0) + (-1.0 * reaction_v_r13_1) + (-1.0 * reaction_v_r13_2) + (-1.0 * reaction_v_r13_3) + (-1.0 * reaction_v_r13_4) + (-1.0 * reaction_v_r13_5) + (-1.0 * reaction_v_r13_6) + ( 1.0 * reaction_v_r29);
	
% Species:   id = Ops, name = Ops, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_v_r6_1) + ( 1.0 * reaction_v_r6_2) + ( 1.0 * reaction_v_r6_3) + ( 1.0 * reaction_v_r6_4) + ( 1.0 * reaction_v_r6_5) + ( 1.0 * reaction_v_r6_6) + ( 1.0 * reaction_v_r7_0) + ( 1.0 * reaction_v_r7_1) + ( 1.0 * reaction_v_r7_2) + ( 1.0 * reaction_v_r7_3) + ( 1.0 * reaction_v_r7_4) + ( 1.0 * reaction_v_r7_5) + ( 1.0 * reaction_v_r7_6) + (-1.0 * reaction_v_r8) + ( 1.0 * reaction_v_r11) + (-1.0 * reaction_v_r12);
	
% Species:   id = Ops_G, name = Ops_G, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_v_r9) + (-1.0 * reaction_v_r10);
	
% Species:   id = Ops_G_GTP, name = Ops_G_GTP, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_v_r10) + (-1.0 * reaction_v_r11);
	
% Species:   id = Ops_Gt, name = Ops_Gt, affected by kineticLaw
	xdot(16) = ( 1.0 * reaction_v_r8) + (-1.0 * reaction_v_r9);
	
% Species:   id = PDE, name = PDE, affected by kineticLaw
	xdot(17) = (-1.0 * reaction_v_r18) + ( 1.0 * reaction_v_r25) + ( 1.0 * reaction_v_r26);
	
% Species:   id = PDE_Ga_GTP, name = PDE_Ga_GTP, affected by kineticLaw
	xdot(18) = ( 1.0 * reaction_v_r18) + (-1.0 * reaction_v_r19);
	
% Species:   id = PDE_a_Ga_GTP, name = PDE_a_Ga_GTP, affected by kineticLaw
	xdot(19) = ( 1.0 * reaction_v_r19) + (-1.0 * reaction_v_r20) + ( 1.0 * reaction_v_r23) + (-1.0 * reaction_v_r24) + (-1.0 * reaction_v_r26) + ( 1.0 * reaction_v_r27);
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(20) = (-1.0 * reaction_v_r1) + ( 1.0 * reaction_v_r12) + (-1.0 * reaction_v_GtRpre);
	
% Species:   id = R0, name = R0, affected by kineticLaw
	xdot(21) = ( 1.0 * reaction_v_r1) + (-1.0 * reaction_v_r2_0) + (-1.0 * reaction_v_r7_0) + (-1.0 * reaction_v_r13_0) + ( 1.0 * reaction_v_r16_0);
	
% Species:   id = R0_G, name = R0_G, affected by kineticLaw
	xdot(22) = ( 1.0 * reaction_v_r14_0) + (-1.0 * reaction_v_r15_0);
	
% Species:   id = R0_G_GTP, name = R0_G_GTP, affected by kineticLaw
	xdot(23) = ( 1.0 * reaction_v_r15_0) + (-1.0 * reaction_v_r16_0);
	
% Species:   id = R0_Gt, name = R0_Gt, affected by kineticLaw
	xdot(24) = ( 1.0 * reaction_v_rstprec) + ( 1.0 * reaction_v_r13_0) + (-1.0 * reaction_v_r14_0);
	
% Species:   id = R0_RKpre, name = R0_RKpre, affected by kineticLaw
	xdot(25) = ( 1.0 * reaction_v_r2_0) + (-1.0 * reaction_v_r3_0);
	
% Species:   id = R1, name = R1, affected by kineticLaw
	xdot(26) = (-1.0 * reaction_v_r2_1) + ( 1.0 * reaction_v_r4_1) + (-1.0 * reaction_v_r5_1) + (-1.0 * reaction_v_r7_1) + (-1.0 * reaction_v_r13_1) + ( 1.0 * reaction_v_r16_1);
	
% Species:   id = R1_Arr, name = R1_Arr, affected by kineticLaw
	xdot(27) = ( 1.0 * reaction_v_r5_1) + (-1.0 * reaction_v_r6_1);
	
% Species:   id = R1_G, name = R1_G, affected by kineticLaw
	xdot(28) = ( 1.0 * reaction_v_r14_1) + (-1.0 * reaction_v_r15_1);
	
% Species:   id = R1_G_GTP, name = R1_G_GTP, affected by kineticLaw
	xdot(29) = ( 1.0 * reaction_v_r15_1) + (-1.0 * reaction_v_r16_1);
	
% Species:   id = R1_Gt, name = R1_Gt, affected by kineticLaw
	xdot(30) = ( 1.0 * reaction_v_r13_1) + (-1.0 * reaction_v_r14_1);
	
% Species:   id = R1_RKpost, name = R1_RKpost, affected by kineticLaw
	xdot(31) = ( 1.0 * reaction_v_r3_0) + (-1.0 * reaction_v_r4_1);
	
% Species:   id = R1_RKpre, name = R1_RKpre, affected by kineticLaw
	xdot(32) = ( 1.0 * reaction_v_r2_1) + (-1.0 * reaction_v_r3_1);
	
% Species:   id = R2, name = R2, affected by kineticLaw
	xdot(33) = (-1.0 * reaction_v_r2_2) + ( 1.0 * reaction_v_r4_2) + (-1.0 * reaction_v_r5_2) + (-1.0 * reaction_v_r7_2) + (-1.0 * reaction_v_r13_2) + ( 1.0 * reaction_v_r16_2);
	
% Species:   id = R2_Arr, name = R2_Arr, affected by kineticLaw
	xdot(34) = ( 1.0 * reaction_v_r5_2) + (-1.0 * reaction_v_r6_2);
	
% Species:   id = R2_G, name = R2_G, affected by kineticLaw
	xdot(35) = ( 1.0 * reaction_v_r14_2) + (-1.0 * reaction_v_r15_2);
	
% Species:   id = R2_G_GTP, name = R2_G_GTP, affected by kineticLaw
	xdot(36) = ( 1.0 * reaction_v_r15_2) + (-1.0 * reaction_v_r16_2);
	
% Species:   id = R2_Gt, name = R2_Gt, affected by kineticLaw
	xdot(37) = ( 1.0 * reaction_v_r13_2) + (-1.0 * reaction_v_r14_2);
	
% Species:   id = R2_RKpost, name = R2_RKpost, affected by kineticLaw
	xdot(38) = ( 1.0 * reaction_v_r3_1) + (-1.0 * reaction_v_r4_2);
	
% Species:   id = R2_RKpre, name = R2_RKpre, affected by kineticLaw
	xdot(39) = ( 1.0 * reaction_v_r2_2) + (-1.0 * reaction_v_r3_2);
	
% Species:   id = R3, name = R3, affected by kineticLaw
	xdot(40) = (-1.0 * reaction_v_r2_3) + ( 1.0 * reaction_v_r4_3) + (-1.0 * reaction_v_r5_3) + (-1.0 * reaction_v_r7_3) + (-1.0 * reaction_v_r13_3) + ( 1.0 * reaction_v_r16_3);
	
% Species:   id = R3_Arr, name = R3_Arr, affected by kineticLaw
	xdot(41) = ( 1.0 * reaction_v_r5_3) + (-1.0 * reaction_v_r6_3);
	
% Species:   id = R3_G, name = R3_G, affected by kineticLaw
	xdot(42) = ( 1.0 * reaction_v_r14_3) + (-1.0 * reaction_v_r15_3);
	
% Species:   id = R3_G_GTP, name = R3_G_GTP, affected by kineticLaw
	xdot(43) = ( 1.0 * reaction_v_r15_3) + (-1.0 * reaction_v_r16_3);
	
% Species:   id = R3_Gt, name = R3_Gt, affected by kineticLaw
	xdot(44) = ( 1.0 * reaction_v_r13_3) + (-1.0 * reaction_v_r14_3);
	
% Species:   id = R3_RKpost, name = R3_RKpost, affected by kineticLaw
	xdot(45) = ( 1.0 * reaction_v_r3_2) + (-1.0 * reaction_v_r4_3);
	
% Species:   id = R3_RKpre, name = R3_RKpre, affected by kineticLaw
	xdot(46) = ( 1.0 * reaction_v_r2_3) + (-1.0 * reaction_v_r3_3);
	
% Species:   id = R4, name = R4, affected by kineticLaw
	xdot(47) = (-1.0 * reaction_v_r2_4) + ( 1.0 * reaction_v_r4_4) + (-1.0 * reaction_v_r5_4) + (-1.0 * reaction_v_r7_4) + (-1.0 * reaction_v_r13_4) + ( 1.0 * reaction_v_r16_4);
	
% Species:   id = R4_Arr, name = R4_Arr, affected by kineticLaw
	xdot(48) = ( 1.0 * reaction_v_r5_4) + (-1.0 * reaction_v_r6_4);
	
% Species:   id = R4_G, name = R4_G, affected by kineticLaw
	xdot(49) = ( 1.0 * reaction_v_r14_4) + (-1.0 * reaction_v_r15_4);
	
% Species:   id = R4_G_GTP, name = R4_G_GTP, affected by kineticLaw
	xdot(50) = ( 1.0 * reaction_v_r15_4) + (-1.0 * reaction_v_r16_4);
	
% Species:   id = R4_Gt, name = R4_Gt, affected by kineticLaw
	xdot(51) = ( 1.0 * reaction_v_r13_4) + (-1.0 * reaction_v_r14_4);
	
% Species:   id = R4_RKpost, name = R4_RKpost, affected by kineticLaw
	xdot(52) = ( 1.0 * reaction_v_r3_3) + (-1.0 * reaction_v_r4_4);
	
% Species:   id = R4_RKpre, name = R4_RKpre, affected by kineticLaw
	xdot(53) = ( 1.0 * reaction_v_r2_4) + (-1.0 * reaction_v_r3_4);
	
% Species:   id = R5, name = R5, affected by kineticLaw
	xdot(54) = (-1.0 * reaction_v_r2_5) + ( 1.0 * reaction_v_r4_5) + (-1.0 * reaction_v_r5_5) + (-1.0 * reaction_v_r7_5) + (-1.0 * reaction_v_r13_5) + ( 1.0 * reaction_v_r16_5);
	
% Species:   id = R5_Arr, name = R5_Arr, affected by kineticLaw
	xdot(55) = ( 1.0 * reaction_v_r5_5) + (-1.0 * reaction_v_r6_5);
	
% Species:   id = R5_G, name = R5_G, affected by kineticLaw
	xdot(56) = ( 1.0 * reaction_v_r14_5) + (-1.0 * reaction_v_r15_5);
	
% Species:   id = R5_G_GTP, name = R5_G_GTP, affected by kineticLaw
	xdot(57) = ( 1.0 * reaction_v_r15_5) + (-1.0 * reaction_v_r16_5);
	
% Species:   id = R5_Gt, name = R5_Gt, affected by kineticLaw
	xdot(58) = ( 1.0 * reaction_v_r13_5) + (-1.0 * reaction_v_r14_5);
	
% Species:   id = R5_RKpost, name = R5_RKpost, affected by kineticLaw
	xdot(59) = ( 1.0 * reaction_v_r3_4) + (-1.0 * reaction_v_r4_5);
	
% Species:   id = R5_RKpre, name = R5_RKpre, affected by kineticLaw
	xdot(60) = ( 1.0 * reaction_v_r2_5) + (-1.0 * reaction_v_r3_5);
	
% Species:   id = R6, name = R6, affected by kineticLaw
	xdot(61) = (-1.0 * reaction_v_r2_6) + ( 1.0 * reaction_v_r4_6) + (-1.0 * reaction_v_r5_6) + (-1.0 * reaction_v_r7_6) + (-1.0 * reaction_v_r13_6) + ( 1.0 * reaction_v_r16_6);
	
% Species:   id = R6_Arr, name = R6_Arr, affected by kineticLaw
	xdot(62) = ( 1.0 * reaction_v_r5_6) + (-1.0 * reaction_v_r6_6);
	
% Species:   id = R6_G, name = R6_G, affected by kineticLaw
	xdot(63) = ( 1.0 * reaction_v_r14_6) + (-1.0 * reaction_v_r15_6);
	
% Species:   id = R6_G_GTP, name = R6_G_GTP, affected by kineticLaw
	xdot(64) = ( 1.0 * reaction_v_r15_6) + (-1.0 * reaction_v_r16_6);
	
% Species:   id = R6_Gt, name = R6_Gt, affected by kineticLaw
	xdot(65) = ( 1.0 * reaction_v_r13_6) + (-1.0 * reaction_v_r14_6);
	
% Species:   id = R6_RKpost, name = R6_RKpost, affected by kineticLaw
	xdot(66) = ( 1.0 * reaction_v_r3_5) + (-1.0 * reaction_v_r4_6);
	
% Species:   id = R6_RKpre, name = R6_RKpre, affected by kineticLaw
	xdot(67) = ( 1.0 * reaction_v_r2_6);
	
% Species:   id = RGS, name = RGS, affected by kineticLaw
	xdot(68) = (-1.0 * reaction_v_r22) + ( 1.0 * reaction_v_r23) + (-1.0 * reaction_v_r24) + ( 1.0 * reaction_v_r25);
	
% Species:   id = RGS_Ga_GTP_a_PDE_a_Ga_GTP, name = RGS_Ga_GTP_a_PDE_a_Ga_GTP, affected by kineticLaw
	xdot(69) = ( 1.0 * reaction_v_r22) + (-1.0 * reaction_v_r23);
	
% Species:   id = RGS_PDE_a_Ga_GTP, name = RGS_PDE_a_Ga_GTP, affected by kineticLaw
	xdot(70) = ( 1.0 * reaction_v_r24) + (-1.0 * reaction_v_r25);
	
% Species:   id = RK, name = RK, affected by kineticLaw
	xdot(71) = (-1.0 * reaction_v_r2_0) + (-1.0 * reaction_v_r2_1) + (-1.0 * reaction_v_r2_2) + (-1.0 * reaction_v_r2_3) + (-1.0 * reaction_v_r2_4) + (-1.0 * reaction_v_r2_5) + (-1.0 * reaction_v_r2_6) + ( 1.0 * reaction_v_r4_1) + ( 1.0 * reaction_v_r4_2) + ( 1.0 * reaction_v_r4_3) + ( 1.0 * reaction_v_r4_4) + ( 1.0 * reaction_v_r4_5) + ( 1.0 * reaction_v_r4_6) + (-1.0 * reaction_v_r31);
	
% Species:   id = R_Gt, name = R_Gt, affected by kineticLaw
	xdot(72) = (-1.0 * reaction_v_rstprec) + ( 1.0 * reaction_v_GtRpre);
	
% Species:   id = RecR_Ca, name = RecR_Ca, affected by kineticLaw
	xdot(73) = ( 1.0 * reaction_v_r30) + (-1.0 * reaction_v_r31);
	
% Species:   id = RecR_Ca_RK, name = RecR_Ca_RK, affected by kineticLaw
	xdot(74) = ( 1.0 * reaction_v_r31);
	
% Species:   id = RecT, name = RecT, affected by kineticLaw
	xdot(75) = (-1.0 * reaction_v_r30);
	
% Species:   id = cGMP, name = cGMP, affected by kineticLaw
	xdot(76) = (1/(compartment_cytosol))*(( 1.0 * reaction_v_r36) + (-1.0 * reaction_v_r37));
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


