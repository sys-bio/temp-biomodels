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
% Model name = Proctor2013 - Effect of A? immunisation in Alzheimer's disease (deterministic version)
%
% is http://identifiers.org/biomodels.db/MODEL1212030000
% is http://identifiers.org/biomodels.db/BIOMD0000000488
% isDescribedBy http://identifiers.org/pubmed/24098635
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000462
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000286
%


function main()
%Initial conditions vector
	x0=zeros(64,1);
	x0(1) = 5.0;
	x0(2) = 5.0;
	x0(3) = 95.0;
	x0(4) = 10.0;
	x0(5) = 10.0;
	x0(6) = 0.0;
	x0(7) = 200.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 100.0;
	x0(14) = 100.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 500.0;
	x0(18) = 4000.0;
	x0(19) = 200.0;
	x0(20) = 200.0;
	x0(21) = 200.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
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
	x0(38) = 500.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 0.0;
	x0(46) = 0.0;
	x0(47) = 100.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 50.0;
	x0(52) = 0.0;
	x0(53) = 0.0;
	x0(54) = 0.0;
	x0(55) = 100.0;
	x0(56) = 0.0;
	x0(57) = 0.0;
	x0(58) = 0.0;
	x0(59) = 0.0;
	x0(60) = 0.0;
	x0(61) = 0.0;
	x0(62) = 0.0;
	x0(63) = 0.0;
	x0(64) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  ksynp53mRNA, name = ksynp53mRNA
	global_par_ksynp53mRNA=0.001;
% Parameter:   id =  kdegp53mRNA, name = kdegp53mRNA
	global_par_kdegp53mRNA=1.0E-4;
% Parameter:   id =  ksynMdm2mRNA, name = ksynMdm2mRNA
	global_par_ksynMdm2mRNA=5.0E-4;
% Parameter:   id =  kdegMdm2mRNA, name = kdegMdm2mRNA
	global_par_kdegMdm2mRNA=5.0E-4;
% Parameter:   id =  ksynMdm2mRNAGSK3bp53, name = ksynMdm2mRNAGSK3bp53
	global_par_ksynMdm2mRNAGSK3bp53=7.0E-4;
% Parameter:   id =  ksynp53, name = ksynp53
	global_par_ksynp53=0.007;
% Parameter:   id =  kdegp53, name = kdegp53
	global_par_kdegp53=0.005;
% Parameter:   id =  kbinMdm2p53, name = kbinMdm2p53
	global_par_kbinMdm2p53=0.001155;
% Parameter:   id =  krelMdm2p53, name = krelMdm2p53
	global_par_krelMdm2p53=1.155E-5;
% Parameter:   id =  kbinGSK3bp53, name = kbinGSK3bp53
	global_par_kbinGSK3bp53=2.0E-6;
% Parameter:   id =  krelGSK3bp53, name = krelGSK3bp53
	global_par_krelGSK3bp53=0.002;
% Parameter:   id =  ksynMdm2, name = ksynMdm2
	global_par_ksynMdm2=4.95E-4;
% Parameter:   id =  kdegMdm2, name = kdegMdm2
	global_par_kdegMdm2=0.01;
% Parameter:   id =  kbinE1Ub, name = kbinE1Ub
	global_par_kbinE1Ub=2.0E-4;
% Parameter:   id =  kbinE2Ub, name = kbinE2Ub
	global_par_kbinE2Ub=0.001;
% Parameter:   id =  kp53Ub, name = kp53Ub
	global_par_kp53Ub=5.0E-5;
% Parameter:   id =  kp53PolyUb, name = kp53PolyUb
	global_par_kp53PolyUb=0.01;
% Parameter:   id =  kbinProt, name = kbinProt
	global_par_kbinProt=2.0E-6;
% Parameter:   id =  kactDUBp53, name = kactDUBp53
	global_par_kactDUBp53=1.0E-7;
% Parameter:   id =  kactDUBProtp53, name = kactDUBProtp53
	global_par_kactDUBProtp53=1.0E-4;
% Parameter:   id =  kactDUBMdm2, name = kactDUBMdm2
	global_par_kactDUBMdm2=1.0E-7;
% Parameter:   id =  kMdm2Ub, name = kMdm2Ub
	global_par_kMdm2Ub=4.56E-6;
% Parameter:   id =  kMdm2PUb, name = kMdm2PUb
	global_par_kMdm2PUb=6.84E-6;
% Parameter:   id =  kMdm2PolyUb, name = kMdm2PolyUb
	global_par_kMdm2PolyUb=0.00456;
% Parameter:   id =  kdam, name = kdam
	global_par_kdam=0.08;
% Parameter:   id =  krepair, name = krepair
	global_par_krepair=2.0E-5;
% Parameter:   id =  kactATM, name = kactATM
	global_par_kactATM=1.0E-4;
% Parameter:   id =  kinactATM, name = kinactATM
	global_par_kinactATM=5.0E-4;
% Parameter:   id =  kphosp53, name = kphosp53
	global_par_kphosp53=2.0E-4;
% Parameter:   id =  kdephosp53, name = kdephosp53
	global_par_kdephosp53=0.5;
% Parameter:   id =  kphosMdm2, name = kphosMdm2
	global_par_kphosMdm2=2.0;
% Parameter:   id =  kdephosMdm2, name = kdephosMdm2
	global_par_kdephosMdm2=0.5;
% Parameter:   id =  kphosMdm2GSK3b, name = kphosMdm2GSK3b
	global_par_kphosMdm2GSK3b=0.005;
% Parameter:   id =  kphosMdm2GSK3bp53, name = kphosMdm2GSK3bp53
	global_par_kphosMdm2GSK3bp53=0.5;
% Parameter:   id =  kphospTauGSK3bp53, name = kphospTauGSK3bp53
	global_par_kphospTauGSK3bp53=0.1;
% Parameter:   id =  kphospTauGSK3b, name = kphospTauGSK3b
	global_par_kphospTauGSK3b=2.0E-4;
% Parameter:   id =  kdephospTau, name = kdephospTau
	global_par_kdephospTau=0.01;
% Parameter:   id =  kbinMTTau, name = kbinMTTau
	global_par_kbinMTTau=0.1;
% Parameter:   id =  krelMTTau, name = krelMTTau
	global_par_krelMTTau=1.0E-4;
% Parameter:   id =  ksynTau, name = ksynTau
	global_par_ksynTau=8.0E-5;
% Parameter:   id =  kbinTauProt, name = kbinTauProt
	global_par_kbinTauProt=1.925E-7;
% Parameter:   id =  kdegTau20SProt, name = kdegTau20SProt
	global_par_kdegTau20SProt=0.01;
% Parameter:   id =  kaggTau, name = kaggTau
	global_par_kaggTau=1.0E-8;
% Parameter:   id =  kaggTauP1, name = kaggTauP1
	global_par_kaggTauP1=1.0E-8;
% Parameter:   id =  kaggTauP2, name = kaggTauP2
	global_par_kaggTauP2=1.0E-7;
