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
% Model name = Sen2013 - Phospholipid Synthesis in P.knowlesi
%
% is http://identifiers.org/biomodels.db/MODEL1310130000
% is http://identifiers.org/biomodels.db/BIOMD0000000495
% isDescribedBy http://identifiers.org/pubmed/24209716
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(1) = 1.0E-4;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 5.0E-5;
	x0(10) = 0.0;
	x0(11) = 0.0;


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

% Compartment: id = mw81b30d38_6ef3_4391_b826_e6c3cc210196, name = unnamed, constant
	compartment_mw81b30d38_6ef3_4391_b826_e6c3cc210196=1.0;
% Parameter:   id =  mwee07eca4_0806_4cc3_a6ab_9226ee79be6c, name = Vm1
	global_par_mwee07eca4_0806_4cc3_a6ab_9226ee79be6c=3.40936490738966E-6;
% Parameter:   id =  mw8f20c25d_9700_4822_b5f9_fe243e001091, name = km1
	global_par_mw8f20c25d_9700_4822_b5f9_fe243e001091=3.62894258752347E-4;
% Parameter:   id =  mw7ce1b6a3_e65e_4aaa_9c32_aeefb420f0ea, name = Vm2
	global_par_mw7ce1b6a3_e65e_4aaa_9c32_aeefb420f0ea=1.30568052867489E-6;
% Parameter:   id =  mw85485398_9f97_408c_bca6_90f0a8377eae, name = km2
	global_par_mw85485398_9f97_408c_bca6_90f0a8377eae=7.96722533770371E-4;
% Parameter:   id =  mw798d0b02_925e_471b_a372_526d681cc370, name = Vm3
	global_par_mw798d0b02_925e_471b_a372_526d681cc370=2.620389955953E-6;
% Parameter:   id =  mwd3807289_133c_4621_8087_366621f553d3, name = km3
	global_par_mwd3807289_133c_4621_8087_366621f553d3=2.39591245105385E-5;
% Parameter:   id =  mw2439178f_a48f_4425_82f9_13267b917b85, name = Vm4
	global_par_mw2439178f_a48f_4425_82f9_13267b917b85=8.62083015294042E-6;
% Parameter:   id =  mw5c4edb54_cfd9_43af_b70b_e9ff1b44dc55, name = km4
	global_par_mw5c4edb54_cfd9_43af_b70b_e9ff1b44dc55=1.08608492867695E-4;
% Parameter:   id =  mw961dacfa_f443_4814_ad6c_a27c04e74268, name = Vm5
	global_par_mw961dacfa_f443_4814_ad6c_a27c04e74268=1.0780611108133E-6;
% Parameter:   id =  mw15ba24b5_7a87_479e_9be7_261b12cbdb63, name = km5
	global_par_mw15ba24b5_7a87_479e_9be7_261b12cbdb63=1.22223738254533E-4;
% Parameter:   id =  mw9f56ecc5_c22b_4f8c_8b82_90e2a6d9e364, name = Vm6
	global_par_mw9f56ecc5_c22b_4f8c_8b82_90e2a6d9e364=2.24518521682572E-6;
% Parameter:   id =  mw18bbabcb_d229_4d91_99f1_484f2ba8f020, name = km6
	global_par_mw18bbabcb_d229_4d91_99f1_484f2ba8f020=2.03868171233541E-4;
% Parameter:   id =  mwba0debe9_c575_4f5a_a980_e2b6857ff053, name = Vm7
	global_par_mwba0debe9_c575_4f5a_a980_e2b6857ff053=5.61352652271706E-6;
% Parameter:   id =  mwffba86ff_a560_401a_93d6_c0e30bf42c87, name = km7
	global_par_mwffba86ff_a560_401a_93d6_c0e30bf42c87=2.27368268903121E-4;
% Parameter:   id =  mw231a5907_d1ee_4a43_83ab_abb72f19502c, name = Vm8
	global_par_mw231a5907_d1ee_4a43_83ab_abb72f19502c=4.12788404046025E-7;
