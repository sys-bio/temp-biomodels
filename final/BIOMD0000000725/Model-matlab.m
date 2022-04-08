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
% Model name = Salcedo-Sora2016 - Microbial folate biosynthesis and utilisation
%
% is http://identifiers.org/biomodels.db/MODEL1511020000
% is http://identifiers.org/biomodels.db/BIOMD0000000725
%


function main()
%Initial conditions vector
	x0=zeros(38,1);
	x0(1) = 0.9796078511;
	x0(2) = 2.725541316;
	x0(3) = 0.9994087764;
	x0(4) = 1.92788104;
	x0(5) = 5.06777189;
	x0(6) = 2.0;
	x0(7) = 0.9174312684;
	x0(8) = 1.009195849;
	x0(9) = 959.9999225;
	x0(10) = 0.9907047071;
	x0(11) = 1.000006539;
	x0(12) = 1.00378139;
	x0(13) = 4.0;
	x0(14) = 2.01877235;
	x0(15) = 2.002305849;
	x0(16) = 1.002298517;
	x0(17) = 0.9873083466;
	x0(18) = 0.9963801483;
	x0(19) = 1.142744159;
	x0(20) = 8.0;
	x0(21) = 1.0;
	x0(22) = 1.04350884;
	x0(23) = 1.000096392;
	x0(24) = 0.9998172031;
	x0(25) = 0.9974700923;
	x0(26) = 0.9082384182;
	x0(27) = 1.83347183;
	x0(28) = 0.9968760756;
	x0(29) = 0.988683328;
	x0(30) = 2.828115142;
	x0(31) = 2.0;
	x0(32) = 0.983533495;
	x0(33) = 0.7017503089;
	x0(34) = 1.000015336;
	x0(35) = 0.7017656449;
	x0(36) = 0.9895374253;
	x0(37) = 8.0;
	x0(38) = 1.0;


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

% Compartment: id = compartment, name = Single celled micro-organism, constant
	compartment_compartment=1.0;

% Reaction: id = R1, name = R1 - Synthesis of 3-Deoxy-7-phosphoheptulonate	% Local Parameter:   id =  kep, name = kep
	reaction_R1_kep=285.0;
	% Local Parameter:   id =  kpep, name = kpep
	reaction_R1_kpep=36.0;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R1_vmax=578.76;

	reaction_R1=compartment_compartment*Rate_Law_for_R1_1(const_species_EP, const_species_PEP, reaction_R1_kep, reaction_R1_kpep, reaction_R1_vmax);

% Reaction: id = R2, name = R2 - 2-Dehydro-3-deoxy-D-arabino-heptonate 7-phosphate phosphate-lyase (3-Dehydroquinate synthase)	% Local Parameter:   id =  Km, name = Km
	reaction_R2_Km=4.7;
	% Local Parameter:   id =  V, name = V
	reaction_R2_V=7.462;

	reaction_R2=compartment_compartment*Henri_Michaelis_Menten__irreversible__1(x(1), reaction_R2_Km, reaction_R2_V);

% Reaction: id = R3, name = R3 - 3-Dehydroquinate hydro-lyase (3-Dehydroquinate dehydratase)	% Local Parameter:   id =  Km, name = Km
	reaction_R3_Km=58.0;
	% Local Parameter:   id =  V, name = V
	reaction_R3_V=116.48;

	reaction_R3=compartment_compartment*Henri_Michaelis_Menten__irreversible__2(x(3), reaction_R3_Km, reaction_R3_V);

% Reaction: id = R4, name = R4 - Shikimate:NADP + 3-oxidoreductase (Shikimate 5-dehydrogenase)	% Local Parameter:   id =  kdhsk, name = kdhsk
	reaction_R4_kdhsk=30.0;
	% Local Parameter:   id =  knadph, name = knadph
	reaction_R4_knadph=11.0;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R4_vmax=17290.0;

	reaction_R4=compartment_compartment*Rate_Law_for_R4_1(x(4), const_species_NADPH, reaction_R4_kdhsk, reaction_R4_knadph, reaction_R4_vmax);

