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
% Model name = Costa2014 - Computational Model of L. lactis Metabolism
%
% is http://identifiers.org/biomodels.db/MODEL1503180000
% is http://identifiers.org/biomodels.db/BIOMD0000000572
% isDescribedBy http://identifiers.org/pubmed/24413179
% isDerivedFrom http://identifiers.org/pubmed/11932446
% isDerivedFrom http://identifiers.org/pubmed/22325620
% isDerivedFrom http://identifiers.org/pubmed/15006767
% isDerivedFrom http://identifiers.org/pubmed/873604
% isDerivedFrom http://identifiers.org/pubmed/21841021
% isDerivedFrom http://identifiers.org/pubmed/15345435
%


function main()
%Initial conditions vector
	x0=zeros(26,1);
	x0(1) = 0.0;
	x0(2) = 4.88632508879394;
	x0(3) = 20.3856905308319;
	x0(4) = 38.26;
	x0(5) = 0.0;
	x0(6) = 15.3;
	x0(7) = 0.0;
	x0(8) = 1.26348531244692;
	x0(9) = 2.4790177588998;
	x0(10) = 4.67;
	x0(11) = 2.03337939283534E-6;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 1.0;
	x0(18) = 50.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 80.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;


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

% Compartment: id = compartment_1, name = Intracellular, constant
	compartment_compartment_1=0.047;
% Compartment: id = compartment_2, name = Extracellular, constant
	compartment_compartment_2=1.0;

% Reaction: id = re12, name = PTS_Glc	% Local Parameter:   id =  Vmax_PTS_Glc, name = Vmax_PTS_Glc
	reaction_re12_Vmax_PTS_Glc=3.71082;
	% Local Parameter:   id =  kaPint_PTS_Glc, name = kaPint_PTS_Glc
	reaction_re12_kaPint_PTS_Glc=0.070909;
	% Local Parameter:   id =  kiFBP_PTS_Glc, name = kiFBP_PTS_Glc
	reaction_re12_kiFBP_PTS_Glc=1.16937;
	% Local Parameter:   id =  kmG6P_PTS_Glc, name = kmG6P_PTS_Glc
	reaction_re12_kmG6P_PTS_Glc=0.284871;
	% Local Parameter:   id =  kmGlucose_PTS_Glc, name = kmGlucose_PTS_Glc
	reaction_re12_kmGlucose_PTS_Glc=0.0485045;
	% Local Parameter:   id =  kmPEP_PTS_Glc, name = kmPEP_PTS_Glc
	reaction_re12_kmPEP_PTS_Glc=0.305604;
	% Local Parameter:   id =  kmPYR_PTS_Glc, name = kmPYR_PTS_Glc
	reaction_re12_kmPYR_PTS_Glc=1.95993;

	reaction_re12=function_4_PTS_Glc(x(6), x(1), x(23), x(9), x(12), x(4), reaction_re12_Vmax_PTS_Glc, reaction_re12_kaPint_PTS_Glc, reaction_re12_kiFBP_PTS_Glc, reaction_re12_kmG6P_PTS_Glc, reaction_re12_kmGlucose_PTS_Glc, reaction_re12_kmPEP_PTS_Glc, reaction_re12_kmPYR_PTS_Glc);

% Reaction: id = re13, name = ATPase	% Local Parameter:   id =  Vmax_ATPase, name = Vmax_ATPase
	reaction_re13_Vmax_ATPase=3.2901;
	% Local Parameter:   id =  kmATP_ATPase, name = kmATP_ATPase
	reaction_re13_kmATP_ATPase=4.34159;
	% Local Parameter:   id =  nATPase, name = nATPase
	reaction_re13_nATPase=3.0;

	reaction_re13=compartment_compartment_1*function_4_ATPase(x(2), reaction_re13_Vmax_ATPase, reaction_re13_kmATP_ATPase, reaction_re13_nATPase);

% Reaction: id = re14, name = P_transp	% Local Parameter:   id =  Vmax_Ptransport, name = Vmax_Ptransport
	reaction_re14_Vmax_Ptransport=3.59588;
	% Local Parameter:   id =  kiPint_Ptransport, name = kiPint_Ptransport
	reaction_re14_kiPint_Ptransport=0.561093;
	% Local Parameter:   id =  kmADP_Ptransport, name = kmADP_Ptransport
	reaction_re14_kmADP_Ptransport=0.192278;
	% Local Parameter:   id =  kmATP_Ptransport, name = kmATP_Ptransport
	reaction_re14_kmATP_Ptransport=0.523288;
	% Local Parameter:   id =  kmPext_Ptransport, name = kmPext_Ptransport
	reaction_re14_kmPext_Ptransport=0.749898;
	% Local Parameter:   id =  kmPint_Ptransport, name = kmPint_Ptransport
	reaction_re14_kmPint_Ptransport=0.30336;

	reaction_re14=function_4_P_transp(x(3), x(2), x(18), x(4), reaction_re14_Vmax_Ptransport, reaction_re14_kiPint_Ptransport, reaction_re14_kmADP_Ptransport, reaction_re14_kmATP_Ptransport, reaction_re14_kmPext_Ptransport, reaction_re14_kmPint_Ptransport);