% Parameter:   id =  mwaf289d12_4291_4651_8bd1_82e321e476a4, name = km8
	global_par_mwaf289d12_4291_4651_8bd1_82e321e476a4=3.10498877738431E-5;
% Parameter:   id =  mw1a53a2cb_a3a7_40d7_ae07_4d93ad1123a3, name = Vm9
	global_par_mw1a53a2cb_a3a7_40d7_ae07_4d93ad1123a3=0.00141678261342411;
% Parameter:   id =  mw4035a2c9_3cda_467c_83cc_8f9c2902abaf, name = km9
	global_par_mw4035a2c9_3cda_467c_83cc_8f9c2902abaf=0.321125432799976;
% Parameter:   id =  mwf7d1ff9f_1734_4232_9a96_037b31b193b0, name = Vm10
	global_par_mwf7d1ff9f_1734_4232_9a96_037b31b193b0=6.97333029651601E-7;
% Parameter:   id =  mw7d57aa6b_1bfb_4472_b555_919263d9eaf9, name = km10
	global_par_mw7d57aa6b_1bfb_4472_b555_919263d9eaf9=3.76085190209901E-6;
% Parameter:   id =  mw5ffad843_5f02_419d_ba99_6e1f9b7e6b7b, name = Vm11
	global_par_mw5ffad843_5f02_419d_ba99_6e1f9b7e6b7b=8.99054709659885E-5;
% Parameter:   id =  mw3046ca21_42a2_4a4b_89c4_9d6ca3d927c5, name = km11
	global_par_mw3046ca21_42a2_4a4b_89c4_9d6ca3d927c5=0.171122974053956;
% Parameter:   id =  mw87bb1238_3292_467e_bfe3_ff7f1e64a351, name = Vm12
	global_par_mw87bb1238_3292_467e_bfe3_ff7f1e64a351=1.5662833197895E-6;
% Parameter:   id =  mw371071cd_ec20_4517_acc1_08dfdc871e87, name = km12
	global_par_mw371071cd_ec20_4517_acc1_08dfdc871e87=2.41308392167819E-5;
% Parameter:   id =  mw5b225cdc_783f_4a15_93db_e960a2398b8e, name = Vm13
	global_par_mw5b225cdc_783f_4a15_93db_e960a2398b8e=1.53754224136353E-6;
% Parameter:   id =  mw27f524cb_75b3_401c_8533_99d6f27af654, name = km13
	global_par_mw27f524cb_75b3_401c_8533_99d6f27af654=2.03777063277265E-4;
% Parameter:   id =  mwc623d82f_a94e_4460_9aed_444597a728c2, name = Vm14
	global_par_mwc623d82f_a94e_4460_9aed_444597a728c2=7.7375270429582E-4;
% Parameter:   id =  mwbf296afc_5e4f_4819_8028_06b20d7af7ca, name = km14
	global_par_mwbf296afc_5e4f_4819_8028_06b20d7af7ca=0.155164586398126;
% Parameter:   id =  mw91e15e1e_c73e_4866_ab2b_8225a32b7610, name = Vm15
	global_par_mw91e15e1e_c73e_4866_ab2b_8225a32b7610=2.32432741134546E-7;
% Parameter:   id =  mwf5cecb8f_89f8_4fba_b39b_b517d0bef2ce, name = km15
	global_par_mwf5cecb8f_89f8_4fba_b39b_b517d0bef2ce=1.02326862282225E-4;
% Parameter:   id =  mwff26437c_166b_4946_ad35_f13df6145780, name = Vm16
	global_par_mwff26437c_166b_4946_ad35_f13df6145780=5.55658410000431E-7;
% Parameter:   id =  mw284c519a_cc2b_4a98_99ce_5a4471af99e1, name = km16
	global_par_mw284c519a_cc2b_4a98_99ce_5a4471af99e1=3.04072645117622E-5;
% Parameter:   id =  mw2cd81e51_eb11_4e2c_b609_b2f802438a6b, name = kf17
	global_par_mw2cd81e51_eb11_4e2c_b609_b2f802438a6b=5.0E-4;
