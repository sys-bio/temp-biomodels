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
% Model name = Hui2016 - Age-related changes in articular cartilage
%
% is http://identifiers.org/biomodels.db/MODEL1402200004
% is http://identifiers.org/biomodels.db/BIOMD0000000560
% isDescribedBy http://identifiers.org/pubmed/25475114
%


function main()
%Initial conditions vector
	x0=zeros(62,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 500.0;
	x0(5) = 0.0;
	x0(6) = 500.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 90.0;
	x0(10) = 10.0;
	x0(11) = 0.0;
	x0(12) = 30.0;
	x0(13) = 25.0;
	x0(14) = 0.0;
	x0(15) = 75.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 100.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 100.0;
	x0(23) = 0.0;
	x0(24) = 40.0;
	x0(25) = 360.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 100.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 2.0;
	x0(36) = 0.0;
	x0(37) = 100.0;
	x0(38) = 600.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 600.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 600.0;
	x0(45) = 0.0;
	x0(46) = 2.0;
	x0(47) = 100.0;
	x0(48) = 0.0;
	x0(49) = 10.0;
	x0(50) = 0.0;
	x0(51) = 0.0;
	x0(52) = 0.0;
	x0(53) = 0.0;
	x0(54) = 0.0;
	x0(55) = 0.0;
	x0(56) = 0.0;
	x0(57) = 1000.0;
	x0(58) = 0.0;
	x0(59) = 0.0;
	x0(60) = 0.0;
	x0(61) = 200.0;
	x0(62) = 0.0;


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
% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.0;
% Compartment: id = membrane, name = membrane, constant
	compartment_membrane=1.0;
% Compartment: id = ecm, name = ecm, constant
	compartment_ecm=1.0;
% Parameter:   id =  kactCasp, name = kactCasp
	global_par_kactCasp=1.0E-7;
% Parameter:   id =  kactCaspBecI, name = kactCaspBecI
	global_par_kactCaspBecI=8.3E-7;
% Parameter:   id =  kactCaspp38, name = kactCaspp38
	global_par_kactCaspp38=8.0E-7;
% Parameter:   id =  kactIntegrin, name = kactIntegrin
	global_par_kactIntegrin=4.0E-7;
% Parameter:   id =  kactLys, name = kactLys
	global_par_kactLys=1.0E-8;
% Parameter:   id =  kactMMP13, name = kactMMP13
	global_par_kactMMP13=1.0E-4;
% Parameter:   id =  kactMMP2, name = kactMMP2
	global_par_kactMMP2=1.0E-7;
% Parameter:   id =  kactNFkB, name = kactNFkB
	global_par_kactNFkB=1.0E-4;
% Parameter:   id =  kactRAGE, name = kactRAGE
	global_par_kactRAGE=0.001;
% Parameter:   id =  kactRunx2, name = kactRunx2
	global_par_kactRunx2=0.001;
% Parameter:   id =  kactSox9, name = kactSox9
	global_par_kactSox9=5.0E-6;
% Parameter:   id =  kactTgfbIntegrin, name = kactTgfbIntegrin
	global_par_kactTgfbIntegrin=0.001;
% Parameter:   id =  kactTgfbMMP2, name = kactTgfbMMP2
	global_par_kactTgfbMMP2=1.0E-7;
% Parameter:   id =  kbinAggrecanCollagen2, name = kbinAggrecanCollagen2
	global_par_kbinAggrecanCollagen2=1.0E-4;
% Parameter:   id =  kbinAlk1Alk5, name = kbinAlk1Alk5
	global_par_kbinAlk1Alk5=5.0E-5;
% Parameter:   id =  kbinBaxBcl2, name = kbinBaxBcl2
	global_par_kbinBaxBcl2=1.67;
% Parameter:   id =  kbinBaxToBcl2Bec, name = kbinBaxToBcl2Bec
	global_par_kbinBaxToBcl2Bec=1.67E-4;
% Parameter:   id =  kbinBcl2Beclin, name = kbinBcl2Beclin
	global_par_kbinBcl2Beclin=7.5E-5;
% Parameter:   id =  kbinBecToBaxBcl2, name = kbinBecToBaxBcl2
	global_par_kbinBecToBaxBcl2=1.67E-5;
% Parameter:   id =  kbinSmad1Smad4, name = kbinSmad1Smad4
	global_par_kbinSmad1Smad4=5.0E-5;
% Parameter:   id =  kbinSmad2Smad4, name = kbinSmad2Smad4
	global_par_kbinSmad2Smad4=1.0E-4;
% Parameter:   id =  kbinSmad7Alk1, name = kbinSmad7Alk1
	global_par_kbinSmad7Alk1=0.5;
% Parameter:   id =  kbinSmad7Alk5, name = kbinSmad7Alk5
	global_par_kbinSmad7Alk5=2.0E-5;
% Parameter:   id =  kbinTgfbAlk1, name = kbinTgfbAlk1
	global_par_kbinTgfbAlk1=2.0E-5;
% Parameter:   id =  kbinTgfbAlk5, name = kbinTgfbAlk5
	global_par_kbinTgfbAlk5=3.0E-5;
% Parameter:   id =  kdamLys, name = kdamLys
	global_par_kdamLys=5.0E-6;
% Parameter:   id =  kdamNatP, name = kdamNatP
	global_par_kdamNatP=8.0E-6;
% Parameter:   id =  kdedimerAlk5, name = kdedimerAlk5
	global_par_kdedimerAlk5=0.001;
% Parameter:   id =  kdegAcanmRNA, name = kdegAcanmRNA
	global_par_kdegAcanmRNA=9.0E-6;
% Parameter:   id =  kdegADAMTS5, name = kdegADAMTS5
	global_par_kdegADAMTS5=5.0E-5;
% Parameter:   id =  kdegAggrecan, name = kdegAggrecan
	global_par_kdegAggrecan=1.0E-9;
% Parameter:   id =  kdegAlk1, name = kdegAlk1
	global_par_kdegAlk1=1.2E-8;
% Parameter:   id =  kdegAlk5, name = kdegAlk5
	global_par_kdegAlk5=4.0E-7;
% Parameter:   id =  kdegBcl2, name = kdegBcl2
	global_par_kdegBcl2=1.67E-4;
% Parameter:   id =  kdegBcl2Casp, name = kdegBcl2Casp
	global_par_kdegBcl2Casp=0.00167;
% Parameter:   id =  kdegBcl2ROS, name = kdegBcl2ROS
	global_par_kdegBcl2ROS=0.00167;
% Parameter:   id =  kdegCol2mRNA, name = kdegCol2mRNA
	global_par_kdegCol2mRNA=1.07E-5;
% Parameter:   id =  kdegCollagen, name = kdegCollagen
	global_par_kdegCollagen=1.0E-8;
% Parameter:   id =  kdegDamP, name = kdegDamP
	global_par_kdegDamP=4.0E-5;
% Parameter:   id =  kdegIkB, name = kdegIkB
	global_par_kdegIkB=1.0E-6;
% Parameter:   id =  kdegIL1, name = kdegIL1
	global_par_kdegIL1=0.005;
% Parameter:   id =  kdegMMP13, name = kdegMMP13
	global_par_kdegMMP13=6.4E-6;
% Parameter:   id =  kdegMMP2, name = kdegMMP2
	global_par_kdegMMP2=6.4E-6;
% Parameter:   id =  kdegSmad7, name = kdegSmad7
	global_par_kdegSmad7=0.005;
% Parameter:   id =  kdegSmad7Alk1, name = kdegSmad7Alk1
	global_par_kdegSmad7Alk1=5.0E-6;
% Parameter:   id =  kdegSmad7Alk5, name = kdegSmad7Alk5
	global_par_kdegSmad7Alk5=1.0E-5;
% Parameter:   id =  kdegSOD, name = kdegSOD
	global_par_kdegSOD=0.001;
% Parameter:   id =  kdegSox9, name = kdegSox9
	global_par_kdegSox9=4.8E-5;
% Parameter:   id =  kdegSox9mRNA, name = kdegSox9mRNA
	global_par_kdegSox9mRNA=1.0E-4;
% Parameter:   id =  kdegTgfb, name = kdegTgfb
	global_par_kdegTgfb=0.00578;
% Parameter:   id =  kdephosNFkB, name = kdephosNFkB
	global_par_kdephosNFkB=0.01;
% Parameter:   id =  kdephosp38, name = kdephosp38
	global_par_kdephosp38=0.01;
% Parameter:   id =  kdephosSmad1, name = kdephosSmad1
	global_par_kdephosSmad1=5.0E-4;
% Parameter:   id =  kdephosSmad1Smad7, name = kdephosSmad1Smad7
	global_par_kdephosSmad1Smad7=6.0E-4;
% Parameter:   id =  kdephosSmad2, name = kdephosSmad2
	global_par_kdephosSmad2=0.006;
% Parameter:   id =  kdimerAlk5, name = kdimerAlk5
	global_par_kdimerAlk5=2.0E-4;
% Parameter:   id =  kgenROS, name = kgenROS
	global_par_kgenROS=5.0E-4;
% Parameter:   id =  kgenROSbyDamP, name = kgenROSbyDamP
	global_par_kgenROSbyDamP=1.0E-4;
% Parameter:   id =  kgenROSbyp38, name = kgenROSbyp38
	global_par_kgenROSbyp38=1.0E-4;
% Parameter:   id =  kgenROSbyRAGE, name = kgenROSbyRAGE
	global_par_kgenROSbyRAGE=4.0E-4;
% Parameter:   id =  kinactBec, name = kinactBec
	global_par_kinactBec=5.0E-10;
% Parameter:   id =  kinactBecCasp, name = kinactBecCasp
	global_par_kinactBecCasp=1.0E-8;
% Parameter:   id =  kinactCasp, name = kinactCasp
	global_par_kinactCasp=3.0E-4;
% Parameter:   id =  kinactCaspBcl2, name = kinactCaspBcl2
	global_par_kinactCaspBcl2=3.0E-4;
% Parameter:   id =  kinactIntegrin, name = kinactIntegrin
	global_par_kinactIntegrin=5.0E-4;
% Parameter:   id =  kinactNFkB, name = kinactNFkB
	global_par_kinactNFkB=0.1;
% Parameter:   id =  kinactRAGE, name = kinactRAGE
	global_par_kinactRAGE=0.001;
% Parameter:   id =  kinactRunx2, name = kinactRunx2
	global_par_kinactRunx2=5.0E-4;
% Parameter:   id =  kinactSox9, name = kinactSox9
	global_par_kinactSox9=0.0015;
% Parameter:   id =  kinactTgfb, name = kinactTgfb
	global_par_kinactTgfb=0.05;
% Parameter:   id =  kinhibLys, name = kinhibLys
	global_par_kinhibLys=7.0E-6;
% Parameter:   id =  kphosNFkB, name = kphosNFkB
	global_par_kphosNFkB=0.001;
% Parameter:   id =  kphosp38, name = kphosp38
	global_par_kphosp38=1.0E-7;
% Parameter:   id =  kphosp38ROS, name = kphosp38ROS
	global_par_kphosp38ROS=1.0E-4;
% Parameter:   id =  kphosSmad1, name = kphosSmad1
	global_par_kphosSmad1=2.0E-5;
% Parameter:   id =  kphosSmad2, name = kphosSmad2
	global_par_kphosSmad2=4.0E-5;
% Parameter:   id =  kprodAGE, name = kprodAGE
	global_par_kprodAGE=1.0E-6;
% Parameter:   id =  krelAlk1Alk5, name = krelAlk1Alk5
	global_par_krelAlk1Alk5=0.01;
% Parameter:   id =  krelBaxBcl2, name = krelBaxBcl2
	global_par_krelBaxBcl2=0.00167;
% Parameter:   id =  krelBaxBcl2Bec, name = krelBaxBcl2Bec
	global_par_krelBaxBcl2Bec=0.00167;
% Parameter:   id =  krelBcl2Beclin, name = krelBcl2Beclin
	global_par_krelBcl2Beclin=5.0E-4;
% Parameter:   id =  krelBecBaxBcl2, name = krelBecBaxBcl2
	global_par_krelBecBaxBcl2=0.0167;
% Parameter:   id =  krelSmad1Smad4, name = krelSmad1Smad4
	global_par_krelSmad1Smad4=0.0167;
% Parameter:   id =  krelSmad2Smad4, name = krelSmad2Smad4
	global_par_krelSmad2Smad4=0.0167;
% Parameter:   id =  krelSmad7Alk1, name = krelSmad7Alk1
	global_par_krelSmad7Alk1=0.001;
% Parameter:   id =  krelSmad7Alk5, name = krelSmad7Alk5
	global_par_krelSmad7Alk5=1.0E-6;
% Parameter:   id =  krelTgfbAlk1, name = krelTgfbAlk1
	global_par_krelTgfbAlk1=1.0E-6;
% Parameter:   id =  krelTgfbAlk5, name = krelTgfbAlk5
	global_par_krelTgfbAlk5=1.0E-6;
% Parameter:   id =  kremROS, name = kremROS
	global_par_kremROS=3.83E-4;
% Parameter:   id =  kremROSbySOD, name = kremROSbySOD
	global_par_kremROSbySOD=1.0E-4;
% Parameter:   id =  ksynAcanmRNA, name = ksynAcanmRNA
	global_par_ksynAcanmRNA=0.0;
% Parameter:   id =  ksynAcanmRNASox9A, name = ksynAcanmRNASox9A
	global_par_ksynAcanmRNASox9A=4.6E-6;
% Parameter:   id =  ksynADAMTS5, name = ksynADAMTS5
	global_par_ksynADAMTS5=5.0E-4;
% Parameter:   id =  ksynAggrecan, name = ksynAggrecan
	global_par_ksynAggrecan=1.0E-6;
% Parameter:   id =  ksynAlk1, name = ksynAlk1
	global_par_ksynAlk1=5.0E-6;
% Parameter:   id =  ksynAlk5, name = ksynAlk5
	global_par_ksynAlk5=5.0E-6;
% Parameter:   id =  ksynBcl2, name = ksynBcl2
	global_par_ksynBcl2=0.002;
% Parameter:   id =  ksynCol2, name = ksynCol2
	global_par_ksynCol2=1.0E-7;
% Parameter:   id =  ksynCol2mRNA, name = ksynCol2mRNA
	global_par_ksynCol2mRNA=0.0;
% Parameter:   id =  ksynCol2mRNASmad, name = ksynCol2mRNASmad
	global_par_ksynCol2mRNASmad=1.0E-6;
% Parameter:   id =  ksynCol2mRNASox9A, name = ksynCol2mRNASox9A
	global_par_ksynCol2mRNASox9A=1.0E-6;
% Parameter:   id =  ksynIkB, name = ksynIkB
	global_par_ksynIkB=0.001;
% Parameter:   id =  ksynIL1, name = ksynIL1
	global_par_ksynIL1=0.005;
% Parameter:   id =  ksynMMP13, name = ksynMMP13
	global_par_ksynMMP13=3.2E-5;
% Parameter:   id =  ksynMMP13Runx2, name = ksynMMP13Runx2
	global_par_ksynMMP13Runx2=1.5E-6;
% Parameter:   id =  ksynMMP2, name = ksynMMP2
	global_par_ksynMMP2=5.0E-6;
% Parameter:   id =  ksynNatP, name = ksynNatP
	global_par_ksynNatP=0.0;
% Parameter:   id =  ksynRAGE, name = ksynRAGE
	global_par_ksynRAGE=1.0E-4;
% Parameter:   id =  ksynSmad7, name = ksynSmad7
	global_par_ksynSmad7=1.0E-5;
% Parameter:   id =  ksynSOD, name = ksynSOD
	global_par_ksynSOD=0.002;
% Parameter:   id =  ksynSox9, name = ksynSox9
	global_par_ksynSox9=4.8E-4;
% Parameter:   id =  ksynSox9mRNA, name = ksynSox9mRNA
	global_par_ksynSox9mRNA=1.0E-5;
% Parameter:   id =  ksynSox9mRNASox9A, name = ksynSox9mRNASox9A
	global_par_ksynSox9mRNASox9A=5.0E-6;

% Reaction: id = CaspaseActivation
	reaction_CaspaseActivation=global_par_kactCasp*x(18)*x(8);

% Reaction: id = CaspaseActivationByBeclin_I
	reaction_CaspaseActivationByBeclin_I=global_par_kactCaspBecI*x(18)*x(16);

% Reaction: id = CaspaseActivationBy_p38
	reaction_CaspaseActivationBy_p38=global_par_kactCaspp38*x(18)*x(31);

% Reaction: id = CaspaseInactivation1
	reaction_CaspaseInactivation1=global_par_kinactCasp*x(17);

% Reaction: id = InhibitCaspase2
	reaction_InhibitCaspase2=global_par_kinactCaspBcl2*x(17)*x(13);

% Reaction: id = InhibitCaspase3
	reaction_InhibitCaspase3=global_par_kinactCaspBcl2*x(17)*x(12);

% Reaction: id = ActivateLysosome
	reaction_ActivateLysosome=global_par_kactLys*x(25)*x(15);

% Reaction: id = InhibitLysosome
	reaction_InhibitLysosome=global_par_kinhibLys*x(24);

% Reaction: id = Bcl2Synthesis
	reaction_Bcl2Synthesis=global_par_ksynBcl2*const_species_Source;

% Reaction: id = Bcl2Degradation
	reaction_Bcl2Degradation=global_par_kdegBcl2*x(12);

% Reaction: id = Bcl2DegradationStressInduced
	reaction_Bcl2DegradationStressInduced=global_par_kdegBcl2ROS*x(12)*x(35);

% Reaction: id = Bcl2DegradationCaspaseInduced
	reaction_Bcl2DegradationCaspaseInduced=global_par_kdegBcl2Casp*x(12)*x(17);

% Reaction: id = Bax_Bcl2Binding
	reaction_Bax_Bcl2Binding=global_par_kbinBaxBcl2*x(8)*x(12);

% Reaction: id = Bax_Bcl2Release
	reaction_Bax_Bcl2Release=global_par_krelBaxBcl2*x(9);

% Reaction: id = Bcl2_BeclinBinding
	reaction_Bcl2_BeclinBinding=global_par_kbinBcl2Beclin*x(12)*x(15);

% Reaction: id = Bcl2_BeclinRelease
	reaction_Bcl2_BeclinRelease=global_par_krelBcl2Beclin*x(13);

% Reaction: id = Bcl2_Beclin_I_Binding
	reaction_Bcl2_Beclin_I_Binding=global_par_kbinBcl2Beclin*x(12)*x(16);

% Reaction: id = Bcl2_Beclin_I_Release
	reaction_Bcl2_Beclin_I_Release=global_par_krelBcl2Beclin*x(14);

% Reaction: id = BeclinInactivation
	reaction_BeclinInactivation=global_par_kinactBec*x(15);

% Reaction: id = BeclinInactivationByCaspase
	reaction_BeclinInactivationByCaspase=global_par_kinactBecCasp*x(15)*x(17);

% Reaction: id = BeclinBindingToBax_Bcl2
	reaction_BeclinBindingToBax_Bcl2=global_par_kbinBecToBaxBcl2*x(15)*x(9);

% Reaction: id = BeclinIBindingToBax_Bcl2
	reaction_BeclinIBindingToBax_Bcl2=global_par_kbinBecToBaxBcl2*x(16)*x(9);

% Reaction: id = BaxBindingToBcl2_Beclin
	reaction_BaxBindingToBcl2_Beclin=global_par_kbinBaxToBcl2Bec*x(8)*x(13);

% Reaction: id = BaxBindingToBcl2_BeclinI
	reaction_BaxBindingToBcl2_BeclinI=global_par_kbinBaxToBcl2Bec*x(8)*x(14);

% Reaction: id = BaxDissociation_Bax_Bcl2_Beclin
	reaction_BaxDissociation_Bax_Bcl2_Beclin=global_par_krelBaxBcl2Bec*x(10);

% Reaction: id = BaxDissociation_Bax_Bcl2_Beclin_I
	reaction_BaxDissociation_Bax_Bcl2_Beclin_I=global_par_krelBaxBcl2Bec*x(11);

% Reaction: id = BeclinDissociation_Bax_Bcl2_Beclin
	reaction_BeclinDissociation_Bax_Bcl2_Beclin=global_par_krelBecBaxBcl2*x(10);

% Reaction: id = Beclin_I_Dissociation_Bax_Bcl2_Beclin
	reaction_Beclin_I_Dissociation_Bax_Bcl2_Beclin=global_par_krelBecBaxBcl2*x(11);

% Reaction: id = ROS_generation
	reaction_ROS_generation=global_par_kgenROS*const_species_Source;

% Reaction: id = ROS_removal
	reaction_ROS_removal=global_par_kremROS*x(35);

% Reaction: id = Protein_Damage_by_ROS
	reaction_Protein_Damage_by_ROS=global_par_kdamNatP*const_species_NatP*x(35)/(10+x(35));

% Reaction: id = Removal_DamP_by_Autophagy
	reaction_Removal_DamP_by_Autophagy=global_par_kdegDamP*x(20)*x(24);

% Reaction: id = Production_of_AGEproducts
	reaction_Production_of_AGEproducts=global_par_kprodAGE*const_species_Source;

% Reaction: id = RAGE_activation
	reaction_RAGE_activation=global_par_kactRAGE*x(3);

% Reaction: id = ROS_production_by_RAGE
	reaction_ROS_production_by_RAGE=global_par_kgenROSbyRAGE*x(34);

% Reaction: id = IkB_degradation_via_ROS
	reaction_IkB_degradation_via_ROS=global_par_kdegIkB*x(35)*x(22);

% Reaction: id = IkB_degradation_via_IL1
	reaction_IkB_degradation_via_IL1=global_par_kdegIkB*x(23)*x(22);

% Reaction: id = NFkB_inactivation
	reaction_NFkB_inactivation=global_par_kinactNFkB*x(28)*x(21);

% Reaction: id = RAGE_inactivation
	reaction_RAGE_inactivation=global_par_kinactRAGE*x(34);

% Reaction: id = RAGE_upregulation_byNFkB
	reaction_RAGE_upregulation_byNFkB=global_par_ksynRAGE*x(29);

% Reaction: id = IL1_production
	reaction_IL1_production=global_par_ksynIL1*x(29);

% Reaction: id = IL1_degradation
	reaction_IL1_degradation=global_par_kdegIL1*x(23);

% Reaction: id = IkB_production
	reaction_IkB_production=global_par_ksynIkB*x(29);

% Reaction: id = MMP13_production
	reaction_MMP13_production=global_par_ksynMMP13*x(23);

% Reaction: id = MMP13_removal
	reaction_MMP13_removal=global_par_kdegMMP13*x(26);

% Reaction: id = MMP2_production
	reaction_MMP2_production=global_par_ksynMMP2*x(23);

% Reaction: id = MMP_activation
	reaction_MMP_activation=global_par_kactMMP2*x(33);

% Reaction: id = MMP2_degradation
	reaction_MMP2_degradation=global_par_kdegMMP2*x(27);

% Reaction: id = ADAMTS5_production
	reaction_ADAMTS5_production=global_par_ksynADAMTS5*x(23);

% Reaction: id = ADAMTS5_removal
	reaction_ADAMTS5_removal=global_par_kdegADAMTS5*x(2);

% Reaction: id = Aggrecan_degradation
	reaction_Aggrecan_degradation=global_par_kdegAggrecan*x(57)*x(2);

% Reaction: id = Collagen_degradation
	reaction_Collagen_degradation=global_par_kdegCollagen*x(59)*x(26);

% Reaction: id = ROS_production_by_DamP
	reaction_ROS_production_by_DamP=global_par_kgenROSbyDamP*x(20);

% Reaction: id = Protein_synthesis
	reaction_Protein_synthesis=global_par_ksynNatP*const_species_Source;

% Reaction: id = SOD_synthesis
	reaction_SOD_synthesis=global_par_ksynSOD*x(29);

% Reaction: id = SOD_degradation
	reaction_SOD_degradation=global_par_kdegSOD*x(46);

% Reaction: id = ROS_removal_by_SOD
	reaction_ROS_removal_by_SOD=global_par_kremROSbySOD*x(46)*x(35);

% Reaction: id = p38_phosphorylation
	reaction_p38_phosphorylation=global_par_kphosp38*x(30)*x(23);

% Reaction: id = p38_phosphorylation_via_ROS
	reaction_p38_phosphorylation_via_ROS=global_par_kphosp38ROS*x(30)*x(35);

% Reaction: id = p38_dephosphorylation
	reaction_p38_dephosphorylation=global_par_kdephosp38*x(31);

% Reaction: id = NFkB_activation
	reaction_NFkB_activation=global_par_kphosNFkB*x(28)*x(31);

% Reaction: id = NFkB_dephosphorylation
	reaction_NFkB_dephosphorylation=global_par_kdephosNFkB*x(29);

% Reaction: id = ROS_production_by_p38_P
	reaction_ROS_production_by_p38_P=global_par_kgenROSbyp38*x(31);

% Reaction: id = Lysosome_damage_by_ROS
	reaction_Lysosome_damage_by_ROS=global_par_kdamLys*x(24)*x(35)/(10+x(35));

% Reaction: id = IntegrinActivationByMechanicalStress
	reaction_IntegrinActivationByMechanicalStress=global_par_kactIntegrin*const_species_Source;

% Reaction: id = IntegrinInactivation
	reaction_IntegrinInactivation=global_par_kinactIntegrin*x(60);

% Reaction: id = Alk5Synthesis
	reaction_Alk5Synthesis=global_par_ksynAlk5*const_species_Source;

% Reaction: id = TgfbActivationByIntegrin
	reaction_TgfbActivationByIntegrin=global_par_kactTgfbIntegrin*x(61)*x(60);

% Reaction: id = TgfbActivationByMMP2
	reaction_TgfbActivationByMMP2=global_par_kactTgfbMMP2*x(61)*x(27);

% Reaction: id = TgfbInactivation
	reaction_TgfbInactivation=global_par_kinactTgfb*x(50);

% Reaction: id = Alk5Dimerisation
	reaction_Alk5Dimerisation=global_par_kdimerAlk5*x(6)*(x(6)-1)*0.5;

% Reaction: id = Alk5Dedimerisation
	reaction_Alk5Dedimerisation=global_par_kdedimerAlk5*x(7);

% Reaction: id = Alk1Alk5Binding
	reaction_Alk1Alk5Binding=global_par_kbinAlk1Alk5*x(4)*x(6);

% Reaction: id = Alk1Alk5Release
	reaction_Alk1Alk5Release=global_par_krelAlk1Alk5*x(5);

% Reaction: id = TgfbReceptorBindingAlk5
	reaction_TgfbReceptorBindingAlk5=global_par_kbinTgfbAlk5*x(50)*x(7);

% Reaction: id = TgfbReceptorRelease
	reaction_TgfbReceptorRelease=global_par_krelTgfbAlk5*x(53);

% Reaction: id = Tgfb_Alk5_BindingSmad7
	reaction_Tgfb_Alk5_BindingSmad7=global_par_kbinSmad7Alk5*x(53)*x(45);

% Reaction: id = Tgfb_Alk5_Smad7Release
	reaction_Tgfb_Alk5_Smad7Release=global_par_krelSmad7Alk5*x(54);

% Reaction: id = Alk5_Smad7Degradation
	reaction_Alk5_Smad7Degradation=global_par_kdegSmad7Alk5*x(54);

% Reaction: id = TgfbReceptorBindingAlk1
	reaction_TgfbReceptorBindingAlk1=global_par_kbinTgfbAlk1*x(50)*x(5);

% Reaction: id = TgfbAlk1Release
	reaction_TgfbAlk1Release=global_par_krelTgfbAlk1*x(51);

% Reaction: id = Smad2Phosphorylation
	reaction_Smad2Phosphorylation=global_par_kphosSmad2*x(53)*x(41);

% Reaction: id = Smad2Smad4Binding
	reaction_Smad2Smad4Binding=global_par_kbinSmad2Smad4*x(42)*x(44);

% Reaction: id = Smad2PSmad4Release
	reaction_Smad2PSmad4Release=global_par_krelSmad2Smad4*x(43);

% Reaction: id = Smad2DephosphorylationNuc
	reaction_Smad2DephosphorylationNuc=global_par_kdephosSmad2*x(42);

% Reaction: id = Smad7Synthesis
	reaction_Smad7Synthesis=global_par_ksynSmad7*x(43);

% Reaction: id = Sox9Activation
	reaction_Sox9Activation=global_par_kactSox9*x(43)*x(47);

% Reaction: id = Sox9Inactivation
	reaction_Sox9Inactivation=global_par_kinactSox9*x(48);

% Reaction: id = Sox9BasalTranscription
	reaction_Sox9BasalTranscription=global_par_ksynSox9mRNA*const_species_Source;

% Reaction: id = Sox9EnhancedTranscription
	reaction_Sox9EnhancedTranscription=global_par_ksynSox9mRNASox9A*x(48);

% Reaction: id = Sox9mRNA_Degradation
	reaction_Sox9mRNA_Degradation=global_par_kdegSox9mRNA*x(49);

% Reaction: id = Sox9Translation
	reaction_Sox9Translation=global_par_ksynSox9*x(49);

% Reaction: id = Sox9Degradation
	reaction_Sox9Degradation=global_par_kdegSox9*x(47);

% Reaction: id = Collagen2EnhancedTranscriptionBySox9
	reaction_Collagen2EnhancedTranscriptionBySox9=global_par_ksynCol2mRNASox9A*x(48);

% Reaction: id = Collagen2TranscriptionBySmad2Smad4
	reaction_Collagen2TranscriptionBySmad2Smad4=global_par_ksynCol2mRNASmad*x(43);

% Reaction: id = Col2mRNA_Degradation
	reaction_Col2mRNA_Degradation=global_par_kdegCol2mRNA*x(19);

% Reaction: id = Collagen2Translation
	reaction_Collagen2Translation=global_par_ksynCol2*x(19);

% Reaction: id = AggrecanEnhancedTranscription
	reaction_AggrecanEnhancedTranscription=global_par_ksynAcanmRNASox9A*x(48);

% Reaction: id = AcanmRNA_Degradation
	reaction_AcanmRNA_Degradation=global_par_kdegAcanmRNA*x(1);

% Reaction: id = AggrecanTranslation
	reaction_AggrecanTranslation=global_par_ksynAggrecan*x(1);

% Reaction: id = AggrecanCollagen2Binding
	reaction_AggrecanCollagen2Binding=global_par_kbinAggrecanCollagen2*x(56)*x(59);

% Reaction: id = Runx2_InhibitionBySmad2
	reaction_Runx2_InhibitionBySmad2=global_par_kinactRunx2*x(36)*x(43);

% Reaction: id = Alk5Degradation
	reaction_Alk5Degradation=global_par_kdegAlk5*x(6);

% Reaction: id = Smad1Activation
	reaction_Smad1Activation=global_par_kphosSmad1*x(51)*x(38);

% Reaction: id = Smad1Dephosphorylation
	reaction_Smad1Dephosphorylation=global_par_kdephosSmad1*x(39);

% Reaction: id = Smad1DephosphorylationViaSmad7
	reaction_Smad1DephosphorylationViaSmad7=global_par_kdephosSmad1Smad7*x(39)*x(45);

% Reaction: id = Smad1Smad4Binding
	reaction_Smad1Smad4Binding=global_par_kbinSmad1Smad4*x(39)*x(44);

% Reaction: id = Smad1Smad4Release
	reaction_Smad1Smad4Release=global_par_krelSmad1Smad4*x(40);

% Reaction: id = Runx2ActivationBySmad1
	reaction_Runx2ActivationBySmad1=global_par_kactRunx2*x(37)*x(40);

% Reaction: id = MMP13InductionByRunx2
	reaction_MMP13InductionByRunx2=global_par_ksynMMP13Runx2*x(36);

% Reaction: id = Alk1Synthesis
	reaction_Alk1Synthesis=global_par_ksynAlk1*const_species_Source;

% Reaction: id = Alk1Degradation
	reaction_Alk1Degradation=global_par_kdegAlk1*x(4);

% Reaction: id = MMP13Activation
	reaction_MMP13Activation=global_par_kactMMP13*x(32);

% Reaction: id = Tgfb_Alk1_Alk5_BindingSmad7
	reaction_Tgfb_Alk1_Alk5_BindingSmad7=global_par_kbinSmad7Alk1*x(51)*x(45);

% Reaction: id = Tgfb_Alk1_Alk5_Smad7Release
	reaction_Tgfb_Alk1_Alk5_Smad7Release=global_par_krelSmad7Alk1*x(52);

% Reaction: id = Alk1_Smad7Degradation
	reaction_Alk1_Smad7Degradation=global_par_kdegSmad7Alk1*x(52);

% Reaction: id = Smad7Degradation
	reaction_Smad7Degradation=global_par_kdegSmad7*x(45);

% Species:   id = NatP, name = NatP, constant	const_species_NatP=1500.0;

% Species:   id = Sink, name = Sink, constant	const_species_Sink=0.0;

% Species:   id = Source, name = Source, constant	const_species_Source=1.0;

	xdot=zeros(62,1);
	
% Species:   id = AcanmRNA, name = AcanmRNA, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_AggrecanEnhancedTranscription) + (-1.0 * reaction_AcanmRNA_Degradation) + (-1.0 * reaction_AggrecanTranslation) + ( 1.0 * reaction_AggrecanTranslation);
	
