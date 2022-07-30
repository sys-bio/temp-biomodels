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
% Model name = Nayak2015 - Blood Coagulation Network - Predicting the Effects of Various Therapies on Biomarkers
%
% is http://identifiers.org/biomodels.db/MODEL1511160000
% is http://identifiers.org/biomodels.db/BIOMD0000000611
% isDescribedBy http://identifiers.org/pubmed/26312163
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1108260014
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000340
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000338
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000339
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000335
%


function main()
%Initial conditions vector
	x0=zeros(66,1);
	x0(1) = 0.005;
	x0(2) = 0.0;
	x0(3) = 10.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 160.0;
	x0(10) = 0.0;
	x0(11) = 90.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 1400.0;
	x0(15) = 0.7;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 20.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 2.5;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 3400.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 340.0;
	x0(37) = 0.0;
	x0(38) = 450.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 31.0;
	x0(44) = 0.0;
	x0(45) = 0.0;
	x0(46) = 0.0;
	x0(47) = 0.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 50.0;
	x0(52) = 0.0;
	x0(53) = 60.0;
	x0(54) = 0.0;
	x0(55) = 0.0;
	x0(56) = 9000.0;
	x0(57) = 0.0;
	x0(58) = 0.0;
	x0(59) = 0.0;
	x0(60) = 0.0;
	x0(61) = 0.0;
	x0(62) = 0.0;
	x0(63) = 0.0;
	x0(64) = 0.0;
	x0(65) = 0.0;
	x0(66) = 0.0;


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

% Compartment: id = mwa76931f0_7e48_4dcd_835f_4a2db486ed1b, name = blood, constant
	compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.0043339901;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.0041242451;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.0019496187;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.075680013;
% Parameter:   id =  k5, name = k5
	global_par_k5=3.3894832E-4;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.009975373;
% Parameter:   id =  k7, name = k7
	global_par_k7=1.1527134E-5;
% Parameter:   id =  k8, name = k8
	global_par_k8=1.3800407;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.036245656;
% Parameter:   id =  k10, name = k10
	global_par_k10=8.9987819;
% Parameter:   id =  k11, name = k11
	global_par_k11=9.5;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.032999929;
% Parameter:   id =  k13, name = k13
	global_par_k13=20.6708;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.010569458;
% Parameter:   id =  k15, name = k15
	global_par_k15=2.3887492;
% Parameter:   id =  k16, name = k16
	global_par_k16=3.764127E-5;
% Parameter:   id =  k17, name = k17
	global_par_k17=1.44895;
% Parameter:   id =  k18, name = k18
	global_par_k18=0.0050724996;
% Parameter:   id =  k19, name = k19
	global_par_k19=0.11749508;
% Parameter:   id =  k20, name = k20
	global_par_k20=0.0013766033;
% Parameter:   id =  k21, name = k21
	global_par_k21=0.048795021;
% Parameter:   id =  k22, name = k22
	global_par_k22=42.71401;
% Parameter:   id =  k23, name = k23
	global_par_k23=3.3E-5;
% Parameter:   id =  k24, name = k24
	global_par_k24=0.009;
% Parameter:   id =  k25, name = k25
	global_par_k25=0.0013357963;
% Parameter:   id =  k26, name = k25_1
	global_par_k26=0.0013946425;
% Parameter:   id =  k27, name = k26
	global_par_k27=4.0233556E-4;
% Parameter:   id =  k29, name = k29
	global_par_k29=149.91541;
% Parameter:   id =  k30, name = k30
	global_par_k30=0.10001522;
% Parameter:   id =  k31, name = k31
	global_par_k31=29.479266;
% Parameter:   id =  k32, name = k32
	global_par_k32=0.21872155;
% Parameter:   id =  k33, name = k33
	global_par_k33=1.801577E-4;
% Parameter:   id =  k34, name = k34
	global_par_k34=4.5E-4;
% Parameter:   id =  k35, name = k35
	global_par_k35=1.0062408E-4;
% Parameter:   id =  k36, name = k36
	global_par_k36=0.25638864;
% Parameter:   id =  k37, name = k37
	global_par_k37=0.025386917;
% Parameter:   id =  k38, name = k38
	global_par_k38=1.0556718E-6;
% Parameter:   id =  k39, name = k39
	global_par_k39=3.55E-6;
% Parameter:   id =  k40, name = k40
	global_par_k40=2.8169728E-7;
% Parameter:   id =  k41, name = k41
	global_par_k41=3.917682E-6;
% Parameter:   id =  k42, name = k42
	global_par_k42=3.2905257E-7;
% Parameter:   id =  mwe5422617_5481_47c8_bf98_d6e3f1e96384, name = k43
	global_par_mwe5422617_5481_47c8_bf98_d6e3f1e96384=8.5153312E-6;
% Parameter:   id =  mw3ab61faa_95e4_40a9_93de_5c51755957c4, name = k44
	global_par_mw3ab61faa_95e4_40a9_93de_5c51755957c4=0.091852853;
% Parameter:   id =  mw862c3fea_05a0_4d3d_ba5c_9727bbb67907, name = k45
	global_par_mw862c3fea_05a0_4d3d_ba5c_9727bbb67907=1800.0;
% Parameter:   id =  mw107e9839_b4a4_46c8_9102_da7d857fd655, name = k46
	global_par_mw107e9839_b4a4_46c8_9102_da7d857fd655=47.928292;
% Parameter:   id =  mweb1be1ac_0c60_4849_b306_071c8f9370c0, name = k47
	global_par_mweb1be1ac_0c60_4849_b306_071c8f9370c0=0.15;
% Parameter:   id =  mw94d2be4e_839e_4154_a6f0_f0d6b61e50a9, name = k48
	global_par_mw94d2be4e_839e_4154_a6f0_f0d6b61e50a9=57.613526;
% Parameter:   id =  mw6f439ade_bb02_4671_8e45_8beaa312b3d2, name = k49
	global_par_mw6f439ade_bb02_4671_8e45_8beaa312b3d2=4.1832115;
% Parameter:   id =  mwf677450c_a4e3_41df_be5a_9c8928ac27f4, name = k50
	global_par_mwf677450c_a4e3_41df_be5a_9c8928ac27f4=1.08E-8;
% Parameter:   id =  mweacc6c48_8e8c_481b_92ce_0cb9ccb3be00, name = k54
	global_par_mweacc6c48_8e8c_481b_92ce_0cb9ccb3be00=4.8E-7;
% Parameter:   id =  mwc0cb654e_d95f_4d4b_8dc2_3a21afd35a19, name = k55
% Warning parameter mwc0cb654e_d95f_4d4b_8dc2_3a21afd35a19 is not constant, it should be controlled by a Rule and/or events
	global_par_mwc0cb654e_d95f_4d4b_8dc2_3a21afd35a19=0.13081564;
