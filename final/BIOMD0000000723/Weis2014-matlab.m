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
% Model name = Weis2014 - Data driven Mammalian Cell Cycle Model
%
% is http://identifiers.org/biomodels.db/MODEL1811220001
% is http://identifiers.org/biomodels.db/BIOMD0000000723
%


function main()
%Initial conditions vector
	x0=zeros(25,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 14.08011;
	x0(4) = 0.716055;
	x0(5) = 1.388537;
	x0(6) = 0.1071;
	x0(7) = 0.27627;
	x0(8) = 0.53642;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.003801725709734;
	x0(12) = 0.042969690554;
	x0(13) = 0.01;
	x0(14) = 0.045866;
	x0(15) = 0.067925;
	x0(16) = 2.3652;
	x0(17) = 0.072513;
	x0(18) = 0.60183432;
	x0(19) = 0.99736;
	x0(20) = 2.3552058;
	x0(21) = 0.0211544;
	x0(22) = 0.81078;
	x0(23) = 0.2727;
	x0(24) = 0.27315;
	x0(25) = 1.0;


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
% Parameter:   id =  a1frac, name = a1frac
	global_par_a1frac=0.081283;
% Parameter:   id =  FB, name = FB
	global_par_FB=2.0;
% Parameter:   id =  FE, name = FE
	global_par_FE=25.0;
% Parameter:   id =  J15, name = J15
	global_par_J15=0.1;
% Parameter:   id =  J17, name = J17
	global_par_J17=0.3;
% Parameter:   id =  J20, name = J20
	global_par_J20=100.0;
% Parameter:   id =  Ja20, name = Ja20
	global_par_Ja20=0.005;
% Parameter:   id =  Ja25, name = Ja25
	global_par_Ja25=0.005;
% Parameter:   id =  JaAPC, name = JaAPC
	global_par_JaAPC=0.01;
% Parameter:   id =  Jafb, name = Jafb
	global_par_Jafb=0.01;
% Parameter:   id =  Jah1, name = Jah1
	global_par_Jah1=0.15;
% Parameter:   id =  Jatf, name = Jatf
	global_par_Jatf=0.01;
% Parameter:   id =  Jawee, name = Jawee
	global_par_Jawee=0.05;
% Parameter:   id =  Jaweeb, name = Jaweeb
	global_par_Jaweeb=0.05;
% Parameter:   id =  Ji20, name = Ji20
	global_par_Ji20=0.005;
% Parameter:   id =  Ji25, name = Ji25
	global_par_Ji25=0.031623;
% Parameter:   id =  JiAPC, name = JiAPC
	global_par_JiAPC=0.001;
% Parameter:   id =  Jifb, name = Jifb
	global_par_Jifb=0.001;
% Parameter:   id =  Jih1, name = Jih1
	global_par_Jih1=0.01;
% Parameter:   id =  Jitf, name = Jitf
	global_par_Jitf=0.01;
% Parameter:   id =  Jiwee, name = Jiwee
	global_par_Jiwee=0.05;
% Parameter:   id =  k10, name = k10
	global_par_k10=88.175;
% Parameter:   id =  k15, name = k15
	global_par_k15=5.2905;
% Parameter:   id =  k16, name = k16
	global_par_k16=44.0875;
% Parameter:   id =  k17, name = k17
	global_par_k17=2645.25;
% Parameter:   id =  k17p, name = k17p
	global_par_k17p=2.64525;
% Parameter:   id =  k18, name = k18
	global_par_k18=176.35;
% Parameter:   id =  K19, name = K19
	global_par_K19=35.27;
% Parameter:   id =  K19a, name = K19a
	global_par_K19a=440.875;
% Parameter:   id =  K20, name = K20
	global_par_K20=176.35;
% Parameter:   id =  K21, name = K21
	global_par_K21=1.0;
% Parameter:   id =  K22, name = K22
	global_par_K22=3.527;
% Parameter:   id =  K23a, name = K23a
	global_par_K23a=0.17635;
% Parameter:   id =  K23b, name = K23b
	global_par_K23b=1.7635;
% Parameter:   id =  k24, name = k24
	global_par_k24=1763.5;
% Parameter:   id =  k25p, name = k25p
	global_par_k25p=61.474;
% Parameter:   id =  k25pp, name = k25pp
	global_par_k25pp=30515.96;
% Parameter:   id =  K26, name = K26
	global_par_K26=17635.0;
% Parameter:   id =  K26R, name = K26R
	global_par_K26R=35.27;
% Parameter:   id =  k9, name = k9
	global_par_k9=45.851;
% Parameter:   id =  ka20, name = ka20
	global_par_ka20=292.669;
% Parameter:   id =  ka25, name = ka25
	global_par_ka25=8.85277;
% Parameter:   id =  kaAPC, name = kaAPC
	global_par_kaAPC=2.33401;
% Parameter:   id =  kacdh1, name = kacdh1
	global_par_kacdh1=264.525;
% Parameter:   id =  kafab, name = kafab
	global_par_kafab=0.296268;
% Parameter:   id =  kah1p, name = kah1p
	global_par_kah1p=155.8708;
% Parameter:   id =  kah1pp, name = kah1pp
	global_par_kah1pp=176350.0;
% Parameter:   id =  kasa, name = kasa
	global_par_kasa=19733.57;
% Parameter:   id =  kase, name = kase
	global_par_kase=19733.57;
% Parameter:   id =  katfpp, name = katfpp
	global_par_katfpp=58.70692;
% Parameter:   id =  katfppp, name = katfppp
	global_par_katfppp=97.80724;
% Parameter:   id =  katfpppp, name = katfpppp
	global_par_katfpppp=77.63935;
% Parameter:   id =  kaweep, name = kaweep
	global_par_kaweep=13.8188;
% Parameter:   id =  kd20, name = kd20
	global_par_kd20=17.635;
% Parameter:   id =  kdap, name = kdap
	global_par_kdap=0.516094;
% Parameter:   id =  kdapp, name = kdapp
	global_par_kdapp=2645.25;
% Parameter:   id =  kdbp, name = kdbp
	global_par_kdbp=0.853181;
% Parameter:   id =  kdbpp, name = kdbpp
	global_par_kdbpp=176.35;
% Parameter:   id =  kdbppp, name = kdbppp
	global_par_kdbppp=387.97;
% Parameter:   id =  kde2fcdc20, name = kde2fcdc20
	global_par_kde2fcdc20=881.75;
% Parameter:   id =  kde2fcdh1, name = kde2fcdh1
	global_par_kde2fcdh1=1.7635;
% Parameter:   id =  kdep, name = kdep
	global_par_kdep=1.961012;
% Parameter:   id =  kdepp, name = kdepp
	global_par_kdepp=1.973357;
% Parameter:   id =  kdeppp, name = kdeppp
	global_par_kdeppp=176.35;
% Parameter:   id =  kdepppp, name = kdepppp
	global_par_kdepppp=3527.0;
% Parameter:   id =  kdia, name = kdia
	global_par_kdia=196.0783;
% Parameter:   id =  kdie, name = kdie
	global_par_kdie=196.0783;
% Parameter:   id =  kdip, name = kdip
	global_par_kdip=196.0783;
% Parameter:   id =  kdipp, name = kdipp
	global_par_kdipp=978.0688;
% Parameter:   id =  kdippp, name = kdippp
	global_par_kdippp=1960.837;
% Parameter:   id =  kdipppp, name = kdipppp
	global_par_kdipppp=978.0688;
% Parameter:   id =  ke2f, name = ke2f
	global_par_ke2f=4.2324;
% Parameter:   id =  ki20, name = ki20
	global_par_ki20=17.635;
% Parameter:   id =  ki25, name = ki25
	global_par_ki25=35.27;
% Parameter:   id =  kiAPC, name = kiAPC
	global_par_kiAPC=3.862259;
% Parameter:   id =  kifb, name = kifb
	global_par_kifb=9.827456;
% Parameter:   id =  kih1pp, name = kih1pp
	global_par_kih1pp=17635.0;
% Parameter:   id =  kih1ppp, name = kih1ppp
	global_par_kih1ppp=1763.5;
% Parameter:   id =  kitfp, name = kitfp
	global_par_kitfp=48.96181;
% Parameter:   id =  kitfpp, name = kitfpp
	global_par_kitfpp=19.60836;
% Parameter:   id =  kitfppp, name = kitfppp
	global_par_kitfppp=19.60836;
% Parameter:   id =  kiwee, name = kiwee
	global_par_kiwee=0.145;
% Parameter:   id =  ks20pp, name = ks20pp
	global_par_ks20pp=105.81;
% Parameter:   id =  ksap, name = ksap
	global_par_ksap=16.75325;
% Parameter:   id =  ksapp, name = ksapp
	global_par_ksapp=0.10581;
% Parameter:   id =  ksappp, name = ksappp
	global_par_ksappp=20.28025;
% Parameter:   id =  ksbp, name = ksbp
	global_par_ksbp=6.7013;
% Parameter:   id =  ksbpp, name = ksbpp
	global_par_ksbpp=15.8715;
% Parameter:   id =  ksbppp, name = ksbppp
	global_par_ksbppp=1.7635;
% Parameter:   id =  ksbpppp, name = ksbpppp
	global_par_ksbpppp=0.617225;
% Parameter:   id =  ksep, name = ksep
	global_par_ksep=1.562461;
% Parameter:   id =  ksepp, name = ksepp
	global_par_ksepp=8.8175;
% Parameter:   id =  ksip, name = ksip
	global_par_ksip=390.9926;
% Parameter:   id =  kweep, name = kweep
	global_par_kweep=234.8312;
% Parameter:   id =  kweepp, name = kweepp
	global_par_kweepp=17635.0;
% Parameter:   id =  LA, name = LA
	global_par_LA=30.0;
% Parameter:   id =  LB, name = LB
	global_par_LB=0.5;
% Parameter:   id =  LD, name = LD
	global_par_LD=3.3;
% Parameter:   id =  LE, name = LE
	global_par_LE=10.0;
% Parameter:   id =  PP1T, name = PP1T
	global_par_PP1T=1.0;
% Parameter:   id =  u, name = u
	global_par_u=0.693937;
% Parameter:   id =  k24r, name = k24r
	global_par_k24r=176.35;
% Parameter:   id =  kiweeb, name = kiweeb
	global_par_kiweeb=5.0;
% Parameter:   id =  v29, name = v29
% Parameter:   id =  v30, name = v30
% Parameter:   id =  v43, name = v43
% Parameter:   id =  v44, name = v44
% Parameter:   id =  v45, name = v45
% Parameter:   id =  v46, name = v46
% Parameter:   id =  v47, name = v47
% Parameter:   id =  v48, name = v48
% Parameter:   id =  v49, name = v49
% Parameter:   id =  v50, name = v50
% Parameter:   id =  v51, name = v51
% Parameter:   id =  v52, name = v52
% Parameter:   id =  Vatf, name = Vatf
% Parameter:   id =  Vde, name = Vde
% Parameter:   id =  Vda, name = Vda
% Parameter:   id =  TFAB, name = TFAB
% Parameter:   id =  Vsi, name = Vsi
% Parameter:   id =  Vsb, name = Vsb
% Parameter:   id =  Vdb, name = Vdb
% Parameter:   id =  Wee1, name = Wee1
% Parameter:   id =  Vwee, name = Vwee
% Parameter:   id =  Cdc25, name = Cdc25
% Parameter:   id =  V25, name = V25
% Parameter:   id =  Vdi, name = Vdi
% Parameter:   id =  TriE, name = TriE
% Parameter:   id =  freeCK1, name = freeCK1
% Parameter:   id =  CdkCycBCK1, name = CdkCycBCK1
% Parameter:   id =  Cdk1PCycB, name = Cdk1PCycB
% Parameter:   id =  PP1A, name = PP1A
% assignmentRule: variable = v29
	global_par_v29=x(7)*global_par_K20*((x(9)+x(10))*global_par_LD+global_par_LA*(x(11)+x(12))+global_par_LB*x(13)+global_par_LE*x(14));
% assignmentRule: variable = v30
	global_par_v30=x(8)*global_par_K20*(global_par_LD*(x(9)+x(10))+global_par_LA*(x(11)+x(12))+global_par_LB*x(13)+global_par_LE*x(14));
% assignmentRule: variable = v43
	global_par_v43=x(6)*global_par_K20*(global_par_LD*(x(9)+x(10))+global_par_LA*(x(11)+x(12))+global_par_LB*x(13)+global_par_LE*x(14));
% assignmentRule: variable = v45
	global_par_v45=global_par_K26R*x(7);
% assignmentRule: variable = v46
	global_par_v46=x(4)*(global_par_K23a*(x(11)+x(12))+global_par_K23b*x(13));
% assignmentRule: variable = v47
	global_par_v47=global_par_K22*x(5);
% assignmentRule: variable = v48
	global_par_v48=global_par_K26*x(4)*x(6);
% assignmentRule: variable = v49
	global_par_v49=global_par_K26R*x(8);
% assignmentRule: variable = v50
	global_par_v50=global_par_K26*x(6)*x(5);
% assignmentRule: variable = v51
	global_par_v51=global_par_K22*x(8);
% assignmentRule: variable = v52
	global_par_v52=x(7)*(global_par_K23a*(x(11)+x(12))+global_par_K23b*x(13));
% assignmentRule: variable = Vatf
	global_par_Vatf=global_par_katfpp*(x(11)+x(12))+global_par_katfppp*x(14)+global_par_katfpppp*x(9);
% assignmentRule: variable = Vde
	global_par_Vde=global_par_kdep+global_par_kdepp*x(14)+global_par_kdeppp*(x(11)+x(12))+global_par_kdepppp*x(13);
% assignmentRule: variable = Vda
	global_par_Vda=global_par_kdap+global_par_kdapp*x(23)+global_par_kacdh1*x(19);
% assignmentRule: variable = TFAB
	global_par_TFAB=2*global_par_kafab*(x(11)+x(12))*global_par_Jifb/(global_par_kifb-global_par_kafab*(x(11)+x(12))+global_par_Jafb*global_par_kifb+global_par_kafab*(x(11)+x(12))*global_par_Jifb+((global_par_kifb-global_par_kafab*(x(11)+x(12))+global_par_Jafb*global_par_kifb+global_par_kafab*(x(11)+x(12))*global_par_Jifb)^2-4*(global_par_kifb-global_par_kafab*(x(11)+x(12)))*global_par_Jifb*global_par_kafab*(x(11)+x(12)))^(0.5));
% assignmentRule: variable = Vsb
	global_par_Vsb=global_par_ksbp+global_par_ksbpp*global_par_TFAB+global_par_ksbppp*x(13)+global_par_ksbpppp*x(4);
% assignmentRule: variable = Vsi
	global_par_Vsi=global_par_ksip;
% assignmentRule: variable = Vdb
	global_par_Vdb=global_par_kdbp+global_par_kdbpp*x(19)+global_par_kdbppp*x(23);
% assignmentRule: variable = Wee1
	global_par_Wee1=2*global_par_kaweep*global_par_Jiwee/(global_par_kiwee*(x(11)+x(12))+global_par_kiweeb*x(13)-global_par_kaweep+global_par_Jawee*(global_par_kiwee*(x(11)+x(12))+global_par_kiweeb*x(13))+global_par_kaweep*global_par_Jiwee+((global_par_kiwee*(x(11)+x(12))+global_par_kiweeb*x(13)-global_par_kaweep+global_par_Jawee*(global_par_kiwee*(x(11)+x(12))+global_par_kiweeb*x(13))+global_par_kaweep*global_par_Jiwee)^2-4*(global_par_kiwee*(x(11)+x(12))+global_par_kiweeb*x(13)-global_par_kaweep)*global_par_kaweep*global_par_Jawee)^(0.5));
% assignmentRule: variable = Cdc25
	global_par_Cdc25=2*global_par_ka25*x(13)*global_par_Ji25/(global_par_ki25-global_par_ka25*x(13)+global_par_Ja25*global_par_ki25+global_par_Ji25*global_par_ka25*x(13)+((global_par_ki25-global_par_ka25*x(13)+global_par_Ja25*global_par_ki25+global_par_Ji25*global_par_ka25*x(13))^2-4*(global_par_ki25-global_par_ka25*x(13))*global_par_Ja25*global_par_ka25*x(13))^(0.5));
% assignmentRule: variable = Vwee
	global_par_Vwee=global_par_kweep+global_par_kweepp*global_par_Wee1;
% assignmentRule: variable = Vdi
	global_par_Vdi=global_par_kdip+global_par_kdipp*(x(11)+x(12))+global_par_kdippp*x(13)+global_par_kdipppp*x(14);
% assignmentRule: variable = V25
	global_par_V25=global_par_k25p+global_par_k25pp*global_par_Cdc25;
% assignmentRule: variable = TriE
	global_par_TriE=x(17)-x(14);
% assignmentRule: variable = freeCK1
	global_par_freeCK1=x(18)-x(21)-global_par_TriE-x(10);
% assignmentRule: variable = CdkCycBCK1
	global_par_CdkCycBCK1=x(16)-x(13)-x(20);
% assignmentRule: variable = Cdk1PCycB
	global_par_Cdk1PCycB=x(16)-x(13);
% assignmentRule: variable = PP1A
	global_par_PP1A=global_par_PP1T/(global_par_K21*(global_par_FE*(x(11)+x(12)+x(14))+global_par_FB*x(13)+1));
% assignmentRule: variable = v44
	global_par_v44=x(3)*(global_par_K19a*(global_par_PP1T-global_par_PP1A)+global_par_K19*global_par_PP1A);

% Reaction: id = reaction, name = ERG synthesis
	reaction_reaction=compartment_cell*function_for_ERG(global_par_k15, x(2), global_par_J15);

% Reaction: id = reaction_1, name = ERG degradation
	reaction_reaction_1=compartment_cell*global_par_k16*x(1);

% Reaction: id = reaction_2, name = DRG synthesis through ERG
	reaction_reaction_2=compartment_cell*function_1k_1m(global_par_k17p, x(1));

% Reaction: id = reaction_3, name = DRG synthesis
	reaction_reaction_3=compartment_cell*function_for_DRG(global_par_k17, x(2), global_par_J17);

% Reaction: id = reaction_4, name = DRG degradation
	reaction_reaction_4=compartment_cell*global_par_k18*x(2);

% Reaction: id = reaction_13, name = E2F synthesis
	reaction_reaction_13=compartment_cell*function_1k_2m(global_par_ke2f, x(25), x(4));

% Reaction: id = reaction_14, name = E2F degradation through Cdc20
	reaction_reaction_14=compartment_cell*function_1k_2m(global_par_kde2fcdc20, x(4), x(23));

% Reaction: id = reaction_15, name = E2F degradation through Cdh1
	reaction_reaction_15=compartment_cell*function_1k_2m(global_par_kde2fcdh1, x(19), x(4));

% Reaction: id = reaction_18, name = pE2F degradation through Cdc20
	reaction_reaction_18=compartment_cell*function_1k_2m(global_par_kde2fcdc20, x(5), x(23));

% Reaction: id = reaction_19, name = pE2F degradation through Cdh1
	reaction_reaction_19=compartment_cell*function_1k_2m(global_par_kde2fcdh1, x(5), x(19));

% Reaction: id = reaction_22, name = active cyclin D synthesis
	reaction_reaction_22=compartment_cell*function_1k_1m(global_par_k9, x(2));

% Reaction: id = reaction_23, name = cyclin D activation 1
	reaction_reaction_23=compartment_cell*function_1k_1m(global_par_Vdi, x(10));

% Reaction: id = reaction_24, name = cyclin D activation 2
	reaction_reaction_24=compartment_cell*function_1k_1m(global_par_k24r, x(10));

% Reaction: id = reaction_25, name = active cyclin D inactivation
	reaction_reaction_25=compartment_cell*function_2k_1m(global_par_k24, x(9), global_par_freeCK1);

% Reaction: id = reaction_26, name = active cyclin D degradation
	reaction_reaction_26=compartment_cell*global_par_k10*x(9);

% Reaction: id = reaction_27, name = inactive cyclin D degradation
	reaction_reaction_27=compartment_cell*global_par_k10*x(10);

% Reaction: id = reaction_28, name = actCycACdk1 formation 1
	reaction_reaction_28=compartment_cell*function_for_actCycACdk1(global_par_a1frac, global_par_ksap, global_par_ksapp, x(4), global_par_ksappp, global_par_TFAB, x(25));

% Reaction: id = reaction_29, name = actCycACdk1 formation 2
	reaction_reaction_29=compartment_cell*function_2k_1m(global_par_a1frac, x(21), global_par_Vdi);

% Reaction: id = reaction_30, name = actCycACdk1 formation 3
	reaction_reaction_30=compartment_cell*function_2k_1m(global_par_a1frac, x(21), global_par_kdia);

% Reaction: id = reaction_31, name = actCycACdk1 degradation 1
	reaction_reaction_31=compartment_cell*global_par_Vda*x(11);

% Reaction: id = reaction_32, name = actCycACdk1 degradation 2
	reaction_reaction_32=compartment_cell*function_2k_1m(global_par_kasa, x(11), global_par_freeCK1);

% Reaction: id = reaction_33, name = actCycACdk2 formation 1
	reaction_reaction_33=compartment_cell*function_for_actCycACdk2_1(global_par_a1frac, global_par_ksap, global_par_ksapp, x(4), global_par_ksappp, global_par_TFAB, x(25));

% Reaction: id = reaction_34, name = actCycACdk2 formation 2
	reaction_reaction_34=compartment_cell*function_for_actCycACdk2_2(global_par_a1frac, global_par_Vdi, global_par_kdia, x(21));

% Reaction: id = reaction_35, name = actCycACdk2 degradation 1
	reaction_reaction_35=compartment_cell*global_par_Vda*x(12);

% Reaction: id = reaction_36, name = actCycACdk2 degradation 2
	reaction_reaction_36=compartment_cell*function_2k_1m(global_par_kasa, x(12), global_par_freeCK1);

% Reaction: id = reaction_37, name = cyclinB synthesis	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_37_k2=2.0;

	reaction_reaction_37=compartment_cell*function_2k_1m(global_par_Vsb, x(25), reaction_reaction_37_k2);

% Reaction: id = reaction_38, name = active cyclin B synthesis
	reaction_reaction_38=compartment_cell*function_1k_1m(global_par_V25, x(16));

% Reaction: id = reaction_39, name = active cyclinB degradation 1
	reaction_reaction_39=compartment_cell*global_par_V25*x(13);

% Reaction: id = reaction_40, name = active cyclinB degradation 2
	reaction_reaction_40=compartment_cell*global_par_Vdb*x(13);

% Reaction: id = reaction_41, name = active cyclinB degradation 3
	reaction_reaction_41=compartment_cell*global_par_Vwee*x(13);

% Reaction: id = reaction_42, name = cyclinE synthesis 1	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_42_k2=2.0;

	reaction_reaction_42=compartment_cell*function_2k_1m(global_par_ksep, x(25), reaction_reaction_42_k2);

% Reaction: id = reaction_43, name = cyclinE synthesis 2	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_43_k2=2.0;

	reaction_reaction_43=compartment_cell*function_2k_2m(global_par_ksepp, x(4), x(25), reaction_reaction_43_k2);

% Reaction: id = reaction_44, name = active cyclin E synthesis 1
	reaction_reaction_44=compartment_cell*function_for_2k(global_par_Vdi, global_par_TriE);

% Reaction: id = reaction_45, name = active cyclin E synthesis 2
	reaction_reaction_45=compartment_cell*function_for_2k(global_par_kdie, global_par_TriE);

% Reaction: id = reaction_46, name = active cyclin E degradation 1
	reaction_reaction_46=compartment_cell*global_par_Vde*x(14);

% Reaction: id = reaction_47, name = active cyclin E degradation 2
	reaction_reaction_47=compartment_cell*function_2k_1m(global_par_kase, x(14), global_par_freeCK1);

% Reaction: id = reaction_48, name = cyclinA synthesis	% Local Parameter:   id =  k0, name = k0
	reaction_reaction_48_k0=1.0;

	reaction_reaction_48=compartment_cell*function_for_actCycACdk1(reaction_reaction_48_k0, global_par_ksap, global_par_ksapp, x(4), global_par_ksappp, global_par_TFAB, x(25));

% Reaction: id = reaction_49, name = cyclinA degradation
	reaction_reaction_49=compartment_cell*global_par_Vda*x(15);

% Reaction: id = reaction_50, name = cyclinB degradation
	reaction_reaction_50=compartment_cell*global_par_Vdb*x(16);

% Reaction: id = reaction_51, name = cyclinE degradation
	reaction_reaction_51=compartment_cell*global_par_Vde*x(17);

% Reaction: id = reaction_53, name = CKI degradation
	reaction_reaction_53=compartment_cell*global_par_Vdi*x(18);

% Reaction: id = reaction_54, name = Cdh1 synthesis
	reaction_reaction_54=compartment_cell*function_for_Cdh1_1(global_par_kah1p, global_par_kah1pp, x(23), x(19), global_par_Jah1);

% Reaction: id = reaction_55, name = Cdh1 degradation
	reaction_reaction_55=compartment_cell*function_for_cdh1_2(global_par_kih1pp, x(11), x(12), global_par_kih1ppp, x(13), x(19), global_par_Jih1);

% Reaction: id = reaction_56, name = preMPF synthesis
	reaction_reaction_56=compartment_cell*function_1k_1m(global_par_Vwee, x(16));

% Reaction: id = reaction_57, name = preMPF degradation 1
	reaction_reaction_57=compartment_cell*global_par_Vwee*x(20);

% Reaction: id = reaction_58, name = preMPF degradation 2
	reaction_reaction_58=compartment_cell*global_par_V25*x(20);

% Reaction: id = reaction_59, name = preMPF degradation 3
	reaction_reaction_59=compartment_cell*global_par_Vdb*x(20);

% Reaction: id = reaction_60, name = TriA synthesis
	reaction_reaction_60=compartment_cell*function_2k_1m(global_par_kasa, x(15), global_par_freeCK1);

% Reaction: id = reaction_61, name = TriA degradation 1
	reaction_reaction_61=compartment_cell*function_2k_1m(global_par_kasa, x(21), global_par_freeCK1);

% Reaction: id = reaction_62, name = TriA degradation 2
	reaction_reaction_62=compartment_cell*global_par_kdia*x(21);

% Reaction: id = reaction_63, name = TriA degradation 3
	reaction_reaction_63=compartment_cell*global_par_Vda*x(21);

% Reaction: id = reaction_64, name = TriA degradation 4
	reaction_reaction_64=compartment_cell*global_par_Vdi*x(21);

% Reaction: id = reaction_65, name = APCP synthesis
	reaction_reaction_65=compartment_cell*function_for_APCP_1(global_par_kaAPC, x(13), x(22), global_par_JaAPC);

% Reaction: id = reaction_66, name = APCP degradation
	reaction_reaction_66=compartment_cell*Henri_Michaelis_Menten__irreversible(x(22), global_par_JiAPC, global_par_kiAPC);

% Reaction: id = reaction_67, name = active Cdc20 synthesis
	reaction_reaction_67=compartment_cell*function_for_Cdc20A(global_par_ka20, x(22), x(24), x(23), global_par_Ja20);

% Reaction: id = reaction_68, name = active Cdc20 degradation 1
	reaction_reaction_68=compartment_cell*Henri_Michaelis_Menten__irreversible(x(23), global_par_Ji20, global_par_ki20);

% Reaction: id = reaction_69, name = active Cdc20 degradation 2
	reaction_reaction_69=compartment_cell*global_par_kd20*x(23);

% Reaction: id = reaction_70, name = Cdc20T degradation 1
	reaction_reaction_70=compartment_cell*function_for_Cdc20T(global_par_ka20, x(13), global_par_J20, x(13));

% Reaction: id = reaction_71, name = Cdc20T degradation 2
	reaction_reaction_71=compartment_cell*global_par_kd20*x(24);

% Reaction: id = reaction_72, name = mass
	reaction_reaction_72=compartment_cell*function_1k_1m(global_par_u, x(25));

	xdot=zeros(25,1);
	
% Species:   id = ERG, name = ERG, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_reaction) + (-1.0 * reaction_reaction_1));
	
