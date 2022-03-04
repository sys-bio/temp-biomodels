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
% Model name = Vasalou2010_Pacemaker_Neuron_SCN
%
% is http://identifiers.org/biomodels.db/MODEL1004080000
% is http://identifiers.org/biomodels.db/BIOMD0000000246
% isDescribedBy http://identifiers.org/pubmed/20300645
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000073
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000074
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000078
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000083
% isDerivedFrom http://identifiers.org/pubmed/11316338
%


function main()
%Initial conditions vector
	x0=zeros(29,1);
	x0(1) = 0.1;
	x0(2) = 0.1;
	x0(3) = 5.0;
	x0(4) = 2.8;
	x0(5) = 2.0;
	x0(6) = 7.94;
	x0(7) = 0.4;
	x0(8) = 12.0;
	x0(9) = 0.13;
	x0(10) = 9.0;
	x0(11) = 1.26;
	x0(12) = 0.16;
	x0(13) = 0.2;
	x0(14) = 0.091;
	x0(15) = 2.41;
	x0(16) = 0.48;
	x0(17) = 1.94;
	x0(18) = 0.32;
	x0(19) = 0.05;
	x0(20) = 0.12;
	x0(21) = 0.0;
	x0(22) = 114.5;
	x0(23) = 1.0;
	x0(24) = 0;
	x0(25) = 0.2;
	x0(26) = 0;
	x0(27) = 1.0;
	x0(28) = 0;
	x0(29) = 145.0;


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

% Compartment: id = extra, name = extra, constant
	compartment_extra=1.0;
% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Compartment: id = store, name = store, constant
	compartment_store=1.0;
% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.0;
% Parameter:   id =  v_vo, name = v_vo
	global_par_v_vo=0.09;
% Parameter:   id =  n_vo, name = n_vo
	global_par_n_vo=4.5;
% Parameter:   id =  K_vo, name = K_vo
	global_par_K_vo=4.5;
% Parameter:   id =  v_kk, name = v_kk
	global_par_v_kk=3.3;
% Parameter:   id =  n_kk, name = n_kk
	global_par_n_kk=0.1;
% Parameter:   id =  K_kk, name = K_kk
	global_par_K_kk=0.02;
% Parameter:   id =  n_kCa, name = n_kCa
	global_par_n_kCa=2.0;
% Parameter:   id =  V_M1, name = V_M1
	global_par_V_M1=3.0E-4;
% Parameter:   id =  beta_IP3, name = beta_IP3
	global_par_beta_IP3=0.5;
% Parameter:   id =  V_M2, name = V_M2
	global_par_V_M2=149.5;
% Parameter:   id =  n_M2, name = n_M2
	global_par_n_M2=2.2;
% Parameter:   id =  K_2, name = K_2
	global_par_K_2=5.0;
% Parameter:   id =  V_M3, name = V_M3
	global_par_V_M3=400.0;
% Parameter:   id =  n_M3, name = n_M3
	global_par_n_M3=6.0;
% Parameter:   id =  K_R_Ca, name = K_R_Ca
	global_par_K_R_Ca=3.0;
% Parameter:   id =  p_A, name = p_A
	global_par_p_A=4.2;
% Parameter:   id =  K_A, name = K_A
	global_par_K_A=0.67;
% Parameter:   id =  k_f, name = k_f
	global_par_k_f=0.001;
% Parameter:   id =  v_sP0, name = v_sP0
	global_par_v_sP0=1.0;
% Parameter:   id =  C_T, name = C_T
	global_par_C_T=1.6;
% Parameter:   id =  K_C, name = K_C
	global_par_K_C=0.15;
% Parameter:   id =  n_BN, name = n_BN
	global_par_n_BN=4.0;
% Parameter:   id =  K_AP, name = K_AP
	global_par_K_AP=0.6;
% Parameter:   id =  v_mP, name = v_mP
	global_par_v_mP=1.1;
% Parameter:   id =  K_mP, name = K_mP
	global_par_K_mP=0.31;
% Parameter:   id =  kd_mP, name = kd_mP
	global_par_kd_mP=0.01;
% Parameter:   id =  v_sC, name = v_sC
	global_par_v_sC=1.1;
% Parameter:   id =  K_sC, name = K_sC
	global_par_K_sC=0.6;
% Parameter:   id =  v_mC, name = v_mC
	global_par_v_mC=1.0;
% Parameter:   id =  K_mC, name = K_mC
	global_par_K_mC=0.4;