% Reaction: id = R5, name = R5 - ATP:Shikimate 3-phosphotransferase (Shikimate kinase)	% Local Parameter:   id =  katp, name = katp
	reaction_R5_katp=151.5;
	% Local Parameter:   id =  ksk, name = ksk
	reaction_R5_ksk=200.0;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R5_vmax=18200.0;

	reaction_R5=compartment_compartment*Rate_Law_for_R5_1(const_species_ATP, x(5), reaction_R5_katp, reaction_R5_ksk, reaction_R5_vmax);

% Reaction: id = R6, name = R6 - Phosphoenolpyruvate:3-phosphoshikimate 5-O-(1-carboxyvinyl)-transferase	% Local Parameter:   id =  kpep, name = kpep
	reaction_R6_kpep=93.0;
	% Local Parameter:   id =  kskp, name = kskp
	reaction_R6_kskp=80.0;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R6_vmax=1547.0;

	reaction_R6=compartment_compartment*Rate_Law_for_R6_1(const_species_PEP, x(6), reaction_R6_kpep, reaction_R6_kskp, reaction_R6_vmax);

% Reaction: id = R7, name = R7 - 5-O-(1-Carboxyvinyl)-3-phosphoshikimate phosphate-lyase (chorismate synthase)	% Local Parameter:   id =  Km, name = Km
	reaction_R7_Km=12.7;
	% Local Parameter:   id =  V, name = V
	reaction_R7_V=728.0;

	reaction_R7=compartment_compartment*Henri_Michaelis_Menten__irreversible__3(x(7), reaction_R7_Km, reaction_R7_V);

% Reaction: id = R8, name = R8 - Aminodeoxychorismate synthase	% Local Parameter:   id =  kcm, name = kcm
	reaction_R8_kcm=13.0;
	% Local Parameter:   id =  kgln, name = kgln
	reaction_R8_kgln=1100.0;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R8_vmax=26.0;

	reaction_R8=compartment_compartment*Rate_Law_for_R8_1(x(8), const_species_Gln, reaction_R8_kcm, reaction_R8_kgln, reaction_R8_vmax);

% Reaction: id = R9, name = R9 - Aminodeoxychorismate lyase	% Local Parameter:   id =  Km, name = Km
	reaction_R9_Km=1.1;
	% Local Parameter:   id =  V, name = V
	reaction_R9_V=2.2;

	reaction_R9=compartment_compartment*Henri_Michaelis_Menten__irreversible__4(x(10), reaction_R9_Km, reaction_R9_V);

% Reaction: id = R10, name = R10 - GTP 7,8,9-dihydrolase (GTP cyclohydrolase I)	% Local Parameter:   id =  kgtp, name = kgtp
	reaction_R10_kgtp=17.6;
	% Local Parameter:   id =  kiTHF, name = kiTHF
	reaction_R10_kiTHF=0.157;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R10_vmax=1515.15;

	reaction_R10=compartment_compartment*Rate_Law_for_R10_1(const_species_GTP, x(20), reaction_R10_kgtp, reaction_R10_kiTHF, reaction_R10_vmax);

% Reaction: id = R11, name = R11 - Dihydroneopterin aldolase	% Local Parameter:   id =  Km, name = Km
	reaction_R11_Km=7.4;
	% Local Parameter:   id =  V, name = V
	reaction_R11_V=792.064;

	reaction_R11=compartment_compartment*Henri_Michaelis_Menten__irreversible__5(x(13), reaction_R11_Km, reaction_R11_V);

% Reaction: id = R27, name = R27 - 6-Pyruvoyltetrahydropterin synthase	% Local Parameter:   id =  Km, name = Km
	reaction_R27_Km=10.0;
	% Local Parameter:   id =  V, name = V
	reaction_R27_V=22.659;

	reaction_R27=compartment_compartment*Henri_Michaelis_Menten__irreversible__5(x(13), reaction_R27_Km, reaction_R27_V);

% Reaction: id = R12, name = R12 - 2-Amino-4-hydroxy-6-hydroxymethyldihydropteridine pyrophosphokinase	% Local Parameter:   id =  kahmdhp, name = kahmdhp
	reaction_R12_kahmdhp=3.6;
	% Local Parameter:   id =  katp, name = katp
	reaction_R12_katp=15.0;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R12_vmax=382.2;

	reaction_R12=compartment_compartment*Rate_Law_for_R12_1(x(14), const_species_ATP, reaction_R12_kahmdhp, reaction_R12_katp, reaction_R12_vmax);

