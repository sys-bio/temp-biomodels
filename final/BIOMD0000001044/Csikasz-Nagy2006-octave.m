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
% Model name = COPASI autolayout
%
%


function main()
%Initial conditions vector
	x0=zeros(30,1);
	x0(1) = 0.328373432159424;
	x0(2) = 0.671626567840576;
	x0(3) = 0.0;
	x0(4) = 0.660586714744568;
	x0(5) = 0.660586714744568;
	x0(6) = 0.018553527072072;
	x0(7) = 0.67914024181664;
	x0(8) = 0.100205290197169;
	x0(9) = 0.99923574924469;
	x0(10) = 7.64250755309948E-4;
	x0(11) = 0.295407682657242;
	x0(12) = 0.624287813901901;
	x0(13) = 0.00994044542312622;
	x0(14) = 0.0270942449569702;
	x0(15) = 0.166841372847557;
	x0(16) = 0.176656243391335;
	x0(17) = 0.0587108433246615;
	x0(18) = 0.077605128288269;
	x0(19) = 0.389331459999084;
	x0(20) = 1.17421686649323;
	x0(21) = 0.00981487054377794;
	x0(22) = 0.0;
	x0(23) = 0.00981487054377794;
	x0(24) = 0.883352891309302;
	x0(25) = 0.0414657622948318;
	x0(26) = 0.360758398184251;
	x0(27) = 0.017153799533844;
	x0(28) = 0.0;
	x0(29) = 0.311726331710815;
	x0(30) = 0.944030968534243;


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
% Parameter:   id =  V25, name = V25
% Parameter:   id =  Vah1, name = Vah1
% Parameter:   id =  Vatf, name = Vatf
% Parameter:   id =  Vda, name = Vda
% Parameter:   id =  Vdb, name = Vdb
% Parameter:   id =  Vde, name = Vde
% Parameter:   id =  Vdi, name = Vdi
% Parameter:   id =  Vih1, name = Vih1
% Parameter:   id =  Vitf, name = Vitf
% Parameter:   id =  Vsa, name = Vsa
% Parameter:   id =  Vsb, name = Vsb
% Parameter:   id =  Vse, name = Vse
% Parameter:   id =  Vsi, name = Vsi
% Parameter:   id =  Vwee, name = Vwee
% Parameter:   id =  APCT, name = APCT
	global_par_APCT=1.0;
% Parameter:   id =  Cdh1T, name = Cdh1T
	global_par_Cdh1T=1.0;
% Parameter:   id =  CycD0, name = CycD0
	global_par_CycD0=0.05;
% Parameter:   id =  J20, name = J20
	global_par_J20=1.0;
% Parameter:   id =  Ja20, name = Ja20
	global_par_Ja20=0.005;
% Parameter:   id =  Ja25, name = Ja25
	global_par_Ja25=0.1;
% Parameter:   id =  Jafb, name = Jafb
	global_par_Jafb=0.1;
% Parameter:   id =  Jafi, name = Jafi
	global_par_Jafi=88.0;
% Parameter:   id =  Jah1, name = Jah1
	global_par_Jah1=0.01;
% Parameter:   id =  Jaie, name = Jaie
	global_par_Jaie=0.01;
% Parameter:   id =  Jatf, name = Jatf
	global_par_Jatf=0.01;
% Parameter:   id =  Jawee, name = Jawee
	global_par_Jawee=0.05;
% Parameter:   id =  Ji20, name = Ji20
	global_par_Ji20=0.005;
% Parameter:   id =  Ji25, name = Ji25
	global_par_Ji25=0.1;
% Parameter:   id =  Jifb, name = Jifb
	global_par_Jifb=0.1;
% Parameter:   id =  Jifi, name = Jifi
	global_par_Jifi=88.0;
% Parameter:   id =  Jih1, name = Jih1
	global_par_Jih1=0.01;
% Parameter:   id =  Jiie, name = Jiie
	global_par_Jiie=0.01;
% Parameter:   id =  Jitf, name = Jitf
	global_par_Jitf=0.01;
% Parameter:   id =  Jiwee, name = Jiwee
	global_par_Jiwee=0.05;
% Parameter:   id =  k14di, name = k14di
	global_par_k14di=0.0;
% Parameter:   id =  k25b, name = k25b
	global_par_k25b=5.0;
% Parameter:   id =  k25a, name = k25a
	global_par_k25a=0.01;
% Parameter:   id =  ka20, name = ka20
	global_par_ka20=0.5;
% Parameter:   id =  ka25b, name = ka25b
	global_par_ka25b=1.0;
% Parameter:   id =  ka25a, name = ka25a
	global_par_ka25a=0.0;
% Parameter:   id =  kafb, name = kafb
	global_par_kafb=1.0;
