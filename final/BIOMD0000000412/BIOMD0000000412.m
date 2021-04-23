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
% Model name = Pokhilko2012_CircClock_RepressilatorFeedbackloop
%
% is http://identifiers.org/biomodels.db/MODEL1109200000
% is http://identifiers.org/biomodels.db/BIOMD0000000412
% isDescribedBy http://identifiers.org/pubmed/22395476
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000273
%


function main()
%Initial conditions vector
	x0=zeros(79,1);
	x0(1) = 0.3269;
	x0(2) = 0.2566;
	x0(3) = 0.65;
	x0(4) = 0.1503;
	x0(5) = 0.2991;
	x0(6) = 0.0286;
	x0(7) = 0.207;
	x0(8) = 0.1012;
	x0(9) = 0.0709;
	x0(10) = 0.0041;
	x0(11) = 0.0196;
	x0(12) = 0.1017;
	x0(13) = 0.506;
	x0(14) = 0.576;
	x0(15) = 0.1012;
	x0(16) = 1.0151;
	x0(17) = 0.0788;
	x0(18) = 0.0697;
	x0(19) = 0.0731;
	x0(20) = 0.956;
	x0(21) = 0.1167;
	x0(22) = 0.4016;
	x0(23) = 0.0238;
	x0(24) = 0.0658;
	x0(25) = 0.0435;
	x0(26) = 0.0977;
	x0(27) = 0.0755;
	x0(28) = 0.2505;
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
	x0(68) = 0.0;
	x0(69) = 0.0;
	x0(70) = 0.0;
	x0(71) = 0.0;
	x0(72) = 0.0;
	x0(73) = 0.0;
	x0(74) = 0.0;
	x0(75) = 0.0;
	x0(76) = 0.0;
	x0(77) = 0.0;
	x0(78) = 0.0;
	x0(79) = 0.0;


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
% Compartment: id = def, name = def, constant
	compartment_def=1.0;
% Parameter:   id =  n1, name = n1
	global_par_n1=2.6;
% Parameter:   id =  n2, name = n2
	global_par_n2=0.64;
% Parameter:   id =  n3, name = n3
	global_par_n3=0.29;
% Parameter:   id =  n4, name = n4
	global_par_n4=0.07;
% Parameter:   id =  n5, name = n5
	global_par_n5=0.23;
% Parameter:   id =  n6, name = n6
	global_par_n6=20.0;
% Parameter:   id =  n7, name = n7
	global_par_n7=0.2;
% Parameter:   id =  n8, name = n8
	global_par_n8=0.5;
% Parameter:   id =  n9, name = n9
	global_par_n9=0.2;
% Parameter:   id =  n10, name = n10
	global_par_n10=0.4;
% Parameter:   id =  n11, name = n11
	global_par_n11=0.6;
% Parameter:   id =  n12, name = n12
	global_par_n12=12.5;
% Parameter:   id =  n13, name = n13
	global_par_n13=1.3;
% Parameter:   id =  n14, name = n14
	global_par_n14=0.1;
% Parameter:   id =  g1, name = g1
	global_par_g1=0.1;
% Parameter:   id =  g2, name = g2
	global_par_g2=0.01;
% Parameter:   id =  g3, name = g3
	global_par_g3=0.6;
% Parameter:   id =  g4, name = g4
	global_par_g4=0.01;
% Parameter:   id =  g5, name = g5
	global_par_g5=0.15;
% Parameter:   id =  g6, name = g6
	global_par_g6=0.3;
% Parameter:   id =  g7, name = g7
	global_par_g7=0.6;
% Parameter:   id =  g8, name = g8
	global_par_g8=0.01;
% Parameter:   id =  g9, name = g9
	global_par_g9=0.3;
% Parameter:   id =  g10, name = g10
	global_par_g10=0.5;
% Parameter:   id =  g11, name = g11
	global_par_g11=0.7;
% Parameter:   id =  g12, name = g12
	global_par_g12=0.2;
% Parameter:   id =  g13, name = g13
	global_par_g13=1.0;
% Parameter:   id =  g14, name = g14
	global_par_g14=0.004;
% Parameter:   id =  g15, name = g15
	global_par_g15=0.4;
% Parameter:   id =  g16, name = g16
	global_par_g16=0.3;
% Parameter:   id =  m1, name = m1
	global_par_m1=0.54;
% Parameter:   id =  m2, name = m2
	global_par_m2=0.24;
% Parameter:   id =  m3, name = m3
	global_par_m3=0.2;
% Parameter:   id =  m4, name = m4
	global_par_m4=0.2;
% Parameter:   id =  m5, name = m5
	global_par_m5=0.3;
% Parameter:   id =  m6, name = m6
	global_par_m6=0.3;
% Parameter:   id =  m7, name = m7
	global_par_m7=0.7;
% Parameter:   id =  m8, name = m8
	global_par_m8=0.4;
% Parameter:   id =  m9, name = m9
	global_par_m9=1.1;
% Parameter:   id =  m10, name = m10
	global_par_m10=1.0;
% Parameter:   id =  m11, name = m11
	global_par_m11=1.0;
% Parameter:   id =  m12, name = m12
	global_par_m12=1.0;
% Parameter:   id =  m13, name = m13
	global_par_m13=0.32;
% Parameter:   id =  m14, name = m14
	global_par_m14=0.4;
% Parameter:   id =  m15, name = m15
	global_par_m15=0.7;
% Parameter:   id =  m16, name = m16
	global_par_m16=0.5;
% Parameter:   id =  m17, name = m17
	global_par_m17=0.5;
% Parameter:   id =  m18, name = m18
	global_par_m18=3.4;
% Parameter:   id =  m19, name = m19
	global_par_m19=0.2;
% Parameter:   id =  m20, name = m20
	global_par_m20=0.6;
% Parameter:   id =  m21, name = m21
	global_par_m21=0.08;
% Parameter:   id =  m22, name = m22
	global_par_m22=0.1;
% Parameter:   id =  m23, name = m23
	global_par_m23=1.8;
% Parameter:   id =  m24, name = m24
	global_par_m24=0.1;
% Parameter:   id =  m25, name = m25
	global_par_m25=1.8;
% Parameter:   id =  m26, name = m26
	global_par_m26=0.5;
% Parameter:   id =  m27, name = m27
	global_par_m27=0.1;
% Parameter:   id =  m28, name = m28
	global_par_m28=20.0;
% Parameter:   id =  m29, name = m29
	global_par_m29=5.0;
% Parameter:   id =  m30, name = m30
	global_par_m30=3.0;