% Parameter:   id =  ktangfor, name = ktangfor
	global_par_ktangfor=0.001;
% Parameter:   id =  kinhibprot, name = kinhibprot
	global_par_kinhibprot=1.0E-7;
% Parameter:   id =  ksynp53mRNAAbeta, name = ksynp53mRNAAbeta
	global_par_ksynp53mRNAAbeta=1.0E-5;
% Parameter:   id =  kdamROS, name = kdamROS
	global_par_kdamROS=1.0E-5;
% Parameter:   id =  kgenROSAbeta, name = kgenROSAbeta
	global_par_kgenROSAbeta=2.0E-5;
% Parameter:   id =  kgenROSPlaque, name = kgenROSPlaque
	global_par_kgenROSPlaque=1.0E-5;
% Parameter:   id =  kgenROSGlia, name = kgenROSGlia
	global_par_kgenROSGlia=1.0E-5;
% Parameter:   id =  kproteff, name = kproteff
% Warning parameter kproteff is not constant, it should be controlled by a Rule and/or events
	global_par_kproteff=1.0;
% Parameter:   id =  kremROS, name = kremROS
	global_par_kremROS=7.0E-5;
% Parameter:   id =  kprodAbeta, name = kprodAbeta
	global_par_kprodAbeta=1.86E-5;
% Parameter:   id =  kprodAbeta2, name = kprodAbeta2
	global_par_kprodAbeta2=1.86E-5;
% Parameter:   id =  kdegAbeta, name = kdegAbeta
	global_par_kdegAbeta=1.5E-5;
% Parameter:   id =  kaggAbeta, name = kaggAbeta
	global_par_kaggAbeta=3.0E-6;
% Parameter:   id =  kdisaggAbeta, name = kdisaggAbeta
	global_par_kdisaggAbeta=1.0E-6;
% Parameter:   id =  kdisaggAbeta1, name = kdisaggAbeta1
	global_par_kdisaggAbeta1=2.0E-4;
% Parameter:   id =  kdisaggAbeta2, name = kdisaggAbeta2
	global_par_kdisaggAbeta2=1.0E-6;
% Parameter:   id =  kdegAbetaGlia, name = kdegAbetaGlia
	global_par_kdegAbetaGlia=0.005;
% Parameter:   id =  kpf, name = kpf
	global_par_kpf=0.2;
% Parameter:   id =  kpg, name = kpg
	global_par_kpg=0.15;
% Parameter:   id =  kpghalf, name = kpghalf
	global_par_kpghalf=10.0;
% Parameter:   id =  kactglia1, name = kactglia1
	global_par_kactglia1=6.0E-7;
% Parameter:   id =  kactglia2, name = kactglia2
	global_par_kactglia2=6.0E-7;
% Parameter:   id =  kinactglia1, name = kinactglia1
	global_par_kinactglia1=5.0E-6;
% Parameter:   id =  kinactglia2, name = kinactglia2
	global_par_kinactglia2=5.0E-6;
% Parameter:   id =  kbinAbetaGlia, name = kbinAbetaGlia
	global_par_kbinAbetaGlia=1.0E-5;
% Parameter:   id =  krelAbetaGlia, name = krelAbetaGlia
	global_par_krelAbetaGlia=5.0E-5;
% Parameter:   id =  kdegAntiAb, name = kdegAntiAb
	global_par_kdegAntiAb=2.75E-6;
% Parameter:   id =  kbinAbantiAb, name = kbinAbantiAb
	global_par_kbinAbantiAb=1.0E-6;

% Reaction: id = p53mRNASynthesis
	reaction_p53mRNASynthesis=global_par_ksynp53mRNA*const_species_Source;

% Reaction: id = p53mRNADegradation
	reaction_p53mRNADegradation=global_par_kdegp53mRNA*x(5);

% Reaction: id = Mdm2Synthesis
	reaction_Mdm2Synthesis=global_par_ksynMdm2*x(4);

% Reaction: id = Mdm2mRNASynthesis1
	reaction_Mdm2mRNASynthesis1=global_par_ksynMdm2mRNA*x(2);

% Reaction: id = Mdm2mRNASynthesis2
	reaction_Mdm2mRNASynthesis2=global_par_ksynMdm2mRNA*x(8);

% Reaction: id = Mdm2mRNASynthesis3
	reaction_Mdm2mRNASynthesis3=global_par_ksynMdm2mRNAGSK3bp53*x(39);

% Reaction: id = Mdm2mRNASynthesis4
	reaction_Mdm2mRNASynthesis4=global_par_ksynMdm2mRNAGSK3bp53*x(40);

% Reaction: id = Mdm2mRNADegradation
	reaction_Mdm2mRNADegradation=global_par_kdegMdm2mRNA*x(4);

% Reaction: id = P53Mdm2Binding
	reaction_P53Mdm2Binding=global_par_kbinMdm2p53*x(2)*x(1);

% Reaction: id = P53Mdm2Release
	reaction_P53Mdm2Release=global_par_krelMdm2p53*x(3);

% Reaction: id = GSK3p53Binding
	reaction_GSK3p53Binding=global_par_kbinGSK3bp53*x(38)*x(2);

% Reaction: id = GSK3p53Release
	reaction_GSK3p53Release=global_par_krelGSK3bp53*x(39);

% Reaction: id = GSK3p53PBinding
	reaction_GSK3p53PBinding=global_par_kbinGSK3bp53*x(38)*x(8);

% Reaction: id = GSK3_p53PRelease
	reaction_GSK3_p53PRelease=global_par_krelGSK3bp53*x(40);

% Reaction: id = E1UbBinding
	reaction_E1UbBinding=global_par_kbinE1Ub*x(13)*x(18)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = E2UbBinding
	reaction_E2UbBinding=global_par_kbinE2Ub*x(14)*x(15);

% Reaction: id = Mdm2Ubiquitination
	reaction_Mdm2Ubiquitination=global_par_kMdm2Ub*x(1)*x(16);

% Reaction: id = Mdm2polyUbiquitination1
	reaction_Mdm2polyUbiquitination1=global_par_kMdm2PolyUb*x(27)*x(16);

% Reaction: id = Mdm2polyUbiquitination2
	reaction_Mdm2polyUbiquitination2=global_par_kMdm2PolyUb*x(28)*x(16);

% Reaction: id = Mdm2polyUbiquitination3
	reaction_Mdm2polyUbiquitination3=global_par_kMdm2PolyUb*x(29)*x(16);

% Reaction: id = Mdm2Deubiquitination4
	reaction_Mdm2Deubiquitination4=global_par_kactDUBMdm2*x(30)*x(20);

% Reaction: id = Mdm2Deubiquitination3
	reaction_Mdm2Deubiquitination3=global_par_kactDUBMdm2*x(29)*x(20);

% Reaction: id = Mdm2Deubiquitination2
	reaction_Mdm2Deubiquitination2=global_par_kactDUBMdm2*x(28)*x(20);

% Reaction: id = Mdm2Deubiquitination1
	reaction_Mdm2Deubiquitination1=global_par_kactDUBMdm2*x(27)*x(20);