% Parameter:   id =  mwff99ad6c_8951_4d58_a836_cf2d3d08ac86, name = kb17
	global_par_mwff99ad6c_8951_4d58_a836_cf2d3d08ac86=1.32810241970949E-4;

% Reaction: id = mw79830677_2d7e_4f49_9d0b_f05fe026749f, name = R1
	reaction_mw79830677_2d7e_4f49_9d0b_f05fe026749f=global_par_mwee07eca4_0806_4cc3_a6ab_9226ee79be6c*x(1)/(global_par_mw8f20c25d_9700_4822_b5f9_fe243e001091+x(1));

% Reaction: id = mw155447fb_ce5b_4ba2_bd74_434951481a78, name = R2
	reaction_mw155447fb_ce5b_4ba2_bd74_434951481a78=global_par_mw7ce1b6a3_e65e_4aaa_9c32_aeefb420f0ea*x(2)/(global_par_mw85485398_9f97_408c_bca6_90f0a8377eae+x(2));

% Reaction: id = mw4c9aa283_577e_4b6c_ae5a_c96f62dbbb08, name = R3
	reaction_mw4c9aa283_577e_4b6c_ae5a_c96f62dbbb08=global_par_mw798d0b02_925e_471b_a372_526d681cc370*x(2)/(global_par_mwd3807289_133c_4621_8087_366621f553d3+x(2));

% Reaction: id = mw55fba323_0865_4254_a6e9_09acd2b4a10f, name = R4
	reaction_mw55fba323_0865_4254_a6e9_09acd2b4a10f=global_par_mw2439178f_a48f_4425_82f9_13267b917b85*x(4)/(global_par_mw5c4edb54_cfd9_43af_b70b_e9ff1b44dc55+x(4));

% Reaction: id = mwb8420f59_69c3_4707_918c_2e06bedff243, name = R5
	reaction_mwb8420f59_69c3_4707_918c_2e06bedff243=global_par_mw961dacfa_f443_4814_ad6c_a27c04e74268*x(5)/(global_par_mw15ba24b5_7a87_479e_9be7_261b12cbdb63+x(5));

% Reaction: id = mwc9170c21_608b_4bd7_b2d0_f359d045da17, name = R6
	reaction_mwc9170c21_608b_4bd7_b2d0_f359d045da17=global_par_mw9f56ecc5_c22b_4f8c_8b82_90e2a6d9e364*x(3)/(global_par_mw18bbabcb_d229_4d91_99f1_484f2ba8f020+x(3));

% Reaction: id = mwb47b4c45_fac9_49e6_a6a4_87b9050ddfbb, name = R7
	reaction_mwb47b4c45_fac9_49e6_a6a4_87b9050ddfbb=global_par_mwba0debe9_c575_4f5a_a980_e2b6857ff053*x(5)/(global_par_mwffba86ff_a560_401a_93d6_c0e30bf42c87+x(5));

% Reaction: id = mw4f62d07e_217b_4602_b6fe_548af112eec8, name = R8
	reaction_mw4f62d07e_217b_4602_b6fe_548af112eec8=global_par_mw231a5907_d1ee_4a43_83ab_abb72f19502c*x(6)/(global_par_mwaf289d12_4291_4651_8bd1_82e321e476a4+x(6));

% Reaction: id = mw307551ca_91cc_4634_bba5_0e3ecd38cfdd, name = R9
	reaction_mw307551ca_91cc_4634_bba5_0e3ecd38cfdd=global_par_mw1a53a2cb_a3a7_40d7_ae07_4d93ad1123a3*x(7)/(global_par_mw4035a2c9_3cda_467c_83cc_8f9c2902abaf+x(7));

% Reaction: id = mw15bb92b6_4cff_4a41_b815_c1d904618e57, name = R10
	reaction_mw15bb92b6_4cff_4a41_b815_c1d904618e57=global_par_mwf7d1ff9f_1734_4232_9a96_037b31b193b0*x(8)/(global_par_mw7d57aa6b_1bfb_4472_b555_919263d9eaf9+x(8));