% Reaction: id = re15, name = PGI	% Local Parameter:   id =  Keq_PGI, name = Keq_PGI
	reaction_re15_Keq_PGI=0.43;
	% Local Parameter:   id =  Vmax_PGI, name = Vmax_PGI
	reaction_re15_Vmax_PGI=21.681;
	% Local Parameter:   id =  kmF6P_PGI, name = kmF6P_PGI
	reaction_re15_kmF6P_PGI=3.13894;
	% Local Parameter:   id =  kmG6P_PGI, name = kmG6P_PGI
	reaction_re15_kmG6P_PGI=0.199409;

	reaction_re15=compartment_compartment_1*function_4_PGI(x(5), x(1), reaction_re15_Keq_PGI, reaction_re15_Vmax_PGI, reaction_re15_kmF6P_PGI, reaction_re15_kmG6P_PGI);

% Reaction: id = re16, name = PFK	% Local Parameter:   id =  Vmax_PFK, name = Vmax_PFK
	reaction_re16_Vmax_PFK=18.3577;
	% Local Parameter:   id =  kmADP_PFK, name = kmADP_PFK
	reaction_re16_kmADP_PFK=10.7357;
	% Local Parameter:   id =  kmATP_PFK, name = kmATP_PFK
	reaction_re16_kmATP_PFK=0.0616607;
	% Local Parameter:   id =  kmF6P_PFK, name = kmF6P_PFK
	reaction_re16_kmF6P_PFK=1.01973;
	% Local Parameter:   id =  kmFBP_PFK, name = kmFBP_PFK
	reaction_re16_kmFBP_PFK=86.8048;

	reaction_re16=compartment_compartment_1*function_4_PFK(x(3), x(2), x(5), x(6), reaction_re16_Vmax_PFK, reaction_re16_kmADP_PFK, reaction_re16_kmATP_PFK, reaction_re16_kmF6P_PFK, reaction_re16_kmFBP_PFK);

% Reaction: id = re17, name = FBA	% Local Parameter:   id =  Keq_FBA, name = Keq_FBA
	reaction_re17_Keq_FBA=0.056;
	% Local Parameter:   id =  Vmax_FBA, name = Vmax_FBA
	reaction_re17_Vmax_FBA=56.1311;
	% Local Parameter:   id =  kmFBP_FBA, name = kmFBP_FBA
	reaction_re17_kmFBP_FBA=0.300745;
	% Local Parameter:   id =  kmG3P_FBA, name = kmG3P_FBA
	reaction_re17_kmG3P_FBA=10.1058;

	reaction_re17=compartment_compartment_1*function_4_FBA(x(6), x(7), reaction_re17_Keq_FBA, reaction_re17_Vmax_FBA, reaction_re17_kmFBP_FBA, reaction_re17_kmG3P_FBA);

% Reaction: id = re18, name = GAPDH	% Local Parameter:   id =  Keq_GAPDH, name = Keq_GAPDH
	reaction_re18_Keq_GAPDH=7.0E-4;
	% Local Parameter:   id =  Vmax_GAPDH, name = Vmax_GAPDH
	reaction_re18_Vmax_GAPDH=30.0058;
	% Local Parameter:   id =  kmBPG_GAPDH, name = kmBPG_GAPDH
	reaction_re18_kmBPG_GAPDH=0.0481603;
	% Local Parameter:   id =  kmG3P_GAPDH, name = kmG3P_GAPDH
	reaction_re18_kmG3P_GAPDH=0.181788;
	% Local Parameter:   id =  kmNADH_GAPDH, name = kmNADH_GAPDH
	reaction_re18_kmNADH_GAPDH=0.643019;
	% Local Parameter:   id =  kmNAD_GAPDH, name = kmNAD_GAPDH
	reaction_re18_kmNAD_GAPDH=0.0477445;
	% Local Parameter:   id =  kmPint_GAPDH, name = kmPint_GAPDH
	reaction_re18_kmPint_GAPDH=6.75302;

	reaction_re18=compartment_compartment_1*function_4_GAPDH(x(8), x(7), reaction_re18_Keq_GAPDH, x(10), x(11), x(4), reaction_re18_Vmax_GAPDH, reaction_re18_kmBPG_GAPDH, reaction_re18_kmG3P_GAPDH, reaction_re18_kmNADH_GAPDH, reaction_re18_kmNAD_GAPDH, reaction_re18_kmPint_GAPDH);

% Reaction: id = re20, name = ENO	% Local Parameter:   id =  Keq_ENO, name = Keq_ENO
	reaction_re20_Keq_ENO=27.55;
	% Local Parameter:   id =  Vmax_ENO, name = Vmax_ENO
	reaction_re20_Vmax_ENO=29.132;
	% Local Parameter:   id =  kmADP_ENO, name = kmADP_ENO
	reaction_re20_kmADP_ENO=0.413195;
	% Local Parameter:   id =  kmATP_ENO, name = kmATP_ENO
	reaction_re20_kmATP_ENO=0.748238;
	% Local Parameter:   id =  kmBPG_ENO, name = kmBPG_ENO
	reaction_re20_kmBPG_ENO=0.0241572;
	% Local Parameter:   id =  kmPEP_ENO, name = kmPEP_ENO
	reaction_re20_kmPEP_ENO=1.38899;

	reaction_re20=compartment_compartment_1*function_4_ENO(x(3), x(2), x(8), reaction_re20_Keq_ENO, x(9), reaction_re20_Vmax_ENO, reaction_re20_kmADP_ENO, reaction_re20_kmATP_ENO, reaction_re20_kmBPG_ENO, reaction_re20_kmPEP_ENO);

