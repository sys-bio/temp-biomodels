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
% Model name = Fernandez2006_ModelA
%
% is http://identifiers.org/biomodels.db/MODEL3492630792
% is http://identifiers.org/biomodels.db/BIOMD0000000152
% isDescribedBy http://identifiers.org/pubmed/17194217
%


function main()
%Initial conditions vector
	x0=zeros(63,1);
	x0(1) = 4.98E-6;
	x0(2) = 2.0E-7;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 1.66E-7;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 2.0E-7;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 1.33E-7;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 2.0E-6;
	x0(44) = 3.32E-7;
	x0(45) = 0.0;
	x0(46) = 0.0;
	x0(47) = 0.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 0.0;
	x0(52) = 0.0;
	x0(53) = 6.64E-6;
	x0(54) = 0.0;
	x0(55) = 0.0;
	x0(56) = 0.0;
	x0(57) = 0.0;
	x0(58) = 0.0;
	x0(59) = 0.0;
	x0(60) = 0.0;
	x0(61) = 0.0;
	x0(62) = 0.0;
	x0(63) = 0.0;


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

% Compartment: id = Spine, name = Spine, constant
	compartment_Spine=1.0E-15;
% Parameter:   id =  k57, name = ca_in
	global_par_k57=2.5E-8;
% Parameter:   id =  cAMP_delay, name = cAMP_delay
	global_par_cAMP_delay=400.0;
% Parameter:   id =  cAMP_Ca_delay, name = cAMP_Ca_delay
	global_par_cAMP_Ca_delay=50.0;
% Parameter:   id =  kon_high, name = kon_high
	global_par_kon_high=6.6E-6;
% Parameter:   id =  spike_duration, name = spike_duration
	global_par_spike_duration=2.0;
% Parameter:   id =  spike_interval, name = spike_interval
	global_par_spike_interval=2.0;
% Parameter:   id =  kon_low, name = kon_low
	global_par_kon_low=2.5E-8;

% Reaction: id = von1, name = D_CDK5_binding	% Local Parameter:   id =  kon1, name = kon1
	reaction_von1_kon1=5600000.0;

	reaction_von1=compartment_Spine*reaction_von1_kon1*x(1)*x(2);

% Reaction: id = voff1, name = D_CDK5_unbinding	% Local Parameter:   id =  koff1, name = koff1
	reaction_voff1_koff1=12.0;

	reaction_voff1=compartment_Spine*x(3)*reaction_voff1_koff1;

% Reaction: id = vcat1, name = DPhospho_by_CDK5_on_75	% Local Parameter:   id =  kcat1, name = kcat1
	reaction_vcat1_kcat1=3.0;

	reaction_vcat1=compartment_Spine*x(3)*reaction_vcat1_kcat1;

% Reaction: id = von2, name = DCDK1_binding	% Local Parameter:   id =  kon2, name = kon2
	reaction_von2_kon2=4400000.0;

	reaction_von2=compartment_Spine*x(1)*x(5)*reaction_von2_kon2;

% Reaction: id = voff2, name = D_CDK1_unbinding	% Local Parameter:   id =  koff2, name = koff2
	reaction_voff2_koff2=12.0;

	reaction_voff2=compartment_Spine*reaction_voff2_koff2*x(6);

% Reaction: id = vcat2, name = D_Phospho_by_CK1_on_137	% Local Parameter:   id =  kcat2, name = kcat2
	reaction_vcat2_kcat2=3.0;

	reaction_vcat2=compartment_Spine*reaction_vcat2_kcat2*x(6);

% Reaction: id = von3, name = D_PKA_binding	% Local Parameter:   id =  kon3, name = kon3
	reaction_von3_kon3=5600000.0;

	reaction_von3=compartment_Spine*x(1)*x(8)*reaction_von3_kon3;

% Reaction: id = voff3, name = D_PKA_unbinding	% Local Parameter:   id =  koff3, name = koff3
	reaction_voff3_koff3=10.8;

	reaction_voff3=compartment_Spine*x(9)*reaction_voff3_koff3;

% Reaction: id = vcat3, name = D_Phospho_by_PKA_on_34	% Local Parameter:   id =  kcat3, name = kcat3
	reaction_vcat3_kcat3=2.7;

	reaction_vcat3=compartment_Spine*x(9)*reaction_vcat3_kcat3;

% Reaction: id = von4, name = D34_CDK5_binding	% Local Parameter:   id =  kon4, name = kon4
	reaction_von4_kon4=5600000.0;

	reaction_von4=compartment_Spine*x(10)*x(2)*reaction_von4_kon4;

% Reaction: id = von5, name = D34_CK1_binding	% Local Parameter:   id =  kon5, name = kon5
	reaction_von5_kon5=4400000.0;

	reaction_von5=compartment_Spine*x(10)*x(5)*reaction_von5_kon5;

% Reaction: id = von6, name = D34_PP2B_binding	% Local Parameter:   id =  kon6, name = kon6
	reaction_von6_kon6=1.0E7;

	reaction_von6=compartment_Spine*x(10)*x(13)*reaction_von6_kon6;

% Reaction: id = voff4, name = D34_CDK5_unbinding	% Local Parameter:   id =  koff4, name = koff4
	reaction_voff4_koff4=12.0;

	reaction_voff4=compartment_Spine*x(11)*reaction_voff4_koff4;

% Reaction: id = vcat4, name = D34_Phospho_by_CDK5_on_75	% Local Parameter:   id =  kcat4, name = kcat4
	reaction_vcat4_kcat4=3.0;

	reaction_vcat4=compartment_Spine*x(11)*reaction_vcat4_kcat4;

% Reaction: id = voff5, name = D34_CK1_unbinding	% Local Parameter:   id =  koff5, name = koff5
	reaction_voff5_koff5=12.0;

	reaction_voff5=compartment_Spine*x(12)*reaction_voff5_koff5;

% Reaction: id = vcat5, name = D34_Phospho_by_CK1_on_137	% Local Parameter:   id =  kcat5, name = kcat5
	reaction_vcat5_kcat5=3.0;

	reaction_vcat5=compartment_Spine*x(12)*reaction_vcat5_kcat5;

% Reaction: id = vcat6, name = D34_Dephospho_by_PP2B	% Local Parameter:   id =  kcat6, name = kcat6
	reaction_vcat6_kcat6=4.0;

	reaction_vcat6=compartment_Spine*x(14)*reaction_vcat6_kcat6;

% Reaction: id = voff6, name = D34_PP2B_unbinding	% Local Parameter:   id =  koff6, name = koff6
	reaction_voff6_koff6=16.0;

	reaction_voff6=compartment_Spine*x(14)*reaction_voff6_koff6;

% Reaction: id = von7, name = D75_CK1_binding	% Local Parameter:   id =  kon7, name = kon7
	reaction_von7_kon7=4400000.0;

	reaction_von7=compartment_Spine*x(4)*x(5)*reaction_von7_kon7;

% Reaction: id = von8, name = D75_PKA_binding	% Local Parameter:   id =  kon8, name = kon8
	reaction_von8_kon8=5600000.0;

	reaction_von8=compartment_Spine*x(4)*x(8)*reaction_von8_kon8;

% Reaction: id = von9, name = D75_PP2A_binding	% Local Parameter:   id =  kon9, name = kon9
	reaction_von9_kon9=3800000.0;

	reaction_von9=compartment_Spine*x(4)*x(19)*reaction_von9_kon9;

% Reaction: id = von10, name = D75_PP2AP_binding	% Local Parameter:   id =  kon10, name = kon10
	reaction_von10_kon10=1.7E7;

	reaction_von10=compartment_Spine*x(4)*x(21)*reaction_von10_kon10;