% Reaction: id = R14, name = R14 - 7,8-Dihydrofolate synthase	% Local Parameter:   id =  katp, name = katp
	reaction_R14_katp=100.0;
	% Local Parameter:   id =  kdhp, name = kdhp
	reaction_R14_kdhp=1.0;
	% Local Parameter:   id =  kglu, name = kglu
	reaction_R14_kglu=1380.0;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R14_vmax=2.821;

	reaction_R14=compartment_compartment*Rate_Law_for_R14_1(const_species_ATP, x(18), x(9), reaction_R14_katp, reaction_R14_kdhp, reaction_R14_kglu, reaction_R14_vmax);

% Reaction: id = R15, name = R15 - Dihydrofolate reductase	% Local Parameter:   id =  kdhf, name = kdhf
	reaction_R15_kdhf=3.0;
	% Local Parameter:   id =  knadph, name = knadph
	reaction_R15_knadph=6.12;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R15_vmax=3000.0;

	reaction_R15=compartment_compartment*Rate_Law_for_R15_1(x(19), const_species_NADPH, reaction_R15_kdhf, reaction_R15_knadph, reaction_R15_vmax);

% Reaction: id = R16, name = R16 - Folylpoly-gamma-glutamate synthase	% Local Parameter:   id =  katp, name = katp
	reaction_R16_katp=128.0;
	% Local Parameter:   id =  kglu, name = kglu
	reaction_R16_kglu=740.0;
	% Local Parameter:   id =  kidhf, name = kidhf
	reaction_R16_kidhf=3.1;
	% Local Parameter:   id =  kthf, name = kthf
	reaction_R16_kthf=26.0;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R16_vmax=84.63;

	reaction_R16=compartment_compartment*Rate_Law_for_R16_1(const_species_ATP, x(19), x(9), x(20), reaction_R16_katp, reaction_R16_kglu, reaction_R16_kidhf, reaction_R16_kthf, reaction_R16_vmax);

% Reaction: id = R17, name = R17 - Serine hydroxymethyltransferase	% Local Parameter:   id =  kithf, name = kithf
	reaction_R17_kithf=0.157;
	% Local Parameter:   id =  kser, name = kser
	reaction_R17_kser=700.0;
	% Local Parameter:   id =  kthfglu, name = kthfglu
	reaction_R17_kthfglu=40.0;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R17_vmax=682.5;

	reaction_R17=compartment_compartment*Rate_Law_for_R17_1(const_species_Ser, x(20), x(21), reaction_R17_kithf, reaction_R17_kser, reaction_R17_kthfglu, reaction_R17_vmax);

% Reaction: id = R18b, name = R18b - Glycine decarboxylase (P protein)	% Local Parameter:   id =  kdlp, name = kdlp
	reaction_R18b_kdlp=290.0;
	% Local Parameter:   id =  kgly, name = kgly
	reaction_R18b_kgly=4505.0;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R18b_vmax=751.66;

	reaction_R18b=compartment_compartment*Rate_Law_for_R18b_1(x(33), const_species_Gly, reaction_R18b_kdlp, reaction_R18b_kgly, reaction_R18b_vmax);

% Reaction: id = R19, name = R19 - 5,10-Methylenetetrahydrofolate reductase	% Local Parameter:   id =  kidhf, name = kidhf
	reaction_R19_kidhf=0.428;
	% Local Parameter:   id =  kmythfglu, name = kmythfglu
	reaction_R19_kmythfglu=33.0;
	% Local Parameter:   id =  knadph, name = knadph
	reaction_R19_knadph=19.0;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R19_vmax=738.92;

	reaction_R19=compartment_compartment*Rate_Law_for_R19_1(x(19), const_species_NADPH, reaction_R19_kidhf, reaction_R19_kmythfglu, reaction_R19_knadph, x(22), reaction_R19_vmax);

% Reaction: id = R20, name = R20 - Methionine synthase	% Local Parameter:   id =  khcy, name = khcy
	reaction_R20_khcy=17.0;
	% Local Parameter:   id =  kmthfglu, name = kmthfglu
	reaction_R20_kmthfglu=30.0;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R20_vmax=379.925;

	reaction_R20=compartment_compartment*Rate_Law_for_R20_1(const_species_Hcy, x(23), reaction_R20_khcy, reaction_R20_kmthfglu, reaction_R20_vmax);

