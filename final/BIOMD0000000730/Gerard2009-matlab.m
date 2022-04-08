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
% Model name = Gerard2009 - An Integrated Mammalian Cell Cycle Model
%
% isDescribedBy http://identifiers.org/pubmed/20007375
% isDescribedBy http://identifiers.org/doi/10.1073/pnas.0903827106
% is http://identifiers.org/biomodels.db/MODEL1812210001
% is http://identifiers.org/biomodels.db/BIOMD0000000730
%


function main()
%Initial conditions vector
	x0=zeros(45,1);
	x0(1) = 1.0;
	x0(2) = 0.25;
	x0(3) = 0.1;
	x0(4) = 0.1;
	x0(5) = 0.001;
	x0(6) = 0.1;
	x0(7) = 0.05;
	x0(8) = 0.01;
	x0(9) = 0.01;
	x0(10) = 0.01;
	x0(11) = 0.01;
	x0(12) = 0.01;
	x0(13) = 0.01;
	x0(14) = 0.01;
	x0(15) = 0.01;
	x0(16) = 0.01;
	x0(17) = 0.01;
	x0(18) = 0.01;
	x0(19) = 0.01;
	x0(20) = 0.01;
	x0(21) = 0.01;
	x0(22) = 0.01;
	x0(23) = 0.25;
	x0(24) = 0.01;
	x0(25) = 0.01;
	x0(26) = 0.01;
	x0(27) = 0.01;
	x0(28) = 0.01;
	x0(29) = 0.01;
	x0(30) = 0.01;
	x0(31) = 0.01;
	x0(32) = 0.01;
	x0(33) = 0.01;
	x0(34) = 0.01;
	x0(35) = 0.01;
	x0(36) = 0.1;
	x0(37) = 0.1;
	x0(38) = 0.01;
	x0(39) = 0.01;
	x0(40) = 0.01;
	x0(41) = 0.01;
	x0(42) = 0.01;
	x0(43) = 0.01;
	x0(44) = 0.01;
	x0(45) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  GF, name = GF
	global_par_GF=1.0;
% Parameter:   id =  Kagf, name = Kagf
	global_par_Kagf=0.1;
% Parameter:   id =  kdap1, name = kdap1
	global_par_kdap1=0.15;
% Parameter:   id =  eps, name = eps
	global_par_eps=17.0;
% Parameter:   id =  vsap1, name = vsap1
	global_par_vsap1=1.0;
% Parameter:   id =  kde2f, name = kde2f
	global_par_kde2f=0.002;
% Parameter:   id =  kde2fp, name = kde2fp
	global_par_kde2fp=1.1;
% Parameter:   id =  kdprb, name = kdprb
	global_par_kdprb=0.01;
% Parameter:   id =  kdprbp, name = kdprbp
	global_par_kdprbp=0.06;
% Parameter:   id =  kdprbpp, name = kdprbpp
	global_par_kdprbpp=0.04;
% Parameter:   id =  kpc1, name = kpc1
	global_par_kpc1=0.05;
% Parameter:   id =  kpc2, name = kpc2
	global_par_kpc2=0.5;
% Parameter:   id =  kpc3, name = kpc3
	global_par_kpc3=0.025;
% Parameter:   id =  kpc4, name = kpc4
	global_par_kpc4=0.5;
% Parameter:   id =  K1, name = K1
	global_par_K1=0.1;
% Parameter:   id =  K2, name = K2
	global_par_K2=0.1;
% Parameter:   id =  K3, name = K3
	global_par_K3=0.1;
% Parameter:   id =  K4, name = K4
	global_par_K4=0.1;
% Parameter:   id =  V1, name = V1
	global_par_V1=2.2;
% Parameter:   id =  V2, name = V2
	global_par_V2=2.0;
% Parameter:   id =  V3, name = V3
	global_par_V3=1.0;
% Parameter:   id =  V4, name = V4
	global_par_V4=2.0;
% Parameter:   id =  K1e2f, name = K1e2f
	global_par_K1e2f=5.0;
% Parameter:   id =  K2e2f, name = K2e2f
	global_par_K2e2f=5.0;
% Parameter:   id =  V1e2f, name = V1e2f
	global_par_V1e2f=4.0;
% Parameter:   id =  V2e2f, name = V2e2f
	global_par_V2e2f=0.75;
% Parameter:   id =  vse2f, name = vse2f
	global_par_vse2f=0.15;
% Parameter:   id =  vsprb, name = vsprb
	global_par_vsprb=0.8;
% Parameter:   id =  Cdk4_tot, name = Cdk4_tot
	global_par_Cdk4_tot=1.5;
% Parameter:   id =  Ki7, name = Ki7
	global_par_Ki7=0.1;
% Parameter:   id =  Ki8, name = Ki8
	global_par_Ki8=2.0;
% Parameter:   id =  kcd1, name = kcd1
	global_par_kcd1=0.4;
% Parameter:   id =  kcd2, name = kcd2
	global_par_kcd2=0.005;
% Parameter:   id =  kdecom1, name = kdecom1
	global_par_kdecom1=0.1;
% Parameter:   id =  kcom1, name = kcom1
	global_par_kcom1=0.175;
% Parameter:   id =  kc1, name = kc1
	global_par_kc1=0.15;
% Parameter:   id =  kc2, name = kc2
	global_par_kc2=0.05;
% Parameter:   id =  kddd, name = kddd
	global_par_kddd=0.005;
% Parameter:   id =  Kdd, name = Kdd
	global_par_Kdd=0.1;
% Parameter:   id =  K1d, name = K1d
	global_par_K1d=0.1;
% Parameter:   id =  K2d, name = K2d
	global_par_K2d=0.1;
% Parameter:   id =  Vdd, name = Vdd
	global_par_Vdd=5.0;
% Parameter:   id =  Vm1d, name = Vm1d
	global_par_Vm1d=1.0;
% Parameter:   id =  Vm2d, name = Vm2d
	global_par_Vm2d=0.2;
% Parameter:   id =  ae, name = ae
	global_par_ae=0.25;
% Parameter:   id =  Cdk2_tot, name = Cdk2_tot
	global_par_Cdk2_tot=2.0;
% Parameter:   id =  ib1, name = ib1
	global_par_ib1=0.5;
% Parameter:   id =  Ki9, name = Ki9
	global_par_Ki9=0.1;
% Parameter:   id =  Ki10, name = Ki10
	global_par_Ki10=2.0;
% Parameter:   id =  kce, name = kce
	global_par_kce=0.25;
% Parameter:   id =  kc3, name = kc3
	global_par_kc3=0.2;
% Parameter:   id =  kc4, name = kc4
	global_par_kc4=0.1;
% Parameter:   id =  kdecom2, name = kdecom2
	global_par_kdecom2=0.1;
% Parameter:   id =  kcom2, name = kcom2
	global_par_kcom2=0.2;
% Parameter:   id =  kdde, name = kdde
	global_par_kdde=0.005;
% Parameter:   id =  kddskp2, name = kddskp2
	global_par_kddskp2=0.005;
% Parameter:   id =  kdpe, name = kdpe
	global_par_kdpe=0.075;
% Parameter:   id =  kdpei, name = kdpei
	global_par_kdpei=0.15;
% Parameter:   id =  Kde, name = Kde
	global_par_Kde=0.1;
% Parameter:   id =  Kdceskp2, name = Kdceskp2
	global_par_Kdceskp2=2.0;
% Parameter:   id =  Kdskp2, name = Kdskp2
	global_par_Kdskp2=0.5;
% Parameter:   id =  Kcdh1, name = Kcdh1
	global_par_Kcdh1=0.4;
% Parameter:   id =  K1e, name = K1e
	global_par_K1e=0.1;
% Parameter:   id =  K2e, name = K2e
	global_par_K2e=0.1;
% Parameter:   id =  K5e, name = K5e
	global_par_K5e=0.1;
% Parameter:   id =  K6e, name = K6e
	global_par_K6e=0.1;
% Parameter:   id =  Vde, name = Vde
	global_par_Vde=3.0;
% Parameter:   id =  Vdskp2, name = Vdskp2
	global_par_Vdskp2=1.1;
% Parameter:   id =  Vm1e, name = Vm1e
	global_par_Vm1e=2.0;
% Parameter:   id =  Vm2e, name = Vm2e
	global_par_Vm2e=1.4;
% Parameter:   id =  Vm5e, name = Vm5e
	global_par_Vm5e=5.0;
% Parameter:   id =  V6e, name = V6e
	global_par_V6e=0.8;
% Parameter:   id =  vspei, name = vspei
	global_par_vspei=0.13;
% Parameter:   id =  vsskp2, name = vsskp2
	global_par_vsskp2=0.15;
% Parameter:   id =  xe1, name = xe1
	global_par_xe1=1.0;
% Parameter:   id =  xe2, name = xe2
	global_par_xe2=1.0;
% Parameter:   id =  aa, name = aa
	global_par_aa=0.2;
% Parameter:   id =  ib2, name = ib2
	global_par_ib2=0.5;
% Parameter:   id =  Ki11, name = Ki11
	global_par_Ki11=0.1;
% Parameter:   id =  Ki12, name = Ki12
	global_par_Ki12=2.0;
% Parameter:   id =  Ki13, name = Ki13
	global_par_Ki13=0.1;
% Parameter:   id =  Ki14, name = Ki14
	global_par_Ki14=2.0;
% Parameter:   id =  kca, name = kca
	global_par_kca=0.0375;
% Parameter:   id =  kdecom3, name = kdecom3
	global_par_kdecom3=0.1;
% Parameter:   id =  kcom3, name = kcom3
	global_par_kcom3=0.2;