% Reaction: id = re21, name = PYK	% Local Parameter:   id =  Vmax_PYK, name = Vmax_PYK
	reaction_re21_Vmax_PYK=2.22404;
	% Local Parameter:   id =  kaFBP_PYK, name = kaFBP_PYK
	reaction_re21_kaFBP_PYK=0.0388651;
	% Local Parameter:   id =  kiPint_PYK, name = kiPint_PYK
	reaction_re21_kiPint_PYK=3.70071;
	% Local Parameter:   id =  kmADP_PYK, name = kmADP_PYK
	reaction_re21_kmADP_PYK=3.07711;
	% Local Parameter:   id =  kmATP_PYK, name = kmATP_PYK
	reaction_re21_kmATP_PYK=29.6028;
	% Local Parameter:   id =  kmPEP_PYK, name = kmPEP_PYK
	reaction_re21_kmPEP_PYK=0.330583;
	% Local Parameter:   id =  kmPYR_PYK, name = kmPYR_PYK
	reaction_re21_kmPYR_PYK=96.4227;
	% Local Parameter:   id =  nPYK, name = nPYK
	reaction_re21_nPYK=3.0;

	reaction_re21=compartment_compartment_1*function_4_PYK(x(3), x(2), x(6), x(9), x(12), x(4), reaction_re21_Vmax_PYK, reaction_re21_kaFBP_PYK, reaction_re21_kiPint_PYK, reaction_re21_kmADP_PYK, reaction_re21_kmATP_PYK, reaction_re21_kmPEP_PYK, reaction_re21_kmPYR_PYK, reaction_re21_nPYK);

% Reaction: id = re22, name = LDH	% Local Parameter:   id =  Vmax_LDH, name = Vmax_LDH
	reaction_re22_Vmax_LDH=566.598;
	% Local Parameter:   id =  kaFBP_LDH, name = kaFBP_LDH
	reaction_re22_kaFBP_LDH=0.0184011;
	% Local Parameter:   id =  kiPint_LDH, name = kiPint_LDH
	reaction_re22_kiPint_LDH=0.0676829;
	% Local Parameter:   id =  kmLactate_LDH, name = kmLactate_LDH
	reaction_re22_kmLactate_LDH=94.1203;
	% Local Parameter:   id =  kmNADH_LDH, name = kmNADH_LDH
	reaction_re22_kmNADH_LDH=0.144443;
	% Local Parameter:   id =  kmNAD_LDH, name = kmNAD_LDH
	reaction_re22_kmNAD_LDH=3.08447;
	% Local Parameter:   id =  kmPYR_LDH, name = kmPYR_LDH
	reaction_re22_kmPYR_LDH=0.01;

	reaction_re22=function_4_LDH(x(6), x(19), x(10), x(11), x(12), x(4), reaction_re22_Vmax_LDH, reaction_re22_kaFBP_LDH, reaction_re22_kiPint_LDH, reaction_re22_kmLactate_LDH, reaction_re22_kmNADH_LDH, reaction_re22_kmNAD_LDH, reaction_re22_kmPYR_LDH);

% Reaction: id = re23, name = PDH	% Local Parameter:   id =  Keq_PFL, name = Keq_PFL
	reaction_re23_Keq_PFL=650.0;
	% Local Parameter:   id =  KmCoA_PFL, name = KmCoA_PFL
	reaction_re23_KmCoA_PFL=0.124066;
	% Local Parameter:   id =  Vmax_PFL, name = Vmax_PFL
	reaction_re23_Vmax_PFL=0.00230934;
	% Local Parameter:   id =  kiG3P_PFL, name = kiG3P_PFL
	reaction_re23_kiG3P_PFL=0.511288;
	% Local Parameter:   id =  kmAcetCoA_PFL, name = kmAcetCoA_PFL
	reaction_re23_kmAcetCoA_PFL=7.34319;
	% Local Parameter:   id =  kmFormate_PFL, name = kmFormate_PFL
	reaction_re23_kmFormate_PFL=54.2693;
	% Local Parameter:   id =  kmPYR_PFL, name = kmPYR_PFL
	reaction_re23_kmPYR_PFL=5.77662;

	reaction_re23=function_4_PFL(x(13), x(17), x(26), x(7), reaction_re23_Keq_PFL, reaction_re23_KmCoA_PFL, x(12), reaction_re23_Vmax_PFL, reaction_re23_kiG3P_PFL, reaction_re23_kmAcetCoA_PFL, reaction_re23_kmFormate_PFL, reaction_re23_kmPYR_PFL);

% Reaction: id = re24, name = AE	% Local Parameter:   id =  Vmax_AE, name = Vmax_AE
	reaction_re24_Vmax_AE=2.11844;
	% Local Parameter:   id =  kiATP_AE, name = kiATP_AE
	reaction_re24_kiATP_AE=6.28119;
	% Local Parameter:   id =  kmAcetCoA_AE, name = kmAcetCoA_AE
	reaction_re24_kmAcetCoA_AE=7.38021;
	% Local Parameter:   id =  kmCoA_AE, name = kmCoA_AE
	reaction_re24_kmCoA_AE=0.091813;
	% Local Parameter:   id =  kmEthanol_AE, name = kmEthanol_AE
	reaction_re24_kmEthanol_AE=2.28106;
	% Local Parameter:   id =  kmNADH_AE, name = kmNADH_AE
	reaction_re24_kmNADH_AE=0.43127;
	% Local Parameter:   id =  kmNAD_AE, name = kmNAD_AE
	reaction_re24_kmNAD_AE=1.31442;

	reaction_re24=function_4_AE(x(2), x(13), x(17), x(20), x(10), x(11), reaction_re24_Vmax_AE, reaction_re24_kiATP_AE, reaction_re24_kmAcetCoA_AE, reaction_re24_kmCoA_AE, reaction_re24_kmEthanol_AE, reaction_re24_kmNADH_AE, reaction_re24_kmNAD_AE);