% Parameter:   id =  m31, name = m31
	global_par_m31=0.3;
% Parameter:   id =  m32, name = m32
	global_par_m32=0.2;
% Parameter:   id =  m33, name = m33
	global_par_m33=13.0;
% Parameter:   id =  m34, name = m34
	global_par_m34=0.6;
% Parameter:   id =  m35, name = m35
	global_par_m35=0.3;
% Parameter:   id =  m36, name = m36
	global_par_m36=0.1;
% Parameter:   id =  m37, name = m37
	global_par_m37=0.8;
% Parameter:   id =  m38, name = m38
	global_par_m38=0.5;
% Parameter:   id =  m39, name = m39
	global_par_m39=0.3;
% Parameter:   id =  a, name = a
	global_par_a=2.0;
% Parameter:   id =  b, name = b
	global_par_b=2.0;
% Parameter:   id =  c, name = c
	global_par_c=2.0;
% Parameter:   id =  d, name = d
	global_par_d=2.0;
% Parameter:   id =  e, name = e
	global_par_e=2.0;
% Parameter:   id =  f, name = f
	global_par_f=2.0;
% Parameter:   id =  p1, name = p1
	global_par_p1=0.13;
% Parameter:   id =  p2, name = p2
	global_par_p2=0.27;
% Parameter:   id =  p3, name = p3
	global_par_p3=0.1;
% Parameter:   id =  p4, name = p4
	global_par_p4=0.56;
% Parameter:   id =  p5, name = p5
	global_par_p5=4.0;
% Parameter:   id =  p6, name = p6
	global_par_p6=0.6;
% Parameter:   id =  p7, name = p7
	global_par_p7=0.3;
% Parameter:   id =  p8, name = p8
	global_par_p8=0.6;
% Parameter:   id =  p9, name = p9
	global_par_p9=0.8;
% Parameter:   id =  p10, name = p10
	global_par_p10=0.54;
% Parameter:   id =  p11, name = p11
	global_par_p11=0.51;
% Parameter:   id =  p12, name = p12
	global_par_p12=3.4;
% Parameter:   id =  p13, name = p13
	global_par_p13=0.1;
% Parameter:   id =  p14, name = p14
	global_par_p14=0.14;
% Parameter:   id =  p15, name = p15
	global_par_p15=3.0;
% Parameter:   id =  p16, name = p16
	global_par_p16=0.62;
% Parameter:   id =  p17, name = p17
	global_par_p17=4.8;
% Parameter:   id =  p18, name = p18
	global_par_p18=4.0;
% Parameter:   id =  p19, name = p19
	global_par_p19=1.0;
% Parameter:   id =  p20, name = p20
	global_par_p20=0.1;
% Parameter:   id =  p21, name = p21
	global_par_p21=1.0;
% Parameter:   id =  p22, name = p22
	global_par_p22=0.5;
% Parameter:   id =  p23, name = p23
	global_par_p23=0.37;
% Parameter:   id =  p24, name = p24
	global_par_p24=10.0;
% Parameter:   id =  p25, name = p25
	global_par_p25=8.0;
% Parameter:   id =  p26, name = p26
	global_par_p26=0.3;
% Parameter:   id =  p27, name = p27
	global_par_p27=0.8;
% Parameter:   id =  p28, name = p28
	global_par_p28=2.0;
% Parameter:   id =  p29, name = p29
	global_par_p29=0.1;
% Parameter:   id =  p30, name = p30
	global_par_p30=0.9;
% Parameter:   id =  p31, name = p31
	global_par_p31=0.1;
% Parameter:   id =  q1, name = q1
	global_par_q1=1.2;
% Parameter:   id =  q2, name = q2
	global_par_q2=1.56;
% Parameter:   id =  q3, name = q3
	global_par_q3=2.8;
% Parameter:   id =  L, name = L
	global_par_L=1.0;
% Parameter:   id =  D, name = D
	global_par_D=0.0;
% Parameter:   id =  E34, name = E34
	global_par_E34=1.0;
% Parameter:   id =  Gn, name = Gn
	global_par_Gn=1.0;
% Parameter:   id =  EGn, name = EGn
	global_par_EGn=1.0;
% Parameter:   id =  lightOffset, name = lightOffset
	global_par_lightOffset=0.0;
% Parameter:   id =  cyclePeriod, name = cyclePeriod
	global_par_cyclePeriod=24.0;
% Parameter:   id =  lightAmplitude, name = lightAmplitude
	global_par_lightAmplitude=1.0;
% Parameter:   id =  phase, name = phase
	global_par_phase=0.0;
% Parameter:   id =  twilightPeriod, name = twilightPeriod
	global_par_twilightPeriod=0.05;
% Parameter:   id =  photoPeriod, name = photoPeriod
	global_par_photoPeriod=12.0;

% Reaction: id = cL_m_trscr, name = cL_m_trscr
	reaction_cL_m_trscr=compartment_def*(lightfun(time, global_par_lightOffset, global_par_lightAmplitude, global_par_cyclePeriod, global_par_photoPeriod, global_par_phase, global_par_twilightPeriod)*global_par_q1*x(20)+global_par_n1*global_par_g1^global_par_a/((x(23)+x(21)+x(18)+x(25))^global_par_a+global_par_g1^global_par_a));

% Reaction: id = cL_m_degr, name = cL_m_degr
	reaction_cL_m_degr=compartment_def*(global_par_m2+(global_par_m1-global_par_m2)*lightfun(time, global_par_lightOffset, global_par_lightAmplitude, global_par_cyclePeriod, global_par_photoPeriod, global_par_phase, global_par_twilightPeriod))*x(16);

% Reaction: id = cL_trsl, name = cL_trsl
	reaction_cL_trsl=compartment_def*x(16)*(global_par_p1*lightfun(time, global_par_lightOffset, global_par_lightAmplitude, global_par_cyclePeriod, global_par_photoPeriod, global_par_phase, global_par_twilightPeriod)+global_par_p2);

% Reaction: id = cL_degr, name = cL_degr
	reaction_cL_degr=compartment_def*function_4_cL_degr(global_par_c, x(13), compartment_def, global_par_g3, global_par_m3, global_par_p3);

% Reaction: id = cL_modif, name = cL_modif
	reaction_cL_modif=compartment_def*function_4_cL_modif(global_par_c, x(13), compartment_def, global_par_g3, global_par_p3);

% Reaction: id = cLm_degr, name = cLm_degr
	reaction_cLm_degr=compartment_def*function_4_cLm_degr(x(17), compartment_def, global_par_m4);