% Parameter:   id =  kd_mC, name = kd_mC
	global_par_kd_mC=0.01;
% Parameter:   id =  v_sB, name = v_sB
	global_par_v_sB=1.0;
% Parameter:   id =  K_IB, name = K_IB
	global_par_K_IB=2.2;
% Parameter:   id =  m_BN, name = m_BN
	global_par_m_BN=2.0;
% Parameter:   id =  v_mB, name = v_mB
	global_par_v_mB=0.8;
% Parameter:   id =  K_mB, name = K_mB
	global_par_K_mB=0.4;
% Parameter:   id =  kd_mB, name = kd_mB
	global_par_kd_mB=0.01;
% Parameter:   id =  ks_P, name = ks_P
	global_par_ks_P=0.6;
% Parameter:   id =  kd_n, name = kd_n
	global_par_kd_n=0.01;
% Parameter:   id =  V1_P, name = V1_P
	global_par_V1_P=NaN;
% Parameter:   id =  K_p, name = K_p
	global_par_K_p=0.1;
% Parameter:   id =  V2_P, name = V2_P
	global_par_V2_P=0.3;
% Parameter:   id =  K_dp, name = K_dp
	global_par_K_dp=0.1;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.4;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.2;
% Parameter:   id =  ks_C, name = ks_C
	global_par_ks_C=1.6;
% Parameter:   id =  kd_nc, name = kd_nc
	global_par_kd_nc=0.12;
% Parameter:   id =  V1_C, name = V1_C
	global_par_V1_C=0.6;
% Parameter:   id =  V2_C, name = V2_C
	global_par_V2_C=0.1;
% Parameter:   id =  v_dPC, name = v_dPC
	global_par_v_dPC=0.7;
% Parameter:   id =  Kd, name = Kd
	global_par_Kd=0.3;
% Parameter:   id =  v_dCC, name = v_dCC
	global_par_v_dCC=0.7;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.45;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.2;
% Parameter:   id =  V1_PC, name = V1_PC
	global_par_V1_PC=NaN;
% Parameter:   id =  V2_PC, name = V2_PC
	global_par_V2_PC=0.1;
% Parameter:   id =  vd_PCC, name = vd_PCC
	global_par_vd_PCC=0.7;
% Parameter:   id =  V3_PC, name = V3_PC
	global_par_V3_PC=NaN;
% Parameter:   id =  V4_PC, name = V4_PC
	global_par_V4_PC=0.1;
% Parameter:   id =  vd_PCN, name = vd_PCN
	global_par_vd_PCN=0.7;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.5;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.1;
% Parameter:   id =  vd_IN, name = vd_IN
	global_par_vd_IN=0.8;
% Parameter:   id =  ksB, name = ksB
	global_par_ksB=0.12;
% Parameter:   id =  V1_B, name = V1_B
	global_par_V1_B=0.5;
% Parameter:   id =  V2_B, name = V2_B
	global_par_V2_B=0.1;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.4;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.2;
% Parameter:   id =  vd_BC, name = vd_BC
	global_par_vd_BC=0.5;
% Parameter:   id =  V3_B, name = V3_B
	global_par_V3_B=0.5;
% Parameter:   id =  V4_B, name = V4_B
	global_par_V4_B=0.2;
% Parameter:   id =  vd_BN, name = vd_BN
	global_par_vd_BN=0.6;
% Parameter:   id =  v_K, name = v_K
% Parameter:   id =  K_1_CB, name = K_1_CB
	global_par_K_1_CB=0.01;
% Parameter:   id =  vP, name = vP
	global_par_vP=1.0;
% Parameter:   id =  K_2_CB, name = K_2_CB
	global_par_K_2_CB=0.01;
% Parameter:   id =  WT, name = WT
	global_par_WT=1.0;
% Parameter:   id =  v_VIP, name = v_VIP
	global_par_v_VIP=0.5;
% Parameter:   id =  f_r, name = f_r
% Parameter:   id =  n_VIP, name = n_VIP
	global_par_n_VIP=1.9;
% Parameter:   id =  K_VIP, name = K_VIP
	global_par_K_VIP=15.0;
% Parameter:   id =  k_dVIP, name = k_dVIP
	global_par_k_dVIP=0.5;
% Parameter:   id =  n_dVIP, name = n_dVIP
	global_par_n_dVIP=0.2;
% Parameter:   id =  v_GABA, name = v_GABA
	global_par_v_GABA=19.0;
