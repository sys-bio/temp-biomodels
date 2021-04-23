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
% Model name = Proctor2010 - UCHL1 Protein Aggregation
%
% is http://identifiers.org/biomodels.db/MODEL0912070000
% is http://identifiers.org/biomodels.db/BIOMD0000000293
% isDescribedBy http://identifiers.org/pubmed/20949132
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000105
%


function main()
%Initial conditions vector
	x0=zeros(131,1);
	x0(1) = 6000.0;
	x0(2) = 80.0;
	x0(3) = 1500.0;
	x0(4) = 105.0;
	x0(5) = 50.0;
	x0(6) = 300.0;
	x0(7) = 2.0;
	x0(8) = 160.0;
	x0(9) = 1500.0;
	x0(10) = 10.0;
	x0(11) = 795.0;
	x0(12) = 950.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 300.0;
	x0(21) = 0.0;
	x0(22) = 1.0;
	x0(23) = 2.0;
	x0(24) = 10.0;
	x0(25) = 350.0;
	x0(26) = 100.0;
	x0(27) = 100.0;
	x0(28) = 100.0;
	x0(29) = 100.0;
	x0(30) = 100.0;
	x0(31) = 100.0;
	x0(32) = 100.0;
	x0(33) = 100.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 5785.0;
	x0(42) = 10.0;
	x0(43) = 0.0;
	x0(44) = 1200.0;
	x0(45) = 0.0;
	x0(46) = 200.0;
	x0(47) = 0.0;
	x0(48) = 500.0;
	x0(49) = 815.0;
	x0(50) = 5.0;
	x0(51) = 160.0;
	x0(52) = 5.0;
	x0(53) = 0.0;
	x0(54) = 0.0;
	x0(55) = 0.0;
	x0(56) = 0.0;
	x0(57) = 0.0;
	x0(58) = 0.0;
	x0(59) = 0.0;
	x0(60) = 15.0;
	x0(61) = 20.0;
	x0(62) = 20.0;
	x0(63) = 25.0;
	x0(64) = 25.0;
	x0(65) = 30.0;
	x0(66) = 30.0;
	x0(67) = 40.0;
	x0(68) = 40.0;
	x0(69) = 0.0;
	x0(70) = 0.0;
	x0(71) = 0.0;
	x0(72) = 5.0;
	x0(73) = 20.0;
	x0(74) = 3000.0;
	x0(75) = 0.0;
	x0(76) = 0.0;
	x0(77) = 0.0;
	x0(78) = 4800.0;
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
	x0(95) = 0.0;
	x0(96) = 0.0;
	x0(97) = 0.0;
	x0(98) = 0.0;
	x0(99) = 0.0;
	x0(100) = 0.0;
	x0(101) = 0.0;
	x0(102) = 0.0;
	x0(103) = 0.0;
	x0(104) = 0.0;
	x0(105) = 0.0;
	x0(106) = 0.0;
	x0(107) = 0.0;
	x0(108) = 0.0;
	x0(109) = 0.0;
	x0(110) = 0.0;
	x0(111) = 0.0;
	x0(112) = 0.0;
	x0(113) = 0.0;
	x0(114) = 0.0;
	x0(115) = 0.0;
	x0(116) = 0.0;
	x0(117) = 0.0;
	x0(118) = 0.0;
	x0(119) = 0.0;
	x0(120) = 0.0;
	x0(121) = 0.0;
	x0(122) = 0.0;
	x0(123) = 0.0;
	x0(124) = 0.0;
	x0(125) = 0.0;
	x0(126) = 0.0;
	x0(127) = 0.0;
	x0(128) = 0.0;
	x0(129) = 0.0;
	x0(130) = 0.0;
	x0(131) = 0.0;


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

% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Parameter:   id =  ksynNatP, name = ksynNatP
	global_par_ksynNatP=2.4;
% Parameter:   id =  kmisfold, name = kmisfold
	global_par_kmisfold=4.0E-5;
% Parameter:   id =  krefold, name = krefold
	global_par_krefold=8.0E-5;
% Parameter:   id =  kbinMisPE3, name = kbinMisPE3
	global_par_kbinMisPE3=1.0E-4;
% Parameter:   id =  krelMisPE3, name = krelMisPE3
	global_par_krelMisPE3=2.0E-4;
% Parameter:   id =  kbinE1Ub, name = kbinE1Ub
	global_par_kbinE1Ub=2.0E-4;
% Parameter:   id =  kbinE2Ub, name = kbinE2Ub
	global_par_kbinE2Ub=0.001;
% Parameter:   id =  kmonoUb, name = kmonoUb
	global_par_kmonoUb=0.001;
% Parameter:   id =  kpolyUb, name = kpolyUb
	global_par_kpolyUb=0.01;
% Parameter:   id =  kactDUB, name = kactDUB
	global_par_kactDUB=1.0E-4;
% Parameter:   id =  kbinProt, name = kbinProt
	global_par_kbinProt=5.0E-6;
% Parameter:   id =  kactDUBProt, name = kactDUBProt
	global_par_kactDUBProt=1.0E-6;
% Parameter:   id =  kactProt, name = kactProt
	global_par_kactProt=0.01;
% Parameter:   id =  kagg1, name = kagg1
	global_par_kagg1=1.0E-12;
% Parameter:   id =  kagg2, name = kagg2
	global_par_kagg2=1.0E-10;
% Parameter:   id =  kdisagg1, name = kdisagg1
	global_par_kdisagg1=1.0E-8;
% Parameter:   id =  kdisagg2, name = kdisagg2
	global_par_kdisagg2=8.0E-9;
% Parameter:   id =  kdisagg3, name = kdisagg3
	global_par_kdisagg3=6.0E-9;
% Parameter:   id =  kdisagg4, name = kdisagg4
	global_par_kdisagg4=4.0E-9;
% Parameter:   id =  kdisagg5, name = kdisagg5
	global_par_kdisagg5=2.0E-9;
% Parameter:   id =  kigrowth1, name = kigrowth1
	global_par_kigrowth1=5.0E-9;
% Parameter:   id =  kigrowth2, name = kigrowth2
	global_par_kigrowth2=5.0E-9;
% Parameter:   id =  kbinAggProt, name = kbinAggProt
	global_par_kbinAggProt=5.0E-9;
% Parameter:   id =  kbinMisPDUB, name = kbinMisPDUB
	global_par_kbinMisPDUB=2.0E-7;
% Parameter:   id =  kgenROS, name = kgenROS
	global_par_kgenROS=0.01;
% Parameter:   id =  kremROS, name = kremROS
	global_par_kremROS=0.001;
% Parameter:   id =  kubs, name = kubs
	global_par_kubs=0.009;
% Parameter:   id =  kubd, name = kubd
	global_par_kubd=4.4E-9;
% Parameter:   id =  kubss, name = kubss
	global_par_kubss=0.1;
% Parameter:   id =  ksynUCHL1, name = ksynUCHL1
	global_par_ksynUCHL1=0.022;
% Parameter:   id =  kbinUCHL1Prot, name = kbinUCHL1Prot
	global_par_kbinUCHL1Prot=4.0E-10;
% Parameter:   id =  kdegProtUCHL1, name = kdegProtUCHL1
	global_par_kdegProtUCHL1=0.01;
% Parameter:   id =  kdegLysUCHL1, name = kdegLysUCHL1
	global_par_kdegLysUCHL1=2.7E-9;
% Parameter:   id =  kdamUCHL1, name = kdamUCHL1
	global_par_kdamUCHL1=1.0E-8;
% Parameter:   id =  kbinLamp2aUCHL1dam, name = kbinLamp2aUCHL1dam
	global_par_kbinLamp2aUCHL1dam=1.0E-5;
% Parameter:   id =  krelLamp2aUCHL1dam, name = krelLamp2aUCHL1dam
	global_par_krelLamp2aUCHL1dam=5.0E-5;
% Parameter:   id =  kdegLysUCHL1dam, name = kdegLysUCHL1dam
	global_par_kdegLysUCHL1dam=2.7E-9;
% Parameter:   id =  kbinUbUCHL1, name = kbinUbUCHL1
	global_par_kbinUbUCHL1=3.0E-6;
% Parameter:   id =  krelUbUCHL1, name = krelUbUCHL1
	global_par_krelUbUCHL1=0.05;
% Parameter:   id =  kactUchl1, name = kactUchl1
	global_par_kactUchl1=1.0E-4;
% Parameter:   id =  kbinSUBUCHL1, name = kbinSUBUCHL1
	global_par_kbinSUBUCHL1=4.0E-8;
% Parameter:   id =  ksynSUB, name = ksynSUB
	global_par_ksynSUB=0.13;
% Parameter:   id =  kmisfoldSUB, name = kmisfoldSUB
	global_par_kmisfoldSUB=2.0E-5;
% Parameter:   id =  krefoldSUB, name = krefoldSUB
	global_par_krefoldSUB=5.0E-5;
% Parameter:   id =  kbinE3SUB, name = kbinE3SUB
	global_par_kbinE3SUB=5.0E-4;
% Parameter:   id =  krelE3SUB, name = krelE3SUB
	global_par_krelE3SUB=2.0E-4;
% Parameter:   id =  ksynasyn, name = ksynasyn
	global_par_ksynasyn=0.028;
% Parameter:   id =  kbinasynProt, name = kbinasynProt
	global_par_kbinasynProt=1.7E-9;
% Parameter:   id =  kdegasynProt, name = kdegasynProt
	global_par_kdegasynProt=0.01;
% Parameter:   id =  kbinasynLamp2a, name = kbinasynLamp2a
	global_par_kbinasynLamp2a=4.0E-8;
% Parameter:   id =  kCMAasyn, name = kCMAasyn
	global_par_kCMAasyn=0.001;
% Parameter:   id =  kdamasyn, name = kdamasyn
	global_par_kdamasyn=5.0E-8;
% Parameter:   id =  kbinasynDUB, name = kbinasynDUB
	global_par_kbinasynDUB=2.0E-7;
% Parameter:   id =  kbinasynParkin, name = kbinasynParkin
	global_par_kbinasynParkin=1.0E-4;
% Parameter:   id =  krelasynParkin, name = krelasynParkin
	global_par_krelasynParkin=2.0E-4;
% Parameter:   id =  kaggasyn1, name = kaggasyn1
	global_par_kaggasyn1=5.0E-12;
% Parameter:   id =  kaggasyn2, name = kaggasyn2
	global_par_kaggasyn2=5.0E-10;
% Parameter:   id =  kdisaggasyn1, name = kdisaggasyn1
	global_par_kdisaggasyn1=1.0E-8;
% Parameter:   id =  kdisaggasyn2, name = kdisaggasyn2
	global_par_kdisaggasyn2=8.0E-9;
% Parameter:   id =  kdisaggasyn3, name = kdisaggasyn3
	global_par_kdisaggasyn3=6.0E-9;
% Parameter:   id =  kdisaggasyn4, name = kdisaggasyn4
	global_par_kdisaggasyn4=4.0E-9;
% Parameter:   id =  kdisaggasyn5, name = kdisaggasyn5
	global_par_kdisaggasyn5=2.0E-9;
% Parameter:   id =  kgenROSAggP, name = kgenROSAggP
	global_par_kgenROSAggP=2.0E-5;
% Parameter:   id =  kagg1dam, name = kagg1dam
	global_par_kagg1dam=1.0E-5;
% Parameter:   id =  kagg2dam, name = kagg2dam
	global_par_kagg2dam=0.005;
% Parameter:   id =  kdisaggasyndam1, name = kdisaggasyndam1
	global_par_kdisaggasyndam1=1.0E-8;
% Parameter:   id =  kdisaggasyndam2, name = kdisaggasyndam2
	global_par_kdisaggasyndam2=8.0E-9;
% Parameter:   id =  kdisaggasyndam3, name = kdisaggasyndam3
	global_par_kdisaggasyndam3=6.0E-9;
% Parameter:   id =  kdisaggasyndam4, name = kdisaggasyndam4
	global_par_kdisaggasyndam4=4.0E-9;
% Parameter:   id =  kdisaggasyndam5, name = kdisaggasyndam5
	global_par_kdisaggasyndam5=2.0E-9;
% Parameter:   id =  kdisagguchl1dam1, name = kdisagguchl1dam1
	global_par_kdisagguchl1dam1=1.0E-8;
% Parameter:   id =  kdisagguchl1dam2, name = kdisagguchl1dam2
	global_par_kdisagguchl1dam2=8.0E-9;
% Parameter:   id =  kdisagguchl1dam3, name = kdisagguchl1dam3
	global_par_kdisagguchl1dam3=6.0E-9;
% Parameter:   id =  kdisagguchl1dam4, name = kdisagguchl1dam4
	global_par_kdisagguchl1dam4=4.0E-9;
% Parameter:   id =  kdisagguchl1dam5, name = kdisagguchl1dam5
	global_par_kdisagguchl1dam5=2.0E-9;
% Parameter:   id =  kaggSUB1, name = kaggSUB1
	global_par_kaggSUB1=1.0E-12;
% Parameter:   id =  kaggSUB2, name = kaggSUB2
	global_par_kaggSUB2=1.0E-10;
% Parameter:   id =  kdisaggSUB1, name = kdisaggSUB1
	global_par_kdisaggSUB1=1.0E-8;
% Parameter:   id =  kdisaggSUB2, name = kdisaggSUB2
	global_par_kdisaggSUB2=8.0E-9;
% Parameter:   id =  kdisaggSUB3, name = kdisaggSUB3
	global_par_kdisaggSUB3=6.0E-9;
% Parameter:   id =  kdisaggSUB4, name = kdisaggSUB4
	global_par_kdisaggSUB4=4.0E-9;
% Parameter:   id =  kdisaggSUB5, name = kdisaggSUB5
	global_par_kdisaggSUB5=2.0E-9;
% Parameter:   id =  kproteff, name = kproteff
% Warning parameter kproteff is not constant, it should be controlled by a Rule and/or events
	global_par_kproteff=1.0;
% Parameter:   id =  Tot_MisP, name = Tot_MisP
% Parameter:   id =  Tot_Protein, name = Tot_Protein
% Parameter:   id =  Ub_Conjugates, name = Ub_Conjugates
% Parameter:   id =  Tot_Ub, name = Tot_Ub
% Parameter:   id =  AggP, name = AggP
% Parameter:   id =  Tot_asyn_dam, name = Tot_asyn_dam
% Parameter:   id =  Tot_asyn, name = Tot_asyn
% Parameter:   id =  Tot_UCHL1, name = Tot_UCHL1
% Parameter:   id =  UCHL1_substrate, name = UCHL1_substrate
% assignmentRule: variable = Tot_MisP
	global_par_Tot_MisP=x(7)+x(13)+x(26)+x(14)+x(27)+x(15)+x(28)+x(16)+x(29)+x(17)+x(30)+x(18)+x(31)+x(19)+x(32)+x(20)+x(33)+x(2)+x(21)+x(22)+x(23)+x(24)+x(25);
% assignmentRule: variable = Tot_Protein
	global_par_Tot_Protein=global_par_Tot_MisP+x(1);
% assignmentRule: variable = Ub_Conjugates
	global_par_Ub_Conjugates=x(124)+4*x(96)+5*x(97)+6*x(98)+7*x(99)+8*x(100)+x(11)+x(12)+x(13)+x(26)+2*x(14)+2*x(27)+3*x(15)+3*x(28)+4*x(16)+4*x(29)+5*x(17)+5*x(30)+6*x(18)+6*x(31)+7*x(19)+7*x(32)+8*x(20)+8*x(33)+x(53)+x(61)+2*x(54)+2*x(62)+3*x(55)+3*x(63)+4*x(56)+4*x(64)+5*x(57)+5*x(65)+6*x(58)+6*x(66)+7*x(59)+7*x(67)+8*x(60)+8*x(68)+x(61)+4*x(21)+5*x(22)+6*x(23)+7*x(24)+8*x(25)+x(80)+x(88)+2*x(81)+2*x(89)+3*x(82)+3*x(90)+4*x(83)+4*x(91)+5*x(84)+5*x(92)+6*x(85)+6*x(93)+7*x(86)+7*x(94)+8*x(87)+8*x(95)+4*x(69)+5*x(70)+6*x(71)+7*x(72)+8*x(73)+x(48)+x(131);
% assignmentRule: variable = Tot_Ub
	global_par_Tot_Ub=global_par_Ub_Conjugates+x(3);
% assignmentRule: variable = AggP
	global_par_AggP=x(101)+x(102)+x(103)+x(104)+x(105)+x(121)+x(122)+x(106)+x(107)+x(108)+x(109)+x(110)+x(126)+x(125)+x(127)+x(34)+x(35)+x(36)+x(37)+x(38)+x(123)+x(116)+x(117)+x(118)+x(119)+x(120)+x(130)+x(111)+x(112)+x(113)+x(114)+x(115)+x(124)+x(128)+x(129);
% assignmentRule: variable = Tot_asyn_dam
	global_par_Tot_asyn_dam=x(77)+x(96)+x(97)+x(98)+x(99)+x(100)+x(96)+x(79)+x(80)+x(88)+x(81)+x(89)+x(82)+x(90)+x(83)+x(91)+x(84)+x(92)+x(85)+x(93)+x(86)+x(94)+x(87)+x(95);
% assignmentRule: variable = Tot_asyn
	global_par_Tot_asyn=x(74)+x(76)+x(75);
% assignmentRule: variable = UCHL1_substrate
	global_par_UCHL1_substrate=x(61)+x(62)+x(63)+x(64)+x(65)+x(66)+x(67)+x(68)+x(47)+x(48)+x(45)+x(43)+x(42);
% assignmentRule: variable = Tot_UCHL1
	global_par_Tot_UCHL1=x(41)+global_par_UCHL1_substrate;

% Reaction: id = UbSynthesis
	reaction_UbSynthesis=global_par_kubs*const_species_Source;

% Reaction: id = UbDegradation
	reaction_UbDegradation=global_par_kubd*x(9)*x(3)*global_par_kproteff;

% Reaction: id = UbUpregulation
	reaction_UbUpregulation=global_par_kubss*x(2)^6/(1500^6+x(2)^6);

% Reaction: id = ProteinSynthesis
	reaction_ProteinSynthesis=global_par_ksynNatP*const_species_Source;

% Reaction: id = Misfolding
	reaction_Misfolding=global_par_kmisfold*x(1)*x(10);

% Reaction: id = Refolding
	reaction_Refolding=global_par_krefold*x(2);

% Reaction: id = MisPE3Binding
	reaction_MisPE3Binding=global_par_kbinMisPE3*x(2)*x(6);

% Reaction: id = MisPE3Release
	reaction_MisPE3Release=global_par_krelMisPE3*x(7);

% Reaction: id = E1UbBinding
	reaction_E1UbBinding=global_par_kbinE1Ub*x(4)*x(3)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = E2UbBinding
	reaction_E2UbBinding=global_par_kbinE2Ub*x(5)*x(11);