% Reaction: id = R21, name = R21 - Thymidylate synthase	% Local Parameter:   id =  kdump, name = kdump
	reaction_R21_kdump=5.4;
	% Local Parameter:   id =  kidhf, name = kidhf
	reaction_R21_kidhf=0.428;
	% Local Parameter:   id =  kmythfglu, name = kmythfglu
	reaction_R21_kmythfglu=17.0;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R21_vmax=49.14;

	reaction_R21=compartment_compartment*Rate_Law_for_R21_1(x(19), const_species_dUMP, reaction_R21_kdump, reaction_R21_kidhf, reaction_R21_kmythfglu, x(22), reaction_R21_vmax);

% Reaction: id = R22, name = R22 - 5,10-Methylenetetrahydrofolate dehydrogenase	% Local Parameter:   id =  kidhf, name = kidhf
	reaction_R22_kidhf=0.428;
	% Local Parameter:   id =  kmythfglu, name = kmythfglu
	reaction_R22_kmythfglu=25.0;
	% Local Parameter:   id =  knadp, name = knadp
	reaction_R22_knadp=22.0;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R22_vmax=1892.8;

	reaction_R22=compartment_compartment*Rate_Law_for_R22_1(x(19), x(31), reaction_R22_kidhf, reaction_R22_kmythfglu, reaction_R22_knadp, x(22), reaction_R22_vmax);

% Reaction: id = R25, name = R25 - Methionyl-tRNA formyltransferase	% Local Parameter:   id =  kfthfglu, name = kfthfglu
	reaction_R25_kfthfglu=12.15;
	% Local Parameter:   id =  kmtrna, name = kmtrna
	reaction_R25_kmtrna=1.07;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R25_vmax=116.48;

	reaction_R25=compartment_compartment*Rate_Law_for_R25_1(x(27), reaction_R25_kfthfglu, reaction_R25_kmtrna, const_species_mtRNA, reaction_R25_vmax);

% Reaction: id = R26, name = R26 - 10-Formyltetrahydrofolate dehydrogenase	% Local Parameter:   id =  kfthfglu, name = kfthfglu
	reaction_R26_kfthfglu=7.85;
	% Local Parameter:   id =  knadp, name = knadp
	reaction_R26_knadp=0.9;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R26_vmax=59.332;

	reaction_R26=compartment_compartment*Rate_Law_for_R26_1(x(31), x(27), reaction_R26_kfthfglu, reaction_R26_knadp, reaction_R26_vmax);

% Reaction: id = R18c, name = R18c - S-Aminomethyldihydrolipoylprotein:tetrahydrofolate aminomethyltransferase (T protein)	% Local Parameter:   id =  ksamdlp, name = ksamdlp
	reaction_R18c_ksamdlp=290.0;
	% Local Parameter:   id =  kthfglu, name = kthfglu
	reaction_R18c_kthfglu=67.7;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R18c_vmax=196.56;

	reaction_R18c=compartment_compartment*Rate_Law_for_R18c_1(x(34), x(21), reaction_R18c_ksamdlp, reaction_R18c_kthfglu, reaction_R18c_vmax);

% Reaction: id = R18a, name = R18a - Dihydrolipoamide dehydrogenase	% Local Parameter:   id =  klp, name = klp
	reaction_R18a_klp=1280.0;
	% Local Parameter:   id =  knadh, name = knadh
	reaction_R18a_knadh=58.0;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R18a_vmax=5432.7;

	reaction_R18a=compartment_compartment*Rate_Law_for_R18a_1(const_species_Lp, const_species_NADH, reaction_R18a_klp, reaction_R18a_knadh, reaction_R18a_vmax);

% Reaction: id = R13, name = R13 - Dihydropteroate synthase	% Local Parameter:   id =  kahmdpp, name = kahmdpp
	reaction_R13_kahmdpp=3.15;
	% Local Parameter:   id =  kpaba, name = kpaba
	reaction_R13_kpaba=2.6;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R13_vmax=105.014;

	reaction_R13=compartment_compartment*Rate_Law_for_R13_1(x(17), reaction_R13_kahmdpp, reaction_R13_kpaba, x(12), reaction_R13_vmax);