% Parameter:   id =  kc5, name = kc5
	global_par_kc5=0.15;
% Parameter:   id =  kc6, name = kc6
	global_par_kc6=0.125;
% Parameter:   id =  kdda, name = kdda
	global_par_kdda=0.005;
% Parameter:   id =  kddp27, name = kddp27
	global_par_kddp27=0.06;
% Parameter:   id =  kddp27p, name = kddp27p
	global_par_kddp27p=0.01;
% Parameter:   id =  kdcdh1a, name = kdcdh1a
	global_par_kdcdh1a=0.1;
% Parameter:   id =  kdcdh1i, name = kdcdh1i
	global_par_kdcdh1i=0.2;
% Parameter:   id =  kdpa, name = kdpa
	global_par_kdpa=0.075;
% Parameter:   id =  kdpai, name = kdpai
	global_par_kdpai=0.15;
% Parameter:   id =  Kda, name = Kda
	global_par_Kda=1.1;
% Parameter:   id =  Kdp27p, name = Kdp27p
	global_par_Kdp27p=0.1;
% Parameter:   id =  Kdp27skp2, name = Kdp27skp2
	global_par_Kdp27skp2=0.1;
% Parameter:   id =  Kacdc20, name = Kacdc20
	global_par_Kacdc20=2.0;
% Parameter:   id =  K1a, name = K1a
	global_par_K1a=0.1;
% Parameter:   id =  K2a, name = K2a
	global_par_K2a=0.1;
% Parameter:   id =  K1cdh1, name = K1cdh1
	global_par_K1cdh1=0.01;
% Parameter:   id =  K2cdh1, name = K2cdh1
	global_par_K2cdh1=0.01;
% Parameter:   id =  K5a, name = K5a
	global_par_K5a=0.1;
% Parameter:   id =  K6a, name = K6a
	global_par_K6a=0.1;
% Parameter:   id =  K1p27, name = K1p27
	global_par_K1p27=0.5;
% Parameter:   id =  K2p27, name = K2p27
	global_par_K2p27=0.5;
% Parameter:   id =  Vdp27p, name = Vdp27p
	global_par_Vdp27p=5.0;
% Parameter:   id =  Vda, name = Vda
	global_par_Vda=2.5;
% Parameter:   id =  Vm1a, name = Vm1a
	global_par_Vm1a=2.0;
% Parameter:   id =  Vm2a, name = Vm2a
	global_par_Vm2a=1.85;
% Parameter:   id =  Vm5a, name = Vm5a
	global_par_Vm5a=4.0;
% Parameter:   id =  V6a, name = V6a
	global_par_V6a=1.0;
% Parameter:   id =  vscdh1a, name = vscdh1a
	global_par_vscdh1a=0.11;
% Parameter:   id =  vspai, name = vspai
	global_par_vspai=0.105;
% Parameter:   id =  vs1p27, name = vs1p27
	global_par_vs1p27=0.8;
% Parameter:   id =  vs2p27, name = vs2p27
	global_par_vs2p27=0.1;
% Parameter:   id =  V1cdh1, name = V1cdh1
	global_par_V1cdh1=1.25;
% Parameter:   id =  V2cdh1, name = V2cdh1
	global_par_V2cdh1=8.0;
% Parameter:   id =  V1p27, name = V1p27
	global_par_V1p27=100.0;
% Parameter:   id =  V2p27, name = V2p27
	global_par_V2p27=0.1;
% Parameter:   id =  xa1, name = xa1
	global_par_xa1=1.0;
% Parameter:   id =  xa2, name = xa2
	global_par_xa2=1.0;
% Parameter:   id =  ab, name = ab
	global_par_ab=0.11;
% Parameter:   id =  Cdk1_tot, name = Cdk1_tot
	global_par_Cdk1_tot=0.5;
% Parameter:   id =  ib, name = ib
	global_par_ib=0.75;
% Parameter:   id =  ib3, name = ib3
	global_par_ib3=0.5;
% Parameter:   id =  kc7, name = kc7
	global_par_kc7=0.12;
% Parameter:   id =  kc8, name = kc8
	global_par_kc8=0.2;
% Parameter:   id =  kdecom4, name = kdecom4
	global_par_kdecom4=0.1;
% Parameter:   id =  kcom4, name = kcom4
	global_par_kcom4=0.25;
% Parameter:   id =  kdcdc20a, name = kdcdc20a
	global_par_kdcdc20a=0.05;
% Parameter:   id =  kdcdc20i, name = kdcdc20i
	global_par_kdcdc20i=0.14;
% Parameter:   id =  kddb, name = kddb
	global_par_kddb=0.005;
% Parameter:   id =  kdpb, name = kdpb
	global_par_kdpb=0.1;
% Parameter:   id =  kdpbi, name = kdpbi
	global_par_kdpbi=0.2;
% Parameter:   id =  kdwee1, name = kdwee1
	global_par_kdwee1=0.1;
% Parameter:   id =  kdwee1p, name = kdwee1p
	global_par_kdwee1p=0.2;
% Parameter:   id =  Kdb, name = Kdb
	global_par_Kdb=0.005;
% Parameter:   id =  Kdbcdc20, name = Kdbcdc20
	global_par_Kdbcdc20=0.2;
% Parameter:   id =  Kdbcdh1, name = Kdbcdh1
	global_par_Kdbcdh1=0.1;
% Parameter:   id =  ksW, name = ksW
	global_par_ksW=5.0;
% Parameter:   id =  K1b, name = K1b
	global_par_K1b=0.1;
% Parameter:   id =  K2b, name = K2b
	global_par_K2b=0.1;
% Parameter:   id =  K3b, name = K3b
	global_par_K3b=0.1;
% Parameter:   id =  K4b, name = K4b
	global_par_K4b=0.1;
% Parameter:   id =  K5b, name = K5b
	global_par_K5b=0.1;
% Parameter:   id =  K6b, name = K6b
	global_par_K6b=0.1;
% Parameter:   id =  K7b, name = K7b
	global_par_K7b=0.1;
% Parameter:   id =  K8b, name = K8b
	global_par_K8b=0.1;
% Parameter:   id =  vcb, name = vcb
	global_par_vcb=0.05;
% Parameter:   id =  Vdb, name = Vdb
	global_par_Vdb=0.06;
% Parameter:   id =  Vm1b, name = Vm1b
	global_par_Vm1b=3.9;
% Parameter:   id =  Vm2b, name = Vm2b
	global_par_Vm2b=2.1;
% Parameter:   id =  vscdc20i, name = vscdc20i
	global_par_vscdc20i=0.1;
% Parameter:   id =  Vm3b, name = Vm3b
	global_par_Vm3b=8.0;
% Parameter:   id =  Vm4b, name = Vm4b
	global_par_Vm4b=0.7;
% Parameter:   id =  Vm5b, name = Vm5b
	global_par_Vm5b=5.0;
% Parameter:   id =  V6b, name = V6b
	global_par_V6b=1.0;
% Parameter:   id =  Vm7b, name = Vm7b
	global_par_Vm7b=1.2;
% Parameter:   id =  Vm8b, name = Vm8b
	global_par_Vm8b=1.0;
% Parameter:   id =  vspbi, name = vspbi
	global_par_vspbi=0.12;
% Parameter:   id =  vswee1, name = vswee1
	global_par_vswee1=0.06;
% Parameter:   id =  xb1, name = xb1
	global_par_xb1=1.0;
% Parameter:   id =  xb2, name = xb2
	global_par_xb2=1.0;
% Parameter:   id =  ATR_tot, name = ATR_tot
	global_par_ATR_tot=0.5;
% Parameter:   id =  Chk1_tot, name = Chk1_tot
	global_par_Chk1_tot=0.5;
% Parameter:   id =  Cdc45_tot, name = Cdc45_tot
	global_par_Cdc45_tot=0.5;
% Parameter:   id =  kaatr, name = kaatr
	global_par_kaatr=0.022;
% Parameter:   id =  kdatr, name = kdatr
	global_par_kdatr=0.15;
% Parameter:   id =  kdpol, name = kdpol
	global_par_kdpol=0.2;
% Parameter:   id =  kdprim, name = kdprim
	global_par_kdprim=0.15;
% Parameter:   id =  kspol, name = kspol
	global_par_kspol=0.8;
% Parameter:   id =  ksprim, name = ksprim
	global_par_ksprim=0.05;
% Parameter:   id =  K1cdc45, name = K1cdc45
	global_par_K1cdc45=0.02;
% Parameter:   id =  K2cdc45, name = K2cdc45
	global_par_K2cdc45=0.02;
% Parameter:   id =  K1chk, name = K1chk
	global_par_K1chk=0.5;
% Parameter:   id =  K2chk, name = K2chk
	global_par_K2chk=0.5;
% Parameter:   id =  Pol_tot, name = Pol_tot
	global_par_Pol_tot=0.5;
% Parameter:   id =  V1cdc45, name = V1cdc45
	global_par_V1cdc45=0.8;
% Parameter:   id =  V2cdc45, name = V2cdc45
	global_par_V2cdc45=0.12;
% Parameter:   id =  V1chk, name = V1chk
	global_par_V1chk=4.0;
% Parameter:   id =  V2chk, name = V2chk
	global_par_V2chk=0.1;
% Parameter:   id =  Kdw, name = Kdw
	global_par_Kdw=0.5;
% Parameter:   id =  Kiw, name = Kiw
	global_par_Kiw=0.001;
% Parameter:   id =  n, name = n
	global_par_n=4.0;
% Parameter:   id =  vdw, name = vdw
	global_par_vdw=0.5;
% Parameter:   id =  vsw, name = vsw
	global_par_vsw=0.0;

