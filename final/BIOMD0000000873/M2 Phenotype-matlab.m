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
% Model name = Soni2018 - IL6 induced M2 Phenotype in Leishmania major infected macrophage
%
%


function main()
%Initial conditions vector
	x0=zeros(29,1);
	x0(1) = 1000.0;
	x0(2) = 800.0;
	x0(3) = 900.0;
	x0(4) = 800.0;
	x0(5) = 700.0;
	x0(6) = 600.0;
	x0(7) = 500.0;
	x0(8) = 400.0;
	x0(9) = 300.0;
	x0(10) = 100.0;
	x0(11) = 90000.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 80000.0;
	x0(15) = 10000.0;
	x0(16) = 200.0;
	x0(17) = 250.0;
	x0(18) = 100.0;
	x0(19) = 20000.0;
	x0(20) = 200.0;
	x0(21) = 250.0;
	x0(22) = 0.0;
	x0(23) = 9000.0;
	x0(24) = 0.0;
	x0(25) = 100.0;
	x0(26) = 100.0;
	x0(27) = 50000.0;
	x0(28) = 0.0;
	x0(29) = 0.0;


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

% Compartment: id = mw664a2e7f_0c35_423c_ac5d_34090e629a69, name = membrane, constant
	compartment_mw664a2e7f_0c35_423c_ac5d_34090e629a69=1.0;
% Compartment: id = mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22, name = CYTOSOL, constant
	compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22=1.0;
% Compartment: id = mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9, name = NUCLEUS, constant
	compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9=1.0;