% Reaction: id = R24, name = R24 - 10-Formyltetrahydrofolate synthetase	% Local Parameter:   id =  katp, name = katp
	reaction_R24_katp=74.5;
	% Local Parameter:   id =  kformyl, name = kformyl
	reaction_R24_kformyl=3190.0;
	% Local Parameter:   id =  kthfglu, name = kthfglu
	reaction_R24_kthfglu=134.0;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R24_vmax=15315.3;

	reaction_R24=compartment_compartment*Rate_Law_for_R24_1(x(30), x(2), x(27), reaction_R24_katp, reaction_R24_kformyl, reaction_R24_kthfglu, reaction_R24_vmax);

% Reaction: id = R23, name = R23 - 5,10-Methenyltetrahydrofolate cyclohydrolase	% Local Parameter:   id =  k1, name = k1
	reaction_R23_k1=0.08;
	% Local Parameter:   id =  k2, name = k2
	reaction_R23_k2=0.031;

	reaction_R23=compartment_compartment*(reaction_R23_k1*x(26)-reaction_R23_k2*x(27));

% Reaction: id = R28, name = R28 - S-Aminomethyldihydrolipoylprotein:tetrahydrofolate aminomethyltransferase (T protein)	% Local Parameter:   id =  Km, name = Km
	reaction_R28_Km=67.0;
	% Local Parameter:   id =  V, name = V
	reaction_R28_V=200.0;

	reaction_R28=compartment_compartment*Henri_Michaelis_Menten__irreversible__6(reaction_R28_Km, reaction_R28_V, x(26));

% Reaction: id = R29, name = R29 - 5-formyltetrahydrofolate cyclo-ligase	% Local Parameter:   id =  katp, name = katp
	reaction_R29_katp=50.0;
	% Local Parameter:   id =  kffthfglu, name = kffthfglu
	reaction_R29_kffthfglu=5.0;
	% Local Parameter:   id =  vmax, name = vmax
	reaction_R29_vmax=500.0;

	reaction_R29=compartment_compartment*Rate_Law_for_R29_1(const_species_ATP, x(38), reaction_R29_katp, reaction_R29_kffthfglu, reaction_R29_vmax);

% Species:   id = PEP, name = PEP, constant	const_species_PEP=16.01031821;

% Species:   id = EP, name = EP, constant	const_species_EP=107.502052;

% Species:   id = Gln, name = Gln, constant	const_species_Gln=381.0009289;

% Species:   id = GTP, name = GTP, constant	const_species_GTP=487.4867469;

% Species:   id = Gly, name = Gly, constant	const_species_Gly=499.9974679;

% Species:   id = Ser, name = Ser, constant	const_species_Ser=6.803576818;

% Species:   id = Hcy, name = Hcy, constant	const_species_Hcy=1.000182797;

% Species:   id = dUMP, name = dUMP, constant	const_species_dUMP=20.00252991;

% Species:   id = mtRNA, name = mtRNA, constant	const_species_mtRNA=1.003123924;

% Species:   id = ATP, name = ATP, constant	const_species_ATP=963.0188351;

% Species:   id = NADPH, name = NADPH, constant	const_species_NADPH=12.19849409;

% Species:   id = Lp, name = Lp, constant	const_species_Lp=1.298234355;

% Species:   id = NADH, name = NADH, constant	const_species_NADH=8.349823436;

	xdot=zeros(38,1);
	
% Species:   id = DAHP, name = DAHP, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2));
	
% Species:   id = Pi, name = Pi, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_R1) + ( 1.0 * reaction_R2) + ( 1.0 * reaction_R5) + ( 1.0 * reaction_R6) + ( 1.0 * reaction_R7) + ( 1.0 * reaction_R11) + ( 1.0 * reaction_R27) + ( 1.0 * reaction_R14) + ( 1.0 * reaction_R16) + ( 1.0 * reaction_R13) + (-1.0 * reaction_R24) + ( 1.0 * reaction_R29));
	
% Species:   id = DHQ, name = DHQ, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R3));
	
% Species:   id = DHSK, name = DHSK, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_R3) + (-1.0 * reaction_R4));
	