% Parameter:   id =  mwb01ef86f_18d8_45e7_a452_31878dcb3d49, name = k56
	global_par_mwb01ef86f_18d8_45e7_a452_31878dcb3d49=30.668349;
% Parameter:   id =  mw7300dcac_9389_4201_88c7_7effa7fdb0f3, name = k57
	global_par_mw7300dcac_9389_4201_88c7_7effa7fdb0f3=10.565569;
% Parameter:   id =  mw44adf04a_f1e2_4ca9_9615_5a9f4d3bbea8, name = k58
	global_par_mw44adf04a_f1e2_4ca9_9615_5a9f4d3bbea8=0.13304333;
% Parameter:   id =  mwc189e7ea_7518_4a4f_be0f_03f2d073b29e, name = k59
	global_par_mwc189e7ea_7518_4a4f_be0f_03f2d073b29e=83.206626;
% Parameter:   id =  mwaec203ce_06d5_4003_bfdb_7244d3d77255, name = k60
	global_par_mwaec203ce_06d5_4003_bfdb_7244d3d77255=0.0011427258;
% Parameter:   id =  mw05b4111c_4463_4be0_aa1e_5a8f50c7bf67, name = k61
	global_par_mw05b4111c_4463_4be0_aa1e_5a8f50c7bf67=0.059664002;
% Parameter:   id =  mw7b89687a_3110_4d5f_a9ec_7ca8761f0d41, name = k62
	global_par_mw7b89687a_3110_4d5f_a9ec_7ca8761f0d41=84.659935;
% Parameter:   id =  mw61fdd721_9193_442c_bc9e_f1058c4720e7, name = k63
	global_par_mw61fdd721_9193_442c_bc9e_f1058c4720e7=1.2943783E-5;
% Parameter:   id =  mw1ddc2a05_bc78_4434_a2d9_d06701483346, name = k67
	global_par_mw1ddc2a05_bc78_4434_a2d9_d06701483346=19.338228;
% Parameter:   id =  mw4fc81076_be53_4fc3_9ade_3587e8d60355, name = k68
	global_par_mw4fc81076_be53_4fc3_9ade_3587e8d60355=0.1857857;
% Parameter:   id =  mwa4cc6bbe_c310_445f_bba7_a94868342831, name = k70
	global_par_mwa4cc6bbe_c310_445f_bba7_a94868342831=10740.276;
% Parameter:   id =  mwd6b996b1_d7fe_42de_b17e_b2482109c54d, name = k71
	global_par_mwd6b996b1_d7fe_42de_b17e_b2482109c54d=0.1043597;
% Parameter:   id =  mwc5dc3645_536d_4bb4_88c7_4aeac4f5a241, name = k72
	global_par_mwc5dc3645_536d_4bb4_88c7_4aeac4f5a241=2.0649128;
% Parameter:   id =  mwc85f8d37_7f39_41b2_8ea4_00b5adad2eac, name = k73
	global_par_mwc85f8d37_7f39_41b2_8ea4_00b5adad2eac=0.07934338;
% Parameter:   id =  mw807b9a99_fb16_421f_b724_69f29f3fcfb2, name = k74
	global_par_mw807b9a99_fb16_421f_b724_69f29f3fcfb2=1.9895374;
% Parameter:   id =  mw234b484f_d2d5_4ae8_a077_217c600588d8, name = k75
	global_par_mw234b484f_d2d5_4ae8_a077_217c600588d8=0.24027638;
% Parameter:   id =  mwa2636601_825e_4846_aa2d_c35bd242ec99, name = k76
	global_par_mwa2636601_825e_4846_aa2d_c35bd242ec99=0.032359973;
% Parameter:   id =  mw70d2f292_be41_4999_99cb_9c146808db85, name = k77
	global_par_mw70d2f292_be41_4999_99cb_9c146808db85=0.077518002;
% Parameter:   id =  mw0e80d629_98c1_44a6_bd57_3a4027c87b4c, name = k78
	global_par_mw0e80d629_98c1_44a6_bd57_3a4027c87b4c=2.0869571;
% Parameter:   id =  mw7aeacec0_be36_49bf_8548_7a3e2b5fe3cb, name = k79
	global_par_mw7aeacec0_be36_49bf_8548_7a3e2b5fe3cb=0.029887563;
% Parameter:   id =  mwb63aa5ed_b6d8_4241_9987_54828945aea3, name = k80
	global_par_mwb63aa5ed_b6d8_4241_9987_54828945aea3=0.1289308;
% Parameter:   id =  mw4d2fe532_2ccd_42c4_9b4b_759022a87484, name = k81
	global_par_mw4d2fe532_2ccd_42c4_9b4b_759022a87484=1.4001578;
% Parameter:   id =  mw6b555ed1_194e_4fa4_9688_8105aa7c60c0, name = k82
	global_par_mw6b555ed1_194e_4fa4_9688_8105aa7c60c0=0.013215482;
% Parameter:   id =  mwaa306898_0d0f_4748_b48a_fcd56bdc0b16, name = k83
	global_par_mwaa306898_0d0f_4748_b48a_fcd56bdc0b16=0.15;
% Parameter:   id =  mwec1b7289_5544_4c2b_b9f6_bf6524cabda5, name = k84
	global_par_mwec1b7289_5544_4c2b_b9f6_bf6524cabda5=3.15;
% Parameter:   id =  mw6843129b_7601_452f_be5d_977f7203bfb5, name = k85
	global_par_mw6843129b_7601_452f_be5d_977f7203bfb5=0.0345;
% Parameter:   id =  mwc7a68e9d_cc1f_48bf_a582_c06056d082ad, name = ATIII_ss
	global_par_mwc7a68e9d_cc1f_48bf_a582_c06056d082ad=3400.0;
% Parameter:   id =  mwbcd76870_e02a_442b_abdf_e42cd7086a1f, name = Dilution
% Warning parameter mwbcd76870_e02a_442b_abdf_e42cd7086a1f is not constant, it should be controlled by a Rule and/or events
	global_par_mwbcd76870_e02a_442b_abdf_e42cd7086a1f=1.7143;
% Parameter:   id =  mw69d180ec_210d_4add_b599_e567c88ee538, name = Fg_ss
	global_par_mw69d180ec_210d_4add_b599_e567c88ee538=9000.0;
% Parameter:   id =  mwf402f97a_30c4_457f_9ef4_1be774a61358, name = II_ss
	global_par_mwf402f97a_30c4_457f_9ef4_1be774a61358=1400.0;
% Parameter:   id =  mwed93f2e8_0fdb_4c44_bb8f_aeef60171b0a, name = IX_ss
	global_par_mwed93f2e8_0fdb_4c44_bb8f_aeef60171b0a=90.0;
