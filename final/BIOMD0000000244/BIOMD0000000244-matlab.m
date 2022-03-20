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
% Model name = Kotte2010_Ecoli_Metabolic_Adaption
%
% is http://identifiers.org/biomodels.db/MODEL1003100000
% is http://identifiers.org/biomodels.db/BIOMD0000000244
% isDescribedBy http://identifiers.org/pubmed/20212527
%


function main()
%Initial conditions vector
	x0=zeros(47,1);
	x0(1) = 0.03;
	x0(2) = 0.0;
	x0(3) = 4.8;
	x0(4) = 0.351972298;
	x0(5) = 0.191190619;
	x0(6) = 0.202804098;
	x0(7) = 6.57504207;
	x0(8) = 1.908140784;
	x0(9) = 5.70593E-9;
	x0(10) = 0.001408116;
	x0(11) = 3.278779135;
	x0(12) = 0.050535354;
	x0(13) = 0.210455879;
	x0(14) = 5.720977255;
	x0(15) = 0.863278018;
	x0(16) = 0.00472323;
	x0(17) = 0.001416969;
	x0(18) = 1.41697E-4;
	x0(19) = 0.001;
	x0(20) = 0.001096222;
	x0(21) = 0.001026848;
	x0(22) = 0.001;
	x0(23) = 0.001;
	x0(24) = 0.011515593;
	x0(25) = 0.011552813;
	x0(26) = 1.57492E-4;
	x0(27) = 0.001029612;
	x0(28) = 0.004290789;
	x0(29) = 2.20477E-4;
	x0(30) = 0.00345727;
	x0(31) = 9.99714E-4;
	x0(32) = 0.002290892;
	x0(33) = 0.004647401;
	x0(34) = 1.43816E-4;
	x0(35) = 9.99714E-4;
	x0(36) = 9.87493E-4;
	x0(37) = 0.005977168;
	x0(38) = 2.99098E-4;
	x0(39) = 0.006990902;
	x0(40) = 0.005943273;
	x0(41) = 0.001346727;
	x0(42) = 0.00729;
	x0(43) = 0.001163813;
	x0(44) = 0.006126187;
	x0(45) = 0.09647707;
	x0(46) = 0.00352292;
	x0(47) = 0.003;


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

% Compartment: id = Environment, name = Environment, constant
	compartment_Environment=1.0;
% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=1.0;
% Parameter:   id =  env_M_ACT, name = env_M_ACT
	global_par_env_M_ACT=60.05;
% Parameter:   id =  env_M_GLC, name = env_M_GLC
	global_par_env_M_GLC=180.156;
% Parameter:   id =  env_uc, name = env_uc
	global_par_env_uc=9.5E-7;
% Parameter:   id =  e_AceA_kcat, name = e_AceA_kcat
	global_par_e_AceA_kcat=614.0;
% Parameter:   id =  e_AceA_n, name = e_AceA_n
	global_par_e_AceA_n=4.0;
% Parameter:   id =  e_AceA_L, name = e_AceA_L
	global_par_e_AceA_L=50100.0;
% Parameter:   id =  e_AceA_Kict, name = e_AceA_Kict
	global_par_e_AceA_Kict=0.022;
% Parameter:   id =  e_AceA_Kpep, name = e_AceA_Kpep
	global_par_e_AceA_Kpep=0.055;
% Parameter:   id =  e_AceA_Kpg3, name = e_AceA_Kpg3
	global_par_e_AceA_Kpg3=0.72;
% Parameter:   id =  e_AceA_Kakg, name = e_AceA_Kakg
	global_par_e_AceA_Kakg=0.827;
% Parameter:   id =  e_AceB_kcat, name = e_AceB_kcat
	global_par_e_AceB_kcat=47.8;
% Parameter:   id =  e_AceB_Kglx, name = e_AceB_Kglx
	global_par_e_AceB_Kglx=0.95;
% Parameter:   id =  e_AceB_Kacoa, name = e_AceB_Kacoa
	global_par_e_AceB_Kacoa=0.755;
% Parameter:   id =  e_AceB_Kglxacoa, name = e_AceB_Kglxacoa
	global_par_e_AceB_Kglxacoa=0.719;
% Parameter:   id =  e_AceK_kcat_ki, name = e_AceK_kcat_ki
	global_par_e_AceK_kcat_ki=3.4E12;
% Parameter:   id =  e_AceK_kcat_ph, name = e_AceK_kcat_ph
	global_par_e_AceK_kcat_ph=1.7E9;
% Parameter:   id =  e_AceK_n, name = e_AceK_n
	global_par_e_AceK_n=2.0;
% Parameter:   id =  e_AceK_L, name = e_AceK_L
	global_par_e_AceK_L=1.0E8;
% Parameter:   id =  e_AceK_Kicd, name = e_AceK_Kicd
	global_par_e_AceK_Kicd=0.043;
% Parameter:   id =  e_AceK_Kicd_P, name = e_AceK_Kicd_P
	global_par_e_AceK_Kicd_P=0.643;
% Parameter:   id =  e_AceK_Kpep, name = e_AceK_Kpep
	global_par_e_AceK_Kpep=0.539;
% Parameter:   id =  e_AceK_Kpyr, name = e_AceK_Kpyr
	global_par_e_AceK_Kpyr=0.038;
% Parameter:   id =  e_AceK_Koaa, name = e_AceK_Koaa
	global_par_e_AceK_Koaa=0.173;
% Parameter:   id =  e_AceK_Kglx, name = e_AceK_Kglx
	global_par_e_AceK_Kglx=0.866;
% Parameter:   id =  e_AceK_Kakg, name = e_AceK_Kakg
	global_par_e_AceK_Kakg=0.82;
% Parameter:   id =  e_AceK_Kpg3, name = e_AceK_Kpg3
	global_par_e_AceK_Kpg3=1.57;
% Parameter:   id =  e_AceK_Kict, name = e_AceK_Kict
	global_par_e_AceK_Kict=0.137;
% Parameter:   id =  e_Acoa2act_kcat, name = e_Acoa2act_kcat
	global_par_e_Acoa2act_kcat=3079.0;
% Parameter:   id =  e_Acoa2act_n, name = e_Acoa2act_n
	global_par_e_Acoa2act_n=2.0;
% Parameter:   id =  e_Acoa2act_L, name = e_Acoa2act_L
	global_par_e_Acoa2act_L=639000.0;
% Parameter:   id =  e_Acoa2act_Kacoa, name = e_Acoa2act_Kacoa
	global_par_e_Acoa2act_Kacoa=0.022;
% Parameter:   id =  e_Acoa2act_Kpyr, name = e_Acoa2act_Kpyr
	global_par_e_Acoa2act_Kpyr=0.022;
% Parameter:   id =  e_Acs_kcat, name = e_Acs_kcat
	global_par_e_Acs_kcat=340.0;
% Parameter:   id =  e_Acs_Kact, name = e_Acs_Kact
	global_par_e_Acs_Kact=0.001;
% Parameter:   id =  e_Akg2mal_kcat, name = e_Akg2mal_kcat
	global_par_e_Akg2mal_kcat=1530.0;
% Parameter:   id =  e_Akg2mal_Kakg, name = e_Akg2mal_Kakg
	global_par_e_Akg2mal_Kakg=0.548;
% Parameter:   id =  e_CAMPdegr_kcat, name = e_CAMPdegr_kcat
	global_par_e_CAMPdegr_kcat=1000.0;
% Parameter:   id =  e_CAMPdegr_KcAMP, name = e_CAMPdegr_KcAMP
	global_par_e_CAMPdegr_KcAMP=0.1;
% Parameter:   id =  e_Cya_kcat, name = e_Cya_kcat
	global_par_e_Cya_kcat=993.0;
% Parameter:   id =  e_Cya_KEIIA, name = e_Cya_KEIIA
	global_par_e_Cya_KEIIA=0.0017;
% Parameter:   id =  e_Emp_kcat_f, name = e_Emp_kcat_f
	global_par_e_Emp_kcat_f=1000.0;
% Parameter:   id =  e_Emp_kcat_r, name = e_Emp_kcat_r
	global_par_e_Emp_kcat_r=848.0;
% Parameter:   id =  e_Emp_Kfbp, name = e_Emp_Kfbp
	global_par_e_Emp_Kfbp=5.92;
% Parameter:   id =  e_Emp_Kpg3, name = e_Emp_Kpg3
	global_par_e_Emp_Kpg3=16.6;
% Parameter:   id =  e_Eno_kcatf, name = e_Eno_kcatf
	global_par_e_Eno_kcatf=695.0;
% Parameter:   id =  e_Eno_kcatr, name = e_Eno_kcatr
	global_par_e_Eno_kcatr=522.0;
% Parameter:   id =  e_Eno_Kpg3, name = e_Eno_Kpg3
	global_par_e_Eno_Kpg3=4.76;
% Parameter:   id =  e_Eno_Kpep, name = e_Eno_Kpep
	global_par_e_Eno_Kpep=1.11;
% Parameter:   id =  e_Fdp_kcat, name = e_Fdp_kcat
	global_par_e_Fdp_kcat=192.0;
% Parameter:   id =  e_Fdp_n, name = e_Fdp_n
	global_par_e_Fdp_n=4.0;