% Parameter:   id =  kafi, name = kafi
	global_par_kafi=88.0;
% Parameter:   id =  kah1b, name = kah1b
	global_par_kah1b=3.5;
% Parameter:   id =  kah1a, name = kah1a
	global_par_kah1a=0.18;
% Parameter:   id =  kaie, name = kaie
	global_par_kaie=0.07;
% Parameter:   id =  kassa, name = kassa
	global_par_kassa=25.0;
% Parameter:   id =  kassb, name = kassb
	global_par_kassb=0.0;
% Parameter:   id =  kasse, name = kasse
	global_par_kasse=50.0;
% Parameter:   id =  katf, name = katf
	global_par_katf=0.0;
% Parameter:   id =  katfa, name = katfa
	global_par_katfa=0.3;
% Parameter:   id =  katfd, name = katfd
	global_par_katfd=3.0;
% Parameter:   id =  katfe, name = katfe
	global_par_katfe=0.5;
% Parameter:   id =  kaweeb, name = kaweeb
	global_par_kaweeb=0.0;
% Parameter:   id =  kaweea, name = kaweea
	global_par_kaweea=0.3;
% Parameter:   id =  kd20, name = kd20
	global_par_kd20=0.15;
% Parameter:   id =  kdab, name = kdab
	global_par_kdab=2.0;
% Parameter:   id =  kdaa, name = kdaa
	global_par_kdaa=0.02;
% Parameter:   id =  kdac, name = kdac
	global_par_kdac=0.0;
% Parameter:   id =  kdb, name = kdb
	global_par_kdb=0.005;
% Parameter:   id =  kdbc, name = kdbc
	global_par_kdbc=0.1;
% Parameter:   id =  kdbh, name = kdbh
	global_par_kdbh=2.0;
% Parameter:   id =  kde, name = kde
	global_par_kde=0.01;
% Parameter:   id =  kdea, name = kdea
	global_par_kdea=0.5;
% Parameter:   id =  kdeb, name = kdeb
	global_par_kdeb=0.5;
% Parameter:   id =  kdee, name = kdee
	global_par_kdee=0.1;
% Parameter:   id =  kdi, name = kdi
	global_par_kdi=0.8;
% Parameter:   id =  kdia, name = kdia
	global_par_kdia=5.0;
% Parameter:   id =  kdib, name = kdib
	global_par_kdib=5.0;
% Parameter:   id =  kdid, name = kdid
	global_par_kdid=0.0;
% Parameter:   id =  kdie, name = kdie
	global_par_kdie=5.0;
% Parameter:   id =  kdissa, name = kdissa
	global_par_kdissa=1.0;
% Parameter:   id =  kdissb, name = kdissb
	global_par_kdissb=0.0;
% Parameter:   id =  kdisse, name = kdisse
	global_par_kdisse=1.0;
% Parameter:   id =  KEZ, name = KEZ
	global_par_KEZ=0.2;
% Parameter:   id =  ki20, name = ki20
	global_par_ki20=0.25;
% Parameter:   id =  ki25b, name = ki25b
	global_par_ki25b=0.0;
% Parameter:   id =  ki25a, name = ki25a
	global_par_ki25a=0.3;
% Parameter:   id =  kifb, name = kifb
	global_par_kifb=0.1;
% Parameter:   id =  kifi, name = kifi
	global_par_kifi=88.0;
% Parameter:   id =  kifib, name = kifib
	global_par_kifib=88.0;
% Parameter:   id =  kih1, name = kih1
	global_par_kih1=0.0;
% Parameter:   id =  kih1a, name = kih1a
	global_par_kih1a=0.2;
% Parameter:   id =  kih1b, name = kih1b
	global_par_kih1b=1.0;
% Parameter:   id =  kih1d, name = kih1d
	global_par_kih1d=0.0;
% Parameter:   id =  kih1e, name = kih1e
	global_par_kih1e=0.1;
% Parameter:   id =  kiie, name = kiie
	global_par_kiie=0.18;
% Parameter:   id =  kitf, name = kitf
	global_par_kitf=0.25;
% Parameter:   id =  kitfa, name = kitfa
	global_par_kitfa=0.1;
% Parameter:   id =  kitfb, name = kitfb
	global_par_kitfb=0.1;
% Parameter:   id =  kiweeb, name = kiweeb
	global_par_kiweeb=1.0;
% Parameter:   id =  kiweea, name = kiweea
	global_par_kiweea=0.0;
% Parameter:   id =  ks20b, name = ks20b
	global_par_ks20b=0.15;
% Parameter:   id =  ks20a, name = ks20a
	global_par_ks20a=0.0;
% Parameter:   id =  ksab, name = ksab
	global_par_ksab=0.025;
% Parameter:   id =  ksaa, name = ksaa
	global_par_ksaa=0.0;
