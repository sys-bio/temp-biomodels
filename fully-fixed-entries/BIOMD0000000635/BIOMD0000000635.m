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
% Model name = Nair2015 - Interaction between neuromodulators via GPCRs - Effect on cAMP/PKA signaling (D1 Neuron)
%
% is http://identifiers.org/biomodels.db/MODEL1502200000
% is http://identifiers.org/biomodels.db/BIOMD0000000635
% isDescribedBy http://identifiers.org/pubmed/26468202
%


function main()
%Initial conditions vector
	x0=zeros(77,1);
	x0(1) = 2.3562470443292;
	x0(2) = 0.00514744794169027;
	x0(3) = 107.875380092904;
	x0(4) = 1.13940415390363;
	x0(5) = 3.70188602073145;
	x0(6) = 1102.52804493589;
	x0(7) = 785.894688950477;
	x0(8) = 16.100094198358;
	x0(9) = 1194.30333083043;
	x0(10) = 91.6467576551524;
	x0(11) = 0.507493613791483;
	x0(12) = 0.397626017086897;
	x0(13) = 7686.15789228991;
	x0(14) = 316.776054644554;
	x0(15) = 2.47080976475754;
	x0(16) = 1531.9927671361;
	x0(17) = 1100.85005741739;
	x0(18) = 26.2312279909643;
	x0(19) = 0.831786420159049;
	x0(20) = 72.0869281714876;
	x0(21) = 11.5386581348021;
	x0(22) = 5.40475669921873;
	x0(23) = 194.502520839594;
	x0(24) = 1380.87227011886;
	x0(25) = 419.196440881025;
	x0(26) = 37271.6543135964;
	x0(27) = 7.16774795405187;
	x0(28) = 0.678978545756906;
	x0(29) = 860.232017549719;
	x0(30) = 16.40971542072;
	x0(31) = 410.242885172213;
	x0(32) = 233.496415726183;
	x0(33) = 1493.10639547125;
	x0(34) = 1566.50358427382;
	x0(35) = 8659.68104422894;
	x0(36) = 36.9708066619157;
	x0(37) = 51.6139210529853;
	x0(38) = 296.047711354635;
	x0(39) = 805.333502271791;
	x0(40) = 44.6960093760864;
	x0(41) = 506.893604528755;
	x0(42) = 0.0240114612997978;
	x0(43) = 224.645801649792;
	x0(44) = 10.0;
	x0(45) = 0.0338357229453947;
	x0(46) = 0.0265277448296902;
	x0(47) = 1.70785338199615;
	x0(48) = 0.113888299015711;
	x0(49) = 711.07555205532;
	x0(50) = 566.224135997113;
	x0(51) = 13.4787480996268;
	x0(52) = 468.007232863897;
	x0(53) = 4.39135728748305E-4;
	x0(54) = 2.92811632030252E-5;
	x0(55) = 1529.69994816436;
	x0(56) = 25.650119219421;
	x0(57) = 214.722656407666;
	x0(58) = 1095.19571044122;
	x0(59) = 229.927276208549;
	x0(60) = 460.154356942568;
	x0(61) = 0.299804540897635;
	x0(62) = 100.0;
	x0(63) = 0.230445425050315;
	x0(64) = 246.931440841991;
	x0(65) = 452.609318325671;
	x0(66) = 0.228795407287519;
	x0(67) = 0.109825804214832;
	x0(68) = 427.086542949603;
	x0(69) = 99.5522607546951;
	x0(70) = 126.887958343277;
	x0(71) = 6.63679803850652;
	x0(72) = 28.4724047907866;
	x0(73) = 0.00732171483303589;
	x0(74) = 8.459194407526;
	x0(75) = 0.0;
	x0(76) = 0.0;
	x0(77) = 35.1161215095719;


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

% Compartment: id = mw26af457f_7462_4410_a392_e0bbb6071ea5, name = Spine, constant
	compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5=1.0E-15;
% Parameter:   id =  mw0060906c_a035_468c_aa1c_130959bcf15a, name = krM4R*Gi
	global_par_mw0060906c_a035_468c_aa1c_130959bcf15a=90.0;
% Parameter:   id =  mwffa5af7e_9155_4942_9424_cd94ac5018ed, name = kfM4R*Gi
	global_par_mwffa5af7e_9155_4942_9424_cd94ac5018ed=0.012;
% Parameter:   id =  mw3e479c87_36d8_4cda_a0a2_0ee2b658f51a, name = krPP2B*CaMCa2
	global_par_mw3e479c87_36d8_4cda_a0a2_0ee2b658f51a=3.0;
% Parameter:   id =  mw0d101277_e2ba_402c_9635_f10e690a9313, name = kfPP2B*CaMCa2
	global_par_mw0d101277_e2ba_402c_9635_f10e690a9313=1.0;
% Parameter:   id =  mwf3c85708_890c_45d1_bcbc_fe90e9ca792f, name = krPP2BCaMCa2*2Ca
	global_par_mwf3c85708_890c_45d1_bcbc_fe90e9ca792f=10.0;
% Parameter:   id =  mwfe873584_629a_46c8_aae9_fdacdb9ad266, name = kfPP2BCaMCa2*2Ca
	global_par_mwfe873584_629a_46c8_aae9_fdacdb9ad266=0.1;
% Parameter:   id =  mwd6fae483_ca98_40de_bed9_5e2302f769f3, name = krPP2BCaM*2Ca
	global_par_mwd6fae483_ca98_40de_bed9_5e2302f769f3=0.91;
% Parameter:   id =  mwd6652286_f31c_4bfd_a885_ed2f2ca149af, name = kfPP2BCaM*2Ca
	global_par_mwd6652286_f31c_4bfd_a885_ed2f2ca149af=0.006;
% Parameter:   id =  mw4a930624_fcc1_4d08_8e24_9a0082418629, name = kfPP1*D32p34
	global_par_mw4a930624_fcc1_4d08_8e24_9a0082418629=0.04;
% Parameter:   id =  mw7419e1e3_b601_44a8_93ff_e5b31995791e, name = krPP1*D32p34
	global_par_mw7419e1e3_b601_44a8_93ff_e5b31995791e=0.08;
% Parameter:   id =  mwe2bf9c41_d94e_4ff4_a573_8ac4a12513b0, name = kfPP2B*CaMCa4
	global_par_mwe2bf9c41_d94e_4ff4_a573_8ac4a12513b0=1.0;
% Parameter:   id =  mw810d8094_3a3e_494e_bd1b_fcd9e8ef1d17, name = krPP2B*CaMCa4
	global_par_mw810d8094_3a3e_494e_bd1b_fcd9e8ef1d17=3.0;
% Parameter:   id =  mw269c014a_6379_44c3_813b_52d8145506e7, name = kfB72PP2A*Ca
	global_par_mw269c014a_6379_44c3_813b_52d8145506e7=1.0E-4;
% Parameter:   id =  mwc4c3d33d_b2b7_4ab2_a171_1864ea638ec0, name = krB72PP2A*Ca
	global_par_mwc4c3d33d_b2b7_4ab2_a171_1864ea638ec0=0.1;
% Parameter:   id =  mw5557cb87_d4fa_44ba_b006_e67b44862136, name = kfPP2B*CaM
	global_par_mw5557cb87_d4fa_44ba_b006_e67b44862136=1.0;
% Parameter:   id =  mwe7952ed1_96f3_4d0c_8977_b6a2b4f26665, name = krPP2B*CaM
	global_par_mwe7952ed1_96f3_4d0c_8977_b6a2b4f26665=30.0;
% Parameter:   id =  mw2561b5ab_39c9_4453_99d8_f0f37779b63a, name = kcatPKAc*D32
	global_par_mw2561b5ab_39c9_4453_99d8_f0f37779b63a=10.0;
% Parameter:   id =  mw5623544e_e7e1_439f_88d3_3b0cbea8ccf5, name = kGaolfGTPase
	global_par_mw5623544e_e7e1_439f_88d3_3b0cbea8ccf5=30.0;
% Parameter:   id =  mwa390f769_ebf1_4023_8af0_1c00e2a9bf82, name = kfPP2Bc*D32p34
	global_par_mwa390f769_ebf1_4023_8af0_1c00e2a9bf82=0.002;
% Parameter:   id =  mw0beb6cc4_36bd_4022_8993_29f981652ebe, name = krPP2Bc*D32p34
	global_par_mw0beb6cc4_36bd_4022_8993_29f981652ebe=1.0;
% Parameter:   id =  mwb3fdecfc_6465_4e63_888a_7762f542c790, name = kfB56PP2A*D32p75
	global_par_mwb3fdecfc_6465_4e63_888a_7762f542c790=8.0E-4;
% Parameter:   id =  mw19a820fb_1581_4bf1_9577_9e20f3296159, name = krB56PP2A*D32p75
	global_par_mw19a820fb_1581_4bf1_9577_9e20f3296159=6.4;
% Parameter:   id =  mwf1c01e00_be7d_4a3b_af91_3dd9ab9cea62, name = kfB56PP2Ap*D32p75
	global_par_mwf1c01e00_be7d_4a3b_af91_3dd9ab9cea62=0.0015;
% Parameter:   id =  mw34b74798_bd70_4456_a53b_9e1e46bb9750, name = krB56PP2Ap*D32p75
	global_par_mw34b74798_bd70_4456_a53b_9e1e46bb9750=10.0;
% Parameter:   id =  mw6bf18344_b899_4a62_ac8d_5f8bdd4bbe2f, name = kcatB56PP2Ap*D32p75
	global_par_mw6bf18344_b899_4a62_ac8d_5f8bdd4bbe2f=8.0;
% Parameter:   id =  mw88c9326a_fbe9_4dd8_aded_b5be3f012691, name = kcatB56PP2A*D32p75
	global_par_mw88c9326a_fbe9_4dd8_aded_b5be3f012691=2.3;
% Parameter:   id =  mw4d0140a3_fd9c_4adb_9be0_63d4612400ee, name = kcatB72PP2ACa*D32p75
	global_par_mw4d0140a3_fd9c_4adb_9be0_63d4612400ee=5.0;
% Parameter:   id =  mw6af7af00_75ac_4f58_8383_7047a5fb5181, name = kcatB72PP2A*D32p75
	global_par_mw6af7af00_75ac_4f58_8383_7047a5fb5181=1.0;
% Parameter:   id =  mw2226fa14_2b95_45a6_8705_4b38073fc5f7, name = kfB72PP2A*D32p75
	global_par_mw2226fa14_2b95_45a6_8705_4b38073fc5f7=8.0E-4;
% Parameter:   id =  mw009f9583_4e96_4672_ab71_0ef4b697aa6f, name = krB72PP2A*D32p75
	global_par_mw009f9583_4e96_4672_ab71_0ef4b697aa6f=6.4;
% Parameter:   id =  mwc44dc346_a522_4680_b81d_77540364e07c, name = kfB72PP2ACa*D32p75
	global_par_mwc44dc346_a522_4680_b81d_77540364e07c=0.0015;
% Parameter:   id =  mw43aa8259_68fc_4f47_ad18_37eaa0a94b5a, name = krB72PP2ACa*D32p75
	global_par_mw43aa8259_68fc_4f47_ad18_37eaa0a94b5a=10.0;
% Parameter:   id =  mw62c51fcf_c107_4d3c_849e_9b168df54490, name = kcatPP2Bc*D32p34
	global_par_mw62c51fcf_c107_4d3c_849e_9b168df54490=10.0;
% Parameter:   id =  mwed967767_31e4_4e9e_8117_5372f9f4f79a, name = kcatCDK5*D32
	global_par_mwed967767_31e4_4e9e_8117_5372f9f4f79a=3.0;