% Parameter:   id =  mw61f543e9_43eb_442d_9985_d08f83a35bcd, name = PC_ss
	global_par_mw61f543e9_43eb_442d_9985_d08f83a35bcd=60.0;
% Parameter:   id =  mwf4279c86_df09_4b2e_9fae_a6b9436be477, name = PK_ss
	global_par_mwf4279c86_df09_4b2e_9fae_a6b9436be477=450.0;
% Parameter:   id =  mw09b305e5_8e0c_4d34_a367_72e681d24550, name = TF_ss
	global_par_mw09b305e5_8e0c_4d34_a367_72e681d24550=0.001743;
% Parameter:   id =  mwf417c223_4f28_436b_be61_dc0a6db906e9, name = TFPI_ss
	global_par_mwf417c223_4f28_436b_be61_dc0a6db906e9=2.5;
% Parameter:   id =  mw21356d0a_52a7_47d9_a80b_c83f72f91249, name = Tmod_ss
	global_par_mw21356d0a_52a7_47d9_a80b_c83f72f91249=0.5;
% Parameter:   id =  mw6657e10d_433c_402e_af1d_edde69570dc7, name = V_ss
	global_par_mw6657e10d_433c_402e_af1d_edde69570dc7=20.0;
% Parameter:   id =  mw3c8d8702_954e_4beb_9094_8fae9207cfb4, name = VII_ss
	global_par_mw3c8d8702_954e_4beb_9094_8fae9207cfb4=10.0;
% Parameter:   id =  mw10579ad2_4018_4dc2_bd2d_cbc2b46014d2, name = VIIa_ss
	global_par_mw10579ad2_4018_4dc2_bd2d_cbc2b46014d2=0.1;
% Parameter:   id =  mwa8eaa9b8_8166_49f0_b98a_ee69239b6f37, name = VIII_ss
	global_par_mwa8eaa9b8_8166_49f0_b98a_ee69239b6f37=0.7;
% Parameter:   id =  mw2555880e_202e_42c6_bcb5_c565dd6748d7, name = X_ss
	global_par_mw2555880e_202e_42c6_bcb5_c565dd6748d7=160.0;
% Parameter:   id =  mw889568f2_c2e0_4ea3_ad4c_b26b66888184, name = Xa_ss
% Warning parameter mw889568f2_c2e0_4ea3_ad4c_b26b66888184 is not constant, it should be controlled by a Rule and/or events
	global_par_mw889568f2_c2e0_4ea3_ad4c_b26b66888184=0.0;
% Parameter:   id =  mwd49f57a8_7e48_4891_bb1e_3e83f28d63a2, name = XI_ss
	global_par_mwd49f57a8_7e48_4891_bb1e_3e83f28d63a2=31.0;
% Parameter:   id =  mw069bc62a_eef3_452c_9c80_6ac8e99131f3, name = XII_ss
	global_par_mw069bc62a_eef3_452c_9c80_6ac8e99131f3=340.0;
% Parameter:   id =  mwea0d7c35_f4d2_4205_8c59_11ac05134dde, name = k86
	global_par_mwea0d7c35_f4d2_4205_8c59_11ac05134dde=1.0958881E-4;
% Parameter:   id =  mw8482ca53_fca1_4841_ac2f_2469a76a758e, name = k28
	global_par_mw8482ca53_fca1_4841_ac2f_2469a76a758e=0.12914436;
% Parameter:   id =  mwaf2c7981_908c_4f4c_898e_2491a9f04e17, name = k66
	global_par_mwaf2c7981_908c_4f4c_898e_2491a9f04e17=0.10523968;
% Parameter:   id =  mw3b48c5e7_774a_4dc4_917f_8f8cff8d9c4b, name = k69
	global_par_mw3b48c5e7_774a_4dc4_917f_8f8cff8d9c4b=90.211653;
% Parameter:   id =  mw1511789f_5e7b_43bf_b162_d930b027a867, name = k27
	global_par_mw1511789f_5e7b_43bf_b162_d930b027a867=0.006;
% Parameter:   id =  mw7ff84021_4836_4a63_84fc_4389e5f74f81, name = k51
	global_par_mw7ff84021_4836_4a63_84fc_4389e5f74f81=0.13632245;
% Parameter:   id =  mw204ea0fc_f851_4d50_9b82_bc66e34ac7dc, name = k52
	global_par_mw204ea0fc_f851_4d50_9b82_bc66e34ac7dc=18.705029;
% Parameter:   id =  mw95ac212b_a197_49d6_8c76_bc6154a4cf5e, name = k53
	global_par_mw95ac212b_a197_49d6_8c76_bc6154a4cf5e=3.5000006E-4;
% Parameter:   id =  mw9bcd5c0b_3384_4d5e_92ce_70b13d64e8b8, name = k64
	global_par_mw9bcd5c0b_3384_4d5e_92ce_70b13d64e8b8=0.11573051;
% Parameter:   id =  mw95e328a0_be5b_4260_b6e4_d85c4c4aae9e, name = k65
	global_par_mw95e328a0_be5b_4260_b6e4_d85c4c4aae9e=0.050084768;
% Parameter:   id =  mw7be1d52f_926f_47e0_964b_d3303c8453b1, name = n1
	global_par_mw7be1d52f_926f_47e0_964b_d3303c8453b1=0.05;
% assignmentRule: variable = mw85e2714d_e6e5_47d5_9ffc_d90573faebe1
	x(50)=x(7)+1.2*x(25);

% Reaction: id = R1, name = R1
	reaction_R1=global_par_k2*x(1)*x(3)-global_par_k1*x(2);

% Reaction: id = R2, name = R2
	reaction_R2=global_par_k4*x(1)*x(5)-global_par_k3*x(4);

% Reaction: id = R3, name = R3
	reaction_R3=global_par_k5*x(4)*x(3);

% Reaction: id = R4, name = R4
	reaction_R4=global_par_k6*x(6)*x(3);

% Reaction: id = R5, name = R5
	reaction_R5=global_par_k7*x(7)*x(3);

% Reaction: id = R6, name = R6
	reaction_R6=global_par_k9*x(4)*x(9)-global_par_k8*x(8);

% Reaction: id = R6b, name = R6b
	reaction_R6b=global_par_k10*x(8);

% Reaction: id = R7, name = R7
	reaction_R7=global_par_k12*x(4)*x(6)-global_par_k11*x(10);

% Reaction: id = R8, name = R8
	reaction_R8=global_par_k14*x(4)*x(11)-global_par_k13*x(12);

% Reaction: id = R8b, name = R8b
	reaction_R8b=global_par_k15*x(12);

% Reaction: id = R9, name = R9
	reaction_R9=global_par_k16*x(6)*x(14);

% Reaction: id = R10, name = R10
	reaction_R10=global_par_k17*x(7)*x(15);

