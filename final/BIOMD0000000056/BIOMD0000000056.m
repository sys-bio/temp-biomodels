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
% Model name = Chen2004 - Cell Cycle Regulation
%
% is http://identifiers.org/biomodels.db/MODEL6624073334
% is http://identifiers.org/biomodels.db/BIOMD0000000056
% isDescribedBy http://identifiers.org/pubmed/15169868
%


function main()
%Initial conditions vector
	x0=zeros(54,1);
	x0(1) = 0;
	x0(2) = 0.2;
	x0(3) = 0.008473;
	x0(4) = 0.238404;
	x0(5) = 0.024034;
	x0(6) = 0.070081;
	x0(7) = 0.006878;
	x0(8) = 0.468344;
	x0(9) = 2.0;
	x0(10) = 0.656533;
	x0(11) = 0;
	x0(12) = 0.444296;
	x0(13) = 1.472044;
	x0(14) = 0.10758;
	x0(15) = 0.015486;
	x0(16) = 0;
	x0(17) = 0.930499;
	x0(18) = 0.0695;
	x0(19) = 0;
	x0(20) = 0.1469227;
	x0(21) = 0.17;
	x0(22) = 0.0518014;
	x0(23) = 0.12;
	x0(24) = 0.0652511;
	x0(25) = 0;
	x0(26) = 0.301313;
	x0(27) = 0.236058;
	x0(28) = 0.0273938;
	x0(29) = 7.24E-5;
	x0(30) = 7.91E-5;
	x0(31) = 0;
	x0(32) = 0.1015;
	x0(33) = 0.1;
	x0(34) = 0.01;
	x0(35) = 1.206019;
	x0(36) = 0;
	x0(37) = 0.018645;
	x0(38) = 0.970271;
	x0(39) = 2.8;
	x0(40) = 9.09E-4;
	x0(41) = 0.025612;
	x0(42) = 0;
	x0(43) = 0.123179;
	x0(44) = 1.04954;
	x0(45) = 0.6;
	x0(46) = 0;
	x0(47) = 0.0228776;
	x0(48) = 0.00641;
	x0(49) = 0;
	x0(50) = 0.03;
	x0(51) = 0.95;
	x0(52) = 0.02;
	x0(53) = 0;
	x0(54) = 0.9;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  b0, name = b0
	global_par_b0=0.054;
% Parameter:   id =  bub2h, name = bub2h
	global_par_bub2h=1.0;
% Parameter:   id =  bub2l, name = bub2l
% Warning parameter bub2l is not constant, it should be controlled by a Rule and/or events
	global_par_bub2l=0.2;
% Parameter:   id =  C0, name = C0
	global_par_C0=0.4;
% Parameter:   id =  CDC15T, name = CDC15T
% Warning parameter CDC15T is not constant, it should be controlled by a Rule and/or events
	global_par_CDC15T=1.0;
% Parameter:   id =  Dn3, name = Dn3
	global_par_Dn3=1.0;
% Parameter:   id =  ebudb5, name = ebudb5
	global_par_ebudb5=1.0;
% Parameter:   id =  ebudn2, name = ebudn2
	global_par_ebudn2=0.25;
% Parameter:   id =  ebudn3, name = ebudn3
	global_par_ebudn3=0.05;
% Parameter:   id =  ec1b2, name = ec1b2
	global_par_ec1b2=0.45;
% Parameter:   id =  ec1b5, name = ec1b5
	global_par_ec1b5=0.1;
% Parameter:   id =  ec1k2, name = ec1k2
	global_par_ec1k2=0.03;
% Parameter:   id =  ec1n2, name = ec1n2
	global_par_ec1n2=0.06;
% Parameter:   id =  ec1n3, name = ec1n3
	global_par_ec1n3=0.3;
% Parameter:   id =  ef6b2, name = ef6b2
	global_par_ef6b2=0.55;
% Parameter:   id =  ef6b5, name = ef6b5
	global_par_ef6b5=0.1;
% Parameter:   id =  ef6k2, name = ef6k2
	global_par_ef6k2=0.03;
% Parameter:   id =  ef6n2, name = ef6n2
	global_par_ef6n2=0.06;
% Parameter:   id =  ef6n3, name = ef6n3
	global_par_ef6n3=0.3;
% Parameter:   id =  eicdhb2, name = eicdhb2
	global_par_eicdhb2=1.2;
% Parameter:   id =  eicdhb5, name = eicdhb5
	global_par_eicdhb5=8.0;
% Parameter:   id =  eicdhn2, name = eicdhn2
	global_par_eicdhn2=0.4;
% Parameter:   id =  eicdhn3, name = eicdhn3
	global_par_eicdhn3=0.25;
% Parameter:   id =  eorib2, name = eorib2
	global_par_eorib2=0.45;
% Parameter:   id =  eorib5, name = eorib5
	global_par_eorib5=0.9;
% Parameter:   id =  esbfb5, name = esbfb5
	global_par_esbfb5=2.0;
% Parameter:   id =  esbfn2, name = esbfn2
	global_par_esbfn2=2.0;
% Parameter:   id =  esbfn3, name = esbfn3
	global_par_esbfn3=10.0;
% Parameter:   id =  ESP1T, name = ESP1T
% Warning parameter ESP1T is not constant, it should be controlled by a Rule and/or events
	global_par_ESP1T=1.0;
% Parameter:   id =  IET, name = IET
% Warning parameter IET is not constant, it should be controlled by a Rule and/or events
	global_par_IET=1.0;
% Parameter:   id =  J20ppx, name = J20ppx
	global_par_J20ppx=0.15;
% Parameter:   id =  Jacdh, name = Jacdh
	global_par_Jacdh=0.03;
% Parameter:   id =  Jaiep, name = Jaiep
	global_par_Jaiep=0.1;
% Parameter:   id =  Jamcm, name = Jamcm
	global_par_Jamcm=0.1;
% Parameter:   id =  Jasbf, name = Jasbf
	global_par_Jasbf=0.01;
% Parameter:   id =  Jatem, name = Jatem
	global_par_Jatem=0.1;
% Parameter:   id =  Jd2c1, name = Jd2c1
	global_par_Jd2c1=0.05;
% Parameter:   id =  Jd2f6, name = Jd2f6
	global_par_Jd2f6=0.05;
% Parameter:   id =  Jicdh, name = Jicdh
	global_par_Jicdh=0.03;
% Parameter:   id =  Jiiep, name = Jiiep
	global_par_Jiiep=0.1;
% Parameter:   id =  Jimcm, name = Jimcm
	global_par_Jimcm=0.1;
% Parameter:   id =  Jisbf, name = Jisbf
	global_par_Jisbf=0.01;
% Parameter:   id =  Jitem, name = Jitem
	global_par_Jitem=0.1;
% Parameter:   id =  Jn3, name = Jn3
	global_par_Jn3=6.0;
% Parameter:   id =  Jpds, name = Jpds
	global_par_Jpds=0.04;
% Parameter:   id =  Jspn, name = Jspn
	global_par_Jspn=0.14;
% Parameter:   id =  ka15_p, name = ka15'
	global_par_ka15_p=0.002;
% Parameter:   id =  ka15_p_p, name = ka15''
	global_par_ka15_p_p=1.0;
% Parameter:   id =  ka15p, name = ka15p
	global_par_ka15p=0.001;
