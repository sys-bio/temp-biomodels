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
% Model name = Benson2014 - FAAH inhibitors for the treatment of osteoarthritic pain
%
% is http://identifiers.org/biomodels.db/MODEL1402030000
% is http://identifiers.org/biomodels.db/BIOMD0000000512
% isDescribedBy http://identifiers.org/pubmed/24429592
%


function main()
%Initial conditions vector
	x0=zeros(39,1);
	x0(1) = 0.7493309;
	x0(2) = 20.77858;
	x0(3) = 6.541209;
	x0(4) = 2.319571;
	x0(5) = 3.427807;
	x0(6) = 3.879041E-5;
	x0(7) = 8.814287E-4;
	x0(8) = 1.732296E-4;
	x0(9) = 7.550331E-5;
	x0(10) = 1.272629E-4;
	x0(11) = 15.366;
	x0(12) = 0.0;
	x0(13) = 0.5419204;
	x0(14) = 14.23822;
	x0(15) = 4.121915;
	x0(16) = 1.705466;
	x0(17) = 2.515968;
	x0(18) = 4.241633E-6;
	x0(19) = 9.638198E-5;
	x0(20) = 1.894222E-5;
	x0(21) = 8.256095E-6;
	x0(22) = 1.391587E-5;
	x0(23) = 2.165868;
	x0(24) = 0.0;
	x0(25) = 0.97761;
	x0(26) = 16.3219;
	x0(27) = 5.809415;
	x0(28) = 0.0;
	x0(29) = 2.968774;
	x0(30) = 10.686;
	x0(31) = 0.0;
	x0(32) = 0.8740574;
	x0(33) = 5.085073;
	x0(34) = 4.849307;
	x0(35) = 1.916254;
	x0(36) = 0.273772;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 0.0;


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

% Compartment: id = Default, name = Default, constant
	compartment_Default=1.0;
% Compartment: id = BRAIN, name = BRAIN, constant
	compartment_BRAIN=1.45000004768372;
% Compartment: id = PLASMA, name = PLASMA, constant
	compartment_PLASMA=2.6489999294281;
% Compartment: id = ROB, name = ROB, constant
	compartment_ROB=65.3000030517578;
% Compartment: id = MEC, name = MEC, constant
	compartment_MEC=1.49999996210681E-5;
% Parameter:   id =  AG2_b, name = AG2_b
% Warning parameter AG2_b is not constant, it should be controlled by a Rule and/or events
	global_par_AG2_b=0.0;
% Parameter:   id =  Dose, name = Dose
% Warning parameter Dose is not constant, it should be controlled by a Rule and/or events
	global_par_Dose=10.0;
% Parameter:   id =  ED50, name = ED50
% Warning parameter ED50 is not constant, it should be controlled by a Rule and/or events
	global_par_ED50=0.53;
% Parameter:   id =  Emax_PFM, name = Emax_PFM
% Warning parameter Emax_PFM is not constant, it should be controlled by a Rule and/or events
	global_par_Emax_PFM=0.773;
% Parameter:   id =  FAAH_t, name = FAAH_t
% Warning parameter FAAH_t is not constant, it should be controlled by a Rule and/or events
	global_par_FAAH_t=78.0;
% Parameter:   id =  Gut, name = Gut
% Warning parameter Gut is not constant, it should be controlled by a Rule and/or events
	global_par_Gut=1.65;
% Parameter:   id =  H, name = H
% Warning parameter H is not constant, it should be controlled by a Rule and/or events
	global_par_H=0.48;
% Parameter:   id =  Heart, name = Heart
% Warning parameter Heart is not constant, it should be controlled by a Rule and/or events
	global_par_Heart=0.31;
% Parameter:   id =  Kd_AG2, name = Kd_AG2
% Warning parameter Kd_AG2 is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_AG2=3424.0;
% Parameter:   id =  Kd_CB1_A, name = Kd_CB1_A
% Warning parameter Kd_CB1_A is not constant, it should be controlled by a Rule and/or events
	global_par_Kd_CB1_A=239.2;
% Parameter:   id =  Ki_A, name = Ki_A
% Warning parameter Ki_A is not constant, it should be controlled by a Rule and/or events
	global_par_Ki_A=230.0;
% Parameter:   id =  Ki_L, name = Ki_L
% Warning parameter Ki_L is not constant, it should be controlled by a Rule and/or events
	global_par_Ki_L=1000.0;
% Parameter:   id =  Ki_O, name = Ki_O
% Warning parameter Ki_O is not constant, it should be controlled by a Rule and/or events
	global_par_Ki_O=240.0;
% Parameter:   id =  Ki_P, name = Ki_P
% Warning parameter Ki_P is not constant, it should be controlled by a Rule and/or events
	global_par_Ki_P=6700.0;
% Parameter:   id =  Ki_S, name = Ki_S
% Warning parameter Ki_S is not constant, it should be controlled by a Rule and/or events
	global_par_Ki_S=840.0;
% Parameter:   id =  Kidney, name = Kidney
% Warning parameter Kidney is not constant, it should be controlled by a Rule and/or events
	global_par_Kidney=0.28;
% Parameter:   id =  Km_FAAH_A, name = Km_FAAH_A
% Warning parameter Km_FAAH_A is not constant, it should be controlled by a Rule and/or events
	global_par_Km_FAAH_A=8200.0;
% Parameter:   id =  Km_FAAH_L, name = Km_FAAH_L
% Warning parameter Km_FAAH_L is not constant, it should be controlled by a Rule and/or events
	global_par_Km_FAAH_L=10800.0;
% Parameter:   id =  Km_FAAH_O, name = Km_FAAH_O
% Warning parameter Km_FAAH_O is not constant, it should be controlled by a Rule and/or events
	global_par_Km_FAAH_O=52200.0;
% Parameter:   id =  Km_FAAH_P, name = Km_FAAH_P
% Warning parameter Km_FAAH_P is not constant, it should be controlled by a Rule and/or events
	global_par_Km_FAAH_P=543000.0;
% Parameter:   id =  Km_FAAH_S, name = Km_FAAH_S
% Warning parameter Km_FAAH_S is not constant, it should be controlled by a Rule and/or events
	global_par_Km_FAAH_S=10000.0;
% Parameter:   id =  Km_NA_PE, name = Km_NA_PE
% Warning parameter Km_NA_PE is not constant, it should be controlled by a Rule and/or events
	global_par_Km_NA_PE=2800.0;
% Parameter:   id =  Km_NL_PE, name = Km_NL_PE
% Warning parameter Km_NL_PE is not constant, it should be controlled by a Rule and/or events
	global_par_Km_NL_PE=1000.0;
% Parameter:   id =  Km_NO_PE, name = Km_NO_PE
% Warning parameter Km_NO_PE is not constant, it should be controlled by a Rule and/or events
	global_par_Km_NO_PE=2900.0;
% Parameter:   id =  Km_NP_PE, name = Km_NP_PE
% Warning parameter Km_NP_PE is not constant, it should be controlled by a Rule and/or events
	global_par_Km_NP_PE=3300.0;
% Parameter:   id =  Km_NS_PE, name = Km_NS_PE
% Warning parameter Km_NS_PE is not constant, it should be controlled by a Rule and/or events
	global_par_Km_NS_PE=3400.0;
% Parameter:   id =  Km_PFM, name = Km_PFM
% Warning parameter Km_PFM is not constant, it should be controlled by a Rule and/or events
	global_par_Km_PFM=26.1;
% Parameter:   id =  Km_p_m_A, name = Km_p_m_A
% Warning parameter Km_p_m_A is not constant, it should be controlled by a Rule and/or events
	global_par_Km_p_m_A=1.0;
% Parameter:   id =  Kp_b_PF, name = Kp_b_PF
% Warning parameter Kp_b_PF is not constant, it should be controlled by a Rule and/or events
	global_par_Kp_b_PF=1.3;