% Reaction: id = AP1_simulation_by_growth_factor, name = AP1 simulation by growth factor
	reaction_AP1_simulation_by_growth_factor=compartment_cell*scaled_Michaelis_Menten_1_1(global_par_GF, global_par_Kagf, global_par_eps, global_par_vsap1);

% Reaction: id = AP1_decay, name = AP1 decay
	reaction_AP1_decay=compartment_cell*function_for_1k_1M_1(x(44), global_par_eps, global_par_kdap1);

% Reaction: id = pRB_synthesis, name = pRB synthesis
	reaction_pRB_synthesis=compartment_cell*function_for_1k_1(global_par_eps, global_par_vsprb);

% Reaction: id = pRB_and_E2F_complex_formation, name = pRB and E2F complex formation
	reaction_pRB_and_E2F_complex_formation=compartment_cell*function_for_1k_2M_1(x(4), global_par_eps, global_par_kpc1, x(1));

% Reaction: id = pRB_and_E2f_complex_dissociation, name = pRB and E2f complex dissociation
	reaction_pRB_and_E2f_complex_dissociation=compartment_cell*function_for_1k_1M_2(global_par_eps, global_par_kpc2, x(6));

% Reaction: id = pRB_phosphorylation_through_cyclin_D, name = pRB phosphorylation through cyclin D
	reaction_pRB_phosphorylation_through_cyclin_D=compartment_cell*modified_Michaelis_Menten_2_1(global_par_K1, x(10), x(11), global_par_V1, global_par_eps, x(1));

% Reaction: id = pRBp_dephosphorylation, name = pRBp dephosphorylation
	reaction_pRBp_dephosphorylation=compartment_cell*scaled_Michaelis_Menten_2_1(global_par_K2, global_par_V2, global_par_eps, x(2));

% Reaction: id = pRB_decay, name = pRB decay
	reaction_pRB_decay=compartment_cell*function_for_1k_1M_3(global_par_eps, global_par_kdprb, x(2));

% Reaction: id = pRBp_phosphorylation, name = pRBp phosphorylation
	reaction_pRBp_phosphorylation=compartment_cell*modified_Michaelis_Menten_1_1(global_par_K3, x(14), global_par_V3, global_par_eps, x(2));

% Reaction: id = pRBpp_dephosphorylation, name = pRBpp dephosphorylation
	reaction_pRBpp_dephosphorylation=compartment_cell*scaled_Michaelis_Menten_2_2(global_par_K4, global_par_V4, global_par_eps, x(3));

% Reaction: id = pRBp_and_E2F_complex_formation, name = pRBp and E2F complex formation
	reaction_pRBp_and_E2F_complex_formation=compartment_cell*function_for_1k_2M_2(x(4), global_par_eps, global_par_kpc3, x(2));

% Reaction: id = PRBp_and_E2F_complex_dissociation, name = PRBp and E2F complex dissociation
	reaction_PRBp_and_E2F_complex_dissociation=compartment_cell*function_for_1k_1M_4(global_par_eps, global_par_kpc4, x(7));

% Reaction: id = pRBp_decay, name = pRBp decay
	reaction_pRBp_decay=compartment_cell*function_for_1k_1M_5(global_par_eps, global_par_kdprbp, x(2));

% Reaction: id = pRBpp_decay, name = pRBpp decay
	reaction_pRBpp_decay=compartment_cell*function_for_1k_1M_6(global_par_eps, global_par_kdprbpp, x(3));

% Reaction: id = E2F_synthesis, name = E2F synthesis
	reaction_E2F_synthesis=compartment_cell*function_for_1k_2(global_par_eps, global_par_vse2f);

% Reaction: id = E2F_phosphorylation, name = E2F phosphorylation
	reaction_E2F_phosphorylation=compartment_cell*modified_Michaelis_Menten_1_2(x(4), global_par_K1e2f, x(21), global_par_V1e2f, global_par_eps);

% Reaction: id = E2Fp_dephosphorylation, name = E2Fp dephosphorylation
	reaction_E2Fp_dephosphorylation=compartment_cell*scaled_Michaelis_Menten_2_3(x(5), global_par_K2e2f, global_par_V2e2f, global_par_eps);

% Reaction: id = E2F_decay, name = E2F decay
	reaction_E2F_decay=compartment_cell*function_for_1k_1M_7(x(4), global_par_eps, global_par_kde2f);

% Reaction: id = E2Fp_decay, name = E2Fp decay
	reaction_E2Fp_decay=compartment_cell*function_for_1k_1M_8(x(5), global_par_eps, global_par_kde2fp);

% Reaction: id = Cd_synthesis, name = Cd synthesis
	reaction_Cd_synthesis=compartment_cell*function_for_1k_1M_9(x(44), global_par_eps, global_par_kcd1);

% Reaction: id = Cd_synthesis_through_E2F, name = Cd synthesis through E2F
	reaction_Cd_synthesis_through_E2F=compartment_cell*double_michaelis_menten_like_1(x(4), global_par_Ki7, global_par_Ki8, global_par_eps, global_par_kcd2, x(1), x(2));

% Reaction: id = Cd_cdk4_6_complex_formation, name = Cd cdk4/6 complex formation
	reaction_Cd_cdk4_6_complex_formation=compartment_cell*function_for_Cd_to_Mdi_1(x(8), global_par_Cdk4_tot, x(10), x(9), x(11), global_par_eps, global_par_kcom1);

% Reaction: id = Cd_cdk4_6_complex_dissociation, name = Cd cdk4/6 complex dissociation
	reaction_Cd_cdk4_6_complex_dissociation=compartment_cell*function_for_1k_1M_10(x(9), global_par_eps, global_par_kdecom1);

% Reaction: id = Cd_degradation, name = Cd degradation
	reaction_Cd_degradation=compartment_cell*scaled_Michaelis_Menten_2_4(x(8), global_par_Kdd, global_par_Vdd, global_par_eps);

% Reaction: id = Cd_decay, name = Cd decay
	reaction_Cd_decay=compartment_cell*function_for_1k_1M_11(x(8), global_par_eps, global_par_kddd);

% Reaction: id = Md_complex_inactivation, name = Md complex inactivation
	reaction_Md_complex_inactivation=compartment_cell*scaled_Michaelis_Menten_2_5(global_par_K2d, x(10), global_par_Vm2d, global_par_eps);

% Reaction: id = Md_complex_activation, name = Md complex activation
	reaction_Md_complex_activation=compartment_cell*scaled_Michaelis_Menten_2_6(global_par_K1d, x(9), global_par_Vm1d, global_par_eps);

% Reaction: id = Md_p27_complex_formation, name = Md p27 complex formation
	reaction_Md_p27_complex_formation=compartment_cell*function_for_1k_2M_3(x(10), global_par_eps, global_par_kc1, x(23));

% Reaction: id = Md_p27_complex_dissociation, name = Md p27 complex dissociation
	reaction_Md_p27_complex_dissociation=compartment_cell*function_for_1k_1M_12(x(11), global_par_eps, global_par_kc2);

% Reaction: id = Ce_synthesis, name = Ce synthesis
	reaction_Ce_synthesis=compartment_cell*double_michaelis_menten_like_2_0(x(4), global_par_Ki10, global_par_Ki9, global_par_eps, global_par_kce, x(1), x(2));

% Reaction: id = Ce_cdk2_complex_formation, name = Ce cdk2 complex formation
	reaction_Ce_cdk2_complex_formation=compartment_cell*function_for_M__to_M_i_1(global_par_Cdk2_tot, x(12), x(21), x(20), x(22), x(14), x(13), x(16), global_par_eps, global_par_kcom2);

% Reaction: id = Ce_cdk2_complex_dissociation, name = Ce cdk2 complex dissociation
	reaction_Ce_cdk2_complex_dissociation=compartment_cell*function_for_1k_1M_13(x(13), global_par_eps, global_par_kdecom2);

% Reaction: id = Ce_degradation_through_Skp2, name = Ce degradation through Skp2
	reaction_Ce_degradation_through_Skp2=compartment_cell*double_michaelis_menten_like_2_1(x(12), global_par_Kdceskp2, global_par_Kde, x(15), global_par_Vde, global_par_eps);

% Reaction: id = Ce_decay, name = Ce decay
	reaction_Ce_decay=compartment_cell*function_for_1k_1M_14(x(12), global_par_eps, global_par_kdde);

% Reaction: id = Me_complex_deactivation, name = Me complex deactivation
	reaction_Me_complex_deactivation=compartment_cell*function_for_M_i_to_M__1(global_par_K2e, x(14), global_par_Vm2e, x(37), global_par_eps, global_par_ib1);

% Reaction: id = Me_complex_activation, name = Me complex activation
	reaction_Me_complex_activation=compartment_cell*modified_Michaelis_Menten_1_3(global_par_K1e, x(13), x(18), global_par_Vm1e, global_par_eps);

% Reaction: id = Me_p27_complex_formation, name = Me p27 complex formation
	reaction_Me_p27_complex_formation=compartment_cell*function_for_1k_2M_4(x(14), global_par_eps, global_par_kc3, x(23));

% Reaction: id = Me_p27_complex_dissociation, name = Me p27 complex dissociation
	reaction_Me_p27_complex_dissociation=compartment_cell*function_for_1k_1M_15(x(16), global_par_eps, global_par_kc4);

% Reaction: id = Skp2_synthesis, name = Skp2 synthesis
	reaction_Skp2_synthesis=compartment_cell*function_for_1k_3(global_par_eps, global_par_vsskp2);