% Reaction: id = R11, name = R11
	reaction_R11=global_par_k19*x(13)*x(16)-global_par_k18*x(17);

% Reaction: id = R12, name = R12
	reaction_R12=global_par_k21*x(17)*x(9)-global_par_k20*x(18);

% Reaction: id = R12b, name = R12b
	reaction_R12b=global_par_k22*x(18);

% Reaction: id = R13, name = R13
	reaction_R13=global_par_k24*x(16)-global_par_k23*x(19)*x(20);

% Reaction: id = R14, name = R14
	reaction_R14=global_par_k25*x(18);

% Reaction: id = R15, name = R15
	reaction_R15=global_par_k26*x(17);

% Reaction: id = R16, name = R16
	reaction_R16=global_par_k27*x(7)*x(21);

% Reaction: id = R17, name = R17
	reaction_R17=global_par_mw8482ca53_fca1_4841_ac2f_2469a76a758e*x(6)*x(22)-global_par_mw1511789f_5e7b_43bf_b162_d930b027a867*x(23);

% Reaction: id = R18, name = R18
	reaction_R18=global_par_k30*x(23)*x(14)-global_par_k29*x(24);

% Reaction: id = R18b, name = R18b
	reaction_R18b=global_par_k31*x(24);

% Reaction: id = R19, name = R19
	reaction_R19=global_par_k32*x(25)*x(23);

% Reaction: id = R20, name = R20
	reaction_R20=global_par_k34*x(6)*x(26)-global_par_k33*x(27);

% Reaction: id = R21, name = R21
	reaction_R21=global_par_k36*x(10)*x(26)-global_par_k35*x(28);

% Reaction: id = R22, name = R22
	reaction_R22=global_par_k37*x(4)*x(27);

% Reaction: id = R23, name = R23
	reaction_R23=global_par_k38*x(6)*x(29);

% Reaction: id = R24, name = R24
	reaction_R24=global_par_k39*x(25)*x(29);

% Reaction: id = R25, name = R25
	reaction_R25=global_par_k40*x(13)*x(29);

% Reaction: id = R26, name = R26
	reaction_R26=global_par_k41*x(7)*x(29);

% Reaction: id = R27, name = R27
	reaction_R27=global_par_k42*x(4)*x(29);

% Reaction: id = mw356a0437_4d35_42d9_a964_d205845dd3a0, name = R28
	reaction_mw356a0437_4d35_42d9_a964_d205845dd3a0=global_par_mwe5422617_5481_47c8_bf98_d6e3f1e96384*x(35)*x(36);

% Reaction: id = mw2ad76883_679b_4cfa_a390_ed12c2cb488a, name = R31
	reaction_mw2ad76883_679b_4cfa_a390_ed12c2cb488a=global_par_mw3ab61faa_95e4_40a9_93de_5c51755957c4*x(37)*x(38)-global_par_mw862c3fea_05a0_4d3d_ba5c_9727bbb67907*x(39);

% Reaction: id = mw7625dc03_2283_4c41_8d88_c03bbd995622, name = R31b
	reaction_mw7625dc03_2283_4c41_8d88_c03bbd995622=global_par_mw107e9839_b4a4_46c8_9102_da7d857fd655*x(39);

% Reaction: id = mwb7173277_b0a8_4585_8e75_4188d464a440, name = R32
	reaction_mwb7173277_b0a8_4585_8e75_4188d464a440=global_par_mweb1be1ac_0c60_4849_b306_071c8f9370c0*x(36)*x(40)-global_par_mw94d2be4e_839e_4154_a6f0_f0d6b61e50a9*x(41);

% Reaction: id = mwa9bc550c_e44b_4a55_9d10_c274a9c710a8, name = R32b
	reaction_mwa9bc550c_e44b_4a55_9d10_c274a9c710a8=global_par_mw6f439ade_bb02_4671_8e45_8beaa312b3d2*x(41);

% Reaction: id = mwc0c930a7_ee46_48b9_bc37_297a29d337ed, name = R37
	reaction_mwc0c930a7_ee46_48b9_bc37_297a29d337ed=global_par_mwf677450c_a4e3_41df_be5a_9c8928ac27f4*x(37)*x(29);

% Reaction: id = mwd29fbe1e_de98_4c2f_8d81_8ce87f0a245d, name = R39
	reaction_mwd29fbe1e_de98_4c2f_8d81_8ce87f0a245d=global_par_mw7ff84021_4836_4a63_84fc_4389e5f74f81*x(37)*x(43)-global_par_mw204ea0fc_f851_4d50_9b82_bc66e34ac7dc*x(45);

% Reaction: id = mw733749dd_73df_4e8d_86b3_eabffb03d79e, name = R39b
	reaction_mw733749dd_73df_4e8d_86b3_eabffb03d79e=global_par_mw95ac212b_a197_49d6_8c76_bc6154a4cf5e*x(45);

% Reaction: id = mwf959d54b_b8f2_4cf9_995a_bea2a3d1735d, name = R41
	reaction_mwf959d54b_b8f2_4cf9_995a_bea2a3d1735d=global_par_mweacc6c48_8e8c_481b_92ce_0cb9ccb3be00*x(44)*x(29);

% Reaction: id = mw27430243_7541_45f2_a970_b53e97eb90b5, name = R45
	reaction_mw27430243_7541_45f2_a970_b53e97eb90b5=global_par_mwc0cb654e_d95f_4d4b_8dc2_3a21afd35a19*x(44)*x(11)-global_par_mwb01ef86f_18d8_45e7_a452_31878dcb3d49*x(47);

% Reaction: id = mwc9055518_a470_4fa9_9ebe_473dc2a371af, name = R45b
	reaction_mwc9055518_a470_4fa9_9ebe_473dc2a371af=global_par_mw7300dcac_9389_4201_88c7_7effa7fdb0f3*x(47);

% Reaction: id = mwfe3aa9b2_3507_4bda_b66a_d1b9ecf9b691, name = R46
	reaction_mwfe3aa9b2_3507_4bda_b66a_d1b9ecf9b691=global_par_mw44adf04a_f1e2_4ca9_9615_5a9f4d3bbea8*x(13)*x(9)-global_par_mwc189e7ea_7518_4a4f_be0f_03f2d073b29e*x(48);

% Reaction: id = mwf5ec17b4_374b_4670_83e5_47135df80cb9, name = R46b
	reaction_mwf5ec17b4_374b_4670_83e5_47135df80cb9=global_par_mwaec203ce_06d5_4003_bfdb_7244d3d77255*x(48);

% Reaction: id = mwea194c8b_e1a0_4a6e_a4d5_f55b2f784d87, name = R49
	reaction_mwea194c8b_e1a0_4a6e_a4d5_f55b2f784d87=global_par_mw05b4111c_4463_4be0_aa1e_5a8f50c7bf67*x(5)*x(9)-global_par_mw7b89687a_3110_4d5f_a9ec_7ca8761f0d41*x(49);