% Parameter:   id =  Kp_m_PF, name = Kp_m_PF
% Warning parameter Kp_m_PF is not constant, it should be controlled by a Rule and/or events
	global_par_Kp_m_PF=1.3;
% Parameter:   id =  Kp_r_PF, name = Kp_r_PF
% Warning parameter Kp_r_PF is not constant, it should be controlled by a Rule and/or events
	global_par_Kp_r_PF=1.5;
% Parameter:   id =  Ktr_p_m_A, name = Ktr_p_m_A
% Warning parameter Ktr_p_m_A is not constant, it should be controlled by a Rule and/or events
	global_par_Ktr_p_m_A=1.89;
% Parameter:   id =  Ktr_p_m_L, name = Ktr_p_m_L
% Warning parameter Ktr_p_m_L is not constant, it should be controlled by a Rule and/or events
	global_par_Ktr_p_m_L=2.77;
% Parameter:   id =  Ktr_p_m_O, name = Ktr_p_m_O
% Warning parameter Ktr_p_m_O is not constant, it should be controlled by a Rule and/or events
	global_par_Ktr_p_m_O=9.07;
% Parameter:   id =  Ktr_p_m_P, name = Ktr_p_m_P
% Warning parameter Ktr_p_m_P is not constant, it should be controlled by a Rule and/or events
	global_par_Ktr_p_m_P=2.65;
% Parameter:   id =  Ktr_p_m_S, name = Ktr_p_m_S
% Warning parameter Ktr_p_m_S is not constant, it should be controlled by a Rule and/or events
	global_par_Ktr_p_m_S=30.01;
% Parameter:   id =  Ktr_p_r_A, name = Ktr_p_r_A
% Warning parameter Ktr_p_r_A is not constant, it should be controlled by a Rule and/or events
	global_par_Ktr_p_r_A=0.62;
% Parameter:   id =  Ktr_p_r_L, name = Ktr_p_r_L
% Warning parameter Ktr_p_r_L is not constant, it should be controlled by a Rule and/or events
	global_par_Ktr_p_r_L=0.89;
% Parameter:   id =  Ktr_p_r_O, name = Ktr_p_r_O
% Warning parameter Ktr_p_r_O is not constant, it should be controlled by a Rule and/or events
	global_par_Ktr_p_r_O=2.8;
% Parameter:   id =  Ktr_p_r_P, name = Ktr_p_r_P
% Warning parameter Ktr_p_r_P is not constant, it should be controlled by a Rule and/or events
	global_par_Ktr_p_r_P=0.85;
% Parameter:   id =  Ktr_p_r_S, name = Ktr_p_r_S
% Warning parameter Ktr_p_r_S is not constant, it should be controlled by a Rule and/or events
	global_par_Ktr_p_r_S=9.19;
% Parameter:   id =  LEU, name = LEU
% Warning parameter LEU is not constant, it should be controlled by a Rule and/or events
	global_par_LEU=0.025;
% Parameter:   id =  LIVER, name = LIVER
% Warning parameter LIVER is not constant, it should be controlled by a Rule and/or events
	global_par_LIVER=1.69;
% Parameter:   id =  Leucocytes, name = Leucocytes
% Warning parameter Leucocytes is not constant, it should be controlled by a Rule and/or events
	global_par_Leucocytes=0.025;
% Parameter:   id =  Lungs, name = Lungs
% Warning parameter Lungs is not constant, it should be controlled by a Rule and/or events
	global_par_Lungs=1.172;
% Parameter:   id =  M_A, name = M_A
% Warning parameter M_A is not constant, it should be controlled by a Rule and/or events
	global_par_M_A=347.5;
% Parameter:   id =  M_L, name = M_L
% Warning parameter M_L is not constant, it should be controlled by a Rule and/or events
	global_par_M_L=323.5;
% Parameter:   id =  M_O, name = M_O
% Warning parameter M_O is not constant, it should be controlled by a Rule and/or events
	global_par_M_O=325.5;
% Parameter:   id =  M_P, name = M_P
% Warning parameter M_P is not constant, it should be controlled by a Rule and/or events
	global_par_M_P=299.5;
% Parameter:   id =  M_PF, name = M_PF
% Warning parameter M_PF is not constant, it should be controlled by a Rule and/or events
	global_par_M_PF=455.4;
% Parameter:   id =  M_S, name = M_S
% Warning parameter M_S is not constant, it should be controlled by a Rule and/or events
	global_par_M_S=321.5;
% Parameter:   id =  Muscles, name = Muscles
% Warning parameter Muscles is not constant, it should be controlled by a Rule and/or events
	global_par_Muscles=35.0;
% Parameter:   id =  PLD_b, name = PLD_b
% Warning parameter PLD_b is not constant, it should be controlled by a Rule and/or events
	global_par_PLD_b=1.0E7;
% Parameter:   id =  PLD_r, name = PLD_r
% Warning parameter PLD_r is not constant, it should be controlled by a Rule and/or events
	global_par_PLD_r=1.0E7;
% Parameter:   id =  Pancreas, name = Pancreas
% Warning parameter Pancreas is not constant, it should be controlled by a Rule and/or events
	global_par_Pancreas=0.077;
% Parameter:   id =  R_PF, name = R_PF
% Warning parameter R_PF is not constant, it should be controlled by a Rule and/or events
	global_par_R_PF=0.6;
% Parameter:   id =  Spleen, name = Spleen
% Warning parameter Spleen is not constant, it should be controlled by a Rule and/or events
	global_par_Spleen=0.192;
% Parameter:   id =  Testis, name = Testis
% Warning parameter Testis is not constant, it should be controlled by a Rule and/or events
	global_par_Testis=0.036;
% Parameter:   id =  Thymus, name = Thymus
% Warning parameter Thymus is not constant, it should be controlled by a Rule and/or events
	global_par_Thymus=0.029;
% Parameter:   id =  Vm_PFM, name = Vm_PFM
% Warning parameter Vm_PFM is not constant, it should be controlled by a Rule and/or events
	global_par_Vm_PFM=1511.0;
% Parameter:   id =  Vmax_NAT, name = Vmax_NAT
% Warning parameter Vmax_NAT is not constant, it should be controlled by a Rule and/or events
	global_par_Vmax_NAT=300.0;
% Parameter:   id =  Vss_PFM, name = Vss_PFM
% Warning parameter Vss_PFM is not constant, it should be controlled by a Rule and/or events
	global_par_Vss_PFM=58.328;
% Parameter:   id =  a_FAAH_A, name = a_FAAH_A
% Warning parameter a_FAAH_A is not constant, it should be controlled by a Rule and/or events
	global_par_a_FAAH_A=1.0;
% Parameter:   id =  a_FAAH_L, name = a_FAAH_L
% Warning parameter a_FAAH_L is not constant, it should be controlled by a Rule and/or events
	global_par_a_FAAH_L=1.15;
% Parameter:   id =  a_FAAH_O, name = a_FAAH_O
% Warning parameter a_FAAH_O is not constant, it should be controlled by a Rule and/or events
	global_par_a_FAAH_O=5.7;
% Parameter:   id =  a_FAAH_P, name = a_FAAH_P
% Warning parameter a_FAAH_P is not constant, it should be controlled by a Rule and/or events
	global_par_a_FAAH_P=37.8;
% Parameter:   id =  a_FAAH_S, name = a_FAAH_S
% Warning parameter a_FAAH_S is not constant, it should be controlled by a Rule and/or events
	global_par_a_FAAH_S=1.0;
% Parameter:   id =  a_NAT_A, name = a_NAT_A
% Warning parameter a_NAT_A is not constant, it should be controlled by a Rule and/or events
	global_par_a_NAT_A=1.0;
% Parameter:   id =  a_NAT_L, name = a_NAT_L
% Warning parameter a_NAT_L is not constant, it should be controlled by a Rule and/or events
	global_par_a_NAT_L=8.6;