% Reaction: id = Skp2_degradation_through_Cdh1, name = Skp2 degradation through Cdh1
	reaction_Skp2_degradation_through_Cdh1=compartment_cell*double_michaelis_menten_like_2_2(x(26), global_par_Kcdh1, global_par_Kdskp2, x(15), global_par_Vdskp2, global_par_eps);

% Reaction: id = Skp2_decay, name = Skp2 decay
	reaction_Skp2_decay=compartment_cell*function_for_1k_1M_16(x(15), global_par_eps, global_par_kddskp2);

% Reaction: id = inactive_dephosphorylated_cdc25_synthesis, name = inactive dephosphorylated cdc25 synthesis
	reaction_inactive_dephosphorylated_cdc25_synthesis=compartment_cell*function_for_1k_4(global_par_eps, global_par_vspei);

% Reaction: id = Cdc25_deactivation_through_dephosphorylation, name = Cdc25 deactivation through dephosphorylation
	reaction_Cdc25_deactivation_through_dephosphorylation=compartment_cell*function_for_Pe_to_Pei_1(x(42), global_par_K6e, x(18), global_par_V6e, global_par_eps, global_par_xe1, global_par_xe2);

% Reaction: id = Cdc25_activation_through_phosphorylation, name = Cdc25 activation through phosphorylation
	reaction_Cdc25_activation_through_phosphorylation=compartment_cell*function_for_M_i_to_M__2(global_par_K5e, x(14), x(17), global_par_Vm5e, global_par_ae, global_par_eps);

% Reaction: id = inactive_Cdc25_decay, name = inactive Cdc25 decay
	reaction_inactive_Cdc25_decay=compartment_cell*function_for_1k_1M_17(x(17), global_par_eps, global_par_kdpei);

% Reaction: id = active_Cdc2__decay, name = active Cdc2  decay
	reaction_active_Cdc2__decay=compartment_cell*function_for_1k_1M_18(x(18), global_par_eps, global_par_kdpe);

% Reaction: id = Ca_synthesis_through_E2F, name = Ca synthesis through E2F
	reaction_Ca_synthesis_through_E2F=compartment_cell*double_michaelis_menten_like_3(x(4), global_par_Ki11, global_par_Ki12, global_par_eps, global_par_kca, x(1), x(2));

% Reaction: id = Ca_cdk2_complex_formation, name = Ca cdk2 complex formation
	reaction_Ca_cdk2_complex_formation=compartment_cell*function_for_M__to_M_i_2(x(19), global_par_Cdk2_tot, x(21), x(20), x(22), x(14), x(13), x(16), global_par_eps, global_par_kcom3);

% Reaction: id = Ca_cdk2_complex_dissociation, name = Ca cdk2 complex dissociation
	reaction_Ca_cdk2_complex_dissociation=compartment_cell*function_for_1k_1M_19(x(20), global_par_eps, global_par_kdecom3);

% Reaction: id = Ca_degradation, name = Ca degradation
	reaction_Ca_degradation=compartment_cell*double_michaelis_menten_like_2_3(x(19), x(34), global_par_Kacdc20, global_par_Kda, global_par_Vda, global_par_eps);

% Reaction: id = Ca_decay, name = Ca decay
	reaction_Ca_decay=compartment_cell*function_for_1k_1M_20(x(19), global_par_eps, global_par_kdda);

% Reaction: id = Ma_inactivation, name = Ma inactivation
	reaction_Ma_inactivation=compartment_cell*function_for_M_i_to_M__3(global_par_K2a, x(21), global_par_Vm2a, x(37), global_par_eps, global_par_ib2);

% Reaction: id = Ma_activation, name = Ma activation
	reaction_Ma_activation=compartment_cell*modified_Michaelis_Menten_1_4(global_par_K1a, x(20), x(28), global_par_Vm1a, global_par_eps);

% Reaction: id = Ma_p27_complex_formation, name = Ma p27 complex formation
	reaction_Ma_p27_complex_formation=compartment_cell*function_for_1k_2M_5(x(21), global_par_eps, global_par_kc5, x(23));

% Reaction: id = Ma_p27_complex_dissociation, name = Ma p27 complex dissociation
	reaction_Ma_p27_complex_dissociation=compartment_cell*function_for_1k_1M_21(x(22), global_par_eps, global_par_kc6);

% Reaction: id = p27_synthesis, name = p27 synthesis
	reaction_p27_synthesis=compartment_cell*function_for_1k_5(global_par_eps, global_par_vs1p27);

% Reaction: id = p27_synthesis_through_E2F, name = p27 synthesis through E2F
	reaction_p27_synthesis_through_E2F=compartment_cell*double_michaelis_menten_like_4(x(4), global_par_Ki13, global_par_Ki14, global_par_eps, x(1), x(2), global_par_vs2p27);

% Reaction: id = Mb_p27_complex_formation, name = Mb p27 complex formation
	reaction_Mb_p27_complex_formation=compartment_cell*function_for_1k_2M_6(x(31), global_par_eps, global_par_kc7, x(23));

% Reaction: id = Mb_p26_complex_dissociation, name = Mb p26 complex dissociation
	reaction_Mb_p26_complex_dissociation=compartment_cell*function_for_1k_1M_22(x(32), global_par_eps, global_par_kc8);

% Reaction: id = p27_phosphorylation, name = p27 phosphorylation
	reaction_p27_phosphorylation=compartment_cell*modified_Michaelis_Menten_1_5(global_par_K1p27, x(14), global_par_V1p27, global_par_eps, x(23));

% Reaction: id = p27_dephosphorylation, name = p27 dephosphorylation
	reaction_p27_dephosphorylation=compartment_cell*scaled_Michaelis_Menten_2_7(global_par_K2p27, global_par_V2p27, global_par_eps, x(24));

% Reaction: id = p27_decay, name = p27 decay
	reaction_p27_decay=compartment_cell*function_for_1k_1M_23(global_par_eps, global_par_kddp27, x(23));

% Reaction: id = p27_degradation, name = p27 degradation
	reaction_p27_degradation=compartment_cell*double_michaelis_menten_like_2_4(global_par_Kdp27p, global_par_Kdp27skp2, x(15), global_par_Vdp27p, global_par_eps, x(24));

% Reaction: id = p27p_decay, name = p27p decay
	reaction_p27p_decay=compartment_cell*function_for_1k_1M_24(global_par_eps, global_par_kddp27p, x(24));

% Reaction: id = cdh1_inactivation, name = cdh1 inactivation
	reaction_cdh1_inactivation=compartment_cell*modified_Michaelis_Menten_2_2(x(26), global_par_K2cdh1, x(21), x(31), global_par_V2cdh1, global_par_eps);

% Reaction: id = cdh1_activation, name = cdh1 activation
	reaction_cdh1_activation=compartment_cell*scaled_Michaelis_Menten_2_8(x(25), global_par_K1cdh1, global_par_V1cdh1, global_par_eps);

% Reaction: id = inactive_cdh1_decay, name = inactive cdh1 decay
	reaction_inactive_cdh1_decay=compartment_cell*function_for_1k_1M_25(x(25), global_par_eps, global_par_kdcdh1i);

% Reaction: id = active_cdh1_decay, name = active cdh1 decay
	reaction_active_cdh1_decay=compartment_cell*function_for_1k_1M_26(x(26), global_par_eps, global_par_kdcdh1a);

% Reaction: id = active_cdh1_synthesis, name = active cdh1 synthesis
	reaction_active_cdh1_synthesis=compartment_cell*function_for_1k_6(global_par_eps, global_par_vscdh1a);

% Reaction: id = cdc25_inactivation, name = cdc25 inactivation
	reaction_cdc25_inactivation=compartment_cell*function_for_Pe_to_Pei_2(x(42), global_par_K6a, x(28), global_par_V6a, global_par_eps, global_par_xa1, global_par_xa2);

% Reaction: id = cdc25_activation, name = cdc25 activation
	reaction_cdc25_activation=compartment_cell*function_for_M_i_to_M__4(global_par_K5a, x(21), x(27), global_par_Vm5a, global_par_aa, global_par_eps);

% Reaction: id = inactive_cdc25_decay, name = inactive cdc25 decay
	reaction_inactive_cdc25_decay=compartment_cell*function_for_1k_1M_27(x(27), global_par_eps, global_par_kdpai);

% Reaction: id = inactive_cdc25_syntehsis, name = inactive cdc25 syntehsis
	reaction_inactive_cdc25_syntehsis=compartment_cell*function_for_1k_7(global_par_eps, global_par_vspai);

% Reaction: id = active_cdc25_decay, name = active cdc25 decay
	reaction_active_cdc25_decay=compartment_cell*function_for_1k_1M_28(x(28), global_par_eps, global_par_kdpa);

% Reaction: id = Cb_synthesis, name = Cb synthesis
	reaction_Cb_synthesis=compartment_cell*function_for_1k_8(global_par_eps, global_par_vcb);

% Reaction: id = Cb_degradation, name = Cb degradation
	reaction_Cb_degradation=compartment_cell*function_for_Cd_to_Mdi_2(x(29), global_par_Cdk1_tot, x(31), x(30), x(32), global_par_eps, global_par_kcom4);

% Reaction: id = Mbi_complex_dissociation, name = Mbi complex dissociation
	reaction_Mbi_complex_dissociation=compartment_cell*function_for_1k_1M_29(x(30), global_par_eps, global_par_kdecom4);

% Reaction: id = Cb_degradation_through_Cdc20, name = Cb degradation through Cdc20
	reaction_Cb_degradation_through_Cdc20=compartment_cell*double_michaelis_menten_like_2_5(x(29), x(34), global_par_Kdb, global_par_Kdbcdc20, global_par_Vdb, global_par_eps);

