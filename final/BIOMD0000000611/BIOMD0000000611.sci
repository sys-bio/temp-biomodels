
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b   id: mwa76931f0_7e48_4dcd_835f_4a2db486ed1b
	compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b=1;
		
// k1_p   id: k1
	k1_p=0.0043339901;
		
// k2_p   id: k2
	k2_p=0.0041242451;
		
// k3_p   id: k3
	k3_p=0.0019496187;
		
// k4_p   id: k4
	k4_p=0.075680013;
		
// k5_p   id: k5
	k5_p=0.00033894832;
		
// k6_p   id: k6
	k6_p=0.009975373;
		
// k7_p   id: k7
	k7_p=1.1527134E-5;
		
// k8_p   id: k8
	k8_p=1.3800407;
		
// k9_p   id: k9
	k9_p=0.036245656;
		
// k10_p   id: k10
	k10_p=8.9987819;
		
// k11_p   id: k11
	k11_p=9.5;
		
// k12_p   id: k12
	k12_p=0.032999929;
		
// k13_p   id: k13
	k13_p=20.6708;
		
// k14_p   id: k14
	k14_p=0.010569458;
		
// k15_p   id: k15
	k15_p=2.3887492;
		
// k16_p   id: k16
	k16_p=3.764127E-5;
		
// k17_p   id: k17
	k17_p=1.44895;
		
// k18_p   id: k18
	k18_p=0.0050724996;
		
// k19_p   id: k19
	k19_p=0.11749508;
		
// k20_p   id: k20
	k20_p=0.0013766033;
		
// k21_p   id: k21
	k21_p=0.048795021;
		
// k22_p   id: k22
	k22_p=42.71401;
		
// k23_p   id: k23
	k23_p=3.3E-5;
		
// k24_p   id: k24
	k24_p=0.009;
		
// k25_p   id: k25
	k25_p=0.0013357963;
		
// k26_p   id: k26
	k26_p=0.0013946425;
		
// k27_p   id: k27
	k27_p=0.00040233556;
		
// k29_p   id: k29
	k29_p=149.91541;
		
// k30_p   id: k30
	k30_p=0.10001522;
		
// k31_p   id: k31
	k31_p=29.479266;
		
// k32_p   id: k32
	k32_p=0.21872155;
		
// k33_p   id: k33
	k33_p=0.0001801577;
		
// k34_p   id: k34
	k34_p=0.00045;
		
// k35_p   id: k35
	k35_p=0.00010062408;
		
// k36_p   id: k36
	k36_p=0.25638864;
		
// k37_p   id: k37
	k37_p=0.025386917;
		
// k38_p   id: k38
	k38_p=1.0556718E-6;
		
// k39_p   id: k39
	k39_p=3.55E-6;
		
// k40_p   id: k40
	k40_p=2.8169728E-7;
		
// k41_p   id: k41
	k41_p=3.917682E-6;
		
// k42_p   id: k42
	k42_p=3.2905257E-7;
		
// mwe5422617_5481_47c8_bf98_d6e3f1e96384_p   id: mwe5422617_5481_47c8_bf98_d6e3f1e96384
	mwe5422617_5481_47c8_bf98_d6e3f1e96384_p=8.5153312E-6;
		
// mw3ab61faa_95e4_40a9_93de_5c51755957c4_p   id: mw3ab61faa_95e4_40a9_93de_5c51755957c4
	mw3ab61faa_95e4_40a9_93de_5c51755957c4_p=0.091852853;
		
// mw862c3fea_05a0_4d3d_ba5c_9727bbb67907_p   id: mw862c3fea_05a0_4d3d_ba5c_9727bbb67907
	mw862c3fea_05a0_4d3d_ba5c_9727bbb67907_p=1800;
		
// mw107e9839_b4a4_46c8_9102_da7d857fd655_p   id: mw107e9839_b4a4_46c8_9102_da7d857fd655
	mw107e9839_b4a4_46c8_9102_da7d857fd655_p=47.928292;
		
// mweb1be1ac_0c60_4849_b306_071c8f9370c0_p   id: mweb1be1ac_0c60_4849_b306_071c8f9370c0
	mweb1be1ac_0c60_4849_b306_071c8f9370c0_p=0.15;
		
// mw94d2be4e_839e_4154_a6f0_f0d6b61e50a9_p   id: mw94d2be4e_839e_4154_a6f0_f0d6b61e50a9
	mw94d2be4e_839e_4154_a6f0_f0d6b61e50a9_p=57.613526;
		
// mw6f439ade_bb02_4671_8e45_8beaa312b3d2_p   id: mw6f439ade_bb02_4671_8e45_8beaa312b3d2
	mw6f439ade_bb02_4671_8e45_8beaa312b3d2_p=4.1832115;
		
// mwf677450c_a4e3_41df_be5a_9c8928ac27f4_p   id: mwf677450c_a4e3_41df_be5a_9c8928ac27f4
	mwf677450c_a4e3_41df_be5a_9c8928ac27f4_p=1.08E-8;
		
// mweacc6c48_8e8c_481b_92ce_0cb9ccb3be00_p   id: mweacc6c48_8e8c_481b_92ce_0cb9ccb3be00
	mweacc6c48_8e8c_481b_92ce_0cb9ccb3be00_p=4.8E-7;
		
// mwb01ef86f_18d8_45e7_a452_31878dcb3d49_p   id: mwb01ef86f_18d8_45e7_a452_31878dcb3d49
	mwb01ef86f_18d8_45e7_a452_31878dcb3d49_p=30.668349;
		
// mw7300dcac_9389_4201_88c7_7effa7fdb0f3_p   id: mw7300dcac_9389_4201_88c7_7effa7fdb0f3
	mw7300dcac_9389_4201_88c7_7effa7fdb0f3_p=10.565569;
		
// mw44adf04a_f1e2_4ca9_9615_5a9f4d3bbea8_p   id: mw44adf04a_f1e2_4ca9_9615_5a9f4d3bbea8
	mw44adf04a_f1e2_4ca9_9615_5a9f4d3bbea8_p=0.13304333;
		
// mwc189e7ea_7518_4a4f_be0f_03f2d073b29e_p   id: mwc189e7ea_7518_4a4f_be0f_03f2d073b29e
	mwc189e7ea_7518_4a4f_be0f_03f2d073b29e_p=83.206626;
		
// mwaec203ce_06d5_4003_bfdb_7244d3d77255_p   id: mwaec203ce_06d5_4003_bfdb_7244d3d77255
	mwaec203ce_06d5_4003_bfdb_7244d3d77255_p=0.0011427258;
		
// mw05b4111c_4463_4be0_aa1e_5a8f50c7bf67_p   id: mw05b4111c_4463_4be0_aa1e_5a8f50c7bf67
	mw05b4111c_4463_4be0_aa1e_5a8f50c7bf67_p=0.059664002;
		