% Parameter:   id =  e_Fdp_L, name = e_Fdp_L
	global_par_e_Fdp_L=4000000.0;
% Parameter:   id =  e_Fdp_Kfbp, name = e_Fdp_Kfbp
	global_par_e_Fdp_Kfbp=0.003;
% Parameter:   id =  e_Fdp_Kpep, name = e_Fdp_Kpep
	global_par_e_Fdp_Kpep=0.3;
% Parameter:   id =  e_GltA_kcat, name = e_GltA_kcat
	global_par_e_GltA_kcat=1614.0;
% Parameter:   id =  e_GltA_Koaa, name = e_GltA_Koaa
	global_par_e_GltA_Koaa=0.029;
% Parameter:   id =  e_GltA_Kacoa, name = e_GltA_Kacoa
	global_par_e_GltA_Kacoa=0.212;
% Parameter:   id =  e_GltA_Koaaacoa, name = e_GltA_Koaaacoa
	global_par_e_GltA_Koaaacoa=0.029;
% Parameter:   id =  e_GltA_Kakg, name = e_GltA_Kakg
	global_par_e_GltA_Kakg=0.63;
% Parameter:   id =  e_Icd_kcat, name = e_Icd_kcat
	global_par_e_Icd_kcat=695.0;
% Parameter:   id =  e_Icd_n, name = e_Icd_n
	global_par_e_Icd_n=2.0;
% Parameter:   id =  e_Icd_L, name = e_Icd_L
	global_par_e_Icd_L=127.0;
% Parameter:   id =  e_Icd_Kict, name = e_Icd_Kict
	global_par_e_Icd_Kict=1.6E-4;
% Parameter:   id =  e_Icd_Kpep, name = e_Icd_Kpep
	global_par_e_Icd_Kpep=0.334;
% Parameter:   id =  e_Mdh_kcat, name = e_Mdh_kcat
	global_par_e_Mdh_kcat=773.0;
% Parameter:   id =  e_Mdh_n, name = e_Mdh_n
	global_par_e_Mdh_n=1.7;
% Parameter:   id =  e_Mdh_Kmal, name = e_Mdh_Kmal
	global_par_e_Mdh_Kmal=10.1;
% Parameter:   id =  e_Me_kcat, name = e_Me_kcat
	global_par_e_Me_kcat=1879.0;
% Parameter:   id =  e_Me_n, name = e_Me_n
	global_par_e_Me_n=1.33;
% Parameter:   id =  e_Me_L, name = e_Me_L
	global_par_e_Me_L=104000.0;
% Parameter:   id =  e_Me_Kmal, name = e_Me_Kmal
	global_par_e_Me_Kmal=0.00624;
% Parameter:   id =  e_Me_Kacoa, name = e_Me_Kacoa
	global_par_e_Me_Kacoa=3.64;
% Parameter:   id =  e_Me_Kcamp, name = e_Me_Kcamp
	global_par_e_Me_Kcamp=6.54;
% Parameter:   id =  e_PckA_kcat, name = e_PckA_kcat
	global_par_e_PckA_kcat=55.5;
% Parameter:   id =  e_PckA_Koaa, name = e_PckA_Koaa
	global_par_e_PckA_Koaa=0.184;
% Parameter:   id =  e_PckA_Kpep, name = e_PckA_Kpep
	global_par_e_PckA_Kpep=1000.0;
% Parameter:   id =  e_Pdh_kcat, name = e_Pdh_kcat
	global_par_e_Pdh_kcat=1179.0;
% Parameter:   id =  e_Pdh_n, name = e_Pdh_n
	global_par_e_Pdh_n=2.65;
% Parameter:   id =  e_Pdh_L, name = e_Pdh_L
	global_par_e_Pdh_L=3.4;
% Parameter:   id =  e_Pdh_Kpyr, name = e_Pdh_Kpyr
	global_par_e_Pdh_Kpyr=0.128;
% Parameter:   id =  e_Pdh_KpyrI, name = e_Pdh_KpyrI
	global_par_e_Pdh_KpyrI=0.231;
% Parameter:   id =  e_Pdh_Kglx, name = e_Pdh_Kglx
	global_par_e_Pdh_Kglx=0.218;
% Parameter:   id =  e_PfkA_kcat, name = e_PfkA_kcat
	global_par_e_PfkA_kcat=908000.0;
% Parameter:   id =  e_PfkA_n, name = e_PfkA_n
	global_par_e_PfkA_n=4.0;
% Parameter:   id =  e_PfkA_L, name = e_PfkA_L
	global_par_e_PfkA_L=9.5E7;
% Parameter:   id =  e_PfkA_Kg6p, name = e_PfkA_Kg6p
	global_par_e_PfkA_Kg6p=0.022;
% Parameter:   id =  e_PfkA_Kpep, name = e_PfkA_Kpep
	global_par_e_PfkA_Kpep=0.138;
% Parameter:   id =  e_Ppc_kcat, name = e_Ppc_kcat
	global_par_e_Ppc_kcat=5635.0;
% Parameter:   id =  e_Ppc_n, name = e_Ppc_n
	global_par_e_Ppc_n=3.0;
% Parameter:   id =  e_Ppc_L, name = e_Ppc_L
	global_par_e_Ppc_L=5200000.0;
% Parameter:   id =  e_Ppc_Kpep, name = e_Ppc_Kpep
	global_par_e_Ppc_Kpep=0.048;
% Parameter:   id =  e_Ppc_Kfbp, name = e_Ppc_Kfbp
	global_par_e_Ppc_Kfbp=0.408;
% Parameter:   id =  e_PpsA_kcat, name = e_PpsA_kcat
	global_par_e_PpsA_kcat=1.32;
% Parameter:   id =  e_PpsA_n, name = e_PpsA_n
	global_par_e_PpsA_n=2.0;
% Parameter:   id =  e_PpsA_L, name = e_PpsA_L
	global_par_e_PpsA_L=1.0E-79;
% Parameter:   id =  e_PpsA_Kpyr, name = e_PpsA_Kpyr
	global_par_e_PpsA_Kpyr=0.00177;
% Parameter:   id =  e_PpsA_Kpep, name = e_PpsA_Kpep
	global_par_e_PpsA_Kpep=0.001;
% Parameter:   id =  e_PykF_kcat, name = e_PykF_kcat
	global_par_e_PykF_kcat=5749.0;
% Parameter:   id =  e_PykF_n, name = e_PykF_n
	global_par_e_PykF_n=4.0;
% Parameter:   id =  e_PykF_L, name = e_PykF_L
	global_par_e_PykF_L=100000.0;
% Parameter:   id =  e_PykF_Kpep, name = e_PykF_Kpep
	global_par_e_PykF_Kpep=5.0;
% Parameter:   id =  e_PykF_Kfbp, name = e_PykF_Kfbp
	global_par_e_PykF_Kfbp=0.413;
% Parameter:   id =  pts_k1, name = pts_k1
	global_par_pts_k1=116.0;
% Parameter:   id =  pts_km1, name = pts_km1
	global_par_pts_km1=46.3;
% Parameter:   id =  pts_k4, name = pts_k4
	global_par_pts_k4=2520.0;
% Parameter:   id =  pts_KEIIA, name = pts_KEIIA
	global_par_pts_KEIIA=0.0085;
% Parameter:   id =  pts_Kglc, name = pts_Kglc
	global_par_pts_Kglc=0.0012;
% Parameter:   id =  tf_Cra_scale, name = tf_Cra_scale
	global_par_tf_Cra_scale=100.0;
% Parameter:   id =  tf_Cra_kfbp, name = tf_Cra_kfbp
	global_par_tf_Cra_kfbp=1.36;
% Parameter:   id =  tf_Cra_n, name = tf_Cra_n
	global_par_tf_Cra_n=2.0;
% Parameter:   id =  tf_Crp_scale, name = tf_Crp_scale
	global_par_tf_Crp_scale=1.0E8;
% Parameter:   id =  tf_Crp_kcamp, name = tf_Crp_kcamp
	global_par_tf_Crp_kcamp=0.895;
% Parameter:   id =  tf_Crp_n, name = tf_Crp_n
	global_par_tf_Crp_n=1.0;
% Parameter:   id =  tf_PdhR_scale, name = tf_PdhR_scale
	global_par_tf_PdhR_scale=100.0;
% Parameter:   id =  tf_PdhR_kpyr, name = tf_PdhR_kpyr
	global_par_tf_PdhR_kpyr=0.164;
% Parameter:   id =  tf_PdhR_n, name = tf_PdhR_n
	global_par_tf_PdhR_n=1.0;
% Parameter:   id =  g_aceBAK_vcra_unbound, name = g_aceBAK_vcra_unbound
	global_par_g_aceBAK_vcra_unbound=1.9E-9;
% Parameter:   id =  g_aceBAK_vcra_bound, name = g_aceBAK_vcra_bound
	global_par_g_aceBAK_vcra_bound=2.0E-6;
% Parameter:   id =  g_aceBAK_Kcra, name = g_aceBAK_Kcra
	global_par_g_aceBAK_Kcra=0.00365;
% Parameter:   id =  g_aceBAK_aceBfactor, name = g_aceBAK_aceBfactor
	global_par_g_aceBAK_aceBfactor=0.3;