% Species:   id = DRG, name = DRG, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = ppRB, name = ppRB, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
	
% Species:   id = E2F, name = E2F, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15));
	
% Species:   id = pE2F, name = pE2F, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19));
	
% Species:   id = Rb, name = Rb, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*((-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17));
	
% Species:   id = E2FRB, name = E2FRB, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*((-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_21));
	
% Species:   id = pE2FRB, name = pE2FRB, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*((-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_20) + ( 1.0 * reaction_reaction_21));
	
% Species:   id = actCycD, name = actCycD, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_22) + ( 1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_26));
	
% Species:   id = TriD, name = TriD, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*((-1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_24) + ( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_27));
	
% Species:   id = actCycACdk1, name = actCycACdk1, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_28) + ( 1.0 * reaction_reaction_29) + ( 1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_32));
	
% Species:   id = actCycACdk2, name = actCycACdk2, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_33) + ( 1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_35) + (-1.0 * reaction_reaction_36));
	
% Species:   id = actCycB, name = actCycB, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_37) + ( 1.0 * reaction_reaction_38) + (-1.0 * reaction_reaction_39) + (-1.0 * reaction_reaction_40) + (-1.0 * reaction_reaction_41));
	
% Species:   id = actCycE, name = actCycE, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_42) + ( 1.0 * reaction_reaction_43) + ( 1.0 * reaction_reaction_44) + ( 1.0 * reaction_reaction_45) + (-1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_47));
	
