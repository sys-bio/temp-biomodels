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
% Model name = Mol2013 - Immune Signal Transduction in Leishmaniasis
%
% is http://identifiers.org/biomodels.db/MODEL1308080000
% is http://identifiers.org/biomodels.db/BIOMD0000000477
% isDescribedBy http://identifiers.org/pubmed/23994140
%


function main()
%Initial conditions vector
	x0=zeros(43,1);
	x0(1) = 1.5;
	x0(2) = 1.3;
	x0(3) = 1.3;
	x0(4) = 0.8;
	x0(5) = 1.5;
	x0(6) = 1.4;
	x0(7) = 1.2;
	x0(8) = 1.4;
	x0(9) = 1.2;
	x0(10) = 1.2;
	x0(11) = 1.5;
	x0(12) = 0.9;
	x0(13) = 1.5;
	x0(14) = 1.5;
	x0(15) = 0.85;
	x0(16) = 1.0;
	x0(17) = 1.1;
	x0(18) = 1.3;
	x0(19) = 1.1;
	x0(20) = 0.8;
	x0(21) = 1.5;
	x0(22) = 1.6;
	x0(23) = 1.3;
	x0(24) = 1.6;
	x0(25) = 1.45;
	x0(26) = 0.9;
	x0(27) = 1.5;
	x0(28) = 1.6;
	x0(29) = 1.2;
	x0(30) = 0.3;
	x0(31) = 1.2;
	x0(32) = 1.2;
	x0(33) = 1.6;
	x0(34) = 1.1;
	x0(35) = 0.2;
	x0(36) = 0.6;
	x0(37) = 0.91;
	x0(38) = 0.8;
	x0(39) = 0.5;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 0.0;


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

% Compartment: id = mw0cba5a10_f303_4c95_aaf1_b6f942374d31, name = cytoplasm, constant
	compartment_mw0cba5a10_f303_4c95_aaf1_b6f942374d31=1.0;
% Compartment: id = mwa5ac95a5_d135_4de0_bce2_093ac2c172db, name = nucleus, constant
	compartment_mwa5ac95a5_d135_4de0_bce2_093ac2c172db=1.0;

% Reaction: id = mw56c6d2a8_5d66_4b27_841a_662ac710fac3, name = 1	% Local Parameter:   id =  mw826aae9f_9728_4bbb_a11b_60578912218b, name = k1
	reaction_mw56c6d2a8_5d66_4b27_841a_662ac710fac3_mw826aae9f_9728_4bbb_a11b_60578912218b=1.2;

	reaction_mw56c6d2a8_5d66_4b27_841a_662ac710fac3=reaction_mw56c6d2a8_5d66_4b27_841a_662ac710fac3_mw826aae9f_9728_4bbb_a11b_60578912218b*x(1);

% Reaction: id = mw2055093c_9534_4ee3_999e_dc4d7e0246cf, name = 2	% Local Parameter:   id =  mw6834a7ac_63c4_4741_b0fc_069c665f1de2, name = k2
	reaction_mw2055093c_9534_4ee3_999e_dc4d7e0246cf_mw6834a7ac_63c4_4741_b0fc_069c665f1de2=1.18;

	reaction_mw2055093c_9534_4ee3_999e_dc4d7e0246cf=reaction_mw2055093c_9534_4ee3_999e_dc4d7e0246cf_mw6834a7ac_63c4_4741_b0fc_069c665f1de2*x(2);

% Reaction: id = mw8d01ca0a_dc27_461f_a854_cede0c0697dd, name = 3	% Local Parameter:   id =  mw56211dd8_6a88_465e_bed2_f603bf8c5b52, name = k3
	reaction_mw8d01ca0a_dc27_461f_a854_cede0c0697dd_mw56211dd8_6a88_465e_bed2_f603bf8c5b52=0.6;
	% Local Parameter:   id =  mw0733f43b_b430_40c4_8b93_1555a4bdbaa1, name = v3
	reaction_mw8d01ca0a_dc27_461f_a854_cede0c0697dd_mw0733f43b_b430_40c4_8b93_1555a4bdbaa1=0.6;

	reaction_mw8d01ca0a_dc27_461f_a854_cede0c0697dd=reaction_mw8d01ca0a_dc27_461f_a854_cede0c0697dd_mw0733f43b_b430_40c4_8b93_1555a4bdbaa1*x(3)/(reaction_mw8d01ca0a_dc27_461f_a854_cede0c0697dd_mw56211dd8_6a88_465e_bed2_f603bf8c5b52+x(3));

% Reaction: id = mwc021dbe5_8831_4239_b280_9dcfb2ce1101, name = 4	% Local Parameter:   id =  mwf89fc9a4_ad1e_4e59_8a06_4b8dc2cc84a7, name = v4
	reaction_mwc021dbe5_8831_4239_b280_9dcfb2ce1101_mwf89fc9a4_ad1e_4e59_8a06_4b8dc2cc84a7=0.28;
	% Local Parameter:   id =  mwaad66a38_26d2_41fc_9261_79c57500a6d4, name = k4
	reaction_mwc021dbe5_8831_4239_b280_9dcfb2ce1101_mwaad66a38_26d2_41fc_9261_79c57500a6d4=1.5;

	reaction_mwc021dbe5_8831_4239_b280_9dcfb2ce1101=reaction_mwc021dbe5_8831_4239_b280_9dcfb2ce1101_mwf89fc9a4_ad1e_4e59_8a06_4b8dc2cc84a7*x(3)/(reaction_mwc021dbe5_8831_4239_b280_9dcfb2ce1101_mwaad66a38_26d2_41fc_9261_79c57500a6d4+x(3));

% Reaction: id = mwc064fbe4_1c49_4130_b601_efefacd114e4, name = 5	% Local Parameter:   id =  mwbf5d43e3_e386_4b05_997d_4e70cbff9498, name = k5
	reaction_mwc064fbe4_1c49_4130_b601_efefacd114e4_mwbf5d43e3_e386_4b05_997d_4e70cbff9498=0.15;
	% Local Parameter:   id =  mw5fdc2487_13a9_449a_b90c_95446ddf7f37, name = v5
	reaction_mwc064fbe4_1c49_4130_b601_efefacd114e4_mw5fdc2487_13a9_449a_b90c_95446ddf7f37=1.3;

	reaction_mwc064fbe4_1c49_4130_b601_efefacd114e4=reaction_mwc064fbe4_1c49_4130_b601_efefacd114e4_mw5fdc2487_13a9_449a_b90c_95446ddf7f37*x(5)/(reaction_mwc064fbe4_1c49_4130_b601_efefacd114e4_mwbf5d43e3_e386_4b05_997d_4e70cbff9498+x(5));

% Reaction: id = mw57e0090c_072b_4494_bdf6_a005150e0f42, name = 6	% Local Parameter:   id =  mw9ac53fed_0388_4261_b457_030cd631fa0e, name = k6
	reaction_mw57e0090c_072b_4494_bdf6_a005150e0f42_mw9ac53fed_0388_4261_b457_030cd631fa0e=0.1;
	% Local Parameter:   id =  mwd4bfd4cc_6fd4_4b3b_980d_547ce2740b7e, name = v6
	reaction_mw57e0090c_072b_4494_bdf6_a005150e0f42_mwd4bfd4cc_6fd4_4b3b_980d_547ce2740b7e=2.2;

	reaction_mw57e0090c_072b_4494_bdf6_a005150e0f42=reaction_mw57e0090c_072b_4494_bdf6_a005150e0f42_mwd4bfd4cc_6fd4_4b3b_980d_547ce2740b7e*x(6)/(reaction_mw57e0090c_072b_4494_bdf6_a005150e0f42_mw9ac53fed_0388_4261_b457_030cd631fa0e+x(6));