% Reaction: id = mwd58c2ecb_6ff8_4b9b_8c31_a7711b5217d5, name = R49b
	reaction_mwd58c2ecb_6ff8_4b9b_8c31_a7711b5217d5=global_par_mw61fdd721_9193_442c_bc9e_f1058c4720e7*x(49);

% Reaction: id = mwa9e8a350_94c6_49e9_aba0_e23644ed770b, name = R50
	reaction_mwa9e8a350_94c6_49e9_aba0_e23644ed770b=global_par_mw9bcd5c0b_3384_4d5e_92ce_70b13d64e8b8*x(7)*x(51)-global_par_mw95e328a0_be5b_4260_b6e4_d85c4c4aae9e*x(52);

% Reaction: id = mw533077fb_883c_475c_8a43_ab003a69478c, name = R51
	reaction_mw533077fb_883c_475c_8a43_ab003a69478c=global_par_mwaf2c7981_908c_4f4c_898e_2491a9f04e17*x(52)*x(53)-global_par_mw1ddc2a05_bc78_4434_a2d9_d06701483346*x(54);

% Reaction: id = mw3a695e19_d2d0_4083_af5a_1e8dd673dd32, name = R052
	reaction_mw3a695e19_d2d0_4083_af5a_1e8dd673dd32=global_par_mw4fc81076_be53_4fc3_9ade_3587e8d60355*x(54);

% Reaction: id = mw95b41c99_0a48_4f12_8367_f5b176c613e5, name = R301
	reaction_mw95b41c99_0a48_4f12_8367_f5b176c613e5=global_par_mw3b48c5e7_774a_4dc4_917f_8f8cff8d9c4b*x(7)*x(56)/(global_par_mwa4cc6bbe_c310_445f_bba7_a94868342831+x(56));

% Reaction: id = mw13213f35_d931_4cec_a202_9760e9a3e4b1, name = R053
	reaction_mw13213f35_d931_4cec_a202_9760e9a3e4b1=global_par_mwd6b996b1_d7fe_42de_b17e_b2482109c54d*x(55)*x(22)-global_par_mwc5dc3645_536d_4bb4_88c7_4aeac4f5a241*x(58);

% Reaction: id = mw42194b65_07a6_43c3_a810_2d2c1b4fad6b, name = R055
	reaction_mw42194b65_07a6_43c3_a810_2d2c1b4fad6b=global_par_mwc85f8d37_7f39_41b2_8ea4_00b5adad2eac*x(55)*x(16)-global_par_mw807b9a99_fb16_421f_b724_69f29f3fcfb2*x(59);

% Reaction: id = mwe33e10f1_9ee4_4167_94cf_81ed3aafb1af, name = R054
	reaction_mwe33e10f1_9ee4_4167_94cf_81ed3aafb1af=global_par_mw234b484f_d2d5_4ae8_a077_217c600588d8*x(58);

% Reaction: id = mwa14cc09f_d815_4499_9299_642478acc115, name = R056
	reaction_mwa14cc09f_d815_4499_9299_642478acc115=global_par_mwa2636601_825e_4846_aa2d_c35bd242ec99*x(59);

% Reaction: id = mw33aec61d_aae4_41f1_8f35_2e2e4bb56597, name = R057
	reaction_mw33aec61d_aae4_41f1_8f35_2e2e4bb56597=global_par_mw70d2f292_be41_4999_99cb_9c146808db85*x(55)*x(17)-global_par_mw0e80d629_98c1_44a6_bd57_3a4027c87b4c*x(62);

% Reaction: id = mwc0b0317d_2b0e_490d_bfd5_8719b2ead1ec, name = R058
	reaction_mwc0b0317d_2b0e_490d_bfd5_8719b2ead1ec=global_par_mw7aeacec0_be36_49bf_8548_7a3e2b5fe3cb*x(62);

% Reaction: id = mw5619c52c_ce60_4357_8d45_2c512348ecc2, name = R059
	reaction_mw5619c52c_ce60_4357_8d45_2c512348ecc2=global_par_mwb63aa5ed_b6d8_4241_9987_54828945aea3*x(55)*x(18)-global_par_mw4d2fe532_2ccd_42c4_9b4b_759022a87484*x(63);

% Reaction: id = mw415d69bc_061f_4d57_905d_58fca6bc6463, name = R060
	reaction_mw415d69bc_061f_4d57_905d_58fca6bc6463=global_par_mw6b555ed1_194e_4fa4_9688_8105aa7c60c0*x(63);

% Reaction: id = mw4c020206_4593_4480_b410_d33a9df3298a, name = R47
	reaction_mw4c020206_4593_4480_b410_d33a9df3298a=global_par_mwaa306898_0d0f_4748_b48a_fcd56bdc0b16*x(6)*x(15)-global_par_mwec1b7289_5544_4c2b_b9f6_bf6524cabda5*x(64);

% Reaction: id = mwf122913a_9b0b_4492_8cb6_2dd00c3f6162, name = R47b
	reaction_mwf122913a_9b0b_4492_8cb6_2dd00c3f6162=global_par_mw6843129b_7601_452f_be5d_977f7203bfb5*x(64);

% Reaction: id = mw2b7d93e1_fc1b_4fa0_a03b_4d2b2259d14f
	reaction_mw2b7d93e1_fc1b_4fa0_a03b_4d2b2259d14f=global_par_mwea0d7c35_f4d2_4205_8c59_11ac05134dde*x(65);

% Reaction: id = mw0ca8823e_ed5a_443a_935b_db3cfb4c01e2, name = N1
	reaction_mw0ca8823e_ed5a_443a_935b_db3cfb4c01e2=global_par_mw7be1d52f_926f_47e0_964b_d3303c8453b1*x(49)*x(44);

	xdot=zeros(66,1);
	
% Species:   id = TF, name = TF, affected by kineticLaw
	xdot(1) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_R1) + (-1.0 * reaction_R2));
	
% Species:   id = TF_VII, name = TF_VII, affected by kineticLaw
	xdot(2) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R1));
	
% Species:   id = VII, name = VII, affected by kineticLaw
	xdot(3) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_R1) + (-1.0 * reaction_R3) + (-1.0 * reaction_R4) + (-1.0 * reaction_R5));
	
% Species:   id = TF_VIIa, name = TF_VIIa, affected by kineticLaw
	xdot(4) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + ( 1.0 * reaction_R3) + (-1.0 * reaction_R6) + (-1.0 * reaction_R7) + (-1.0 * reaction_R8) + ( 1.0 * reaction_R8b) + (-1.0 * reaction_R22) + (-1.0 * reaction_R27));
	