% Parameter:   id =  a_NAT_O, name = a_NAT_O
% Warning parameter a_NAT_O is not constant, it should be controlled by a Rule and/or events
	global_par_a_NAT_O=13.0;
% Parameter:   id =  a_NAT_P, name = a_NAT_P
% Warning parameter a_NAT_P is not constant, it should be controlled by a Rule and/or events
	global_par_a_NAT_P=0.42;
% Parameter:   id =  a_NAT_S, name = a_NAT_S
% Warning parameter a_NAT_S is not constant, it should be controlled by a Rule and/or events
	global_par_a_NAT_S=1.0;
% Parameter:   id =  b_FAAH_Brain, name = b_FAAH_Brain
% Warning parameter b_FAAH_Brain is not constant, it should be controlled by a Rule and/or events
	global_par_b_FAAH_Brain=0.197;
% Parameter:   id =  b_FAAH_Gut, name = b_FAAH_Gut
% Warning parameter b_FAAH_Gut is not constant, it should be controlled by a Rule and/or events
	global_par_b_FAAH_Gut=0.034;
% Parameter:   id =  b_FAAH_Kidney, name = b_FAAH_Kidney
% Warning parameter b_FAAH_Kidney is not constant, it should be controlled by a Rule and/or events
	global_par_b_FAAH_Kidney=0.069;
% Parameter:   id =  b_FAAH_Leucocytes, name = b_FAAH_Leucocytes
% Warning parameter b_FAAH_Leucocytes is not constant, it should be controlled by a Rule and/or events
	global_par_b_FAAH_Leucocytes=0.0;
% Parameter:   id =  b_FAAH_Liver, name = b_FAAH_Liver
% Warning parameter b_FAAH_Liver is not constant, it should be controlled by a Rule and/or events
	global_par_b_FAAH_Liver=1.0;
% Parameter:   id =  b_FAAH_Lungs, name = b_FAAH_Lungs
% Warning parameter b_FAAH_Lungs is not constant, it should be controlled by a Rule and/or events
	global_par_b_FAAH_Lungs=0.032;
% Parameter:   id =  b_FAAH_MEC, name = b_FAAH_MEC
% Warning parameter b_FAAH_MEC is not constant, it should be controlled by a Rule and/or events
	global_par_b_FAAH_MEC=0.137;
% Parameter:   id =  b_FAAH_Spleen, name = b_FAAH_Spleen
% Warning parameter b_FAAH_Spleen is not constant, it should be controlled by a Rule and/or events
	global_par_b_FAAH_Spleen=0.03;
% Parameter:   id =  b_FAAH_Testis, name = b_FAAH_Testis
% Warning parameter b_FAAH_Testis is not constant, it should be controlled by a Rule and/or events
	global_par_b_FAAH_Testis=0.126;
% Parameter:   id =  b_NAAA_Brain, name = b_NAAA_Brain
% Warning parameter b_NAAA_Brain is not constant, it should be controlled by a Rule and/or events
	global_par_b_NAAA_Brain=0.6;
% Parameter:   id =  b_NAAA_Gut, name = b_NAAA_Gut
% Warning parameter b_NAAA_Gut is not constant, it should be controlled by a Rule and/or events
	global_par_b_NAAA_Gut=0.2;
% Parameter:   id =  b_NAAA_Heart, name = b_NAAA_Heart
% Warning parameter b_NAAA_Heart is not constant, it should be controlled by a Rule and/or events
	global_par_b_NAAA_Heart=0.2;
% Parameter:   id =  b_NAAA_Kidney, name = b_NAAA_Kidney
% Warning parameter b_NAAA_Kidney is not constant, it should be controlled by a Rule and/or events
	global_par_b_NAAA_Kidney=0.6;
% Parameter:   id =  b_NAAA_Liver, name = b_NAAA_Liver
% Warning parameter b_NAAA_Liver is not constant, it should be controlled by a Rule and/or events
	global_par_b_NAAA_Liver=1.0;
% Parameter:   id =  b_NAAA_Lungs, name = b_NAAA_Lungs
% Warning parameter b_NAAA_Lungs is not constant, it should be controlled by a Rule and/or events
	global_par_b_NAAA_Lungs=14.0;
% Parameter:   id =  b_NAAA_Spleen, name = b_NAAA_Spleen
% Warning parameter b_NAAA_Spleen is not constant, it should be controlled by a Rule and/or events
	global_par_b_NAAA_Spleen=8.0;
% Parameter:   id =  b_NAAA_Testis, name = b_NAAA_Testis
% Warning parameter b_NAAA_Testis is not constant, it should be controlled by a Rule and/or events
	global_par_b_NAAA_Testis=0.6;
% Parameter:   id =  b_NAAA_Thymus, name = b_NAAA_Thymus
% Warning parameter b_NAAA_Thymus is not constant, it should be controlled by a Rule and/or events
	global_par_b_NAAA_Thymus=4.0;
% Parameter:   id =  b_NAT_Brain, name = b_NAT_Brain
% Warning parameter b_NAT_Brain is not constant, it should be controlled by a Rule and/or events
	global_par_b_NAT_Brain=1.667;
% Parameter:   id =  b_NAT_Heart, name = b_NAT_Heart
% Warning parameter b_NAT_Heart is not constant, it should be controlled by a Rule and/or events
	global_par_b_NAT_Heart=1.0;
% Parameter:   id =  b_NAT_Kidney, name = b_NAT_Kidney
% Warning parameter b_NAT_Kidney is not constant, it should be controlled by a Rule and/or events
	global_par_b_NAT_Kidney=0.667;
% Parameter:   id =  b_NAT_Leucocytes, name = b_NAT_Leucocytes
% Warning parameter b_NAT_Leucocytes is not constant, it should be controlled by a Rule and/or events
	global_par_b_NAT_Leucocytes=0.0;
% Parameter:   id =  b_NAT_Lungs, name = b_NAT_Lungs
% Warning parameter b_NAT_Lungs is not constant, it should be controlled by a Rule and/or events
	global_par_b_NAT_Lungs=0.033;
% Parameter:   id =  b_NAT_Muscles, name = b_NAT_Muscles
% Warning parameter b_NAT_Muscles is not constant, it should be controlled by a Rule and/or events
	global_par_b_NAT_Muscles=0.333;
% Parameter:   id =  b_NAT_Pancreas, name = b_NAT_Pancreas
% Warning parameter b_NAT_Pancreas is not constant, it should be controlled by a Rule and/or events
	global_par_b_NAT_Pancreas=0.333;
% Parameter:   id =  b_NAT_Testis, name = b_NAT_Testis
% Warning parameter b_NAT_Testis is not constant, it should be controlled by a Rule and/or events
	global_par_b_NAT_Testis=0.667;
% Parameter:   id =  e1, name = e1
	global_par_e1=0.0;
% Parameter:   id =  k_NA_PE, name = k_NA_PE
% Warning parameter k_NA_PE is not constant, it should be controlled by a Rule and/or events
	global_par_k_NA_PE=202.0;
% Parameter:   id =  k_NL_PE, name = k_NL_PE
% Warning parameter k_NL_PE is not constant, it should be controlled by a Rule and/or events
	global_par_k_NL_PE=100.0;
% Parameter:   id =  k_NO_PE, name = k_NO_PE
% Warning parameter k_NO_PE is not constant, it should be controlled by a Rule and/or events
	global_par_k_NO_PE=230.0;
% Parameter:   id =  k_NP_PE, name = k_NP_PE
% Warning parameter k_NP_PE is not constant, it should be controlled by a Rule and/or events
	global_par_k_NP_PE=270.0;
% Parameter:   id =  k_NS_PE, name = k_NS_PE
% Warning parameter k_NS_PE is not constant, it should be controlled by a Rule and/or events
	global_par_k_NS_PE=280.0;
% Parameter:   id =  k_deg_FAAH, name = k_deg_FAAH
% Warning parameter k_deg_FAAH is not constant, it should be controlled by a Rule and/or events
	global_par_k_deg_FAAH=0.0051;