% Parameter:   id =  K_GABA, name = K_GABA
	global_par_K_GABA=3.0;
% Parameter:   id =  beta, name = beta
% Parameter:   id =  K_D, name = K_D
	global_par_K_D=0.08;
% Parameter:   id =  v_sPc, name = v_sPc
% Parameter:   id =  V_MK, name = V_MK
	global_par_V_MK=5.0;
% Parameter:   id =  k_MK, name = k_MK
	global_par_k_MK=2.9;
% Parameter:   id =  V_b, name = V_b
	global_par_V_b=2.0;
% Parameter:   id =  k_b, name = k_b
	global_par_k_b=2.0;
% Parameter:   id =  E_Na, name = E_Na
% Parameter:   id =  E_Na_0, name = E_Na_0
	global_par_E_Na_0=45.0;
% Parameter:   id =  T, name = T
	global_par_T=37.0;
% Parameter:   id =  T_abs, name = T_abs
	global_par_T_abs=273.15;
% Parameter:   id =  T_room, name = T_room
	global_par_T_room=22.0;
% Parameter:   id =  E_K, name = E_K
% Parameter:   id =  E_K_0, name = E_K_0
	global_par_E_K_0=-97.0;
% Parameter:   id =  E_L, name = E_L
% Parameter:   id =  E_L_0, name = E_L_0
	global_par_E_L_0=-29.0;
% Parameter:   id =  E_Ca, name = E_Ca
% Parameter:   id =  k_q, name = k_q
	global_par_k_q=8.75E-5;
% Parameter:   id =  Cl_in, name = Cl_in
% Parameter:   id =  K_Cl1, name = K_Cl1
	global_par_K_Cl1=4.0;
% Parameter:   id =  v_Cl1, name = v_Cl1
	global_par_v_Cl1=15.5;
% Parameter:   id =  n_Cl, name = n_Cl
	global_par_n_Cl=-0.2;
% Parameter:   id =  K_Cl2, name = K_Cl2
	global_par_K_Cl2=1.0;
% Parameter:   id =  v_Cl2, name = v_Cl2
	global_par_v_Cl2=19.0;
% Parameter:   id =  E_inhib, name = E_inhib
% Parameter:   id =  P_K, name = P_K
% Parameter:   id =  v_PK, name = v_PK
	global_par_v_PK=1.9;
% Parameter:   id =  n_PK, name = n_PK
	global_par_n_PK=-2.0;
% Parameter:   id =  K_PK, name = K_PK
	global_par_K_PK=1.0;
% Parameter:   id =  theta_Na, name = theta_Na
% Parameter:   id =  theta_K, name = theta_K
% Parameter:   id =  alpha, name = alpha
% Parameter:   id =  P_Ca, name = P_Ca
	global_par_P_Ca=0.05;
% Parameter:   id =  P_Na, name = P_Na
	global_par_P_Na=0.036;
% Parameter:   id =  P_Cl, name = P_Cl
	global_par_P_Cl=0.3;
% Parameter:   id =  beta_a, name = beta_a
% Parameter:   id =  c, name = c
% Parameter:   id =  psi, name = psi
% Parameter:   id =  V_rest, name = V_rest
% Parameter:   id =  R_g, name = R_g
	global_par_R_g=8.314;
% Parameter:   id =  Faraday, name = Faraday
	global_par_Faraday=96485.0;
% Parameter:   id =  theta, name = theta
% Parameter:   id =  V_theta, name = V_theta
	global_par_V_theta=20.0;
% Parameter:   id =  V_reset, name = V_reset
% Parameter:   id =  R, name = R
% Parameter:   id =  V_R, name = V_R
	global_par_V_R=0.41;
% Parameter:   id =  K_R, name = K_R
	global_par_K_R=34.0;
% Parameter:   id =  I_Na, name = I_Na
% Parameter:   id =  g_Na, name = g_Na
	global_par_g_Na=36.0;
% Parameter:   id =  g_K, name = g_K
% Parameter:   id =  g_K_0, name = g_K_0
	global_par_g_K_0=9.7;
% Parameter:   id =  K_gk, name = K_gk
	global_par_K_gk=10.0;
% Parameter:   id =  v_gk, name = v_gk
	global_par_v_gk=10.0;
% Parameter:   id =  I_Na_abs, name = I_Na_abs
% Parameter:   id =  g_ex, name = g_ex
% Parameter:   id =  V_ex1, name = V_ex1
	global_par_V_ex1=105.0;