% Reaction: id = Monoubiquitination
	reaction_Monoubiquitination=global_par_kmonoUb*x(12)*x(7);

% Reaction: id = Polyubiquitination1
	reaction_Polyubiquitination1=global_par_kpolyUb*x(13)*x(12);

% Reaction: id = Polyubiquitination2
	reaction_Polyubiquitination2=global_par_kpolyUb*x(14)*x(12);

% Reaction: id = Polyubiquitination3
	reaction_Polyubiquitination3=global_par_kpolyUb*x(15)*x(12);

% Reaction: id = Polyubiquitination4
	reaction_Polyubiquitination4=global_par_kpolyUb*x(16)*x(12);

% Reaction: id = Polyubiquitination5
	reaction_Polyubiquitination5=global_par_kpolyUb*x(17)*x(12);

% Reaction: id = Polyubiquitination6
	reaction_Polyubiquitination6=global_par_kpolyUb*x(18)*x(12);

% Reaction: id = Polyubiquitination7
	reaction_Polyubiquitination7=global_par_kpolyUb*x(19)*x(12);

% Reaction: id = MisPDUBbinding1
	reaction_MisPDUBbinding1=global_par_kbinMisPDUB*x(13)*x(8);

% Reaction: id = MisPDUBbinding2
	reaction_MisPDUBbinding2=global_par_kbinMisPDUB*x(14)*x(8);

% Reaction: id = MisPDUBbinding3
	reaction_MisPDUBbinding3=global_par_kbinMisPDUB*x(15)*x(8);

% Reaction: id = MisPDUBbinding4
	reaction_MisPDUBbinding4=global_par_kbinMisPDUB*x(16)*x(8);

% Reaction: id = MisPDUBbinding5
	reaction_MisPDUBbinding5=global_par_kbinMisPDUB*x(17)*x(8);

% Reaction: id = MisPDUBbinding6
	reaction_MisPDUBbinding6=global_par_kbinMisPDUB*x(18)*x(8);

% Reaction: id = MisPDUBbinding7
	reaction_MisPDUBbinding7=global_par_kbinMisPDUB*x(19)*x(8);

% Reaction: id = MisPDUBbinding8
	reaction_MisPDUBbinding8=global_par_kbinMisPDUB*x(20)*x(8);

% Reaction: id = Deubiquitination8
	reaction_Deubiquitination8=global_par_kactDUB*x(33);

% Reaction: id = Deubiquitination7
	reaction_Deubiquitination7=global_par_kactDUB*x(32);

% Reaction: id = Deubiquitination6
	reaction_Deubiquitination6=global_par_kactDUB*x(31);

% Reaction: id = Deubiquitination5
	reaction_Deubiquitination5=global_par_kactDUB*x(30);

% Reaction: id = Deubiquitination4
	reaction_Deubiquitination4=global_par_kactDUB*x(29);

% Reaction: id = Deubiquitination3
	reaction_Deubiquitination3=global_par_kactDUB*x(28);

% Reaction: id = Deubiquitination2
	reaction_Deubiquitination2=global_par_kactDUB*x(27);

% Reaction: id = Deubiquitination1
	reaction_Deubiquitination1=global_par_kactDUB*x(26);

% Reaction: id = ProteasomeBindingUb4
	reaction_ProteasomeBindingUb4=global_par_kbinProt*x(16)*x(9);

% Reaction: id = ProteasomeBindingUb5
	reaction_ProteasomeBindingUb5=global_par_kbinProt*x(17)*x(9);

% Reaction: id = ProteasomeBindingUb6
	reaction_ProteasomeBindingUb6=global_par_kbinProt*x(18)*x(9);

% Reaction: id = ProteasomeBindingUb7
	reaction_ProteasomeBindingUb7=global_par_kbinProt*x(19)*x(9);

% Reaction: id = ProteasomeBindingUb8
	reaction_ProteasomeBindingUb8=global_par_kbinProt*x(20)*x(9);

% Reaction: id = DeubiquitinationBoundMisP5
	reaction_DeubiquitinationBoundMisP5=global_par_kactDUBProt*x(25)*x(8);

% Reaction: id = DeubiquitinationBoundMisP4
	reaction_DeubiquitinationBoundMisP4=global_par_kactDUBProt*x(24)*x(8);

% Reaction: id = DeubiquitinationBoundMisP3
	reaction_DeubiquitinationBoundMisP3=global_par_kactDUBProt*x(23)*x(8);

% Reaction: id = DeubiquitinationBoundMisP2
	reaction_DeubiquitinationBoundMisP2=global_par_kactDUBProt*x(22)*x(8);

% Reaction: id = DeubiquitinationBoundMisP1
	reaction_DeubiquitinationBoundMisP1=global_par_kactDUBProt*x(21)*x(8);

% Reaction: id = ProteasomeActivity1
	reaction_ProteasomeActivity1=global_par_kactProt*global_par_kproteff*x(21)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = ProteasomeActivity2
	reaction_ProteasomeActivity2=global_par_kactProt*global_par_kproteff*x(22)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = ProteasomeActivity3
	reaction_ProteasomeActivity3=global_par_kactProt*global_par_kproteff*x(23)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = ProteasomeActivity4
	reaction_ProteasomeActivity4=global_par_kactProt*global_par_kproteff*x(24)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = ProteasomeActivity5
	reaction_ProteasomeActivity5=global_par_kactProt*global_par_kproteff*x(25)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = Aggregation1
	reaction_Aggregation1=global_par_kagg1*x(2)*(x(2)-1)*0.5;

% Reaction: id = Aggregation2
	reaction_Aggregation2=global_par_kagg2*x(2)*x(34);

% Reaction: id = Aggregation3
	reaction_Aggregation3=global_par_kagg2*x(2)*x(35);

% Reaction: id = Aggregation4
	reaction_Aggregation4=global_par_kagg2*x(2)*x(36);

% Reaction: id = Aggregation5
	reaction_Aggregation5=global_par_kagg2*x(2)*x(37);

% Reaction: id = Disaggregation1
	reaction_Disaggregation1=global_par_kdisagg5*x(38);

% Reaction: id = Disaggregation2
	reaction_Disaggregation2=global_par_kdisagg4*x(37);

% Reaction: id = Disaggregation3
	reaction_Disaggregation3=global_par_kdisagg3*x(36);

% Reaction: id = Disaggregation4
	reaction_Disaggregation4=global_par_kdisagg2*x(35);

% Reaction: id = Disaggregation5
	reaction_Disaggregation5=global_par_kdisagg1*x(34);

% Reaction: id = InclusionFormation
	reaction_InclusionFormation=global_par_kagg2*x(2)*x(38);

% Reaction: id = InclusionGrowth1
	reaction_InclusionGrowth1=global_par_kigrowth1*x(2)*x(39);

% Reaction: id = InclusionGrowth2
	reaction_InclusionGrowth2=global_par_kigrowth2*x(7)*x(39);

% Reaction: id = InclusionGrowth3
	reaction_InclusionGrowth3=global_par_kigrowth2*x(13)*x(39);

% Reaction: id = InclusionGrowth4
	reaction_InclusionGrowth4=global_par_kigrowth2*x(14)*x(39);

% Reaction: id = InclusionGrowth5
	reaction_InclusionGrowth5=global_par_kigrowth2*x(15)*x(39);

% Reaction: id = InclusionGrowth6
	reaction_InclusionGrowth6=global_par_kigrowth2*x(16)*x(39);

% Reaction: id = InclusionGrowth7
	reaction_InclusionGrowth7=global_par_kigrowth2*x(17)*x(39);

% Reaction: id = InclusionGrowth8
	reaction_InclusionGrowth8=global_par_kigrowth2*x(18)*x(39);

% Reaction: id = InclusionGrowth9
	reaction_InclusionGrowth9=global_par_kigrowth2*x(19)*x(39);

% Reaction: id = InclusionGrowth10
	reaction_InclusionGrowth10=global_par_kigrowth2*x(20)*x(39);

% Reaction: id = InclusionGrowth11
	reaction_InclusionGrowth11=global_par_kigrowth2*x(26)*x(39);

% Reaction: id = InclusionGrowth12
	reaction_InclusionGrowth12=global_par_kigrowth2*x(27)*x(39);

% Reaction: id = InclusionGrowth13
	reaction_InclusionGrowth13=global_par_kigrowth2*x(28)*x(39);

% Reaction: id = InclusionGrowth14
	reaction_InclusionGrowth14=global_par_kigrowth2*x(29)*x(39);

% Reaction: id = InclusionGrowth15
	reaction_InclusionGrowth15=global_par_kigrowth2*x(30)*x(39);

% Reaction: id = InclusionGrowth16
	reaction_InclusionGrowth16=global_par_kigrowth2*x(31)*x(39);

% Reaction: id = InclusionGrowth17
	reaction_InclusionGrowth17=global_par_kigrowth2*x(32)*x(39);

% Reaction: id = InclusionGrowth18
	reaction_InclusionGrowth18=global_par_kigrowth2*x(33)*x(39);

% Reaction: id = ProteasomeInhibition1
	reaction_ProteasomeInhibition1=global_par_kbinAggProt*x(34)*x(9);

% Reaction: id = ProteasomeInhibition2
	reaction_ProteasomeInhibition2=global_par_kbinAggProt*x(35)*x(9);

% Reaction: id = ProteasomeInhibition3
	reaction_ProteasomeInhibition3=global_par_kbinAggProt*x(36)*x(9);

% Reaction: id = ProteasomeInhibition4
	reaction_ProteasomeInhibition4=global_par_kbinAggProt*x(37)*x(9);

% Reaction: id = ProteasomeInhibition5
	reaction_ProteasomeInhibition5=global_par_kbinAggProt*x(38)*x(9);

% Reaction: id = ROSgenerationSmallAggP1
	reaction_ROSgenerationSmallAggP1=global_par_kgenROSAggP*x(34);

% Reaction: id = ROSgenerationSmallAggP2
	reaction_ROSgenerationSmallAggP2=global_par_kgenROSAggP*x(35);

% Reaction: id = ROSgenerationSmallAggP3
	reaction_ROSgenerationSmallAggP3=global_par_kgenROSAggP*x(36);

% Reaction: id = ROSgenerationSmallAggP4
	reaction_ROSgenerationSmallAggP4=global_par_kgenROSAggP*x(37);

% Reaction: id = ROSgenerationSmallAggP5
	reaction_ROSgenerationSmallAggP5=global_par_kgenROSAggP*x(38);

% Reaction: id = UCHL1Synthesis
	reaction_UCHL1Synthesis=global_par_ksynUCHL1*const_species_Source;

% Reaction: id = UCHL1ProteasomeBinding
	reaction_UCHL1ProteasomeBinding=global_par_kbinUCHL1Prot*x(41)*x(9);

% Reaction: id = UCHL1ProteasomeDegradation
	reaction_UCHL1ProteasomeDegradation=global_par_kdegProtUCHL1*x(42)*global_par_kproteff;

% Reaction: id = UCHL1LysosomalDegradation
	reaction_UCHL1LysosomalDegradation=global_par_kdegLysUCHL1*x(41)*x(44);

% Reaction: id = UCHL1damage
	reaction_UCHL1damage=global_par_kdamUCHL1*x(41)*x(10);

% Reaction: id = UCHL1DamgedProteasomeBinding
	reaction_UCHL1DamgedProteasomeBinding=global_par_kbinUCHL1Prot*x(45)*x(9);

% Reaction: id = UCHL1DamagedProteasomeDegradation
	reaction_UCHL1DamagedProteasomeDegradation=global_par_kdegProtUCHL1*x(43)*global_par_kproteff;

% Reaction: id = UCHL1DamagedLysosomalDegradation
	reaction_UCHL1DamagedLysosomalDegradation=global_par_kdegLysUCHL1dam*x(45)*x(44);

% Reaction: id = UCHL1Lamp2abinding
	reaction_UCHL1Lamp2abinding=global_par_kbinLamp2aUCHL1dam*x(45)*x(46);

% Reaction: id = UCHL1Lamp2aRelease
	reaction_UCHL1Lamp2aRelease=global_par_krelLamp2aUCHL1dam*x(47);

% Reaction: id = UbUCHL1binding
	reaction_UbUCHL1binding=global_par_kbinUbUCHL1*x(3)*x(41);

% Reaction: id = UbUCHL1release
	reaction_UbUCHL1release=global_par_krelUbUCHL1*x(48);

% Reaction: id = SUBsynthesis
	reaction_SUBsynthesis=global_par_ksynSUB*const_species_Source;

% Reaction: id = SUBmisfolding
	reaction_SUBmisfolding=global_par_kmisfoldSUB*x(49)*x(10);

% Reaction: id = SUBRefolding
	reaction_SUBRefolding=global_par_krefoldSUB*x(50);

% Reaction: id = E3SUBBinding
	reaction_E3SUBBinding=global_par_kbinE3SUB*x(50)*x(51);

% Reaction: id = E3SUBRelease
	reaction_E3SUBRelease=global_par_krelE3SUB*x(52);

% Reaction: id = SUBMonoubiquitination
	reaction_SUBMonoubiquitination=global_par_kmonoUb*x(12)*x(52);

% Reaction: id = SUBPolyubiquitination1
	reaction_SUBPolyubiquitination1=global_par_kpolyUb*x(53)*x(12);

% Reaction: id = SUBPolyubiquitination2
	reaction_SUBPolyubiquitination2=global_par_kpolyUb*x(54)*x(12);

% Reaction: id = SUBPolyubiquitination3
	reaction_SUBPolyubiquitination3=global_par_kpolyUb*x(55)*x(12);

% Reaction: id = SUBPolyubiquitination4
	reaction_SUBPolyubiquitination4=global_par_kpolyUb*x(56)*x(12);

% Reaction: id = SUBPolyubiquitination5
	reaction_SUBPolyubiquitination5=global_par_kpolyUb*x(57)*x(12);

% Reaction: id = SUBPolyubiquitination6
	reaction_SUBPolyubiquitination6=global_par_kpolyUb*x(58)*x(12);

% Reaction: id = SUBPolyubiquitination7
	reaction_SUBPolyubiquitination7=global_par_kpolyUb*x(59)*x(12);

% Reaction: id = SUBUCHL1binding1
	reaction_SUBUCHL1binding1=global_par_kbinSUBUCHL1*x(53)*x(41);

% Reaction: id = SUBUCHL1binding2
	reaction_SUBUCHL1binding2=global_par_kbinSUBUCHL1*x(54)*x(41);

% Reaction: id = SUBUCHL1binding3
	reaction_SUBUCHL1binding3=global_par_kbinSUBUCHL1*x(55)*x(41);

% Reaction: id = SUBUCHL1binding4
	reaction_SUBUCHL1binding4=global_par_kbinSUBUCHL1*x(56)*x(41);

% Reaction: id = SUBUCHL1binding5Ub_UCHL1
	reaction_SUBUCHL1binding5Ub_UCHL1=global_par_kbinSUBUCHL1*x(57)*x(41);

% Reaction: id = SUBUCHL1binding6
	reaction_SUBUCHL1binding6=global_par_kbinSUBUCHL1*x(58)*x(41);

% Reaction: id = SUBUCHL1binding7
	reaction_SUBUCHL1binding7=global_par_kbinSUBUCHL1*x(59)*x(41);

% Reaction: id = SUBUCHL1binding8
	reaction_SUBUCHL1binding8=global_par_kbinSUBUCHL1*x(60)*x(41);

% Reaction: id = SUBDeubiquitination8
	reaction_SUBDeubiquitination8=global_par_kactUchl1*x(68);

% Reaction: id = SUBDeubiquitination7
	reaction_SUBDeubiquitination7=global_par_kactUchl1*x(67);

% Reaction: id = SUBDeubiquitination6
	reaction_SUBDeubiquitination6=global_par_kactUchl1*x(66);

% Reaction: id = SUBDeubiquitination5
	reaction_SUBDeubiquitination5=global_par_kactUchl1*x(65);

% Reaction: id = SUBDeubiquitination4
	reaction_SUBDeubiquitination4=global_par_kactUchl1*x(64);

% Reaction: id = SUBDeubiquitination3
	reaction_SUBDeubiquitination3=global_par_kactUchl1*x(63);

% Reaction: id = SUBDeubiquitination2
	reaction_SUBDeubiquitination2=global_par_kactUchl1*x(62);

% Reaction: id = SUBDeubiquitination1
	reaction_SUBDeubiquitination1=global_par_kactUchl1*x(61);

% Reaction: id = SUBProteasomeBindingUb4
	reaction_SUBProteasomeBindingUb4=global_par_kbinProt*x(56)*x(9);

% Reaction: id = SUBProteasomeBindingUb5
	reaction_SUBProteasomeBindingUb5=global_par_kbinProt*x(57)*x(9);

% Reaction: id = SUBProteasomeBindingUb6
	reaction_SUBProteasomeBindingUb6=global_par_kbinProt*x(58)*x(9);

% Reaction: id = SUBProteasomeBindingUb7
	reaction_SUBProteasomeBindingUb7=global_par_kbinProt*x(59)*x(9);

% Reaction: id = SUBProteasomeBindingUb8
	reaction_SUBProteasomeBindingUb8=global_par_kbinProt*x(60)*x(9);

% Reaction: id = DeubiquitinationBoundSUB8
	reaction_DeubiquitinationBoundSUB8=global_par_kactDUBProt*x(73)*x(8);

% Reaction: id = DeubiquitinationBoundSUB7
	reaction_DeubiquitinationBoundSUB7=global_par_kactDUBProt*x(72)*x(8);

% Reaction: id = DeubiquitinationBoundSUB6
	reaction_DeubiquitinationBoundSUB6=global_par_kactDUBProt*x(71)*x(8);

% Reaction: id = DeubiquitinationBoundSUB5
	reaction_DeubiquitinationBoundSUB5=global_par_kactDUBProt*x(70)*x(8);

% Reaction: id = DeubiquitinationBoundSUB4
	reaction_DeubiquitinationBoundSUB4=global_par_kactDUBProt*x(69)*x(8);

% Reaction: id = SUBDegradationUb4
	reaction_SUBDegradationUb4=global_par_kactProt*x(69)*global_par_kproteff*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = SUBDegradationUb5
	reaction_SUBDegradationUb5=global_par_kactProt*x(70)*global_par_kproteff*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = SUBDegradationUb6
	reaction_SUBDegradationUb6=global_par_kactProt*x(71)*global_par_kproteff*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = SUBDegradationUb7
	reaction_SUBDegradationUb7=global_par_kactProt*x(72)*global_par_kproteff*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = SUBDegradationUb8
	reaction_SUBDegradationUb8=global_par_kactProt*x(73)*global_par_kproteff*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = asynSynthesis1
	reaction_asynSynthesis1=global_par_ksynasyn*const_species_Source;

% Reaction: id = asynProt20Sbinding
	reaction_asynProt20Sbinding=global_par_kbinasynProt*x(74)*x(9);