% Reaction: id = Cb_decay, name = Cb decay
	reaction_Cb_decay=compartment_cell*function_for_1k_1M_30(x(29), global_par_eps, global_par_kddb);

% Reaction: id = Cb_degradation_through_cdh1, name = Cb degradation through cdh1
	reaction_Cb_degradation_through_cdh1=compartment_cell*double_michaelis_menten_like_2_6(x(29), x(26), global_par_Kdb, global_par_Kdbcdh1, global_par_Vdb, global_par_eps);

% Reaction: id = Mb_inactivation, name = Mb inactivation
	reaction_Mb_inactivation=compartment_cell*function_for_M_i_to_M__5(global_par_K2b, x(31), global_par_Vm2b, x(37), global_par_eps, global_par_ib3);

% Reaction: id = Mv_activation, name = Mv activation
	reaction_Mv_activation=compartment_cell*modified_Michaelis_Menten_1_6(global_par_K1b, x(30), x(36), global_par_Vm1b, global_par_eps);

% Reaction: id = inactive_cdc20_synthesis, name = inactive cdc20 synthesis
	reaction_inactive_cdc20_synthesis=compartment_cell*function_for_1k_9(global_par_eps, global_par_vscdc20i);

% Reaction: id = cdc20_activation, name = cdc20 activation
	reaction_cdc20_activation=compartment_cell*modified_Michaelis_Menten_1_7(x(33), global_par_K3b, x(31), global_par_Vm3b, global_par_eps);

% Reaction: id = Cdc20_deactivation, name = Cdc20 deactivation
	reaction_Cdc20_deactivation=compartment_cell*scaled_Michaelis_Menten_2_9(x(34), global_par_K4b, global_par_Vm4b, global_par_eps);

% Reaction: id = inactive_cdc20_decay, name = inactive cdc20 decay
	reaction_inactive_cdc20_decay=compartment_cell*function_for_1k_1M_31(x(33), global_par_eps, global_par_kdcdc20i);

% Reaction: id = actice_cdc20_decay, name = actice cdc20 decay
	reaction_actice_cdc20_decay=compartment_cell*function_for_1k_1M_32(x(34), global_par_eps, global_par_kdcdc20a);

% Reaction: id = inactive_cdc25_synthesis, name = inactive cdc25 synthesis
	reaction_inactive_cdc25_synthesis=compartment_cell*function_for_1k_10(global_par_eps, global_par_vspbi);

% Reaction: id = cdc25_deactivation_2, name = cdc25 deactivation 2
	reaction_cdc25_deactivation_2=compartment_cell*function_for_Pe_to_Pei_3(x(42), global_par_K6b, x(36), global_par_V6b, global_par_eps, global_par_xb1, global_par_xb2);

% Reaction: id = cdc25_activation_2, name = cdc25 activation 2
	reaction_cdc25_activation_2=compartment_cell*function_for_M_i_to_M__6(global_par_K5b, x(31), x(35), global_par_Vm5b, global_par_ab, global_par_eps);

% Reaction: id = inactive_cdc25_decay_2, name = inactive cdc25 decay 2
	reaction_inactive_cdc25_decay_2=compartment_cell*function_for_1k_1M_33(x(35), global_par_eps, global_par_kdpbi);

% Reaction: id = active_cdc25_decay_2, name = active cdc25 decay 2
	reaction_active_cdc25_decay_2=compartment_cell*function_for_1k_1M_34(x(36), global_par_eps, global_par_kdpb);

% Reaction: id = Wee1_synthesis, name = Wee1 synthesis
	reaction_Wee1_synthesis=compartment_cell*function_for_1k_11(global_par_eps, global_par_vswee1);

% Reaction: id = Wee1_translation, name = Wee1 translation
	reaction_Wee1_translation=compartment_cell*function_for_1k_1M_35(x(45), global_par_eps, global_par_ksW);

% Reaction: id = Wee1_phosphorylation, name = Wee1 phosphorylation
	reaction_Wee1_phosphorylation=compartment_cell*function_for_M_i_to_M__7(global_par_K7b, x(31), global_par_Vm7b, x(37), global_par_eps, global_par_ib);

% Reaction: id = Wee1_dephosphorylation, name = Wee1 dephosphorylation
	reaction_Wee1_dephosphorylation=compartment_cell*scaled_Michaelis_Menten_2_10(global_par_K8b, global_par_Vm8b, x(38), global_par_eps);

% Reaction: id = Wee1_decay, name = Wee1 decay
	reaction_Wee1_decay=compartment_cell*function_for_1k_1M_36(x(37), global_par_eps, global_par_kdwee1);

% Reaction: id = Wee1p_decay, name = Wee1p decay
	reaction_Wee1p_decay=compartment_cell*function_for_1k_1M_37(x(38), global_par_eps, global_par_kdwee1p);

% Reaction: id = Cdc45_synthesis, name = Cdc45 synthesis
	reaction_Cdc45_synthesis=compartment_cell*function_for_Cdc45_synthesis_1(x(40), global_par_Cdc45_tot, global_par_K1cdc45, x(14), global_par_V1cdc45, global_par_eps);

% Reaction: id = Cdc45_decay, name = Cdc45 decay
	reaction_Cdc45_decay=compartment_cell*scaled_Michaelis_Menten_2_11(x(40), global_par_K2cdc45, global_par_V2cdc45, global_par_eps);

% Reaction: id = Polymerase_activation, name = Polymerase activation
	reaction_Polymerase_activation=compartment_cell*function_for_1k_M_tot___M___M2_1(x(40), x(39), global_par_Pol_tot, global_par_eps, global_par_kspol);

% Reaction: id = Polymerase_deactivation, name = Polymerase deactivation
	reaction_Polymerase_deactivation=compartment_cell*function_for_1k_1M_38(x(39), global_par_eps, global_par_kdpol);

% Reaction: id = RNA_Primer_synthesis, name = RNA Primer synthesis
	reaction_RNA_Primer_synthesis=compartment_cell*function_for_1k_1M_39(x(39), global_par_eps, global_par_ksprim);

% Reaction: id = RNA_Primer_degradation, name = RNA Primer degradation
	reaction_RNA_Primer_degradation=compartment_cell*function_for_1k_1M_40(x(41), global_par_eps, global_par_kdprim);

% Reaction: id = ATR_activation_by_Primer, name = ATR activation by Primer
	reaction_ATR_activation_by_Primer=compartment_cell*function_for_1k_M_tot___M___M2_2(x(43), global_par_ATR_tot, x(41), global_par_eps, global_par_kaatr);

% Reaction: id = Atr_deactivation_by_Primer, name = Atr deactivation by Primer
	reaction_Atr_deactivation_by_Primer=compartment_cell*function_for_1k_1M_41(x(43), global_par_eps, global_par_kdatr);

% Reaction: id = Chk1_synthesis, name = Chk1 synthesis
	reaction_Chk1_synthesis=compartment_cell*function_for_Cdc45_synthesis_2(x(43), x(42), global_par_Chk1_tot, global_par_K1chk, global_par_V1chk, global_par_eps);

% Reaction: id = Chk1_decay, name = Chk1 decay
	reaction_Chk1_decay=compartment_cell*scaled_Michaelis_Menten_2_12(x(42), global_par_K2chk, global_par_V2chk, global_par_eps);

	xdot=zeros(45,1);
	
% Species:   id = pRB, name = pRB, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_pRB_synthesis) + (-1.0 * reaction_pRB_and_E2F_complex_formation) + ( 1.0 * reaction_pRB_and_E2f_complex_dissociation) + (-1.0 * reaction_pRB_phosphorylation_through_cyclin_D) + ( 1.0 * reaction_pRBp_dephosphorylation) + (-1.0 * reaction_pRB_decay));
	
% Species:   id = pRBp, name = pRBp, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_pRB_phosphorylation_through_cyclin_D) + (-1.0 * reaction_pRBp_dephosphorylation) + (-1.0 * reaction_pRBp_phosphorylation) + ( 1.0 * reaction_pRBpp_dephosphorylation) + (-1.0 * reaction_pRBp_and_E2F_complex_formation) + ( 1.0 * reaction_PRBp_and_E2F_complex_dissociation) + (-1.0 * reaction_pRBp_decay));
	
% Species:   id = pRBpp, name = pRBpp, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_pRBp_phosphorylation) + (-1.0 * reaction_pRBpp_dephosphorylation) + (-1.0 * reaction_pRBpp_decay));
	
% Species:   id = E2F, name = E2F, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*((-1.0 * reaction_pRB_and_E2F_complex_formation) + ( 1.0 * reaction_pRB_and_E2f_complex_dissociation) + (-1.0 * reaction_pRBp_and_E2F_complex_formation) + ( 1.0 * reaction_PRBp_and_E2F_complex_dissociation) + ( 1.0 * reaction_E2F_synthesis) + (-1.0 * reaction_E2F_phosphorylation) + ( 1.0 * reaction_E2Fp_dephosphorylation) + (-1.0 * reaction_E2F_decay));
	
% Species:   id = E2Fp, name = E2Fp, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_E2F_phosphorylation) + (-1.0 * reaction_E2Fp_dephosphorylation) + (-1.0 * reaction_E2Fp_decay));
	
% Species:   id = pRBc1, name = pRBc1, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_pRB_and_E2F_complex_formation) + (-1.0 * reaction_pRB_and_E2f_complex_dissociation));
	
% Species:   id = pRBc2, name = pRBc2, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_pRBp_and_E2F_complex_formation) + (-1.0 * reaction_PRBp_and_E2F_complex_dissociation));
	