% Parameter:   id =  mwd05b4199_53ad_4807_9a8c_d93ce35be857, name = kactGi
	global_par_mwd05b4199_53ad_4807_9a8c_d93ce35be857=60.0;
% Parameter:   id =  mwfcfb91ff_a495_41f9_bdff_fcef779112fd, name = kGiGTPase
	global_par_mwfcfb91ff_a495_41f9_bdff_fcef779112fd=30.0;
% Parameter:   id =  mw5175a06e_3927_4993_9242_8f76b0aaf42f, name = kGiback
	global_par_mw5175a06e_3927_4993_9242_8f76b0aaf42f=100.0;
% Parameter:   id =  mw71a5a1e9_f803_46d7_bf5e_a4965ceef2e0, name = kfM4RACh*Gi
	global_par_mw71a5a1e9_f803_46d7_bf5e_a4965ceef2e0=1.2;
% Parameter:   id =  mw13378d99_aa94_4d9d_a73e_9ec3830b6212, name = krM4RACh*Gi
	global_par_mw13378d99_aa94_4d9d_a73e_9ec3830b6212=90.0;
% Parameter:   id =  mw0a87aca4_d8f3_4058_83d0_7addc7e7b981, name = kfPKA*2cAMP
	global_par_mw0a87aca4_d8f3_4058_83d0_7addc7e7b981=2.6E-4;
% Parameter:   id =  mwf79c6674_0a76_49e2_973d_6677fa109433, name = krPKA*2cAMP
	global_par_mwf79c6674_0a76_49e2_973d_6677fa109433=1.0;
% Parameter:   id =  mw8deeabf3_8313_4e28_90be_ded2d2f045f3, name = krPKAc*PKAr
	global_par_mw8deeabf3_8313_4e28_90be_ded2d2f045f3=10.0;
% Parameter:   id =  mw535609a4_02d1_42d0_ba4b_dce4b2136617, name = kfPKAc*PKAr
	global_par_mw535609a4_02d1_42d0_ba4b_dce4b2136617=0.01;
% Parameter:   id =  mw36eae1b1_84f0_42c3_ad0d_d27aa571346d, name = kfPKA2cAMP*2cAMP
	global_par_mw36eae1b1_84f0_42c3_ad0d_d27aa571346d=3.46E-4;
% Parameter:   id =  mwad5ebb51_1d46_40a7_b8d6_13ba4a466b92, name = krPKA2cAMP*2cAMP
	global_par_mwad5ebb51_1d46_40a7_b8d6_13ba4a466b92=1.0;
% Parameter:   id =  mw1b9e5266_efac_4696_a213_80f9f83d948a, name = kfCDK5*D32
	global_par_mw1b9e5266_efac_4696_a213_80f9f83d948a=9.0E-4;
% Parameter:   id =  mwa27c20d8_b6ed_4617_a6f6_9af2752d3a33, name = krCDK5*D32
	global_par_mwa27c20d8_b6ed_4617_a6f6_9af2752d3a33=2.0;
% Parameter:   id =  mw0dd72d64_80e1_4f76_a444_fd175dbfab0c, name = kactGolf
	global_par_mw0dd72d64_80e1_4f76_a444_fd175dbfab0c=15.0;
% Parameter:   id =  mwa4148cd1_a298_447c_aea8_226688c3f526, name = kcatPDE4*cAMP
	global_par_mwa4148cd1_a298_447c_aea8_226688c3f526=2.0;
% Parameter:   id =  mw1db20a7e_3972_4c3a_83c0_c6fcd7c9cb45, name = kfPKAc*D32
	global_par_mw1db20a7e_3972_4c3a_83c0_c6fcd7c9cb45=3.0E-4;
% Parameter:   id =  mw4e2575eb_3641_422c_b836_d854958d4d1e, name = krPKAc*D32
	global_par_mw4e2575eb_3641_422c_b836_d854958d4d1e=8.0;
% Parameter:   id =  mw77fab49b_2ba6_4efe_9342_285f4fd3b7fa, name = kfPDE4*cAMP
	global_par_mw77fab49b_2ba6_4efe_9342_285f4fd3b7fa=0.01;
% Parameter:   id =  mw05f4bef4_5e8d_4a92_bb74_cc0bb4c0260e, name = krPDE4*cAMP
	global_par_mw05f4bef4_5e8d_4a92_bb74_cc0bb4c0260e=1.0;
% Parameter:   id =  mw36cb62c6_0b3c_4d1b_9001_3b37aa7477e2, name = krPDE10*cAMP
	global_par_mw36cb62c6_0b3c_4d1b_9001_3b37aa7477e2=9.0;
% Parameter:   id =  mwac1bc66c_2623_47e6_a76d_c1629d962be5, name = kcatPDE10c*cAMP
	global_par_mwac1bc66c_2623_47e6_a76d_c1629d962be5=10.0;
% Parameter:   id =  mwd1b16e73_4fcb_4e4c_9804_3137259ba749, name = kfPDE10*cAMP
	global_par_mwd1b16e73_4fcb_4e4c_9804_3137259ba749=1.0E-6;
% Parameter:   id =  mw0b1ccae3_37fa_4a23_a817_cd8fc458dc79, name = kfcAMP*PDE10
	global_par_mw0b1ccae3_37fa_4a23_a817_cd8fc458dc79=0.1;
% Parameter:   id =  mw6f753a0e_a7ec_4b4b_bcfc_edb95a3f1296, name = krcAMP*PDE10
	global_par_mw6f753a0e_a7ec_4b4b_bcfc_edb95a3f1296=2.0;
% Parameter:   id =  mwf633f298_303f_46d1_b644_ae07ae366f45, name = kcatcAMP*PDE10
	global_par_mwf633f298_303f_46d1_b644_ae07ae366f45=3.0;
% Parameter:   id =  mw8186cb1d_66c4_4855_bcbb_82d75173ae8a, name = kcatAC5GaolfGTP*ATP
	global_par_mw8186cb1d_66c4_4855_bcbb_82d75173ae8a=20.0;
% Parameter:   id =  mw789c453f_f13d_467f_8f02_d5a714cda15d, name = kicatAC5GaolfGTP*ATP
	global_par_mw789c453f_f13d_467f_8f02_d5a714cda15d=0.084;
% Parameter:   id =  mw98b63d59_8744_4e8c_8653_68ae1eb4ad40, name = kcatAC5*ATP
	global_par_mw98b63d59_8744_4e8c_8653_68ae1eb4ad40=1.0;
% Parameter:   id =  mwaa3af366_350e_4f18_936b_6372dc484f82, name = kicatAC5*ATP
	global_par_mwaa3af366_350e_4f18_936b_6372dc484f82=4.0E-4;
% Parameter:   id =  mwe4474191_0c92_406c_a6f5_4a167f541d36, name = kcatAC5GaiGTP*ATP
	global_par_mwe4474191_0c92_406c_a6f5_4a167f541d36=0.25;
% Parameter:   id =  mw17d612a2_c9d5_4251_8122_5f037fc630e3, name = kicatAC5GaiGTP*ATP
	global_par_mw17d612a2_c9d5_4251_8122_5f037fc630e3=0.00105;
% Parameter:   id =  mwc728d91d_7616_43db_bd1d_55e49e9c026a, name = kcatAC5CaGaiGTP*ATP
	global_par_mwc728d91d_7616_43db_bd1d_55e49e9c026a=0.125;
% Parameter:   id =  mwdb2a670f_13fb_4bda_8c72_d706c6bc37e9, name = kicatAC5CaGaiGTP*ATP
	global_par_mwdb2a670f_13fb_4bda_8c72_d706c6bc37e9=2.8125E-5;
% Parameter:   id =  mw65cae8fe_0eac_4792_88bf_2dfb441030e5, name = kcatAC5Ca*ATP
	global_par_mw65cae8fe_0eac_4792_88bf_2dfb441030e5=0.5;
% Parameter:   id =  mw515fcf69_b724_40d9_84ba_5f92d75ae5a7, name = kicatAC5Ca*ATP
	global_par_mw515fcf69_b724_40d9_84ba_5f92d75ae5a7=1.5E-4;
% Parameter:   id =  mwb0a6bd5e_87a0_425c_a5c7_ea69903e0bf3, name = kcatAC5CaGaolfGTP*ATP
	global_par_mwb0a6bd5e_87a0_425c_a5c7_ea69903e0bf3=10.0;
% Parameter:   id =  mw034d8151_fae1_4738_b675_39c38a58118d, name = kicatAC5CaGaolfGTP*ATP
	global_par_mw034d8151_fae1_4738_b675_39c38a58118d=0.022;
% Parameter:   id =  mw80292f32_fd53_4b5d_872a_e21c2d90c52a, name = kfM4R*ACh
	global_par_mw80292f32_fd53_4b5d_872a_e21c2d90c52a=0.01;
% Parameter:   id =  mw066c69e2_66da_4621_9180_bce71b7077c3, name = kfM4RGi*ACh
	global_par_mw066c69e2_66da_4621_9180_bce71b7077c3=1.0;
% Parameter:   id =  mwefa9bb47_f13f_4a21_a62d_a4debcf7b52b, name = krM4RGi*ACh
	global_par_mwefa9bb47_f13f_4a21_a62d_a4debcf7b52b=90.0;
% Parameter:   id =  mwce0df80f_1563_453d_b33d_a88f6b2c93b7, name = krM4R*ACh
	global_par_mwce0df80f_1563_453d_b33d_a88f6b2c93b7=90.0;
% Parameter:   id =  mw5301f7f5_60df_4eb9_ba3b_81e6519d1cbb, name = kcatAC5GaolfGTPGaiGTP*ATP
	global_par_mw5301f7f5_60df_4eb9_ba3b_81e6519d1cbb=5.0;
% Parameter:   id =  mw5f50df8c_48a1_4c29_9e24_cca9a1242ee5, name = kicatAC5GaolfGTPGaiGTP*ATP
	global_par_mw5f50df8c_48a1_4c29_9e24_cca9a1242ee5=0.006;
% Parameter:   id =  mw86fd6328_2ac3_4dc0_97a2_698cf44eed12, name = kicatAC5CaGaolfGTPGaiGTP*ATP
	global_par_mw86fd6328_2ac3_4dc0_97a2_698cf44eed12=0.00175;
% Parameter:   id =  mw1a6a8649_d7cb_4379_983a_cca2acac3112, name = kcatAC5CaGaolfGTPGaiGTP*ATP
	global_par_mw1a6a8649_d7cb_4379_983a_cca2acac3112=2.5;
% Parameter:   id =  mw9c2302f8_3d47_4247_a338_a02c53fc5331, name = kfAC5*ATP
	global_par_mw9c2302f8_3d47_4247_a338_a02c53fc5331=1.0E-4;
% Parameter:   id =  mwb56b5ab7_47cc_4fbc_b68b_dfdc6be6d7a4, name = kfAC5CaGaolfGTP*ATP
	global_par_mwb56b5ab7_47cc_4fbc_b68b_dfdc6be6d7a4=5.5E-4;
% Parameter:   id =  mwa1bc2233_5bb9_4135_88ed_bb51640faec8, name = kfAC5CaGaiGTP*ATP
	global_par_mwa1bc2233_5bb9_4135_88ed_bb51640faec8=5.625E-5;
% Parameter:   id =  mw00f3118f_5d5a_48d0_bcc4_749d5f9dc73a, name = kfAC5CaGaolfGTPGaiGTP*ATP
	global_par_mw00f3118f_5d5a_48d0_bcc4_749d5f9dc73a=1.75E-4;
% Parameter:   id =  mw894b221b_266d_4277_ac01_83579ed103e6, name = kfCaM*2Ca
	global_par_mw894b221b_266d_4277_ac01_83579ed103e6=0.006;