% Parameter:   id =  n_ex1, name = n_ex1
	global_par_n_ex1=2.5;
% Parameter:   id =  K_ex1, name = K_ex1
	global_par_K_ex1=5.7405E8;
% Parameter:   id =  n_ex2, name = n_ex2
	global_par_n_ex2=-1.0;
% Parameter:   id =  K_ex2, name = K_ex2
	global_par_K_ex2=1.0;
% Parameter:   id =  V_ex2, name = V_ex2
	global_par_V_ex2=4.4;
% Parameter:   id =  g_L, name = g_L
% Parameter:   id =  g_Ca, name = g_Ca
% Parameter:   id =  v_Ca, name = v_Ca
	global_par_v_Ca=12.3;
% Parameter:   id =  n_Ca, name = n_Ca
	global_par_n_Ca=2.2;
% Parameter:   id =  K_Ca, name = K_Ca
	global_par_K_Ca=22.0;
% Parameter:   id =  gK_Ca, name = gK_Ca
% Parameter:   id =  VK_Ca, name = VK_Ca
	global_par_VK_Ca=3.0;
% Parameter:   id =  n_KCa, name = n_KCa
	global_par_n_KCa=-1.0;
% Parameter:   id =  K_KCa, name = K_KCa
	global_par_K_KCa=0.16;
% Parameter:   id =  I_star, name = I_star
% Parameter:   id =  g_inhib, name = g_inhib
	global_par_g_inhib=12.3;
% Parameter:   id =  E_ex, name = E_ex
	global_par_E_ex=0.0;
% Parameter:   id =  R_star, name = R_star
% Parameter:   id =  tau_m, name = tau_m
% Parameter:   id =  Cm, name = Cm
	global_par_Cm=5.0;
% Parameter:   id =  PK_o, name = PK_o
	global_par_PK_o=1.1;
% Parameter:   id =  V_phos, name = V_phos
	global_par_V_phos=0.4;
% assignmentRule: variable = GABA
	x(24)=x(25)+global_par_v_GABA*x(21)/(global_par_K_GABA+x(21));
% assignmentRule: variable = K_in
	x(26)=x(27)/global_par_theta_K;
% assignmentRule: variable = Na_in
	x(28)=x(29)/global_par_theta_Na;
% assignmentRule: variable = v_K
	global_par_v_K=global_par_V_MK*x(1)/(global_par_k_MK+x(1))+global_par_V_b*global_par_beta/(global_par_k_b+global_par_beta);
% assignmentRule: variable = f_r
	global_par_f_r=-1/(global_par_tau_m*log((global_par_theta-global_par_R_star*global_par_I_star)/(global_par_V_reset-global_par_R_star*global_par_I_star)));
% assignmentRule: variable = beta
	global_par_beta=x(21)/(x(21)+global_par_K_D);
% assignmentRule: variable = v_sPc
	global_par_v_sPc=global_par_v_sP0+global_par_C_T*x(20)/(global_par_K_C+x(20));
% assignmentRule: variable = E_Na
	global_par_E_Na=global_par_E_Na_0*(global_par_T+global_par_T_abs)/(global_par_T_room+global_par_T_abs);
% assignmentRule: variable = E_K
	global_par_E_K=global_par_E_K_0*(global_par_T+global_par_T_abs)/(global_par_T_room+global_par_T_abs);
% assignmentRule: variable = E_L
	global_par_E_L=global_par_E_L_0*(global_par_T+global_par_T_abs)/(global_par_T_room+global_par_T_abs);
% assignmentRule: variable = E_Ca
	global_par_E_Ca=global_par_k_q*(global_par_T+global_par_T_abs)/2*log(x(3)/x(1))*1000;
% assignmentRule: variable = Cl_in
	global_par_Cl_in=x(23)+x(4)/(global_par_K_Cl1+x(4))*global_par_v_Cl1+x(24)^global_par_n_Cl/(global_par_K_Cl2+x(24)^global_par_n_Cl)*global_par_v_Cl2;
% assignmentRule: variable = E_inhib
	global_par_E_inhib=(-global_par_k_q)*(global_par_T+global_par_T_abs)*log(x(22)/global_par_Cl_in)*1000;
% assignmentRule: variable = P_K
	global_par_P_K=global_par_v_PK*x(15)^global_par_n_PK/(global_par_K_PK+x(15)^global_par_n_PK);
