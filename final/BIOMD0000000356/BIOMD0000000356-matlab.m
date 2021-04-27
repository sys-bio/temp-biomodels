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
% Model name = Nyman2011_M3Hierarachical_InsulinGlucosedynamics
%
% is http://identifiers.org/biomodels.db/MODEL1108190000
% is http://identifiers.org/biomodels.db/BIOMD0000000356
% isDescribedBy http://identifiers.org/pubmed/21572040
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000137
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000343
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000379
% isDerivedFrom http://identifiers.org/pubmed/19225456
%


function main()
%Initial conditions vector
	x0=zeros(44,1);
	x0(33) = 178.0;
	x0(34) = 135.0;
	x0(35) = 4.5;
	x0(36) = 1.25;
	x0(37) = 78000.0;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 25.0;
	x0(41) = 25.0;
	x0(42) = 0.0;
	x0(43) = 3.6;
	x0(44) = 0.0;
	x0(1) = 9.96820379306998;
	x0(2) = 0.0221366043399864;
	x0(3) = 0.00934921094738169;
	x0(4) = 1.22886711962222E-5;
	x0(5) = 1.0376421415741E-5;
	x0(6) = 2.18683301945588E-6;
	x0(7) = 1.36475817837692E-6;
	x0(8) = 1.51513915390766E-9;
	x0(9) = 6.39351849488596E-10;
	x0(10) = 5.59231079319369E-20;
	x0(11) = 1.78725515332219E-14;
	x0(12) = 3.31711803810961E-5;
	x0(13) = 2.12533941418487E-4;
	x0(14) = 7.25519178924707E-6;
	x0(15) = 1.13228497567934E-6;
	x0(16) = 3.87230309356247E-5;
	x0(17) = 9.99982253600007;
	x0(18) = 1.77463999892648E-4;
	x0(19) = 9.92463241634744;
	x0(20) = 0.0753675836525682;
	x0(21) = 9.97578356966623;
	x0(22) = 0.0242164303337614;
	x0(23) = 8.65876984730663;
	x0(24) = 1.34123015269338;
	x0(25) = 3.60283594102724E-5;
	x0(26) = 9.99996397164059;
	x0(27) = 9.90193143617302;
	x0(28) = 0.0980685638269942;
	x0(29) = 0.0201915011292933;
	x0(30) = 9.97980849887072;
	x0(31) = 9.99316830771855;
	x0(32) = 0.00683169228144988;


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
% Parameter:   id =  a1, name = a1
	global_par_a1=4.4825146271204E8;
% Parameter:   id =  a2, name = a2
	global_par_a2=4321891.90327031;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.7722612342;
% Parameter:   id =  d2, name = d2
	global_par_d2=0.0122057759;
% Parameter:   id =  Kcr, name = Kcr
	global_par_Kcr=0.0013640432;
% Parameter:   id =  Kex, name = Kex
	global_par_Kex=37.0818924842;
% Parameter:   id =  Kend, name = Kend
	global_par_Kend=30.6825110077;
% Parameter:   id =  Kdp, name = Kdp
	global_par_Kdp=9.500831E-4;
% Parameter:   id =  Kcat, name = Kcat
	global_par_Kcat=237.5189220434;
% Parameter:   id =  Km, name = Km
	global_par_Km=3.0181933402;
% Parameter:   id =  kfbasal, name = kfbasal
	global_par_kfbasal=0.49752158;
% Parameter:   id =  krbasal, name = krbasal
	global_par_krbasal=128042.884096176;
% Parameter:   id =  k21, name = k21
	global_par_k21=0.009645863;
% Parameter:   id =  k22, name = k22
	global_par_k22=2374.9773277896;
% Parameter:   id =  k23, name = k23
	global_par_k23=0.1199031163;
% Parameter:   id =  k24, name = k24
	global_par_k24=0.9430860972;
% Parameter:   id =  k2b, name = k2b
	global_par_k2b=608.5839585406;
% Parameter:   id =  k3f, name = k3f
	global_par_k3f=8.1119350488;