% Reaction: id = re25, name = AC	% Local Parameter:   id =  Vmax_ACK, name = Vmax_ACK
	reaction_re25_Vmax_ACK=3.83918;
	% Local Parameter:   id =  kmADP_ACK, name = kmADP_ACK
	reaction_re25_kmADP_ACK=1.17242;
	% Local Parameter:   id =  kmATP_ACK, name = kmATP_ACK
	reaction_re25_kmATP_ACK=14.1556;
	% Local Parameter:   id =  kmAcetCoA_ACK, name = kmAcetCoA_ACK
	reaction_re25_kmAcetCoA_ACK=0.55824;
	% Local Parameter:   id =  kmAcetate_ACK, name = kmAcetate_ACK
	reaction_re25_kmAcetate_ACK=0.552221;
	% Local Parameter:   id =  kmCoA_ACK, name = kmCoA_ACK
	reaction_re25_kmCoA_ACK=0.173388;

	reaction_re25=function_4_ACK(x(3), x(2), x(13), x(21), x(17), reaction_re25_Vmax_ACK, reaction_re25_kmADP_ACK, reaction_re25_kmATP_ACK, reaction_re25_kmAcetCoA_ACK, reaction_re25_kmAcetate_ACK, reaction_re25_kmCoA_ACK);

% Reaction: id = re26, name = PA	% Local Parameter:   id =  Keq_ALS, name = Keq_ALS
	reaction_re26_Keq_ALS=900000.0;
	% Local Parameter:   id =  Vmax_ALS, name = Vmax_ALS
	reaction_re26_Vmax_ALS=0.354581;
	% Local Parameter:   id =  kmAcetoin_ALS, name = kmAcetoin_ALS
	reaction_re26_kmAcetoin_ALS=0.0495418;
	% Local Parameter:   id =  kmPYR_ALS, name = kmPYR_ALS
	reaction_re26_kmPYR_ALS=0.262819;

	reaction_re26=compartment_compartment_1*function_4_ALS(x(14), reaction_re26_Keq_ALS, x(12), reaction_re26_Vmax_ALS, reaction_re26_kmAcetoin_ALS, reaction_re26_kmPYR_ALS);

% Reaction: id = re27, name = AB	% Local Parameter:   id =  Keq_BDH, name = Keq_BDH
	reaction_re27_Keq_BDH=1400.0;
	% Local Parameter:   id =  Vmax_BDH, name = Vmax_BDH
	reaction_re27_Vmax_BDH=2.28578;
	% Local Parameter:   id =  kmAcetoin_BDH, name = kmAcetoin_BDH
	reaction_re27_kmAcetoin_BDH=5.62373;
	% Local Parameter:   id =  kmButanediol_BDH, name = kmButanediol_BDH
	reaction_re27_kmButanediol_BDH=1.80684;
	% Local Parameter:   id =  kmNADH_BDH, name = kmNADH_BDH
	reaction_re27_kmNADH_BDH=3.54858;
	% Local Parameter:   id =  kmNAD_BDH, name = kmNAD_BDH
	reaction_re27_kmNAD_BDH=1.29567;

	reaction_re27=function_4_BDH(x(14), x(22), reaction_re27_Keq_BDH, x(10), x(11), reaction_re27_Vmax_BDH, reaction_re27_kmAcetoin_BDH, reaction_re27_kmButanediol_BDH, reaction_re27_kmNADH_BDH, reaction_re27_kmNAD_BDH);

% Reaction: id = re28, name = MPD	% Local Parameter:   id =  Keq_MPD, name = Keq_MPD
	reaction_re28_Keq_MPD=200.0;
	% Local Parameter:   id =  Vmax_MPD, name = Vmax_MPD
	reaction_re28_Vmax_MPD=1.32695;
	% Local Parameter:   id =  kiF6P_MPD, name = kiF6P_MPD
	reaction_re28_kiF6P_MPD=22.0284;
	% Local Parameter:   id =  kmF6P_MPD, name = kmF6P_MPD
	reaction_re28_kmF6P_MPD=0.321372;
	% Local Parameter:   id =  kmMannitol1Phoshate_MPD, name = kmMannitol1Phoshate_MPD
	reaction_re28_kmMannitol1Phoshate_MPD=0.0891203;
	% Local Parameter:   id =  kmNADH_MPD, name = kmNADH_MPD
	reaction_re28_kmNADH_MPD=0.0303446;
	% Local Parameter:   id =  kmNAD_MPD, name = kmNAD_MPD
	reaction_re28_kmNAD_MPD=0.373149;

	reaction_re28=compartment_compartment_1*function_4_MPD(x(5), reaction_re28_Keq_MPD, x(16), x(10), x(11), reaction_re28_Vmax_MPD, reaction_re28_kiF6P_MPD, reaction_re28_kmF6P_MPD, reaction_re28_kmMannitol1Phoshate_MPD, reaction_re28_kmNADH_MPD, reaction_re28_kmNAD_MPD);

