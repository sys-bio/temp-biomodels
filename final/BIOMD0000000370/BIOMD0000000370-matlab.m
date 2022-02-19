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
% Model name = Vinod2011_MitoticExit
%
% is http://identifiers.org/biomodels.db/MODEL1111030000
% is http://identifiers.org/biomodels.db/BIOMD0000000370
% isDescribedBy http://identifiers.org/pubmed/21288956
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000409
%


function main()
%Initial conditions vector
	x0=zeros(56,1);
	x0(33) = 0.999107;
	x0(34) = 0.201977;
	x0(35) = 0.04079;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 0.001683;
	x0(39) = 0.00145;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.996743;
	x0(43) = 0.001977;
	x0(44) = 0.601977;
	x0(45) = 0.25;
	x0(46) = 0.24857;
	x0(47) = 1.0;
	x0(48) = 1.0;
	x0(49) = 0.0119;
	x0(50) = 0.0119;
	x0(51) = 0.483;
	x0(52) = 0.014;
	x0(53) = 0.00214;
	x0(54) = 1.0;
	x0(55) = 0.933;
	x0(56) = 0.0;
	x0(1) = 0.999107;
	x0(2) = 0.201977;
	x0(3) = 0.04079;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.001683;
	x0(7) = 0.00145;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.996743;
	x0(11) = 0.001977;
	x0(12) = 0.601977;
	x0(13) = 0.25;
	x0(14) = 1.0;
	x0(15) = 1.0;
	x0(16) = 0.0119;
	x0(17) = 0.0119;
	x0(18) = 0.483;
	x0(19) = 0.014;
	x0(20) = 0.00214;
	x0(21) = 1.0;
	x0(22) = 0.933;
	x0(23) = 0.0;
	x0(24) = 0;
	x0(25) = 0;
	x0(26) = 0;
	x0(27) = 0;
	x0(28) = 0.24857;
	x0(29) = 0;
	x0(30) = 0.013;
	x0(31) = 0;
	x0(32) = 0;


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

% Compartment: id = cell_1, name = cell, constant
	compartment_cell_1=1.0;
% Parameter:   id =  PP_1, name = PP
% Parameter:   id =  PPT_1, name = PPT
	global_par_PPT_1=1.0;
% Parameter:   id =  kpp_1, name = kpp
	global_par_kpp_1=0.1;
% Parameter:   id =  ki_1, name = ki
	global_par_ki_1=40.0;
% Parameter:   id =  V2_1, name = V2
% Parameter:   id =  kdclb2_1, name = kdclb2
	global_par_kdclb2_1=0.02;
% Parameter:   id =  kdclb2_2, name = kdclb2'
	global_par_kdclb2_2=0.1;
% Parameter:   id =  kdclb2_3, name = kdclb2''
	global_par_kdclb2_3=0.4;
% Parameter:   id =  V6_1, name = V6
% Parameter:   id =  kdclb5_1, name = kdclb5
	global_par_kdclb5_1=0.01;
% Parameter:   id =  kdclb5_2, name = kdclb5'
	global_par_kdclb5_2=1.0;
% Parameter:   id =  Vdsic_1, name = Vdsic
% Parameter:   id =  kdsic_1, name = kdsic'
	global_par_kdsic_1=2.0;
% Parameter:   id =  kdsic_2, name = kdsic"
	global_par_kdsic_2=2.0;
% Parameter:   id =  kdsic_3, name = kdsic
	global_par_kdsic_3=0.04;
