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
% Model name = Paiva2020 - SEIAHRD model of transmission dynamics of COVID-19
%
% isDescribedBy http://identifiers.org/pubmed/32735581
% is http://identifiers.org/biomodels.db/MODEL2008200001
% is http://identifiers.org/biomodels.db/BIOMD0000000960
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 9900000.0;
	x0(2) = 36600.0;
	x0(3) = 732.0;
	x0(4) = 2196.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;


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

% Compartment: id = Country, name = Country, constant
	compartment_Country=1.0;
% Parameter:   id =  _1_Trigger_China, name = 1_Trigger_China
	global_par__1_Trigger_China=1.0;
% Parameter:   id =  _2_Trigger_Italy, name = 2_Trigger_Italy
	global_par__2_Trigger_Italy=0.0;
% Parameter:   id =  _3_Trigger_Spain, name = 3_Trigger_Spain
	global_par__3_Trigger_Spain=0.0;
% Parameter:   id =  _4_Trigger_France, name = 4_Trigger_France
	global_par__4_Trigger_France=0.0;
% Parameter:   id =  _5_Trigger_Germany, name = 5_Trigger_Germany
	global_par__5_Trigger_Germany=0.0;
% Parameter:   id =  _6_Trigger_USA, name = 6_Trigger_USA
	global_par__6_Trigger_USA=0.0;
% Parameter:   id =  beta_1, name = beta_1
% Parameter:   id =  l_1, name = l_1
% Parameter:   id =  l_a_1, name = l_a_1
% Parameter:   id =  kappa, name = kappa
% Parameter:   id =  rho, name = rho
% Parameter:   id =  gamma_a, name = gamma_a
% Parameter:   id =  gamma_i, name = gamma_i
% Parameter:   id =  gamma_r, name = gamma_r
% Parameter:   id =  mu, name = mu
% Parameter:   id =  delta_A, name = delta_A
% Parameter:   id =  delta_H, name = delta_H
% Parameter:   id =  delta_I, name = delta_I
% Parameter:   id =  Initial_infected_pop, name = Initial_infected_pop
% Parameter:   id =  kappa_rho, name = kappa(rho)
% Parameter:   id =  kappa_1_rho, name = kappa(1-rho)
% Parameter:   id =  mu_delta_A, name = mu(delta_A)
% Parameter:   id =  mu_1_delta_A, name = mu(1-delta_A)
% Parameter:   id =  Time_threshold, name = Time_threshold
% Parameter:   id =  beta_1_China, name = beta_1_China
	global_par_beta_1_China=0.334;
% Parameter:   id =  beta_2_China, name = beta_2_China
	global_par_beta_2_China=0.14;
% Parameter:   id =  l_1_China, name = l_1_China
	global_par_l_1_China=0.673;
% Parameter:   id =  l_2_China, name = l_2_China
	global_par_l_2_China=0.135;
% Parameter:   id =  l_a_1_China, name = l_a_1_China
	global_par_l_a_1_China=8.0;
% Parameter:   id =  l_a_2_China, name = l_a_2_China
	global_par_l_a_2_China=8.0;
% Parameter:   id =  kappa_China, name = kappa_China
	global_par_kappa_China=0.44;
% Parameter:   id =  rho_China, name = rho_China
	global_par_rho_China=0.053;
% Parameter:   id =  gamma_a_China, name = gamma_a_China
	global_par_gamma_a_China=0.503;
% Parameter:   id =  gamma_i_China, name = gamma_i_China
	global_par_gamma_i_China=0.263;
% Parameter:   id =  gamma_r_China, name = gamma_r_China
	global_par_gamma_r_China=0.141;
% Parameter:   id =  mu_China, name = mu_China
	global_par_mu_China=1.64;
% Parameter:   id =  delta_A_China, name = delta_A_China
	global_par_delta_A_China=0.0;
% Parameter:   id =  delta_H_China, name = delta_H_China
	global_par_delta_H_China=0.008;
% Parameter:   id =  delta_I_China, name = delta_I_China
	global_par_delta_I_China=0.003;
% Parameter:   id =  Initial_infected_pop_China, name = Initial_infected_pop_China
	global_par_Initial_infected_pop_China=732.0;
% Parameter:   id =  Time_threshold_China, name = Time_threshold_China
	global_par_Time_threshold_China=18.0;
% Parameter:   id =  beta_1_Italy, name = beta_1_Italy
	global_par_beta_1_Italy=0.189;
% Parameter:   id =  beta_2_Italy, name = beta_2_Italy
	global_par_beta_2_Italy=0.081;
% Parameter:   id =  l_1_Italy, name = l_1_Italy
	global_par_l_1_Italy=8.0;
% Parameter:   id =  l_2_Italy, name = l_2_Italy
	global_par_l_2_Italy=8.0;
% Parameter:   id =  l_a_1_Italy, name = l_a_1_Italy
	global_par_l_a_1_Italy=0.649;