% Species:   id = ADAMTS5, name = ADAMTS5, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_ADAMTS5_production) + (-1.0 * reaction_ADAMTS5_removal) + (-1.0 * reaction_Aggrecan_degradation) + ( 1.0 * reaction_Aggrecan_degradation);
	
% Species:   id = AGEprod, name = AGEprod, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_Production_of_AGEproducts) + (-1.0 * reaction_RAGE_activation) + ( 1.0 * reaction_RAGE_activation);
	
% Species:   id = Alk1, name = Alk1, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_Alk1Alk5Binding) + ( 1.0 * reaction_Alk1Alk5Release) + ( 1.0 * reaction_Alk1Synthesis) + (-1.0 * reaction_Alk1Degradation);
	
% Species:   id = Alk1_Alk5, name = Alk1_Alk5, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_Alk1Alk5Binding) + (-1.0 * reaction_Alk1Alk5Release) + (-1.0 * reaction_TgfbReceptorBindingAlk1) + ( 1.0 * reaction_TgfbAlk1Release);
	
% Species:   id = Alk5, name = Alk5, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_Alk5Synthesis) + (-2.0 * reaction_Alk5Dimerisation) + ( 2.0 * reaction_Alk5Dedimerisation) + (-1.0 * reaction_Alk1Alk5Binding) + ( 1.0 * reaction_Alk1Alk5Release) + (-1.0 * reaction_Alk5Degradation);
	
