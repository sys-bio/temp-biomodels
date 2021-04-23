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
% Model name = Flis2015 - Plant clock gene circuit (P2011.2.1 PLM_71 ver 2)
%
% is http://identifiers.org/biomodels.db/MODEL1510190001
% is http://identifiers.org/biomodels.db/BIOMD0000000598
% isDescribedBy http://identifiers.org/pubmed/26468131
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000412
%


function main()
%Initial conditions vector
	x0=zeros(28,1);
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

% Compartment: id = def, name = def, constant
	compartment_def=1.0;
% Parameter:   id =  n1, name = n1
	global_par_n1=1.99252254640817;
% Parameter:   id =  n2, name = n2
	global_par_n2=0.68148116717556;
% Parameter:   id =  n3, name = n3
	global_par_n3=0.16472770747976;
% Parameter:   id =  n4, name = n4
	global_par_n4=0.04557059014918;
% Parameter:   id =  n5, name = n5
	global_par_n5=0.23;
% Parameter:   id =  n6, name = n6
	global_par_n6=20.0;
% Parameter:   id =  n7, name = n7
	global_par_n7=0.14205317472212;
% Parameter:   id =  n8, name = n8
	global_par_n8=0.46468005656595;
% Parameter:   id =  n9, name = n9
	global_par_n9=0.12054287502747;
% Parameter:   id =  n10, name = n10
	global_par_n10=0.53104365301892;
% Parameter:   id =  n11, name = n11
	global_par_n11=1.04887048285294;
% Parameter:   id =  n12, name = n12
	global_par_n12=8.43921672276903;
% Parameter:   id =  n13, name = n13
	global_par_n13=1.18471991918001;
% Parameter:   id =  n14, name = n14
	global_par_n14=0.1;
% Parameter:   id =  g1, name = g1
	global_par_g1=0.08672864809113;
% Parameter:   id =  g2, name = g2
	global_par_g2=0.01109625947768;
% Parameter:   id =  g3, name = g3
	global_par_g3=0.6;
% Parameter:   id =  g4, name = g4
	global_par_g4=0.00503234997631;
% Parameter:   id =  g5, name = g5
	global_par_g5=0.20247194961847;
% Parameter:   id =  g6, name = g6
	global_par_g6=0.28604744186645;
% Parameter:   id =  g7, name = g7
	global_par_g7=0.45632674147836;
% Parameter:   id =  g8, name = g8
	global_par_g8=0.02785533720284;
% Parameter:   id =  g9, name = g9
	global_par_g9=0.32642600662781;
% Parameter:   id =  g10, name = g10
	global_par_g10=0.59800649651902;
% Parameter:   id =  g11, name = g11
	global_par_g11=0.97065591755812;
% Parameter:   id =  g12, name = g12
	global_par_g12=0.2;
% Parameter:   id =  g13, name = g13
	global_par_g13=1.0;
% Parameter:   id =  g14, name = g14
	global_par_g14=0.00518249003042;
% Parameter:   id =  g15, name = g15
	global_par_g15=0.49185301792787;
% Parameter:   id =  g16, name = g16
	global_par_g16=0.21835306363087;
% Parameter:   id =  m1, name = m1
	global_par_m1=0.04813458231306;
% Parameter:   id =  m2, name = m2
	global_par_m2=0.45186541768694;
% Parameter:   id =  m3, name = m3
	global_par_m3=0.17565464903571;
% Parameter:   id =  m4, name = m4
	global_par_m4=0.2;
% Parameter:   id =  m5, name = m5
	global_par_m5=0.3;
% Parameter:   id =  m6, name = m6
	global_par_m6=0.1718885396183;
% Parameter:   id =  m7, name = m7
	global_par_m7=0.49132441826399;
% Parameter:   id =  m8, name = m8
	global_par_m8=0.33013479704789;
% Parameter:   id =  m9, name = m9
	global_par_m9=1.42873823342205;
% Parameter:   id =  m10, name = m10
	global_par_m10=1.0;
% Parameter:   id =  m11, name = m11
	global_par_m11=1.0;
% Parameter:   id =  m12, name = m12
	global_par_m12=1.0;
% Parameter:   id =  m13, name = m13
	global_par_m13=0.32;