% Parameter:   id =  mw2f090a45_946b_4587_a3e3_b29f3bb5c6ae, name = kGolfback
	global_par_mw2f090a45_946b_4587_a3e3_b29f3bb5c6ae=100.0;
% Parameter:   id =  mw68039b16_b516_4fba_bedd_d4bbc1a23a02, name = krCaM*2Ca
	global_par_mw68039b16_b516_4fba_bedd_d4bbc1a23a02=9.1;
% Parameter:   id =  mw3a56b314_299f_48d2_a179_97bf6a30f38f, name = kdpB56PP2Ap
	global_par_mw3a56b314_299f_48d2_a179_97bf6a30f38f=0.008;
% Parameter:   id =  mweb9b200d_dd29_4618_9e73_cddabb464215, name = krCaMCa2*2Ca
	global_par_mweb9b200d_dd29_4618_9e73_cddabb464215=1000.0;
% Parameter:   id =  mw2037ae7c_b1dc_4517_a61c_88a1f2bdcd12, name = krPKAc*D32p75
	global_par_mw2037ae7c_b1dc_4517_a61c_88a1f2bdcd12=1.0;
% Parameter:   id =  mw690a2134_fb59_4061_be3b_929335ef629b, name = kfPKAc*B56PP2A
	global_par_mw690a2134_fb59_4061_be3b_929335ef629b=0.001;
% Parameter:   id =  mwc0a23657_7f6c_4e0d_9f11_06b3ab5126f0, name = krPKAc*B56PP2A
	global_par_mwc0a23657_7f6c_4e0d_9f11_06b3ab5126f0=0.3;
% Parameter:   id =  mw1cc91fa1_3a8e_456d_a05d_6ddd5df00d00, name = kfCaMCa2*2Ca
	global_par_mw1cc91fa1_3a8e_456d_a05d_6ddd5df00d00=0.1;
% Parameter:   id =  mwe5d8a08f_c74e_4618_892c_41c71a57cade, name = kcatPKAc*B56PP2A
	global_par_mwe5d8a08f_c74e_4618_892c_41c71a57cade=0.2;
% Parameter:   id =  mw49e66b9c_64bd_428a_9090_15e4132e9781, name = kfPKAc*D32p75
	global_par_mw49e66b9c_64bd_428a_9090_15e4132e9781=3.7E-4;
% Parameter:   id =  mw72ceb3da_d538_4f25_8e69_f322eb0b5e57, name = kfAC5GaolfGTP*ATP
	global_par_mw72ceb3da_d538_4f25_8e69_f322eb0b5e57=0.00105;
% Parameter:   id =  mw541807fb_7d9f_4788_9f21_cc62846b5826, name = kfAC5GaiGTP*ATP
	global_par_mw541807fb_7d9f_4788_9f21_cc62846b5826=6.25E-5;
% Parameter:   id =  mwb93138ce_a80b_4b26_b927_6b4a00651b64, name = kfAC5GaolfGTPGaiGTP*ATP
	global_par_mwb93138ce_a80b_4b26_b927_6b4a00651b64=3.0E-4;
% Parameter:   id =  mw9510e553_a7fd_4c9a_b284_19b3cc01ae7d, name = kfAC5Ca*ATP
	global_par_mw9510e553_a7fd_4c9a_b284_19b3cc01ae7d=7.5E-5;
% Parameter:   id =  mw448bd49f_40ad_46c9_81f6_3494057dc37d, name = kfD1R*Golf
	global_par_mw448bd49f_40ad_46c9_81f6_3494057dc37d=0.003;
% Parameter:   id =  mwa466eec8_9bc0_44d5_8027_d5925b378429, name = krD1R*Golf
	global_par_mwa466eec8_9bc0_44d5_8027_d5925b378429=5.0;
% Parameter:   id =  mwb17941e5_1ad5_42b9_98c6_e62b1a697dbb, name = kfD1RDA*Golf
	global_par_mwb17941e5_1ad5_42b9_98c6_e62b1a697dbb=0.003;
% Parameter:   id =  mw8e4e88b6_60b3_43bd_8f5c_923712ee64ea, name = krD1RDA*Golf
	global_par_mw8e4e88b6_60b3_43bd_8f5c_923712ee64ea=5.0;
% Parameter:   id =  mwe79f507b_73c9_4056_ae91_6244dcbc49bb, name = kfB72PP2A*D32p34
	global_par_mwe79f507b_73c9_4056_ae91_6244dcbc49bb=0.5;
% Parameter:   id =  mw26206710_ba98_4010_9e5b_c3aae2ce29ec, name = krB72PP2A*D32p34
	global_par_mw26206710_ba98_4010_9e5b_c3aae2ce29ec=1.0;
% Parameter:   id =  mwb494aae2_da19_4ac0_96e2_0dcd9440edc2, name = krAC5X*ATP
	global_par_mwb494aae2_da19_4ac0_96e2_0dcd9440edc2=1.0;
% Parameter:   id =  mwdcc4ce84_732d_4f5b_84e2_e5b93617200b, name = kcatB72PP2A*D32p34
	global_par_mwdcc4ce84_732d_4f5b_84e2_e5b93617200b=0.3;
% Parameter:   id =  mw0a255671_d9ca_4384_a153_ce17e1111453, name = kfAC5XGaolfGTP
	global_par_mw0a255671_d9ca_4384_a153_ce17e1111453=0.2;
% Parameter:   id =  mwe737a297_e5be_46ed_af75_ccc7428c3977, name = kfAC5Ca
	global_par_mwe737a297_e5be_46ed_af75_ccc7428c3977=0.001;
% Parameter:   id =  mw1ef56a9a_9d9b_4490_8fcd_53b7e50bf5d6, name = kfAC5XGaiGTP
	global_par_mw1ef56a9a_9d9b_4490_8fcd_53b7e50bf5d6=50.0;
% Parameter:   id =  mwc52aebc2_571c_4f96_84ee_0613ae73db89, name = kfAC5XNCGaiGTP
	global_par_mwc52aebc2_571c_4f96_84ee_0613ae73db89=0.01;
% Parameter:   id =  mw649b47b3_4c3a_4ac9_ae94_5c38ccf81e39, name = kfAC5XNCGaolfGTP
	global_par_mw649b47b3_4c3a_4ac9_ae94_5c38ccf81e39=0.002;
% Parameter:   id =  mwcd307ee9_33da_4303_9c28_644ad2d1630c, name = krAC5XGaolfGTP
	global_par_mwcd307ee9_33da_4303_9c28_644ad2d1630c=0.1;
% Parameter:   id =  mwddcb8d81_9f5a_457e_a54c_a0c1b1f29f0b, name = krAC5Ca
	global_par_mwddcb8d81_9f5a_457e_a54c_a0c1b1f29f0b=0.9;
% Parameter:   id =  mw6ae3f7a6_bf58_475e_930e_6bf7a79f3761, name = krAC5XGaiGTP
	global_par_mw6ae3f7a6_bf58_475e_930e_6bf7a79f3761=5.0;
% Parameter:   id =  mw9330e49a_b214_4807_b614_4241a4a12c43, name = krAC5XNCGaiGTP
	global_par_mw9330e49a_b214_4807_b614_4241a4a12c43=0.01;
% Parameter:   id =  mwc911f28c_b62f_4269_84ed_d852f6da24f9, name = krAC5XNCGaolfGTP
	global_par_mwc911f28c_b62f_4269_84ed_d852f6da24f9=0.01;
% Parameter:   id =  mw8db06baf_d8bb_4a1a_b415_2d51fa1e53ba, name = krgso
	global_par_mw8db06baf_d8bb_4a1a_b415_2d51fa1e53ba=0.2;
% Parameter:   id =  mwcabc0868_2435_4850_964b_e3ddee39f5ad, name = krgsi
	global_par_mwcabc0868_2435_4850_964b_e3ddee39f5ad=30.0;
% Parameter:   id =  mw96625ee0_4722_4eb5_bffe_35d025eed5bd, name = kcatPP1*AKAR3p
	global_par_mw96625ee0_4722_4eb5_bffe_35d025eed5bd=1.2;
% Parameter:   id =  mw7b7d401f_2d71_4e93_aecd_137c48ec0077, name = kfPP1*AKAR3p
	global_par_mw7b7d401f_2d71_4e93_aecd_137c48ec0077=0.0;
% Parameter:   id =  mw933510ae_e91b_45c4_8ea2_8e4906c5005a, name = krPP1*AKAR3p
	global_par_mw933510ae_e91b_45c4_8ea2_8e4906c5005a=10.0;
% Parameter:   id =  mw27bdb07d_1911_47b5_b7ac_4529f8290bc8, name = kcatPKAc*AKAR3
	global_par_mw27bdb07d_1911_47b5_b7ac_4529f8290bc8=3.0;
% Parameter:   id =  mw562c936d_ea16_492e_8609_2afa7446db5d, name = kfPKAc*AKAR3
	global_par_mw562c936d_ea16_492e_8609_2afa7446db5d=0.0;
% Parameter:   id =  mw0ecded71_cb83_47e1_b11b_1784bf4dc75d, name = krPKAc*AKAR3
	global_par_mw0ecded71_cb83_47e1_b11b_1784bf4dc75d=1.0;
% Parameter:   id =  mw326e0065_b4f6_41ae_b1d0_66092dc5ebb2, name = kfPDE10c*cAMP
	global_par_mw326e0065_b4f6_41ae_b1d0_66092dc5ebb2=0.13;
% Parameter:   id =  mwca52f04a_bb5f_4d3f_ba6d_939bbb3895b9, name = krPDE10c*cAMP
	global_par_mwca52f04a_bb5f_4d3f_ba6d_939bbb3895b9=2.0;
% Parameter:   id =  mwdad9965c_2334_481f_8544_f1a81385a28e, name = kfD1R*DA
	global_par_mwdad9965c_2334_481f_8544_f1a81385a28e=0.005;
% Parameter:   id =  mw3fc2c1ed_0097_4f7f_bcd5_904dc6ad5a56, name = kfD1RGolf*DA
	global_par_mw3fc2c1ed_0097_4f7f_bcd5_904dc6ad5a56=0.005;
% Parameter:   id =  mwc23d8bf6_2a60_4760_8bf5_c1bab432ab52, name = krD1R*DA
	global_par_mwc23d8bf6_2a60_4760_8bf5_c1bab432ab52=5.0;
% Parameter:   id =  mw858f28f3_086a_436b_ba23_4fc7372c8884, name = krD1RGolf*DA
	global_par_mw858f28f3_086a_436b_ba23_4fc7372c8884=5.0;
% Parameter:   id =  DApeak_present, name = DApeak_present
	global_par_DApeak_present=0.0;
% Parameter:   id =  DApeak, name = DApeak
% Parameter:   id =  DApeak_steepness, name = DApeak_steepness
	global_par_DApeak_steepness=100.0;
% Parameter:   id =  DApeak_startTime, name = DApeak_startTime
	global_par_DApeak_startTime=2.0;
% Parameter:   id =  DApeak_duration, name = DApeak_duration
	global_par_DApeak_duration=1.0;
% Parameter:   id =  DAbasal, name = DAbasal
	global_par_DAbasal=10.0;
% Parameter:   id =  DApeak_minimum, name = DApeak_minimum
% Parameter:   id =  DApeak_maximum, name = DApeak_maximum
	global_par_DApeak_maximum=1500.0;
% Parameter:   id =  AChdip_present, name = AChdip_present
	global_par_AChdip_present=0.0;
% Parameter:   id =  AChdip, name = AChdip
% Parameter:   id =  AChdip_steepness, name = AChdip_steepness
	global_par_AChdip_steepness=100.0;