% Species:   id = cycA, name = cycA, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_48) + (-1.0 * reaction_reaction_49));
	
% Species:   id = cycB, name = cycB, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_37) + (-1.0 * reaction_reaction_50));
	
% Species:   id = cycE, name = cycE, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_42) + ( 1.0 * reaction_reaction_43) + (-1.0 * reaction_reaction_51));
	
% Species:   id = CKI, name = CKI, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_52) + (-1.0 * reaction_reaction_53));
	
% Species:   id = Cdh1, name = Cdh1, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_54) + (-1.0 * reaction_reaction_55));
	
% Species:   id = preMPF, name = preMPF, affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_56) + (-1.0 * reaction_reaction_57) + (-1.0 * reaction_reaction_58) + (-1.0 * reaction_reaction_59));
	
% Species:   id = TriA, name = TriA, affected by kineticLaw
	xdot(21) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_60) + (-1.0 * reaction_reaction_61) + (-1.0 * reaction_reaction_62) + (-1.0 * reaction_reaction_63) + (-1.0 * reaction_reaction_64));
	
% Species:   id = APCP, name = APCP, affected by kineticLaw
	xdot(22) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_65) + (-1.0 * reaction_reaction_66));
	
% Species:   id = Cdc20A, name = Cdc20A, affected by kineticLaw
	xdot(23) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_67) + (-1.0 * reaction_reaction_68) + (-1.0 * reaction_reaction_69));
	