% Reaction: id = re29, name = MP	% Local Parameter:   id =  Vmax_MP, name = Vmax_MP
	reaction_re29_Vmax_MP=3.48563;
	% Local Parameter:   id =  kmMannitol1Phosphate_MP, name = kmMannitol1Phosphate_MP
	reaction_re29_kmMannitol1Phosphate_MP=3.51571;
	% Local Parameter:   id =  kmMannitol_MP, name = kmMannitol_MP
	reaction_re29_kmMannitol_MP=0.238849;

	reaction_re29=compartment_compartment_1*function_4_MP(x(15), x(16), reaction_re29_Vmax_MP, reaction_re29_kmMannitol1Phosphate_MP, reaction_re29_kmMannitol_MP);

% Reaction: id = re30, name = PTS_Man	% Local Parameter:   id =  Vmax_PTS_Man, name = Vmax_PTS_Man
	reaction_re30_Vmax_PTS_Man=4.44903;
	% Local Parameter:   id =  kmMannitol1Phosphate_PTS_Man, name = kmMannitol1Phosphate_PTS_Man
	reaction_re30_kmMannitol1Phosphate_PTS_Man=0.362571;
	% Local Parameter:   id =  kmMannitolExt_PTS_Man, name = kmMannitolExt_PTS_Man
	reaction_re30_kmMannitolExt_PTS_Man=0.0127321;
	% Local Parameter:   id =  kmPEP_PTS_Man, name = kmPEP_PTS_Man
	reaction_re30_kmPEP_PTS_Man=2.20816;
	% Local Parameter:   id =  kmPYR_PTS_Man, name = kmPYR_PTS_Man
	reaction_re30_kmPYR_PTS_Man=0.344134;

	reaction_re30=function_4_PTS_Man(x(16), x(25), x(9), x(12), reaction_re30_Vmax_PTS_Man, reaction_re30_kmMannitol1Phosphate_PTS_Man, reaction_re30_kmMannitolExt_PTS_Man, reaction_re30_kmPEP_PTS_Man, reaction_re30_kmPYR_PTS_Man);

% Reaction: id = re31, name = Acetoin_transp	% Local Parameter:   id =  Vmax_Acetoin_transp, name = Vmax_Acetoin_transp
	reaction_re31_Vmax_Acetoin_transp=1.60066;
	% Local Parameter:   id =  kmAcetoin_Acetoin_transp, name = kmAcetoin_Acetoin_transp
	reaction_re31_kmAcetoin_Acetoin_transp=1.89255;
	% Local Parameter:   id =  kmAcetoin_Ext_Acetoin_transp, name = kmAcetoin_Ext_Acetoin_transp
	reaction_re31_kmAcetoin_Ext_Acetoin_transp=7.05248;

	reaction_re31=function_4_Acetoin_transp(x(14), x(24), reaction_re31_Vmax_Acetoin_transp, reaction_re31_kmAcetoin_Acetoin_transp, reaction_re31_kmAcetoin_Ext_Acetoin_transp);

% Reaction: id = re32, name = Mannitol_transp	% Local Parameter:   id =  Vmax_Mannitol_transp, name = Vmax_Mannitol_transp
	reaction_re32_Vmax_Mannitol_transp=1.62459;
	% Local Parameter:   id =  kmMannitol_Ext_Mannitol_transp, name = kmMannitol_Ext_Mannitol_transp
	reaction_re32_kmMannitol_Ext_Mannitol_transp=0.940662;
	% Local Parameter:   id =  kmMannitol_Mannitol_transp, name = kmMannitol_Mannitol_transp
	reaction_re32_kmMannitol_Mannitol_transp=0.0223502;

	reaction_re32=function_4_Mannitol_transp(x(15), x(25), reaction_re32_Vmax_Mannitol_transp, reaction_re32_kmMannitol_Ext_Mannitol_transp, reaction_re32_kmMannitol_Mannitol_transp);

% Reaction: id = re33, name = FBPase	% Local Parameter:   id =  Vmax_FBPase, name = Vmax_FBPase
	reaction_re33_Vmax_FBPase=0.0970486;
	% Local Parameter:   id =  kmF6P_FBPase, name = kmF6P_FBPase
	reaction_re33_kmF6P_FBPase=1.90796;
	% Local Parameter:   id =  kmFBP_FBPase, name = kmFBP_FBPase
	reaction_re33_kmFBP_FBPase=0.412307;
	% Local Parameter:   id =  kmPint_FBPase, name = kmPint_FBPase
	reaction_re33_kmPint_FBPase=0.0109675;

	reaction_re33=compartment_compartment_1*function_4_FBPase(x(5), x(6), x(4), reaction_re33_Vmax_FBPase, reaction_re33_kmF6P_FBPase, reaction_re33_kmFBP_FBPase, reaction_re33_kmPint_FBPase);

	xdot=zeros(26,1);
	
% Species:   id = G6P, name = G6P, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re12) + (-1.0 * reaction_re15));
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*((-1.0 * reaction_re13) + (-1.0 * reaction_re14) + (-1.0 * reaction_re16) + ( 1.0 * reaction_re20) + ( 1.0 * reaction_re21) + ( 1.0 * reaction_re25));
	