% Species:   id = Cd, name = Cd, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_Cd_synthesis) + ( 1.0 * reaction_Cd_synthesis_through_E2F) + (-1.0 * reaction_Cd_cdk4_6_complex_formation) + ( 1.0 * reaction_Cd_cdk4_6_complex_dissociation) + (-1.0 * reaction_Cd_degradation) + (-1.0 * reaction_Cd_decay));
	
% Species:   id = Mdi, name = Mdi, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_Cd_cdk4_6_complex_formation) + (-1.0 * reaction_Cd_cdk4_6_complex_dissociation) + ( 1.0 * reaction_Md_complex_inactivation) + (-1.0 * reaction_Md_complex_activation));
	
% Species:   id = Md, name = Md, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*((-1.0 * reaction_Md_complex_inactivation) + ( 1.0 * reaction_Md_complex_activation) + (-1.0 * reaction_Md_p27_complex_formation) + ( 1.0 * reaction_Md_p27_complex_dissociation));
	
% Species:   id = Mdp27, name = Mdp27, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_Md_p27_complex_formation) + (-1.0 * reaction_Md_p27_complex_dissociation));
	
% Species:   id = Ce, name = Ce, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_Ce_synthesis) + (-1.0 * reaction_Ce_cdk2_complex_formation) + ( 1.0 * reaction_Ce_cdk2_complex_dissociation) + (-1.0 * reaction_Ce_degradation_through_Skp2) + (-1.0 * reaction_Ce_decay));
	
% Species:   id = Mei, name = Mei, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_Ce_cdk2_complex_formation) + (-1.0 * reaction_Ce_cdk2_complex_dissociation) + ( 1.0 * reaction_Me_complex_deactivation) + (-1.0 * reaction_Me_complex_activation));
	
% Species:   id = Me, name = Me, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*((-1.0 * reaction_Me_complex_deactivation) + ( 1.0 * reaction_Me_complex_activation) + (-1.0 * reaction_Me_p27_complex_formation) + ( 1.0 * reaction_Me_p27_complex_dissociation));
	
% Species:   id = Skp2, name = Skp2, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*(( 1.0 * reaction_Skp2_synthesis) + (-1.0 * reaction_Skp2_degradation_through_Cdh1) + (-1.0 * reaction_Skp2_decay));
	
% Species:   id = Mep27, name = Mep27, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_Me_p27_complex_formation) + (-1.0 * reaction_Me_p27_complex_dissociation));
	
% Species:   id = Pei, name = Pei, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*(( 1.0 * reaction_inactive_dephosphorylated_cdc25_synthesis) + ( 1.0 * reaction_Cdc25_deactivation_through_dephosphorylation) + (-1.0 * reaction_Cdc25_activation_through_phosphorylation) + (-1.0 * reaction_inactive_Cdc25_decay));
	
% Species:   id = Pe, name = Pe, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*((-1.0 * reaction_Cdc25_deactivation_through_dephosphorylation) + ( 1.0 * reaction_Cdc25_activation_through_phosphorylation) + (-1.0 * reaction_active_Cdc2__decay));
	
% Species:   id = Ca, name = Ca, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*(( 1.0 * reaction_Ca_synthesis_through_E2F) + (-1.0 * reaction_Ca_cdk2_complex_formation) + ( 1.0 * reaction_Ca_cdk2_complex_dissociation) + (-1.0 * reaction_Ca_degradation) + (-1.0 * reaction_Ca_decay));
	
% Species:   id = Mai, name = Mai, affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*(( 1.0 * reaction_Ca_cdk2_complex_formation) + (-1.0 * reaction_Ca_cdk2_complex_dissociation) + ( 1.0 * reaction_Ma_inactivation) + (-1.0 * reaction_Ma_activation));
	
% Species:   id = Ma, name = Ma, affected by kineticLaw
	xdot(21) = (1/(compartment_cell))*((-1.0 * reaction_Ma_inactivation) + ( 1.0 * reaction_Ma_activation) + (-1.0 * reaction_Ma_p27_complex_formation) + ( 1.0 * reaction_Ma_p27_complex_dissociation));
	
% Species:   id = Map27, name = Map27, affected by kineticLaw
	xdot(22) = (1/(compartment_cell))*(( 1.0 * reaction_Ma_p27_complex_formation) + (-1.0 * reaction_Ma_p27_complex_dissociation));
	
% Species:   id = p27, name = p27, affected by kineticLaw
	xdot(23) = (1/(compartment_cell))*((-1.0 * reaction_Md_p27_complex_formation) + ( 1.0 * reaction_Md_p27_complex_dissociation) + (-1.0 * reaction_Me_p27_complex_formation) + ( 1.0 * reaction_Me_p27_complex_dissociation) + (-1.0 * reaction_Ma_p27_complex_formation) + ( 1.0 * reaction_Ma_p27_complex_dissociation) + ( 1.0 * reaction_p27_synthesis) + ( 1.0 * reaction_p27_synthesis_through_E2F) + (-1.0 * reaction_Mb_p27_complex_formation) + ( 1.0 * reaction_Mb_p26_complex_dissociation) + (-1.0 * reaction_p27_phosphorylation) + ( 1.0 * reaction_p27_dephosphorylation) + (-1.0 * reaction_p27_decay));
	
% Species:   id = p27p, name = p27p, affected by kineticLaw
	xdot(24) = (1/(compartment_cell))*(( 1.0 * reaction_p27_phosphorylation) + (-1.0 * reaction_p27_dephosphorylation) + (-1.0 * reaction_p27_degradation) + (-1.0 * reaction_p27p_decay));
	
% Species:   id = Cdh1i, name = Cdh1i, affected by kineticLaw
	xdot(25) = (1/(compartment_cell))*(( 1.0 * reaction_cdh1_inactivation) + (-1.0 * reaction_cdh1_activation) + (-1.0 * reaction_inactive_cdh1_decay));
	
% Species:   id = Cdh1a, name = Cdh1a, affected by kineticLaw
	xdot(26) = (1/(compartment_cell))*((-1.0 * reaction_cdh1_inactivation) + ( 1.0 * reaction_cdh1_activation) + (-1.0 * reaction_active_cdh1_decay) + ( 1.0 * reaction_active_cdh1_synthesis));
	
% Species:   id = Pai, name = Pai, affected by kineticLaw
	xdot(27) = (1/(compartment_cell))*(( 1.0 * reaction_cdc25_inactivation) + (-1.0 * reaction_cdc25_activation) + (-1.0 * reaction_inactive_cdc25_decay) + ( 1.0 * reaction_inactive_cdc25_syntehsis));
	
% Species:   id = Pa, name = Pa, affected by kineticLaw
	xdot(28) = (1/(compartment_cell))*((-1.0 * reaction_cdc25_inactivation) + ( 1.0 * reaction_cdc25_activation) + (-1.0 * reaction_active_cdc25_decay));
	
% Species:   id = Cb, name = Cb, affected by kineticLaw
	xdot(29) = (1/(compartment_cell))*(( 1.0 * reaction_Cb_synthesis) + (-1.0 * reaction_Cb_degradation) + ( 1.0 * reaction_Mbi_complex_dissociation) + (-1.0 * reaction_Cb_degradation_through_Cdc20) + (-1.0 * reaction_Cb_decay) + (-1.0 * reaction_Cb_degradation_through_cdh1));
	
% Species:   id = Mbi, name = Mbi, affected by kineticLaw
	xdot(30) = (1/(compartment_cell))*(( 1.0 * reaction_Cb_degradation) + (-1.0 * reaction_Mbi_complex_dissociation) + ( 1.0 * reaction_Mb_inactivation) + (-1.0 * reaction_Mv_activation));
	
% Species:   id = Mb, name = Mb, affected by kineticLaw
	xdot(31) = (1/(compartment_cell))*((-1.0 * reaction_Mb_p27_complex_formation) + ( 1.0 * reaction_Mb_p26_complex_dissociation) + (-1.0 * reaction_Mb_inactivation) + ( 1.0 * reaction_Mv_activation));
	
% Species:   id = Mbp27, name = Mbp27, affected by kineticLaw
	xdot(32) = (1/(compartment_cell))*(( 1.0 * reaction_Mb_p27_complex_formation) + (-1.0 * reaction_Mb_p26_complex_dissociation));
	
% Species:   id = Cdc20i, name = Cdc20i, affected by kineticLaw
	xdot(33) = (1/(compartment_cell))*(( 1.0 * reaction_inactive_cdc20_synthesis) + (-1.0 * reaction_cdc20_activation) + ( 1.0 * reaction_Cdc20_deactivation) + (-1.0 * reaction_inactive_cdc20_decay));
	
% Species:   id = Cdc20a, name = Cdc20a, affected by kineticLaw
	xdot(34) = (1/(compartment_cell))*(( 1.0 * reaction_cdc20_activation) + (-1.0 * reaction_Cdc20_deactivation) + (-1.0 * reaction_actice_cdc20_decay));
	
% Species:   id = Pbi, name = Pbi, affected by kineticLaw
	xdot(35) = (1/(compartment_cell))*(( 1.0 * reaction_inactive_cdc25_synthesis) + ( 1.0 * reaction_cdc25_deactivation_2) + (-1.0 * reaction_cdc25_activation_2) + (-1.0 * reaction_inactive_cdc25_decay_2));
	
% Species:   id = Pb, name = Pb, affected by kineticLaw
	xdot(36) = (1/(compartment_cell))*((-1.0 * reaction_cdc25_deactivation_2) + ( 1.0 * reaction_cdc25_activation_2) + (-1.0 * reaction_active_cdc25_decay_2));
	
