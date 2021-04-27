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
% Model name = Zhou2015 - Circadian clock with immune regulator NPR1
%
% is http://identifiers.org/biomodels.db/MODEL1506010000
% is http://identifiers.org/biomodels.db/BIOMD0000000577
% isDescribedBy http://identifiers.org/pubmed/26098366
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000445
%


function main()
%Initial conditions vector
	x0=zeros(32,1);
	x0(1) = 0.856;
	x0(2) = 0.4027;
	x0(3) = 0.2362;
	x0(4) = 0.2843;
	x0(5) = 1.3143;
	x0(6) = 0.4068;
	x0(7) = 0.8445;
	x0(8) = 0.1485;
	x0(9) = 0.2893;
	x0(10) = 0.2234;
	x0(11) = 0.4923;
	x0(12) = 0.2527;
	x0(13) = 0.1419;
	x0(14) = 0.0206;
	x0(15) = 0.0137;
	x0(16) = 0.1554;
	x0(17) = 0.5005;
	x0(18) = 0.6628;
	x0(19) = 0.0995;
	x0(20) = 0.9548;
	x0(21) = 0.0811;
	x0(22) = 0.0699;
	x0(23) = 0.1502;
	x0(24) = 0.955999953963223;
	x0(25) = 0.0849;
	x0(26) = 0.1811;
	x0(27) = 0.0251;
	x0(28) = 0.0663;
	x0(29) = 0.0873;
	x0(30) = 0.0656;
	x0(31) = 0.0768;
	x0(32) = 0.2505;


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
% Compartment: id = def, name = def, constant
	compartment_def=1.0;
% Compartment: id = compartment_1, name = No Name, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  n1, name = n1
	global_par_n1=2.6;
% Parameter:   id =  n2, name = n2
	global_par_n2=0.35;
% Parameter:   id =  n3, name = n3
	global_par_n3=0.29;
% Parameter:   id =  n4, name = n4
	global_par_n4=0.04;
% Parameter:   id =  n5, name = n5
	global_par_n5=0.4;
% Parameter:   id =  n6, name = n6
	global_par_n6=20.0;
% Parameter:   id =  n7, name = n7
	global_par_n7=0.1;
% Parameter:   id =  n8, name = n8
	global_par_n8=0.5;
% Parameter:   id =  n9, name = n9
	global_par_n9=0.6;
% Parameter:   id =  n10, name = n10
	global_par_n10=0.3;
% Parameter:   id =  n11, name = n11
	global_par_n11=0.6;
% Parameter:   id =  n12, name = n12
	global_par_n12=9.0;
% Parameter:   id =  n13, name = n13
	global_par_n13=2.0;
% Parameter:   id =  n14, name = n14
	global_par_n14=0.1;
% Parameter:   id =  g1, name = g1
	global_par_g1=0.1;
% Parameter:   id =  g2, name = g2
	global_par_g2=0.01;
% Parameter:   id =  g3, name = g3
	global_par_g3=0.6;
% Parameter:   id =  g4, name = g4
	global_par_g4=0.006;
% Parameter:   id =  g5, name = g5
	global_par_g5=0.2;
% Parameter:   id =  g6, name = g6
	global_par_g6=0.3;
% Parameter:   id =  g7, name = g7
	global_par_g7=1.0;
% Parameter:   id =  g8, name = g8
	global_par_g8=0.04;
% Parameter:   id =  g9, name = g9
	global_par_g9=0.3;
% Parameter:   id =  g10, name = g10
	global_par_g10=0.5;
% Parameter:   id =  g11, name = g11
	global_par_g11=0.7;
% Parameter:   id =  g12, name = g12
	global_par_g12=0.1;
% Parameter:   id =  g13, name = g13
	global_par_g13=1.0;
% Parameter:   id =  g14, name = g14
	global_par_g14=0.02;
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
	global_par_m6=0.2;
% Parameter:   id =  m7, name = m7
	global_par_m7=0.1;
% Parameter:   id =  m8, name = m8
	global_par_m8=0.5;
% Parameter:   id =  m9, name = m9
	global_par_m9=0.2;
% Parameter:   id =  m10, name = m10
	global_par_m10=0.1;
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
	global_par_m19=0.9;
% Parameter:   id =  m20, name = m20
	global_par_m20=0.6;
% Parameter:   id =  m21, name = m21
	global_par_m21=0.08;
% Parameter:   id =  m22, name = m22
	global_par_m22=0.1;
% Parameter:   id =  m23, name = m23
	global_par_m23=0.5;
% Parameter:   id =  m24, name = m24
	global_par_m24=0.5;
% Parameter:   id =  m25, name = m25
	global_par_m25=0.9;
% Parameter:   id =  m26, name = m26
	global_par_m26=0.5;
% Parameter:   id =  m27, name = m27
	global_par_m27=0.1;
% Parameter:   id =  m28, name = m28
	global_par_m28=28.0;
% Parameter:   id =  m29, name = m29
	global_par_m29=0.3;
% Parameter:   id =  m30, name = m30
	global_par_m30=1.0;
% Parameter:   id =  m31, name = m31
	global_par_m31=0.1;
% Parameter:   id =  m32, name = m32
	global_par_m32=0.2;
% Parameter:   id =  m33, name = m33
	global_par_m33=13.0;
% Parameter:   id =  m34, name = m34
	global_par_m34=0.6;
% Parameter:   id =  m35, name = m35
	global_par_m35=0.3;
% Parameter:   id =  m36, name = m36
	global_par_m36=0.3;
% Parameter:   id =  m37, name = m37
	global_par_m37=0.4;
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
	global_par_p4=0.5;
% Parameter:   id =  p5, name = p5
	global_par_p5=1.0;
% Parameter:   id =  p6, name = p6
	global_par_p6=0.2;
% Parameter:   id =  p7, name = p7
	global_par_p7=0.3;
% Parameter:   id =  p8, name = p8
	global_par_p8=0.6;
% Parameter:   id =  p9, name = p9
	global_par_p9=0.8;
% Parameter:   id =  p10, name = p10
	global_par_p10=0.54;
% Parameter:   id =  p11, name = p11
	global_par_p11=0.5;
% Parameter:   id =  p12, name = p12
	global_par_p12=10.0;
% Parameter:   id =  p13, name = p13
	global_par_p13=0.1;
% Parameter:   id =  p14, name = p14
	global_par_p14=0.14;
% Parameter:   id =  p15, name = p15
	global_par_p15=2.0;
% Parameter:   id =  p16, name = p16
	global_par_p16=0.62;