% Species:   id = ADP, name = ADP, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re13) + ( 1.0 * reaction_re14) + ( 1.0 * reaction_re16) + (-1.0 * reaction_re20) + (-1.0 * reaction_re21) + (-1.0 * reaction_re25));
	
% Species:   id = Pint, name = Pint, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re13) + ( 2.0 * reaction_re14) + (-1.0 * reaction_re18) + ( 1.0 * reaction_re33));
	
% Species:   id = F6P, name = F6P, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re15) + (-1.0 * reaction_re16) + (-1.0 * reaction_re28) + ( 1.0 * reaction_re33));
	
% Species:   id = FBP, name = FBP, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re16) + (-1.0 * reaction_re17) + (-1.0 * reaction_re33));
	
% Species:   id = G3P, name = G3P, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*(( 2.0 * reaction_re17) + (-1.0 * reaction_re18));
	
% Species:   id = BPG, name = BPG, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re18) + (-1.0 * reaction_re20));
	
% Species:   id = PEP, name = PEP, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_1))*((-1.0 * reaction_re12) + ( 1.0 * reaction_re20) + (-1.0 * reaction_re21) + (-1.0 * reaction_re30));
	
% Species:   id = NAD, name = NAD, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_1))*((-1.0 * reaction_re18) + ( 1.0 * reaction_re22) + ( 2.0 * reaction_re24) + ( 1.0 * reaction_re27) + ( 1.0 * reaction_re28));
	
% Species:   id = NADH, name = NADH, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re18) + (-1.0 * reaction_re22) + (-2.0 * reaction_re24) + (-1.0 * reaction_re27) + (-1.0 * reaction_re28));
	
% Species:   id = PYR, name = PYR, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re12) + ( 1.0 * reaction_re21) + (-1.0 * reaction_re22) + (-1.0 * reaction_re23) + (-2.0 * reaction_re26) + ( 1.0 * reaction_re30));
	
% Species:   id = AcetCoA, name = AcetCoA, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re23) + (-1.0 * reaction_re24) + (-1.0 * reaction_re25));
	
% Species:   id = Acetoin, name = Acetoin, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re26) + (-1.0 * reaction_re27) + (-1.0 * reaction_re31));
	
% Species:   id = Mannitol, name = Mannitol, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re29) + (-1.0 * reaction_re32));
	
% Species:   id = Mannitol1Phosphate, name = Mannitol1Phosphate, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_1))*(( 1.0 * reaction_re28) + (-1.0 * reaction_re29) + ( 1.0 * reaction_re30));
	
% Species:   id = CoA, name = CoA, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_1))*((-1.0 * reaction_re23) + ( 1.0 * reaction_re24) + ( 1.0 * reaction_re25));
	
% Species:   id = Pext, name = Pext, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_2))*((-1.0 * reaction_re14));
	
% Species:   id = Lactate, name = Lactate, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_2))*(( 1.0 * reaction_re22));
	
% Species:   id = Ethanol, name = Ethanol, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_2))*(( 1.0 * reaction_re24));
	
% Species:   id = Acetate, name = Acetate, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_2))*(( 1.0 * reaction_re25));
	
% Species:   id = Butanediol, name = Butanediol, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_2))*(( 1.0 * reaction_re27));
	
% Species:   id = Glucose, name = Glucose, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_2))*((-1.0 * reaction_re12));
	
% Species:   id = Acetoin_Ext, name = Acetoin_Ext, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_2))*(( 1.0 * reaction_re31));
	
% Species:   id = Mannitol_Ext, name = Mannitol_Ext, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment_2))*((-1.0 * reaction_re30) + ( 1.0 * reaction_re32));
	
% Species:   id = Formate, name = Formate, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment_2))*(( 1.0 * reaction_re23));
end

function z=function_4_PTS_Glc(FBP,G6P,Glucose,PEP,PYR,Pint,Vmax_PTS_Glc,kaPint_PTS_Glc,kiFBP_PTS_Glc,kmG6P_PTS_Glc,kmGlucose_PTS_Glc,kmPEP_PTS_Glc,kmPYR_PTS_Glc), z=(Pint/(Pint+kaPint_PTS_Glc)*kiFBP_PTS_Glc/(FBP+kiFBP_PTS_Glc)*Vmax_PTS_Glc*Glucose/kmGlucose_PTS_Glc*PEP/kmPEP_PTS_Glc/((1+Glucose/kmGlucose_PTS_Glc)*(1+PEP/kmPEP_PTS_Glc)+(1+G6P/kmG6P_PTS_Glc)*(1+PYR/kmPYR_PTS_Glc)-1));end

function z=function_4_ATPase(ATP,Vmax_ATPase,kmATP_ATPase,nATPase), z=(Vmax_ATPase*(ATP/kmATP_ATPase)^nATPase/((ATP/kmATP_ATPase)^nATPase+1));end

function z=function_4_P_transp(ADP,ATP,Pext,Pint,Vmax_Ptransport,kiPint_Ptransport,kmADP_Ptransport,kmATP_Ptransport,kmPext_Ptransport,kmPint_Ptransport), z=(kiPint_Ptransport/(Pint+kiPint_Ptransport)*Vmax_Ptransport*ATP/kmATP_Ptransport*Pext/kmPext_Ptransport/((1+Pext/kmPext_Ptransport)*(1+ATP/kmATP_Ptransport)+(1+Pint/kmPint_Ptransport+(Pint/kmPint_Ptransport)^2)*(1+ADP/kmADP_Ptransport)-1));end