% Parameter:   id =  m14, name = m14
	global_par_m14=0.58317183194053;
% Parameter:   id =  m15, name = m15
	global_par_m15=0.7;
% Parameter:   id =  m16, name = m16
	global_par_m16=0.54342221617699;
% Parameter:   id =  m17, name = m17
	global_par_m17=0.5;
% Parameter:   id =  m18, name = m18
	global_par_m18=2.38992856366188;
% Parameter:   id =  m19, name = m19
	global_par_m19=0.47083189258762;
% Parameter:   id =  m20, name = m20
	global_par_m20=0.6;
% Parameter:   id =  m21, name = m21
	global_par_m21=0.08;
% Parameter:   id =  m22, name = m22
	global_par_m22=0.09605427710298;
% Parameter:   id =  m23, name = m23
	global_par_m23=0.54491969619247;
% Parameter:   id =  m24, name = m24
	global_par_m24=0.11119364985807;
% Parameter:   id =  m25, name = m25
	global_par_m25=1.8;
% Parameter:   id =  m26, name = m26
	global_par_m26=0.5;
% Parameter:   id =  m27, name = m27
	global_par_m27=0.1;
% Parameter:   id =  m28, name = m28
	global_par_m28=20.0;
% Parameter:   id =  m29, name = m29
	global_par_m29=6.5829611214384;
% Parameter:   id =  m30, name = m30
	global_par_m30=3.12936002914913;
% Parameter:   id =  m31, name = m31
	global_par_m31=0.3;
% Parameter:   id =  m32, name = m32
	global_par_m32=0.2;
% Parameter:   id =  m33, name = m33
	global_par_m33=13.0;
% Parameter:   id =  m34, name = m34
	global_par_m34=0.74619776125315;
% Parameter:   id =  m35, name = m35
	global_par_m35=0.18382557500265;
% Parameter:   id =  m36, name = m36
	global_par_m36=0.09362464249722;
% Parameter:   id =  m37, name = m37
	global_par_m37=0.43830433763055;
% Parameter:   id =  m38, name = m38
	global_par_m38=0.5;
% Parameter:   id =  m39, name = m39
	global_par_m39=0.36610515263739;
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
	global_par_p1=0.07150399789214;
% Parameter:   id =  p2, name = p2
	global_par_p2=0.20262717003844;
% Parameter:   id =  p3, name = p3
	global_par_p3=0.0738150022314;
% Parameter:   id =  p4, name = p4
	global_par_p4=0.51783935402389;
% Parameter:   id =  p5, name = p5
	global_par_p5=3.69349002161811;
% Parameter:   id =  p6, name = p6
	global_par_p6=0.6;
% Parameter:   id =  p7, name = p7
	global_par_p7=0.3;
% Parameter:   id =  p8, name = p8
	global_par_p8=0.4098375626616;
% Parameter:   id =  p9, name = p9
	global_par_p9=0.85704792589418;
% Parameter:   id =  p10, name = p10
	global_par_p10=0.88102987349092;
% Parameter:   id =  p11, name = p11
	global_par_p11=0.49350029121361;
% Parameter:   id =  p12, name = p12
	global_par_p12=2.43270583452351;
% Parameter:   id =  p13, name = p13
	global_par_p13=0.16471437958494;
% Parameter:   id =  p14, name = p14
	global_par_p14=0.10935964554573;
% Parameter:   id =  p15, name = p15
	global_par_p15=3.0;
% Parameter:   id =  p16, name = p16
	global_par_p16=0.9855875650128;
% Parameter:   id =  p17, name = p17
	global_par_p17=4.32998167851186;
% Parameter:   id =  p18, name = p18
	global_par_p18=3.48112987474967;
% Parameter:   id =  p19, name = p19
	global_par_p19=1.74107843497564;
% Parameter:   id =  p20, name = p20
	global_par_p20=0.1940717319972;
% Parameter:   id =  p21, name = p21
	global_par_p21=1.0;
% Parameter:   id =  p22, name = p22
	global_par_p22=0.5;
% Parameter:   id =  p23, name = p23
	global_par_p23=0.74;
% Parameter:   id =  p24, name = p24
	global_par_p24=14.5984045217467;
% Parameter:   id =  p25, name = p25
	global_par_p25=8.0;