% Species:   id = VIIa, name = VIIa, affected by kineticLaw
	xdot(5) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_R2) + ( 1.0 * reaction_R3) + ( 1.0 * reaction_R4) + ( 1.0 * reaction_R5) + (-1.0 * reaction_mwea194c8b_e1a0_4a6e_a4d5_f55b2f784d87) + ( 1.0 * reaction_mwd58c2ecb_6ff8_4b9b_8c31_a7711b5217d5) + ( 1.0 * reaction_mw0ca8823e_ed5a_443a_935b_db3cfb4c01e2));
	
% Species:   id = Xa, name = Xa, affected by kineticLaw
	xdot(6) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_R4) + ( 1.0 * reaction_R4) + (-1.0 * reaction_R7) + (-1.0 * reaction_R9) + ( 1.0 * reaction_R9) + ( 1.0 * reaction_R12b) + (-1.0 * reaction_R17) + (-1.0 * reaction_R20) + (-1.0 * reaction_R23) + ( 1.0 * reaction_mwf5ec17b4_374b_4670_83e5_47135df80cb9) + ( 1.0 * reaction_mwd58c2ecb_6ff8_4b9b_8c31_a7711b5217d5) + (-1.0 * reaction_mw4c020206_4593_4480_b410_d33a9df3298a) + ( 1.0 * reaction_mwf122913a_9b0b_4492_8cb6_2dd00c3f6162) + ( 1.0 * reaction_mw0ca8823e_ed5a_443a_935b_db3cfb4c01e2));
	
% Species:   id = IIa, name = IIa, affected by kineticLaw
	xdot(7) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_R5) + ( 1.0 * reaction_R5) + ( 1.0 * reaction_R9) + (-1.0 * reaction_R10) + ( 1.0 * reaction_R10) + (-1.0 * reaction_R16) + ( 1.0 * reaction_R16) + ( 1.0 * reaction_R19) + (-1.0 * reaction_R26) + (-1.0 * reaction_mwa9e8a350_94c6_49e9_aba0_e23644ed770b) + (-1.0 * reaction_mw95b41c99_0a48_4f12_8367_f5b176c613e5) + ( 1.0 * reaction_mw95b41c99_0a48_4f12_8367_f5b176c613e5));
	
% Species:   id = TF_VIIa_X, name = TF_VIIa_X, affected by kineticLaw
	xdot(8) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R6b));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(9) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_R6) + (-1.0 * reaction_R12) + ( 1.0 * reaction_R14) + (-1.0 * reaction_mwfe3aa9b2_3507_4bda_b66a_d1b9ecf9b691) + (-1.0 * reaction_mwea194c8b_e1a0_4a6e_a4d5_f55b2f784d87) + ( 1.0 * reaction_mw415d69bc_061f_4d57_905d_58fca6bc6463));
	
% Species:   id = TF_VIIa_Xa, name = TF_VIIa_Xa, affected by kineticLaw
	xdot(10) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R6b) + ( 1.0 * reaction_R7) + (-1.0 * reaction_R21));
	
% Species:   id = IX, name = IX, affected by kineticLaw
	xdot(11) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_R8) + (-1.0 * reaction_mw27430243_7541_45f2_a970_b53e97eb90b5));
	
% Species:   id = TF_VIIa_IX, name = TF_VIIa_IX, affected by kineticLaw
	xdot(12) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R8) + (-1.0 * reaction_R8b));
	
% Species:   id = IXa, name = IXa, affected by kineticLaw
	xdot(13) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R8b) + (-1.0 * reaction_R11) + ( 1.0 * reaction_R14) + ( 1.0 * reaction_R15) + (-1.0 * reaction_R25) + ( 1.0 * reaction_mwc9055518_a470_4fa9_9ebe_473dc2a371af) + (-1.0 * reaction_mwfe3aa9b2_3507_4bda_b66a_d1b9ecf9b691) + ( 1.0 * reaction_mwf5ec17b4_374b_4670_83e5_47135df80cb9) + ( 1.0 * reaction_mwc0b0317d_2b0e_490d_bfd5_8719b2ead1ec) + ( 1.0 * reaction_mw415d69bc_061f_4d57_905d_58fca6bc6463));
	
% Species:   id = II, name = II, affected by kineticLaw
	xdot(14) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_R9) + (-1.0 * reaction_R18));
	
% Species:   id = VIII, name = VIII, affected by kineticLaw
	xdot(15) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_R10) + (-1.0 * reaction_mw4c020206_4593_4480_b410_d33a9df3298a));
	
% Species:   id = VIIIa, name = VIIIa, affected by kineticLaw
	xdot(16) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R10) + (-1.0 * reaction_R11) + (-1.0 * reaction_R13) + (-1.0 * reaction_mw42194b65_07a6_43c3_a810_2d2c1b4fad6b) + ( 1.0 * reaction_mwf122913a_9b0b_4492_8cb6_2dd00c3f6162));
	
% Species:   id = IXa_VIIIa, name = IXa_VIIIa, affected by kineticLaw
	xdot(17) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R11) + (-1.0 * reaction_R12) + ( 1.0 * reaction_R12b) + (-1.0 * reaction_R15) + (-1.0 * reaction_mw33aec61d_aae4_41f1_8f35_2e2e4bb56597));
	
% Species:   id = IXa_VIIIa_X, name = IXa_VIIIa_X, affected by kineticLaw
	xdot(18) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R12) + (-1.0 * reaction_R12b) + (-1.0 * reaction_R14) + (-1.0 * reaction_mw5619c52c_ce60_4357_8d45_2c512348ecc2));
	
% Species:   id = VIIIa1_L, name = VIIIa1_L, affected by kineticLaw
	xdot(19) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R13) + ( 1.0 * reaction_R14) + ( 1.0 * reaction_R15));
	
% Species:   id = VIIIa2, name = VIIIa2, affected by kineticLaw
	xdot(20) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R13) + ( 1.0 * reaction_R14) + ( 1.0 * reaction_R15));
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(21) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_R16));
	
% Species:   id = Va, name = Va, affected by kineticLaw
	xdot(22) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R16) + (-1.0 * reaction_R17) + (-1.0 * reaction_mw13213f35_d931_4cec_a202_9760e9a3e4b1));
	
% Species:   id = Xa_Va, name = Xa_Va, affected by kineticLaw
	xdot(23) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R17) + (-1.0 * reaction_R18) + ( 1.0 * reaction_R18b) + (-1.0 * reaction_R19) + ( 1.0 * reaction_R19));
	
% Species:   id = Xa_Va_II, name = Xa_Va_II, affected by kineticLaw
	xdot(24) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R18) + (-1.0 * reaction_R18b));
	
