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
% Model name = Sasagawa2005_MAPK
%
% is http://identifiers.org/biomodels.db/MODEL6624243033
% is http://identifiers.org/biomodels.db/BIOMD0000000049
% isDescribedBy http://identifiers.org/pubmed/15793571
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL9071122126
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000019
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL9070467164
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL9079179924
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000146
% isDerivedFrom http://identifiers.org/pubmed/11024454
% isDerivedFrom http://identifiers.org/pubmed/11832340
% isDerivedFrom http://identifiers.org/pubmed/14751248
%


function main()
%Initial conditions vector
	x0=zeros(99,1);
	x0(1) = 0.3;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.1;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 1.0;
	x0(9) = 0.3;
	x0(10) = 0.0;
	x0(11) = 1.0;
	x0(12) = 1.0;
	x0(13) = 1.0;
	x0(14) = 0.0;
	x0(15) = 0.2;
	x0(16) = 0.68;
	x0(17) = 0.018;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.5;
	x0(25) = 0.1;
	x0(26) = 0.5;
	x0(27) = 0.2;
	x0(28) = 0.26;
	x0(29) = 0.24;
	x0(30) = 0.1;
	x0(31) = 0.012;
	x0(32) = 0.5;
	x0(33) = 0.061894;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 0.0;
	x0(46) = 0.0;
	x0(47) = 0.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 0.0;
	x0(52) = 0.0;
	x0(53) = 0.0;
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
	x0(64) = 0.0;
	x0(65) = 0.0;
	x0(66) = 0.0;
	x0(67) = 0.0;
	x0(68) = 0.0;
	x0(69) = 0.0;
	x0(70) = 0.0;
	x0(71) = 0.0;
	x0(72) = 0.0;
	x0(73) = 0.0;
	x0(74) = 0.0;
	x0(75) = 0.0;
	x0(76) = 0.0;
	x0(77) = 0.0;
	x0(78) = 0.0;
	x0(79) = 0.0;
	x0(80) = 0.0;
	x0(81) = 0.0;
	x0(82) = 0.0;
	x0(83) = 0.0;
	x0(84) = 0.0;
	x0(85) = 0.0;
	x0(86) = 0.0;
	x0(87) = 0.0;
	x0(88) = 0.0;
	x0(89) = 0.0;
	x0(90) = 0.0;
	x0(91) = 0.0;
	x0(92) = 0.0;
	x0(93) = 0.0;
	x0(94) = 0.0;
	x0(95) = 0.020631;
	x0(96) = 0.0;
	x0(97) = 0.001613;
	x0(98) = 0.3;
	x0(99) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Compartment: id = c1, name = c1, constant
	compartment_c1=1.0;

% Reaction: id = re1, name = form_EGFreceptor	% Local Parameter:   id =  re1_k1, name = re1_k1
	reaction_re1_re1_k1=1.0E-4;
	% Local Parameter:   id =  re1_k2, name = re1_k2
	reaction_re1_re1_k2=1.0E-4;

	reaction_re1=compartment_compartment*(reaction_re1_re1_k1*x(98)-reaction_re1_re1_k2*x(1));

% Reaction: id = re2, name = EGFbinding	% Local Parameter:   id =  re2_k1, name = re2_k1
	reaction_re2_re2_k1=2.2833;
	% Local Parameter:   id =  re2_k2, name = re2_k2
	reaction_re2_re2_k2=0.0029666;

	reaction_re2=compartment_compartment*(reaction_re2_re2_k1*x(97)*x(1)-reaction_re2_re2_k2*x(2));

% Reaction: id = re8, name = dimerization	% Local Parameter:   id =  re8_k1, name = re8_k1
	reaction_re8_re8_k1=10.0;
	% Local Parameter:   id =  re8_k2, name = re8_k2
	reaction_re8_re8_k2=0.02;

	reaction_re8=compartment_compartment*(reaction_re8_re8_k1*x(2)*x(2)-reaction_re8_re8_k2*x(3));

% Reaction: id = J3, name = binding_SOS_Grb2	% Local Parameter:   id =  J3_k1, name = J3_k1
	reaction_J3_J3_k1=0.03;
	% Local Parameter:   id =  J3_k2, name = J3_k2
	reaction_J3_J3_k2=0.0168;

	reaction_J3=compartment_c1*(reaction_J3_J3_k1*x(4)*x(8)-reaction_J3_J3_k2*x(7));

% Reaction: id = J4, name = binding_pSOS_Grb2	% Local Parameter:   id =  J4_k1, name = J4_k1
	reaction_J4_J4_k1=0.03;
	% Local Parameter:   id =  J4_k2, name = J4_k2
	reaction_J4_J4_k2=0.0168;

	reaction_J4=compartment_c1*(reaction_J4_J4_k1*x(8)*x(6)-reaction_J4_J4_k2*x(14));

% Reaction: id = J5, name = EGFRphosphorylation	% Local Parameter:   id =  J5_k1, name = J5_k1
	reaction_J5_J5_k1=4.0;
	% Local Parameter:   id =  J5_k2, name = J5_k2
	reaction_J5_J5_k2=0.001;

	reaction_J5=compartment_compartment*(reaction_J5_J5_k1*x(3)-reaction_J5_J5_k2*x(5));

% Reaction: id = J6, name = binding_cCbI_dpEGFR	% Local Parameter:   id =  J6_k1, name = J6_k1
	reaction_J6_J6_k1=0.5;
	% Local Parameter:   id =  J6_k2, name = J6_k2
	reaction_J6_J6_k2=0.2;

	reaction_J6=compartment_c1*(reaction_J6_J6_k1*x(5)*x(24)-reaction_J6_J6_k2*x(19));

% Reaction: id = J7, name = binding_pShc_LdpEGFR	% Local Parameter:   id =  J7_k1, name = J7_k1
	reaction_J7_J7_k1=10.0;
	% Local Parameter:   id =  J7_k2, name = J7_k2
	reaction_J7_J7_k2=0.2;

	reaction_J7=compartment_c1*(reaction_J7_J7_k1*x(5)*x(34)-reaction_J7_J7_k2*x(18));

% Reaction: id = J8, name = pDOKdephosphorylation	% Local Parameter:   id =  J8_k1, name = J8_k1
	reaction_J8_J8_k1=0.002;
	% Local Parameter:   id =  J8_k2, name = J8_k2
	reaction_J8_J8_k2=1.0E-5;

	reaction_J8=compartment_c1*(reaction_J8_J8_k1*x(10)-reaction_J8_J8_k2*x(9));

% Reaction: id = J9, name = binding_cCbl_pShc_dpEGFR	% Local Parameter:   id =  J9_k1, name = J9_k1
	reaction_J9_J9_k1=0.5;
	% Local Parameter:   id =  J9_k2, name = J9_k2
	reaction_J9_J9_k2=0.2;

	reaction_J9=compartment_c1*(reaction_J9_J9_k1*x(24)*x(18)-reaction_J9_J9_k2*x(21));

% Reaction: id = J10, name = SOSdephosphorylation	% Local Parameter:   id =  J10_k, name = J10_k
	reaction_J10_J10_k=0.002;

	reaction_J10=compartment_c1*reaction_J10_J10_k*x(6);

% Reaction: id = J11, name = pSOS_Grb2_dephosphorylation	% Local Parameter:   id =  J11_k, name = J11_k
	reaction_J11_J11_k=0.002;

	reaction_J11=compartment_c1*reaction_J11_J11_k*x(14);

% Reaction: id = J12, name = binding_Shc_LdpEGFR	% Local Parameter:   id =  J12_k1, name = J12_k1
	reaction_J12_J12_k1=10.0;
	% Local Parameter:   id =  J12_k2, name = J12_k2
	reaction_J12_J12_k2=0.2;

	reaction_J12=compartment_c1*(reaction_J12_J12_k1*x(5)*x(13)-reaction_J12_J12_k2*x(23));

% Reaction: id = J13, name = Shc_dpEGFR_phosphorylation	% Local Parameter:   id =  J13_k, name = J13_k
	reaction_J13_J13_k=1.0;

	reaction_J13=compartment_c1*reaction_J13_J13_k*x(23);

% Reaction: id = J14, name = dpEGFR_c_Cbl_ubiquitination	% Local Parameter:   id =  J14_k, name = J14_k
	reaction_J14_J14_k=0.05;

	reaction_J14=compartment_c1*reaction_J14_J14_k*x(19);

% Reaction: id = J15, name = dpEGFR_cCbl_degrad	% Local Parameter:   id =  J15_k, name = J15_k
	reaction_J15_J15_k=0.001;

	reaction_J15=compartment_c1*reaction_J15_J15_k*x(46);

% Reaction: id = J16, name = binding_cCbl_Shc_dpEGFR	% Local Parameter:   id =  J16_k1, name = J16_k1
	reaction_J16_J16_k1=0.5;
	% Local Parameter:   id =  J16_k2, name = J16_k2
	reaction_J16_J16_k2=0.2;

	reaction_J16=compartment_c1*(reaction_J16_J16_k1*x(24)*x(23)-reaction_J16_J16_k2*x(49));

% Reaction: id = J17, name = Shc_dpEGFR_c_CBl_Ubiquitination	% Local Parameter:   id =  J17_k, name = J17_k
	reaction_J17_J17_k=0.05;

	reaction_J17=compartment_c1*reaction_J17_J17_k*x(49);

% Reaction: id = J18, name = Shc_dpEGFR_c_Cbl_ubiq_Degradation	% Local Parameter:   id =  J18_k, name = J18_k
	reaction_J18_J18_k=0.001;

	reaction_J18=compartment_c1*reaction_J18_J18_k*x(45);

% Reaction: id = J19, name = pShc_dpEGFR_c_Cbl_ubiquitination	% Local Parameter:   id =  J19_k, name = J19_k
	reaction_J19_J19_k=0.05;

	reaction_J19=compartment_c1*reaction_J19_J19_k*x(21);

% Reaction: id = J20, name = pShc_dpEGFR_c_Cbl_ubiq_degradation	% Local Parameter:   id =  J20_k, name = J20_k
	reaction_J20_J20_k=0.001;

	reaction_J20=compartment_c1*reaction_J20_J20_k*x(41);

% Reaction: id = J21, name = Shc_dpEGFR_c_Cblphosphorylation	% Local Parameter:   id =  J21_k, name = J21_k
	reaction_J21_J21_k=1.0;

	reaction_J21=compartment_c1*reaction_J21_J21_k*x(49);

% Reaction: id = J22, name = binding_Grb2_SOS_pShc	% Local Parameter:   id =  J22_k1, name = J22_k1
	reaction_J22_J22_k1=10.0;
	% Local Parameter:   id =  J22_k2, name = J22_k2
	reaction_J22_J22_k2=0.2;

	reaction_J22=compartment_c1*(reaction_J22_J22_k1*x(34)*x(7)-reaction_J22_J22_k2*x(48));