% Parameter:   id =  l_a_2_Italy, name = l_a_2_Italy
	global_par_l_a_2_Italy=0.649;
% Parameter:   id =  kappa_Italy, name = kappa_Italy
	global_par_kappa_Italy=0.284;
% Parameter:   id =  rho_Italy, name = rho_Italy
	global_par_rho_Italy=0.27;
% Parameter:   id =  gamma_a_Italy, name = gamma_a_Italy
	global_par_gamma_a_Italy=0.224;
% Parameter:   id =  gamma_i_Italy, name = gamma_i_Italy
	global_par_gamma_i_Italy=0.04;
% Parameter:   id =  mu_Italy, name = mu_Italy
	global_par_mu_Italy=0.146;
% Parameter:   id =  delta_A_Italy, name = delta_A_Italy
	global_par_delta_A_Italy=0.0;
% Parameter:   id =  delta_H_Italy, name = delta_H_Italy
	global_par_delta_H_Italy=0.023;
% Parameter:   id =  delta_I_Italy, name = delta_I_Italy
	global_par_delta_I_Italy=0.023;
% Parameter:   id =  Initial_infected_pop_Italy, name = Initial_infected_pop_Italy
	global_par_Initial_infected_pop_Italy=648.0;
% Parameter:   id =  Time_threshold_Italy, name = Time_threshold_Italy
	global_par_Time_threshold_Italy=30.0;
% Parameter:   id =  beta_1_Spain, name = beta_1_Spain
	global_par_beta_1_Spain=0.382;
% Parameter:   id =  beta_2_Spain, name = beta_2_Spain
	global_par_beta_2_Spain=0.16;
% Parameter:   id =  l_1_Spain, name = l_1_Spain
	global_par_l_1_Spain=7.69;
% Parameter:   id =  l_2_Spain, name = l_2_Spain
	global_par_l_2_Spain=6.49;
% Parameter:   id =  l_a_1_Spain, name = l_a_1_Spain
	global_par_l_a_1_Spain=3.9;
% Parameter:   id =  l_a_2_Spain, name = l_a_2_Spain
	global_par_l_a_2_Spain=3.9;
% Parameter:   id =  kappa_Spain, name = kappa_Spain
	global_par_kappa_Spain=0.362;
% Parameter:   id =  rho_Spain, name = rho_Spain
	global_par_rho_Spain=0.102;
% Parameter:   id =  gamma_a_Spain, name = gamma_a_Spain
	global_par_gamma_a_Spain=0.116;
% Parameter:   id =  gamma_i_Spain, name = gamma_i_Spain
	global_par_gamma_i_Spain=0.063;
% Parameter:   id =  gamma_r_Spain, name = gamma_r_Spain
	global_par_gamma_r_Spain=0.281;
% Parameter:   id =  mu_Spain, name = mu_Spain
	global_par_mu_Spain=1.03;
% Parameter:   id =  delta_A_Spain, name = delta_A_Spain
	global_par_delta_A_Spain=0.0;
% Parameter:   id =  delta_H_Spain, name = delta_H_Spain
	global_par_delta_H_Spain=0.019;
% Parameter:   id =  delta_I_Spain, name = delta_I_Spain
	global_par_delta_I_Spain=0.016;
% Parameter:   id =  Initial_infected_pop_Spain, name = Initial_infected_pop_Spain
	global_par_Initial_infected_pop_Spain=500.0;
% Parameter:   id =  Time_threshold_Spain, name = Time_threshold_Spain
	global_par_Time_threshold_Spain=23.0;
% Parameter:   id =  beta_1_France, name = beta_1_France
	global_par_beta_1_France=0.298;
% Parameter:   id =  beta_2_France, name = beta_2_France
	global_par_beta_2_France=0.129;
% Parameter:   id =  l_1_France, name = l_1_France
	global_par_l_1_France=8.0;
% Parameter:   id =  l_2_France, name = l_2_France
	global_par_l_2_France=8.0;
% Parameter:   id =  l_a_1_France, name = l_a_1_France
	global_par_l_a_1_France=8.0;
% Parameter:   id =  l_a_2_France, name = l_a_2_France
	global_par_l_a_2_France=8.0;
% Parameter:   id =  kappa_France, name = kappa_France
	global_par_kappa_France=0.309;
% Parameter:   id =  rho_France, name = rho_France
	global_par_rho_France=0.033;
% Parameter:   id =  gamma_a_France, name = gamma_a_France
	global_par_gamma_a_France=0.3;
% Parameter:   id =  gamma_i_France, name = gamma_i_France
	global_par_gamma_i_France=0.02;
% Parameter:   id =  gamma_r_France, name = gamma_r_France
	global_par_gamma_r_France=0.131;
% Parameter:   id =  mu_France, name = mu_France
	global_par_mu_France=1.53;
% Parameter:   id =  delta_A_France, name = delta_A_France
	global_par_delta_A_France=0.0;
% Parameter:   id =  delta_H_France, name = delta_H_France
	global_par_delta_H_France=0.029;