% Parameter:   id =  ksbb, name = ksbb
	global_par_ksbb=0.03;
% Parameter:   id =  ksba, name = ksba
	global_par_ksba=0.01;
% Parameter:   id =  kseb, name = kseb
	global_par_kseb=0.18;
% Parameter:   id =  ksea, name = ksea
	global_par_ksea=0.01;
% Parameter:   id =  ksib, name = ksib
	global_par_ksib=0.0;
% Parameter:   id =  ksia, name = ksia
	global_par_ksia=1.8;
% Parameter:   id =  kweeb, name = kweeb
	global_par_kweeb=0.2;
% Parameter:   id =  kweea, name = kweea
	global_par_kweea=0.02;
% Parameter:   id =  MaxMass, name = MaxMass
	global_par_MaxMass=10000.0;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.005;
% Parameter:   id =  n20, name = n20
	global_par_n20=1.0;
% assignmentRule: variable = APC
	x(1)=global_par_APCT-x(2);
% assignmentRule: variable = Cdc14
	x(4)=x(5);
% assignmentRule: variable = Cdc20T
	x(7)=x(6)+x(5);
% assignmentRule: variable = Cdc25P
	x(8)=GK(global_par_ka25a+global_par_ka25b*x(15), global_par_ki25a+global_par_ki25b*x(4), global_par_Ja25, global_par_Ji25);
% assignmentRule: variable = Cdh1i
	x(10)=global_par_Cdh1T-x(9);
% assignmentRule: variable = CKIT
	x(12)=x(11)+x(3)+x(22)+x(27)+x(29);
% assignmentRule: variable = TFB
	x(24)=GK(global_par_kafb*x(15), global_par_kifb, global_par_Jafb, global_par_Jifb);
% assignmentRule: variable = TFI
	x(26)=GK(global_par_kafi*x(4), global_par_kifi+global_par_kifib*x(15), global_par_Jafi, global_par_Jifi);
% assignmentRule: variable = TriB
	x(28)=x(3)+x(22);
% assignmentRule: variable = Wee1
	x(30)=GK(global_par_kaweea+global_par_kaweeb*x(4), global_par_kiweea+global_par_kiweeb*x(15), global_par_Jawee, global_par_Jiwee);
% assignmentRule: variable = V25
	global_par_V25=global_par_k25a+global_par_k25b*x(8);
% assignmentRule: variable = Vah1
	global_par_Vah1=global_par_kah1a+global_par_kah1b*x(4);
% assignmentRule: variable = Vda
	global_par_Vda=global_par_kdaa+(global_par_kdab+global_par_kdac)*x(5)+global_par_kdac*x(6);
% assignmentRule: variable = Vdb
	global_par_Vdb=global_par_kdb+global_par_kdbh*x(9)+global_par_kdbc*x(5);
% assignmentRule: variable = Vde
	global_par_Vde=global_par_kde+global_par_kdee*x(18)+global_par_kdea*x(13)+global_par_kdeb*x(15);
% assignmentRule: variable = Vitf
	global_par_Vitf=global_par_kitf+global_par_kitfa*x(13)+global_par_kitfb*x(15);
% assignmentRule: variable = Vsb
	global_par_Vsb=(global_par_ksba+global_par_ksbb*x(24))*x(20);
% assignmentRule: variable = Vsi
	global_par_Vsi=global_par_ksia+global_par_ksib*x(26);
% assignmentRule: variable = Vwee
	global_par_Vwee=global_par_kweea+global_par_kweeb*x(30);
% assignmentRule: variable = CycAT
	x(14)=x(13)+x(27);
% assignmentRule: variable = CycBT
	x(16)=x(15)+x(21)+x(3)+x(22);
% assignmentRule: variable = CycD
	x(17)=global_par_CycD0*x(20);
% assignmentRule: variable = Vatf
	global_par_Vatf=global_par_katf+global_par_katfa*x(13)+global_par_katfe*x(18)+global_par_katfd*x(17);
% assignmentRule: variable = TFE
	x(25)=GK(global_par_Vatf, global_par_Vitf, global_par_Jatf, global_par_Jitf);
% assignmentRule: variable = Vdi
	global_par_Vdi=(global_par_kdi+global_par_kdia*x(13)+global_par_kdib*x(15)+global_par_kdie*x(18)+global_par_kdid*x(17))/(1+global_par_k14di*x(4));
% assignmentRule: variable = Vih1
	global_par_Vih1=global_par_kih1+global_par_kih1a*x(13)+global_par_kih1b*x(15)+global_par_kih1e*x(18)+global_par_kih1d*x(17);
% assignmentRule: variable = Vsa
	global_par_Vsa=(global_par_ksaa+global_par_ksab*x(25))*x(20);