% Species:   id = Alk5_dimer, name = Alk5_dimer, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_Alk5Dimerisation) + (-1.0 * reaction_Alk5Dedimerisation) + (-1.0 * reaction_TgfbReceptorBindingAlk5) + ( 1.0 * reaction_TgfbReceptorRelease);
	
% Species:   id = Bax, name = Bax, affected by kineticLaw
	xdot(8) = (-1.0 * reaction_CaspaseActivation) + ( 1.0 * reaction_CaspaseActivation) + (-1.0 * reaction_Bax_Bcl2Binding) + ( 1.0 * reaction_Bax_Bcl2Release) + (-1.0 * reaction_BaxBindingToBcl2_Beclin) + (-1.0 * reaction_BaxBindingToBcl2_BeclinI) + ( 1.0 * reaction_BaxDissociation_Bax_Bcl2_Beclin) + ( 1.0 * reaction_BaxDissociation_Bax_Bcl2_Beclin_I);
	
% Species:   id = Bax_Bcl2, name = Bax_Bcl2, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_Bax_Bcl2Binding) + (-1.0 * reaction_Bax_Bcl2Release) + (-1.0 * reaction_BeclinBindingToBax_Bcl2) + (-1.0 * reaction_BeclinIBindingToBax_Bcl2) + ( 1.0 * reaction_BeclinDissociation_Bax_Bcl2_Beclin) + ( 1.0 * reaction_Beclin_I_Dissociation_Bax_Bcl2_Beclin);
	