% Reaction: id = Mdm2ProteasomeBinding1
	reaction_Mdm2ProteasomeBinding1=global_par_kbinProt*x(30)*x(17);

% Reaction: id = Mdm2Degradation
	reaction_Mdm2Degradation=global_par_kdegMdm2*x(36)*global_par_kproteff;

% Reaction: id = p53Synthesis
	reaction_p53Synthesis=global_par_ksynp53*x(5);

% Reaction: id = p53Monoubiquitination
	reaction_p53Monoubiquitination=global_par_kp53Ub*x(16)*x(3);

% Reaction: id = p53Polyubiquitination1
	reaction_p53Polyubiquitination1=global_par_kp53PolyUb*x(22)*x(16);

% Reaction: id = p53Polyubiquitination2
	reaction_p53Polyubiquitination2=global_par_kp53PolyUb*x(23)*x(16);

% Reaction: id = p53Polyubiquitination3
	reaction_p53Polyubiquitination3=global_par_kp53PolyUb*x(24)*x(16);

% Reaction: id = p53Deubiqutination4
	reaction_p53Deubiqutination4=global_par_kactDUBp53*x(25)*x(19);

% Reaction: id = p53Deubiquitination3
	reaction_p53Deubiquitination3=global_par_kactDUBp53*x(24)*x(19);

% Reaction: id = p53Deubiquitination2
	reaction_p53Deubiquitination2=global_par_kactDUBp53*x(23)*x(19);

% Reaction: id = p53Deubiquitination1
	reaction_p53Deubiquitination1=global_par_kactDUBp53*x(22)*x(19);

% Reaction: id = Mdm2GSK3phosphorylation1
	reaction_Mdm2GSK3phosphorylation1=global_par_kphosMdm2GSK3b*x(25)*x(38);

% Reaction: id = Mdm2GSK3phosphorylation2
	reaction_Mdm2GSK3phosphorylation2=global_par_kphosMdm2GSK3bp53*x(25)*x(39);

% Reaction: id = Mdm2GSK3phosphorylation3
	reaction_Mdm2GSK3phosphorylation3=global_par_kphosMdm2GSK3bp53*x(25)*x(40);

% Reaction: id = p53ProteasomeBinding1
	reaction_p53ProteasomeBinding1=global_par_kbinProt*x(26)*x(17);

% Reaction: id = Degradationp53_Ub4
	reaction_Degradationp53_Ub4=global_par_kdegp53*global_par_kproteff*x(35)*const_species_ATP/(5000+const_species_ATP);

% Reaction: id = TauMTbinding
	reaction_TauMTbinding=global_par_kbinMTTau*x(44);

% Reaction: id = TauMTrelease
	reaction_TauMTrelease=global_par_krelMTTau*x(47);

% Reaction: id = Tauphosphorylation1
	reaction_Tauphosphorylation1=global_par_kphospTauGSK3bp53*x(39)*x(44);

% Reaction: id = Tauphosphorylation2
	reaction_Tauphosphorylation2=global_par_kphospTauGSK3bp53*x(39)*x(45);

% Reaction: id = Tauphosphorylation3
	reaction_Tauphosphorylation3=global_par_kphospTauGSK3bp53*x(40)*x(44);

% Reaction: id = Tauphosphorylation4
	reaction_Tauphosphorylation4=global_par_kphospTauGSK3bp53*x(40)*x(45);

% Reaction: id = Tauphosphorylation5
	reaction_Tauphosphorylation5=global_par_kphospTauGSK3b*x(38)*x(44);

% Reaction: id = Tauphosphorylation6
	reaction_Tauphosphorylation6=global_par_kphospTauGSK3b*x(38)*x(45);

% Reaction: id = Taudephosphorylation1
	reaction_Taudephosphorylation1=global_par_kdephospTau*x(46)*x(51);

% Reaction: id = Taudephosphorylation2
	reaction_Taudephosphorylation2=global_par_kdephospTau*x(45)*x(51);

% Reaction: id = TauP1Aggregation1
	reaction_TauP1Aggregation1=global_par_kaggTauP1*x(45)^2*0.5;

% Reaction: id = TauP1Aggregation2
	reaction_TauP1Aggregation2=global_par_kaggTauP1*x(45)*x(48);

% Reaction: id = TauP2Aggregation1
	reaction_TauP2Aggregation1=global_par_kaggTauP2*x(46)^2*0.5;

% Reaction: id = TauP2Aggregation2
	reaction_TauP2Aggregation2=global_par_kaggTauP2*x(46)*x(48);

% Reaction: id = TauAggregation1
	reaction_TauAggregation1=global_par_kaggTau*x(44)^2*0.5;

% Reaction: id = TauAggregation2
	reaction_TauAggregation2=global_par_kaggTau*x(44)*x(48);

% Reaction: id = TangleFormation1
	reaction_TangleFormation1=global_par_ktangfor*x(48)^2*0.5;

% Reaction: id = TangleFormation2
	reaction_TangleFormation2=global_par_ktangfor*x(48)*x(52);

% Reaction: id = ProteasomeInhibitionAggTau
	reaction_ProteasomeInhibitionAggTau=global_par_kinhibprot*x(48)*x(17);

% Reaction: id = Abetaproduction1
	reaction_Abetaproduction1=global_par_kprodAbeta*const_species_Source;

% Reaction: id = Abetaproduction2
	reaction_Abetaproduction2=global_par_kprodAbeta2*x(39);

% Reaction: id = Abetaproduction3
	reaction_Abetaproduction3=global_par_kprodAbeta2*x(40);

% Reaction: id = ProteasomeInhibitionAbeta
	reaction_ProteasomeInhibitionAbeta=global_par_kinhibprot*x(53)*x(17);

% Reaction: id = AbetaDegradation
	reaction_AbetaDegradation=global_par_kdegAbeta*x(41);

% Reaction: id = p53transcriptionViaAbeta
	reaction_p53transcriptionViaAbeta=global_par_ksynp53mRNAAbeta*x(41);

% Reaction: id = DNAdamage
	reaction_DNAdamage=global_par_kdam*x(10);

% Reaction: id = DNArepair
	reaction_DNArepair=global_par_krepair*x(12);

% Reaction: id = ATMactivation
	reaction_ATMactivation=global_par_kactATM*x(12)*x(7);

% Reaction: id = p53phosphorylation
	reaction_p53phosphorylation=global_par_kphosp53*x(2)*x(6);

% Reaction: id = p53dephosphorylation
	reaction_p53dephosphorylation=global_par_kdephosp53*x(8);

% Reaction: id = Mdm2phosphorylation
	reaction_Mdm2phosphorylation=global_par_kphosMdm2*x(1)*x(6);

% Reaction: id = Mdm2dephosphorylation
	reaction_Mdm2dephosphorylation=global_par_kdephosMdm2*x(9);

% Reaction: id = Mdm2PUbiquitination
	reaction_Mdm2PUbiquitination=global_par_kMdm2PUb*x(9)*x(16);