% Reaction: id = voff7, name = D75_CK1_unbinding	% Local Parameter:   id =  koff7, name = koff7
	reaction_voff7_koff7=12.0;

	reaction_voff7=compartment_Spine*x(17)*reaction_voff7_koff7;

% Reaction: id = vcat7, name = D75_Phospho_by_CK1_on_137	% Local Parameter:   id =  kcat7, name = kcat7
	reaction_vcat7_kcat7=3.0;

	reaction_vcat7=compartment_Spine*x(17)*reaction_vcat7_kcat7;

% Reaction: id = vcat8, name = D75_Phospho_by_PKA_on_34	% Local Parameter:   id =  kcat8, name = kcat8
	reaction_vcat8_kcat8=0.0;

	reaction_vcat8=compartment_Spine*x(18)*reaction_vcat8_kcat8;

% Reaction: id = voff8, name = D75_PKA_unbinding	% Local Parameter:   id =  koff8, name = koff8
	reaction_voff8_koff8=10.8;

	reaction_voff8=compartment_Spine*x(18)*reaction_voff8_koff8;

% Reaction: id = vcat9, name = D75_dephospho_by_PP2A	% Local Parameter:   id =  kcat9, name = kcat9
	reaction_vcat9_kcat9=10.0;

	reaction_vcat9=compartment_Spine*x(20)*reaction_vcat9_kcat9;

% Reaction: id = voff9, name = D75_PP2A_unbinding	% Local Parameter:   id =  koff9, name = koff9
	reaction_voff9_koff9=24.0;

	reaction_voff9=compartment_Spine*x(20)*reaction_voff9_koff9;

% Reaction: id = vcat10, name = D75_dephospho_by_PP2AP	% Local Parameter:   id =  kcat10, name = kcat10
	reaction_vcat10_kcat10=24.0;

	reaction_vcat10=compartment_Spine*x(22)*reaction_vcat10_kcat10;

% Reaction: id = voff10, name = D75_PP2AP_unbinding	% Local Parameter:   id =  koff10, name = koff10
	reaction_voff10_koff10=40.0;

	reaction_voff10=compartment_Spine*x(22)*reaction_voff10_koff10;

% Reaction: id = von11, name = D137_CDK5_binding	% Local Parameter:   id =  kon11, name = kon11
	reaction_von11_kon11=5600000.0;

	reaction_von11=compartment_Spine*x(7)*x(2)*reaction_von11_kon11;

% Reaction: id = von12, name = D137_PKA_binding	% Local Parameter:   id =  kon12, name = kon12
	reaction_von12_kon12=5600000.0;

	reaction_von12=compartment_Spine*x(7)*x(8)*reaction_von12_kon12;

% Reaction: id = von13, name = D137_PP2C_binding	% Local Parameter:   id =  kon13, name = kon13
	reaction_von13_kon13=7500000.0;

	reaction_von13=compartment_Spine*x(7)*x(27)*reaction_von13_kon13;

% Reaction: id = voff11, name = D137_CDK5_unbinding	% Local Parameter:   id =  koff11, name = koff11
	reaction_voff11_koff11=12.0;

	reaction_voff11=compartment_Spine*x(24)*reaction_voff11_koff11;

% Reaction: id = vcat11, name = D137_Phospho_by_CDK5_on_75	% Local Parameter:   id =  kcat11, name = kcat11
	reaction_vcat11_kcat11=3.0;

	reaction_vcat11=compartment_Spine*x(24)*reaction_vcat11_kcat11;

% Reaction: id = voff12, name = D137_PKA_unbinding	% Local Parameter:   id =  koff12, name = koff12
	reaction_voff12_koff12=10.8;

	reaction_voff12=compartment_Spine*x(25)*reaction_voff12_koff12;

% Reaction: id = vcat12, name = D137_phospho_by_PKA_on_34	% Local Parameter:   id =  kcat12, name = kcat12
	reaction_vcat12_kcat12=2.7;

	reaction_vcat12=compartment_Spine*x(25)*reaction_vcat12_kcat12;

% Reaction: id = vcat13, name = D137_dephospho_by_PP2C	% Local Parameter:   id =  kcat13, name = kcat13
	reaction_vcat13_kcat13=3.0;

	reaction_vcat13=compartment_Spine*x(26)*reaction_vcat13_kcat13;

% Reaction: id = voff13, name = D137_PP2C_unbinding	% Local Parameter:   id =  koff13, name = koff13
	reaction_voff13_koff13=12.0;

	reaction_voff13=compartment_Spine*x(26)*reaction_voff13_koff13;

% Reaction: id = von14, name = D34:75_CK1_binding	% Local Parameter:   id =  kon14, name = kon14
	reaction_von14_kon14=4400000.0;

	reaction_von14=compartment_Spine*x(15)*x(5)*reaction_von14_kon14;

% Reaction: id = von18, name = D34:137_CDK5_binding	% Local Parameter:   id =  kon18, name = kon18
	reaction_von18_kon18=5600000.0;

	reaction_von18=compartment_Spine*x(16)*x(2)*reaction_von18_kon18;

% Reaction: id = voff18, name = D34:137_CDK5_unbinding	% Local Parameter:   id =  koff18, name = koff18
	reaction_voff18_koff18=12.0;

	reaction_voff18=compartment_Spine*x(29)*reaction_voff18_koff18;

% Reaction: id = voff14, name = D34:75_CK1_unbinding	% Local Parameter:   id =  koff14, name = koff14
	reaction_voff14_koff14=12.0;

	reaction_voff14=compartment_Spine*x(28)*reaction_voff14_koff14;

% Reaction: id = vcat14, name = D34:75_phospho_by_CK1_on_137	% Local Parameter:   id =  kcat14, name = kcat14
	reaction_vcat14_kcat14=3.0;

	reaction_vcat14=compartment_Spine*x(28)*reaction_vcat14_kcat14;

% Reaction: id = vcat18, name = D34:137_phospho_by_CDK5_on_75	% Local Parameter:   id =  kcat18, name = kcat18
	reaction_vcat18_kcat18=3.0;

	reaction_vcat18=compartment_Spine*x(29)*reaction_vcat18_kcat18;

% Reaction: id = von21, name = D75:137_PKA_binding	% Local Parameter:   id =  kon21, name = kon21
	reaction_von21_kon21=5600000.0;

	reaction_von21=compartment_Spine*x(23)*x(8)*reaction_von21_kon21;

% Reaction: id = vcat21, name = D75:137_phospho_by_PKA_on_34	% Local Parameter:   id =  kcat21, name = kcat21
	reaction_vcat21_kcat21=0.0;

	reaction_vcat21=compartment_Spine*x(31)*reaction_vcat21_kcat21;

% Reaction: id = voff21, name = D75:137_PKA_unbinding	% Local Parameter:   id =  koff21, name = koff21
	reaction_voff21_koff21=10.8;

	reaction_voff21=compartment_Spine*x(31)*reaction_voff21_koff21;

% Reaction: id = von17, name = D34:75_PP2B_binding	% Local Parameter:   id =  kon17, name = kon17
	reaction_von17_kon17=1.0E7;

	reaction_von17=compartment_Spine*x(15)*x(13)*reaction_von17_kon17;

% Reaction: id = voff17, name = D34:75_PP2B_unbinding	% Local Parameter:   id =  koff17, name = koff17
	reaction_voff17_koff17=1600.0;

	reaction_voff17=compartment_Spine*x(32)*reaction_voff17_koff17;

% Reaction: id = vcat17, name = D34:75_dephopsho_by_PP2B_on_34	% Local Parameter:   id =  kcat17, name = kcat17
	reaction_vcat17_kcat17=4.0;

	reaction_vcat17=compartment_Spine*x(32)*reaction_vcat17_kcat17;