% Parameter:   id =  k_inh, name = k_inh
% Warning parameter k_inh is not constant, it should be controlled by a Rule and/or events
	global_par_k_inh=1.1;
% Parameter:   id =  kabs_PFM, name = kabs_PFM
% Warning parameter kabs_PFM is not constant, it should be controlled by a Rule and/or events
	global_par_kabs_PFM=2.2;
% Parameter:   id =  kcat_FAAH, name = kcat_FAAH
% Warning parameter kcat_FAAH is not constant, it should be controlled by a Rule and/or events
	global_par_kcat_FAAH=18000.0;
% Parameter:   id =  kcl_A, name = kcl_A
% Warning parameter kcl_A is not constant, it should be controlled by a Rule and/or events
	global_par_kcl_A=1.74;
% Parameter:   id =  kcl_L, name = kcl_L
% Warning parameter kcl_L is not constant, it should be controlled by a Rule and/or events
	global_par_kcl_L=1.25;
% Parameter:   id =  kcl_O, name = kcl_O
% Warning parameter kcl_O is not constant, it should be controlled by a Rule and/or events
	global_par_kcl_O=2.5;
% Parameter:   id =  kcl_P, name = kcl_P
% Warning parameter kcl_P is not constant, it should be controlled by a Rule and/or events
	global_par_kcl_P=2.61;
% Parameter:   id =  kcl_S, name = kcl_S
% Warning parameter kcl_S is not constant, it should be controlled by a Rule and/or events
	global_par_kcl_S=1.2;
% Parameter:   id =  kin_PFM, name = kin_PFM
% Warning parameter kin_PFM is not constant, it should be controlled by a Rule and/or events
	global_par_kin_PFM=0.117;
% Parameter:   id =  klinear_PFM, name = klinear_PFM
% Warning parameter klinear_PFM is not constant, it should be controlled by a Rule and/or events
	global_par_klinear_PFM=0.0803;
% Parameter:   id =  kout_PFM, name = kout_PFM
% Warning parameter kout_PFM is not constant, it should be controlled by a Rule and/or events
	global_par_kout_PFM=0.18;
% Parameter:   id =  ktr_m_p_A, name = ktr_m_p_A
% Warning parameter ktr_m_p_A is not constant, it should be controlled by a Rule and/or events
	global_par_ktr_m_p_A=150.0;
% Parameter:   id =  ktr_m_p_L, name = ktr_m_p_L
% Warning parameter ktr_m_p_L is not constant, it should be controlled by a Rule and/or events
	global_par_ktr_m_p_L=0.0;
% Parameter:   id =  ktr_m_p_O, name = ktr_m_p_O
% Warning parameter ktr_m_p_O is not constant, it should be controlled by a Rule and/or events
	global_par_ktr_m_p_O=10.0;
% Parameter:   id =  ktr_m_p_P, name = ktr_m_p_P
% Warning parameter ktr_m_p_P is not constant, it should be controlled by a Rule and/or events
	global_par_ktr_m_p_P=10.0;
% Parameter:   id =  ktr_m_p_S, name = ktr_m_p_S
% Warning parameter ktr_m_p_S is not constant, it should be controlled by a Rule and/or events
	global_par_ktr_m_p_S=10.0;
% Parameter:   id =  ktr_r_p, name = ktr_r_p
% Warning parameter ktr_r_p is not constant, it should be controlled by a Rule and/or events
	global_par_ktr_r_p=100.0;
% Parameter:   id =  p_A, name = p_A
% Warning parameter p_A is not constant, it should be controlled by a Rule and/or events
	global_par_p_A=0.051;
% Parameter:   id =  p_L, name = p_L
% Warning parameter p_L is not constant, it should be controlled by a Rule and/or events
	global_par_p_L=0.016;
% Parameter:   id =  p_O, name = p_O
% Warning parameter p_O is not constant, it should be controlled by a Rule and/or events
	global_par_p_O=0.098;
% Parameter:   id =  p_P, name = p_P
% Warning parameter p_P is not constant, it should be controlled by a Rule and/or events
	global_par_p_P=0.615;
% Parameter:   id =  p_S, name = p_S
% Warning parameter p_S is not constant, it should be controlled by a Rule and/or events
	global_par_p_S=0.191;
% Parameter:   id =  t, name = t
	global_par_t=0.0;
% Parameter:   id =  F_PFM, name = F_PFM
% Parameter:   id =  MD, name = MD
% Parameter:   id =  PF_p, name = PF_p
% Parameter:   id =  PF_b, name = PF_b
% Parameter:   id =  PF_r, name = PF_r
% Parameter:   id =  PF_m, name = PF_m
% Parameter:   id =  FAAH_D_b, name = FAAH_D_b
% Parameter:   id =  slag1_b, name = slag1_b
% Parameter:   id =  slag2_b, name = slag2_b
% Parameter:   id =  den_b, name = den_b
% Parameter:   id =  FAAH_D_r, name = FAAH_D_r
% Parameter:   id =  c_NAT_ROB, name = c_NAT_ROB
% Parameter:   id =  slag1_r, name = slag1_r
% Parameter:   id =  slag2_r, name = slag2_r
% Parameter:   id =  den_r, name = den_r
% Parameter:   id =  c_FAAH_ROB, name = c_FAAH_ROB
% Parameter:   id =  c_NAAA_ROB, name = c_NAAA_ROB
% Parameter:   id =  FAAH_D_m, name = FAAH_D_m
% Parameter:   id =  F_r, name = F_r
% Parameter:   id =  PFG_p, name = PFG_p
% Parameter:   id =  AG_p, name = AG_p
% Parameter:   id =  OG_p, name = OG_p
% Parameter:   id =  PG_p, name = PG_p
% Parameter:   id =  LG_p, name = LG_p
% Parameter:   id =  SG_p, name = SG_p
% Parameter:   id =  CB1_b, name = CB1_b
% Parameter:   id =  tid, name = tid
% assignmentRule: variable = F_PFM
	global_par_F_PFM=global_par_Emax_PFM*global_par_Dose/(global_par_ED50+global_par_Dose);
% assignmentRule: variable = MD
	global_par_MD=x(37)+1E6*global_par_Dose*global_par_F_PFM;
% assignmentRule: variable = PF_p
	global_par_PF_p=1.0/global_par_M_PF*x(38)/global_par_Vss_PFM;
% assignmentRule: variable = PF_b
	global_par_PF_b=global_par_PF_p*global_par_Kp_b_PF;
% assignmentRule: variable = PF_r
	global_par_PF_r=global_par_PF_p*global_par_Kp_r_PF;
% assignmentRule: variable = PF_m
	global_par_PF_m=global_par_PF_p*global_par_Kp_m_PF;
% assignmentRule: variable = FAAH_D_b
	global_par_FAAH_D_b=1.0+x(1)/global_par_Km_FAAH_A+x(2)/global_par_Km_FAAH_O+x(3)/global_par_Km_FAAH_P+x(4)/global_par_Km_FAAH_L+x(5)/global_par_Km_FAAH_S;
% assignmentRule: variable = slag1_b
	global_par_slag1_b=x(6)/global_par_Km_NA_PE+x(7)/global_par_Km_NO_PE+x(8)/global_par_Km_NP_PE+x(9)/global_par_Km_NL_PE+x(10)/global_par_Km_NS_PE;
% assignmentRule: variable = slag2_b
	global_par_slag2_b=x(1)/global_par_Ki_A+x(2)/global_par_Ki_O+x(3)/global_par_Ki_P+x(4)/global_par_Ki_L+x(5)/global_par_Ki_S;
% assignmentRule: variable = den_b
	global_par_den_b=1.0+global_par_slag1_b+global_par_slag2_b;
% assignmentRule: variable = FAAH_D_r
	global_par_FAAH_D_r=1.0+x(13)/global_par_Km_FAAH_A+x(14)/global_par_Km_FAAH_O+x(15)/global_par_Km_FAAH_P+x(16)/global_par_Km_FAAH_L+x(17)/global_par_Km_FAAH_S;