% Parameter:   id =  kdsic_4, name = kdsic'''
	global_par_kdsic_4=1.5;
% Parameter:   id =  Vacdh_1, name = Vacdh
% Parameter:   id =  kdcdh_1, name = kdcdh
	global_par_kdcdh_1=0.03;
% Parameter:   id =  kdcdh_2, name = kdcdh'
	global_par_kdcdh_2=0.3;
% Parameter:   id =  Vicdh_1, name = Vicdh
% Parameter:   id =  kpcdh_1, name = kpcdh
	global_par_kpcdh_1=0.001;
% Parameter:   id =  kpcdh_2, name = kpcdh'
	global_par_kpcdh_2=0.04;
% Parameter:   id =  kpcdh_3, name = kpcdh''
	global_par_kpcdh_3=0.75;
% Parameter:   id =  Vaswi_1, name = Vaswi
% Parameter:   id =  kaswi_1, name = kaswi
	global_par_kaswi_1=0.2;
% Parameter:   id =  kaswi_2, name = kaswi'
	global_par_kaswi_2=1.0;
% Parameter:   id =  Viswi_1, name = Viswi
% Parameter:   id =  kiswi_1, name = kiswi
	global_par_kiswi_1=0.01;
% Parameter:   id =  kiswi_2, name = kiswi'
	global_par_kiswi_2=0.5;
% Parameter:   id =  kiswi_3, name = kiswi''
	global_par_kiswi_3=0.75;
% Parameter:   id =  Vd_1, name = Vd
% Parameter:   id =  kd_1, name = kd'
	global_par_kd_1=0.1;
% Parameter:   id =  kd_2, name = kd
	global_par_kd_2=0.45;
% Parameter:   id =  Jnet_1, name = Jnet
	global_par_Jnet_1=0.05;
% Parameter:   id =  Net1T_1, name = Net1T
	global_par_Net1T_1=1.0;
% Parameter:   id =  Vp_1, name = Vp
% Parameter:   id =  kp_3, name = kp''
	global_par_kp_3=0.2;
% Parameter:   id =  kp_4, name = kp'''
	global_par_kp_4=3.0;
% Parameter:   id =  Vexp_1, name = Vexp
% Parameter:   id =  kexp_1, name = kexp
	global_par_kexp_1=0.01;
% Parameter:   id =  kexp_2, name = kexp'
	global_par_kexp_2=20.0;
% Parameter:   id =  ksclb2_1, name = ksclb2
	global_par_ksclb2_1=0.015;
% Parameter:   id =  ksclb2_2, name = ksclb2'
	global_par_ksclb2_2=0.005;
% Parameter:   id =  ksclb5_1, name = ksclb5'
	global_par_ksclb5_1=0.01;
% Parameter:   id =  ksclb5_2, name = ksclb5
	global_par_ksclb5_2=0.002;
% Parameter:   id =  kscln_1, name = kscln'
	global_par_kscln_1=0.1;
% Parameter:   id =  kscln_2, name = kscln
	global_par_kscln_2=0.01;
% Parameter:   id =  kdcln_1, name = kdcln
	global_par_kdcln_1=0.25;
% Parameter:   id =  ks20_1, name = ks20'
	global_par_ks20_1=0.05;
% Parameter:   id =  ks20_2, name = ks20
	global_par_ks20_2=0.001;
% Parameter:   id =  kd20_1, name = kd20
	global_par_kd20_1=0.1;
% Parameter:   id =  kd20_2, name = kd20'
	global_par_kd20_2=1.0;
% Parameter:   id =  Jcdh_1, name = Jcdh
	global_par_Jcdh_1=0.01;
% Parameter:   id =  kssic_1, name = kssic'
	global_par_kssic_1=0.2;
% Parameter:   id =  kssic_2, name = kssic
	global_par_kssic_2=0.004;
% Parameter:   id =  kasic2_1, name = kasic2
	global_par_kasic2_1=40.0;
% Parameter:   id =  kdsic2_1, name = kdsic2
	global_par_kdsic2_1=0.1;
% Parameter:   id =  kasic5_1, name = kasic5
	global_par_kasic5_1=10.0;
% Parameter:   id =  kdsic5_1, name = kdsic5
	global_par_kdsic5_1=0.1;
% Parameter:   id =  Jswi_1, name = Jswi
	global_par_Jswi_1=0.1;
% Parameter:   id =  ksmcm_1, name = ksmcm'
	global_par_ksmcm_1=1.0;
% Parameter:   id =  ksmcm_3, name = ksmcm
	global_par_ksmcm_3=0.01;
% Parameter:   id =  kdmcm_1, name = kdmcm
	global_par_kdmcm_1=0.25;
% Parameter:   id =  Jmcm_1, name = Jmcm
	global_par_Jmcm_1=0.01;
% Parameter:   id =  Jmbf_1, name = Jmbf
	global_par_Jmbf_1=0.01;
% Parameter:   id =  kambf_1, name = kambf
	global_par_kambf_1=0.1;
% Parameter:   id =  kimbf_1, name = kimbf'
	global_par_kimbf_1=0.5;
% Parameter:   id =  kimbf_2, name = kimbf
	global_par_kimbf_2=0.0;
% Parameter:   id =  kimbf_3, name = kimbf''
	global_par_kimbf_3=0.5;