% Parameter:   id =  p17, name = p17
	global_par_p17=17.0;
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
	global_par_p24=11.0;
% Parameter:   id =  p25, name = p25
	global_par_p25=2.0;
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
% Parameter:   id =  q1, name = q1
	global_par_q1=1.0;
% Parameter:   id =  q2, name = q2
	global_par_q2=1.56;
% Parameter:   id =  q3, name = q3
	global_par_q3=3.0;
% Parameter:   id =  L, name = L
	global_par_L=1.0;
% Parameter:   id =  D, name = D
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
% Parameter:   id =  parameter_1, name = g17
	global_par_parameter_1=0.6;
% Parameter:   id =  parameter_2, name = g18
	global_par_parameter_2=0.4;
% Parameter:   id =  parameter_3, name = g19
	global_par_parameter_3=0.4;
% Parameter:   id =  parameter_4, name = g20
	global_par_parameter_4=0.03;
% Parameter:   id =  parameter_5, name = g21
	global_par_parameter_5=0.4;
% Parameter:   id =  parameter_6, name = g22
	global_par_parameter_6=0.1;
% Parameter:   id =  parameter_7, name = g
	global_par_parameter_7=2.0;
% Parameter:   id =  parameter_8, name = n15
	global_par_parameter_8=2.0;
% Parameter:   id =  parameter_9, name = h
	global_par_parameter_9=2.0;
% Parameter:   id =  parameter_10, name = i
	global_par_parameter_10=2.0;
% Parameter:   id =  parameter_11, name = j
	global_par_parameter_11=2.0;
% Parameter:   id =  parameter_12, name = g23
	global_par_parameter_12=0.6;
% Parameter:   id =  parameter_13, name = g24
	global_par_parameter_13=0.3;
% Parameter:   id =  parameter_14, name = g25
	global_par_parameter_14=0.5;
% Parameter:   id =  parameter_15, name = g26
	global_par_parameter_15=0.3;
% Parameter:   id =  parameter_16, name = g27
	global_par_parameter_16=0.2;
% Parameter:   id =  parameter_17, name = g28
	global_par_parameter_17=0.1;
% Parameter:   id =  parameter_18, name = g29
	global_par_parameter_18=1.0;
% Parameter:   id =  parameter_19, name = m38
	global_par_parameter_19=0.3;
% Parameter:   id =  parameter_20, name = m39
	global_par_parameter_20=0.2;
% Parameter:   id =  parameter_21, name = n18
	global_par_parameter_21=0.5;
% Parameter:   id =  parameter_22, name = n16
	global_par_parameter_22=0.0;
% Parameter:   id =  parameter_23, name = quantity
	global_par_parameter_23=0.0;
% Parameter:   id =  parameter_24, name = n17
	global_par_parameter_24=0.5;
% Parameter:   id =  parameter_25, name = n19
	global_par_parameter_25=0.2;
% Parameter:   id =  parameter_26, name = p31
	global_par_parameter_26=0.1;
% Parameter:   id =  parameter_27, name = p32
	global_par_parameter_27=0.1;
% Parameter:   id =  parameter_28, name = p33
	global_par_parameter_28=0.2;
% Parameter:   id =  parameter_29, name = A0
	global_par_parameter_29=1.0;
% Parameter:   id =  nb_TOC1, name = nb_TOC1
% Parameter:   id =  nb_LHY, name = nb_LHY
% Parameter:   id =  nb_PRR7, name = nb_PRR7
% Parameter:   id =  na_TOC1, name = na_TOC1
% Parameter:   id =  na_LHY, name = na_LHY
% Parameter:   id =  na_PRR7, name = na_PRR7
% Parameter:   id =  Kd_TOC1, name = Kd_TOC1
% Parameter:   id =  Kd_LHY, name = Kd_LHY
% Parameter:   id =  Kd_PRR7, name = Kd_PRR7
	global_par_Kd_PRR7=0.0;
% Parameter:   id =  NPR1_WT, name = NPR1_WT
% Parameter:   id =  NPR1_SA, name = NPR1_SA
% Parameter:   id =  PRR7_on, name = PRR7_on
% Parameter:   id =  LHY_on, name = LHY_on
% Parameter:   id =  WT, name = WT
% Parameter:   id =  SA, name = SA
% Parameter:   id =  F_TOC1, name = F_TOC1
% Parameter:   id =  F_LHY, name = F_LHY
% Parameter:   id =  F_PRR7, name = F_PRR7
% assignmentRule: variable = D
	global_par_D=1-global_par_L;
% assignmentRule: variable = NPR1_WT
	global_par_NPR1_WT=piecewise(1, time < 28, piecewise((-0.0113)*(time-28-floor((time-28)/24)*24)+0.6286, piecewise(time-28-24*ceil((time-28)/24),  xor ((time-28) < 0, 24 < 0), time-28-24*floor((time-28)/24)) < 4, piecewise(0.003*(time-28-floor((time-28)/24)*24)+0.5716, (piecewise(time-28-24*ceil((time-28)/24),  xor ((time-28) < 0, 24 < 0), time-28-24*floor((time-28)/24)) >= 4) && (piecewise(time-28-24*ceil((time-28)/24),  xor ((time-28) < 0, 24 < 0), time-28-24*floor((time-28)/24)) < 8), piecewise(0.0774*(time-28-floor((time-28)/24)*24)-0.0232, (piecewise(time-28-24*ceil((time-28)/24),  xor ((time-28) < 0, 24 < 0), time-28-24*floor((time-28)/24)) >= 8) && (piecewise(time-28-24*ceil((time-28)/24),  xor ((time-28) < 0, 24 < 0), time-28-24*floor((time-28)/24)) < 12), piecewise(0.1815*(time-28-floor((time-28)/24)*24)-1.2732, (piecewise(time-28-24*ceil((time-28)/24),  xor ((time-28) < 0, 24 < 0), time-28-24*floor((time-28)/24)) >= 12) && (piecewise(time-28-24*ceil((time-28)/24),  xor ((time-28) < 0, 24 < 0), time-28-24*floor((time-28)/24)) < 16), piecewise(0.0085*(time-28-floor((time-28)/24)*24)+1.4947, (piecewise(time-28-24*ceil((time-28)/24),  xor ((time-28) < 0, 24 < 0), time-28-24*floor((time-28)/24)) >= 16) && (piecewise(time-28-24*ceil((time-28)/24),  xor ((time-28) < 0, 24 < 0), time-28-24*floor((time-28)/24)) < 20), piecewise((-0.2591)*(time-28-floor((time-28)/24)*24)+6.8481, (piecewise(time-28-24*ceil((time-28)/24),  xor ((time-28) < 0, 24 < 0), time-28-24*floor((time-28)/24)) >= 20) && (piecewise(time-28-24*ceil((time-28)/24),  xor ((time-28) < 0, 24 < 0), time-28-24*floor((time-28)/24)) < 24), 0)))))));