% Reaction: id = cP_trsl, name = cP_trsl
	reaction_cP_trsl=compartment_def*global_par_p7*(1-lightfun(time, global_par_lightOffset, global_par_lightAmplitude, global_par_cyclePeriod, global_par_photoPeriod, global_par_phase, global_par_twilightPeriod))*(1-x(20));

% Reaction: id = cP_degr, name = cP_degr
	reaction_cP_degr=compartment_def*global_par_m11*x(20)*lightfun(time, global_par_lightOffset, global_par_lightAmplitude, global_par_cyclePeriod, global_par_photoPeriod, global_par_phase, global_par_twilightPeriod);

% Reaction: id = cP9_m_trscr, name = cP9_m_trscr
	reaction_cP9_m_trscr=compartment_def*(lightfun(time, global_par_lightOffset, global_par_lightAmplitude, global_par_cyclePeriod, global_par_photoPeriod, global_par_phase, global_par_twilightPeriod)*global_par_q3*x(20)+(global_par_n4+global_par_n7*x(13)^global_par_e/(x(13)^global_par_e+global_par_g9^global_par_e))*global_par_g8/(x(9)+global_par_g8));

% Reaction: id = cP9_m_degr, name = cP9_m_degr
	reaction_cP9_m_degr=compartment_def*function_4_cP9_m_degr(x(24), compartment_def, global_par_m12);

% Reaction: id = cP9_trsl, name = cP9_trsl
	reaction_cP9_trsl=compartment_def*function_4_cP9_trsl(x(24), compartment_def, global_par_p8);

% Reaction: id = cP9_degr, name = cP9_degr
	reaction_cP9_degr=compartment_def*(global_par_m13+global_par_m22*(1-lightfun(time, global_par_lightOffset, global_par_lightAmplitude, global_par_cyclePeriod, global_par_photoPeriod, global_par_phase, global_par_twilightPeriod)))*x(23);

% Reaction: id = cP7_m_trscr, name = cP7_m_trscr
	reaction_cP7_m_trscr=compartment_def*function_4_cP7_m_trscr(x(13), x(17), x(23), compartment_def, global_par_e, global_par_f, global_par_g10, global_par_g11, global_par_n8, global_par_n9);

% Reaction: id = cP7_m_degr, name = cP7_m_degr
	reaction_cP7_m_degr=compartment_def*function_4_cP7_m_degr(x(22), compartment_def, global_par_m14);

% Reaction: id = cP7_trsl, name = cP7_trsl
	reaction_cP7_trsl=compartment_def*function_4_cP7_trsl(x(22), compartment_def, global_par_p9);

% Reaction: id = cP7_degr, name = cP7_degr
	reaction_cP7_degr=compartment_def*(global_par_m15+global_par_m23*(1-lightfun(time, global_par_lightOffset, global_par_lightAmplitude, global_par_cyclePeriod, global_par_photoPeriod, global_par_phase, global_par_twilightPeriod)))*x(21);

% Reaction: id = cNI_m_trscr, name = cNI_m_trscr
	reaction_cNI_m_trscr=compartment_def*function_4_cNI_m_trscr(global_par_b, x(17), x(21), compartment_def, global_par_e, global_par_g12, global_par_g13, global_par_n10, global_par_n11);

% Reaction: id = cNI_m_degr, name = cNI_m_degr
	reaction_cNI_m_degr=compartment_def*function_4_cNI_m_degr(x(19), compartment_def, global_par_m16);

% Reaction: id = cNI_trsl, name = cNI_trsl
	reaction_cNI_trsl=compartment_def*function_4_cNI_trsl(x(19), compartment_def, global_par_p10);

% Reaction: id = cNI_degr, name = cNI_degr
	reaction_cNI_degr=compartment_def*(global_par_m17+global_par_m24*(1-lightfun(time, global_par_lightOffset, global_par_lightAmplitude, global_par_cyclePeriod, global_par_photoPeriod, global_par_phase, global_par_twilightPeriod)))*x(18);

% Reaction: id = cT_m_trscr, name = cT_m_trscr
	reaction_cT_m_trscr=compartment_def*function_4_cT_m_trscr_1(x(9), x(13), compartment_def, global_par_e, global_par_g4, global_par_g5, global_par_n2);

% Reaction: id = cT_m_degr, name = cT_m_degr
	reaction_cT_m_degr=compartment_def*function_4_cT_m_degr(x(26), compartment_def, global_par_m5);

% Reaction: id = cT_trsl, name = cT_trsl
	reaction_cT_trsl=compartment_def*function_4_cT_trsl(x(26), compartment_def, global_par_p4);

% Reaction: id = cT_degr, name = cT_degr
	reaction_cT_degr=compartment_def*((global_par_m6+global_par_m7*(1-lightfun(time, global_par_lightOffset, global_par_lightAmplitude, global_par_cyclePeriod, global_par_photoPeriod, global_par_phase, global_par_twilightPeriod)))*x(25)*(global_par_p5*x(28)+x(27))+global_par_m8*x(25));

% Reaction: id = cE4_m_trscr, name = cE4_m_trscr
	reaction_cE4_m_trscr=compartment_def*function_4_cLUX_m_trscr(x(9), x(13), compartment_def, global_par_e, global_par_g2, global_par_g6, global_par_n13);

% Reaction: id = cE4_m_degr, name = cE4_m_degr
	reaction_cE4_m_degr=compartment_def*function_4_cE4_m_degr(x(8), compartment_def, global_par_m34);

% Reaction: id = cE4_trsl, name = cE4_trsl
	reaction_cE4_trsl=compartment_def*function_4_cE4_trsl(x(8), compartment_def, global_par_p23);

% Reaction: id = cE4_degr, name = cE4_degr
	reaction_cE4_degr=compartment_def*function_4_cE4_degr(x(2), x(3), x(6), x(7), x(14), compartment_def, global_par_m35, global_par_m36, global_par_m37, global_par_p21, global_par_p25, global_par_p26);

% Reaction: id = cE3_m_trscr, name = cE3_m_trscr
	reaction_cE3_m_trscr=compartment_def*function_4_cE3_m_trscr(x(13), compartment_def, global_par_e, global_par_g16, global_par_n3);

% Reaction: id = cE3_m_degr, name = cE3_m_degr
	reaction_cE3_m_degr=compartment_def*function_4_cE3_m_degr(x(5), compartment_def, global_par_m26);

% Reaction: id = cE3_trsl, name = cE3_trsl
	reaction_cE3_trsl=compartment_def*function_4_cE3_trsl(x(5), compartment_def, global_par_p16);