% Reaction: id = mwd78707fa_21d0_4f82_b3d1_a74ba6b8f727, name = 7	% Local Parameter:   id =  mwa68f7af3_30af_4fa0_9290_9e005c875763, name = k7
	reaction_mwd78707fa_21d0_4f82_b3d1_a74ba6b8f727_mwa68f7af3_30af_4fa0_9290_9e005c875763=1.4;

	reaction_mwd78707fa_21d0_4f82_b3d1_a74ba6b8f727=reaction_mwd78707fa_21d0_4f82_b3d1_a74ba6b8f727_mwa68f7af3_30af_4fa0_9290_9e005c875763*x(7);

% Reaction: id = mw065ddcfd_fe93_45f6_9ad4_a5aa4529aad4, name = 8	% Local Parameter:   id =  mwa7160f91_3c68_402a_b3bd_acd8490c5d2d, name = k8
	reaction_mw065ddcfd_fe93_45f6_9ad4_a5aa4529aad4_mwa7160f91_3c68_402a_b3bd_acd8490c5d2d=0.56;
	% Local Parameter:   id =  mw2b6193d2_d588_46b7_8463_ce7bc30e1575, name = v8
	reaction_mw065ddcfd_fe93_45f6_9ad4_a5aa4529aad4_mw2b6193d2_d588_46b7_8463_ce7bc30e1575=1.3;

	reaction_mw065ddcfd_fe93_45f6_9ad4_a5aa4529aad4=reaction_mw065ddcfd_fe93_45f6_9ad4_a5aa4529aad4_mw2b6193d2_d588_46b7_8463_ce7bc30e1575*x(4)/(reaction_mw065ddcfd_fe93_45f6_9ad4_a5aa4529aad4_mwa7160f91_3c68_402a_b3bd_acd8490c5d2d+x(4));

% Reaction: id = mwc23385ec_434f_4f84_897b_fdb26e2fc8c9, name = 9	% Local Parameter:   id =  mw31c3bf7d_10cd_412a_9a76_0fb66845c18d, name = v9
	reaction_mwc23385ec_434f_4f84_897b_fdb26e2fc8c9_mw31c3bf7d_10cd_412a_9a76_0fb66845c18d=0.6;
	% Local Parameter:   id =  mw37ac6d2c_1be9_4998_a9c5_8761d3e0ba0f, name = k9
	reaction_mwc23385ec_434f_4f84_897b_fdb26e2fc8c9_mw37ac6d2c_1be9_4998_a9c5_8761d3e0ba0f=0.2;

	reaction_mwc23385ec_434f_4f84_897b_fdb26e2fc8c9=reaction_mwc23385ec_434f_4f84_897b_fdb26e2fc8c9_mw31c3bf7d_10cd_412a_9a76_0fb66845c18d*x(8)/(reaction_mwc23385ec_434f_4f84_897b_fdb26e2fc8c9_mw37ac6d2c_1be9_4998_a9c5_8761d3e0ba0f+x(8));

% Reaction: id = mw4dded01e_6e25_4d1e_aa54_62db26069cad, name = 10	% Local Parameter:   id =  mw8adff9cb_4657_413f_a2bd_100d4aa53076, name = v10
	reaction_mw4dded01e_6e25_4d1e_aa54_62db26069cad_mw8adff9cb_4657_413f_a2bd_100d4aa53076=0.98;
	% Local Parameter:   id =  mwc9cf88fa_c525_4372_80e1_c72b1cc758f1, name = k10
	reaction_mw4dded01e_6e25_4d1e_aa54_62db26069cad_mwc9cf88fa_c525_4372_80e1_c72b1cc758f1=0.15;

	reaction_mw4dded01e_6e25_4d1e_aa54_62db26069cad=reaction_mw4dded01e_6e25_4d1e_aa54_62db26069cad_mw8adff9cb_4657_413f_a2bd_100d4aa53076*x(9)/(reaction_mw4dded01e_6e25_4d1e_aa54_62db26069cad_mwc9cf88fa_c525_4372_80e1_c72b1cc758f1+x(9));

% Reaction: id = mwef3506d1_e875_48e5_8c0a_4ffebdcd0f32, name = 11	% Local Parameter:   id =  mwafa60fbe_9272_468d_94e7_b82b985f938c, name = k11
	reaction_mwef3506d1_e875_48e5_8c0a_4ffebdcd0f32_mwafa60fbe_9272_468d_94e7_b82b985f938c=0.61;

	reaction_mwef3506d1_e875_48e5_8c0a_4ffebdcd0f32=reaction_mwef3506d1_e875_48e5_8c0a_4ffebdcd0f32_mwafa60fbe_9272_468d_94e7_b82b985f938c*x(10);

% Reaction: id = mwc4a3a397_b069_48dc_9f2b_411ca1448d98, name = 12	% Local Parameter:   id =  mw1a1570ff_e786_473f_860b_2e7694acfcc2, name = v12
	reaction_mwc4a3a397_b069_48dc_9f2b_411ca1448d98_mw1a1570ff_e786_473f_860b_2e7694acfcc2=1.14;
	% Local Parameter:   id =  mwf88d190e_a505_4f7e_ac8d_e43997c74b9c, name = k12
	reaction_mwc4a3a397_b069_48dc_9f2b_411ca1448d98_mwf88d190e_a505_4f7e_ac8d_e43997c74b9c=0.62;

	reaction_mwc4a3a397_b069_48dc_9f2b_411ca1448d98=reaction_mwc4a3a397_b069_48dc_9f2b_411ca1448d98_mw1a1570ff_e786_473f_860b_2e7694acfcc2*x(36)/(reaction_mwc4a3a397_b069_48dc_9f2b_411ca1448d98_mwf88d190e_a505_4f7e_ac8d_e43997c74b9c+x(36));

% Reaction: id = mwa502f05a_b689_4ad9_855e_90ae77824ba0, name = 13	% Local Parameter:   id =  mw2b1ea101_d4a1_42e9_a70f_cb8026911ed5, name = k13
	reaction_mwa502f05a_b689_4ad9_855e_90ae77824ba0_mw2b1ea101_d4a1_42e9_a70f_cb8026911ed5=0.08;
	% Local Parameter:   id =  mw9d622ba3_b43b_4101_bef8_c964c2f158a0, name = v13
	reaction_mwa502f05a_b689_4ad9_855e_90ae77824ba0_mw9d622ba3_b43b_4101_bef8_c964c2f158a0=0.99;

	reaction_mwa502f05a_b689_4ad9_855e_90ae77824ba0=reaction_mwa502f05a_b689_4ad9_855e_90ae77824ba0_mw9d622ba3_b43b_4101_bef8_c964c2f158a0*x(3)/(reaction_mwa502f05a_b689_4ad9_855e_90ae77824ba0_mw2b1ea101_d4a1_42e9_a70f_cb8026911ed5+x(3));

% Reaction: id = mw01a7e271_19c9_40a0_bb62_505bad155195, name = 14	% Local Parameter:   id =  mw107b07de_5145_436d_9fd7_e4e2103106d7, name = v14
	reaction_mw01a7e271_19c9_40a0_bb62_505bad155195_mw107b07de_5145_436d_9fd7_e4e2103106d7=1.2;
	% Local Parameter:   id =  mwd51a525a_5fea_42c6_a8fd_40429ee627cf, name = k14
	reaction_mw01a7e271_19c9_40a0_bb62_505bad155195_mwd51a525a_5fea_42c6_a8fd_40429ee627cf=0.02;

	reaction_mw01a7e271_19c9_40a0_bb62_505bad155195=reaction_mw01a7e271_19c9_40a0_bb62_505bad155195_mw107b07de_5145_436d_9fd7_e4e2103106d7*x(11)/(reaction_mw01a7e271_19c9_40a0_bb62_505bad155195_mwd51a525a_5fea_42c6_a8fd_40429ee627cf+x(11));

% Reaction: id = mw7db85cdd_f1ac_4e07_9a35_809b7ab77aec, name = 15	% Local Parameter:   id =  mw286a7792_09c4_443e_98f4_a68f66a1f380, name = k15
	reaction_mw7db85cdd_f1ac_4e07_9a35_809b7ab77aec_mw286a7792_09c4_443e_98f4_a68f66a1f380=1.0;

	reaction_mw7db85cdd_f1ac_4e07_9a35_809b7ab77aec=reaction_mw7db85cdd_f1ac_4e07_9a35_809b7ab77aec_mw286a7792_09c4_443e_98f4_a68f66a1f380*x(12);