% assignmentRule: variable = NPR1_SA
	global_par_NPR1_SA=piecewise(piecewise(1.2393*(time-28)+0.6286, (time > 28) && (time <= 32), piecewise(0.5562*(time-28)+3.3613, (time > 32) && (time <= 36), piecewise(0.5897*(time-28)+3.093, (time > 36) && (time <= 40), piecewise(1.1649*(time-28)-3.8089, (time > 40) && (time <= 44), piecewise(0.6696*(time-28)+4.1157, (time > 44) && (time <= 48), piecewise((-0.8328)*(time-28)+34.1643, (time > 48) && (time <= 52), piecewise((-0.4128)*(time-28)+24.0839, (time > 52) && (time <= 56), piecewise((-1.7801)*(time-28)+62.3676, (time > 56) && (time <= 60), piecewise((-0.2292)*(time-28)+12.7375, (time > 60) && (time <= 64), piecewise(1.2106*(time-28)-39.0947, (time > 64) && (time <= 68), piecewise((-0.6097)*(time-28)+33.7203, (time > 68) && (time <= 72), piecewise((-1.5657)*(time-28)+75.7827, (time > 72) && (time <= 76), 0)))))))))))), (time > 28) && (time < 76), global_par_NPR1_WT);
% assignmentRule: variable = PRR7_on
	global_par_PRR7_on=piecewise(1, true, 0);
% assignmentRule: variable = LHY_on
	global_par_LHY_on=1;
% assignmentRule: variable = nb_TOC1
	global_par_nb_TOC1=piecewise(0.5606, (global_par_LHY_on == 1) && (global_par_PRR7_on == 1), piecewise(0.5782, global_par_LHY_on == 1, piecewise(0.5502, global_par_PRR7_on == 1, 0.5689)));
% assignmentRule: variable = nb_LHY
	global_par_nb_LHY=piecewise(0.4808, (global_par_LHY_on == 1) && (global_par_PRR7_on == 1), piecewise(0.3646, global_par_LHY_on == 1, 1));
% assignmentRule: variable = nb_PRR7
	global_par_nb_PRR7=piecewise(0.3918, (global_par_LHY_on == 1) && (global_par_PRR7_on == 1), piecewise(0.2113, global_par_PRR7_on == 1, 1));
% assignmentRule: variable = Kd_TOC1
	global_par_Kd_TOC1=piecewise(1.3371, (global_par_LHY_on == 1) && (global_par_PRR7_on == 1), piecewise(1.3925, global_par_LHY_on == 1, piecewise(1.0212, global_par_PRR7_on == 1, 1.0714)));
% assignmentRule: variable = Kd_LHY
	global_par_Kd_LHY=piecewise(2.5062, (global_par_LHY_on == 1) && (global_par_PRR7_on == 1), piecewise(1.9185, global_par_LHY_on == 1, 0));
% assignmentRule: variable = WT
	global_par_WT=piecewise(1, true, 0);
% assignmentRule: variable = na_TOC1
	global_par_na_TOC1=piecewise((1-global_par_nb_TOC1)*(1+global_par_Kd_TOC1), global_par_WT == 1, 0);
% assignmentRule: variable = na_LHY
	global_par_na_LHY=piecewise((1-global_par_nb_LHY)*(1+global_par_Kd_LHY), global_par_WT == 1, 0);
% assignmentRule: variable = na_PRR7
	global_par_na_PRR7=piecewise((1-global_par_nb_PRR7)*(1+global_par_Kd_PRR7), global_par_WT == 1, 0);
% assignmentRule: variable = SA
	global_par_SA=piecewise(1, true, 0);
% assignmentRule: variable = F_TOC1
	global_par_F_TOC1=piecewise(global_par_nb_TOC1+global_par_na_TOC1*global_par_NPR1_SA/(global_par_Kd_TOC1+global_par_NPR1_SA), global_par_SA == 1, global_par_nb_TOC1+global_par_na_TOC1*global_par_NPR1_WT/(global_par_Kd_TOC1+global_par_NPR1_WT));
% assignmentRule: variable = F_LHY
	global_par_F_LHY=piecewise(global_par_nb_LHY+global_par_na_LHY*global_par_NPR1_SA/(global_par_Kd_LHY+global_par_NPR1_SA), global_par_SA == 1, global_par_nb_LHY+global_par_na_LHY*global_par_NPR1_WT/(global_par_Kd_LHY+global_par_NPR1_WT));
% assignmentRule: variable = F_PRR7
	global_par_F_PRR7=piecewise(global_par_nb_PRR7+global_par_na_PRR7*global_par_NPR1_SA/(global_par_Kd_PRR7+global_par_NPR1_SA), global_par_SA == 1, global_par_nb_PRR7+global_par_na_PRR7*global_par_NPR1_WT/(global_par_Kd_PRR7+global_par_NPR1_WT));

% Reaction: id = cL_m_trscr, name = cL_m_trscr
	reaction_cL_m_trscr=compartment_def*function_4_cL_m_trscr(global_par_L, global_par_a, x(22), x(24), x(25), x(27), x(29), global_par_g1, global_par_n1, global_par_q1, global_par_F_LHY);

% Reaction: id = cL_m_degr, name = cL_m_degr
	reaction_cL_m_degr=compartment_def*function_4_cL_m_degr(global_par_L, x(20), global_par_m1, global_par_m2);

% Reaction: id = cL_trsl, name = cL_trsl
	reaction_cL_trsl=compartment_def*function_4_cL_trsl(global_par_L, x(20), global_par_p1, global_par_p2);

% Reaction: id = cL_degr, name = cL_degr
	reaction_cL_degr=compartment_def*function_4_cL_degr(global_par_c, x(17), compartment_def, global_par_g3, global_par_m3, global_par_p3);

% Reaction: id = cL_modif, name = cL_modif
	reaction_cL_modif=compartment_def*function_4_cL_modif(global_par_c, x(17), compartment_def, global_par_g3, global_par_p3);

% Reaction: id = cLm_degr, name = cLm_degr
	reaction_cLm_degr=compartment_def*function_4_cLm_degr(x(21), compartment_def, global_par_m4);

% Reaction: id = cP_trsl, name = cP_trsl
	reaction_cP_trsl=compartment_def*function_4_cP_trsl(global_par_L, x(24), global_par_p7);