% Parameter:   id =  g_aceBAK_aceKfactor, name = g_aceBAK_aceKfactor
	global_par_g_aceBAK_aceKfactor=0.03;
% Parameter:   id =  g_aceBAK_KDNA, name = g_aceBAK_KDNA
	global_par_g_aceBAK_KDNA=2.19;
% Parameter:   id =  g_aceBAK_KP, name = g_aceBAK_KP
	global_par_g_aceBAK_KP=0.897;
% Parameter:   id =  g_aceBAK_KPprime, name = g_aceBAK_KPprime
	global_par_g_aceBAK_KPprime=0.00301;
% Parameter:   id =  g_aceBAK_KG, name = g_aceBAK_KG
	global_par_g_aceBAK_KG=0.00488;
% Parameter:   id =  g_aceBAK_L, name = g_aceBAK_L
	global_par_g_aceBAK_L=923.0;
% Parameter:   id =  g_aceBAK_kcat_iclr, name = g_aceBAK_kcat_iclr
	global_par_g_aceBAK_kcat_iclr=9.3E-4;
% Parameter:   id =  g_aceBAK_DNA, name = g_aceBAK_DNA
	global_par_g_aceBAK_DNA=1.0;
% Parameter:   id =  g_aceBAK_vcrp_bound, name = g_aceBAK_vcrp_bound
	global_par_g_aceBAK_vcrp_bound=2.3E-10;
% Parameter:   id =  g_aceBAK_vcrp_unbound, name = g_aceBAK_vcrp_unbound
	global_par_g_aceBAK_vcrp_unbound=2.0E-8;
% Parameter:   id =  g_aceBAK_Kcrp, name = g_aceBAK_Kcrp
	global_par_g_aceBAK_Kcrp=0.341;
% Parameter:   id =  g_acs_vcrp_unbound, name = g_acs_vcrp_unbound
	global_par_g_acs_vcrp_unbound=0.0;
% Parameter:   id =  g_acs_vcrp_bound, name = g_acs_vcrp_bound
	global_par_g_acs_vcrp_bound=1.2E-6;
% Parameter:   id =  g_acs_n, name = g_acs_n
	global_par_g_acs_n=2.31;
% Parameter:   id =  g_acs_Kcrp, name = g_acs_Kcrp
	global_par_g_acs_Kcrp=0.0047;
% Parameter:   id =  g_akg2mal_vcrp_unbound, name = g_akg2mal_vcrp_unbound
	global_par_g_akg2mal_vcrp_unbound=0.0;
% Parameter:   id =  g_akg2mal_vcrp_bound, name = g_akg2mal_vcrp_bound
	global_par_g_akg2mal_vcrp_bound=1.4E-6;
% Parameter:   id =  g_akg2mal_Kcrp, name = g_akg2mal_Kcrp
	global_par_g_akg2mal_Kcrp=0.091;
% Parameter:   id =  g_akg2mal_n, name = g_akg2mal_n
	global_par_g_akg2mal_n=0.74;
% Parameter:   id =  g_emp_vcra_unbound, name = g_emp_vcra_unbound
	global_par_g_emp_vcra_unbound=6.2E-7;
% Parameter:   id =  g_emp_vcra_bound, name = g_emp_vcra_bound
	global_par_g_emp_vcra_bound=0.0;
% Parameter:   id =  g_emp_Kcra, name = g_emp_Kcra
	global_par_g_emp_Kcra=0.09;
% Parameter:   id =  g_emp_vcrp_unbound, name = g_emp_vcrp_unbound
	global_par_g_emp_vcrp_unbound=0.0;
% Parameter:   id =  g_emp_vcrp_bound, name = g_emp_vcrp_bound
	global_par_g_emp_vcrp_bound=4.7E-7;
% Parameter:   id =  g_emp_Kcrp, name = g_emp_Kcrp
	global_par_g_emp_Kcrp=0.012;
% Parameter:   id =  g_eno_vcra_unbound, name = g_eno_vcra_unbound
	global_par_g_eno_vcra_unbound=6.8E-7;
% Parameter:   id =  g_eno_vcra_bound, name = g_eno_vcra_bound
	global_par_g_eno_vcra_bound=0.0;
% Parameter:   id =  g_eno_Kcra, name = g_eno_Kcra
	global_par_g_eno_Kcra=0.016;
% Parameter:   id =  g_fdp_vcra_unbound, name = g_fdp_vcra_unbound
	global_par_g_fdp_vcra_unbound=0.0;
% Parameter:   id =  g_fdp_vcra_bound, name = g_fdp_vcra_bound
	global_par_g_fdp_vcra_bound=4.5E-8;
% Parameter:   id =  g_fdp_Kcra, name = g_fdp_Kcra
	global_par_g_fdp_Kcra=0.00118;
% Parameter:   id =  g_gltA_vcrp_unbound, name = g_gltA_vcrp_unbound
	global_par_g_gltA_vcrp_unbound=0.0;
% Parameter:   id =  g_gltA_vcrp_bound, name = g_gltA_vcrp_bound
	global_par_g_gltA_vcrp_bound=2.3E-6;
% Parameter:   id =  g_gltA_Kcrp, name = g_gltA_Kcrp
	global_par_g_gltA_Kcrp=0.04;
% Parameter:   id =  g_gltA_n, name = g_gltA_n
	global_par_g_gltA_n=1.07;
% Parameter:   id =  g_icd_vcra_unbound, name = g_icd_vcra_unbound
	global_par_g_icd_vcra_unbound=1.1E-7;
% Parameter:   id =  g_icd_vcra_bound, name = g_icd_vcra_bound
	global_par_g_icd_vcra_bound=8.5E-7;
% Parameter:   id =  g_icd_Kcra, name = g_icd_Kcra
	global_par_g_icd_Kcra=0.00117;
% Parameter:   id =  g_mdh_vcrp_unbound, name = g_mdh_vcrp_unbound
	global_par_g_mdh_vcrp_unbound=0.0;
% Parameter:   id =  g_mdh_vcrp_bound, name = g_mdh_vcrp_bound
	global_par_g_mdh_vcrp_bound=9.1E-6;
% Parameter:   id =  g_mdh_Kcrp, name = g_mdh_Kcrp
	global_par_g_mdh_Kcrp=0.06;
% Parameter:   id =  g_pckA_vcra_unbound, name = g_pckA_vcra_unbound
	global_par_g_pckA_vcra_unbound=0.0;
% Parameter:   id =  g_pckA_vcra_bound, name = g_pckA_vcra_bound
	global_par_g_pckA_vcra_bound=2.5E-6;
% Parameter:   id =  g_pckA_Kcra, name = g_pckA_Kcra
	global_par_g_pckA_Kcra=0.00535;
% Parameter:   id =  g_pdh_vpdhr_unbound, name = g_pdh_vpdhr_unbound
	global_par_g_pdh_vpdhr_unbound=3.6E-7;
% Parameter:   id =  g_pdh_vpdhr_bound, name = g_pdh_vpdhr_bound
	global_par_g_pdh_vpdhr_bound=1.3E-9;
% Parameter:   id =  g_pdh_Kpdhr, name = g_pdh_Kpdhr
	global_par_g_pdh_Kpdhr=0.0034;
% Parameter:   id =  g_pfkA_vcra_unbound, name = g_pfkA_vcra_unbound
	global_par_g_pfkA_vcra_unbound=8.2E-7;
% Parameter:   id =  g_pfkA_vcra_bound, name = g_pfkA_vcra_bound
	global_par_g_pfkA_vcra_bound=6.6E-9;
% Parameter:   id =  g_pfkA_Kcra, name = g_pfkA_Kcra
	global_par_g_pfkA_Kcra=6.3E-7;
% Parameter:   id =  g_ppsA_vcra_unbound, name = g_ppsA_vcra_unbound
	global_par_g_ppsA_vcra_unbound=0.0;
% Parameter:   id =  g_ppsA_vcra_bound, name = g_ppsA_vcra_bound
	global_par_g_ppsA_vcra_bound=3.3E-6;
% Parameter:   id =  g_ppsA_Kcra, name = g_ppsA_Kcra
	global_par_g_ppsA_Kcra=0.017;
% Parameter:   id =  g_pykF_vcra_unbound, name = g_pykF_vcra_unbound
	global_par_g_pykF_vcra_unbound=3.9E-7;
% Parameter:   id =  g_pykF_vcra_bound, name = g_pykF_vcra_bound
	global_par_g_pykF_vcra_bound=2.1E-9;
% Parameter:   id =  g_pykF_Kcra, name = g_pykF_Kcra
	global_par_g_pykF_Kcra=0.0023;
% Parameter:   id =  d_k_degr, name = d_k_degr
	global_par_d_k_degr=2.8E-5;
% Parameter:   id =  bm_k_expr, name = bm_k_expr
	global_par_bm_k_expr=20000.0;
% Parameter:   id =  bm_muACT, name = bm_muACT
	global_par_bm_muACT=5.6E-5;
% Parameter:   id =  bm_muGLC, name = bm_muGLC
	global_par_bm_muGLC=1.8E-4;
% Parameter:   id =  bm_GLC_ACoA, name = bm_GLC_ACoA
	global_par_bm_GLC_ACoA=1.88;
% Parameter:   id =  bm_GLC_AKG, name = bm_GLC_AKG
	global_par_bm_GLC_AKG=0.978;