% Species:   id = Cdc20T, name = Cdc20T, affected by kineticLaw
	xdot(24) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_70) + (-1.0 * reaction_reaction_71));
	
% Species:   id = mass, name = mass, affected by kineticLaw
	xdot(25) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_72));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Henri_Michaelis_Menten__irreversible(substrate,Km,V), z=(V*substrate/(Km+substrate));end

function z=function_for_ERG(k,M,J), z=(k/(1+(M/J)^2));end

function z=function_1k_1m(k,M), z=(k*M);end

function z=function_for_DRG(k,P,J), z=(k*(P/J)^2/(1+(P/J)^2));end

function z=function_1k_2m(k,M1,M2), z=(k*M1*M2);end

function z=function_2k_1m(k1,M,k2), z=(k1*M*k2);end

function z=function_for_actCycACdk1(k0,k1,k2,M1,k3,M2,M3), z=(k0*(k1+k2*M1+k3*M2)*M3*2);end

function z=function_for_actCycACdk2_1(k0,k1,k2,M1,k3,M2,M3), z=((1-k0)*(k1+k2*M1+k3*M2)*M3*2);end

function z=function_for_actCycACdk2_2(k0,k1,k2,M), z=((1-k0)*(k1+k2)*M);end

function z=function_2k_2m(k1,M1,M2,k2), z=(k1*M1*M2*k2);end

function z=function_for_2k(k1,k2), z=(k1*k2);end

function z=function_for_Cdh1_1(k1,k2,M,P,k3), z=((k1+k2*M)*(1-P)/(k3+1-P));end

function z=function_for_cdh1_2(k1,M1,M2,k2,M3,S,k3), z=((k1*(M1+M2)+k2*M3)*S/(k3+S));end

function z=function_for_APCP_1(k1,M,P,k2), z=(k1*M*(1-P)/(k2+1-P));end

function z=function_for_Cdc20A(k1,M1,M2,P,k2), z=(k1*M1*(M2-P)/(k2+M2-P));end

function z=function_for_Cdc20T(k1,M1,k2,M2), z=(k1*M1/(k2+M2));end

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