% Reaction: id = mw8917d625_0012_45c7_aede_8a528181d93d, name = 16	% Local Parameter:   id =  mw2a0659f9_eab8_4ada_8f82_23068b9986eb, name = v16
	reaction_mw8917d625_0012_45c7_aede_8a528181d93d_mw2a0659f9_eab8_4ada_8f82_23068b9986eb=1.5;
	% Local Parameter:   id =  mw13b39522_0751_4041_a78e_871cd5d81592, name = k16
	reaction_mw8917d625_0012_45c7_aede_8a528181d93d_mw13b39522_0751_4041_a78e_871cd5d81592=0.2;

	reaction_mw8917d625_0012_45c7_aede_8a528181d93d=reaction_mw8917d625_0012_45c7_aede_8a528181d93d_mw2a0659f9_eab8_4ada_8f82_23068b9986eb*x(38)/(reaction_mw8917d625_0012_45c7_aede_8a528181d93d_mw13b39522_0751_4041_a78e_871cd5d81592+x(38));

% Reaction: id = mwd67b18a5_bb79_4581_8afa_9bc34a4fe139, name = 17	% Local Parameter:   id =  mw6e048357_d06d_4522_bb79_a91c4f53bda7, name = k17
	reaction_mwd67b18a5_bb79_4581_8afa_9bc34a4fe139_mw6e048357_d06d_4522_bb79_a91c4f53bda7=0.6;

	reaction_mwd67b18a5_bb79_4581_8afa_9bc34a4fe139=reaction_mwd67b18a5_bb79_4581_8afa_9bc34a4fe139_mw6e048357_d06d_4522_bb79_a91c4f53bda7*x(13);

% Reaction: id = mwe28d9fcb_8170_4cbd_b3cc_564c18d65fcc, name = 18	% Local Parameter:   id =  mw4c0ee457_fb1c_48fa_a0b7_ff10d632d1e0, name = k18
	reaction_mwe28d9fcb_8170_4cbd_b3cc_564c18d65fcc_mw4c0ee457_fb1c_48fa_a0b7_ff10d632d1e0=2.0;

	reaction_mwe28d9fcb_8170_4cbd_b3cc_564c18d65fcc=reaction_mwe28d9fcb_8170_4cbd_b3cc_564c18d65fcc_mw4c0ee457_fb1c_48fa_a0b7_ff10d632d1e0*x(14);

% Reaction: id = mw215b36f5_a3a1_44bf_b976_c52cb6daddb8, name = 19	% Local Parameter:   id =  mw5aa11378_86b4_45f6_aea1_27208e47e559, name = k19
	reaction_mw215b36f5_a3a1_44bf_b976_c52cb6daddb8_mw5aa11378_86b4_45f6_aea1_27208e47e559=0.72;

	reaction_mw215b36f5_a3a1_44bf_b976_c52cb6daddb8=reaction_mw215b36f5_a3a1_44bf_b976_c52cb6daddb8_mw5aa11378_86b4_45f6_aea1_27208e47e559*x(15);

% Reaction: id = mw15c83962_bdf0_43f0_b5df_9ab227af0595, name = 20	% Local Parameter:   id =  mw36ee8f87_d06f_4d16_ac13_f4075b56c6f4, name = k20
	reaction_mw15c83962_bdf0_43f0_b5df_9ab227af0595_mw36ee8f87_d06f_4d16_ac13_f4075b56c6f4=0.55;

	reaction_mw15c83962_bdf0_43f0_b5df_9ab227af0595=reaction_mw15c83962_bdf0_43f0_b5df_9ab227af0595_mw36ee8f87_d06f_4d16_ac13_f4075b56c6f4*x(16);

% Reaction: id = mwa3c7ed09_4e90_417b_a301_2a0b4ac2e1d5, name = 21	% Local Parameter:   id =  mwf0b9efb6_f0e9_4704_b5b1_dec2a68c3321, name = k21
	reaction_mwa3c7ed09_4e90_417b_a301_2a0b4ac2e1d5_mwf0b9efb6_f0e9_4704_b5b1_dec2a68c3321=0.48;

	reaction_mwa3c7ed09_4e90_417b_a301_2a0b4ac2e1d5=reaction_mwa3c7ed09_4e90_417b_a301_2a0b4ac2e1d5_mwf0b9efb6_f0e9_4704_b5b1_dec2a68c3321*x(17);

% Reaction: id = mwb6a1c4c1_677e_41a0_8608_c2d1f9037a16, name = 22	% Local Parameter:   id =  mwf5a1613b_fb22_43b0_b95a_2c18ecbcedd8, name = v22
	reaction_mwb6a1c4c1_677e_41a0_8608_c2d1f9037a16_mwf5a1613b_fb22_43b0_b95a_2c18ecbcedd8=0.5;
	% Local Parameter:   id =  mw85a8c1da_f29f_4dcf_a515_bf9f9921240b, name = k22
	reaction_mwb6a1c4c1_677e_41a0_8608_c2d1f9037a16_mw85a8c1da_f29f_4dcf_a515_bf9f9921240b=0.2;

	reaction_mwb6a1c4c1_677e_41a0_8608_c2d1f9037a16=reaction_mwb6a1c4c1_677e_41a0_8608_c2d1f9037a16_mwf5a1613b_fb22_43b0_b95a_2c18ecbcedd8*x(18)/(reaction_mwb6a1c4c1_677e_41a0_8608_c2d1f9037a16_mw85a8c1da_f29f_4dcf_a515_bf9f9921240b+x(18));

% Reaction: id = mwa23e3682_2d67_49cf_913c_52aa41335371, name = 23	% Local Parameter:   id =  mw1c3fcb1f_0b90_46dd_b13a_2950fb9e18ae, name = v23
	reaction_mwa23e3682_2d67_49cf_913c_52aa41335371_mw1c3fcb1f_0b90_46dd_b13a_2950fb9e18ae=0.2;
	% Local Parameter:   id =  mw8a65d230_2abb_478d_ab8a_6719d972483d, name = k23
	reaction_mwa23e3682_2d67_49cf_913c_52aa41335371_mw8a65d230_2abb_478d_ab8a_6719d972483d=0.01;

	reaction_mwa23e3682_2d67_49cf_913c_52aa41335371=reaction_mwa23e3682_2d67_49cf_913c_52aa41335371_mw1c3fcb1f_0b90_46dd_b13a_2950fb9e18ae*x(18)/(reaction_mwa23e3682_2d67_49cf_913c_52aa41335371_mw8a65d230_2abb_478d_ab8a_6719d972483d+x(18));

% Reaction: id = mw49bb8edf_f533_4abe_b55e_468a1f3b296e, name = 24	% Local Parameter:   id =  mw5990b7f9_7d15_4306_9047_6237ecf066ca, name = v24
	reaction_mw49bb8edf_f533_4abe_b55e_468a1f3b296e_mw5990b7f9_7d15_4306_9047_6237ecf066ca=0.9;
	% Local Parameter:   id =  mwc29ba5b1_b0e7_4fa1_9e46_a4c0bdbdacc4, name = k24
	reaction_mw49bb8edf_f533_4abe_b55e_468a1f3b296e_mwc29ba5b1_b0e7_4fa1_9e46_a4c0bdbdacc4=0.2;

	reaction_mw49bb8edf_f533_4abe_b55e_468a1f3b296e=reaction_mw49bb8edf_f533_4abe_b55e_468a1f3b296e_mw5990b7f9_7d15_4306_9047_6237ecf066ca*x(19)/(reaction_mw49bb8edf_f533_4abe_b55e_468a1f3b296e_mwc29ba5b1_b0e7_4fa1_9e46_a4c0bdbdacc4+x(19));