% Reaction: id = cE3_degr, name = cE3_degr
	reaction_cE3_degr=compartment_def*function_4_cE3_degr(x(1), x(4), compartment_def, global_par_m9);

% Reaction: id = cE3n_import, name = cE3n_import
	reaction_cE3n_import=compartment_def*function_4_cE3n_import(x(4), x(6), compartment_def, global_par_p19, global_par_p20);

% Reaction: id = cE3n_degr, name = cE3n_degr
	reaction_cE3n_degr=compartment_def*function_4_cE3n_degr(x(2), x(3), x(6), x(7), x(11), x(14), compartment_def, global_par_m19, global_par_m29, global_par_m30, global_par_m36, global_par_m37, global_par_p17, global_par_p21, global_par_p25, global_par_p26, global_par_p28, global_par_p29);

% Reaction: id = cLUX_m_trscr, name = cLUX_m_trscr
	reaction_cLUX_m_trscr=compartment_def*function_4_cE4_m_trscr_1(x(9), x(13), compartment_def, global_par_e, global_par_g2, global_par_g6, global_par_n13);

% Reaction: id = cLUX_m_degr, name = cLUX_m_degr
	reaction_cLUX_m_degr=compartment_def*function_4_cLUX_m_degr(x(15), compartment_def, global_par_m34);

% Reaction: id = cLUX_trsl, name = cLUX_trsl
	reaction_cLUX_trsl=compartment_def*function_4_cLUX_trsl(x(15), compartment_def, global_par_p27);

% Reaction: id = cLUX_degr, name = cLUX_degr
	reaction_cLUX_degr=compartment_def*function_4_cLUX_degr(x(2), x(3), x(6), x(7), x(14), compartment_def, global_par_m36, global_par_m37, global_par_m39, global_par_p21, global_par_p25, global_par_p26);

% Reaction: id = cCOP1c_trsl, name = cCOP1c_trsl
	reaction_cCOP1c_trsl=compartment_def*function_4_cCOP1c_trsl(compartment_def, global_par_n5);

% Reaction: id = cCOP1c_degr, name = cCOP1c_degr
	reaction_cCOP1c_degr=compartment_def*global_par_m27*x(1)*(1+global_par_p15*(1-lightfun(time, global_par_lightOffset, global_par_lightAmplitude, global_par_cyclePeriod, global_par_photoPeriod, global_par_phase, global_par_twilightPeriod)));

% Reaction: id = cCOP1n_import, name = cCOP1n_import
	reaction_cCOP1n_import=compartment_def*function_4_cCOP1n_import(x(1), compartment_def, global_par_p6);

% Reaction: id = cCOP1n_degr, name = cCOP1n_degr
	reaction_cCOP1n_degr=compartment_def*global_par_m27*x(3)*(1+global_par_p15*lightfun(time, global_par_lightOffset, global_par_lightAmplitude, global_par_cyclePeriod, global_par_photoPeriod, global_par_phase, global_par_twilightPeriod));

% Reaction: id = cCOP1d_activ, name = cCOP1d_activ
	reaction_cCOP1d_activ=compartment_def*(global_par_n6*lightfun(time, global_par_lightOffset, global_par_lightAmplitude, global_par_cyclePeriod, global_par_photoPeriod, global_par_phase, global_par_twilightPeriod)*x(20)*x(3)+global_par_n14*x(3));

% Reaction: id = cCOP1d_degr, name = cCOP1d_degr
	reaction_cCOP1d_degr=compartment_def*global_par_m31*(1+global_par_m33*(1-lightfun(time, global_par_lightOffset, global_par_lightAmplitude, global_par_cyclePeriod, global_par_photoPeriod, global_par_phase, global_par_twilightPeriod)))*x(2);

% Reaction: id = cG_m_trscr, name = cG_m_trscr
	reaction_cG_m_trscr=compartment_def*(lightfun(time, global_par_lightOffset, global_par_lightAmplitude, global_par_cyclePeriod, global_par_photoPeriod, global_par_phase, global_par_twilightPeriod)*global_par_q2*x(20)+global_par_n12*global_par_g14/(x(9)+global_par_g14)*global_par_g15^global_par_e/(x(13)^global_par_e+global_par_g15^global_par_e));

% Reaction: id = cG_m_degr, name = cG_m_degr
	reaction_cG_m_degr=compartment_def*function_4_cG_m_degr(x(12), compartment_def, global_par_m18);

% Reaction: id = cG_trsl, name = cG_trsl
	reaction_cG_trsl=compartment_def*function_4_cG_trsl(x(12), compartment_def, global_par_p11);

% Reaction: id = cG_degr, name = cG_degr
	reaction_cG_degr=compartment_def*function_4_cG_degr(x(6), x(11), compartment_def, global_par_m19, global_par_p17, global_par_p28, global_par_p29);

% Reaction: id = cG_cZTL_assoc, name = cG_cZTL_assoc
	reaction_cG_cZTL_assoc=compartment_def*(global_par_p12*lightfun(time, global_par_lightOffset, global_par_lightAmplitude, global_par_cyclePeriod, global_par_photoPeriod, global_par_phase, global_par_twilightPeriod)*x(28)*x(11)-global_par_p13*(1-lightfun(time, global_par_lightOffset, global_par_lightAmplitude, global_par_cyclePeriod, global_par_photoPeriod, global_par_phase, global_par_twilightPeriod))*x(27));

% Reaction: id = cZTL_trsl, name = cZTL_trsl
	reaction_cZTL_trsl=compartment_def*function_4_cZTL_trsl(compartment_def, global_par_p14);

% Reaction: id = cZTL_degr, name = cZTL_degr
	reaction_cZTL_degr=compartment_def*function_4_cZTL_degr(x(28), compartment_def, global_par_m20);

% Reaction: id = cZG_degr, name = cZG_degr
	reaction_cZG_degr=compartment_def*function_4_cZG_degr(x(27), compartment_def, global_par_m21);

% Reaction: id = cG_cE3_assoc, name = cG_cE3_assoc
	reaction_cG_cE3_assoc=compartment_def*function_4_cG_cE3_assoc(x(4), x(11), compartment_def, global_par_p17);

% Reaction: id = cEG_degr, name = cEG_degr
	reaction_cEG_degr=compartment_def*function_4_cEG_degr(x(1), x(2), x(3), x(6), x(10), x(11), compartment_def, global_par_m10, global_par_m19, global_par_m9, global_par_p17, global_par_p18, global_par_p28, global_par_p29, global_par_p31);