% Parameter:   id =  k3b, name = k3b
	global_par_k3b=0.1895302156;
% Parameter:   id =  k4f, name = k4f
	global_par_k4f=384885.688277883;
% Parameter:   id =  k4b, name = k4b
	global_par_k4b=28137.0701606029;
% Parameter:   id =  k5f, name = k5f
	global_par_k5f=64300.0712750856;
% Parameter:   id =  k5b, name = k5b
	global_par_k5b=10052.5084521206;
% Parameter:   id =  k6f, name = k6f
	global_par_k6f=1.60942017926563E7;
% Parameter:   id =  k6b, name = k6b
	global_par_k6b=77.7712105485;
% Parameter:   id =  k7f, name = k7f
	global_par_k7f=4174.6300598327;
% Parameter:   id =  k7b, name = k7b
	global_par_k7b=565342.162392942;
% Parameter:   id =  k8f, name = k8f
	global_par_k8f=1515762.41887571;
% Parameter:   id =  k8b, name = k8b
	global_par_k8b=300.7511656484;
% Parameter:   id =  k91, name = k91
	global_par_k91=8.14E-8;
% Parameter:   id =  k92, name = k92
	global_par_k92=0.0280831426;
% Parameter:   id =  k9b, name = k9b
	global_par_k9b=4.0297596909;
% Parameter:   id =  k5Basic, name = k5Basic
	global_par_k5Basic=0.2040341054;
% Parameter:   id =  k5BasicWb, name = k5BasicWb
	global_par_k5BasicWb=2.34E-8;
% Parameter:   id =  k_glut4, name = k_glut4
	global_par_k_glut4=31.4211308621;
% Parameter:   id =  k_glut1, name = k_glut1
	global_par_k_glut1=0.2966651081;
% Parameter:   id =  KmG1, name = KmG1
	global_par_KmG1=132.7704719106;
% Parameter:   id =  KmG4, name = KmG4
	global_par_KmG4=70.4032025464;
% Parameter:   id =  kbf, name = kbf
	global_par_kbf=0.003119389367;
% Parameter:   id =  V_G, name = V_G
	global_par_V_G=1.88;
% Parameter:   id =  k_1, name = k_1
	global_par_k_1=0.065;
% Parameter:   id =  k_2, name = k_2
	global_par_k_2=0.079;
% Parameter:   id =  G_b, name = G_b
	global_par_G_b=95.0;
% Parameter:   id =  V_I, name = V_I
	global_par_V_I=0.05;
% Parameter:   id =  m_1, name = m_1
	global_par_m_1=0.19;
% Parameter:   id =  m_2, name = m_2
	global_par_m_2=0.484;
% Parameter:   id =  m_4, name = m_4
	global_par_m_4=0.194;
% Parameter:   id =  m_5, name = m_5
	global_par_m_5=0.0304;
% Parameter:   id =  m_6, name = m_6
	global_par_m_6=0.6471;
% Parameter:   id =  HE_b, name = HE_b
	global_par_HE_b=0.6;
% Parameter:   id =  I_b, name = I_b
	global_par_I_b=25.0;
% Parameter:   id =  S_b, name = S_b
	global_par_S_b=1.8;
% Parameter:   id =  S_b_minus, name = S_b_minus
	global_par_S_b_minus=-1.8;
% Parameter:   id =  k_max, name = k_max
	global_par_k_max=0.0558;
% Parameter:   id =  k_min, name = k_min
	global_par_k_min=0.008;
% Parameter:   id =  k_abs, name = k_abs
	global_par_k_abs=0.057;
% Parameter:   id =  k_gri, name = k_gri
	global_par_k_gri=0.0558;
% Parameter:   id =  f, name = f
	global_par_f=0.9;
% Parameter:   id =  b, name = b
	global_par_b=0.82;
% Parameter:   id =  d, name = d
	global_par_d=0.01;
% Parameter:   id =  BW, name = BW
	global_par_BW=78.0;
% Parameter:   id =  k_p1, name = k_p1
	global_par_k_p1=2.7;