% Reaction: id = J23, name = binding_Grb2_SOS_pShc_dpEGFR	% Local Parameter:   id =  J23_k1, name = J23_k1
	reaction_J23_J23_k1=10.0;
	% Local Parameter:   id =  J23_k2, name = J23_k2
	reaction_J23_J23_k2=0.2;

	reaction_J23=compartment_c1*(reaction_J23_J23_k1*x(5)*x(48)-reaction_J23_J23_k2*x(50));

% Reaction: id = J24, name = binding_Grb2_SOS_pShc_dpEGFR	% Local Parameter:   id =  J24_k1, name = J24_k1
	reaction_J24_J24_k1=10.0;
	% Local Parameter:   id =  J24_k2, name = J24_k2
	reaction_J24_J24_k2=0.2;

	reaction_J24=compartment_c1*(reaction_J24_J24_k1*x(18)*x(7)-reaction_J24_J24_k2*x(50));

% Reaction: id = J25, name = binding_c_Cbl_Grb2_SOS_pShc_dpEGFR	% Local Parameter:   id =  J25_k1, name = J25_k1
	reaction_J25_J25_k1=0.5;
	% Local Parameter:   id =  J25_k2, name = J25_k2
	reaction_J25_J25_k2=0.2;

	reaction_J25=compartment_c1*(reaction_J25_J25_k1*x(24)*x(50)-reaction_J25_J25_k2*x(44));

% Reaction: id = J27, name = binding_Grb2_SOS_pShc_to_dpEGFR_c_Cbl	% Local Parameter:   id =  J27_k1, name = J27_k1
	reaction_J27_J27_k1=10.0;
	% Local Parameter:   id =  J27_k2, name = J27_k2
	reaction_J27_J27_k2=0.2;

	reaction_J27=compartment_c1*(reaction_J27_J27_k1*x(19)*x(48)-reaction_J27_J27_k2*x(44));

% Reaction: id = J28, name = Grb2_SOS_pShc_dpEGFR_c_Cbl_ubiquitination	% Local Parameter:   id =  J28_k, name = J28_k
	reaction_J28_J28_k=0.05;

	reaction_J28=compartment_c1*reaction_J28_J28_k*x(44);

% Reaction: id = J29, name = Grb2_SOS_pShc_dpEGFR_c_Cbl_ubiq_degradation	% Local Parameter:   id =  J29_k, name = J29_k
	reaction_J29_J29_k=0.001;

	reaction_J29=compartment_c1*reaction_J29_J29_k*x(43);

% Reaction: id = J30, name = Grb2_SOS_pShc_Dissociation	% Local Parameter:   id =  J30_k, name = J30_k
	reaction_J30_J30_k=0.005;

	reaction_J30=reaction_J30_J30_k*x(48);

% Reaction: id = J31	% Local Parameter:   id =  J31_Vmax, name = J31_Vmax
	reaction_J31_J31_Vmax=0.2;
	% Local Parameter:   id =  J31_Km1, name = J31_Km1
	reaction_J31_J31_Km1=0.1;

	reaction_J31=compartment_c1*reaction_J31_J31_Vmax*x(9)*(x(5)+x(23)+x(18)+x(50)+x(19)+x(49)+x(21)+x(44)+x(52)+x(35)+x(42)+x(55)+x(40))/(reaction_J31_J31_Km1+x(9));

% Reaction: id = J32, name = pShc_dephosphorylation	% Local Parameter:   id =  J32_k, name = J32_k
	reaction_J32_J32_k=0.005;

	reaction_J32=compartment_c1*reaction_J32_J32_k*x(34);

% Reaction: id = J33, name = pFRS2_dephosphorylation	% Local Parameter:   id =  J33_k, name = J33_k
	reaction_J33_J33_k=0.005;

	reaction_J33=compartment_c1*reaction_J33_J33_k*x(51);

% Reaction: id = J34, name = binding_Crk_to_C3G	% Local Parameter:   id =  J34_k1, name = J34_k1
	reaction_J34_J34_k1=1.0;
	% Local Parameter:   id =  J34_k2, name = J34_k2
	reaction_J34_J34_k2=0.002;

	reaction_J34=compartment_c1*(reaction_J34_J34_k1*x(11)*x(32)-reaction_J34_J34_k2*x(64));

% Reaction: id = J35, name = binding_L_dpEGFR_to_FRS2	% Local Parameter:   id =  J35_k1, name = J35_k1
	reaction_J35_J35_k1=1.0;
	% Local Parameter:   id =  J35_k2, name = J35_k2
	reaction_J35_J35_k2=0.2;

	reaction_J35=compartment_c1*(reaction_J35_J35_k1*x(5)*x(12)-reaction_J35_J35_k2*x(52));

% Reaction: id = J36, name = binding_pFRS2_to_L_dpEGFR	% Local Parameter:   id =  J36_k1, name = J36_k1
	reaction_J36_J36_k1=1.0;
	% Local Parameter:   id =  J36_k2, name = J36_k2
	reaction_J36_J36_k2=0.2;

	reaction_J36=compartment_c1*(reaction_J36_J36_k1*x(5)*x(51)-reaction_J36_J36_k2*x(35));

% Reaction: id = J37, name = FRS2_dpEGFRphsphorylation	% Local Parameter:   id =  J37_k, name = J37_k
	reaction_J37_J37_k=1.0;

	reaction_J37=compartment_c1*reaction_J37_J37_k*x(52);

% Reaction: id = J38, name = binding_Crk_C3G_to_pFRS2_pRTK	% Local Parameter:   id =  J38_k1, name = J38_k1
	reaction_J38_J38_k1=1.0;
	% Local Parameter:   id =  J38_k2, name = J38_k2
	reaction_J38_J38_k2=0.2;

	reaction_J38=compartment_c1*(reaction_J38_J38_k1*x(35)*x(64)-reaction_J38_J38_k2*x(42));

% Reaction: id = J39, name = binding_c_Cbl_to_FRS2_dpEGFR	% Local Parameter:   id =  J39_k1, name = J39_k1
	reaction_J39_J39_k1=0.5;
	% Local Parameter:   id =  J39_k2, name = J39_k2
	reaction_J39_J39_k2=0.2;

	reaction_J39=compartment_c1*(reaction_J39_J39_k1*x(52)*x(24)-reaction_J39_J39_k2*x(55));

% Reaction: id = J40, name = binding_c_Cbl_to_pFRS2_dpEGFR	% Local Parameter:   id =  J40_k1, name = J40_k1
	reaction_J40_J40_k1=0.5;
	% Local Parameter:   id =  J40_k2, name = J40_k2
	reaction_J40_J40_k2=0.2;

	reaction_J40=compartment_c1*(reaction_J40_J40_k1*x(24)*x(35)-reaction_J40_J40_k2*x(22));

% Reaction: id = J41, name = pFRS2_dpEGFR_c_Cbl_ubiquitiation	% Local Parameter:   id =  J41_k, name = J41_k
	reaction_J41_J41_k=0.05;

	reaction_J41=compartment_c1*reaction_J41_J41_k*x(22);

% Reaction: id = J42, name = FRS2_dpEGFR_c_Cbl_ubiquitination	% Local Parameter:   id =  J42_k, name = J42_k
	reaction_J42_J42_k=0.05;

	reaction_J42=compartment_c1*reaction_J42_J42_k*x(55);

% Reaction: id = J43, name = FRS2_dpEGFR_c_Cbl_phosphorylation	% Local Parameter:   id =  J43_k, name = J43_k
	reaction_J43_J43_k=1.0;

	reaction_J43=compartment_c1*reaction_J43_J43_k*x(55);

% Reaction: id = J44, name = binding_Crk_C3G_to_pFRS2_pFRS2_dpEGFR_c_Cbl	% Local Parameter:   id =  J44_k1, name = J44_k1
	reaction_J44_J44_k1=1.0;
	% Local Parameter:   id =  J44_k2, name = J44_k2
	reaction_J44_J44_k2=0.2;

	reaction_J44=compartment_c1*(reaction_J44_J44_k1*x(22)*x(64)-reaction_J44_J44_k2*x(40));

% Reaction: id = J45, name = Crk_C3G_pFRS2_dpEGFR_c_Cbl_ubiquitination	% Local Parameter:   id =  J45_k, name = J45_k
	reaction_J45_J45_k=0.05;

	reaction_J45=compartment_c1*reaction_J45_J45_k*x(40);

% Reaction: id = J46, name = FRS2_dpEGFR_c_Cbl_ubiq_dissociation	% Local Parameter:   id =  J46_k, name = J46_k
	reaction_J46_J46_k=0.001;

	reaction_J46=compartment_c1*reaction_J46_J46_k*x(39);

% Reaction: id = J47, name = pFRS2_dpEGFR_c_Cbl_ubiq_dissociation	% Local Parameter:   id =  J47_k, name = J47_k
	reaction_J47_J47_k=0.001;

	reaction_J47=compartment_c1*reaction_J47_J47_k*x(56);

% Reaction: id = J49, name = binding_RasGAP_to_pDOK	% Local Parameter:   id =  J49_k1, name = J49_k1
	reaction_J49_J49_k1=0.12;
	% Local Parameter:   id =  J49_k2, name = J49_k2
	reaction_J49_J49_k2=0.01;

	reaction_J49=compartment_c1*(reaction_J49_J49_k1*x(10)*x(25)-reaction_J49_J49_k2*x(53));

% Reaction: id = J50, name = SOS_Grb2_phosphorylation	% Local Parameter:   id =  J50_Vmax, name = J50_Vmax
	reaction_J50_J50_Vmax=1.0;
	% Local Parameter:   id =  J50_Km1, name = J50_Km1
	reaction_J50_J50_Km1=25.641;

	reaction_J50=compartment_c1*reaction_J50_J50_Vmax*x(7)*x(68)/(reaction_J50_J50_Km1+x(7));

% Reaction: id = J51, name = SOS_phosphorylation	% Local Parameter:   id =  J51_Vmax, name = J51_Vmax
	reaction_J51_J51_Vmax=1.0;
	% Local Parameter:   id =  J51_Km1, name = J51_Km1
	reaction_J51_J51_Km1=25.641;

	reaction_J51=compartment_c1*reaction_J51_J51_Vmax*x(4)*x(68)/(reaction_J51_J51_Km1+x(4));

% Reaction: id = J52, name = binding_c_Raf_to_Ras_GTP	% Local Parameter:   id =  J52_k1, name = J52_k1
	reaction_J52_J52_k1=60.0;
	% Local Parameter:   id =  J52_k2, name = J52_k2
	reaction_J52_J52_k2=0.5;

	reaction_J52=compartment_c1*(reaction_J52_J52_k1*x(26)*x(57)-reaction_J52_J52_k2*x(59));