% Parameter:   id =  kspds_1, name = kspds'
	global_par_kspds_1=0.01;
% Parameter:   id =  kspds_2, name = kspds
	global_par_kspds_2=0.006;
% Parameter:   id =  kdpds_1, name = kdpds
	global_par_kdpds_1=0.01;
% Parameter:   id =  kdpds_2, name = kdpds'
	global_par_kdpds_2=2.0;
% Parameter:   id =  ksesp_1, name = ksesp
	global_par_ksesp_1=0.001;
% Parameter:   id =  kdesp_1, name = kdesp
	global_par_kdesp_1=0.004;
% Parameter:   id =  lapds_1, name = lapds
	global_par_lapds_1=500.0;
% Parameter:   id =  ldpds_1, name = ldpds
	global_par_ldpds_1=1.0;
% Parameter:   id =  kspolo_1, name = kspolo'
	global_par_kspolo_1=0.05;
% Parameter:   id =  kspolo_2, name = kspolo
	global_par_kspolo_2=0.001;
% Parameter:   id =  kdpolo_1, name = kdpolo
	global_par_kdpolo_1=0.05;
% Parameter:   id =  kdpolo_2, name = kdpolo'
	global_par_kdpolo_2=0.5;
% Parameter:   id =  Jpolo_1, name = Jpolo
	global_par_Jpolo_1=0.1;
% Parameter:   id =  kapolo_1, name = kapolo
	global_par_kapolo_1=0.0;
% Parameter:   id =  kapolo_2, name = kapolo'
	global_par_kapolo_2=1.0;
% Parameter:   id =  kipolo_1, name = kipolo
	global_par_kipolo_1=0.1;
% Parameter:   id =  kp_1, name = kp'
	global_par_kp_1=2.0;
% Parameter:   id =  lanet_1, name = lanet
	global_par_lanet_1=500.0;
% Parameter:   id =  ldnet_1, name = ldnet
	global_par_ldnet_1=1.0;
% Parameter:   id =  kimp_1, name = kimp
	global_par_kimp_1=1.0;
% Parameter:   id =  Jtem1_1, name = Jtem1
	global_par_Jtem1_1=0.005;
% Parameter:   id =  katem_1, name = katem
	global_par_katem_1=0.0;
% Parameter:   id =  katem_2, name = katem'
	global_par_katem_2=0.6;
% Parameter:   id =  kitem_1, name = kitem''
	global_par_kitem_1=20.0;
% Parameter:   id =  kitem_2, name = kitem'
	global_par_kitem_2=1.0;
% Parameter:   id =  kitem_3, name = kitem
	global_par_kitem_3=0.1;
% Parameter:   id =  Jcdc15_1, name = Jcdc15
	global_par_Jcdc15_1=1.0;
% Parameter:   id =  kac15_1, name = kac15
	global_par_kac15_1=0.03;
% Parameter:   id =  kac15_2, name = kac15'
	global_par_kac15_2=0.5;
% Parameter:   id =  kic15_1, name = kic15
	global_par_kic15_1=0.03;
% Parameter:   id =  kic15_2, name = kic15'
	global_par_kic15_2=0.2;
% Parameter:   id =  lamen_1, name = lamen
% Warning parameter lamen_1 is not constant, it should be controlled by a Rule and/or events
	global_par_lamen_1=100.0;
% Parameter:   id =  ldmen_1, name = ldmen
	global_par_ldmen_1=0.1;
% Parameter:   id =  Cdc14T_1, name = Cdc14T
	global_par_Cdc14T_1=0.5;
% Parameter:   id =  Clb2nd_1, name = Clb2nd
	global_par_Clb2nd_1=0.0;
% Parameter:   id =  Swi5T_1, name = Swi5T
	global_par_Swi5T_1=1.0;
% assignmentRule: variable = Clb2_2
	x(24)=x(1)+global_par_Clb2nd_1-x(7);
% assignmentRule: variable = Clb5_1
	x(25)=x(2)-x(8);
% assignmentRule: variable = Sic1_1
	x(26)=x(6)-x(7)-x(8);
% assignmentRule: variable = Pds1_1
	x(27)=x(12)-x(28);
% assignmentRule: variable = Esp1_1
	x(29)=x(13)-x(28);
% assignmentRule: variable = Net1_2
	x(31)=global_par_Net1T_1-x(30)-x(18)-x(17);