% assignmentRule: variable = Vse
	global_par_Vse=(global_par_ksea+global_par_kseb*x(25))*x(20);
% assignmentRule: variable = CycET
	x(19)=x(18)+x(29);
% assignmentRule: variable = preMPF
	x(23)=x(21)+x(22);

% Reaction: id = Mass_accumulation, name = Mass accumulation
	reaction_Mass_accumulation=compartment_cell*Function_for_Mass_accumulation(x(20), global_par_MaxMass, compartment_cell, global_par_mu);

% Reaction: id = Synthesis_of_MPF, name = Synthesis of CycB
	reaction_Synthesis_of_MPF=compartment_cell*Function_for_Synthesis_of_MPF(global_par_Vsb, compartment_cell);

% Reaction: id = Deg_of_MPF, name = Deg. of MPF
	reaction_Deg_of_MPF=compartment_cell*Function_for_Deg__of_MPF(x(15), global_par_Vdb, compartment_cell);

% Reaction: id = activation_of_MPF_from_pB_by_Cdc25, name = activation of MPF from pB by Cdc25
	reaction_activation_of_MPF_from_pB_by_Cdc25=compartment_cell*Function_for_activation_of_MPF_from_pB_by_Cdc25(global_par_V25, compartment_cell, x(21));

% Reaction: id = inactivation_of_MPFby_Wee1, name = inactivation of MPFby Wee1
	reaction_inactivation_of_MPFby_Wee1=compartment_cell*Function_for_inactivation_of_MPFby_Wee1(x(15), global_par_Vwee, compartment_cell);

% Reaction: id = assoc_of_MPF_with_CKI, name = Assoc. of MPF with CKI
	reaction_assoc_of_MPF_with_CKI=compartment_cell*Function_for_assoc__of_MPF_with_CKI(x(11), x(15), compartment_cell, global_par_kassb);

% Reaction: id = dissoc_1, name = dissoc1 of BCKI
	reaction_dissoc_1=compartment_cell*Function_for_dissoc1(x(3), compartment_cell, global_par_kdissb);

% Reaction: id = deg_of_pB, name = Deg. of pB
	reaction_deg_of_pB=compartment_cell*Function_for_deg__of_pB(global_par_Vdb, compartment_cell, x(21));

% Reaction: id = assoc_of_pB_with_CKI, name = Assoc. of pB with CKI
	reaction_assoc_of_pB_with_CKI=compartment_cell*Function_for_assoc__of_pB_with_CKI(x(11), compartment_cell, global_par_kassb, x(21));

% Reaction: id = dissoc_2, name = dissoc2 of pBCKI
	reaction_dissoc_2=compartment_cell*Function_for_dissoc2(compartment_cell, global_par_kdissb, x(22));

% Reaction: id = Cdc25_action, name = Cdc25 action
	reaction_Cdc25_action=compartment_cell*Function_for_Cdc25_action(global_par_V25, compartment_cell, x(22));

% Reaction: id = Wee1_action, name = BCKI phosphophorylation by Wee1
	reaction_Wee1_action=compartment_cell*Function_for_Wee1_action(x(3), global_par_Vwee, compartment_cell);

% Reaction: id = Deg_of_CycB_moeity__in_BCKI, name = Deg. of CycB moeity  in BCKI
	reaction_Deg_of_CycB_moeity__in_BCKI=compartment_cell*Function_for_Deg__of_CycB_moeity__in_BCKI(x(3), global_par_Vdb, compartment_cell);

% Reaction: id = Deg_of_CKI_moeity_in_BCKI, name = Deg. of CKI moeity in BCKI
	reaction_Deg_of_CKI_moeity_in_BCKI=compartment_cell*Function_for_Deg__of_CKI_moeity_in_BCKI(x(3), global_par_Vdi, compartment_cell);

% Reaction: id = Deg_of_pB_moeity_in_pBCKI, name = Deg. of pB moeity in pBCKI
	reaction_Deg_of_pB_moeity_in_pBCKI=compartment_cell*Function_for_Deg__of_pB_moeity_in_pBCKI(global_par_Vdb, compartment_cell, x(22));

% Reaction: id = Deg_of_CKI_moeity_in_pBCKI, name = Deg. of CKI moeity in pBCKI
	reaction_Deg_of_CKI_moeity_in_pBCKI=compartment_cell*Function_for_Deg__of_CKI_moeity_in_pBCKI(global_par_Vdi, compartment_cell, x(22));

% Reaction: id = Synthesis_of_CKI, name = Synthesis of CKI
	reaction_Synthesis_of_CKI=compartment_cell*Function_for_Synthesis_of_CKI(global_par_Vsi, compartment_cell);