% Species:   id = mIIa, name = mIIa, affected by kineticLaw
	xdot(25) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R18b) + (-1.0 * reaction_R19) + (-1.0 * reaction_R24));
	
% Species:   id = TFPI, name = TFPI, affected by kineticLaw
	xdot(26) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_R20) + (-1.0 * reaction_R21));
	
% Species:   id = Xa_TFPI, name = Xa_TFPI, affected by kineticLaw
	xdot(27) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R20) + (-1.0 * reaction_R22));
	
% Species:   id = TF_VIIa_Xa_TFPI, name = TF_VIIa_Xa_TFPI, affected by kineticLaw
	xdot(28) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R21) + ( 1.0 * reaction_R22));
	
% Species:   id = ATIII, name = ATIII, affected by kineticLaw
	xdot(29) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_R23) + (-1.0 * reaction_R24) + (-1.0 * reaction_R25) + (-1.0 * reaction_R26) + (-1.0 * reaction_R27) + (-1.0 * reaction_mwc0c930a7_ee46_48b9_bc37_297a29d337ed) + (-1.0 * reaction_mwf959d54b_b8f2_4cf9_995a_bea2a3d1735d));
	
% Species:   id = Xa_ATIII, name = Xa_ATIII, affected by kineticLaw
	xdot(30) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R23));
	
% Species:   id = mIIa_ATIII, name = mIIa_ATIII, affected by kineticLaw
	xdot(31) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R24));
	
% Species:   id = IXa_ATIII, name = IXa_ATIII, affected by kineticLaw
	xdot(32) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R25));
	
% Species:   id = IIa_ATIII, name = IIa_ATIII, affected by kineticLaw
	xdot(33) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R26));
	
% Species:   id = TF_VIIa_ATIII, name = TF_VIIa_ATIII, affected by kineticLaw
	xdot(34) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R27));
	
% Species:   id = mw4e2cf0b0_bd70_45a4_9e60_eba82fa5c3e4, name = CA, affected by kineticLaw
	xdot(35) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_mw356a0437_4d35_42d9_a964_d205845dd3a0) + ( 1.0 * reaction_mw356a0437_4d35_42d9_a964_d205845dd3a0));
	
% Species:   id = mw469042d3_a94f_4ebe_af1c_1ead580aad2a, name = XII, affected by kineticLaw
	xdot(36) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_mw356a0437_4d35_42d9_a964_d205845dd3a0) + (-1.0 * reaction_mwb7173277_b0a8_4585_8e75_4188d464a440));
	
% Species:   id = mw6c404de5_5b24_48d6_a0c4_5491e07b1f72, name = XIIa, affected by kineticLaw
	xdot(37) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mw356a0437_4d35_42d9_a964_d205845dd3a0) + (-1.0 * reaction_mw2ad76883_679b_4cfa_a390_ed12c2cb488a) + ( 1.0 * reaction_mw7625dc03_2283_4c41_8d88_c03bbd995622) + ( 1.0 * reaction_mwa9bc550c_e44b_4a55_9d10_c274a9c710a8) + (-1.0 * reaction_mwc0c930a7_ee46_48b9_bc37_297a29d337ed) + (-1.0 * reaction_mwd29fbe1e_de98_4c2f_8d81_8ce87f0a245d) + ( 1.0 * reaction_mw733749dd_73df_4e8d_86b3_eabffb03d79e));
	
% Species:   id = mw8c2b9a07_22c3_4912_adb1_167a38ea4cb3, name = PK, affected by kineticLaw
	xdot(38) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_mw2ad76883_679b_4cfa_a390_ed12c2cb488a));
	
% Species:   id = mw819d0d09_05ba_4674_85ba_5c9439fb77f4, name = XIIa_PK, affected by kineticLaw
	xdot(39) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mw2ad76883_679b_4cfa_a390_ed12c2cb488a) + (-1.0 * reaction_mw7625dc03_2283_4c41_8d88_c03bbd995622));
	
% Species:   id = mw2be3652b_79af_4228_9d1c_9d65c7d0c70f, name = K, affected by kineticLaw
	xdot(40) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mw7625dc03_2283_4c41_8d88_c03bbd995622) + (-1.0 * reaction_mwb7173277_b0a8_4585_8e75_4188d464a440) + ( 1.0 * reaction_mwa9bc550c_e44b_4a55_9d10_c274a9c710a8));
	
% Species:   id = mw6a63ae22_6bb4_4dcf_992f_9287439dd556, name = XII_K, affected by kineticLaw
	xdot(41) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mwb7173277_b0a8_4585_8e75_4188d464a440) + (-1.0 * reaction_mwa9bc550c_e44b_4a55_9d10_c274a9c710a8));
	
% Species:   id = mwcefd1303_4967_4502_af6d_e75c88c4d548, name = XIIa_ATIII, affected by kineticLaw
	xdot(42) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mwc0c930a7_ee46_48b9_bc37_297a29d337ed));
	
% Species:   id = mwe043d306_ffdd_447b_9826_4df8abbece4d, name = XI, affected by kineticLaw
	xdot(43) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_mwd29fbe1e_de98_4c2f_8d81_8ce87f0a245d));
	
% Species:   id = mw6591152c_8b5a_4c9b_b095_956988a01ba0, name = XIa, affected by kineticLaw
	xdot(44) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mw733749dd_73df_4e8d_86b3_eabffb03d79e) + (-1.0 * reaction_mwf959d54b_b8f2_4cf9_995a_bea2a3d1735d) + (-1.0 * reaction_mw27430243_7541_45f2_a970_b53e97eb90b5) + ( 1.0 * reaction_mwc9055518_a470_4fa9_9ebe_473dc2a371af) + (-1.0 * reaction_mw0ca8823e_ed5a_443a_935b_db3cfb4c01e2) + ( 1.0 * reaction_mw0ca8823e_ed5a_443a_935b_db3cfb4c01e2));
	
% Species:   id = mwe51f72d2_84fb_4b43_b900_521410fdf99c, name = XIIa_XI, affected by kineticLaw
	xdot(45) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mwd29fbe1e_de98_4c2f_8d81_8ce87f0a245d) + (-1.0 * reaction_mw733749dd_73df_4e8d_86b3_eabffb03d79e));
	
% Species:   id = mw72ca05d8_25b0_4765_ba03_a6a0eb846aa0, name = XIa_ATIII, affected by kineticLaw
	xdot(46) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mwf959d54b_b8f2_4cf9_995a_bea2a3d1735d));
	
% Species:   id = mwe70b2c96_44b9_48eb_967a_7eb850a916a6, name = XIa_IX, affected by kineticLaw
	xdot(47) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mw27430243_7541_45f2_a970_b53e97eb90b5) + (-1.0 * reaction_mwc9055518_a470_4fa9_9ebe_473dc2a371af));
	