// mw7b89687a_3110_4d5f_a9ec_7ca8761f0d41_p   id: mw7b89687a_3110_4d5f_a9ec_7ca8761f0d41
	mw7b89687a_3110_4d5f_a9ec_7ca8761f0d41_p=84.659935;
		
// mw61fdd721_9193_442c_bc9e_f1058c4720e7_p   id: mw61fdd721_9193_442c_bc9e_f1058c4720e7
	mw61fdd721_9193_442c_bc9e_f1058c4720e7_p=1.2943783E-5;
		
// mw1ddc2a05_bc78_4434_a2d9_d06701483346_p   id: mw1ddc2a05_bc78_4434_a2d9_d06701483346
	mw1ddc2a05_bc78_4434_a2d9_d06701483346_p=19.338228;
		
// mw4fc81076_be53_4fc3_9ade_3587e8d60355_p   id: mw4fc81076_be53_4fc3_9ade_3587e8d60355
	mw4fc81076_be53_4fc3_9ade_3587e8d60355_p=0.1857857;
		
// mwa4cc6bbe_c310_445f_bba7_a94868342831_p   id: mwa4cc6bbe_c310_445f_bba7_a94868342831
	mwa4cc6bbe_c310_445f_bba7_a94868342831_p=1.0740276E4;
		
// mwd6b996b1_d7fe_42de_b17e_b2482109c54d_p   id: mwd6b996b1_d7fe_42de_b17e_b2482109c54d
	mwd6b996b1_d7fe_42de_b17e_b2482109c54d_p=0.1043597;
		
// mwc5dc3645_536d_4bb4_88c7_4aeac4f5a241_p   id: mwc5dc3645_536d_4bb4_88c7_4aeac4f5a241
	mwc5dc3645_536d_4bb4_88c7_4aeac4f5a241_p=2.0649128;
		
// mwc85f8d37_7f39_41b2_8ea4_00b5adad2eac_p   id: mwc85f8d37_7f39_41b2_8ea4_00b5adad2eac
	mwc85f8d37_7f39_41b2_8ea4_00b5adad2eac_p=0.07934338;
		
// mw807b9a99_fb16_421f_b724_69f29f3fcfb2_p   id: mw807b9a99_fb16_421f_b724_69f29f3fcfb2
	mw807b9a99_fb16_421f_b724_69f29f3fcfb2_p=1.9895374;
		
// mw234b484f_d2d5_4ae8_a077_217c600588d8_p   id: mw234b484f_d2d5_4ae8_a077_217c600588d8
	mw234b484f_d2d5_4ae8_a077_217c600588d8_p=0.24027638;
		
// mwa2636601_825e_4846_aa2d_c35bd242ec99_p   id: mwa2636601_825e_4846_aa2d_c35bd242ec99
	mwa2636601_825e_4846_aa2d_c35bd242ec99_p=0.032359973;
		
// mw70d2f292_be41_4999_99cb_9c146808db85_p   id: mw70d2f292_be41_4999_99cb_9c146808db85
	mw70d2f292_be41_4999_99cb_9c146808db85_p=0.077518002;
		
// mw0e80d629_98c1_44a6_bd57_3a4027c87b4c_p   id: mw0e80d629_98c1_44a6_bd57_3a4027c87b4c
	mw0e80d629_98c1_44a6_bd57_3a4027c87b4c_p=2.0869571;
		
// mw7aeacec0_be36_49bf_8548_7a3e2b5fe3cb_p   id: mw7aeacec0_be36_49bf_8548_7a3e2b5fe3cb
	mw7aeacec0_be36_49bf_8548_7a3e2b5fe3cb_p=0.029887563;
		
// mwb63aa5ed_b6d8_4241_9987_54828945aea3_p   id: mwb63aa5ed_b6d8_4241_9987_54828945aea3
	mwb63aa5ed_b6d8_4241_9987_54828945aea3_p=0.1289308;
		
// mw4d2fe532_2ccd_42c4_9b4b_759022a87484_p   id: mw4d2fe532_2ccd_42c4_9b4b_759022a87484
	mw4d2fe532_2ccd_42c4_9b4b_759022a87484_p=1.4001578;
		
// mw6b555ed1_194e_4fa4_9688_8105aa7c60c0_p   id: mw6b555ed1_194e_4fa4_9688_8105aa7c60c0
	mw6b555ed1_194e_4fa4_9688_8105aa7c60c0_p=0.013215482;
		
// mwaa306898_0d0f_4748_b48a_fcd56bdc0b16_p   id: mwaa306898_0d0f_4748_b48a_fcd56bdc0b16
	mwaa306898_0d0f_4748_b48a_fcd56bdc0b16_p=0.15;
		
// mwec1b7289_5544_4c2b_b9f6_bf6524cabda5_p   id: mwec1b7289_5544_4c2b_b9f6_bf6524cabda5
	mwec1b7289_5544_4c2b_b9f6_bf6524cabda5_p=3.15;
		
// mw6843129b_7601_452f_be5d_977f7203bfb5_p   id: mw6843129b_7601_452f_be5d_977f7203bfb5
	mw6843129b_7601_452f_be5d_977f7203bfb5_p=0.0345;
		
// mwc7a68e9d_cc1f_48bf_a582_c06056d082ad_p   id: mwc7a68e9d_cc1f_48bf_a582_c06056d082ad
	mwc7a68e9d_cc1f_48bf_a582_c06056d082ad_p=3400;
		
// mw69d180ec_210d_4add_b599_e567c88ee538_p   id: mw69d180ec_210d_4add_b599_e567c88ee538
	mw69d180ec_210d_4add_b599_e567c88ee538_p=9000;
		
// mwf402f97a_30c4_457f_9ef4_1be774a61358_p   id: mwf402f97a_30c4_457f_9ef4_1be774a61358
	mwf402f97a_30c4_457f_9ef4_1be774a61358_p=1400;
		
// mwed93f2e8_0fdb_4c44_bb8f_aeef60171b0a_p   id: mwed93f2e8_0fdb_4c44_bb8f_aeef60171b0a
	mwed93f2e8_0fdb_4c44_bb8f_aeef60171b0a_p=90;
		
// mw61f543e9_43eb_442d_9985_d08f83a35bcd_p   id: mw61f543e9_43eb_442d_9985_d08f83a35bcd
	mw61f543e9_43eb_442d_9985_d08f83a35bcd_p=60;
		
// mwf4279c86_df09_4b2e_9fae_a6b9436be477_p   id: mwf4279c86_df09_4b2e_9fae_a6b9436be477
	mwf4279c86_df09_4b2e_9fae_a6b9436be477_p=450;
		
// mw09b305e5_8e0c_4d34_a367_72e681d24550_p   id: mw09b305e5_8e0c_4d34_a367_72e681d24550
	mw09b305e5_8e0c_4d34_a367_72e681d24550_p=0.001743;
		
// mwf417c223_4f28_436b_be61_dc0a6db906e9_p   id: mwf417c223_4f28_436b_be61_dc0a6db906e9
	mwf417c223_4f28_436b_be61_dc0a6db906e9_p=2.5;
		