% Reaction: id = cP_degr, name = cP_degr
	reaction_cP_degr=compartment_def*function_4_cP_degr(global_par_L, x(24), global_par_m11);

% Reaction: id = cP9_m_trscr, name = cP9_m_trscr
	reaction_cP9_m_trscr=compartment_def*function_4_cP9_m_trscr_1(global_par_L, x(13), x(17), x(24), x(29), global_par_e, global_par_g8, global_par_g9, global_par_n4, global_par_n7, global_par_parameter_2, global_par_parameter_7, global_par_q3);

% Reaction: id = cP9_m_degr, name = cP9_m_degr
	reaction_cP9_m_degr=compartment_def*function_4_cP9_m_degr(x(28), compartment_def, global_par_m12);

% Reaction: id = cP9_trsl, name = cP9_trsl
	reaction_cP9_trsl=compartment_def*function_4_cP9_trsl(x(28), compartment_def, global_par_p8);

% Reaction: id = cP9_degr, name = cP9_degr
	reaction_cP9_degr=compartment_def*function_4_cP9_degr(global_par_L, x(27), global_par_m13, global_par_m22);

% Reaction: id = cP7_m_trscr, name = cP7_m_trscr
	reaction_cP7_m_trscr=compartment_def*function_4_cP7_m_trscr_1(x(17), x(21), x(27), x(29), compartment_def, global_par_e, global_par_f, global_par_g10, global_par_g11, global_par_n8, global_par_n9, global_par_parameter_6, global_par_parameter_7, global_par_F_PRR7);

% Reaction: id = cP7_m_degr, name = cP7_m_degr
	reaction_cP7_m_degr=compartment_def*function_4_cP7_m_degr(x(26), compartment_def, global_par_m14);

% Reaction: id = cP7_trsl, name = cP7_trsl
	reaction_cP7_trsl=compartment_def*function_4_cP7_trsl(x(26), compartment_def, global_par_p9);

% Reaction: id = cP7_degr, name = cP7_degr
	reaction_cP7_degr=compartment_def*function_4_cP7_degr(global_par_L, x(25), global_par_m15, global_par_m23);

% Reaction: id = cNI_m_trscr, name = cNI_m_trscr
	reaction_cNI_m_trscr=compartment_def*function_4_cNI_m_trscr_1(global_par_b, x(21), x(25), x(29), compartment_def, global_par_e, global_par_g12, global_par_g13, global_par_n10, global_par_n11, global_par_parameter_12, global_par_parameter_7);

% Reaction: id = cNI_m_degr, name = cNI_m_degr
	reaction_cNI_m_degr=compartment_def*function_4_cNI_m_degr(x(23), compartment_def, global_par_m16);

% Reaction: id = cNI_trsl, name = cNI_trsl
	reaction_cNI_trsl=compartment_def*function_4_cNI_trsl(x(23), compartment_def, global_par_p10);

% Reaction: id = cNI_degr, name = cNI_degr
	reaction_cNI_degr=compartment_def*function_4_cNI_degr(global_par_L, x(22), global_par_m17, global_par_m24);

% Reaction: id = cT_m_trscr, name = cT_m_trscr
	reaction_cT_m_trscr=compartment_def*function_4_cT_m_trscr(x(13), x(17), compartment_def, global_par_e, global_par_g4, global_par_g5, global_par_n2, global_par_parameter_11, global_par_parameter_14, x(3), global_par_F_TOC1);

% Reaction: id = cT_m_degr, name = cT_m_degr
	reaction_cT_m_degr=compartment_def*function_4_cT_m_degr(x(30), compartment_def, global_par_m5);

% Reaction: id = cT_trsl, name = cT_trsl
	reaction_cT_trsl=compartment_def*function_4_cT_trsl(x(30), compartment_def, global_par_p4);

% Reaction: id = cT_degr, name = cT_degr
	reaction_cT_degr=compartment_def*function_4_cT_degr(global_par_L, x(29), x(31), x(32), global_par_m6, global_par_m7, global_par_m8, global_par_p5);

% Reaction: id = cE4_m_trscr, name = cE4_m_trscr
	reaction_cE4_m_trscr=compartment_def*function_4_cE4_m_trscr_1(x(13), x(17), x(29), compartment_def, global_par_e, global_par_g6, global_par_parameter_4, global_par_parameter_5, global_par_parameter_7, global_par_parameter_8);

% Reaction: id = cE4_m_degr, name = cE4_m_degr
	reaction_cE4_m_degr=compartment_def*function_4_cE4_m_degr(x(12), compartment_def, global_par_m34);

% Reaction: id = cE4_trsl, name = cE4_trsl
	reaction_cE4_trsl=compartment_def*function_4_cE4_trsl(x(12), compartment_def, global_par_p23);

% Reaction: id = cE4_degr, name = cE4_degr
	reaction_cE4_degr=compartment_def*function_4_cE4_degr(x(6), x(7), x(10), x(11), x(18), compartment_def, global_par_m10, global_par_m35, global_par_m9, global_par_p21, global_par_p25, global_par_p26);

% Reaction: id = cE3_m_trscr, name = cE3_m_trscr
	reaction_cE3_m_trscr=compartment_def*function_4_cE3_m_trscr(x(17), compartment_def, global_par_e, global_par_g16, global_par_n3);

% Reaction: id = cE3_m_degr, name = cE3_m_degr
	reaction_cE3_m_degr=compartment_def*function_4_cE3_m_degr(x(9), compartment_def, global_par_m26);

% Reaction: id = cE3_trsl, name = cE3_trsl
	reaction_cE3_trsl=compartment_def*function_4_cE3_trsl(x(9), compartment_def, global_par_p16);

% Reaction: id = cE3_degr, name = cE3_degr
	reaction_cE3_degr=compartment_def*function_4_cE3_degr(x(5), x(8), compartment_def, global_par_m9);

% Reaction: id = cE3n_import, name = cE3n_import
	reaction_cE3n_import=compartment_def*function_4_cE3n_import(x(8), x(10), compartment_def, global_par_p19, global_par_p20);

% Reaction: id = cE3n_degr, name = cE3n_degr
	reaction_cE3n_degr=compartment_def*function_4_cE3n_degr(x(6), x(7), x(10), x(11), x(15), x(18), compartment_def, global_par_m10, global_par_m19, global_par_m9, global_par_p17, global_par_p21, global_par_p25, global_par_p26, global_par_p28, global_par_p29);