% Parameter:   id =  bm_GLC_G6P, name = bm_GLC_G6P
	global_par_bm_GLC_G6P=0.154;
% Parameter:   id =  bm_GLC_OAA, name = bm_GLC_OAA
	global_par_bm_GLC_OAA=6.4;
% Parameter:   id =  bm_GLC_PEP, name = bm_GLC_PEP
	global_par_bm_GLC_PEP=0.423;
% Parameter:   id =  bm_GLC_PG3, name = bm_GLC_PG3
	global_par_bm_GLC_PG3=0.049;
% Parameter:   id =  bm_GLC_PYR, name = bm_GLC_PYR
	global_par_bm_GLC_PYR=0.553;
% Parameter:   id =  bm_ACT_ACoA, name = bm_ACT_ACoA
	global_par_bm_ACT_ACoA=0.108;
% Parameter:   id =  bm_ACT_AKG, name = bm_ACT_AKG
	global_par_bm_ACT_AKG=0.056;
% Parameter:   id =  bm_ACT_G6P, name = bm_ACT_G6P
	global_par_bm_ACT_G6P=0.076;
% Parameter:   id =  bm_ACT_OAA, name = bm_ACT_OAA
	global_par_bm_ACT_OAA=1.43;
% Parameter:   id =  bm_ACT_PEP, name = bm_ACT_PEP
	global_par_bm_ACT_PEP=0.047;
% Parameter:   id =  bm_ACT_PG3, name = bm_ACT_PG3
	global_par_bm_ACT_PG3=0.066;
% Parameter:   id =  bm_ACT_PYR, name = bm_ACT_PYR
	global_par_bm_ACT_PYR=5.185;
% Parameter:   id =  alphaGLC, name = alphaGLC
% Parameter:   id =  alphaACT, name = alphaACT
% Parameter:   id =  mu, name = mu
% Parameter:   id =  k_bm_ACoA, name = k_bm_ACoA
% Parameter:   id =  k_bm_AKG, name = k_bm_AKG
% Parameter:   id =  k_bm_G6P, name = k_bm_G6P
% Parameter:   id =  k_bm_OAA, name = k_bm_OAA
% Parameter:   id =  k_bm_PEP, name = k_bm_PEP
% Parameter:   id =  k_bm_PG3, name = k_bm_PG3
% Parameter:   id =  k_bm_PYR, name = k_bm_PYR
% Parameter:   id =  SS_Me, name = SS_Me
% Parameter:   id =  SS_Ppc, name = SS_Ppc
% Parameter:   id =  shift1, name = shift1
	global_par_shift1=8.15;
% Parameter:   id =  shift2, name = shift2
	global_par_shift2=27.85;
% Parameter:   id =  GLC_1, name = GLC_1
	global_par_GLC_1=0.0;
% Parameter:   id =  GLC_2, name = GLC_2
	global_par_GLC_2=3.0;
% Parameter:   id =  ACT_1, name = ACT_1
	global_par_ACT_1=5.0;
% Parameter:   id =  ACT_2, name = ACT_2
	global_par_ACT_2=3.0;
% Parameter:   id =  BM_1, name = BM_1
	global_par_BM_1=0.03;
% Parameter:   id =  BM_2, name = BM_2
	global_par_BM_2=5.0E-4;
% assignmentRule: variable = alphaGLC
	global_par_alphaGLC=x(3)/(x(3)+global_par_pts_Kglc);
% assignmentRule: variable = alphaACT
	global_par_alphaACT=x(2)/(x(2)+global_par_e_Acs_Kact)*(1-x(3)/(x(3)+global_par_pts_Kglc));
% assignmentRule: variable = mu
	global_par_mu=global_par_alphaGLC*global_par_bm_muGLC+global_par_alphaACT*global_par_bm_muACT;
% assignmentRule: variable = k_bm_ACoA
	global_par_k_bm_ACoA=global_par_alphaGLC*global_par_bm_GLC_ACoA+global_par_alphaACT*global_par_bm_ACT_ACoA;
% assignmentRule: variable = k_bm_AKG
	global_par_k_bm_AKG=global_par_alphaGLC*global_par_bm_GLC_AKG+global_par_alphaACT*global_par_bm_ACT_AKG;
% assignmentRule: variable = k_bm_G6P
	global_par_k_bm_G6P=global_par_alphaGLC*global_par_bm_GLC_G6P+global_par_alphaACT*global_par_bm_ACT_G6P;
% assignmentRule: variable = k_bm_OAA
	global_par_k_bm_OAA=global_par_alphaGLC*global_par_bm_GLC_OAA+global_par_alphaACT*global_par_bm_ACT_OAA;
% assignmentRule: variable = k_bm_PEP
	global_par_k_bm_PEP=global_par_alphaGLC*global_par_bm_GLC_PEP+global_par_alphaACT*global_par_bm_ACT_PEP;
% assignmentRule: variable = k_bm_PG3
	global_par_k_bm_PG3=global_par_alphaGLC*global_par_bm_GLC_PG3+global_par_alphaACT*global_par_bm_ACT_PG3;
% assignmentRule: variable = k_bm_PYR
	global_par_k_bm_PYR=global_par_alphaGLC*global_par_bm_GLC_PYR+global_par_alphaACT*global_par_bm_ACT_PYR;
% assignmentRule: variable = SS_Me
	global_par_SS_Me=global_par_alphaGLC*0.000999714+global_par_alphaACT*0.003399346;
% assignmentRule: variable = SS_Ppc
	global_par_SS_Ppc=global_par_alphaGLC*0.000999714+global_par_alphaACT*0.000279893;

% Reaction: id = bm_ACoA, name = bm_ACoA
	reaction_bm_ACoA=global_par_k_bm_ACoA*x(4);

% Reaction: id = bm_AKG, name = bm_AKG
	reaction_bm_AKG=global_par_k_bm_AKG*x(5);

% Reaction: id = bm_G6P, name = bm_G6P
	reaction_bm_G6P=global_par_k_bm_G6P*x(8);

% Reaction: id = bm_OAA, name = bm_OAA
	reaction_bm_OAA=global_par_k_bm_OAA*x(12);

% Reaction: id = bm_PEP, name = bm_PEP
	reaction_bm_PEP=global_par_k_bm_PEP*x(13);

% Reaction: id = bm_PG3, name = bm_PG3
	reaction_bm_PG3=global_par_k_bm_PG3*x(14);

% Reaction: id = bm_PYR, name = bm_PYR
	reaction_bm_PYR=global_par_k_bm_PYR*x(15);

% Reaction: id = pts_r1, name = pts_r1
	reaction_pts_r1=global_par_pts_k1*x(13)*x(45)-global_par_pts_km1*x(15)*x(46);

% Reaction: id = pts_r4, name = pts_r4
	reaction_pts_r4=global_par_pts_k4*x(47)*x(46)*x(3)/((global_par_pts_KEIIA+x(46))*(global_par_pts_Kglc+x(3)));

% Reaction: id = e_AceK_Ki, name = e_AceK_Ki
	reaction_e_AceK_Ki=x(18)*global_par_e_AceK_kcat_ki*x(28)/global_par_e_AceK_Kicd*(1+x(28)/global_par_e_AceK_Kicd)^(global_par_e_AceK_n-1)/((1+x(28)/global_par_e_AceK_Kicd)^global_par_e_AceK_n+global_par_e_AceK_L*(1+x(10)/global_par_e_AceK_Kict+x(9)/global_par_e_AceK_Kglx+x(12)/global_par_e_AceK_Koaa+x(5)/global_par_e_AceK_Kakg+x(13)/global_par_e_AceK_Kpep+x(14)/global_par_e_AceK_Kpg3+x(15)/global_par_e_AceK_Kpyr)^global_par_e_AceK_n);

% Reaction: id = e_AceK_Ph, name = e_AceK_Ph
	reaction_e_AceK_Ph=x(18)*global_par_e_AceK_kcat_ph*x(29)/global_par_e_AceK_Kicd_P*(1+x(29)/global_par_e_AceK_Kicd_P)^(global_par_e_AceK_n-1)/((1+x(29)/global_par_e_AceK_Kicd_P)^global_par_e_AceK_n+global_par_e_AceK_L/(1+x(12)/global_par_e_AceK_Koaa+x(5)/global_par_e_AceK_Kakg+x(13)/global_par_e_AceK_Kpep+x(14)/global_par_e_AceK_Kpg3+x(15)/global_par_e_AceK_Kpyr)^global_par_e_AceK_n);

% Reaction: id = tf_Cra, name = tf_Cra
	reaction_tf_Cra=global_par_tf_Cra_scale*((x(38)+x(39))*x(7)^global_par_tf_Cra_n/(x(7)^global_par_tf_Cra_n+global_par_tf_Cra_kfbp^global_par_tf_Cra_n)-x(39));

% Reaction: id = tf_Crp, name = tf_Crp
	reaction_tf_Crp=global_par_tf_Crp_scale*((x(40)+x(41))*x(6)^global_par_tf_Crp_n/(x(6)^global_par_tf_Crp_n+global_par_tf_Crp_kcamp^global_par_tf_Crp_n)-x(41));