// mw21356d0a_52a7_47d9_a80b_c83f72f91249_p   id: mw21356d0a_52a7_47d9_a80b_c83f72f91249
	mw21356d0a_52a7_47d9_a80b_c83f72f91249_p=0.5;
		
// mw6657e10d_433c_402e_af1d_edde69570dc7_p   id: mw6657e10d_433c_402e_af1d_edde69570dc7
	mw6657e10d_433c_402e_af1d_edde69570dc7_p=20;
		
// mw3c8d8702_954e_4beb_9094_8fae9207cfb4_p   id: mw3c8d8702_954e_4beb_9094_8fae9207cfb4
	mw3c8d8702_954e_4beb_9094_8fae9207cfb4_p=10;
		
// mw10579ad2_4018_4dc2_bd2d_cbc2b46014d2_p   id: mw10579ad2_4018_4dc2_bd2d_cbc2b46014d2
	mw10579ad2_4018_4dc2_bd2d_cbc2b46014d2_p=0.1;
		
// mwa8eaa9b8_8166_49f0_b98a_ee69239b6f37_p   id: mwa8eaa9b8_8166_49f0_b98a_ee69239b6f37
	mwa8eaa9b8_8166_49f0_b98a_ee69239b6f37_p=0.7;
		
// mw2555880e_202e_42c6_bcb5_c565dd6748d7_p   id: mw2555880e_202e_42c6_bcb5_c565dd6748d7
	mw2555880e_202e_42c6_bcb5_c565dd6748d7_p=160;
		
// mwd49f57a8_7e48_4891_bb1e_3e83f28d63a2_p   id: mwd49f57a8_7e48_4891_bb1e_3e83f28d63a2
	mwd49f57a8_7e48_4891_bb1e_3e83f28d63a2_p=31;
		
// mw069bc62a_eef3_452c_9c80_6ac8e99131f3_p   id: mw069bc62a_eef3_452c_9c80_6ac8e99131f3
	mw069bc62a_eef3_452c_9c80_6ac8e99131f3_p=340;
		
// mwea0d7c35_f4d2_4205_8c59_11ac05134dde_p   id: mwea0d7c35_f4d2_4205_8c59_11ac05134dde
	mwea0d7c35_f4d2_4205_8c59_11ac05134dde_p=0.00010958881;
		
// mw8482ca53_fca1_4841_ac2f_2469a76a758e_p   id: mw8482ca53_fca1_4841_ac2f_2469a76a758e
	mw8482ca53_fca1_4841_ac2f_2469a76a758e_p=0.12914436;
		
// mwaf2c7981_908c_4f4c_898e_2491a9f04e17_p   id: mwaf2c7981_908c_4f4c_898e_2491a9f04e17
	mwaf2c7981_908c_4f4c_898e_2491a9f04e17_p=0.10523968;
		
// mw3b48c5e7_774a_4dc4_917f_8f8cff8d9c4b_p   id: mw3b48c5e7_774a_4dc4_917f_8f8cff8d9c4b
	mw3b48c5e7_774a_4dc4_917f_8f8cff8d9c4b_p=90.211653;
		
// mw1511789f_5e7b_43bf_b162_d930b027a867_p   id: mw1511789f_5e7b_43bf_b162_d930b027a867
	mw1511789f_5e7b_43bf_b162_d930b027a867_p=0.006;
		
// mw7ff84021_4836_4a63_84fc_4389e5f74f81_p   id: mw7ff84021_4836_4a63_84fc_4389e5f74f81
	mw7ff84021_4836_4a63_84fc_4389e5f74f81_p=0.13632245;
		
// mw204ea0fc_f851_4d50_9b82_bc66e34ac7dc_p   id: mw204ea0fc_f851_4d50_9b82_bc66e34ac7dc
	mw204ea0fc_f851_4d50_9b82_bc66e34ac7dc_p=18.705029;
		
// mw95ac212b_a197_49d6_8c76_bc6154a4cf5e_p   id: mw95ac212b_a197_49d6_8c76_bc6154a4cf5e
	mw95ac212b_a197_49d6_8c76_bc6154a4cf5e_p=0.00035000006;
		
// mw9bcd5c0b_3384_4d5e_92ce_70b13d64e8b8_p   id: mw9bcd5c0b_3384_4d5e_92ce_70b13d64e8b8
	mw9bcd5c0b_3384_4d5e_92ce_70b13d64e8b8_p=0.11573051;
		
// mw95e328a0_be5b_4260_b6e4_d85c4c4aae9e_p   id: mw95e328a0_be5b_4260_b6e4_d85c4c4aae9e
	mw95e328a0_be5b_4260_b6e4_d85c4c4aae9e_p=0.050084768;
		
// mw7be1d52f_926f_47e0_964b_d3303c8453b1_p   id: mw7be1d52f_926f_47e0_964b_d3303c8453b1
	mw7be1d52f_926f_47e0_964b_d3303c8453b1_p=0.05;
		
// mw85e2714d_e6e5_47d5_9ffc_d90573faebe1_s   id: mw85e2714d_e6e5_47d5_9ffc_d90573faebe1
	mw85e2714d_e6e5_47d5_9ffc_d90573faebe1_s=0;
		



xdot=[
//x(1)   ID: mwc0cb654e_d95f_4d4b_8dc2_3a21afd35a19  initialValue: 0.13081564
	0;
	
//x(2)   ID: mwbcd76870_e02a_442b_abdf_e42cd7086a1f  initialValue: 1.7143
	0;
	
//x(3)   ID: mw889568f2_c2e0_4ea3_ad4c_b26b66888184  initialValue: 0
	0;
	
//x(4)   ID: TF  initialValue: 0.005
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((k2_p* x(4) * x(6) )-(k1_p* x(5) )) + (-1)*(1)* ((k4_p* x(4) * x(8) )-(k3_p* x(7) )) );
	
//x(5)   ID: TF_VII  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (1)*(1)* ((k2_p* x(4) * x(6) )-(k1_p* x(5) )) );
	
//x(6)   ID: VII  initialValue: 10
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((k2_p* x(4) * x(6) )-(k1_p* x(5) )) + (-1)*(1)* (k5_p* x(7) * x(6) ) + (-1)*(1)* (k6_p* x(9) * x(6) ) + (-1)*(1)* (k7_p* x(10) * x(6) ) );
	
//x(7)   ID: TF_VIIa  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (k5_p* x(7) * x(6) ) + (-1)*(1)* ((k9_p* x(7) * x(12) )-(k8_p* x(11) )) + (-1)*(1)* ((k12_p* x(7) * x(9) )-(k11_p* x(13) )) + (-1)*(1)* ((k14_p* x(7) * x(14) )-(k13_p* x(15) )) + (-1)*(1)* (k37_p* x(7) * x(30) ) + (-1)*(1)* (k42_p* x(7) * x(32) ) + (1)*(1)* ((k4_p* x(4) * x(8) )-(k3_p* x(7) )) + (1)*(1)* (k5_p* x(7) * x(6) ) + (1)*(1)* (k15_p* x(15) ) );
	