% Reaction: id = asynProt20Sdegradation
	reaction_asynProt20Sdegradation=global_par_kdegasynProt*global_par_kproteff*x(75);

% Reaction: id = asynLamp2aBinding
	reaction_asynLamp2aBinding=global_par_kbinasynLamp2a*x(74)*x(46);

% Reaction: id = asynCMAdegradation
	reaction_asynCMAdegradation=global_par_kCMAasyn*x(76);

% Reaction: id = asynDamage
	reaction_asynDamage=global_par_kdamasyn*x(10)*x(74);

% Reaction: id = asyn_damParkinBinding
	reaction_asyn_damParkinBinding=global_par_kbinasynParkin*x(77)*x(78);

% Reaction: id = asyn_damParkinRelease
	reaction_asyn_damParkinRelease=global_par_krelasynParkin*x(79);

% Reaction: id = AsynMonoubiquitination
	reaction_AsynMonoubiquitination=global_par_kmonoUb*x(12)*x(79);

% Reaction: id = AsynPolyubiquitination1
	reaction_AsynPolyubiquitination1=global_par_kpolyUb*x(80)*x(12);

% Reaction: id = AsynPolyubiquitination2
	reaction_AsynPolyubiquitination2=global_par_kpolyUb*x(81)*x(12);

% Reaction: id = AsynPolyubiquitination3
	reaction_AsynPolyubiquitination3=global_par_kpolyUb*x(82)*x(12);

% Reaction: id = AsynPolyubiquitination4
	reaction_AsynPolyubiquitination4=global_par_kpolyUb*x(83)*x(12);

% Reaction: id = AsynPolyubiquitination5
	reaction_AsynPolyubiquitination5=global_par_kpolyUb*x(84)*x(12);

% Reaction: id = AsynPolyubiquitination6
	reaction_AsynPolyubiquitination6=global_par_kpolyUb*x(85)*x(12);

% Reaction: id = AsynPolyubiquitination7
	reaction_AsynPolyubiquitination7=global_par_kpolyUb*x(86)*x(12);

% Reaction: id = AsynDUBbindingUb8
	reaction_AsynDUBbindingUb8=global_par_kbinasynDUB*x(87)*x(8);

% Reaction: id = AsynDUBbindingUb7
	reaction_AsynDUBbindingUb7=global_par_kbinasynDUB*x(86)*x(8);

% Reaction: id = AsynDUBbindingUb6
	reaction_AsynDUBbindingUb6=global_par_kbinasynDUB*x(85)*x(8);

% Reaction: id = AsynDUBbindingUb5
	reaction_AsynDUBbindingUb5=global_par_kbinasynDUB*x(84)*x(8);

% Reaction: id = AsynDUBbindingUb4
	reaction_AsynDUBbindingUb4=global_par_kbinasynDUB*x(83)*x(8);

% Reaction: id = AsynDUBbindingUb3
	reaction_AsynDUBbindingUb3=global_par_kbinasynDUB*x(82)*x(8);

% Reaction: id = AsynDUBbindingUb2
	reaction_AsynDUBbindingUb2=global_par_kbinasynDUB*x(81)*x(8);

% Reaction: id = AsynDUBbindingUb1
	reaction_AsynDUBbindingUb1=global_par_kbinasynDUB*x(80)*x(8);

% Reaction: id = AsynDeubiquitinationUb8
	reaction_AsynDeubiquitinationUb8=global_par_kactDUB*x(95);

% Reaction: id = AsynDeubiquitinationUb7
	reaction_AsynDeubiquitinationUb7=global_par_kactDUB*x(94);

% Reaction: id = AsynDeubiquitinationUb6
	reaction_AsynDeubiquitinationUb6=global_par_kactDUB*x(93);

% Reaction: id = AsynDeubiquitinationUb5
	reaction_AsynDeubiquitinationUb5=global_par_kactDUB*x(92);

% Reaction: id = AsynDeubiquitinationUb4
	reaction_AsynDeubiquitinationUb4=global_par_kactDUB*x(91);

% Reaction: id = AsynDeubiquitinationUb3
	reaction_AsynDeubiquitinationUb3=global_par_kactDUB*x(90);

% Reaction: id = AsynDeubiquitinationUb2
	reaction_AsynDeubiquitinationUb2=global_par_kactDUB*x(89);

% Reaction: id = AsynDeubiquitinationUb1
	reaction_AsynDeubiquitinationUb1=global_par_kactDUB*x(88);

% Reaction: id = AsynProteasomeBindingUb4
	reaction_AsynProteasomeBindingUb4=global_par_kbinProt*x(83)*x(9);

% Reaction: id = AsynProteasomeBindingUb5
	reaction_AsynProteasomeBindingUb5=global_par_kbinProt*x(84)*x(9);

% Reaction: id = AsynProteasomeBindingUb6
	reaction_AsynProteasomeBindingUb6=global_par_kbinProt*x(85)*x(9);

% Reaction: id = AsynProteasomeBindingUb7
	reaction_AsynProteasomeBindingUb7=global_par_kbinProt*x(86)*x(9);

% Reaction: id = AsynProteasomeBindingUb8
	reaction_AsynProteasomeBindingUb8=global_par_kbinProt*x(87)*x(9);

% Reaction: id = DeubiquitinationBoundasyn_damUb8
	reaction_DeubiquitinationBoundasyn_damUb8=global_par_kactDUBProt*x(100)*x(8);

% Reaction: id = DeubiquitinationBoundasynDamUb7
	reaction_DeubiquitinationBoundasynDamUb7=global_par_kactDUBProt*x(99)*x(8);

% Reaction: id = DeubiquitinationBoundasynDamUb6
	reaction_DeubiquitinationBoundasynDamUb6=global_par_kactDUBProt*x(98)*x(8);

% Reaction: id = DeubiquitinationBoundasynDamUb5
	reaction_DeubiquitinationBoundasynDamUb5=global_par_kactDUBProt*x(97)*x(8);

% Reaction: id = DeubiquitinationBoundasynDamUb4
	reaction_DeubiquitinationBoundasynDamUb4=global_par_kactDUBProt*x(96)*x(8);

% Reaction: id = AsynProteasomeActivityUb4
	reaction_AsynProteasomeActivityUb4=global_par_kactProt*global_par_kproteff*x(96)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = AsynDegradationUb5
	reaction_AsynDegradationUb5=global_par_kactProt*global_par_kproteff*x(97)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = AsynDegradationUb6
	reaction_AsynDegradationUb6=global_par_kactProt*global_par_kproteff*x(98)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = AsynDegradationUb7
	reaction_AsynDegradationUb7=global_par_kactProt*global_par_kproteff*x(99)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = AsynDegradationUb8
	reaction_AsynDegradationUb8=global_par_kactProt*global_par_kproteff*x(100)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = Aggregationasyn1
	reaction_Aggregationasyn1=global_par_kaggasyn1*x(74)*(x(74)-1)*0.5;

% Reaction: id = Aggregationasyn2
	reaction_Aggregationasyn2=global_par_kaggasyn2*x(74)*x(101);

% Reaction: id = Aggregationasyn3
	reaction_Aggregationasyn3=global_par_kaggasyn2*x(74)*x(102);

% Reaction: id = Aggregationasyn4
	reaction_Aggregationasyn4=global_par_kaggasyn2*x(74)*x(103);

% Reaction: id = Aggregationasyn5
	reaction_Aggregationasyn5=global_par_kaggasyn2*x(74)*x(104);

% Reaction: id = DisAggregationasyn1
	reaction_DisAggregationasyn1=global_par_kdisaggasyn5*x(105);

% Reaction: id = DisAggregationasyn2
	reaction_DisAggregationasyn2=global_par_kdisaggasyn4*x(104);

% Reaction: id = DisAggregationasyn3
	reaction_DisAggregationasyn3=global_par_kdisaggasyn3*x(103);

% Reaction: id = DisAggregationasyn4
	reaction_DisAggregationasyn4=global_par_kdisaggasyn2*x(102);

% Reaction: id = DisAggregationasyn5
	reaction_DisAggregationasyn5=global_par_kdisaggasyn1*x(101);

% Reaction: id = AggA1ProteasomeInhibition
	reaction_AggA1ProteasomeInhibition=global_par_kbinAggProt*x(101)*x(9);

% Reaction: id = AggA2ProteasomeInhibition
	reaction_AggA2ProteasomeInhibition=global_par_kbinAggProt*x(102)*x(9);

% Reaction: id = AggA3ProteasomeInhibition
	reaction_AggA3ProteasomeInhibition=global_par_kbinAggProt*x(103)*x(9);

% Reaction: id = AggA4ProteasomeInhibition
	reaction_AggA4ProteasomeInhibition=global_par_kbinAggProt*x(104)*x(9);

% Reaction: id = AggA5ProteasomeInhibition
	reaction_AggA5ProteasomeInhibition=global_par_kbinAggProt*x(105)*x(9);

% Reaction: id = AsynInclusionFormation
	reaction_AsynInclusionFormation=global_par_kaggasyn2*x(74)*x(105);

% Reaction: id = AsynInclusionGrowth
	reaction_AsynInclusionGrowth=global_par_kigrowth1*x(39)*x(74);

% Reaction: id = ROSgenerationSmallAggA1
	reaction_ROSgenerationSmallAggA1=global_par_kgenROSAggP*x(101);

% Reaction: id = ROSgenerationSmallAggA2
	reaction_ROSgenerationSmallAggA2=global_par_kgenROSAggP*x(102);

% Reaction: id = ROSgenerationSmallAggA3
	reaction_ROSgenerationSmallAggA3=global_par_kgenROSAggP*x(103);

% Reaction: id = ROSgenerationSmallAggA4
	reaction_ROSgenerationSmallAggA4=global_par_kgenROSAggP*x(104);

% Reaction: id = ROSgenerationSmallAggA5
	reaction_ROSgenerationSmallAggA5=global_par_kgenROSAggP*x(105);

% Reaction: id = AggregationAsynDam1
	reaction_AggregationAsynDam1=global_par_kagg1dam*x(77)*(x(77)-1)*0.5;

% Reaction: id = AggregationAsynDam2
	reaction_AggregationAsynDam2=global_par_kagg2dam*x(77)*x(106);

% Reaction: id = AggregationAsynDam3
	reaction_AggregationAsynDam3=global_par_kagg2dam*x(77)*x(107);

% Reaction: id = AggregationAsynDam4
	reaction_AggregationAsynDam4=global_par_kagg2dam*x(77)*x(108);

% Reaction: id = AggregationAsynDam5
	reaction_AggregationAsynDam5=global_par_kagg2dam*x(77)*x(109);

% Reaction: id = DisaggregationAsynDam1
	reaction_DisaggregationAsynDam1=global_par_kdisaggasyndam5*x(110);

% Reaction: id = DisaggregationAsynDam2
	reaction_DisaggregationAsynDam2=global_par_kdisaggasyndam4*x(109);

% Reaction: id = DisaggregationAsynDam3
	reaction_DisaggregationAsynDam3=global_par_kdisaggasyndam3*x(108);

% Reaction: id = DisaggregationAsynDam4
	reaction_DisaggregationAsynDam4=global_par_kdisaggasyndam2*x(107);

% Reaction: id = DisaggregationAsynDam5
	reaction_DisaggregationAsynDam5=global_par_kdisaggasyndam1*x(106);

% Reaction: id = AggD1ProteasomeInhibition
	reaction_AggD1ProteasomeInhibition=global_par_kbinAggProt*x(106)*x(9);

% Reaction: id = AggD2ProteasomeInhibition
	reaction_AggD2ProteasomeInhibition=global_par_kbinAggProt*x(107)*x(9);

% Reaction: id = AggD3ProteasomeInhibition
	reaction_AggD3ProteasomeInhibition=global_par_kbinAggProt*x(108)*x(9);

% Reaction: id = AggD4ProteasomeInhibition
	reaction_AggD4ProteasomeInhibition=global_par_kbinAggProt*x(109)*x(9);

% Reaction: id = AggD5ProteasomeInhibition
	reaction_AggD5ProteasomeInhibition=global_par_kbinAggProt*x(110)*x(9);

% Reaction: id = AsynDamInclusionFormation
	reaction_AsynDamInclusionFormation=global_par_kagg2dam*x(77)*x(110);

% Reaction: id = AsynDamInclusionGrowth1
	reaction_AsynDamInclusionGrowth1=global_par_kigrowth1*x(39)*x(77);

% Reaction: id = AsynDamInclusionGrowth2
	reaction_AsynDamInclusionGrowth2=global_par_kigrowth2*x(39)*x(79);

% Reaction: id = AsynDamInclusionGrowth3
	reaction_AsynDamInclusionGrowth3=global_par_kigrowth2*x(39)*x(80);

% Reaction: id = AsynDamInclusionGrowth4
	reaction_AsynDamInclusionGrowth4=global_par_kigrowth2*x(39)*x(81);

% Reaction: id = AsynDamInclusionGrowth5
	reaction_AsynDamInclusionGrowth5=global_par_kigrowth2*x(39)*x(82);

% Reaction: id = AsynDamInclusionGrowth6
	reaction_AsynDamInclusionGrowth6=global_par_kigrowth2*x(39)*x(83);

% Reaction: id = AsynDamInclusionGrowth7
	reaction_AsynDamInclusionGrowth7=global_par_kigrowth2*x(39)*x(84);

% Reaction: id = AsynDamInclusionGrowth8
	reaction_AsynDamInclusionGrowth8=global_par_kigrowth2*x(39)*x(85);

% Reaction: id = AsynDamInclusionGrowth9
	reaction_AsynDamInclusionGrowth9=global_par_kigrowth2*x(39)*x(86);

% Reaction: id = AsynDamInclusionGrowth10
	reaction_AsynDamInclusionGrowth10=global_par_kigrowth2*x(39)*x(87);

% Reaction: id = AsynDamInclusionGrowth11
	reaction_AsynDamInclusionGrowth11=global_par_kigrowth2*x(39)*x(88);

% Reaction: id = AsynDamInclusionGrowth12
	reaction_AsynDamInclusionGrowth12=global_par_kigrowth2*x(39)*x(89);

% Reaction: id = AsynDamInclusionGrowth13
	reaction_AsynDamInclusionGrowth13=global_par_kigrowth2*x(39)*x(90);

% Reaction: id = AsynDamInclusionGrowth14
	reaction_AsynDamInclusionGrowth14=global_par_kigrowth2*x(39)*x(91);

% Reaction: id = AsynDamInclusionGrowth15
	reaction_AsynDamInclusionGrowth15=global_par_kigrowth2*x(39)*x(92);

% Reaction: id = AsynDamInclusionGrowth16
	reaction_AsynDamInclusionGrowth16=global_par_kigrowth2*x(39)*x(93);

% Reaction: id = AsynDamInclusionGrowth17
	reaction_AsynDamInclusionGrowth17=global_par_kigrowth2*x(39)*x(94);

% Reaction: id = AsynDamInclusionGrowth18
	reaction_AsynDamInclusionGrowth18=global_par_kigrowth2*x(39)*x(95);

% Reaction: id = ROSgenerationSmallAggD1
	reaction_ROSgenerationSmallAggD1=global_par_kgenROSAggP*x(106);

% Reaction: id = ROSgenerationSmallAggD2
	reaction_ROSgenerationSmallAggD2=global_par_kgenROSAggP*x(107);

% Reaction: id = ROSgenerationSmallAggD3
	reaction_ROSgenerationSmallAggD3=global_par_kgenROSAggP*x(108);

% Reaction: id = ROSgenerationSmallAggD4
	reaction_ROSgenerationSmallAggD4=global_par_kgenROSAggP*x(109);

% Reaction: id = ROSgenerationSmallAggD5
	reaction_ROSgenerationSmallAggD5=global_par_kgenROSAggP*x(110);

% Reaction: id = AggregationUCHL1Dam1
	reaction_AggregationUCHL1Dam1=global_par_kagg1dam*x(45)*(x(45)-1)*0.5;

% Reaction: id = AggregationUCHL1Dam2
	reaction_AggregationUCHL1Dam2=global_par_kagg2dam*x(45)*x(111);

% Reaction: id = AggregationUCHL1Dam3
	reaction_AggregationUCHL1Dam3=global_par_kagg2dam*x(45)*x(112);

% Reaction: id = AggregationUCHL1Dam4
	reaction_AggregationUCHL1Dam4=global_par_kagg2dam*x(45)*x(113);

% Reaction: id = AggregationUCHL1Dam5
	reaction_AggregationUCHL1Dam5=global_par_kagg2dam*x(45)*x(114);

% Reaction: id = DisaggregationUCHL1Dam1
	reaction_DisaggregationUCHL1Dam1=global_par_kdisagguchl1dam5*x(115);

% Reaction: id = DisaggregationUCHL1Dam2
	reaction_DisaggregationUCHL1Dam2=global_par_kdisagguchl1dam4*x(114);

% Reaction: id = DisaggregationUCHL1Dam3
	reaction_DisaggregationUCHL1Dam3=global_par_kdisagguchl1dam3*x(113);

% Reaction: id = DisaggregationUCHL1Dam4
	reaction_DisaggregationUCHL1Dam4=global_par_kdisagguchl1dam2*x(112);

% Reaction: id = DisaggregationUCHL1Dam5
	reaction_DisaggregationUCHL1Dam5=global_par_kdisagguchl1dam1*x(111);

% Reaction: id = AggU1ProteasomeInhibition
	reaction_AggU1ProteasomeInhibition=global_par_kbinAggProt*x(111)*x(9);

% Reaction: id = AggU2ProteasomeInhibition
	reaction_AggU2ProteasomeInhibition=global_par_kbinAggProt*x(112)*x(9);

% Reaction: id = AggU3ProteasomeInhibition
	reaction_AggU3ProteasomeInhibition=global_par_kbinAggProt*x(113)*x(9);

% Reaction: id = AggU4ProteasomeInhibition
	reaction_AggU4ProteasomeInhibition=global_par_kbinAggProt*x(114)*x(9);

% Reaction: id = AggU5ProteasomeInhibition
	reaction_AggU5ProteasomeInhibition=global_par_kbinAggProt*x(115)*x(9);

% Reaction: id = UCHL1DamInclusionFormation
	reaction_UCHL1DamInclusionFormation=global_par_kagg2dam*x(45)*x(115);

% Reaction: id = UCHL1DamagedSequestering
	reaction_UCHL1DamagedSequestering=global_par_kigrowth1*x(39)*x(45);

% Reaction: id = UCHL1DamagedLamp2aSequestering
	reaction_UCHL1DamagedLamp2aSequestering=global_par_kigrowth1*x(39)*x(47);

% Reaction: id = ROSgenerationSmallAggU1
	reaction_ROSgenerationSmallAggU1=global_par_kgenROSAggP*x(111);

% Reaction: id = ROSgenerationSmallAggU2
	reaction_ROSgenerationSmallAggU2=global_par_kgenROSAggP*x(112);