% Reaction: id = tf_PdhR, name = tf_PdhR
	reaction_tf_PdhR=global_par_tf_PdhR_scale*((x(43)+x(44))*x(15)^global_par_tf_PdhR_n/(x(15)^global_par_tf_PdhR_n+global_par_tf_PdhR_kpyr^global_par_tf_PdhR_n)-x(44));

% Reaction: id = e_AceA, name = e_AceA
	reaction_e_AceA=x(16)*global_par_e_AceA_kcat*x(10)/global_par_e_AceA_Kict*(1+x(10)/global_par_e_AceA_Kict)^(global_par_e_AceA_n-1)/((1+x(10)/global_par_e_AceA_Kict)^global_par_e_AceA_n+global_par_e_AceA_L*(1+x(13)/global_par_e_AceA_Kpep+x(14)/global_par_e_AceA_Kpg3+x(5)/global_par_e_AceA_Kakg)^global_par_e_AceA_n);

% Reaction: id = e_AceB, name = e_AceB
	reaction_e_AceB=x(17)*global_par_e_AceB_kcat*x(9)*x(4)/(global_par_e_AceB_Kglxacoa*global_par_e_AceB_Kacoa+global_par_e_AceB_Kacoa*x(9)+global_par_e_AceB_Kglx*x(4)+x(9)*x(4));

% Reaction: id = e_Acoa2act, name = e_Acoa2act
	reaction_e_Acoa2act=x(19)*global_par_e_Acoa2act_kcat*x(4)/global_par_e_Acoa2act_Kacoa*(1+x(4)/global_par_e_Acoa2act_Kacoa)^(global_par_e_Acoa2act_n-1)/((1+x(4)/global_par_e_Acoa2act_Kacoa)^global_par_e_Acoa2act_n+global_par_e_Acoa2act_L/(1+x(15)/global_par_e_Acoa2act_Kpyr)^global_par_e_Acoa2act_n);

% Reaction: id = e_Acs, name = e_Acs
	reaction_e_Acs=x(20)*global_par_e_Acs_kcat*x(2)/(x(2)+global_par_e_Acs_Kact);

% Reaction: id = e_Akg2mal, name = e_Akg2mal
	reaction_e_Akg2mal=x(21)*global_par_e_Akg2mal_kcat*x(5)/(x(5)+global_par_e_Akg2mal_Kakg);

% Reaction: id = e_CAMPdegr, name = e_CAMPdegr
	reaction_e_CAMPdegr=global_par_e_CAMPdegr_kcat*x(22)*x(6)/(x(6)+global_par_e_CAMPdegr_KcAMP);

% Reaction: id = e_Cya, name = e_Cya
	reaction_e_Cya=global_par_e_Cya_kcat*x(23)*x(46)/(x(46)+global_par_e_Cya_KEIIA);

% Reaction: id = e_Emp, name = e_Emp
	reaction_e_Emp=(x(24)*global_par_e_Emp_kcat_f*x(7)/global_par_e_Emp_Kfbp-x(24)*global_par_e_Emp_kcat_r*x(14)/global_par_e_Emp_Kpg3)/(1+x(7)/global_par_e_Emp_Kfbp+x(14)/global_par_e_Emp_Kpg3);

% Reaction: id = e_Eno, name = e_Eno
	reaction_e_Eno=(x(25)*global_par_e_Eno_kcatf*x(14)/global_par_e_Eno_Kpg3-x(25)*global_par_e_Eno_kcatr*x(13)/global_par_e_Eno_Kpep)/(1+x(14)/global_par_e_Eno_Kpg3+x(13)/global_par_e_Eno_Kpep);

% Reaction: id = e_Fdp, name = e_Fdp
	reaction_e_Fdp=x(26)*global_par_e_Fdp_kcat*x(7)/global_par_e_Fdp_Kfbp*(1+x(7)/global_par_e_Fdp_Kfbp)^(global_par_e_Fdp_n-1)/((1+x(7)/global_par_e_Fdp_Kfbp)^global_par_e_Fdp_n+global_par_e_Fdp_L/(1+x(13)/global_par_e_Fdp_Kpep)^global_par_e_Fdp_n);

% Reaction: id = e_GltA, name = e_GltA
	reaction_e_GltA=x(27)*global_par_e_GltA_kcat*x(12)*x(4)/((1+x(5)/global_par_e_GltA_Kakg)*global_par_e_GltA_Koaaacoa*global_par_e_GltA_Kacoa+global_par_e_GltA_Kacoa*x(12)+(1+x(5)/global_par_e_GltA_Kakg)*global_par_e_GltA_Koaa*x(4)+x(12)*x(4));

% Reaction: id = e_Icd, name = e_Icd
	reaction_e_Icd=x(28)*global_par_e_Icd_kcat*x(10)/global_par_e_Icd_Kict*(1+x(10)/global_par_e_Icd_Kict)^(global_par_e_Icd_n-1)/((1+x(10)/global_par_e_Icd_Kict)^global_par_e_Icd_n+global_par_e_Icd_L*(1+x(13)/global_par_e_Icd_Kpep)^global_par_e_Icd_n);

% Reaction: id = e_Mdh, name = e_Mdh
	reaction_e_Mdh=x(30)*global_par_e_Mdh_kcat*x(11)^global_par_e_Mdh_n/(x(11)^global_par_e_Mdh_n+global_par_e_Mdh_Kmal^global_par_e_Mdh_n);

% Reaction: id = e_Me, name = e_Me
	reaction_e_Me=x(31)*global_par_e_Me_kcat*x(11)/global_par_e_Me_Kmal*(1+x(11)/global_par_e_Me_Kmal)^(global_par_e_Me_n-1)/((1+x(11)/global_par_e_Me_Kmal)^global_par_e_Me_n+global_par_e_Me_L*(1+x(4)/global_par_e_Me_Kacoa+x(6)/global_par_e_Me_Kcamp)^global_par_e_Me_n);

% Reaction: id = e_PckA, name = e_PckA
	reaction_e_PckA=x(32)*global_par_e_PckA_kcat*x(12)/(x(12)+global_par_e_PckA_Koaa*(1+x(13)/global_par_e_PckA_Kpep));

% Reaction: id = e_Pdh, name = e_Pdh
	reaction_e_Pdh=x(33)*global_par_e_Pdh_kcat*x(15)/global_par_e_Pdh_Kpyr*(1+x(15)/global_par_e_Pdh_Kpyr)^(global_par_e_Pdh_n-1)/((1+x(15)/global_par_e_Pdh_Kpyr)^global_par_e_Pdh_n+global_par_e_Pdh_L*(1+x(9)/global_par_e_Pdh_Kglx+x(15)/global_par_e_Pdh_KpyrI)^global_par_e_Pdh_n);

% Reaction: id = e_PfkA, name = e_PfkA
	reaction_e_PfkA=x(34)*global_par_e_PfkA_kcat*x(8)/global_par_e_PfkA_Kg6p*(1+x(8)/global_par_e_PfkA_Kg6p)^(global_par_e_PfkA_n-1)/((1+x(8)/global_par_e_PfkA_Kg6p)^global_par_e_PfkA_n+global_par_e_PfkA_L*(1+x(13)/global_par_e_PfkA_Kpep)^global_par_e_PfkA_n);

% Reaction: id = e_Ppc, name = e_Ppc
	reaction_e_Ppc=x(35)*global_par_e_Ppc_kcat*x(13)/global_par_e_Ppc_Kpep*(1+x(13)/global_par_e_Ppc_Kpep)^(global_par_e_Ppc_n-1)/((1+x(13)/global_par_e_Ppc_Kpep)^global_par_e_Ppc_n+global_par_e_Ppc_L/(1+x(7)/global_par_e_Ppc_Kfbp)^global_par_e_Ppc_n);

% Reaction: id = e_PpsA, name = e_PpsA
	reaction_e_PpsA=x(36)*global_par_e_PpsA_kcat*x(15)/global_par_e_PpsA_Kpyr*(1+x(15)/global_par_e_PpsA_Kpyr)^(global_par_e_PpsA_n-1)/((1+x(15)/global_par_e_PpsA_Kpyr)^global_par_e_PpsA_n+global_par_e_PpsA_L*(1+x(13)/global_par_e_PpsA_Kpep)^global_par_e_PpsA_n);

% Reaction: id = e_PykF, name = e_PykF
	reaction_e_PykF=x(37)*global_par_e_PykF_kcat*x(13)/global_par_e_PykF_Kpep*(1+x(13)/global_par_e_PykF_Kpep)^(global_par_e_PykF_n-1)/((1+x(13)/global_par_e_PykF_Kpep)^global_par_e_PykF_n+global_par_e_PykF_L/(1+x(7)/global_par_e_PykF_Kfbp)^global_par_e_PykF_n);

% Reaction: id = g_aceA, name = g_aceA
	reaction_g_aceA=global_par_bm_k_expr*global_par_mu*((1-x(38)/(x(38)+global_par_g_aceBAK_Kcra))*global_par_g_aceBAK_vcra_unbound+x(38)/(x(38)+global_par_g_aceBAK_Kcra)*global_par_g_aceBAK_vcra_bound+(1-x(41)/(x(41)+global_par_g_aceBAK_Kcrp))*global_par_g_aceBAK_vcrp_unbound+x(41)/(x(41)+global_par_g_aceBAK_Kcrp)*global_par_g_aceBAK_vcrp_bound+global_par_g_aceBAK_kcat_iclr*x(42)*(1-global_par_g_aceBAK_DNA/global_par_g_aceBAK_KDNA*(1+x(15)/global_par_g_aceBAK_KPprime)/(1+x(9)/global_par_g_aceBAK_KG*(1+x(9)/global_par_g_aceBAK_KG)/global_par_g_aceBAK_L+global_par_g_aceBAK_DNA/global_par_g_aceBAK_KDNA+x(15)/global_par_g_aceBAK_KP+global_par_g_aceBAK_DNA*x(15)/global_par_g_aceBAK_KDNA/global_par_g_aceBAK_KPprime)));