% Parameter:   id =  AChdip_startTime, name = AChdip_startTime
	global_par_AChdip_startTime=2.0;
% Parameter:   id =  AChdip_duration, name = AChdip_duration
	global_par_AChdip_duration=0.4;
% Parameter:   id =  AChbasal, name = AChbasal
	global_par_AChbasal=100.0;
% Parameter:   id =  AChdip_minimum, name = AChdip_minimum
	global_par_AChdip_minimum=0.001;
% Parameter:   id =  AChdip_maximum, name = AChdip_maximum
% Parameter:   id =  ModelValue_143, name = Initial for AChbasal
	global_par_ModelValue_143=100.0;
% Parameter:   id =  ModelValue_142, name = Initial for AChdip_duration
	global_par_ModelValue_142=0.4;
% Parameter:   id =  ModelValue_145, name = Initial for AChdip_maximum
	global_par_ModelValue_145=100.0;
% Parameter:   id =  ModelValue_144, name = Initial for AChdip_minimum
	global_par_ModelValue_144=0.001;
% Parameter:   id =  ModelValue_138, name = Initial for AChdip_present
	global_par_ModelValue_138=0.0;
% Parameter:   id =  ModelValue_141, name = Initial for AChdip_startTime
	global_par_ModelValue_141=2.0;
% Parameter:   id =  ModelValue_140, name = Initial for AChdip_steepness
	global_par_ModelValue_140=100.0;
% Parameter:   id =  ModelValue_135, name = Initial for DAbasal
	global_par_ModelValue_135=10.0;
% Parameter:   id =  ModelValue_134, name = Initial for DApeak_duration
	global_par_ModelValue_134=1.0;
% Parameter:   id =  ModelValue_137, name = Initial for DApeak_maximum
	global_par_ModelValue_137=1500.0;
% Parameter:   id =  ModelValue_136, name = Initial for DApeak_minimum
	global_par_ModelValue_136=10.0;
% Parameter:   id =  ModelValue_130, name = Initial for DApeak_present
	global_par_ModelValue_130=0.0;
% Parameter:   id =  ModelValue_133, name = Initial for DApeak_startTime
	global_par_ModelValue_133=2.0;
% Parameter:   id =  ModelValue_132, name = Initial for DApeak_steepness
	global_par_ModelValue_132=100.0;
% assignmentRule: variable = totalActivePKA
	x(77)=x(20)-x(36);
% assignmentRule: variable = DApeak
	global_par_DApeak=1/(1+exp((-global_par_ModelValue_132)*time+global_par_ModelValue_132*global_par_ModelValue_133))-1/(1+exp((-global_par_ModelValue_132)*time+global_par_ModelValue_132*(global_par_ModelValue_133+global_par_ModelValue_134)));
% assignmentRule: variable = DApeak_minimum
	global_par_DApeak_minimum=global_par_ModelValue_135;
% assignmentRule: variable = mwbe974953_e869_4622_b4a8_745555c8d7fd
	x(44)=global_par_ModelValue_135+global_par_ModelValue_130*(global_par_ModelValue_137-global_par_ModelValue_136)*global_par_DApeak;
% assignmentRule: variable = AChdip
	global_par_AChdip=1-1/(1+exp((-global_par_ModelValue_140)*time+global_par_ModelValue_140*global_par_ModelValue_141))+1/(1+exp((-global_par_ModelValue_140)*time+global_par_ModelValue_140*(global_par_ModelValue_141+global_par_ModelValue_142)));
% assignmentRule: variable = AChdip_maximum
	global_par_AChdip_maximum=global_par_ModelValue_143;
% assignmentRule: variable = mw3e1a2fbf_37b1_490c_9528_6cb6bbf11b21
	x(62)=(1-global_par_ModelValue_138)*global_par_ModelValue_143+global_par_ModelValue_138*(global_par_ModelValue_144+(global_par_ModelValue_145-global_par_ModelValue_144)*global_par_AChdip);

% Reaction: id = revreaction_1, name = revreaction_1
	reaction_revreaction_1=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw3fc2c1ed_0097_4f7f_bcd5_904dc6ad5a56*x(7)*x(44)-global_par_mw858f28f3_086a_436b_ba23_4fc7372c8884*x(5));

% Reaction: id = revreaction_2, name = revreaction_2
	reaction_revreaction_2=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwb17941e5_1ad5_42b9_98c6_e62b1a697dbb*x(8)*x(6)-global_par_mw8e4e88b6_60b3_43bd_8f5c_923712ee64ea*x(5));

% Reaction: id = revreaction_3, name = revreaction_3
	reaction_revreaction_3=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw448bd49f_40ad_46c9_81f6_3494057dc37d*x(9)*x(6)-global_par_mwa466eec8_9bc0_44d5_8027_d5925b378429*x(7));

% Reaction: id = revreaction_4, name = revreaction_4
	reaction_revreaction_4=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwdad9965c_2334_481f_8544_f1a81385a28e*x(9)*x(44)-global_par_mwc23d8bf6_2a60_4760_8bf5_c1bab432ab52*x(8));

% Reaction: id = revreaction_5, name = revreaction_5
	reaction_revreaction_5=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwffa5af7e_9155_4942_9424_cd94ac5018ed*x(55)*x(58)-global_par_mw0060906c_a035_468c_aa1c_130959bcf15a*x(57));

% Reaction: id = revreaction_6, name = revreaction_6
	reaction_revreaction_6=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw71a5a1e9_f803_46d7_bf5e_a4965ceef2e0*x(56)*x(58)-global_par_mw13378d99_aa94_4d9d_a73e_9ec3830b6212*x(59));

% Reaction: id = revreaction_7, name = revreaction_7
	reaction_revreaction_7=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw066c69e2_66da_4621_9180_bce71b7077c3*x(62)*x(57)-global_par_mwefa9bb47_f13f_4a21_a62d_a4debcf7b52b*x(59));

% Reaction: id = revreaction_8, name = revreaction_8
	reaction_revreaction_8=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw80292f32_fd53_4b5d_872a_e21c2d90c52a*x(62)*x(55)-global_par_mwce0df80f_1563_453d_b33d_a88f6b2c93b7*x(56));

% Reaction: id = revreaction_9, name = revreaction_9
	reaction_revreaction_9=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw0a255671_d9ca_4384_a153_ce17e1111453*x(11)*x(4)-global_par_mwcd307ee9_33da_4303_9c28_644ad2d1630c*x(12));

% Reaction: id = revreaction_10, name = revreaction_10
	reaction_revreaction_10=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwe737a297_e5be_46ed_af75_ccc7428c3977*x(11)*const_species_mwccd3a17c_e207_4663_9b16_327b78882497-global_par_mwddcb8d81_9f5a_457e_a54c_a0c1b1f29f0b*x(45));

% Reaction: id = revreaction_11, name = revreaction_11
	reaction_revreaction_11=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw0a255671_d9ca_4384_a153_ce17e1111453*x(45)*x(4)-global_par_mwcd307ee9_33da_4303_9c28_644ad2d1630c*x(46));

% Reaction: id = revreaction_12, name = revreaction_12
	reaction_revreaction_12=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw1ef56a9a_9d9b_4490_8fcd_53b7e50bf5d6*x(1)*x(45)-global_par_mw6ae3f7a6_bf58_475e_930e_6bf7a79f3761*x(48));

% Reaction: id = revreaction_13, name = revreaction_13
	reaction_revreaction_13=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw1ef56a9a_9d9b_4490_8fcd_53b7e50bf5d6*x(1)*x(11)-global_par_mw6ae3f7a6_bf58_475e_930e_6bf7a79f3761*x(47));

% Reaction: id = revreaction_14, name = revreaction_14
	reaction_revreaction_14=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwc52aebc2_571c_4f96_84ee_0613ae73db89*x(1)*x(12)-global_par_mw9330e49a_b214_4807_b614_4241a4a12c43*x(53));

% Reaction: id = revreaction_15, name = revreaction_15
	reaction_revreaction_15=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwc52aebc2_571c_4f96_84ee_0613ae73db89*x(1)*x(46)-global_par_mw9330e49a_b214_4807_b614_4241a4a12c43*x(54));

% Reaction: id = revreaction_16, name = revreaction_16
	reaction_revreaction_16=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw649b47b3_4c3a_4ac9_ae94_5c38ccf81e39*x(47)*x(4)-global_par_mwc911f28c_b62f_4269_84ed_d852f6da24f9*x(53));

% Reaction: id = revreaction_17, name = revreaction_17
	reaction_revreaction_17=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw649b47b3_4c3a_4ac9_ae94_5c38ccf81e39*x(48)*x(4)-global_par_mwc911f28c_b62f_4269_84ed_d852f6da24f9*x(54));

% Reaction: id = revreaction_18, name = revreaction_18
	reaction_revreaction_18=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwb93138ce_a80b_4b26_b927_6b4a00651b64*x(53)*const_species_mw46dccec6_6f0f_40f6_a10c_2f34ae7a005a-global_par_mwb494aae2_da19_4ac0_96e2_0dcd9440edc2*x(67));

% Reaction: id = revreaction_19, name = revreaction_19
	reaction_revreaction_19=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw541807fb_7d9f_4788_9f21_cc62846b5826*const_species_mw46dccec6_6f0f_40f6_a10c_2f34ae7a005a*x(47)-global_par_mwb494aae2_da19_4ac0_96e2_0dcd9440edc2*x(68));

% Reaction: id = revreaction_20, name = revreaction_20
	reaction_revreaction_20=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw72ceb3da_d538_4f25_8e69_f322eb0b5e57*x(12)*const_species_mw46dccec6_6f0f_40f6_a10c_2f34ae7a005a-global_par_mwb494aae2_da19_4ac0_96e2_0dcd9440edc2*x(69));

% Reaction: id = revreaction_21, name = revreaction_21
	reaction_revreaction_21=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw9c2302f8_3d47_4247_a338_a02c53fc5331*x(11)*const_species_mw46dccec6_6f0f_40f6_a10c_2f34ae7a005a-global_par_mwb494aae2_da19_4ac0_96e2_0dcd9440edc2*x(70));

% Reaction: id = revreaction_22, name = revreaction_22
	reaction_revreaction_22=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw9510e553_a7fd_4c9a_b284_19b3cc01ae7d*x(45)*const_species_mw46dccec6_6f0f_40f6_a10c_2f34ae7a005a-global_par_mwb494aae2_da19_4ac0_96e2_0dcd9440edc2*x(74));

% Reaction: id = revreaction_23, name = revreaction_23
	reaction_revreaction_23=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwb56b5ab7_47cc_4fbc_b68b_dfdc6be6d7a4*x(46)*const_species_mw46dccec6_6f0f_40f6_a10c_2f34ae7a005a-global_par_mwb494aae2_da19_4ac0_96e2_0dcd9440edc2*x(71));

% Reaction: id = revreaction_24, name = revreaction_24
	reaction_revreaction_24=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwa1bc2233_5bb9_4135_88ed_bb51640faec8*x(48)*const_species_mw46dccec6_6f0f_40f6_a10c_2f34ae7a005a-global_par_mwb494aae2_da19_4ac0_96e2_0dcd9440edc2*x(72));

% Reaction: id = revreaction_25, name = revreaction_25
	reaction_revreaction_25=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw00f3118f_5d5a_48d0_bcc4_749d5f9dc73a*x(54)*const_species_mw46dccec6_6f0f_40f6_a10c_2f34ae7a005a-global_par_mwb494aae2_da19_4ac0_96e2_0dcd9440edc2*x(73));

% Reaction: id = revreaction_26, name = revreaction_26
	reaction_revreaction_26=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw649b47b3_4c3a_4ac9_ae94_5c38ccf81e39*x(4)*x(68)-global_par_mwc911f28c_b62f_4269_84ed_d852f6da24f9*x(67));