% Reaction: id = mwe2722be2_db07_4c1d_879e_272e1518fb8e, name = 25	% Local Parameter:   id =  mwd2f6a3b7_5a74_4d77_b40c_1a6713b98554, name = k25
	reaction_mwe2722be2_db07_4c1d_879e_272e1518fb8e_mwd2f6a3b7_5a74_4d77_b40c_1a6713b98554=0.42;

	reaction_mwe2722be2_db07_4c1d_879e_272e1518fb8e=reaction_mwe2722be2_db07_4c1d_879e_272e1518fb8e_mwd2f6a3b7_5a74_4d77_b40c_1a6713b98554*x(20);

% Reaction: id = mw573abe13_d3cc_4f5a_a886_029e2d5da8df, name = 26	% Local Parameter:   id =  mw75017b10_387d_43e4_9fb1_fed7ce6bd490, name = v26
	reaction_mw573abe13_d3cc_4f5a_a886_029e2d5da8df_mw75017b10_387d_43e4_9fb1_fed7ce6bd490=0.3;
	% Local Parameter:   id =  mw251bb80a_5527_4b9c_9834_99556d4e824a, name = k26
	reaction_mw573abe13_d3cc_4f5a_a886_029e2d5da8df_mw251bb80a_5527_4b9c_9834_99556d4e824a=0.01;

	reaction_mw573abe13_d3cc_4f5a_a886_029e2d5da8df=reaction_mw573abe13_d3cc_4f5a_a886_029e2d5da8df_mw75017b10_387d_43e4_9fb1_fed7ce6bd490*x(18)/(reaction_mw573abe13_d3cc_4f5a_a886_029e2d5da8df_mw251bb80a_5527_4b9c_9834_99556d4e824a+x(18));

% Reaction: id = mw0649b87c_cb39_43b6_820a_0f21572f784e, name = 27	% Local Parameter:   id =  mw6ac279a2_23fe_4e48_a910_2a94ef61244c, name = v27
	reaction_mw0649b87c_cb39_43b6_820a_0f21572f784e_mw6ac279a2_23fe_4e48_a910_2a94ef61244c=0.1;
	% Local Parameter:   id =  mw0e1c63a9_8b8a_4ec7_9608_0059208d992f, name = k27
	reaction_mw0649b87c_cb39_43b6_820a_0f21572f784e_mw0e1c63a9_8b8a_4ec7_9608_0059208d992f=0.01;

	reaction_mw0649b87c_cb39_43b6_820a_0f21572f784e=reaction_mw0649b87c_cb39_43b6_820a_0f21572f784e_mw6ac279a2_23fe_4e48_a910_2a94ef61244c*x(18)/(reaction_mw0649b87c_cb39_43b6_820a_0f21572f784e_mw0e1c63a9_8b8a_4ec7_9608_0059208d992f+x(18));

% Reaction: id = mw17bf22e9_37fd_42b6_b648_d2ae38fbc805, name = 28	% Local Parameter:   id =  mwcad6928f_259d_4125_987e_977e0c40ef7d, name = v28
	reaction_mw17bf22e9_37fd_42b6_b648_d2ae38fbc805_mwcad6928f_259d_4125_987e_977e0c40ef7d=1.5;
	% Local Parameter:   id =  mw1670fb0f_e301_4b7a_93d4_35fe7f504e92, name = k28
	reaction_mw17bf22e9_37fd_42b6_b648_d2ae38fbc805_mw1670fb0f_e301_4b7a_93d4_35fe7f504e92=0.03;

	reaction_mw17bf22e9_37fd_42b6_b648_d2ae38fbc805=reaction_mw17bf22e9_37fd_42b6_b648_d2ae38fbc805_mwcad6928f_259d_4125_987e_977e0c40ef7d*x(21)/(reaction_mw17bf22e9_37fd_42b6_b648_d2ae38fbc805_mw1670fb0f_e301_4b7a_93d4_35fe7f504e92+x(21));

% Reaction: id = mw75054b4a_cf66_4bfe_bda0_44b88f715532, name = 29	% Local Parameter:   id =  mw1a4dcdaf_ff4b_41a9_ac1d_79fd2d942260, name = k29
	reaction_mw75054b4a_cf66_4bfe_bda0_44b88f715532_mw1a4dcdaf_ff4b_41a9_ac1d_79fd2d942260=0.6;

	reaction_mw75054b4a_cf66_4bfe_bda0_44b88f715532=reaction_mw75054b4a_cf66_4bfe_bda0_44b88f715532_mw1a4dcdaf_ff4b_41a9_ac1d_79fd2d942260*x(22);

% Reaction: id = mw4e1795dc_c8de_4708_ba0d_52d69fae724e, name = 30	% Local Parameter:   id =  mwb3751ef8_2226_4ec3_9ac9_f92f5771a1a4, name = v30
	reaction_mw4e1795dc_c8de_4708_ba0d_52d69fae724e_mwb3751ef8_2226_4ec3_9ac9_f92f5771a1a4=2.0E-4;
	% Local Parameter:   id =  mw244e346b_4442_45db_864e_0442ceca94d1, name = k30
	reaction_mw4e1795dc_c8de_4708_ba0d_52d69fae724e_mw244e346b_4442_45db_864e_0442ceca94d1=0.5;

	reaction_mw4e1795dc_c8de_4708_ba0d_52d69fae724e=reaction_mw4e1795dc_c8de_4708_ba0d_52d69fae724e_mwb3751ef8_2226_4ec3_9ac9_f92f5771a1a4*x(23)/(reaction_mw4e1795dc_c8de_4708_ba0d_52d69fae724e_mw244e346b_4442_45db_864e_0442ceca94d1+x(23));

% Reaction: id = mw51210768_0597_4bf6_a013_49896f03c73d, name = 31	% Local Parameter:   id =  mw18e075a4_dde4_42be_9315_e0e90d461b99, name = v31
	reaction_mw51210768_0597_4bf6_a013_49896f03c73d_mw18e075a4_dde4_42be_9315_e0e90d461b99=0.6;
	% Local Parameter:   id =  mw6d4dc2a5_6fe8_4d80_93f4_b9f438b6eb0e, name = k31
	reaction_mw51210768_0597_4bf6_a013_49896f03c73d_mw6d4dc2a5_6fe8_4d80_93f4_b9f438b6eb0e=1.0;

	reaction_mw51210768_0597_4bf6_a013_49896f03c73d=reaction_mw51210768_0597_4bf6_a013_49896f03c73d_mw18e075a4_dde4_42be_9315_e0e90d461b99*x(24)/(reaction_mw51210768_0597_4bf6_a013_49896f03c73d_mw6d4dc2a5_6fe8_4d80_93f4_b9f438b6eb0e+x(24));

% Reaction: id = mw05368c46_8a41_4609_b904_25219691464b, name = 32	% Local Parameter:   id =  mweaee0b65_7c40_4c9e_bd70_c5454eeb41fa, name = v32
	reaction_mw05368c46_8a41_4609_b904_25219691464b_mweaee0b65_7c40_4c9e_bd70_c5454eeb41fa=0.9;
	% Local Parameter:   id =  mw84020ddc_e419_4aa4_ab12_e84989ad461d, name = k32
	reaction_mw05368c46_8a41_4609_b904_25219691464b_mw84020ddc_e419_4aa4_ab12_e84989ad461d=0.3;

	reaction_mw05368c46_8a41_4609_b904_25219691464b=reaction_mw05368c46_8a41_4609_b904_25219691464b_mweaee0b65_7c40_4c9e_bd70_c5454eeb41fa*x(25)/(reaction_mw05368c46_8a41_4609_b904_25219691464b_mw84020ddc_e419_4aa4_ab12_e84989ad461d+x(25));

% Reaction: id = mwb86f53d9_af3e_499e_9c41_7aaf353919e0, name = 33	% Local Parameter:   id =  mw9d566811_669e_4b95_8452_c4853f54a2de, name = k33
	reaction_mwb86f53d9_af3e_499e_9c41_7aaf353919e0_mw9d566811_669e_4b95_8452_c4853f54a2de=0.35;

	reaction_mwb86f53d9_af3e_499e_9c41_7aaf353919e0=reaction_mwb86f53d9_af3e_499e_9c41_7aaf353919e0_mw9d566811_669e_4b95_8452_c4853f54a2de*x(26);