//x(8)   ID: VIIa  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((k4_p* x(4) * x(8) )-(k3_p* x(7) )) + (-1)*(1)* ((mw05b4111c_4463_4be0_aa1e_5a8f50c7bf67_p* x(8) * x(12) )-(mw7b89687a_3110_4d5f_a9ec_7ca8761f0d41_p* x(52) )) + (1)*(1)* (k5_p* x(7) * x(6) ) + (1)*(1)* (k6_p* x(9) * x(6) ) + (1)*(1)* (k7_p* x(10) * x(6) ) + (1)*(1)* (mw61fdd721_9193_442c_bc9e_f1058c4720e7_p* x(52) ) + (1)*(1)* (mw7be1d52f_926f_47e0_964b_d3303c8453b1_p* x(52) * x(47) ) );
	
//x(9)   ID: Xa  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (k6_p* x(9) * x(6) ) + (-1)*(1)* ((k12_p* x(7) * x(9) )-(k11_p* x(13) )) + (-1)*(1)* (k16_p* x(9) * x(17) ) + (-1)*(1)* ((mw8482ca53_fca1_4841_ac2f_2469a76a758e_p* x(9) * x(25) )-(mw1511789f_5e7b_43bf_b162_d930b027a867_p* x(26) )) + (-1)*(1)* ((k34_p* x(9) * x(29) )-(k33_p* x(30) )) + (-1)*(1)* (k38_p* x(9) * x(32) ) + (-1)*(1)* ((mwaa306898_0d0f_4748_b48a_fcd56bdc0b16_p* x(9) * x(18) )-(mwec1b7289_5544_4c2b_b9f6_bf6524cabda5_p* x(66) )) + (1)*(1)* (k6_p* x(9) * x(6) ) + (1)*(1)* (k16_p* x(9) * x(17) ) + (1)*(1)* (k22_p* x(21) ) + (1)*(1)* (mwaec203ce_06d5_4003_bfdb_7244d3d77255_p* x(51) ) + (1)*(1)* (mw61fdd721_9193_442c_bc9e_f1058c4720e7_p* x(52) ) + (1)*(1)* (mw6843129b_7601_452f_be5d_977f7203bfb5_p* x(66) ) + (1)*(1)* (mw7be1d52f_926f_47e0_964b_d3303c8453b1_p* x(52) * x(47) ) );
	
//x(10)   ID: IIa  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (k7_p* x(10) * x(6) ) + (-1)*(1)* (k17_p* x(10) * x(18) ) + (-1)*(1)* (k27_p* x(10) * x(24) ) + (-1)*(1)* (k41_p* x(10) * x(32) ) + (-1)*(1)* ((mw9bcd5c0b_3384_4d5e_92ce_70b13d64e8b8_p* x(10) * x(53) )-(mw95e328a0_be5b_4260_b6e4_d85c4c4aae9e_p* x(54) )) + (-1)*(1)* ((mw3b48c5e7_774a_4dc4_917f_8f8cff8d9c4b_p* x(10) * x(58) )/(mwa4cc6bbe_c310_445f_bba7_a94868342831_p+ x(58) )) + (1)*(1)* (k7_p* x(10) * x(6) ) + (1)*(1)* (k16_p* x(9) * x(17) ) + (1)*(1)* (k17_p* x(10) * x(18) ) + (1)*(1)* (k27_p* x(10) * x(24) ) + (1)*(1)* (k32_p* x(28) * x(26) ) + (1)*(1)* ((mw3b48c5e7_774a_4dc4_917f_8f8cff8d9c4b_p* x(10) * x(58) )/(mwa4cc6bbe_c310_445f_bba7_a94868342831_p+ x(58) )) );
	
//x(11)   ID: TF_VIIa_X  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (k10_p* x(11) ) + (1)*(1)* ((k9_p* x(7) * x(12) )-(k8_p* x(11) )) );
	
//x(12)   ID: X  initialValue: 160
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((k9_p* x(7) * x(12) )-(k8_p* x(11) )) + (-1)*(1)* ((k21_p* x(20) * x(12) )-(k20_p* x(21) )) + (-1)*(1)* ((mw44adf04a_f1e2_4ca9_9615_5a9f4d3bbea8_p* x(16) * x(12) )-(mwc189e7ea_7518_4a4f_be0f_03f2d073b29e_p* x(51) )) + (-1)*(1)* ((mw05b4111c_4463_4be0_aa1e_5a8f50c7bf67_p* x(8) * x(12) )-(mw7b89687a_3110_4d5f_a9ec_7ca8761f0d41_p* x(52) )) + (1)*(1)* (k25_p* x(21) ) + (1)*(1)* (mw6b555ed1_194e_4fa4_9688_8105aa7c60c0_p* x(65) ) );
	
//x(13)   ID: TF_VIIa_Xa  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((k36_p* x(13) * x(29) )-(k35_p* x(31) )) + (1)*(1)* (k10_p* x(11) ) + (1)*(1)* ((k12_p* x(7) * x(9) )-(k11_p* x(13) )) );
	
//x(14)   ID: IX  initialValue: 90
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((k14_p* x(7) * x(14) )-(k13_p* x(15) )) + (-1)*(1)* (( x(1) * x(47) * x(14) )-(mwb01ef86f_18d8_45e7_a452_31878dcb3d49_p* x(50) )) );
	
//x(15)   ID: TF_VIIa_IX  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (k15_p* x(15) ) + (1)*(1)* ((k14_p* x(7) * x(14) )-(k13_p* x(15) )) );
	
//x(16)   ID: IXa  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((k19_p* x(16) * x(19) )-(k18_p* x(20) )) + (-1)*(1)* (k40_p* x(16) * x(32) ) + (-1)*(1)* ((mw44adf04a_f1e2_4ca9_9615_5a9f4d3bbea8_p* x(16) * x(12) )-(mwc189e7ea_7518_4a4f_be0f_03f2d073b29e_p* x(51) )) + (1)*(1)* (k15_p* x(15) ) + (1)*(1)* (k25_p* x(21) ) + (1)*(1)* (k26_p* x(20) ) + (1)*(1)* (mw7300dcac_9389_4201_88c7_7effa7fdb0f3_p* x(50) ) + (1)*(1)* (mwaec203ce_06d5_4003_bfdb_7244d3d77255_p* x(51) ) + (1)*(1)* (mw7aeacec0_be36_49bf_8548_7a3e2b5fe3cb_p* x(64) ) + (1)*(1)* (mw6b555ed1_194e_4fa4_9688_8105aa7c60c0_p* x(65) ) );
	
//x(17)   ID: II  initialValue: 1400
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (k16_p* x(9) * x(17) ) + (-1)*(1)* ((k30_p* x(26) * x(17) )-(k29_p* x(27) )) );
	