% Reaction: id = cEC_form, name = cEC_form
	reaction_cEC_form=compartment_def*function_4_cEC_form(x(2), x(3), x(6), x(7), x(14), compartment_def, global_par_m36, global_par_m37, global_par_p21, global_par_p25, global_par_p26);

% Reaction: id = cEC_degr, name = cEC_degr
	reaction_cEC_degr=compartment_def*(global_par_m36*x(3)*x(9)+global_par_m37*x(2)*x(9)+global_par_m32*x(9)*(1+global_par_p24*lightfun(time, global_par_lightOffset, global_par_lightAmplitude, global_par_cyclePeriod, global_par_photoPeriod, global_par_phase, global_par_twilightPeriod)*(global_par_p28*x(11)/(global_par_p29+global_par_m19+global_par_p17*x(6))+(global_par_p18*x(10)+global_par_p17*x(6)*global_par_p28*x(11)/(global_par_p29+global_par_m19+global_par_p17*x(6)))/(global_par_m9*x(3)+global_par_m10*x(2)+global_par_p31))^global_par_d/((global_par_p28*x(11)/(global_par_p29+global_par_m19+global_par_p17*x(6))+(global_par_p18*x(10)+global_par_p17*x(6)*global_par_p28*x(11)/(global_par_p29+global_par_m19+global_par_p17*x(6)))/(global_par_m9*x(3)+global_par_m10*x(2)+global_par_p31))^global_par_d+global_par_g7^global_par_d)));

	xdot=zeros(79,1);
	
% Species:   id = cCOP1c, name = cCOP1c, affected by kineticLaw
	xdot(1) = (1/(compartment_def))*(( 1.0 * reaction_cCOP1c_trsl) + (-1.0 * reaction_cCOP1c_degr) + (-1.0 * reaction_cCOP1n_import));
	
% Species:   id = cCOP1d, name = cCOP1d, affected by kineticLaw
	xdot(2) = (1/(compartment_def))*(( 1.0 * reaction_cCOP1d_activ) + (-1.0 * reaction_cCOP1d_degr));
	
% Species:   id = cCOP1n, name = cCOP1n, affected by kineticLaw
	xdot(3) = (1/(compartment_def))*(( 1.0 * reaction_cCOP1n_import) + (-1.0 * reaction_cCOP1n_degr) + (-1.0 * reaction_cCOP1d_activ));
	
% Species:   id = cE3, name = cE3, affected by kineticLaw
	xdot(4) = (1/(compartment_def))*(( 1.0 * reaction_cE3_trsl) + (-1.0 * reaction_cE3_degr) + (-1.0 * reaction_cE3n_import) + (-1.0 * reaction_cG_cE3_assoc));
	
% Species:   id = cE3_m, name = cE3_m, affected by kineticLaw
	xdot(5) = (1/(compartment_def))*(( 1.0 * reaction_cE3_m_trscr) + (-1.0 * reaction_cE3_m_degr));
	
% Species:   id = cE3n, name = cE3n, affected by kineticLaw
	xdot(6) = (1/(compartment_def))*(( 1.0 * reaction_cE3n_import) + (-1.0 * reaction_cE3n_degr));
	
% Species:   id = cE4, name = cE4, affected by kineticLaw
	xdot(7) = (1/(compartment_def))*(( 1.0 * reaction_cE4_trsl) + (-1.0 * reaction_cE4_degr));
	
% Species:   id = cE4_m, name = cE4_m, affected by kineticLaw
	xdot(8) = (1/(compartment_def))*(( 1.0 * reaction_cE4_m_trscr) + (-1.0 * reaction_cE4_m_degr));
	
% Species:   id = cEC, name = cEC, affected by kineticLaw
	xdot(9) = (1/(compartment_def))*(( 1.0 * reaction_cEC_form) + (-1.0 * reaction_cEC_degr));
	
% Species:   id = cEG, name = cEG, affected by kineticLaw
	xdot(10) = (1/(compartment_def))*(( 1.0 * reaction_cG_cE3_assoc) + (-1.0 * reaction_cEG_degr));
	
% Species:   id = cG, name = cG, affected by kineticLaw
	xdot(11) = (1/(compartment_def))*(( 1.0 * reaction_cG_trsl) + (-1.0 * reaction_cG_degr) + (-1.0 * reaction_cG_cZTL_assoc) + (-1.0 * reaction_cG_cE3_assoc));
	
% Species:   id = cG_m, name = cG_m, affected by kineticLaw
	xdot(12) = (1/(compartment_def))*(( 1.0 * reaction_cG_m_trscr) + (-1.0 * reaction_cG_m_degr));
	
% Species:   id = cL, name = cL, affected by kineticLaw
	xdot(13) = (1/(compartment_def))*(( 1.0 * reaction_cL_trsl) + (-1.0 * reaction_cL_degr));
	
% Species:   id = cLUX, name = cLUX, affected by kineticLaw
	xdot(14) = (1/(compartment_def))*(( 1.0 * reaction_cLUX_trsl) + (-1.0 * reaction_cLUX_degr));
	
% Species:   id = cLUX_m, name = cLUX_m, affected by kineticLaw
	xdot(15) = (1/(compartment_def))*(( 1.0 * reaction_cLUX_m_trscr) + (-1.0 * reaction_cLUX_m_degr));
	
% Species:   id = cL_m, name = cL_m, affected by kineticLaw
	xdot(16) = (1/(compartment_def))*(( 1.0 * reaction_cL_m_trscr) + (-1.0 * reaction_cL_m_degr));
	
% Species:   id = cLm, name = cLm, affected by kineticLaw
	xdot(17) = (1/(compartment_def))*(( 1.0 * reaction_cL_modif) + (-1.0 * reaction_cLm_degr));
	
% Species:   id = cNI, name = cNI, affected by kineticLaw
	xdot(18) = (1/(compartment_def))*(( 1.0 * reaction_cNI_trsl) + (-1.0 * reaction_cNI_degr));
	
% Species:   id = cNI_m, name = cNI_m, affected by kineticLaw
	xdot(19) = (1/(compartment_def))*(( 1.0 * reaction_cNI_m_trscr) + (-1.0 * reaction_cNI_m_degr));
	
% Species:   id = cP, name = cP, affected by kineticLaw
	xdot(20) = (1/(compartment_def))*(( 1.0 * reaction_cP_trsl) + (-1.0 * reaction_cP_degr));
	
% Species:   id = cP7, name = cP7, affected by kineticLaw
	xdot(21) = (1/(compartment_def))*(( 1.0 * reaction_cP7_trsl) + (-1.0 * reaction_cP7_degr));
	