% Reaction: id = cLUX_m_trscr, name = cLUX_m_trscr
	reaction_cLUX_m_trscr=compartment_def*function_4_cLUX_m_trscr(x(13), x(17), x(29), compartment_def, global_par_e, global_par_g2, global_par_g6, global_par_n13, global_par_parameter_3, global_par_parameter_7);

% Reaction: id = cLUX_m_degr, name = cLUX_m_degr
	reaction_cLUX_m_degr=compartment_def*function_4_cLUX_m_degr(x(19), compartment_def, global_par_m34);

% Reaction: id = cLUX_trsl, name = cLUX_trsl
	reaction_cLUX_trsl=compartment_def*function_4_cLUX_trsl(x(19), compartment_def, global_par_p27);

% Reaction: id = cLUX_degr, name = cLUX_degr
	reaction_cLUX_degr=compartment_def*function_4_cLUX_degr_1(x(6), x(7), x(10), x(11), x(18), compartment_def, global_par_m10, global_par_m36, global_par_m9, global_par_p21, global_par_p25, global_par_p26);

% Reaction: id = cCOP1c_trsl, name = cCOP1c_trsl
	reaction_cCOP1c_trsl=compartment_def*function_4_cCOP1c_trsl(compartment_def, global_par_n5);

% Reaction: id = cCOP1c_degr, name = cCOP1c_degr
	reaction_cCOP1c_degr=compartment_def*function_4_cCOP1c_degr(global_par_L, x(5), global_par_m27, global_par_p15);

% Reaction: id = cCOP1n_import, name = cCOP1n_import
	reaction_cCOP1n_import=compartment_def*function_4_cCOP1n_import(x(5), compartment_def, global_par_p6);

% Reaction: id = cCOP1n_degr, name = cCOP1n_degr
	reaction_cCOP1n_degr=compartment_def*function_4_cCOP1n_degr(global_par_L, x(7), global_par_m27, global_par_p15);

% Reaction: id = cCOP1d_activ, name = cCOP1d_activ
	reaction_cCOP1d_activ=compartment_def*function_4_cCOP1d_activ(global_par_L, x(7), x(24), global_par_n14, global_par_n6);

% Reaction: id = cCOP1d_degr, name = cCOP1d_degr
	reaction_cCOP1d_degr=compartment_def*function_4_cCOP1d_degr(global_par_L, x(6), global_par_m31, global_par_m33);

% Reaction: id = cG_m_trscr, name = cG_m_trscr
	reaction_cG_m_trscr=compartment_def*function_4_cG_m_trscr_1(global_par_L, x(13), x(17), x(24), x(29), global_par_e, global_par_g14, global_par_g15, global_par_n12, global_par_parameter_1, global_par_parameter_7, global_par_q2);

% Reaction: id = cG_m_degr, name = cG_m_degr
	reaction_cG_m_degr=compartment_def*function_4_cG_m_degr(x(16), compartment_def, global_par_m18);

% Reaction: id = cG_trsl, name = cG_trsl
	reaction_cG_trsl=compartment_def*function_4_cG_trsl(x(16), compartment_def, global_par_p11);

% Reaction: id = cG_degr, name = cG_degr
	reaction_cG_degr=compartment_def*function_4_cG_degr_1(x(10), x(15), compartment_def, global_par_m19, global_par_p17, global_par_p28, global_par_p29);

% Reaction: id = cG_cZTL_assoc, name = cG_cZTL_assoc
	reaction_cG_cZTL_assoc=compartment_def*function_4_cG_cZTL_assoc(global_par_L, x(15), x(31), x(32), global_par_p12, global_par_p13);

% Reaction: id = cZTL_trsl, name = cZTL_trsl
	reaction_cZTL_trsl=compartment_def*function_4_cZTL_trsl(compartment_def, global_par_p14);

% Reaction: id = cZTL_degr, name = cZTL_degr
	reaction_cZTL_degr=compartment_def*function_4_cZTL_degr(x(32), compartment_def, global_par_m20);

% Reaction: id = cZG_degr, name = cZG_degr
	reaction_cZG_degr=compartment_def*function_4_cZG_degr(x(31), compartment_def, global_par_m21);

% Reaction: id = cG_cE3_assoc, name = cG_cE3_assoc
	reaction_cG_cE3_assoc=compartment_def*function_4_cG_cE3_assoc(x(8), x(15), compartment_def, global_par_p17);

% Reaction: id = cEG_degr, name = cEG_degr
	reaction_cEG_degr=compartment_def*function_4_cEG_degr_1(x(5), x(6), x(7), x(10), x(14), x(15), compartment_def, global_par_m10, global_par_m19, global_par_m9, global_par_p17, global_par_p18, global_par_p28, global_par_p29, global_par_parameter_26);

% Reaction: id = cEC_form, name = cEC_form
	reaction_cEC_form=compartment_def*function_4_cEC_form(x(6), x(7), x(10), x(11), x(18), compartment_def, global_par_m10, global_par_m9, global_par_p21, global_par_p25, global_par_p26);

% Reaction: id = cEC_degr, name = cEC_degr
	reaction_cEC_degr=compartment_def*function_4_cEC_degr(global_par_L, x(6), x(7), x(10), x(13), x(14), x(15), global_par_d, global_par_g7, global_par_m10, global_par_m19, global_par_m32, global_par_m9, global_par_p17, global_par_p18, global_par_p24, global_par_p28, global_par_p29, global_par_parameter_26);

% Reaction: id = reaction_1, name = cABAR_m_trscr
	reaction_reaction_1=compartment_default*function_4_cABAR_m_trscr_1(x(17), x(29), compartment_def, global_par_e, global_par_parameter_13, global_par_parameter_17, global_par_parameter_24, global_par_parameter_7);

% Reaction: id = reaction_2, name = cABAR_m_degr
	reaction_reaction_2=compartment_default*function_4_cABAR_m_degr(compartment_def, global_par_m37, x(1));

% Reaction: id = reaction_3, name = cPP2C_act
	reaction_reaction_3=compartment_default*function_4_cPP2C_act_1(compartment_def, global_par_parameter_16, global_par_parameter_18, global_par_parameter_28, global_par_parameter_29, global_par_parameter_9, x(1));

% Reaction: id = reaction_4, name = cPP2C_degr
	reaction_reaction_4=compartment_default*function_4_cPP2C_degr_1(compartment_def, global_par_parameter_20, x(2));

% Reaction: id = reaction_5, name = cSnRK2_degr
	reaction_reaction_5=compartment_default*function_4_cSnRK2_degr(compartment_def, global_par_m30, x(2), x(3));