% Species:   id = Bax_Bcl2_Beclin, name = Bax_Bcl2_Beclin, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_BeclinBindingToBax_Bcl2) + ( 1.0 * reaction_BaxBindingToBcl2_Beclin) + (-1.0 * reaction_BaxDissociation_Bax_Bcl2_Beclin) + (-1.0 * reaction_BeclinDissociation_Bax_Bcl2_Beclin);
	
% Species:   id = Bax_Bcl2_Beclin_I, name = Bax_Bcl2_Beclin_I, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_BeclinIBindingToBax_Bcl2) + ( 1.0 * reaction_BaxBindingToBcl2_BeclinI) + (-1.0 * reaction_BaxDissociation_Bax_Bcl2_Beclin_I) + (-1.0 * reaction_Beclin_I_Dissociation_Bax_Bcl2_Beclin);
	
% Species:   id = Bcl2, name = Bcl2, affected by kineticLaw
	xdot(12) = (-1.0 * reaction_InhibitCaspase3) + ( 1.0 * reaction_InhibitCaspase3) + ( 1.0 * reaction_Bcl2Synthesis) + (-1.0 * reaction_Bcl2Degradation) + (-1.0 * reaction_Bcl2DegradationStressInduced) + (-1.0 * reaction_Bcl2DegradationCaspaseInduced) + (-1.0 * reaction_Bax_Bcl2Binding) + ( 1.0 * reaction_Bax_Bcl2Release) + (-1.0 * reaction_Bcl2_BeclinBinding) + ( 1.0 * reaction_Bcl2_BeclinRelease) + (-1.0 * reaction_Bcl2_Beclin_I_Binding) + ( 1.0 * reaction_Bcl2_Beclin_I_Release);
	