% Species:   id = cP7_m, name = cP7_m, affected by kineticLaw
	xdot(22) = (1/(compartment_def))*(( 1.0 * reaction_cP7_m_trscr) + (-1.0 * reaction_cP7_m_degr));
	
% Species:   id = cP9, name = cP9, affected by kineticLaw
	xdot(23) = (1/(compartment_def))*(( 1.0 * reaction_cP9_trsl) + (-1.0 * reaction_cP9_degr));
	
% Species:   id = cP9_m, name = cP9_m, affected by kineticLaw
	xdot(24) = (1/(compartment_def))*(( 1.0 * reaction_cP9_m_trscr) + (-1.0 * reaction_cP9_m_degr));
	
% Species:   id = cT, name = cT, affected by kineticLaw
	xdot(25) = (1/(compartment_def))*(( 1.0 * reaction_cT_trsl) + (-1.0 * reaction_cT_degr));
	
% Species:   id = cT_m, name = cT_m, affected by kineticLaw
	xdot(26) = (1/(compartment_def))*(( 1.0 * reaction_cT_m_trscr) + (-1.0 * reaction_cT_m_degr));
	
% Species:   id = cZG, name = cZG, affected by kineticLaw
	xdot(27) = (1/(compartment_def))*(( 1.0 * reaction_cG_cZTL_assoc) + (-1.0 * reaction_cZG_degr));
	
% Species:   id = cZTL, name = cZTL, affected by kineticLaw
	xdot(28) = (1/(compartment_def))*((-1.0 * reaction_cG_cZTL_assoc) + ( 1.0 * reaction_cZTL_trsl) + (-1.0 * reaction_cZTL_degr));
	
% Species:   id = s1, name = s1, affected by kineticLaw
	xdot(29) = (1/(compartment_def))*((-1.0 * reaction_cL_m_trscr));
	
% Species:   id = s2, name = s2, affected by kineticLaw
	xdot(30) = (1/(compartment_def))*(( 1.0 * reaction_cL_m_degr));
	
% Species:   id = s3, name = s3, affected by kineticLaw
	xdot(31) = (1/(compartment_def))*((-1.0 * reaction_cL_trsl));
	
% Species:   id = s4, name = s4, affected by kineticLaw
	xdot(32) = (1/(compartment_def))*(( 1.0 * reaction_cL_degr));
	
% Species:   id = s5, name = s5, affected by kineticLaw
	xdot(33) = (1/(compartment_def))*((-1.0 * reaction_cL_modif));
	
% Species:   id = s6, name = s6, affected by kineticLaw
	xdot(34) = (1/(compartment_def))*(( 1.0 * reaction_cLm_degr));
	
% Species:   id = s7, name = s7, affected by kineticLaw
	xdot(35) = (1/(compartment_def))*((-1.0 * reaction_cP_trsl));
	
% Species:   id = s8, name = s8, affected by kineticLaw
	xdot(36) = (1/(compartment_def))*(( 1.0 * reaction_cP_degr));
	
% Species:   id = s9, name = s9, affected by kineticLaw
	xdot(37) = (1/(compartment_def))*((-1.0 * reaction_cP9_m_trscr));
	
% Species:   id = s10, name = s10, affected by kineticLaw
	xdot(38) = (1/(compartment_def))*(( 1.0 * reaction_cP9_m_degr));
	
% Species:   id = s11, name = s11, affected by kineticLaw
	xdot(39) = (1/(compartment_def))*((-1.0 * reaction_cP9_trsl));
	
% Species:   id = s12, name = s12, affected by kineticLaw
	xdot(40) = (1/(compartment_def))*(( 1.0 * reaction_cP9_degr));
	
% Species:   id = s13, name = s13, affected by kineticLaw
	xdot(41) = (1/(compartment_def))*((-1.0 * reaction_cP7_m_trscr));
	
% Species:   id = s14, name = s14, affected by kineticLaw
	xdot(42) = (1/(compartment_def))*(( 1.0 * reaction_cP7_m_degr));
	
% Species:   id = s15, name = s15, affected by kineticLaw
	xdot(43) = (1/(compartment_def))*((-1.0 * reaction_cP7_trsl));
	
% Species:   id = s16, name = s16, affected by kineticLaw
	xdot(44) = (1/(compartment_def))*(( 1.0 * reaction_cP7_degr));
	
% Species:   id = s17, name = s17, affected by kineticLaw
	xdot(45) = (1/(compartment_def))*((-1.0 * reaction_cNI_m_trscr));
	
% Species:   id = s18, name = s18, affected by kineticLaw
	xdot(46) = (1/(compartment_def))*(( 1.0 * reaction_cNI_m_degr));
	
% Species:   id = s19, name = s19, affected by kineticLaw
	xdot(47) = (1/(compartment_def))*((-1.0 * reaction_cNI_trsl));
	
% Species:   id = s20, name = s20, affected by kineticLaw
	xdot(48) = (1/(compartment_def))*(( 1.0 * reaction_cNI_degr));
	
% Species:   id = s21, name = s21, affected by kineticLaw
	xdot(49) = (1/(compartment_def))*((-1.0 * reaction_cT_m_trscr));
	
% Species:   id = s22, name = s22, affected by kineticLaw
	xdot(50) = (1/(compartment_def))*(( 1.0 * reaction_cT_m_degr));
	
% Species:   id = s23, name = s23, affected by kineticLaw
	xdot(51) = (1/(compartment_def))*((-1.0 * reaction_cT_trsl));
	
% Species:   id = s24, name = s24, affected by kineticLaw
	xdot(52) = (1/(compartment_def))*(( 1.0 * reaction_cT_degr));
	
% Species:   id = s25, name = s25, affected by kineticLaw
	xdot(53) = (1/(compartment_def))*((-1.0 * reaction_cE4_m_trscr));
	
% Species:   id = s26, name = s26, affected by kineticLaw
	xdot(54) = (1/(compartment_def))*(( 1.0 * reaction_cE4_m_degr));
	
% Species:   id = s27, name = s27, affected by kineticLaw
	xdot(55) = (1/(compartment_def))*((-1.0 * reaction_cE4_trsl));
	
% Species:   id = s28, name = s28, affected by kineticLaw
	xdot(56) = (1/(compartment_def))*(( 1.0 * reaction_cE4_degr));
	
% Species:   id = s29, name = s29, affected by kineticLaw
	xdot(57) = (1/(compartment_def))*((-1.0 * reaction_cE3_m_trscr));
	
% Species:   id = s30, name = s30, affected by kineticLaw
	xdot(58) = (1/(compartment_def))*(( 1.0 * reaction_cE3_m_degr));
	