% Reaction: id = J53, name = binding_B_Raf_to_Rap1_GTP	% Local Parameter:   id =  J53_k1, name = J53_k1
	reaction_J53_J53_k1=60.0;
	% Local Parameter:   id =  J53_k2, name = J53_k2
	reaction_J53_J53_k2=0.5;

	reaction_J53=compartment_c1*(reaction_J53_J53_k1*x(65)*x(27)-reaction_J53_J53_k2*x(20));

% Reaction: id = J54, name = binding_B_Raf_to_Ras_GTP	% Local Parameter:   id =  J54_k1, name = J54_k1
	reaction_J54_J54_k1=60.0;
	% Local Parameter:   id =  J54_k2, name = J54_k2
	reaction_J54_J54_k2=0.5;

	reaction_J54=compartment_c1*(reaction_J54_J54_k1*x(57)*x(27)-reaction_J54_J54_k2*x(60));

% Reaction: id = J57, name = ppMEK_dephosphorylation	% Local Parameter:   id =  J57_Vmax, name = J57_Vmax
	reaction_J57_J57_Vmax=3.0;
	% Local Parameter:   id =  J57_Km1, name = J57_Km1
	reaction_J57_J57_Km1=15.657;

	reaction_J57=reaction_J57_J57_Vmax*x(61)*x(29)/(reaction_J57_J57_Km1+x(61));

% Reaction: id = J58, name = pMEK_dephosphorylation	% Local Parameter:   id =  J58_Vmax, name = J58_Vmax
	reaction_J58_J58_Vmax=3.0;
	% Local Parameter:   id =  J58_Km1, name = J58_Km1
	reaction_J58_J58_Km1=15.657;

	reaction_J58=compartment_c1*reaction_J58_J58_Vmax*x(54)*x(29)/(reaction_J58_J58_Km1+x(54));

% Reaction: id = J61, name = ppMEK_ERK	% Local Parameter:   id =  J61_Vmax, name = J61_Vmax
	reaction_J61_J61_Vmax=3.0;
	% Local Parameter:   id =  J61_Km1, name = J61_Km1
	reaction_J61_J61_Km1=15.657;

	reaction_J61=compartment_c1*reaction_J61_J61_Vmax*x(67)*x(29)/(reaction_J61_J61_Km1+x(67));

% Reaction: id = J62, name = pMEK_ERK_dephosphorylation	% Local Parameter:   id =  J62_Vmax, name = J62_Vmax
	reaction_J62_J62_Vmax=3.0;
	% Local Parameter:   id =  J62_Km1, name = J62_Km1
	reaction_J62_J62_Km1=15.657;

	reaction_J62=compartment_c1*reaction_J62_J62_Vmax*x(38)*x(29)/(reaction_J62_J62_Km1+x(38));

% Reaction: id = J63, name = ppERK_dimerization	% Local Parameter:   id =  J63_k1, name = J63_k1
	reaction_J63_J63_k1=10.0;
	% Local Parameter:   id =  J63_k2, name = J63_k2
	reaction_J63_J63_k2=0.075;

	reaction_J63=compartment_c1*(reaction_J63_J63_k1*x(62)*x(62)-reaction_J63_J63_k2*x(68));

% Reaction: id = J66, name = Ras_GTP_dephosphorylation	% Local Parameter:   id =  J66_k, name = J66_k
	reaction_J66_J66_k=1.667E-4;

	reaction_J66=compartment_c1*reaction_J66_J66_k*x(57);

% Reaction: id = J67, name = Rap1_GTP_dephosphorylation	% Local Parameter:   id =  J67_k, name = J67_k
	reaction_J67_J67_k=1.166E-4;

	reaction_J67=compartment_c1*reaction_J67_J67_k*x(65);

% Reaction: id = J68, name = Rap1_GTP_phosphorylation	% Local Parameter:   id =  J68_Vmax, name = J68_Vmax
	reaction_J68_J68_Vmax=0.024;
	% Local Parameter:   id =  J68_Km1, name = J68_Km1
	reaction_J68_J68_Km1=0.01;

	reaction_J68=compartment_c1*reaction_J68_J68_Vmax*x(15)*(x(42)+x(40)+x(77))/(reaction_J68_J68_Km1+x(15));

% Reaction: id = J69, name = Ras_GDP_phosphorylation	% Local Parameter:   id =  J69_Vmax, name = J69_Vmax
	reaction_J69_J69_Vmax=2.0;
	% Local Parameter:   id =  J69_Km1, name = J69_Km1
	reaction_J69_J69_Km1=0.02;

	reaction_J69=compartment_c1*reaction_J69_J69_Vmax*x(30)*(x(50)+x(44)+x(78))/(reaction_J69_J69_Km1+x(30));

% Reaction: id = J70, name = binding_NGF_to_NGFR	% Local Parameter:   id =  J70_k1, name = J70_k1
	reaction_J70_J70_k1=6.2;
	% Local Parameter:   id =  J70_k2, name = J70_k2
	reaction_J70_J70_k2=6.4E-5;

	reaction_J70=compartment_compartment*(reaction_J70_J70_k1*x(96)*x(33)-reaction_J70_J70_k2*x(66));

% Reaction: id = J71, name = TrkA_phosphorylation	% Local Parameter:   id =  J71_k, name = J71_k
	reaction_J71_J71_k=1.0;

	reaction_J71=compartment_compartment*reaction_J71_J71_k*x(66);

% Reaction: id = J72, name = pTrkA_intermalization	% Local Parameter:   id =  J72_k, name = J72_k
	reaction_J72_J72_k=6.3E-4;

	reaction_J72=compartment_c1*reaction_J72_J72_k*x(63);

% Reaction: id = J73, name = pTrkA_endo_degradation	% Local Parameter:   id =  J73_k, name = J73_k
	reaction_J73_J73_k=4.2E-4;

	reaction_J73=compartment_c1*reaction_J73_J73_k*x(36);

% Reaction: id = J74, name = pTrkA_degradation	% Local Parameter:   id =  J74_k, name = J74_k
	reaction_J74_J74_k=0.0022;

	reaction_J74=compartment_c1*reaction_J74_J74_k*x(63);

% Reaction: id = J75, name = binding_Shc_to_pTrkA	% Local Parameter:   id =  J75_k1, name = J75_k1
	reaction_J75_J75_k1=10.0;
	% Local Parameter:   id =  J75_k2, name = J75_k2
	reaction_J75_J75_k2=0.2;

	reaction_J75=compartment_c1*(reaction_J75_J75_k1*x(13)*x(63)-reaction_J75_J75_k2*x(69));

% Reaction: id = J76, name = binding_pShc_to_pTrkA	% Local Parameter:   id =  J76_k1, name = J76_k1
	reaction_J76_J76_k1=10.0;
	% Local Parameter:   id =  J76_k2, name = J76_k2
	reaction_J76_J76_k2=0.2;

	reaction_J76=compartment_c1*(reaction_J76_J76_k1*x(34)*x(63)-reaction_J76_J76_k2*x(71));

% Reaction: id = J77, name = binding_FRS2_to_pTrkA	% Local Parameter:   id =  J77_k1, name = J77_k1
	reaction_J77_J77_k1=5.0;
	% Local Parameter:   id =  J77_k2, name = J77_k2
	reaction_J77_J77_k2=0.1;

	reaction_J77=compartment_c1*(reaction_J77_J77_k1*x(12)*x(63)-reaction_J77_J77_k2*x(73));

% Reaction: id = J78, name = binding_pFRS2_to_pTrkA	% Local Parameter:   id =  J78_k1, name = J78_k1
	reaction_J78_J78_k1=5.0;
	% Local Parameter:   id =  J78_k2, name = J78_k2
	reaction_J78_J78_k2=0.1;

	reaction_J78=compartment_c1*(reaction_J78_J78_k1*x(51)*x(63)-reaction_J78_J78_k2*x(72));

% Reaction: id = J79, name = binding_Shc_to_pTrkA_endo	% Local Parameter:   id =  J79_k1, name = J79_k1
	reaction_J79_J79_k1=10.0;
	% Local Parameter:   id =  J79_k2, name = J79_k2
	reaction_J79_J79_k2=0.2;

	reaction_J79=compartment_c1*(reaction_J79_J79_k1*x(36)*x(13)-reaction_J79_J79_k2*x(70));

% Reaction: id = J80, name = binding_pShc_to_pTrkA_endo	% Local Parameter:   id =  J80_k1, name = J80_k1
	reaction_J80_J80_k1=10.0;
	% Local Parameter:   id =  J80_k2, name = J80_k2
	reaction_J80_J80_k2=0.2;

	reaction_J80=compartment_c1*(reaction_J80_J80_k1*x(36)*x(34)-reaction_J80_J80_k2*x(74));

% Reaction: id = J81, name = Shc_pTrkA_endo_phosphorylation	% Local Parameter:   id =  J81_k, name = J81_k
	reaction_J81_J81_k=0.1;

	reaction_J81=compartment_c1*reaction_J81_J81_k*x(70);

% Reaction: id = J82, name = Shc_pTrkA_phosphorylation	% Local Parameter:   id =  J82_k, name = J82_k
	reaction_J82_J82_k=0.1;

	reaction_J82=compartment_c1*reaction_J82_J82_k*x(69);

% Reaction: id = J83, name = pFRS2_pTrkA_phosphorylation	% Local Parameter:   id =  J83_k, name = J83_k
	reaction_J83_J83_k=2.0;

	reaction_J83=compartment_c1*reaction_J83_J83_k*x(73);

% Reaction: id = J84, name = binding_FRS2_to_pTrkA_endo	% Local Parameter:   id =  J84_k1, name = J84_k1
	reaction_J84_J84_k1=5.0;
	% Local Parameter:   id =  J84_k2, name = J84_k2
	reaction_J84_J84_k2=0.1;

	reaction_J84=compartment_c1*(reaction_J84_J84_k1*x(36)*x(12)-reaction_J84_J84_k2*x(75));

% Reaction: id = J85, name = binding_pFRS2_to_pTrkA_endo	% Local Parameter:   id =  J85_k1, name = J85_k1
	reaction_J85_J85_k1=5.0;
	% Local Parameter:   id =  J85_k2, name = J85_k2
	reaction_J85_J85_k2=0.1;

	reaction_J85=compartment_c1*(reaction_J85_J85_k1*x(36)*x(51)-reaction_J85_J85_k2*x(76));

% Reaction: id = J86, name = FRS2_pTrkA_endo_phosphorylation	% Local Parameter:   id =  J86_k, name = J86_k
	reaction_J86_J86_k=2.0;

	reaction_J86=compartment_c1*reaction_J86_J86_k*x(75);

% Reaction: id = J87, name = FRS2_pTrkA_degradation	% Local Parameter:   id =  J87_k, name = J87_k
	reaction_J87_J87_k=0.0022;

	reaction_J87=compartment_c1*reaction_J87_J87_k*x(73);

% Reaction: id = J88, name = pFRS2_pTrkA_degradation	% Local Parameter:   id =  J88_k, name = J88_k
	reaction_J88_J88_k=0.0022;

	reaction_J88=compartment_c1*reaction_J88_J88_k*x(72);