% Parameter:   id =  p26, name = p26
	global_par_p26=0.3;
% Parameter:   id =  p27, name = p27
	global_par_p27=1.04800925749369;
% Parameter:   id =  p28, name = p28
	global_par_p28=2.0;
% Parameter:   id =  p29, name = p29
	global_par_p29=0.1;
% Parameter:   id =  p30, name = p30
	global_par_p30=0.60042439856768;
% Parameter:   id =  p31, name = p31
	global_par_p31=0.1;
% Parameter:   id =  q1, name = q1
	global_par_q1=0.6;
% Parameter:   id =  q2, name = q2
	global_par_q2=0.57336977424479;
% Parameter:   id =  q3, name = q3
	global_par_q3=2.91645248092752;
% Parameter:   id =  L, name = L
% Parameter:   id =  D, name = D
% Parameter:   id =  E34, name = E34
	global_par_E34=1.0;
% Parameter:   id =  Gn, name = Gn
	global_par_Gn=1.0;
% Parameter:   id =  EGn, name = EGn
	global_par_EGn=1.0;
% Parameter:   id =  step1, name = Lightstep
% Parameter:   id =  offsetStep1, name = offsetStep1
	global_par_offsetStep1=0.0;
% Parameter:   id =  amplitudeStep1, name = amplitudeStep1
	global_par_amplitudeStep1=1.0;
% Parameter:   id =  phaseStep1, name = phaseStep1
	global_par_phaseStep1=0.0;
% Parameter:   id =  pulseDurationStep1, name = pulseDurationStep1
	global_par_pulseDurationStep1=12.0;
% Parameter:   id =  cyclePeriodStep1, name = cyclePeriodStep1
	global_par_cyclePeriodStep1=24.0;
% Parameter:   id =  rampDurationStep1, name = rampDurationStep1
	global_par_rampDurationStep1=0.05;
% assignmentRule: variable = step1
	global_par_step1=stepFunction(time, global_par_offsetStep1, global_par_amplitudeStep1, global_par_phaseStep1, global_par_pulseDurationStep1, global_par_cyclePeriodStep1, global_par_rampDurationStep1);
% assignmentRule: variable = L
	global_par_L=global_par_step1;
% assignmentRule: variable = D
	global_par_D=1-global_par_L;

% Reaction: id = cL_m_trscr, name = cL_m_trscr
	reaction_cL_m_trscr=compartment_def*function_4_cL_m_trscr(global_par_L, global_par_a, x(18), x(20), x(21), x(23), x(25), compartment_def, global_par_g1, global_par_n1, global_par_q1);

% Reaction: id = cL_m_degr, name = cL_m_degr
	reaction_cL_m_degr=compartment_def*function_4_cL_m_degr_L(global_par_m1, global_par_L, global_par_m2, x(16), compartment_def);

% Reaction: id = cL_trsl, name = cL_trsl
	reaction_cL_trsl=compartment_def*function_4_cL_trsl(global_par_L, x(16), compartment_def, global_par_p1, global_par_p2);

% Reaction: id = cL_degr, name = cL_degr
	reaction_cL_degr=compartment_def*function_4_cL_degr_1(global_par_c, x(13), compartment_def, global_par_g3, global_par_m3, global_par_p3);

% Reaction: id = cL_modif, name = cL_modif
	reaction_cL_modif=compartment_def*function_4_cL_modif_1(global_par_c, x(13), compartment_def, global_par_g3, global_par_p3);

% Reaction: id = cLm_degr, name = cLm_degr
	reaction_cLm_degr=compartment_def*function_4_cLm_degr_1(x(17), compartment_def, global_par_m4);

% Reaction: id = cP_trsl, name = cP_trsl
	reaction_cP_trsl=compartment_def*function_4_cP_trsl(global_par_D, x(20), compartment_def, global_par_p7);

% Reaction: id = cP_degr, name = cP_degr
	reaction_cP_degr=compartment_def*function_4_cP_degr(global_par_L, x(20), compartment_def, global_par_m11);

% Reaction: id = cP9_m_trscr, name = cP9_m_trscr
	reaction_cP9_m_trscr=compartment_def*function_4_cP9_m_trscr_1(global_par_L, x(9), x(13), x(20), compartment_def, global_par_e, global_par_g8, global_par_g9, global_par_n4, global_par_n7, global_par_q3);