% Parameter:   id =  k_p2, name = k_p2
	global_par_k_p2=0.0021;
% Parameter:   id =  k_p3, name = k_p3
	global_par_k_p3=0.009;
% Parameter:   id =  k_p4, name = k_p4
	global_par_k_p4=0.0618;
% Parameter:   id =  k_i, name = k_i
	global_par_k_i=0.0079;
% Parameter:   id =  U_ii, name = U_ii
	global_par_U_ii=1.0;
% Parameter:   id =  V_m0, name = V_m0
	global_par_V_m0=2.5;
% Parameter:   id =  V_mX, name = V_mX
	global_par_V_mX=0.047;
% Parameter:   id =  K_m0, name = K_m0
	global_par_K_m0=225.59;
% Parameter:   id =  p_2U, name = p_2U
	global_par_p_2U=0.0331;
% Parameter:   id =  part, name = part
	global_par_part=0.2;
% Parameter:   id =  K, name = K
	global_par_K=2.3;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.05;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.11;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.5;
% Parameter:   id =  k_e1, name = k_e1
	global_par_k_e1=5.0E-4;
% Parameter:   id =  k_e2, name = k_e2
	global_par_k_e2=339.0;
% Parameter:   id =  D, name = D
	global_par_D=78000.0;
% Parameter:   id =  vglucoseuptake, name = vglucoseuptake
% Parameter:   id =  KD, name = KD
% Parameter:   id =  S2, name = S2
% Parameter:   id =  S1, name = S1
% Parameter:   id =  K4, name = K4
% Parameter:   id =  K8, name = K8
% Parameter:   id =  aa, name = aa
% Parameter:   id =  cc, name = cc
% Parameter:   id =  EGP, name = EGP
% Parameter:   id =  V_mmax, name = V_mmax
% Parameter:   id =  E, name = E
% Parameter:   id =  S, name = S
% Parameter:   id =  I, name = I
% Parameter:   id =  G, name = G
% Parameter:   id =  HE, name = HE
% Parameter:   id =  m_3, name = m_3
% Parameter:   id =  Q_sto, name = Q_sto
% Parameter:   id =  Ra, name = Ra
% Parameter:   id =  k_empt, name = k_empt
% Parameter:   id =  U_idm, name = U_idm
% Parameter:   id =  U_id, name = U_id
% Parameter:   id =  U, name = U
% Parameter:   id =  S_po, name = S_po
% Parameter:   id =  G_p, name = G_p
% Parameter:   id =  G_t, name = G_t
% Parameter:   id =  I_l, name = I_l
% Parameter:   id =  I_p, name = I_p
% Parameter:   id =  Q_sto1, name = Q_sto1
% Parameter:   id =  Q_sto2, name = Q_sto2
% Parameter:   id =  Q_gut, name = Q_gut
% Parameter:   id =  I_1, name = I_1
% Parameter:   id =  I_d, name = I_d
% Parameter:   id =  INS, name = INS
% Parameter:   id =  I_po, name = I_po
% Parameter:   id =  Y, name = Y
% assignmentRule: variable = vglucoseuptake
	global_par_vglucoseuptake=global_par_k_glut1*global_par_G_t/(global_par_KmG1+global_par_G_t)+global_par_k_glut4*x(32)*global_par_G_t/(global_par_KmG4+global_par_G_t)+global_par_kbf*(global_par_INS+5);
% assignmentRule: variable = KD
	global_par_KD=7global_par_E-6;
% assignmentRule: variable = S2
	global_par_S2=0;
% assignmentRule: variable = S1
	global_par_S1=(global_par_INS+5)*1global_par_E-12;
% assignmentRule: variable = K4
	global_par_K4=1400;
% assignmentRule: variable = K8
	global_par_K8=0.01;
% assignmentRule: variable = aa
	global_par_aa=5/2/(1-global_par_b)/global_par_D;
% assignmentRule: variable = cc
	global_par_cc=5/2/global_par_d/global_par_D;