% assignmentRule: variable = theta_Na
	global_par_theta_Na=exp(global_par_E_Na/(global_par_k_q*(global_par_T+global_par_T_abs)*1000));
% assignmentRule: variable = theta_K
	global_par_theta_K=exp(global_par_E_K/(global_par_k_q*(global_par_T+global_par_T_abs)*1000));
% assignmentRule: variable = alpha
	global_par_alpha=4*global_par_P_Ca*x(1)*10^(-3)+global_par_P_K*x(26)+global_par_P_Na*x(28)+global_par_P_Cl*x(22);
% assignmentRule: variable = beta_a
	global_par_beta_a=global_par_P_K*x(26)-global_par_P_K*x(27)+global_par_P_Na*x(28)-global_par_P_Na*x(29)+global_par_P_Cl*x(22)-global_par_P_Cl*global_par_Cl_in;
% assignmentRule: variable = c
	global_par_c=-(4*global_par_P_Ca*x(3)*10^(-3)+global_par_P_K*x(27)+global_par_P_Na*x(29)+global_par_P_Cl*global_par_Cl_in);
% assignmentRule: variable = psi
	global_par_psi=((global_par_beta_a^2-4*global_par_alpha*global_par_c)^(0.5)-global_par_beta_a)/(2*global_par_alpha);
% assignmentRule: variable = theta
	global_par_theta=global_par_V_rest+global_par_V_theta;
% assignmentRule: variable = V_reset
	global_par_V_reset=global_par_V_rest+4;
% assignmentRule: variable = R
	global_par_R=global_par_V_R*global_par_V_rest/(global_par_K_R+global_par_V_rest);
% assignmentRule: variable = I_Na
	global_par_I_Na=global_par_g_Na*(global_par_V_rest-global_par_E_Na);
% assignmentRule: variable = g_K
	global_par_g_K=global_par_g_K_0+x(4)/(global_par_K_gk+x(4))*global_par_v_gk;
% assignmentRule: variable = I_Na_abs
	global_par_I_Na_abs=(global_par_I_Na^2)^(0.5);
% assignmentRule: variable = g_ex
	global_par_g_ex=global_par_V_ex1*global_par_I_Na_abs^global_par_n_ex1/(global_par_K_ex1+global_par_I_Na_abs^global_par_n_ex1)+x(1)^global_par_n_ex2/(global_par_K_ex2+x(1)^global_par_n_ex2)*global_par_V_ex2;
% assignmentRule: variable = g_L
	global_par_g_L=1/global_par_R;
% assignmentRule: variable = g_Ca
	global_par_g_Ca=global_par_v_Ca*x(4)^global_par_n_Ca/(global_par_K_Ca+x(4)^global_par_n_Ca);
% assignmentRule: variable = gK_Ca
	global_par_gK_Ca=global_par_VK_Ca*x(8)^global_par_n_KCa/(global_par_K_KCa+x(8)^global_par_n_KCa);
% assignmentRule: variable = I_star
	global_par_I_star=global_par_g_Na*global_par_E_Na+global_par_g_Ca*global_par_E_Ca+global_par_g_K*global_par_E_K+global_par_g_L*global_par_E_L+global_par_gK_Ca*global_par_E_K-global_par_g_inhib*global_par_E_inhib-global_par_g_ex*global_par_E_ex;
% assignmentRule: variable = R_star
	global_par_R_star=1/(global_par_g_Na+global_par_g_K+global_par_g_L+global_par_g_Ca+global_par_gK_Ca-global_par_g_inhib-global_par_g_ex);
% assignmentRule: variable = tau_m
	global_par_tau_m=global_par_Cm*global_par_R_star;

% Reaction: id = vo
	reaction_vo=1000*compartment_cytoplasm*global_par_v_vo*x(15)^global_par_n_vo/(global_par_K_vo+x(15)^global_par_n_vo);

% Reaction: id = v_ca_out
	reaction_v_ca_out=1000*compartment_cytoplasm*global_par_v_kk*x(8)^global_par_n_kk/(global_par_K_kk+x(8)^global_par_n_kk)*x(1)^global_par_n_kCa;

% Reaction: id = v1
	reaction_v1=1000*compartment_cytoplasm*global_par_V_M1*global_par_beta_IP3;

% Reaction: id = v2
	reaction_v2=1000*compartment_cytoplasm*global_par_V_M2*x(1)^global_par_n_M2/(global_par_K_2^global_par_n_M2+x(1)^global_par_n_M2);