% Parameter:   id =  delta_I_France, name = delta_I_France
	global_par_delta_I_France=0.018;
% Parameter:   id =  Initial_infected_pop_France, name = Initial_infected_pop_France
	global_par_Initial_infected_pop_France=575.0;
% Parameter:   id =  Time_threshold_France, name = Time_threshold_France
	global_par_Time_threshold_France=26.0;
% Parameter:   id =  beta_1_Germany, name = beta_1_Germany
	global_par_beta_1_Germany=0.135;
% Parameter:   id =  beta_2_Germany, name = beta_2_Germany
	global_par_beta_2_Germany=0.055;
% Parameter:   id =  l_1_Germany, name = l_1_Germany
	global_par_l_1_Germany=4.8;
% Parameter:   id =  l_2_Germany, name = l_2_Germany
	global_par_l_2_Germany=1.13;
% Parameter:   id =  l_a_1_Germany, name = l_a_1_Germany
	global_par_l_a_1_Germany=4.9;
% Parameter:   id =  l_a_2_Germany, name = l_a_2_Germany
	global_par_l_a_2_Germany=4.9;
% Parameter:   id =  kappa_Germany, name = kappa_Germany
	global_par_kappa_Germany=0.578;
% Parameter:   id =  rho_Germany, name = rho_Germany
	global_par_rho_Germany=0.021;
% Parameter:   id =  gamma_a_Germany, name = gamma_a_Germany
	global_par_gamma_a_Germany=0.542;
% Parameter:   id =  gamma_i_Germany, name = gamma_i_Germany
	global_par_gamma_i_Germany=0.05;
% Parameter:   id =  gamma_r_Germany, name = gamma_r_Germany
	global_par_gamma_r_Germany=0.036;
% Parameter:   id =  mu_Germany, name = mu_Germany
	global_par_mu_Germany=0.302;
% Parameter:   id =  delta_A_Germany, name = delta_A_Germany
	global_par_delta_A_Germany=0.0;
% Parameter:   id =  delta_H_Germany, name = delta_H_Germany
	global_par_delta_H_Germany=0.003;
% Parameter:   id =  delta_I_Germany, name = delta_I_Germany
	global_par_delta_I_Germany=0.002;
% Parameter:   id =  Initial_infected_pop_Germany, name = Initial_infected_pop_Germany
	global_par_Initial_infected_pop_Germany=735.0;
% Parameter:   id =  Time_threshold_Germany, name = Time_threshold_Germany
	global_par_Time_threshold_Germany=24.0;
% Parameter:   id =  beta_1_USA, name = beta_1_USA
	global_par_beta_1_USA=0.303;
% Parameter:   id =  beta_2_USA, name = beta_2_USA
	global_par_beta_2_USA=0.13;
% Parameter:   id =  l_1_USA, name = l_1_USA
	global_par_l_1_USA=0.851;
% Parameter:   id =  l_2_USA, name = l_2_USA
	global_par_l_2_USA=0.851;
% Parameter:   id =  l_a_1_USA, name = l_a_1_USA
	global_par_l_a_1_USA=4.09;
% Parameter:   id =  l_a_2_USA, name = l_a_2_USA
	global_par_l_a_2_USA=0.82;
% Parameter:   id =  kappa_USA, name = kappa_USA
	global_par_kappa_USA=1.33;
% Parameter:   id =  rho_USA, name = rho_USA
	global_par_rho_USA=1.01;
% Parameter:   id =  gamma_a_USA, name = gamma_a_USA
	global_par_gamma_a_USA=0.055;
% Parameter:   id =  gamma_i_USA, name = gamma_i_USA
	global_par_gamma_i_USA=0.296;
% Parameter:   id =  gamma_r_USA, name = gamma_r_USA
	global_par_gamma_r_USA=0.018;
% Parameter:   id =  mu_USA, name = mu_USA
	global_par_mu_USA=0.828;
% Parameter:   id =  delta_A_USA, name = delta_A_USA
	global_par_delta_A_USA=0.0;
% Parameter:   id =  delta_H_USA, name = delta_H_USA
	global_par_delta_H_USA=2.9E-4;
% Parameter:   id =  delta_I_USA, name = delta_I_USA
	global_par_delta_I_USA=0.023;
% Parameter:   id =  Initial_infected_pop_USA, name = Initial_infected_pop_USA
	global_par_Initial_infected_pop_USA=576.0;
% Parameter:   id =  Time_threshold_USA, name = Time_threshold_USA
	global_par_Time_threshold_USA=51.0;
% Parameter:   id =  gamma_r_Italy, name = gamma_r_Italy
	global_par_gamma_r_Italy=0.24;
% Parameter:   id =  Total_pop, name = Total_pop
% Parameter:   id =  Total_pop_China, name = Total_pop_China
	global_par_Total_pop_China=1.1E7;
% Parameter:   id =  Total_pop_Italy, name = Total_pop_Italy
	global_par_Total_pop_Italy=6.04E7;