% Reaction: id = von19, name = D34:137_PP2B_binding	% Local Parameter:   id =  kon19, name = kon19
	reaction_von19_kon19=75000.0;

	reaction_von19=compartment_Spine*x(16)*x(13)*reaction_von19_kon19;

% Reaction: id = vcat19, name = D34:137_dephospho_by_PP2B_on_34	% Local Parameter:   id =  kcat19, name = kcat19
	reaction_vcat19_kcat19=0.03;

	reaction_vcat19=compartment_Spine*x(33)*reaction_vcat19_kcat19;

% Reaction: id = voff19, name = D34:137_PP2B_unbinding	% Local Parameter:   id =  koff19, name = koff19
	reaction_voff19_koff19=0.12;

	reaction_voff19=compartment_Spine*x(33)*reaction_voff19_koff19;

% Reaction: id = von27, name = D34:75:137_PP2B_binding	% Local Parameter:   id =  kon27, name = kon27
	reaction_von27_kon27=75000.0;

	reaction_von27=compartment_Spine*x(30)*x(13)*reaction_von27_kon27;

% Reaction: id = voff27, name = D34:75:137_PP2B_unbinding	% Local Parameter:   id =  koff27, name = koff27
	reaction_voff27_koff27=120.0;

	reaction_voff27=compartment_Spine*x(34)*reaction_voff27_koff27;

% Reaction: id = vcat27, name = D34:75:137_dephospho_by_PP2B_on_34	% Local Parameter:   id =  kcat27, name = kcat27
	reaction_vcat27_kcat27=0.03;

	reaction_vcat27=compartment_Spine*x(34)*reaction_vcat27_kcat27;

% Reaction: id = von15, name = D34:75_PP2A_binding	% Local Parameter:   id =  kon15, name = kon15
	reaction_von15_kon15=3800000.0;

	reaction_von15=compartment_Spine*x(15)*x(19)*reaction_von15_kon15;

% Reaction: id = vcat15, name = D34:75_dephospho_by_PP2A_on_75	% Local Parameter:   id =  kcat15, name = kcat15
	reaction_vcat15_kcat15=10.0;

	reaction_vcat15=compartment_Spine*x(35)*reaction_vcat15_kcat15;

% Reaction: id = voff15, name = D34:75_PP2A_unbinding	% Local Parameter:   id =  koff15, name = koff15
	reaction_voff15_koff15=24.0;

	reaction_voff15=compartment_Spine*x(35)*reaction_voff15_koff15;

% Reaction: id = von22, name = D75:137_PP2A_binding	% Local Parameter:   id =  kon22, name = kon22
	reaction_von22_kon22=3800000.0;

	reaction_von22=compartment_Spine*x(23)*x(19)*reaction_von22_kon22;

% Reaction: id = vcat22, name = D75:137_dephospho_by_PP2A_on_75	% Local Parameter:   id =  kcat22, name = kcat22
	reaction_vcat22_kcat22=10.0;

	reaction_vcat22=compartment_Spine*x(36)*reaction_vcat22_kcat22;

% Reaction: id = voff22, name = D75:137_PP2A_unbinding	% Local Parameter:   id =  koff22, name = koff22
	reaction_voff22_koff22=24.0;

	reaction_voff22=compartment_Spine*x(36)*reaction_voff22_koff22;

% Reaction: id = von25, name = D34:75:137_PP2A_binding	% Local Parameter:   id =  kon25, name = kon25
	reaction_von25_kon25=3800000.0;

	reaction_von25=compartment_Spine*x(30)*x(19)*reaction_von25_kon25;

% Reaction: id = vcat25, name = D34:75:137_dephospho_by_PP2A_on_75	% Local Parameter:   id =  kcat25, name = kcat25
	reaction_vcat25_kcat25=10.0;

	reaction_vcat25=compartment_Spine*x(37)*reaction_vcat25_kcat25;

% Reaction: id = voff25, name = D34:75:137_PP2A_unbinding	% Local Parameter:   id =  koff25, name = koff25
	reaction_voff25_koff25=24.0;

	reaction_voff25=compartment_Spine*x(37)*reaction_voff25_koff25;

% Reaction: id = von16, name = D34:75_PP2AP_binding	% Local Parameter:   id =  kon16, name = kon16
	reaction_von16_kon16=1.7E7;

	reaction_von16=compartment_Spine*x(15)*x(21)*reaction_von16_kon16;

% Reaction: id = vcat16, name = D34:75_dephospho_by_PP2AP_on_75	% Local Parameter:   id =  kcat16, name = kcat16
	reaction_vcat16_kcat16=24.0;

	reaction_vcat16=compartment_Spine*x(38)*reaction_vcat16_kcat16;

% Reaction: id = voff16, name = D34:75_PP2AP_unbinding	% Local Parameter:   id =  koff16, name = koff16
	reaction_voff16_koff16=40.0;

	reaction_voff16=compartment_Spine*x(38)*reaction_voff16_koff16;

% Reaction: id = von23, name = D75:137_PP2AP_binding	% Local Parameter:   id =  kon23, name = kon23
	reaction_von23_kon23=1.7E7;

	reaction_von23=compartment_Spine*x(23)*x(21)*reaction_von23_kon23;

% Reaction: id = vcat23, name = D75:137_dephospho_by_PP2AP_on_75	% Local Parameter:   id =  kcat23, name = kcat23
	reaction_vcat23_kcat23=24.0;

	reaction_vcat23=compartment_Spine*x(39)*reaction_vcat23_kcat23;

% Reaction: id = voff23, name = D75:137_PP2AP_unbinding	% Local Parameter:   id =  koff23, name = koff23
	reaction_voff23_koff23=40.0;

	reaction_voff23=compartment_Spine*x(39)*reaction_voff23_koff23;

% Reaction: id = vcat26, name = D34:75:137_dephospho_by_PP2AP_on 75	% Local Parameter:   id =  kcat26, name = kcat26
	reaction_vcat26_kcat26=24.0;

	reaction_vcat26=compartment_Spine*x(40)*reaction_vcat26_kcat26;

% Reaction: id = von26, name = D34:75:137_PP2AP_binding	% Local Parameter:   id =  kon26, name = kon26
	reaction_von26_kon26=1.7E7;

	reaction_von26=compartment_Spine*x(30)*x(21)*reaction_von26_kon26;

% Reaction: id = voff26, name = D34:75:137_PP2AP_unbinding	% Local Parameter:   id =  koff26, name = koff26
	reaction_voff26_koff26=40.0;

	reaction_voff26=compartment_Spine*x(40)*reaction_voff26_koff26;

% Reaction: id = von20, name = D34:137_PP2C_binding	% Local Parameter:   id =  kon20, name = kon20
	reaction_von20_kon20=7500000.0;

	reaction_von20=compartment_Spine*x(16)*x(27)*reaction_von20_kon20;

% Reaction: id = vcat20, name = D34:137_dephospho_by_PP2C_on_137	% Local Parameter:   id =  kcat20, name = kcat20
	reaction_vcat20_kcat20=3.0;

	reaction_vcat20=compartment_Spine*x(41)*reaction_vcat20_kcat20;

% Reaction: id = voff20, name = D34:137_PP2C_unbinding	% Local Parameter:   id =  koff20, name = koff20
	reaction_voff20_koff20=12.0;

	reaction_voff20=compartment_Spine*x(41)*reaction_voff20_koff20;

% Reaction: id = von24, name = D75:137_PP2C_binding	% Local Parameter:   id =  kon24, name = kon24
	reaction_von24_kon24=7500000.0;

	reaction_von24=compartment_Spine*x(23)*x(27)*reaction_von24_kon24;