% assignmentRule: variable = c_NAT_ROB
	global_par_c_NAT_ROB=global_par_Pancreas*global_par_b_NAT_Pancreas+global_par_Kidney*global_par_b_NAT_Kidney+global_par_Heart*global_par_b_NAT_Heart+global_par_Lungs*global_par_b_NAT_Lungs+global_par_Muscles*global_par_b_NAT_Muscles+global_par_Testis*global_par_b_NAT_Testis+global_par_Leucocytes*global_par_b_NAT_Leucocytes;
% assignmentRule: variable = slag1_r
	global_par_slag1_r=x(18)/global_par_Km_NA_PE+x(19)/global_par_Km_NO_PE+x(20)/global_par_Km_NP_PE+x(21)/global_par_Km_NL_PE+x(22)/global_par_Km_NS_PE;
% assignmentRule: variable = slag2_r
	global_par_slag2_r=x(13)/global_par_Ki_A+x(14)/global_par_Ki_O+x(15)/global_par_Ki_P+x(16)/global_par_Ki_L+x(17)/global_par_Ki_S;
% assignmentRule: variable = den_r
	global_par_den_r=1.0+global_par_slag1_r+global_par_slag2_r;
% assignmentRule: variable = c_FAAH_ROB
	global_par_c_FAAH_ROB=global_par_LIVER*global_par_b_FAAH_Liver+global_par_Gut*global_par_b_FAAH_Gut+global_par_Spleen*global_par_b_FAAH_Spleen+global_par_Kidney*global_par_b_FAAH_Kidney+global_par_Lungs*global_par_b_FAAH_Lungs+global_par_Testis*global_par_b_FAAH_Testis+global_par_Leucocytes*global_par_b_FAAH_Leucocytes;
% assignmentRule: variable = c_NAAA_ROB
	global_par_c_NAAA_ROB=global_par_LIVER*global_par_b_NAAA_Liver+global_par_Gut*global_par_b_NAAA_Gut+global_par_Spleen*global_par_b_NAAA_Spleen+global_par_Kidney*global_par_b_NAAA_Kidney+global_par_Heart*global_par_b_NAAA_Heart+global_par_Lungs*global_par_b_NAAA_Lungs+global_par_Thymus*global_par_b_NAAA_Thymus+global_par_Testis*global_par_b_NAAA_Thymus*global_par_Testis;
% assignmentRule: variable = FAAH_D_m
	global_par_FAAH_D_m=1.0+x(25)/global_par_Km_FAAH_A+x(26)/global_par_Km_FAAH_O+x(27)/global_par_Km_FAAH_P+x(28)/global_par_Km_FAAH_L+x(29)/global_par_Km_FAAH_S;
% assignmentRule: variable = F_r
	global_par_F_r=1.5E3*x(23)/(x(24)+x(23));
% assignmentRule: variable = PFG_p
	global_par_PFG_p=1E-3*x(38)/global_par_Vss_PFM;
% assignmentRule: variable = AG_p
	global_par_AG_p=1E-3*x(32)*global_par_M_A;
% assignmentRule: variable = OG_p
	global_par_OG_p=1E-3*x(33)*global_par_M_O;
% assignmentRule: variable = PG_p
	global_par_PG_p=1E-3*x(34)*global_par_M_P;
% assignmentRule: variable = LG_p
	global_par_LG_p=1E-3*x(35)*global_par_M_L;
% assignmentRule: variable = SG_p
	global_par_SG_p=1E-3*x(36)*global_par_M_S;
% assignmentRule: variable = CB1_b
	global_par_CB1_b=(x(1)/global_par_Kd_CB1_A+global_par_AG2_b/global_par_Kd_AG2)/(1.0+x(1)/global_par_Kd_CB1_A+global_par_AG2_b/global_par_Kd_AG2);
% assignmentRule: variable = tid
	global_par_tid=global_par_t/2.4E1;

% Reaction: id = vA_degr_b, name = vA_degr_b
	reaction_vA_degr_b=compartment_BRAIN*x(11)*global_par_kcat_FAAH*global_par_a_FAAH_A*x(1)/(global_par_Km_FAAH_A*global_par_FAAH_D_b);

% Reaction: id = vO_degr_b, name = vO_degr_b
	reaction_vO_degr_b=compartment_BRAIN*x(11)*global_par_kcat_FAAH*global_par_a_FAAH_O*x(2)/(global_par_Km_FAAH_O*global_par_FAAH_D_b);

% Reaction: id = vP_degr_b, name = vP_degr_b
	reaction_vP_degr_b=compartment_BRAIN*x(11)*global_par_kcat_FAAH*global_par_a_FAAH_P*x(3)/(global_par_Km_FAAH_P*global_par_FAAH_D_b);

% Reaction: id = vL_degr_b, name = vL_degr_b
	reaction_vL_degr_b=compartment_BRAIN*x(11)*global_par_kcat_FAAH*global_par_a_FAAH_L*x(4)/(global_par_Km_FAAH_L*global_par_FAAH_D_b);

% Reaction: id = vS_degr_b, name = vS_degr_b
	reaction_vS_degr_b=compartment_BRAIN*x(11)*global_par_kcat_FAAH*global_par_a_FAAH_S*x(5)/(global_par_Km_FAAH_S*global_par_FAAH_D_b);

% Reaction: id = vNAPE_syn_b, name = vNAPE_syn_b
	reaction_vNAPE_syn_b=compartment_BRAIN*global_par_Vmax_NAT*global_par_p_A*global_par_a_NAT_A*global_par_b_NAT_Brain;

% Reaction: id = vNOPE_syn_b, name = vNOPE_syn_b
	reaction_vNOPE_syn_b=compartment_BRAIN*global_par_Vmax_NAT*global_par_p_O*global_par_a_NAT_O*global_par_b_NAT_Brain;

% Reaction: id = vNPPE_syn_b, name = vNPPE_syn_b
	reaction_vNPPE_syn_b=compartment_BRAIN*global_par_Vmax_NAT*global_par_p_P*global_par_a_NAT_P*global_par_b_NAT_Brain;

% Reaction: id = vNLPE_syn_b, name = vNLPE_syn_b
	reaction_vNLPE_syn_b=compartment_BRAIN*global_par_Vmax_NAT*global_par_p_L*global_par_a_NAT_L*global_par_b_NAT_Brain;

% Reaction: id = vNSPE_syn_b, name = vNSPE_syn_b
	reaction_vNSPE_syn_b=compartment_BRAIN*global_par_Vmax_NAT*global_par_p_S*global_par_a_NAT_S*global_par_b_NAT_Brain;

% Reaction: id = vA_syn_b, name = vA_syn_b
	reaction_vA_syn_b=compartment_BRAIN*global_par_PLD_b*global_par_k_NA_PE*x(6)/global_par_Km_NA_PE/global_par_den_b;

% Reaction: id = vO_syn_b, name = vO_syn_b
	reaction_vO_syn_b=compartment_BRAIN*global_par_PLD_b*global_par_k_NO_PE*x(7)/global_par_Km_NO_PE/global_par_den_b;

% Reaction: id = vP_syn_b, name = vP_syn_b
	reaction_vP_syn_b=compartment_BRAIN*global_par_PLD_b*global_par_k_NP_PE*x(8)/global_par_Km_NP_PE/global_par_den_b;

% Reaction: id = vL_syn_b, name = vL_syn_b
	reaction_vL_syn_b=compartment_BRAIN*global_par_PLD_b*global_par_k_NL_PE*x(9)/global_par_Km_NL_PE/global_par_den_b;

% Reaction: id = vS_syn_b, name = vS_syn_b
	reaction_vS_syn_b=compartment_BRAIN*global_par_PLD_b*global_par_k_NS_PE*x(10)/global_par_Km_NS_PE/global_par_den_b;