% Parameter:   id =  Total_pop_Spain, name = Total_pop_Spain
	global_par_Total_pop_Spain=4.69E7;
% Parameter:   id =  Total_pop_France, name = Total_pop_France
	global_par_Total_pop_France=6.7E7;
% Parameter:   id =  Total_pop_Germany, name = Total_pop_Germany
	global_par_Total_pop_Germany=8.3E7;
% Parameter:   id =  Total_pop_USA, name = Total_pop_USA
	global_par_Total_pop_USA=3.282E8;
% Parameter:   id =  ModelValue_0, name = Initial for 1_Trigger_China
	global_par_ModelValue_0=1.0;
% Parameter:   id =  ModelValue_1, name = Initial for 2_Trigger_Italy
	global_par_ModelValue_1=0.0;
% Parameter:   id =  ModelValue_2, name = Initial for 3_Trigger_Spain
	global_par_ModelValue_2=0.0;
% Parameter:   id =  ModelValue_3, name = Initial for 4_Trigger_France
	global_par_ModelValue_3=0.0;
% Parameter:   id =  ModelValue_4, name = Initial for 5_Trigger_Germany
	global_par_ModelValue_4=0.0;
% Parameter:   id =  ModelValue_5, name = Initial for 6_Trigger_USA
	global_par_ModelValue_5=0.0;
% Parameter:   id =  ModelValue_42, name = Initial for Initial_infected_pop_China
	global_par_ModelValue_42=732.0;
% Parameter:   id =  ModelValue_92, name = Initial for Initial_infected_pop_France
	global_par_ModelValue_92=575.0;
% Parameter:   id =  ModelValue_109, name = Initial for Initial_infected_pop_Germany
	global_par_ModelValue_109=735.0;
% Parameter:   id =  ModelValue_58, name = Initial for Initial_infected_pop_Italy
	global_par_ModelValue_58=648.0;
% Parameter:   id =  ModelValue_75, name = Initial for Initial_infected_pop_Spain
	global_par_ModelValue_75=500.0;
% Parameter:   id =  ModelValue_126, name = Initial for Initial_infected_pop_USA
	global_par_ModelValue_126=576.0;
% Parameter:   id =  ModelValue_26, name = Initial for Time_threshold
	global_par_ModelValue_26=18.0;
% Parameter:   id =  ModelValue_43, name = Initial for Time_threshold_China
	global_par_ModelValue_43=18.0;
% Parameter:   id =  ModelValue_93, name = Initial for Time_threshold_France
	global_par_ModelValue_93=26.0;
% Parameter:   id =  ModelValue_110, name = Initial for Time_threshold_Germany
	global_par_ModelValue_110=24.0;
% Parameter:   id =  ModelValue_59, name = Initial for Time_threshold_Italy
	global_par_ModelValue_59=30.0;
% Parameter:   id =  ModelValue_76, name = Initial for Time_threshold_Spain
	global_par_ModelValue_76=23.0;
% Parameter:   id =  ModelValue_127, name = Initial for Time_threshold_USA
	global_par_ModelValue_127=51.0;
% Parameter:   id =  ModelValue_130, name = Initial for Total_pop_China
	global_par_ModelValue_130=1.1E7;
% Parameter:   id =  ModelValue_133, name = Initial for Total_pop_France
	global_par_ModelValue_133=6.7E7;
% Parameter:   id =  ModelValue_134, name = Initial for Total_pop_Germany
	global_par_ModelValue_134=8.3E7;
% Parameter:   id =  ModelValue_131, name = Initial for Total_pop_Italy
	global_par_ModelValue_131=6.04E7;
% Parameter:   id =  ModelValue_132, name = Initial for Total_pop_Spain
	global_par_ModelValue_132=4.69E7;
% Parameter:   id =  ModelValue_135, name = Initial for Total_pop_USA
	global_par_ModelValue_135=3.282E8;
% Parameter:   id =  ModelValue_18, name = Initial for delta_A
	global_par_ModelValue_18=0.0;
% Parameter:   id =  ModelValue_39, name = Initial for delta_A_China
	global_par_ModelValue_39=0.0;
% Parameter:   id =  ModelValue_89, name = Initial for delta_A_France
	global_par_ModelValue_89=0.0;
% Parameter:   id =  ModelValue_106, name = Initial for delta_A_Germany
	global_par_ModelValue_106=0.0;
% Parameter:   id =  ModelValue_55, name = Initial for delta_A_Italy
	global_par_ModelValue_55=0.0;
% Parameter:   id =  ModelValue_72, name = Initial for delta_A_Spain
	global_par_ModelValue_72=0.0;
% Parameter:   id =  ModelValue_123, name = Initial for delta_A_USA
	global_par_ModelValue_123=0.0;
% Parameter:   id =  ModelValue_40, name = Initial for delta_H_China
	global_par_ModelValue_40=0.008;
% Parameter:   id =  ModelValue_90, name = Initial for delta_H_France
	global_par_ModelValue_90=0.029;