% Species:   id = Wee1, name = Wee1, affected by kineticLaw
	xdot(37) = (1/(compartment_cell))*(( 1.0 * reaction_Wee1_synthesis) + ( 1.0 * reaction_Wee1_translation) + (-1.0 * reaction_Wee1_phosphorylation) + ( 1.0 * reaction_Wee1_dephosphorylation) + (-1.0 * reaction_Wee1_decay));
	
% Species:   id = Wee1p, name = Wee1p, affected by kineticLaw
	xdot(38) = (1/(compartment_cell))*(( 1.0 * reaction_Wee1_phosphorylation) + (-1.0 * reaction_Wee1_dephosphorylation) + (-1.0 * reaction_Wee1p_decay));
	
% Species:   id = Pol, name = Pol, affected by kineticLaw
	xdot(39) = (1/(compartment_cell))*(( 1.0 * reaction_Polymerase_activation) + (-1.0 * reaction_Polymerase_deactivation));
	
% Species:   id = Cdc45, name = Cdc45, affected by kineticLaw
	xdot(40) = (1/(compartment_cell))*(( 1.0 * reaction_Cdc45_synthesis) + (-1.0 * reaction_Cdc45_decay) + (-1.0 * reaction_Polymerase_activation) + ( 1.0 * reaction_Polymerase_deactivation));
	
% Species:   id = Primer, name = Primer, affected by kineticLaw
	xdot(41) = (1/(compartment_cell))*(( 1.0 * reaction_RNA_Primer_synthesis) + (-1.0 * reaction_RNA_Primer_degradation) + (-1.0 * reaction_ATR_activation_by_Primer) + ( 1.0 * reaction_Atr_deactivation_by_Primer));
	
% Species:   id = Chk1, name = Chk1, affected by kineticLaw
	xdot(42) = (1/(compartment_cell))*(( 1.0 * reaction_Chk1_synthesis) + (-1.0 * reaction_Chk1_decay));
	
% Species:   id = ATR, name = ATR, affected by kineticLaw
	xdot(43) = (1/(compartment_cell))*(( 1.0 * reaction_ATR_activation_by_Primer) + (-1.0 * reaction_Atr_deactivation_by_Primer));
	
% Species:   id = AP1, name = AP1, affected by kineticLaw
	xdot(44) = (1/(compartment_cell))*(( 1.0 * reaction_AP1_simulation_by_growth_factor) + (-1.0 * reaction_AP1_decay));
	
% Species:   id = Mw, name = Mw
% Warning species is not changed by either rules or reactions
	xdot(45) = ;
end

function z=scaled_Michaelis_Menten_1_1(GF,Kagf,eps,vsap1), z=(vsap1*GF/(Kagf+GF)*eps);end

function z=function_for_1k_1M_1(AP1,eps,kdap1), z=(kdap1*AP1*eps);end

function z=function_for_1k_1(eps,vsprb), z=(vsprb*eps);end

function z=function_for_1k_2M_1(E2F,eps,kpc1,pRB), z=(kpc1*pRB*E2F*eps);end

function z=function_for_1k_1M_2(eps,kpc2,pRBc1), z=(kpc2*pRBc1*eps);end

function z=modified_Michaelis_Menten_2_1(K1,Md,Mdp27,V1,eps,pRB), z=(V1*pRB/(K1+pRB)*(Md+Mdp27)*eps);end

function z=scaled_Michaelis_Menten_2_1(K2,V2,eps,pRBp), z=(V2*pRBp/(K2+pRBp)*eps);end

function z=function_for_1k_1M_3(eps,kdprb,pRBp), z=(kdprb*pRBp*eps);end

function z=modified_Michaelis_Menten_1_1(K3,Me,V3,eps,pRBp), z=(V3*pRBp/(K3+pRBp)*Me*eps);end

function z=scaled_Michaelis_Menten_2_2(K4,V4,eps,pRBpp), z=(V4*pRBpp/(K4+pRBpp)*eps);end

function z=function_for_1k_2M_2(E2F,eps,kpc3,pRBp), z=(kpc3*pRBp*E2F*eps);end

function z=function_for_1k_1M_4(eps,kpc4,pRBc2), z=(kpc4*pRBc2*eps);end

function z=function_for_1k_1M_5(eps,kdprbp,pRBp), z=(kdprbp*pRBp*eps);end

function z=function_for_1k_1M_6(eps,kdprbpp,pRBpp), z=(kdprbpp*pRBpp*eps);end

function z=function_for_1k_2(eps,vse2f), z=(vse2f*eps);end

function z=modified_Michaelis_Menten_1_2(E2F,K1e2f,Ma,V1e2f,eps), z=(V1e2f*E2F/(K1e2f+E2F)*Ma*eps);end

function z=scaled_Michaelis_Menten_2_3(E2Fp,K2e2f,V2e2f,eps), z=(V2e2f*E2Fp/(K2e2f+E2Fp)*eps);end

function z=function_for_1k_1M_7(E2F,eps,kde2f), z=(kde2f*E2F*eps);end

function z=function_for_1k_1M_8(E2Fp,eps,kde2fp), z=(kde2fp*E2Fp*eps);end

function z=function_for_1k_1M_9(AP1,eps,kcd1), z=(kcd1*AP1*eps);end

function z=double_michaelis_menten_like_1(E2F,Ki7,Ki8,eps,kcd2,pRB,pRBp), z=(kcd2*E2F*Ki7/(Ki7+pRB)*Ki8/(Ki8+pRBp)*eps);end

function z=function_for_Cd_to_Mdi_1(Cd,Cdk4_tot,Md,Mdi,Mdp27,eps,kcom1), z=(kcom1*Cd*(Cdk4_tot-(Mdi+Md+Mdp27))*eps);end

function z=function_for_1k_1M_10(Mdi,eps,kdecom1), z=(kdecom1*Mdi*eps);end

function z=scaled_Michaelis_Menten_2_4(Cd,Kdd,Vdd,eps), z=(Vdd*Cd/(Kdd+Cd)*eps);end

function z=function_for_1k_1M_11(Cd,eps,kddd), z=(kddd*Cd*eps);end

function z=scaled_Michaelis_Menten_2_5(K2d,Md,Vm2d,eps), z=(Vm2d*Md/(K2d+Md)*eps);end

function z=scaled_Michaelis_Menten_2_6(K1d,Mdi,Vm1d,eps), z=(Vm1d*Mdi/(K1d+Mdi)*eps);end

function z=function_for_1k_2M_3(Md,eps,kc1,p27), z=(kc1*Md*p27*eps);end

function z=function_for_1k_1M_12(Mdp27,eps,kc2), z=(kc2*Mdp27*eps);end

function z=double_michaelis_menten_like_2_0(E2F,Ki10,Ki9,eps,kce,pRB,pRBp), z=(kce*E2F*Ki9/(Ki9+pRB)*Ki10/(Ki10+pRBp)*eps);end

function z=function_for_M__to_M_i_1(Cdk2_tot,Ce,Ma,Mai,Map27,Me,Mei,Mep27,eps,kcom2), z=(kcom2*Ce*(Cdk2_tot-(Mei+Me+Mep27+Mai+Ma+Map27))*eps);end

function z=function_for_1k_1M_13(Mei,eps,kdecom2), z=(kdecom2*Mei*eps);end

function z=double_michaelis_menten_like_2_1(Ce,Kdceskp2,Kde,Skp2,Vde,eps), z=(Vde*Skp2/(Kdceskp2+Skp2)*Ce/(Kde+Ce)*eps);end

function z=function_for_1k_1M_14(Ce,eps,kdde), z=(kdde*Ce*eps);end

function z=function_for_M_i_to_M__1(K2e,Me,Vm2e,Wee1,eps,ib1), z=(Vm2e*(Wee1+ib1)*Me/(K2e+Me)*eps);end

function z=modified_Michaelis_Menten_1_3(K1e,Mei,Pe,Vm1e,eps), z=(Vm1e*Mei/(K1e+Mei)*Pe*eps);end

function z=function_for_1k_2M_4(Me,eps,kc3,p27), z=(kc3*Me*p27*eps);end

function z=function_for_1k_1M_15(Mep27,eps,kc4), z=(kc4*Mep27*eps);end

function z=function_for_1k_3(eps,vsskp2), z=(vsskp2*eps);end

function z=double_michaelis_menten_like_2_2(Cdh1a,Kcdh1,Kdskp2,Skp2,Vdskp2,eps), z=(Vdskp2*Skp2/(Kdskp2+Skp2)*Cdh1a/(Kcdh1+Cdh1a)*eps);end

function z=function_for_1k_1M_16(Skp2,eps,kddskp2), z=(kddskp2*Skp2*eps);end

function z=function_for_1k_4(eps,vspei), z=(vspei*eps);end

function z=function_for_Pe_to_Pei_1(Chk1,K6e,Pe,V6e,eps,xe1,xe2), z=(V6e*(xe1+xe2*Chk1)*Pe/(K6e+Pe)*eps);end

function z=function_for_M_i_to_M__2(K5e,Me,Pei,Vm5e,ae,eps), z=(Vm5e*(Me+ae)*Pei/(K5e+Pei)*eps);end

function z=function_for_1k_1M_17(Pei,eps,kdpei), z=(kdpei*Pei*eps);end

function z=function_for_1k_1M_18(Pe,eps,kdpe), z=(kdpe*Pe*eps);end

function z=double_michaelis_menten_like_3(E2F,Ki11,Ki12,eps,kca,pRB,pRBp), z=(kca*E2F*Ki11/(Ki11+pRB)*Ki12/(Ki12+pRBp)*eps);end