% Reaction: id = vcat24, name = D75:137_dephospho_by_PP2C_137	% Local Parameter:   id =  kcat24, name = kcat24
	reaction_vcat24_kcat24=3.0;

	reaction_vcat24=compartment_Spine*x(42)*reaction_vcat24_kcat24;

% Reaction: id = voff24, name = D75:137_PP2C_unbinding	% Local Parameter:   id =  koff24, name = koff24
	reaction_voff24_koff24=12.0;

	reaction_voff24=compartment_Spine*x(42)*reaction_voff24_koff24;

% Reaction: id = von28, name = D34:75:137_PP2C_binding	% Local Parameter:   id =  kon28, name = kon28
	reaction_von28_kon28=7500000.0;

	reaction_von28=compartment_Spine*x(30)*x(27)*reaction_von28_kon28;

% Reaction: id = vcat28, name = D34:75:137_dephospho_by_PP2C_on_137	% Local Parameter:   id =  kcat28, name = kcat28
	reaction_vcat28_kcat28=3.0;

	reaction_vcat28=compartment_Spine*x(45)*reaction_vcat28_kcat28;

% Reaction: id = voff28, name = D34:75:137_PP2C_unbinding	% Local Parameter:   id =  koff28, name = koff28
	reaction_voff28_koff28=12.0;

	reaction_voff28=compartment_Spine*x(45)*reaction_voff28_koff28;

% Reaction: id = von29, name = CK1P_PP2B_binding	% Local Parameter:   id =  kon29, name = kon29
	reaction_von29_kon29=3.0E7;

	reaction_von29=compartment_Spine*x(46)*x(13)*reaction_von29_kon29;

% Reaction: id = voff29, name = CK1P_PP2B_unbinding	% Local Parameter:   id =  koff29, name = koff29
	reaction_voff29_koff29=24.0;

	reaction_voff29=compartment_Spine*x(47)*reaction_voff29_koff29;

% Reaction: id = vcat29, name = CK1P_dephospho_by_PP2B	% Local Parameter:   id =  kcat29, name = kcat29
	reaction_vcat29_kcat29=6.0;

	reaction_vcat29=compartment_Spine*x(47)*reaction_vcat29_kcat29;

% Reaction: id = vcat30, name = CK1_phosphorylation	% Local Parameter:   id =  kcat30, name = kcat30
	reaction_vcat30_kcat30=1.0;

	reaction_vcat30=compartment_Spine*x(5)*reaction_vcat30_kcat30;

% Reaction: id = von31, name = PDE_PKA_binding	% Local Parameter:   id =  kon31, name = kon31
	reaction_von31_kon31=6000000.0;

	reaction_von31=compartment_Spine*x(43)*x(8)*reaction_von31_kon31;

% Reaction: id = vcat31, name = PDE_phospho_by_PKA	% Local Parameter:   id =  kcat31, name = kcat31
	reaction_vcat31_kcat31=9.0;

	reaction_vcat31=compartment_Spine*x(48)*reaction_vcat31_kcat31;

% Reaction: id = voff31, name = PDE_PKA_unbinding	% Local Parameter:   id =  koff31, name = koff31
	reaction_voff31_koff31=36.0;

	reaction_voff31=compartment_Spine*x(48)*reaction_voff31_koff31;

% Reaction: id = vcat32, name = PDEP_dephospho	% Local Parameter:   id =  kcat32, name = kcat32
	reaction_vcat32_kcat32=0.1;

	reaction_vcat32=compartment_Spine*x(49)*reaction_vcat32_kcat32;

% Reaction: id = von33, name = PP2A_PKA_binding	% Local Parameter:   id =  kon33, name = kon33
	reaction_von33_kon33=1.0E7;

	reaction_von33=compartment_Spine*x(19)*x(8)*reaction_von33_kon33;

% Reaction: id = voff33, name = PP2A_PKA_unbinding	% Local Parameter:   id =  koff33, name = koff33
	reaction_voff33_koff33=16.0;

	reaction_voff33=compartment_Spine*x(50)*reaction_voff33_koff33;

% Reaction: id = vcat33, name = PP2A_phospho_by_PKA	% Local Parameter:   id =  kcat33, name = kcat33
	reaction_vcat33_kcat33=4.0;

	reaction_vcat33=compartment_Spine*x(50)*reaction_vcat33_kcat33;

% Reaction: id = vcat34, name = PP2AP_dephospho	% Local Parameter:   id =  kcat34, name = kcat34
	reaction_vcat34_kcat34=5.0;

	reaction_vcat34=compartment_Spine*x(21)*reaction_vcat34_kcat34;

% Reaction: id = von35, name = PP2Binactive_Ca_binding	% Local Parameter:   id =  kon35, name = kon35
	reaction_von35_kon35=1.0E15;

	reaction_von35=compartment_Spine*x(44)*x(51)*x(51)*reaction_von35_kon35;

% Reaction: id = von36, name = PP2B_activation	% Local Parameter:   id =  kon36, name = kon36
	reaction_von36_kon36=3.0E15;

	reaction_von36=compartment_Spine*x(52)*x(51)*x(51)*reaction_von36_kon36;

% Reaction: id = voff35, name = PP2BinactiveCa2_Ca_unbinding	% Local Parameter:   id =  koff35, name = koff35
	reaction_voff35_koff35=1.0;

	reaction_voff35=compartment_Spine*x(52)*reaction_voff35_koff35;

% Reaction: id = voff36, name = PP2B_inactivation	% Local Parameter:   id =  koff36, name = koff36
	reaction_voff36_koff36=1.0;

	reaction_voff36=compartment_Spine*x(13)*reaction_voff36_koff36;

% Reaction: id = von37, name = R2C2_cAMP_binding	% Local Parameter:   id =  kon37, name = kon37
	reaction_von37_kon37=5.4E7;

	reaction_von37=compartment_Spine*x(53)*x(54)*reaction_von37_kon37;

% Reaction: id = von38, name = cAMP_R2C2_binding_by_cAMP	% Local Parameter:   id =  kon38, name = kon38
	reaction_von38_kon38=5.4E7;

	reaction_von38=compartment_Spine*x(55)*x(54)*reaction_von38_kon38;

% Reaction: id = von39, name = cAMP2_R2C2_binding_by_cAMP	% Local Parameter:   id =  kon39, name = kon39
	reaction_von39_kon39=7.5E7;

	reaction_von39=compartment_Spine*x(56)*x(54)*reaction_von39_kon39;

% Reaction: id = von40, name = cAMP3_R2C2_binding_by_cAMP	% Local Parameter:   id =  kon40, name = kon40
	reaction_von40_kon40=7.5E7;

	reaction_von40=compartment_Spine*x(57)*x(54)*reaction_von40_kon40;

% Reaction: id = voff37, name = cAMP_R2C2_unbinding	% Local Parameter:   id =  koff37, name = koff37
	reaction_voff37_koff37=33.0;

	reaction_voff37=compartment_Spine*x(55)*reaction_voff37_koff37;

% Reaction: id = voff38, name = cAMP2_R2C2_unbinding	% Local Parameter:   id =  koff38, name = koff38
	reaction_voff38_koff38=33.0;

	reaction_voff38=compartment_Spine*x(56)*reaction_voff38_koff38;

% Reaction: id = voff39, name = cAMP3_R2C2_unbinding	% Local Parameter:   id =  koff39, name = koff39
	reaction_voff39_koff39=110.0;

	reaction_voff39=compartment_Spine*x(57)*reaction_voff39_koff39;

% Reaction: id = voff40, name = cAMP4_R2C2_unbinding	% Local Parameter:   id =  koff40, name = koff40
	reaction_voff40_koff40=32.5;

	reaction_voff40=compartment_Spine*x(58)*reaction_voff40_koff40;