% Parameter:   id =  ka20_p, name = ka20'
	global_par_ka20_p=0.05;
% Parameter:   id =  ka20_p_p, name = ka20''
	global_par_ka20_p_p=0.2;
% Parameter:   id =  kacdh_p, name = kacdh'
	global_par_kacdh_p=0.01;
% Parameter:   id =  kacdh_p_p, name = kacdh''
	global_par_kacdh_p_p=0.8;
% Parameter:   id =  kaiep, name = kaiep
	global_par_kaiep=0.1;
% Parameter:   id =  kamcm, name = kamcm
	global_par_kamcm=1.0;
% Parameter:   id =  kasb2, name = kasb2
	global_par_kasb2=50.0;
% Parameter:   id =  kasb5, name = kasb5
	global_par_kasb5=50.0;
% Parameter:   id =  kasbf, name = kasbf
	global_par_kasbf=0.38;
% Parameter:   id =  kasesp, name = kasesp
	global_par_kasesp=50.0;
% Parameter:   id =  kasf2, name = kasf2
	global_par_kasf2=15.0;
% Parameter:   id =  kasf5, name = kasf5
	global_par_kasf5=0.01;
% Parameter:   id =  kasrent, name = kasrent
	global_par_kasrent=200.0;
% Parameter:   id =  kasrentp, name = kasrentp
	global_par_kasrentp=1.0;
% Parameter:   id =  kaswi, name = kaswi
	global_par_kaswi=2.0;
% Parameter:   id =  kd14, name = kd14
	global_par_kd14=0.1;
% Parameter:   id =  kd1c1, name = kd1c1
	global_par_kd1c1=0.01;
% Parameter:   id =  kd1f6, name = kd1f6
	global_par_kd1f6=0.01;
% Parameter:   id =  kd1pds_p, name = kd1pds'
	global_par_kd1pds_p=0.01;
% Parameter:   id =  kd20, name = kd20
	global_par_kd20=0.3;
% Parameter:   id =  kd2c1, name = kd2c1
	global_par_kd2c1=1.0;
% Parameter:   id =  kd2f6, name = kd2f6
	global_par_kd2f6=1.0;
% Parameter:   id =  kd2pds_p_p, name = kd2pds''
	global_par_kd2pds_p_p=0.2;
% Parameter:   id =  kd3c1, name = kd3c1
	global_par_kd3c1=1.0;
% Parameter:   id =  kd3f6, name = kd3f6
	global_par_kd3f6=1.0;
% Parameter:   id =  kd3pds_p_p, name = kd3pds''
	global_par_kd3pds_p_p=0.04;
% Parameter:   id =  kdb2_p, name = kdb2'
	global_par_kdb2_p=0.003;
% Parameter:   id =  kdb2_p_p, name = kdb2''
	global_par_kdb2_p_p=0.4;
% Parameter:   id =  kdb2p, name = kdb2p
	global_par_kdb2p=0.15;
% Parameter:   id =  kdb5_p, name = kdb5'
	global_par_kdb5_p=0.01;
% Parameter:   id =  kdb5_p_p, name = kdb5''
	global_par_kdb5_p_p=0.16;
% Parameter:   id =  kdbud, name = kdbud
	global_par_kdbud=0.06;
% Parameter:   id =  kdcdh, name = kdcdh
	global_par_kdcdh=0.01;
% Parameter:   id =  kdib2, name = kdib2
	global_par_kdib2=0.05;
% Parameter:   id =  kdib5, name = kdib5
	global_par_kdib5=0.06;
% Parameter:   id =  kdiesp, name = kdiesp
	global_par_kdiesp=0.5;
% Parameter:   id =  kdif2, name = kdif2
	global_par_kdif2=0.5;
% Parameter:   id =  kdif5, name = kdif5
	global_par_kdif5=0.01;
% Parameter:   id =  kdirent, name = kdirent
	global_par_kdirent=1.0;
% Parameter:   id =  kdirentp, name = kdirentp
	global_par_kdirentp=2.0;
% Parameter:   id =  kdn2, name = kdn2
	global_par_kdn2=0.12;
% Parameter:   id =  kdnet, name = kdnet
	global_par_kdnet=0.03;
% Parameter:   id =  kdori, name = kdori
	global_par_kdori=0.06;
% Parameter:   id =  kdppx_p, name = kdppx'
	global_par_kdppx_p=0.17;
% Parameter:   id =  kdppx_p_p, name = kdppx''
	global_par_kdppx_p_p=2.0;
% Parameter:   id =  kdspn, name = kdspn
	global_par_kdspn=0.06;
% Parameter:   id =  kdswi, name = kdswi
	global_par_kdswi=0.08;
% Parameter:   id =  KEZ, name = KEZ
% Warning parameter KEZ is not constant, it should be controlled by a Rule and/or events
	global_par_KEZ=0.3;
% Parameter:   id =  KEZ2, name = KEZ2
% Warning parameter KEZ2 is not constant, it should be controlled by a Rule and/or events
	global_par_KEZ2=0.2;
% Parameter:   id =  ki15, name = ki15
	global_par_ki15=0.5;
% Parameter:   id =  kicdh_p, name = kicdh'
	global_par_kicdh_p=0.001;
% Parameter:   id =  kicdh_p_p, name = kicdh''
	global_par_kicdh_p_p=0.08;
% Parameter:   id =  kiiep, name = kiiep
	global_par_kiiep=0.15;
% Parameter:   id =  kimcm, name = kimcm
	global_par_kimcm=0.15;
% Parameter:   id =  kisbf_p, name = kisbf'
	global_par_kisbf_p=0.6;
% Parameter:   id =  kisbf_p_p, name = kisbf''
	global_par_kisbf_p_p=8.0;
% Parameter:   id =  kiswi, name = kiswi
	global_par_kiswi=0.05;
% Parameter:   id =  kkpnet_p, name = kkpnet'
	global_par_kkpnet_p=0.01;
% Parameter:   id =  kkpnet_p_p, name = kkpnet''
	global_par_kkpnet_p_p=0.6;
% Parameter:   id =  kppc1, name = kppc1
	global_par_kppc1=4.0;
% Parameter:   id =  kppf6, name = kppf6
	global_par_kppf6=4.0;
% Parameter:   id =  kppnet_p, name = kppnet'
	global_par_kppnet_p=0.05;
% Parameter:   id =  kppnet_p_p, name = kppnet''
	global_par_kppnet_p_p=3.0;
% Parameter:   id =  ks14, name = ks14
	global_par_ks14=0.2;
% Parameter:   id =  ks1pds_p_p, name = ks1pds''
	global_par_ks1pds_p_p=0.03;
% Parameter:   id =  ks20_p, name = ks20'
	global_par_ks20_p=0.006;
% Parameter:   id =  ks20_p_p, name = ks20''
	global_par_ks20_p_p=0.6;
% Parameter:   id =  ks2pds_p_p, name = ks2pds''
	global_par_ks2pds_p_p=0.055;
% Parameter:   id =  ksb2_p, name = ksb2'
	global_par_ksb2_p=0.001;
% Parameter:   id =  ksb2_p_p, name = ksb2''
	global_par_ksb2_p_p=0.04;
% Parameter:   id =  ksb5_p, name = ksb5'
	global_par_ksb5_p=8.0E-4;