% Reaction: id = cP9_m_degr, name = cP9_m_degr
	reaction_cP9_m_degr=compartment_def*function_4_cP9_m_degr_1(x(24), compartment_def, global_par_m12);

% Reaction: id = cP9_trsl, name = cP9_trsl
	reaction_cP9_trsl=compartment_def*function_4_cP9_trsl_1(x(24), compartment_def, global_par_p8);

% Reaction: id = cP9_degr, name = cP9_degr
	reaction_cP9_degr=compartment_def*function_4_cP9_degr(global_par_D, x(23), compartment_def, global_par_m13, global_par_m22);

% Reaction: id = cP7_m_trscr, name = cP7_m_trscr
	reaction_cP7_m_trscr=compartment_def*function_4_cP7_m_trscr_1(x(13), x(17), x(23), compartment_def, global_par_e, global_par_f, global_par_g10, global_par_g11, global_par_n8, global_par_n9);

% Reaction: id = cP7_m_degr, name = cP7_m_degr
	reaction_cP7_m_degr=compartment_def*function_4_cP7_m_degr_1(x(22), compartment_def, global_par_m14);

% Reaction: id = cP7_trsl, name = cP7_trsl
	reaction_cP7_trsl=compartment_def*function_4_cP7_trsl_1(x(22), compartment_def, global_par_p9);

% Reaction: id = cP7_degr, name = cP7_degr
	reaction_cP7_degr=compartment_def*function_4_cP7_degr(global_par_D, x(21), compartment_def, global_par_m15, global_par_m23);

% Reaction: id = cNI_m_trscr, name = cNI_m_trscr
	reaction_cNI_m_trscr=compartment_def*function_4_cNI_m_trscr_1(global_par_b, x(17), x(21), compartment_def, global_par_e, global_par_g12, global_par_g13, global_par_n10, global_par_n11);

% Reaction: id = cNI_m_degr, name = cNI_m_degr
	reaction_cNI_m_degr=compartment_def*function_4_cNI_m_degr_1(x(19), compartment_def, global_par_m16);

% Reaction: id = cNI_trsl, name = cNI_trsl
	reaction_cNI_trsl=compartment_def*function_4_cNI_trsl_1(x(19), compartment_def, global_par_p10);

% Reaction: id = cNI_degr, name = cNI_degr
	reaction_cNI_degr=compartment_def*function_4_cNI_degr(global_par_D, x(18), compartment_def, global_par_m17, global_par_m24);

% Reaction: id = cT_m_trscr, name = cT_m_trscr
	reaction_cT_m_trscr=compartment_def*function_4_cT_m_trscr(x(9), x(13), compartment_def, global_par_e, global_par_g4, global_par_g5, global_par_n2);

% Reaction: id = cT_m_degr, name = cT_m_degr
	reaction_cT_m_degr=compartment_def*function_4_cT_m_degr_1(x(26), compartment_def, global_par_m5);

% Reaction: id = cT_trsl, name = cT_trsl
	reaction_cT_trsl=compartment_def*function_4_cT_trsl_1(x(26), compartment_def, global_par_p4);

% Reaction: id = cT_degr, name = cT_degr
	reaction_cT_degr=compartment_def*function_4_cT_degr(global_par_D, x(25), x(27), x(28), compartment_def, global_par_m6, global_par_m7, global_par_m8, global_par_p5);

% Reaction: id = cE4_m_trscr, name = cE4_m_trscr
	reaction_cE4_m_trscr=compartment_def*function_4_cLUX_m_trscr(x(9), x(13), compartment_def, global_par_e, global_par_g2, global_par_g6, global_par_n13);

% Reaction: id = cE4_m_degr, name = cE4_m_degr
	reaction_cE4_m_degr=compartment_def*function_4_cE4_m_degr_1(x(8), compartment_def, global_par_m34);

% Reaction: id = cE4_trsl, name = cE4_trsl
	reaction_cE4_trsl=compartment_def*function_4_cE4_trsl_1(x(8), compartment_def, global_par_p23);

% Reaction: id = cE4_degr, name = cE4_degr
	reaction_cE4_degr=compartment_def*function_4_cE4_degr_1(x(2), x(3), x(6), x(7), x(14), compartment_def, global_par_m35, global_par_m36, global_par_m37, global_par_p21, global_par_p25, global_par_p26);