% Reaction: id = revreaction_27, name = revreaction_27
	reaction_revreaction_27=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw649b47b3_4c3a_4ac9_ae94_5c38ccf81e39*x(4)*x(72)-global_par_mwc911f28c_b62f_4269_84ed_d852f6da24f9*x(73));

% Reaction: id = revreaction_28, name = revreaction_28
	reaction_revreaction_28=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw0a255671_d9ca_4384_a153_ce17e1111453*x(4)*x(70)-global_par_mwcd307ee9_33da_4303_9c28_644ad2d1630c*x(69));

% Reaction: id = revreaction_29, name = revreaction_29
	reaction_revreaction_29=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw0a255671_d9ca_4384_a153_ce17e1111453*x(4)*x(74)-global_par_mwcd307ee9_33da_4303_9c28_644ad2d1630c*x(71));

% Reaction: id = revreaction_30, name = revreaction_30
	reaction_revreaction_30=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwe737a297_e5be_46ed_af75_ccc7428c3977*const_species_mwccd3a17c_e207_4663_9b16_327b78882497*x(70)-global_par_mwddcb8d81_9f5a_457e_a54c_a0c1b1f29f0b*x(74));

% Reaction: id = revreaction_31, name = revreaction_31
	reaction_revreaction_31=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw1ef56a9a_9d9b_4490_8fcd_53b7e50bf5d6*x(70)*x(1)-global_par_mw6ae3f7a6_bf58_475e_930e_6bf7a79f3761*x(68));

% Reaction: id = revreaction_32, name = revreaction_32
	reaction_revreaction_32=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwc52aebc2_571c_4f96_84ee_0613ae73db89*x(1)*x(69)-global_par_mw9330e49a_b214_4807_b614_4241a4a12c43*x(67));

% Reaction: id = revreaction_33, name = revreaction_33
	reaction_revreaction_33=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw1ef56a9a_9d9b_4490_8fcd_53b7e50bf5d6*x(74)*x(1)-global_par_mw6ae3f7a6_bf58_475e_930e_6bf7a79f3761*x(72));

% Reaction: id = revreaction_34, name = revreaction_34
	reaction_revreaction_34=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwc52aebc2_571c_4f96_84ee_0613ae73db89*x(1)*x(71)-global_par_mw9330e49a_b214_4807_b614_4241a4a12c43*x(73));

% Reaction: id = revreaction_35, name = revreaction_35
	reaction_revreaction_35=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw0a87aca4_d8f3_4058_83d0_7addc7e7b981*x(10)*x(17)-global_par_mwf79c6674_0a76_49e2_973d_6677fa109433*x(18));

% Reaction: id = revreaction_36, name = revreaction_36
	reaction_revreaction_36=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw36eae1b1_84f0_42c3_ad0d_d27aa571346d*x(10)*x(18)-global_par_mwad5ebb51_1d46_40a7_b8d6_13ba4a466b92*x(19));

% Reaction: id = revreaction_37, name = revreaction_37
	reaction_revreaction_37=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw8deeabf3_8313_4e28_90be_ded2d2f045f3*x(19)-global_par_mw535609a4_02d1_42d0_ba4b_dce4b2136617*x(21)*x(20));

% Reaction: id = revreaction_38, name = revreaction_38
	reaction_revreaction_38=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw77fab49b_2ba6_4efe_9342_285f4fd3b7fa*x(10)*x(16)-global_par_mw05f4bef4_5e8d_4a92_bb74_cc0bb4c0260e*x(52));

% Reaction: id = revreaction_39, name = revreaction_39
	reaction_revreaction_39=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwd1b16e73_4fcb_4e4c_9804_3137259ba749*x(64)*x(10)^2-global_par_mw36cb62c6_0b3c_4d1b_9001_3b37aa7477e2*x(63));

% Reaction: id = revreaction_40, name = revreaction_40
	reaction_revreaction_40=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw0b1ccae3_37fa_4a23_a817_cd8fc458dc79*x(10)*x(64)-global_par_mw6f753a0e_a7ec_4b4b_bcfc_edb95a3f1296*x(65));

% Reaction: id = revreaction_41, name = revreaction_41
	reaction_revreaction_41=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw326e0065_b4f6_41ae_b1d0_66092dc5ebb2*x(10)*x(63)-global_par_mwca52f04a_bb5f_4d3f_ba6d_939bbb3895b9*x(66));

% Reaction: id = revreaction_42, name = revreaction_42
	reaction_revreaction_42=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw894b221b_266d_4277_ac01_83579ed103e6*x(13)*const_species_mwccd3a17c_e207_4663_9b16_327b78882497-global_par_mw68039b16_b516_4fba_bedd_d4bbc1a23a02*x(14));

% Reaction: id = revreaction_43, name = revreaction_43
	reaction_revreaction_43=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw1cc91fa1_3a8e_456d_a05d_6ddd5df00d00*const_species_mwccd3a17c_e207_4663_9b16_327b78882497*x(14)-global_par_mweb9b200d_dd29_4618_9e73_cddabb464215*x(15));

% Reaction: id = revreaction_44, name = revreaction_44
	reaction_revreaction_44=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw5557cb87_d4fa_44ba_b006_e67b44862136*x(22)*x(13)-global_par_mwe7952ed1_96f3_4d0c_8977_b6a2b4f26665*x(24));

% Reaction: id = revreaction_45, name = revreaction_45
	reaction_revreaction_45=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwe2bf9c41_d94e_4ff4_a573_8ac4a12513b0*x(22)*x(15)-global_par_mw810d8094_3a3e_494e_bd1b_fcd9e8ef1d17*x(23));

% Reaction: id = revreaction_46, name = revreaction_46
	reaction_revreaction_46=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw1db20a7e_3972_4c3a_83c0_c6fcd7c9cb45*x(21)*x(26)-global_par_mw4e2575eb_3641_422c_b836_d854958d4d1e*x(27));

% Reaction: id = revreaction_47, name = revreaction_47
	reaction_revreaction_47=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw690a2134_fb59_4061_be3b_929335ef629b*x(21)*x(49)-global_par_mwc0a23657_7f6c_4e0d_9f11_06b3ab5126f0*x(30));

% Reaction: id = revreaction_48, name = revreaction_48
	reaction_revreaction_48=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw4a930624_fcc1_4d08_8e24_9a0082418629*x(28)*x(33)-global_par_mw7419e1e3_b601_44a8_93ff_e5b31995791e*x(41));

% Reaction: id = revreaction_49, name = revreaction_49
	reaction_revreaction_49=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw1b9e5266_efac_4696_a213_80f9f83d948a*x(32)*x(26)-global_par_mwa27c20d8_b6ed_4617_a6f6_9af2752d3a33*x(34));

% Reaction: id = revreaction_50, name = revreaction_50
	reaction_revreaction_50=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw49e66b9c_64bd_428a_9090_15e4132e9781*x(35)*x(21)-global_par_mw2037ae7c_b1dc_4517_a61c_88a1f2bdcd12*x(36));

% Reaction: id = revreaction_51, name = revreaction_51
	reaction_revreaction_51=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw269c014a_6379_44c3_813b_52d8145506e7*x(29)*const_species_mwccd3a17c_e207_4663_9b16_327b78882497-global_par_mwc4c3d33d_b2b7_4ab2_a171_1864ea638ec0*x(37));

% Reaction: id = revreaction_52, name = revreaction_52
	reaction_revreaction_52=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwf1c01e00_be7d_4a3b_af91_3dd9ab9cea62*x(31)*x(35)-global_par_mw34b74798_bd70_4456_a53b_9e1e46bb9750*x(38));

% Reaction: id = revreaction_53, name = revreaction_53
	reaction_revreaction_53=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw2226fa14_2b95_45a6_8705_4b38073fc5f7*x(29)*x(35)-global_par_mw009f9583_4e96_4672_ab71_0ef4b697aa6f*x(39));

% Reaction: id = revreaction_54, name = revreaction_54
	reaction_revreaction_54=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwc44dc346_a522_4680_b81d_77540364e07c*x(35)*x(37)-global_par_mw43aa8259_68fc_4f47_ad18_37eaa0a94b5a*x(40));

% Reaction: id = revreaction_55, name = revreaction_55
	reaction_revreaction_55=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwa390f769_ebf1_4023_8af0_1c00e2a9bf82*x(28)*x(23)-global_par_mw0beb6cc4_36bd_4022_8993_29f981652ebe*x(42));

% Reaction: id = revreaction_56, name = revreaction_56
	reaction_revreaction_56=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwd6652286_f31c_4bfd_a885_ed2f2ca149af*x(24)*const_species_mwccd3a17c_e207_4663_9b16_327b78882497-global_par_mwd6fae483_ca98_40de_bed9_5e2302f769f3*x(25));

% Reaction: id = revreaction_57, name = revreaction_57
	reaction_revreaction_57=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwfe873584_629a_46c8_aae9_fdacdb9ad266*x(25)*const_species_mwccd3a17c_e207_4663_9b16_327b78882497-global_par_mwf3c85708_890c_45d1_bcbc_fe90e9ca792f*x(23));

% Reaction: id = revreaction_58, name = revreaction_58
	reaction_revreaction_58=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mw0d101277_e2ba_402c_9635_f10e690a9313*x(22)*x(14)-global_par_mw3e479c87_36d8_4cda_a0a2_0ee2b658f51a*x(25));

% Reaction: id = revreaction_59, name = revreaction_59
	reaction_revreaction_59=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwb3fdecfc_6465_4e63_888a_7762f542c790*x(35)*x(49)-global_par_mw19a820fb_1581_4bf1_9577_9e20f3296159*x(50));

% Reaction: id = revreaction_60, name = revreaction_60
	reaction_revreaction_60=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwe79f507b_73c9_4056_ae91_6244dcbc49bb*x(28)*x(37)-global_par_mw26206710_ba98_4010_9e5b_c3aae2ce29ec*x(51));

% Reaction: id = revreaction_61, name = revreaction_61
	reaction_revreaction_61=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*(global_par_mwe79f507b_73c9_4056_ae91_6244dcbc49bb*x(28)*x(29)-global_par_mw26206710_ba98_4010_9e5b_c3aae2ce29ec*x(43));

% Reaction: id = irrevreaction_1, name = irrevreaction_1
	reaction_irrevreaction_1=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw5623544e_e7e1_439f_88d3_3b0cbea8ccf5*x(4);

% Reaction: id = irrevreaction_2, name = irrevreaction_2
	reaction_irrevreaction_2=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw0dd72d64_80e1_4f76_a444_fd175dbfab0c*x(5);

% Reaction: id = irrevreaction_3, name = irrevreaction_3
	reaction_irrevreaction_3=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw2f090a45_946b_4587_a3e3_b29f3bb5c6ae*x(2)*x(3);

% Reaction: id = irrevreaction_4, name = irrevreaction_4
	reaction_irrevreaction_4=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwfcfb91ff_a495_41f9_bdff_fcef779112fd*x(1);

% Reaction: id = irrevreaction_5, name = irrevreaction_5
	reaction_irrevreaction_5=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw5175a06e_3927_4993_9242_8f76b0aaf42f*x(60)*x(61);

% Reaction: id = irrevreaction_6, name = irrevreaction_6
	reaction_irrevreaction_6=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwd05b4199_53ad_4807_9a8c_d93ce35be857*x(59);

% Reaction: id = irrevreaction_7, name = irrevreaction_7
	reaction_irrevreaction_7=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw8186cb1d_66c4_4855_bcbb_82d75173ae8a*x(69);

% Reaction: id = irrevreaction_8, name = irrevreaction_8
	reaction_irrevreaction_8=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw789c453f_f13d_467f_8f02_d5a714cda15d*x(10)*x(12);