% Reaction: id = Deg_of_CKI, name = Deg. of CKI
	reaction_Deg_of_CKI=compartment_cell*Function_for_Deg__of_CKI(x(11), global_par_Vdi, compartment_cell);

% Reaction: id = Assoc_of_CKI_with_CycA, name = Assoc. of CKI with CycA
	reaction_Assoc_of_CKI_with_CycA=compartment_cell*Function_for_Assoc__of_CKI_with_CycA(x(11), x(13), compartment_cell, global_par_kassa);

% Reaction: id = dissoc_3, name = dissoc3 of TriA
	reaction_dissoc_3=compartment_cell*Function_for_dissoc3(x(27), compartment_cell, global_par_kdissa);

% Reaction: id = Deg_of_CKI_moeity_in_TriA, name = Deg. of CKI moeity in TriA
	reaction_Deg_of_CKI_moeity_in_TriA=compartment_cell*Function_for_Deg__of_CKI_moeity_in_TriA(x(27), global_par_Vdi, compartment_cell);

% Reaction: id = Deg_of_CycA_moeity_in_TriA, name = Deg. of CycA moeity in TriA
	reaction_Deg_of_CycA_moeity_in_TriA=compartment_cell*Function_for_Deg__of_CycA_moeity_in_TriA(x(27), global_par_Vda, compartment_cell);

% Reaction: id = Assoc_of_CKI_with_CycE, name = Assoc. of CKI with CycE
	reaction_Assoc_of_CKI_with_CycE=compartment_cell*Function_for_Assoc__of_CKI_with_CycE(x(11), x(18), compartment_cell, global_par_kasse);

% Reaction: id = dissoc_4, name = dissoc4 of TriE
	reaction_dissoc_4=compartment_cell*Function_for_dissoc4(x(29), compartment_cell, global_par_kdisse);

% Reaction: id = Deg_of_CKI_moeity_in_TriE, name = Deg. of CKI moeity in TriE
	reaction_Deg_of_CKI_moeity_in_TriE=compartment_cell*Function_for_Deg__of_CKI_moeity_in_TriE(x(29), global_par_Vdi, compartment_cell);

% Reaction: id = Deg_of_CycE_moeity_in_TriE, name = Deg. of CycE moeity in TriE
	reaction_Deg_of_CycE_moeity_in_TriE=compartment_cell*Function_for_Deg__of_CycE_moeity_in_TriE(x(29), global_par_Vde, compartment_cell);

% Reaction: id = Synthesis_of_CycA_by_TFE, name = Synthesis of CycA by TFE
	reaction_Synthesis_of_CycA_by_TFE=compartment_cell*Function_for_Synthesis_of_CycA_by_TFE(global_par_Vsa, compartment_cell);

% Reaction: id = Deg_of_CycA, name = Deg. of CycA
	reaction_Deg_of_CycA=compartment_cell*Function_for_Deg__of_CycA(x(13), global_par_Vda, compartment_cell);

% Reaction: id = Synthesis_of_CycE_by_TFE, name = Synthesis of CycE by TFE
	reaction_Synthesis_of_CycE_by_TFE=compartment_cell*Function_for_Synthesis_of_CycE_by_TFE(global_par_Vse, compartment_cell);

% Reaction: id = Deg_of_CycE, name = Deg. of CycE
	reaction_Deg_of_CycE=compartment_cell*Function_for_Deg__of_CycE(x(18), global_par_Vde, compartment_cell);

% Reaction: id = activation_of_APCP, name = activation of APCP
	reaction_activation_of_APCP=compartment_cell*Function_for_activation_of_APCP(x(1), x(15), global_par_Jaie, compartment_cell, global_par_kaie);

% Reaction: id = inactivation_1, name = inactivation of APCp
	reaction_inactivation_1=compartment_cell*Function_for_inactivation1(x(2), global_par_Jiie, compartment_cell, global_par_kiie);

% Reaction: id = Synthesis_of_Cdc20i, name = Synthesis of Cdc20i
	reaction_Synthesis_of_Cdc20i=compartment_cell*Function_for_Synthesis_of_Cdc20i(x(15), global_par_J20, compartment_cell, global_par_ks20a, global_par_ks20b, global_par_n20);

% Reaction: id = Deg_of_Cdc20i, name = Deg. of Cdc20i
	reaction_Deg_of_Cdc20i=compartment_cell*Function_for_Deg__of_Cdc20i(x(6), compartment_cell, global_par_kd20);

% Reaction: id = activation_of_Cdc20i, name = activation of Cdc20i
	reaction_activation_of_Cdc20i=compartment_cell*Function_for_activation_of_Cdc20i(x(2), x(6), global_par_Ja20, compartment_cell, global_par_ka20);