% Reaction: id = reaction_6, name = cSnRK2_act
	reaction_reaction_6=compartment_default*function_4_cSnRK2_act_1(compartment_def, global_par_parameter_27);

% Reaction: id = reaction_7, name = cs_act
	reaction_reaction_7=compartment_default*function_4_cs_act_1(global_par_L, compartment_def, global_par_parameter_10, global_par_parameter_15, global_par_parameter_21, global_par_parameter_25, x(3), x(4));

% Reaction: id = reaction_8, name = cs_degr
	reaction_reaction_8=compartment_default*function_4_cs_degr_1(compartment_def, global_par_m29, x(4));

	xdot=zeros(32,1);
	
% Species:   id = species_1, name = cABAR_m, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2));
	
% Species:   id = species_2, name = cPP2C, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = species_3, name = cSnRK2, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*((-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6));
	
% Species:   id = species_4, name = cs, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
	
% Species:   id = cCOP1c, name = cCOP1c, affected by kineticLaw
	xdot(5) = (1/(compartment_def))*(( 1.0 * reaction_cCOP1c_trsl) + (-1.0 * reaction_cCOP1c_degr) + (-1.0 * reaction_cCOP1n_import));
	
% Species:   id = cCOP1d, name = cCOP1d, affected by kineticLaw
	xdot(6) = (1/(compartment_def))*(( 1.0 * reaction_cCOP1d_activ) + (-1.0 * reaction_cCOP1d_degr));
	
% Species:   id = cCOP1n, name = cCOP1n, affected by kineticLaw
	xdot(7) = (1/(compartment_def))*(( 1.0 * reaction_cCOP1n_import) + (-1.0 * reaction_cCOP1n_degr) + (-1.0 * reaction_cCOP1d_activ));
	
% Species:   id = cE3, name = cE3, affected by kineticLaw
	xdot(8) = (1/(compartment_def))*(( 1.0 * reaction_cE3_trsl) + (-1.0 * reaction_cE3_degr) + (-1.0 * reaction_cE3n_import) + (-1.0 * reaction_cG_cE3_assoc));
	
% Species:   id = cE3_m, name = cE3_m, affected by kineticLaw
	xdot(9) = (1/(compartment_def))*(( 1.0 * reaction_cE3_m_trscr) + (-1.0 * reaction_cE3_m_degr));
	
% Species:   id = cE3n, name = cE3n, affected by kineticLaw
	xdot(10) = (1/(compartment_def))*(( 1.0 * reaction_cE3n_import) + (-1.0 * reaction_cE3n_degr));
	
% Species:   id = cE4, name = cE4, affected by kineticLaw
	xdot(11) = (1/(compartment_def))*(( 1.0 * reaction_cE4_trsl) + (-1.0 * reaction_cE4_degr));
	
% Species:   id = cE4_m, name = cE4_m, affected by kineticLaw
	xdot(12) = (1/(compartment_def))*(( 1.0 * reaction_cE4_m_trscr) + (-1.0 * reaction_cE4_m_degr));
	
% Species:   id = cEC, name = cEC, affected by kineticLaw
	xdot(13) = (1/(compartment_def))*(( 1.0 * reaction_cEC_form) + (-1.0 * reaction_cEC_degr));
	
% Species:   id = cEG, name = cEG, affected by kineticLaw
	xdot(14) = (1/(compartment_def))*(( 1.0 * reaction_cG_cE3_assoc) + (-1.0 * reaction_cEG_degr));
	
% Species:   id = cG, name = cG, affected by kineticLaw
	xdot(15) = (1/(compartment_def))*(( 1.0 * reaction_cG_trsl) + (-1.0 * reaction_cG_degr) + (-1.0 * reaction_cG_cZTL_assoc) + (-1.0 * reaction_cG_cE3_assoc));
	
% Species:   id = cG_m, name = cG_m, affected by kineticLaw
	xdot(16) = (1/(compartment_def))*(( 1.0 * reaction_cG_m_trscr) + (-1.0 * reaction_cG_m_degr));
	
% Species:   id = cL, name = cL, affected by kineticLaw
	xdot(17) = (1/(compartment_def))*(( 1.0 * reaction_cL_trsl) + (-1.0 * reaction_cL_degr));
	
% Species:   id = cLUX, name = cLUX, affected by kineticLaw
	xdot(18) = (1/(compartment_def))*(( 1.0 * reaction_cLUX_trsl) + (-1.0 * reaction_cLUX_degr));
	
% Species:   id = cLUX_m, name = cLUX_m, affected by kineticLaw
	xdot(19) = (1/(compartment_def))*(( 1.0 * reaction_cLUX_m_trscr) + (-1.0 * reaction_cLUX_m_degr));
	
% Species:   id = cL_m, name = cL_m, affected by kineticLaw
	xdot(20) = (1/(compartment_def))*(( 1.0 * reaction_cL_m_trscr) + (-1.0 * reaction_cL_m_degr));
	
% Species:   id = cLm, name = cLm, affected by kineticLaw
	xdot(21) = (1/(compartment_def))*(( 1.0 * reaction_cL_modif) + (-1.0 * reaction_cLm_degr));
	
% Species:   id = cNI, name = cNI, affected by kineticLaw
	xdot(22) = (1/(compartment_def))*(( 1.0 * reaction_cNI_trsl) + (-1.0 * reaction_cNI_degr));
	
% Species:   id = cNI_m, name = cNI_m, affected by kineticLaw
	xdot(23) = (1/(compartment_def))*(( 1.0 * reaction_cNI_m_trscr) + (-1.0 * reaction_cNI_m_degr));
	
% Species:   id = cP, name = cP, affected by kineticLaw
	xdot(24) = (1/(compartment_def))*(( 1.0 * reaction_cP_trsl) + (-1.0 * reaction_cP_degr));
	
% Species:   id = cP7, name = cP7, affected by kineticLaw
	xdot(25) = (1/(compartment_def))*(( 1.0 * reaction_cP7_trsl) + (-1.0 * reaction_cP7_degr));
	
% Species:   id = cP7_m, name = cP7_m, affected by kineticLaw
	xdot(26) = (1/(compartment_def))*(( 1.0 * reaction_cP7_m_trscr) + (-1.0 * reaction_cP7_m_degr));
	
% Species:   id = cP9, name = cP9, affected by kineticLaw
	xdot(27) = (1/(compartment_def))*(( 1.0 * reaction_cP9_trsl) + (-1.0 * reaction_cP9_degr));
	