% Reaction: id = cE3_m_trscr, name = cE3_m_trscr
	reaction_cE3_m_trscr=compartment_def*function_4_cE3_m_trscr_1(x(13), compartment_def, global_par_e, global_par_g16, global_par_n3);

% Reaction: id = cE3_m_degr, name = cE3_m_degr
	reaction_cE3_m_degr=compartment_def*function_4_cE3_m_degr_1(x(5), compartment_def, global_par_m26);

% Reaction: id = cE3_trsl, name = cE3_trsl
	reaction_cE3_trsl=compartment_def*function_4_cE3_trsl_1(x(5), compartment_def, global_par_p16);

% Reaction: id = cE3_degr, name = cE3_degr
	reaction_cE3_degr=compartment_def*function_4_cE3_degr_1(x(1), x(4), compartment_def, global_par_m9);

% Reaction: id = cE3n_import, name = cE3n_import
	reaction_cE3n_import=compartment_def*function_4_cE3n_import_1(x(4), x(6), compartment_def, global_par_p19, global_par_p20);

% Reaction: id = cE3n_degr, name = cE3n_degr
	reaction_cE3n_degr=compartment_def*function_4_cE3n_degr_1(x(2), x(3), x(6), x(7), x(11), x(14), compartment_def, global_par_m19, global_par_m29, global_par_m30, global_par_m36, global_par_m37, global_par_p17, global_par_p21, global_par_p25, global_par_p26, global_par_p28, global_par_p29);

% Reaction: id = cLUX_m_trscr, name = cLUX_m_trscr
	reaction_cLUX_m_trscr=compartment_def*function_4_cLUX_m_trscr(x(9), x(13), compartment_def, global_par_e, global_par_g2, global_par_g6, global_par_n13);

% Reaction: id = cLUX_m_degr, name = cLUX_m_degr
	reaction_cLUX_m_degr=compartment_def*function_4_cLUX_m_degr_1(x(15), compartment_def, global_par_m34);

% Reaction: id = cLUX_trsl, name = cLUX_trsl
	reaction_cLUX_trsl=compartment_def*function_4_cLUX_trsl_1(x(15), compartment_def, global_par_p27);

% Reaction: id = cLUX_degr, name = cLUX_degr
	reaction_cLUX_degr=compartment_def*function_4_cLUX_degr_1(x(2), x(3), x(6), x(7), x(14), compartment_def, global_par_m36, global_par_m37, global_par_m39, global_par_p21, global_par_p25, global_par_p26);

% Reaction: id = cCOP1c_trsl, name = cCOP1c_trsl
	reaction_cCOP1c_trsl=compartment_def*function_4_cCOP1c_trsl_1(compartment_def, global_par_n5);

% Reaction: id = cCOP1c_degr, name = cCOP1c_degr
	reaction_cCOP1c_degr=compartment_def*function_4_cCOP1c_degr(global_par_L, x(1), compartment_def, global_par_m27, global_par_p15);

% Reaction: id = cCOP1n_import, name = cCOP1n_import
	reaction_cCOP1n_import=compartment_def*function_4_cCOP1n_import_1(x(1), compartment_def, global_par_p6);

% Reaction: id = cCOP1n_degr, name = cCOP1n_degr
	reaction_cCOP1n_degr=compartment_def*function_4_cCOP1n_degr(global_par_L, x(3), compartment_def, global_par_m27, global_par_p15);

% Reaction: id = cCOP1d_activ, name = cCOP1d_activ
	reaction_cCOP1d_activ=compartment_def*function_4_cCOP1d_activ(global_par_L, x(3), x(20), compartment_def, global_par_n14, global_par_n6);

% Reaction: id = cCOP1d_degr, name = cCOP1d_degr
	reaction_cCOP1d_degr=compartment_def*function_4_cCOP1d_degr(global_par_D, x(2), compartment_def, global_par_m31, global_par_m33);

% Reaction: id = cG_m_trscr, name = cG_m_trscr
	reaction_cG_m_trscr=compartment_def*function_4_cG_m_trscr_1(global_par_L, x(9), x(13), x(20), compartment_def, global_par_e, global_par_g14, global_par_g15, global_par_n12, global_par_q2);