% Parameter:   id =  ModelValue_107, name = Initial for delta_H_Germany
	global_par_ModelValue_107=0.003;
% Parameter:   id =  ModelValue_56, name = Initial for delta_H_Italy
	global_par_ModelValue_56=0.023;
% Parameter:   id =  ModelValue_73, name = Initial for delta_H_Spain
	global_par_ModelValue_73=0.019;
% Parameter:   id =  ModelValue_124, name = Initial for delta_H_USA
	global_par_ModelValue_124=2.9E-4;
% Parameter:   id =  ModelValue_41, name = Initial for delta_I_China
	global_par_ModelValue_41=0.003;
% Parameter:   id =  ModelValue_91, name = Initial for delta_I_France
	global_par_ModelValue_91=0.018;
% Parameter:   id =  ModelValue_108, name = Initial for delta_I_Germany
	global_par_ModelValue_108=0.002;
% Parameter:   id =  ModelValue_57, name = Initial for delta_I_Italy
	global_par_ModelValue_57=0.023;
% Parameter:   id =  ModelValue_74, name = Initial for delta_I_Spain
	global_par_ModelValue_74=0.016;
% Parameter:   id =  ModelValue_125, name = Initial for delta_I_USA
	global_par_ModelValue_125=0.023;
% Parameter:   id =  ModelValue_30, name = Initial for gamma_a_China
	global_par_ModelValue_30=0.503;
% Parameter:   id =  ModelValue_85, name = Initial for gamma_a_France
	global_par_ModelValue_85=0.3;
% Parameter:   id =  ModelValue_102, name = Initial for gamma_a_Germany
	global_par_ModelValue_102=0.542;
% Parameter:   id =  ModelValue_52, name = Initial for gamma_a_Italy
	global_par_ModelValue_52=0.224;
% Parameter:   id =  ModelValue_68, name = Initial for gamma_a_Spain
	global_par_ModelValue_68=0.116;
% Parameter:   id =  ModelValue_119, name = Initial for gamma_a_USA
	global_par_ModelValue_119=0.055;
% Parameter:   id =  ModelValue_29, name = Initial for gamma_i_China
	global_par_ModelValue_29=0.263;
% Parameter:   id =  ModelValue_86, name = Initial for gamma_i_France
	global_par_ModelValue_86=0.02;
% Parameter:   id =  ModelValue_103, name = Initial for gamma_i_Germany
	global_par_ModelValue_103=0.05;
% Parameter:   id =  ModelValue_53, name = Initial for gamma_i_Italy
	global_par_ModelValue_53=0.04;
% Parameter:   id =  ModelValue_69, name = Initial for gamma_i_Spain
	global_par_ModelValue_69=0.063;
% Parameter:   id =  ModelValue_120, name = Initial for gamma_i_USA
	global_par_ModelValue_120=0.296;
% Parameter:   id =  ModelValue_28, name = Initial for gamma_r_China
	global_par_ModelValue_28=0.141;
% Parameter:   id =  ModelValue_87, name = Initial for gamma_r_France
	global_par_ModelValue_87=0.131;
% Parameter:   id =  ModelValue_104, name = Initial for gamma_r_Germany
	global_par_ModelValue_104=0.036;
% Parameter:   id =  ModelValue_128, name = Initial for gamma_r_Italy
	global_par_ModelValue_128=0.24;
% Parameter:   id =  ModelValue_70, name = Initial for gamma_r_Spain
	global_par_ModelValue_70=0.281;
% Parameter:   id =  ModelValue_121, name = Initial for gamma_r_USA
	global_par_ModelValue_121=0.018;
% Parameter:   id =  ModelValue_12, name = Initial for kappa
	global_par_ModelValue_12=0.44;
% Parameter:   id =  ModelValue_32, name = Initial for kappa_China
	global_par_ModelValue_32=0.44;
% Parameter:   id =  ModelValue_83, name = Initial for kappa_France
	global_par_ModelValue_83=0.309;
% Parameter:   id =  ModelValue_100, name = Initial for kappa_Germany
	global_par_ModelValue_100=0.578;
% Parameter:   id =  ModelValue_50, name = Initial for kappa_Italy
	global_par_ModelValue_50=0.284;
% Parameter:   id =  ModelValue_66, name = Initial for kappa_Spain
	global_par_ModelValue_66=0.362;
% Parameter:   id =  ModelValue_117, name = Initial for kappa_USA
	global_par_ModelValue_117=1.33;
% Parameter:   id =  ModelValue_64, name = Initial for l_a_1_Spain
	global_par_ModelValue_64=3.9;
% Parameter:   id =  ModelValue_17, name = Initial for mu
	global_par_ModelValue_17=1.64;
% Parameter:   id =  ModelValue_27, name = Initial for mu_China
	global_par_ModelValue_27=1.64;
% Parameter:   id =  ModelValue_88, name = Initial for mu_France
	global_par_ModelValue_88=1.53;