% Reaction: id = Mdm2PpolyUbiquitination1
	reaction_Mdm2PpolyUbiquitination1=global_par_kMdm2PolyUb*x(31)*x(16);

% Reaction: id = Mdm2PpolyUbiquitination2
	reaction_Mdm2PpolyUbiquitination2=global_par_kMdm2PolyUb*x(32)*x(16);

% Reaction: id = Mdm2PpolyUbiquitination3
	reaction_Mdm2PpolyUbiquitination3=global_par_kMdm2PolyUb*x(33)*x(16);

% Reaction: id = Mdm2PDeubiquitination4
	reaction_Mdm2PDeubiquitination4=global_par_kactDUBMdm2*x(34)*x(20);

% Reaction: id = Mdm2PDeubiquitination3
	reaction_Mdm2PDeubiquitination3=global_par_kactDUBMdm2*x(33)*x(20);

% Reaction: id = Mdm2PDeubiquitination2
	reaction_Mdm2PDeubiquitination2=global_par_kactDUBMdm2*x(32)*x(20);

% Reaction: id = Mdm2PDeubiquitination1
	reaction_Mdm2PDeubiquitination1=global_par_kactDUBMdm2*x(31)*x(20);

% Reaction: id = Mdm2PProteasomeBinding1
	reaction_Mdm2PProteasomeBinding1=global_par_kbinProt*x(34)*x(17);

% Reaction: id = Mdm2PDegradation
	reaction_Mdm2PDegradation=global_par_kdegMdm2*x(37)*global_par_kproteff;

% Reaction: id = ATMInactivation
	reaction_ATMInactivation=global_par_kinactATM*x(6);

% Reaction: id = AbetaROSproduction1
	reaction_AbetaROSproduction1=global_par_kgenROSAbeta*x(41);

% Reaction: id = PlaqueROSproduction
	reaction_PlaqueROSproduction=global_par_kgenROSPlaque*x(43);

% Reaction: id = AggAbetaROSproduction2
	reaction_AggAbetaROSproduction2=global_par_kgenROSAbeta*x(42);

% Reaction: id = ROSDNAdamage
	reaction_ROSDNAdamage=global_par_kdamROS*x(11);

% Reaction: id = TauSynthesis
	reaction_TauSynthesis=global_par_ksynTau*const_species_Source;

% Reaction: id = TauProteasomeBinding
	reaction_TauProteasomeBinding=global_par_kbinTauProt*x(44)*x(17);

% Reaction: id = Tau20SProteasomeDegradation
	reaction_Tau20SProteasomeDegradation=global_par_kdegTau20SProt*x(50);

% Reaction: id = AbetaAggregation1
	reaction_AbetaAggregation1=global_par_kaggAbeta*x(41)^2*0.5;

% Reaction: id = AbetaPlaqueFormation1
	reaction_AbetaPlaqueFormation1=global_par_kpf*x(53)^2*0.5;

% Reaction: id = AbetaPlaqueGrowth
	reaction_AbetaPlaqueGrowth=global_par_kpg*x(53)*x(43)^2/(global_par_kpghalf^2+x(43)^2);

% Reaction: id = AbetaDisaggregation1
	reaction_AbetaDisaggregation1=global_par_kdisaggAbeta*x(53);

% Reaction: id = AbetaDisaggregation3
	reaction_AbetaDisaggregation3=global_par_kdisaggAbeta1*x(43);

% Reaction: id = AbetaDisaggregation4
	reaction_AbetaDisaggregation4=global_par_kdisaggAbeta2*x(59)*x(43);

% Reaction: id = Abeta_antiAbBinding
	reaction_Abeta_antiAbBinding=global_par_kbinAbantiAb*x(41)*x(59);

% Reaction: id = AbetaDimer_antiAbBinding
	reaction_AbetaDimer_antiAbBinding=global_par_kbinAbantiAb*x(53)*x(59);

% Reaction: id = Abeta_antiAbDegredation
	reaction_Abeta_antiAbDegredation=10*global_par_kdegAbeta*x(60);

% Reaction: id = AbetaDimer_antiAbDegredation
	reaction_AbetaDimer_antiAbDegredation=10*global_par_kdegAbeta*x(61);

% Reaction: id = GliaActivationStep1
	reaction_GliaActivationStep1=global_par_kactglia1*x(55)*x(43);

% Reaction: id = GliaActivationStep2
	reaction_GliaActivationStep2=global_par_kactglia1*x(56)*x(43);

% Reaction: id = GliaActivationStep3
	reaction_GliaActivationStep3=global_par_kactglia2*x(57)*x(59);

% Reaction: id = GliaInactivationStep1
	reaction_GliaInactivationStep1=global_par_kinactglia1*x(58);

% Reaction: id = GliaInactivationStep2
	reaction_GliaInactivationStep2=global_par_kinactglia2*x(57);

% Reaction: id = GliaInactivationStep3
	reaction_GliaInactivationStep3=global_par_kinactglia2*x(56);

% Reaction: id = AbetaBindingToGlia
	reaction_AbetaBindingToGlia=global_par_kbinAbetaGlia*x(43)*x(58);

% Reaction: id = AbetaReleaseFromGlia
	reaction_AbetaReleaseFromGlia=global_par_krelAbetaGlia*x(54);

% Reaction: id = AbetaPlaqueClearanceByGlia
	reaction_AbetaPlaqueClearanceByGlia=global_par_kdegAbetaGlia*x(54);

% Reaction: id = ROSgenerationByGlia
	reaction_ROSgenerationByGlia=global_par_kgenROSGlia*x(54);

% Reaction: id = antiAbRemoval
	reaction_antiAbRemoval=global_par_kdegAntiAb*x(59);

% Reaction: id = ROSremoval
	reaction_ROSremoval=global_par_kremROS*x(11);

% Species:   id = ATP, name = ATP, constant	const_species_ATP=10000.0;

% Species:   id = ADP, name = ADP, constant	const_species_ADP=1000.0;

% Species:   id = AMP, name = AMP, constant	const_species_AMP=1000.0;

% Species:   id = Source, name = Source, constant	const_species_Source=1.0;

% Species:   id = Sink, name = Sink, constant	const_species_Sink=1.0;

%Event: id=ImmunizeCell
	event_ImmunizeCell=t >= 345600;

	if(event_ImmunizeCell) 
		x(59)=50;
	end

	xdot=zeros(64,1);
	
% Species:   id = Mdm2, name = Mdm2, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_Mdm2Synthesis) + (-1.0 * reaction_P53Mdm2Binding) + ( 1.0 * reaction_P53Mdm2Release) + (-1.0 * reaction_Mdm2Ubiquitination) + ( 1.0 * reaction_Mdm2Deubiquitination1) + ( 1.0 * reaction_p53ProteasomeBinding1) + (-1.0 * reaction_Mdm2phosphorylation) + ( 1.0 * reaction_Mdm2dephosphorylation);
	