% Species:   id = s31, name = s31, affected by kineticLaw
	xdot(59) = (1/(compartment_def))*((-1.0 * reaction_cE3_trsl));
	
% Species:   id = s32, name = s32, affected by kineticLaw
	xdot(60) = (1/(compartment_def))*(( 1.0 * reaction_cE3_degr));
	
% Species:   id = s33, name = s33, affected by kineticLaw
	xdot(61) = (1/(compartment_def))*(( 1.0 * reaction_cE3n_degr));
	
% Species:   id = s34, name = s34, affected by kineticLaw
	xdot(62) = (1/(compartment_def))*((-1.0 * reaction_cLUX_m_trscr));
	
% Species:   id = s35, name = s35, affected by kineticLaw
	xdot(63) = (1/(compartment_def))*(( 1.0 * reaction_cLUX_m_degr));
	
% Species:   id = s36, name = s36, affected by kineticLaw
	xdot(64) = (1/(compartment_def))*((-1.0 * reaction_cLUX_trsl));
	
% Species:   id = s37, name = s37, affected by kineticLaw
	xdot(65) = (1/(compartment_def))*(( 1.0 * reaction_cLUX_degr));
	
% Species:   id = s38, name = s38, affected by kineticLaw
	xdot(66) = (1/(compartment_def))*((-1.0 * reaction_cCOP1c_trsl));
	
% Species:   id = s39, name = s39, affected by kineticLaw
	xdot(67) = (1/(compartment_def))*(( 1.0 * reaction_cCOP1c_degr));
	
% Species:   id = s40, name = s40, affected by kineticLaw
	xdot(68) = (1/(compartment_def))*(( 1.0 * reaction_cCOP1n_degr));
	
% Species:   id = s41, name = s41, affected by kineticLaw
	xdot(69) = (1/(compartment_def))*(( 1.0 * reaction_cCOP1d_degr));
	
% Species:   id = s42, name = s42, affected by kineticLaw
	xdot(70) = (1/(compartment_def))*((-1.0 * reaction_cG_m_trscr));
	
% Species:   id = s43, name = s43, affected by kineticLaw
	xdot(71) = (1/(compartment_def))*(( 1.0 * reaction_cG_m_degr));
	
% Species:   id = s44, name = s44, affected by kineticLaw
	xdot(72) = (1/(compartment_def))*((-1.0 * reaction_cG_trsl));
	
% Species:   id = s45, name = s45, affected by kineticLaw
	xdot(73) = (1/(compartment_def))*(( 1.0 * reaction_cG_degr));
	
% Species:   id = s46, name = s46, affected by kineticLaw
	xdot(74) = (1/(compartment_def))*((-1.0 * reaction_cZTL_trsl));
	
% Species:   id = s47, name = s47, affected by kineticLaw
	xdot(75) = (1/(compartment_def))*(( 1.0 * reaction_cZTL_degr));
	
% Species:   id = s48, name = s48, affected by kineticLaw
	xdot(76) = (1/(compartment_def))*(( 1.0 * reaction_cZG_degr));
	
% Species:   id = s49, name = s49, affected by kineticLaw
	xdot(77) = (1/(compartment_def))*(( 1.0 * reaction_cEG_degr));
	
% Species:   id = s50, name = s50, affected by kineticLaw
	xdot(78) = (1/(compartment_def))*((-1.0 * reaction_cEC_form));
	
% Species:   id = s51, name = s51, affected by kineticLaw
	xdot(79) = (1/(compartment_def))*(( 1.0 * reaction_cEC_degr));
end

function z=function_4_cLUX_m_trscr(cEC,cL,def,e,g2,g6,n13), z=(n13*g2/(cEC+g2)*g6^e/(cL^e+g6^e)/def);end

function z=function_4_cL_m_trscr(L,a,cNI,cP,cP7,cP9,cT,def,g1,n1,q1), z=((L*q1*cP+n1*g1^a/((cP9+cP7+cNI+cT)^a+g1^a))/def);end

function z=function_4_cL_trsl(L,cL_m,def,p1,p2), z=(cL_m*(p1*L+p2)/def);end

function z=function_4_cL_m_degr(D,L,cL_m,def,m1,m2), z=((m1*L+m2*D)*cL_m/def);end

function z=function_4_cL_degr(c,cL,def,g3,m3,p3), z=((m3*cL+p3*cL^c/(cL^c+g3^c))/def);end

function z=function_4_cL_modif(c,cL,def,g3,p3), z=(p3*cL^c/(cL^c+g3^c)/def);end

function z=function_4_cLm_degr(cLm,def,m4), z=(m4*cLm/def);end

function z=function_4_cP_trsl(L,cP,def,p7), z=(p7*(1-L)*(1-cP)/def);end

function z=function_4_cP9_m_trscr_1(L,cEC,cL,cP,def,e,g8,g9,n4,n7,q3), z=((L*q3*cP+(n4+n7*cL^e/(cL^e+g9^e))*g8/(cEC+g8))/def);end

function z=function_4_cP_degr(L,cP,def,m11), z=(m11*cP*L/def);end

function z=function_4_cP9_m_degr(cP9_m,def,m12), z=(m12*cP9_m/def);end

function z=function_4_cP9_trsl(cP9_m,def,p8), z=(p8*cP9_m/def);end

function z=function_4_cP9_degr(D,cP9,def,m13,m22), z=((m13+m22*D)*cP9/def);end

function z=function_4_cP7_m_trscr(cL,cLm,cP9,def,e,f,g10,g11,n8,n9), z=((n8*(cLm+cL)^e/((cLm+cL)^e+g10^e)+n9*cP9^f/(cP9^f+g11^f))/def);end

function z=function_4_cP7_m_degr(cP7_m,def,m14), z=(m14*cP7_m/def);end

function z=function_4_cP7_trsl(cP7_m,def,p9), z=(p9*cP7_m/def);end

function z=function_4_cP7_degr(D,cP7,def,m15,m23), z=((m15+m23*D)*cP7/def);end

function z=function_4_cCOP1c_degr(L,cCOP1c,def,m27,p15), z=(m27*cCOP1c*(1+p15*L)/def);end

function z=function_4_cCOP1n_import(cCOP1c,def,p6), z=(p6*cCOP1c/def);end

function z=function_4_cCOP1d_activ(L,cCOP1n,cP,def,n14,n6), z=((n6*L*cP*cCOP1n+n14*cCOP1n)/def);end

function z=function_4_cCOP1d_degr(D,cCOP1d,def,m31,m33), z=(m31*(1+m33*D)*cCOP1d/def);end