% Reaction: id = cG_m_degr, name = cG_m_degr
	reaction_cG_m_degr=compartment_def*function_4_cG_m_degr_1(x(12), compartment_def, global_par_m18);

% Reaction: id = cG_trsl, name = cG_trsl
	reaction_cG_trsl=compartment_def*function_4_cG_trsl_1(x(12), compartment_def, global_par_p11);

% Reaction: id = cG_degr, name = cG_degr
	reaction_cG_degr=compartment_def*function_4_cG_degr_1(x(6), x(11), compartment_def, global_par_m19, global_par_p17, global_par_p28, global_par_p29);

% Reaction: id = cG_cZTL_assoc, name = cG_cZTL_assoc
	reaction_cG_cZTL_assoc=compartment_def*function_4_cG_cZTL_assoc(global_par_D, global_par_L, x(11), x(27), x(28), compartment_def, global_par_p12, global_par_p13);

% Reaction: id = cZTL_trsl, name = cZTL_trsl
	reaction_cZTL_trsl=compartment_def*function_4_cZTL_trsl_1(compartment_def, global_par_p14);

% Reaction: id = cZTL_degr, name = cZTL_degr
	reaction_cZTL_degr=compartment_def*function_4_cZTL_degr_1(x(28), compartment_def, global_par_m20);

% Reaction: id = cZG_degr, name = cZG_degr
	reaction_cZG_degr=compartment_def*function_4_cZG_degr_1(x(27), compartment_def, global_par_m21);

% Reaction: id = cG_cE3_assoc, name = cG_cE3_assoc
	reaction_cG_cE3_assoc=compartment_def*function_4_cG_cE3_assoc_1(x(4), x(11), compartment_def, global_par_p17);

% Reaction: id = cEG_degr, name = cEG_degr
	reaction_cEG_degr=compartment_def*function_4_cEG_degr_1(x(1), x(2), x(3), x(6), x(10), x(11), compartment_def, global_par_m10, global_par_m19, global_par_m9, global_par_p17, global_par_p18, global_par_p28, global_par_p29, global_par_p31);

% Reaction: id = cEC_form, name = cEC_form
	reaction_cEC_form=compartment_def*function_4_cEC_form_1(x(2), x(3), x(6), x(7), x(14), compartment_def, global_par_m36, global_par_m37, global_par_p21, global_par_p25, global_par_p26);

% Reaction: id = cEC_degr, name = cEC_degr
	reaction_cEC_degr=compartment_def*function_4_cEC_degr(global_par_L, x(2), x(3), x(6), x(9), x(10), x(11), global_par_d, compartment_def, global_par_g7, global_par_m10, global_par_m19, global_par_m32, global_par_m36, global_par_m37, global_par_m9, global_par_p17, global_par_p18, global_par_p24, global_par_p28, global_par_p29, global_par_p31);

%Event: id=event_1
	event_event_1=time > 314;

	if(event_event_1) 
		global_par_offsetStep1=1;
		global_par_amplitudeStep1=0;
	end

	xdot=zeros(28,1);
	
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
end

function z=function_4_cLUX_m_trscr(cEC,cL,def,e,g2,g6,n13), z=(n13*g2/(cEC+g2)*g6^e/(cL^e+g6^e)/def);end

function z=function_4_cL_degr_1(c,cL,def,g3,m3,p3), z=((m3*cL+p3*cL^c/(cL^c+g3^c))/def);end

function z=function_4_cL_modif_1(c,cL,def,g3,p3), z=(p3*cL^c/(cL^c+g3^c)/def);end

function z=function_4_cLm_degr_1(cLm,def,m4), z=(m4*cLm/def);end

function z=function_4_cP9_m_degr_1(cP9_m,def,m12), z=(m12*cP9_m/def);end

function z=function_4_cP9_trsl_1(cP9_m,def,p8), z=(p8*cP9_m/def);end

function z=function_4_cP7_m_trscr_1(cL,cLm,cP9,def,e,f,g10,g11,n8,n9), z=((n8*(cLm+cL)^e/((cLm+cL)^e+g10^e)+n9*cP9^f/(cP9^f+g11^f))/def);end