% assignmentRule: variable = Cdc14c_1
	x(32)=global_par_Cdc14T_1-x(20)-x(18);
% assignmentRule: variable = PP_1
	global_par_PP_1=global_par_PPT_1*(1+global_par_kpp_1*global_par_ki_1*x(29))/(1+global_par_ki_1+x(29));
% assignmentRule: variable = V2_1
	global_par_V2_1=global_par_kdclb2_1+global_par_kdclb2_2*x(4)+global_par_kdclb2_3*x(5);
% assignmentRule: variable = V6_1
	global_par_V6_1=global_par_kdclb5_1+global_par_kdclb5_2*x(4);
% assignmentRule: variable = Vdsic_1
	global_par_Vdsic_1=global_par_kdsic_3+global_par_kdsic_1*x(25)+global_par_kdsic_2*x(24)+global_par_kdsic_4*x(3);
% assignmentRule: variable = Vacdh_1
	global_par_Vacdh_1=global_par_kdcdh_1*x(20)+global_par_kdcdh_2*x(32);
% assignmentRule: variable = Vicdh_1
	global_par_Vicdh_1=global_par_kpcdh_1+global_par_kpcdh_2*x(24)+global_par_kpcdh_3*x(25);
% assignmentRule: variable = Vaswi_1
	global_par_Vaswi_1=global_par_kaswi_1*x(20)+global_par_kaswi_2*x(32);
% assignmentRule: variable = Viswi_1
	global_par_Viswi_1=global_par_kiswi_1+global_par_kiswi_2*x(24)+global_par_kiswi_3*x(25);
% assignmentRule: variable = Vd_1
	global_par_Vd_1=(global_par_kd_2*global_par_PP_1+global_par_kd_1*x(20))/(global_par_Jnet_1+global_par_Net1T_1-x(16));
% assignmentRule: variable = Vp_1
	global_par_Vp_1=(global_par_kp_3*x(24)+global_par_kp_4*x(23))/(global_par_Jnet_1+x(16));
% assignmentRule: variable = Vexp_1
	global_par_Vexp_1=global_par_kexp_1+global_par_kexp_2*x(23);