% Reaction: id = inactivation_2, name = inactivation of Cdc20A
	reaction_inactivation_2=compartment_cell*Function_for_inactivation2(x(5), global_par_Ji20, compartment_cell, global_par_ki20);

% Reaction: id = degradation, name = Deg.of CDC20A
	reaction_degradation=compartment_cell*Function_for_degradation(x(5), compartment_cell, global_par_kd20);

% Reaction: id = activation_of_Cdh1, name = activation of Cdh1
	reaction_activation_of_Cdh1=compartment_cell*Function_for_activation_of_Cdh1(x(10), global_par_Jah1, global_par_Vah1, compartment_cell);

% Reaction: id = inactivation__of_Cdh1, name = inactivation  of Cdh1
	reaction_inactivation__of_Cdh1=compartment_cell*Function_for_inactivation__of_Cdh1(x(9), global_par_Jih1, global_par_Vih1, compartment_cell);

%Event: id=Event
	event_Event=(x(15)-global_par_KEZ) < 0;

	if(event_Event) 
		x(20)=0.5*x(20);
	end

	xdot=zeros(30,1);
	
% Species:   id = APC, name = APC, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = APCP, name = APCp, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_activation_of_APCP) + (-1.0 * reaction_inactivation_1));
	
% Species:   id = BCKI, name = BCKI, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_assoc_of_MPF_with_CKI) + (-1.0 * reaction_dissoc_1) + ( 1.0 * reaction_Cdc25_action) + (-1.0 * reaction_Wee1_action) + (-1.0 * reaction_Deg_of_CycB_moeity__in_BCKI) + (-1.0 * reaction_Deg_of_CKI_moeity_in_BCKI));
	
% Species:   id = Cdc14, name = Cdc14, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = Cdc20A, name = Cdc20A, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_activation_of_Cdc20i) + (-1.0 * reaction_inactivation_2) + (-1.0 * reaction_degradation));
	
% Species:   id = Cdc20i, name = Cdc20i, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_Synthesis_of_Cdc20i) + (-1.0 * reaction_Deg_of_Cdc20i) + (-1.0 * reaction_activation_of_Cdc20i) + ( 1.0 * reaction_inactivation_2));
	
% Species:   id = Cdc20T, name = Cdc20T, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = Cdc25P, name = Cdc25p, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = Cdh1, name = Cdh1, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_activation_of_Cdh1) + (-1.0 * reaction_inactivation__of_Cdh1));
	
% Species:   id = Cdh1i, name = Cdh1i, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = CKI, name = CKI, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*((-1.0 * reaction_assoc_of_MPF_with_CKI) + ( 1.0 * reaction_dissoc_1) + (-1.0 * reaction_assoc_of_pB_with_CKI) + ( 1.0 * reaction_dissoc_2) + ( 1.0 * reaction_Deg_of_CycB_moeity__in_BCKI) + ( 1.0 * reaction_Deg_of_pB_moeity_in_pBCKI) + ( 1.0 * reaction_Synthesis_of_CKI) + (-1.0 * reaction_Deg_of_CKI) + (-1.0 * reaction_Assoc_of_CKI_with_CycA) + ( 1.0 * reaction_dissoc_3) + ( 1.0 * reaction_Deg_of_CycA_moeity_in_TriA) + (-1.0 * reaction_Assoc_of_CKI_with_CycE) + ( 1.0 * reaction_dissoc_4) + ( 1.0 * reaction_Deg_of_CycE_moeity_in_TriE));
	
% Species:   id = CKIT, name = CKIT, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = CycA, name = CycA, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*((-1.0 * reaction_Assoc_of_CKI_with_CycA) + ( 1.0 * reaction_dissoc_3) + ( 1.0 * reaction_Deg_of_CKI_moeity_in_TriA) + ( 1.0 * reaction_Synthesis_of_CycA_by_TFE) + (-1.0 * reaction_Deg_of_CycA));
	
% Species:   id = CycAT, name = CycAT, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = CycB, name = CycB, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*(( 1.0 * reaction_Synthesis_of_MPF) + (-1.0 * reaction_Deg_of_MPF) + ( 1.0 * reaction_activation_of_MPF_from_pB_by_Cdc25) + (-1.0 * reaction_inactivation_of_MPFby_Wee1) + (-1.0 * reaction_assoc_of_MPF_with_CKI) + ( 1.0 * reaction_dissoc_1) + ( 1.0 * reaction_Deg_of_CKI_moeity_in_BCKI));
	
% Species:   id = CycBT, name = CycBT, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = CycD, name = CycD, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = CycE, name = CycE, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*((-1.0 * reaction_Assoc_of_CKI_with_CycE) + ( 1.0 * reaction_dissoc_4) + ( 1.0 * reaction_Deg_of_CKI_moeity_in_TriE) + ( 1.0 * reaction_Synthesis_of_CycE_by_TFE) + (-1.0 * reaction_Deg_of_CycE));
	