% Reaction: id = von41, name = cAMP4_R2C_PKA_binding	% Local Parameter:   id =  kon41, name = kon41
	reaction_von41_kon41=1.8E7;

	reaction_von41=compartment_Spine*x(59)*x(8)*reaction_von41_kon41;

% Reaction: id = voff41, name = cAMP4_R2C2_PKA_unbinding	% Local Parameter:   id =  koff41, name = koff41
	reaction_voff41_koff41=60.0;

	reaction_voff41=compartment_Spine*x(58)*reaction_voff41_koff41;

% Reaction: id = von42, name = cAMP4_R2_PKA_binding	% Local Parameter:   id =  kon42, name = kon42
	reaction_von42_kon42=1.8E7;

	reaction_von42=compartment_Spine*x(60)*x(8)*reaction_von42_kon42;

% Reaction: id = von43, name = cAMP4_R2C_PKA_unbinding	% Local Parameter:   id =  kon43, name = kon43
	reaction_von43_kon43=60.0;

	reaction_von43=compartment_Spine*x(59)*reaction_von43_kon43;

% Reaction: id = von44, name = cAMP_PDE_binding	% Local Parameter:   id =  kon44, name = kon44
	reaction_von44_kon44=2520000.0;

	reaction_von44=compartment_Spine*x(54)*x(43)*reaction_von44_kon44;

% Reaction: id = voff44, name = cAMP_PDE_unbinding	% Local Parameter:   id =  koff44, name = koff44
	reaction_voff44_koff44=40.0;

	reaction_voff44=compartment_Spine*x(61)*reaction_voff44_koff44;

% Reaction: id = vcat44, name = cAMP_PDE_degradation	% Local Parameter:   id =  kcat44, name = kcat44
	reaction_vcat44_kcat44=10.0;

	reaction_vcat44=compartment_Spine*x(61)*reaction_vcat44_kcat44;

% Reaction: id = von45, name = cAMP_PDEP_binding	% Local Parameter:   id =  kon45, name = kon45
	reaction_von45_kon45=5040000.0;

	reaction_von45=compartment_Spine*x(54)*x(49)*reaction_von45_kon45;

% Reaction: id = voff45, name = cAMP_PDEP_unbinding	% Local Parameter:   id =  koff45, name = koff45
	reaction_voff45_koff45=80.0;

	reaction_voff45=compartment_Spine*x(63)*reaction_voff45_koff45;

% Reaction: id = vcat45, name = cAMP_PDEP_degradation	% Local Parameter:   id =  kcat45, name = kcat45
	reaction_vcat45_kcat45=20.0;

	reaction_vcat45=compartment_Spine*x(63)*reaction_vcat45_kcat45;

% Reaction: id = v57, name = Ca_in
	reaction_v57=compartment_Spine*global_par_k57;

% Reaction: id = v58, name = Ca_destroy	% Local Parameter:   id =  k58, name = k58
	reaction_v58_k58=1.7;

	reaction_v58=compartment_Spine*x(51)*reaction_v58_k58;

% Species:   id = Empty, name = Empty, constant	const_species_Empty=0.0;

%Event: id=cAMP_pulse
	event_cAMP_pulse=time >= global_par_cAMP_delay;

	if(event_cAMP_pulse) 
		x(54)=6.6E-6;
	end

%Event: id=ca_on1
	event_ca_on1=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay);

	if(event_ca_on1) 
		global_par_k57=global_par_kon_high;
	end

%Event: id=ca_on2
	event_ca_on2=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+1*(global_par_spike_duration+global_par_spike_interval));

	if(event_ca_on2) 
		global_par_k57=global_par_kon_high;
	end

%Event: id=ca_off1
	event_ca_off1=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+global_par_spike_duration);

	if(event_ca_off1) 
		global_par_k57=global_par_kon_low;
	end

%Event: id=Ca_on3
	event_Ca_on3=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+2*(global_par_spike_duration+global_par_spike_interval));

	if(event_Ca_on3) 
		global_par_k57=global_par_kon_high;
	end

%Event: id=ca_on4
	event_ca_on4=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+3*(global_par_spike_duration+global_par_spike_interval));

	if(event_ca_on4) 
		global_par_k57=global_par_kon_high;
	end

%Event: id=ca_on5
	event_ca_on5=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+4*(global_par_spike_duration+global_par_spike_interval));

	if(event_ca_on5) 
		global_par_k57=global_par_kon_high;
	end

%Event: id=ca_on6
	event_ca_on6=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+5*(global_par_spike_duration+global_par_spike_interval));

	if(event_ca_on6) 
		global_par_k57=global_par_kon_high;
	end

%Event: id=ca_on7
	event_ca_on7=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+6*(global_par_spike_duration+global_par_spike_interval));

	if(event_ca_on7) 
		global_par_k57=global_par_kon_high;
	end

%Event: id=ca_on8
	event_ca_on8=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+7*(global_par_spike_duration+global_par_spike_interval));

	if(event_ca_on8) 
		global_par_k57=global_par_kon_high;
	end

%Event: id=ca_on9
	event_ca_on9=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+8*(global_par_spike_duration+global_par_spike_interval));

	if(event_ca_on9) 
		global_par_k57=global_par_kon_high;
	end

%Event: id=ca_on10
	event_ca_on10=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+9*(global_par_spike_duration+global_par_spike_interval));

	if(event_ca_on10) 
		global_par_k57=global_par_kon_high;
	end

%Event: id=ca_off2
	event_ca_off2=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+global_par_spike_duration+1*(global_par_spike_interval+global_par_spike_duration));

	if(event_ca_off2) 
		global_par_k57=global_par_kon_low;
	end

%Event: id=ca_off3
	event_ca_off3=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+global_par_spike_duration+2*(global_par_spike_interval+global_par_spike_duration));

	if(event_ca_off3) 
		global_par_k57=global_par_kon_low;
	end

%Event: id=ca_off4
	event_ca_off4=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+global_par_spike_duration+3*(global_par_spike_interval+global_par_spike_duration));

	if(event_ca_off4) 
		global_par_k57=global_par_kon_low;
	end

%Event: id=ca_off5
	event_ca_off5=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+global_par_spike_duration+4*(global_par_spike_interval+global_par_spike_duration));

	if(event_ca_off5) 
		global_par_k57=global_par_kon_low;
	end

%Event: id=ca_off6
	event_ca_off6=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+global_par_spike_duration+5*(global_par_spike_interval+global_par_spike_duration));

	if(event_ca_off6) 
		global_par_k57=global_par_kon_low;
	end

%Event: id=ca_off7
	event_ca_off7=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+global_par_spike_duration+6*(global_par_spike_interval+global_par_spike_duration));

	if(event_ca_off7) 
		global_par_k57=global_par_kon_low;
	end

%Event: id=ca_off8
	event_ca_off8=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+global_par_spike_duration+7*(global_par_spike_interval+global_par_spike_duration));

	if(event_ca_off8) 
		global_par_k57=global_par_kon_low;
	end

%Event: id=ca_off9
	event_ca_off9=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+global_par_spike_duration+8*(global_par_spike_interval+global_par_spike_duration));

	if(event_ca_off9) 
		global_par_k57=global_par_kon_low;
	end

%Event: id=ca_off10
	event_ca_off10=time >= (global_par_cAMP_delay+global_par_cAMP_Ca_delay+global_par_spike_duration+9*(global_par_spike_interval+global_par_spike_duration));

	if(event_ca_off10) 
		global_par_k57=global_par_kon_low;
	end

	xdot=zeros(63,1);
	