function z=function_4_cP7_m_degr_1(cP7_m,def,m14), z=(m14*cP7_m/def);end

function z=function_4_cP7_trsl_1(cP7_m,def,p9), z=(p9*cP7_m/def);end

function z=function_4_cNI_m_trscr_1(b,cLm,cP7,def,e,g12,g13,n10,n11), z=((n10*cLm^e/(cLm^e+g12^e)+n11*cP7^b/(cP7^b+g13^b))/def);end

function z=function_4_cNI_m_degr_1(cNI_m,def,m16), z=(m16*cNI_m/def);end

function z=function_4_cNI_trsl_1(cNI_m,def,p10), z=(p10*cNI_m/def);end

function z=function_4_cT_m_trscr(cEC,cL,def,e,g4,g5,n2), z=(n2*g4/(cEC+g4)*g5^e/(cL^e+g5^e)/def);end

function z=function_4_cT_m_degr_1(cT_m,def,m5), z=(m5*cT_m/def);end

function z=function_4_cT_trsl_1(cT_m,def,p4), z=(p4*cT_m/def);end

function z=function_4_cE4_m_degr_1(cE4_m,def,m34), z=(m34*cE4_m/def);end

function z=function_4_cE4_trsl_1(cE4_m,def,p23), z=(p23*cE4_m/def);end

function z=function_4_cE4_degr_1(cCOP1d,cCOP1n,cE3n,cE4,cLUX,def,m35,m36,m37,p21,p25,p26), z=((m35*cE4+p25*cE4*cE3n-p21*p25*cE4*cE3n/(p26*cLUX+p21+m37*cCOP1d+m36*cCOP1n))/def);end

function z=function_4_cE3_m_trscr_1(cL,def,e,g16,n3), z=(n3*g16^e/(cL^e+g16^e)/def);end

function z=function_4_cE3_m_degr_1(cE3_m,def,m26), z=(m26*cE3_m/def);end

function z=function_4_cE3_trsl_1(cE3_m,def,p16), z=(p16*cE3_m/def);end

function z=function_4_cE3_degr_1(cCOP1c,cE3,def,m9), z=(m9*cE3*cCOP1c/def);end

function z=function_4_cE3n_import_1(cE3,cE3n,def,p19,p20), z=((p19*cE3-p20*cE3n)/def);end

function z=function_4_cE3n_degr_1(cCOP1d,cCOP1n,cE3n,cE4,cG,cLUX,def,m19,m29,m30,m36,m37,p17,p21,p25,p26,p28,p29), z=((m29*cE3n*cCOP1n+m30*cE3n*cCOP1d+p25*cE4*cE3n-p21*p25*cE4*cE3n/(p26*cLUX+p21+m37*cCOP1d+m36*cCOP1n)+p17*cE3n*p28*cG/(p29+m19+p17*cE3n))/def);end

function z=function_4_cLUX_m_degr_1(cLUX_m,def,m34), z=(m34*cLUX_m/def);end

function z=function_4_cLUX_trsl_1(cLUX_m,def,p27), z=(p27*cLUX_m/def);end

function z=function_4_cLUX_degr_1(cCOP1d,cCOP1n,cE3n,cE4,cLUX,def,m36,m37,m39,p21,p25,p26), z=((m39*cLUX+p26*cLUX*p25*cE4*cE3n/(p26*cLUX+p21+m37*cCOP1d+m36*cCOP1n))/def);end

function z=function_4_cCOP1c_trsl_1(def,n5), z=(n5/def);end

function z=function_4_cCOP1n_import_1(cCOP1c,def,p6), z=(p6*cCOP1c/def);end

function z=function_4_cG_m_degr_1(cG_m,def,m18), z=(m18*cG_m/def);end

function z=function_4_cL_m_degr_L(m1,L,m2,cL_m,def), z=((m1*L+m2)*cL_m/def);end

function z=function_4_cG_trsl_1(cG_m,def,p11), z=(p11*cG_m/def);end

function z=function_4_cG_degr_1(cE3n,cG,def,m19,p17,p28,p29), z=((m19*cG+p28*cG-p29*p28*cG/(p29+m19+p17*cE3n))/def);end

function z=function_4_cZTL_trsl_1(def,p14), z=(p14/def);end

function z=function_4_cZTL_degr_1(cZTL,def,m20), z=(m20*cZTL/def);end