% Species:   id = SK, name = SK, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_R4) + (-1.0 * reaction_R5));
	
% Species:   id = SKP, name = SKP, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_R5) + (-1.0 * reaction_R6));
	
% Species:   id = CVPSK, name = CVPSK, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R7));
	
% Species:   id = CM, name = CM, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_R7) + (-1.0 * reaction_R8));
	
% Species:   id = Glu, name = Glu, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_R8) + (-1.0 * reaction_R14) + (-1.0 * reaction_R16));
	
% Species:   id = ADC, name = ADC, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_R8) + (-1.0 * reaction_R9));
	
% Species:   id = Pyr, name = Pyr, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_R9));
	
% Species:   id = pABA, name = pABA, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_R9) + (-1.0 * reaction_R13));
	
% Species:   id = DHNTP, name = DHNTP, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_R10) + (-1.0 * reaction_R11) + (-1.0 * reaction_R27));
	
% Species:   id = AHMDHP, name = AHMDHP, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_R11) + (-1.0 * reaction_R12));
	
% Species:   id = HAD, name = HAD, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*(( 1.0 * reaction_R11));
	
% Species:   id = PTHP, name = PTHP, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*(( 1.0 * reaction_R27));
	
% Species:   id = AHMDPP, name = AHMDPP, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*(( 1.0 * reaction_R12) + (-1.0 * reaction_R13));
	
% Species:   id = DHP, name = DHP, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment))*((-1.0 * reaction_R14) + ( 1.0 * reaction_R13));
	
% Species:   id = DHF, name = DHF, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment))*(( 1.0 * reaction_R14) + (-1.0 * reaction_R15) + ( 1.0 * reaction_R21));
	
% Species:   id = THF, name = THF, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment))*(( 1.0 * reaction_R15) + (-1.0 * reaction_R16));
	
% Species:   id = THFGlu, name = THFGlu, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment))*(( 1.0 * reaction_R16) + (-1.0 * reaction_R17) + ( 1.0 * reaction_R20) + ( 1.0 * reaction_R25) + ( 1.0 * reaction_R26) + (-1.0 * reaction_R18c) + ( 1.0 * reaction_R24));
	
% Species:   id = myTHFGlu, name = myTHFGlu, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment))*(( 1.0 * reaction_R17) + (-1.0 * reaction_R19) + (-1.0 * reaction_R21) + (-1.0 * reaction_R22) + ( 1.0 * reaction_R18c));
	
% Species:   id = MTHFGlu, name = MTHFGlu, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment))*(( 1.0 * reaction_R19) + (-1.0 * reaction_R20));
	
% Species:   id = Met, name = Met, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment))*(( 1.0 * reaction_R20));
	
% Species:   id = dTMP, name = dTMP, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment))*(( 1.0 * reaction_R21));
	
% Species:   id = meTHFGlu, name = meTHFGlu, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment))*(( 1.0 * reaction_R22) + (-1.0 * reaction_R23) + (-1.0 * reaction_R28) + ( 1.0 * reaction_R29));
	
% Species:   id = fTHFGlu, name = fTHFGlu, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment))*((-1.0 * reaction_R25) + (-1.0 * reaction_R26) + (-1.0 * reaction_R24) + ( 1.0 * reaction_R23));
	
% Species:   id = fmtRNA, name = fmtRNA, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment))*(( 1.0 * reaction_R25));
	
% Species:   id = COTwo, name = COTwo, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment))*(( 1.0 * reaction_R18b) + ( 1.0 * reaction_R26));
	
% Species:   id = ADP, name = ADP, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment))*(( 1.0 * reaction_R5) + ( 1.0 * reaction_R14) + ( 1.0 * reaction_R16) + (-1.0 * reaction_R24) + ( 1.0 * reaction_R29));
	
% Species:   id = NADP, name = NADP, affected by kineticLaw
	xdot(31) = (1/(compartment_compartment))*(( 1.0 * reaction_R4) + ( 1.0 * reaction_R15) + ( 1.0 * reaction_R19) + (-1.0 * reaction_R22) + (-1.0 * reaction_R26));
	
% Species:   id = AMP, name = AMP, affected by kineticLaw
	xdot(32) = (1/(compartment_compartment))*(( 1.0 * reaction_R12));
	