% Reaction: id = mw3e247db2_b375_4e41_9e33_bb760833ee16, name = reaction_3	% Local Parameter:   id =  mw0930c7cf_99a6_4a20_a33d_02fd90e424bb, name = mw0930c7cf_99a6_4a20_a33d_02fd90e424bb
	reaction_mw3e247db2_b375_4e41_9e33_bb760833ee16_mw0930c7cf_99a6_4a20_a33d_02fd90e424bb=0.24;

	reaction_mw3e247db2_b375_4e41_9e33_bb760833ee16=compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22*Function_for_reaction_3(reaction_mw3e247db2_b375_4e41_9e33_bb760833ee16_mw0930c7cf_99a6_4a20_a33d_02fd90e424bb, x(4), compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mwe089edae_0b7c_485a_814d_227b9a9ad5fd, name = reaction_4	% Local Parameter:   id =  mw5b78650d_d92f_4602_bbe9_66d900ff312e, name = mw5b78650d_d92f_4602_bbe9_66d900ff312e
	reaction_mwe089edae_0b7c_485a_814d_227b9a9ad5fd_mw5b78650d_d92f_4602_bbe9_66d900ff312e=0.22;

	reaction_mwe089edae_0b7c_485a_814d_227b9a9ad5fd=compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22*Function_for_reaction_4(x(5), reaction_mwe089edae_0b7c_485a_814d_227b9a9ad5fd_mw5b78650d_d92f_4602_bbe9_66d900ff312e, compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mw355d0180_1300_4b22_afd0_dca38ce33afe, name = reaction_5	% Local Parameter:   id =  mwec4950e3_ecf8_4077_9cd1_b70818e911b9, name = mwec4950e3_ecf8_4077_9cd1_b70818e911b9
	reaction_mw355d0180_1300_4b22_afd0_dca38ce33afe_mwec4950e3_ecf8_4077_9cd1_b70818e911b9=0.19;

	reaction_mw355d0180_1300_4b22_afd0_dca38ce33afe=compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22*Function_for_reaction_5(reaction_mw355d0180_1300_4b22_afd0_dca38ce33afe_mwec4950e3_ecf8_4077_9cd1_b70818e911b9, x(6), compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mw68476f54_ab4a_403c_af35_355d74054f82, name = reaction_6	% Local Parameter:   id =  mw9c4a9937_faff_4853_8a76_d17a084948d9, name = mw9c4a9937_faff_4853_8a76_d17a084948d9
	reaction_mw68476f54_ab4a_403c_af35_355d74054f82_mw9c4a9937_faff_4853_8a76_d17a084948d9=0.16;

	reaction_mw68476f54_ab4a_403c_af35_355d74054f82=compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22*Function_for_reaction_6(reaction_mw68476f54_ab4a_403c_af35_355d74054f82_mw9c4a9937_faff_4853_8a76_d17a084948d9, x(7), compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mw8248f0e8_00d0_44dc_ae79_b61f77b4c52c, name = reaction_7	% Local Parameter:   id =  mwb8d480f9_5783_4feb_aaf1_2f861b09e009, name = mwb8d480f9_5783_4feb_aaf1_2f861b09e009
	reaction_mw8248f0e8_00d0_44dc_ae79_b61f77b4c52c_mwb8d480f9_5783_4feb_aaf1_2f861b09e009=0.14;

	reaction_mw8248f0e8_00d0_44dc_ae79_b61f77b4c52c=compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22*Function_for_reaction_7(x(8), reaction_mw8248f0e8_00d0_44dc_ae79_b61f77b4c52c_mwb8d480f9_5783_4feb_aaf1_2f861b09e009, compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mw301aee85_afee_49b3_ad89_b1cc5c8567b1, name = reaction_10	% Local Parameter:   id =  mw58dfe861_b815_48b4_89e9_6f71cccb561e, name = mw58dfe861_b815_48b4_89e9_6f71cccb561e
	reaction_mw301aee85_afee_49b3_ad89_b1cc5c8567b1_mw58dfe861_b815_48b4_89e9_6f71cccb561e=0.095;

	reaction_mw301aee85_afee_49b3_ad89_b1cc5c8567b1=Function_for_reaction_10(x(21), reaction_mw301aee85_afee_49b3_ad89_b1cc5c8567b1_mw58dfe861_b815_48b4_89e9_6f71cccb561e, compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9);

% Reaction: id = mw59a4b107_a52b_43b5_8415_3668e494102e, name = reaction_11	% Local Parameter:   id =  mwdf0efe39_4f88_4fc1_930b_55865b8d52f0, name = mwdf0efe39_4f88_4fc1_930b_55865b8d52f0
	reaction_mw59a4b107_a52b_43b5_8415_3668e494102e_mwdf0efe39_4f88_4fc1_930b_55865b8d52f0=0.08;

	reaction_mw59a4b107_a52b_43b5_8415_3668e494102e=Function_for_reaction_11(x(10), reaction_mw59a4b107_a52b_43b5_8415_3668e494102e_mwdf0efe39_4f88_4fc1_930b_55865b8d52f0, compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mw2fe228f0_8489_473b_b52d_da641e63e7cb, name = reaction_13	% Local Parameter:   id =  mw4594ab28_d538_4a72_875a_d878e907020d, name = mw4594ab28_d538_4a72_875a_d878e907020d
	reaction_mw2fe228f0_8489_473b_b52d_da641e63e7cb_mw4594ab28_d538_4a72_875a_d878e907020d=1.0E-15;

	reaction_mw2fe228f0_8489_473b_b52d_da641e63e7cb=compartment_mw664a2e7f_0c35_423c_ac5d_34090e629a69*Function_for_reaction_13(reaction_mw2fe228f0_8489_473b_b52d_da641e63e7cb_mw4594ab28_d538_4a72_875a_d878e907020d, const_species_mw5b252d78_9ab9_438c_8b81_2189b1f76357, compartment_mw664a2e7f_0c35_423c_ac5d_34090e629a69, const_species_mwb167e768_b778_4072_8798_3cf19e96d1d7);

% Reaction: id = mwc6831066_978e_4f05_b58a_7b138e3ba727, name = reaction_12	% Local Parameter:   id =  mw7b7a1d20_f258_4e3d_9234_62db60126326, name = mw7b7a1d20_f258_4e3d_9234_62db60126326
	reaction_mwc6831066_978e_4f05_b58a_7b138e3ba727_mw7b7a1d20_f258_4e3d_9234_62db60126326=6.0E-5;

	reaction_mwc6831066_978e_4f05_b58a_7b138e3ba727=compartment_mw664a2e7f_0c35_423c_ac5d_34090e629a69*Function_for_reaction_12(const_species_mw56c26af9_9f4a_4f13_936a_94ae6364342b, compartment_mw664a2e7f_0c35_423c_ac5d_34090e629a69, reaction_mwc6831066_978e_4f05_b58a_7b138e3ba727_mw7b7a1d20_f258_4e3d_9234_62db60126326, const_species_mw9b410665_6c5e_4f37_a7f2_0cb0963b98b1);

% Reaction: id = mw3ea84261_760d_4fc7_b420_c728b0f6d90d, name = reaction_15a	% Local Parameter:   id =  mw5ea6c681_bf85_4ac5_9aac_536087a97950, name = mw5ea6c681_bf85_4ac5_9aac_536087a97950
	reaction_mw3ea84261_760d_4fc7_b420_c728b0f6d90d_mw5ea6c681_bf85_4ac5_9aac_536087a97950=1.0;
	% Local Parameter:   id =  mw65a608c7_1026_4108_bb3d_f3358430aaf2, name = mw65a608c7_1026_4108_bb3d_f3358430aaf2
	reaction_mw3ea84261_760d_4fc7_b420_c728b0f6d90d_mw65a608c7_1026_4108_bb3d_f3358430aaf2=1.0;

	reaction_mw3ea84261_760d_4fc7_b420_c728b0f6d90d=compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22*Function_for_reaction_15a(x(19), reaction_mw3ea84261_760d_4fc7_b420_c728b0f6d90d_mw5ea6c681_bf85_4ac5_9aac_536087a97950, reaction_mw3ea84261_760d_4fc7_b420_c728b0f6d90d_mw65a608c7_1026_4108_bb3d_f3358430aaf2, compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mw4a4f5084_a8ec_4fd2_a74f_6db84a627a29, name = reaction_14a	% Local Parameter:   id =  mw106608bc_52fb_40e5_babb_cbb58aaaeed4, name = mw106608bc_52fb_40e5_babb_cbb58aaaeed4
	reaction_mw4a4f5084_a8ec_4fd2_a74f_6db84a627a29_mw106608bc_52fb_40e5_babb_cbb58aaaeed4=0.24;

	reaction_mw4a4f5084_a8ec_4fd2_a74f_6db84a627a29=Function_for_reaction_14a(reaction_mw4a4f5084_a8ec_4fd2_a74f_6db84a627a29_mw106608bc_52fb_40e5_babb_cbb58aaaeed4, compartment_mw664a2e7f_0c35_423c_ac5d_34090e629a69, x(1));

% Reaction: id = mw1eec4037_93c1_4fe1_93d3_7e85a42216f7, name = reaction_8	% Local Parameter:   id =  mwe0f7b31e_2efc_481e_90d0_e86c3b8d0be4, name = mwe0f7b31e_2efc_481e_90d0_e86c3b8d0be4
	reaction_mw1eec4037_93c1_4fe1_93d3_7e85a42216f7_mwe0f7b31e_2efc_481e_90d0_e86c3b8d0be4=0.125;

	reaction_mw1eec4037_93c1_4fe1_93d3_7e85a42216f7=Function_for_reaction_8(x(9), reaction_mw1eec4037_93c1_4fe1_93d3_7e85a42216f7_mwe0f7b31e_2efc_481e_90d0_e86c3b8d0be4, compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mwe737aa62_097e_474c_87d5_7b7eeaadd087, name = reaction_9	% Local Parameter:   id =  mw1981fa4d_c122_41a6_8c85_55a49d408c00, name = mw1981fa4d_c122_41a6_8c85_55a49d408c00
	reaction_mwe737aa62_097e_474c_87d5_7b7eeaadd087_mw1981fa4d_c122_41a6_8c85_55a49d408c00=400.0;
	% Local Parameter:   id =  mw340bc412_34ab_498a_bd42_47dd6cf025bd, name = mw340bc412_34ab_498a_bd42_47dd6cf025bd
	reaction_mwe737aa62_097e_474c_87d5_7b7eeaadd087_mw340bc412_34ab_498a_bd42_47dd6cf025bd=1.0;
	% Local Parameter:   id =  mw6cf7ac60_5bab_4b73_bb47_dc064486f000, name = mw6cf7ac60_5bab_4b73_bb47_dc064486f000
	reaction_mwe737aa62_097e_474c_87d5_7b7eeaadd087_mw6cf7ac60_5bab_4b73_bb47_dc064486f000=2000.0;

	reaction_mwe737aa62_097e_474c_87d5_7b7eeaadd087=compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9*Function_for_reaction_9(reaction_mwe737aa62_097e_474c_87d5_7b7eeaadd087_mw1981fa4d_c122_41a6_8c85_55a49d408c00, reaction_mwe737aa62_097e_474c_87d5_7b7eeaadd087_mw340bc412_34ab_498a_bd42_47dd6cf025bd, reaction_mwe737aa62_097e_474c_87d5_7b7eeaadd087_mw6cf7ac60_5bab_4b73_bb47_dc064486f000, x(20), compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9);

% Reaction: id = mw5dd08c34_8422_4e63_a58d_a497237b3d46, name = reaction_19	% Local Parameter:   id =  mw87e9394c_7eef_4271_85bc_d1b0a96db1f2, name = mw87e9394c_7eef_4271_85bc_d1b0a96db1f2
	reaction_mw5dd08c34_8422_4e63_a58d_a497237b3d46_mw87e9394c_7eef_4271_85bc_d1b0a96db1f2=0.0;

	reaction_mw5dd08c34_8422_4e63_a58d_a497237b3d46=compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22*Function_for_reaction_19(reaction_mw5dd08c34_8422_4e63_a58d_a497237b3d46_mw87e9394c_7eef_4271_85bc_d1b0a96db1f2, x(12), compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mw019a6415_bb9a_40a9_b627_5aa5fccedbc8, name = reaction_20	% Local Parameter:   id =  mwd84cf612_edaf_4dd9_9abd_003cc0569864, name = mwd84cf612_edaf_4dd9_9abd_003cc0569864
	reaction_mw019a6415_bb9a_40a9_b627_5aa5fccedbc8_mwd84cf612_edaf_4dd9_9abd_003cc0569864=0.0;

	reaction_mw019a6415_bb9a_40a9_b627_5aa5fccedbc8=Function_for_reaction_20(x(13), reaction_mw019a6415_bb9a_40a9_b627_5aa5fccedbc8_mwd84cf612_edaf_4dd9_9abd_003cc0569864, compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mwc2dc1496_a57b_4ea5_ba81_838f3344915c, name = reaction_21	% Local Parameter:   id =  mw051e0a03_1d45_448b_be4a_9d489e1b3ff9, name = mw051e0a03_1d45_448b_be4a_9d489e1b3ff9
	reaction_mwc2dc1496_a57b_4ea5_ba81_838f3344915c_mw051e0a03_1d45_448b_be4a_9d489e1b3ff9=0.0;
	% Local Parameter:   id =  mw322ca6ab_81cf_4f6c_835e_48bb5f8b11de, name = mw322ca6ab_81cf_4f6c_835e_48bb5f8b11de
	reaction_mwc2dc1496_a57b_4ea5_ba81_838f3344915c_mw322ca6ab_81cf_4f6c_835e_48bb5f8b11de=0.0;
	% Local Parameter:   id =  mwf9b630f8_c8a5_4fd0_bef1_92819b1257d2, name = mwf9b630f8_c8a5_4fd0_bef1_92819b1257d2
	reaction_mwc2dc1496_a57b_4ea5_ba81_838f3344915c_mwf9b630f8_c8a5_4fd0_bef1_92819b1257d2=0.0;

	reaction_mwc2dc1496_a57b_4ea5_ba81_838f3344915c=compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9*Function_for_reaction_21(reaction_mwc2dc1496_a57b_4ea5_ba81_838f3344915c_mw051e0a03_1d45_448b_be4a_9d489e1b3ff9, reaction_mwc2dc1496_a57b_4ea5_ba81_838f3344915c_mw322ca6ab_81cf_4f6c_835e_48bb5f8b11de, x(22), compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9, reaction_mwc2dc1496_a57b_4ea5_ba81_838f3344915c_mwf9b630f8_c8a5_4fd0_bef1_92819b1257d2);

% Reaction: id = mw35c5dd2a_d94c_4b60_a72d_561cb55f84f0, name = reaction_16	% Local Parameter:   id =  mwe479dc91_2774_4239_8212_60a330a84a76, name = mwe479dc91_2774_4239_8212_60a330a84a76
	reaction_mw35c5dd2a_d94c_4b60_a72d_561cb55f84f0_mwe479dc91_2774_4239_8212_60a330a84a76=0.86;

	reaction_mw35c5dd2a_d94c_4b60_a72d_561cb55f84f0=compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22*Function_for_reaction_16(x(11), reaction_mw35c5dd2a_d94c_4b60_a72d_561cb55f84f0_mwe479dc91_2774_4239_8212_60a330a84a76, compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mwd4d17665_ea8f_45cd_aeae_c8a3ea8d4115, name = reaction_17	% Local Parameter:   id =  mwf5ba0e23_9a0b_4bf6_b0ea_9fbc91843b5c, name = mwf5ba0e23_9a0b_4bf6_b0ea_9fbc91843b5c
	reaction_mwd4d17665_ea8f_45cd_aeae_c8a3ea8d4115_mwf5ba0e23_9a0b_4bf6_b0ea_9fbc91843b5c=0.1;

	reaction_mwd4d17665_ea8f_45cd_aeae_c8a3ea8d4115=Function_for_reaction_17(x(14), reaction_mwd4d17665_ea8f_45cd_aeae_c8a3ea8d4115_mwf5ba0e23_9a0b_4bf6_b0ea_9fbc91843b5c, compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mw4764870e_b030_4ffe_861a_1660a6d08340, name = reaction_18	% Local Parameter:   id =  mw3bf6abba_fc8d_4254_bc9c_037ec64d3e12, name = mw3bf6abba_fc8d_4254_bc9c_037ec64d3e12
	reaction_mw4764870e_b030_4ffe_861a_1660a6d08340_mw3bf6abba_fc8d_4254_bc9c_037ec64d3e12=1000.0;
	% Local Parameter:   id =  mw4c1174b0_1cba_4d7c_bedb_c29d9f65c10c, name = mw4c1174b0_1cba_4d7c_bedb_c29d9f65c10c
	reaction_mw4764870e_b030_4ffe_861a_1660a6d08340_mw4c1174b0_1cba_4d7c_bedb_c29d9f65c10c=1.0;
	% Local Parameter:   id =  mw85474b5d_1b19_4388_bcee_098fbb23f2e0, name = mw85474b5d_1b19_4388_bcee_098fbb23f2e0
	reaction_mw4764870e_b030_4ffe_861a_1660a6d08340_mw85474b5d_1b19_4388_bcee_098fbb23f2e0=700.0;

	reaction_mw4764870e_b030_4ffe_861a_1660a6d08340=compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9*Function_for_reaction_18(reaction_mw4764870e_b030_4ffe_861a_1660a6d08340_mw3bf6abba_fc8d_4254_bc9c_037ec64d3e12, reaction_mw4764870e_b030_4ffe_861a_1660a6d08340_mw4c1174b0_1cba_4d7c_bedb_c29d9f65c10c, x(23), reaction_mw4764870e_b030_4ffe_861a_1660a6d08340_mw85474b5d_1b19_4388_bcee_098fbb23f2e0, compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9);

% Reaction: id = mwddce3a0d_4301_48aa_ae63_37a44f2f2088, name = reaction_14b	% Local Parameter:   id =  mwd01d5494_fdcd_494e_8652_87201fa5b291, name = mwd01d5494_fdcd_494e_8652_87201fa5b291
	reaction_mwddce3a0d_4301_48aa_ae63_37a44f2f2088_mwd01d5494_fdcd_494e_8652_87201fa5b291=0.002;

	reaction_mwddce3a0d_4301_48aa_ae63_37a44f2f2088=Function_for_reaction_14b(compartment_mw664a2e7f_0c35_423c_ac5d_34090e629a69, reaction_mwddce3a0d_4301_48aa_ae63_37a44f2f2088_mwd01d5494_fdcd_494e_8652_87201fa5b291, x(1));

% Reaction: id = mwa93a841c_769e_407d_8c81_f1831ca594dd, name = reaction_15b	% Local Parameter:   id =  mw7ff2e94a_ac19_47ed_9127_14d385a1e544, name = mw7ff2e94a_ac19_47ed_9127_14d385a1e544
	reaction_mwa93a841c_769e_407d_8c81_f1831ca594dd_mw7ff2e94a_ac19_47ed_9127_14d385a1e544=1.0;
	% Local Parameter:   id =  mwf8062aeb_69d6_416b_b877_9687ef6fbc80, name = mwf8062aeb_69d6_416b_b877_9687ef6fbc80
	reaction_mwa93a841c_769e_407d_8c81_f1831ca594dd_mwf8062aeb_69d6_416b_b877_9687ef6fbc80=1.0;

	reaction_mwa93a841c_769e_407d_8c81_f1831ca594dd=compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22*Function_for_reaction_15b(reaction_mwa93a841c_769e_407d_8c81_f1831ca594dd_mw7ff2e94a_ac19_47ed_9127_14d385a1e544, x(18), reaction_mwa93a841c_769e_407d_8c81_f1831ca594dd_mwf8062aeb_69d6_416b_b877_9687ef6fbc80, compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mwbc1856f9_a538_4023_bce5_09484e8e71cf, name = reaction_22	% Local Parameter:   id =  mw5805aaa6_5a0a_495b_a21b_16e6ba6f39bc, name = mw5805aaa6_5a0a_495b_a21b_16e6ba6f39bc
	reaction_mwbc1856f9_a538_4023_bce5_09484e8e71cf_mw5805aaa6_5a0a_495b_a21b_16e6ba6f39bc=0.3;

	reaction_mwbc1856f9_a538_4023_bce5_09484e8e71cf=Function_for_reaction_22(x(27), reaction_mwbc1856f9_a538_4023_bce5_09484e8e71cf_mw5805aaa6_5a0a_495b_a21b_16e6ba6f39bc, compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9);

% Reaction: id = mw1f853efb_fa0c_47b5_8151_210a68961204, name = reaction_23	% Local Parameter:   id =  mw658feef9_67a1_431f_95fa_7358c6b294d2, name = mw658feef9_67a1_431f_95fa_7358c6b294d2
	reaction_mw1f853efb_fa0c_47b5_8151_210a68961204_mw658feef9_67a1_431f_95fa_7358c6b294d2=1.0E-15;
	% Local Parameter:   id =  mw8d03d46b_3832_4fe6_8a6b_467ef38af206, name = mw8d03d46b_3832_4fe6_8a6b_467ef38af206
	reaction_mw1f853efb_fa0c_47b5_8151_210a68961204_mw8d03d46b_3832_4fe6_8a6b_467ef38af206=10.0;
	% Local Parameter:   id =  mwf50b6519_aaf9_4cb0_a651_d5a3159d7390, name = mwf50b6519_aaf9_4cb0_a651_d5a3159d7390
	reaction_mw1f853efb_fa0c_47b5_8151_210a68961204_mwf50b6519_aaf9_4cb0_a651_d5a3159d7390=10.0;

	reaction_mw1f853efb_fa0c_47b5_8151_210a68961204=compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22*Function_for_reaction_23(const_species_mw57b4236e_c789_4799_a4f9_a03437a5593a, reaction_mw1f853efb_fa0c_47b5_8151_210a68961204_mw658feef9_67a1_431f_95fa_7358c6b294d2, reaction_mw1f853efb_fa0c_47b5_8151_210a68961204_mw8d03d46b_3832_4fe6_8a6b_467ef38af206, x(15), reaction_mw1f853efb_fa0c_47b5_8151_210a68961204_mwf50b6519_aaf9_4cb0_a651_d5a3159d7390, compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mwfdc768f1_5ae9_47dc_9506_b957dd352582, name = reaction_28	% Local Parameter:   id =  mw5b67154e_1851_4ba0_9491_7a14b2064c42, name = mw5b67154e_1851_4ba0_9491_7a14b2064c42
	reaction_mwfdc768f1_5ae9_47dc_9506_b957dd352582_mw5b67154e_1851_4ba0_9491_7a14b2064c42=0.06;

	reaction_mwfdc768f1_5ae9_47dc_9506_b957dd352582=Function_for_reaction_28(x(25), reaction_mwfdc768f1_5ae9_47dc_9506_b957dd352582_mw5b67154e_1851_4ba0_9491_7a14b2064c42, compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9);

% Reaction: id = mw35593d33_6426_452d_ad36_21f20cb38436, name = reaction_24	% Local Parameter:   id =  mw202bb744_d70a_4cf2_b2db_0d9d360bdfb5, name = mw202bb744_d70a_4cf2_b2db_0d9d360bdfb5
	reaction_mw35593d33_6426_452d_ad36_21f20cb38436_mw202bb744_d70a_4cf2_b2db_0d9d360bdfb5=0.1;

	reaction_mw35593d33_6426_452d_ad36_21f20cb38436=compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22*Function_for_reaction_24(reaction_mw35593d33_6426_452d_ad36_21f20cb38436_mw202bb744_d70a_4cf2_b2db_0d9d360bdfb5, x(8), compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mwb77c1134_efd5_47d0_8d36_02c3c68687c6, name = reaction_25	% Local Parameter:   id =  mw3288f227_0208_435a_a41c_b1778f50008c, name = mw3288f227_0208_435a_a41c_b1778f50008c
	reaction_mwb77c1134_efd5_47d0_8d36_02c3c68687c6_mw3288f227_0208_435a_a41c_b1778f50008c=0.09;

	reaction_mwb77c1134_efd5_47d0_8d36_02c3c68687c6=compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22*Function_for_reaction_25(reaction_mwb77c1134_efd5_47d0_8d36_02c3c68687c6_mw3288f227_0208_435a_a41c_b1778f50008c, x(16), compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mw9fb7e873_2840_486e_ac59_2329e9e9e45b, name = reaction_26	% Local Parameter:   id =  mwe250484c_acc9_4453_9eb6_49cda54b2f1e, name = mwe250484c_acc9_4453_9eb6_49cda54b2f1e
	reaction_mw9fb7e873_2840_486e_ac59_2329e9e9e45b_mwe250484c_acc9_4453_9eb6_49cda54b2f1e=0.3;

	reaction_mw9fb7e873_2840_486e_ac59_2329e9e9e45b=compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22*Function_for_reaction_26(x(17), reaction_mw9fb7e873_2840_486e_ac59_2329e9e9e45b_mwe250484c_acc9_4453_9eb6_49cda54b2f1e, compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mwb582e1ea_d2f2_4bcb_a843_661ce2e430e5, name = reaction_27	% Local Parameter:   id =  mw2ba0a425_a224_4fa1_affc_bcc206027a3e, name = mw2ba0a425_a224_4fa1_affc_bcc206027a3e
	reaction_mwb582e1ea_d2f2_4bcb_a843_661ce2e430e5_mw2ba0a425_a224_4fa1_affc_bcc206027a3e=1.0;
	% Local Parameter:   id =  mw8f586bdf_8d42_49c1_807a_670a1c49cbd9, name = mw8f586bdf_8d42_49c1_807a_670a1c49cbd9
	reaction_mwb582e1ea_d2f2_4bcb_a843_661ce2e430e5_mw8f586bdf_8d42_49c1_807a_670a1c49cbd9=1.0;

	reaction_mwb582e1ea_d2f2_4bcb_a843_661ce2e430e5=compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22*Function_for_reaction_27(reaction_mwb582e1ea_d2f2_4bcb_a843_661ce2e430e5_mw2ba0a425_a224_4fa1_affc_bcc206027a3e, x(19), reaction_mwb582e1ea_d2f2_4bcb_a843_661ce2e430e5_mw8f586bdf_8d42_49c1_807a_670a1c49cbd9, compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mwfe6ed8b6_844a_4bfd_bb0a_195c6fb5579e, name = reaction_34	% Local Parameter:   id =  mwe808b2da_9ed2_421e_a8d9_3c3534d42ee0, name = mwe808b2da_9ed2_421e_a8d9_3c3534d42ee0
	reaction_mwfe6ed8b6_844a_4bfd_bb0a_195c6fb5579e_mwe808b2da_9ed2_421e_a8d9_3c3534d42ee0=0.2;

	reaction_mwfe6ed8b6_844a_4bfd_bb0a_195c6fb5579e=Function_for_reaction_34(x(26), compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9, reaction_mwfe6ed8b6_844a_4bfd_bb0a_195c6fb5579e_mwe808b2da_9ed2_421e_a8d9_3c3534d42ee0);

% Reaction: id = mw666be0bc_42c7_48cd_89b7_87e131f1e724, name = reaction_29	% Local Parameter:   id =  mw7246cef3_7a78_43b0_acb7_21533c394daa, name = mw7246cef3_7a78_43b0_acb7_21533c394daa
	reaction_mw666be0bc_42c7_48cd_89b7_87e131f1e724_mw7246cef3_7a78_43b0_acb7_21533c394daa=0.001;

	reaction_mw666be0bc_42c7_48cd_89b7_87e131f1e724=compartment_mw664a2e7f_0c35_423c_ac5d_34090e629a69*Function_for_reaction_29(const_species_mw49322d55_ad63_4e7c_b1eb_42835c9b577a, compartment_mw664a2e7f_0c35_423c_ac5d_34090e629a69, reaction_mw666be0bc_42c7_48cd_89b7_87e131f1e724_mw7246cef3_7a78_43b0_acb7_21533c394daa, const_species_mw85ae78ed_34f7_460c_b906_1f512a83810c);

% Reaction: id = mw1d5d6ab3_4d84_4f27_a13a_c47c38be09de, name = reaction_30	% Local Parameter:   id =  mw2081c907_9d37_48a0_8581_8b8f3d5f7148, name = mw2081c907_9d37_48a0_8581_8b8f3d5f7148
	reaction_mw1d5d6ab3_4d84_4f27_a13a_c47c38be09de_mw2081c907_9d37_48a0_8581_8b8f3d5f7148=0.1;

	reaction_mw1d5d6ab3_4d84_4f27_a13a_c47c38be09de=Function_for_reaction_30(reaction_mw1d5d6ab3_4d84_4f27_a13a_c47c38be09de_mw2081c907_9d37_48a0_8581_8b8f3d5f7148, compartment_mw664a2e7f_0c35_423c_ac5d_34090e629a69, x(2));

% Reaction: id = mw69e4cb2d_f85e_4107_b5cd_a9bafe0827ee, name = reaction_31	% Local Parameter:   id =  mw91a51f27_e4be_41a6_a967_b6a63c909652, name = mw91a51f27_e4be_41a6_a967_b6a63c909652
	reaction_mw69e4cb2d_f85e_4107_b5cd_a9bafe0827ee_mw91a51f27_e4be_41a6_a967_b6a63c909652=1.0;
	% Local Parameter:   id =  mwd7b0f9fb_1180_47bb_b8c0_be2f89aa1c59, name = mwd7b0f9fb_1180_47bb_b8c0_be2f89aa1c59
	reaction_mw69e4cb2d_f85e_4107_b5cd_a9bafe0827ee_mwd7b0f9fb_1180_47bb_b8c0_be2f89aa1c59=1.0;

	reaction_mw69e4cb2d_f85e_4107_b5cd_a9bafe0827ee=compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22*Function_for_reaction_31(const_species_mw7f261959_39d2_4e8b_92b6_4466c2504544, reaction_mw69e4cb2d_f85e_4107_b5cd_a9bafe0827ee_mw91a51f27_e4be_41a6_a967_b6a63c909652, reaction_mw69e4cb2d_f85e_4107_b5cd_a9bafe0827ee_mwd7b0f9fb_1180_47bb_b8c0_be2f89aa1c59, compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mw29ed8c78_d683_42b9_90fb_69e2dca364ee, name = reaction_32	% Local Parameter:   id =  mw2a60d98a_bc06_4e05_b965_c920da8987dc, name = mw2a60d98a_bc06_4e05_b965_c920da8987dc
	reaction_mw29ed8c78_d683_42b9_90fb_69e2dca364ee_mw2a60d98a_bc06_4e05_b965_c920da8987dc=10.0;
	% Local Parameter:   id =  mw3c07a768_8e7a_49bb_8a1d_fdc92192f92b, name = mw3c07a768_8e7a_49bb_8a1d_fdc92192f92b
	reaction_mw29ed8c78_d683_42b9_90fb_69e2dca364ee_mw3c07a768_8e7a_49bb_8a1d_fdc92192f92b=1.0E-15;
	% Local Parameter:   id =  mw9704b67a_2c16_4ac7_a311_2096ab426758, name = mw9704b67a_2c16_4ac7_a311_2096ab426758
	reaction_mw29ed8c78_d683_42b9_90fb_69e2dca364ee_mw9704b67a_2c16_4ac7_a311_2096ab426758=10.0;

	reaction_mw29ed8c78_d683_42b9_90fb_69e2dca364ee=compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22*Function_for_reaction_32(reaction_mw29ed8c78_d683_42b9_90fb_69e2dca364ee_mw2a60d98a_bc06_4e05_b965_c920da8987dc, reaction_mw29ed8c78_d683_42b9_90fb_69e2dca364ee_mw3c07a768_8e7a_49bb_8a1d_fdc92192f92b, const_species_mw7f261959_39d2_4e8b_92b6_4466c2504544, reaction_mw29ed8c78_d683_42b9_90fb_69e2dca364ee_mw9704b67a_2c16_4ac7_a311_2096ab426758, x(15), compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mwbda33f89_b1c8_45c9_ad37_ec7130e4ba12, name = reaction_33	% Local Parameter:   id =  mw9ca6d980_6fbd_4207_9f2c_c05e2b5b0502, name = mw9ca6d980_6fbd_4207_9f2c_c05e2b5b0502
	reaction_mwbda33f89_b1c8_45c9_ad37_ec7130e4ba12_mw9ca6d980_6fbd_4207_9f2c_c05e2b5b0502=0.0;
	% Local Parameter:   id =  mwcffa9e49_67c6_4908_9314_6c16030c8989, name = mwcffa9e49_67c6_4908_9314_6c16030c8989
	reaction_mwbda33f89_b1c8_45c9_ad37_ec7130e4ba12_mwcffa9e49_67c6_4908_9314_6c16030c8989=0.0;
	% Local Parameter:   id =  mwf32cef57_32ba_4c0f_bbaf_bbc90af4a8aa, name = mwf32cef57_32ba_4c0f_bbaf_bbc90af4a8aa
	reaction_mwbda33f89_b1c8_45c9_ad37_ec7130e4ba12_mwf32cef57_32ba_4c0f_bbaf_bbc90af4a8aa=0.0;

	reaction_mwbda33f89_b1c8_45c9_ad37_ec7130e4ba12=compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9*Function_for_reaction_33(reaction_mwbda33f89_b1c8_45c9_ad37_ec7130e4ba12_mw9ca6d980_6fbd_4207_9f2c_c05e2b5b0502, x(22), reaction_mwbda33f89_b1c8_45c9_ad37_ec7130e4ba12_mwcffa9e49_67c6_4908_9314_6c16030c8989, compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9, reaction_mwbda33f89_b1c8_45c9_ad37_ec7130e4ba12_mwf32cef57_32ba_4c0f_bbaf_bbc90af4a8aa);

% Reaction: id = mw0de495aa_28d6_4ae7_8c1a_247b3546ed40, name = reaction_35	% Local Parameter:   id =  mw287bd1ba_fbc1_43a0_94ab_38a6336bbebb, name = mw287bd1ba_fbc1_43a0_94ab_38a6336bbebb
	reaction_mw0de495aa_28d6_4ae7_8c1a_247b3546ed40_mw287bd1ba_fbc1_43a0_94ab_38a6336bbebb=10.0;
	% Local Parameter:   id =  mw2db26dbd_dda3_4770_b923_d2725a80ccba, name = mw2db26dbd_dda3_4770_b923_d2725a80ccba
	reaction_mw0de495aa_28d6_4ae7_8c1a_247b3546ed40_mw2db26dbd_dda3_4770_b923_d2725a80ccba=1.0;
	% Local Parameter:   id =  mwb86b112e_674a_4e98_8ca4_3d0273a134d4, name = mwb86b112e_674a_4e98_8ca4_3d0273a134d4
	reaction_mw0de495aa_28d6_4ae7_8c1a_247b3546ed40_mwb86b112e_674a_4e98_8ca4_3d0273a134d4=10.0;

	reaction_mw0de495aa_28d6_4ae7_8c1a_247b3546ed40=compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9*Function_for_reaction_35(reaction_mw0de495aa_28d6_4ae7_8c1a_247b3546ed40_mw287bd1ba_fbc1_43a0_94ab_38a6336bbebb, reaction_mw0de495aa_28d6_4ae7_8c1a_247b3546ed40_mw2db26dbd_dda3_4770_b923_d2725a80ccba, x(23), reaction_mw0de495aa_28d6_4ae7_8c1a_247b3546ed40_mwb86b112e_674a_4e98_8ca4_3d0273a134d4, compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9);

% Reaction: id = mw152eb150_14a4_40a8_bc56_0d6e3281a206, name = reaction_14	% Local Parameter:   id =  mw1aca690a_9ee1_460f_bc28_780fb04c1a32, name = mw1aca690a_9ee1_460f_bc28_780fb04c1a32
	reaction_mw152eb150_14a4_40a8_bc56_0d6e3281a206_mw1aca690a_9ee1_460f_bc28_780fb04c1a32=1.0;
	% Local Parameter:   id =  mwf604d18f_ae32_4d08_bfef_f778aae8f24b, name = mwf604d18f_ae32_4d08_bfef_f778aae8f24b
	reaction_mw152eb150_14a4_40a8_bc56_0d6e3281a206_mwf604d18f_ae32_4d08_bfef_f778aae8f24b=1.0;

	reaction_mw152eb150_14a4_40a8_bc56_0d6e3281a206=compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22*Function_for_reaction_14(reaction_mw152eb150_14a4_40a8_bc56_0d6e3281a206_mw1aca690a_9ee1_460f_bc28_780fb04c1a32, x(18), reaction_mw152eb150_14a4_40a8_bc56_0d6e3281a206_mwf604d18f_ae32_4d08_bfef_f778aae8f24b, compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);

% Reaction: id = mwdd6b7201_bde8_4631_8e90_e53b986d539d, name = reaction_1	% Local Parameter:   id =  mwf80a94ba_03ba_44f0_b793_4f60c20fd074, name = mwf80a94ba_03ba_44f0_b793_4f60c20fd074
	reaction_mwdd6b7201_bde8_4631_8e90_e53b986d539d_mwf80a94ba_03ba_44f0_b793_4f60c20fd074=8.0E-9;

	reaction_mwdd6b7201_bde8_4631_8e90_e53b986d539d=compartment_mw664a2e7f_0c35_423c_ac5d_34090e629a69*Function_for_reaction_1(compartment_mw664a2e7f_0c35_423c_ac5d_34090e629a69, const_species_mw763cffc8_c121_4004_afdb_97e9de9f0081, const_species_mwa244ea2a_3e41_473b_9ae7_d0db512fc366, reaction_mwdd6b7201_bde8_4631_8e90_e53b986d539d_mwf80a94ba_03ba_44f0_b793_4f60c20fd074, const_species_mwfaacd7f7_6aa9_4e6c_a7d8_281f2022ba2f);

% Reaction: id = mw00a624d9_79b2_424c_9362_50e77c3a3d6f, name = reaction_2	% Local Parameter:   id =  mwce7a28b5_2f60_4228_a88f_ccd3a6213c3e, name = mwce7a28b5_2f60_4228_a88f_ccd3a6213c3e
	reaction_mw00a624d9_79b2_424c_9362_50e77c3a3d6f_mwce7a28b5_2f60_4228_a88f_ccd3a6213c3e=0.23;

	reaction_mw00a624d9_79b2_424c_9362_50e77c3a3d6f=Function_for_reaction_2(x(3), compartment_mw664a2e7f_0c35_423c_ac5d_34090e629a69, reaction_mw00a624d9_79b2_424c_9362_50e77c3a3d6f_mwce7a28b5_2f60_4228_a88f_ccd3a6213c3e);

% Species:   id = mwfaacd7f7_6aa9_4e6c_a7d8_281f2022ba2f, name = TLR2, constant	const_species_mwfaacd7f7_6aa9_4e6c_a7d8_281f2022ba2f=1000.0;

% Species:   id = mwa244ea2a_3e41_473b_9ae7_d0db512fc366, name = TLR6/1, constant	const_species_mwa244ea2a_3e41_473b_9ae7_d0db512fc366=1000.0;

% Species:   id = mwb167e768_b778_4072_8798_3cf19e96d1d7, name = IL6-IL6R, constant	const_species_mwb167e768_b778_4072_8798_3cf19e96d1d7=1000.0;

% Species:   id = mw9b410665_6c5e_4f37_a7f2_0cb0963b98b1, name = IL6R, constant	const_species_mw9b410665_6c5e_4f37_a7f2_0cb0963b98b1=100000.0;

% Species:   id = mw56c26af9_9f4a_4f13_936a_94ae6364342b, name = IL6, constant	const_species_mw56c26af9_9f4a_4f13_936a_94ae6364342b=1000.0;

% Species:   id = mw763cffc8_c121_4004_afdb_97e9de9f0081, name = LPG, constant	const_species_mw763cffc8_c121_4004_afdb_97e9de9f0081=1000.0;

% Species:   id = mw85ae78ed_34f7_460c_b906_1f512a83810c, name = IFN-g, constant	const_species_mw85ae78ed_34f7_460c_b906_1f512a83810c=200.0;

% Species:   id = mw49322d55_ad63_4e7c_b1eb_42835c9b577a, name = IFN-gR, constant	const_species_mw49322d55_ad63_4e7c_b1eb_42835c9b577a=150.0;

% Species:   id = mw5b252d78_9ab9_438c_8b81_2189b1f76357, name = gp130, constant	const_species_mw5b252d78_9ab9_438c_8b81_2189b1f76357=1000.0;

% Species:   id = mwce6e4efd_3187_4379_ad47_104c95e0eb3b, name = JAK1/2, constant	const_species_mwce6e4efd_3187_4379_ad47_104c95e0eb3b=2000.0;

% Species:   id = mw57b4236e_c789_4799_a4f9_a03437a5593a, name = JAK2/1, constant	const_species_mw57b4236e_c789_4799_a4f9_a03437a5593a=2000.0;

% Species:   id = mw6f8ce639_1c28_444f_b6e6_30ff06ab0d6e, name = ERK1/ERK2, constant	const_species_mw6f8ce639_1c28_444f_b6e6_30ff06ab0d6e=100.0;

% Species:   id = mw7f261959_39d2_4e8b_92b6_4466c2504544, name = JAK2, constant	const_species_mw7f261959_39d2_4e8b_92b6_4466c2504544=15000.0;

	xdot=zeros(29,1);
	
% Species:   id = mwf219928e_abba_4c09_9597_5d6910f7e4d9, name = IL6-IL6R-GP130, affected by kineticLaw
	xdot(1) = (1/(compartment_mw664a2e7f_0c35_423c_ac5d_34090e629a69))*(( 1.0 * reaction_mw2fe228f0_8489_473b_b52d_da641e63e7cb) + (-1.0 * reaction_mw4a4f5084_a8ec_4fd2_a74f_6db84a627a29) + (-1.0 * reaction_mwddce3a0d_4301_48aa_ae63_37a44f2f2088));
	
% Species:   id = mwd7270399_0429_4c85_920a_de2e0ae74440, name = IFNg-IFNgR, affected by kineticLaw
	xdot(2) = (1/(compartment_mw664a2e7f_0c35_423c_ac5d_34090e629a69))*(( 1.0 * reaction_mw666be0bc_42c7_48cd_89b7_87e131f1e724) + (-1.0 * reaction_mw1d5d6ab3_4d84_4f27_a13a_c47c38be09de));
	
% Species:   id = mw6339814d_af4c_4eee_9455_7e20795f6aeb, name = TLR2/6-LPG, affected by kineticLaw
	xdot(3) = (1/(compartment_mw664a2e7f_0c35_423c_ac5d_34090e629a69))*(( 1.0 * reaction_mwdd6b7201_bde8_4631_8e90_e53b986d539d) + (-1.0 * reaction_mw00a624d9_79b2_424c_9362_50e77c3a3d6f));
	
% Species:   id = mwc42127ea_2b78_4381_b230_30e95cd5a9d6, name = MyD88, affected by kineticLaw
	xdot(4) = (1/(compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22))*((-1.0 * reaction_mw3e247db2_b375_4e41_9e33_bb760833ee16) + ( 1.0 * reaction_mw00a624d9_79b2_424c_9362_50e77c3a3d6f));
	
% Species:   id = mw4fd8b902_e2a2_4910_899c_2a7d3425e0e0, name = IRAK1-IRAK4, affected by kineticLaw
	xdot(5) = (1/(compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22))*(( 1.0 * reaction_mw3e247db2_b375_4e41_9e33_bb760833ee16) + (-1.0 * reaction_mwe089edae_0b7c_485a_814d_227b9a9ad5fd));
	
% Species:   id = mwf06c0537_577b_4f13_a9a3_521f9d2217fb, name = TRAF6, affected by kineticLaw
	xdot(6) = (1/(compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22))*(( 1.0 * reaction_mwe089edae_0b7c_485a_814d_227b9a9ad5fd) + (-1.0 * reaction_mw355d0180_1300_4b22_afd0_dca38ce33afe));
	
% Species:   id = mwbba20281_3d8b_48c3_8e13_dee78e87dfb8, name = TAK1-TAB1/2, affected by kineticLaw
	xdot(7) = (1/(compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22))*(( 1.0 * reaction_mw355d0180_1300_4b22_afd0_dca38ce33afe) + (-1.0 * reaction_mw68476f54_ab4a_403c_af35_355d74054f82));
	
% Species:   id = mw78198c86_4b16_4117_8592_6a95c3953126, name = IKKbeta, affected by kineticLaw
	xdot(8) = (1/(compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22))*(( 1.0 * reaction_mw68476f54_ab4a_403c_af35_355d74054f82) + (-1.0 * reaction_mw8248f0e8_00d0_44dc_ae79_b61f77b4c52c) + (-1.0 * reaction_mw35593d33_6426_452d_ad36_21f20cb38436));
	
% Species:   id = mw7938fab7_d0c6_497b_8fb6_75922fcc19d5, name = NFkB, affected by kineticLaw
	xdot(9) = (1/(compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22))*(( 1.0 * reaction_mw8248f0e8_00d0_44dc_ae79_b61f77b4c52c) + (-1.0 * reaction_mw1eec4037_93c1_4fe1_93d3_7e85a42216f7));
	
% Species:   id = mw8675a533_92fb_4fbf_b747_7bca05c5841c, name = IL6, affected by kineticLaw
	xdot(10) = (1/(compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22))*(( 1.0 * reaction_mw301aee85_afee_49b3_ad89_b1cc5c8567b1) + (-1.0 * reaction_mw59a4b107_a52b_43b5_8415_3668e494102e));
	
% Species:   id = mw869055b5_5d27_4f4a_a390_b3fa48d6780e, name = STAT3.P, affected by kineticLaw
	xdot(11) = (1/(compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22))*(( 1.0 * reaction_mw3ea84261_760d_4fc7_b420_c728b0f6d90d) + (-1.0 * reaction_mw35c5dd2a_d94c_4b60_a72d_561cb55f84f0) + ( 1.0 * reaction_mwb582e1ea_d2f2_4bcb_a843_661ce2e430e5));
	
% Species:   id = mwd5f166e6_df0a_45bf_b662_e87b91b79a27, name = STAT1.P, affected by kineticLaw
	xdot(12) = (1/(compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22))*((-1.0 * reaction_mw5dd08c34_8422_4e63_a58d_a497237b3d46) + ( 1.0 * reaction_mwa93a841c_769e_407d_8c81_f1831ca594dd) + ( 1.0 * reaction_mw69e4cb2d_f85e_4107_b5cd_a9bafe0827ee) + ( 1.0 * reaction_mw152eb150_14a4_40a8_bc56_0d6e3281a206));
	
% Species:   id = mw9275f30d_c42b_459c_91c5_67b7e08b6486, name = 2.STAT1, affected by kineticLaw
	xdot(13) = (1/(compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22))*(( 1.0 * reaction_mw5dd08c34_8422_4e63_a58d_a497237b3d46) + (-1.0 * reaction_mw019a6415_bb9a_40a9_b627_5aa5fccedbc8));
	
% Species:   id = mwc84af692_e3fc_4ede_99b6_b0cce3729bf7, name = 2.STAT3, affected by kineticLaw
	xdot(14) = (1/(compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22))*(( 1.0 * reaction_mw35c5dd2a_d94c_4b60_a72d_561cb55f84f0) + (-1.0 * reaction_mwd4d17665_ea8f_45cd_aeae_c8a3ea8d4115));
	
% Species:   id = mwacd53f34_4935_4b6a_8267_024f0d966c8c, name = SOCS1, affected by kineticLaw
	xdot(15) = (1/(compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22))*(( 1.0 * reaction_mwbc1856f9_a538_4023_bce5_09484e8e71cf) + (-1.0 * reaction_mw1f853efb_fa0c_47b5_8151_210a68961204) + ( 1.0 * reaction_mw1f853efb_fa0c_47b5_8151_210a68961204) + (-1.0 * reaction_mw29ed8c78_d683_42b9_90fb_69e2dca364ee) + ( 1.0 * reaction_mw29ed8c78_d683_42b9_90fb_69e2dca364ee));
	
% Species:   id = mwf26f605f_29e9_4454_834c_7b3edab4bbc2, name = TLP2, affected by kineticLaw
	xdot(16) = (1/(compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22))*(( 1.0 * reaction_mw35593d33_6426_452d_ad36_21f20cb38436) + (-1.0 * reaction_mwb77c1134_efd5_47d0_8d36_02c3c68687c6));
	
% Species:   id = mw10b15557_55f5_4525_b19d_161b056f5791, name = MKK1/2, affected by kineticLaw
	xdot(17) = (1/(compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22))*(( 1.0 * reaction_mwb77c1134_efd5_47d0_8d36_02c3c68687c6) + (-1.0 * reaction_mw9fb7e873_2840_486e_ac59_2329e9e9e45b));
	
% Species:   id = mwb9a40fab_a7c9_4984_805f_045fefc4ff32, name = STAT1, affected by kineticLaw
	xdot(18) = (1/(compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22))*((-1.0 * reaction_mwa93a841c_769e_407d_8c81_f1831ca594dd) + ( 1.0 * reaction_mwfdc768f1_5ae9_47dc_9506_b957dd352582) + (-1.0 * reaction_mw152eb150_14a4_40a8_bc56_0d6e3281a206));
	
% Species:   id = mw58370246_a992_4253_8029_12fbb07a417d, name = STAT3, affected by kineticLaw
	xdot(19) = (1/(compartment_mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22))*((-1.0 * reaction_mw3ea84261_760d_4fc7_b420_c728b0f6d90d) + (-1.0 * reaction_mwb582e1ea_d2f2_4bcb_a843_661ce2e430e5) + ( 1.0 * reaction_mwfe6ed8b6_844a_4bfd_bb0a_195c6fb5579e));
	
% Species:   id = mwba110304_bd9a_4fd0_9b4c_b8bfc975e30b, name = NFkB, affected by kineticLaw
	xdot(20) = (1/(compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9))*(( 1.0 * reaction_mw1eec4037_93c1_4fe1_93d3_7e85a42216f7) + (-1.0 * reaction_mwe737aa62_097e_474c_87d5_7b7eeaadd087));
	
% Species:   id = mw5607cee0_ee75_4065_9368_d07c3abbe18b, name = IL6, affected by kineticLaw
	xdot(21) = (1/(compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9))*((-1.0 * reaction_mw301aee85_afee_49b3_ad89_b1cc5c8567b1) + ( 1.0 * reaction_mwe737aa62_097e_474c_87d5_7b7eeaadd087));
	
% Species:   id = mwbe46ba92_97de_4cc4_970d_2dec54671573, name = 2.STAT1, affected by kineticLaw
	xdot(22) = (1/(compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9))*(( 1.0 * reaction_mw019a6415_bb9a_40a9_b627_5aa5fccedbc8) + (-1.0 * reaction_mwc2dc1496_a57b_4ea5_ba81_838f3344915c) + (-1.0 * reaction_mwbda33f89_b1c8_45c9_ad37_ec7130e4ba12));
	
% Species:   id = mw55b6f083_2b28_4a1a_ab90_82a751525d72, name = 2.STAT3, affected by kineticLaw
	xdot(23) = (1/(compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9))*(( 1.0 * reaction_mwd4d17665_ea8f_45cd_aeae_c8a3ea8d4115) + (-1.0 * reaction_mw4764870e_b030_4ffe_861a_1660a6d08340) + (-1.0 * reaction_mw0de495aa_28d6_4ae7_8c1a_247b3546ed40));
	
% Species:   id = mwe3af2471_5087_4796_982a_56fad9a9a972, name = SOCS3, affected by kineticLaw
	xdot(24) = (1/(compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9))*(( 1.0 * reaction_mw0de495aa_28d6_4ae7_8c1a_247b3546ed40));
	
% Species:   id = mw364ca1a4_fc56_4138_8031_16341ac865de, name = STAT1, affected by kineticLaw
	xdot(25) = (1/(compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9))*(( 1.0 * reaction_mwe737aa62_097e_474c_87d5_7b7eeaadd087) + (-1.0 * reaction_mwfdc768f1_5ae9_47dc_9506_b957dd352582));
	
% Species:   id = mw4fc13b75_10cc_41fb_b9f8_1ce95fccae73, name = STAT3, affected by kineticLaw
	xdot(26) = (1/(compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9))*(( 1.0 * reaction_mwe737aa62_097e_474c_87d5_7b7eeaadd087) + (-1.0 * reaction_mwfe6ed8b6_844a_4bfd_bb0a_195c6fb5579e));
	
% Species:   id = mw3d58864c_79c7_4ff2_98fe_1a85b2ccc43d, name = SOCS1, affected by kineticLaw
	xdot(27) = (1/(compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9))*(( 1.0 * reaction_mwc2dc1496_a57b_4ea5_ba81_838f3344915c) + (-1.0 * reaction_mwbc1856f9_a538_4023_bce5_09484e8e71cf));
	
% Species:   id = mw6949b379_107d_4822_b13e_680a491d2425, name = iNOS, affected by kineticLaw
	xdot(28) = (1/(compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9))*(( 1.0 * reaction_mwbda33f89_b1c8_45c9_ad37_ec7130e4ba12));
	
% Species:   id = mwcbadb505_1cfb_4903_9975_0e53de2ba877, name = AIF, affected by kineticLaw
	xdot(29) = (1/(compartment_mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9))*(( 1.0 * reaction_mw4764870e_b030_4ffe_861a_1660a6d08340));
end

function z=Function_for_reaction_15b(mw7ff2e94a_ac19_47ed_9127_14d385a1e544,mwb9a40fab_a7c9_4984_805f_045fefc4ff32,mwf8062aeb_69d6_416b_b877_9687ef6fbc80,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mw7ff2e94a_ac19_47ed_9127_14d385a1e544*mwb9a40fab_a7c9_4984_805f_045fefc4ff32*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/(mwf8062aeb_69d6_416b_b877_9687ef6fbc80+mwb9a40fab_a7c9_4984_805f_045fefc4ff32*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22)/mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_22(mw3d58864c_79c7_4ff2_98fe_1a85b2ccc43d,mw5805aaa6_5a0a_495b_a21b_16e6ba6f39bc,mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9), z=(mw5805aaa6_5a0a_495b_a21b_16e6ba6f39bc*mw3d58864c_79c7_4ff2_98fe_1a85b2ccc43d*mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9);end

function z=Function_for_reaction_23(mw57b4236e_c789_4799_a4f9_a03437a5593a,mw658feef9_67a1_431f_95fa_7358c6b294d2,mw8d03d46b_3832_4fe6_8a6b_467ef38af206,mwacd53f34_4935_4b6a_8267_024f0d966c8c,mwf50b6519_aaf9_4cb0_a651_d5a3159d7390,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mw658feef9_67a1_431f_95fa_7358c6b294d2*mw57b4236e_c789_4799_a4f9_a03437a5593a*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/(mw8d03d46b_3832_4fe6_8a6b_467ef38af206*(1+mwacd53f34_4935_4b6a_8267_024f0d966c8c*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/mwf50b6519_aaf9_4cb0_a651_d5a3159d7390)+mw57b4236e_c789_4799_a4f9_a03437a5593a*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22)/mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_3(mw0930c7cf_99a6_4a20_a33d_02fd90e424bb,mwc42127ea_2b78_4381_b230_30e95cd5a9d6,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mw0930c7cf_99a6_4a20_a33d_02fd90e424bb*mwc42127ea_2b78_4381_b230_30e95cd5a9d6*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_4(mw4fd8b902_e2a2_4910_899c_2a7d3425e0e0,mw5b78650d_d92f_4602_bbe9_66d900ff312e,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mw5b78650d_d92f_4602_bbe9_66d900ff312e*mw4fd8b902_e2a2_4910_899c_2a7d3425e0e0*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_5(mwec4950e3_ecf8_4077_9cd1_b70818e911b9,mwf06c0537_577b_4f13_a9a3_521f9d2217fb,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mwec4950e3_ecf8_4077_9cd1_b70818e911b9*mwf06c0537_577b_4f13_a9a3_521f9d2217fb*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_6(mw9c4a9937_faff_4853_8a76_d17a084948d9,mwbba20281_3d8b_48c3_8e13_dee78e87dfb8,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mw9c4a9937_faff_4853_8a76_d17a084948d9*mwbba20281_3d8b_48c3_8e13_dee78e87dfb8*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_7(mw78198c86_4b16_4117_8592_6a95c3953126,mwb8d480f9_5783_4feb_aaf1_2f861b09e009,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mwb8d480f9_5783_4feb_aaf1_2f861b09e009*mw78198c86_4b16_4117_8592_6a95c3953126*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_10(mw5607cee0_ee75_4065_9368_d07c3abbe18b,mw58dfe861_b815_48b4_89e9_6f71cccb561e,mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9), z=(mw58dfe861_b815_48b4_89e9_6f71cccb561e*mw5607cee0_ee75_4065_9368_d07c3abbe18b*mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9);end

function z=Function_for_reaction_11(mw8675a533_92fb_4fbf_b747_7bca05c5841c,mwdf0efe39_4f88_4fc1_930b_55865b8d52f0,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mwdf0efe39_4f88_4fc1_930b_55865b8d52f0*mw8675a533_92fb_4fbf_b747_7bca05c5841c*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_13(mw4594ab28_d538_4a72_875a_d878e907020d,mw5b252d78_9ab9_438c_8b81_2189b1f76357,mw664a2e7f_0c35_423c_ac5d_34090e629a69,mwb167e768_b778_4072_8798_3cf19e96d1d7), z=(mw4594ab28_d538_4a72_875a_d878e907020d*mwb167e768_b778_4072_8798_3cf19e96d1d7*mw664a2e7f_0c35_423c_ac5d_34090e629a69*mw5b252d78_9ab9_438c_8b81_2189b1f76357*mw664a2e7f_0c35_423c_ac5d_34090e629a69/mw664a2e7f_0c35_423c_ac5d_34090e629a69);end

function z=Function_for_reaction_12(mw56c26af9_9f4a_4f13_936a_94ae6364342b,mw664a2e7f_0c35_423c_ac5d_34090e629a69,mw7b7a1d20_f258_4e3d_9234_62db60126326,mw9b410665_6c5e_4f37_a7f2_0cb0963b98b1), z=(mw7b7a1d20_f258_4e3d_9234_62db60126326*mw9b410665_6c5e_4f37_a7f2_0cb0963b98b1*mw664a2e7f_0c35_423c_ac5d_34090e629a69*mw56c26af9_9f4a_4f13_936a_94ae6364342b*mw664a2e7f_0c35_423c_ac5d_34090e629a69/mw664a2e7f_0c35_423c_ac5d_34090e629a69);end

function z=Function_for_reaction_15a(mw58370246_a992_4253_8029_12fbb07a417d,mw5ea6c681_bf85_4ac5_9aac_536087a97950,mw65a608c7_1026_4108_bb3d_f3358430aaf2,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mw65a608c7_1026_4108_bb3d_f3358430aaf2*mw58370246_a992_4253_8029_12fbb07a417d*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/(mw5ea6c681_bf85_4ac5_9aac_536087a97950+mw58370246_a992_4253_8029_12fbb07a417d*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22)/mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_14a(mw106608bc_52fb_40e5_babb_cbb58aaaeed4,mw664a2e7f_0c35_423c_ac5d_34090e629a69,mwf219928e_abba_4c09_9597_5d6910f7e4d9), z=(mw106608bc_52fb_40e5_babb_cbb58aaaeed4*mwf219928e_abba_4c09_9597_5d6910f7e4d9*mw664a2e7f_0c35_423c_ac5d_34090e629a69);end

function z=Function_for_reaction_8(mw7938fab7_d0c6_497b_8fb6_75922fcc19d5,mwe0f7b31e_2efc_481e_90d0_e86c3b8d0be4,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mwe0f7b31e_2efc_481e_90d0_e86c3b8d0be4*mw7938fab7_d0c6_497b_8fb6_75922fcc19d5*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_9(mw1981fa4d_c122_41a6_8c85_55a49d408c00,mw340bc412_34ab_498a_bd42_47dd6cf025bd,mw6cf7ac60_5bab_4b73_bb47_dc064486f000,mwba110304_bd9a_4fd0_9b4c_b8bfc975e30b,mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9), z=(mw1981fa4d_c122_41a6_8c85_55a49d408c00*(mwba110304_bd9a_4fd0_9b4c_b8bfc975e30b*mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9)^mw340bc412_34ab_498a_bd42_47dd6cf025bd/(mw6cf7ac60_5bab_4b73_bb47_dc064486f000+(mwba110304_bd9a_4fd0_9b4c_b8bfc975e30b*mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9)^mw340bc412_34ab_498a_bd42_47dd6cf025bd)/mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9);end

function z=Function_for_reaction_19(mw87e9394c_7eef_4271_85bc_d1b0a96db1f2,mwd5f166e6_df0a_45bf_b662_e87b91b79a27,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mw87e9394c_7eef_4271_85bc_d1b0a96db1f2*mwd5f166e6_df0a_45bf_b662_e87b91b79a27*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_20(mw9275f30d_c42b_459c_91c5_67b7e08b6486,mwd84cf612_edaf_4dd9_9abd_003cc0569864,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mwd84cf612_edaf_4dd9_9abd_003cc0569864*mw9275f30d_c42b_459c_91c5_67b7e08b6486*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_21(mw051e0a03_1d45_448b_be4a_9d489e1b3ff9,mw322ca6ab_81cf_4f6c_835e_48bb5f8b11de,mwbe46ba92_97de_4cc4_970d_2dec54671573,mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9,mwf9b630f8_c8a5_4fd0_bef1_92819b1257d2), z=(mw051e0a03_1d45_448b_be4a_9d489e1b3ff9*(mwbe46ba92_97de_4cc4_970d_2dec54671573*mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9)^mwf9b630f8_c8a5_4fd0_bef1_92819b1257d2/(mw322ca6ab_81cf_4f6c_835e_48bb5f8b11de+(mwbe46ba92_97de_4cc4_970d_2dec54671573*mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9)^mwf9b630f8_c8a5_4fd0_bef1_92819b1257d2)/mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9);end

function z=Function_for_reaction_16(mw869055b5_5d27_4f4a_a390_b3fa48d6780e,mwe479dc91_2774_4239_8212_60a330a84a76,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mwe479dc91_2774_4239_8212_60a330a84a76*mw869055b5_5d27_4f4a_a390_b3fa48d6780e*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_17(mwc84af692_e3fc_4ede_99b6_b0cce3729bf7,mwf5ba0e23_9a0b_4bf6_b0ea_9fbc91843b5c,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mwf5ba0e23_9a0b_4bf6_b0ea_9fbc91843b5c*mwc84af692_e3fc_4ede_99b6_b0cce3729bf7*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_18(mw3bf6abba_fc8d_4254_bc9c_037ec64d3e12,mw4c1174b0_1cba_4d7c_bedb_c29d9f65c10c,mw55b6f083_2b28_4a1a_ab90_82a751525d72,mw85474b5d_1b19_4388_bcee_098fbb23f2e0,mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9), z=(mw3bf6abba_fc8d_4254_bc9c_037ec64d3e12*(mw55b6f083_2b28_4a1a_ab90_82a751525d72*mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9)^mw4c1174b0_1cba_4d7c_bedb_c29d9f65c10c/(mw85474b5d_1b19_4388_bcee_098fbb23f2e0+(mw55b6f083_2b28_4a1a_ab90_82a751525d72*mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9)^mw4c1174b0_1cba_4d7c_bedb_c29d9f65c10c)/mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9);end

function z=Function_for_reaction_14b(mw664a2e7f_0c35_423c_ac5d_34090e629a69,mwd01d5494_fdcd_494e_8652_87201fa5b291,mwf219928e_abba_4c09_9597_5d6910f7e4d9), z=(mwd01d5494_fdcd_494e_8652_87201fa5b291*mwf219928e_abba_4c09_9597_5d6910f7e4d9*mw664a2e7f_0c35_423c_ac5d_34090e629a69);end

function z=Function_for_reaction_28(mw364ca1a4_fc56_4138_8031_16341ac865de,mw5b67154e_1851_4ba0_9491_7a14b2064c42,mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9), z=(mw5b67154e_1851_4ba0_9491_7a14b2064c42*mw364ca1a4_fc56_4138_8031_16341ac865de*mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9);end

function z=Function_for_reaction_24(mw202bb744_d70a_4cf2_b2db_0d9d360bdfb5,mw78198c86_4b16_4117_8592_6a95c3953126,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mw202bb744_d70a_4cf2_b2db_0d9d360bdfb5*mw78198c86_4b16_4117_8592_6a95c3953126*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_25(mw3288f227_0208_435a_a41c_b1778f50008c,mwf26f605f_29e9_4454_834c_7b3edab4bbc2,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mw3288f227_0208_435a_a41c_b1778f50008c*mwf26f605f_29e9_4454_834c_7b3edab4bbc2*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_26(mw10b15557_55f5_4525_b19d_161b056f5791,mwe250484c_acc9_4453_9eb6_49cda54b2f1e,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mwe250484c_acc9_4453_9eb6_49cda54b2f1e*mw10b15557_55f5_4525_b19d_161b056f5791*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_27(mw2ba0a425_a224_4fa1_affc_bcc206027a3e,mw58370246_a992_4253_8029_12fbb07a417d,mw8f586bdf_8d42_49c1_807a_670a1c49cbd9,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mw8f586bdf_8d42_49c1_807a_670a1c49cbd9*mw58370246_a992_4253_8029_12fbb07a417d*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/(mw2ba0a425_a224_4fa1_affc_bcc206027a3e+mw58370246_a992_4253_8029_12fbb07a417d*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22)/mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_34(mw4fc13b75_10cc_41fb_b9f8_1ce95fccae73,mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9,mwe808b2da_9ed2_421e_a8d9_3c3534d42ee0), z=(mwe808b2da_9ed2_421e_a8d9_3c3534d42ee0*mw4fc13b75_10cc_41fb_b9f8_1ce95fccae73*mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9);end

function z=Function_for_reaction_29(mw49322d55_ad63_4e7c_b1eb_42835c9b577a,mw664a2e7f_0c35_423c_ac5d_34090e629a69,mw7246cef3_7a78_43b0_acb7_21533c394daa,mw85ae78ed_34f7_460c_b906_1f512a83810c), z=(mw7246cef3_7a78_43b0_acb7_21533c394daa*mw85ae78ed_34f7_460c_b906_1f512a83810c*mw664a2e7f_0c35_423c_ac5d_34090e629a69*mw49322d55_ad63_4e7c_b1eb_42835c9b577a*mw664a2e7f_0c35_423c_ac5d_34090e629a69/mw664a2e7f_0c35_423c_ac5d_34090e629a69);end

function z=Function_for_reaction_30(mw2081c907_9d37_48a0_8581_8b8f3d5f7148,mw664a2e7f_0c35_423c_ac5d_34090e629a69,mwd7270399_0429_4c85_920a_de2e0ae74440), z=(mw2081c907_9d37_48a0_8581_8b8f3d5f7148*mwd7270399_0429_4c85_920a_de2e0ae74440*mw664a2e7f_0c35_423c_ac5d_34090e629a69);end

function z=Function_for_reaction_31(mw7f261959_39d2_4e8b_92b6_4466c2504544,mw91a51f27_e4be_41a6_a967_b6a63c909652,mwd7b0f9fb_1180_47bb_b8c0_be2f89aa1c59,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mw91a51f27_e4be_41a6_a967_b6a63c909652*mw7f261959_39d2_4e8b_92b6_4466c2504544*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/(mwd7b0f9fb_1180_47bb_b8c0_be2f89aa1c59+mw7f261959_39d2_4e8b_92b6_4466c2504544*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22)/mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_32(mw2a60d98a_bc06_4e05_b965_c920da8987dc,mw3c07a768_8e7a_49bb_8a1d_fdc92192f92b,mw7f261959_39d2_4e8b_92b6_4466c2504544,mw9704b67a_2c16_4ac7_a311_2096ab426758,mwacd53f34_4935_4b6a_8267_024f0d966c8c,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mw3c07a768_8e7a_49bb_8a1d_fdc92192f92b*mw7f261959_39d2_4e8b_92b6_4466c2504544*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/(mw9704b67a_2c16_4ac7_a311_2096ab426758*(1+mwacd53f34_4935_4b6a_8267_024f0d966c8c*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/mw2a60d98a_bc06_4e05_b965_c920da8987dc)+mw7f261959_39d2_4e8b_92b6_4466c2504544*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22)/mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_33(mw9ca6d980_6fbd_4207_9f2c_c05e2b5b0502,mwbe46ba92_97de_4cc4_970d_2dec54671573,mwcffa9e49_67c6_4908_9314_6c16030c8989,mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9,mwf32cef57_32ba_4c0f_bbaf_bbc90af4a8aa), z=(mwf32cef57_32ba_4c0f_bbaf_bbc90af4a8aa*(mwbe46ba92_97de_4cc4_970d_2dec54671573*mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9)^mwcffa9e49_67c6_4908_9314_6c16030c8989/(mw9ca6d980_6fbd_4207_9f2c_c05e2b5b0502+(mwbe46ba92_97de_4cc4_970d_2dec54671573*mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9)^mwcffa9e49_67c6_4908_9314_6c16030c8989)/mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9);end

function z=Function_for_reaction_35(mw287bd1ba_fbc1_43a0_94ab_38a6336bbebb,mw2db26dbd_dda3_4770_b923_d2725a80ccba,mw55b6f083_2b28_4a1a_ab90_82a751525d72,mwb86b112e_674a_4e98_8ca4_3d0273a134d4,mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9), z=(mwb86b112e_674a_4e98_8ca4_3d0273a134d4*(mw55b6f083_2b28_4a1a_ab90_82a751525d72*mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9)^mw2db26dbd_dda3_4770_b923_d2725a80ccba/(mw287bd1ba_fbc1_43a0_94ab_38a6336bbebb+(mw55b6f083_2b28_4a1a_ab90_82a751525d72*mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9)^mw2db26dbd_dda3_4770_b923_d2725a80ccba)/mwdfcbcdb1_3058_4a8b_9166_5b5e144c52c9);end

function z=Function_for_reaction_14(mw1aca690a_9ee1_460f_bc28_780fb04c1a32,mwb9a40fab_a7c9_4984_805f_045fefc4ff32,mwf604d18f_ae32_4d08_bfef_f778aae8f24b,mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22), z=(mwf604d18f_ae32_4d08_bfef_f778aae8f24b*mwb9a40fab_a7c9_4984_805f_045fefc4ff32*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22/(mw1aca690a_9ee1_460f_bc28_780fb04c1a32+mwb9a40fab_a7c9_4984_805f_045fefc4ff32*mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22)/mwfef402b9_4b7e_4fbd_bba2_ff8998ab0b22);end

function z=Function_for_reaction_1(mw664a2e7f_0c35_423c_ac5d_34090e629a69,mw763cffc8_c121_4004_afdb_97e9de9f0081,mwa244ea2a_3e41_473b_9ae7_d0db512fc366,mwf80a94ba_03ba_44f0_b793_4f60c20fd074,mwfaacd7f7_6aa9_4e6c_a7d8_281f2022ba2f), z=(mwf80a94ba_03ba_44f0_b793_4f60c20fd074*mwfaacd7f7_6aa9_4e6c_a7d8_281f2022ba2f*mw664a2e7f_0c35_423c_ac5d_34090e629a69*mwa244ea2a_3e41_473b_9ae7_d0db512fc366*mw664a2e7f_0c35_423c_ac5d_34090e629a69*mw763cffc8_c121_4004_afdb_97e9de9f0081*mw664a2e7f_0c35_423c_ac5d_34090e629a69/mw664a2e7f_0c35_423c_ac5d_34090e629a69);end

function z=Function_for_reaction_2(mw6339814d_af4c_4eee_9455_7e20795f6aeb,mw664a2e7f_0c35_423c_ac5d_34090e629a69,mwce7a28b5_2f60_4228_a88f_ccd3a6213c3e), z=(mwce7a28b5_2f60_4228_a88f_ccd3a6213c3e*mw6339814d_af4c_4eee_9455_7e20795f6aeb*mw664a2e7f_0c35_423c_ac5d_34090e629a69);end

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