% Species:   id = cP9_m, name = cP9_m, affected by kineticLaw
	xdot(28) = (1/(compartment_def))*(( 1.0 * reaction_cP9_m_trscr) + (-1.0 * reaction_cP9_m_degr));
	
% Species:   id = cT, name = cT, affected by kineticLaw
	xdot(29) = (1/(compartment_def))*(( 1.0 * reaction_cT_trsl) + (-1.0 * reaction_cT_degr));
	
% Species:   id = cT_m, name = cT_m, affected by kineticLaw
	xdot(30) = (1/(compartment_def))*(( 1.0 * reaction_cT_m_trscr) + (-1.0 * reaction_cT_m_degr));
	
% Species:   id = cZG, name = cZG, affected by kineticLaw
	xdot(31) = (1/(compartment_def))*(( 1.0 * reaction_cG_cZTL_assoc) + (-1.0 * reaction_cZG_degr));
	
% Species:   id = cZTL, name = cZTL, affected by kineticLaw
	xdot(32) = (1/(compartment_def))*((-1.0 * reaction_cG_cZTL_assoc) + ( 1.0 * reaction_cZTL_trsl) + (-1.0 * reaction_cZTL_degr));
end

function z=function_4_cCOP1d_degr(L,cCOP1d,m31,m33), z=(m31*(1+m33*(1-L))*cCOP1d);end

function z=function_4_cP7_m_degr(cP7_m,def,m14), z=(m14*cP7_m/def);end

function z=function_4_cP7_m_trscr_1(cL,cLm,cP9,cT,def,e,f,g10,g11,n8,n9,parameter_6,parameter_7,F_PRR7), z=(F_PRR7*parameter_6^parameter_7/(parameter_6^parameter_7+cT^parameter_7)*(n8*(cLm+cL)^e/((cLm+cL)^e+g10^e)+n9*cP9^f/(cP9^f+g11^f))/def);end

function z=function_4_cL_trsl(L,cL_m,p1,p2), z=(cL_m*(p1*L+p2));end

function z=function_4_cABAR_m_trscr_1(cL,cT,def,e,parameter_13,parameter_17,parameter_24,parameter_7), z=(parameter_13^parameter_7/(parameter_13^parameter_7+cT^parameter_7)*parameter_24*cL^e/(cL^e+parameter_17^e)/def);end

function z=function_4_cABAR_m_degr(def,m37,species_1), z=(m37*species_1/def);end

function z=function_4_cP7_degr(L,cP7,m15,m23), z=((m15+m23*(1-L))*cP7);end

function z=function_4_cP7_trsl(cP7_m,def,p9), z=(p9*cP7_m/def);end

function z=function_4_cNI_m_degr(cNI_m,def,m16), z=(m16*cNI_m/def);end

function z=function_4_cNI_m_trscr_1(b,cLm,cP7,cT,def,e,g12,g13,n10,n11,parameter_12,parameter_7), z=(parameter_12^parameter_7/(parameter_12^parameter_7+cT^parameter_7)*(n10*cLm^e/(cLm^e+g12^e)+n11*cP7^b/(cP7^b+g13^b))/def);end

function z=function_4_cPP2C_act_1(def,parameter_16,parameter_18,parameter_28,parameter_29,parameter_9,species_1), z=(parameter_28*parameter_16^parameter_9/((0.5*(parameter_29+species_1+parameter_18-((parameter_29+species_1+parameter_18)^2-4*parameter_29*species_1)^(1/2)))^parameter_9+parameter_16^parameter_9)/def);end

function z=function_4_cNI_degr(L,cNI,m17,m24), z=((m17+m24*(1-L))*cNI);end

function z=function_4_cNI_trsl(cNI_m,def,p10), z=(p10*cNI_m/def);end

function z=function_4_cL_m_degr(L,cL_m,m1,m2), z=((m2+(m1-m2)*L)*cL_m);end

function z=function_4_cZG_degr(cZG,def,m21), z=(m21*cZG/def);end

function z=function_4_cT_m_trscr(cEC,cL,def,e,g4,g5,n2,parameter_11,parameter_14,species_3,F_TOC1), z=(F_TOC1*n2/(1+(cL/(g5*(1+(species_3/parameter_14)^parameter_11)))^e)*g4/(cEC+g4)/def);end

function z=function_4_cE4_trsl(cE4_m,def,p23), z=(p23*cE4_m/def);end

function z=function_4_cs_act_1(L,def,parameter_10,parameter_15,parameter_21,parameter_25,species_3,species_4), z=((parameter_25+parameter_21*L)*(1-species_4)*parameter_15^parameter_10/(parameter_15^parameter_10+species_3^parameter_10)/def);end

function z=function_4_cL_degr(c,cL,def,g3,m3,p3), z=((m3*cL+p3*cL^c/(cL^c+g3^c))/def);end

function z=function_4_cG_m_degr(cG_m,def,m18), z=(m18*cG_m/def);end

function z=function_4_cSnRK2_act_1(def,parameter_27), z=(parameter_27/def);end

function z=function_4_cE4_m_degr(cE4_m,def,m34), z=(m34*cE4_m/def);end

function z=function_4_cP9_degr(L,cP9,m13,m22), z=((m13+m22*(1-L))*cP9);end

function z=function_4_cPP2C_degr_1(def,parameter_20,species_2), z=(parameter_20*species_2/def);end

function z=function_4_cE4_m_trscr_1(cEC,cL,cT,def,e,g6,parameter_4,parameter_5,parameter_7,parameter_8), z=(parameter_5^parameter_7/(parameter_5^parameter_7+cT^parameter_7)*parameter_8*parameter_4/(cEC+parameter_4)*g6^e/(cL^e+g6^e)/def);end

function z=function_4_cP9_trsl(cP9_m,def,p8), z=(p8*cP9_m/def);end

function z=function_4_cT_trsl(cT_m,def,p4), z=(p4*cT_m/def);end

function z=function_4_cT_degr(L,cT,cZG,cZTL,m6,m7,m8,p5), z=((m6+m7*(1-L))*cT*(p5*cZTL+cZG)+m8*cT);end

function z=function_4_cT_m_degr(cT_m,def,m5), z=(m5*cT_m/def);end

function z=function_4_cE4_degr(cCOP1d,cCOP1n,cE3n,cE4,cLUX,def,m10,m35,m9,p21,p25,p26), z=((m35*cE4+p25*cE4*cE3n-p21*p25*cE4*cE3n/(p26*cLUX+p21+m9*cCOP1d+m10*cCOP1n))/def);end

function z=function_4_cZTL_trsl(def,p14), z=(p14/def);end