% Reaction: id = v3
	reaction_v3=1000*compartment_store*global_par_V_M3*x(2)^global_par_n_M3/(global_par_K_R_Ca^global_par_n_M3+x(2)^global_par_n_M3)*x(1)^global_par_p_A/(global_par_K_A^global_par_p_A+x(1)^global_par_p_A);

% Reaction: id = v_Ca_leak
	reaction_v_Ca_leak=1000*compartment_store*global_par_k_f*x(2);

% Reaction: id = MP_transcription
	reaction_MP_transcription=compartment_cytoplasm*(global_par_v_sP0+global_par_C_T*x(20)/(global_par_K_C+x(20)))*x(17)^global_par_n_BN/(global_par_K_AP^global_par_n_BN+x(17)^global_par_n_BN);

% Reaction: id = MP_decay
	reaction_MP_decay=compartment_cytoplasm*(global_par_v_mP*x(4)/(global_par_K_mP+x(4))+global_par_kd_mP*x(4));

% Reaction: id = MC_transcription
	reaction_MC_transcription=compartment_cytoplasm*global_par_v_sC*x(17)^global_par_n_BN/(global_par_K_sC^global_par_n_BN+x(17)^global_par_n_BN);

% Reaction: id = MC_decay
	reaction_MC_decay=compartment_cytoplasm*(global_par_v_mC*x(5)/(global_par_K_mC+x(5))+global_par_kd_mC*x(5));

% Reaction: id = MB_transcription
	reaction_MB_transcription=compartment_cytoplasm*global_par_v_sB*global_par_K_IB^global_par_m_BN/(global_par_K_IB^global_par_m_BN+x(17)^global_par_m_BN);

% Reaction: id = MB_decay
	reaction_MB_decay=compartment_cytoplasm*(global_par_v_mB*x(6)/(global_par_K_mB+x(6))+global_par_kd_mB*x(6));

% Reaction: id = PC_translation
	reaction_PC_translation=compartment_cytoplasm*global_par_ks_P*x(4);

% Reaction: id = PC_degradation
	reaction_PC_degradation=compartment_cytoplasm*global_par_kd_n*x(7);

% Reaction: id = PC_phosphorylation
	reaction_PC_phosphorylation=compartment_cytoplasm*(global_par_V1_P*x(7)/(global_par_K_p+x(7))-global_par_V2_P*x(9)/(global_par_K_dp+x(9)));

% Reaction: id = PCC_formation
	reaction_PCC_formation=compartment_cytoplasm*(global_par_k3*x(7)*x(8)-global_par_k4*x(11));

% Reaction: id = CC_translation
	reaction_CC_translation=compartment_cytoplasm*global_par_ks_C*x(5);

% Reaction: id = CC_degradation
	reaction_CC_degradation=compartment_cytoplasm*global_par_kd_nc*x(8);

% Reaction: id = CC_phosphorylation
	reaction_CC_phosphorylation=compartment_cytoplasm*(global_par_V1_C*x(8)/(global_par_K_p+x(8))-global_par_V2_C*x(10)/(global_par_K_dp+x(10)));

% Reaction: id = PCP_degradation
	reaction_PCP_degradation=compartment_cytoplasm*(global_par_v_dPC*x(9)/(global_par_Kd+x(9))+global_par_kd_n*x(9));

% Reaction: id = CCP_degradation
	reaction_CCP_degradation=compartment_cytoplasm*(global_par_v_dCC*x(10)/(global_par_Kd+x(10))+global_par_kd_n*x(10));

% Reaction: id = PCC_shuttling
	reaction_PCC_shuttling=compartment_cytoplasm*global_par_k1*x(11)-compartment_nucleus*global_par_k2*x(12);

% Reaction: id = PCC_phosphorylation
	reaction_PCC_phosphorylation=compartment_cytoplasm*(global_par_V1_PC*x(11)/(global_par_K_p+x(11))-global_par_V2_PC*x(13)/(global_par_K_dp+x(13)));

% Reaction: id = PCC_degradation
	reaction_PCC_degradation=compartment_cytoplasm*global_par_kd_n*x(11);

% Reaction: id = PCCP_degradation
	reaction_PCCP_degradation=compartment_cytoplasm*(global_par_vd_PCC*x(13)/(global_par_Kd+x(13))+global_par_kd_n*x(13));