% Reaction: id = g_aceB, name = g_aceB
	reaction_g_aceB=global_par_g_aceBAK_aceBfactor*global_par_bm_k_expr*global_par_mu*((1-x(38)/(x(38)+global_par_g_aceBAK_Kcra))*global_par_g_aceBAK_vcra_unbound+x(38)/(x(38)+global_par_g_aceBAK_Kcra)*global_par_g_aceBAK_vcra_bound+(1-x(41)/(x(41)+global_par_g_aceBAK_Kcrp))*global_par_g_aceBAK_vcrp_unbound+x(41)/(x(41)+global_par_g_aceBAK_Kcrp)*global_par_g_aceBAK_vcrp_bound+global_par_g_aceBAK_kcat_iclr*x(42)*(1-global_par_g_aceBAK_DNA/global_par_g_aceBAK_KDNA*(1+x(15)/global_par_g_aceBAK_KPprime)/(1+x(9)/global_par_g_aceBAK_KG*(1+x(9)/global_par_g_aceBAK_KG)/global_par_g_aceBAK_L+global_par_g_aceBAK_DNA/global_par_g_aceBAK_KDNA+x(15)/global_par_g_aceBAK_KP+global_par_g_aceBAK_DNA*x(15)/global_par_g_aceBAK_KDNA/global_par_g_aceBAK_KPprime)));

% Reaction: id = g_aceK, name = g_aceK
	reaction_g_aceK=global_par_g_aceBAK_aceKfactor*global_par_bm_k_expr*global_par_mu*((1-x(38)/(x(38)+global_par_g_aceBAK_Kcra))*global_par_g_aceBAK_vcra_unbound+x(38)/(x(38)+global_par_g_aceBAK_Kcra)*global_par_g_aceBAK_vcra_bound+(1-x(41)/(x(41)+global_par_g_aceBAK_Kcrp))*global_par_g_aceBAK_vcrp_unbound+x(41)/(x(41)+global_par_g_aceBAK_Kcrp)*global_par_g_aceBAK_vcrp_bound+global_par_g_aceBAK_kcat_iclr*x(42)*(1-global_par_g_aceBAK_DNA/global_par_g_aceBAK_KDNA*(1+x(15)/global_par_g_aceBAK_KPprime)/(1+x(9)/global_par_g_aceBAK_KG*(1+x(9)/global_par_g_aceBAK_KG)/global_par_g_aceBAK_L+global_par_g_aceBAK_DNA/global_par_g_aceBAK_KDNA+x(15)/global_par_g_aceBAK_KP+global_par_g_aceBAK_DNA*x(15)/global_par_g_aceBAK_KDNA/global_par_g_aceBAK_KPprime)));

% Reaction: id = g_acoa2act, name = g_acoa2act
	reaction_g_acoa2act=0;

% Reaction: id = g_acs, name = g_acs
	reaction_g_acs=global_par_bm_k_expr*global_par_mu*((1-x(41)^global_par_g_acs_n/(x(41)^global_par_g_acs_n+global_par_g_acs_Kcrp^global_par_g_acs_n))*global_par_g_acs_vcrp_unbound+x(41)^global_par_g_acs_n/(x(41)^global_par_g_acs_n+global_par_g_acs_Kcrp^global_par_g_acs_n)*global_par_g_acs_vcrp_bound);

% Reaction: id = g_akg2mal, name = g_akg2mal
	reaction_g_akg2mal=global_par_bm_k_expr*global_par_mu*((1-x(41)^global_par_g_akg2mal_n/(x(41)^global_par_g_akg2mal_n+global_par_g_akg2mal_Kcrp^global_par_g_akg2mal_n))*global_par_g_akg2mal_vcrp_unbound+x(41)^global_par_g_akg2mal_n/(x(41)^global_par_g_akg2mal_n+global_par_g_akg2mal_Kcrp^global_par_g_akg2mal_n)*global_par_g_akg2mal_vcrp_bound);

% Reaction: id = g_cAMPdegr, name = g_cAMPdegr
	reaction_g_cAMPdegr=0;

% Reaction: id = g_cra, name = g_cra
	reaction_g_cra=0;

% Reaction: id = g_crp, name = g_crp
	reaction_g_crp=0;

% Reaction: id = g_cya, name = g_cya
	reaction_g_cya=0;

% Reaction: id = g_emp, name = g_emp
	reaction_g_emp=global_par_bm_k_expr*global_par_mu*((1-x(38)/(x(38)+global_par_g_emp_Kcra))*global_par_g_emp_vcra_unbound+x(38)/(x(38)+global_par_g_emp_Kcra)*global_par_g_emp_vcra_bound+(1-x(41)/(x(41)+global_par_g_emp_Kcrp))*global_par_g_emp_vcrp_unbound+x(41)/(x(41)+global_par_g_emp_Kcrp)*global_par_g_emp_vcrp_bound);

% Reaction: id = g_eno, name = g_eno
	reaction_g_eno=global_par_bm_k_expr*global_par_mu*((1-x(38)/(x(38)+global_par_g_eno_Kcra))*global_par_g_eno_vcra_unbound+x(38)/(x(38)+global_par_g_eno_Kcra)*global_par_g_eno_vcra_bound);

% Reaction: id = g_fdp, name = g_fdp
	reaction_g_fdp=global_par_bm_k_expr*global_par_mu*((1-x(38)/(x(38)+global_par_g_fdp_Kcra))*global_par_g_fdp_vcra_unbound+x(38)/(x(38)+global_par_g_fdp_Kcra)*global_par_g_fdp_vcra_bound);

% Reaction: id = g_gltA, name = g_gltA
	reaction_g_gltA=global_par_bm_k_expr*global_par_mu*((1-x(41)^global_par_g_gltA_n/(x(41)^global_par_g_gltA_n+global_par_g_gltA_Kcrp^global_par_g_gltA_n))*global_par_g_gltA_vcrp_unbound+x(41)^global_par_g_gltA_n/(x(41)^global_par_g_gltA_n+global_par_g_gltA_Kcrp^global_par_g_gltA_n)*global_par_g_gltA_vcrp_bound);

% Reaction: id = g_icd, name = g_icd
	reaction_g_icd=global_par_bm_k_expr*global_par_mu*((1-x(38)/(x(38)+global_par_g_icd_Kcra))*global_par_g_icd_vcra_unbound+x(38)/(x(38)+global_par_g_icd_Kcra)*global_par_g_icd_vcra_bound);

% Reaction: id = g_iclr, name = g_iclr
	reaction_g_iclr=0;

% Reaction: id = g_mdh, name = g_mdh
	reaction_g_mdh=global_par_bm_k_expr*global_par_mu*((1-x(41)/(x(41)+global_par_g_mdh_Kcrp))*global_par_g_mdh_vcrp_unbound+x(41)/(x(41)+global_par_g_mdh_Kcrp)*global_par_g_mdh_vcrp_bound);

% Reaction: id = g_me, name = g_me
	reaction_g_me=(global_par_mu+global_par_d_k_degr)*global_par_SS_Me;

% Reaction: id = g_pckA, name = g_pckA
	reaction_g_pckA=global_par_bm_k_expr*global_par_mu*((1-x(38)/(x(38)+global_par_g_pckA_Kcra))*global_par_g_pckA_vcra_unbound+x(38)/(x(38)+global_par_g_pckA_Kcra)*global_par_g_pckA_vcra_bound);

% Reaction: id = g_pdh, name = g_pdh
	reaction_g_pdh=global_par_bm_k_expr*global_par_mu*((1-x(43)/(x(43)+global_par_g_pdh_Kpdhr))*global_par_g_pdh_vpdhr_unbound+x(43)/(x(43)+global_par_g_pdh_Kpdhr)*global_par_g_pdh_vpdhr_bound);

% Reaction: id = g_pdhr, name = g_pdhr
	reaction_g_pdhr=0;

% Reaction: id = g_pfkA, name = g_pfkA
	reaction_g_pfkA=global_par_bm_k_expr*global_par_mu*((1-x(38)/(x(38)+global_par_g_pfkA_Kcra))*global_par_g_pfkA_vcra_unbound+x(38)/(x(38)+global_par_g_pfkA_Kcra)*global_par_g_pfkA_vcra_bound);

% Reaction: id = g_ppc, name = g_ppc
	reaction_g_ppc=(global_par_mu+global_par_d_k_degr)*global_par_SS_Ppc;

% Reaction: id = g_ppsA, name = g_ppsA
	reaction_g_ppsA=global_par_bm_k_expr*global_par_mu*((1-x(38)/(x(38)+global_par_g_ppsA_Kcra))*global_par_g_ppsA_vcra_unbound+x(38)/(x(38)+global_par_g_ppsA_Kcra)*global_par_g_ppsA_vcra_bound);