% Species:   id = p53, name = p53, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_Mdm2mRNASynthesis1) + ( 1.0 * reaction_Mdm2mRNASynthesis1) + (-1.0 * reaction_P53Mdm2Binding) + ( 1.0 * reaction_P53Mdm2Release) + (-1.0 * reaction_GSK3p53Binding) + ( 1.0 * reaction_GSK3p53Release) + ( 1.0 * reaction_p53Synthesis) + (-1.0 * reaction_p53phosphorylation) + ( 1.0 * reaction_p53dephosphorylation);
	
% Species:   id = Mdm2_p53, name = Mdm2_p53, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_P53Mdm2Binding) + (-1.0 * reaction_P53Mdm2Release) + (-1.0 * reaction_p53Monoubiquitination) + ( 1.0 * reaction_p53Deubiquitination1);
	
% Species:   id = Mdm2_mRNA, name = Mdm2_mRNA, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_Mdm2Synthesis) + ( 1.0 * reaction_Mdm2Synthesis) + ( 1.0 * reaction_Mdm2mRNASynthesis1) + ( 1.0 * reaction_Mdm2mRNASynthesis2) + ( 1.0 * reaction_Mdm2mRNASynthesis3) + ( 1.0 * reaction_Mdm2mRNASynthesis4) + (-1.0 * reaction_Mdm2mRNADegradation);
	
% Species:   id = p53_mRNA, name = p53_mRNA, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_p53mRNASynthesis) + (-1.0 * reaction_p53mRNADegradation) + (-1.0 * reaction_p53Synthesis) + ( 1.0 * reaction_p53Synthesis) + ( 1.0 * reaction_p53transcriptionViaAbeta);
	
% Species:   id = ATMA, name = ATMA, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_ATMactivation) + (-1.0 * reaction_p53phosphorylation) + ( 1.0 * reaction_p53phosphorylation) + (-1.0 * reaction_Mdm2phosphorylation) + ( 1.0 * reaction_Mdm2phosphorylation) + (-1.0 * reaction_ATMInactivation);
	
% Species:   id = ATMI, name = ATMI, affected by kineticLaw
	xdot(7) = (-1.0 * reaction_ATMactivation) + ( 1.0 * reaction_ATMInactivation);
	
% Species:   id = p53_P, name = p53_P, affected by kineticLaw
	xdot(8) = (-1.0 * reaction_Mdm2mRNASynthesis2) + ( 1.0 * reaction_Mdm2mRNASynthesis2) + (-1.0 * reaction_GSK3p53PBinding) + ( 1.0 * reaction_GSK3_p53PRelease) + ( 1.0 * reaction_p53phosphorylation) + (-1.0 * reaction_p53dephosphorylation);
	
% Species:   id = Mdm2_P, name = Mdm2_P, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_Mdm2phosphorylation) + (-1.0 * reaction_Mdm2dephosphorylation) + (-1.0 * reaction_Mdm2PUbiquitination) + ( 1.0 * reaction_Mdm2PDeubiquitination1);
	
% Species:   id = IR, name = IR, affected by kineticLaw
	xdot(10) = (-1.0 * reaction_DNAdamage) + ( 1.0 * reaction_DNAdamage);
	
% Species:   id = ROS, name = ROS, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_AbetaROSproduction1) + ( 1.0 * reaction_PlaqueROSproduction) + ( 1.0 * reaction_AggAbetaROSproduction2) + (-1.0 * reaction_ROSDNAdamage) + ( 1.0 * reaction_ROSDNAdamage) + ( 1.0 * reaction_ROSgenerationByGlia) + (-1.0 * reaction_ROSremoval);
	
% Species:   id = damDNA, name = damDNA, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_DNAdamage) + (-1.0 * reaction_DNArepair) + (-1.0 * reaction_ATMactivation) + ( 1.0 * reaction_ATMactivation) + ( 1.0 * reaction_ROSDNAdamage);
	
% Species:   id = E1, name = E1, affected by kineticLaw
	xdot(13) = (-1.0 * reaction_E1UbBinding) + ( 1.0 * reaction_E2UbBinding);
	
% Species:   id = E2, name = E2, affected by kineticLaw
	xdot(14) = (-1.0 * reaction_E2UbBinding) + ( 1.0 * reaction_Mdm2Ubiquitination) + ( 1.0 * reaction_Mdm2polyUbiquitination1) + ( 1.0 * reaction_Mdm2polyUbiquitination2) + ( 1.0 * reaction_Mdm2polyUbiquitination3) + ( 1.0 * reaction_p53Monoubiquitination) + ( 1.0 * reaction_p53Polyubiquitination1) + ( 1.0 * reaction_p53Polyubiquitination2) + ( 1.0 * reaction_p53Polyubiquitination3) + ( 1.0 * reaction_Mdm2PUbiquitination) + ( 1.0 * reaction_Mdm2PpolyUbiquitination1) + ( 1.0 * reaction_Mdm2PpolyUbiquitination2) + ( 1.0 * reaction_Mdm2PpolyUbiquitination3);
	
% Species:   id = E1_Ub, name = E1_Ub, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_E1UbBinding) + (-1.0 * reaction_E2UbBinding);
	
% Species:   id = E2_Ub, name = E2_Ub, affected by kineticLaw
	xdot(16) = ( 1.0 * reaction_E2UbBinding) + (-1.0 * reaction_Mdm2Ubiquitination) + (-1.0 * reaction_Mdm2polyUbiquitination1) + (-1.0 * reaction_Mdm2polyUbiquitination2) + (-1.0 * reaction_Mdm2polyUbiquitination3) + (-1.0 * reaction_p53Monoubiquitination) + (-1.0 * reaction_p53Polyubiquitination1) + (-1.0 * reaction_p53Polyubiquitination2) + (-1.0 * reaction_p53Polyubiquitination3) + (-1.0 * reaction_Mdm2PUbiquitination) + (-1.0 * reaction_Mdm2PpolyUbiquitination1) + (-1.0 * reaction_Mdm2PpolyUbiquitination2) + (-1.0 * reaction_Mdm2PpolyUbiquitination3);
	
% Species:   id = Proteasome, name = Proteasome, affected by kineticLaw
	xdot(17) = (-1.0 * reaction_Mdm2ProteasomeBinding1) + ( 1.0 * reaction_Mdm2Degradation) + (-1.0 * reaction_p53ProteasomeBinding1) + ( 1.0 * reaction_Degradationp53_Ub4) + (-1.0 * reaction_ProteasomeInhibitionAggTau) + (-1.0 * reaction_ProteasomeInhibitionAbeta) + (-1.0 * reaction_Mdm2PProteasomeBinding1) + ( 1.0 * reaction_Mdm2PDegradation) + (-1.0 * reaction_TauProteasomeBinding) + ( 1.0 * reaction_Tau20SProteasomeDegradation);
	