% Reaction: id = irrevreaction_9, name = irrevreaction_9
	reaction_irrevreaction_9=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw98b63d59_8744_4e8c_8653_68ae1eb4ad40*x(70);

% Reaction: id = irrevreaction_10, name = irrevreaction_10
	reaction_irrevreaction_10=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwaa3af366_350e_4f18_936b_6372dc484f82*x(10)*x(11);

% Reaction: id = irrevreaction_11, name = irrevreaction_11
	reaction_irrevreaction_11=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwe4474191_0c92_406c_a6f5_4a167f541d36*x(68);

% Reaction: id = irrevreaction_12, name = irrevreaction_12
	reaction_irrevreaction_12=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw17d612a2_c9d5_4251_8122_5f037fc630e3*x(10)*x(47);

% Reaction: id = irrevreaction_13, name = irrevreaction_13
	reaction_irrevreaction_13=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw5301f7f5_60df_4eb9_ba3b_81e6519d1cbb*x(67);

% Reaction: id = irrevreaction_14, name = irrevreaction_14
	reaction_irrevreaction_14=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw5f50df8c_48a1_4c29_9e24_cca9a1242ee5*x(10)*x(53);

% Reaction: id = irrevreaction_15, name = irrevreaction_15
	reaction_irrevreaction_15=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw1a6a8649_d7cb_4379_983a_cca2acac3112*x(73);

% Reaction: id = irrevreaction_16, name = irrevreaction_16
	reaction_irrevreaction_16=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw86fd6328_2ac3_4dc0_97a2_698cf44eed12*x(10)*x(54);

% Reaction: id = irrevreaction_17, name = irrevreaction_17
	reaction_irrevreaction_17=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwc728d91d_7616_43db_bd1d_55e49e9c026a*x(72);

% Reaction: id = irrevreaction_18, name = irrevreaction_18
	reaction_irrevreaction_18=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwdb2a670f_13fb_4bda_8c72_d706c6bc37e9*x(10)*x(48);

% Reaction: id = irrevreaction_19, name = irrevreaction_19
	reaction_irrevreaction_19=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw65cae8fe_0eac_4792_88bf_2dfb441030e5*x(74);

% Reaction: id = irrevreaction_20, name = irrevreaction_20
	reaction_irrevreaction_20=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw515fcf69_b724_40d9_84ba_5f92d75ae5a7*x(10)*x(45);

% Reaction: id = irrevreaction_21, name = irrevreaction_21
	reaction_irrevreaction_21=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwb0a6bd5e_87a0_425c_a5c7_ea69903e0bf3*x(71);

% Reaction: id = irrevreaction_22, name = irrevreaction_22
	reaction_irrevreaction_22=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw034d8151_fae1_4738_b675_39c38a58118d*x(10)*x(46);

% Reaction: id = irrevreaction_23, name = irrevreaction_23
	reaction_irrevreaction_23=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw8db06baf_d8bb_4a1a_b415_2d51fa1e53ba*x(12);

% Reaction: id = irrevreaction_24, name = irrevreaction_24
	reaction_irrevreaction_24=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw8db06baf_d8bb_4a1a_b415_2d51fa1e53ba*x(46);

% Reaction: id = irrevreaction_25, name = irrevreaction_25
	reaction_irrevreaction_25=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwcabc0868_2435_4850_964b_e3ddee39f5ad*x(48);

% Reaction: id = irrevreaction_26, name = irrevreaction_26
	reaction_irrevreaction_26=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwcabc0868_2435_4850_964b_e3ddee39f5ad*x(47);

% Reaction: id = irrevreaction_27, name = irrevreaction_27
	reaction_irrevreaction_27=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw8db06baf_d8bb_4a1a_b415_2d51fa1e53ba*x(53);

% Reaction: id = irrevreaction_28, name = irrevreaction_28
	reaction_irrevreaction_28=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwcabc0868_2435_4850_964b_e3ddee39f5ad*x(53);

% Reaction: id = irrevreaction_29, name = irrevreaction_29
	reaction_irrevreaction_29=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw8db06baf_d8bb_4a1a_b415_2d51fa1e53ba*x(54);

% Reaction: id = irrevreaction_30, name = irrevreaction_30
	reaction_irrevreaction_30=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwcabc0868_2435_4850_964b_e3ddee39f5ad*x(54);

% Reaction: id = irrevreaction_31, name = irrevreaction_31
	reaction_irrevreaction_31=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwcabc0868_2435_4850_964b_e3ddee39f5ad*x(67);

% Reaction: id = irrevreaction_32, name = irrevreaction_32
	reaction_irrevreaction_32=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwcabc0868_2435_4850_964b_e3ddee39f5ad*x(68);

% Reaction: id = irrevreaction_33, name = irrevreaction_33
	reaction_irrevreaction_33=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw8db06baf_d8bb_4a1a_b415_2d51fa1e53ba*x(67);

% Reaction: id = irrevreaction_34, name = irrevreaction_34
	reaction_irrevreaction_34=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw8db06baf_d8bb_4a1a_b415_2d51fa1e53ba*x(69);

% Reaction: id = irrevreaction_35, name = irrevreaction_35
	reaction_irrevreaction_35=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw8db06baf_d8bb_4a1a_b415_2d51fa1e53ba*x(71);

% Reaction: id = irrevreaction_36, name = irrevreaction_36
	reaction_irrevreaction_36=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwcabc0868_2435_4850_964b_e3ddee39f5ad*x(73);

% Reaction: id = irrevreaction_37, name = irrevreaction_37
	reaction_irrevreaction_37=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwcabc0868_2435_4850_964b_e3ddee39f5ad*x(72);

% Reaction: id = irrevreaction_38, name = irrevreaction_38
	reaction_irrevreaction_38=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw8db06baf_d8bb_4a1a_b415_2d51fa1e53ba*x(73);

% Reaction: id = irrevreaction_39, name = irrevreaction_39
	reaction_irrevreaction_39=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwa4148cd1_a298_447c_aea8_226688c3f526*x(52);

% Reaction: id = irrevreaction_40, name = irrevreaction_40
	reaction_irrevreaction_40=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwf633f298_303f_46d1_b644_ae07ae366f45*x(65);

% Reaction: id = irrevreaction_41, name = irrevreaction_41
	reaction_irrevreaction_41=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwac1bc66c_2623_47e6_a76d_c1629d962be5*x(66);

% Reaction: id = irrevreaction_42, name = irrevreaction_42
	reaction_irrevreaction_42=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw2561b5ab_39c9_4453_99d8_f0f37779b63a*x(27);

% Reaction: id = irrevreaction_43, name = irrevreaction_43
	reaction_irrevreaction_43=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwe5d8a08f_c74e_4618_892c_41c71a57cade*x(30);

% Reaction: id = irrevreaction_44, name = irrevreaction_44
	reaction_irrevreaction_44=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwed967767_31e4_4e9e_8117_5372f9f4f79a*x(34);

% Reaction: id = irrevreaction_45, name = irrevreaction_45
	reaction_irrevreaction_45=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw6bf18344_b899_4a62_ac8d_5f8bdd4bbe2f*x(38);

% Reaction: id = irrevreaction_46, name = irrevreaction_46
	reaction_irrevreaction_46=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw6af7af00_75ac_4f58_8383_7047a5fb5181*x(39);

% Reaction: id = irrevreaction_47, name = irrevreaction_47
	reaction_irrevreaction_47=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw4d0140a3_fd9c_4adb_9be0_63d4612400ee*x(40);

% Reaction: id = irrevreaction_48, name = irrevreaction_48
	reaction_irrevreaction_48=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw88c9326a_fbe9_4dd8_aded_b5be3f012691*x(50);

% Reaction: id = irrevreaction_49, name = irrevreaction_49
	reaction_irrevreaction_49=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwdcc4ce84_732d_4f5b_84e2_e5b93617200b*x(51);

% Reaction: id = irrevreaction_50, name = irrevreaction_50
	reaction_irrevreaction_50=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mwdcc4ce84_732d_4f5b_84e2_e5b93617200b*x(43);

% Reaction: id = irrevreaction_51, name = irrevreaction_51
	reaction_irrevreaction_51=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw62c51fcf_c107_4d3c_849e_9b168df54490*x(42);

% Reaction: id = irrevreaction_52, name = irrevreaction_52
	reaction_irrevreaction_52=compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5*global_par_mw3a56b314_299f_48d2_a179_97bf6a30f38f*x(31);

% Species:   id = mwccd3a17c_e207_4663_9b16_327b78882497, name = Ca, constant	const_species_mwccd3a17c_e207_4663_9b16_327b78882497=60.0;

% Species:   id = mw9710c658_a2a1_4f49_b494_af109853f251, name = AMP, constant	const_species_mw9710c658_a2a1_4f49_b494_af109853f251=0.0;

% Species:   id = mw46dccec6_6f0f_40f6_a10c_2f34ae7a005a, name = ATP, constant	const_species_mw46dccec6_6f0f_40f6_a10c_2f34ae7a005a=5000000.0;

	xdot=zeros(77,1);
	
% Species:   id = mwa2c44a01_28c9_4dbd_b034_364f9b5b6cc3, name = GaiGTP, affected by kineticLaw
	xdot(1) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_12) + (-1.0 * reaction_revreaction_13) + (-1.0 * reaction_revreaction_14) + (-1.0 * reaction_revreaction_15) + (-1.0 * reaction_revreaction_31) + (-1.0 * reaction_revreaction_32) + (-1.0 * reaction_revreaction_33) + (-1.0 * reaction_revreaction_34) + (-1.0 * reaction_irrevreaction_4) + ( 1.0 * reaction_irrevreaction_6));
	
% Species:   id = mwfed0682b_39f1_4b09_94e8_c45a51744092, name = GaolfGDP, affected by kineticLaw
	xdot(2) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_irrevreaction_1) + (-1.0 * reaction_irrevreaction_3) + ( 1.0 * reaction_irrevreaction_23) + ( 1.0 * reaction_irrevreaction_24) + ( 1.0 * reaction_irrevreaction_27) + ( 1.0 * reaction_irrevreaction_29) + ( 1.0 * reaction_irrevreaction_33) + ( 1.0 * reaction_irrevreaction_34) + ( 1.0 * reaction_irrevreaction_35) + ( 1.0 * reaction_irrevreaction_38));
	
% Species:   id = mwaf471bc1_f98a_4115_b0ee_45c189ea20b5, name = Gbgolf, affected by kineticLaw
	xdot(3) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_irrevreaction_2) + (-1.0 * reaction_irrevreaction_3));
	
% Species:   id = mw8e34c23f_1891_4dc9_8f97_dc2f12a1706c, name = GaolfGTP, affected by kineticLaw
	xdot(4) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_9) + (-1.0 * reaction_revreaction_11) + (-1.0 * reaction_revreaction_16) + (-1.0 * reaction_revreaction_17) + (-1.0 * reaction_revreaction_26) + (-1.0 * reaction_revreaction_27) + (-1.0 * reaction_revreaction_28) + (-1.0 * reaction_revreaction_29) + (-1.0 * reaction_irrevreaction_1) + ( 1.0 * reaction_irrevreaction_2));
	
% Species:   id = mw6b2f1c44_e0be_4406_bcef_ad5061d519e4, name = D1RDAGolf, affected by kineticLaw
	xdot(5) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_1) + ( 1.0 * reaction_revreaction_2) + (-1.0 * reaction_irrevreaction_2));
	
% Species:   id = mw351f6cee_3e64_4b8e_8e60_24b1aca99a92, name = Golf, affected by kineticLaw
	xdot(6) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_2) + (-1.0 * reaction_revreaction_3) + ( 1.0 * reaction_irrevreaction_3));
	