function z=function_4_cCOP1n_degr(L,cCOP1n,def,m27,p15), z=(m27*cCOP1n*(1+p15*L)/def);end

function z=function_4_cG_m_trscr_1(L,cEC,cL,cP,def,e,g14,g15,n12,q2), z=((L*q2*cP+n12*g14/(cEC+g14)*g15^e/(cL^e+g15^e))/def);end

function z=function_4_cG_m_degr(cG_m,def,m18), z=(m18*cG_m/def);end

function z=function_4_cG_trsl(cG_m,def,p11), z=(p11*cG_m/def);end

function z=function_4_cG_degr(cE3n,cG,def,m19,p17,p28,p29), z=((m19*cG+p28*cG-p29*p28*cG/(p29+m19+p17*cE3n))/def);end

function z=function_4_cG_cZTL_assoc(D,L,cG,cZG,cZTL,def,p12,p13), z=((p12*L*cZTL*cG-p13*D*cZG)/def);end

function z=function_4_cZTL_trsl(def,p14), z=(p14/def);end

function z=function_4_cZG_degr(cZG,def,m21), z=(m21*cZG/def);end

function z=function_4_cZTL_degr(cZTL,def,m20), z=(m20*cZTL/def);end

function z=function_4_cG_cE3_assoc(cE3,cG,def,p17), z=(p17*cE3*cG/def);end

function z=function_4_cNI_m_trscr(b,cLm,cP7,def,e,g12,g13,n10,n11), z=((n10*cLm^e/(cLm^e+g12^e)+n11*cP7^b/(cP7^b+g13^b))/def);end

function z=function_4_cNI_m_degr(cNI_m,def,m16), z=(m16*cNI_m/def);end

function z=function_4_cNI_trsl(cNI_m,def,p10), z=(p10*cNI_m/def);end

function z=function_4_cNI_degr(D,cNI,def,m17,m24), z=((m17+m24*D)*cNI/def);end

function z=function_4_cT_m_trscr_1(cEC,cL,def,e,g4,g5,n2), z=(n2*g4/(cEC+g4)*g5^e/(cL^e+g5^e)/def);end

function z=function_4_cT_m_degr(cT_m,def,m5), z=(m5*cT_m/def);end

function z=function_4_cT_trsl(cT_m,def,p4), z=(p4*cT_m/def);end

function z=function_4_cT_degr(D,cT,cZG,cZTL,def,m6,m7,m8,p5), z=(((m6+m7*D)*cT*(p5*cZTL+cZG)+m8*cT)/def);end

function z=function_4_cE4_m_degr(cE4_m,def,m34), z=(m34*cE4_m/def);end

function z=function_4_cE4_trsl(cE4_m,def,p23), z=(p23*cE4_m/def);end

function z=function_4_cE4_degr(cCOP1d,cCOP1n,cE3n,cE4,cLUX,def,m35,m36,m37,p21,p25,p26), z=((m35*cE4+p25*cE4*cE3n-p21*p25*cE4*cE3n/(p26*cLUX+p21+m37*cCOP1d+m36*cCOP1n))/def);end

function z=function_4_cE3_m_trscr(cL,def,e,g16,n3), z=(n3*g16^e/(cL^e+g16^e)/def);end

function z=function_4_cE3_trsl(cE3_m,def,p16), z=(p16*cE3_m/def);end

function z=function_4_cE3_m_degr(cE3_m,def,m26), z=(m26*cE3_m/def);end

function z=function_4_cE3_degr(cCOP1c,cE3,def,m9), z=(m9*cE3*cCOP1c/def);end

function z=function_4_cE3n_import(cE3,cE3n,def,p19,p20), z=((p19*cE3-p20*cE3n)/def);end

function z=function_4_cE3n_degr(cCOP1d,cCOP1n,cE3n,cE4,cG,cLUX,def,m19,m29,m30,m36,m37,p17,p21,p25,p26,p28,p29), z=((m29*cE3n*cCOP1n+m30*cE3n*cCOP1d+p25*cE4*cE3n-p21*p25*cE4*cE3n/(p26*cLUX+p21+m37*cCOP1d+m36*cCOP1n)+p17*cE3n*p28*cG/(p29+m19+p17*cE3n))/def);end

function z=function_4_cLUX_m_degr(cLUX_m,def,m34), z=(m34*cLUX_m/def);end

function z=function_4_cLUX_trsl(cLUX_m,def,p27), z=(p27*cLUX_m/def);end

function z=function_4_cLUX_degr(cCOP1d,cCOP1n,cE3n,cE4,cLUX,def,m36,m37,m39,p21,p25,p26), z=((m39*cLUX+p26*cLUX*p25*cE4*cE3n/(p26*cLUX+p21+m37*cCOP1d+m36*cCOP1n))/def);end

function z=function_4_cCOP1c_trsl(def,n5), z=(n5/def);end

function z=function_4_cEG_degr(cCOP1c,cCOP1d,cCOP1n,cE3n,cEG,cG,def,m10,m19,m9,p17,p18,p28,p29,p31), z=((m9*cEG*cCOP1c+p18*cEG-p31*(p18*cEG+p17*cE3n*p28*cG/(p29+m19+p17*cE3n))/(m9*cCOP1n+m10*cCOP1d+p31))/def);end

function z=function_4_cEC_form(cCOP1d,cCOP1n,cE3n,cE4,cLUX,def,m36,m37,p21,p25,p26), z=(p26*cLUX*p25*cE4*cE3n/(p26*cLUX+p21+m37*cCOP1d+m36*cCOP1n)/def);end

function z=function_4_cEC_degr(L,cCOP1d,cCOP1n,cE3n,cEC,cEG,cG,d,def,g7,m10,m19,m32,m36,m37,m9,p17,p18,p24,p28,p29,p31), z=((m36*cCOP1n*cEC+m37*cCOP1d*cEC+m32*cEC*(1+p24*L*(p28*cG/(p29+m19+p17*cE3n)+(p18*cEG+p17*cE3n*p28*cG/(p29+m19+p17*cE3n))/(m9*cCOP1n+m10*cCOP1d+p31))^d/((p28*cG/(p29+m19+p17*cE3n)+(p18*cEG+p17*cE3n*p28*cG/(p29+m19+p17*cE3n))/(m9*cCOP1n+m10*cCOP1d+p31))^d+g7^d)))/def);end

function z=function_4_cE4_m_trscr_1(cEC,cL,def,e,g2,g6,n13), z=(n13*g2/(cEC+g2)*g6^e/(cL^e+g6^e)/def);end

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