% Reaction: id = ROSgenerationSmallAggU3
	reaction_ROSgenerationSmallAggU3=global_par_kgenROSAggP*x(113);

% Reaction: id = ROSgenerationSmallAggU4
	reaction_ROSgenerationSmallAggU4=global_par_kgenROSAggP*x(114);

% Reaction: id = ROSgenerationSmallAggU5
	reaction_ROSgenerationSmallAggU5=global_par_kgenROSAggP*x(115);

% Reaction: id = SUBAggregation1
	reaction_SUBAggregation1=global_par_kaggSUB1*x(50)*(x(50)-1)*0.5;

% Reaction: id = SUBAggregation2
	reaction_SUBAggregation2=global_par_kaggSUB2*x(50)*x(116);

% Reaction: id = SUBAggregation3
	reaction_SUBAggregation3=global_par_kaggSUB2*x(50)*x(117);

% Reaction: id = SUBAggregation4
	reaction_SUBAggregation4=global_par_kaggSUB2*x(50)*x(118);

% Reaction: id = SUBAggregation5
	reaction_SUBAggregation5=global_par_kaggSUB2*x(50)*x(119);

% Reaction: id = SUBDisaggregation1
	reaction_SUBDisaggregation1=global_par_kdisaggSUB5*x(120);

% Reaction: id = SUBDisaggregation2
	reaction_SUBDisaggregation2=global_par_kdisaggSUB4*x(119);

% Reaction: id = SUBDisaggregation3
	reaction_SUBDisaggregation3=global_par_kdisaggSUB3*x(118);

% Reaction: id = SUBDisaggregation4
	reaction_SUBDisaggregation4=global_par_kdisaggSUB2*x(117);

% Reaction: id = SUBDisaggregation5
	reaction_SUBDisaggregation5=global_par_kdisaggSUB1*x(116);

% Reaction: id = AggS1ProteasomeInhibition
	reaction_AggS1ProteasomeInhibition=global_par_kbinAggProt*x(116)*x(9);

% Reaction: id = AggS2ProteasomeInhibition
	reaction_AggS2ProteasomeInhibition=global_par_kbinAggProt*x(117)*x(9);

% Reaction: id = AggS3ProteasomeInhibition
	reaction_AggS3ProteasomeInhibition=global_par_kbinAggProt*x(118)*x(9);

% Reaction: id = AggS4ProteasomeInhibition
	reaction_AggS4ProteasomeInhibition=global_par_kbinAggProt*x(119)*x(9);

% Reaction: id = AggS5ProteasomeInhibition
	reaction_AggS5ProteasomeInhibition=global_par_kbinAggProt*x(120)*x(9);

% Reaction: id = SUBInclusionFormation
	reaction_SUBInclusionFormation=global_par_kaggSUB2*x(120)*x(50);

% Reaction: id = SUBInclusionGrowth0
	reaction_SUBInclusionGrowth0=global_par_kigrowth1*x(39)*x(50);

% Reaction: id = SUBInclusionGrowth1
	reaction_SUBInclusionGrowth1=global_par_kigrowth2*x(52)*x(39);

% Reaction: id = SUBInclusionGrowth2
	reaction_SUBInclusionGrowth2=global_par_kigrowth2*x(53)*x(39);

% Reaction: id = SUBInclusionGrowth3
	reaction_SUBInclusionGrowth3=global_par_kigrowth2*x(54)*x(39);

% Reaction: id = SUBInclusionGrowth4
	reaction_SUBInclusionGrowth4=global_par_kigrowth2*x(55)*x(39);

% Reaction: id = SUBInclusionGrowth5
	reaction_SUBInclusionGrowth5=global_par_kigrowth2*x(56)*x(39);

% Reaction: id = SUBInclusionGrowth6
	reaction_SUBInclusionGrowth6=global_par_kigrowth2*x(57)*x(39);

% Reaction: id = SUBInclusionGrowth7
	reaction_SUBInclusionGrowth7=global_par_kigrowth2*x(58)*x(39);

% Reaction: id = SUBInclusionGrowth8
	reaction_SUBInclusionGrowth8=global_par_kigrowth2*x(59)*x(39);

% Reaction: id = SUBInclusionGrowth9
	reaction_SUBInclusionGrowth9=global_par_kigrowth2*x(60)*x(39);

% Reaction: id = SUBInclusionGrowth10
	reaction_SUBInclusionGrowth10=global_par_kigrowth2*x(61)*x(39);

% Reaction: id = SUBInclusionGrowth11
	reaction_SUBInclusionGrowth11=global_par_kigrowth2*x(62)*x(39);

% Reaction: id = SUBInclusionGrowth12
	reaction_SUBInclusionGrowth12=global_par_kigrowth2*x(63)*x(39);

% Reaction: id = SUBInclusionGrowth13
	reaction_SUBInclusionGrowth13=global_par_kigrowth2*x(64)*x(39);

% Reaction: id = SUBInclusionGrowth14
	reaction_SUBInclusionGrowth14=global_par_kigrowth2*x(65)*x(39);

% Reaction: id = SUBInclusionGrowth15
	reaction_SUBInclusionGrowth15=global_par_kigrowth2*x(66)*x(39);

% Reaction: id = SUBInclusionGrowth16
	reaction_SUBInclusionGrowth16=global_par_kigrowth2*x(67)*x(39);

% Reaction: id = SUBInclusionGrowth17
	reaction_SUBInclusionGrowth17=global_par_kigrowth2*x(68)*x(39);

% Reaction: id = ROSgenerationSmallAggS1
	reaction_ROSgenerationSmallAggS1=global_par_kgenROSAggP*x(116);

% Reaction: id = ROSgenerationSmallAggS2
	reaction_ROSgenerationSmallAggS2=global_par_kgenROSAggP*x(117);

% Reaction: id = ROSgenerationSmallAggS3
	reaction_ROSgenerationSmallAggS3=global_par_kgenROSAggP*x(118);

% Reaction: id = ROSgenerationSmallAggS4
	reaction_ROSgenerationSmallAggS4=global_par_kgenROSAggP*x(119);

% Reaction: id = ROSgenerationSmallAggS5
	reaction_ROSgenerationSmallAggS5=global_par_kgenROSAggP*x(120);

% Reaction: id = radicalFormation, name = radicalFormation
	reaction_radicalFormation=global_par_kgenROS*const_species_Source;

% Reaction: id = radicalScavenging, name = radicalScavenging
	reaction_radicalScavenging=global_par_kremROS*x(10);

% Species:   id = ATP, name = ATP, constant	const_species_ATP=10000.0;

% Species:   id = ADP, name = ADP, constant	const_species_ADP=1000.0;

% Species:   id = AMP, name = AMP, constant	const_species_AMP=1000.0;

% Species:   id = Source, name = Source, constant	const_species_Source=1.0;

% Species:   id = Sink, name = Sink, constant	const_species_Sink=1.0;

	xdot=zeros(131,1);
	
% Species:   id = NatP, name = NatP, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_ProteinSynthesis) + (-1.0 * reaction_Misfolding) + ( 1.0 * reaction_Refolding);
	
% Species:   id = MisP, name = MisP, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_UbUpregulation) + ( 1.0 * reaction_UbUpregulation) + ( 1.0 * reaction_Misfolding) + (-1.0 * reaction_Refolding) + (-1.0 * reaction_MisPE3Binding) + ( 1.0 * reaction_MisPE3Release) + ( 1.0 * reaction_DeubiquitinationBoundMisP1) + (-2.0 * reaction_Aggregation1) + (-1.0 * reaction_Aggregation2) + (-1.0 * reaction_Aggregation3) + (-1.0 * reaction_Aggregation4) + (-1.0 * reaction_Aggregation5) + ( 1.0 * reaction_Disaggregation1) + ( 1.0 * reaction_Disaggregation2) + ( 1.0 * reaction_Disaggregation3) + ( 1.0 * reaction_Disaggregation4) + ( 2.0 * reaction_Disaggregation5) + (-1.0 * reaction_InclusionFormation) + (-1.0 * reaction_InclusionGrowth1);
	
% Species:   id = Ub, name = Ub, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_UbSynthesis) + (-1.0 * reaction_UbDegradation) + ( 3.0 * reaction_UbUpregulation) + (-1.0 * reaction_E1UbBinding) + ( 1.0 * reaction_Deubiquitination8) + ( 1.0 * reaction_Deubiquitination7) + ( 1.0 * reaction_Deubiquitination6) + ( 1.0 * reaction_Deubiquitination5) + ( 1.0 * reaction_Deubiquitination4) + ( 1.0 * reaction_Deubiquitination3) + ( 1.0 * reaction_Deubiquitination2) + ( 1.0 * reaction_Deubiquitination1) + ( 1.0 * reaction_DeubiquitinationBoundMisP5) + ( 1.0 * reaction_DeubiquitinationBoundMisP4) + ( 1.0 * reaction_DeubiquitinationBoundMisP3) + ( 1.0 * reaction_DeubiquitinationBoundMisP2) + ( 4.0 * reaction_DeubiquitinationBoundMisP1) + ( 4.0 * reaction_ProteasomeActivity1) + ( 5.0 * reaction_ProteasomeActivity2) + ( 6.0 * reaction_ProteasomeActivity3) + ( 7.0 * reaction_ProteasomeActivity4) + ( 8.0 * reaction_ProteasomeActivity5) + (-1.0 * reaction_UbUCHL1binding) + ( 1.0 * reaction_UbUCHL1release) + ( 1.0 * reaction_SUBDeubiquitination8) + ( 1.0 * reaction_SUBDeubiquitination7) + ( 1.0 * reaction_SUBDeubiquitination6) + ( 1.0 * reaction_SUBDeubiquitination5) + ( 1.0 * reaction_SUBDeubiquitination4) + ( 1.0 * reaction_SUBDeubiquitination3) + ( 1.0 * reaction_SUBDeubiquitination2) + ( 1.0 * reaction_SUBDeubiquitination1) + ( 1.0 * reaction_DeubiquitinationBoundSUB8) + ( 1.0 * reaction_DeubiquitinationBoundSUB7) + ( 1.0 * reaction_DeubiquitinationBoundSUB6) + ( 1.0 * reaction_DeubiquitinationBoundSUB5) + ( 4.0 * reaction_DeubiquitinationBoundSUB4) + ( 4.0 * reaction_SUBDegradationUb4) + ( 5.0 * reaction_SUBDegradationUb5) + ( 6.0 * reaction_SUBDegradationUb6) + ( 7.0 * reaction_SUBDegradationUb7) + ( 8.0 * reaction_SUBDegradationUb8) + ( 1.0 * reaction_AsynDeubiquitinationUb8) + ( 1.0 * reaction_AsynDeubiquitinationUb7) + ( 1.0 * reaction_AsynDeubiquitinationUb6) + ( 1.0 * reaction_AsynDeubiquitinationUb5) + ( 1.0 * reaction_AsynDeubiquitinationUb4) + ( 1.0 * reaction_AsynDeubiquitinationUb3) + ( 1.0 * reaction_AsynDeubiquitinationUb2) + ( 1.0 * reaction_AsynDeubiquitinationUb1) + ( 1.0 * reaction_DeubiquitinationBoundasyn_damUb8) + ( 1.0 * reaction_DeubiquitinationBoundasynDamUb7) + ( 1.0 * reaction_DeubiquitinationBoundasynDamUb6) + ( 1.0 * reaction_DeubiquitinationBoundasynDamUb5) + ( 4.0 * reaction_DeubiquitinationBoundasynDamUb4) + ( 4.0 * reaction_AsynProteasomeActivityUb4) + ( 5.0 * reaction_AsynDegradationUb5) + ( 6.0 * reaction_AsynDegradationUb6) + ( 7.0 * reaction_AsynDegradationUb7) + ( 8.0 * reaction_AsynDegradationUb8);
	
% Species:   id = E1, name = E1, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_E1UbBinding) + ( 1.0 * reaction_E2UbBinding);
	
% Species:   id = E2, name = E2, affected by kineticLaw
	xdot(5) = (-1.0 * reaction_E2UbBinding) + ( 1.0 * reaction_Monoubiquitination) + ( 1.0 * reaction_Polyubiquitination1) + ( 1.0 * reaction_Polyubiquitination2) + ( 1.0 * reaction_Polyubiquitination3) + ( 1.0 * reaction_Polyubiquitination4) + ( 1.0 * reaction_Polyubiquitination5) + ( 1.0 * reaction_Polyubiquitination6) + ( 1.0 * reaction_Polyubiquitination7) + ( 1.0 * reaction_SUBMonoubiquitination) + ( 1.0 * reaction_SUBPolyubiquitination1) + ( 1.0 * reaction_SUBPolyubiquitination2) + ( 1.0 * reaction_SUBPolyubiquitination3) + ( 1.0 * reaction_SUBPolyubiquitination4) + ( 1.0 * reaction_SUBPolyubiquitination5) + ( 1.0 * reaction_SUBPolyubiquitination6) + ( 1.0 * reaction_SUBPolyubiquitination7) + ( 1.0 * reaction_AsynMonoubiquitination) + ( 1.0 * reaction_AsynPolyubiquitination1) + ( 1.0 * reaction_AsynPolyubiquitination2) + ( 1.0 * reaction_AsynPolyubiquitination3) + ( 1.0 * reaction_AsynPolyubiquitination4) + ( 1.0 * reaction_AsynPolyubiquitination5) + ( 1.0 * reaction_AsynPolyubiquitination6) + ( 1.0 * reaction_AsynPolyubiquitination7);
	
% Species:   id = E3, name = E3, affected by kineticLaw
	xdot(6) = (-1.0 * reaction_MisPE3Binding) + ( 1.0 * reaction_MisPE3Release) + ( 1.0 * reaction_ProteasomeBindingUb4) + ( 1.0 * reaction_ProteasomeBindingUb5) + ( 1.0 * reaction_ProteasomeBindingUb6) + ( 1.0 * reaction_ProteasomeBindingUb7) + ( 1.0 * reaction_ProteasomeBindingUb8);
	
% Species:   id = E3_MisP, name = E3_MisP, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_MisPE3Binding) + (-1.0 * reaction_MisPE3Release) + (-1.0 * reaction_Monoubiquitination) + ( 1.0 * reaction_Deubiquitination1) + (-1.0 * reaction_InclusionGrowth2);
	
% Species:   id = DUB, name = DUB, affected by kineticLaw
	xdot(8) = (-1.0 * reaction_MisPDUBbinding1) + (-1.0 * reaction_MisPDUBbinding2) + (-1.0 * reaction_MisPDUBbinding3) + (-1.0 * reaction_MisPDUBbinding4) + (-1.0 * reaction_MisPDUBbinding5) + (-1.0 * reaction_MisPDUBbinding6) + (-1.0 * reaction_MisPDUBbinding7) + (-1.0 * reaction_MisPDUBbinding8) + ( 1.0 * reaction_Deubiquitination1) + (-1.0 * reaction_DeubiquitinationBoundMisP5) + ( 1.0 * reaction_DeubiquitinationBoundMisP5) + (-1.0 * reaction_DeubiquitinationBoundMisP4) + ( 1.0 * reaction_DeubiquitinationBoundMisP4) + (-1.0 * reaction_DeubiquitinationBoundMisP3) + ( 1.0 * reaction_DeubiquitinationBoundMisP3) + (-1.0 * reaction_DeubiquitinationBoundMisP2) + ( 1.0 * reaction_DeubiquitinationBoundMisP2) + (-1.0 * reaction_DeubiquitinationBoundMisP1) + ( 1.0 * reaction_DeubiquitinationBoundMisP1) + (-1.0 * reaction_DeubiquitinationBoundSUB8) + ( 1.0 * reaction_DeubiquitinationBoundSUB8) + (-1.0 * reaction_DeubiquitinationBoundSUB7) + ( 1.0 * reaction_DeubiquitinationBoundSUB7) + (-1.0 * reaction_DeubiquitinationBoundSUB6) + ( 1.0 * reaction_DeubiquitinationBoundSUB6) + (-1.0 * reaction_DeubiquitinationBoundSUB5) + ( 1.0 * reaction_DeubiquitinationBoundSUB5) + (-1.0 * reaction_DeubiquitinationBoundSUB4) + ( 1.0 * reaction_DeubiquitinationBoundSUB4) + (-1.0 * reaction_AsynDUBbindingUb8) + (-1.0 * reaction_AsynDUBbindingUb7) + (-1.0 * reaction_AsynDUBbindingUb6) + (-1.0 * reaction_AsynDUBbindingUb5) + (-1.0 * reaction_AsynDUBbindingUb4) + (-1.0 * reaction_AsynDUBbindingUb3) + (-1.0 * reaction_AsynDUBbindingUb2) + (-1.0 * reaction_AsynDUBbindingUb1) + ( 1.0 * reaction_AsynDeubiquitinationUb1) + (-1.0 * reaction_DeubiquitinationBoundasyn_damUb8) + ( 1.0 * reaction_DeubiquitinationBoundasyn_damUb8) + (-1.0 * reaction_DeubiquitinationBoundasynDamUb7) + ( 1.0 * reaction_DeubiquitinationBoundasynDamUb7) + (-1.0 * reaction_DeubiquitinationBoundasynDamUb6) + ( 1.0 * reaction_DeubiquitinationBoundasynDamUb6) + (-1.0 * reaction_DeubiquitinationBoundasynDamUb5) + ( 1.0 * reaction_DeubiquitinationBoundasynDamUb5) + (-1.0 * reaction_DeubiquitinationBoundasynDamUb4) + ( 1.0 * reaction_DeubiquitinationBoundasynDamUb4);
	