% Reaction: id = PCN_phosphorylation
	reaction_PCN_phosphorylation=compartment_nucleus*(global_par_V3_PC*x(12)/(global_par_K_p+x(12))-global_par_V4_PC*x(14)/(global_par_K_dp+x(14)));

% Reaction: id = PCN_degradation
	reaction_PCN_degradation=compartment_nucleus*global_par_kd_n*x(12);

% Reaction: id = PCNP_degradation
	reaction_PCNP_degradation=compartment_nucleus*(global_par_vd_PCN*x(14)/(global_par_Kd+x(14))+global_par_kd_n*x(14));

% Reaction: id = IN_formation
	reaction_IN_formation=compartment_cytoplasm*(global_par_k7*x(17)*x(12)-global_par_k8*x(19));

% Reaction: id = IN_degradation
	reaction_IN_degradation=compartment_nucleus*(global_par_vd_IN*x(19)/(global_par_Kd+x(19))+global_par_kd_n*x(19));

% Reaction: id = BC_translation
	reaction_BC_translation=compartment_cytoplasm*global_par_ksB*x(6);

% Reaction: id = BC_phosphorylation
	reaction_BC_phosphorylation=compartment_cytoplasm*(global_par_V1_B*x(15)/(global_par_K_p+x(15))-global_par_V2_B*x(16)/(global_par_K_dp+x(16)));

% Reaction: id = BC_shuttling
	reaction_BC_shuttling=compartment_cytoplasm*global_par_k5*x(15)-compartment_nucleus*global_par_k6*x(17);

% Reaction: id = BC_degradation
	reaction_BC_degradation=compartment_cytoplasm*global_par_kd_n*x(15);

% Reaction: id = BCP_degradation
	reaction_BCP_degradation=compartment_cytoplasm*(global_par_vd_BC*x(16)/(global_par_Kd+x(16))+global_par_kd_n*x(16));

% Reaction: id = BN_phosphorylation
	reaction_BN_phosphorylation=compartment_nucleus*(global_par_V3_B*x(17)/(global_par_K_p+x(17))-global_par_V4_B*x(18)/(global_par_K_dp+x(18)));

% Reaction: id = BN_degradation
	reaction_BN_degradation=compartment_nucleus*global_par_kd_n*x(17);

% Reaction: id = BNP_degradation
	reaction_BNP_degradation=compartment_nucleus*(global_par_vd_BN*x(18)/(global_par_Kd+x(18))+global_par_kd_n*x(18));

% Reaction: id = CB_activation
	reaction_CB_activation=compartment_cytoplasm*(global_par_v_K*(1-x(20))/(global_par_K_1_CB+1-x(20))-global_par_vP*x(20)/(global_par_K_2_CB+x(20)))/global_par_WT;

% Reaction: id = VIP_accumulation
	reaction_VIP_accumulation=compartment_cytoplasm*global_par_v_VIP*global_par_f_r^global_par_n_VIP/(global_par_K_VIP+global_par_f_r^global_par_n_VIP);

% Reaction: id = VIP_depletion
	reaction_VIP_depletion=compartment_cytoplasm*global_par_k_dVIP*x(21)^global_par_n_dVIP;

	xdot=zeros(29,1);
	
% Species:   id = Ca_in, name = Ca_in, affected by kineticLaw
	xdot(1) = (1/(compartment_cytoplasm))*(( 0.001 * reaction_vo) + (-0.001 * reaction_v_ca_out) + ( 0.001 * reaction_v1) + (-0.001 * reaction_v2) + ( 0.001 * reaction_v3) + ( 0.001 * reaction_v_Ca_leak));
	
% Species:   id = Ca_store, name = Ca_store, affected by kineticLaw
	xdot(2) = (1/(compartment_store))*(( 0.001 * reaction_v2) + (-0.001 * reaction_v3) + (-0.001 * reaction_v_Ca_leak));
	
% Species:   id = Ca_ex, name = Ca_ex
% Warning species is not changed by either rules or reactions
	xdot(3) = ;
	
% Species:   id = M_P, name = M_P, affected by kineticLaw
	xdot(4) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_MP_transcription) + (-1.0 * reaction_MP_decay));
	
% Species:   id = M_C, name = M_C, affected by kineticLaw
	xdot(5) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_MC_transcription) + (-1.0 * reaction_MC_decay));
	
% Species:   id = M_B, name = M_B, affected by kineticLaw
	xdot(6) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_MB_transcription) + (-1.0 * reaction_MB_decay));
	