% Reaction: id = mw106407fc_e33f_45aa_b5ae_258bd4790633, name = R11
	reaction_mw106407fc_e33f_45aa_b5ae_258bd4790633=global_par_mw5ffad843_5f02_419d_ba99_6e1f9b7e6b7b*x(7)/(global_par_mw3046ca21_42a2_4a4b_89c4_9d6ca3d927c5+x(7));

% Reaction: id = mwfb854977_51ea_4daa_b84e_3bcb2fcccd39, name = R12
	reaction_mwfb854977_51ea_4daa_b84e_3bcb2fcccd39=global_par_mw87bb1238_3292_467e_bfe3_ff7f1e64a351*x(8)/(global_par_mw371071cd_ec20_4517_acc1_08dfdc871e87+x(8));

% Reaction: id = mwd71cb6c2_6420_46b9_ab17_eedc7b0fd8dc, name = R13
	reaction_mwd71cb6c2_6420_46b9_ab17_eedc7b0fd8dc=global_par_mw5b225cdc_783f_4a15_93db_e960a2398b8e*x(3)/(global_par_mw27f524cb_75b3_401c_8533_99d6f27af654+x(3));

% Reaction: id = mwdd7079dc_8d70_41b7_a369_3334522cdd13, name = R14
	reaction_mwdd7079dc_8d70_41b7_a369_3334522cdd13=global_par_mwc623d82f_a94e_4460_9aed_444597a728c2*x(3)/(global_par_mwbf296afc_5e4f_4819_8028_06b20d7af7ca+x(3));

% Reaction: id = mwa25d1a3d_bbd9_41b8_8274_236f9d67bb60, name = R15
	reaction_mwa25d1a3d_bbd9_41b8_8274_236f9d67bb60=global_par_mw91e15e1e_c73e_4866_ab2b_8225a32b7610*x(9)/(global_par_mwf5cecb8f_89f8_4fba_b39b_b517d0bef2ce+x(9));

% Reaction: id = mw185e644d_6f10_499f_a3a6_5a47d7ba2eef, name = R16
	reaction_mw185e644d_6f10_499f_a3a6_5a47d7ba2eef=global_par_mwff26437c_166b_4946_ad35_f13df6145780*x(10)/(global_par_mw284c519a_cc2b_4a98_99ce_5a4471af99e1+x(10));

% Reaction: id = mw5194cffd_f75a_4c61_b60e_23d5b0fea120, name = R17
	reaction_mw5194cffd_f75a_4c61_b60e_23d5b0fea120=global_par_mw2cd81e51_eb11_4e2c_b609_b2f802438a6b*x(11)-global_par_mwff99ad6c_8951_4d58_a836_cf2d3d08ac86*x(4);

	xdot=zeros(11,1);
	
% Species:   id = mw73259e20_240e_4f3a_b2e0_9ca248658898, name = SerE
%WARNING speciesID: mw73259e20_240e_4f3a_b2e0_9ca248658898, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = mw15abaa48_d7d0_4845_ae04_c573d289d495, name = Ser, affected by kineticLaw
	xdot(2) = (1/(compartment_mw81b30d38_6ef3_4391_b826_e6c3cc210196))*(( 1.0 * reaction_mw79830677_2d7e_4f49_9d0b_f05fe026749f) + (-1.0 * reaction_mw155447fb_ce5b_4ba2_bd74_434951481a78) + (-1.0 * reaction_mw4c9aa283_577e_4b6c_ae5a_c96f62dbbb08));
	
% Species:   id = mwfcfaf604_14d4_47a6_b021_226d1fb5497c, name = PS, affected by kineticLaw
	xdot(3) = (1/(compartment_mw81b30d38_6ef3_4391_b826_e6c3cc210196))*(( 1.0 * reaction_mw155447fb_ce5b_4ba2_bd74_434951481a78) + (-1.0 * reaction_mwc9170c21_608b_4bd7_b2d0_f359d045da17) + ( 1.0 * reaction_mw15bb92b6_4cff_4a41_b815_c1d904618e57) + ( 1.0 * reaction_mw106407fc_e33f_45aa_b5ae_258bd4790633) + (-1.0 * reaction_mwd71cb6c2_6420_46b9_ab17_eedc7b0fd8dc));
	