% Species:   id = Proteasome, name = Proteasome, affected by kineticLaw
	xdot(9) = (-1.0 * reaction_UbDegradation) + ( 1.0 * reaction_UbDegradation) + (-1.0 * reaction_ProteasomeBindingUb4) + (-1.0 * reaction_ProteasomeBindingUb5) + (-1.0 * reaction_ProteasomeBindingUb6) + (-1.0 * reaction_ProteasomeBindingUb7) + (-1.0 * reaction_ProteasomeBindingUb8) + ( 1.0 * reaction_DeubiquitinationBoundMisP1) + ( 1.0 * reaction_ProteasomeActivity1) + ( 1.0 * reaction_ProteasomeActivity2) + ( 1.0 * reaction_ProteasomeActivity3) + ( 1.0 * reaction_ProteasomeActivity4) + ( 1.0 * reaction_ProteasomeActivity5) + (-1.0 * reaction_ProteasomeInhibition1) + (-1.0 * reaction_ProteasomeInhibition2) + (-1.0 * reaction_ProteasomeInhibition3) + (-1.0 * reaction_ProteasomeInhibition4) + (-1.0 * reaction_ProteasomeInhibition5) + (-1.0 * reaction_UCHL1ProteasomeBinding) + ( 1.0 * reaction_UCHL1ProteasomeDegradation) + (-1.0 * reaction_UCHL1DamgedProteasomeBinding) + ( 1.0 * reaction_UCHL1DamagedProteasomeDegradation) + (-1.0 * reaction_SUBProteasomeBindingUb4) + (-1.0 * reaction_SUBProteasomeBindingUb5) + (-1.0 * reaction_SUBProteasomeBindingUb6) + (-1.0 * reaction_SUBProteasomeBindingUb7) + (-1.0 * reaction_SUBProteasomeBindingUb8) + ( 1.0 * reaction_DeubiquitinationBoundSUB4) + ( 1.0 * reaction_SUBDegradationUb4) + ( 1.0 * reaction_SUBDegradationUb5) + ( 1.0 * reaction_SUBDegradationUb6) + ( 1.0 * reaction_SUBDegradationUb7) + ( 1.0 * reaction_SUBDegradationUb8) + (-1.0 * reaction_asynProt20Sbinding) + ( 1.0 * reaction_asynProt20Sdegradation) + (-1.0 * reaction_AsynProteasomeBindingUb4) + (-1.0 * reaction_AsynProteasomeBindingUb5) + (-1.0 * reaction_AsynProteasomeBindingUb6) + (-1.0 * reaction_AsynProteasomeBindingUb7) + (-1.0 * reaction_AsynProteasomeBindingUb8) + ( 1.0 * reaction_DeubiquitinationBoundasynDamUb4) + ( 1.0 * reaction_AsynProteasomeActivityUb4) + ( 1.0 * reaction_AsynDegradationUb5) + ( 1.0 * reaction_AsynDegradationUb6) + ( 1.0 * reaction_AsynDegradationUb7) + ( 1.0 * reaction_AsynDegradationUb8) + (-1.0 * reaction_AggA1ProteasomeInhibition) + (-1.0 * reaction_AggA2ProteasomeInhibition) + (-1.0 * reaction_AggA3ProteasomeInhibition) + (-1.0 * reaction_AggA4ProteasomeInhibition) + (-1.0 * reaction_AggA5ProteasomeInhibition) + (-1.0 * reaction_AggD1ProteasomeInhibition) + (-1.0 * reaction_AggD2ProteasomeInhibition) + (-1.0 * reaction_AggD3ProteasomeInhibition) + (-1.0 * reaction_AggD4ProteasomeInhibition) + (-1.0 * reaction_AggD5ProteasomeInhibition) + (-1.0 * reaction_AggU1ProteasomeInhibition) + (-1.0 * reaction_AggU2ProteasomeInhibition) + (-1.0 * reaction_AggU3ProteasomeInhibition) + (-1.0 * reaction_AggU4ProteasomeInhibition) + (-1.0 * reaction_AggU5ProteasomeInhibition) + (-1.0 * reaction_AggS1ProteasomeInhibition) + (-1.0 * reaction_AggS2ProteasomeInhibition) + (-1.0 * reaction_AggS3ProteasomeInhibition) + (-1.0 * reaction_AggS4ProteasomeInhibition) + (-1.0 * reaction_AggS5ProteasomeInhibition);
	
% Species:   id = ROS, name = ROS, affected by kineticLaw
	xdot(10) = (-1.0 * reaction_Misfolding) + ( 1.0 * reaction_Misfolding) + ( 1.0 * reaction_ROSgenerationSmallAggP1) + ( 1.0 * reaction_ROSgenerationSmallAggP2) + ( 1.0 * reaction_ROSgenerationSmallAggP3) + ( 1.0 * reaction_ROSgenerationSmallAggP4) + ( 1.0 * reaction_ROSgenerationSmallAggP5) + (-1.0 * reaction_UCHL1damage) + ( 1.0 * reaction_UCHL1damage) + (-1.0 * reaction_SUBmisfolding) + ( 1.0 * reaction_SUBmisfolding) + (-1.0 * reaction_asynDamage) + ( 1.0 * reaction_asynDamage) + ( 1.0 * reaction_ROSgenerationSmallAggA1) + ( 1.0 * reaction_ROSgenerationSmallAggA2) + ( 1.0 * reaction_ROSgenerationSmallAggA3) + ( 1.0 * reaction_ROSgenerationSmallAggA4) + ( 1.0 * reaction_ROSgenerationSmallAggA5) + ( 1.0 * reaction_ROSgenerationSmallAggD1) + ( 1.0 * reaction_ROSgenerationSmallAggD2) + ( 1.0 * reaction_ROSgenerationSmallAggD3) + ( 1.0 * reaction_ROSgenerationSmallAggD4) + ( 1.0 * reaction_ROSgenerationSmallAggD5) + ( 1.0 * reaction_ROSgenerationSmallAggU1) + ( 1.0 * reaction_ROSgenerationSmallAggU2) + ( 1.0 * reaction_ROSgenerationSmallAggU3) + ( 1.0 * reaction_ROSgenerationSmallAggU4) + ( 1.0 * reaction_ROSgenerationSmallAggU5) + ( 1.0 * reaction_ROSgenerationSmallAggS1) + ( 1.0 * reaction_ROSgenerationSmallAggS2) + ( 1.0 * reaction_ROSgenerationSmallAggS3) + ( 1.0 * reaction_ROSgenerationSmallAggS4) + ( 1.0 * reaction_ROSgenerationSmallAggS5) + ( 1.0 * reaction_radicalFormation) + (-1.0 * reaction_radicalScavenging);
	
% Species:   id = E1_Ub, name = E1_Ub, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_E1UbBinding) + (-1.0 * reaction_E2UbBinding);
	
% Species:   id = E2_Ub, name = E2_Ub, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_E2UbBinding) + (-1.0 * reaction_Monoubiquitination) + (-1.0 * reaction_Polyubiquitination1) + (-1.0 * reaction_Polyubiquitination2) + (-1.0 * reaction_Polyubiquitination3) + (-1.0 * reaction_Polyubiquitination4) + (-1.0 * reaction_Polyubiquitination5) + (-1.0 * reaction_Polyubiquitination6) + (-1.0 * reaction_Polyubiquitination7) + (-1.0 * reaction_SUBMonoubiquitination) + (-1.0 * reaction_SUBPolyubiquitination1) + (-1.0 * reaction_SUBPolyubiquitination2) + (-1.0 * reaction_SUBPolyubiquitination3) + (-1.0 * reaction_SUBPolyubiquitination4) + (-1.0 * reaction_SUBPolyubiquitination5) + (-1.0 * reaction_SUBPolyubiquitination6) + (-1.0 * reaction_SUBPolyubiquitination7) + (-1.0 * reaction_AsynMonoubiquitination) + (-1.0 * reaction_AsynPolyubiquitination1) + (-1.0 * reaction_AsynPolyubiquitination2) + (-1.0 * reaction_AsynPolyubiquitination3) + (-1.0 * reaction_AsynPolyubiquitination4) + (-1.0 * reaction_AsynPolyubiquitination5) + (-1.0 * reaction_AsynPolyubiquitination6) + (-1.0 * reaction_AsynPolyubiquitination7);
	
% Species:   id = E3_MisP_Ub, name = E3_MisP_Ub, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_Monoubiquitination) + (-1.0 * reaction_Polyubiquitination1) + (-1.0 * reaction_MisPDUBbinding1) + (-1.0 * reaction_InclusionGrowth3);
	
% Species:   id = E3_MisP_Ub2, name = E3_MisP_Ub2, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_Polyubiquitination1) + (-1.0 * reaction_Polyubiquitination2) + (-1.0 * reaction_MisPDUBbinding2) + (-1.0 * reaction_InclusionGrowth4);
	
% Species:   id = E3_MisP_Ub3, name = E3_MisP_Ub3, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_Polyubiquitination2) + (-1.0 * reaction_Polyubiquitination3) + (-1.0 * reaction_MisPDUBbinding3) + (-1.0 * reaction_InclusionGrowth5);
	
% Species:   id = E3_MisP_Ub4, name = E3_MisP_Ub4, affected by kineticLaw
	xdot(16) = ( 1.0 * reaction_Polyubiquitination3) + (-1.0 * reaction_Polyubiquitination4) + (-1.0 * reaction_MisPDUBbinding4) + (-1.0 * reaction_ProteasomeBindingUb4) + (-1.0 * reaction_InclusionGrowth6);
	
% Species:   id = E3_MisP_Ub5, name = E3_MisP_Ub5, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_Polyubiquitination4) + (-1.0 * reaction_Polyubiquitination5) + (-1.0 * reaction_MisPDUBbinding5) + (-1.0 * reaction_ProteasomeBindingUb5) + (-1.0 * reaction_InclusionGrowth7);
	
% Species:   id = E3_MisP_Ub6, name = E3_MisP_Ub6, affected by kineticLaw
	xdot(18) = ( 1.0 * reaction_Polyubiquitination5) + (-1.0 * reaction_Polyubiquitination6) + (-1.0 * reaction_MisPDUBbinding6) + (-1.0 * reaction_ProteasomeBindingUb6) + (-1.0 * reaction_InclusionGrowth8);
	
% Species:   id = E3_MisP_Ub7, name = E3_MisP_Ub7, affected by kineticLaw
	xdot(19) = ( 1.0 * reaction_Polyubiquitination6) + (-1.0 * reaction_Polyubiquitination7) + (-1.0 * reaction_MisPDUBbinding7) + (-1.0 * reaction_ProteasomeBindingUb7) + (-1.0 * reaction_InclusionGrowth9);
	
% Species:   id = E3_MisP_Ub8, name = E3_MisP_Ub8, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_Polyubiquitination7) + (-1.0 * reaction_MisPDUBbinding8) + (-1.0 * reaction_ProteasomeBindingUb8) + (-1.0 * reaction_InclusionGrowth10);
	
% Species:   id = MisP_Ub4_Proteasome, name = MisP_Ub4_Proteasome, affected by kineticLaw
	xdot(21) = ( 1.0 * reaction_ProteasomeBindingUb4) + ( 1.0 * reaction_DeubiquitinationBoundMisP2) + (-1.0 * reaction_DeubiquitinationBoundMisP1) + (-1.0 * reaction_ProteasomeActivity1);
	
% Species:   id = MisP_Ub5_Proteasome, name = MisP_Ub5_Proteasome, affected by kineticLaw
	xdot(22) = ( 1.0 * reaction_ProteasomeBindingUb5) + ( 1.0 * reaction_DeubiquitinationBoundMisP3) + (-1.0 * reaction_DeubiquitinationBoundMisP2) + (-1.0 * reaction_ProteasomeActivity2);
	
% Species:   id = MisP_Ub6_Proteasome, name = MisP_Ub6_Proteasome, affected by kineticLaw
	xdot(23) = ( 1.0 * reaction_ProteasomeBindingUb6) + ( 1.0 * reaction_DeubiquitinationBoundMisP4) + (-1.0 * reaction_DeubiquitinationBoundMisP3) + (-1.0 * reaction_ProteasomeActivity3);
	
% Species:   id = MisP_Ub7_Proteasome, name = MisP_Ub7_Proteasome, affected by kineticLaw
	xdot(24) = ( 1.0 * reaction_ProteasomeBindingUb7) + ( 1.0 * reaction_DeubiquitinationBoundMisP5) + (-1.0 * reaction_DeubiquitinationBoundMisP4) + (-1.0 * reaction_ProteasomeActivity4);
	
% Species:   id = MisP_Ub8_Proteasome, name = MisP_Ub8_Proteasome, affected by kineticLaw
	xdot(25) = ( 1.0 * reaction_ProteasomeBindingUb8) + (-1.0 * reaction_DeubiquitinationBoundMisP5) + (-1.0 * reaction_ProteasomeActivity5);
	
% Species:   id = E3_MisP_Ub_DUB, name = E3_MisP_Ub_DUB, affected by kineticLaw
	xdot(26) = ( 1.0 * reaction_MisPDUBbinding1) + ( 1.0 * reaction_Deubiquitination2) + (-1.0 * reaction_Deubiquitination1) + (-1.0 * reaction_InclusionGrowth11);
	
% Species:   id = E3_MisP_Ub2_DUB, name = E3_MisP_Ub2_DUB, affected by kineticLaw
	xdot(27) = ( 1.0 * reaction_MisPDUBbinding2) + ( 1.0 * reaction_Deubiquitination3) + (-1.0 * reaction_Deubiquitination2) + (-1.0 * reaction_InclusionGrowth12);
	
% Species:   id = E3_MisP_Ub3_DUB, name = E3_MisP_Ub3_DUB, affected by kineticLaw
	xdot(28) = ( 1.0 * reaction_MisPDUBbinding3) + ( 1.0 * reaction_Deubiquitination4) + (-1.0 * reaction_Deubiquitination3) + (-1.0 * reaction_InclusionGrowth13);
	
% Species:   id = E3_MisP_Ub4_DUB, name = E3_MisP_Ub4_DUB, affected by kineticLaw
	xdot(29) = ( 1.0 * reaction_MisPDUBbinding4) + ( 1.0 * reaction_Deubiquitination5) + (-1.0 * reaction_Deubiquitination4) + (-1.0 * reaction_InclusionGrowth14);
	
% Species:   id = E3_MisP_Ub5_DUB, name = E3_MisP_Ub5_DUB, affected by kineticLaw
	xdot(30) = ( 1.0 * reaction_MisPDUBbinding5) + ( 1.0 * reaction_Deubiquitination6) + (-1.0 * reaction_Deubiquitination5) + (-1.0 * reaction_InclusionGrowth15);
	
% Species:   id = E3_MisP_Ub6_DUB, name = E3_MisP_Ub6_DUB, affected by kineticLaw
	xdot(31) = ( 1.0 * reaction_MisPDUBbinding6) + ( 1.0 * reaction_Deubiquitination7) + (-1.0 * reaction_Deubiquitination6) + (-1.0 * reaction_InclusionGrowth16);
	
% Species:   id = E3_MisP_Ub7_DUB, name = E3_MisP_Ub7_DUB, affected by kineticLaw
	xdot(32) = ( 1.0 * reaction_MisPDUBbinding7) + ( 1.0 * reaction_Deubiquitination8) + (-1.0 * reaction_Deubiquitination7) + (-1.0 * reaction_InclusionGrowth17);
	
% Species:   id = E3_MisP_Ub8_DUB, name = E3_MisP_Ub8_DUB, affected by kineticLaw
	xdot(33) = ( 1.0 * reaction_MisPDUBbinding8) + (-1.0 * reaction_Deubiquitination8) + (-1.0 * reaction_InclusionGrowth18);
	
% Species:   id = AggP1, name = AggP1, affected by kineticLaw
	xdot(34) = ( 1.0 * reaction_Aggregation1) + (-1.0 * reaction_Aggregation2) + ( 1.0 * reaction_Disaggregation4) + (-1.0 * reaction_Disaggregation5) + (-1.0 * reaction_ProteasomeInhibition1) + (-1.0 * reaction_ROSgenerationSmallAggP1) + ( 1.0 * reaction_ROSgenerationSmallAggP1);
	
% Species:   id = AggP2, name = AggP2, affected by kineticLaw
	xdot(35) = ( 1.0 * reaction_Aggregation2) + (-1.0 * reaction_Aggregation3) + ( 1.0 * reaction_Disaggregation3) + (-1.0 * reaction_Disaggregation4) + (-1.0 * reaction_ProteasomeInhibition2) + (-1.0 * reaction_ROSgenerationSmallAggP2) + ( 1.0 * reaction_ROSgenerationSmallAggP2);
	
% Species:   id = AggP3, name = AggP3, affected by kineticLaw
	xdot(36) = ( 1.0 * reaction_Aggregation3) + (-1.0 * reaction_Aggregation4) + ( 1.0 * reaction_Disaggregation2) + (-1.0 * reaction_Disaggregation3) + (-1.0 * reaction_ProteasomeInhibition3) + (-1.0 * reaction_ROSgenerationSmallAggP3) + ( 1.0 * reaction_ROSgenerationSmallAggP3);
	
% Species:   id = AggP4, name = AggP4, affected by kineticLaw
	xdot(37) = ( 1.0 * reaction_Aggregation4) + (-1.0 * reaction_Aggregation5) + ( 1.0 * reaction_Disaggregation1) + (-1.0 * reaction_Disaggregation2) + (-1.0 * reaction_ProteasomeInhibition4) + (-1.0 * reaction_ROSgenerationSmallAggP4) + ( 1.0 * reaction_ROSgenerationSmallAggP4);
	
% Species:   id = AggP5, name = AggP5, affected by kineticLaw
	xdot(38) = ( 1.0 * reaction_Aggregation5) + (-1.0 * reaction_Disaggregation1) + (-1.0 * reaction_InclusionFormation) + (-1.0 * reaction_ProteasomeInhibition5) + (-1.0 * reaction_ROSgenerationSmallAggP5) + ( 1.0 * reaction_ROSgenerationSmallAggP5);
	