% Parameter:   id =  ModelValue_105, name = Initial for mu_Germany
	global_par_ModelValue_105=0.302;
% Parameter:   id =  ModelValue_54, name = Initial for mu_Italy
	global_par_ModelValue_54=0.146;
% Parameter:   id =  ModelValue_71, name = Initial for mu_Spain
	global_par_ModelValue_71=1.03;
% Parameter:   id =  ModelValue_122, name = Initial for mu_USA
	global_par_ModelValue_122=0.828;
% Parameter:   id =  ModelValue_13, name = Initial for rho
	global_par_ModelValue_13=0.053;
% Parameter:   id =  ModelValue_31, name = Initial for rho_China
	global_par_ModelValue_31=0.053;
% Parameter:   id =  ModelValue_84, name = Initial for rho_France
	global_par_ModelValue_84=0.033;
% Parameter:   id =  ModelValue_101, name = Initial for rho_Germany
	global_par_ModelValue_101=0.021;
% Parameter:   id =  ModelValue_51, name = Initial for rho_Italy
	global_par_ModelValue_51=0.27;
% Parameter:   id =  ModelValue_67, name = Initial for rho_Spain
	global_par_ModelValue_67=0.102;
% Parameter:   id =  ModelValue_118, name = Initial for rho_USA
	global_par_ModelValue_118=1.01;
% assignmentRule: variable = kappa
	global_par_kappa=global_par_ModelValue_0*global_par_ModelValue_32+global_par_ModelValue_1*global_par_ModelValue_50+global_par_ModelValue_2*global_par_ModelValue_66+global_par_ModelValue_3*global_par_ModelValue_83+global_par_ModelValue_4*global_par_ModelValue_100+global_par_ModelValue_5*global_par_ModelValue_117;
% assignmentRule: variable = rho
	global_par_rho=global_par_ModelValue_0*global_par_ModelValue_31+global_par_ModelValue_1*global_par_ModelValue_51+global_par_ModelValue_2*global_par_ModelValue_67+global_par_ModelValue_3*global_par_ModelValue_84+global_par_ModelValue_4*global_par_ModelValue_101+global_par_ModelValue_5*global_par_ModelValue_118;
% assignmentRule: variable = mu
	global_par_mu=global_par_ModelValue_0*global_par_ModelValue_27+global_par_ModelValue_1*global_par_ModelValue_54+global_par_ModelValue_2*global_par_ModelValue_71+global_par_ModelValue_3*global_par_ModelValue_88+global_par_ModelValue_4*global_par_ModelValue_105+global_par_ModelValue_5*global_par_ModelValue_122;
% assignmentRule: variable = gamma_a
	global_par_gamma_a=global_par_ModelValue_0*global_par_ModelValue_30+global_par_ModelValue_1*global_par_ModelValue_52+global_par_ModelValue_2*global_par_ModelValue_68+global_par_ModelValue_3*global_par_ModelValue_85+global_par_ModelValue_4*global_par_ModelValue_102+global_par_ModelValue_5*global_par_ModelValue_119;
% assignmentRule: variable = gamma_i
	global_par_gamma_i=global_par_ModelValue_0*global_par_ModelValue_29+global_par_ModelValue_1*global_par_ModelValue_53+global_par_ModelValue_2*global_par_ModelValue_69+global_par_ModelValue_3*global_par_ModelValue_86+global_par_ModelValue_4*global_par_ModelValue_103+global_par_ModelValue_5*global_par_ModelValue_120;
% assignmentRule: variable = l_1
	global_par_l_1=global_par_ModelValue_0*global_par_l_1_China+global_par_ModelValue_1*global_par_l_1_Italy+global_par_ModelValue_2*global_par_l_1_Spain+global_par_ModelValue_3*global_par_l_1_France+global_par_ModelValue_4*global_par_l_1_Germany+global_par_ModelValue_5*global_par_l_1_USA;
% assignmentRule: variable = gamma_r
	global_par_gamma_r=global_par_ModelValue_0*global_par_ModelValue_28+global_par_ModelValue_1*global_par_ModelValue_128+global_par_ModelValue_2*global_par_ModelValue_70+global_par_ModelValue_3*global_par_ModelValue_87+global_par_ModelValue_4*global_par_ModelValue_104+global_par_ModelValue_5*global_par_ModelValue_121;
% assignmentRule: variable = delta_H
	global_par_delta_H=global_par_ModelValue_0*global_par_ModelValue_40+global_par_ModelValue_1*global_par_ModelValue_56+global_par_ModelValue_2*global_par_ModelValue_73+global_par_ModelValue_3*global_par_ModelValue_90+global_par_ModelValue_4*global_par_ModelValue_107+global_par_ModelValue_5*global_par_ModelValue_124;