% Reaction: id = vFAAH_syn_b, name = vFAAH_syn_b
	reaction_vFAAH_syn_b=compartment_BRAIN*global_par_FAAH_t*global_par_b_FAAH_Brain*global_par_k_deg_FAAH;

% Reaction: id = vFAAH_degr_b, name = vFAAH_degr_b
	reaction_vFAAH_degr_b=compartment_BRAIN*global_par_k_deg_FAAH*x(11);

% Reaction: id = vFAAH_inh_b, name = vFAAH_inh_b
	reaction_vFAAH_inh_b=compartment_BRAIN*global_par_k_inh*x(11)*global_par_PF_b;

% Reaction: id = vFAAH_inh_degr_b, name = vFAAH_inh_degr_b
	reaction_vFAAH_inh_degr_b=compartment_BRAIN*global_par_k_deg_FAAH*x(12);

% Reaction: id = vA_UE_b, name = vA_UE_b
	reaction_vA_UE_b=compartment_BRAIN*global_par_b_FAAH_Brain*global_par_kcl_A*x(1);

% Reaction: id = vO_UE_b, name = vO_UE_b
	reaction_vO_UE_b=compartment_BRAIN*global_par_b_FAAH_Brain*global_par_kcl_O*x(2);

% Reaction: id = vP_UE_b, name = vP_UE_b
	reaction_vP_UE_b=compartment_BRAIN*global_par_b_FAAH_Brain*global_par_kcl_P*x(3);

% Reaction: id = vL_UE_b, name = vL_UE_b
	reaction_vL_UE_b=compartment_BRAIN*global_par_b_FAAH_Brain*global_par_kcl_L*x(4);

% Reaction: id = vS_UE_b, name = vS_UE_b
	reaction_vS_UE_b=compartment_BRAIN*global_par_b_FAAH_Brain*global_par_kcl_S*x(5);

% Reaction: id = vA_degr_r, name = vA_degr_r
	reaction_vA_degr_r=compartment_ROB*x(23)*global_par_kcat_FAAH*global_par_a_FAAH_A*x(13)/(global_par_Km_FAAH_A*global_par_FAAH_D_r);

% Reaction: id = vO_degr_r, name = vO_degr_r
	reaction_vO_degr_r=compartment_ROB*x(23)*global_par_kcat_FAAH*global_par_a_FAAH_O*x(14)/(global_par_Km_FAAH_O*global_par_FAAH_D_r);

% Reaction: id = vP_degr_r, name = vP_degr_r
	reaction_vP_degr_r=compartment_ROB*x(23)*global_par_kcat_FAAH*global_par_a_FAAH_P*x(15)/(global_par_Km_FAAH_P*global_par_FAAH_D_r);

% Reaction: id = vL_degr_r, name = vL_degr_r
	reaction_vL_degr_r=compartment_ROB*x(23)*global_par_kcat_FAAH*global_par_a_FAAH_L*x(16)/(global_par_Km_FAAH_L*global_par_FAAH_D_r);

% Reaction: id = vS_degr_r, name = vS_degr_r
	reaction_vS_degr_r=compartment_ROB*x(23)*global_par_kcat_FAAH*global_par_a_FAAH_S*x(17)/(global_par_Km_FAAH_S*global_par_FAAH_D_r);

% Reaction: id = vNAPE_syn_r, name = vNAPE_syn_r
	reaction_vNAPE_syn_r=global_par_Vmax_NAT*global_par_p_A*global_par_a_NAT_A*global_par_c_NAT_ROB;

% Reaction: id = vNOPE_syn_r, name = vNOPE_syn_r
	reaction_vNOPE_syn_r=global_par_Vmax_NAT*global_par_p_O*global_par_a_NAT_O*global_par_c_NAT_ROB;

% Reaction: id = vNPPE_syn_r, name = vNPPE_syn_r
	reaction_vNPPE_syn_r=global_par_Vmax_NAT*global_par_p_P*global_par_a_NAT_P*global_par_c_NAT_ROB;

% Reaction: id = vNLPE_syn_r, name = vNLPE_syn_r
	reaction_vNLPE_syn_r=global_par_Vmax_NAT*global_par_p_L*global_par_a_NAT_L*global_par_c_NAT_ROB;

% Reaction: id = vNSPE_syn_r, name = vNSPE_syn_r
	reaction_vNSPE_syn_r=global_par_Vmax_NAT*global_par_p_S*global_par_a_NAT_S*global_par_c_NAT_ROB;

% Reaction: id = vA_syn_r, name = vA_syn_r
	reaction_vA_syn_r=compartment_ROB*global_par_PLD_r*global_par_k_NA_PE*x(18)/global_par_Km_NA_PE/global_par_den_r;

% Reaction: id = vO_syn_r, name = vO_syn_r
	reaction_vO_syn_r=compartment_ROB*global_par_PLD_r*global_par_k_NO_PE*x(19)/global_par_Km_NO_PE/global_par_den_r;

% Reaction: id = vP_syn_r, name = vP_syn_r
	reaction_vP_syn_r=compartment_ROB*global_par_PLD_r*global_par_k_NP_PE*x(20)/global_par_Km_NP_PE/global_par_den_r;

% Reaction: id = vL_syn_r, name = vL_syn_r
	reaction_vL_syn_r=compartment_ROB*global_par_PLD_r*global_par_k_NL_PE*x(21)/global_par_Km_NL_PE/global_par_den_r;

% Reaction: id = vS_syn_r, name = vS_syn_r
	reaction_vS_syn_r=compartment_ROB*global_par_PLD_r*global_par_k_NS_PE*x(22)/global_par_Km_NS_PE/global_par_den_r;

% Reaction: id = vFAAH_syn_r, name = vFAAH_syn_r
	reaction_vFAAH_syn_r=global_par_FAAH_t*global_par_c_FAAH_ROB*global_par_k_deg_FAAH;

% Reaction: id = vFAAH_degr_r, name = vFAAH_degr_r
	reaction_vFAAH_degr_r=compartment_ROB*global_par_k_deg_FAAH*x(23);

% Reaction: id = vFAAH_inh_r, name = vFAAH_inh_r
	reaction_vFAAH_inh_r=compartment_ROB*global_par_k_inh*x(23)*global_par_PF_r;

% Reaction: id = vFAAH_inh_degr_r, name = vFAAH_inh_degr_r
	reaction_vFAAH_inh_degr_r=compartment_ROB*global_par_k_deg_FAAH*x(24);

% Reaction: id = vA_UE_r, name = vA_UE_r
	reaction_vA_UE_r=global_par_c_NAAA_ROB*global_par_kcl_A*x(13);

% Reaction: id = vO_UE_r, name = vO_UE_r
	reaction_vO_UE_r=global_par_c_NAAA_ROB*global_par_kcl_O*x(14);

% Reaction: id = vP_UE_r, name = vP_UE_r
	reaction_vP_UE_r=global_par_c_NAAA_ROB*global_par_kcl_P*x(15);

% Reaction: id = vL_UE_r, name = vL_UE_r
	reaction_vL_UE_r=global_par_c_NAAA_ROB*global_par_kcl_L*x(16);

% Reaction: id = vS_UE_r, name = vS_UE_r
	reaction_vS_UE_r=global_par_c_NAAA_ROB*global_par_kcl_S*x(17);

% Reaction: id = vA_degr_m, name = vA_degr_m
	reaction_vA_degr_m=compartment_MEC*x(30)*global_par_kcat_FAAH*global_par_a_FAAH_A*x(25)/(global_par_Km_FAAH_A*global_par_FAAH_D_m);

% Reaction: id = vO_degr_m, name = vO_degr_m
	reaction_vO_degr_m=compartment_MEC*x(30)*global_par_kcat_FAAH*global_par_a_FAAH_O*x(26)/(global_par_Km_FAAH_O*global_par_FAAH_D_m);

% Reaction: id = vP_degr_m, name = vP_degr_m
	reaction_vP_degr_m=compartment_MEC*x(30)*global_par_kcat_FAAH*global_par_a_FAAH_P*x(27)/(global_par_Km_FAAH_P*global_par_FAAH_D_m);