% Species:   id = SeqAggP, name = SeqAggP, affected by kineticLaw
	xdot(39) = ( 1.0 * reaction_InclusionFormation) + (-1.0 * reaction_InclusionGrowth1) + ( 2.0 * reaction_InclusionGrowth1) + (-1.0 * reaction_InclusionGrowth2) + ( 2.0 * reaction_InclusionGrowth2) + (-1.0 * reaction_InclusionGrowth3) + ( 2.0 * reaction_InclusionGrowth3) + (-1.0 * reaction_InclusionGrowth4) + ( 2.0 * reaction_InclusionGrowth4) + (-1.0 * reaction_InclusionGrowth5) + ( 2.0 * reaction_InclusionGrowth5) + (-1.0 * reaction_InclusionGrowth6) + ( 2.0 * reaction_InclusionGrowth6) + (-1.0 * reaction_InclusionGrowth7) + ( 2.0 * reaction_InclusionGrowth7) + (-1.0 * reaction_InclusionGrowth8) + ( 2.0 * reaction_InclusionGrowth8) + (-1.0 * reaction_InclusionGrowth9) + ( 2.0 * reaction_InclusionGrowth9) + (-1.0 * reaction_InclusionGrowth10) + ( 2.0 * reaction_InclusionGrowth10) + (-1.0 * reaction_InclusionGrowth11) + ( 2.0 * reaction_InclusionGrowth11) + (-1.0 * reaction_InclusionGrowth12) + ( 2.0 * reaction_InclusionGrowth12) + (-1.0 * reaction_InclusionGrowth13) + ( 2.0 * reaction_InclusionGrowth13) + (-1.0 * reaction_InclusionGrowth14) + ( 2.0 * reaction_InclusionGrowth14) + (-1.0 * reaction_InclusionGrowth15) + ( 2.0 * reaction_InclusionGrowth15) + (-1.0 * reaction_InclusionGrowth16) + ( 2.0 * reaction_InclusionGrowth16) + (-1.0 * reaction_InclusionGrowth17) + ( 2.0 * reaction_InclusionGrowth17) + (-1.0 * reaction_InclusionGrowth18) + ( 2.0 * reaction_InclusionGrowth18) + ( 1.0 * reaction_AsynInclusionFormation) + (-1.0 * reaction_AsynInclusionGrowth) + ( 2.0 * reaction_AsynInclusionGrowth) + ( 1.0 * reaction_AsynDamInclusionFormation) + (-1.0 * reaction_AsynDamInclusionGrowth1) + ( 2.0 * reaction_AsynDamInclusionGrowth1) + (-1.0 * reaction_AsynDamInclusionGrowth2) + ( 2.0 * reaction_AsynDamInclusionGrowth2) + (-1.0 * reaction_AsynDamInclusionGrowth3) + ( 2.0 * reaction_AsynDamInclusionGrowth3) + (-1.0 * reaction_AsynDamInclusionGrowth4) + ( 2.0 * reaction_AsynDamInclusionGrowth4) + (-1.0 * reaction_AsynDamInclusionGrowth5) + ( 2.0 * reaction_AsynDamInclusionGrowth5) + (-1.0 * reaction_AsynDamInclusionGrowth6) + ( 2.0 * reaction_AsynDamInclusionGrowth6) + (-1.0 * reaction_AsynDamInclusionGrowth7) + ( 2.0 * reaction_AsynDamInclusionGrowth7) + (-1.0 * reaction_AsynDamInclusionGrowth8) + ( 2.0 * reaction_AsynDamInclusionGrowth8) + (-1.0 * reaction_AsynDamInclusionGrowth9) + ( 2.0 * reaction_AsynDamInclusionGrowth9) + (-1.0 * reaction_AsynDamInclusionGrowth10) + ( 2.0 * reaction_AsynDamInclusionGrowth10) + (-1.0 * reaction_AsynDamInclusionGrowth11) + ( 2.0 * reaction_AsynDamInclusionGrowth11) + (-1.0 * reaction_AsynDamInclusionGrowth12) + ( 2.0 * reaction_AsynDamInclusionGrowth12) + (-1.0 * reaction_AsynDamInclusionGrowth13) + ( 2.0 * reaction_AsynDamInclusionGrowth13) + (-1.0 * reaction_AsynDamInclusionGrowth14) + ( 2.0 * reaction_AsynDamInclusionGrowth14) + (-1.0 * reaction_AsynDamInclusionGrowth15) + ( 2.0 * reaction_AsynDamInclusionGrowth15) + (-1.0 * reaction_AsynDamInclusionGrowth16) + ( 2.0 * reaction_AsynDamInclusionGrowth16) + (-1.0 * reaction_AsynDamInclusionGrowth17) + ( 2.0 * reaction_AsynDamInclusionGrowth17) + (-1.0 * reaction_AsynDamInclusionGrowth18) + ( 2.0 * reaction_AsynDamInclusionGrowth18) + ( 1.0 * reaction_UCHL1DamInclusionFormation) + (-1.0 * reaction_UCHL1DamagedSequestering) + ( 2.0 * reaction_UCHL1DamagedSequestering) + (-1.0 * reaction_UCHL1DamagedLamp2aSequestering) + ( 2.0 * reaction_UCHL1DamagedLamp2aSequestering) + ( 1.0 * reaction_SUBInclusionFormation) + (-1.0 * reaction_SUBInclusionGrowth0) + ( 2.0 * reaction_SUBInclusionGrowth0) + (-1.0 * reaction_SUBInclusionGrowth1) + ( 2.0 * reaction_SUBInclusionGrowth1) + (-1.0 * reaction_SUBInclusionGrowth2) + ( 2.0 * reaction_SUBInclusionGrowth2) + (-1.0 * reaction_SUBInclusionGrowth3) + ( 2.0 * reaction_SUBInclusionGrowth3) + (-1.0 * reaction_SUBInclusionGrowth4) + ( 2.0 * reaction_SUBInclusionGrowth4) + (-1.0 * reaction_SUBInclusionGrowth5) + ( 2.0 * reaction_SUBInclusionGrowth5) + (-1.0 * reaction_SUBInclusionGrowth6) + ( 2.0 * reaction_SUBInclusionGrowth6) + (-1.0 * reaction_SUBInclusionGrowth7) + ( 2.0 * reaction_SUBInclusionGrowth7) + (-1.0 * reaction_SUBInclusionGrowth8) + ( 2.0 * reaction_SUBInclusionGrowth8) + (-1.0 * reaction_SUBInclusionGrowth9) + ( 2.0 * reaction_SUBInclusionGrowth9) + (-1.0 * reaction_SUBInclusionGrowth10) + ( 2.0 * reaction_SUBInclusionGrowth10) + (-1.0 * reaction_SUBInclusionGrowth11) + ( 2.0 * reaction_SUBInclusionGrowth11) + (-1.0 * reaction_SUBInclusionGrowth12) + ( 2.0 * reaction_SUBInclusionGrowth12) + (-1.0 * reaction_SUBInclusionGrowth13) + ( 2.0 * reaction_SUBInclusionGrowth13) + (-1.0 * reaction_SUBInclusionGrowth14) + ( 2.0 * reaction_SUBInclusionGrowth14) + (-1.0 * reaction_SUBInclusionGrowth15) + ( 2.0 * reaction_SUBInclusionGrowth15) + (-1.0 * reaction_SUBInclusionGrowth16) + ( 2.0 * reaction_SUBInclusionGrowth16) + (-1.0 * reaction_SUBInclusionGrowth17) + ( 2.0 * reaction_SUBInclusionGrowth17);
	
% Species:   id = AggP_Proteasome, name = AggP_Proteasome, affected by kineticLaw
	xdot(40) = ( 1.0 * reaction_ProteasomeInhibition1) + ( 1.0 * reaction_ProteasomeInhibition2) + ( 1.0 * reaction_ProteasomeInhibition3) + ( 1.0 * reaction_ProteasomeInhibition4) + ( 1.0 * reaction_ProteasomeInhibition5) + ( 1.0 * reaction_AggA1ProteasomeInhibition) + ( 1.0 * reaction_AggA2ProteasomeInhibition) + ( 1.0 * reaction_AggA3ProteasomeInhibition) + ( 1.0 * reaction_AggA4ProteasomeInhibition) + ( 1.0 * reaction_AggA5ProteasomeInhibition) + ( 1.0 * reaction_AggD1ProteasomeInhibition) + ( 1.0 * reaction_AggD2ProteasomeInhibition) + ( 1.0 * reaction_AggD3ProteasomeInhibition) + ( 1.0 * reaction_AggD4ProteasomeInhibition) + ( 1.0 * reaction_AggD5ProteasomeInhibition) + ( 1.0 * reaction_AggU1ProteasomeInhibition) + ( 1.0 * reaction_AggU2ProteasomeInhibition) + ( 1.0 * reaction_AggU3ProteasomeInhibition) + ( 1.0 * reaction_AggU4ProteasomeInhibition) + ( 1.0 * reaction_AggU5ProteasomeInhibition) + ( 1.0 * reaction_AggS1ProteasomeInhibition) + ( 1.0 * reaction_AggS2ProteasomeInhibition) + ( 1.0 * reaction_AggS3ProteasomeInhibition) + ( 1.0 * reaction_AggS4ProteasomeInhibition) + ( 1.0 * reaction_AggS5ProteasomeInhibition);
	
% Species:   id = UCHL1, name = UCHL1, affected by kineticLaw
	xdot(41) = ( 1.0 * reaction_UCHL1Synthesis) + (-1.0 * reaction_UCHL1ProteasomeBinding) + (-1.0 * reaction_UCHL1LysosomalDegradation) + (-1.0 * reaction_UCHL1damage) + (-1.0 * reaction_UbUCHL1binding) + ( 1.0 * reaction_UbUCHL1release) + (-1.0 * reaction_SUBUCHL1binding1) + (-1.0 * reaction_SUBUCHL1binding2) + (-1.0 * reaction_SUBUCHL1binding3) + (-1.0 * reaction_SUBUCHL1binding4) + (-1.0 * reaction_SUBUCHL1binding5Ub_UCHL1) + (-1.0 * reaction_SUBUCHL1binding6) + (-1.0 * reaction_SUBUCHL1binding7) + (-1.0 * reaction_SUBUCHL1binding8) + ( 1.0 * reaction_SUBDeubiquitination1);
	
% Species:   id = UCHL1_Proteasome, name = UCHL1_Proteasome, affected by kineticLaw
	xdot(42) = ( 1.0 * reaction_UCHL1ProteasomeBinding) + (-1.0 * reaction_UCHL1ProteasomeDegradation);
	
% Species:   id = UCHL1_damaged_Proteasome, name = UCHL1_damaged_Proteasome, affected by kineticLaw
	xdot(43) = ( 1.0 * reaction_UCHL1DamgedProteasomeBinding) + (-1.0 * reaction_UCHL1DamagedProteasomeDegradation);
	
% Species:   id = Lysosome, name = Lysosome, affected by kineticLaw
	xdot(44) = (-1.0 * reaction_UCHL1LysosomalDegradation) + ( 1.0 * reaction_UCHL1LysosomalDegradation) + (-1.0 * reaction_UCHL1DamagedLysosomalDegradation) + ( 1.0 * reaction_UCHL1DamagedLysosomalDegradation);
	
% Species:   id = UCHL1_damaged, name = UCHL1_damaged, affected by kineticLaw
	xdot(45) = ( 1.0 * reaction_UCHL1damage) + (-1.0 * reaction_UCHL1DamgedProteasomeBinding) + (-1.0 * reaction_UCHL1DamagedLysosomalDegradation) + (-1.0 * reaction_UCHL1Lamp2abinding) + ( 1.0 * reaction_UCHL1Lamp2aRelease) + (-2.0 * reaction_AggregationUCHL1Dam1) + (-1.0 * reaction_AggregationUCHL1Dam2) + (-1.0 * reaction_AggregationUCHL1Dam3) + (-1.0 * reaction_AggregationUCHL1Dam4) + (-1.0 * reaction_AggregationUCHL1Dam5) + ( 1.0 * reaction_DisaggregationUCHL1Dam1) + ( 1.0 * reaction_DisaggregationUCHL1Dam2) + ( 1.0 * reaction_DisaggregationUCHL1Dam3) + ( 1.0 * reaction_DisaggregationUCHL1Dam4) + ( 2.0 * reaction_DisaggregationUCHL1Dam5) + (-1.0 * reaction_UCHL1DamInclusionFormation) + (-1.0 * reaction_UCHL1DamagedSequestering);
	
% Species:   id = Lamp2a, name = Lamp2a, affected by kineticLaw
	xdot(46) = (-1.0 * reaction_UCHL1Lamp2abinding) + ( 1.0 * reaction_UCHL1Lamp2aRelease) + (-1.0 * reaction_asynLamp2aBinding) + ( 1.0 * reaction_asynCMAdegradation);
	
% Species:   id = Lamp2a_UCHL1_damaged, name = Lamp2a_UCHL1_damaged, affected by kineticLaw
	xdot(47) = ( 1.0 * reaction_UCHL1Lamp2abinding) + (-1.0 * reaction_UCHL1Lamp2aRelease) + (-1.0 * reaction_UCHL1DamagedLamp2aSequestering);
	
% Species:   id = Ub_UCHL1, name = Ub_UCHL1, affected by kineticLaw
	xdot(48) = ( 1.0 * reaction_UbUCHL1binding) + (-1.0 * reaction_UbUCHL1release);
	
% Species:   id = SUB, name = SUB, affected by kineticLaw
	xdot(49) = ( 1.0 * reaction_SUBsynthesis) + (-1.0 * reaction_SUBmisfolding) + ( 1.0 * reaction_SUBRefolding);
	
% Species:   id = SUB_misfolded, name = SUB_misfolded, affected by kineticLaw
	xdot(50) = ( 1.0 * reaction_SUBmisfolding) + (-1.0 * reaction_SUBRefolding) + (-1.0 * reaction_E3SUBBinding) + ( 1.0 * reaction_E3SUBRelease) + ( 1.0 * reaction_DeubiquitinationBoundSUB4) + (-2.0 * reaction_SUBAggregation1) + (-1.0 * reaction_SUBAggregation2) + (-1.0 * reaction_SUBAggregation3) + (-1.0 * reaction_SUBAggregation4) + (-1.0 * reaction_SUBAggregation5) + ( 1.0 * reaction_SUBDisaggregation1) + ( 1.0 * reaction_SUBDisaggregation2) + ( 1.0 * reaction_SUBDisaggregation3) + ( 1.0 * reaction_SUBDisaggregation4) + ( 2.0 * reaction_SUBDisaggregation5) + (-1.0 * reaction_SUBInclusionFormation) + (-1.0 * reaction_SUBInclusionGrowth0);
	
% Species:   id = E3SUB, name = E3SUB, affected by kineticLaw
	xdot(51) = (-1.0 * reaction_E3SUBBinding) + ( 1.0 * reaction_E3SUBRelease) + ( 1.0 * reaction_SUBProteasomeBindingUb4) + ( 1.0 * reaction_SUBProteasomeBindingUb5) + ( 1.0 * reaction_SUBProteasomeBindingUb6) + ( 1.0 * reaction_SUBProteasomeBindingUb7) + ( 1.0 * reaction_SUBProteasomeBindingUb8);
	
% Species:   id = E3SUB_SUB_misfolded, name = E3SUB_SUB_misfolded, affected by kineticLaw
	xdot(52) = ( 1.0 * reaction_E3SUBBinding) + (-1.0 * reaction_E3SUBRelease) + (-1.0 * reaction_SUBMonoubiquitination) + ( 1.0 * reaction_SUBDeubiquitination1) + (-1.0 * reaction_SUBInclusionGrowth1);
	
% Species:   id = E3SUB_SUB_misfolded_Ub, name = E3SUB_SUB_misfolded_Ub, affected by kineticLaw
	xdot(53) = ( 1.0 * reaction_SUBMonoubiquitination) + (-1.0 * reaction_SUBPolyubiquitination1) + (-1.0 * reaction_SUBUCHL1binding1) + (-1.0 * reaction_SUBInclusionGrowth2);
	
% Species:   id = E3SUB_SUB_misfolded_Ub2, name = E3SUB_SUB_misfolded_Ub2, affected by kineticLaw
	xdot(54) = ( 1.0 * reaction_SUBPolyubiquitination1) + (-1.0 * reaction_SUBPolyubiquitination2) + (-1.0 * reaction_SUBUCHL1binding2) + (-1.0 * reaction_SUBInclusionGrowth3);
	
% Species:   id = E3SUB_SUB_misfolded_Ub3, name = E3SUB_SUB_misfolded_Ub3, affected by kineticLaw
	xdot(55) = ( 1.0 * reaction_SUBPolyubiquitination2) + (-1.0 * reaction_SUBPolyubiquitination3) + (-1.0 * reaction_SUBUCHL1binding3) + (-1.0 * reaction_SUBInclusionGrowth4);
	
% Species:   id = E3SUB_SUB_misfolded_Ub4, name = E3SUB_SUB_misfolded_Ub4, affected by kineticLaw
	xdot(56) = ( 1.0 * reaction_SUBPolyubiquitination3) + (-1.0 * reaction_SUBPolyubiquitination4) + (-1.0 * reaction_SUBUCHL1binding4) + (-1.0 * reaction_SUBProteasomeBindingUb4) + (-1.0 * reaction_SUBInclusionGrowth5);
	
% Species:   id = E3SUB_SUB_misfolded_Ub5, name = E3SUB_SUB_misfolded_Ub5, affected by kineticLaw
	xdot(57) = ( 1.0 * reaction_SUBPolyubiquitination4) + (-1.0 * reaction_SUBPolyubiquitination5) + (-1.0 * reaction_SUBUCHL1binding5Ub_UCHL1) + (-1.0 * reaction_SUBProteasomeBindingUb5) + (-1.0 * reaction_SUBInclusionGrowth6);
	
% Species:   id = E3SUB_SUB_misfolded_Ub6, name = E3SUB_SUB_misfolded_Ub6, affected by kineticLaw
	xdot(58) = ( 1.0 * reaction_SUBPolyubiquitination5) + (-1.0 * reaction_SUBPolyubiquitination6) + (-1.0 * reaction_SUBUCHL1binding6) + (-1.0 * reaction_SUBProteasomeBindingUb6) + (-1.0 * reaction_SUBInclusionGrowth7);
	
% Species:   id = E3SUB_SUB_misfolded_Ub7, name = E3SUB_SUB_misfolded_Ub7, affected by kineticLaw
	xdot(59) = ( 1.0 * reaction_SUBPolyubiquitination6) + (-1.0 * reaction_SUBPolyubiquitination7) + (-1.0 * reaction_SUBUCHL1binding7) + (-1.0 * reaction_SUBProteasomeBindingUb7) + (-1.0 * reaction_SUBInclusionGrowth8);
	
% Species:   id = E3SUB_SUB_misfolded_Ub8, name = E3SUB_SUB_misfolded_Ub8, affected by kineticLaw
	xdot(60) = ( 1.0 * reaction_SUBPolyubiquitination7) + (-1.0 * reaction_SUBUCHL1binding8) + (-1.0 * reaction_SUBProteasomeBindingUb8) + (-1.0 * reaction_SUBInclusionGrowth9);
	
% Species:   id = E3SUB_SUB_misfolded_Ub_UCHL1, name = E3SUB_SUB_misfolded_Ub_UCHL1, affected by kineticLaw
	xdot(61) = ( 1.0 * reaction_SUBUCHL1binding1) + ( 1.0 * reaction_SUBDeubiquitination2) + (-1.0 * reaction_SUBDeubiquitination1) + (-1.0 * reaction_SUBInclusionGrowth10);
	
% Species:   id = E3SUB_SUB_misfolded_Ub2_UCHL1, name = E3SUB_SUB_misfolded_Ub2_UCHL1, affected by kineticLaw
	xdot(62) = ( 1.0 * reaction_SUBUCHL1binding2) + ( 1.0 * reaction_SUBDeubiquitination3) + (-1.0 * reaction_SUBDeubiquitination2) + (-1.0 * reaction_SUBInclusionGrowth11);
	
% Species:   id = E3SUB_SUB_misfolded_Ub3_UCHL1, name = E3SUB_SUB_misfolded_Ub3_UCHL1, affected by kineticLaw
	xdot(63) = ( 1.0 * reaction_SUBUCHL1binding3) + ( 1.0 * reaction_SUBDeubiquitination4) + (-1.0 * reaction_SUBDeubiquitination3) + (-1.0 * reaction_SUBInclusionGrowth12);
	
% Species:   id = E3SUB_SUB_misfolded_Ub4_UCHL1, name = E3SUB_SUB_misfolded_Ub4_UCHL1, affected by kineticLaw
	xdot(64) = ( 1.0 * reaction_SUBUCHL1binding4) + ( 1.0 * reaction_SUBDeubiquitination5) + (-1.0 * reaction_SUBDeubiquitination4) + (-1.0 * reaction_SUBInclusionGrowth13);
	