% Parameter:   id =  ksb5_p_p, name = ksb5''
	global_par_ksb5_p_p=0.005;
% Parameter:   id =  ksbud, name = ksbud
	global_par_ksbud=0.2;
% Parameter:   id =  ksc1_p, name = ksc1'
	global_par_ksc1_p=0.012;
% Parameter:   id =  ksc1_p_p, name = ksc1''
	global_par_ksc1_p_p=0.12;
% Parameter:   id =  kscdh, name = kscdh
	global_par_kscdh=0.01;
% Parameter:   id =  ksf6_p, name = ksf6'
	global_par_ksf6_p=0.024;
% Parameter:   id =  ksf6_p_p, name = ksf6''
	global_par_ksf6_p_p=0.12;
% Parameter:   id =  ksf6_p_p_p, name = ksf6'''
	global_par_ksf6_p_p_p=0.004;
% Parameter:   id =  ksn2_p, name = ksn2'
	global_par_ksn2_p=0.0;
% Parameter:   id =  ksn2_p_p, name = ksn2''
	global_par_ksn2_p_p=0.15;
% Parameter:   id =  ksnet, name = ksnet
	global_par_ksnet=0.084;
% Parameter:   id =  ksori, name = ksori
	global_par_ksori=2.0;
% Parameter:   id =  kspds_p, name = kspds'
	global_par_kspds_p=0.0;
% Parameter:   id =  ksppx, name = ksppx
	global_par_ksppx=0.1;
% Parameter:   id =  ksspn, name = ksspn
	global_par_ksspn=0.1;
% Parameter:   id =  ksswi_p, name = ksswi'
	global_par_ksswi_p=0.005;
% Parameter:   id =  ksswi_p_p, name = ksswi''
	global_par_ksswi_p_p=0.08;
% Parameter:   id =  lte1h, name = lte1h
% Warning parameter lte1h is not constant, it should be controlled by a Rule and/or events
	global_par_lte1h=1.0;
% Parameter:   id =  lte1l, name = lte1l
% Warning parameter lte1l is not constant, it should be controlled by a Rule and/or events
	global_par_lte1l=0.1;
% Parameter:   id =  mad2h, name = mad2h
	global_par_mad2h=8.0;
% Parameter:   id =  mad2l, name = mad2l
% Warning parameter mad2l is not constant, it should be controlled by a Rule and/or events
	global_par_mad2l=0.01;
% Parameter:   id =  mdt, name = mdt
	global_par_mdt=90.0;
% Parameter:   id =  TEM1T, name = TEM1T
% Warning parameter TEM1T is not constant, it should be controlled by a Rule and/or events
	global_par_TEM1T=1.0;
% Parameter:   id =  D, name = D
% Parameter:   id =  mu, name = mu
% Parameter:   id =  Vdb5, name = Vdb5
% Parameter:   id =  Vdb2, name = Vdb2
% Parameter:   id =  Vasbf, name = Vasbf
% Parameter:   id =  Visbf, name = Visbf
% Parameter:   id =  Vkpc1, name = Vkpc1
% Parameter:   id =  Vkpf6, name = Vkpf6
% Parameter:   id =  Vacdh, name = Vacdh
% Parameter:   id =  Vicdh, name = Vicdh
% Parameter:   id =  Vppnet, name = Vppnet
% Parameter:   id =  Vkpnet, name = Vkpnet
% Parameter:   id =  Vdppx, name = Vdppx
% Parameter:   id =  Vdpds, name = Vdpds
% Parameter:   id =  Vaiep, name = Vaiep
% Parameter:   id =  Vd2c1, name = Vd2c1
% Parameter:   id =  Vd2f6, name = Vd2f6
% Parameter:   id =  Vppc1, name = Vppc1
% Parameter:   id =  Vppf6, name = Vppf6
% Parameter:   id =  F, name = F
% assignmentRule: variable = BCK2
	x(1)=global_par_b0*x(35);
% assignmentRule: variable = Visbf
	global_par_Visbf=global_par_kisbf_p+global_par_kisbf_p_p*x(20);
% assignmentRule: variable = CLN3
	x(25)=global_par_C0*global_par_Dn3*x(35)/(global_par_Jn3+global_par_Dn3*x(35));
% assignmentRule: variable = Vppc1
	global_par_Vppc1=global_par_kppc1*x(8);
% assignmentRule: variable = Vppf6
	global_par_Vppf6=global_par_kppf6*x(8);
% assignmentRule: variable = Vaiep
	global_par_Vaiep=global_par_kaiep*x(20);
% assignmentRule: variable = Vacdh
	global_par_Vacdh=global_par_kacdh_p+global_par_kacdh_p_p*x(8);
% assignmentRule: variable = Vicdh
	global_par_Vicdh=global_par_kicdh_p+global_par_kicdh_p_p*(global_par_eicdhn3*x(25)+global_par_eicdhn2*x(24)+global_par_eicdhb5*x(22)+global_par_eicdhb2*x(20));
% assignmentRule: variable = Vkpnet
	global_par_Vkpnet=(global_par_kkpnet_p+global_par_kkpnet_p_p*x(10))*x(35);
% assignmentRule: variable = Vppnet
	global_par_Vppnet=global_par_kppnet_p+global_par_kppnet_p_p*x(43);
% assignmentRule: variable = Vasbf
	global_par_Vasbf=global_par_kasbf*(global_par_esbfn2*x(24)+global_par_esbfn3*(x(25)+x(1))+global_par_esbfb5*x(22));
% assignmentRule: variable = SBF
	x(46)=GK_219(global_par_Vasbf, global_par_Visbf, global_par_Jasbf, global_par_Jisbf);
% assignmentRule: variable = MCM1
	x(36)=GK_219(global_par_kamcm*x(20), global_par_kimcm, global_par_Jamcm, global_par_Jimcm);
% assignmentRule: variable = D
	global_par_D=1.026/global_par_mu-32;
% assignmentRule: variable = F
	global_par_F=exp((-global_par_mu)*global_par_D);
% assignmentRule: variable = Vd2c1
	global_par_Vd2c1=global_par_kd2c1*(global_par_ec1n3*x(25)+global_par_ec1k2*x(1)+global_par_ec1n2*x(24)+global_par_ec1b5*x(22)+global_par_ec1b2*x(20));
% assignmentRule: variable = Vd2f6
	global_par_Vd2f6=global_par_kd2f6*(global_par_ef6n3*x(25)+global_par_ef6k2*x(1)+global_par_ef6n2*x(24)+global_par_ef6b5*x(22)+global_par_ef6b2*x(20));
% assignmentRule: variable = Vkpc1
	global_par_Vkpc1=global_par_kd1c1+global_par_Vd2c1/(global_par_Jd2c1+x(47)+x(4)+x(6)+x(48)+x(5)+x(7));
% assignmentRule: variable = Vkpf6
	global_par_Vkpf6=global_par_kd1f6+global_par_Vd2f6/(global_par_Jd2f6+x(14)+x(27)+x(29)+x(15)+x(28)+x(30));
% assignmentRule: variable = Vdb2
	global_par_Vdb2=global_par_kdb2_p+global_par_kdb2_p_p*x(17)+global_par_kdb2p*x(12);
% assignmentRule: variable = Vdb5
	global_par_Vdb5=global_par_kdb5_p+global_par_kdb5_p_p*x(12);
% assignmentRule: variable = Vdpds
	global_par_Vdpds=global_par_kd1pds_p+global_par_kd2pds_p_p*x(12)+global_par_kd3pds_p_p*x(17);
% assignmentRule: variable = Vdppx
	global_par_Vdppx=global_par_kdppx_p+global_par_kdppx_p_p*(global_par_J20ppx+x(12))*global_par_Jpds/(global_par_Jpds+x(41));
% assignmentRule: variable = CLB2T
	x(21)=x(20)+x(4)+x(5)+x(27)+x(28);
% assignmentRule: variable = CLB5T
	x(23)=x(22)+x(6)+x(7)+x(29)+x(30);
% assignmentRule: variable = CDC14T
	x(9)=x(8)+x(44)+x(45);
% assignmentRule: variable = NET1T
	x(39)=x(37)+x(38)+x(44)+x(45);
% assignmentRule: variable = SIC1T
	x(49)=x(47)+x(4)+x(6)+x(48)+x(5)+x(7);
% assignmentRule: variable = CDC6T
	x(16)=x(14)+x(27)+x(29)+x(15)+x(28)+x(30);
% assignmentRule: variable = CKIT
	x(19)=x(49)+x(16);
% assignmentRule: variable = CDC15i
	x(11)=global_par_CDC15T-x(10);
% assignmentRule: variable = IE
	x(31)=global_par_IET-x(32);
% assignmentRule: variable = PE
	x(42)=global_par_ESP1T-x(26);
% assignmentRule: variable = TEM1GDP
	x(53)=global_par_TEM1T-x(54);

% Reaction: id = Growth, name = Growth
	reaction_Growth=global_par_mu*x(35);

% Reaction: id = Synthesis_of_CLN2, name = Synthesis of CLN2
	reaction_Synthesis_of_CLN2=(global_par_ksn2_p+global_par_ksn2_p_p*x(46))*x(35);

% Reaction: id = Degradation_of_CLN2, name = Degradation of CLN2
	reaction_Degradation_of_CLN2=Mass_Action_1_222(global_par_kdn2, x(24));

% Reaction: id = Synthesis_of_CLB2, name = Synthesis of CLB2
	reaction_Synthesis_of_CLB2=(global_par_ksb2_p+global_par_ksb2_p_p*x(36))*x(35);

% Reaction: id = Degradation_of_CLB2, name = Degradation of CLB2
	reaction_Degradation_of_CLB2=Mass_Action_1_222(global_par_Vdb2, x(20));

% Reaction: id = Synthesis_of_CLB5, name = Synthesis of CLB5
	reaction_Synthesis_of_CLB5=(global_par_ksb5_p+global_par_ksb5_p_p*x(46))*x(35);

% Reaction: id = Degradation_of_CLB5, name = Degradation of CLB5
	reaction_Degradation_of_CLB5=Mass_Action_1_222(global_par_Vdb5, x(22));

% Reaction: id = Synthesis_of_SIC1, name = Synthesis of SIC1
	reaction_Synthesis_of_SIC1=global_par_ksc1_p+global_par_ksc1_p_p*x(51);

% Reaction: id = Phosphorylation_of_SIC1, name = Phosphorylation of SIC1
	reaction_Phosphorylation_of_SIC1=Mass_Action_1_222(global_par_Vkpc1, x(47));

% Reaction: id = Dephosphorylation_of_SIC1, name = Dephosphorylation of SIC1
	reaction_Dephosphorylation_of_SIC1=Mass_Action_1_222(global_par_Vppc1, x(48));

% Reaction: id = Fast_Degradation_of_SIC1P, name = Fast Degradation of SIC1P
	reaction_Fast_Degradation_of_SIC1P=Mass_Action_1_222(global_par_kd3c1, x(48));

% Reaction: id = Assoc_of_CLB2_and_SIC1, name = Assoc. of CLB2 and SIC1
	reaction_Assoc_of_CLB2_and_SIC1=Mass_Action_2_221(global_par_kasb2, x(20), x(47));

% Reaction: id = Dissoc_of_CLB2SIC1_complex, name = Dissoc. of CLB2/SIC1 complex
	reaction_Dissoc_of_CLB2SIC1_complex=Mass_Action_1_222(global_par_kdib2, x(4));

% Reaction: id = Assoc_of_CLB5_and_SIC1, name = Assoc. of CLB5 and SIC1
	reaction_Assoc_of_CLB5_and_SIC1=Mass_Action_2_221(global_par_kasb5, x(22), x(47));

% Reaction: id = Dissoc_of_CLB5SIC1, name = Dissoc. of CLB5/SIC1
	reaction_Dissoc_of_CLB5SIC1=Mass_Action_1_222(global_par_kdib5, x(6));

% Reaction: id = Phosphorylation_of_C2, name = Phosphorylation of C2
	reaction_Phosphorylation_of_C2=Mass_Action_1_222(global_par_Vkpc1, x(4));

% Reaction: id = Dephosphorylation_of_C2P, name = Dephosphorylation of C2P
	reaction_Dephosphorylation_of_C2P=Mass_Action_1_222(global_par_Vppc1, x(5));

% Reaction: id = Phosphorylation_of_C5, name = Phosphorylation of C5
	reaction_Phosphorylation_of_C5=Mass_Action_1_222(global_par_Vkpc1, x(6));

% Reaction: id = Dephosphorylation_of_C5P, name = Dephosphorylation of C5P
	reaction_Dephosphorylation_of_C5P=Mass_Action_1_222(global_par_Vppc1, x(7));

% Reaction: id = Degradation_of_CLB2_in_C2, name = Degradation of CLB2 in C2
	reaction_Degradation_of_CLB2_in_C2=Mass_Action_1_222(global_par_Vdb2, x(4));

% Reaction: id = Degradation_of_CLB5_in_C5, name = Degradation of CLB5 in C5
	reaction_Degradation_of_CLB5_in_C5=Mass_Action_1_222(global_par_Vdb5, x(6));

% Reaction: id = Degradation_of_SIC1_in_C2P, name = Degradation of SIC1 in C2P
	reaction_Degradation_of_SIC1_in_C2P=Mass_Action_1_222(global_par_kd3c1, x(5));

% Reaction: id = Degradation_of_SIC1P_in_C5P_, name = Degradation of SIC1P in C5P
	reaction_Degradation_of_SIC1P_in_C5P_=Mass_Action_1_222(global_par_kd3c1, x(7));

% Reaction: id = Degradation_of_CLB2_in_C2P, name = Degradation of CLB2 in C2P
	reaction_Degradation_of_CLB2_in_C2P=Mass_Action_1_222(global_par_Vdb2, x(5));

% Reaction: id = Degradation_of_CLB5_in_C5P, name = Degradation of CLB5 in C5P
	reaction_Degradation_of_CLB5_in_C5P=Mass_Action_1_222(global_par_Vdb5, x(7));

% Reaction: id = CDC6_synthesis, name = CDC6 synthesis
	reaction_CDC6_synthesis=global_par_ksf6_p+global_par_ksf6_p_p*x(51)+global_par_ksf6_p_p_p*x(46);

% Reaction: id = Phosphorylation_of_CDC6, name = Phosphorylation of CDC6
	reaction_Phosphorylation_of_CDC6=Mass_Action_1_222(global_par_Vkpf6, x(14));

% Reaction: id = Dephosphorylation_of_CDC6, name = Dephosphorylation of CDC6
	reaction_Dephosphorylation_of_CDC6=Mass_Action_1_222(global_par_Vppf6, x(15));

% Reaction: id = Degradation_of_CDC6P, name = Degradation of CDC6P
	reaction_Degradation_of_CDC6P=Mass_Action_1_222(global_par_kd3f6, x(15));

% Reaction: id = CLB2CDC6_complex_formation, name = CLB2/CDC6 complex formation
	reaction_CLB2CDC6_complex_formation=Mass_Action_2_221(global_par_kasf2, x(20), x(14));

% Reaction: id = CLB2CDC6_dissociation, name = CLB2/CDC6 dissociation
	reaction_CLB2CDC6_dissociation=Mass_Action_1_222(global_par_kdif2, x(27));

% Reaction: id = CLB5CDC6_complex_formation, name = CLB5/CDC6 complex formation
	reaction_CLB5CDC6_complex_formation=Mass_Action_2_221(global_par_kasf5, x(22), x(14));

% Reaction: id = CLB5CDC6_dissociation, name = CLB5/CDC6 dissociation
	reaction_CLB5CDC6_dissociation=Mass_Action_1_222(global_par_kdif5, x(29));

% Reaction: id = F2_phosphorylation, name = F2 phosphorylation
	reaction_F2_phosphorylation=Mass_Action_1_222(global_par_Vkpf6, x(27));

% Reaction: id = F2P_dephosphorylation, name = F2P dephosphorylation
	reaction_F2P_dephosphorylation=Mass_Action_1_222(global_par_Vppf6, x(28));

% Reaction: id = F5_phosphorylation, name = F5 phosphorylation
	reaction_F5_phosphorylation=Mass_Action_1_222(global_par_Vkpf6, x(29));

% Reaction: id = F5P_dephosphorylation, name = F5P dephosphorylation
	reaction_F5P_dephosphorylation=Mass_Action_1_222(global_par_Vppf6, x(30));

% Reaction: id = CLB2_degradation_in_F2, name = CLB2 degradation in F2
	reaction_CLB2_degradation_in_F2=Mass_Action_1_222(global_par_Vdb2, x(27));

% Reaction: id = CLB5_degradation_in_F5, name = CLB5 degradation in F5
	reaction_CLB5_degradation_in_F5=Mass_Action_1_222(global_par_Vdb5, x(29));

% Reaction: id = CDC6_degradation_in_F2P, name = CDC6 degradation in F2P
	reaction_CDC6_degradation_in_F2P=Mass_Action_1_222(global_par_kd3f6, x(28));

% Reaction: id = CDC6_degradation_in_F5P, name = CDC6 degradation in F5P
	reaction_CDC6_degradation_in_F5P=Mass_Action_1_222(global_par_kd3f6, x(30));

% Reaction: id = CLB2_degradation_in_F2P, name = CLB2 degradation in F2P
	reaction_CLB2_degradation_in_F2P=Mass_Action_1_222(global_par_Vdb2, x(28));

% Reaction: id = CLB5_degradation_in_F5P, name = CLB5 degradation in F5P
	reaction_CLB5_degradation_in_F5P=Mass_Action_1_222(global_par_Vdb5, x(30));

% Reaction: id = Synthesis_of_SWI5, name = Synthesis of SWI5
	reaction_Synthesis_of_SWI5=global_par_ksswi_p+global_par_ksswi_p_p*x(36);

% Reaction: id = Degradation_of_SWI5, name = Degradation of SWI5
	reaction_Degradation_of_SWI5=Mass_Action_1_222(global_par_kdswi, x(51));

% Reaction: id = Degradation_of_SWI5P, name = Degradation of SWI5P
	reaction_Degradation_of_SWI5P=Mass_Action_1_222(global_par_kdswi, x(52));

% Reaction: id = Activation_of_SWI5, name = Activation of SWI5
	reaction_Activation_of_SWI5=Mass_Action_1_222(global_par_kaswi*x(8), x(52));

% Reaction: id = Inactivation_of_SWI5, name = Inactivation of SWI5
	reaction_Inactivation_of_SWI5=Mass_Action_1_222(global_par_kiswi*x(20), x(51));

% Reaction: id = Activation_of_IEP, name = Activation of IEP
	reaction_Activation_of_IEP=MichaelisMenten_220(global_par_Vaiep, global_par_Jaiep, 1, x(31));

% Reaction: id = Inactivation_1, name = Inactivation
	reaction_Inactivation_1=MichaelisMenten_220(1, global_par_Jiiep, global_par_kiiep, x(32));

% Reaction: id = Synthesis_of_inactive_CDC20, name = Synthesis of inactive CDC20
	reaction_Synthesis_of_inactive_CDC20=global_par_ks20_p+global_par_ks20_p_p*x(36);

% Reaction: id = Degradation_of_inactiveCDC20, name = Degradation of inactiveCDC20
	reaction_Degradation_of_inactiveCDC20=Mass_Action_1_222(global_par_kd20, x(13));

% Reaction: id = Degradation_of_active_CDC20, name = Degradation of active CDC20
	reaction_Degradation_of_active_CDC20=Mass_Action_1_222(global_par_kd20, x(12));

% Reaction: id = Activation_of_CDC20, name = Activation of CDC20
	reaction_Activation_of_CDC20=Mass_Action_1_222(global_par_ka20_p+global_par_ka20_p_p*x(32), x(13));

% Reaction: id = Inactivation_2, name = Inactivation	% Local Parameter:   id =  k, name = k
	reaction_Inactivation_2_k=1.0;

	reaction_Inactivation_2=reaction_Inactivation_2_k*Mass_Action_1_222(x(34), x(12));

% Reaction: id = CDH1_synthesis, name = CDH1 synthesis
	reaction_CDH1_synthesis=global_par_kscdh;

% Reaction: id = CDH1_degradation, name = CDH1 degradation
	reaction_CDH1_degradation=Mass_Action_1_222(global_par_kdcdh, x(17));

% Reaction: id = CDH1i_degradation, name = CDH1i degradation
	reaction_CDH1i_degradation=Mass_Action_1_222(global_par_kdcdh, x(18));

% Reaction: id = CDH1i_activation, name = CDH1i activation
	reaction_CDH1i_activation=MichaelisMenten_220(global_par_Vacdh, global_par_Jacdh, 1, x(18));

% Reaction: id = Inactivation_3, name = Inactivation
	reaction_Inactivation_3=MichaelisMenten_220(global_par_Vicdh, global_par_Jicdh, 1, x(17));

% Reaction: id = CDC14_synthesis, name = CDC14 synthesis
	reaction_CDC14_synthesis=global_par_ks14;

% Reaction: id = CDC14_degradation, name = CDC14 degradation
	reaction_CDC14_degradation=Mass_Action_1_222(global_par_kd14, x(8));

% Reaction: id = Assoc_with_NET1_to_form_RENT, name = Assoc. with NET1 to form RENT
	reaction_Assoc_with_NET1_to_form_RENT=Mass_Action_2_221(global_par_kasrent, x(8), x(37));

% Reaction: id = Dissoc_from_RENT, name = Dissoc. from RENT
	reaction_Dissoc_from_RENT=Mass_Action_1_222(global_par_kdirent, x(44));

% Reaction: id = Assoc_with_NET1P_to_form_RENTP, name = Assoc with NET1P to form RENTP
	reaction_Assoc_with_NET1P_to_form_RENTP=Mass_Action_2_221(global_par_kasrentp, x(8), x(38));

% Reaction: id = Dissoc_from_RENP, name = Dissoc. from RENP
	reaction_Dissoc_from_RENP=Mass_Action_1_222(global_par_kdirentp, x(45));

% Reaction: id = Net1_synthesis, name = Net1 synthesis
	reaction_Net1_synthesis=global_par_ksnet;

% Reaction: id = Net1_degradation, name = Net1 degradation
	reaction_Net1_degradation=Mass_Action_1_222(global_par_kdnet, x(37));

% Reaction: id = Net1P_degradation, name = Net1P degradation
	reaction_Net1P_degradation=Mass_Action_1_222(global_par_kdnet, x(38));

% Reaction: id = NET1_phosphorylation, name = NET1 phosphorylation
	reaction_NET1_phosphorylation=Mass_Action_1_222(global_par_Vkpnet, x(37));

% Reaction: id = dephosphorylation_1, name = dephosphorylation
	reaction_dephosphorylation_1=Mass_Action_1_222(global_par_Vppnet, x(38));

% Reaction: id = RENT_phosphorylation, name = RENT phosphorylation
	reaction_RENT_phosphorylation=Mass_Action_1_222(global_par_Vkpnet, x(44));

% Reaction: id = dephosphorylation_2, name = dephosphorylation
	reaction_dephosphorylation_2=Mass_Action_1_222(global_par_Vppnet, x(45));

% Reaction: id = Degradation_of_NET1_in_RENT, name = Degradation of NET1 in RENT
	reaction_Degradation_of_NET1_in_RENT=Mass_Action_1_222(global_par_kdnet, x(44));

% Reaction: id = Degradation_of_NET1P_in_RENTP, name = Degradation of NET1P in RENTP
	reaction_Degradation_of_NET1P_in_RENTP=Mass_Action_1_222(global_par_kdnet, x(45));

% Reaction: id = Degradation_of_CDC14_in_RENT, name = Degradation of CDC14 in RENT
	reaction_Degradation_of_CDC14_in_RENT=Mass_Action_1_222(global_par_kd14, x(44));

% Reaction: id = Degradation_of_CDC14_in_RENTP, name = Degradation of CDC14 in RENTP
	reaction_Degradation_of_CDC14_in_RENTP=Mass_Action_1_222(global_par_kd14, x(45));

% Reaction: id = TEM1_activation, name = TEM1 activation
	reaction_TEM1_activation=MichaelisMenten_220(x(33), global_par_Jatem, 1, x(53));

% Reaction: id = inactivation_1, name = inactivation
	reaction_inactivation_1=MichaelisMenten_220(x(2), global_par_Jitem, 1, x(54));

% Reaction: id = CDC15_activation, name = CDC15 activation
	reaction_CDC15_activation=Mass_Action_1_222(global_par_ka15_p*x(53)+global_par_ka15_p_p*x(54)+global_par_ka15p*x(8), x(11));

% Reaction: id = inactivation_2, name = inactivation
	reaction_inactivation_2=Mass_Action_1_222(global_par_ki15, x(10));

% Reaction: id = PPX_synthesis, name = PPX synthesis
	reaction_PPX_synthesis=global_par_ksppx;

% Reaction: id = degradation_1, name = degradation
	reaction_degradation_1=Mass_Action_1_222(global_par_Vdppx, x(43));

% Reaction: id = PDS1_synthesis, name = PDS1 synthesis
	reaction_PDS1_synthesis=global_par_kspds_p+global_par_ks1pds_p_p*x(46)+global_par_ks2pds_p_p*x(36);

% Reaction: id = degradation_2, name = degradation
	reaction_degradation_2=Mass_Action_1_222(global_par_Vdpds, x(41));

% Reaction: id = Degradation_of_PDS1_in_PE, name = Degradation of PDS1 in PE
	reaction_Degradation_of_PDS1_in_PE=Mass_Action_1_222(global_par_Vdpds, x(42));

% Reaction: id = Assoc_with_ESP1_to_form_PE, name = Assoc. with ESP1 to form PE
	reaction_Assoc_with_ESP1_to_form_PE=Mass_Action_2_221(global_par_kasesp, x(41), x(26));

% Reaction: id = Disso_from_PE, name = Disso. from PE
	reaction_Disso_from_PE=Mass_Action_1_222(global_par_kdiesp, x(42));

% Reaction: id = DNA_synthesis, name = DNA synthesis
	reaction_DNA_synthesis=global_par_ksori*(global_par_eorib5*x(22)+global_par_eorib2*x(20));

% Reaction: id = Negative_regulation_of_DNA_synthesis, name = Negative regulation of DNA synthesis
	reaction_Negative_regulation_of_DNA_synthesis=Mass_Action_1_222(global_par_kdori, x(40));

% Reaction: id = Budding, name = Budding
	reaction_Budding=global_par_ksbud*(global_par_ebudn2*x(24)+global_par_ebudn3*x(25)+global_par_ebudb5*x(22));

% Reaction: id = Negative_regulation_of_Cell_budding, name = Negative regulation of Cell budding
	reaction_Negative_regulation_of_Cell_budding=Mass_Action_1_222(global_par_kdbud, x(3));

% Reaction: id = Spindle_formation, name = Spindle formation
	reaction_Spindle_formation=global_par_ksspn*x(20)/(global_par_Jspn+x(20));

% Reaction: id = Spindle_disassembly, name = Spindle disassembly
	reaction_Spindle_disassembly=Mass_Action_1_222(global_par_kdspn, x(50));

%Event: id=reset_ORI
	event_reset_ORI=(x(20)+x(22)-global_par_KEZ2) < 0;

	if(event_reset_ORI) 
		x(40)=0;
	end

%Event: id=start_S
	event_start_S=(x(40)-1) > 0;

	if(event_start_S) 
		x(34)=global_par_mad2h;
		x(2)=global_par_bub2h;
	end

%Event: id=spindle_checkpoint
	event_spindle_checkpoint=(x(50)-1) > 0;

	if(event_spindle_checkpoint) 
		x(34)=global_par_mad2l;
		x(33)=global_par_lte1h;
		x(2)=global_par_bub2l;
	end

%Event: id=cell_division
	event_cell_division=(x(20)-global_par_KEZ) < 0;

	if(event_cell_division) 
		x(35)=global_par_F*x(35);
		x(33)=global_par_lte1l;
		x(3)=0;
		x(50)=0;
	end

	xdot=zeros(54,1);
	
% Species:   id = BCK2, name = BCK2, defined in a rule 	xdot(1) = x(1);
	
% Species:   id = BUB2, name = BUB2
% Warning species is not changed by either rules or reactions
	xdot(2) = ;
	
% Species:   id = BUD, name = BUD, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_Budding) + (-1.0 * reaction_Negative_regulation_of_Cell_budding);
	
% Species:   id = C2, name = C2, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_Assoc_of_CLB2_and_SIC1) + (-1.0 * reaction_Dissoc_of_CLB2SIC1_complex) + (-1.0 * reaction_Phosphorylation_of_C2) + ( 1.0 * reaction_Dephosphorylation_of_C2P) + (-1.0 * reaction_Degradation_of_CLB2_in_C2);
	
% Species:   id = C2P, name = C2P, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_Phosphorylation_of_C2) + (-1.0 * reaction_Dephosphorylation_of_C2P) + (-1.0 * reaction_Degradation_of_SIC1_in_C2P) + (-1.0 * reaction_Degradation_of_CLB2_in_C2P);
	
% Species:   id = C5, name = C5, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_Assoc_of_CLB5_and_SIC1) + (-1.0 * reaction_Dissoc_of_CLB5SIC1) + (-1.0 * reaction_Phosphorylation_of_C5) + ( 1.0 * reaction_Dephosphorylation_of_C5P) + (-1.0 * reaction_Degradation_of_CLB5_in_C5);
	
% Species:   id = C5P, name = C5P, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_Phosphorylation_of_C5) + (-1.0 * reaction_Dephosphorylation_of_C5P) + (-1.0 * reaction_Degradation_of_SIC1P_in_C5P_) + (-1.0 * reaction_Degradation_of_CLB5_in_C5P);
	
% Species:   id = CDC14, name = CDC14, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_CDC14_synthesis) + (-1.0 * reaction_CDC14_degradation) + (-1.0 * reaction_Assoc_with_NET1_to_form_RENT) + ( 1.0 * reaction_Dissoc_from_RENT) + (-1.0 * reaction_Assoc_with_NET1P_to_form_RENTP) + ( 1.0 * reaction_Dissoc_from_RENP) + ( 1.0 * reaction_Degradation_of_NET1_in_RENT) + ( 1.0 * reaction_Degradation_of_NET1P_in_RENTP);
	
% Species:   id = CDC14T, name = CDC14T, defined in a rule 	xdot(9) = x(9);
	
% Species:   id = CDC15, name = CDC15, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_CDC15_activation) + (-1.0 * reaction_inactivation_2);
	
% Species:   id = CDC15i, name = CDC15i, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = CDC20, name = CDC20, affected by kineticLaw
	xdot(12) = (-1.0 * reaction_Degradation_of_active_CDC20) + ( 1.0 * reaction_Activation_of_CDC20) + (-1.0 * reaction_Inactivation_2);
	
% Species:   id = CDC20i, name = CDC20i, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_Synthesis_of_inactive_CDC20) + (-1.0 * reaction_Degradation_of_inactiveCDC20) + (-1.0 * reaction_Activation_of_CDC20) + ( 1.0 * reaction_Inactivation_2);
	
% Species:   id = CDC6, name = CDC6, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_CDC6_synthesis) + (-1.0 * reaction_Phosphorylation_of_CDC6) + ( 1.0 * reaction_Dephosphorylation_of_CDC6) + (-1.0 * reaction_CLB2CDC6_complex_formation) + ( 1.0 * reaction_CLB2CDC6_dissociation) + (-1.0 * reaction_CLB5CDC6_complex_formation) + ( 1.0 * reaction_CLB5CDC6_dissociation) + ( 1.0 * reaction_CLB2_degradation_in_F2) + ( 1.0 * reaction_CLB5_degradation_in_F5);
	
% Species:   id = CDC6P, name = CDC6P, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_Phosphorylation_of_CDC6) + (-1.0 * reaction_Dephosphorylation_of_CDC6) + (-1.0 * reaction_Degradation_of_CDC6P) + ( 1.0 * reaction_CLB2_degradation_in_F2P) + ( 1.0 * reaction_CLB5_degradation_in_F5P);
	
% Species:   id = CDC6T, name = CDC6T, defined in a rule 	xdot(16) = x(16);
	
% Species:   id = CDH1, name = CDH1, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_CDH1_synthesis) + (-1.0 * reaction_CDH1_degradation) + ( 1.0 * reaction_CDH1i_activation) + (-1.0 * reaction_Inactivation_3);
	
% Species:   id = CDH1i, name = CDH1i, affected by kineticLaw
	xdot(18) = (-1.0 * reaction_CDH1i_degradation) + (-1.0 * reaction_CDH1i_activation) + ( 1.0 * reaction_Inactivation_3);
	
% Species:   id = CKIT, name = CKIT, defined in a rule 	xdot(19) = x(19);
	
% Species:   id = CLB2, name = CLB2, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_Synthesis_of_CLB2) + (-1.0 * reaction_Degradation_of_CLB2) + (-1.0 * reaction_Assoc_of_CLB2_and_SIC1) + ( 1.0 * reaction_Dissoc_of_CLB2SIC1_complex) + ( 1.0 * reaction_Degradation_of_SIC1_in_C2P) + (-1.0 * reaction_CLB2CDC6_complex_formation) + ( 1.0 * reaction_CLB2CDC6_dissociation) + ( 1.0 * reaction_CDC6_degradation_in_F2P);
	
% Species:   id = CLB2T, name = CLB2T, defined in a rule 	xdot(21) = x(21);
	
% Species:   id = CLB5, name = CLB5, affected by kineticLaw
	xdot(22) = ( 1.0 * reaction_Synthesis_of_CLB5) + (-1.0 * reaction_Degradation_of_CLB5) + (-1.0 * reaction_Assoc_of_CLB5_and_SIC1) + ( 1.0 * reaction_Dissoc_of_CLB5SIC1) + ( 1.0 * reaction_Degradation_of_SIC1P_in_C5P_) + (-1.0 * reaction_CLB5CDC6_complex_formation) + ( 1.0 * reaction_CLB5CDC6_dissociation) + ( 1.0 * reaction_CDC6_degradation_in_F5P);
	
% Species:   id = CLB5T, name = CLB5T, defined in a rule 	xdot(23) = x(23);
	
% Species:   id = CLN2, name = CLN2, affected by kineticLaw
	xdot(24) = ( 1.0 * reaction_Synthesis_of_CLN2) + (-1.0 * reaction_Degradation_of_CLN2);
	
% Species:   id = CLN3, name = CLN3, defined in a rule 	xdot(25) = x(25);
	
% Species:   id = ESP1, name = ESP1, affected by kineticLaw
	xdot(26) = ( 1.0 * reaction_Degradation_of_PDS1_in_PE) + (-1.0 * reaction_Assoc_with_ESP1_to_form_PE) + ( 1.0 * reaction_Disso_from_PE);
	
% Species:   id = F2, name = F2, affected by kineticLaw
	xdot(27) = ( 1.0 * reaction_CLB2CDC6_complex_formation) + (-1.0 * reaction_CLB2CDC6_dissociation) + (-1.0 * reaction_F2_phosphorylation) + ( 1.0 * reaction_F2P_dephosphorylation) + (-1.0 * reaction_CLB2_degradation_in_F2);
	
% Species:   id = F2P, name = F2P, affected by kineticLaw
	xdot(28) = ( 1.0 * reaction_F2_phosphorylation) + (-1.0 * reaction_F2P_dephosphorylation) + (-1.0 * reaction_CDC6_degradation_in_F2P) + (-1.0 * reaction_CLB2_degradation_in_F2P);
	
% Species:   id = F5, name = F5, affected by kineticLaw
	xdot(29) = ( 1.0 * reaction_CLB5CDC6_complex_formation) + (-1.0 * reaction_CLB5CDC6_dissociation) + (-1.0 * reaction_F5_phosphorylation) + ( 1.0 * reaction_F5P_dephosphorylation) + (-1.0 * reaction_CLB5_degradation_in_F5);
	
% Species:   id = F5P, name = F5P, affected by kineticLaw
	xdot(30) = ( 1.0 * reaction_F5_phosphorylation) + (-1.0 * reaction_F5P_dephosphorylation) + (-1.0 * reaction_CDC6_degradation_in_F5P) + (-1.0 * reaction_CLB5_degradation_in_F5P);
	
% Species:   id = IE, name = IE, involved in a rule 	xdot(31) = x(31);
	
% Species:   id = IEP, name = IEP, affected by kineticLaw
	xdot(32) = ( 1.0 * reaction_Activation_of_IEP) + (-1.0 * reaction_Inactivation_1);
	
% Species:   id = LTE1, name = LTE1
% Warning species is not changed by either rules or reactions
	xdot(33) = ;
	
% Species:   id = MAD2, name = MAD2
% Warning species is not changed by either rules or reactions
	xdot(34) = ;
	
% Species:   id = MASS, name = MASS, affected by kineticLaw
	xdot(35) = ( 1.0 * reaction_Growth);
	
% Species:   id = MCM1, name = MCM1, defined in a rule 	xdot(36) = x(36);
	
% Species:   id = NET1, name = NET1, affected by kineticLaw
	xdot(37) = (-1.0 * reaction_Assoc_with_NET1_to_form_RENT) + ( 1.0 * reaction_Dissoc_from_RENT) + ( 1.0 * reaction_Net1_synthesis) + (-1.0 * reaction_Net1_degradation) + (-1.0 * reaction_NET1_phosphorylation) + ( 1.0 * reaction_dephosphorylation_1) + ( 1.0 * reaction_Degradation_of_CDC14_in_RENT);
	
% Species:   id = NET1P, name = NET1P, affected by kineticLaw
	xdot(38) = (-1.0 * reaction_Assoc_with_NET1P_to_form_RENTP) + ( 1.0 * reaction_Dissoc_from_RENP) + (-1.0 * reaction_Net1P_degradation) + ( 1.0 * reaction_NET1_phosphorylation) + (-1.0 * reaction_dephosphorylation_1) + ( 1.0 * reaction_Degradation_of_CDC14_in_RENTP);
	
% Species:   id = NET1T, name = NET1T, defined in a rule 	xdot(39) = x(39);
	
% Species:   id = ORI, name = ORI, affected by kineticLaw
	xdot(40) = ( 1.0 * reaction_DNA_synthesis) + (-1.0 * reaction_Negative_regulation_of_DNA_synthesis);
	
% Species:   id = PDS1, name = PDS1, affected by kineticLaw
	xdot(41) = ( 1.0 * reaction_PDS1_synthesis) + (-1.0 * reaction_degradation_2) + (-1.0 * reaction_Assoc_with_ESP1_to_form_PE) + ( 1.0 * reaction_Disso_from_PE);
	
% Species:   id = PE, name = PE, involved in a rule 	xdot(42) = x(42);
	
% Species:   id = PPX, name = PPX, affected by kineticLaw
	xdot(43) = ( 1.0 * reaction_PPX_synthesis) + (-1.0 * reaction_degradation_1);
	
% Species:   id = RENT, name = RENT, affected by kineticLaw
	xdot(44) = ( 1.0 * reaction_Assoc_with_NET1_to_form_RENT) + (-1.0 * reaction_Dissoc_from_RENT) + (-1.0 * reaction_RENT_phosphorylation) + ( 1.0 * reaction_dephosphorylation_2) + (-1.0 * reaction_Degradation_of_NET1_in_RENT) + (-1.0 * reaction_Degradation_of_CDC14_in_RENT);
	
% Species:   id = RENTP, name = RENTP, affected by kineticLaw
	xdot(45) = ( 1.0 * reaction_Assoc_with_NET1P_to_form_RENTP) + (-1.0 * reaction_Dissoc_from_RENP) + ( 1.0 * reaction_RENT_phosphorylation) + (-1.0 * reaction_dephosphorylation_2) + (-1.0 * reaction_Degradation_of_NET1P_in_RENTP) + (-1.0 * reaction_Degradation_of_CDC14_in_RENTP);
	
% Species:   id = SBF, name = SBF, defined in a rule 	xdot(46) = x(46);
	
% Species:   id = SIC1, name = SIC1, affected by kineticLaw
	xdot(47) = ( 1.0 * reaction_Synthesis_of_SIC1) + (-1.0 * reaction_Phosphorylation_of_SIC1) + ( 1.0 * reaction_Dephosphorylation_of_SIC1) + (-1.0 * reaction_Assoc_of_CLB2_and_SIC1) + ( 1.0 * reaction_Dissoc_of_CLB2SIC1_complex) + (-1.0 * reaction_Assoc_of_CLB5_and_SIC1) + ( 1.0 * reaction_Dissoc_of_CLB5SIC1) + ( 1.0 * reaction_Degradation_of_CLB2_in_C2) + ( 1.0 * reaction_Degradation_of_CLB5_in_C5);
	
% Species:   id = SIC1P, name = SIC1P, affected by kineticLaw
	xdot(48) = ( 1.0 * reaction_Phosphorylation_of_SIC1) + (-1.0 * reaction_Dephosphorylation_of_SIC1) + (-1.0 * reaction_Fast_Degradation_of_SIC1P) + ( 1.0 * reaction_Degradation_of_CLB2_in_C2P) + ( 1.0 * reaction_Degradation_of_CLB5_in_C5P);
	
% Species:   id = SIC1T, name = SIC1T, defined in a rule 	xdot(49) = x(49);
	
% Species:   id = SPN, name = SPN, affected by kineticLaw
	xdot(50) = ( 1.0 * reaction_Spindle_formation) + (-1.0 * reaction_Spindle_disassembly);
	
% Species:   id = SWI5, name = SWI5, affected by kineticLaw
	xdot(51) = ( 1.0 * reaction_Synthesis_of_SWI5) + (-1.0 * reaction_Degradation_of_SWI5) + ( 1.0 * reaction_Activation_of_SWI5) + (-1.0 * reaction_Inactivation_of_SWI5);
	
% Species:   id = SWI5P, name = SWI5P, affected by kineticLaw
	xdot(52) = (-1.0 * reaction_Degradation_of_SWI5P) + (-1.0 * reaction_Activation_of_SWI5) + ( 1.0 * reaction_Inactivation_of_SWI5);
	
% Species:   id = TEM1GDP, name = TEM1GDP, involved in a rule 	xdot(53) = x(53);
	
% Species:   id = TEM1GTP, name = TEM1GTP, affected by kineticLaw
	xdot(54) = ( 1.0 * reaction_TEM1_activation) + (-1.0 * reaction_inactivation_1);
end

function z=BB_218(A1,A2,A3,A4), z=(A2-A1+A3*A2+A4*A1);end

function z=GK_219(A1,A2,A3,A4), z=(2*A4*A1/(A2-A1+A3*A2+A4*A1+((A2-A1+A3*A2+A4*A1)^2-4*(A2-A1)*A4*A1)^(0.5)));end

function z=MichaelisMenten_220(M1,J1,k1,S1), z=(k1*S1*M1/(J1+S1));end

function z=Mass_Action_2_221(k1,S1,S2), z=(k1*S1*S2);end

function z=Mass_Action_1_222(k1,S1), z=(k1*S1);end

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