function z=function_4_PGI(F6P,G6P,Keq_PGI,Vmax_PGI,kmF6P_PGI,kmG6P_PGI), z=((Vmax_PGI*G6P/kmG6P_PGI-Vmax_PGI/Keq_PGI*F6P/kmG6P_PGI)/(1+G6P/kmG6P_PGI+F6P/kmF6P_PGI));end

function z=function_4_PFK(ADP,ATP,F6P,FBP,Vmax_PFK,kmADP_PFK,kmATP_PFK,kmF6P_PFK,kmFBP_PFK), z=(Vmax_PFK*F6P/kmF6P_PFK*ATP/kmATP_PFK/((1+F6P/kmF6P_PFK)*(1+ATP/kmATP_PFK)+(1+FBP/kmFBP_PFK)*(1+ADP/kmADP_PFK)-1));end

function z=function_4_FBA(FBP,G3P,Keq_FBA,Vmax_FBA,kmFBP_FBA,kmG3P_FBA), z=((Vmax_FBA*FBP/kmFBP_FBA-Vmax_FBA/Keq_FBA*G3P^2/kmFBP_FBA)/(1+FBP/kmFBP_FBA+G3P/kmG3P_FBA+(G3P/kmG3P_FBA)^2));end

function z=function_4_GAPDH(BPG,G3P,Keq_GAPDH,NAD,NADH,Pint,Vmax_GAPDH,kmBPG_GAPDH,kmG3P_GAPDH,kmNADH_GAPDH,kmNAD_GAPDH,kmPint_GAPDH), z=((Vmax_GAPDH*G3P/kmG3P_GAPDH*NAD/kmNAD_GAPDH*Pint/kmPint_GAPDH-Vmax_GAPDH/Keq_GAPDH*BPG/kmG3P_GAPDH*NADH/kmNAD_GAPDH*1/kmPint_GAPDH)/((1+G3P/kmG3P_GAPDH)*(1+Pint/kmPint_GAPDH)*(1+NAD/kmNAD_GAPDH)+(1+BPG/kmBPG_GAPDH)*(1+NADH/kmNADH_GAPDH)-1));end

function z=function_4_ENO(ADP,ATP,BPG,Keq_ENO,PEP,Vmax_ENO,kmADP_ENO,kmATP_ENO,kmBPG_ENO,kmPEP_ENO), z=((Vmax_ENO*BPG/kmBPG_ENO*ADP/kmADP_ENO-Vmax_ENO/Keq_ENO*PEP/kmBPG_ENO*ATP/kmADP_ENO)/((1+BPG/kmBPG_ENO)*(1+ADP/kmADP_ENO)+(1+PEP/kmPEP_ENO)*(1+ATP/kmATP_ENO)-1));end

function z=function_4_PYK(ADP,ATP,FBP,PEP,PYR,Pint,Vmax_PYK,kaFBP_PYK,kiPint_PYK,kmADP_PYK,kmATP_PYK,kmPEP_PYK,kmPYR_PYK,nPYK), z=(FBP/(FBP+kaFBP_PYK)*kiPint_PYK^nPYK/(Pint^nPYK+kiPint_PYK^nPYK)*Vmax_PYK*ADP/kmADP_PYK*PEP/kmPEP_PYK/((1+ADP/kmADP_PYK)*(1+PEP/kmPEP_PYK)+(1+ATP/kmATP_PYK)*(1+PYR/kmPYR_PYK)-1));end

function z=function_4_LDH(FBP,Lactate,NAD,NADH,PYR,Pint,Vmax_LDH,kaFBP_LDH,kiPint_LDH,kmLactate_LDH,kmNADH_LDH,kmNAD_LDH,kmPYR_LDH), z=(FBP/(FBP+kaFBP_LDH)*kiPint_LDH/(Pint+kiPint_LDH)*Vmax_LDH*PYR/kmPYR_LDH*NADH/kmNADH_LDH/((1+PYR/kmPYR_LDH)*(1+NADH/kmNADH_LDH)+(1+Lactate/kmLactate_LDH)*(1+NAD/kmNAD_LDH)-1));end

function z=function_4_PFL(AcetCoA,CoA,Formate,G3P,Keq_PFL,KmCoA_PFL,PYR,Vmax_PFL,kiG3P_PFL,kmAcetCoA_PFL,kmFormate_PFL,kmPYR_PFL), z=(kiG3P_PFL/(G3P+kiG3P_PFL)*(Vmax_PFL*PYR/kmPYR_PFL*CoA/KmCoA_PFL-Vmax_PFL/Keq_PFL*AcetCoA/kmPYR_PFL*Formate/KmCoA_PFL)/((1+PYR/kmPYR_PFL)*(1+CoA/KmCoA_PFL)+(1+AcetCoA/kmAcetCoA_PFL)*(1+Formate/kmFormate_PFL)-1));end