% Reaction: id = vL_degr_m, name = vL_degr_m
	reaction_vL_degr_m=compartment_MEC*x(30)*global_par_kcat_FAAH*global_par_a_FAAH_L*x(28)/(global_par_Km_FAAH_L*global_par_FAAH_D_m);

% Reaction: id = vS_degr_m, name = vS_degr_m
	reaction_vS_degr_m=compartment_MEC*x(30)*global_par_kcat_FAAH*global_par_a_FAAH_S*x(29)/(global_par_Km_FAAH_S*global_par_FAAH_D_m);

% Reaction: id = vFAAH_syn_m, name = vFAAH_syn_m
	reaction_vFAAH_syn_m=compartment_MEC*global_par_FAAH_t*global_par_b_FAAH_MEC*global_par_k_deg_FAAH;

% Reaction: id = vFAAH_degr_m, name = vFAAH_degr_m
	reaction_vFAAH_degr_m=compartment_MEC*global_par_k_deg_FAAH*x(30);

% Reaction: id = vFAAH_inh_m, name = vFAAH_inh_m
	reaction_vFAAH_inh_m=compartment_MEC*global_par_k_inh*x(30)*global_par_PF_m;

% Reaction: id = vFAAH_inh_degr_m, name = vFAAH_inh_degr_m
	reaction_vFAAH_inh_degr_m=compartment_MEC*global_par_k_deg_FAAH*x(31);

% Reaction: id = vA_m_p, name = vA_m_p
	reaction_vA_m_p=compartment_MEC*global_par_ktr_m_p_A*(x(25)-x(32)*global_par_Ktr_p_m_A)/(x(25)+x(32)+global_par_Km_p_m_A);

% Reaction: id = vo_m_p, name = vo_m_p
	reaction_vo_m_p=compartment_MEC*global_par_ktr_m_p_O*(x(26)-x(33)*global_par_Ktr_p_m_O);

% Reaction: id = vP_m_p, name = vP_m_p
	reaction_vP_m_p=compartment_MEC*global_par_ktr_m_p_P*(x(27)-x(34)*global_par_Ktr_p_m_P);

% Reaction: id = vL_m_p, name = vL_m_p
	reaction_vL_m_p=compartment_MEC*global_par_ktr_m_p_L*(x(28)-x(35)*global_par_Ktr_p_m_L);

% Reaction: id = vS_m_p, name = vS_m_p
	reaction_vS_m_p=compartment_MEC*global_par_ktr_m_p_S*(x(29)-x(36)*global_par_Ktr_p_m_S);

% Reaction: id = vA_b_m, name = vA_b_m
	reaction_vA_b_m=compartment_MEC*global_par_ktr_m_p_A*(x(1)-x(25))/(x(25)+x(1)+global_par_Km_p_m_A);

% Reaction: id = vO_b_m, name = vO_b_m
	reaction_vO_b_m=compartment_MEC*global_par_ktr_m_p_O*(x(2)-x(26));

% Reaction: id = vP_b_m, name = vP_b_m
	reaction_vP_b_m=compartment_MEC*global_par_ktr_m_p_P*(x(3)-x(27));

% Reaction: id = vL_b_m, name = vL_b_m
	reaction_vL_b_m=compartment_MEC*global_par_ktr_m_p_L*(x(4)-x(28));

% Reaction: id = vS_b_m, name = vS_b_m
	reaction_vS_b_m=compartment_MEC*global_par_ktr_m_p_S*(x(5)-x(29));

% Reaction: id = vA_r_p, name = vA_r_p
	reaction_vA_r_p=compartment_PLASMA*global_par_ktr_r_p*(x(13)-x(32)*global_par_Ktr_p_r_A)/(x(13)+x(32)+global_par_Km_p_m_A);

% Reaction: id = vO_r_p, name = vO_r_p
	reaction_vO_r_p=compartment_PLASMA*global_par_ktr_r_p*(x(14)-x(33)*global_par_Ktr_p_r_O);

% Reaction: id = vP_r_p, name = vP_r_p
	reaction_vP_r_p=compartment_PLASMA*global_par_ktr_r_p*(x(15)-x(34)*global_par_Ktr_p_r_P);

% Reaction: id = vL_r_p, name = vL_r_p
	reaction_vL_r_p=compartment_PLASMA*global_par_ktr_r_p*(x(16)-x(35)*global_par_Ktr_p_r_L);

% Reaction: id = vS_r_p, name = vS_r_p
	reaction_vS_r_p=compartment_PLASMA*global_par_ktr_r_p*(x(17)-x(36)*global_par_Ktr_p_r_S);

% Reaction: id = absorp, name = absorp
	reaction_absorp=global_par_kabs_PFM*global_par_MD;

% Reaction: id = dist, name = dist
	reaction_dist=global_par_kout_PFM*x(38)-global_par_kin_PFM*x(39);

% Reaction: id = elim, name = elim
	reaction_elim=global_par_klinear_PFM*x(38)+global_par_Vm_PFM*x(38)/(global_par_Km_PFM+x(38)/global_par_Vss_PFM)/global_par_Vss_PFM;

	xdot=zeros(39,1);
	
% Species:   id = A_b, name = A_b, affected by kineticLaw
	xdot(1) = (1/(compartment_BRAIN))*((-1.0 * reaction_vA_degr_b) + ( 1.0 * reaction_vA_syn_b) + (-1.0 * reaction_vA_UE_b) + (-1.0 * reaction_vA_b_m));
	
% Species:   id = O_b, name = O_b, affected by kineticLaw
	xdot(2) = (1/(compartment_BRAIN))*((-1.0 * reaction_vO_degr_b) + ( 1.0 * reaction_vO_syn_b) + (-1.0 * reaction_vO_UE_b) + (-1.0 * reaction_vO_b_m));
	
% Species:   id = P_b, name = P_b, affected by kineticLaw
	xdot(3) = (1/(compartment_BRAIN))*((-1.0 * reaction_vP_degr_b) + ( 1.0 * reaction_vP_syn_b) + (-1.0 * reaction_vP_UE_b) + (-1.0 * reaction_vP_b_m));
	
% Species:   id = L_b, name = L_b, affected by kineticLaw
	xdot(4) = (1/(compartment_BRAIN))*((-1.0 * reaction_vL_degr_b) + ( 1.0 * reaction_vL_syn_b) + (-1.0 * reaction_vL_UE_b) + (-1.0 * reaction_vL_b_m));
	
% Species:   id = S_b, name = S_b, affected by kineticLaw
	xdot(5) = (1/(compartment_BRAIN))*((-1.0 * reaction_vS_degr_b) + ( 1.0 * reaction_vS_syn_b) + (-1.0 * reaction_vS_UE_b) + (-1.0 * reaction_vS_b_m));
	
% Species:   id = NAPE_b, name = NAPE_b, affected by kineticLaw
	xdot(6) = (1/(compartment_BRAIN))*(( 1.0 * reaction_vNAPE_syn_b) + (-1.0 * reaction_vA_syn_b));
	
% Species:   id = NOPE_b, name = NOPE_b, affected by kineticLaw
	xdot(7) = (1/(compartment_BRAIN))*(( 1.0 * reaction_vNOPE_syn_b) + (-1.0 * reaction_vO_syn_b));
	
% Species:   id = NPPE_b, name = NPPE_b, affected by kineticLaw
	xdot(8) = (1/(compartment_BRAIN))*(( 1.0 * reaction_vNPPE_syn_b) + (-1.0 * reaction_vP_syn_b));
	
% Species:   id = NLPE_b, name = NLPE_b, affected by kineticLaw
	xdot(9) = (1/(compartment_BRAIN))*(( 1.0 * reaction_vNLPE_syn_b) + (-1.0 * reaction_vL_syn_b));
	