% assignmentRule: variable = EGP
	global_par_EGP=global_par_k_p1-global_par_k_p2*global_par_G_p-global_par_k_p3*global_par_I_d-global_par_k_p4*global_par_I_po;
% assignmentRule: variable = V_mmax
	global_par_V_mmax=(1-global_par_part)*(global_par_V_m0+global_par_V_mX*global_par_INS);
% assignmentRule: variable = E
	global_par_E=0;
% assignmentRule: variable = S
	global_par_S=global_par_gamma*global_par_I_po;
% assignmentRule: variable = I
	global_par_I=global_par_I_p/global_par_V_I;
% assignmentRule: variable = G
	global_par_G=global_par_G_p/global_par_V_G;
% assignmentRule: variable = HE
	global_par_HE=(-global_par_m_5)*global_par_S+global_par_m_6;
% assignmentRule: variable = m_3
	global_par_m_3=global_par_HE*global_par_m_1/(1-global_par_HE);
% assignmentRule: variable = Q_sto
	global_par_Q_sto=global_par_Q_sto1+global_par_Q_sto2;
% assignmentRule: variable = Ra
	global_par_Ra=global_par_f*global_par_k_abs*global_par_Q_gut/global_par_BW;
% assignmentRule: variable = k_empt
	global_par_k_empt=global_par_k_min+(global_par_k_max-global_par_k_min)/2*(tanh(global_par_aa*(global_par_Q_sto-global_par_b*global_par_D))-tanh(global_par_cc*(global_par_Q_sto-global_par_d*global_par_D))+2);
% assignmentRule: variable = U_idm
	global_par_U_idm=global_par_V_mmax*global_par_G_t/(global_par_K_m0+global_par_G_t);
% assignmentRule: variable = U_id
	global_par_U_id=global_par_U_idm+global_par_vglucoseuptake;
% assignmentRule: variable = U
	global_par_U=global_par_U_ii+global_par_U_id;
% assignmentRule: variable = S_po
	global_par_S_po=global_par_Y+global_par_K*(global_par_EGP+global_par_Ra-global_par_E-global_par_U_ii-global_par_k_1*global_par_G_p+global_par_k_2*global_par_G_t)/global_par_V_G+global_par_S_b;
% rateRule: variable = G_p
global_par_G_p = x(33);
% rateRule: variable = G_t
global_par_G_t = x(34);
% rateRule: variable = I_l
global_par_I_l = x(35);
% rateRule: variable = I_p
global_par_I_p = x(36);
% rateRule: variable = Q_sto1
global_par_Q_sto1 = x(37);
% rateRule: variable = Q_sto2
global_par_Q_sto2 = x(38);
% rateRule: variable = Q_gut
global_par_Q_gut = x(39);
% rateRule: variable = I_1
global_par_I_1 = x(40);
% rateRule: variable = I_d
global_par_I_d = x(41);
% rateRule: variable = INS
global_par_INS = x(42);
% rateRule: variable = I_po
global_par_I_po = x(43);
% rateRule: variable = Y
global_par_Y = x(44);

% Reaction: id = R1, name = R1
	reaction_R1=2*global_par_a1*global_par_S1*x(1);

% Reaction: id = R2, name = R2
	reaction_R2=2*global_par_a2*global_par_S1*x(1);

% Reaction: id = R3, name = R3
	reaction_R3=global_par_a1*global_par_S1*x(2);

% Reaction: id = R4, name = R4
	reaction_R4=global_par_a1*global_par_S1*x(3);

% Reaction: id = R5, name = R5
	reaction_R5=global_par_d1*x(2);

% Reaction: id = R6, name = R6
	reaction_R6=global_par_a2*global_par_S1*x(2);

% Reaction: id = R7, name = R7
	reaction_R7=global_par_a2*global_par_S1*x(3);

% Reaction: id = R8, name = R8
	reaction_R8=global_par_d2*x(3);

% Reaction: id = R9, name = R9
	reaction_R9=global_par_Kcr*x(2);

% Reaction: id = R10, name = R10
	reaction_R10=global_par_Kcr*x(3);