% Species:   id = D, name = D, affected by kineticLaw
	xdot(1) = (1/(compartment_Spine))*((-1.0 * reaction_von1) + ( 1.0 * reaction_voff1) + (-1.0 * reaction_von2) + ( 1.0 * reaction_voff2) + (-1.0 * reaction_von3) + ( 1.0 * reaction_voff3) + ( 1.0 * reaction_vcat6) + ( 1.0 * reaction_vcat9) + ( 1.0 * reaction_vcat10) + ( 1.0 * reaction_vcat13));
	
% Species:   id = CDK5, name = CDK5, affected by kineticLaw
	xdot(2) = (1/(compartment_Spine))*((-1.0 * reaction_von1) + ( 1.0 * reaction_voff1) + ( 1.0 * reaction_vcat1) + (-1.0 * reaction_von4) + ( 1.0 * reaction_voff4) + ( 1.0 * reaction_vcat4) + (-1.0 * reaction_von11) + ( 1.0 * reaction_voff11) + ( 1.0 * reaction_vcat11) + (-1.0 * reaction_von18) + ( 1.0 * reaction_voff18) + ( 1.0 * reaction_vcat18));
	
% Species:   id = D_CDK5, name = D_CDK5, affected by kineticLaw
	xdot(3) = (1/(compartment_Spine))*(( 1.0 * reaction_von1) + (-1.0 * reaction_voff1) + (-1.0 * reaction_vcat1));
	
% Species:   id = D75, name = D75, affected by kineticLaw
	xdot(4) = (1/(compartment_Spine))*(( 1.0 * reaction_vcat1) + (-1.0 * reaction_von7) + (-1.0 * reaction_von8) + (-1.0 * reaction_von9) + (-1.0 * reaction_von10) + ( 1.0 * reaction_voff7) + ( 1.0 * reaction_voff8) + ( 1.0 * reaction_voff9) + ( 1.0 * reaction_voff10) + ( 1.0 * reaction_vcat17) + ( 1.0 * reaction_vcat24));
	
% Species:   id = CK1, name = CK1, affected by kineticLaw
	xdot(5) = (1/(compartment_Spine))*((-1.0 * reaction_von2) + ( 1.0 * reaction_voff2) + ( 1.0 * reaction_vcat2) + (-1.0 * reaction_von5) + ( 1.0 * reaction_voff5) + ( 1.0 * reaction_vcat5) + (-1.0 * reaction_von7) + ( 1.0 * reaction_voff7) + ( 1.0 * reaction_vcat7) + (-1.0 * reaction_von14) + ( 1.0 * reaction_voff14) + ( 1.0 * reaction_vcat14) + ( 1.0 * reaction_vcat29) + (-1.0 * reaction_vcat30));
	
% Species:   id = D_CK1, name = D_CK1, affected by kineticLaw
	xdot(6) = (1/(compartment_Spine))*(( 1.0 * reaction_von2) + (-1.0 * reaction_voff2) + (-1.0 * reaction_vcat2));
	
% Species:   id = D137, name = D137, affected by kineticLaw
	xdot(7) = (1/(compartment_Spine))*(( 1.0 * reaction_vcat2) + (-1.0 * reaction_von11) + (-1.0 * reaction_von12) + (-1.0 * reaction_von13) + ( 1.0 * reaction_voff11) + ( 1.0 * reaction_voff12) + ( 1.0 * reaction_voff13) + ( 1.0 * reaction_vcat19) + ( 1.0 * reaction_vcat22) + ( 1.0 * reaction_vcat23));
	
% Species:   id = PKA, name = PKA, affected by kineticLaw
	xdot(8) = (1/(compartment_Spine))*((-1.0 * reaction_von3) + ( 1.0 * reaction_voff3) + ( 1.0 * reaction_vcat3) + (-1.0 * reaction_von8) + ( 1.0 * reaction_vcat8) + ( 1.0 * reaction_voff8) + (-1.0 * reaction_von12) + ( 1.0 * reaction_voff12) + ( 1.0 * reaction_vcat12) + (-1.0 * reaction_von21) + ( 1.0 * reaction_vcat21) + ( 1.0 * reaction_voff21) + (-1.0 * reaction_von31) + ( 1.0 * reaction_vcat31) + ( 1.0 * reaction_voff31) + (-1.0 * reaction_von33) + ( 1.0 * reaction_voff33) + ( 1.0 * reaction_vcat33) + (-1.0 * reaction_von41) + ( 1.0 * reaction_voff41) + (-1.0 * reaction_von42) + ( 1.0 * reaction_von43));
	
% Species:   id = D_PKA, name = D_PKA, affected by kineticLaw
	xdot(9) = (1/(compartment_Spine))*(( 1.0 * reaction_von3) + (-1.0 * reaction_voff3) + (-1.0 * reaction_vcat3));
	
% Species:   id = D34, name = D34, affected by kineticLaw
	xdot(10) = (1/(compartment_Spine))*(( 1.0 * reaction_vcat3) + (-1.0 * reaction_von4) + (-1.0 * reaction_von5) + (-1.0 * reaction_von6) + ( 1.0 * reaction_voff4) + ( 1.0 * reaction_voff5) + ( 1.0 * reaction_voff6) + ( 1.0 * reaction_vcat15) + ( 1.0 * reaction_vcat16) + ( 1.0 * reaction_vcat20));
	
% Species:   id = D34_CDK5, name = D34_CDK5, affected by kineticLaw
	xdot(11) = (1/(compartment_Spine))*(( 1.0 * reaction_von4) + (-1.0 * reaction_voff4) + (-1.0 * reaction_vcat4));
	
% Species:   id = D34_CK1, name = D34_CK1, affected by kineticLaw
	xdot(12) = (1/(compartment_Spine))*(( 1.0 * reaction_von5) + (-1.0 * reaction_voff5) + (-1.0 * reaction_vcat5));
	
% Species:   id = PP2B, name = PP2B, affected by kineticLaw
	xdot(13) = (1/(compartment_Spine))*((-1.0 * reaction_von6) + ( 1.0 * reaction_vcat6) + ( 1.0 * reaction_voff6) + (-1.0 * reaction_von17) + ( 1.0 * reaction_voff17) + ( 1.0 * reaction_vcat17) + (-1.0 * reaction_von19) + ( 1.0 * reaction_vcat19) + ( 1.0 * reaction_voff19) + (-1.0 * reaction_von27) + ( 1.0 * reaction_voff27) + ( 1.0 * reaction_vcat27) + (-1.0 * reaction_von29) + ( 1.0 * reaction_voff29) + ( 1.0 * reaction_vcat29) + ( 1.0 * reaction_von36) + (-1.0 * reaction_voff36));
	
% Species:   id = D34_PP2B, name = D34_PP2B, affected by kineticLaw
	xdot(14) = (1/(compartment_Spine))*(( 1.0 * reaction_von6) + (-1.0 * reaction_vcat6) + (-1.0 * reaction_voff6));
	
% Species:   id = D34_75, name = D34:75, affected by kineticLaw
	xdot(15) = (1/(compartment_Spine))*(( 1.0 * reaction_vcat4) + ( 1.0 * reaction_vcat8) + (-1.0 * reaction_von14) + ( 1.0 * reaction_voff14) + (-1.0 * reaction_von17) + ( 1.0 * reaction_voff17) + (-1.0 * reaction_von15) + ( 1.0 * reaction_voff15) + (-1.0 * reaction_von16) + ( 1.0 * reaction_voff16) + ( 1.0 * reaction_vcat28));
	
% Species:   id = D34_137, name = D34:137, affected by kineticLaw
	xdot(16) = (1/(compartment_Spine))*(( 1.0 * reaction_vcat5) + ( 1.0 * reaction_vcat12) + (-1.0 * reaction_von18) + ( 1.0 * reaction_voff18) + (-1.0 * reaction_von19) + ( 1.0 * reaction_voff19) + ( 1.0 * reaction_vcat25) + ( 1.0 * reaction_vcat26) + (-1.0 * reaction_von20) + ( 1.0 * reaction_voff20));
	