//x(18)   ID: VIII  initialValue: 0.7
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (k17_p* x(10) * x(18) ) + (-1)*(1)* ((mwaa306898_0d0f_4748_b48a_fcd56bdc0b16_p* x(9) * x(18) )-(mwec1b7289_5544_4c2b_b9f6_bf6524cabda5_p* x(66) )) );
	
//x(19)   ID: VIIIa  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((k19_p* x(16) * x(19) )-(k18_p* x(20) )) + (-1)*(1)* ((k24_p* x(19) )-(k23_p* x(22) * x(23) )) + (-1)*(1)* ((mwc85f8d37_7f39_41b2_8ea4_00b5adad2eac_p* x(57) * x(19) )-(mw807b9a99_fb16_421f_b724_69f29f3fcfb2_p* x(61) )) + (1)*(1)* (k17_p* x(10) * x(18) ) + (1)*(1)* (mw6843129b_7601_452f_be5d_977f7203bfb5_p* x(66) ) );
	
//x(20)   ID: IXa_VIIIa  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((k21_p* x(20) * x(12) )-(k20_p* x(21) )) + (-1)*(1)* (k26_p* x(20) ) + (-1)*(1)* ((mw70d2f292_be41_4999_99cb_9c146808db85_p* x(57) * x(20) )-(mw0e80d629_98c1_44a6_bd57_3a4027c87b4c_p* x(64) )) + (1)*(1)* ((k19_p* x(16) * x(19) )-(k18_p* x(20) )) + (1)*(1)* (k22_p* x(21) ) );
	
//x(21)   ID: IXa_VIIIa_X  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (k22_p* x(21) ) + (-1)*(1)* (k25_p* x(21) ) + (-1)*(1)* ((mwb63aa5ed_b6d8_4241_9987_54828945aea3_p* x(57) * x(21) )-(mw4d2fe532_2ccd_42c4_9b4b_759022a87484_p* x(65) )) + (1)*(1)* ((k21_p* x(20) * x(12) )-(k20_p* x(21) )) );
	
//x(22)   ID: VIIIa1_L  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (1)*(1)* ((k24_p* x(19) )-(k23_p* x(22) * x(23) )) + (1)*(1)* (k25_p* x(21) ) + (1)*(1)* (k26_p* x(20) ) );
	
//x(23)   ID: VIIIa2  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (1)*(1)* ((k24_p* x(19) )-(k23_p* x(22) * x(23) )) + (1)*(1)* (k25_p* x(21) ) + (1)*(1)* (k26_p* x(20) ) );
	
//x(24)   ID: V  initialValue: 20
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (k27_p* x(10) * x(24) ) );
	
//x(25)   ID: Va  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((mw8482ca53_fca1_4841_ac2f_2469a76a758e_p* x(9) * x(25) )-(mw1511789f_5e7b_43bf_b162_d930b027a867_p* x(26) )) + (-1)*(1)* ((mwd6b996b1_d7fe_42de_b17e_b2482109c54d_p* x(57) * x(25) )-(mwc5dc3645_536d_4bb4_88c7_4aeac4f5a241_p* x(60) )) + (1)*(1)* (k27_p* x(10) * x(24) ) );
	
//x(26)   ID: Xa_Va  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((k30_p* x(26) * x(17) )-(k29_p* x(27) )) + (-1)*(1)* (k32_p* x(28) * x(26) ) + (1)*(1)* ((mw8482ca53_fca1_4841_ac2f_2469a76a758e_p* x(9) * x(25) )-(mw1511789f_5e7b_43bf_b162_d930b027a867_p* x(26) )) + (1)*(1)* (k31_p* x(27) ) + (1)*(1)* (k32_p* x(28) * x(26) ) );
	
//x(27)   ID: Xa_Va_II  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (k31_p* x(27) ) + (1)*(1)* ((k30_p* x(26) * x(17) )-(k29_p* x(27) )) );
	
//x(28)   ID: mIIa  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (k32_p* x(28) * x(26) ) + (-1)*(1)* (k39_p* x(28) * x(32) ) + (1)*(1)* (k31_p* x(27) ) );
	
//x(29)   ID: TFPI  initialValue: 2.5
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((k34_p* x(9) * x(29) )-(k33_p* x(30) )) + (-1)*(1)* ((k36_p* x(13) * x(29) )-(k35_p* x(31) )) );
	
//x(30)   ID: Xa_TFPI  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (k37_p* x(7) * x(30) ) + (1)*(1)* ((k34_p* x(9) * x(29) )-(k33_p* x(30) )) );
	
//x(31)   ID: TF_VIIa_Xa_TFPI  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (1)*(1)* ((k36_p* x(13) * x(29) )-(k35_p* x(31) )) + (1)*(1)* (k37_p* x(7) * x(30) ) );
	
//x(32)   ID: ATIII  initialValue: 3400
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (k38_p* x(9) * x(32) ) + (-1)*(1)* (k39_p* x(28) * x(32) ) + (-1)*(1)* (k40_p* x(16) * x(32) ) + (-1)*(1)* (k41_p* x(10) * x(32) ) + (-1)*(1)* (k42_p* x(7) * x(32) ) + (-1)*(1)* (mwf677450c_a4e3_41df_be5a_9c8928ac27f4_p* x(40) * x(32) ) + (-1)*(1)* (mweacc6c48_8e8c_481b_92ce_0cb9ccb3be00_p* x(47) * x(32) ) );
	
//x(33)   ID: Xa_ATIII  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (1)*(1)* (k38_p* x(9) * x(32) ) );
	
//x(34)   ID: mIIa_ATIII  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (1)*(1)* (k39_p* x(28) * x(32) ) );
	
//x(35)   ID: IXa_ATIII  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (1)*(1)* (k40_p* x(16) * x(32) ) );
	
//x(36)   ID: IIa_ATIII  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (1)*(1)* (k41_p* x(10) * x(32) ) );
	
//x(37)   ID: TF_VIIa_ATIII  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (1)*(1)* (k42_p* x(7) * x(32) ) );
	
//x(38)   ID: mw4e2cf0b0_bd70_45a4_9e60_eba82fa5c3e4  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (mwe5422617_5481_47c8_bf98_d6e3f1e96384_p* x(38) * x(39) ) + (1)*(1)* (mwe5422617_5481_47c8_bf98_d6e3f1e96384_p* x(38) * x(39) ) );
	
//x(39)   ID: mw469042d3_a94f_4ebe_af1c_1ead580aad2a  initialValue: 340
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (mwe5422617_5481_47c8_bf98_d6e3f1e96384_p* x(38) * x(39) ) + (-1)*(1)* ((mweb1be1ac_0c60_4849_b306_071c8f9370c0_p* x(39) * x(43) )-(mw94d2be4e_839e_4154_a6f0_f0d6b61e50a9_p* x(44) )) );
	