% Species:   id = Ub, name = Ub, affected by kineticLaw
	xdot(18) = (-1.0 * reaction_E1UbBinding) + ( 1.0 * reaction_Mdm2Deubiquitination4) + ( 1.0 * reaction_Mdm2Deubiquitination3) + ( 1.0 * reaction_Mdm2Deubiquitination2) + ( 1.0 * reaction_Mdm2Deubiquitination1) + ( 4.0 * reaction_Mdm2Degradation) + ( 1.0 * reaction_p53Deubiqutination4) + ( 1.0 * reaction_p53Deubiquitination3) + ( 1.0 * reaction_p53Deubiquitination2) + ( 1.0 * reaction_p53Deubiquitination1) + ( 4.0 * reaction_Degradationp53_Ub4) + ( 1.0 * reaction_Mdm2PDeubiquitination4) + ( 1.0 * reaction_Mdm2PDeubiquitination3) + ( 1.0 * reaction_Mdm2PDeubiquitination2) + ( 1.0 * reaction_Mdm2PDeubiquitination1) + ( 4.0 * reaction_Mdm2PDegradation);
	
% Species:   id = p53DUB, name = p53DUB, affected by kineticLaw
	xdot(19) = (-1.0 * reaction_p53Deubiqutination4) + ( 1.0 * reaction_p53Deubiqutination4) + (-1.0 * reaction_p53Deubiquitination3) + ( 1.0 * reaction_p53Deubiquitination3) + (-1.0 * reaction_p53Deubiquitination2) + ( 1.0 * reaction_p53Deubiquitination2) + (-1.0 * reaction_p53Deubiquitination1) + ( 1.0 * reaction_p53Deubiquitination1);
	
% Species:   id = Mdm2DUB, name = Mdm2DUB, affected by kineticLaw
	xdot(20) = (-1.0 * reaction_Mdm2Deubiquitination4) + ( 1.0 * reaction_Mdm2Deubiquitination4) + (-1.0 * reaction_Mdm2Deubiquitination3) + ( 1.0 * reaction_Mdm2Deubiquitination3) + (-1.0 * reaction_Mdm2Deubiquitination2) + ( 1.0 * reaction_Mdm2Deubiquitination2) + (-1.0 * reaction_Mdm2Deubiquitination1) + ( 1.0 * reaction_Mdm2Deubiquitination1) + (-1.0 * reaction_Mdm2PDeubiquitination4) + ( 1.0 * reaction_Mdm2PDeubiquitination4) + (-1.0 * reaction_Mdm2PDeubiquitination3) + ( 1.0 * reaction_Mdm2PDeubiquitination3) + (-1.0 * reaction_Mdm2PDeubiquitination2) + ( 1.0 * reaction_Mdm2PDeubiquitination2) + (-1.0 * reaction_Mdm2PDeubiquitination1) + ( 1.0 * reaction_Mdm2PDeubiquitination1);
	
% Species:   id = DUB, name = DUB
% Warning species is not changed by either rules or reactions
	xdot(21) = ;
	
% Species:   id = Mdm2_p53_Ub, name = Mdm2_p53_Ub, affected by kineticLaw
	xdot(22) = ( 1.0 * reaction_p53Monoubiquitination) + (-1.0 * reaction_p53Polyubiquitination1) + ( 1.0 * reaction_p53Deubiquitination2) + (-1.0 * reaction_p53Deubiquitination1);
	
% Species:   id = Mdm2_p53_Ub2, name = Mdm2_p53_Ub2, affected by kineticLaw
	xdot(23) = ( 1.0 * reaction_p53Polyubiquitination1) + (-1.0 * reaction_p53Polyubiquitination2) + ( 1.0 * reaction_p53Deubiquitination3) + (-1.0 * reaction_p53Deubiquitination2);
	
% Species:   id = Mdm2_p53_Ub3, name = Mdm2_p53_Ub3, affected by kineticLaw
	xdot(24) = ( 1.0 * reaction_p53Polyubiquitination2) + (-1.0 * reaction_p53Polyubiquitination3) + ( 1.0 * reaction_p53Deubiqutination4) + (-1.0 * reaction_p53Deubiquitination3);
	
% Species:   id = Mdm2_p53_Ub4, name = Mdm2_p53_Ub4, affected by kineticLaw
	xdot(25) = ( 1.0 * reaction_p53Polyubiquitination3) + (-1.0 * reaction_p53Deubiqutination4) + (-1.0 * reaction_Mdm2GSK3phosphorylation1) + (-1.0 * reaction_Mdm2GSK3phosphorylation2) + (-1.0 * reaction_Mdm2GSK3phosphorylation3);
	
% Species:   id = Mdm2_P1_p53_Ub4, name = Mdm2_P1_p53_Ub4, affected by kineticLaw
	xdot(26) = ( 1.0 * reaction_Mdm2GSK3phosphorylation1) + ( 1.0 * reaction_Mdm2GSK3phosphorylation2) + ( 1.0 * reaction_Mdm2GSK3phosphorylation3) + (-1.0 * reaction_p53ProteasomeBinding1);
	
% Species:   id = Mdm2_Ub, name = Mdm2_Ub, affected by kineticLaw
	xdot(27) = ( 1.0 * reaction_Mdm2Ubiquitination) + (-1.0 * reaction_Mdm2polyUbiquitination1) + ( 1.0 * reaction_Mdm2Deubiquitination2) + (-1.0 * reaction_Mdm2Deubiquitination1);
	
% Species:   id = Mdm2_Ub2, name = Mdm2_Ub2, affected by kineticLaw
	xdot(28) = ( 1.0 * reaction_Mdm2polyUbiquitination1) + (-1.0 * reaction_Mdm2polyUbiquitination2) + ( 1.0 * reaction_Mdm2Deubiquitination3) + (-1.0 * reaction_Mdm2Deubiquitination2);
	
% Species:   id = Mdm2_Ub3, name = Mdm2_Ub3, affected by kineticLaw
	xdot(29) = ( 1.0 * reaction_Mdm2polyUbiquitination2) + (-1.0 * reaction_Mdm2polyUbiquitination3) + ( 1.0 * reaction_Mdm2Deubiquitination4) + (-1.0 * reaction_Mdm2Deubiquitination3);
	
% Species:   id = Mdm2_Ub4, name = Mdm2_Ub4, affected by kineticLaw
	xdot(30) = ( 1.0 * reaction_Mdm2polyUbiquitination3) + (-1.0 * reaction_Mdm2Deubiquitination4) + (-1.0 * reaction_Mdm2ProteasomeBinding1);
	
% Species:   id = Mdm2_P_Ub, name = Mdm2_P_Ub, affected by kineticLaw
	xdot(31) = ( 1.0 * reaction_Mdm2PUbiquitination) + (-1.0 * reaction_Mdm2PpolyUbiquitination1) + ( 1.0 * reaction_Mdm2PDeubiquitination2) + (-1.0 * reaction_Mdm2PDeubiquitination1);
	
% Species:   id = Mdm2_P_Ub2, name = Mdm2_P_Ub2, affected by kineticLaw
	xdot(32) = ( 1.0 * reaction_Mdm2PpolyUbiquitination1) + (-1.0 * reaction_Mdm2PpolyUbiquitination2) + ( 1.0 * reaction_Mdm2PDeubiquitination3) + (-1.0 * reaction_Mdm2PDeubiquitination2);
	