% Species:   id = Bcl2_Beclin, name = Bcl2_Beclin, affected by kineticLaw
	xdot(13) = (-1.0 * reaction_InhibitCaspase2) + ( 1.0 * reaction_InhibitCaspase2) + ( 1.0 * reaction_Bcl2_BeclinBinding) + (-1.0 * reaction_Bcl2_BeclinRelease) + (-1.0 * reaction_BaxBindingToBcl2_Beclin) + ( 1.0 * reaction_BaxDissociation_Bax_Bcl2_Beclin);
	
% Species:   id = Bcl2_Beclin_I, name = Bcl2_Beclin_I, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_Bcl2_Beclin_I_Binding) + (-1.0 * reaction_Bcl2_Beclin_I_Release) + (-1.0 * reaction_BaxBindingToBcl2_BeclinI) + ( 1.0 * reaction_BaxDissociation_Bax_Bcl2_Beclin_I);
	
% Species:   id = Beclin, name = Beclin, affected by kineticLaw
	xdot(15) = (-1.0 * reaction_ActivateLysosome) + ( 1.0 * reaction_ActivateLysosome) + (-1.0 * reaction_Bcl2_BeclinBinding) + ( 1.0 * reaction_Bcl2_BeclinRelease) + (-1.0 * reaction_BeclinInactivation) + (-1.0 * reaction_BeclinInactivationByCaspase) + (-1.0 * reaction_BeclinBindingToBax_Bcl2) + ( 1.0 * reaction_BeclinDissociation_Bax_Bcl2_Beclin);
	