% assignmentRule: variable = Initial_infected_pop
	global_par_Initial_infected_pop=global_par_ModelValue_0*global_par_ModelValue_42+global_par_ModelValue_1*global_par_ModelValue_58+global_par_ModelValue_2*global_par_ModelValue_75+global_par_ModelValue_3*global_par_ModelValue_92+global_par_ModelValue_4*global_par_ModelValue_109+global_par_ModelValue_5*global_par_ModelValue_126;
% assignmentRule: variable = delta_A
	global_par_delta_A=global_par_ModelValue_0*global_par_ModelValue_39+global_par_ModelValue_1*global_par_ModelValue_55+global_par_ModelValue_2*global_par_ModelValue_72+global_par_ModelValue_3*global_par_ModelValue_72+global_par_ModelValue_3*global_par_ModelValue_89+global_par_ModelValue_4*global_par_ModelValue_106+global_par_ModelValue_5*global_par_ModelValue_123;
% assignmentRule: variable = delta_I
	global_par_delta_I=global_par_ModelValue_0*global_par_ModelValue_41+global_par_ModelValue_1*global_par_ModelValue_57+global_par_ModelValue_2*global_par_ModelValue_74+global_par_ModelValue_3*global_par_ModelValue_91+global_par_ModelValue_4*global_par_ModelValue_108+global_par_ModelValue_5*global_par_ModelValue_125;
% assignmentRule: variable = l_a_1
	global_par_l_a_1=global_par_ModelValue_0*global_par_l_a_1_China+global_par_ModelValue_1*global_par_l_a_1_Italy+global_par_ModelValue_2*global_par_ModelValue_64+global_par_ModelValue_3*global_par_l_a_1_France+global_par_ModelValue_4*global_par_l_a_1_Germany+global_par_ModelValue_5*global_par_l_a_1_USA;
% assignmentRule: variable = beta_1
	global_par_beta_1=global_par_ModelValue_0*global_par_beta_1_China+global_par_ModelValue_1*global_par_beta_1_Italy+global_par_ModelValue_2*global_par_beta_1_Spain+global_par_ModelValue_3*global_par_beta_1_France+global_par_ModelValue_4*global_par_beta_1_Germany+global_par_ModelValue_5*global_par_beta_1_USA;
% assignmentRule: variable = kappa_rho
	global_par_kappa_rho=global_par_ModelValue_12*global_par_ModelValue_13;
% assignmentRule: variable = mu_delta_A
	global_par_mu_delta_A=global_par_ModelValue_17*global_par_ModelValue_18;
% assignmentRule: variable = kappa_1_rho
	global_par_kappa_1_rho=global_par_ModelValue_12*(1-global_par_ModelValue_13);
% assignmentRule: variable = mu_1_delta_A
	global_par_mu_1_delta_A=global_par_ModelValue_17*(1-global_par_ModelValue_18);
% assignmentRule: variable = Time_threshold
	global_par_Time_threshold=global_par_ModelValue_0*global_par_ModelValue_43+global_par_ModelValue_1*global_par_ModelValue_59+global_par_ModelValue_2*global_par_ModelValue_76+global_par_ModelValue_3*global_par_ModelValue_93+global_par_ModelValue_4*global_par_ModelValue_110+global_par_ModelValue_5*global_par_ModelValue_127;
% assignmentRule: variable = Total_pop
	global_par_Total_pop=global_par_ModelValue_0*global_par_ModelValue_130+global_par_ModelValue_1*global_par_ModelValue_131+global_par_ModelValue_2*global_par_ModelValue_132+global_par_ModelValue_3*global_par_ModelValue_133+global_par_ModelValue_4*global_par_ModelValue_134+global_par_ModelValue_5*global_par_ModelValue_135;

% Reaction: id = Susceptible_to_Exposed, name = Susceptible_to_Exposed
	reaction_Susceptible_to_Exposed=compartment_Country*Rate_Law_for_Susceptible_to_Exposed(x(1), global_par_beta_1, x(3), global_par_l_a_1, x(4), global_par_l_1, x(5), global_par_Total_pop);

% Reaction: id = Exposed_to_Infectious, name = Exposed_to_Infectious
	reaction_Exposed_to_Infectious=compartment_Country*global_par_kappa_rho*x(2);

% Reaction: id = Exposed_to_Asymptomatic, name = Exposed_to_Asymptomatic
	reaction_Exposed_to_Asymptomatic=compartment_Country*global_par_kappa_1_rho*x(2);

% Reaction: id = Infectious_to_Hospitalized, name = Infectious_to_Hospitalized
	reaction_Infectious_to_Hospitalized=compartment_Country*global_par_gamma_a*x(3);

% Reaction: id = Infectious_to_Recovered, name = Infectious_to_Recovered
	reaction_Infectious_to_Recovered=compartment_Country*global_par_gamma_i*x(3);

% Reaction: id = Infectious_to_Deceased, name = Infectious_to_Deceased
	reaction_Infectious_to_Deceased=compartment_Country*global_par_delta_I*x(3);

% Reaction: id = Asymptomatic_to_Recovered, name = Asymptomatic_to_Recovered
	reaction_Asymptomatic_to_Recovered=compartment_Country*global_par_mu_1_delta_A*x(4);