function z=function_4_AE(ATP,AcetCoA,CoA,Ethanol,NAD,NADH,Vmax_AE,kiATP_AE,kmAcetCoA_AE,kmCoA_AE,kmEthanol_AE,kmNADH_AE,kmNAD_AE), z=(kiATP_AE/(ATP+kiATP_AE)*Vmax_AE*AcetCoA/kmAcetCoA_AE*(NADH/kmNADH_AE)^2/((1+NADH/kmNADH_AE+(NADH/kmNADH_AE)^2)*(1+AcetCoA/kmAcetCoA_AE)+(1+Ethanol/kmEthanol_AE)*(1+CoA/kmCoA_AE)*(1+NAD/kmNAD_AE+(NAD/kmNAD_AE)^2)-1));end

function z=function_4_ACK(ADP,ATP,AcetCoA,Acetate,CoA,Vmax_ACK,kmADP_ACK,kmATP_ACK,kmAcetCoA_ACK,kmAcetate_ACK,kmCoA_ACK), z=(Vmax_ACK*AcetCoA/kmAcetCoA_ACK*ADP/kmADP_ACK/((1+AcetCoA/kmAcetCoA_ACK)*(1+ADP/kmADP_ACK)+(1+Acetate/kmAcetate_ACK)*(1+ATP/kmATP_ACK)*(1+CoA/kmCoA_ACK)-1));end

function z=function_4_ALS(Acetoin,Keq_ALS,PYR,Vmax_ALS,kmAcetoin_ALS,kmPYR_ALS), z=((Vmax_ALS*(PYR/kmPYR_ALS)^2-Vmax_ALS/Keq_ALS*Acetoin/kmPYR_ALS)/(1+PYR/kmPYR_ALS+(PYR/kmPYR_ALS)^2+1+Acetoin/kmAcetoin_ALS-1));end

function z=function_4_BDH(Acetoin,Butanediol,Keq_BDH,NAD,NADH,Vmax_BDH,kmAcetoin_BDH,kmButanediol_BDH,kmNADH_BDH,kmNAD_BDH), z=((Vmax_BDH*Acetoin/kmAcetoin_BDH*NADH/kmNADH_BDH-Vmax_BDH/Keq_BDH*Butanediol/kmAcetoin_BDH*NAD/kmNADH_BDH)/((1+Acetoin/kmAcetoin_BDH)*(1+NADH/kmNADH_BDH)+(1+Butanediol/kmButanediol_BDH)*(1+NAD/kmNAD_BDH)-1));end

function z=function_4_MPD(F6P,Keq_MPD,Mannitol1Phosphate,NAD,NADH,Vmax_MPD,kiF6P_MPD,kmF6P_MPD,kmMannitol1Phoshate_MPD,kmNADH_MPD,kmNAD_MPD), z=(kiF6P_MPD/(F6P+kiF6P_MPD)*(Vmax_MPD*F6P/kmF6P_MPD*NADH/kmNADH_MPD-Vmax_MPD/Keq_MPD*Mannitol1Phosphate/kmF6P_MPD*NAD/kmNADH_MPD)/((1+F6P/kmF6P_MPD)*(1+NADH/kmNADH_MPD)+(1+Mannitol1Phosphate/kmMannitol1Phoshate_MPD)*(1+NAD/kmNAD_MPD)-1));end

function z=function_4_MP(Mannitol,Mannitol1Phosphate,Vmax_MP,kmMannitol1Phosphate_MP,kmMannitol_MP), z=(Vmax_MP*Mannitol1Phosphate/kmMannitol1Phosphate_MP/(1+Mannitol1Phosphate/kmMannitol1Phosphate_MP+1+Mannitol/kmMannitol_MP-1));end

function z=function_4_PTS_Man(Mannitol1Phosphate,Mannitol_Ext,PEP,PYR,Vmax_PTS_Man,kmMannitol1Phosphate_PTS_Man,kmMannitolExt_PTS_Man,kmPEP_PTS_Man,kmPYR_PTS_Man), z=(Vmax_PTS_Man*Mannitol_Ext/kmMannitolExt_PTS_Man*PEP/kmPEP_PTS_Man/((1+Mannitol_Ext/kmMannitolExt_PTS_Man)*(1+PEP/kmPEP_PTS_Man)+(1+Mannitol1Phosphate/kmMannitol1Phosphate_PTS_Man)*(1+PYR/kmPYR_PTS_Man)-1));end

function z=function_4_Acetoin_transp(Acetoin,Acetoin_Ext,Vmax_Acetoin_transp,kmAcetoin_Acetoin_transp,kmAcetoin_Ext_Acetoin_transp), z=(Vmax_Acetoin_transp*Acetoin/kmAcetoin_Acetoin_transp/(1+Acetoin/kmAcetoin_Acetoin_transp+Acetoin_Ext/kmAcetoin_Ext_Acetoin_transp));end

function z=function_4_Mannitol_transp(Mannitol,Mannitol_Ext,Vmax_Mannitol_transp,kmMannitol_Ext_Mannitol_transp,kmMannitol_Mannitol_transp), z=(Vmax_Mannitol_transp*Mannitol/kmMannitol_Mannitol_transp/(1+Mannitol/kmMannitol_Mannitol_transp+Mannitol_Ext/kmMannitol_Ext_Mannitol_transp));end

function z=function_4_FBPase(F6P,FBP,Pint,Vmax_FBPase,kmF6P_FBPase,kmFBP_FBPase,kmPint_FBPase), z=(Vmax_FBPase*FBP/kmFBP_FBPase/(FBP/kmFBP_FBPase+(1+F6P/kmF6P_FBPase)*(1+Pint/kmPint_FBPase)));end

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