% Species:   id = Beclin_I, name = Beclin_I, affected by kineticLaw
	xdot(16) = (-1.0 * reaction_CaspaseActivationByBeclin_I) + ( 1.0 * reaction_CaspaseActivationByBeclin_I) + (-1.0 * reaction_Bcl2_Beclin_I_Binding) + ( 1.0 * reaction_Bcl2_Beclin_I_Release) + ( 1.0 * reaction_BeclinInactivation) + ( 1.0 * reaction_BeclinInactivationByCaspase) + (-1.0 * reaction_BeclinIBindingToBax_Bcl2) + ( 1.0 * reaction_Beclin_I_Dissociation_Bax_Bcl2_Beclin);
	
% Species:   id = Caspase_A, name = Caspase_A, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_CaspaseActivation) + ( 1.0 * reaction_CaspaseActivationByBeclin_I) + ( 1.0 * reaction_CaspaseActivationBy_p38) + (-1.0 * reaction_CaspaseInactivation1) + (-1.0 * reaction_InhibitCaspase2) + (-1.0 * reaction_InhibitCaspase3) + (-1.0 * reaction_Bcl2DegradationCaspaseInduced) + ( 1.0 * reaction_Bcl2DegradationCaspaseInduced) + (-1.0 * reaction_BeclinInactivationByCaspase) + ( 1.0 * reaction_BeclinInactivationByCaspase);
	
% Species:   id = Caspase_I, name = Caspase_I, affected by kineticLaw
	xdot(18) = (-1.0 * reaction_CaspaseActivation) + (-1.0 * reaction_CaspaseActivationByBeclin_I) + (-1.0 * reaction_CaspaseActivationBy_p38) + ( 1.0 * reaction_CaspaseInactivation1) + ( 1.0 * reaction_InhibitCaspase2) + ( 1.0 * reaction_InhibitCaspase3);
	
% Species:   id = Col2mRNA, name = Col2mRNA, affected by kineticLaw
	xdot(19) = ( 1.0 * reaction_Collagen2EnhancedTranscriptionBySox9) + ( 1.0 * reaction_Collagen2TranscriptionBySmad2Smad4) + (-1.0 * reaction_Col2mRNA_Degradation) + (-1.0 * reaction_Collagen2Translation) + ( 1.0 * reaction_Collagen2Translation);
	
% Species:   id = DamP, name = DamP, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_Protein_Damage_by_ROS) + (-1.0 * reaction_Removal_DamP_by_Autophagy) + (-1.0 * reaction_ROS_production_by_DamP) + ( 1.0 * reaction_ROS_production_by_DamP);
	
% Species:   id = IkB, name = IkB, affected by kineticLaw
	xdot(21) = (-1.0 * reaction_NFkB_inactivation) + ( 1.0 * reaction_IkB_production);
	
% Species:   id = IkB_NFkB, name = IkB_NFkB, affected by kineticLaw
	xdot(22) = (-1.0 * reaction_IkB_degradation_via_ROS) + (-1.0 * reaction_IkB_degradation_via_IL1) + ( 1.0 * reaction_NFkB_inactivation);
	
% Species:   id = IL1, name = IL1, affected by kineticLaw
	xdot(23) = (-1.0 * reaction_IkB_degradation_via_IL1) + ( 1.0 * reaction_IkB_degradation_via_IL1) + ( 1.0 * reaction_IL1_production) + (-1.0 * reaction_IL1_degradation) + (-1.0 * reaction_MMP13_production) + ( 1.0 * reaction_MMP13_production) + (-1.0 * reaction_MMP2_production) + ( 1.0 * reaction_MMP2_production) + (-1.0 * reaction_ADAMTS5_production) + ( 1.0 * reaction_ADAMTS5_production) + (-1.0 * reaction_p38_phosphorylation) + ( 1.0 * reaction_p38_phosphorylation);
	
% Species:   id = Lys_A, name = Lys_A, affected by kineticLaw
	xdot(24) = ( 1.0 * reaction_ActivateLysosome) + (-1.0 * reaction_InhibitLysosome) + (-1.0 * reaction_Removal_DamP_by_Autophagy) + ( 1.0 * reaction_Removal_DamP_by_Autophagy) + (-1.0 * reaction_Lysosome_damage_by_ROS);
	
% Species:   id = Lys_I, name = Lys_I, affected by kineticLaw
	xdot(25) = (-1.0 * reaction_ActivateLysosome) + ( 1.0 * reaction_InhibitLysosome) + ( 1.0 * reaction_Lysosome_damage_by_ROS);
	