% Species:   id = mw0b46978f_b522_4cde_97f0_574cd7dbbae7, name = D1RGolf, affected by kineticLaw
	xdot(7) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_1) + ( 1.0 * reaction_revreaction_3));
	
% Species:   id = mwdb9dc389_2bf0_4039_9f09_282f5511958b, name = D1RDA, affected by kineticLaw
	xdot(8) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_2) + ( 1.0 * reaction_revreaction_4) + ( 1.0 * reaction_irrevreaction_2));
	
% Species:   id = mwe2fc02e6_2684_4071_932a_f7a8bd13b2fe, name = D1R, affected by kineticLaw
	xdot(9) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_3) + (-1.0 * reaction_revreaction_4));
	
% Species:   id = mw1c97b02d_169a_4eb8_bc84_1be57c51a255, name = cAMP, affected by kineticLaw
	xdot(10) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_35) + (-1.0 * reaction_revreaction_36) + (-1.0 * reaction_revreaction_38) + (-2.0 * reaction_revreaction_39) + (-1.0 * reaction_revreaction_40) + (-1.0 * reaction_revreaction_41) + ( 1.0 * reaction_irrevreaction_7) + (-1.0 * reaction_irrevreaction_8) + ( 1.0 * reaction_irrevreaction_9) + (-1.0 * reaction_irrevreaction_10) + ( 1.0 * reaction_irrevreaction_11) + (-1.0 * reaction_irrevreaction_12) + ( 1.0 * reaction_irrevreaction_13) + (-1.0 * reaction_irrevreaction_14) + ( 1.0 * reaction_irrevreaction_15) + (-1.0 * reaction_irrevreaction_16) + ( 1.0 * reaction_irrevreaction_17) + (-1.0 * reaction_irrevreaction_18) + ( 1.0 * reaction_irrevreaction_19) + (-1.0 * reaction_irrevreaction_20) + ( 1.0 * reaction_irrevreaction_21) + (-1.0 * reaction_irrevreaction_22));
	
% Species:   id = mw724f1afe_8032_40ae_96ca_808ab7b8b943, name = AC5, affected by kineticLaw
	xdot(11) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_9) + (-1.0 * reaction_revreaction_10) + (-1.0 * reaction_revreaction_13) + (-1.0 * reaction_revreaction_21) + ( 1.0 * reaction_irrevreaction_9) + (-1.0 * reaction_irrevreaction_10) + ( 1.0 * reaction_irrevreaction_23) + ( 1.0 * reaction_irrevreaction_26));
	
% Species:   id = mwfe9ed415_d5af_469c_a549_d8981f1eb01f, name = AC5GaolfGTP, affected by kineticLaw
	xdot(12) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_9) + (-1.0 * reaction_revreaction_14) + (-1.0 * reaction_revreaction_20) + ( 1.0 * reaction_irrevreaction_7) + (-1.0 * reaction_irrevreaction_8) + (-1.0 * reaction_irrevreaction_23) + ( 1.0 * reaction_irrevreaction_28));
	
% Species:   id = mw4b358131_010c_4545_ac4a_13a6c8bc34c4, name = CaM, affected by kineticLaw
	xdot(13) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_42) + (-1.0 * reaction_revreaction_44));
	
% Species:   id = mw65a14789_ffcf_4bfd_9d53_d2eb2f4d0896, name = CaMCa2, affected by kineticLaw
	xdot(14) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_42) + (-1.0 * reaction_revreaction_43) + (-1.0 * reaction_revreaction_58));
	
% Species:   id = mw8a4a0733_64dd_4474_9aaf_7d750b27ae5b, name = CaMCa4, affected by kineticLaw
	xdot(15) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_43) + (-1.0 * reaction_revreaction_45));
	
% Species:   id = mw219e8fae_a38b_4620_8726_e6bd1829a351, name = PDE4, affected by kineticLaw
	xdot(16) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_38) + ( 1.0 * reaction_irrevreaction_39));
	
% Species:   id = mwc783c5e7_7bc8_425a_9bb6_1f01d463365c, name = PKA, affected by kineticLaw
	xdot(17) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_35));
	
% Species:   id = mw74e54eed_0d25_4fb0_b677_1192f238c03b, name = PKAcAMP2, affected by kineticLaw
	xdot(18) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_35) + (-1.0 * reaction_revreaction_36));
	
% Species:   id = mwffd5a553_8e03_443d_a67e_0cf39d03f89f, name = PKAcAMP4, affected by kineticLaw
	xdot(19) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_36) + (-1.0 * reaction_revreaction_37));
	
% Species:   id = mwcfcf2e7f_907a_4d25_812f_6c10a7293859, name = PKAreg, affected by kineticLaw
	xdot(20) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_37));
	
% Species:   id = mw68d3f409_9462_4515_8c07_bc105fa0eaf1, name = PKAc, affected by kineticLaw
	xdot(21) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_37) + (-1.0 * reaction_revreaction_46) + (-1.0 * reaction_revreaction_47) + (-1.0 * reaction_revreaction_50) + ( 1.0 * reaction_irrevreaction_42) + ( 1.0 * reaction_irrevreaction_43));
	
% Species:   id = mw25023179_9334_438e_bf3e_4e850f84406a, name = PP2B, affected by kineticLaw
	xdot(22) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_44) + (-1.0 * reaction_revreaction_45) + (-1.0 * reaction_revreaction_58));
	
% Species:   id = mw4855b1cd_d7bc_4072_9736_dca30bbe448d, name = PP2Bc, affected by kineticLaw
	xdot(23) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_45) + (-1.0 * reaction_revreaction_55) + ( 1.0 * reaction_revreaction_57) + ( 1.0 * reaction_irrevreaction_51));
	
% Species:   id = mwfaf786e2_00b7_4e0c_b164_5aa1f4ef6356, name = PP2BCaM, affected by kineticLaw
	xdot(24) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_44) + (-1.0 * reaction_revreaction_56));
	
% Species:   id = mwd1171b65_ed6c_4413_bf47_5ed80038a7bd, name = PP2BCaMCa2, affected by kineticLaw
	xdot(25) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_56) + (-1.0 * reaction_revreaction_57) + ( 1.0 * reaction_revreaction_58));
	
% Species:   id = mw24435476_9c30_4878_b26f_4b3c5a0685c6, name = DARPP32, affected by kineticLaw
	xdot(26) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_46) + (-1.0 * reaction_revreaction_49) + ( 1.0 * reaction_irrevreaction_45) + ( 1.0 * reaction_irrevreaction_46) + ( 1.0 * reaction_irrevreaction_47) + ( 1.0 * reaction_irrevreaction_48) + ( 1.0 * reaction_irrevreaction_49) + ( 1.0 * reaction_irrevreaction_50) + ( 1.0 * reaction_irrevreaction_51));
	
% Species:   id = mw4179e1ff_9035_4c67_a67c_099e25beb9b0, name = PKAc*D32, affected by kineticLaw
	xdot(27) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_46) + (-1.0 * reaction_irrevreaction_42));
	
% Species:   id = mw2f3e9c55_e57f_416e_b4b1_cc49a26192c0, name = D32p34, affected by kineticLaw
	xdot(28) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_48) + (-1.0 * reaction_revreaction_55) + (-1.0 * reaction_revreaction_60) + (-1.0 * reaction_revreaction_61) + ( 1.0 * reaction_irrevreaction_42));
	
% Species:   id = mw522cacf1_5e61_4b95_8742_cf61cb824893, name = B72PP2A, affected by kineticLaw
	xdot(29) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_51) + (-1.0 * reaction_revreaction_53) + (-1.0 * reaction_revreaction_61) + ( 1.0 * reaction_irrevreaction_46) + ( 1.0 * reaction_irrevreaction_50));
	
% Species:   id = mwe8cc261d_af39_4e88_8a65_a4994dcea2ff, name = PKAc*B56PP2A, affected by kineticLaw
	xdot(30) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_47) + (-1.0 * reaction_irrevreaction_43));
	
% Species:   id = mw9417144e_14b1_40d9_bd4b_ccd9f4714305, name = B56PP2Ap, affected by kineticLaw
	xdot(31) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_52) + ( 1.0 * reaction_irrevreaction_43) + ( 1.0 * reaction_irrevreaction_45) + (-1.0 * reaction_irrevreaction_52));
	
% Species:   id = mw32351ce4_eaaf_4827_8efa_342224548d8a, name = CDK5, affected by kineticLaw
	xdot(32) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_49) + ( 1.0 * reaction_irrevreaction_44));
	
% Species:   id = mw06380287_79c9_4f85_aed6_fa34e7bcdff1, name = PP1, affected by kineticLaw
	xdot(33) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_48));
	
% Species:   id = mw0130a500_18e9_470f_9fac_70af44dc4a9e, name = CDK5*D32, affected by kineticLaw
	xdot(34) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_49) + (-1.0 * reaction_irrevreaction_44));
	
% Species:   id = mw1184c368_03fc_435a_9086_dc6ed3067935, name = D32p75, affected by kineticLaw
	xdot(35) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_50) + (-1.0 * reaction_revreaction_52) + (-1.0 * reaction_revreaction_53) + (-1.0 * reaction_revreaction_54) + (-1.0 * reaction_revreaction_59) + ( 1.0 * reaction_irrevreaction_44));
	
% Species:   id = mwb320746f_6a8c_4c8b_ae55_23db454339d8, name = PKAcD32p75, affected by kineticLaw
	xdot(36) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_50));
	
% Species:   id = mw3fcd1ec2_a459_49d4_89f7_361e276096d6, name = B72PPA2Ca, affected by kineticLaw
	xdot(37) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_51) + (-1.0 * reaction_revreaction_54) + (-1.0 * reaction_revreaction_60) + ( 1.0 * reaction_irrevreaction_47) + ( 1.0 * reaction_irrevreaction_49));
	
% Species:   id = mw3a3e53fb_bbbf_4433_9f75_a12610dbc312, name = B56PP2Ap*D32p75, affected by kineticLaw
	xdot(38) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_52) + (-1.0 * reaction_irrevreaction_45));
	
% Species:   id = mw0459271f_3b39_40a4_948f_aed773482cfc, name = B72PP2A*D32p75, affected by kineticLaw
	xdot(39) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_53) + (-1.0 * reaction_irrevreaction_46));
	
% Species:   id = mw9bfd7713_4c48_492c_8583_006bf1b54a1b, name = B72PP2ACa*D32p75, affected by kineticLaw
	xdot(40) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_54) + (-1.0 * reaction_irrevreaction_47));
	
% Species:   id = mwc57c3c2e_69d5_4336_aff5_d1f429420df2, name = PP1D32p34, affected by kineticLaw
	xdot(41) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_48));
	
% Species:   id = mwcf1bb70c_9d0b_4e82_b58a_6f8e73208af9, name = PP2Bc*D32p34, affected by kineticLaw
	xdot(42) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_55) + (-1.0 * reaction_irrevreaction_51));
	
% Species:   id = mwa9e7a93f_2393_4220_9ac8_79a02d068dc3, name = B72PP2A*D32p34, affected by kineticLaw
	xdot(43) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_61) + (-1.0 * reaction_irrevreaction_50));
	
% Species:   id = mwbe974953_e869_4622_b4a8_745555c8d7fd, name = DA, involved in a rule 	xdot(44) = x(44);
	
% Species:   id = mw7df45520_98cc_4c0b_91a7_c6e7297de98a, name = AC5Ca, affected by kineticLaw
	xdot(45) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_10) + (-1.0 * reaction_revreaction_11) + (-1.0 * reaction_revreaction_12) + (-1.0 * reaction_revreaction_22) + ( 1.0 * reaction_irrevreaction_19) + (-1.0 * reaction_irrevreaction_20) + ( 1.0 * reaction_irrevreaction_24) + ( 1.0 * reaction_irrevreaction_25));
	