% Species:   id = DLp, name = DLp, affected by kineticLaw
	xdot(33) = (1/(compartment_compartment))*((-1.0 * reaction_R18b) + ( 1.0 * reaction_R18a));
	
% Species:   id = SAmDLp, name = SAmDLp, affected by kineticLaw
	xdot(34) = (1/(compartment_compartment))*(( 1.0 * reaction_R18b) + (-1.0 * reaction_R18c));
	
% Species:   id = NAD, name = NAD, affected by kineticLaw
	xdot(35) = (1/(compartment_compartment))*(( 1.0 * reaction_R18a));
	
% Species:   id = Ammonia, name = Ammonia, affected by kineticLaw
	xdot(36) = (1/(compartment_compartment))*(( 1.0 * reaction_R18c));
	
% Species:   id = Formyl, name = Formyl, affected by kineticLaw
	xdot(37) = (1/(compartment_compartment))*(( 1.0 * reaction_R10) + ( 1.0 * reaction_R24));
	
% Species:   id = ffTHFGlu, name = ffTHFGlu, affected by kineticLaw
	xdot(38) = (1/(compartment_compartment))*(( 1.0 * reaction_R28) + (-1.0 * reaction_R29));
end

function z=Rate_Law_for_R1_1(EP,PEP,kep,kpep,vmax), z=(vmax*EP*PEP/(kpep*kep+kpep*EP+kep*PEP+EP*PEP));end

function z=Henri_Michaelis_Menten__irreversible__1(DAHP,Km,V), z=(V*DAHP/(Km+DAHP));end

function z=Henri_Michaelis_Menten__irreversible__2(DHQ,Km,V), z=(V*DHQ/(Km+DHQ));end

function z=Rate_Law_for_R4_1(DHSK,NADPH,kdhsk,knadph,vmax), z=(vmax*DHSK*NADPH/(kdhsk*knadph+kdhsk*NADPH+knadph*DHSK+DHSK*NADPH));end

function z=Rate_Law_for_R5_1(ATP,SK,katp,ksk,vmax), z=(vmax*SK*ATP/(ksk*katp+ksk*ATP+katp*SK+SK*ATP));end

function z=Rate_Law_for_R6_1(PEP,SKP,kpep,kskp,vmax), z=(vmax*SKP*PEP/(kpep*kskp+kpep*PEP+kskp*SKP+PEP*SKP));end

function z=Henri_Michaelis_Menten__irreversible__3(CVPSK,Km,V), z=(V*CVPSK/(Km+CVPSK));end

function z=Rate_Law_for_R8_1(CM,Gln,kcm,kgln,vmax), z=(vmax*CM*Gln/(kcm*kgln+kcm*Gln+kgln*CM+CM*Gln));end

function z=Henri_Michaelis_Menten__irreversible__4(ADC,Km,V), z=(V*ADC/(Km+ADC));end

function z=Rate_Law_for_R10_1(GTP,THF,kgtp,kiTHF,vmax), z=(vmax*GTP/(kgtp*(1+THF/kiTHF)+GTP));end

function z=Henri_Michaelis_Menten__irreversible__5(DHNTP,Km,V), z=(V*DHNTP/(Km+DHNTP));end

function z=Rate_Law_for_R12_1(AHMDHP,ATP,kahmdhp,katp,vmax), z=(vmax*ATP*AHMDHP/(kahmdhp*katp+katp*ATP+kahmdhp*AHMDHP+ATP*AHMDHP));end

function z=Rate_Law_for_R14_1(ATP,DHP,Glu,katp,kdhp,kglu,vmax), z=(vmax*DHP*Glu*ATP/(kdhp*kglu*katp+kdhp*(Glu+ATP)+kglu*(DHP+ATP)+katp*(Glu+ATP)+DHP*Glu*ATP));end

function z=Rate_Law_for_R15_1(DHF,NADPH,kdhf,knadph,vmax), z=(vmax*DHF*NADPH/(kdhf*knadph+kdhf*NADPH+knadph*DHF+DHF*NADPH));end

function z=Rate_Law_for_R16_1(ATP,DHF,Glu,THF,katp,kglu,kidhf,kthf,vmax), z=(vmax*THF*Glu*ATP/(kthf*(1+DHF/kidhf)*kglu*katp+kthf*(Glu+ATP)+kglu*(THF+ATP)+katp*(THF+Glu)+THF*Glu*ATP));end