% Reaction: id = J89, name = Shc_pTrkA_degradation	% Local Parameter:   id =  J89_k, name = J89_k
	reaction_J89_J89_k=0.0022;

	reaction_J89=compartment_c1*reaction_J89_J89_k*x(69);

% Reaction: id = J90, name = pShc_pTrkA_degradation	% Local Parameter:   id =  J90_k, name = J90_k
	reaction_J90_J90_k=0.0022;

	reaction_J90=compartment_c1*reaction_J90_J90_k*x(71);

% Reaction: id = J92, name = FRS2_pTrkA_endo_degradation	% Local Parameter:   id =  J92_k, name = J92_k
	reaction_J92_J92_k=4.2E-4;

	reaction_J92=compartment_c1*reaction_J92_J92_k*x(75);

% Reaction: id = J93, name = Shc_pTrkA_endo_degradation	% Local Parameter:   id =  J93_k, name = J93_k
	reaction_J93_J93_k=4.2E-4;

	reaction_J93=compartment_c1*reaction_J93_J93_k*x(70);

% Reaction: id = J94, name = pShc_pTrkA_endo_degradation	% Local Parameter:   id =  J94_k, name = J94_k
	reaction_J94_J94_k=4.2E-4;

	reaction_J94=compartment_c1*reaction_J94_J94_k*x(74);

% Reaction: id = J95, name = binding_Grb2_SOS_to_pShc_pTrkA_endo	% Local Parameter:   id =  J95_k1, name = J95_k1
	reaction_J95_J95_k1=10.0;
	% Local Parameter:   id =  J95_k2, name = J95_k2
	reaction_J95_J95_k2=0.2;

	reaction_J95=compartment_c1*(reaction_J95_J95_k1*x(7)*x(74)-reaction_J95_J95_k2*x(80));

% Reaction: id = J96, name = binding_Grb2_SOS_to_pShc_pTrkA	% Local Parameter:   id =  J96_k1, name = J96_k1
	reaction_J96_J96_k1=10.0;
	% Local Parameter:   id =  J96_k2, name = J96_k2
	reaction_J96_J96_k2=0.2;

	reaction_J96=compartment_c1*(reaction_J96_J96_k1*x(7)*x(71)-reaction_J96_J96_k2*x(78));

% Reaction: id = J97, name = Grb2_SOS_pShc_pTrkA_ubiquitination	% Local Parameter:   id =  J97_k, name = J97_k
	reaction_J97_J97_k=6.3E-4;

	reaction_J97=compartment_c1*reaction_J97_J97_k*x(78);

% Reaction: id = J98, name = Crk_C3G_pFRS2_pTrkA_ubiquitination	% Local Parameter:   id =  J98_k, name = J98_k
	reaction_J98_J98_k=6.3E-4;

	reaction_J98=compartment_c1*reaction_J98_J98_k*x(79);

% Reaction: id = J99, name = pFRS2_pTrkA_ubiquitination	% Local Parameter:   id =  J99_k, name = J99_k
	reaction_J99_J99_k=6.3E-4;

	reaction_J99=compartment_c1*reaction_J99_J99_k*x(72);

% Reaction: id = J100, name = FRS2_pTrkA_ubiquitination	% Local Parameter:   id =  J100_k, name = J100_k
	reaction_J100_J100_k=6.3E-4;

	reaction_J100=compartment_c1*reaction_J100_J100_k*x(73);

% Reaction: id = J101, name = pShc_pTrkA_ubiquitination	% Local Parameter:   id =  J101_k, name = J101_k
	reaction_J101_J101_k=6.3E-4;

	reaction_J101=compartment_c1*reaction_J101_J101_k*x(71);

% Reaction: id = J102, name = Shc_pTrkA_ubiquitination	% Local Parameter:   id =  J102_k, name = J102_k
	reaction_J102_J102_k=6.3E-4;

	reaction_J102=compartment_c1*reaction_J102_J102_k*x(69);

% Reaction: id = J103, name = binding_Crk_C3G_to_pFRS2_pTrkA	% Local Parameter:   id =  J103_k1, name = J103_k1
	reaction_J103_J103_k1=1.0;
	% Local Parameter:   id =  J103_k2, name = J103_k2
	reaction_J103_J103_k2=0.2;

	reaction_J103=compartment_c1*(reaction_J103_J103_k1*x(64)*x(72)-reaction_J103_J103_k2*x(79));

% Reaction: id = J104, name = binding_Crk_C3G_to_pFRS2_pTrkA_endo	% Local Parameter:   id =  J104_k1, name = J104_k1
	reaction_J104_J104_k1=1.0;
	% Local Parameter:   id =  J104_k2, name = J104_k2
	reaction_J104_J104_k2=0.2;

	reaction_J104=compartment_c1*(reaction_J104_J104_k1*x(64)*x(76)-reaction_J104_J104_k2*x(77));

% Reaction: id = J105, name = binding_Grb2_SOS_pShc_to_pTrkA	% Local Parameter:   id =  J105_k1, name = J105_k1
	reaction_J105_J105_k1=10.0;
	% Local Parameter:   id =  J105_k2, name = J105_k2
	reaction_J105_J105_k2=0.2;

	reaction_J105=compartment_c1*(reaction_J105_J105_k1*x(48)*x(63)-reaction_J105_J105_k2*x(78));

% Reaction: id = J106, name = binding_Grb2_SOS_pShc_to_pTrkA_endo	% Local Parameter:   id =  J106_k1, name = J106_k1
	reaction_J106_J106_k1=10.0;
	% Local Parameter:   id =  J106_k2, name = J106_k2
	reaction_J106_J106_k2=0.2;

	reaction_J106=compartment_c1*(reaction_J106_J106_k1*x(48)*x(36)-reaction_J106_J106_k2*x(80));

% Reaction: id = J107, name = Crk_C3G_pFRS2_pTrkA_degradation	% Local Parameter:   id =  J107_k, name = J107_k
	reaction_J107_J107_k=0.0022;

	reaction_J107=compartment_c1*reaction_J107_J107_k*x(79);

% Reaction: id = J108, name = Crk_C3G_pFRS2_pTrkA_endo_degradation	% Local Parameter:   id =  J108_k, name = J108_k
	reaction_J108_J108_k=4.2E-4;

	reaction_J108=compartment_c1*reaction_J108_J108_k*x(77);

% Reaction: id = J109, name = Grb2_SOS_pShc_pTrkA_degradation	% Local Parameter:   id =  J109_k, name = J109_k
	reaction_J109_J109_k=0.0022;

	reaction_J109=compartment_c1*reaction_J109_J109_k*x(78);

% Reaction: id = J110, name = Grb2_SOS_pShc_pTrkA_endo_degradation	% Local Parameter:   id =  J110_k, name = J110_k
	reaction_J110_J110_k=4.2E-4;

	reaction_J110=compartment_c1*reaction_J110_J110_k*x(80);

% Reaction: id = J112, name = pFRS2_pTrkA_endo_degradation	% Local Parameter:   id =  J112_k, name = J112_k
	reaction_J112_J112_k=4.2E-4;

	reaction_J112=reaction_J112_J112_k*x(76);

% Reaction: id = J113, name = form_NGFreceptor	% Local Parameter:   id =  J113_k1, name = J113_k1
	reaction_J113_J113_k1=8.333E-4;
	% Local Parameter:   id =  J113_k2, name = J113_k2
	reaction_J113_J113_k2=2.7778E-4;

	reaction_J113=compartment_compartment*(reaction_J113_J113_k1*x(95)-reaction_J113_J113_k2*x(33));

% Reaction: id = J115, name = binding_Shc_to_dpEGFR_c_Cbl	% Local Parameter:   id =  J115_k1, name = J115_k1
	reaction_J115_J115_k1=10.0;
	% Local Parameter:   id =  J115_k2, name = J115_k2
	reaction_J115_J115_k2=0.2;

	reaction_J115=compartment_c1*(reaction_J115_J115_k1*x(13)*x(19)-reaction_J115_J115_k2*x(49));

% Reaction: id = J116, name = binding_pShc_to_dpEGFR_c_Cbl	% Local Parameter:   id =  J116_k1, name = J116_k1
	reaction_J116_J116_k1=10.0;
	% Local Parameter:   id =  J116_k2, name = J116_k2
	reaction_J116_J116_k2=0.2;

	reaction_J116=compartment_c1*(reaction_J116_J116_k1*x(19)*x(34)-reaction_J116_J116_k2*x(21));

% Reaction: id = J117, name = binding_SOS_Grb2_to_pShc_dpEGFR_c_Cbl	% Local Parameter:   id =  J117_k1, name = J117_k1
	reaction_J117_J117_k1=10.0;
	% Local Parameter:   id =  J117_k2, name = J117_k2
	reaction_J117_J117_k2=0.2;

	reaction_J117=compartment_c1*(reaction_J117_J117_k1*x(21)*x(7)-reaction_J117_J117_k2*x(44));

% Reaction: id = J119, name = binding_c_Cbl_to_Crk_C3G_pFRS2_dpEGFR	% Local Parameter:   id =  J119_k1, name = J119_k1
	reaction_J119_J119_k1=0.5;
	% Local Parameter:   id =  J119_k2, name = J119_k2
	reaction_J119_J119_k2=0.2;

	reaction_J119=compartment_c1*(reaction_J119_J119_k1*x(24)*x(42)-reaction_J119_J119_k2*x(40));

% Reaction: id = J118, name = binding_FRS2_to_dpEGFR_c_Cbl	% Local Parameter:   id =  J118_k1, name = J118_k1
	reaction_J118_J118_k1=1.0;
	% Local Parameter:   id =  J118_k2, name = J118_k2
	reaction_J118_J118_k2=0.2;

	reaction_J118=compartment_c1*(reaction_J118_J118_k1*x(19)*x(12)-reaction_J118_J118_k2*x(55));

% Reaction: id = J120, name = binding_pFRS2_to_dpEGFR_c_Cbl	% Local Parameter:   id =  J120_k1, name = J120_k1
	reaction_J120_J120_k1=1.0;
	% Local Parameter:   id =  J120_k2, name = J120_k2
	reaction_J120_J120_k2=0.2;

	reaction_J120=compartment_c1*(reaction_J120_J120_k1*x(19)*x(51)-reaction_J120_J120_k2*x(22));

% Reaction: id = J121, name = Ras_GTP_dephosphorylation	% Local Parameter:   id =  J121_Vmax, name = J121_Vmax
	reaction_J121_J121_Vmax=10.0;
	% Local Parameter:   id =  J121_Km1, name = J121_Km1
	reaction_J121_J121_Km1=1.0;

	reaction_J121=compartment_c1*reaction_J121_J121_Vmax*x(57)*x(53)/(reaction_J121_J121_Km1+x(57));