//x(40)   ID: mw6c404de5_5b24_48d6_a0c4_5491e07b1f72  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((mw3ab61faa_95e4_40a9_93de_5c51755957c4_p* x(40) * x(41) )-(mw862c3fea_05a0_4d3d_ba5c_9727bbb67907_p* x(42) )) + (-1)*(1)* (mwf677450c_a4e3_41df_be5a_9c8928ac27f4_p* x(40) * x(32) ) + (-1)*(1)* ((mw7ff84021_4836_4a63_84fc_4389e5f74f81_p* x(40) * x(46) )-(mw204ea0fc_f851_4d50_9b82_bc66e34ac7dc_p* x(48) )) + (1)*(1)* (mwe5422617_5481_47c8_bf98_d6e3f1e96384_p* x(38) * x(39) ) + (1)*(1)* (mw107e9839_b4a4_46c8_9102_da7d857fd655_p* x(42) ) + (1)*(1)* (mw6f439ade_bb02_4671_8e45_8beaa312b3d2_p* x(44) ) + (1)*(1)* (mw95ac212b_a197_49d6_8c76_bc6154a4cf5e_p* x(48) ) );
	
//x(41)   ID: mw8c2b9a07_22c3_4912_adb1_167a38ea4cb3  initialValue: 450
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((mw3ab61faa_95e4_40a9_93de_5c51755957c4_p* x(40) * x(41) )-(mw862c3fea_05a0_4d3d_ba5c_9727bbb67907_p* x(42) )) );
	
//x(42)   ID: mw819d0d09_05ba_4674_85ba_5c9439fb77f4  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (mw107e9839_b4a4_46c8_9102_da7d857fd655_p* x(42) ) + (1)*(1)* ((mw3ab61faa_95e4_40a9_93de_5c51755957c4_p* x(40) * x(41) )-(mw862c3fea_05a0_4d3d_ba5c_9727bbb67907_p* x(42) )) );
	
//x(43)   ID: mw2be3652b_79af_4228_9d1c_9d65c7d0c70f  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((mweb1be1ac_0c60_4849_b306_071c8f9370c0_p* x(39) * x(43) )-(mw94d2be4e_839e_4154_a6f0_f0d6b61e50a9_p* x(44) )) + (1)*(1)* (mw107e9839_b4a4_46c8_9102_da7d857fd655_p* x(42) ) + (1)*(1)* (mw6f439ade_bb02_4671_8e45_8beaa312b3d2_p* x(44) ) );
	
//x(44)   ID: mw6a63ae22_6bb4_4dcf_992f_9287439dd556  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (mw6f439ade_bb02_4671_8e45_8beaa312b3d2_p* x(44) ) + (1)*(1)* ((mweb1be1ac_0c60_4849_b306_071c8f9370c0_p* x(39) * x(43) )-(mw94d2be4e_839e_4154_a6f0_f0d6b61e50a9_p* x(44) )) );
	
//x(45)   ID: mwcefd1303_4967_4502_af6d_e75c88c4d548  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (1)*(1)* (mwf677450c_a4e3_41df_be5a_9c8928ac27f4_p* x(40) * x(32) ) );
	
//x(46)   ID: mwe043d306_ffdd_447b_9826_4df8abbece4d  initialValue: 31
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((mw7ff84021_4836_4a63_84fc_4389e5f74f81_p* x(40) * x(46) )-(mw204ea0fc_f851_4d50_9b82_bc66e34ac7dc_p* x(48) )) );
	
//x(47)   ID: mw6591152c_8b5a_4c9b_b095_956988a01ba0  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (mweacc6c48_8e8c_481b_92ce_0cb9ccb3be00_p* x(47) * x(32) ) + (-1)*(1)* (( x(1) * x(47) * x(14) )-(mwb01ef86f_18d8_45e7_a452_31878dcb3d49_p* x(50) )) + (-1)*(1)* (mw7be1d52f_926f_47e0_964b_d3303c8453b1_p* x(52) * x(47) ) + (1)*(1)* (mw95ac212b_a197_49d6_8c76_bc6154a4cf5e_p* x(48) ) + (1)*(1)* (mw7300dcac_9389_4201_88c7_7effa7fdb0f3_p* x(50) ) + (1)*(1)* (mw7be1d52f_926f_47e0_964b_d3303c8453b1_p* x(52) * x(47) ) );
	
//x(48)   ID: mwe51f72d2_84fb_4b43_b900_521410fdf99c  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (mw95ac212b_a197_49d6_8c76_bc6154a4cf5e_p* x(48) ) + (1)*(1)* ((mw7ff84021_4836_4a63_84fc_4389e5f74f81_p* x(40) * x(46) )-(mw204ea0fc_f851_4d50_9b82_bc66e34ac7dc_p* x(48) )) );
	
//x(49)   ID: mw72ca05d8_25b0_4765_ba03_a6a0eb846aa0  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (1)*(1)* (mweacc6c48_8e8c_481b_92ce_0cb9ccb3be00_p* x(47) * x(32) ) );
	
//x(50)   ID: mwe70b2c96_44b9_48eb_967a_7eb850a916a6  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (mw7300dcac_9389_4201_88c7_7effa7fdb0f3_p* x(50) ) + (1)*(1)* (( x(1) * x(47) * x(14) )-(mwb01ef86f_18d8_45e7_a452_31878dcb3d49_p* x(50) )) );
	
//x(51)   ID: mw64e9cef3_5dd3_43f3_ad04_58e8fc07a91b  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (mwaec203ce_06d5_4003_bfdb_7244d3d77255_p* x(51) ) + (1)*(1)* ((mw44adf04a_f1e2_4ca9_9615_5a9f4d3bbea8_p* x(16) * x(12) )-(mwc189e7ea_7518_4a4f_be0f_03f2d073b29e_p* x(51) )) );
	
//x(52)   ID: mw6d041b25_87db_4394_9b8b_7ac61e01f359  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (mw61fdd721_9193_442c_bc9e_f1058c4720e7_p* x(52) ) + (-1)*(1)* (mw7be1d52f_926f_47e0_964b_d3303c8453b1_p* x(52) * x(47) ) + (1)*(1)* ((mw05b4111c_4463_4be0_aa1e_5a8f50c7bf67_p* x(8) * x(12) )-(mw7b89687a_3110_4d5f_a9ec_7ca8761f0d41_p* x(52) )) );
	
//x(53)   ID: mwd68cbf38_9266_4dfb_aa00_f817c3421aec  initialValue: 50
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((mw9bcd5c0b_3384_4d5e_92ce_70b13d64e8b8_p* x(10) * x(53) )-(mw95e328a0_be5b_4260_b6e4_d85c4c4aae9e_p* x(54) )) );
	