% Species:   id = E3SUB_SUB_misfolded_Ub5_UCHL1, name = E3SUB_SUB_misfolded_Ub5_UCHL1, affected by kineticLaw
	xdot(65) = ( 1.0 * reaction_SUBUCHL1binding5Ub_UCHL1) + ( 1.0 * reaction_SUBDeubiquitination6) + (-1.0 * reaction_SUBDeubiquitination5) + (-1.0 * reaction_SUBInclusionGrowth14);
	
% Species:   id = E3SUB_SUB_misfolded_Ub6_UCHL1, name = E3SUB_SUB_misfolded_Ub6_UCHL1, affected by kineticLaw
	xdot(66) = ( 1.0 * reaction_SUBUCHL1binding6) + ( 1.0 * reaction_SUBDeubiquitination7) + (-1.0 * reaction_SUBDeubiquitination6) + (-1.0 * reaction_SUBInclusionGrowth15);
	
% Species:   id = E3SUB_SUB_misfolded_Ub7_UCHL1, name = E3SUB_SUB_misfolded_Ub7_UCHL1, affected by kineticLaw
	xdot(67) = ( 1.0 * reaction_SUBUCHL1binding7) + ( 1.0 * reaction_SUBDeubiquitination8) + (-1.0 * reaction_SUBDeubiquitination7) + (-1.0 * reaction_SUBInclusionGrowth16);
	
% Species:   id = E3SUB_SUB_misfolded_Ub8_UCHL1, name = E3SUB_SUB_misfolded_Ub8_UCHL1, affected by kineticLaw
	xdot(68) = ( 1.0 * reaction_SUBUCHL1binding8) + (-1.0 * reaction_SUBDeubiquitination8) + (-1.0 * reaction_SUBInclusionGrowth17);
	
% Species:   id = SUB_misfolded_Ub4_Proteasome, name = SUB_misfolded_Ub4_Proteasome, affected by kineticLaw
	xdot(69) = ( 1.0 * reaction_SUBProteasomeBindingUb4) + ( 1.0 * reaction_DeubiquitinationBoundSUB5) + (-1.0 * reaction_DeubiquitinationBoundSUB4) + (-1.0 * reaction_SUBDegradationUb4);
	
% Species:   id = SUB_misfolded_Ub5_Proteasome, name = SUB_misfolded_Ub5_Proteasome, affected by kineticLaw
	xdot(70) = ( 1.0 * reaction_SUBProteasomeBindingUb5) + ( 1.0 * reaction_DeubiquitinationBoundSUB6) + (-1.0 * reaction_DeubiquitinationBoundSUB5) + (-1.0 * reaction_SUBDegradationUb5);
	
% Species:   id = SUB_misfolded_Ub6_Proteasome, name = SUB_misfolded_Ub6_Proteasome, affected by kineticLaw
	xdot(71) = ( 1.0 * reaction_SUBProteasomeBindingUb6) + ( 1.0 * reaction_DeubiquitinationBoundSUB7) + (-1.0 * reaction_DeubiquitinationBoundSUB6) + (-1.0 * reaction_SUBDegradationUb6);
	
% Species:   id = SUB_misfolded_Ub7_Proteasome, name = SUB_misfolded_Ub7_Proteasome, affected by kineticLaw
	xdot(72) = ( 1.0 * reaction_SUBProteasomeBindingUb7) + ( 1.0 * reaction_DeubiquitinationBoundSUB8) + (-1.0 * reaction_DeubiquitinationBoundSUB7) + (-1.0 * reaction_SUBDegradationUb7);
	
% Species:   id = SUB_misfolded_Ub8_Proteasome, name = SUB_misfolded_Ub8_Proteasome, affected by kineticLaw
	xdot(73) = ( 1.0 * reaction_SUBProteasomeBindingUb8) + (-1.0 * reaction_DeubiquitinationBoundSUB8) + (-1.0 * reaction_SUBDegradationUb8);
	
% Species:   id = asyn, name = asyn, affected by kineticLaw
	xdot(74) = ( 1.0 * reaction_asynSynthesis1) + (-1.0 * reaction_asynProt20Sbinding) + (-1.0 * reaction_asynLamp2aBinding) + (-1.0 * reaction_asynDamage) + (-2.0 * reaction_Aggregationasyn1) + (-1.0 * reaction_Aggregationasyn2) + (-1.0 * reaction_Aggregationasyn3) + (-1.0 * reaction_Aggregationasyn4) + (-1.0 * reaction_Aggregationasyn5) + ( 1.0 * reaction_DisAggregationasyn1) + ( 1.0 * reaction_DisAggregationasyn2) + ( 1.0 * reaction_DisAggregationasyn3) + ( 1.0 * reaction_DisAggregationasyn4) + ( 2.0 * reaction_DisAggregationasyn5) + (-1.0 * reaction_AsynInclusionFormation) + (-1.0 * reaction_AsynInclusionGrowth);
	
% Species:   id = asyn_Proteasome, name = asyn_Proteasome, affected by kineticLaw
	xdot(75) = ( 1.0 * reaction_asynProt20Sbinding) + (-1.0 * reaction_asynProt20Sdegradation);
	
% Species:   id = asyn_Lamp2a, name = asyn_Lamp2a, affected by kineticLaw
	xdot(76) = ( 1.0 * reaction_asynLamp2aBinding) + (-1.0 * reaction_asynCMAdegradation);
	
% Species:   id = asyn_dam, name = asyn_dam, affected by kineticLaw
	xdot(77) = ( 1.0 * reaction_asynDamage) + (-1.0 * reaction_asyn_damParkinBinding) + ( 1.0 * reaction_asyn_damParkinRelease) + ( 1.0 * reaction_DeubiquitinationBoundasynDamUb4) + (-2.0 * reaction_AggregationAsynDam1) + (-1.0 * reaction_AggregationAsynDam2) + (-1.0 * reaction_AggregationAsynDam3) + (-1.0 * reaction_AggregationAsynDam4) + (-1.0 * reaction_AggregationAsynDam5) + ( 1.0 * reaction_DisaggregationAsynDam1) + ( 1.0 * reaction_DisaggregationAsynDam2) + ( 1.0 * reaction_DisaggregationAsynDam3) + ( 1.0 * reaction_DisaggregationAsynDam4) + ( 2.0 * reaction_DisaggregationAsynDam5) + (-1.0 * reaction_AsynDamInclusionFormation) + (-1.0 * reaction_AsynDamInclusionGrowth1);
	
% Species:   id = Parkin, name = Parkin, affected by kineticLaw
	xdot(78) = (-1.0 * reaction_asyn_damParkinBinding) + ( 1.0 * reaction_asyn_damParkinRelease) + ( 1.0 * reaction_AsynProteasomeBindingUb4) + ( 1.0 * reaction_AsynProteasomeBindingUb5) + ( 1.0 * reaction_AsynProteasomeBindingUb6) + ( 1.0 * reaction_AsynProteasomeBindingUb7) + ( 1.0 * reaction_AsynProteasomeBindingUb8);
	
% Species:   id = Parkin_asyn_dam, name = Parkin_asyn_dam, affected by kineticLaw
	xdot(79) = ( 1.0 * reaction_asyn_damParkinBinding) + (-1.0 * reaction_asyn_damParkinRelease) + (-1.0 * reaction_AsynMonoubiquitination) + ( 1.0 * reaction_AsynDeubiquitinationUb1) + (-1.0 * reaction_AsynDamInclusionGrowth2);
	
% Species:   id = Parkin_asyn_dam_Ub, name = Parkin_asyn_dam_Ub, affected by kineticLaw
	xdot(80) = ( 1.0 * reaction_AsynMonoubiquitination) + (-1.0 * reaction_AsynPolyubiquitination1) + (-1.0 * reaction_AsynDUBbindingUb1) + (-1.0 * reaction_AsynDamInclusionGrowth3);
	
% Species:   id = Parkin_asyn_dam_Ub2, name = Parkin_asyn_dam_Ub2, affected by kineticLaw
	xdot(81) = ( 1.0 * reaction_AsynPolyubiquitination1) + (-1.0 * reaction_AsynPolyubiquitination2) + (-1.0 * reaction_AsynDUBbindingUb2) + (-1.0 * reaction_AsynDamInclusionGrowth4);
	
% Species:   id = Parkin_asyn_dam_Ub3, name = Parkin_asyn_dam_Ub3, affected by kineticLaw
	xdot(82) = ( 1.0 * reaction_AsynPolyubiquitination2) + (-1.0 * reaction_AsynPolyubiquitination3) + (-1.0 * reaction_AsynDUBbindingUb3) + (-1.0 * reaction_AsynDamInclusionGrowth5);
	
% Species:   id = Parkin_asyn_dam_Ub4, name = Parkin_asyn_dam_Ub4, affected by kineticLaw
	xdot(83) = ( 1.0 * reaction_AsynPolyubiquitination3) + (-1.0 * reaction_AsynPolyubiquitination4) + (-1.0 * reaction_AsynDUBbindingUb4) + (-1.0 * reaction_AsynProteasomeBindingUb4) + (-1.0 * reaction_AsynDamInclusionGrowth6);
	
% Species:   id = Parkin_asyn_dam_Ub5, name = Parkin_asyn_dam_Ub5, affected by kineticLaw
	xdot(84) = ( 1.0 * reaction_AsynPolyubiquitination4) + (-1.0 * reaction_AsynPolyubiquitination5) + (-1.0 * reaction_AsynDUBbindingUb5) + (-1.0 * reaction_AsynProteasomeBindingUb5) + (-1.0 * reaction_AsynDamInclusionGrowth7);
	
% Species:   id = Parkin_asyn_dam_Ub6, name = Parkin_asyn_dam_Ub6, affected by kineticLaw
	xdot(85) = ( 1.0 * reaction_AsynPolyubiquitination5) + (-1.0 * reaction_AsynPolyubiquitination6) + (-1.0 * reaction_AsynDUBbindingUb6) + (-1.0 * reaction_AsynProteasomeBindingUb6) + (-1.0 * reaction_AsynDamInclusionGrowth8);
	
% Species:   id = Parkin_asyn_dam_Ub7, name = Parkin_asyn_dam_Ub7, affected by kineticLaw
	xdot(86) = ( 1.0 * reaction_AsynPolyubiquitination6) + (-1.0 * reaction_AsynPolyubiquitination7) + (-1.0 * reaction_AsynDUBbindingUb7) + (-1.0 * reaction_AsynProteasomeBindingUb7) + (-1.0 * reaction_AsynDamInclusionGrowth9);
	
% Species:   id = Parkin_asyn_dam_Ub8, name = Parkin_asyn_dam_Ub8, affected by kineticLaw
	xdot(87) = ( 1.0 * reaction_AsynPolyubiquitination7) + (-1.0 * reaction_AsynDUBbindingUb8) + (-1.0 * reaction_AsynProteasomeBindingUb8) + (-1.0 * reaction_AsynDamInclusionGrowth10);
	
% Species:   id = Parkin_asyn_dam_Ub_DUB, name = Parkin_asyn_dam_Ub_DUB, affected by kineticLaw
	xdot(88) = ( 1.0 * reaction_AsynDUBbindingUb1) + ( 1.0 * reaction_AsynDeubiquitinationUb2) + (-1.0 * reaction_AsynDeubiquitinationUb1) + (-1.0 * reaction_AsynDamInclusionGrowth11);
	
% Species:   id = Parkin_asyn_dam_Ub2_DUB, name = Parkin_asyn_dam_Ub2_DUB, affected by kineticLaw
	xdot(89) = ( 1.0 * reaction_AsynDUBbindingUb2) + ( 1.0 * reaction_AsynDeubiquitinationUb3) + (-1.0 * reaction_AsynDeubiquitinationUb2) + (-1.0 * reaction_AsynDamInclusionGrowth12);
	
% Species:   id = Parkin_asyn_dam_Ub3_DUB, name = Parkin_asyn_dam_Ub3_DUB, affected by kineticLaw
	xdot(90) = ( 1.0 * reaction_AsynDUBbindingUb3) + ( 1.0 * reaction_AsynDeubiquitinationUb4) + (-1.0 * reaction_AsynDeubiquitinationUb3) + (-1.0 * reaction_AsynDamInclusionGrowth13);
	
% Species:   id = Parkin_asyn_dam_Ub4_DUB, name = Parkin_asyn_dam_Ub4_DUB, affected by kineticLaw
	xdot(91) = ( 1.0 * reaction_AsynDUBbindingUb4) + ( 1.0 * reaction_AsynDeubiquitinationUb5) + (-1.0 * reaction_AsynDeubiquitinationUb4) + (-1.0 * reaction_AsynDamInclusionGrowth14);
	
% Species:   id = Parkin_asyn_dam_Ub5_DUB, name = Parkin_asyn_dam_Ub5_DUB, affected by kineticLaw
	xdot(92) = ( 1.0 * reaction_AsynDUBbindingUb5) + ( 1.0 * reaction_AsynDeubiquitinationUb6) + (-1.0 * reaction_AsynDeubiquitinationUb5) + (-1.0 * reaction_AsynDamInclusionGrowth15);
	
% Species:   id = Parkin_asyn_dam_Ub6_DUB, name = Parkin_asyn_dam_Ub6_DUB, affected by kineticLaw
	xdot(93) = ( 1.0 * reaction_AsynDUBbindingUb6) + ( 1.0 * reaction_AsynDeubiquitinationUb7) + (-1.0 * reaction_AsynDeubiquitinationUb6) + (-1.0 * reaction_AsynDamInclusionGrowth16);
	
% Species:   id = Parkin_asyn_dam_Ub7_DUB, name = Parkin_asyn_dam_Ub7_DUB, affected by kineticLaw
	xdot(94) = ( 1.0 * reaction_AsynDUBbindingUb7) + ( 1.0 * reaction_AsynDeubiquitinationUb8) + (-1.0 * reaction_AsynDeubiquitinationUb7) + (-1.0 * reaction_AsynDamInclusionGrowth17);
	
% Species:   id = Parkin_asyn_dam_Ub8_DUB, name = Parkin_asyn_dam_Ub8_DUB, affected by kineticLaw
	xdot(95) = ( 1.0 * reaction_AsynDUBbindingUb8) + (-1.0 * reaction_AsynDeubiquitinationUb8) + (-1.0 * reaction_AsynDamInclusionGrowth18);
	
% Species:   id = asyn_dam_Ub4_Proteasome, name = asyn_dam_Ub4_Proteasome, affected by kineticLaw
	xdot(96) = ( 1.0 * reaction_AsynProteasomeBindingUb4) + ( 1.0 * reaction_DeubiquitinationBoundasynDamUb5) + (-1.0 * reaction_DeubiquitinationBoundasynDamUb4) + (-1.0 * reaction_AsynProteasomeActivityUb4);
	
% Species:   id = asyn_dam_Ub5_Proteasome, name = asyn_dam_Ub5_Proteasome, affected by kineticLaw
	xdot(97) = ( 1.0 * reaction_AsynProteasomeBindingUb5) + ( 1.0 * reaction_DeubiquitinationBoundasynDamUb6) + (-1.0 * reaction_DeubiquitinationBoundasynDamUb5) + (-1.0 * reaction_AsynDegradationUb5);
	
% Species:   id = asyn_dam_Ub6_Proteasome, name = asyn_dam_Ub6_Proteasome, affected by kineticLaw
	xdot(98) = ( 1.0 * reaction_AsynProteasomeBindingUb6) + ( 1.0 * reaction_DeubiquitinationBoundasynDamUb7) + (-1.0 * reaction_DeubiquitinationBoundasynDamUb6) + (-1.0 * reaction_AsynDegradationUb6);
	
% Species:   id = asyn_dam_Ub7_Proteasome, name = asyn_dam_Ub7_Proteasome, affected by kineticLaw
	xdot(99) = ( 1.0 * reaction_AsynProteasomeBindingUb7) + ( 1.0 * reaction_DeubiquitinationBoundasyn_damUb8) + (-1.0 * reaction_DeubiquitinationBoundasynDamUb7) + (-1.0 * reaction_AsynDegradationUb7);
	
% Species:   id = asyn_dam_Ub8_Proteasome, name = asyn_dam_Ub8_Proteasome, affected by kineticLaw
	xdot(100) = ( 1.0 * reaction_AsynProteasomeBindingUb8) + (-1.0 * reaction_DeubiquitinationBoundasyn_damUb8) + (-1.0 * reaction_AsynDegradationUb8);
	
% Species:   id = AggA1, name = AggA1, affected by kineticLaw
	xdot(101) = ( 1.0 * reaction_Aggregationasyn1) + (-1.0 * reaction_Aggregationasyn2) + ( 1.0 * reaction_DisAggregationasyn4) + (-1.0 * reaction_DisAggregationasyn5) + (-1.0 * reaction_AggA1ProteasomeInhibition) + (-1.0 * reaction_ROSgenerationSmallAggA1) + ( 1.0 * reaction_ROSgenerationSmallAggA1);
	
% Species:   id = AggA2, name = AggA2, affected by kineticLaw
	xdot(102) = ( 1.0 * reaction_Aggregationasyn2) + (-1.0 * reaction_Aggregationasyn3) + ( 1.0 * reaction_DisAggregationasyn3) + (-1.0 * reaction_DisAggregationasyn4) + (-1.0 * reaction_AggA2ProteasomeInhibition) + (-1.0 * reaction_ROSgenerationSmallAggA2) + ( 1.0 * reaction_ROSgenerationSmallAggA2);
	
% Species:   id = AggA3, name = AggA3, affected by kineticLaw
	xdot(103) = ( 1.0 * reaction_Aggregationasyn3) + (-1.0 * reaction_Aggregationasyn4) + ( 1.0 * reaction_DisAggregationasyn2) + (-1.0 * reaction_DisAggregationasyn3) + (-1.0 * reaction_AggA3ProteasomeInhibition) + (-1.0 * reaction_ROSgenerationSmallAggA3) + ( 1.0 * reaction_ROSgenerationSmallAggA3);
	
% Species:   id = AggA4, name = AggA4, affected by kineticLaw
	xdot(104) = ( 1.0 * reaction_Aggregationasyn4) + (-1.0 * reaction_Aggregationasyn5) + ( 1.0 * reaction_DisAggregationasyn1) + (-1.0 * reaction_DisAggregationasyn2) + (-1.0 * reaction_AggA4ProteasomeInhibition) + (-1.0 * reaction_ROSgenerationSmallAggA4) + ( 1.0 * reaction_ROSgenerationSmallAggA4);
	
% Species:   id = AggA5, name = AggA5, affected by kineticLaw
	xdot(105) = ( 1.0 * reaction_Aggregationasyn5) + (-1.0 * reaction_DisAggregationasyn1) + (-1.0 * reaction_AggA5ProteasomeInhibition) + (-1.0 * reaction_AsynInclusionFormation) + (-1.0 * reaction_ROSgenerationSmallAggA5) + ( 1.0 * reaction_ROSgenerationSmallAggA5);
	