% Species:   id = D75CK1, name = D75_CK1, affected by kineticLaw
	xdot(17) = (1/(compartment_Spine))*(( 1.0 * reaction_von7) + (-1.0 * reaction_voff7) + (-1.0 * reaction_vcat7));
	
% Species:   id = D75_PKA, name = D75_PKA, affected by kineticLaw
	xdot(18) = (1/(compartment_Spine))*(( 1.0 * reaction_von8) + (-1.0 * reaction_vcat8) + (-1.0 * reaction_voff8));
	
% Species:   id = PP2A, name = PP2A, affected by kineticLaw
	xdot(19) = (1/(compartment_Spine))*((-1.0 * reaction_von9) + ( 1.0 * reaction_vcat9) + ( 1.0 * reaction_voff9) + (-1.0 * reaction_von15) + ( 1.0 * reaction_vcat15) + ( 1.0 * reaction_voff15) + (-1.0 * reaction_von22) + ( 1.0 * reaction_vcat22) + ( 1.0 * reaction_voff22) + (-1.0 * reaction_von25) + ( 1.0 * reaction_vcat25) + ( 1.0 * reaction_voff25) + (-1.0 * reaction_von33) + ( 1.0 * reaction_voff33) + ( 1.0 * reaction_vcat34));
	
% Species:   id = D75_PP2A, name = D75_PP2A, affected by kineticLaw
	xdot(20) = (1/(compartment_Spine))*(( 1.0 * reaction_von9) + (-1.0 * reaction_vcat9) + (-1.0 * reaction_voff9));
	
% Species:   id = PP2AP, name = PP2AP, affected by kineticLaw
	xdot(21) = (1/(compartment_Spine))*((-1.0 * reaction_von10) + ( 1.0 * reaction_vcat10) + ( 1.0 * reaction_voff10) + (-1.0 * reaction_von16) + ( 1.0 * reaction_vcat16) + ( 1.0 * reaction_voff16) + (-1.0 * reaction_von23) + ( 1.0 * reaction_vcat23) + ( 1.0 * reaction_voff23) + ( 1.0 * reaction_vcat26) + (-1.0 * reaction_von26) + ( 1.0 * reaction_voff26) + ( 1.0 * reaction_vcat33) + (-1.0 * reaction_vcat34));
	
% Species:   id = D75_PP2AP, name = D75_PP2AP, affected by kineticLaw
	xdot(22) = (1/(compartment_Spine))*(( 1.0 * reaction_von10) + (-1.0 * reaction_vcat10) + (-1.0 * reaction_voff10));
	
% Species:   id = D75_137, name = D75:137, affected by kineticLaw
	xdot(23) = (1/(compartment_Spine))*(( 1.0 * reaction_vcat7) + ( 1.0 * reaction_vcat11) + (-1.0 * reaction_von21) + ( 1.0 * reaction_voff21) + ( 1.0 * reaction_vcat27) + (-1.0 * reaction_von22) + ( 1.0 * reaction_voff22) + (-1.0 * reaction_von23) + ( 1.0 * reaction_voff23) + (-1.0 * reaction_von24) + ( 1.0 * reaction_voff24));
	
% Species:   id = D137_CDK5, name = D137_CDK5, affected by kineticLaw
	xdot(24) = (1/(compartment_Spine))*(( 1.0 * reaction_von11) + (-1.0 * reaction_voff11) + (-1.0 * reaction_vcat11));
	
% Species:   id = D137_PKA, name = D137_PKA, affected by kineticLaw
	xdot(25) = (1/(compartment_Spine))*(( 1.0 * reaction_von12) + (-1.0 * reaction_voff12) + (-1.0 * reaction_vcat12));
	
% Species:   id = D137_PP2C, name = D137_PP2C, affected by kineticLaw
	xdot(26) = (1/(compartment_Spine))*(( 1.0 * reaction_von13) + (-1.0 * reaction_vcat13) + (-1.0 * reaction_voff13));
	
% Species:   id = PP2C, name = PP2C, affected by kineticLaw
	xdot(27) = (1/(compartment_Spine))*((-1.0 * reaction_von13) + ( 1.0 * reaction_vcat13) + ( 1.0 * reaction_voff13) + (-1.0 * reaction_von20) + ( 1.0 * reaction_vcat20) + ( 1.0 * reaction_voff20) + (-1.0 * reaction_von24) + ( 1.0 * reaction_vcat24) + ( 1.0 * reaction_voff24) + (-1.0 * reaction_von28) + ( 1.0 * reaction_vcat28) + ( 1.0 * reaction_voff28));
	
% Species:   id = D34_75_CK1, name = D34:75_CK1, affected by kineticLaw
	xdot(28) = (1/(compartment_Spine))*(( 1.0 * reaction_von14) + (-1.0 * reaction_voff14) + (-1.0 * reaction_vcat14));
	
% Species:   id = D34_137_CDK5, name = D34:137_CDK5, affected by kineticLaw
	xdot(29) = (1/(compartment_Spine))*(( 1.0 * reaction_von18) + (-1.0 * reaction_voff18) + (-1.0 * reaction_vcat18));
	
% Species:   id = D34_75_137, name = D34:75:137, affected by kineticLaw
	xdot(30) = (1/(compartment_Spine))*(( 1.0 * reaction_vcat14) + ( 1.0 * reaction_vcat18) + ( 1.0 * reaction_vcat21) + (-1.0 * reaction_von27) + ( 1.0 * reaction_voff27) + (-1.0 * reaction_von25) + ( 1.0 * reaction_voff25) + (-1.0 * reaction_von26) + ( 1.0 * reaction_voff26) + (-1.0 * reaction_von28) + ( 1.0 * reaction_voff28));
	
% Species:   id = D75_137_PKA, name = D75:137_PKA, affected by kineticLaw
	xdot(31) = (1/(compartment_Spine))*(( 1.0 * reaction_von21) + (-1.0 * reaction_vcat21) + (-1.0 * reaction_voff21));
	
% Species:   id = D34_75_PP2B, name = D34:75_PP2B, affected by kineticLaw
	xdot(32) = (1/(compartment_Spine))*(( 1.0 * reaction_von17) + (-1.0 * reaction_voff17) + (-1.0 * reaction_vcat17));
	
% Species:   id = D34_137_PP2B, name = D34:137_PP2B, affected by kineticLaw
	xdot(33) = (1/(compartment_Spine))*(( 1.0 * reaction_von19) + (-1.0 * reaction_vcat19) + (-1.0 * reaction_voff19));
	
% Species:   id = D34_75_137_PP2B, name = D34:75:137_PP2B, affected by kineticLaw
	xdot(34) = (1/(compartment_Spine))*(( 1.0 * reaction_von27) + (-1.0 * reaction_voff27) + (-1.0 * reaction_vcat27));
	
% Species:   id = D34_75_PP2A, name = D34:75_PP2A, affected by kineticLaw
	xdot(35) = (1/(compartment_Spine))*(( 1.0 * reaction_von15) + (-1.0 * reaction_vcat15) + (-1.0 * reaction_voff15));
	
% Species:   id = D75_137_PP2A, name = D75:137_PP2A, affected by kineticLaw
	xdot(36) = (1/(compartment_Spine))*(( 1.0 * reaction_von22) + (-1.0 * reaction_vcat22) + (-1.0 * reaction_voff22));
	
% Species:   id = D34_75_134_PP2A, name = D34:75:137_PP2A, affected by kineticLaw
	xdot(37) = (1/(compartment_Spine))*(( 1.0 * reaction_von25) + (-1.0 * reaction_vcat25) + (-1.0 * reaction_voff25));
	