% Reaction: id = mw1a0f986a_5f18_4312_bf3a_9e79ae4e7f36, name = 34	% Local Parameter:   id =  mw99befd62_975f_49e1_bfaf_22a482ce44ea, name = v34
	reaction_mw1a0f986a_5f18_4312_bf3a_9e79ae4e7f36_mw99befd62_975f_49e1_bfaf_22a482ce44ea=1.2;
	% Local Parameter:   id =  mwb38e4258_82d9_4b48_8059_eccf9fd6f8e3, name = k34
	reaction_mw1a0f986a_5f18_4312_bf3a_9e79ae4e7f36_mwb38e4258_82d9_4b48_8059_eccf9fd6f8e3=0.2;

	reaction_mw1a0f986a_5f18_4312_bf3a_9e79ae4e7f36=reaction_mw1a0f986a_5f18_4312_bf3a_9e79ae4e7f36_mw99befd62_975f_49e1_bfaf_22a482ce44ea*x(27)/(reaction_mw1a0f986a_5f18_4312_bf3a_9e79ae4e7f36_mwb38e4258_82d9_4b48_8059_eccf9fd6f8e3+x(27));

% Reaction: id = mw17b927e1_56f3_4e65_a482_b8f190af70aa, name = 35	% Local Parameter:   id =  mw78df1f4c_2a96_4d8f_a009_c19ba0ec406a, name = v35
	reaction_mw17b927e1_56f3_4e65_a482_b8f190af70aa_mw78df1f4c_2a96_4d8f_a009_c19ba0ec406a=0.2;
	% Local Parameter:   id =  mw6a74caa7_9d44_449b_854b_c1678b36ac1d, name = k35
	reaction_mw17b927e1_56f3_4e65_a482_b8f190af70aa_mw6a74caa7_9d44_449b_854b_c1678b36ac1d=0.8;

	reaction_mw17b927e1_56f3_4e65_a482_b8f190af70aa=reaction_mw17b927e1_56f3_4e65_a482_b8f190af70aa_mw78df1f4c_2a96_4d8f_a009_c19ba0ec406a*x(23)/(reaction_mw17b927e1_56f3_4e65_a482_b8f190af70aa_mw6a74caa7_9d44_449b_854b_c1678b36ac1d+x(23));

% Reaction: id = mw0549a0ba_63b4_4a0e_8506_1c379b878280, name = 36	% Local Parameter:   id =  mw3690266b_c916_4ba1_a98a_b589dc75c1cd, name = v36
	reaction_mw0549a0ba_63b4_4a0e_8506_1c379b878280_mw3690266b_c916_4ba1_a98a_b589dc75c1cd=0.8;
	% Local Parameter:   id =  mwb69d510c_dcde_4bfb_9e4a_89954f6a7bf5, name = k36
	reaction_mw0549a0ba_63b4_4a0e_8506_1c379b878280_mwb69d510c_dcde_4bfb_9e4a_89954f6a7bf5=1.5;

	reaction_mw0549a0ba_63b4_4a0e_8506_1c379b878280=reaction_mw0549a0ba_63b4_4a0e_8506_1c379b878280_mw3690266b_c916_4ba1_a98a_b589dc75c1cd*x(28)/(reaction_mw0549a0ba_63b4_4a0e_8506_1c379b878280_mwb69d510c_dcde_4bfb_9e4a_89954f6a7bf5+x(28));

% Reaction: id = mw7ec21bdc_6e00_410d_8524_046f820d0921, name = 37	% Local Parameter:   id =  mwb336e12c_0e62_4fff_94c0_2771b1a19065, name = k37
	reaction_mw7ec21bdc_6e00_410d_8524_046f820d0921_mwb336e12c_0e62_4fff_94c0_2771b1a19065=0.2;

	reaction_mw7ec21bdc_6e00_410d_8524_046f820d0921=reaction_mw7ec21bdc_6e00_410d_8524_046f820d0921_mwb336e12c_0e62_4fff_94c0_2771b1a19065*x(29);

% Reaction: id = mwbc35988a_c061_4dff_a2b0_09fa8f45d873, name = 38	% Local Parameter:   id =  mw661c7759_2bd3_4c93_bb0a_823bb37b9820, name = k38
	reaction_mwbc35988a_c061_4dff_a2b0_09fa8f45d873_mw661c7759_2bd3_4c93_bb0a_823bb37b9820=0.299;

	reaction_mwbc35988a_c061_4dff_a2b0_09fa8f45d873=reaction_mwbc35988a_c061_4dff_a2b0_09fa8f45d873_mw661c7759_2bd3_4c93_bb0a_823bb37b9820*x(23);

% Reaction: id = mwffb70cc8_3371_416f_b374_c518884ba240, name = 39	% Local Parameter:   id =  mw883852ed_c433_4dec_baa0_386309fc085c, name = v39
	reaction_mwffb70cc8_3371_416f_b374_c518884ba240_mw883852ed_c433_4dec_baa0_386309fc085c=0.24;
	% Local Parameter:   id =  mw6069097b_159a_4bcf_a591_e496d06cf0a9, name = k39
	reaction_mwffb70cc8_3371_416f_b374_c518884ba240_mw6069097b_159a_4bcf_a591_e496d06cf0a9=1.2;

	reaction_mwffb70cc8_3371_416f_b374_c518884ba240=reaction_mwffb70cc8_3371_416f_b374_c518884ba240_mw883852ed_c433_4dec_baa0_386309fc085c*x(30)/(reaction_mwffb70cc8_3371_416f_b374_c518884ba240_mw6069097b_159a_4bcf_a591_e496d06cf0a9+x(30));

% Reaction: id = mwcf26ace1_325c_4287_81d4_382e2f2beb1c, name = 40	% Local Parameter:   id =  mw78a1e67e_883c_497f_86a6_f85da783010e, name = v40
	reaction_mwcf26ace1_325c_4287_81d4_382e2f2beb1c_mw78a1e67e_883c_497f_86a6_f85da783010e=0.2;
	% Local Parameter:   id =  mw5d6cf9c6_4dc0_4fe6_9afc_da397fe896b2, name = k40
	reaction_mwcf26ace1_325c_4287_81d4_382e2f2beb1c_mw5d6cf9c6_4dc0_4fe6_9afc_da397fe896b2=1.5;

	reaction_mwcf26ace1_325c_4287_81d4_382e2f2beb1c=reaction_mwcf26ace1_325c_4287_81d4_382e2f2beb1c_mw78a1e67e_883c_497f_86a6_f85da783010e*x(31)/(reaction_mwcf26ace1_325c_4287_81d4_382e2f2beb1c_mw5d6cf9c6_4dc0_4fe6_9afc_da397fe896b2+x(31));

% Reaction: id = mwa52ff158_9e98_454a_a98e_3bc52e4aa39f, name = 41	% Local Parameter:   id =  mw26de6022_cc14_484b_a172_db4173a1ccaa, name = v41
	reaction_mwa52ff158_9e98_454a_a98e_3bc52e4aa39f_mw26de6022_cc14_484b_a172_db4173a1ccaa=0.7;
	% Local Parameter:   id =  mw7e75e47c_6d88_49fb_a9c4_9154f12cc4d5, name = k41
	reaction_mwa52ff158_9e98_454a_a98e_3bc52e4aa39f_mw7e75e47c_6d88_49fb_a9c4_9154f12cc4d5=1.5;

	reaction_mwa52ff158_9e98_454a_a98e_3bc52e4aa39f=reaction_mwa52ff158_9e98_454a_a98e_3bc52e4aa39f_mw26de6022_cc14_484b_a172_db4173a1ccaa*x(32)/(reaction_mwa52ff158_9e98_454a_a98e_3bc52e4aa39f_mw7e75e47c_6d88_49fb_a9c4_9154f12cc4d5+x(32));