% rateRule: variable = Clb2T_1
x(1) = x(33);
% rateRule: variable = Clb5T_1
x(2) = x(34);
% rateRule: variable = Cln_1
x(3) = x(35);
% rateRule: variable = Cdc20_1
x(4) = x(36);
% rateRule: variable = Cdh1_1
x(5) = x(37);
% rateRule: variable = Sic1T_1
x(6) = x(38);
% rateRule: variable = Trim2_1
x(7) = x(39);
% rateRule: variable = Trim5_1
x(8) = x(40);
% rateRule: variable = Swi5_1
x(9) = x(41);
% rateRule: variable = Mcm_1
x(10) = x(42);
% rateRule: variable = MBF_1
x(11) = x(43);
% rateRule: variable = Pds1T_1
x(12) = x(44);
% rateRule: variable = Esp1T_1
x(13) = x(45);
% rateRule: variable = Esp1b_1
x(28) = x(46);
% rateRule: variable = PoloT_1
x(14) = x(47);
% rateRule: variable = Polo_1
x(15) = x(48);
% rateRule: variable = Net1dep_1
x(16) = x(49);
% rateRule: variable = Net1pp_1
x(17) = x(50);
% rateRule: variable = RENT_1
x(18) = x(51);
% rateRule: variable = RENTp_1
x(19) = x(52);
% rateRule: variable = Cdc14n_1
x(20) = x(53);
% rateRule: variable = Tem1_1
x(21) = x(54);
% rateRule: variable = Cdc15_1
x(22) = x(55);
% rateRule: variable = MEN_1
x(23) = x(56);

	xdot=zeros(56,1);
	% rateRule: variable = Clb2T_1
	xdot(33) = global_par_ksclb2_1+global_par_ksclb2_2*x(10)-global_par_V2_1*x(1);
	% rateRule: variable = Clb5T_1
	xdot(34) = global_par_ksclb5_2+global_par_ksclb5_1*x(11)-global_par_V6_1*x(2);
	% rateRule: variable = Cln_1
	xdot(35) = global_par_kscln_2+global_par_kscln_1*x(11)-global_par_kdcln_1*x(3);
	% rateRule: variable = Cdc20_1
	xdot(36) = global_par_ks20_2+global_par_ks20_1*x(10)-(global_par_kd20_1+global_par_kd20_2*x(5))*x(4);
	% rateRule: variable = Cdh1_1
	xdot(37) = global_par_Vacdh_1*(1-x(5))/(global_par_Jcdh_1+1-x(5))-global_par_Vicdh_1*x(5)/(global_par_Jcdh_1+x(5));
	% rateRule: variable = Sic1T_1
	xdot(38) = global_par_kssic_2+global_par_kssic_1*x(9)-global_par_Vdsic_1*x(6);
	% rateRule: variable = Trim2_1
	xdot(39) = global_par_kasic2_1*x(24)*x(26)-(global_par_kdsic2_1+global_par_V2_1+global_par_Vdsic_1)*x(7);
	% rateRule: variable = Trim5_1
	xdot(40) = global_par_kasic5_1*x(25)*x(26)-(global_par_kdsic5_1+global_par_V6_1+global_par_Vdsic_1)*x(8);
	% rateRule: variable = Swi5_1
	xdot(41) = global_par_Vaswi_1*(global_par_Swi5T_1-x(9))/(global_par_Jswi_1+global_par_Swi5T_1-x(9))-global_par_Viswi_1*x(9)/(global_par_Jswi_1+x(9));
	% rateRule: variable = Mcm_1
	xdot(42) = (global_par_ksmcm_3+global_par_ksmcm_1*x(24))*(1-x(10))/(global_par_Jmcm_1+1-x(10))-global_par_kdmcm_1*x(10)/(global_par_Jmcm_1+x(10));
	% rateRule: variable = MBF_1
	xdot(43) = global_par_kambf_1*(1-x(11))/(global_par_Jmbf_1+1-x(11))-(global_par_kimbf_1*x(24)+global_par_kimbf_3*x(25))*x(11)/(global_par_Jmbf_1+x(11));
	% rateRule: variable = Pds1T_1
	xdot(44) = global_par_kspds_2+global_par_kspds_1*x(11)-(global_par_kdpds_1+global_par_kdpds_2*x(4))*x(12);
	% rateRule: variable = Esp1T_1
	xdot(45) = global_par_ksesp_1-global_par_kdesp_1*x(13);
	% rateRule: variable = Esp1b_1
	xdot(46) = global_par_lapds_1*x(27)*x(29)-(global_par_ldpds_1+global_par_kdesp_1+global_par_kdpds_1+global_par_kdpds_2*x(4))*x(28);
	% rateRule: variable = PoloT_1
	xdot(47) = global_par_kspolo_2+global_par_kspolo_1*x(10)-(global_par_kdpolo_1+global_par_kdpolo_2*x(5))*x(14);
	% rateRule: variable = Polo_1
	xdot(48) = (global_par_kapolo_1+global_par_kapolo_2*x(24))*(x(14)-x(15))/(global_par_Jpolo_1+x(14)-x(15))-global_par_kipolo_1*x(15)/(global_par_Jpolo_1+x(15))-(global_par_kdpolo_1+global_par_kdpolo_2*x(5))*x(15);
	% rateRule: variable = Net1dep_1
	xdot(49) = global_par_Vd_1*(global_par_Net1T_1-x(16))-global_par_Vp_1*x(16);
	% rateRule: variable = Net1pp_1
	xdot(50) = global_par_kp_1*x(15)*(global_par_Net1T_1-x(16)-x(17))-global_par_Vd_1*x(17);
	% rateRule: variable = RENT_1
	xdot(51) = global_par_lanet_1*(global_par_Net1T_1-x(17)-x(18))*x(20)-global_par_ldnet_1*x(18)-global_par_kp_1*x(15)*x(19);
	% rateRule: variable = RENTp_1
	xdot(52) = global_par_Vp_1*(x(18)-x(19))-global_par_Vd_1*x(19)+global_par_lanet_1*(global_par_Net1T_1-x(16)-x(17)-x(19))*x(20)-global_par_ldnet_1*x(19)-global_par_kp_1*x(15)*x(19);
	% rateRule: variable = Cdc14n_1
	xdot(53) = global_par_kp_1*x(15)*x(19)-global_par_lanet_1*(global_par_Net1T_1-x(17)-x(18))*x(20)+global_par_ldnet_1*x(18)-global_par_Vexp_1*x(20)+global_par_kimp_1*x(32);
	% rateRule: variable = Tem1_1
	xdot(54) = (global_par_katem_1+global_par_katem_2*x(15))*(1-x(21))/(global_par_Jtem1_1+1-x(21))-(global_par_kitem_3+global_par_kitem_2/(1+global_par_kitem_1*x(29)))/(global_par_Jtem1_1+x(21))*x(21);
	% rateRule: variable = Cdc15_1
	xdot(55) = (global_par_kac15_1+global_par_kac15_2*x(32))*(1-x(22))/(global_par_Jcdc15_1+1-x(22))-(global_par_kic15_1+global_par_kic15_2*x(24))*x(22)/(global_par_Jcdc15_1+x(22));
	% rateRule: variable = MEN_1
	xdot(56) = global_par_lamen_1*(x(21)-x(23))*(x(22)-x(23))-global_par_ldmen_1*x(23)-(global_par_kitem_3+global_par_kitem_2/(1+global_par_kitem_3*x(29)))/(global_par_Jtem1_1+x(21))*x(23)-(global_par_kic15_1+global_par_kic15_2*x(24))/(global_par_Jcdc15_1+x(22))*x(23);
	