% Reaction: id = J122, name = RAP1_GTP_dephosphorylation	% Local Parameter:   id =  J122_Vmax, name = J122_Vmax
	reaction_J122_J122_Vmax=2.0;
	% Local Parameter:   id =  J122_Km1, name = J122_Km1
	reaction_J122_J122_Km1=1.0;

	reaction_J122=compartment_c1*reaction_J122_J122_Vmax*x(65)*x(31)/(reaction_J122_J122_Km1+x(65));

% Reaction: id = J123, name = Dok_phosphorylation	% Local Parameter:   id =  J123_Vmax, name = J123_Vmax
	reaction_J123_J123_Vmax=0.02;
	% Local Parameter:   id =  J123_Km1, name = J123_Km1
	reaction_J123_J123_Km1=0.1;

	reaction_J123=compartment_c1*reaction_J123_J123_Vmax*x(9)*(x(63)+x(69)+x(71)+x(78)+x(73)+x(72)+x(79))/(reaction_J123_J123_Km1+x(9));

% Reaction: id = J124, name = Grb1_SOS_pShc_dissociation	% Local Parameter:   id =  J124_Vmax, name = J124_Vmax
	reaction_J124_J124_Vmax=1.0;
	% Local Parameter:   id =  J124_Km1, name = J124_Km1
	reaction_J124_J124_Km1=25.641;

	reaction_J124=compartment_c1*reaction_J124_J124_Vmax*x(48)*x(68)/(reaction_J124_J124_Km1+x(48));

% Reaction: id = J133, name = binding_MEK_to_ERK	% Local Parameter:   id =  J133_k1, name = J133_k1
	reaction_J133_J133_k1=16.304;
	% Local Parameter:   id =  J133_k2, name = J133_k2
	reaction_J133_J133_k2=0.6;

	reaction_J133=compartment_c1*(reaction_J133_J133_k1*x(28)*x(16)-reaction_J133_J133_k2*x(37));

% Reaction: id = J134, name = binding_ERK_to_pMEK	% Local Parameter:   id =  J134_k1, name = J134_k1
	reaction_J134_J134_k1=16.304;
	% Local Parameter:   id =  J134_k2, name = J134_k2
	reaction_J134_J134_k2=0.6;

	reaction_J134=compartment_c1*(reaction_J134_J134_k1*x(28)*x(54)-reaction_J134_J134_k2*x(38));

% Reaction: id = J135, name = binding_ERK_to_ppMEK	% Local Parameter:   id =  J135_k1, name = J135_k1
	reaction_J135_J135_k1=16.304;
	% Local Parameter:   id =  J135_k2, name = J135_k2
	reaction_J135_J135_k2=0.6;

	reaction_J135=compartment_c1*(reaction_J135_J135_k1*x(28)*x(61)-reaction_J135_J135_k2*x(67));

% Reaction: id = J136, name = ppMEK_ERK_dissociation	% Local Parameter:   id =  J136_k, name = J136_k
	reaction_J136_J136_k=0.15;

	reaction_J136=compartment_c1*reaction_J136_J136_k*x(67);

% Reaction: id = J137, name = c_Raf_Ras_GTP_dissociation	% Local Parameter:   id =  J137_Vmax, name = J137_Vmax
	reaction_J137_J137_Vmax=10.0;
	% Local Parameter:   id =  J137_Km1, name = J137_Km1
	reaction_J137_J137_Km1=1.0;

	reaction_J137=compartment_c1*reaction_J137_J137_Vmax*x(59)*x(53)/(reaction_J137_J137_Km1+x(59));

% Reaction: id = J138, name = B_Raf_Ras_GTP_dissociation	% Local Parameter:   id =  J138_Vmax, name = J138_Vmax
	reaction_J138_J138_Vmax=10.0;
	% Local Parameter:   id =  J138_Km1, name = J138_Km1
	reaction_J138_J138_Km1=1.0;

	reaction_J138=compartment_c1*reaction_J138_J138_Vmax*x(60)*x(53)/(reaction_J138_J138_Km1+x(60));

% Reaction: id = J139, name = B_Raf_Rap1_GTP_dissociation	% Local Parameter:   id =  J139_Vmax, name = J139_Vmax
	reaction_J139_J139_Vmax=2.0;
	% Local Parameter:   id =  J139_Km1, name = J139_Km1
	reaction_J139_J139_Km1=1.0;

	reaction_J139=compartment_c1*reaction_J139_J139_Vmax*x(20)*x(31)/(reaction_J139_J139_Km1+x(20));

% Reaction: id = J140	% Local Parameter:   id =  J140_k1, name = J140_k1
	reaction_J140_J140_k1=15.625;
	% Local Parameter:   id =  J140_k2, name = J140_k2
	reaction_J140_J140_k2=2.0;

	reaction_J140=compartment_c1*(reaction_J140_J140_k1*x(59)*x(16)-reaction_J140_J140_k2*x(81));

% Reaction: id = J141	% Local Parameter:   id =  J141_k1, name = J141_k1
	reaction_J141_J141_k1=15.625;
	% Local Parameter:   id =  J141_k2, name = J141_k2
	reaction_J141_J141_k2=2.0;

	reaction_J141=compartment_c1*(reaction_J141_J141_k1*x(59)*x(54)-reaction_J141_J141_k2*x(82));

% Reaction: id = J142	% Local Parameter:   id =  J142_k1, name = J142_k1
	reaction_J142_J142_k1=15.625;
	% Local Parameter:   id =  J142_k2, name = J142_k2
	reaction_J142_J142_k2=2.0;

	reaction_J142=compartment_c1*(reaction_J142_J142_k1*x(59)*x(37)-reaction_J142_J142_k2*x(83));

% Reaction: id = J143	% Local Parameter:   id =  J143_k1, name = J143_k1
	reaction_J143_J143_k1=15.625;
	% Local Parameter:   id =  J143_k2, name = J143_k2
	reaction_J143_J143_k2=2.0;

	reaction_J143=compartment_c1*(reaction_J143_J143_k1*x(59)*x(38)-reaction_J143_J143_k2*x(84));

% Reaction: id = J144	% Local Parameter:   id =  J144_k1, name = J144_k1
	reaction_J144_J144_k1=6.25;
	% Local Parameter:   id =  J144_k2, name = J144_k2
	reaction_J144_J144_k2=0.8;

	reaction_J144=compartment_c1*(reaction_J144_J144_k1*x(60)*x(16)-reaction_J144_J144_k2*x(85));

% Reaction: id = J145	% Local Parameter:   id =  J145_k1, name = J145_k1
	reaction_J145_J145_k1=6.25;
	% Local Parameter:   id =  J145_k2, name = J145_k2
	reaction_J145_J145_k2=0.8;

	reaction_J145=compartment_c1*(reaction_J145_J145_k1*x(60)*x(54)-reaction_J145_J145_k2*x(86));

% Reaction: id = J146	% Local Parameter:   id =  J146_k1, name = J146_k1
	reaction_J146_J146_k1=6.25;
	% Local Parameter:   id =  J146_k2, name = J146_k2
	reaction_J146_J146_k2=0.8;

	reaction_J146=compartment_c1*(reaction_J146_J146_k1*x(60)*x(37)-reaction_J146_J146_k2*x(87));

% Reaction: id = J147	% Local Parameter:   id =  J147_k1, name = J147_k1
	reaction_J147_J147_k1=6.25;
	% Local Parameter:   id =  J147_k2, name = J147_k2
	reaction_J147_J147_k2=0.8;

	reaction_J147=compartment_c1*(reaction_J147_J147_k1*x(60)*x(38)-reaction_J147_J147_k2*x(88));

% Reaction: id = J148	% Local Parameter:   id =  J148_k1, name = J148_k1
	reaction_J148_J148_k1=9.375;
	% Local Parameter:   id =  J148_k2, name = J148_k2
	reaction_J148_J148_k2=1.2;

	reaction_J148=compartment_c1*(reaction_J148_J148_k1*x(20)*x(16)-reaction_J148_J148_k2*x(89));

% Reaction: id = J149	% Local Parameter:   id =  J149_k1, name = J149_k1
	reaction_J149_J149_k1=9.375;
	% Local Parameter:   id =  J149_k2, name = J149_k2
	reaction_J149_J149_k2=1.2;

	reaction_J149=compartment_c1*(reaction_J149_J149_k1*x(20)*x(54)-reaction_J149_J149_k2*x(90));

% Reaction: id = J150	% Local Parameter:   id =  J150_k1, name = J150_k1
	reaction_J150_J150_k1=9.375;
	% Local Parameter:   id =  J150_k2, name = J150_k2
	reaction_J150_J150_k2=1.2;

	reaction_J150=compartment_c1*(reaction_J150_J150_k1*x(20)*x(37)-reaction_J150_J150_k2*x(91));

% Reaction: id = J151	% Local Parameter:   id =  J151_k1, name = J151_k1
	reaction_J151_J151_k1=9.375;
	% Local Parameter:   id =  J151_k2, name = J151_k2
	reaction_J151_J151_k2=1.2;

	reaction_J151=compartment_c1*(reaction_J151_J151_k1*x(20)*x(38)-reaction_J151_J151_k2*x(92));

% Reaction: id = J152	% Local Parameter:   id =  J152_k, name = J152_k
	reaction_J152_J152_k=0.5;

	reaction_J152=compartment_c1*reaction_J152_J152_k*x(81);

% Reaction: id = J153	% Local Parameter:   id =  J153_k, name = J153_k
	reaction_J153_J153_k=0.5;

	reaction_J153=compartment_c1*reaction_J153_J153_k*x(82);

% Reaction: id = J154	% Local Parameter:   id =  J154_k, name = J154_k
	reaction_J154_J154_k=0.5;

	reaction_J154=compartment_c1*reaction_J154_J154_k*x(83);

% Reaction: id = J155	% Local Parameter:   id =  J155_k, name = J155_k
	reaction_J155_J155_k=0.5;

	reaction_J155=compartment_c1*reaction_J155_J155_k*x(84);

% Reaction: id = J156	% Local Parameter:   id =  J156_k, name = J156_k
	reaction_J156_J156_k=0.2;

	reaction_J156=compartment_c1*reaction_J156_J156_k*x(85);

% Reaction: id = J157	% Local Parameter:   id =  J157_k, name = J157_k
	reaction_J157_J157_k=0.2;

	reaction_J157=compartment_c1*reaction_J157_J157_k*x(86);

% Reaction: id = J158	% Local Parameter:   id =  J158_k, name = J158_k
	reaction_J158_J158_k=0.2;

	reaction_J158=compartment_c1*reaction_J158_J158_k*x(87);

% Reaction: id = J159	% Local Parameter:   id =  J159_k, name = J159_k
	reaction_J159_J159_k=0.2;

	reaction_J159=compartment_c1*reaction_J159_J159_k*x(88);

% Reaction: id = J160	% Local Parameter:   id =  J160_k, name = J160_k
	reaction_J160_J160_k=0.3;

	reaction_J160=compartment_c1*reaction_J160_J160_k*x(89);