function z=Rate_Law_for_R17_1(Ser,THF,THFGlu,kithf,kser,kthfglu,vmax), z=(vmax*THFGlu*Ser/(kthfglu*(1+THF/kithf)*kser+kthfglu*Ser+kser*THFGlu+THFGlu*Ser));end

function z=Rate_Law_for_R18b_1(DLp,Gly,kdlp,kgly,vmax), z=(vmax*DLp*Gly/(kgly*kdlp+kgly*Gly+kdlp*DLp+DLp*Gly));end

function z=Rate_Law_for_R19_1(DHF,NADPH,kidhf,kmythfglu,knadph,myTHFGlu,vmax), z=(vmax*myTHFGlu*NADPH/(kmythfglu*(1+DHF/kidhf)*knadph+kmythfglu*NADPH+knadph*myTHFGlu+myTHFGlu*NADPH));end

function z=Rate_Law_for_R20_1(Hcy,MTHFGlu,khcy,kmthfglu,vmax), z=(vmax*MTHFGlu*Hcy/(kmthfglu*khcy+kmthfglu*Hcy+khcy*MTHFGlu+MTHFGlu*Hcy));end

function z=Rate_Law_for_R21_1(DHF,dUMP,kdump,kidhf,kmythfglu,myTHFGlu,vmax), z=(vmax*myTHFGlu*dUMP/(kmythfglu*(1+DHF/kidhf)*kdump+kmythfglu*dUMP+kdump*myTHFGlu+myTHFGlu*dUMP));end

function z=Rate_Law_for_R22_1(DHF,NADP,kidhf,kmythfglu,knadp,myTHFGlu,vmax), z=(vmax*myTHFGlu*NADP/(kmythfglu*(1+DHF/kidhf)*knadp+kmythfglu*NADP+knadp*myTHFGlu+myTHFGlu*NADP));end

function z=Rate_Law_for_R25_1(fTHFGlu,kfthfglu,kmtrna,mtRNA,vmax), z=(vmax*fTHFGlu*mtRNA/(kfthfglu*kmtrna+kfthfglu*mtRNA+kmtrna*fTHFGlu+fTHFGlu*mtRNA));end

function z=Rate_Law_for_R26_1(NADP,fTHFGlu,kfthfglu,knadp,vmax), z=(vmax*fTHFGlu*NADP/(kfthfglu*knadp+kfthfglu*NADP+knadp*fTHFGlu+fTHFGlu*NADP));end

function z=Rate_Law_for_R18c_1(SAmDLp,THFGlu,ksamdlp,kthfglu,vmax), z=(vmax*THFGlu*SAmDLp/(kthfglu*ksamdlp+kthfglu*SAmDLp+ksamdlp*THFGlu+THFGlu*SAmDLp));end

function z=Rate_Law_for_R18a_1(Lp,NADH,klp,knadh,vmax), z=(vmax*NADH*Lp/(knadh*klp+knadh*Lp+klp*NADH+NADH*Lp));end

function z=Rate_Law_for_R13_1(AHMDPP,kahmdpp,kpaba,pABA,vmax), z=(vmax*AHMDPP*pABA/(kahmdpp*kpaba+kpaba*AHMDPP+kahmdpp*pABA+AHMDPP*pABA));end

function z=Rate_Law_for_R24_1(ADP,Pi,fTHFGlu,katp,kformyl,kthfglu,vmax), z=(vmax*fTHFGlu*ADP*Pi/(kthfglu*kformyl*katp+kthfglu*(ADP+Pi)+kformyl*(fTHFGlu+Pi)+katp*(ADP+fTHFGlu)+fTHFGlu*ADP*Pi));end

function z=Henri_Michaelis_Menten__irreversible__6(Km,V,meTHFGlu), z=(V*meTHFGlu/(Km+meTHFGlu));end

function z=Rate_Law_for_R29_1(ATP,ffTHFGlu,katp,kffthfglu,vmax), z=(vmax*ATP*ffTHFGlu/(katp*kffthfglu+katp*ffTHFGlu+kffthfglu*ATP+ATP*ffTHFGlu));end

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