% Reaction: id = mw427812f2_a2ec_476c_8359_96749d8910f4, name = 42	% Local Parameter:   id =  mw2f1f65d1_5633_4625_b2b7_0eb267eac293, name = v42
	reaction_mw427812f2_a2ec_476c_8359_96749d8910f4_mw2f1f65d1_5633_4625_b2b7_0eb267eac293=0.4;
	% Local Parameter:   id =  mw0b0869f4_26bb_4d13_9124_b2c1b28e3ae1, name = k42
	reaction_mw427812f2_a2ec_476c_8359_96749d8910f4_mw0b0869f4_26bb_4d13_9124_b2c1b28e3ae1=1.5;

	reaction_mw427812f2_a2ec_476c_8359_96749d8910f4=reaction_mw427812f2_a2ec_476c_8359_96749d8910f4_mw2f1f65d1_5633_4625_b2b7_0eb267eac293*x(31)/(reaction_mw427812f2_a2ec_476c_8359_96749d8910f4_mw0b0869f4_26bb_4d13_9124_b2c1b28e3ae1+x(31));

% Reaction: id = mw72aabd27_658a_45ef_87b2_cec59e2a548a, name = 43	% Local Parameter:   id =  mw234b354b_eb7b_4af6_a678_9339f6b5eb8d, name = v43
	reaction_mw72aabd27_658a_45ef_87b2_cec59e2a548a_mw234b354b_eb7b_4af6_a678_9339f6b5eb8d=0.01;
	% Local Parameter:   id =  mw18baeb4d_ad18_4c22_95c4_2ada0f618c65, name = k43
	reaction_mw72aabd27_658a_45ef_87b2_cec59e2a548a_mw18baeb4d_ad18_4c22_95c4_2ada0f618c65=1.8;

	reaction_mw72aabd27_658a_45ef_87b2_cec59e2a548a=reaction_mw72aabd27_658a_45ef_87b2_cec59e2a548a_mw234b354b_eb7b_4af6_a678_9339f6b5eb8d*x(23)/(reaction_mw72aabd27_658a_45ef_87b2_cec59e2a548a_mw18baeb4d_ad18_4c22_95c4_2ada0f618c65+x(23));

% Reaction: id = mw1498886c_3fb6_44f5_ae32_7a8948030948, name = 44	% Local Parameter:   id =  mw66285193_607e_42b6_b726_c2409a2ce563, name = v44
	reaction_mw1498886c_3fb6_44f5_ae32_7a8948030948_mw66285193_607e_42b6_b726_c2409a2ce563=1.0;
	% Local Parameter:   id =  mwa4c28075_8524_4874_aee5_c38231bfbaae, name = k44
	reaction_mw1498886c_3fb6_44f5_ae32_7a8948030948_mwa4c28075_8524_4874_aee5_c38231bfbaae=1.5;

	reaction_mw1498886c_3fb6_44f5_ae32_7a8948030948=reaction_mw1498886c_3fb6_44f5_ae32_7a8948030948_mw66285193_607e_42b6_b726_c2409a2ce563*x(33)/(reaction_mw1498886c_3fb6_44f5_ae32_7a8948030948_mwa4c28075_8524_4874_aee5_c38231bfbaae+x(33));

% Reaction: id = mwdcd61085_a433_4362_a836_938c7ae43ded, name = 45	% Local Parameter:   id =  mw9a480703_d4bb_4de8_8975_13a18205ce53, name = k45
	reaction_mwdcd61085_a433_4362_a836_938c7ae43ded_mw9a480703_d4bb_4de8_8975_13a18205ce53=0.19;

	reaction_mwdcd61085_a433_4362_a836_938c7ae43ded=reaction_mwdcd61085_a433_4362_a836_938c7ae43ded_mw9a480703_d4bb_4de8_8975_13a18205ce53*x(34);

% Reaction: id = mwe820c3d2_bbc1_4211_9818_1e515a583b8a, name = 46	% Local Parameter:   id =  mwbad3f510_fbca_4aa7_a4c2_5c1b47297802, name = v46
	reaction_mwe820c3d2_bbc1_4211_9818_1e515a583b8a_mwbad3f510_fbca_4aa7_a4c2_5c1b47297802=2.35;
	% Local Parameter:   id =  mw4d5fd70d_8603_4056_adfa_5af26d657455, name = n46
	reaction_mwe820c3d2_bbc1_4211_9818_1e515a583b8a_mw4d5fd70d_8603_4056_adfa_5af26d657455=1.0;
	% Local Parameter:   id =  mw2fa0d3fe_4e99_49d2_a339_089198589a1e, name = kp47
	reaction_mwe820c3d2_bbc1_4211_9818_1e515a583b8a_mw2fa0d3fe_4e99_49d2_a339_089198589a1e=0.43;

	reaction_mwe820c3d2_bbc1_4211_9818_1e515a583b8a=reaction_mwe820c3d2_bbc1_4211_9818_1e515a583b8a_mwbad3f510_fbca_4aa7_a4c2_5c1b47297802*x(35)^reaction_mwe820c3d2_bbc1_4211_9818_1e515a583b8a_mw4d5fd70d_8603_4056_adfa_5af26d657455/(reaction_mwe820c3d2_bbc1_4211_9818_1e515a583b8a_mw2fa0d3fe_4e99_49d2_a339_089198589a1e+x(35)^reaction_mwe820c3d2_bbc1_4211_9818_1e515a583b8a_mw4d5fd70d_8603_4056_adfa_5af26d657455);

% Reaction: id = mwd95fbca0_6234_4c19_81ea_5e74b558e2f1, name = 47	% Local Parameter:   id =  mw2b132eeb_ce2a_4a53_8c22_c102ebd2edb9, name = k47
	reaction_mwd95fbca0_6234_4c19_81ea_5e74b558e2f1_mw2b132eeb_ce2a_4a53_8c22_c102ebd2edb9=1.1;

	reaction_mwd95fbca0_6234_4c19_81ea_5e74b558e2f1=reaction_mwd95fbca0_6234_4c19_81ea_5e74b558e2f1_mw2b132eeb_ce2a_4a53_8c22_c102ebd2edb9*x(43);

% Reaction: id = mw36e7aae0_ea29_437f_a9c0_57981e85b29e, name = 48	% Local Parameter:   id =  mwdeab2870_570e_4b2c_b73d_84c1ad8c2262, name = v48
	reaction_mw36e7aae0_ea29_437f_a9c0_57981e85b29e_mwdeab2870_570e_4b2c_b73d_84c1ad8c2262=1.0;
	% Local Parameter:   id =  mw4945db3d_e20c_4870_b96b_6fb98c4b12f6, name = k48
	reaction_mw36e7aae0_ea29_437f_a9c0_57981e85b29e_mw4945db3d_e20c_4870_b96b_6fb98c4b12f6=1.0;

	reaction_mw36e7aae0_ea29_437f_a9c0_57981e85b29e=reaction_mw36e7aae0_ea29_437f_a9c0_57981e85b29e_mwdeab2870_570e_4b2c_b73d_84c1ad8c2262*x(27)/(reaction_mw36e7aae0_ea29_437f_a9c0_57981e85b29e_mw4945db3d_e20c_4870_b96b_6fb98c4b12f6+x(27));

% Reaction: id = mwe6aec30e_5e5f_4427_bda2_9c7edc4d5547, name = 49	% Local Parameter:   id =  mw0f1ee85e_95a3_42c7_94ae_71f36061aaf0, name = v49
	reaction_mwe6aec30e_5e5f_4427_bda2_9c7edc4d5547_mw0f1ee85e_95a3_42c7_94ae_71f36061aaf0=1.0;
	% Local Parameter:   id =  mw933afd80_4eff_4c6c_967b_d15b2244e55d, name = k49
	reaction_mwe6aec30e_5e5f_4427_bda2_9c7edc4d5547_mw933afd80_4eff_4c6c_967b_d15b2244e55d=1.0;

	reaction_mwe6aec30e_5e5f_4427_bda2_9c7edc4d5547=reaction_mwe6aec30e_5e5f_4427_bda2_9c7edc4d5547_mw0f1ee85e_95a3_42c7_94ae_71f36061aaf0*x(27)/(reaction_mwe6aec30e_5e5f_4427_bda2_9c7edc4d5547_mw933afd80_4eff_4c6c_967b_d15b2244e55d+x(27));

	xdot=zeros(43,1);
	