% Reaction: id = J161	% Local Parameter:   id =  J161_k, name = J161_k
	reaction_J161_J161_k=0.3;

	reaction_J161=compartment_c1*reaction_J161_J161_k*x(90);

% Reaction: id = J162	% Local Parameter:   id =  J162_k, name = J162_k
	reaction_J162_J162_k=0.3;

	reaction_J162=compartment_c1*reaction_J162_J162_k*x(91);

% Reaction: id = J163	% Local Parameter:   id =  J163_k, name = J163_k
	reaction_J163_J163_k=0.3;

	reaction_J163=compartment_c1*reaction_J163_J163_k*x(92);

% Reaction: id = J164	% Local Parameter:   id =  J164_k, name = J164_k
	reaction_J164_J164_k=0.001;

	reaction_J164=compartment_c1*reaction_J164_J164_k*x(58);

% Reaction: id = J165	% Local Parameter:   id =  J165_k1, name = J165_k1
	reaction_J165_J165_k1=15.0;
	% Local Parameter:   id =  J165_k2, name = J165_k2
	reaction_J165_J165_k2=0.24;

	reaction_J165=compartment_c1*(reaction_J165_J165_k1*x(17)*x(68)-reaction_J165_J165_k2*x(94));

% Reaction: id = J166	% Local Parameter:   id =  J166_k1, name = J166_k1
	reaction_J166_J166_k1=15.0;
	% Local Parameter:   id =  J166_k2, name = J166_k2
	reaction_J166_J166_k2=0.24;

	reaction_J166=compartment_c1*(reaction_J166_J166_k1*x(17)*x(62)-reaction_J166_J166_k2*x(93));

% Reaction: id = J167	% Local Parameter:   id =  J167_k, name = J167_k
	reaction_J167_J167_k=0.06;

	reaction_J167=compartment_c1*reaction_J167_J167_k*x(93);

% Reaction: id = J168	% Local Parameter:   id =  J168_k, name = J168_k
	reaction_J168_J168_k=0.06;

	reaction_J168=compartment_c1*reaction_J168_J168_k*x(94);

	xdot=zeros(99,1);
	
% Species:   id = EGFR, name = EGFR, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_re1) + (-1.0 * reaction_re2));
	
% Species:   id = L_EGFR, name = L_EGFR, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_re2) + (-2.0 * reaction_re8));
	
% Species:   id = L_EGFR_dimer, name = L_EGFR_dimer, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_re8) + (-1.0 * reaction_J5));
	
% Species:   id = SOS, name = SOS, affected by kineticLaw
	xdot(4) = (1/(compartment_c1))*((-1.0 * reaction_J3) + ( 1.0 * reaction_J10) + (-1.0 * reaction_J51));
	
% Species:   id = L_dpEGFR, name = L_dpEGFR, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_J5) + (-1.0 * reaction_J6) + (-1.0 * reaction_J7) + (-1.0 * reaction_J12) + (-1.0 * reaction_J23) + (-1.0 * reaction_J35) + (-1.0 * reaction_J36));
	
% Species:   id = pSOS, name = pSOS, affected by kineticLaw
	xdot(6) = (1/(compartment_c1))*((-1.0 * reaction_J4) + (-1.0 * reaction_J10) + ( 1.0 * reaction_J51));
	
% Species:   id = SOS_Grb2, name = SOS_Grb2, affected by kineticLaw
	xdot(7) = (1/(compartment_c1))*(( 1.0 * reaction_J3) + ( 1.0 * reaction_J11) + (-1.0 * reaction_J22) + (-1.0 * reaction_J24) + ( 1.0 * reaction_J30) + (-1.0 * reaction_J50) + (-1.0 * reaction_J95) + (-1.0 * reaction_J96) + (-1.0 * reaction_J117));
	
% Species:   id = Grb2, name = Grb2, affected by kineticLaw
	xdot(8) = (1/(compartment_c1))*((-1.0 * reaction_J3) + (-1.0 * reaction_J4));
	
% Species:   id = Dok, name = Dok, affected by kineticLaw
	xdot(9) = (1/(compartment_c1))*(( 1.0 * reaction_J8) + (-1.0 * reaction_J31) + (-1.0 * reaction_J123));
	
% Species:   id = pDok, name = pDok, affected by kineticLaw
	xdot(10) = (1/(compartment_c1))*((-1.0 * reaction_J8) + ( 1.0 * reaction_J31) + (-1.0 * reaction_J49) + ( 1.0 * reaction_J123));
	
% Species:   id = Crk, name = Crk, affected by kineticLaw
	xdot(11) = (1/(compartment_c1))*((-1.0 * reaction_J34));
	
% Species:   id = FRS2, name = FRS2, affected by kineticLaw
	xdot(12) = (1/(compartment_c1))*(( 1.0 * reaction_J33) + (-1.0 * reaction_J35) + ( 1.0 * reaction_J46) + (-1.0 * reaction_J77) + (-1.0 * reaction_J84) + ( 1.0 * reaction_J87) + ( 1.0 * reaction_J92) + (-1.0 * reaction_J118));
	
% Species:   id = Shc, name = Shc, affected by kineticLaw
	xdot(13) = (1/(compartment_c1))*((-1.0 * reaction_J12) + ( 1.0 * reaction_J18) + ( 1.0 * reaction_J30) + ( 1.0 * reaction_J32) + (-1.0 * reaction_J75) + (-1.0 * reaction_J79) + ( 1.0 * reaction_J89) + ( 1.0 * reaction_J93) + (-1.0 * reaction_J115));
	
% Species:   id = pSOS_Grb2, name = pSOS_Grb2, affected by kineticLaw
	xdot(14) = (1/(compartment_c1))*(( 1.0 * reaction_J4) + (-1.0 * reaction_J11) + ( 1.0 * reaction_J50) + ( 1.0 * reaction_J124));
	
% Species:   id = Rap1_GDP, name = Rap1_GDP, affected by kineticLaw
	xdot(15) = (1/(compartment_c1))*(( 1.0 * reaction_J67) + (-1.0 * reaction_J68) + ( 1.0 * reaction_J122) + ( 1.0 * reaction_J139));
	
% Species:   id = MEK, name = MEK, affected by kineticLaw
	xdot(16) = (1/(compartment_c1))*(( 1.0 * reaction_J58) + (-1.0 * reaction_J133) + (-1.0 * reaction_J140) + (-1.0 * reaction_J144) + (-1.0 * reaction_J148));
	
% Species:   id = MKP3, name = MKP3, affected by kineticLaw
	xdot(17) = (1/(compartment_c1))*((-1.0 * reaction_J165) + (-1.0 * reaction_J166) + ( 1.0 * reaction_J167) + ( 1.0 * reaction_J168));
	
% Species:   id = pShc_dpEGFR, name = pShc_dpEGFR, affected by kineticLaw
	xdot(18) = (1/(compartment_c1))*(( 1.0 * reaction_J7) + (-1.0 * reaction_J9) + ( 1.0 * reaction_J13) + (-1.0 * reaction_J24));
	
% Species:   id = dpEGFR_c_Cbl, name = dpEGFR_c_Cbl, affected by kineticLaw
	xdot(19) = (1/(compartment_c1))*(( 1.0 * reaction_J6) + (-1.0 * reaction_J14) + (-1.0 * reaction_J27) + (-1.0 * reaction_J115) + (-1.0 * reaction_J116) + (-1.0 * reaction_J118) + (-1.0 * reaction_J120));
	
% Species:   id = B_Raf_Rap1_GTP, name = B_Raf_Rap1_GTP, affected by kineticLaw
	xdot(20) = (1/(compartment_c1))*(( 1.0 * reaction_J53) + (-1.0 * reaction_J139) + (-1.0 * reaction_J148) + (-1.0 * reaction_J149) + (-1.0 * reaction_J150) + (-1.0 * reaction_J151) + ( 1.0 * reaction_J160) + ( 1.0 * reaction_J161) + ( 1.0 * reaction_J162) + ( 1.0 * reaction_J163));
	
% Species:   id = pShc_dpEGFR_c_Cbl, name = pShc_dpEGFR_c_Cbl, affected by kineticLaw
	xdot(21) = (1/(compartment_c1))*(( 1.0 * reaction_J9) + (-1.0 * reaction_J19) + ( 1.0 * reaction_J21) + ( 1.0 * reaction_J116) + (-1.0 * reaction_J117));
	
% Species:   id = pFRS2_dpEGFR_c_Cbl, name = pFRS2_dpEGFR_c_Cbl, affected by kineticLaw
	xdot(22) = (1/(compartment_c1))*(( 1.0 * reaction_J40) + (-1.0 * reaction_J41) + ( 1.0 * reaction_J43) + (-1.0 * reaction_J44) + ( 1.0 * reaction_J120));
	
% Species:   id = Shc_dpEGFR, name = Shc_dpEGFR, affected by kineticLaw
	xdot(23) = (1/(compartment_c1))*(( 1.0 * reaction_J12) + (-1.0 * reaction_J13) + (-1.0 * reaction_J16));
	
% Species:   id = c_Cbl, name = c_Cbl, affected by kineticLaw
	xdot(24) = (1/(compartment_c1))*((-1.0 * reaction_J6) + (-1.0 * reaction_J9) + ( 1.0 * reaction_J15) + (-1.0 * reaction_J16) + ( 1.0 * reaction_J18) + ( 1.0 * reaction_J20) + (-1.0 * reaction_J25) + ( 1.0 * reaction_J29) + (-1.0 * reaction_J39) + (-1.0 * reaction_J40) + ( 1.0 * reaction_J46) + ( 1.0 * reaction_J47) + (-1.0 * reaction_J119) + ( 1.0 * reaction_J164));
	
% Species:   id = RasGAP, name = RasGAP, affected by kineticLaw
	xdot(25) = (1/(compartment_c1))*((-1.0 * reaction_J49));
	
% Species:   id = c_Raf, name = c_Raf, affected by kineticLaw
	xdot(26) = (1/(compartment_c1))*((-1.0 * reaction_J52) + ( 1.0 * reaction_J137));
	
% Species:   id = B_Raf, name = B_Raf, affected by kineticLaw
	xdot(27) = (1/(compartment_c1))*((-1.0 * reaction_J53) + (-1.0 * reaction_J54) + ( 1.0 * reaction_J138) + ( 1.0 * reaction_J139));
	
% Species:   id = ERK, name = ERK, affected by kineticLaw
	xdot(28) = (1/(compartment_c1))*((-1.0 * reaction_J133) + (-1.0 * reaction_J134) + (-1.0 * reaction_J135) + ( 1.0 * reaction_J167) + ( 1.0 * reaction_J168));
	
% Species:   id = PP2A, name = PP2A
% Warning species is not changed by either rules or reactions
	xdot(29) = ;
	