% Species:   id = NSPE_b, name = NSPE_b, affected by kineticLaw
	xdot(10) = (1/(compartment_BRAIN))*(( 1.0 * reaction_vNSPE_syn_b) + (-1.0 * reaction_vS_syn_b));
	
% Species:   id = FAAH_b, name = FAAH_b, affected by kineticLaw
	xdot(11) = (1/(compartment_BRAIN))*(( 1.0 * reaction_vFAAH_syn_b) + (-1.0 * reaction_vFAAH_degr_b) + (-1.0 * reaction_vFAAH_inh_b));
	
% Species:   id = FAAHinh_b, name = FAAHinh_b, affected by kineticLaw
	xdot(12) = (1/(compartment_BRAIN))*(( 1.0 * reaction_vFAAH_inh_b) + (-1.0 * reaction_vFAAH_inh_degr_b));
	
% Species:   id = A_r, name = A_r, affected by kineticLaw
	xdot(13) = (1/(compartment_ROB))*((-1.0 * reaction_vA_degr_r) + ( 1.0 * reaction_vA_syn_r) + (-1.0 * reaction_vA_UE_r) + (-1.0 * reaction_vA_r_p));
	
% Species:   id = O_r, name = O_r, affected by kineticLaw
	xdot(14) = (1/(compartment_ROB))*((-1.0 * reaction_vO_degr_r) + ( 1.0 * reaction_vO_syn_r) + (-1.0 * reaction_vO_UE_r) + (-1.0 * reaction_vO_r_p));
	
% Species:   id = P_r, name = P_r, affected by kineticLaw
	xdot(15) = (1/(compartment_ROB))*((-1.0 * reaction_vP_degr_r) + ( 1.0 * reaction_vP_syn_r) + (-1.0 * reaction_vP_UE_r) + (-1.0 * reaction_vP_r_p));
	
% Species:   id = L_r, name = L_r, affected by kineticLaw
	xdot(16) = (1/(compartment_ROB))*((-1.0 * reaction_vL_degr_r) + ( 1.0 * reaction_vL_syn_r) + (-1.0 * reaction_vL_UE_r) + (-1.0 * reaction_vL_r_p));
	
% Species:   id = S_r, name = S_r, affected by kineticLaw
	xdot(17) = (1/(compartment_ROB))*((-1.0 * reaction_vS_degr_r) + ( 1.0 * reaction_vS_syn_r) + (-1.0 * reaction_vS_UE_r) + (-1.0 * reaction_vS_r_p));
	
% Species:   id = NAPE_r, name = NAPE_r, affected by kineticLaw
	xdot(18) = (1/(compartment_ROB))*(( 1.0 * reaction_vNAPE_syn_r) + (-1.0 * reaction_vA_syn_r));
	
% Species:   id = NOPE_r, name = NOPE_r, affected by kineticLaw
	xdot(19) = (1/(compartment_ROB))*(( 1.0 * reaction_vNOPE_syn_r) + (-1.0 * reaction_vO_syn_r));
	
% Species:   id = NPPE_r, name = NPPE_r, affected by kineticLaw
	xdot(20) = (1/(compartment_ROB))*(( 1.0 * reaction_vNPPE_syn_r) + (-1.0 * reaction_vP_syn_r));
	
% Species:   id = NLPE_r, name = NLPE_r, affected by kineticLaw
	xdot(21) = (1/(compartment_ROB))*(( 1.0 * reaction_vNLPE_syn_r) + (-1.0 * reaction_vL_syn_r));
	
% Species:   id = NSPE_r, name = NSPE_r, affected by kineticLaw
	xdot(22) = (1/(compartment_ROB))*(( 1.0 * reaction_vNSPE_syn_r) + (-1.0 * reaction_vS_syn_r));
	
% Species:   id = FAAH_r, name = FAAH_r, affected by kineticLaw
	xdot(23) = (1/(compartment_ROB))*(( 1.0 * reaction_vFAAH_syn_r) + (-1.0 * reaction_vFAAH_degr_r) + (-1.0 * reaction_vFAAH_inh_r));
	
% Species:   id = FAAHinh_r, name = FAAHinh_r, affected by kineticLaw
	xdot(24) = (1/(compartment_ROB))*(( 1.0 * reaction_vFAAH_inh_r) + (-1.0 * reaction_vFAAH_inh_degr_r));
	
% Species:   id = A_m, name = A_m, affected by kineticLaw
	xdot(25) = (1/(compartment_MEC))*((-1.0 * reaction_vA_degr_m) + (-1.0 * reaction_vA_m_p) + ( 1.0 * reaction_vA_b_m));
	
% Species:   id = O_m, name = O_m, affected by kineticLaw
	xdot(26) = (1/(compartment_MEC))*((-1.0 * reaction_vO_degr_m) + (-1.0 * reaction_vo_m_p) + ( 1.0 * reaction_vO_b_m));
	
% Species:   id = P_m, name = P_m, affected by kineticLaw
	xdot(27) = (1/(compartment_MEC))*((-1.0 * reaction_vP_degr_m) + (-1.0 * reaction_vP_m_p) + ( 1.0 * reaction_vP_b_m));
	
% Species:   id = L_m, name = L_m, affected by kineticLaw
	xdot(28) = (1/(compartment_MEC))*((-1.0 * reaction_vL_degr_m) + (-1.0 * reaction_vL_m_p) + ( 1.0 * reaction_vL_b_m));
	
% Species:   id = S_m, name = S_m, affected by kineticLaw
	xdot(29) = (1/(compartment_MEC))*((-1.0 * reaction_vS_degr_m) + (-1.0 * reaction_vS_m_p) + ( 1.0 * reaction_vS_b_m));
	
% Species:   id = FAAH_m, name = FAAH_m, affected by kineticLaw
	xdot(30) = (1/(compartment_MEC))*(( 1.0 * reaction_vFAAH_syn_m) + (-1.0 * reaction_vFAAH_degr_m) + (-1.0 * reaction_vFAAH_inh_m));
	
% Species:   id = FAAHinh_m, name = FAAHinh_m, affected by kineticLaw
	xdot(31) = (1/(compartment_MEC))*(( 1.0 * reaction_vFAAH_inh_m) + (-1.0 * reaction_vFAAH_inh_degr_m));
	
% Species:   id = A_p, name = A_p, affected by kineticLaw
	xdot(32) = (1/(compartment_PLASMA))*(( 1.0 * reaction_vA_m_p) + ( 1.0 * reaction_vA_r_p));
	
% Species:   id = O_p, name = O_p, affected by kineticLaw
	xdot(33) = (1/(compartment_PLASMA))*(( 1.0 * reaction_vo_m_p) + ( 1.0 * reaction_vO_r_p));
	
% Species:   id = P_p, name = P_p, affected by kineticLaw
	xdot(34) = (1/(compartment_PLASMA))*(( 1.0 * reaction_vP_m_p) + ( 1.0 * reaction_vP_r_p));
	
% Species:   id = L_p, name = L_p, affected by kineticLaw
	xdot(35) = (1/(compartment_PLASMA))*(( 1.0 * reaction_vL_m_p) + ( 1.0 * reaction_vL_r_p));
	
% Species:   id = S_p, name = S_p, affected by kineticLaw
	xdot(36) = (1/(compartment_PLASMA))*(( 1.0 * reaction_vS_m_p) + ( 1.0 * reaction_vS_r_p));
	
% Species:   id = PFM_gut, name = PFM_gut, affected by kineticLaw
	xdot(37) = (1/(compartment_Default))*((-1.0 * reaction_absorp));
	
% Species:   id = PFM_p, name = PFM_p, affected by kineticLaw
	xdot(38) = (1/(compartment_Default))*(( 1.0 * reaction_absorp) + (-1.0 * reaction_dist) + (-1.0 * reaction_elim));
	
% Species:   id = PFM_r, name = PFM_r, affected by kineticLaw
	xdot(39) = (1/(compartment_Default))*(( 1.0 * reaction_dist));
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