% Reaction: id = g_pykF, name = g_pykF
	reaction_g_pykF=global_par_bm_k_expr*global_par_mu*((1-x(38)/(x(38)+global_par_g_pykF_Kcra))*global_par_g_pykF_vcra_unbound+x(38)/(x(38)+global_par_g_pykF_Kcra)*global_par_g_pykF_vcra_bound);

% Reaction: id = g_EIIA, name = g_EIIA
	reaction_g_EIIA=0;

% Reaction: id = g_EIICB, name = g_EIICB
	reaction_g_EIICB=0;

% Reaction: id = d_AceA, name = d_AceA
	reaction_d_AceA=(global_par_mu+global_par_d_k_degr)*x(16);

% Reaction: id = d_AceB, name = d_AceB
	reaction_d_AceB=(global_par_mu+global_par_d_k_degr)*x(17);

% Reaction: id = d_AceK, name = d_AceK
	reaction_d_AceK=(global_par_mu+global_par_d_k_degr)*x(18);

% Reaction: id = d_Acoa2act, name = d_Acoa2act
	reaction_d_Acoa2act=0;

% Reaction: id = d_Acs, name = d_Acs
	reaction_d_Acs=(global_par_mu+global_par_d_k_degr)*x(20);

% Reaction: id = d_Akg2mal, name = d_Akg2mal
	reaction_d_Akg2mal=(global_par_mu+global_par_d_k_degr)*x(21);

% Reaction: id = d_CAMPdegr, name = d_CAMPdegr
	reaction_d_CAMPdegr=0;

% Reaction: id = d_Cra, name = d_Cra
	reaction_d_Cra=0;

% Reaction: id = d_CraFBP, name = d_CraFBP
	reaction_d_CraFBP=0;

% Reaction: id = d_Crp, name = d_Crp
	reaction_d_Crp=0;

% Reaction: id = d_CrpcAMP, name = d_CrpcAMP
	reaction_d_CrpcAMP=0;

% Reaction: id = d_Cya, name = d_Cya
	reaction_d_Cya=0;

% Reaction: id = d_Emp, name = d_Emp
	reaction_d_Emp=(global_par_mu+global_par_d_k_degr)*x(24);

% Reaction: id = d_Eno, name = d_Eno
	reaction_d_Eno=(global_par_mu+global_par_d_k_degr)*x(25);

% Reaction: id = d_Fdp, name = d_Fdp
	reaction_d_Fdp=(global_par_mu+global_par_d_k_degr)*x(26);

% Reaction: id = d_GltA, name = d_GltA
	reaction_d_GltA=(global_par_mu+global_par_d_k_degr)*x(27);

% Reaction: id = d_Icd, name = d_Icd
	reaction_d_Icd=(global_par_mu+global_par_d_k_degr)*x(28);

% Reaction: id = d_Icd_P, name = d_Icd_P
	reaction_d_Icd_P=(global_par_mu+global_par_d_k_degr)*x(29);

% Reaction: id = d_IclR, name = d_IclR
	reaction_d_IclR=0;

% Reaction: id = d_Mdh, name = d_Mdh
	reaction_d_Mdh=(global_par_mu+global_par_d_k_degr)*x(30);

% Reaction: id = d_Me, name = d_Me
	reaction_d_Me=(global_par_mu+global_par_d_k_degr)*x(31);

% Reaction: id = d_PckA, name = d_PckA
	reaction_d_PckA=(global_par_mu+global_par_d_k_degr)*x(32);

% Reaction: id = d_Pdh, name = d_Pdh
	reaction_d_Pdh=(global_par_mu+global_par_d_k_degr)*x(33);

% Reaction: id = d_PdhR, name = d_PdhR
	reaction_d_PdhR=0;

% Reaction: id = d_PdhRPYR, name = d_PdhRPYR
	reaction_d_PdhRPYR=0;

% Reaction: id = d_PfkA, name = d_PfkA
	reaction_d_PfkA=(global_par_mu+global_par_d_k_degr)*x(34);

% Reaction: id = d_Ppc, name = d_Ppc
	reaction_d_Ppc=(global_par_mu+global_par_d_k_degr)*x(35);

% Reaction: id = d_PpsA, name = d_PpsA
	reaction_d_PpsA=(global_par_mu+global_par_d_k_degr)*x(36);

% Reaction: id = d_PykF, name = d_PykF
	reaction_d_PykF=(global_par_mu+global_par_d_k_degr)*x(37);

% Reaction: id = d_EIIA, name = d_EIIA
	reaction_d_EIIA=0;

% Reaction: id = d_EIIA_P, name = d_EIIA_P
	reaction_d_EIIA_P=0;

% Reaction: id = d_EIICB, name = d_EIICB
	reaction_d_EIICB=0;

% Reaction: id = d_ACoA, name = d_ACoA
	reaction_d_ACoA=global_par_mu*x(4);

% Reaction: id = d_AKG, name = d_AKG
	reaction_d_AKG=global_par_mu*x(5);

% Reaction: id = d_cAMP, name = d_cAMP
	reaction_d_cAMP=global_par_mu*x(6);

% Reaction: id = d_FBP, name = d_FBP
	reaction_d_FBP=global_par_mu*x(7);

% Reaction: id = d_G6P, name = d_G6P
	reaction_d_G6P=global_par_mu*x(8);

% Reaction: id = d_GLX, name = d_GLX
	reaction_d_GLX=global_par_mu*x(9);

% Reaction: id = d_ICT, name = d_ICT
	reaction_d_ICT=global_par_mu*x(10);

% Reaction: id = d_MAL, name = d_MAL
	reaction_d_MAL=global_par_mu*x(11);

% Reaction: id = d_OAA, name = d_OAA
	reaction_d_OAA=global_par_mu*x(12);

% Reaction: id = d_PEP, name = d_PEP
	reaction_d_PEP=global_par_mu*x(13);

% Reaction: id = d_PG3, name = d_PG3
	reaction_d_PG3=global_par_mu*x(14);

% Reaction: id = d_PYR, name = d_PYR
	reaction_d_PYR=global_par_mu*x(15);

% Reaction: id = env_growth, name = env_growth
	reaction_env_growth=x(1)*global_par_mu;

% Reaction: id = env_GLCup, name = env_GLCup
	reaction_env_GLCup=global_par_env_uc*global_par_env_M_GLC*x(1)*global_par_pts_k4*x(47)*x(46)*x(3)/((global_par_pts_KEIIA+x(46))*(global_par_pts_Kglc+x(3)));

% Reaction: id = env_ACTup, name = env_ACTup
	reaction_env_ACTup=global_par_env_uc*global_par_env_M_ACT*x(1)*x(20)*global_par_e_Acs_kcat*x(2)/(x(2)+global_par_e_Acs_Kact);

% Reaction: id = env_ACTex, name = env_ACTex
	reaction_env_ACTex=global_par_env_uc*global_par_env_M_ACT*x(1)*x(19)*global_par_e_Acoa2act_kcat*x(4)/global_par_e_Acoa2act_Kacoa*(1+x(4)/global_par_e_Acoa2act_Kacoa)^(global_par_e_Acoa2act_n-1)/((1+x(4)/global_par_e_Acoa2act_Kacoa)^global_par_e_Acoa2act_n+global_par_e_Acoa2act_L/(1+x(15)/global_par_e_Acoa2act_Kpyr)^global_par_e_Acoa2act_n);

%Event: id=
	event_=time >= (3600*global_par_shift1);

	if(event_) 
		x(3)=global_par_GLC_1;
		x(2)=global_par_ACT_1;
		x(1)=global_par_BM_1;
	end

%Event: id=
	event_=time >= (3600*global_par_shift2);

	if(event_) 
		x(3)=global_par_GLC_2;
		x(2)=global_par_ACT_2;
		x(1)=global_par_BM_2;
	end

	xdot=zeros(47,1);
	
% Species:   id = BM, name = BM, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_env_growth);
	
% Species:   id = ACT, name = ACT, affected by kineticLaw
	xdot(2) = (1/(compartment_Environment))*((-1.0 * reaction_env_ACTup) + ( 1.0 * reaction_env_ACTex));
	
% Species:   id = GLC, name = GLC, affected by kineticLaw
	xdot(3) = (1/(compartment_Environment))*((-1.0 * reaction_env_GLCup));
	
% Species:   id = ACoA, name = ACoA, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_bm_ACoA) + (-1.0 * reaction_e_AceB) + (-1.0 * reaction_e_Acoa2act) + ( 1.0 * reaction_e_Acs) + (-1.0 * reaction_e_GltA) + ( 1.0 * reaction_e_Pdh) + (-1.0 * reaction_d_ACoA);
	
% Species:   id = AKG, name = AKG, affected by kineticLaw
	xdot(5) = (-1.0 * reaction_bm_AKG) + ( 1.0 * reaction_e_AceA) + (-1.0 * reaction_e_Akg2mal) + ( 1.0 * reaction_e_Icd) + (-1.0 * reaction_d_AKG);
	
% Species:   id = cAMP, name = cAMP, affected by kineticLaw
	xdot(6) = (-1.0 * reaction_e_CAMPdegr) + ( 1.0 * reaction_e_Cya) + (-1.0 * reaction_d_cAMP);
	