% Species:   id = MMP13, name = MMP13, affected by kineticLaw
	xdot(26) = (-1.0 * reaction_MMP13_removal) + (-1.0 * reaction_Collagen_degradation) + ( 1.0 * reaction_Collagen_degradation) + ( 1.0 * reaction_MMP13Activation);
	
% Species:   id = MMP2, name = MMP2, affected by kineticLaw
	xdot(27) = ( 1.0 * reaction_MMP_activation) + (-1.0 * reaction_MMP2_degradation) + (-1.0 * reaction_TgfbActivationByMMP2) + ( 1.0 * reaction_TgfbActivationByMMP2);
	
% Species:   id = NFkB, name = NFkB, affected by kineticLaw
	xdot(28) = ( 1.0 * reaction_IkB_degradation_via_ROS) + ( 1.0 * reaction_IkB_degradation_via_IL1) + (-1.0 * reaction_NFkB_inactivation) + (-1.0 * reaction_NFkB_activation) + ( 1.0 * reaction_NFkB_dephosphorylation);
	
% Species:   id = NFkB_P, name = NFkB_P, affected by kineticLaw
	xdot(29) = (-1.0 * reaction_RAGE_upregulation_byNFkB) + ( 1.0 * reaction_RAGE_upregulation_byNFkB) + (-1.0 * reaction_IL1_production) + ( 1.0 * reaction_IL1_production) + (-1.0 * reaction_IkB_production) + ( 1.0 * reaction_IkB_production) + (-1.0 * reaction_SOD_synthesis) + ( 1.0 * reaction_SOD_synthesis) + ( 1.0 * reaction_NFkB_activation) + (-1.0 * reaction_NFkB_dephosphorylation);
	
% Species:   id = p38, name = p38, affected by kineticLaw
	xdot(30) = (-1.0 * reaction_p38_phosphorylation) + (-1.0 * reaction_p38_phosphorylation_via_ROS) + ( 1.0 * reaction_p38_dephosphorylation);
	
% Species:   id = p38_P, name = p38_P, affected by kineticLaw
	xdot(31) = (-1.0 * reaction_CaspaseActivationBy_p38) + ( 1.0 * reaction_CaspaseActivationBy_p38) + ( 1.0 * reaction_p38_phosphorylation) + ( 1.0 * reaction_p38_phosphorylation_via_ROS) + (-1.0 * reaction_p38_dephosphorylation) + (-1.0 * reaction_NFkB_activation) + ( 1.0 * reaction_NFkB_activation) + (-1.0 * reaction_ROS_production_by_p38_P) + ( 1.0 * reaction_ROS_production_by_p38_P);
	
% Species:   id = proMMP13, name = proMMP13, affected by kineticLaw
	xdot(32) = ( 1.0 * reaction_MMP13_production) + ( 1.0 * reaction_MMP13InductionByRunx2) + (-1.0 * reaction_MMP13Activation);
	
% Species:   id = proMMP2, name = proMMP2, affected by kineticLaw
	xdot(33) = ( 1.0 * reaction_MMP2_production) + (-1.0 * reaction_MMP_activation);
	
% Species:   id = RAGE, name = RAGE, affected by kineticLaw
	xdot(34) = ( 1.0 * reaction_RAGE_activation) + (-1.0 * reaction_ROS_production_by_RAGE) + ( 1.0 * reaction_ROS_production_by_RAGE) + (-1.0 * reaction_RAGE_inactivation) + ( 1.0 * reaction_RAGE_upregulation_byNFkB);
	
% Species:   id = ROS, name = ROS, affected by kineticLaw
	xdot(35) = (-1.0 * reaction_Bcl2DegradationStressInduced) + ( 1.0 * reaction_Bcl2DegradationStressInduced) + ( 1.0 * reaction_ROS_generation) + (-1.0 * reaction_ROS_removal) + (-1.0 * reaction_Protein_Damage_by_ROS) + ( 1.0 * reaction_Protein_Damage_by_ROS) + ( 1.0 * reaction_ROS_production_by_RAGE) + (-1.0 * reaction_IkB_degradation_via_ROS) + ( 1.0 * reaction_IkB_degradation_via_ROS) + ( 1.0 * reaction_ROS_production_by_DamP) + (-1.0 * reaction_ROS_removal_by_SOD) + (-1.0 * reaction_p38_phosphorylation_via_ROS) + ( 1.0 * reaction_p38_phosphorylation_via_ROS) + ( 1.0 * reaction_ROS_production_by_p38_P) + (-1.0 * reaction_Lysosome_damage_by_ROS) + ( 1.0 * reaction_Lysosome_damage_by_ROS);
	
% Species:   id = Runx2_A, name = Runx2_A, affected by kineticLaw
	xdot(36) = (-1.0 * reaction_Runx2_InhibitionBySmad2) + ( 1.0 * reaction_Runx2ActivationBySmad1) + (-1.0 * reaction_MMP13InductionByRunx2) + ( 1.0 * reaction_MMP13InductionByRunx2);
	
% Species:   id = Runx2_I, name = Runx2_I, affected by kineticLaw
	xdot(37) = ( 1.0 * reaction_Runx2_InhibitionBySmad2) + (-1.0 * reaction_Runx2ActivationBySmad1);
	
% Species:   id = Smad1, name = Smad1, affected by kineticLaw
	xdot(38) = (-1.0 * reaction_Smad1Activation) + ( 1.0 * reaction_Smad1Dephosphorylation) + ( 1.0 * reaction_Smad1DephosphorylationViaSmad7);
	
% Species:   id = Smad1_P, name = Smad1_P, affected by kineticLaw
	xdot(39) = ( 1.0 * reaction_Smad1Activation) + (-1.0 * reaction_Smad1Dephosphorylation) + (-1.0 * reaction_Smad1DephosphorylationViaSmad7) + (-1.0 * reaction_Smad1Smad4Binding) + ( 1.0 * reaction_Smad1Smad4Release);
	
% Species:   id = Smad1_P_Smad4, name = Smad1_P_Smad4, affected by kineticLaw
	xdot(40) = ( 1.0 * reaction_Smad1Smad4Binding) + (-1.0 * reaction_Smad1Smad4Release) + (-1.0 * reaction_Runx2ActivationBySmad1) + ( 1.0 * reaction_Runx2ActivationBySmad1);
	
% Species:   id = Smad2, name = Smad2, affected by kineticLaw
	xdot(41) = (-1.0 * reaction_Smad2Phosphorylation) + ( 1.0 * reaction_Smad2DephosphorylationNuc);
	
% Species:   id = Smad2_P, name = Smad2_P, affected by kineticLaw
	xdot(42) = ( 1.0 * reaction_Smad2Phosphorylation) + (-1.0 * reaction_Smad2Smad4Binding) + ( 1.0 * reaction_Smad2PSmad4Release) + (-1.0 * reaction_Smad2DephosphorylationNuc);
	
% Species:   id = Smad2_P_Smad4, name = Smad2_P_Smad4, affected by kineticLaw
	xdot(43) = ( 1.0 * reaction_Smad2Smad4Binding) + (-1.0 * reaction_Smad2PSmad4Release) + (-1.0 * reaction_Smad7Synthesis) + ( 1.0 * reaction_Smad7Synthesis) + (-1.0 * reaction_Sox9Activation) + ( 1.0 * reaction_Sox9Activation) + (-1.0 * reaction_Collagen2TranscriptionBySmad2Smad4) + ( 1.0 * reaction_Collagen2TranscriptionBySmad2Smad4) + (-1.0 * reaction_Runx2_InhibitionBySmad2) + ( 1.0 * reaction_Runx2_InhibitionBySmad2);
	