//x(54)   ID: mwa6be116e_72f1_439e_bca6_eb61f79cc68e  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((mwaf2c7981_908c_4f4c_898e_2491a9f04e17_p* x(54) * x(55) )-(mw1ddc2a05_bc78_4434_a2d9_d06701483346_p* x(56) )) + (1)*(1)* ((mw9bcd5c0b_3384_4d5e_92ce_70b13d64e8b8_p* x(10) * x(53) )-(mw95e328a0_be5b_4260_b6e4_d85c4c4aae9e_p* x(54) )) + (1)*(1)* (mw4fc81076_be53_4fc3_9ade_3587e8d60355_p* x(56) ) );
	
//x(55)   ID: mw6a8501d2_9479_41ae_8616_1e8d0e1bbfa9  initialValue: 60
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((mwaf2c7981_908c_4f4c_898e_2491a9f04e17_p* x(54) * x(55) )-(mw1ddc2a05_bc78_4434_a2d9_d06701483346_p* x(56) )) );
	
//x(56)   ID: mw3cec90c2_500e_4f30_b6be_325ef5194755  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (mw4fc81076_be53_4fc3_9ade_3587e8d60355_p* x(56) ) + (1)*(1)* ((mwaf2c7981_908c_4f4c_898e_2491a9f04e17_p* x(54) * x(55) )-(mw1ddc2a05_bc78_4434_a2d9_d06701483346_p* x(56) )) );
	
//x(57)   ID: mwedf22864_05a0_40c3_a0d5_ede45a3e7e8f  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((mwd6b996b1_d7fe_42de_b17e_b2482109c54d_p* x(57) * x(25) )-(mwc5dc3645_536d_4bb4_88c7_4aeac4f5a241_p* x(60) )) + (-1)*(1)* ((mwc85f8d37_7f39_41b2_8ea4_00b5adad2eac_p* x(57) * x(19) )-(mw807b9a99_fb16_421f_b724_69f29f3fcfb2_p* x(61) )) + (-1)*(1)* ((mw70d2f292_be41_4999_99cb_9c146808db85_p* x(57) * x(20) )-(mw0e80d629_98c1_44a6_bd57_3a4027c87b4c_p* x(64) )) + (-1)*(1)* ((mwb63aa5ed_b6d8_4241_9987_54828945aea3_p* x(57) * x(21) )-(mw4d2fe532_2ccd_42c4_9b4b_759022a87484_p* x(65) )) + (1)*(1)* (mw4fc81076_be53_4fc3_9ade_3587e8d60355_p* x(56) ) + (1)*(1)* (mw234b484f_d2d5_4ae8_a077_217c600588d8_p* x(60) ) + (1)*(1)* (mwa2636601_825e_4846_aa2d_c35bd242ec99_p* x(61) ) + (1)*(1)* (mw7aeacec0_be36_49bf_8548_7a3e2b5fe3cb_p* x(64) ) + (1)*(1)* (mw6b555ed1_194e_4fa4_9688_8105aa7c60c0_p* x(65) ) );
	
//x(58)   ID: mwd3e1ba39_ab10_4702_addd_fb6a7e184a4b  initialValue: 9000
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* ((mw3b48c5e7_774a_4dc4_917f_8f8cff8d9c4b_p* x(10) * x(58) )/(mwa4cc6bbe_c310_445f_bba7_a94868342831_p+ x(58) )) );
	
//x(59)   ID: mwfa9d903a_b5e5_4a38_a649_dfe4719577aa  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (1)*(1)* ((mw3b48c5e7_774a_4dc4_917f_8f8cff8d9c4b_p* x(10) * x(58) )/(mwa4cc6bbe_c310_445f_bba7_a94868342831_p+ x(58) )) );
	
//x(60)   ID: mw2e632a32_3823_4933_95cb_19567cbcc66a  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (mw234b484f_d2d5_4ae8_a077_217c600588d8_p* x(60) ) + (1)*(1)* ((mwd6b996b1_d7fe_42de_b17e_b2482109c54d_p* x(57) * x(25) )-(mwc5dc3645_536d_4bb4_88c7_4aeac4f5a241_p* x(60) )) );
	
//x(61)   ID: mw8bdbd17d_f542_4b8c_88c6_a82eaf997a43  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (mwa2636601_825e_4846_aa2d_c35bd242ec99_p* x(61) ) + (1)*(1)* ((mwc85f8d37_7f39_41b2_8ea4_00b5adad2eac_p* x(57) * x(19) )-(mw807b9a99_fb16_421f_b724_69f29f3fcfb2_p* x(61) )) );
	
//x(62)   ID: mw18e5caa7_26eb_4521_b217_da75bb3193ad  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (1)*(1)* (mw234b484f_d2d5_4ae8_a077_217c600588d8_p* x(60) ) );
	
//x(63)   ID: mwf5c3f9df_7ccf_4ca7_b241_471a66720da8  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (1)*(1)* (mwa2636601_825e_4846_aa2d_c35bd242ec99_p* x(61) ) + (1)*(1)* (mw7aeacec0_be36_49bf_8548_7a3e2b5fe3cb_p* x(64) ) + (1)*(1)* (mw6b555ed1_194e_4fa4_9688_8105aa7c60c0_p* x(65) ) );
	
//x(64)   ID: mwa4fcfa0c_6944_42fc_8c74_7865f13953c8  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (mw7aeacec0_be36_49bf_8548_7a3e2b5fe3cb_p* x(64) ) + (1)*(1)* ((mw70d2f292_be41_4999_99cb_9c146808db85_p* x(57) * x(20) )-(mw0e80d629_98c1_44a6_bd57_3a4027c87b4c_p* x(64) )) );
	
//x(65)   ID: mwe0bb059d_deaa_45fa_b7dc_ec1c4409c4ca  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (mw6b555ed1_194e_4fa4_9688_8105aa7c60c0_p* x(65) ) + (1)*(1)* ((mwb63aa5ed_b6d8_4241_9987_54828945aea3_p* x(57) * x(21) )-(mw4d2fe532_2ccd_42c4_9b4b_759022a87484_p* x(65) )) );
	
//x(66)   ID: mw7a1594c9_f04f_478c_9f5f_ccbe0b95a820  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (mw6843129b_7601_452f_be5d_977f7203bfb5_p* x(66) ) + (1)*(1)* ((mwaa306898_0d0f_4748_b48a_fcd56bdc0b16_p* x(9) * x(18) )-(mwec1b7289_5544_4c2b_b9f6_bf6524cabda5_p* x(66) )) );
	
//x(67)   ID: mwbdb849d8_2b25_4551_8de8_adc8bead2303  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (-1)*(1)* (mwea0d7c35_f4d2_4205_8c59_11ac05134dde_p* x(67) ) + (1)*(1)* (k16_p* x(9) * x(17) ) + (1)*(1)* (k31_p* x(27) ) );
	
//x(68)   ID: mw931f65a6_3967_4ac2_9904_ba791b216fc2  initialValue: 0
	(1/compartment_mwa76931f0_7e48_4dcd_835f_4a2db486ed1b)*( (1)*(1)* (mwea0d7c35_f4d2_4205_8c59_11ac05134dde_p* x(67) ) )
	];


	