% Reaction: id = R11, name = R11
	reaction_R11=global_par_a1*global_par_S1*x(7);

% Reaction: id = R12, name = R12
	reaction_R12=2*global_par_d1*x(4);

% Reaction: id = R13, name = R13
	reaction_R13=global_par_d1*x(5);

% Reaction: id = R14, name = R14
	reaction_R14=global_par_a2*global_par_S1*x(7);

% Reaction: id = R15, name = R15
	reaction_R15=global_par_d2*x(5);

% Reaction: id = R16, name = R16
	reaction_R16=2*global_par_d2*x(6);

% Reaction: id = R17, name = R17
	reaction_R17=2*global_par_Kcr*x(4);

% Reaction: id = R18, name = R18
	reaction_R18=global_par_Kcr*x(5);

% Reaction: id = R19, name = R19
	reaction_R19=global_par_d2*x(7);

% Reaction: id = R20, name = R20
	reaction_R20=global_par_Kcr*x(5);

% Reaction: id = R21, name = R21
	reaction_R21=2*global_par_Kcr*x(6);

% Reaction: id = R22, name = R22
	reaction_R22=global_par_d1*x(7);

% Reaction: id = R23, name = R23
	reaction_R23=global_par_a2*global_par_S2*x(7);

% Reaction: id = R24, name = R24
	reaction_R24=global_par_d1*x(8);

% Reaction: id = R25, name = R25
	reaction_R25=global_par_d2*x(9);

% Reaction: id = R26, name = R26
	reaction_R26=global_par_d2*x(8);

% Reaction: id = R27, name = R27
	reaction_R27=global_par_d2*x(9);

% Reaction: id = R28, name = R28
	reaction_R28=global_par_d1*x(8);

% Reaction: id = R29, name = R29
	reaction_R29=global_par_d1*x(9);

% Reaction: id = R30, name = R30
	reaction_R30=global_par_a1*global_par_S1*x(9);

% Reaction: id = R31, name = R31
	reaction_R31=global_par_a2*global_par_S1*x(8);

% Reaction: id = R32, name = R32
	reaction_R32=global_par_K4*global_par_S1*x(9);

% Reaction: id = R33, name = R33
	reaction_R33=global_par_K8*x(10);

% Reaction: id = R34, name = R34
	reaction_R34=global_par_d2*x(10);

% Reaction: id = R35, name = R35
	reaction_R35=global_par_d1*x(11);

% Reaction: id = R36, name = R36
	reaction_R36=global_par_d2*x(11);

% Reaction: id = R37, name = R37
	reaction_R37=global_par_Kex*x(12);

% Reaction: id = R38, name = R38
	reaction_R38=global_par_Kex*x(15);

% Reaction: id = R39, name = R39
	reaction_R39=global_par_Kend*x(7);

% Reaction: id = R40, name = R40
	reaction_R40=global_par_Kend*x(8);

% Reaction: id = R41, name = R41
	reaction_R41=global_par_Kend*x(9);

% Reaction: id = R42, name = R42
	reaction_R42=global_par_Kend*x(10);

% Reaction: id = R43, name = R43
	reaction_R43=global_par_Kend*x(11);

% Reaction: id = R44, name = R44
	reaction_R44=(global_par_Kdp+global_par_Kcat*x(20)/(global_par_Km+x(20)))*x(13);

% Reaction: id = R45, name = R45
	reaction_R45=(global_par_Kdp+global_par_Kcat*x(20)/(global_par_Km+x(20)))*x(14);

% Reaction: id = R46, name = R46
	reaction_R46=global_par_kfbasal*x(1);

% Reaction: id = R47, name = R47
	reaction_R47=global_par_krbasal*x(16);

% Reaction: id = R48, name = R48
	reaction_R48=global_par_Kend*x(16);

% Reaction: id = v2f, name = v2f
	reaction_v2f=global_par_k21*x(17)*(x(7)+x(8)+x(9)+x(10)+x(11)+x(16)+global_par_k22*x(13))*(1+global_par_k23*x(26)+global_par_k24*x(29));