% Species:   id = CycET, name = CycET, involved in a rule 	xdot(19) = x(19);
	
% Species:   id = Mass, name = Mass, affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*(( 1.0 * reaction_Mass_accumulation));
	
% Species:   id = pB, name = pB, affected by kineticLaw
	xdot(21) = (1/(compartment_cell))*((-1.0 * reaction_activation_of_MPF_from_pB_by_Cdc25) + ( 1.0 * reaction_inactivation_of_MPFby_Wee1) + (-1.0 * reaction_deg_of_pB) + (-1.0 * reaction_assoc_of_pB_with_CKI) + ( 1.0 * reaction_dissoc_2) + ( 1.0 * reaction_Deg_of_CKI_moeity_in_pBCKI));
	
% Species:   id = pBCKI, name = pBCKI, affected by kineticLaw
	xdot(22) = (1/(compartment_cell))*(( 1.0 * reaction_assoc_of_pB_with_CKI) + (-1.0 * reaction_dissoc_2) + (-1.0 * reaction_Cdc25_action) + ( 1.0 * reaction_Wee1_action) + (-1.0 * reaction_Deg_of_pB_moeity_in_pBCKI) + (-1.0 * reaction_Deg_of_CKI_moeity_in_pBCKI));
	
% Species:   id = preMPF, name = preMPF, involved in a rule 	xdot(23) = x(23);
	
% Species:   id = TFB, name = TFB, involved in a rule 	xdot(24) = x(24);
	
% Species:   id = TFE, name = TFE, involved in a rule 	xdot(25) = x(25);
	
% Species:   id = TFI, name = TFI, involved in a rule 	xdot(26) = x(26);
	
% Species:   id = TriA, name = TriA, affected by kineticLaw
	xdot(27) = (1/(compartment_cell))*(( 1.0 * reaction_Assoc_of_CKI_with_CycA) + (-1.0 * reaction_dissoc_3) + (-1.0 * reaction_Deg_of_CKI_moeity_in_TriA) + (-1.0 * reaction_Deg_of_CycA_moeity_in_TriA));
	
% Species:   id = TriB, name = TriB, involved in a rule 	xdot(28) = x(28);
	
% Species:   id = TriE, name = TriE, affected by kineticLaw
	xdot(29) = (1/(compartment_cell))*(( 1.0 * reaction_Assoc_of_CKI_with_CycE) + (-1.0 * reaction_dissoc_4) + (-1.0 * reaction_Deg_of_CKI_moeity_in_TriE) + (-1.0 * reaction_Deg_of_CycE_moeity_in_TriE));
	
% Species:   id = Wee1, name = Wee1, involved in a rule 	xdot(30) = x(30);
end

function z=Mass_Action_1(k1,S1), z=(k1*S1);end

function z=MichaelisMenten(M1,J1,k1,S1), z=(k1*S1*M1/(J1+S1));end

function z=Function_for_Synthesis_of_MPF(Vsb,cell), z=(Vsb/cell);end

function z=Function_for_Deg__of_MPF(CycB,Vdb,cell,Mass_Action_1(Vdb), z=(CycB)/cell);end

function z=Function_for_activation_of_MPF_from_pB_by_Cdc25(V25,cell,pB,Mass_Action_1(V25), z=(pB)/cell);end

function z=Function_for_inactivation_of_MPFby_Wee1(CycB,Vwee,cell,Mass_Action_1(Vwee), z=(CycB)/cell);end

function z=Function_for_dissoc1(BCKI,cell,kdissb,Mass_Action_1(kdissb), z=(BCKI)/cell);end

function z=Function_for_deg__of_pB(Vdb,cell,pB,Mass_Action_1(Vdb), z=(pB)/cell);end

function z=GK(A1,A2,A3,A4), z=(2*A4*A1/(A2-A1+A3*A2+A4*A1+((A2-A1+A3*A2+A4*A1)^2-4*(A2-A1)*A4*A1)^(1/2)));end

function z=Mass_Action_2(k1,S1,S2), z=(k1*S1*S2);end

function z=Function_for_assoc__of_pB_with_CKI(CKI,cell,kassb,pB,Mass_Action_2(kassb,pB), z=(CKI)/cell);end

function z=Function_for_dissoc2(cell,kdissb,pBCKI,Mass_Action_1(kdissb), z=(pBCKI)/cell);end

function z=Function_for_Cdc25_action(V25,cell,pBCKI,Mass_Action_1(V25), z=(pBCKI)/cell);end

function z=Function_for_Wee1_action(BCKI,Vwee,cell,Mass_Action_1(Vwee), z=(BCKI)/cell);end