function z=function_4_cL_modif(c,cL,def,g3,p3), z=(p3*cL^c/(cL^c+g3^c)/def);end

function z=function_4_cEG_degr_1(cCOP1c,cCOP1d,cCOP1n,cE3n,cEG,cG,def,m10,m19,m9,p17,p18,p28,p29,parameter_26), z=((m10*cEG*cCOP1c+p18*cEG-parameter_26*(p18*cEG+p17*cE3n*p28*cG/(p29+m19+p17*cE3n))/(m10*cCOP1n+m9*cCOP1d+parameter_26))/def);end

function z=function_4_cEC_degr(L,cCOP1d,cCOP1n,cE3n,cEC,cEG,cG,d,g7,m10,m19,m32,m9,p17,p18,p24,p28,p29,parameter_26), z=(m10*cCOP1n*cEC+m9*cCOP1d*cEC+m32*cEC*(1+p24*L*(p28*cG/(p29+m19+p17*cE3n)+(p18*cEG+p17*cE3n*p28*cG/(p29+m19+p17*cE3n))/(m10*cCOP1n+m9*cCOP1d+parameter_26))^d/((p28*cG/(p29+m19+p17*cE3n)+(p18*cEG+p17*cE3n*p28*cG/(p29+m19+p17*cE3n))/(m10*cCOP1n+m9*cCOP1d+parameter_26))^d+g7^d)));end

function z=function_4_cG_cE3_assoc(cE3,cG,def,p17), z=(p17*cE3*cG/def);end

function z=function_4_cSnRK2_degr(def,m30,species_2,species_3), z=(m30*species_3*species_2/def);end

function z=function_4_cCOP1d_activ(L,cCOP1n,cP,n14,n6), z=(n6*L*cP*cCOP1n+n14*cCOP1n);end

function z=function_4_cG_m_trscr_1(L,cEC,cL,cP,cT,e,g14,g15,n12,parameter_1,parameter_7,q2), z=(parameter_1^parameter_7/(parameter_1^parameter_7+cT^parameter_7)*(L*q2*cP+n12*g14/(cEC+g14)*g15^e/(cL^e+g15^e)));end

function z=function_4_cP_degr(L,cP,m11), z=(m11*cP*L);end

function z=function_4_cE3_trsl(cE3_m,def,p16), z=(p16*cE3_m/def);end

function z=function_4_cE3_m_degr(cE3_m,def,m26), z=(m26*cE3_m/def);end

function z=function_4_cE3_m_trscr(cL,def,e,g16,n3), z=(n3*g16^e/(cL^e+g16^e)/def);end

function z=function_4_cs_degr_1(def,m29,species_4), z=(m29*species_4/def);end

function z=function_4_cLUX_trsl(cLUX_m,def,p27), z=(p27*cLUX_m/def);end

function z=function_4_cLm_degr(cLm,def,m4), z=(m4*cLm/def);end

function z=function_4_cG_cZTL_assoc(L,cG,cZG,cZTL,p12,p13), z=(p12*L*cZTL*cG-p13*(1-L)*cZG);end

function z=function_4_cLUX_m_degr(cLUX_m,def,m34), z=(m34*cLUX_m/def);end

function z=function_4_cP9_m_degr(cP9_m,def,m12), z=(m12*cP9_m/def);end

function z=function_4_cLUX_m_trscr(cEC,cL,cT,def,e,g2,g6,n13,parameter_3,parameter_7), z=(parameter_3^parameter_7/(parameter_3^parameter_7+cT^parameter_7)*n13*g2/(cEC+g2)*g6^e/(cL^e+g6^e)/def);end

function z=function_4_cP9_m_trscr_1(L,cEC,cL,cP,cT,e,g8,g9,n4,n7,parameter_2,parameter_7,q3), z=(parameter_2^parameter_7/(parameter_2^parameter_7+cT^parameter_7)*(L*q3*cP+(n4+n7*cL^e/(cL^e+g9^e))*g8/(cEC+g8)));end

function z=function_4_cE3n_import(cE3,cE3n,def,p19,p20), z=((p19*cE3-p20*cE3n)/def);end

function z=function_4_cE3n_degr(cCOP1d,cCOP1n,cE3n,cE4,cG,cLUX,def,m10,m19,m9,p17,p21,p25,p26,p28,p29), z=((m10*cE3n*cCOP1n+m9*cE3n*cCOP1d+p25*cE4*cE3n-p21*p25*cE4*cE3n/(p26*cLUX+p21+m9*cCOP1d+m10*cCOP1n)+p17*cE3n*p28*cG/(p29+m19+p17*cE3n))/def);end

function z=function_4_cE3_degr(cCOP1c,cE3,def,m9), z=(m9*cE3*cCOP1c/def);end

function z=function_4_cLUX_degr_1(cCOP1d,cCOP1n,cE3n,cE4,cLUX,def,m10,m36,m9,p21,p25,p26), z=((m36*cLUX+p26*cLUX*p25*cE4*cE3n/(p26*cLUX+p21+m9*cCOP1d+m10*cCOP1n))/def);end

function z=function_4_cZTL_degr(cZTL,def,m20), z=(m20*cZTL/def);end

function z=function_4_cEC_form(cCOP1d,cCOP1n,cE3n,cE4,cLUX,def,m10,m9,p21,p25,p26), z=(p26*cLUX*p25*cE4*cE3n/(p26*cLUX+p21+m9*cCOP1d+m10*cCOP1n)/def);end

function z=function_4_cG_degr_1(cE3n,cG,def,m19,p17,p28,p29), z=((m19*cG+p28*cG-p29*p28*cG/(p29+m19+p17*cE3n))/def);end

function z=function_4_cG_trsl(cG_m,def,p11), z=(p11*cG_m/def);end

function z=function_4_cL_m_trscr(L,a,cNI,cP,cP7,cP9,cT,g1,n1,q1,F_LHY), z=(F_LHY*(L*q1*cP+n1*g1^a/((cP9+cP7+cNI+cT)^a+g1^a)));end

function z=function_4_cCOP1n_import(cCOP1c,def,p6), z=(p6*cCOP1c/def);end

function z=function_4_cCOP1c_degr(L,cCOP1c,m27,p15), z=(m27*cCOP1c*(1+p15*L));end

function z=function_4_cCOP1c_trsl(def,n5), z=(n5/def);end

function z=function_4_cP_trsl(L,cP,p7), z=(p7*(1-L)*(1-cP));end

function z=function_4_cCOP1n_degr(L,cCOP1n,m27,p15), z=(m27*cCOP1n*(1+p15*L));end

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