% Species:   id = P_C, name = P_C, affected by kineticLaw
	xdot(7) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_PC_translation) + (-1.0 * reaction_PC_degradation) + (-1.0 * reaction_PC_phosphorylation) + (-1.0 * reaction_PCC_formation));
	
% Species:   id = C_C, name = C_C, affected by kineticLaw
	xdot(8) = (1/(compartment_cytoplasm))*((-1.0 * reaction_PCC_formation) + ( 1.0 * reaction_CC_translation) + (-1.0 * reaction_CC_degradation) + (-1.0 * reaction_CC_phosphorylation));
	
% Species:   id = P_CP, name = P_CP, affected by kineticLaw
	xdot(9) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_PC_phosphorylation) + (-1.0 * reaction_PCP_degradation));
	
% Species:   id = C_CP, name = C_CP, affected by kineticLaw
	xdot(10) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_CC_phosphorylation) + (-1.0 * reaction_CCP_degradation));
	
% Species:   id = PC_C, name = PC_C, affected by kineticLaw
	xdot(11) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_PCC_formation) + (-1.0 * reaction_PCC_shuttling) + (-1.0 * reaction_PCC_phosphorylation) + (-1.0 * reaction_PCC_degradation));
	
% Species:   id = PC_N, name = PC_N, affected by kineticLaw
	xdot(12) = (1/(compartment_nucleus))*(( 1.0 * reaction_PCC_shuttling) + (-1.0 * reaction_PCN_phosphorylation) + (-1.0 * reaction_PCN_degradation) + (-1.0 * reaction_IN_formation));
	
% Species:   id = PC_CP, name = PC_CP, affected by kineticLaw
	xdot(13) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_PCC_phosphorylation) + (-1.0 * reaction_PCCP_degradation));
	
% Species:   id = PC_NP, name = PC_NP, affected by kineticLaw
	xdot(14) = (1/(compartment_nucleus))*(( 1.0 * reaction_PCN_phosphorylation) + (-1.0 * reaction_PCNP_degradation));
	
% Species:   id = B_C, name = B_C, affected by kineticLaw
	xdot(15) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_BC_translation) + (-1.0 * reaction_BC_phosphorylation) + (-1.0 * reaction_BC_shuttling) + (-1.0 * reaction_BC_degradation));
	
% Species:   id = B_CP, name = B_CP, affected by kineticLaw
	xdot(16) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_BC_phosphorylation) + (-1.0 * reaction_BCP_degradation));
	
% Species:   id = B_N, name = B_N, affected by kineticLaw
	xdot(17) = (1/(compartment_nucleus))*((-1.0 * reaction_IN_formation) + ( 1.0 * reaction_BC_shuttling) + (-1.0 * reaction_BN_phosphorylation) + (-1.0 * reaction_BN_degradation));
	
% Species:   id = B_NP, name = B_NP, affected by kineticLaw
	xdot(18) = (1/(compartment_nucleus))*(( 1.0 * reaction_BN_phosphorylation) + (-1.0 * reaction_BNP_degradation));
	
% Species:   id = I_N, name = I_N, affected by kineticLaw
	xdot(19) = (1/(compartment_nucleus))*(( 1.0 * reaction_IN_formation) + (-1.0 * reaction_IN_degradation));
	
% Species:   id = CB, name = CB, affected by kineticLaw
	xdot(20) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_CB_activation));
	
% Species:   id = VIP, name = VIP, affected by kineticLaw
	xdot(21) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_VIP_accumulation) + (-1.0 * reaction_VIP_depletion));
	
% Species:   id = Cl_ex, name = Cl_ex
% Warning species is not changed by either rules or reactions
	xdot(22) = ;
	
% Species:   id = Cl_o, name = Cl_o
% Warning species is not changed by either rules or reactions
	xdot(23) = ;
	
% Species:   id = GABA, name = GABA, involved in a rule 	xdot(24) = x(24);
	
% Species:   id = GABA_o, name = GABA_o
% Warning species is not changed by either rules or reactions
	xdot(25) = ;
	
% Species:   id = K_in, name = K_in, involved in a rule 	xdot(26) = x(26);
	
% Species:   id = K_ex, name = K_ex
% Warning species is not changed by either rules or reactions
	xdot(27) = ;
	
% Species:   id = Na_in, name = Na_in, involved in a rule 	xdot(28) = x(28);
	
% Species:   id = Na_ex, name = Na_ex
% Warning species is not changed by either rules or reactions
	xdot(29) = ;
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