% Species:   id = Clb2T_1, name = Clb2T, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = Clb5T_1, name = Clb5T, defined in a rule 	xdot(2) = x(2);
	
% Species:   id = Cln_1, name = Cln, defined in a rule 	xdot(3) = x(3);
	
% Species:   id = Cdc20_1, name = Cdc20, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = Cdh1_1, name = Cdh1, defined in a rule 	xdot(5) = x(5);
	
% Species:   id = Sic1T_1, name = Sic1T, defined in a rule 	xdot(6) = x(6);
	
% Species:   id = Trim2_1, name = Trim2, defined in a rule 	xdot(7) = x(7);
	
% Species:   id = Trim5_1, name = Trim5, defined in a rule 	xdot(8) = x(8);
	
% Species:   id = Swi5_1, name = Swi5, defined in a rule 	xdot(9) = x(9);
	
% Species:   id = Mcm_1, name = Mcm, defined in a rule 	xdot(10) = x(10);
	
% Species:   id = MBF_1, name = MBF, defined in a rule 	xdot(11) = x(11);
	
% Species:   id = Pds1T_1, name = Pds1T, defined in a rule 	xdot(12) = x(12);
	
% Species:   id = Esp1T_1, name = Esp1T, defined in a rule 	xdot(13) = x(13);
	
% Species:   id = PoloT_1, name = PoloT, defined in a rule 	xdot(14) = x(14);
	
% Species:   id = Polo_1, name = Polo, defined in a rule 	xdot(15) = x(15);
	
% Species:   id = Net1dep_1, name = Net1dep, defined in a rule 	xdot(16) = x(16);
	
% Species:   id = Net1pp_1, name = Net1pp, defined in a rule 	xdot(17) = x(17);
	
% Species:   id = RENT_1, name = RENT, defined in a rule 	xdot(18) = x(18);
	
% Species:   id = RENTp_1, name = RENTp, defined in a rule 	xdot(19) = x(19);
	
% Species:   id = Cdc14n_1, name = Cdc14n, defined in a rule 	xdot(20) = x(20);
	
% Species:   id = Tem1_1, name = Tem1, defined in a rule 	xdot(21) = x(21);
	
% Species:   id = Cdc15_1, name = Cdc15, defined in a rule 	xdot(22) = x(22);
	
% Species:   id = MEN_1, name = MEN, defined in a rule 	xdot(23) = x(23);
	
% Species:   id = Clb2_2, name = Clb2, defined in a rule 	xdot(24) = x(24);
	
% Species:   id = Clb5_1, name = Clb5, defined in a rule 	xdot(25) = x(25);
	
% Species:   id = Sic1_1, name = Sic1, defined in a rule 	xdot(26) = x(26);
	
% Species:   id = Pds1_1, name = Pds1, defined in a rule 	xdot(27) = x(27);
	
% Species:   id = Esp1b_1, name = Esp1b, defined in a rule 	xdot(28) = x(28);
	
% Species:   id = Esp1_1, name = Esp1, defined in a rule 	xdot(29) = x(29);
	
% Species:   id = Net1p_1, name = Net1p
% Warning species is not changed by either rules or reactions
	xdot(30) = ;
	
% Species:   id = Net1_2, name = Net1, defined in a rule 	xdot(31) = x(31);
	
% Species:   id = Cdc14c_1, name = Cdc14c, defined in a rule 	xdot(32) = x(32);
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