% Species:   id = Smad4, name = Smad4, affected by kineticLaw
	xdot(44) = (-1.0 * reaction_Smad2Smad4Binding) + ( 1.0 * reaction_Smad2PSmad4Release) + (-1.0 * reaction_Smad1Smad4Binding) + ( 1.0 * reaction_Smad1Smad4Release);
	
% Species:   id = Smad7, name = Smad7, affected by kineticLaw
	xdot(45) = (-1.0 * reaction_Tgfb_Alk5_BindingSmad7) + ( 1.0 * reaction_Tgfb_Alk5_Smad7Release) + ( 1.0 * reaction_Smad7Synthesis) + (-1.0 * reaction_Smad1DephosphorylationViaSmad7) + ( 1.0 * reaction_Smad1DephosphorylationViaSmad7) + (-1.0 * reaction_Tgfb_Alk1_Alk5_BindingSmad7) + ( 1.0 * reaction_Tgfb_Alk1_Alk5_Smad7Release) + (-1.0 * reaction_Smad7Degradation);
	
% Species:   id = SOD, name = SOD, affected by kineticLaw
	xdot(46) = ( 1.0 * reaction_SOD_synthesis) + (-1.0 * reaction_SOD_degradation) + (-1.0 * reaction_ROS_removal_by_SOD) + ( 1.0 * reaction_ROS_removal_by_SOD);
	
% Species:   id = Sox9, name = Sox9, affected by kineticLaw
	xdot(47) = (-1.0 * reaction_Sox9Activation) + ( 1.0 * reaction_Sox9Inactivation) + ( 1.0 * reaction_Sox9Translation) + (-1.0 * reaction_Sox9Degradation);
	
% Species:   id = Sox9_A, name = Sox9_A, affected by kineticLaw
	xdot(48) = ( 1.0 * reaction_Sox9Activation) + (-1.0 * reaction_Sox9Inactivation) + (-1.0 * reaction_Sox9EnhancedTranscription) + ( 1.0 * reaction_Sox9EnhancedTranscription) + (-1.0 * reaction_Collagen2EnhancedTranscriptionBySox9) + ( 1.0 * reaction_Collagen2EnhancedTranscriptionBySox9) + (-1.0 * reaction_AggrecanEnhancedTranscription) + ( 1.0 * reaction_AggrecanEnhancedTranscription);
	
% Species:   id = Sox9mRNA, name = Sox9mRNA, affected by kineticLaw
	xdot(49) = ( 1.0 * reaction_Sox9BasalTranscription) + ( 1.0 * reaction_Sox9EnhancedTranscription) + (-1.0 * reaction_Sox9mRNA_Degradation) + (-1.0 * reaction_Sox9Translation) + ( 1.0 * reaction_Sox9Translation);
	
% Species:   id = Tgfb_A, name = Tgfb_A, affected by kineticLaw
	xdot(50) = ( 1.0 * reaction_TgfbActivationByIntegrin) + ( 1.0 * reaction_TgfbActivationByMMP2) + (-1.0 * reaction_TgfbInactivation) + (-1.0 * reaction_TgfbReceptorBindingAlk5) + ( 1.0 * reaction_TgfbReceptorRelease) + (-1.0 * reaction_TgfbReceptorBindingAlk1) + ( 1.0 * reaction_TgfbAlk1Release);
	
% Species:   id = Tgfb_Alk1_Alk5, name = Tgfb_Alk1_Alk5, affected by kineticLaw
	xdot(51) = ( 1.0 * reaction_TgfbReceptorBindingAlk1) + (-1.0 * reaction_TgfbAlk1Release) + (-1.0 * reaction_Smad1Activation) + ( 1.0 * reaction_Smad1Activation) + (-1.0 * reaction_Tgfb_Alk1_Alk5_BindingSmad7) + ( 1.0 * reaction_Tgfb_Alk1_Alk5_Smad7Release);
	
% Species:   id = Tgfb_Alk1_Alk5_Smad7, name = Tgfb_Alk1_Alk5_Smad7, affected by kineticLaw
	xdot(52) = ( 1.0 * reaction_Tgfb_Alk1_Alk5_BindingSmad7) + (-1.0 * reaction_Tgfb_Alk1_Alk5_Smad7Release) + (-1.0 * reaction_Alk1_Smad7Degradation);
	
% Species:   id = Tgfb_Alk5_dimer, name = Tgfb_Alk5_dimer, affected by kineticLaw
	xdot(53) = ( 1.0 * reaction_TgfbReceptorBindingAlk5) + (-1.0 * reaction_TgfbReceptorRelease) + (-1.0 * reaction_Tgfb_Alk5_BindingSmad7) + ( 1.0 * reaction_Tgfb_Alk5_Smad7Release) + (-1.0 * reaction_Smad2Phosphorylation) + ( 1.0 * reaction_Smad2Phosphorylation);
	
% Species:   id = Tgfb_Alk5_dimer_Smad7, name = Tgfb_Alk5_dimer_Smad7, affected by kineticLaw
	xdot(54) = ( 1.0 * reaction_Tgfb_Alk5_BindingSmad7) + (-1.0 * reaction_Tgfb_Alk5_Smad7Release) + (-1.0 * reaction_Alk5_Smad7Degradation);
	
% Species:   id = AggFrag, name = AggFrag, affected by kineticLaw
	xdot(55) = ( 1.0 * reaction_Aggrecan_degradation);
	
% Species:   id = Aggrecan, name = Aggrecan, affected by kineticLaw
	xdot(56) = ( 1.0 * reaction_AggrecanTranslation) + (-1.0 * reaction_AggrecanCollagen2Binding);
	
% Species:   id = Aggrecan_Collagen2, name = Aggrecan_Collagen2, affected by kineticLaw
	xdot(57) = (-1.0 * reaction_Aggrecan_degradation) + ( 1.0 * reaction_AggrecanCollagen2Binding);
	
% Species:   id = ColFrag, name = ColFrag, affected by kineticLaw
	xdot(58) = ( 1.0 * reaction_Collagen_degradation);
	
% Species:   id = Collagen2, name = Collagen2, affected by kineticLaw
	xdot(59) = ( 1.0 * reaction_Aggrecan_degradation) + (-1.0 * reaction_Collagen_degradation) + ( 1.0 * reaction_Collagen2Translation) + (-1.0 * reaction_AggrecanCollagen2Binding);
	
% Species:   id = Integrin, name = Integrin, affected by kineticLaw
	xdot(60) = ( 1.0 * reaction_IntegrinActivationByMechanicalStress) + (-1.0 * reaction_IntegrinInactivation) + (-1.0 * reaction_TgfbActivationByIntegrin) + ( 1.0 * reaction_TgfbActivationByIntegrin);
	
% Species:   id = Tgfb_I, name = Tgfb_I, affected by kineticLaw
	xdot(61) = (-1.0 * reaction_TgfbActivationByIntegrin) + (-1.0 * reaction_TgfbActivationByMMP2) + ( 1.0 * reaction_TgfbInactivation) + ( 1.0 * reaction_Alk5_Smad7Degradation) + ( 1.0 * reaction_Alk1_Smad7Degradation);
	
% Species:   id = IntegrinCount, name = IntegrinCount, affected by kineticLaw
	xdot(62) = ( 1.0 * reaction_IntegrinActivationByMechanicalStress);
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