% Species:   id = mw4d2e70a7_f499_461d_ae18_bc53b365b091, name = TNF, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_mw56c6d2a8_5d66_4b27_841a_662ac710fac3) + ( 1.0 * reaction_mwd95fbca0_6234_4c19_81ea_5e74b558e2f1);
	
% Species:   id = mw8cc67de0_64e6_428f_ab09_4c2825cc172c, name = TNFR1, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_mw56c6d2a8_5d66_4b27_841a_662ac710fac3) + (-1.0 * reaction_mw2055093c_9534_4ee3_999e_dc4d7e0246cf);
	
% Species:   id = mw6ee00a71_ab68_454b_b1cd_60c1ebd19cfa, name = TRADD_TRAF2_RIP, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_mw2055093c_9534_4ee3_999e_dc4d7e0246cf) + (-1.0 * reaction_mw8d01ca0a_dc27_461f_a854_cede0c0697dd) + (-1.0 * reaction_mwc021dbe5_8831_4239_b280_9dcfb2ce1101) + (-1.0 * reaction_mwa502f05a_b689_4ad9_855e_90ae77824ba0);
	
% Species:   id = mw2dc73059_a841_48d5_b4bd_3ac24d94c42e, name = IkB, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_mwc064fbe4_1c49_4130_b601_efefacd114e4) + (-1.0 * reaction_mw065ddcfd_fe93_45f6_9ad4_a5aa4529aad4);
	
% Species:   id = mw136c8391_14f4_4a28_83a3_35cc74a2e040, name = NIK, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_mw8d01ca0a_dc27_461f_a854_cede0c0697dd) + (-1.0 * reaction_mwc064fbe4_1c49_4130_b601_efefacd114e4) + ( 1.0 * reaction_mwb6a1c4c1_677e_41a0_8608_c2d1f9037a16);
	
% Species:   id = mw7204ab72_2ee5_4b92_b420_2583dacc4343, name = IkK_NFkB, affected by kineticLaw
	xdot(6) = (-1.0 * reaction_mw57e0090c_072b_4494_bdf6_a005150e0f42) + ( 1.0 * reaction_mw065ddcfd_fe93_45f6_9ad4_a5aa4529aad4) + ( 1.0 * reaction_mw1a0f986a_5f18_4312_bf3a_9e79ae4e7f36);
	
% Species:   id = mw6939cefe_e7ff_4a3f_b45b_a9234d1b5573, name = NFkB, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_mw57e0090c_072b_4494_bdf6_a005150e0f42) + (-1.0 * reaction_mwd78707fa_21d0_4f82_b3d1_a74ba6b8f727);
	
% Species:   id = mwf8cfed1b_6fcf_4cba_bc30_b44490814a7a, name = MEKK1, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_mwc021dbe5_8831_4239_b280_9dcfb2ce1101) + (-1.0 * reaction_mwc23385ec_434f_4f84_897b_fdb26e2fc8c9);
	
% Species:   id = mw702be69a_eb4f_425e_87c7_ef7d85254536, name = MKK4/7, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_mwc23385ec_434f_4f84_897b_fdb26e2fc8c9) + (-1.0 * reaction_mw4dded01e_6e25_4d1e_aa54_62db26069cad) + ( 1.0 * reaction_mw573abe13_d3cc_4f5a_a886_029e2d5da8df) + ( 1.0 * reaction_mw427812f2_a2ec_476c_8359_96749d8910f4);
	
% Species:   id = mwbee11634_55df_4a3f_998a_634dfaf46fd7, name = JNK, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_mw4dded01e_6e25_4d1e_aa54_62db26069cad) + (-1.0 * reaction_mwef3506d1_e875_48e5_8c0a_4ffebdcd0f32);
	
% Species:   id = mw805b55df_cc91_4227_bb52_930e961b682c, name = ASK, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_mwa502f05a_b689_4ad9_855e_90ae77824ba0) + (-1.0 * reaction_mw01a7e271_19c9_40a0_bb62_505bad155195);
	
% Species:   id = mwb71eb539_dca6_47ab_8df5_430d84af0bfb, name = p38, affected by kineticLaw
	xdot(12) = (-1.0 * reaction_mw7db85cdd_f1ac_4e07_9a35_809b7ab77aec) + ( 1.0 * reaction_mw17bf22e9_37fd_42b6_b648_d2ae38fbc805);
	
% Species:   id = mwa5d6f7e4_dc4d_4931_91ce_1e78e7b2f195, name = LPG, affected by kineticLaw
	xdot(13) = (-1.0 * reaction_mwd67b18a5_bb79_4581_8afa_9bc34a4fe139);
	
% Species:   id = mw4079e13c_446e_4aa2_9ec4_233583833d02, name = CD14-TLR, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_mwd67b18a5_bb79_4581_8afa_9bc34a4fe139) + (-1.0 * reaction_mwe28d9fcb_8170_4cbd_b3cc_564c18d65fcc);
	
% Species:   id = mwe5fade7d_1715_4bb1_843f_923da8ecddf1, name = MyD88, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_mwe28d9fcb_8170_4cbd_b3cc_564c18d65fcc) + (-1.0 * reaction_mw215b36f5_a3a1_44bf_b976_c52cb6daddb8);
	
% Species:   id = mw262497ec_3d54_4367_bfe3_76a9c57497cb, name = IRAK1/4, affected by kineticLaw
	xdot(16) = ( 1.0 * reaction_mw215b36f5_a3a1_44bf_b976_c52cb6daddb8) + (-1.0 * reaction_mw15c83962_bdf0_43f0_b5df_9ab227af0595);
	
% Species:   id = mw8bffd47e_34de_4738_81bf_7a39a40b3ae8, name = TRAF6, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_mw15c83962_bdf0_43f0_b5df_9ab227af0595) + (-1.0 * reaction_mwa3c7ed09_4e90_417b_a301_2a0b4ac2e1d5);
	
% Species:   id = mw308b75ec_28b7_4d97_92e2_51a8ce04116a, name = TAB2_TAK1_TAB1, affected by kineticLaw
	xdot(18) = ( 1.0 * reaction_mwa3c7ed09_4e90_417b_a301_2a0b4ac2e1d5) + (-1.0 * reaction_mwb6a1c4c1_677e_41a0_8608_c2d1f9037a16) + (-1.0 * reaction_mwa23e3682_2d67_49cf_913c_52aa41335371) + (-1.0 * reaction_mw573abe13_d3cc_4f5a_a886_029e2d5da8df) + (-1.0 * reaction_mw0649b87c_cb39_43b6_820a_0f21572f784e);
	
% Species:   id = mw75377e12_e23d_44b3_9823_5fac9b23edc8, name = MKK1/2, affected by kineticLaw
	xdot(19) = ( 1.0 * reaction_mwa23e3682_2d67_49cf_913c_52aa41335371) + (-1.0 * reaction_mw49bb8edf_f533_4abe_b55e_468a1f3b296e) + ( 1.0 * reaction_mwa52ff158_9e98_454a_a98e_3bc52e4aa39f);
	
% Species:   id = mw67d0cf04_d6a7_4725_a869_098a96a3350d, name = ERK1/2, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_mw49bb8edf_f533_4abe_b55e_468a1f3b296e) + (-1.0 * reaction_mwe2722be2_db07_4c1d_879e_272e1518fb8e);
	
% Species:   id = mw46ee629a_dd6b_4163_9da1_2614bb1d74bc, name = MKK3/6, affected by kineticLaw
	xdot(21) = ( 1.0 * reaction_mw01a7e271_19c9_40a0_bb62_505bad155195) + ( 1.0 * reaction_mw0649b87c_cb39_43b6_820a_0f21572f784e) + (-1.0 * reaction_mw17bf22e9_37fd_42b6_b648_d2ae38fbc805);
	