% Species:   id = mw42919ead_5972_4151_85ac_fcc88ca105a6, name = AC5CaGaolfGTP, affected by kineticLaw
	xdot(46) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_11) + (-1.0 * reaction_revreaction_15) + (-1.0 * reaction_revreaction_23) + ( 1.0 * reaction_irrevreaction_21) + (-1.0 * reaction_irrevreaction_22) + (-1.0 * reaction_irrevreaction_24) + ( 1.0 * reaction_irrevreaction_30));
	
% Species:   id = mw29ba9e7c_6865_4817_8775_be2dbc29651e, name = AC5GaiGTP, affected by kineticLaw
	xdot(47) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_13) + (-1.0 * reaction_revreaction_16) + (-1.0 * reaction_revreaction_19) + ( 1.0 * reaction_irrevreaction_11) + (-1.0 * reaction_irrevreaction_12) + (-1.0 * reaction_irrevreaction_26) + ( 1.0 * reaction_irrevreaction_27));
	
% Species:   id = mwed1b3928_8d78_44d1_aee7_9d11d6437cfc, name = AC5CaGaiGTP, affected by kineticLaw
	xdot(48) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_12) + (-1.0 * reaction_revreaction_17) + (-1.0 * reaction_revreaction_24) + ( 1.0 * reaction_irrevreaction_17) + (-1.0 * reaction_irrevreaction_18) + (-1.0 * reaction_irrevreaction_25) + ( 1.0 * reaction_irrevreaction_29));
	
% Species:   id = mw081c9f7b_011e_440f_971d_d0316d2a1e6c, name = B56PP2A, affected by kineticLaw
	xdot(49) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_47) + (-1.0 * reaction_revreaction_59) + ( 1.0 * reaction_irrevreaction_48) + ( 1.0 * reaction_irrevreaction_52));
	
% Species:   id = mwde741b91_d5bf_44a9_ad45_404d7259d051, name = B56PP2A*D32p75, affected by kineticLaw
	xdot(50) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_59) + (-1.0 * reaction_irrevreaction_48));
	
% Species:   id = mw8825a609_0983_4fb4_a264_e2f7e43d17b3, name = B72PP2ACa*D32p34, affected by kineticLaw
	xdot(51) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_60) + (-1.0 * reaction_irrevreaction_49));
	
% Species:   id = mwf46d3666_f0f3_4f05_9603_d7e6bb69005e, name = PDE4*cAMP, affected by kineticLaw
	xdot(52) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_38) + (-1.0 * reaction_irrevreaction_39));
	
% Species:   id = mwd794c746_c826_4ba1_9e09_a9d1e122d925, name = AC5GaolfGTPGaiGTP, affected by kineticLaw
	xdot(53) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_14) + ( 1.0 * reaction_revreaction_16) + (-1.0 * reaction_revreaction_18) + ( 1.0 * reaction_irrevreaction_13) + (-1.0 * reaction_irrevreaction_14) + (-1.0 * reaction_irrevreaction_27) + (-1.0 * reaction_irrevreaction_28));
	
% Species:   id = mw2badefa3_32e8_4b66_9e69_245d9ec74e33, name = AC5CaGaolfGTPGaiGTP, affected by kineticLaw
	xdot(54) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_15) + ( 1.0 * reaction_revreaction_17) + (-1.0 * reaction_revreaction_25) + ( 1.0 * reaction_irrevreaction_15) + (-1.0 * reaction_irrevreaction_16) + (-1.0 * reaction_irrevreaction_29) + (-1.0 * reaction_irrevreaction_30));
	
% Species:   id = mwf82770b9_766a_4c4e_851a_d76da19e8517, name = M4R, affected by kineticLaw
	xdot(55) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_5) + (-1.0 * reaction_revreaction_8));
	
% Species:   id = mw9d5c5c9d_301d_4e43_ba7b_7d21ccbdc2c2, name = M4RACh, affected by kineticLaw
	xdot(56) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_6) + ( 1.0 * reaction_revreaction_8) + ( 1.0 * reaction_irrevreaction_6));
	
% Species:   id = mwd86ce0dc_7329_4b27_9de0_ee6bffee3083, name = M4RGi, affected by kineticLaw
	xdot(57) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_5) + (-1.0 * reaction_revreaction_7));
	
% Species:   id = mwd8ea533a_c66e_4de4_8c5c_0d4201d8c8a2, name = Gi, affected by kineticLaw
	xdot(58) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_5) + (-1.0 * reaction_revreaction_6) + ( 1.0 * reaction_irrevreaction_5));
	
% Species:   id = mwe4e36b8e_18b8_4c76_bd46_13614b71da5c, name = M4RAChGi, affected by kineticLaw
	xdot(59) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_6) + ( 1.0 * reaction_revreaction_7) + (-1.0 * reaction_irrevreaction_6));
	
% Species:   id = mwb80e4fa1_4849_4ed5_b3b0_3e3025c61ad8, name = Gbgi, affected by kineticLaw
	xdot(60) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_irrevreaction_5) + ( 1.0 * reaction_irrevreaction_6));
	
% Species:   id = mw9bcba6bc_9788_4f7f_afb5_1c8f3b33c3d1, name = GaiGDP, affected by kineticLaw
	xdot(61) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_irrevreaction_4) + (-1.0 * reaction_irrevreaction_5) + ( 1.0 * reaction_irrevreaction_25) + ( 1.0 * reaction_irrevreaction_26) + ( 1.0 * reaction_irrevreaction_28) + ( 1.0 * reaction_irrevreaction_30) + ( 1.0 * reaction_irrevreaction_31) + ( 1.0 * reaction_irrevreaction_32) + ( 1.0 * reaction_irrevreaction_36) + ( 1.0 * reaction_irrevreaction_37));
	
% Species:   id = mw3e1a2fbf_37b1_490c_9528_6cb6bbf11b21, name = ACh, involved in a rule 	xdot(62) = x(62);
	
% Species:   id = mw1041345b_f015_436c_9eff_98211008aa1c, name = PDE10c, affected by kineticLaw
	xdot(63) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_39) + (-1.0 * reaction_revreaction_41) + ( 1.0 * reaction_irrevreaction_41));
	
% Species:   id = mw3d9e6efb_8e12_49c9_a87f_e067914b951d, name = PDE10, affected by kineticLaw
	xdot(64) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*((-1.0 * reaction_revreaction_39) + (-1.0 * reaction_revreaction_40) + ( 1.0 * reaction_irrevreaction_40));
	
% Species:   id = mw6e845d87_603e_4463_874d_866f554303df, name = PDE10*cAMP, affected by kineticLaw
	xdot(65) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_40) + (-1.0 * reaction_irrevreaction_40));
	
% Species:   id = mw1f3b8982_3b8c_42b6_8b0f_49b037cbda43, name = PDE10c*cAMP, affected by kineticLaw
	xdot(66) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_41) + (-1.0 * reaction_irrevreaction_41));
	
% Species:   id = mw0a10f9cb_3f4b_4bfa_ace9_0ecd2bd74b5e, name = AC5GaolfGTPGaiGTP*ATP, affected by kineticLaw
	xdot(67) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_18) + ( 1.0 * reaction_revreaction_26) + ( 1.0 * reaction_revreaction_32) + (-1.0 * reaction_irrevreaction_13) + ( 1.0 * reaction_irrevreaction_14) + (-1.0 * reaction_irrevreaction_31) + (-1.0 * reaction_irrevreaction_33));
	
% Species:   id = mw2075d2cf_955e_4150_98b8_847103c53845, name = AC5GaiGTP*ATP, affected by kineticLaw
	xdot(68) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_19) + (-1.0 * reaction_revreaction_26) + ( 1.0 * reaction_revreaction_31) + (-1.0 * reaction_irrevreaction_11) + ( 1.0 * reaction_irrevreaction_12) + (-1.0 * reaction_irrevreaction_32) + ( 1.0 * reaction_irrevreaction_33));
	
% Species:   id = mw166e3335_56c3_41ef_af0f_b583860991c1, name = AC5GaolfGTP*ATP, affected by kineticLaw
	xdot(69) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_20) + ( 1.0 * reaction_revreaction_28) + (-1.0 * reaction_revreaction_32) + (-1.0 * reaction_irrevreaction_7) + ( 1.0 * reaction_irrevreaction_8) + ( 1.0 * reaction_irrevreaction_31) + (-1.0 * reaction_irrevreaction_34));
	
% Species:   id = mw7086a13a_619e_4069_b163_d8a05fc55f42, name = AC5*ATP, affected by kineticLaw
	xdot(70) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_21) + (-1.0 * reaction_revreaction_28) + (-1.0 * reaction_revreaction_30) + (-1.0 * reaction_revreaction_31) + (-1.0 * reaction_irrevreaction_9) + ( 1.0 * reaction_irrevreaction_10) + ( 1.0 * reaction_irrevreaction_32) + ( 1.0 * reaction_irrevreaction_34));
	
% Species:   id = mwbae3bd11_0ab4_4587_a931_9c5dc5e777ba, name = AC5CaGaolfGTP*ATP, affected by kineticLaw
	xdot(71) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_23) + ( 1.0 * reaction_revreaction_29) + (-1.0 * reaction_revreaction_34) + (-1.0 * reaction_irrevreaction_21) + ( 1.0 * reaction_irrevreaction_22) + (-1.0 * reaction_irrevreaction_35) + ( 1.0 * reaction_irrevreaction_36));
	
% Species:   id = mw56dff932_134c_4d88_a611_daad00623fd0, name = AC5CaGaiGTP*ATP, affected by kineticLaw
	xdot(72) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_24) + (-1.0 * reaction_revreaction_27) + ( 1.0 * reaction_revreaction_33) + (-1.0 * reaction_irrevreaction_17) + ( 1.0 * reaction_irrevreaction_18) + (-1.0 * reaction_irrevreaction_37) + ( 1.0 * reaction_irrevreaction_38));
	
% Species:   id = mw07c7392b_8d89_4b94_97c5_59f7e256b6f2, name = AC5CaGaolfGTPGaiGTP*ATP, affected by kineticLaw
	xdot(73) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_25) + ( 1.0 * reaction_revreaction_27) + ( 1.0 * reaction_revreaction_34) + (-1.0 * reaction_irrevreaction_15) + ( 1.0 * reaction_irrevreaction_16) + (-1.0 * reaction_irrevreaction_36) + (-1.0 * reaction_irrevreaction_38));
	
% Species:   id = mw619502c3_e319_4e29_a677_b2b5f74fc2cf, name = AC5Ca*ATP, affected by kineticLaw
	xdot(74) = (1/(compartment_mw26af457f_7462_4410_a392_e0bbb6071ea5))*(( 1.0 * reaction_revreaction_22) + (-1.0 * reaction_revreaction_29) + ( 1.0 * reaction_revreaction_30) + (-1.0 * reaction_revreaction_33) + (-1.0 * reaction_irrevreaction_19) + ( 1.0 * reaction_irrevreaction_20) + ( 1.0 * reaction_irrevreaction_35) + ( 1.0 * reaction_irrevreaction_37));
	
% Species:   id = mw2fde5e42_278d_484f_b4b5_5e53ac9fd85c, name = PP1*AKAR3p
% Warning species is not changed by either rules or reactions
	xdot(75) = ;
	
% Species:   id = mw8574bd14_b18a_4a80_ba13_7c988ed786b6, name = PKAc*AKAR3
% Warning species is not changed by either rules or reactions
	xdot(76) = ;
	
% Species:   id = totalActivePKA, name = totalActivePKA, involved in a rule 	xdot(77) = x(77);
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