% Species:   id = AggD1, name = AggD1, affected by kineticLaw
	xdot(106) = ( 1.0 * reaction_AggregationAsynDam1) + (-1.0 * reaction_AggregationAsynDam2) + ( 1.0 * reaction_DisaggregationAsynDam4) + (-1.0 * reaction_DisaggregationAsynDam5) + (-1.0 * reaction_AggD1ProteasomeInhibition) + (-1.0 * reaction_ROSgenerationSmallAggD1) + ( 1.0 * reaction_ROSgenerationSmallAggD1);
	
% Species:   id = AggD2, name = AggD2, affected by kineticLaw
	xdot(107) = ( 1.0 * reaction_AggregationAsynDam2) + (-1.0 * reaction_AggregationAsynDam3) + ( 1.0 * reaction_DisaggregationAsynDam3) + (-1.0 * reaction_DisaggregationAsynDam4) + (-1.0 * reaction_AggD2ProteasomeInhibition) + (-1.0 * reaction_ROSgenerationSmallAggD2) + ( 1.0 * reaction_ROSgenerationSmallAggD2);
	
% Species:   id = AggD3, name = AggD3, affected by kineticLaw
	xdot(108) = ( 1.0 * reaction_AggregationAsynDam3) + (-1.0 * reaction_AggregationAsynDam4) + ( 1.0 * reaction_DisaggregationAsynDam2) + (-1.0 * reaction_DisaggregationAsynDam3) + (-1.0 * reaction_AggD3ProteasomeInhibition) + (-1.0 * reaction_ROSgenerationSmallAggD3) + ( 1.0 * reaction_ROSgenerationSmallAggD3);
	
% Species:   id = AggD4, name = AggD4, affected by kineticLaw
	xdot(109) = ( 1.0 * reaction_AggregationAsynDam4) + (-1.0 * reaction_AggregationAsynDam5) + ( 1.0 * reaction_DisaggregationAsynDam1) + (-1.0 * reaction_DisaggregationAsynDam2) + (-1.0 * reaction_AggD4ProteasomeInhibition) + (-1.0 * reaction_ROSgenerationSmallAggD4) + ( 1.0 * reaction_ROSgenerationSmallAggD4);
	
% Species:   id = AggD5, name = AggD5, affected by kineticLaw
	xdot(110) = ( 1.0 * reaction_AggregationAsynDam5) + (-1.0 * reaction_DisaggregationAsynDam1) + (-1.0 * reaction_AggD5ProteasomeInhibition) + (-1.0 * reaction_AsynDamInclusionFormation) + (-1.0 * reaction_ROSgenerationSmallAggD5) + ( 1.0 * reaction_ROSgenerationSmallAggD5);
	
% Species:   id = AggU1, name = AggU1, affected by kineticLaw
	xdot(111) = ( 1.0 * reaction_AggregationUCHL1Dam1) + (-1.0 * reaction_AggregationUCHL1Dam2) + ( 1.0 * reaction_DisaggregationUCHL1Dam4) + (-1.0 * reaction_DisaggregationUCHL1Dam5) + (-1.0 * reaction_AggU1ProteasomeInhibition) + (-1.0 * reaction_ROSgenerationSmallAggU1) + ( 1.0 * reaction_ROSgenerationSmallAggU1);
	
% Species:   id = AggU2, name = AggU2, affected by kineticLaw
	xdot(112) = ( 1.0 * reaction_AggregationUCHL1Dam2) + (-1.0 * reaction_AggregationUCHL1Dam3) + ( 1.0 * reaction_DisaggregationUCHL1Dam3) + (-1.0 * reaction_DisaggregationUCHL1Dam4) + (-1.0 * reaction_AggU2ProteasomeInhibition) + (-1.0 * reaction_ROSgenerationSmallAggU2) + ( 1.0 * reaction_ROSgenerationSmallAggU2);
	
% Species:   id = AggU3, name = AggU3, affected by kineticLaw
	xdot(113) = ( 1.0 * reaction_AggregationUCHL1Dam3) + (-1.0 * reaction_AggregationUCHL1Dam4) + ( 1.0 * reaction_DisaggregationUCHL1Dam2) + (-1.0 * reaction_DisaggregationUCHL1Dam3) + (-1.0 * reaction_AggU3ProteasomeInhibition) + (-1.0 * reaction_ROSgenerationSmallAggU3) + ( 1.0 * reaction_ROSgenerationSmallAggU3);
	
% Species:   id = AggU4, name = AggU4, affected by kineticLaw
	xdot(114) = ( 1.0 * reaction_AggregationUCHL1Dam4) + (-1.0 * reaction_AggregationUCHL1Dam5) + ( 1.0 * reaction_DisaggregationUCHL1Dam1) + (-1.0 * reaction_DisaggregationUCHL1Dam2) + (-1.0 * reaction_AggU4ProteasomeInhibition) + (-1.0 * reaction_ROSgenerationSmallAggU4) + ( 1.0 * reaction_ROSgenerationSmallAggU4);
	
% Species:   id = AggU5, name = AggU5, affected by kineticLaw
	xdot(115) = ( 1.0 * reaction_AggregationUCHL1Dam5) + (-1.0 * reaction_DisaggregationUCHL1Dam1) + (-1.0 * reaction_AggU5ProteasomeInhibition) + (-1.0 * reaction_UCHL1DamInclusionFormation) + (-1.0 * reaction_ROSgenerationSmallAggU5) + ( 1.0 * reaction_ROSgenerationSmallAggU5);
	
% Species:   id = AggS1, name = AggS1, affected by kineticLaw
	xdot(116) = ( 1.0 * reaction_SUBAggregation1) + (-1.0 * reaction_SUBAggregation2) + ( 1.0 * reaction_SUBDisaggregation4) + (-1.0 * reaction_SUBDisaggregation5) + (-1.0 * reaction_AggS1ProteasomeInhibition) + (-1.0 * reaction_ROSgenerationSmallAggS1) + ( 1.0 * reaction_ROSgenerationSmallAggS1);
	
% Species:   id = AggS2, name = AggS2, affected by kineticLaw
	xdot(117) = ( 1.0 * reaction_SUBAggregation2) + (-1.0 * reaction_SUBAggregation3) + ( 1.0 * reaction_SUBDisaggregation3) + (-1.0 * reaction_SUBDisaggregation4) + (-1.0 * reaction_AggS2ProteasomeInhibition) + (-1.0 * reaction_ROSgenerationSmallAggS2) + ( 1.0 * reaction_ROSgenerationSmallAggS2);
	
% Species:   id = AggS3, name = AggS3, affected by kineticLaw
	xdot(118) = ( 1.0 * reaction_SUBAggregation3) + (-1.0 * reaction_SUBAggregation4) + ( 1.0 * reaction_SUBDisaggregation2) + (-1.0 * reaction_SUBDisaggregation3) + (-1.0 * reaction_AggS3ProteasomeInhibition) + (-1.0 * reaction_ROSgenerationSmallAggS3) + ( 1.0 * reaction_ROSgenerationSmallAggS3);
	
% Species:   id = AggS4, name = AggS4, affected by kineticLaw
	xdot(119) = ( 1.0 * reaction_SUBAggregation4) + (-1.0 * reaction_SUBAggregation5) + ( 1.0 * reaction_SUBDisaggregation1) + (-1.0 * reaction_SUBDisaggregation2) + (-1.0 * reaction_AggS4ProteasomeInhibition) + (-1.0 * reaction_ROSgenerationSmallAggS4) + ( 1.0 * reaction_ROSgenerationSmallAggS4);
	
% Species:   id = AggS5, name = AggS5, affected by kineticLaw
	xdot(120) = ( 1.0 * reaction_SUBAggregation5) + (-1.0 * reaction_SUBDisaggregation1) + (-1.0 * reaction_AggS5ProteasomeInhibition) + (-1.0 * reaction_SUBInclusionFormation) + (-1.0 * reaction_ROSgenerationSmallAggS5) + ( 1.0 * reaction_ROSgenerationSmallAggS5);
	
% Species:   id = aggasyn, name = aggasyn, affected by kineticLaw
	xdot(121) = ( 7.0 * reaction_AsynInclusionFormation) + ( 1.0 * reaction_AsynInclusionGrowth);
	
% Species:   id = aggasyndam, name = aggasyndam, affected by kineticLaw
	xdot(122) = ( 7.0 * reaction_AsynDamInclusionFormation) + ( 1.0 * reaction_AsynDamInclusionGrowth1) + ( 1.0 * reaction_AsynDamInclusionGrowth2) + ( 1.0 * reaction_AsynDamInclusionGrowth3) + ( 1.0 * reaction_AsynDamInclusionGrowth4) + ( 1.0 * reaction_AsynDamInclusionGrowth5) + ( 1.0 * reaction_AsynDamInclusionGrowth6) + ( 1.0 * reaction_AsynDamInclusionGrowth7) + ( 1.0 * reaction_AsynDamInclusionGrowth8) + ( 1.0 * reaction_AsynDamInclusionGrowth9) + ( 1.0 * reaction_AsynDamInclusionGrowth10) + ( 1.0 * reaction_AsynDamInclusionGrowth11) + ( 1.0 * reaction_AsynDamInclusionGrowth12) + ( 1.0 * reaction_AsynDamInclusionGrowth13) + ( 1.0 * reaction_AsynDamInclusionGrowth14) + ( 1.0 * reaction_AsynDamInclusionGrowth15) + ( 1.0 * reaction_AsynDamInclusionGrowth16) + ( 1.0 * reaction_AsynDamInclusionGrowth17) + ( 1.0 * reaction_AsynDamInclusionGrowth18);
	
% Species:   id = aggParkin, name = aggParkin, affected by kineticLaw
	xdot(123) = ( 1.0 * reaction_AsynDamInclusionGrowth2) + ( 1.0 * reaction_AsynDamInclusionGrowth3) + ( 1.0 * reaction_AsynDamInclusionGrowth4) + ( 1.0 * reaction_AsynDamInclusionGrowth5) + ( 1.0 * reaction_AsynDamInclusionGrowth6) + ( 1.0 * reaction_AsynDamInclusionGrowth7) + ( 1.0 * reaction_AsynDamInclusionGrowth8) + ( 1.0 * reaction_AsynDamInclusionGrowth9) + ( 1.0 * reaction_AsynDamInclusionGrowth10) + ( 1.0 * reaction_AsynDamInclusionGrowth11) + ( 1.0 * reaction_AsynDamInclusionGrowth12) + ( 1.0 * reaction_AsynDamInclusionGrowth13) + ( 1.0 * reaction_AsynDamInclusionGrowth14) + ( 1.0 * reaction_AsynDamInclusionGrowth15) + ( 1.0 * reaction_AsynDamInclusionGrowth16) + ( 1.0 * reaction_AsynDamInclusionGrowth17) + ( 1.0 * reaction_AsynDamInclusionGrowth18);
	
% Species:   id = aggUb, name = aggUb, affected by kineticLaw
	xdot(124) = ( 1.0 * reaction_InclusionGrowth3) + ( 2.0 * reaction_InclusionGrowth4) + ( 3.0 * reaction_InclusionGrowth5) + ( 4.0 * reaction_InclusionGrowth6) + ( 5.0 * reaction_InclusionGrowth7) + ( 6.0 * reaction_InclusionGrowth8) + ( 7.0 * reaction_InclusionGrowth9) + ( 8.0 * reaction_InclusionGrowth10) + ( 1.0 * reaction_InclusionGrowth11) + ( 2.0 * reaction_InclusionGrowth12) + ( 3.0 * reaction_InclusionGrowth13) + ( 4.0 * reaction_InclusionGrowth14) + ( 5.0 * reaction_InclusionGrowth15) + ( 6.0 * reaction_InclusionGrowth16) + ( 7.0 * reaction_InclusionGrowth17) + ( 8.0 * reaction_InclusionGrowth18) + ( 1.0 * reaction_AsynDamInclusionGrowth3) + ( 2.0 * reaction_AsynDamInclusionGrowth4) + ( 3.0 * reaction_AsynDamInclusionGrowth5) + ( 4.0 * reaction_AsynDamInclusionGrowth6) + ( 5.0 * reaction_AsynDamInclusionGrowth7) + ( 6.0 * reaction_AsynDamInclusionGrowth8) + ( 7.0 * reaction_AsynDamInclusionGrowth9) + ( 8.0 * reaction_AsynDamInclusionGrowth10) + ( 1.0 * reaction_AsynDamInclusionGrowth11) + ( 2.0 * reaction_AsynDamInclusionGrowth12) + ( 3.0 * reaction_AsynDamInclusionGrowth13) + ( 4.0 * reaction_AsynDamInclusionGrowth14) + ( 5.0 * reaction_AsynDamInclusionGrowth15) + ( 6.0 * reaction_AsynDamInclusionGrowth16) + ( 7.0 * reaction_AsynDamInclusionGrowth17) + ( 8.0 * reaction_AsynDamInclusionGrowth18) + ( 1.0 * reaction_SUBInclusionGrowth2) + ( 2.0 * reaction_SUBInclusionGrowth3) + ( 3.0 * reaction_SUBInclusionGrowth4) + ( 4.0 * reaction_SUBInclusionGrowth5) + ( 5.0 * reaction_SUBInclusionGrowth6) + ( 6.0 * reaction_SUBInclusionGrowth7) + ( 7.0 * reaction_SUBInclusionGrowth8) + ( 8.0 * reaction_SUBInclusionGrowth9) + ( 1.0 * reaction_SUBInclusionGrowth10) + ( 2.0 * reaction_SUBInclusionGrowth11) + ( 3.0 * reaction_SUBInclusionGrowth12) + ( 4.0 * reaction_SUBInclusionGrowth13) + ( 5.0 * reaction_SUBInclusionGrowth14) + ( 6.0 * reaction_SUBInclusionGrowth15) + ( 7.0 * reaction_SUBInclusionGrowth16) + ( 8.0 * reaction_SUBInclusionGrowth17);
	
% Species:   id = aggE3, name = aggE3, affected by kineticLaw
	xdot(125) = ( 1.0 * reaction_InclusionGrowth2) + ( 1.0 * reaction_InclusionGrowth3) + ( 1.0 * reaction_InclusionGrowth4) + ( 1.0 * reaction_InclusionGrowth5) + ( 1.0 * reaction_InclusionGrowth6) + ( 1.0 * reaction_InclusionGrowth7) + ( 1.0 * reaction_InclusionGrowth8) + ( 1.0 * reaction_InclusionGrowth9) + ( 1.0 * reaction_InclusionGrowth10) + ( 1.0 * reaction_InclusionGrowth11) + ( 1.0 * reaction_InclusionGrowth12) + ( 1.0 * reaction_InclusionGrowth13) + ( 1.0 * reaction_InclusionGrowth14) + ( 1.0 * reaction_InclusionGrowth15) + ( 1.0 * reaction_InclusionGrowth16) + ( 1.0 * reaction_InclusionGrowth17) + ( 1.0 * reaction_InclusionGrowth18);
	
% Species:   id = aggDUB, name = aggDUB, affected by kineticLaw
	xdot(126) = ( 1.0 * reaction_InclusionGrowth11) + ( 1.0 * reaction_InclusionGrowth12) + ( 1.0 * reaction_InclusionGrowth13) + ( 1.0 * reaction_InclusionGrowth14) + ( 1.0 * reaction_InclusionGrowth15) + ( 1.0 * reaction_InclusionGrowth16) + ( 1.0 * reaction_InclusionGrowth17) + ( 1.0 * reaction_InclusionGrowth18);
	
% Species:   id = aggMisP, name = aggMisP, affected by kineticLaw
	xdot(127) = ( 7.0 * reaction_InclusionFormation) + ( 1.0 * reaction_InclusionGrowth1) + ( 1.0 * reaction_InclusionGrowth2) + ( 1.0 * reaction_InclusionGrowth3) + ( 1.0 * reaction_InclusionGrowth4) + ( 1.0 * reaction_InclusionGrowth5) + ( 1.0 * reaction_InclusionGrowth6) + ( 1.0 * reaction_InclusionGrowth7) + ( 1.0 * reaction_InclusionGrowth8) + ( 1.0 * reaction_InclusionGrowth9) + ( 1.0 * reaction_InclusionGrowth11) + ( 1.0 * reaction_InclusionGrowth12) + ( 1.0 * reaction_InclusionGrowth13) + ( 1.0 * reaction_InclusionGrowth14) + ( 1.0 * reaction_InclusionGrowth15) + ( 1.0 * reaction_InclusionGrowth16) + ( 1.0 * reaction_InclusionGrowth17) + ( 1.0 * reaction_InclusionGrowth18);
	
% Species:   id = aggUchl1, name = aggUchl1, affected by kineticLaw
	xdot(128) = ( 1.0 * reaction_SUBInclusionGrowth10) + ( 1.0 * reaction_SUBInclusionGrowth11) + ( 1.0 * reaction_SUBInclusionGrowth12) + ( 1.0 * reaction_SUBInclusionGrowth13) + ( 1.0 * reaction_SUBInclusionGrowth14) + ( 1.0 * reaction_SUBInclusionGrowth15) + ( 1.0 * reaction_SUBInclusionGrowth16) + ( 1.0 * reaction_SUBInclusionGrowth17);
	
% Species:   id = aggUchl1dam, name = aggUchl1dam, affected by kineticLaw
	xdot(129) = ( 7.0 * reaction_UCHL1DamInclusionFormation) + ( 1.0 * reaction_UCHL1DamagedSequestering) + ( 1.0 * reaction_UCHL1DamagedLamp2aSequestering);
	
% Species:   id = aggSUB, name = aggSUB, affected by kineticLaw
	xdot(130) = ( 7.0 * reaction_SUBInclusionFormation) + ( 1.0 * reaction_SUBInclusionGrowth0) + ( 1.0 * reaction_SUBInclusionGrowth1) + ( 1.0 * reaction_SUBInclusionGrowth2) + ( 1.0 * reaction_SUBInclusionGrowth3) + ( 1.0 * reaction_SUBInclusionGrowth4) + ( 1.0 * reaction_SUBInclusionGrowth5) + ( 1.0 * reaction_SUBInclusionGrowth6) + ( 1.0 * reaction_SUBInclusionGrowth7) + ( 1.0 * reaction_SUBInclusionGrowth8) + ( 1.0 * reaction_SUBInclusionGrowth9) + ( 1.0 * reaction_SUBInclusionGrowth10) + ( 1.0 * reaction_SUBInclusionGrowth11) + ( 1.0 * reaction_SUBInclusionGrowth12) + ( 1.0 * reaction_SUBInclusionGrowth13) + ( 1.0 * reaction_SUBInclusionGrowth14) + ( 1.0 * reaction_SUBInclusionGrowth15) + ( 1.0 * reaction_SUBInclusionGrowth16) + ( 1.0 * reaction_SUBInclusionGrowth17);
	
% Species:   id = upregUb, name = upregUb, affected by kineticLaw
	xdot(131) = ( 3.0 * reaction_UbUpregulation);
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