% Species:   id = mw0be0d193_fd6b_4824_8928_dbade8b5c99c, name = EGF, affected by kineticLaw
	xdot(22) = (-1.0 * reaction_mw75054b4a_cf66_4bfe_bda0_44b88f715532);
	
% Species:   id = mw280197c8_98de_43f0_bf01_0f332a1ab689, name = EGFR, affected by kineticLaw
	xdot(23) = ( 1.0 * reaction_mw75054b4a_cf66_4bfe_bda0_44b88f715532) + (-1.0 * reaction_mw4e1795dc_c8de_4708_ba0d_52d69fae724e) + (-1.0 * reaction_mw17b927e1_56f3_4e65_a482_b8f190af70aa) + (-1.0 * reaction_mwbc35988a_c061_4dff_a2b0_09fa8f45d873) + (-1.0 * reaction_mw72aabd27_658a_45ef_87b2_cec59e2a548a);
	
% Species:   id = mw9a5baf6d_0285_4ad3_9499_059c553d9cf6, name = PLC gamma, affected by kineticLaw
	xdot(24) = ( 1.0 * reaction_mw4e1795dc_c8de_4708_ba0d_52d69fae724e) + (-1.0 * reaction_mw51210768_0597_4bf6_a013_49896f03c73d);
	
% Species:   id = mw05469f51_73f7_4ba1_9f1a_bce5fea143c2, name = PIP2, affected by kineticLaw
	xdot(25) = ( 1.0 * reaction_mw51210768_0597_4bf6_a013_49896f03c73d) + (-1.0 * reaction_mw05368c46_8a41_4609_b904_25219691464b);
	
% Species:   id = mwf20834c8_a115_460b_859c_4e3ca1ffd953, name = DAG, affected by kineticLaw
	xdot(26) = ( 1.0 * reaction_mw05368c46_8a41_4609_b904_25219691464b) + (-1.0 * reaction_mwb86f53d9_af3e_499e_9c41_7aaf353919e0);
	
% Species:   id = mwb4633da9_f9d6_4ad8_a7e5_da075c830e17, name = PKC, affected by kineticLaw
	xdot(27) = ( 1.0 * reaction_mwb86f53d9_af3e_499e_9c41_7aaf353919e0) + (-1.0 * reaction_mw1a0f986a_5f18_4312_bf3a_9e79ae4e7f36) + (-1.0 * reaction_mw36e7aae0_ea29_437f_a9c0_57981e85b29e) + (-1.0 * reaction_mwe6aec30e_5e5f_4427_bda2_9c7edc4d5547);
	
% Species:   id = mw9bb804c9_3e4e_4684_9f6b_4e6f6706a58e, name = PI3K, affected by kineticLaw
	xdot(28) = ( 1.0 * reaction_mw17b927e1_56f3_4e65_a482_b8f190af70aa) + (-1.0 * reaction_mw0549a0ba_63b4_4a0e_8506_1c379b878280);
	
% Species:   id = mw64453fc5_a275_4bba_84f0_2af249b31514, name = Akt, affected by kineticLaw
	xdot(29) = ( 1.0 * reaction_mw0549a0ba_63b4_4a0e_8506_1c379b878280) + (-1.0 * reaction_mw7ec21bdc_6e00_410d_8524_046f820d0921);
	
% Species:   id = mw323a57b4_8e59_4116_9ad1_fe547b89c858, name = Shc/Grb2/Sos1, affected by kineticLaw
	xdot(30) = ( 1.0 * reaction_mwbc35988a_c061_4dff_a2b0_09fa8f45d873) + (-1.0 * reaction_mwffb70cc8_3371_416f_b374_c518884ba240);
	
% Species:   id = mw173d8585_5817_4b4c_932a_cf7d673680ac, name = Ras, affected by kineticLaw
	xdot(31) = ( 1.0 * reaction_mwffb70cc8_3371_416f_b374_c518884ba240) + (-1.0 * reaction_mwcf26ace1_325c_4287_81d4_382e2f2beb1c) + (-1.0 * reaction_mw427812f2_a2ec_476c_8359_96749d8910f4) + ( 1.0 * reaction_mw36e7aae0_ea29_437f_a9c0_57981e85b29e);
	
% Species:   id = mw32c21c39_237b_4d4c_bb5d_117cb30ce68a, name = Raf, affected by kineticLaw
	xdot(32) = ( 1.0 * reaction_mwcf26ace1_325c_4287_81d4_382e2f2beb1c) + (-1.0 * reaction_mwa52ff158_9e98_454a_a98e_3bc52e4aa39f) + ( 1.0 * reaction_mwe6aec30e_5e5f_4427_bda2_9c7edc4d5547);
	
% Species:   id = mw3832f277_aef2_4f1d_87af_abc2a3c1a7d5, name = JAK, affected by kineticLaw
	xdot(33) = ( 1.0 * reaction_mw72aabd27_658a_45ef_87b2_cec59e2a548a) + (-1.0 * reaction_mw1498886c_3fb6_44f5_ae32_7a8948030948);
	
% Species:   id = mw13651143_feb5_49a5_adab_9105c2647446, name = STAT1/3, affected by kineticLaw
	xdot(34) = ( 1.0 * reaction_mw1498886c_3fb6_44f5_ae32_7a8948030948) + (-1.0 * reaction_mwdcd61085_a433_4362_a836_938c7ae43ded);
	
% Species:   id = mw8a358487_b18b_42df_a646_cd75eb5bfcc2, name = NFkB, affected by kineticLaw
	xdot(35) = ( 1.0 * reaction_mwd78707fa_21d0_4f82_b3d1_a74ba6b8f727) + (-1.0 * reaction_mwe820c3d2_bbc1_4211_9818_1e515a583b8a);
	
% Species:   id = mwd9e7a9b9_6f1b_4bbc_afa5_6cb192b62ce8, name = JNK, affected by kineticLaw
	xdot(36) = ( 1.0 * reaction_mwef3506d1_e875_48e5_8c0a_4ffebdcd0f32) + (-1.0 * reaction_mwc4a3a397_b069_48dc_9f2b_411ca1448d98);
	
% Species:   id = mwfed5a135_c91b_4d20_91b2_3a61723544dd, name = cjun, affected by kineticLaw
	xdot(37) = ( 1.0 * reaction_mwc4a3a397_b069_48dc_9f2b_411ca1448d98);
	
% Species:   id = mw97345a67_a8e8_42aa_8e62_69e9d2b6cf45, name = p38, affected by kineticLaw
	xdot(38) = ( 1.0 * reaction_mw7db85cdd_f1ac_4e07_9a35_809b7ab77aec) + (-1.0 * reaction_mw8917d625_0012_45c7_aede_8a528181d93d);
	
% Species:   id = mw5c67812a_17f5_43cf_8acb_9bde272c1911, name = cfos, affected by kineticLaw
	xdot(39) = ( 1.0 * reaction_mw8917d625_0012_45c7_aede_8a528181d93d);
	
% Species:   id = mw1f12e5bc_ebbc_4347_b6b7_5cd1740ac69a, name = ERK1/2, affected by kineticLaw
	xdot(40) = ( 1.0 * reaction_mwe2722be2_db07_4c1d_879e_272e1518fb8e);
	
% Species:   id = mwda4716f1_ae00_4149_aec3_12531380425a, name = Akt, affected by kineticLaw
	xdot(41) = ( 1.0 * reaction_mw7ec21bdc_6e00_410d_8524_046f820d0921);
	
% Species:   id = mw17ae9adc_54ab_407b_a34d_8413a3a10cc6, name = STAT1/3, affected by kineticLaw
	xdot(42) = ( 1.0 * reaction_mwdcd61085_a433_4362_a836_938c7ae43ded);
	
% Species:   id = mwc844b7c0_98f5_4d0d_8f0c_00dfe8b54e6d, name = TNF, affected by kineticLaw
	xdot(43) = ( 1.0 * reaction_mwe820c3d2_bbc1_4211_9818_1e515a583b8a) + (-1.0 * reaction_mwd95fbca0_6234_4c19_81ea_5e74b558e2f1);
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