% Species:   id = Mdm2_P_Ub3, name = Mdm2_P_Ub3, affected by kineticLaw
	xdot(33) = ( 1.0 * reaction_Mdm2PpolyUbiquitination2) + (-1.0 * reaction_Mdm2PpolyUbiquitination3) + ( 1.0 * reaction_Mdm2PDeubiquitination4) + (-1.0 * reaction_Mdm2PDeubiquitination3);
	
% Species:   id = Mdm2_P_Ub4, name = Mdm2_P_Ub4, affected by kineticLaw
	xdot(34) = ( 1.0 * reaction_Mdm2PpolyUbiquitination3) + (-1.0 * reaction_Mdm2PDeubiquitination4) + (-1.0 * reaction_Mdm2PProteasomeBinding1);
	
% Species:   id = p53_Ub4_Proteasome, name = p53_Ub4_Proteasome, affected by kineticLaw
	xdot(35) = ( 1.0 * reaction_p53ProteasomeBinding1) + (-1.0 * reaction_Degradationp53_Ub4);
	
% Species:   id = Mdm2_Ub4_Proteasome, name = Mdm2_Ub4_Proteasome, affected by kineticLaw
	xdot(36) = ( 1.0 * reaction_Mdm2ProteasomeBinding1) + (-1.0 * reaction_Mdm2Degradation);
	
% Species:   id = Mdm2_P_Ub4_Proteasome, name = Mdm2_P_Ub4_Proteasome, affected by kineticLaw
	xdot(37) = ( 1.0 * reaction_Mdm2PProteasomeBinding1) + (-1.0 * reaction_Mdm2PDegradation);
	
% Species:   id = GSK3b, name = GSK3b, affected by kineticLaw
	xdot(38) = (-1.0 * reaction_GSK3p53Binding) + ( 1.0 * reaction_GSK3p53Release) + (-1.0 * reaction_GSK3p53PBinding) + ( 1.0 * reaction_GSK3_p53PRelease) + (-1.0 * reaction_Mdm2GSK3phosphorylation1) + ( 1.0 * reaction_Mdm2GSK3phosphorylation1) + (-1.0 * reaction_Tauphosphorylation5) + ( 1.0 * reaction_Tauphosphorylation5) + (-1.0 * reaction_Tauphosphorylation6) + ( 1.0 * reaction_Tauphosphorylation6);
	
% Species:   id = GSK3b_p53, name = GSK3b_p53, affected by kineticLaw
	xdot(39) = (-1.0 * reaction_Mdm2mRNASynthesis3) + ( 1.0 * reaction_Mdm2mRNASynthesis3) + ( 1.0 * reaction_GSK3p53Binding) + (-1.0 * reaction_GSK3p53Release) + (-1.0 * reaction_Mdm2GSK3phosphorylation2) + ( 1.0 * reaction_Mdm2GSK3phosphorylation2) + (-1.0 * reaction_Tauphosphorylation1) + ( 1.0 * reaction_Tauphosphorylation1) + (-1.0 * reaction_Tauphosphorylation2) + ( 1.0 * reaction_Tauphosphorylation2) + (-1.0 * reaction_Abetaproduction2) + ( 1.0 * reaction_Abetaproduction2);
	
% Species:   id = GSK3b_p53_P, name = GSK3b_p53_P, affected by kineticLaw
	xdot(40) = (-1.0 * reaction_Mdm2mRNASynthesis4) + ( 1.0 * reaction_Mdm2mRNASynthesis4) + ( 1.0 * reaction_GSK3p53PBinding) + (-1.0 * reaction_GSK3_p53PRelease) + (-1.0 * reaction_Mdm2GSK3phosphorylation3) + ( 1.0 * reaction_Mdm2GSK3phosphorylation3) + (-1.0 * reaction_Tauphosphorylation3) + ( 1.0 * reaction_Tauphosphorylation3) + (-1.0 * reaction_Tauphosphorylation4) + ( 1.0 * reaction_Tauphosphorylation4) + (-1.0 * reaction_Abetaproduction3) + ( 1.0 * reaction_Abetaproduction3);
	
% Species:   id = Abeta, name = Abeta, affected by kineticLaw
	xdot(41) = ( 1.0 * reaction_Abetaproduction1) + ( 1.0 * reaction_Abetaproduction2) + ( 1.0 * reaction_Abetaproduction3) + (-1.0 * reaction_AbetaDegradation) + (-1.0 * reaction_p53transcriptionViaAbeta) + ( 1.0 * reaction_p53transcriptionViaAbeta) + (-1.0 * reaction_AbetaROSproduction1) + ( 1.0 * reaction_AbetaROSproduction1) + (-2.0 * reaction_AbetaAggregation1) + ( 2.0 * reaction_AbetaDisaggregation1) + (-1.0 * reaction_Abeta_antiAbBinding);
	
% Species:   id = AggAbeta_Proteasome, name = AggAbeta_Proteasome, affected by kineticLaw
	xdot(42) = ( 1.0 * reaction_ProteasomeInhibitionAbeta) + (-1.0 * reaction_AggAbetaROSproduction2) + ( 1.0 * reaction_AggAbetaROSproduction2);
	
% Species:   id = AbetaPlaque, name = AbetaPlaque, affected by kineticLaw
	xdot(43) = (-1.0 * reaction_PlaqueROSproduction) + ( 1.0 * reaction_PlaqueROSproduction) + ( 1.0 * reaction_AbetaPlaqueFormation1) + (-1.0 * reaction_AbetaPlaqueGrowth) + ( 2.0 * reaction_AbetaPlaqueGrowth) + (-1.0 * reaction_AbetaDisaggregation3) + (-1.0 * reaction_AbetaDisaggregation4) + (-1.0 * reaction_GliaActivationStep1) + ( 1.0 * reaction_GliaActivationStep1) + (-1.0 * reaction_GliaActivationStep2) + ( 1.0 * reaction_GliaActivationStep2) + (-1.0 * reaction_AbetaBindingToGlia) + ( 1.0 * reaction_AbetaReleaseFromGlia);
	
% Species:   id = Tau, name = Tau, affected by kineticLaw
	xdot(44) = (-1.0 * reaction_TauMTbinding) + ( 1.0 * reaction_TauMTrelease) + (-1.0 * reaction_Tauphosphorylation1) + (-1.0 * reaction_Tauphosphorylation3) + (-1.0 * reaction_Tauphosphorylation5) + ( 1.0 * reaction_Taudephosphorylation2) + (-2.0 * reaction_TauAggregation1) + (-1.0 * reaction_TauAggregation2) + ( 1.0 * reaction_TauSynthesis) + (-1.0 * reaction_TauProteasomeBinding);
	