% Reaction: id = v2b, name = v2b
	reaction_v2b=global_par_k2b*x(18);

% Reaction: id = v3f, name = v3f
	reaction_v3f=global_par_k3f*x(19)*x(18);

% Reaction: id = v3b, name = v3b
	reaction_v3b=global_par_k3b*x(20);

% Reaction: id = v4f, name = v4f
	reaction_v4f=global_par_k4f*x(21)*x(18);

% Reaction: id = v4b, name = v4b
	reaction_v4b=global_par_k4b*x(22);

% Reaction: id = v5f, name = v5f
	reaction_v5f=global_par_k5f*x(23)*x(22);

% Reaction: id = v5b, name = v5b
	reaction_v5b=global_par_k5b*x(24);

% Reaction: id = v6f, name = v6f
	reaction_v6f=global_par_k6f*x(25)*x(24);

% Reaction: id = v6b, name = v6b
	reaction_v6b=global_par_k6b*x(26);

% Reaction: id = v7f, name = v7f
	reaction_v7f=global_par_k7f*x(27)*x(24);

% Reaction: id = v7b, name = v7b
	reaction_v7b=global_par_k7b*x(28);

% Reaction: id = v8f, name = v8f
	reaction_v8f=global_par_k8f*x(29)*x(28);

% Reaction: id = v8b, name = v8b
	reaction_v8b=global_par_k8b*x(30);

% Reaction: id = v9f, name = v9f
	reaction_v9f=global_par_k91*x(31)*x(26)+global_par_k92*x(31)*x(28)+global_par_k5BasicWb*x(31);

% Reaction: id = v9b, name = v9b
	reaction_v9b=global_par_k9b*x(32);

	xdot=zeros(44,1);
	% rateRule: variable = G_p
	xdot(33) = global_par_EGP+global_par_Ra-global_par_E-global_par_U_ii-global_par_k_1*global_par_G_p+global_par_k_2*global_par_G_t;
	% rateRule: variable = G_t
	xdot(34) = -global_par_U_id+global_par_k_1*global_par_G_p-global_par_k_2*global_par_G_t;
	% rateRule: variable = I_l
	xdot(35) = (-global_par_m_1)*global_par_I_l-global_par_m_3*global_par_I_l+global_par_m_2*global_par_I_p+global_par_S;
	% rateRule: variable = I_p
	xdot(36) = (-global_par_m_2)*global_par_I_p-global_par_m_4*global_par_I_p+global_par_m_1*global_par_I_l;
	% rateRule: variable = Q_sto1
	xdot(37) = (-global_par_k_gri)*global_par_Q_sto1;
	% rateRule: variable = Q_sto2
	xdot(38) = (-global_par_k_empt)*global_par_Q_sto2+global_par_k_gri*global_par_Q_sto1;
	% rateRule: variable = Q_gut
	xdot(39) = (-global_par_k_abs)*global_par_Q_gut+global_par_k_empt*global_par_Q_sto2;
	% rateRule: variable = I_1
	xdot(40) = (-global_par_k_i)*(global_par_I_1-global_par_I);
	% rateRule: variable = I_d
	xdot(41) = (-global_par_k_i)*(global_par_I_d-global_par_I_1);
	% rateRule: variable = INS
	xdot(42) = (-global_par_p_2U)*global_par_INS+global_par_p_2U*(global_par_I-global_par_I_b);
	% rateRule: variable = I_po
	xdot(43) = (-global_par_gamma)*global_par_I_po+global_par_S_po;
	% rateRule: variable = Y
	xdot(44) = (-global_par_alpha)*(global_par_Y-global_par_beta*(global_par_G-global_par_G_b));
	
% Species:   id = r0, name = r0, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*((-1.0 * reaction_R1) + (-1.0 * reaction_R2) + ( 1.0 * reaction_R5) + ( 1.0 * reaction_R8) + ( 1.0 * reaction_R37) + (-1.0 * reaction_R46) + ( 1.0 * reaction_R47));
	