% Reaction: id = Asymptomatic_to_Deceased, name = Asymptomatic_to_Deceased
	reaction_Asymptomatic_to_Deceased=compartment_Country*global_par_mu_delta_A*x(4);

% Reaction: id = Hospitalized_to_Deceased, name = Hospitalized_to_Deceased
	reaction_Hospitalized_to_Deceased=compartment_Country*global_par_delta_H*x(5);

% Reaction: id = Hospitalized_to_Recovered, name = Hospitalized_to_Recovered
	reaction_Hospitalized_to_Recovered=compartment_Country*global_par_gamma_r*x(5);

% Reaction: id = Cumulative_cases, name = Cumulative cases
	reaction_Cumulative_cases=compartment_Country*Rate_Law_for_Cumulative_cases(global_par_kappa_rho, x(2));

%Event: id=event
	event_event=time >= global_par_ModelValue_26;

	if(event_event) 
		global_par_beta_1_China=global_par_beta_2_China;
		global_par_beta_1_France=global_par_beta_2_France;
		global_par_beta_1_Germany=global_par_beta_2_Germany;
		global_par_beta_1_Italy=global_par_beta_2_Italy;
		global_par_beta_1_Spain=global_par_beta_2_Spain;
		global_par_beta_1_USA=global_par_beta_2_USA;
		global_par_l_1_China=global_par_l_2_China;
		global_par_l_1_France=global_par_l_2_France;
		global_par_l_1_Germany=global_par_l_2_Germany;
		global_par_l_1_Italy=global_par_l_2_Italy;
		global_par_l_1_Spain=global_par_l_2_Spain;
		global_par_l_1_USA=global_par_l_2_USA;
		global_par_l_a_1_China=global_par_l_a_2_China;
		global_par_l_a_1_France=global_par_l_a_2_France;
		global_par_l_a_1_Germany=global_par_l_a_2_Germany;
		global_par_l_a_1_Italy=global_par_l_a_2_Italy;
		global_par_l_a_1_Spain=global_par_l_a_2_Spain;
		global_par_l_a_1_USA=global_par_l_a_2_USA;
	end

	xdot=zeros(8,1);
	
% Species:   id = Susceptible, name = Susceptible, affected by kineticLaw
	xdot(1) = (1/(compartment_Country))*((-1.0 * reaction_Susceptible_to_Exposed));
	
% Species:   id = Exposed, name = Exposed, affected by kineticLaw
	xdot(2) = (1/(compartment_Country))*(( 1.0 * reaction_Susceptible_to_Exposed) + (-1.0 * reaction_Exposed_to_Infectious) + (-1.0 * reaction_Exposed_to_Asymptomatic));
	
% Species:   id = Infectious, name = Infectious, affected by kineticLaw
	xdot(3) = (1/(compartment_Country))*(( 1.0 * reaction_Exposed_to_Infectious) + (-1.0 * reaction_Infectious_to_Hospitalized) + (-1.0 * reaction_Infectious_to_Recovered) + (-1.0 * reaction_Infectious_to_Deceased));
	
% Species:   id = Asymptomatic, name = Asymptomatic, affected by kineticLaw
	xdot(4) = (1/(compartment_Country))*(( 1.0 * reaction_Exposed_to_Asymptomatic) + (-1.0 * reaction_Asymptomatic_to_Recovered) + (-1.0 * reaction_Asymptomatic_to_Deceased));
	
% Species:   id = Hospitalized, name = Hospitalized, affected by kineticLaw
	xdot(5) = (1/(compartment_Country))*(( 1.0 * reaction_Infectious_to_Hospitalized) + (-1.0 * reaction_Hospitalized_to_Deceased) + (-1.0 * reaction_Hospitalized_to_Recovered));
	
% Species:   id = Recovered, name = Recovered, affected by kineticLaw
	xdot(6) = (1/(compartment_Country))*(( 1.0 * reaction_Infectious_to_Recovered) + ( 1.0 * reaction_Asymptomatic_to_Recovered) + ( 1.0 * reaction_Hospitalized_to_Recovered));
	
% Species:   id = Deceased, name = Deceased, affected by kineticLaw
	xdot(7) = (1/(compartment_Country))*(( 1.0 * reaction_Infectious_to_Deceased) + ( 1.0 * reaction_Asymptomatic_to_Deceased) + ( 1.0 * reaction_Hospitalized_to_Deceased));
	
% Species:   id = Cumulative_Cases, name = Cumulative_Cases, affected by kineticLaw
	xdot(8) = (1/(compartment_Country))*(( 1.0 * reaction_Cumulative_cases));
end

function z=Rate_Law_for_Cumulative_cases(constant,E), z=(constant*E);end

function z=Rate_Law_for_Susceptible_to_Exposed(S,beta,I,l_a,A,l,H,N), z=(S*beta*(I+l_a*A+l*H)/N);end

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