function z=function_for_M__to_M_i_2(Ca,Cdk2_tot,Ma,Mai,Map27,Me,Mei,Mep27,eps,kcom3), z=(kcom3*Ca*(Cdk2_tot-(Mei+Me+Mep27+Mai+Ma+Map27))*eps);end

function z=function_for_1k_1M_19(Mai,eps,kdecom3), z=(kdecom3*Mai*eps);end

function z=double_michaelis_menten_like_2_3(Ca,Cdc20a,Kacdc20,Kda,Vda,eps), z=(Vda*Ca/(Kda+Ca)*Cdc20a/(Kacdc20+Cdc20a)*eps);end

function z=function_for_1k_1M_20(Ca,eps,kdda), z=(kdda*Ca*eps);end

function z=function_for_M_i_to_M__3(K2a,Ma,Vm2a,Wee1,eps,ib2), z=(Vm2a*(Wee1+ib2)*Ma/(K2a+Ma)*eps);end

function z=modified_Michaelis_Menten_1_4(K1a,Mai,Pa,Vm1a,eps), z=(Vm1a*Mai/(K1a+Mai)*Pa*eps);end

function z=function_for_1k_2M_5(Ma,eps,kc5,p27), z=(kc5*Ma*p27*eps);end

function z=function_for_1k_1M_21(Map27,eps,kc6), z=(kc6*Map27*eps);end

function z=function_for_1k_5(eps,vs1p27), z=(vs1p27*eps);end

function z=double_michaelis_menten_like_4(E2F,Ki13,Ki14,eps,pRB,pRBp,vs2p27), z=(vs2p27*E2F*Ki13/(Ki13+pRB)*Ki14/(Ki14+pRBp)*eps);end

function z=function_for_1k_2M_6(Mb,eps,kc7,p27), z=(kc7*Mb*p27*eps);end

function z=function_for_1k_1M_22(Mbp27,eps,kc8), z=(kc8*Mbp27*eps);end

function z=modified_Michaelis_Menten_1_5(K1p27,Me,V1p27,eps,p27), z=(V1p27*p27/(K1p27+p27)*Me*eps);end

function z=scaled_Michaelis_Menten_2_7(K2p27,V2p27,eps,p27p), z=(V2p27*p27p/(K2p27+p27p)*eps);end

function z=function_for_1k_1M_23(eps,kddp27,p27), z=(kddp27*p27*eps);end

function z=double_michaelis_menten_like_2_4(Kdp27p,Kdp27skp2,Skp2,Vdp27p,eps,p27p), z=(Vdp27p*Skp2/(Kdp27skp2+Skp2)*p27p/(Kdp27p+p27p)*eps);end

function z=function_for_1k_1M_24(eps,kddp27p,p27p), z=(kddp27p*p27p*eps);end

function z=modified_Michaelis_Menten_2_2(Cdh1a,K2cdh1,Ma,Mb,V2cdh1,eps), z=(V2cdh1*Cdh1a/(K2cdh1+Cdh1a)*(Ma+Mb)*eps);end

function z=scaled_Michaelis_Menten_2_8(Cdh1i,K1cdh1,V1cdh1,eps), z=(V1cdh1*Cdh1i/(K1cdh1+Cdh1i)*eps);end

function z=function_for_1k_1M_25(Cdh1i,eps,kdcdh1i), z=(kdcdh1i*Cdh1i*eps);end

function z=function_for_1k_1M_26(Cdh1a,eps,kdcdh1a), z=(kdcdh1a*Cdh1a*eps);end

function z=function_for_1k_6(eps,vscdh1a), z=(vscdh1a*eps);end

function z=function_for_Pe_to_Pei_2(Chk1,K6a,Pa,V6a,eps,xa1,xa2), z=(V6a*(xa1+xa2*Chk1)*Pa/(K6a+Pa)*eps);end

function z=function_for_M_i_to_M__4(K5a,Ma,Pai,Vm5a,aa,eps), z=(Vm5a*(Ma+aa)*Pai/(K5a+Pai)*eps);end

function z=function_for_1k_1M_27(Pai,eps,kdpai), z=(kdpai*Pai*eps);end

function z=function_for_1k_7(eps,vspai), z=(vspai*eps);end

function z=function_for_1k_1M_28(Pa,eps,kdpa), z=(kdpa*Pa*eps);end

function z=function_for_1k_8(eps,vcb), z=(vcb*eps);end

function z=function_for_Cd_to_Mdi_2(Cb,Cdk1_tot,Mb,Mbi,Mbp27,eps,kcom4), z=(kcom4*Cb*(Cdk1_tot-(Mbi+Mb+Mbp27))*eps);end

function z=function_for_1k_1M_29(Mbi,eps,kdecom4), z=(kdecom4*Mbi*eps);end

function z=double_michaelis_menten_like_2_5(Cb,Cdc20a,Kdb,Kdbcdc20,Vdb,eps), z=(Vdb*Cb/(Kdb+Cb)*Cdc20a/(Kdbcdc20+Cdc20a)*eps);end

function z=function_for_1k_1M_30(Cb,eps,kddb), z=(kddb*Cb*eps);end

function z=double_michaelis_menten_like_2_6(Cb,Cdh1a,Kdb,Kdbcdh1,Vdb,eps), z=(Vdb*Cb/(Kdb+Cb)*Cdh1a/(Kdbcdh1+Cdh1a)*eps);end

function z=function_for_M_i_to_M__5(K2b,Mb,Vm2b,Wee1,eps,ib3), z=(Vm2b*(Wee1+ib3)*Mb/(K2b+Mb)*eps);end

function z=modified_Michaelis_Menten_1_6(K1b,Mbi,Pb,Vm1b,eps), z=(Vm1b*Mbi/(K1b+Mbi)*Pb*eps);end

function z=function_for_1k_9(eps,vscdc20i), z=(vscdc20i*eps);end

function z=modified_Michaelis_Menten_1_7(Cdc20i,K3b,Mb,Vm3b,eps), z=(Vm3b*Cdc20i/(K3b+Cdc20i)*Mb*eps);end

function z=scaled_Michaelis_Menten_2_9(Cdc20a,K4b,Vm4b,eps), z=(Vm4b*Cdc20a/(K4b+Cdc20a)*eps);end

function z=function_for_1k_1M_31(Cdc20i,eps,kdcdc20i), z=(kdcdc20i*Cdc20i*eps);end

function z=function_for_1k_1M_32(Cdc20a,eps,kdcdc20a), z=(kdcdc20a*Cdc20a*eps);end

function z=function_for_1k_10(eps,vspbi), z=(vspbi*eps);end

function z=function_for_Pe_to_Pei_3(Chk1,K6b,Pb,V6b,eps,xb1,xb2), z=(V6b*(xb1+xb2*Chk1)*Pb/(K6b+Pb)*eps);end

function z=function_for_M_i_to_M__6(K5b,Mb,Pbi,Vm5b,ab,eps), z=(Vm5b*(Mb+ab)*Pbi/(K5b+Pbi)*eps);end

function z=function_for_1k_1M_33(Pbi,eps,kdpbi), z=(kdpbi*Pbi*eps);end

function z=function_for_1k_1M_34(Pb,eps,kdpb), z=(kdpb*Pb*eps);end

function z=function_for_1k_11(eps,vswee1), z=(vswee1*eps);end

function z=function_for_1k_1M_35(Mw,eps,ksW), z=(ksW*Mw*eps);end

function z=function_for_M_i_to_M__7(K7b,Mb,Vm7b,Wee1,eps,ib), z=(Vm7b*(Mb+ib)*Wee1/(K7b+Wee1)*eps);end

function z=scaled_Michaelis_Menten_2_10(K8b,Vm8b,Wee1p,eps), z=(Vm8b*Wee1p/(K8b+Wee1p)*eps);end

function z=function_for_1k_1M_36(Wee1,eps,kdwee1), z=(kdwee1*Wee1*eps);end

function z=function_for_1k_1M_37(Wee1p,eps,kdwee1p), z=(kdwee1p*Wee1p*eps);end

function z=function_for_Cdc45_synthesis_1(Cdc45,Cdc45_tot,K1cdc45,Me,V1cdc45,eps), z=(V1cdc45*Me*(Cdc45_tot-Cdc45)/(K1cdc45+Cdc45_tot-Cdc45)*eps);end

function z=scaled_Michaelis_Menten_2_11(Cdc45,K2cdc45,V2cdc45,eps), z=(V2cdc45*Cdc45/(K2cdc45+Cdc45)*eps);end

function z=function_for_1k_M_tot___M___M2_1(Cdc45,Pol,Pol_tot,eps,kspol), z=(kspol*(Pol_tot-Pol)*Cdc45*eps);end

function z=function_for_1k_1M_38(Pol,eps,kdpol), z=(kdpol*Pol*eps);end

function z=function_for_1k_1M_39(Pol,eps,ksprim), z=(ksprim*Pol*eps);end

function z=function_for_1k_1M_40(Primer,eps,kdprim), z=(kdprim*Primer*eps);end

function z=function_for_1k_M_tot___M___M2_2(ATR,ATR_tot,Primer,eps,kaatr), z=(kaatr*(ATR_tot-ATR)*Primer*eps);end

function z=function_for_1k_1M_41(ATR,eps,kdatr), z=(kdatr*ATR*eps);end

function z=function_for_Cdc45_synthesis_2(ATR,Chk1,Chk1_tot,K1chk,V1chk,eps), z=(V1chk*ATR*(Chk1_tot-Chk1)/(K1chk+Chk1_tot-Chk1)*eps);end

function z=scaled_Michaelis_Menten_2_12(Chk1,K2chk,V2chk,eps), z=(V2chk*Chk1/(K2chk+Chk1)*eps);end

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