function z=Function_for_Deg__of_CycB_moeity__in_BCKI(BCKI,Vdb,cell,Mass_Action_1(Vdb), z=(BCKI)/cell);end

function z=Function_for_Deg__of_CKI_moeity_in_BCKI(BCKI,Vdi,cell,Mass_Action_1(Vdi), z=(BCKI)/cell);end

function z=Function_for_Deg__of_pB_moeity_in_pBCKI(Vdb,cell,pBCKI,Mass_Action_1(Vdb), z=(pBCKI)/cell);end

function z=Function_for_Deg__of_CKI_moeity_in_pBCKI(Vdi,cell,pBCKI,Mass_Action_1(Vdi), z=(pBCKI)/cell);end

function z=Function_for_Synthesis_of_CKI(Vsi,cell), z=(Vsi/cell);end

function z=Function_for_Deg__of_CKI(CKI,Vdi,cell,Mass_Action_1(Vdi), z=(CKI)/cell);end

function z=Function_for_Assoc__of_CKI_with_CycA(CKI,CycA,cell,kassa,Mass_Action_2(kassa,CKI), z=(CycA)/cell);end

function z=Function_for_dissoc3(TriA,cell,kdissa,Mass_Action_1(kdissa), z=(TriA)/cell);end

function z=Function_for_Deg__of_CKI_moeity_in_TriA(TriA,Vdi,cell,Mass_Action_1(Vdi), z=(TriA)/cell);end

function z=Function_for_Deg__of_CycA_moeity_in_TriA(TriA,Vda,cell,Mass_Action_1(Vda), z=(TriA)/cell);end

function z=Function_for_Assoc__of_CKI_with_CycE(CKI,CycE,cell,kasse,Mass_Action_2(kasse,CKI), z=(CycE)/cell);end

function z=Function_for_dissoc4(TriE,cell,kdisse,Mass_Action_1(kdisse), z=(TriE)/cell);end

function z=Function_for_Deg__of_CKI_moeity_in_TriE(TriE,Vdi,cell,Mass_Action_1(Vdi), z=(TriE)/cell);end

function z=Function_for_Deg__of_CycE_moeity_in_TriE(TriE,Vde,cell,Mass_Action_1(Vde), z=(TriE)/cell);end

function z=Function_for_Synthesis_of_CycA_by_TFE(Vsa,cell), z=(Vsa/cell);end

function z=Function_for_Deg__of_CycA(CycA,Vda,cell,Mass_Action_1(Vda), z=(CycA)/cell);end

function z=Function_for_Synthesis_of_CycE_by_TFE(Vse,cell), z=(Vse/cell);end

function z=Function_for_Deg__of_CycE(CycE,Vde,cell,Mass_Action_1(Vde), z=(CycE)/cell);end

function z=Function_for_activation_of_APCP(APC,CycB,Jaie,cell,kaie,MichaelisMenten(CycB,Jaie,kaie), z=(APC)/cell);end

function z=Function_for_inactivation1(APCP,Jiie,cell,kiie,MichaelisMenten(1,Jiie,kiie), z=(APCP)/cell);end

function z=Function_for_Deg__of_Cdc20i(Cdc20i,cell,kd20,Mass_Action_1(kd20), z=(Cdc20i)/cell);end

function z=Function_for_activation_of_Cdc20i(APCP,Cdc20i,Ja20,cell,ka20,MichaelisMenten(APCP,Ja20,ka20), z=(Cdc20i)/cell);end

function z=Function_for_inactivation2(Cdc20A,Ji20,cell,ki20,MichaelisMenten(1,Ji20,ki20), z=(Cdc20A)/cell);end

function z=Function_for_degradation(Cdc20A,cell,kd20,Mass_Action_1(kd20), z=(Cdc20A)/cell);end

function z=Function_for_activation_of_Cdh1(Cdh1i,Jah1,Vah1,cell,MichaelisMenten(Vah1,Jah1,1), z=(Cdh1i)/cell);end

function z=Function_for_inactivation__of_Cdh1(Cdh1,Jih1,Vih1,cell,MichaelisMenten(Vih1,Jih1,1), z=(Cdh1)/cell);end

function z=Mass_Action_0(k1), z=(k1);end

function z=Function_for_Mass_accumulation(Mass,MaxMass,cell,mu), z=(Mass_Action_0(mu*Mass*(1-Mass/MaxMass))/cell);end

function z=Function_for_assoc__of_MPF_with_CKI(CKI,CycB,cell,kassb,Mass_Action_2(kassb,CycB), z=(CKI)/cell);end

function z=Function_for_Synthesis_of_Cdc20i(CycB,J20,cell,ks20a,ks20b,n20), z=(Mass_Action_0(ks20a+ks20b*CycB^n20/(J20^n20+CycB^n20))/cell);end

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