% Species:   id = FBP, name = FBP, affected by kineticLaw
	xdot(7) = (-0.5 * reaction_e_Emp) + (-1.0 * reaction_e_Fdp) + ( 1.0 * reaction_e_PfkA) + (-1.0 * reaction_d_FBP);
	
% Species:   id = G6P, name = G6P, affected by kineticLaw
	xdot(8) = (-1.0 * reaction_bm_G6P) + ( 1.0 * reaction_pts_r4) + ( 1.0 * reaction_e_Fdp) + (-1.0 * reaction_e_PfkA) + (-1.0 * reaction_d_G6P);
	
% Species:   id = GLX, name = GLX, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_e_AceA) + (-1.0 * reaction_e_AceB) + (-1.0 * reaction_d_GLX);
	
% Species:   id = ICT, name = ICT, affected by kineticLaw
	xdot(10) = (-1.0 * reaction_e_AceA) + ( 1.0 * reaction_e_GltA) + (-1.0 * reaction_e_Icd) + (-1.0 * reaction_d_ICT);
	
% Species:   id = MAL, name = MAL, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_e_AceB) + ( 1.0 * reaction_e_Akg2mal) + (-1.0 * reaction_e_Mdh) + (-1.0 * reaction_e_Me) + (-1.0 * reaction_d_MAL);
	
% Species:   id = OAA, name = OAA, affected by kineticLaw
	xdot(12) = (-1.0 * reaction_bm_OAA) + (-1.0 * reaction_e_GltA) + ( 1.0 * reaction_e_Mdh) + (-1.0 * reaction_e_PckA) + ( 1.0 * reaction_e_Ppc) + (-1.0 * reaction_d_OAA);
	
% Species:   id = PEP, name = PEP, affected by kineticLaw
	xdot(13) = (-1.0 * reaction_bm_PEP) + (-1.0 * reaction_pts_r1) + ( 1.0 * reaction_e_Eno) + ( 1.0 * reaction_e_PckA) + (-1.0 * reaction_e_Ppc) + ( 1.0 * reaction_e_PpsA) + (-1.0 * reaction_e_PykF) + (-1.0 * reaction_d_PEP);
	
% Species:   id = PG3, name = PG3, affected by kineticLaw
	xdot(14) = (-1.0 * reaction_bm_PG3) + ( 1.0 * reaction_e_Emp) + (-1.0 * reaction_e_Eno) + (-1.0 * reaction_d_PG3);
	
% Species:   id = PYR, name = PYR, affected by kineticLaw
	xdot(15) = (-1.0 * reaction_bm_PYR) + ( 1.0 * reaction_pts_r1) + ( 1.0 * reaction_e_Me) + (-1.0 * reaction_e_Pdh) + (-1.0 * reaction_e_PpsA) + ( 1.0 * reaction_e_PykF) + (-1.0 * reaction_d_PYR);
	
% Species:   id = AceA, name = AceA, affected by kineticLaw
	xdot(16) = ( 1.0 * reaction_g_aceA) + (-1.0 * reaction_d_AceA);
	
% Species:   id = AceB, name = AceB, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_g_aceB) + (-1.0 * reaction_d_AceB);
	
% Species:   id = AceK, name = AceK, affected by kineticLaw
	xdot(18) = ( 1.0 * reaction_g_aceK) + (-1.0 * reaction_d_AceK);
	
% Species:   id = Acoa2act, name = Acoa2act, affected by kineticLaw
	xdot(19) = ( 1.0 * reaction_g_acoa2act) + (-1.0 * reaction_d_Acoa2act);
	
% Species:   id = Acs, name = Acs, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_g_acs) + (-1.0 * reaction_d_Acs);
	
% Species:   id = Akg2mal, name = Akg2mal, affected by kineticLaw
	xdot(21) = ( 1.0 * reaction_g_akg2mal) + (-1.0 * reaction_d_Akg2mal);
	
% Species:   id = CAMPdegr, name = CAMPdegr, affected by kineticLaw
	xdot(22) = ( 1.0 * reaction_g_cAMPdegr) + (-1.0 * reaction_d_CAMPdegr);
	
% Species:   id = Cya, name = Cya, affected by kineticLaw
	xdot(23) = ( 1.0 * reaction_g_cya) + (-1.0 * reaction_d_Cya);
	
% Species:   id = Emp, name = Emp, affected by kineticLaw
	xdot(24) = ( 1.0 * reaction_g_emp) + (-1.0 * reaction_d_Emp);
	
% Species:   id = Eno, name = Eno, affected by kineticLaw
	xdot(25) = ( 1.0 * reaction_g_eno) + (-1.0 * reaction_d_Eno);
	
% Species:   id = Fdp, name = Fdp, affected by kineticLaw
	xdot(26) = ( 1.0 * reaction_g_fdp) + (-1.0 * reaction_d_Fdp);
	
% Species:   id = GltA, name = GltA, affected by kineticLaw
	xdot(27) = ( 1.0 * reaction_g_gltA) + (-1.0 * reaction_d_GltA);
	
% Species:   id = Icd, name = Icd, affected by kineticLaw
	xdot(28) = (-1.0 * reaction_e_AceK_Ki) + ( 1.0 * reaction_e_AceK_Ph) + ( 1.0 * reaction_g_icd) + (-1.0 * reaction_d_Icd);
	
% Species:   id = Icd_P, name = Icd_P, affected by kineticLaw
	xdot(29) = ( 1.0 * reaction_e_AceK_Ki) + (-1.0 * reaction_e_AceK_Ph) + (-1.0 * reaction_d_Icd_P);
	
% Species:   id = Mdh, name = Mdh, affected by kineticLaw
	xdot(30) = ( 1.0 * reaction_g_mdh) + (-1.0 * reaction_d_Mdh);
	
% Species:   id = Me, name = Me, affected by kineticLaw
	xdot(31) = ( 1.0 * reaction_g_me) + (-1.0 * reaction_d_Me);
	
% Species:   id = PckA, name = PckA, affected by kineticLaw
	xdot(32) = ( 1.0 * reaction_g_pckA) + (-1.0 * reaction_d_PckA);
	
% Species:   id = Pdh, name = Pdh, affected by kineticLaw
	xdot(33) = ( 1.0 * reaction_g_pdh) + (-1.0 * reaction_d_Pdh);
	
% Species:   id = PfkA, name = PfkA, affected by kineticLaw
	xdot(34) = ( 1.0 * reaction_g_pfkA) + (-1.0 * reaction_d_PfkA);
	
% Species:   id = Ppc, name = Ppc, affected by kineticLaw
	xdot(35) = ( 1.0 * reaction_g_ppc) + (-1.0 * reaction_d_Ppc);
	
% Species:   id = PpsA, name = PpsA, affected by kineticLaw
	xdot(36) = ( 1.0 * reaction_g_ppsA) + (-1.0 * reaction_d_PpsA);
	
% Species:   id = PykF, name = PykF, affected by kineticLaw
	xdot(37) = ( 1.0 * reaction_g_pykF) + (-1.0 * reaction_d_PykF);
	
% Species:   id = Cra, name = Cra, affected by kineticLaw
	xdot(38) = (-1.0 * reaction_tf_Cra) + ( 1.0 * reaction_g_cra) + (-1.0 * reaction_d_Cra);
	
% Species:   id = CraFBP, name = CraFBP, affected by kineticLaw
	xdot(39) = ( 1.0 * reaction_tf_Cra) + (-1.0 * reaction_d_CraFBP);
	
% Species:   id = Crp, name = Crp, affected by kineticLaw
	xdot(40) = (-1.0 * reaction_tf_Crp) + ( 1.0 * reaction_g_crp) + (-1.0 * reaction_d_Crp);
	
% Species:   id = CrpcAMP, name = CrpcAMP, affected by kineticLaw
	xdot(41) = ( 1.0 * reaction_tf_Crp) + (-1.0 * reaction_d_CrpcAMP);
	
% Species:   id = IclR, name = IclR, affected by kineticLaw
	xdot(42) = ( 1.0 * reaction_g_iclr) + (-1.0 * reaction_d_IclR);
	
% Species:   id = PdhR, name = PdhR, affected by kineticLaw
	xdot(43) = (-1.0 * reaction_tf_PdhR) + ( 1.0 * reaction_g_pdhr) + (-1.0 * reaction_d_PdhR);
	
% Species:   id = PdhRPYR, name = PdhRPYR, affected by kineticLaw
	xdot(44) = ( 1.0 * reaction_tf_PdhR) + (-1.0 * reaction_d_PdhRPYR);
	
% Species:   id = EIIA, name = EIIA, affected by kineticLaw
	xdot(45) = (-1.0 * reaction_pts_r1) + ( 1.0 * reaction_pts_r4) + ( 1.0 * reaction_g_EIIA) + (-1.0 * reaction_d_EIIA);
	
% Species:   id = EIIA_P, name = EIIA_P, affected by kineticLaw
	xdot(46) = ( 1.0 * reaction_pts_r1) + (-1.0 * reaction_pts_r4) + (-1.0 * reaction_d_EIIA_P);
	
% Species:   id = EIICB, name = EIICB, affected by kineticLaw
	xdot(47) = ( 1.0 * reaction_g_EIICB) + (-1.0 * reaction_d_EIICB);
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