% Species:   id = r1, name = r1, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R3) + (-1.0 * reaction_R5) + (-1.0 * reaction_R6) + (-1.0 * reaction_R9) + ( 1.0 * reaction_R12) + ( 1.0 * reaction_R15) + ( 1.0 * reaction_R19));
	
% Species:   id = r2, name = r2, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R4) + (-1.0 * reaction_R7) + (-1.0 * reaction_R8) + (-1.0 * reaction_R10) + ( 1.0 * reaction_R13) + ( 1.0 * reaction_R16) + ( 1.0 * reaction_R22));
	
% Species:   id = r11, name = r11, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*(( 1.0 * reaction_R3) + (-1.0 * reaction_R12) + (-1.0 * reaction_R17) + ( 1.0 * reaction_R26));
	
% Species:   id = r12, name = r12, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*(( 1.0 * reaction_R4) + ( 1.0 * reaction_R6) + (-1.0 * reaction_R13) + (-1.0 * reaction_R15) + (-1.0 * reaction_R18) + (-1.0 * reaction_R20) + ( 1.0 * reaction_R27) + ( 1.0 * reaction_R28));
	
% Species:   id = r22, name = r22, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_R7) + (-1.0 * reaction_R16) + (-1.0 * reaction_R21) + ( 1.0 * reaction_R29));
	
% Species:   id = r1x2, name = r1x2, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*(( 1.0 * reaction_R9) + ( 1.0 * reaction_R10) + (-1.0 * reaction_R11) + (-1.0 * reaction_R14) + (-1.0 * reaction_R19) + (-1.0 * reaction_R22) + (-1.0 * reaction_R23) + ( 1.0 * reaction_R24) + ( 1.0 * reaction_R25) + ( 1.0 * reaction_R34) + (-1.0 * reaction_R39));
	
% Species:   id = r11x2, name = r11x2, affected by kineticLaw
	xdot(8) = (1/(compartment_default))*(( 1.0 * reaction_R11) + ( 1.0 * reaction_R17) + ( 1.0 * reaction_R20) + (-1.0 * reaction_R24) + (-1.0 * reaction_R26) + (-1.0 * reaction_R28) + (-1.0 * reaction_R31) + ( 1.0 * reaction_R36) + (-1.0 * reaction_R40));
	
% Species:   id = r1x22, name = r1x22, affected by kineticLaw
	xdot(9) = (1/(compartment_default))*(( 1.0 * reaction_R14) + ( 1.0 * reaction_R18) + ( 1.0 * reaction_R21) + (-1.0 * reaction_R25) + (-1.0 * reaction_R27) + (-1.0 * reaction_R29) + (-1.0 * reaction_R30) + (-1.0 * reaction_R32) + ( 1.0 * reaction_R33) + ( 1.0 * reaction_R35) + (-1.0 * reaction_R41));
	
% Species:   id = r1x22d, name = r1x22d, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*(( 1.0 * reaction_R23) + ( 1.0 * reaction_R32) + (-1.0 * reaction_R33) + (-1.0 * reaction_R34) + (-1.0 * reaction_R42));
	
% Species:   id = r11x22, name = r11x22, affected by kineticLaw
	xdot(11) = (1/(compartment_default))*(( 1.0 * reaction_R30) + ( 1.0 * reaction_R31) + (-1.0 * reaction_R35) + (-1.0 * reaction_R36) + (-1.0 * reaction_R43));
	
% Species:   id = rend, name = rend, affected by kineticLaw
	xdot(12) = (1/(compartment_default))*((-1.0 * reaction_R37) + ( 1.0 * reaction_R44));
	
% Species:   id = rendP, name = rendP, affected by kineticLaw
	xdot(13) = (1/(compartment_default))*(( 1.0 * reaction_R39) + ( 1.0 * reaction_R40) + ( 1.0 * reaction_R41) + ( 1.0 * reaction_R42) + ( 1.0 * reaction_R43) + (-1.0 * reaction_R44) + ( 1.0 * reaction_R48));
	