function z=function_4_cZG_degr_1(cZG,def,m21), z=(m21*cZG/def);end

function z=function_4_cG_cE3_assoc_1(cE3,cG,def,p17), z=(p17*cE3*cG/def);end

function z=function_4_cEG_degr_1(cCOP1c,cCOP1d,cCOP1n,cE3n,cEG,cG,def,m10,m19,m9,p17,p18,p28,p29,p31), z=((m9*cEG*cCOP1c+p18*cEG-p31*(p18*cEG+p17*cE3n*p28*cG/(p29+m19+p17*cE3n))/(m9*cCOP1n+m10*cCOP1d+p31))/def);end

function z=function_4_cEC_form_1(cCOP1d,cCOP1n,cE3n,cE4,cLUX,def,m36,m37,p21,p25,p26), z=(p26*cLUX*p25*cE4*cE3n/(p26*cLUX+p21+m37*cCOP1d+m36*cCOP1n)/def);end

function z=function_4_cL_m_trscr(L,a,cNI,cP,cP7,cP9,cT,def,g1,n1,q1), z=((L*q1*cP+n1*g1^a/((cP9+cP7+cNI+cT)^a+g1^a))/def);end

function z=function_4_cL_trsl(L,cL_m,def,p1,p2), z=(cL_m*(p1*L+p2)/def);end

function z=function_4_cP_trsl(D,cP,def,p7), z=(p7*D*(1-cP)/def);end

function z=function_4_cP_degr(L,cP,def,m11), z=(m11*cP*L/def);end

function z=function_4_cP9_m_trscr_1(L,cEC,cL,cP,def,e,g8,g9,n4,n7,q3), z=((L*q3*cP+(n4+n7*cL^e/(cL^e+g9^e))*g8/(cEC+g8))/def);end

function z=function_4_cP9_degr(D,cP9,def,m13,m22), z=((m13+m22*D)*cP9/def);end

function z=function_4_cP7_degr(D,cP7,def,m15,m23), z=((m15+m23*D)*cP7/def);end

function z=function_4_cNI_degr(D,cNI,def,m17,m24), z=((m17+m24*D)*cNI/def);end

function z=function_4_cT_degr(D,cT,cZG,cZTL,def,m6,m7,m8,p5), z=(((m6+m7*D)*cT*(p5*cZTL+cZG)+m8*cT)/def);end

function z=function_4_cCOP1c_degr(L,cCOP1c,def,m27,p15), z=(m27*cCOP1c*(1+p15*L)/def);end

function z=function_4_cCOP1n_degr(L,cCOP1n,def,m27,p15), z=(m27*cCOP1n*(1+p15*L)/def);end

function z=function_4_cCOP1d_activ(L,cCOP1n,cP,def,n14,n6), z=((n6*L*cP*cCOP1n+n14*cCOP1n)/def);end

function z=function_4_cCOP1d_degr(D,cCOP1d,def,m31,m33), z=(m31*(1+m33*D)*cCOP1d/def);end

function z=function_4_cG_m_trscr_1(L,cEC,cL,cP,def,e,g14,g15,n12,q2), z=((L*q2*cP+n12*g14/(cEC+g14)*g15^e/(cL^e+g15^e))/def);end

function z=function_4_cG_cZTL_assoc(D,L,cG,cZG,cZTL,def,p12,p13), z=((p12*L*cZTL*cG-p13*D*cZG)/def);end

function z=function_4_cEC_degr(L,cCOP1d,cCOP1n,cE3n,cEC,cEG,cG,d,def,g7,m10,m19,m32,m36,m37,m9,p17,p18,p24,p28,p29,p31), z=((m36*cCOP1n*cEC+m37*cCOP1d*cEC+m32*cEC*(1+p24*L*(p28*cG/(p29+m19+p17*cE3n)+(p18*cEG+p17*cE3n*p28*cG/(p29+m19+p17*cE3n))/(m9*cCOP1n+m10*cCOP1d+p31))^d/((p28*cG/(p29+m19+p17*cE3n)+(p18*cEG+p17*cE3n*p28*cG/(p29+m19+p17*cE3n))/(m9*cCOP1n+m10*cCOP1d+p31))^d+g7^d)))/def);end

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