endfunction
        x0=[0.13081564;1.7143;0;0.005;0;10;0;0;0;0;0;160;0;90;0;0;1400;0.7;0;0;0;0;0;20;0;0;0;0;2.5;0;0;3400;0;0;0;0;0;0;340;0;450;0;0;0;0;31;0;0;0;0;0;0;50;0;60;0;0;9000;0;0;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)' 'x(54)' 'x(55)' 'x(56)' 'x(57)' 'x(58)' 'x(59)' 'x(60)' 'x(61)' 'x(62)' 'x(63)' 'x(64)' 'x(65)' 'x(66)' 'x(67)' 'x(68)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54;55;56;57;58;59;60;61;62;63;64;65;66;67;68])

//real_variable:
	
	
//x(1)   id: mwc0cb654e_d95f_4d4b_8dc2_3a21afd35a19  initialValue: 0.13081564
	
//x(2)   id: mwbcd76870_e02a_442b_abdf_e42cd7086a1f  initialValue: 1.7143
	
//x(3)   id: mw889568f2_c2e0_4ea3_ad4c_b26b66888184  initialValue: 0
	
//x(4)   id: TF  initialValue: 0.005
	
//x(5)   id: TF_VII  initialValue: 0
	
//x(6)   id: VII  initialValue: 10
	
//x(7)   id: TF_VIIa  initialValue: 0
	
//x(8)   id: VIIa  initialValue: 0
	
//x(9)   id: Xa  initialValue: 0
	
//x(10)   id: IIa  initialValue: 0
	
//x(11)   id: TF_VIIa_X  initialValue: 0
	
//x(12)   id: X  initialValue: 160
	
//x(13)   id: TF_VIIa_Xa  initialValue: 0
	
//x(14)   id: IX  initialValue: 90
	
//x(15)   id: TF_VIIa_IX  initialValue: 0
	
//x(16)   id: IXa  initialValue: 0
	
//x(17)   id: II  initialValue: 1400
	
//x(18)   id: VIII  initialValue: 0.7
	
//x(19)   id: VIIIa  initialValue: 0
	
//x(20)   id: IXa_VIIIa  initialValue: 0
	
//x(21)   id: IXa_VIIIa_X  initialValue: 0
	
//x(22)   id: VIIIa1_L  initialValue: 0
	
//x(23)   id: VIIIa2  initialValue: 0
	
//x(24)   id: V  initialValue: 20
	
//x(25)   id: Va  initialValue: 0
	
//x(26)   id: Xa_Va  initialValue: 0
	
//x(27)   id: Xa_Va_II  initialValue: 0
	
//x(28)   id: mIIa  initialValue: 0
	
//x(29)   id: TFPI  initialValue: 2.5
	
//x(30)   id: Xa_TFPI  initialValue: 0
	
//x(31)   id: TF_VIIa_Xa_TFPI  initialValue: 0
	
//x(32)   id: ATIII  initialValue: 3400
	
//x(33)   id: Xa_ATIII  initialValue: 0
	
//x(34)   id: mIIa_ATIII  initialValue: 0
	
//x(35)   id: IXa_ATIII  initialValue: 0
	
//x(36)   id: IIa_ATIII  initialValue: 0
	
//x(37)   id: TF_VIIa_ATIII  initialValue: 0
	
//x(38)   id: mw4e2cf0b0_bd70_45a4_9e60_eba82fa5c3e4  initialValue: 0
	
//x(39)   id: mw469042d3_a94f_4ebe_af1c_1ead580aad2a  initialValue: 340
	
//x(40)   id: mw6c404de5_5b24_48d6_a0c4_5491e07b1f72  initialValue: 0
	
//x(41)   id: mw8c2b9a07_22c3_4912_adb1_167a38ea4cb3  initialValue: 450
	
//x(42)   id: mw819d0d09_05ba_4674_85ba_5c9439fb77f4  initialValue: 0
	
//x(43)   id: mw2be3652b_79af_4228_9d1c_9d65c7d0c70f  initialValue: 0
	
//x(44)   id: mw6a63ae22_6bb4_4dcf_992f_9287439dd556  initialValue: 0
	
//x(45)   id: mwcefd1303_4967_4502_af6d_e75c88c4d548  initialValue: 0
	
//x(46)   id: mwe043d306_ffdd_447b_9826_4df8abbece4d  initialValue: 31
	
//x(47)   id: mw6591152c_8b5a_4c9b_b095_956988a01ba0  initialValue: 0
	
//x(48)   id: mwe51f72d2_84fb_4b43_b900_521410fdf99c  initialValue: 0
	
//x(49)   id: mw72ca05d8_25b0_4765_ba03_a6a0eb846aa0  initialValue: 0
	
//x(50)   id: mwe70b2c96_44b9_48eb_967a_7eb850a916a6  initialValue: 0
	
//x(51)   id: mw64e9cef3_5dd3_43f3_ad04_58e8fc07a91b  initialValue: 0
	
//x(52)   id: mw6d041b25_87db_4394_9b8b_7ac61e01f359  initialValue: 0
	
//x(53)   id: mwd68cbf38_9266_4dfb_aa00_f817c3421aec  initialValue: 50
	
//x(54)   id: mwa6be116e_72f1_439e_bca6_eb61f79cc68e  initialValue: 0
	
//x(55)   id: mw6a8501d2_9479_41ae_8616_1e8d0e1bbfa9  initialValue: 60
	
//x(56)   id: mw3cec90c2_500e_4f30_b6be_325ef5194755  initialValue: 0
	
//x(57)   id: mwedf22864_05a0_40c3_a0d5_ede45a3e7e8f  initialValue: 0
	
//x(58)   id: mwd3e1ba39_ab10_4702_addd_fb6a7e184a4b  initialValue: 9000
	
//x(59)   id: mwfa9d903a_b5e5_4a38_a649_dfe4719577aa  initialValue: 0
	
//x(60)   id: mw2e632a32_3823_4933_95cb_19567cbcc66a  initialValue: 0
	
//x(61)   id: mw8bdbd17d_f542_4b8c_88c6_a82eaf997a43  initialValue: 0
	
//x(62)   id: mw18e5caa7_26eb_4521_b217_da75bb3193ad  initialValue: 0
	
//x(63)   id: mwf5c3f9df_7ccf_4ca7_b241_471a66720da8  initialValue: 0
	
//x(64)   id: mwa4fcfa0c_6944_42fc_8c74_7865f13953c8  initialValue: 0
	
//x(65)   id: mwe0bb059d_deaa_45fa_b7dc_ec1c4409c4ca  initialValue: 0
	
//x(66)   id: mw7a1594c9_f04f_478c_9f5f_ccbe0b95a820  initialValue: 0
	
//x(67)   id: mwbdb849d8_2b25_4551_8de8_adc8bead2303  initialValue: 0
	
//x(68)   id: mw931f65a6_3967_4ac2_9904_ba791b216fc2  initialValue: 0