% Species:   id = iendIR, name = iendIR, affected by kineticLaw
	xdot(14) = (1/(compartment_default))*(( 1.0 * reaction_R39) + ( 2.0 * reaction_R40) + ( 2.0 * reaction_R41) + ( 3.0 * reaction_R42) + ( 3.0 * reaction_R43) + (-1.0 * reaction_R45));
	
% Species:   id = iend, name = iend, affected by kineticLaw
	xdot(15) = (1/(compartment_default))*((-1.0 * reaction_R38) + ( 1.0 * reaction_R45));
	
% Species:   id = rPbasal, name = rPbasal, affected by kineticLaw
	xdot(16) = (1/(compartment_default))*(( 1.0 * reaction_R46) + (-1.0 * reaction_R47) + (-1.0 * reaction_R48));
	
% Species:   id = IRS, name = IRS, affected by kineticLaw
	xdot(17) = (1/(compartment_default))*((-1.0 * reaction_v2f) + ( 1.0 * reaction_v2b));
	
% Species:   id = IRSiP, name = IRSiP, affected by kineticLaw
	xdot(18) = (1/(compartment_default))*(( 1.0 * reaction_v2f) + (-1.0 * reaction_v2b));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(19) = (1/(compartment_default))*((-1.0 * reaction_v3f) + ( 1.0 * reaction_v3b));
	
% Species:   id = X_P, name = X_P, affected by kineticLaw
	xdot(20) = (1/(compartment_default))*(( 1.0 * reaction_v3f) + (-1.0 * reaction_v3b));
	
% Species:   id = PI3K, name = PI3K, affected by kineticLaw
	xdot(21) = (1/(compartment_default))*((-1.0 * reaction_v4f) + ( 1.0 * reaction_v4b));
	
% Species:   id = PI3K_, name = PI3K_, affected by kineticLaw
	xdot(22) = (1/(compartment_default))*(( 1.0 * reaction_v4f) + (-1.0 * reaction_v4b));
	
% Species:   id = PDK1, name = PDK1, affected by kineticLaw
	xdot(23) = (1/(compartment_default))*((-1.0 * reaction_v5f) + ( 1.0 * reaction_v5b));
	
% Species:   id = PDK1_, name = PDK1_, affected by kineticLaw
	xdot(24) = (1/(compartment_default))*(( 1.0 * reaction_v5f) + (-1.0 * reaction_v5b));
	
% Species:   id = PKC, name = PKC, affected by kineticLaw
	xdot(25) = (1/(compartment_default))*((-1.0 * reaction_v6f) + ( 1.0 * reaction_v6b));
	
% Species:   id = PKC_P, name = PKC_P, affected by kineticLaw
	xdot(26) = (1/(compartment_default))*(( 1.0 * reaction_v6f) + (-1.0 * reaction_v6b));
	
% Species:   id = PKB, name = PKB, affected by kineticLaw
	xdot(27) = (1/(compartment_default))*((-1.0 * reaction_v7f) + ( 1.0 * reaction_v7b));
	
% Species:   id = PKB_P, name = PKB_P, affected by kineticLaw
	xdot(28) = (1/(compartment_default))*(( 1.0 * reaction_v7f) + (-1.0 * reaction_v7b));
	
% Species:   id = mTOR, name = mTOR, affected by kineticLaw
	xdot(29) = (1/(compartment_default))*((-1.0 * reaction_v8f) + ( 1.0 * reaction_v8b));
	
% Species:   id = mTOR_, name = mTOR_, affected by kineticLaw
	xdot(30) = (1/(compartment_default))*(( 1.0 * reaction_v8f) + (-1.0 * reaction_v8b));
	
% Species:   id = GLUT4_C, name = GLUT4_C, affected by kineticLaw
	xdot(31) = (1/(compartment_default))*((-1.0 * reaction_v9f) + ( 1.0 * reaction_v9b));
	
% Species:   id = GLUT4_M, name = GLUT4_M, affected by kineticLaw
	xdot(32) = (1/(compartment_default))*(( 1.0 * reaction_v9f) + (-1.0 * reaction_v9b));
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