% Species:   id = D34_75_PP2AP, name = D34:75_PP2AP, affected by kineticLaw
	xdot(38) = (1/(compartment_Spine))*(( 1.0 * reaction_von16) + (-1.0 * reaction_vcat16) + (-1.0 * reaction_voff16));
	
% Species:   id = D75_137_PP2AP, name = D75:137_PP2AP, affected by kineticLaw
	xdot(39) = (1/(compartment_Spine))*(( 1.0 * reaction_von23) + (-1.0 * reaction_vcat23) + (-1.0 * reaction_voff23));
	
% Species:   id = D34_75_137_PP2AP, name = D34:75:137_PP2AP, affected by kineticLaw
	xdot(40) = (1/(compartment_Spine))*((-1.0 * reaction_vcat26) + ( 1.0 * reaction_von26) + (-1.0 * reaction_voff26));
	
% Species:   id = D34_137_PP2C, name = D34:137_PP2C, affected by kineticLaw
	xdot(41) = (1/(compartment_Spine))*(( 1.0 * reaction_von20) + (-1.0 * reaction_vcat20) + (-1.0 * reaction_voff20));
	
% Species:   id = D75_137_PP2C, name = D75:137_PP2C, affected by kineticLaw
	xdot(42) = (1/(compartment_Spine))*(( 1.0 * reaction_von24) + (-1.0 * reaction_vcat24) + (-1.0 * reaction_voff24));
	
% Species:   id = PDE, name = PDE, affected by kineticLaw
	xdot(43) = (1/(compartment_Spine))*((-1.0 * reaction_von31) + ( 1.0 * reaction_voff31) + ( 1.0 * reaction_vcat32) + (-1.0 * reaction_von44) + ( 1.0 * reaction_voff44) + ( 1.0 * reaction_vcat44));
	
% Species:   id = PP2Binactive, name = PP2Binactive, affected by kineticLaw
	xdot(44) = (1/(compartment_Spine))*((-1.0 * reaction_von35) + ( 1.0 * reaction_voff35));
	
% Species:   id = D34_75_137_PP2C, name = D34:75:137_PP2C, affected by kineticLaw
	xdot(45) = (1/(compartment_Spine))*(( 1.0 * reaction_von28) + (-1.0 * reaction_vcat28) + (-1.0 * reaction_voff28));
	
% Species:   id = CK1P, name = CK1P, affected by kineticLaw
	xdot(46) = (1/(compartment_Spine))*((-1.0 * reaction_von29) + ( 1.0 * reaction_voff29) + ( 1.0 * reaction_vcat30));
	
% Species:   id = CK1P_PP2B, name = CK1P_PP2B, affected by kineticLaw
	xdot(47) = (1/(compartment_Spine))*(( 1.0 * reaction_von29) + (-1.0 * reaction_voff29) + (-1.0 * reaction_vcat29));
	
% Species:   id = PDE_PKA, name = PDE_PKA, affected by kineticLaw
	xdot(48) = (1/(compartment_Spine))*(( 1.0 * reaction_von31) + (-1.0 * reaction_vcat31) + (-1.0 * reaction_voff31));
	
% Species:   id = PDEP, name = PDEP, affected by kineticLaw
	xdot(49) = (1/(compartment_Spine))*(( 1.0 * reaction_vcat31) + (-1.0 * reaction_vcat32) + (-1.0 * reaction_von45) + ( 1.0 * reaction_voff45) + ( 1.0 * reaction_vcat45));
	
% Species:   id = PP2A_PKA, name = PP2A_PKA, affected by kineticLaw
	xdot(50) = (1/(compartment_Spine))*(( 1.0 * reaction_von33) + (-1.0 * reaction_voff33) + (-1.0 * reaction_vcat33));
	
% Species:   id = Ca, name = Ca, affected by kineticLaw
	xdot(51) = (1/(compartment_Spine))*((-2.0 * reaction_von35) + (-2.0 * reaction_von36) + ( 2.0 * reaction_voff35) + ( 2.0 * reaction_voff36) + ( 1.0 * reaction_v57) + (-1.0 * reaction_v58));
	
% Species:   id = PP2BinactiveCa2, name = PP2BinactiveCa2, affected by kineticLaw
	xdot(52) = (1/(compartment_Spine))*(( 1.0 * reaction_von35) + (-1.0 * reaction_von36) + (-1.0 * reaction_voff35) + ( 1.0 * reaction_voff36));
	
% Species:   id = R2C2, name = R2C2, affected by kineticLaw
	xdot(53) = (1/(compartment_Spine))*((-1.0 * reaction_von37) + ( 1.0 * reaction_voff37));
	
% Species:   id = cAMP, name = cAMP, affected by kineticLaw
	xdot(54) = (1/(compartment_Spine))*((-1.0 * reaction_von37) + (-1.0 * reaction_von38) + (-1.0 * reaction_von39) + (-1.0 * reaction_von40) + ( 1.0 * reaction_voff37) + ( 1.0 * reaction_voff38) + ( 1.0 * reaction_voff39) + ( 1.0 * reaction_voff40) + (-1.0 * reaction_von44) + ( 1.0 * reaction_voff44) + (-1.0 * reaction_von45) + ( 1.0 * reaction_voff45));
	
% Species:   id = cAMP_R2C2, name = cAMP_R2C2, affected by kineticLaw
	xdot(55) = (1/(compartment_Spine))*(( 1.0 * reaction_von37) + (-1.0 * reaction_von38) + (-1.0 * reaction_voff37) + ( 1.0 * reaction_voff38));
	
% Species:   id = cAMP2_R2C2, name = cAMP2_R2C2, affected by kineticLaw
	xdot(56) = (1/(compartment_Spine))*(( 1.0 * reaction_von38) + (-1.0 * reaction_von39) + (-1.0 * reaction_voff38) + ( 1.0 * reaction_voff39));
	
% Species:   id = cAMP3_R2C2, name = cAMP3_R2C2, affected by kineticLaw
	xdot(57) = (1/(compartment_Spine))*(( 1.0 * reaction_von39) + (-1.0 * reaction_von40) + (-1.0 * reaction_voff39) + ( 1.0 * reaction_voff40));
	
% Species:   id = cAMP4_R2C2, name = cAMP4_R2C2, affected by kineticLaw
	xdot(58) = (1/(compartment_Spine))*(( 1.0 * reaction_von40) + (-1.0 * reaction_voff40) + ( 1.0 * reaction_von41) + (-1.0 * reaction_voff41));
	
% Species:   id = cAMP4_R2C, name = cAMP4_R2C, affected by kineticLaw
	xdot(59) = (1/(compartment_Spine))*((-1.0 * reaction_von41) + ( 1.0 * reaction_voff41) + ( 1.0 * reaction_von42) + (-1.0 * reaction_von43));
	
% Species:   id = cAMP4_R2, name = cAMP4_R2, affected by kineticLaw
	xdot(60) = (1/(compartment_Spine))*((-1.0 * reaction_von42) + ( 1.0 * reaction_von43));
	
% Species:   id = cAMP_PDE, name = cAMP_PDE, affected by kineticLaw
	xdot(61) = (1/(compartment_Spine))*(( 1.0 * reaction_von44) + (-1.0 * reaction_voff44) + (-1.0 * reaction_vcat44));
	
% Species:   id = AMP, name = AMP, affected by kineticLaw
	xdot(62) = (1/(compartment_Spine))*(( 1.0 * reaction_vcat44) + ( 1.0 * reaction_vcat45));
	
% Species:   id = cAMP_PDEP, name = cAMP_PDEP, affected by kineticLaw
	xdot(63) = (1/(compartment_Spine))*(( 1.0 * reaction_von45) + (-1.0 * reaction_voff45) + (-1.0 * reaction_vcat45));
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