% Species:   id = Ras_GDP, name = Ras_GDP, affected by kineticLaw
	xdot(30) = (1/(compartment_c1))*(( 1.0 * reaction_J66) + (-1.0 * reaction_J69) + ( 1.0 * reaction_J121) + ( 1.0 * reaction_J137) + ( 1.0 * reaction_J138));
	
% Species:   id = Rap1GAP, name = Rap1GAP
% Warning species is not changed by either rules or reactions
	xdot(31) = ;
	
% Species:   id = C3G, name = C3G, affected by kineticLaw
	xdot(32) = (1/(compartment_c1))*((-1.0 * reaction_J34));
	
% Species:   id = NGFR, name = NGFR, affected by kineticLaw
	xdot(33) = (1/(compartment_compartment))*((-1.0 * reaction_J70) + ( 1.0 * reaction_J113));
	
% Species:   id = pShc, name = pShc, affected by kineticLaw
	xdot(34) = (1/(compartment_c1))*((-1.0 * reaction_J7) + ( 1.0 * reaction_J20) + (-1.0 * reaction_J22) + (-1.0 * reaction_J32) + (-1.0 * reaction_J76) + (-1.0 * reaction_J80) + ( 1.0 * reaction_J90) + ( 1.0 * reaction_J94) + (-1.0 * reaction_J116) + ( 1.0 * reaction_J124));
	
% Species:   id = pFRS2_dpEGFR, name = pFRS2_dpEGFR, affected by kineticLaw
	xdot(35) = (1/(compartment_c1))*(( 1.0 * reaction_J36) + ( 1.0 * reaction_J37) + (-1.0 * reaction_J38) + (-1.0 * reaction_J40));
	
% Species:   id = pTrkA_endo, name = pTrkA_endo, affected by kineticLaw
	xdot(36) = (1/(compartment_c1))*(( 1.0 * reaction_J72) + (-1.0 * reaction_J73) + (-1.0 * reaction_J79) + (-1.0 * reaction_J80) + (-1.0 * reaction_J84) + (-1.0 * reaction_J85) + (-1.0 * reaction_J106));
	
% Species:   id = MEK_ERK, name = MEK_ERK, affected by kineticLaw
	xdot(37) = (1/(compartment_c1))*(( 1.0 * reaction_J62) + ( 1.0 * reaction_J133) + (-1.0 * reaction_J142) + (-1.0 * reaction_J146) + (-1.0 * reaction_J150));
	
% Species:   id = pMEK_ERK, name = pMEK_ERK, affected by kineticLaw
	xdot(38) = (1/(compartment_c1))*(( 1.0 * reaction_J61) + (-1.0 * reaction_J62) + ( 1.0 * reaction_J134) + (-1.0 * reaction_J143) + (-1.0 * reaction_J147) + (-1.0 * reaction_J151) + ( 1.0 * reaction_J154) + ( 1.0 * reaction_J158) + ( 1.0 * reaction_J162));
	
% Species:   id = FRS2_dpEGFR_c_Cbl_ubiq, name = FRS2_dpEGFR_c_Cbl_ubiq, affected by kineticLaw
	xdot(39) = (1/(compartment_c1))*(( 1.0 * reaction_J42) + (-1.0 * reaction_J46));
	
% Species:   id = Crk_C3G_pFRS2_dpEGFR_c_Cbl, name = Crk_C3G_pFRS2_dpEGFR_c_Cbl, affected by kineticLaw
	xdot(40) = (1/(compartment_c1))*(( 1.0 * reaction_J44) + (-1.0 * reaction_J45) + ( 1.0 * reaction_J119));
	
% Species:   id = pShc_dpEGFR_c_Cbl_ubiq, name = pShc_dpEGFR_c_Cbl_ubiq, affected by kineticLaw
	xdot(41) = (1/(compartment_c1))*(( 1.0 * reaction_J19) + (-1.0 * reaction_J20));
	
% Species:   id = Crk_C3G_pFRS2_dpEGFR, name = Crk_C3G_pFRS2_dpEGFR, affected by kineticLaw
	xdot(42) = (1/(compartment_c1))*(( 1.0 * reaction_J38) + (-1.0 * reaction_J119));
	
% Species:   id = Grb2_SOS_pShc_dpEGFR_c_Cbl_ubiq, name = Grb2_SOS_pShc_dpEGFR_c_Cbl_ubiq, affected by kineticLaw
	xdot(43) = (1/(compartment_c1))*(( 1.0 * reaction_J28) + (-1.0 * reaction_J29));
	
% Species:   id = Grb2_SOS_pShc_dpEGFR_c_Cbl, name = Grb2_SOS_pShc_dpEGFR_c_Cbl, affected by kineticLaw
	xdot(44) = (1/(compartment_c1))*(( 1.0 * reaction_J25) + ( 1.0 * reaction_J27) + (-1.0 * reaction_J28) + ( 1.0 * reaction_J117));
	
% Species:   id = Shc_dpEGFR_c_Cbl_ubiq, name = Shc_dpEGFR_c_Cbl_ubiq, affected by kineticLaw
	xdot(45) = (1/(compartment_c1))*(( 1.0 * reaction_J17) + (-1.0 * reaction_J18));
	
% Species:   id = dpEGFR_c_Cbl_ubiq, name = dpEGFR_c_Cbl_ubiq, affected by kineticLaw
	xdot(46) = (1/(compartment_c1))*(( 1.0 * reaction_J14) + (-1.0 * reaction_J15));
	
% Species:   id = proteosome, name = proteasome, affected by kineticLaw
	xdot(47) = (1/(compartment_c1))*(( 1.0 * reaction_J15) + ( 1.0 * reaction_J18) + ( 1.0 * reaction_J20) + ( 1.0 * reaction_J29) + ( 1.0 * reaction_J46) + ( 1.0 * reaction_J47));
	
% Species:   id = Grb2_SOS_pShc, name = Grb2_SOS_pShc, affected by kineticLaw
	xdot(48) = (1/(compartment_c1))*(( 1.0 * reaction_J22) + (-1.0 * reaction_J23) + (-1.0 * reaction_J27) + ( 1.0 * reaction_J29) + (-1.0 * reaction_J30) + (-1.0 * reaction_J105) + (-1.0 * reaction_J106) + ( 1.0 * reaction_J109) + ( 1.0 * reaction_J110) + (-1.0 * reaction_J124));
	
% Species:   id = Shc_dpEGFR_c_Cbl, name = Shc_dpEGFR_c_Cbl, affected by kineticLaw
	xdot(49) = (1/(compartment_c1))*(( 1.0 * reaction_J16) + (-1.0 * reaction_J17) + (-1.0 * reaction_J21) + ( 1.0 * reaction_J115));
	
% Species:   id = Grb2_SOS_pShc_dpEGFR, name = Grb2_SOS_pShc_dpEGFR, affected by kineticLaw
	xdot(50) = (1/(compartment_c1))*(( 1.0 * reaction_J23) + ( 1.0 * reaction_J24) + (-1.0 * reaction_J25));
	
% Species:   id = pFRS2, name = pFRS2, affected by kineticLaw
	xdot(51) = (1/(compartment_c1))*((-1.0 * reaction_J33) + (-1.0 * reaction_J36) + ( 1.0 * reaction_J47) + (-1.0 * reaction_J78) + (-1.0 * reaction_J85) + ( 1.0 * reaction_J88) + ( 1.0 * reaction_J107) + ( 1.0 * reaction_J108) + ( 1.0 * reaction_J112) + (-1.0 * reaction_J120) + ( 1.0 * reaction_J164));
	
% Species:   id = FRS2_dpEGFR, name = FRS2_dpEGFR, affected by kineticLaw
	xdot(52) = (1/(compartment_c1))*(( 1.0 * reaction_J35) + (-1.0 * reaction_J37) + (-1.0 * reaction_J39));
	
% Species:   id = pDok_RasGAP, name = pDok_RasGAP, affected by kineticLaw
	xdot(53) = (1/(compartment_c1))*(( 1.0 * reaction_J49));
	
% Species:   id = pMEK, name = pMEK, affected by kineticLaw
	xdot(54) = (1/(compartment_c1))*(( 1.0 * reaction_J57) + (-1.0 * reaction_J58) + (-1.0 * reaction_J134) + (-1.0 * reaction_J141) + (-1.0 * reaction_J145) + (-1.0 * reaction_J149) + ( 1.0 * reaction_J152) + ( 1.0 * reaction_J156) + ( 1.0 * reaction_J160));
	
% Species:   id = FRS2_dpEGFR_c_Cbl, name = FRS2_dpEGFR_c_Cbl, affected by kineticLaw
	xdot(55) = (1/(compartment_c1))*(( 1.0 * reaction_J39) + (-1.0 * reaction_J42) + (-1.0 * reaction_J43) + ( 1.0 * reaction_J118));
	
% Species:   id = pFRS2_dpEGFR_c_Cbl_ubiq, name = pFRS2_dpEGFR_c_Cbl_ubiq, affected by kineticLaw
	xdot(56) = (1/(compartment_c1))*(( 1.0 * reaction_J41) + (-1.0 * reaction_J47));
	
% Species:   id = Ras_GTP, name = Ras_GTP, affected by kineticLaw
	xdot(57) = (1/(compartment_c1))*((-1.0 * reaction_J52) + (-1.0 * reaction_J54) + (-1.0 * reaction_J66) + ( 1.0 * reaction_J69) + (-1.0 * reaction_J121));
	
% Species:   id = Crk_C3G_pFRS2_dpEGFR_c_Cbl_ubiq, name = Crk_C3G_pFRS2_dpEGFR_c_Cbl_ubiq, affected by kineticLaw
	xdot(58) = (1/(compartment_c1))*(( 1.0 * reaction_J45) + (-1.0 * reaction_J164));
	
% Species:   id = c_Raf_Ras_GTP, name = c_Raf_Ras_GTP, affected by kineticLaw
	xdot(59) = (1/(compartment_c1))*(( 1.0 * reaction_J52) + (-1.0 * reaction_J137) + (-1.0 * reaction_J140) + (-1.0 * reaction_J141) + (-1.0 * reaction_J142) + (-1.0 * reaction_J143) + ( 1.0 * reaction_J152) + ( 1.0 * reaction_J153) + ( 1.0 * reaction_J154) + ( 1.0 * reaction_J155));
	
% Species:   id = B_Raf_Ras_GTP, name = B_Raf_Ras_GTP, affected by kineticLaw
	xdot(60) = (1/(compartment_c1))*(( 1.0 * reaction_J54) + (-1.0 * reaction_J138) + (-1.0 * reaction_J144) + (-1.0 * reaction_J145) + (-1.0 * reaction_J146) + (-1.0 * reaction_J147) + ( 1.0 * reaction_J156) + ( 1.0 * reaction_J157) + ( 1.0 * reaction_J158) + ( 1.0 * reaction_J159));
	