% Species:   id = Tau_P1, name = Tau_P1, affected by kineticLaw
	xdot(45) = ( 1.0 * reaction_Tauphosphorylation1) + (-1.0 * reaction_Tauphosphorylation2) + ( 1.0 * reaction_Tauphosphorylation3) + (-1.0 * reaction_Tauphosphorylation4) + ( 1.0 * reaction_Tauphosphorylation5) + (-1.0 * reaction_Tauphosphorylation6) + ( 1.0 * reaction_Taudephosphorylation1) + (-1.0 * reaction_Taudephosphorylation2) + (-2.0 * reaction_TauP1Aggregation1) + (-1.0 * reaction_TauP1Aggregation2);
	
% Species:   id = Tau_P2, name = Tau_P2, affected by kineticLaw
	xdot(46) = ( 1.0 * reaction_Tauphosphorylation2) + ( 1.0 * reaction_Tauphosphorylation4) + ( 1.0 * reaction_Tauphosphorylation6) + (-1.0 * reaction_Taudephosphorylation1) + (-2.0 * reaction_TauP2Aggregation1) + (-1.0 * reaction_TauP2Aggregation2);
	
% Species:   id = MT_Tau, name = MT_Tau, affected by kineticLaw
	xdot(47) = ( 1.0 * reaction_TauMTbinding) + (-1.0 * reaction_TauMTrelease);
	
% Species:   id = AggTau, name = AggTau, affected by kineticLaw
	xdot(48) = ( 2.0 * reaction_TauP1Aggregation1) + (-1.0 * reaction_TauP1Aggregation2) + ( 2.0 * reaction_TauP1Aggregation2) + ( 2.0 * reaction_TauP2Aggregation1) + (-1.0 * reaction_TauP2Aggregation2) + ( 2.0 * reaction_TauP2Aggregation2) + ( 2.0 * reaction_TauAggregation1) + (-1.0 * reaction_TauAggregation2) + ( 2.0 * reaction_TauAggregation2) + (-2.0 * reaction_TangleFormation1) + (-1.0 * reaction_TangleFormation2) + (-1.0 * reaction_ProteasomeInhibitionAggTau);
	
% Species:   id = AggTau_Proteasome, name = AggTau_Proteasome, affected by kineticLaw
	xdot(49) = ( 1.0 * reaction_ProteasomeInhibitionAggTau);
	
% Species:   id = Proteasome_Tau, name = Proteasome_Tau, affected by kineticLaw
	xdot(50) = ( 1.0 * reaction_TauProteasomeBinding) + (-1.0 * reaction_Tau20SProteasomeDegradation);
	
% Species:   id = PP1, name = PP1, affected by kineticLaw
	xdot(51) = (-1.0 * reaction_Taudephosphorylation1) + ( 1.0 * reaction_Taudephosphorylation1) + (-1.0 * reaction_Taudephosphorylation2) + ( 1.0 * reaction_Taudephosphorylation2);
	
% Species:   id = NFT, name = NFT, affected by kineticLaw
	xdot(52) = ( 2.0 * reaction_TangleFormation1) + (-1.0 * reaction_TangleFormation2) + ( 2.0 * reaction_TangleFormation2);
	
% Species:   id = AbetaDimer, name = AbetaDimer, affected by kineticLaw
	xdot(53) = (-1.0 * reaction_ProteasomeInhibitionAbeta) + ( 1.0 * reaction_AbetaAggregation1) + (-2.0 * reaction_AbetaPlaqueFormation1) + (-1.0 * reaction_AbetaPlaqueGrowth) + (-1.0 * reaction_AbetaDisaggregation1) + ( 1.0 * reaction_AbetaDisaggregation3) + ( 1.0 * reaction_AbetaDisaggregation4) + (-1.0 * reaction_AbetaDimer_antiAbBinding);
	
% Species:   id = AbetaPlaque_GliaA, name = AbetaPlaque_GliaA, affected by kineticLaw
	xdot(54) = ( 1.0 * reaction_AbetaBindingToGlia) + (-1.0 * reaction_AbetaReleaseFromGlia) + (-1.0 * reaction_AbetaPlaqueClearanceByGlia) + (-1.0 * reaction_ROSgenerationByGlia) + ( 1.0 * reaction_ROSgenerationByGlia);
	
% Species:   id = GliaI, name = GliaI, affected by kineticLaw
	xdot(55) = (-1.0 * reaction_GliaActivationStep1) + ( 1.0 * reaction_GliaInactivationStep3);
	
% Species:   id = GliaM1, name = GliaM1, affected by kineticLaw
	xdot(56) = ( 1.0 * reaction_GliaActivationStep1) + (-1.0 * reaction_GliaActivationStep2) + ( 1.0 * reaction_GliaInactivationStep2) + (-1.0 * reaction_GliaInactivationStep3);
	
% Species:   id = GliaM2, name = GliaM2, affected by kineticLaw
	xdot(57) = ( 1.0 * reaction_GliaActivationStep2) + (-1.0 * reaction_GliaActivationStep3) + ( 1.0 * reaction_GliaInactivationStep1) + (-1.0 * reaction_GliaInactivationStep2);
	
% Species:   id = GliaA, name = GliaA, affected by kineticLaw
	xdot(58) = ( 1.0 * reaction_GliaActivationStep3) + (-1.0 * reaction_GliaInactivationStep1) + (-1.0 * reaction_AbetaBindingToGlia) + ( 1.0 * reaction_AbetaReleaseFromGlia) + ( 1.0 * reaction_AbetaPlaqueClearanceByGlia);
	
% Species:   id = antiAb, name = antiAb, affected by kineticLaw
	xdot(59) = (-1.0 * reaction_AbetaDisaggregation4) + ( 1.0 * reaction_AbetaDisaggregation4) + (-1.0 * reaction_Abeta_antiAbBinding) + (-1.0 * reaction_AbetaDimer_antiAbBinding) + ( 1.0 * reaction_Abeta_antiAbDegredation) + ( 1.0 * reaction_AbetaDimer_antiAbDegredation) + (-1.0 * reaction_GliaActivationStep3) + ( 1.0 * reaction_GliaActivationStep3) + (-1.0 * reaction_antiAbRemoval);
	
% Species:   id = Abeta_antiAb, name = Abeta_antiAb, affected by kineticLaw
	xdot(60) = ( 1.0 * reaction_Abeta_antiAbBinding) + (-1.0 * reaction_Abeta_antiAbDegredation);
	
% Species:   id = AbetaDimer_antiAb, name = AbetaDimer_antiAb, affected by kineticLaw
	xdot(61) = ( 1.0 * reaction_AbetaDimer_antiAbBinding) + (-1.0 * reaction_AbetaDimer_antiAbDegredation);
	
% Species:   id = degAbetaGlia, name = degAbetaGlia, affected by kineticLaw
	xdot(62) = ( 1.0 * reaction_AbetaPlaqueClearanceByGlia);
	
% Species:   id = disaggPlaque1, name = disaggPlaque1, affected by kineticLaw
	xdot(63) = ( 1.0 * reaction_AbetaDisaggregation3);
	
% Species:   id = disaggPlaque2, name = disaggPlaque2, affected by kineticLaw
	xdot(64) = ( 1.0 * reaction_AbetaDisaggregation4);
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