% Species:   id = mw8796c919_9251_4970_8f87_0bca9ecfeb5c, name = Etn, affected by kineticLaw
	xdot(4) = (1/(compartment_mw81b30d38_6ef3_4391_b826_e6c3cc210196))*(( 1.0 * reaction_mw4c9aa283_577e_4b6c_ae5a_c96f62dbbb08) + (-1.0 * reaction_mw55fba323_0865_4254_a6e9_09acd2b4a10f) + ( 1.0 * reaction_mw5194cffd_f75a_4c61_b60e_23d5b0fea120));
	
% Species:   id = mw849ed3fd_87d9_44d2_9f3e_4d631b900d41, name = PEtn, affected by kineticLaw
	xdot(5) = (1/(compartment_mw81b30d38_6ef3_4391_b826_e6c3cc210196))*(( 1.0 * reaction_mw55fba323_0865_4254_a6e9_09acd2b4a10f) + (-1.0 * reaction_mwb8420f59_69c3_4707_918c_2e06bedff243) + (-1.0 * reaction_mwb47b4c45_fac9_49e6_a6a4_87b9050ddfbb));
	
% Species:   id = mwcb834e43_dc57_45ae_9452_f4c10955caf1, name = PCho, affected by kineticLaw
	xdot(6) = (1/(compartment_mw81b30d38_6ef3_4391_b826_e6c3cc210196))*(( 1.0 * reaction_mwb8420f59_69c3_4707_918c_2e06bedff243) + (-1.0 * reaction_mw4f62d07e_217b_4602_b6fe_548af112eec8) + ( 1.0 * reaction_mw185e644d_6f10_499f_a3a6_5a47d7ba2eef));
	
% Species:   id = mwf166ad55_4ff0_49fb_95d2_b657ad7653d5, name = PE, affected by kineticLaw
	xdot(7) = (1/(compartment_mw81b30d38_6ef3_4391_b826_e6c3cc210196))*(( 1.0 * reaction_mwc9170c21_608b_4bd7_b2d0_f359d045da17) + ( 1.0 * reaction_mwb47b4c45_fac9_49e6_a6a4_87b9050ddfbb) + (-1.0 * reaction_mw307551ca_91cc_4634_bba5_0e3ecd38cfdd) + (-1.0 * reaction_mw106407fc_e33f_45aa_b5ae_258bd4790633) + (-1.0 * reaction_mwdd7079dc_8d70_41b7_a369_3334522cdd13));
	
% Species:   id = mwee54b5b4_b8c0_41df_8dda_5b160c5e10a5, name = PC, affected by kineticLaw
	xdot(8) = (1/(compartment_mw81b30d38_6ef3_4391_b826_e6c3cc210196))*(( 1.0 * reaction_mw4f62d07e_217b_4602_b6fe_548af112eec8) + ( 1.0 * reaction_mw307551ca_91cc_4634_bba5_0e3ecd38cfdd) + (-1.0 * reaction_mw15bb92b6_4cff_4a41_b815_c1d904618e57) + (-1.0 * reaction_mwfb854977_51ea_4daa_b84e_3bcb2fcccd39));
	
% Species:   id = mw919f8a86_e702_4b24_9cd7_adad694fcf9b, name = ChoE
%WARNING speciesID: mw919f8a86_e702_4b24_9cd7_adad694fcf9b, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(9) = 0.0;
	
% Species:   id = mw812f63db_4cb0_40ad_b92b_9874be969dfe, name = Cho, affected by kineticLaw
	xdot(10) = (1/(compartment_mw81b30d38_6ef3_4391_b826_e6c3cc210196))*(( 1.0 * reaction_mwa25d1a3d_bbd9_41b8_8274_236f9d67bb60) + (-1.0 * reaction_mw185e644d_6f10_499f_a3a6_5a47d7ba2eef));
	
% Species:   id = mw08818dfe_fb12_45cc_8c1d_d965f142d0ce, name = EtnE
%WARNING speciesID: mw08818dfe_fb12_45cc_8c1d_d965f142d0ce, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(11) = 0.0;
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