% Species:   id = ppMEK, name = ppMEK, affected by kineticLaw
	xdot(61) = (1/(compartment_c1))*((-1.0 * reaction_J57) + (-1.0 * reaction_J135) + ( 1.0 * reaction_J136) + ( 1.0 * reaction_J153) + ( 1.0 * reaction_J157) + ( 1.0 * reaction_J161));
	
% Species:   id = ppERK, name = ppERK, affected by kineticLaw
	xdot(62) = (1/(compartment_c1))*((-2.0 * reaction_J63) + ( 1.0 * reaction_J136) + (-1.0 * reaction_J166) + ( 1.0 * reaction_J168));
	
% Species:   id = pTrkA, name = pTrkA, affected by kineticLaw
	xdot(63) = (1/(compartment_compartment))*(( 1.0 * reaction_J71) + (-1.0 * reaction_J72) + (-1.0 * reaction_J74) + (-1.0 * reaction_J75) + (-1.0 * reaction_J76) + (-1.0 * reaction_J77) + (-1.0 * reaction_J78) + (-1.0 * reaction_J105));
	
% Species:   id = Crk_C3G, name = Crk_C3G, affected by kineticLaw
	xdot(64) = (1/(compartment_c1))*(( 1.0 * reaction_J34) + (-1.0 * reaction_J38) + (-1.0 * reaction_J44) + (-1.0 * reaction_J103) + (-1.0 * reaction_J104) + ( 1.0 * reaction_J107) + ( 1.0 * reaction_J108) + ( 1.0 * reaction_J164));
	
% Species:   id = Rap1_GTP, name = Rap1_GTP, affected by kineticLaw
	xdot(65) = (1/(compartment_c1))*((-1.0 * reaction_J53) + (-1.0 * reaction_J67) + ( 1.0 * reaction_J68) + (-1.0 * reaction_J122));
	
% Species:   id = L_NGFR, name = L_NGFR, affected by kineticLaw
	xdot(66) = (1/(compartment_compartment))*(( 1.0 * reaction_J70) + (-1.0 * reaction_J71));
	
% Species:   id = ppMEK_ERK, name = ppMEK_ERK, affected by kineticLaw
	xdot(67) = (1/(compartment_c1))*((-1.0 * reaction_J61) + ( 1.0 * reaction_J135) + (-1.0 * reaction_J136) + ( 1.0 * reaction_J155) + ( 1.0 * reaction_J159) + ( 1.0 * reaction_J163));
	
% Species:   id = dppERK, name = dppERK, affected by kineticLaw
	xdot(68) = (1/(compartment_c1))*(( 1.0 * reaction_J63) + (-1.0 * reaction_J165));
	
% Species:   id = Shc_pTrkA, name = Shc_pTrkA, affected by kineticLaw
	xdot(69) = (1/(compartment_c1))*(( 1.0 * reaction_J75) + (-1.0 * reaction_J82) + (-1.0 * reaction_J89) + (-1.0 * reaction_J102));
	
% Species:   id = Shc_pTrkA_endo, name = Shc_pTrkA_endo, affected by kineticLaw
	xdot(70) = (1/(compartment_c1))*(( 1.0 * reaction_J79) + (-1.0 * reaction_J81) + (-1.0 * reaction_J93) + ( 1.0 * reaction_J102));
	
% Species:   id = pShc_pTrkA, name = pShc_pTrkA, affected by kineticLaw
	xdot(71) = (1/(compartment_c1))*(( 1.0 * reaction_J76) + ( 1.0 * reaction_J82) + (-1.0 * reaction_J90) + (-1.0 * reaction_J96) + (-1.0 * reaction_J101));
	
% Species:   id = pFRS2_pTrkA, name = pFRS2_pTrkA, affected by kineticLaw
	xdot(72) = (1/(compartment_c1))*(( 1.0 * reaction_J78) + ( 1.0 * reaction_J83) + (-1.0 * reaction_J88) + (-1.0 * reaction_J99) + (-1.0 * reaction_J103));
	
% Species:   id = FRS2_pTrkA, name = FRS2_pTrkA, affected by kineticLaw
	xdot(73) = (1/(compartment_c1))*(( 1.0 * reaction_J77) + (-1.0 * reaction_J83) + (-1.0 * reaction_J87) + (-1.0 * reaction_J100));
	
% Species:   id = pShc_pTrkA_endo, name = pShc_pTrkA_endo, affected by kineticLaw
	xdot(74) = (1/(compartment_c1))*(( 1.0 * reaction_J80) + ( 1.0 * reaction_J81) + (-1.0 * reaction_J94) + (-1.0 * reaction_J95) + ( 1.0 * reaction_J101));
	
% Species:   id = FRS2_pTrkA_endo, name = FRS2_pTrkA_endo, affected by kineticLaw
	xdot(75) = (1/(compartment_c1))*(( 1.0 * reaction_J84) + (-1.0 * reaction_J86) + (-1.0 * reaction_J92) + ( 1.0 * reaction_J100));
	
% Species:   id = pFRS2_pTrkA_endo, name = pFRS2_pTrkA_endo, affected by kineticLaw
	xdot(76) = (1/(compartment_c1))*(( 1.0 * reaction_J85) + ( 1.0 * reaction_J86) + ( 1.0 * reaction_J99) + (-1.0 * reaction_J104) + (-1.0 * reaction_J112));
	
% Species:   id = Crk_C3G_pFRS2_pTrkA_endo, name = Crk_C3G_pFRS2_pTrkA_endo, affected by kineticLaw
	xdot(77) = (1/(compartment_c1))*(( 1.0 * reaction_J98) + ( 1.0 * reaction_J104) + (-1.0 * reaction_J108));
	
% Species:   id = Grb2_SOS_pShc_pTrkA, name = Grb2_SOS_pShc_pTrkA, affected by kineticLaw
	xdot(78) = (1/(compartment_c1))*(( 1.0 * reaction_J96) + (-1.0 * reaction_J97) + ( 1.0 * reaction_J105) + (-1.0 * reaction_J109));
	
% Species:   id = Crk_C3G_pFRS2_pTrkA, name = Crk_C3G_pFRS2_pTrkA, affected by kineticLaw
	xdot(79) = (1/(compartment_c1))*((-1.0 * reaction_J98) + ( 1.0 * reaction_J103) + (-1.0 * reaction_J107));
	
% Species:   id = Grb2_SOS_pShc_pTrkA_endo, name = Grb2_SOS_pShc_pTrkA_endo, affected by kineticLaw
	xdot(80) = (1/(compartment_c1))*(( 1.0 * reaction_J95) + ( 1.0 * reaction_J97) + ( 1.0 * reaction_J106) + (-1.0 * reaction_J110));
	
% Species:   id = c_Raf_Ras_GTP_MEK, name = c_Raf_Ras_GTP_MEK, affected by kineticLaw
	xdot(81) = (1/(compartment_c1))*(( 1.0 * reaction_J140) + (-1.0 * reaction_J152));
	
% Species:   id = c_Raf_Ras_GTP_pMEK, name = c_Raf_Ras_GTP_pMEK, affected by kineticLaw
	xdot(82) = (1/(compartment_c1))*(( 1.0 * reaction_J141) + (-1.0 * reaction_J153));
	
% Species:   id = c_Raf_Ras_GTP_MEK_ERK, name = c_Raf_Ras_GTP_MEK_ERK, affected by kineticLaw
	xdot(83) = (1/(compartment_c1))*(( 1.0 * reaction_J142) + (-1.0 * reaction_J154));
	
% Species:   id = c_Raf_Ras_GTP_pMEK_ERK, name = c_Raf_Ras_GTP_pMEK_ERK, affected by kineticLaw
	xdot(84) = (1/(compartment_c1))*(( 1.0 * reaction_J143) + (-1.0 * reaction_J155));
	
% Species:   id = B_Raf_Ras_GTP_MEK, name = B_Raf_Ras_GTP_MEK, affected by kineticLaw
	xdot(85) = (1/(compartment_c1))*(( 1.0 * reaction_J144) + (-1.0 * reaction_J156));
	
% Species:   id = B_Raf_Ras_GTP_pMEK, name = B_Raf_Ras_GTP_pMEK, affected by kineticLaw
	xdot(86) = (1/(compartment_c1))*(( 1.0 * reaction_J145) + (-1.0 * reaction_J157));
	
% Species:   id = B_Raf_Ras_GTP_MEK_ERK, name = B_Raf_Ras_GTP_MEK_ERK, affected by kineticLaw
	xdot(87) = (1/(compartment_c1))*(( 1.0 * reaction_J146) + (-1.0 * reaction_J158));
	
% Species:   id = B_Raf_Ras_GTP_pMEK_ERK, name = B_Raf_Ras_GTP_pMEK_ERK, affected by kineticLaw
	xdot(88) = (1/(compartment_c1))*(( 1.0 * reaction_J147) + (-1.0 * reaction_J159));
	
% Species:   id = B_Raf_Rap1_GTP_MEK, name = B_Raf_Rap1_GTP_MEK, affected by kineticLaw
	xdot(89) = (1/(compartment_c1))*(( 1.0 * reaction_J148) + (-1.0 * reaction_J160));
	
% Species:   id = B_Raf_Rap1_GTP_pMEK, name = B_Raf_Rap1_GTP_pMEK, affected by kineticLaw
	xdot(90) = (1/(compartment_c1))*(( 1.0 * reaction_J149) + (-1.0 * reaction_J161));
	
% Species:   id = B_Raf_Rap1_GTP_MEK_ERK, name = B_Raf_Rap1_GTP_MEK_ERK, affected by kineticLaw
	xdot(91) = (1/(compartment_c1))*(( 1.0 * reaction_J150) + (-1.0 * reaction_J162));
	
% Species:   id = B_Raf_Rap1_GTP_pMEK_ERK, name = B_Raf_Rap1_GTP_pMEK_ERK, affected by kineticLaw
	xdot(92) = (1/(compartment_c1))*(( 1.0 * reaction_J151) + (-1.0 * reaction_J163));
	
% Species:   id = ppERK_MKP3, name = ppERK_MKP3, affected by kineticLaw
	xdot(93) = (1/(compartment_c1))*(( 1.0 * reaction_J166) + (-1.0 * reaction_J167));
	
% Species:   id = dppERK_MKP3, name = dppERK_MKP3, affected by kineticLaw
	xdot(94) = (1/(compartment_c1))*(( 1.0 * reaction_J165) + (-1.0 * reaction_J168));
	
% Species:   id = pro_TrkA, name = pro_TrkA
%WARNING speciesID: pro_TrkA, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(95) = 0.0;
	
% Species:   id = NGF, name = NGF
%WARNING speciesID: NGF, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(96) = 0.0;
	
% Species:   id = EGF, name = EGF
%WARNING speciesID: EGF, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(97) = 0.0;
	
% Species:   id = pro_EGFR, name = pro_EGFR
%WARNING speciesID: pro_EGFR, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(98) = 0.0;
	
% Species:   id = degradation, name = degradation
%WARNING speciesID: degradation, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(99) = 0.0;
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