% Species:   id = mw64e9cef3_5dd3_43f3_ad04_58e8fc07a91b, name = IXa_X, affected by kineticLaw
	xdot(48) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mwfe3aa9b2_3507_4bda_b66a_d1b9ecf9b691) + (-1.0 * reaction_mwf5ec17b4_374b_4670_83e5_47135df80cb9));
	
% Species:   id = mw6d041b25_87db_4394_9b8b_7ac61e01f359, name = VIIa_X, affected by kineticLaw
	xdot(49) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mwea194c8b_e1a0_4a6e_a4d5_f55b2f784d87) + (-1.0 * reaction_mwd58c2ecb_6ff8_4b9b_8c31_a7711b5217d5) + (-1.0 * reaction_mw0ca8823e_ed5a_443a_935b_db3cfb4c01e2));
	
% Species:   id = mw85e2714d_e6e5_47d5_9ffc_d90573faebe1, name = IIa_12mIIa, defined in a rule 	xdot(50) = x(50);
	
% Species:   id = mwd68cbf38_9266_4dfb_aa00_f817c3421aec, name = Tmod, affected by kineticLaw
	xdot(51) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_mwa9e8a350_94c6_49e9_aba0_e23644ed770b));
	
% Species:   id = mwa6be116e_72f1_439e_bca6_eb61f79cc68e, name = IIa_Tmod, affected by kineticLaw
	xdot(52) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mwa9e8a350_94c6_49e9_aba0_e23644ed770b) + (-1.0 * reaction_mw533077fb_883c_475c_8a43_ab003a69478c) + ( 1.0 * reaction_mw3a695e19_d2d0_4083_af5a_1e8dd673dd32));
	
% Species:   id = mw6a8501d2_9479_41ae_8616_1e8d0e1bbfa9, name = PC, affected by kineticLaw
	xdot(53) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_mw533077fb_883c_475c_8a43_ab003a69478c));
	
% Species:   id = mw3cec90c2_500e_4f30_b6be_325ef5194755, name = IIa_Tmod_PC, affected by kineticLaw
	xdot(54) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mw533077fb_883c_475c_8a43_ab003a69478c) + (-1.0 * reaction_mw3a695e19_d2d0_4083_af5a_1e8dd673dd32));
	
% Species:   id = mwedf22864_05a0_40c3_a0d5_ede45a3e7e8f, name = APC, affected by kineticLaw
	xdot(55) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mw3a695e19_d2d0_4083_af5a_1e8dd673dd32) + (-1.0 * reaction_mw13213f35_d931_4cec_a202_9760e9a3e4b1) + (-1.0 * reaction_mw42194b65_07a6_43c3_a810_2d2c1b4fad6b) + ( 1.0 * reaction_mwe33e10f1_9ee4_4167_94cf_81ed3aafb1af) + ( 1.0 * reaction_mwa14cc09f_d815_4499_9299_642478acc115) + (-1.0 * reaction_mw33aec61d_aae4_41f1_8f35_2e2e4bb56597) + ( 1.0 * reaction_mwc0b0317d_2b0e_490d_bfd5_8719b2ead1ec) + (-1.0 * reaction_mw5619c52c_ce60_4357_8d45_2c512348ecc2) + ( 1.0 * reaction_mw415d69bc_061f_4d57_905d_58fca6bc6463));
	
% Species:   id = mwd3e1ba39_ab10_4702_addd_fb6a7e184a4b, name = Fg, affected by kineticLaw
	xdot(56) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*((-1.0 * reaction_mw95b41c99_0a48_4f12_8367_f5b176c613e5));
	
% Species:   id = mwfa9d903a_b5e5_4a38_a649_dfe4719577aa, name = F, affected by kineticLaw
	xdot(57) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mw95b41c99_0a48_4f12_8367_f5b176c613e5));
	
% Species:   id = mw2e632a32_3823_4933_95cb_19567cbcc66a, name = APC_Va, affected by kineticLaw
	xdot(58) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mw13213f35_d931_4cec_a202_9760e9a3e4b1) + (-1.0 * reaction_mwe33e10f1_9ee4_4167_94cf_81ed3aafb1af));
	
% Species:   id = mw8bdbd17d_f542_4b8c_88c6_a82eaf997a43, name = APC_VIIIa, affected by kineticLaw
	xdot(59) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mw42194b65_07a6_43c3_a810_2d2c1b4fad6b) + (-1.0 * reaction_mwa14cc09f_d815_4499_9299_642478acc115));
	
% Species:   id = mw18e5caa7_26eb_4521_b217_da75bb3193ad, name = Va_deg, affected by kineticLaw
	xdot(60) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mwe33e10f1_9ee4_4167_94cf_81ed3aafb1af));
	
% Species:   id = mwf5c3f9df_7ccf_4ca7_b241_471a66720da8, name = VIIIa_deg, affected by kineticLaw
	xdot(61) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mwa14cc09f_d815_4499_9299_642478acc115) + ( 1.0 * reaction_mwc0b0317d_2b0e_490d_bfd5_8719b2ead1ec) + ( 1.0 * reaction_mw415d69bc_061f_4d57_905d_58fca6bc6463));
	
% Species:   id = mwa4fcfa0c_6944_42fc_8c74_7865f13953c8, name = APC_IXa_VIIIa, affected by kineticLaw
	xdot(62) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mw33aec61d_aae4_41f1_8f35_2e2e4bb56597) + (-1.0 * reaction_mwc0b0317d_2b0e_490d_bfd5_8719b2ead1ec));
	
% Species:   id = mwe0bb059d_deaa_45fa_b7dc_ec1c4409c4ca, name = APC_IXa_VIIIa_X, affected by kineticLaw
	xdot(63) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mw5619c52c_ce60_4357_8d45_2c512348ecc2) + (-1.0 * reaction_mw415d69bc_061f_4d57_905d_58fca6bc6463));
	
% Species:   id = mw7a1594c9_f04f_478c_9f5f_ccbe0b95a820, name = Xa_VIII, affected by kineticLaw
	xdot(64) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mw4c020206_4593_4480_b410_d33a9df3298a) + (-1.0 * reaction_mwf122913a_9b0b_4492_8cb6_2dd00c3f6162));
	
% Species:   id = mwbdb849d8_2b25_4551_8de8_adc8bead2303, name = F12, affected by kineticLaw
	xdot(65) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_R9) + ( 1.0 * reaction_R18b) + (-1.0 * reaction_mw2b7d93e1_fc1b_4fa0_a03b_4d2b2259d14f));
	
% Species:   id = mw931f65a6_3967_4ac2_9904_ba791b216fc2, name = F12_deg, affected by kineticLaw
	xdot(66) = (1/(compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b))*(( 1.0 * reaction_mw2b7d93e1_fc1b_4fa0_a03b_4d2b2259d14f));
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


