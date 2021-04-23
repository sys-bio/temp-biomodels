
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// compartment_nucleus   id: nucleus
	compartment_nucleus=1;
		
// compartment_membrane   id: membrane
	compartment_membrane=1;
		
// compartment_ecm   id: ecm
	compartment_ecm=1;
		
// kactCasp_p   id: kactCasp
	kactCasp_p=1E-7;
		
// kactCaspBecI_p   id: kactCaspBecI
	kactCaspBecI_p=8.3E-7;
		
// kactCaspp38_p   id: kactCaspp38
	kactCaspp38_p=8E-7;
		
// kactIntegrin_p   id: kactIntegrin
	kactIntegrin_p=4E-7;
		
// kactLys_p   id: kactLys
	kactLys_p=1E-8;
		
// kactMMP13_p   id: kactMMP13
	kactMMP13_p=0.0001;
		
// kactMMP2_p   id: kactMMP2
	kactMMP2_p=1E-7;
		
// kactNFkB_p   id: kactNFkB
	kactNFkB_p=0.0001;
		
// kactRAGE_p   id: kactRAGE
	kactRAGE_p=0.001;
		
// kactRunx2_p   id: kactRunx2
	kactRunx2_p=0.001;
		
// kactSox9_p   id: kactSox9
	kactSox9_p=5E-6;
		
// kactTgfbIntegrin_p   id: kactTgfbIntegrin
	kactTgfbIntegrin_p=0.001;
		
// kactTgfbMMP2_p   id: kactTgfbMMP2
	kactTgfbMMP2_p=1E-7;
		
// kbinAggrecanCollagen2_p   id: kbinAggrecanCollagen2
	kbinAggrecanCollagen2_p=0.0001;
		
// kbinAlk1Alk5_p   id: kbinAlk1Alk5
	kbinAlk1Alk5_p=5E-5;
		
// kbinBaxBcl2_p   id: kbinBaxBcl2
	kbinBaxBcl2_p=1.67;
		
// kbinBaxToBcl2Bec_p   id: kbinBaxToBcl2Bec
	kbinBaxToBcl2Bec_p=0.000167;
		
// kbinBcl2Beclin_p   id: kbinBcl2Beclin
	kbinBcl2Beclin_p=7.5E-5;
		
// kbinBecToBaxBcl2_p   id: kbinBecToBaxBcl2
	kbinBecToBaxBcl2_p=1.67E-5;
		
// kbinSmad1Smad4_p   id: kbinSmad1Smad4
	kbinSmad1Smad4_p=5E-5;
		
// kbinSmad2Smad4_p   id: kbinSmad2Smad4
	kbinSmad2Smad4_p=0.0001;
		
// kbinSmad7Alk1_p   id: kbinSmad7Alk1
	kbinSmad7Alk1_p=0.5;
		
// kbinSmad7Alk5_p   id: kbinSmad7Alk5
	kbinSmad7Alk5_p=2E-5;
		
// kbinTgfbAlk1_p   id: kbinTgfbAlk1
	kbinTgfbAlk1_p=2E-5;
		
// kbinTgfbAlk5_p   id: kbinTgfbAlk5
	kbinTgfbAlk5_p=3E-5;
		
// kdamLys_p   id: kdamLys
	kdamLys_p=5E-6;
		
// kdamNatP_p   id: kdamNatP
	kdamNatP_p=8E-6;
		
// kdedimerAlk5_p   id: kdedimerAlk5
	kdedimerAlk5_p=0.001;
		
// kdegAcanmRNA_p   id: kdegAcanmRNA
	kdegAcanmRNA_p=9E-6;
		
// kdegADAMTS5_p   id: kdegADAMTS5
	kdegADAMTS5_p=5E-5;
		
// kdegAggrecan_p   id: kdegAggrecan
	kdegAggrecan_p=1E-9;
		
// kdegAlk1_p   id: kdegAlk1
	kdegAlk1_p=1.2E-8;
		
// kdegAlk5_p   id: kdegAlk5
	kdegAlk5_p=4E-7;
		
// kdegBcl2_p   id: kdegBcl2
	kdegBcl2_p=0.000167;
		
// kdegBcl2Casp_p   id: kdegBcl2Casp
	kdegBcl2Casp_p=0.00167;
		
// kdegBcl2ROS_p   id: kdegBcl2ROS
	kdegBcl2ROS_p=0.00167;
		
// kdegCol2mRNA_p   id: kdegCol2mRNA
	kdegCol2mRNA_p=1.07E-5;
		
// kdegCollagen_p   id: kdegCollagen
	kdegCollagen_p=1E-8;
		
// kdegDamP_p   id: kdegDamP
	kdegDamP_p=4E-5;
		
// kdegIkB_p   id: kdegIkB
	kdegIkB_p=1E-6;
		
// kdegIL1_p   id: kdegIL1
	kdegIL1_p=0.005;
		
// kdegMMP13_p   id: kdegMMP13
	kdegMMP13_p=6.4E-6;
		
// kdegMMP2_p   id: kdegMMP2
	kdegMMP2_p=6.4E-6;
		
// kdegSmad7_p   id: kdegSmad7
	kdegSmad7_p=0.005;
		
// kdegSmad7Alk1_p   id: kdegSmad7Alk1
	kdegSmad7Alk1_p=5E-6;
		
// kdegSmad7Alk5_p   id: kdegSmad7Alk5
	kdegSmad7Alk5_p=1E-5;
		
// kdegSOD_p   id: kdegSOD
	kdegSOD_p=0.001;
		
// kdegSox9_p   id: kdegSox9
	kdegSox9_p=4.8E-5;
		
// kdegSox9mRNA_p   id: kdegSox9mRNA
	kdegSox9mRNA_p=0.0001;
		
// kdegTgfb_p   id: kdegTgfb
	kdegTgfb_p=0.00578;
		
// kdephosNFkB_p   id: kdephosNFkB
	kdephosNFkB_p=0.01;
		
// kdephosp38_p   id: kdephosp38
	kdephosp38_p=0.01;
		
// kdephosSmad1_p   id: kdephosSmad1
	kdephosSmad1_p=0.0005;
		
// kdephosSmad1Smad7_p   id: kdephosSmad1Smad7
	kdephosSmad1Smad7_p=0.0006;
		
// kdephosSmad2_p   id: kdephosSmad2
	kdephosSmad2_p=0.006;
		
// kdimerAlk5_p   id: kdimerAlk5
	kdimerAlk5_p=0.0002;
		
// kgenROS_p   id: kgenROS
	kgenROS_p=0.0005;
		
// kgenROSbyDamP_p   id: kgenROSbyDamP
	kgenROSbyDamP_p=0.0001;
		
// kgenROSbyp38_p   id: kgenROSbyp38
	kgenROSbyp38_p=0.0001;
		
// kgenROSbyRAGE_p   id: kgenROSbyRAGE
	kgenROSbyRAGE_p=0.0004;
		
// kinactBec_p   id: kinactBec
	kinactBec_p=5E-10;
		
// kinactBecCasp_p   id: kinactBecCasp
	kinactBecCasp_p=1E-8;
		
// kinactCasp_p   id: kinactCasp
	kinactCasp_p=0.0003;
		
// kinactCaspBcl2_p   id: kinactCaspBcl2
	kinactCaspBcl2_p=0.0003;
		
// kinactIntegrin_p   id: kinactIntegrin
	kinactIntegrin_p=0.0005;
		
// kinactNFkB_p   id: kinactNFkB
	kinactNFkB_p=0.1;
		
// kinactRAGE_p   id: kinactRAGE
	kinactRAGE_p=0.001;
		
// kinactRunx2_p   id: kinactRunx2
	kinactRunx2_p=0.0005;
		
// kinactSox9_p   id: kinactSox9
	kinactSox9_p=0.0015;
		
// kinactTgfb_p   id: kinactTgfb
	kinactTgfb_p=0.05;
		
// kinhibLys_p   id: kinhibLys
	kinhibLys_p=7E-6;
		
// kphosNFkB_p   id: kphosNFkB
	kphosNFkB_p=0.001;
		
// kphosp38_p   id: kphosp38
	kphosp38_p=1E-7;
		
// kphosp38ROS_p   id: kphosp38ROS
	kphosp38ROS_p=0.0001;
		
// kphosSmad1_p   id: kphosSmad1
	kphosSmad1_p=2E-5;
		
// kphosSmad2_p   id: kphosSmad2
	kphosSmad2_p=4E-5;
		
// kprodAGE_p   id: kprodAGE
	kprodAGE_p=1E-6;
		
// krelAlk1Alk5_p   id: krelAlk1Alk5
	krelAlk1Alk5_p=0.01;
		
// krelBaxBcl2_p   id: krelBaxBcl2
	krelBaxBcl2_p=0.00167;
		
// krelBaxBcl2Bec_p   id: krelBaxBcl2Bec
	krelBaxBcl2Bec_p=0.00167;
		
// krelBcl2Beclin_p   id: krelBcl2Beclin
	krelBcl2Beclin_p=0.0005;
		
// krelBecBaxBcl2_p   id: krelBecBaxBcl2
	krelBecBaxBcl2_p=0.0167;
		
// krelSmad1Smad4_p   id: krelSmad1Smad4
	krelSmad1Smad4_p=0.0167;
		
// krelSmad2Smad4_p   id: krelSmad2Smad4
	krelSmad2Smad4_p=0.0167;
		
// krelSmad7Alk1_p   id: krelSmad7Alk1
	krelSmad7Alk1_p=0.001;
		
// krelSmad7Alk5_p   id: krelSmad7Alk5
	krelSmad7Alk5_p=1E-6;
		
// krelTgfbAlk1_p   id: krelTgfbAlk1
	krelTgfbAlk1_p=1E-6;
		
// krelTgfbAlk5_p   id: krelTgfbAlk5
	krelTgfbAlk5_p=1E-6;
		
// kremROS_p   id: kremROS
	kremROS_p=0.000383;
		
// kremROSbySOD_p   id: kremROSbySOD
	kremROSbySOD_p=0.0001;
		
// ksynAcanmRNA_p   id: ksynAcanmRNA
	ksynAcanmRNA_p=0;
		
// ksynAcanmRNASox9A_p   id: ksynAcanmRNASox9A
	ksynAcanmRNASox9A_p=4.6E-6;
		
// ksynADAMTS5_p   id: ksynADAMTS5
	ksynADAMTS5_p=0.0005;
		
// ksynAggrecan_p   id: ksynAggrecan
	ksynAggrecan_p=1E-6;
		
// ksynAlk1_p   id: ksynAlk1
	ksynAlk1_p=5E-6;
		
// ksynAlk5_p   id: ksynAlk5
	ksynAlk5_p=5E-6;
		
// ksynBcl2_p   id: ksynBcl2
	ksynBcl2_p=0.002;
		
// ksynCol2_p   id: ksynCol2
	ksynCol2_p=1E-7;
		
// ksynCol2mRNA_p   id: ksynCol2mRNA
	ksynCol2mRNA_p=0;
		
// ksynCol2mRNASmad_p   id: ksynCol2mRNASmad
	ksynCol2mRNASmad_p=1E-6;
		
// ksynCol2mRNASox9A_p   id: ksynCol2mRNASox9A
	ksynCol2mRNASox9A_p=1E-6;
		
// ksynIkB_p   id: ksynIkB
	ksynIkB_p=0.001;
		
// ksynIL1_p   id: ksynIL1
	ksynIL1_p=0.005;
		
// ksynMMP13_p   id: ksynMMP13
	ksynMMP13_p=3.2E-5;
		
// ksynMMP13Runx2_p   id: ksynMMP13Runx2
	ksynMMP13Runx2_p=1.5E-6;
		
// ksynMMP2_p   id: ksynMMP2
	ksynMMP2_p=5E-6;
		
// ksynNatP_p   id: ksynNatP
	ksynNatP_p=0;
		
// ksynRAGE_p   id: ksynRAGE
	ksynRAGE_p=0.0001;
		
// ksynSmad7_p   id: ksynSmad7
	ksynSmad7_p=1E-5;
		
// ksynSOD_p   id: ksynSOD
	ksynSOD_p=0.002;
		
// ksynSox9_p   id: ksynSox9
	ksynSox9_p=0.00048;
		
// ksynSox9mRNA_p   id: ksynSox9mRNA
	ksynSox9mRNA_p=1E-5;
		
// ksynSox9mRNASox9A_p   id: ksynSox9mRNASox9A
	ksynSox9mRNASox9A_p=5E-6;
		
// NatP_s   id: NatP
	NatP_s=1500;
		
// Sink_s   id: Sink
	Sink_s=0;
		
// Source_s   id: Source
	Source_s=1;
		



xdot=[
//x(1)   ID: AcanmRNA  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kdegAcanmRNA_p* x(1) ) + (-1)*(1)* (ksynAggrecan_p* x(1) ) + (1)*(1)* (ksynAcanmRNASox9A_p* x(48) ) + (1)*(1)* (ksynAggrecan_p* x(1) ) );
	
//x(2)   ID: ADAMTS5  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kdegADAMTS5_p* x(2) ) + (-1)*(1)* (kdegAggrecan_p* x(57) * x(2) ) + (1)*(1)* (ksynADAMTS5_p* x(23) ) + (1)*(1)* (kdegAggrecan_p* x(57) * x(2) ) );
	
//x(3)   ID: AGEprod  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kactRAGE_p* x(3) ) + (1)*(1)* (kprodAGE_p*Source_s) + (1)*(1)* (kactRAGE_p* x(3) ) );
	
//x(4)   ID: Alk1  initialValue: 500
	(1/compartment_cell)*( (-1)*(1)* (kbinAlk1Alk5_p* x(4) * x(6) ) + (-1)*(1)* (kdegAlk1_p* x(4) ) + (1)*(1)* (krelAlk1Alk5_p* x(5) ) + (1)*(1)* (ksynAlk1_p*Source_s) );
	
//x(5)   ID: Alk1_Alk5  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (krelAlk1Alk5_p* x(5) ) + (-1)*(1)* (kbinTgfbAlk1_p* x(50) * x(5) ) + (1)*(1)* (kbinAlk1Alk5_p* x(4) * x(6) ) + (1)*(1)* (krelTgfbAlk1_p* x(51) ) );
	
//x(6)   ID: Alk5  initialValue: 500
	(1/compartment_cell)*( (-1)*(2)* (kdimerAlk5_p* x(6) *( x(6) -( 1 ))*( 0.5 )) + (-1)*(1)* (kbinAlk1Alk5_p* x(4) * x(6) ) + (-1)*(1)* (kdegAlk5_p* x(6) ) + (1)*(1)* (ksynAlk5_p*Source_s) + (1)*(2)* (kdedimerAlk5_p* x(7) ) + (1)*(1)* (krelAlk1Alk5_p* x(5) ) );
	
//x(7)   ID: Alk5_dimer  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kdedimerAlk5_p* x(7) ) + (-1)*(1)* (kbinTgfbAlk5_p* x(50) * x(7) ) + (1)*(1)* (kdimerAlk5_p* x(6) *( x(6) -( 1 ))*( 0.5 )) + (1)*(1)* (krelTgfbAlk5_p* x(53) ) );
	
//x(8)   ID: Bax  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kactCasp_p* x(18) * x(8) ) + (-1)*(1)* (kbinBaxBcl2_p* x(8) * x(12) ) + (-1)*(1)* (kbinBaxToBcl2Bec_p* x(8) * x(13) ) + (-1)*(1)* (kbinBaxToBcl2Bec_p* x(8) * x(14) ) + (1)*(1)* (kactCasp_p* x(18) * x(8) ) + (1)*(1)* (krelBaxBcl2_p* x(9) ) + (1)*(1)* (krelBaxBcl2Bec_p* x(10) ) + (1)*(1)* (krelBaxBcl2Bec_p* x(11) ) );
	
//x(9)   ID: Bax_Bcl2  initialValue: 90
	(1/compartment_cell)*( (-1)*(1)* (krelBaxBcl2_p* x(9) ) + (-1)*(1)* (kbinBecToBaxBcl2_p* x(15) * x(9) ) + (-1)*(1)* (kbinBecToBaxBcl2_p* x(16) * x(9) ) + (1)*(1)* (kbinBaxBcl2_p* x(8) * x(12) ) + (1)*(1)* (krelBecBaxBcl2_p* x(10) ) + (1)*(1)* (krelBecBaxBcl2_p* x(11) ) );
	
//x(10)   ID: Bax_Bcl2_Beclin  initialValue: 10
	(1/compartment_cell)*( (-1)*(1)* (krelBaxBcl2Bec_p* x(10) ) + (-1)*(1)* (krelBecBaxBcl2_p* x(10) ) + (1)*(1)* (kbinBecToBaxBcl2_p* x(15) * x(9) ) + (1)*(1)* (kbinBaxToBcl2Bec_p* x(8) * x(13) ) );
	
//x(11)   ID: Bax_Bcl2_Beclin_I  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (krelBaxBcl2Bec_p* x(11) ) + (-1)*(1)* (krelBecBaxBcl2_p* x(11) ) + (1)*(1)* (kbinBecToBaxBcl2_p* x(16) * x(9) ) + (1)*(1)* (kbinBaxToBcl2Bec_p* x(8) * x(14) ) );
	
//x(12)   ID: Bcl2  initialValue: 30
	(1/compartment_cell)*( (-1)*(1)* (kinactCaspBcl2_p* x(17) * x(12) ) + (-1)*(1)* (kdegBcl2_p* x(12) ) + (-1)*(1)* (kdegBcl2ROS_p* x(12) * x(35) ) + (-1)*(1)* (kdegBcl2Casp_p* x(12) * x(17) ) + (-1)*(1)* (kbinBaxBcl2_p* x(8) * x(12) ) + (-1)*(1)* (kbinBcl2Beclin_p* x(12) * x(15) ) + (-1)*(1)* (kbinBcl2Beclin_p* x(12) * x(16) ) + (1)*(1)* (kinactCaspBcl2_p* x(17) * x(12) ) + (1)*(1)* (ksynBcl2_p*Source_s) + (1)*(1)* (krelBaxBcl2_p* x(9) ) + (1)*(1)* (krelBcl2Beclin_p* x(13) ) + (1)*(1)* (krelBcl2Beclin_p* x(14) ) );
	
//x(13)   ID: Bcl2_Beclin  initialValue: 25
	(1/compartment_cell)*( (-1)*(1)* (kinactCaspBcl2_p* x(17) * x(13) ) + (-1)*(1)* (krelBcl2Beclin_p* x(13) ) + (-1)*(1)* (kbinBaxToBcl2Bec_p* x(8) * x(13) ) + (1)*(1)* (kinactCaspBcl2_p* x(17) * x(13) ) + (1)*(1)* (kbinBcl2Beclin_p* x(12) * x(15) ) + (1)*(1)* (krelBaxBcl2Bec_p* x(10) ) );
	
//x(14)   ID: Bcl2_Beclin_I  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (krelBcl2Beclin_p* x(14) ) + (-1)*(1)* (kbinBaxToBcl2Bec_p* x(8) * x(14) ) + (1)*(1)* (kbinBcl2Beclin_p* x(12) * x(16) ) + (1)*(1)* (krelBaxBcl2Bec_p* x(11) ) );
	
//x(15)   ID: Beclin  initialValue: 75
	(1/compartment_cell)*( (-1)*(1)* (kactLys_p* x(25) * x(15) ) + (-1)*(1)* (kbinBcl2Beclin_p* x(12) * x(15) ) + (-1)*(1)* (kinactBec_p* x(15) ) + (-1)*(1)* (kinactBecCasp_p* x(15) * x(17) ) + (-1)*(1)* (kbinBecToBaxBcl2_p* x(15) * x(9) ) + (1)*(1)* (kactLys_p* x(25) * x(15) ) + (1)*(1)* (krelBcl2Beclin_p* x(13) ) + (1)*(1)* (krelBecBaxBcl2_p* x(10) ) );
	
//x(16)   ID: Beclin_I  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kactCaspBecI_p* x(18) * x(16) ) + (-1)*(1)* (kbinBcl2Beclin_p* x(12) * x(16) ) + (-1)*(1)* (kbinBecToBaxBcl2_p* x(16) * x(9) ) + (1)*(1)* (kactCaspBecI_p* x(18) * x(16) ) + (1)*(1)* (krelBcl2Beclin_p* x(14) ) + (1)*(1)* (kinactBec_p* x(15) ) + (1)*(1)* (kinactBecCasp_p* x(15) * x(17) ) + (1)*(1)* (krelBecBaxBcl2_p* x(11) ) );
	
//x(17)   ID: Caspase_A  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kinactCasp_p* x(17) ) + (-1)*(1)* (kinactCaspBcl2_p* x(17) * x(13) ) + (-1)*(1)* (kinactCaspBcl2_p* x(17) * x(12) ) + (-1)*(1)* (kdegBcl2Casp_p* x(12) * x(17) ) + (-1)*(1)* (kinactBecCasp_p* x(15) * x(17) ) + (1)*(1)* (kactCasp_p* x(18) * x(8) ) + (1)*(1)* (kactCaspBecI_p* x(18) * x(16) ) + (1)*(1)* (kactCaspp38_p* x(18) * x(31) ) + (1)*(1)* (kdegBcl2Casp_p* x(12) * x(17) ) + (1)*(1)* (kinactBecCasp_p* x(15) * x(17) ) );
	
//x(18)   ID: Caspase_I  initialValue: 100
	(1/compartment_cell)*( (-1)*(1)* (kactCasp_p* x(18) * x(8) ) + (-1)*(1)* (kactCaspBecI_p* x(18) * x(16) ) + (-1)*(1)* (kactCaspp38_p* x(18) * x(31) ) + (1)*(1)* (kinactCasp_p* x(17) ) + (1)*(1)* (kinactCaspBcl2_p* x(17) * x(13) ) + (1)*(1)* (kinactCaspBcl2_p* x(17) * x(12) ) );
	
//x(19)   ID: Col2mRNA  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kdegCol2mRNA_p* x(19) ) + (-1)*(1)* (ksynCol2_p* x(19) ) + (1)*(1)* (ksynCol2mRNASox9A_p* x(48) ) + (1)*(1)* (ksynCol2mRNASmad_p* x(43) ) + (1)*(1)* (ksynCol2_p* x(19) ) );
	
//x(20)   ID: DamP  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kdegDamP_p* x(20) * x(24) ) + (-1)*(1)* (kgenROSbyDamP_p* x(20) ) + (1)*(1)* ((kdamNatP_p*NatP_s* x(35) )/(( 10 )+ x(35) )) + (1)*(1)* (kgenROSbyDamP_p* x(20) ) );
	
//x(21)   ID: IkB  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kinactNFkB_p* x(28) * x(21) ) + (1)*(1)* (ksynIkB_p* x(29) ) );
	
//x(22)   ID: IkB_NFkB  initialValue: 100
	(1/compartment_cell)*( (-1)*(1)* (kdegIkB_p* x(35) * x(22) ) + (-1)*(1)* (kdegIkB_p* x(23) * x(22) ) + (1)*(1)* (kinactNFkB_p* x(28) * x(21) ) );
	
//x(23)   ID: IL1  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kdegIkB_p* x(23) * x(22) ) + (-1)*(1)* (kdegIL1_p* x(23) ) + (-1)*(1)* (ksynMMP13_p* x(23) ) + (-1)*(1)* (ksynMMP2_p* x(23) ) + (-1)*(1)* (ksynADAMTS5_p* x(23) ) + (-1)*(1)* (kphosp38_p* x(30) * x(23) ) + (1)*(1)* (kdegIkB_p* x(23) * x(22) ) + (1)*(1)* (ksynIL1_p* x(29) ) + (1)*(1)* (ksynMMP13_p* x(23) ) + (1)*(1)* (ksynMMP2_p* x(23) ) + (1)*(1)* (ksynADAMTS5_p* x(23) ) + (1)*(1)* (kphosp38_p* x(30) * x(23) ) );
	
//x(24)   ID: Lys_A  initialValue: 40
	(1/compartment_cell)*( (-1)*(1)* (kinhibLys_p* x(24) ) + (-1)*(1)* (kdegDamP_p* x(20) * x(24) ) + (-1)*(1)* ((kdamLys_p* x(24) * x(35) )/(( 10 )+ x(35) )) + (1)*(1)* (kactLys_p* x(25) * x(15) ) + (1)*(1)* (kdegDamP_p* x(20) * x(24) ) );
	
//x(25)   ID: Lys_I  initialValue: 360
	(1/compartment_cell)*( (-1)*(1)* (kactLys_p* x(25) * x(15) ) + (1)*(1)* (kinhibLys_p* x(24) ) + (1)*(1)* ((kdamLys_p* x(24) * x(35) )/(( 10 )+ x(35) )) );
	
//x(26)   ID: MMP13  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kdegMMP13_p* x(26) ) + (-1)*(1)* (kdegCollagen_p* x(59) * x(26) ) + (1)*(1)* (kdegCollagen_p* x(59) * x(26) ) + (1)*(1)* (kactMMP13_p* x(32) ) );
	
//x(27)   ID: MMP2  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kdegMMP2_p* x(27) ) + (-1)*(1)* (kactTgfbMMP2_p* x(61) * x(27) ) + (1)*(1)* (kactMMP2_p* x(33) ) + (1)*(1)* (kactTgfbMMP2_p* x(61) * x(27) ) );
	
//x(28)   ID: NFkB  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kinactNFkB_p* x(28) * x(21) ) + (-1)*(1)* (kphosNFkB_p* x(28) * x(31) ) + (1)*(1)* (kdegIkB_p* x(35) * x(22) ) + (1)*(1)* (kdegIkB_p* x(23) * x(22) ) + (1)*(1)* (kdephosNFkB_p* x(29) ) );
	
//x(29)   ID: NFkB_P  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (ksynRAGE_p* x(29) ) + (-1)*(1)* (ksynIL1_p* x(29) ) + (-1)*(1)* (ksynIkB_p* x(29) ) + (-1)*(1)* (ksynSOD_p* x(29) ) + (-1)*(1)* (kdephosNFkB_p* x(29) ) + (1)*(1)* (ksynRAGE_p* x(29) ) + (1)*(1)* (ksynIL1_p* x(29) ) + (1)*(1)* (ksynIkB_p* x(29) ) + (1)*(1)* (ksynSOD_p* x(29) ) + (1)*(1)* (kphosNFkB_p* x(28) * x(31) ) );
	
//x(30)   ID: p38  initialValue: 100
	(1/compartment_cell)*( (-1)*(1)* (kphosp38_p* x(30) * x(23) ) + (-1)*(1)* (kphosp38ROS_p* x(30) * x(35) ) + (1)*(1)* (kdephosp38_p* x(31) ) );
	
//x(31)   ID: p38_P  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kactCaspp38_p* x(18) * x(31) ) + (-1)*(1)* (kdephosp38_p* x(31) ) + (-1)*(1)* (kphosNFkB_p* x(28) * x(31) ) + (-1)*(1)* (kgenROSbyp38_p* x(31) ) + (1)*(1)* (kactCaspp38_p* x(18) * x(31) ) + (1)*(1)* (kphosp38_p* x(30) * x(23) ) + (1)*(1)* (kphosp38ROS_p* x(30) * x(35) ) + (1)*(1)* (kphosNFkB_p* x(28) * x(31) ) + (1)*(1)* (kgenROSbyp38_p* x(31) ) );
	
//x(32)   ID: proMMP13  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kactMMP13_p* x(32) ) + (1)*(1)* (ksynMMP13_p* x(23) ) + (1)*(1)* (ksynMMP13Runx2_p* x(36) ) );
	
//x(33)   ID: proMMP2  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kactMMP2_p* x(33) ) + (1)*(1)* (ksynMMP2_p* x(23) ) );
	
//x(34)   ID: RAGE  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kgenROSbyRAGE_p* x(34) ) + (-1)*(1)* (kinactRAGE_p* x(34) ) + (1)*(1)* (kactRAGE_p* x(3) ) + (1)*(1)* (kgenROSbyRAGE_p* x(34) ) + (1)*(1)* (ksynRAGE_p* x(29) ) );
	
//x(35)   ID: ROS  initialValue: 2
	(1/compartment_cell)*( (-1)*(1)* (kdegBcl2ROS_p* x(12) * x(35) ) + (-1)*(1)* (kremROS_p* x(35) ) + (-1)*(1)* ((kdamNatP_p*NatP_s* x(35) )/(( 10 )+ x(35) )) + (-1)*(1)* (kdegIkB_p* x(35) * x(22) ) + (-1)*(1)* (kremROSbySOD_p* x(46) * x(35) ) + (-1)*(1)* (kphosp38ROS_p* x(30) * x(35) ) + (-1)*(1)* ((kdamLys_p* x(24) * x(35) )/(( 10 )+ x(35) )) + (1)*(1)* (kdegBcl2ROS_p* x(12) * x(35) ) + (1)*(1)* (kgenROS_p*Source_s) + (1)*(1)* ((kdamNatP_p*NatP_s* x(35) )/(( 10 )+ x(35) )) + (1)*(1)* (kgenROSbyRAGE_p* x(34) ) + (1)*(1)* (kdegIkB_p* x(35) * x(22) ) + (1)*(1)* (kgenROSbyDamP_p* x(20) ) + (1)*(1)* (kphosp38ROS_p* x(30) * x(35) ) + (1)*(1)* (kgenROSbyp38_p* x(31) ) + (1)*(1)* ((kdamLys_p* x(24) * x(35) )/(( 10 )+ x(35) )) );
	
//x(36)   ID: Runx2_A  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kinactRunx2_p* x(36) * x(43) ) + (-1)*(1)* (ksynMMP13Runx2_p* x(36) ) + (1)*(1)* (kactRunx2_p* x(37) * x(40) ) + (1)*(1)* (ksynMMP13Runx2_p* x(36) ) );
	
//x(37)   ID: Runx2_I  initialValue: 100
	(1/compartment_cell)*( (-1)*(1)* (kactRunx2_p* x(37) * x(40) ) + (1)*(1)* (kinactRunx2_p* x(36) * x(43) ) );
	
//x(38)   ID: Smad1  initialValue: 600
	(1/compartment_cell)*( (-1)*(1)* (kphosSmad1_p* x(51) * x(38) ) + (1)*(1)* (kdephosSmad1_p* x(39) ) + (1)*(1)* (kdephosSmad1Smad7_p* x(39) * x(45) ) );
	
//x(39)   ID: Smad1_P  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kdephosSmad1_p* x(39) ) + (-1)*(1)* (kdephosSmad1Smad7_p* x(39) * x(45) ) + (-1)*(1)* (kbinSmad1Smad4_p* x(39) * x(44) ) + (1)*(1)* (kphosSmad1_p* x(51) * x(38) ) + (1)*(1)* (krelSmad1Smad4_p* x(40) ) );
	
//x(40)   ID: Smad1_P_Smad4  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (krelSmad1Smad4_p* x(40) ) + (-1)*(1)* (kactRunx2_p* x(37) * x(40) ) + (1)*(1)* (kbinSmad1Smad4_p* x(39) * x(44) ) + (1)*(1)* (kactRunx2_p* x(37) * x(40) ) );
	
//x(41)   ID: Smad2  initialValue: 600
	(1/compartment_cell)*( (-1)*(1)* (kphosSmad2_p* x(53) * x(41) ) + (1)*(1)* (kdephosSmad2_p* x(42) ) );
	
//x(42)   ID: Smad2_P  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kbinSmad2Smad4_p* x(42) * x(44) ) + (-1)*(1)* (kdephosSmad2_p* x(42) ) + (1)*(1)* (kphosSmad2_p* x(53) * x(41) ) + (1)*(1)* (krelSmad2Smad4_p* x(43) ) );
	
//x(43)   ID: Smad2_P_Smad4  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (krelSmad2Smad4_p* x(43) ) + (-1)*(1)* (ksynSmad7_p* x(43) ) + (-1)*(1)* (kactSox9_p* x(43) * x(47) ) + (-1)*(1)* (ksynCol2mRNASmad_p* x(43) ) + (-1)*(1)* (kinactRunx2_p* x(36) * x(43) ) + (1)*(1)* (kbinSmad2Smad4_p* x(42) * x(44) ) + (1)*(1)* (ksynSmad7_p* x(43) ) + (1)*(1)* (kactSox9_p* x(43) * x(47) ) + (1)*(1)* (ksynCol2mRNASmad_p* x(43) ) + (1)*(1)* (kinactRunx2_p* x(36) * x(43) ) );
	
//x(44)   ID: Smad4  initialValue: 600
	(1/compartment_cell)*( (-1)*(1)* (kbinSmad2Smad4_p* x(42) * x(44) ) + (-1)*(1)* (kbinSmad1Smad4_p* x(39) * x(44) ) + (1)*(1)* (krelSmad2Smad4_p* x(43) ) + (1)*(1)* (krelSmad1Smad4_p* x(40) ) );
	
//x(45)   ID: Smad7  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kbinSmad7Alk5_p* x(53) * x(45) ) + (-1)*(1)* (kdephosSmad1Smad7_p* x(39) * x(45) ) + (-1)*(1)* (kbinSmad7Alk1_p* x(51) * x(45) ) + (-1)*(1)* (kdegSmad7_p* x(45) ) + (1)*(1)* (krelSmad7Alk5_p* x(54) ) + (1)*(1)* (ksynSmad7_p* x(43) ) + (1)*(1)* (kdephosSmad1Smad7_p* x(39) * x(45) ) + (1)*(1)* (krelSmad7Alk1_p* x(52) ) );
	
//x(46)   ID: SOD  initialValue: 2
	(1/compartment_cell)*( (-1)*(1)* (kdegSOD_p* x(46) ) + (-1)*(1)* (kremROSbySOD_p* x(46) * x(35) ) + (1)*(1)* (ksynSOD_p* x(29) ) + (1)*(1)* (kremROSbySOD_p* x(46) * x(35) ) );
	
//x(47)   ID: Sox9  initialValue: 100
	(1/compartment_cell)*( (-1)*(1)* (kactSox9_p* x(43) * x(47) ) + (-1)*(1)* (kdegSox9_p* x(47) ) + (1)*(1)* (kinactSox9_p* x(48) ) + (1)*(1)* (ksynSox9_p* x(49) ) );
	
//x(48)   ID: Sox9_A  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kinactSox9_p* x(48) ) + (-1)*(1)* (ksynSox9mRNASox9A_p* x(48) ) + (-1)*(1)* (ksynCol2mRNASox9A_p* x(48) ) + (-1)*(1)* (ksynAcanmRNASox9A_p* x(48) ) + (1)*(1)* (kactSox9_p* x(43) * x(47) ) + (1)*(1)* (ksynSox9mRNASox9A_p* x(48) ) + (1)*(1)* (ksynCol2mRNASox9A_p* x(48) ) + (1)*(1)* (ksynAcanmRNASox9A_p* x(48) ) );
	
//x(49)   ID: Sox9mRNA  initialValue: 10
	(1/compartment_cell)*( (-1)*(1)* (kdegSox9mRNA_p* x(49) ) + (-1)*(1)* (ksynSox9_p* x(49) ) + (1)*(1)* (ksynSox9mRNA_p*Source_s) + (1)*(1)* (ksynSox9mRNASox9A_p* x(48) ) + (1)*(1)* (ksynSox9_p* x(49) ) );
	
//x(50)   ID: Tgfb_A  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kinactTgfb_p* x(50) ) + (-1)*(1)* (kbinTgfbAlk5_p* x(50) * x(7) ) + (-1)*(1)* (kbinTgfbAlk1_p* x(50) * x(5) ) + (1)*(1)* (kactTgfbIntegrin_p* x(61) * x(60) ) + (1)*(1)* (kactTgfbMMP2_p* x(61) * x(27) ) + (1)*(1)* (krelTgfbAlk5_p* x(53) ) + (1)*(1)* (krelTgfbAlk1_p* x(51) ) );
	
//x(51)   ID: Tgfb_Alk1_Alk5  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (krelTgfbAlk1_p* x(51) ) + (-1)*(1)* (kphosSmad1_p* x(51) * x(38) ) + (-1)*(1)* (kbinSmad7Alk1_p* x(51) * x(45) ) + (1)*(1)* (kbinTgfbAlk1_p* x(50) * x(5) ) + (1)*(1)* (kphosSmad1_p* x(51) * x(38) ) + (1)*(1)* (krelSmad7Alk1_p* x(52) ) );
	
//x(52)   ID: Tgfb_Alk1_Alk5_Smad7  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (krelSmad7Alk1_p* x(52) ) + (-1)*(1)* (kdegSmad7Alk1_p* x(52) ) + (1)*(1)* (kbinSmad7Alk1_p* x(51) * x(45) ) );
	
//x(53)   ID: Tgfb_Alk5_dimer  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (krelTgfbAlk5_p* x(53) ) + (-1)*(1)* (kbinSmad7Alk5_p* x(53) * x(45) ) + (-1)*(1)* (kphosSmad2_p* x(53) * x(41) ) + (1)*(1)* (kbinTgfbAlk5_p* x(50) * x(7) ) + (1)*(1)* (krelSmad7Alk5_p* x(54) ) + (1)*(1)* (kphosSmad2_p* x(53) * x(41) ) );
	
//x(54)   ID: Tgfb_Alk5_dimer_Smad7  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (krelSmad7Alk5_p* x(54) ) + (-1)*(1)* (kdegSmad7Alk5_p* x(54) ) + (1)*(1)* (kbinSmad7Alk5_p* x(53) * x(45) ) );
	
//x(55)   ID: AggFrag  initialValue: 0
	(1/compartment_ecm)*( (1)*(1)* (kdegAggrecan_p* x(57) * x(2) ) );
	
//x(56)   ID: Aggrecan  initialValue: 0
	(1/compartment_ecm)*( (-1)*(1)* (kbinAggrecanCollagen2_p* x(56) * x(59) ) + (1)*(1)* (ksynAggrecan_p* x(1) ) );
	
//x(57)   ID: Aggrecan_Collagen2  initialValue: 1000
	(1/compartment_ecm)*( (-1)*(1)* (kdegAggrecan_p* x(57) * x(2) ) + (1)*(1)* (kbinAggrecanCollagen2_p* x(56) * x(59) ) );
	
//x(58)   ID: ColFrag  initialValue: 0
	(1/compartment_ecm)*( (1)*(1)* (kdegCollagen_p* x(59) * x(26) ) );
	
//x(59)   ID: Collagen2  initialValue: 0
	(1/compartment_ecm)*( (-1)*(1)* (kdegCollagen_p* x(59) * x(26) ) + (-1)*(1)* (kbinAggrecanCollagen2_p* x(56) * x(59) ) + (1)*(1)* (kdegAggrecan_p* x(57) * x(2) ) + (1)*(1)* (ksynCol2_p* x(19) ) );
	
//x(60)   ID: Integrin  initialValue: 0
	(1/compartment_ecm)*( (-1)*(1)* (kinactIntegrin_p* x(60) ) + (-1)*(1)* (kactTgfbIntegrin_p* x(61) * x(60) ) + (1)*(1)* (kactIntegrin_p*Source_s) + (1)*(1)* (kactTgfbIntegrin_p* x(61) * x(60) ) );
	
//x(61)   ID: Tgfb_I  initialValue: 200
	(1/compartment_ecm)*( (-1)*(1)* (kactTgfbIntegrin_p* x(61) * x(60) ) + (-1)*(1)* (kactTgfbMMP2_p* x(61) * x(27) ) + (1)*(1)* (kinactTgfb_p* x(50) ) + (1)*(1)* (kdegSmad7Alk5_p* x(54) ) + (1)*(1)* (kdegSmad7Alk1_p* x(52) ) );
	
//x(62)   ID: IntegrinCount  initialValue: 0
	(1/compartment_ecm)*( (1)*(1)* (kactIntegrin_p*Source_s) )
	];


	
endfunction
        x0=[0;0;0;500;0;500;0;0;90;10;0;30;25;0;75;0;0;100;0;0;0;100;0;40;360;0;0;0;0;100;0;0;0;0;2;0;100;600;0;0;600;0;0;600;0;2;100;0;10;0;0;0;0;0;0;0;1000;0;0;0;200;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)' 'x(54)' 'x(55)' 'x(56)' 'x(57)' 'x(58)' 'x(59)' 'x(60)' 'x(61)' 'x(62)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54;55;56;57;58;59;60;61;62])

//real_variable:
	
	
//x(1)   id: AcanmRNA  initialValue: 0
	
//x(2)   id: ADAMTS5  initialValue: 0
	
//x(3)   id: AGEprod  initialValue: 0
	
//x(4)   id: Alk1  initialValue: 500
	
//x(5)   id: Alk1_Alk5  initialValue: 0
	
//x(6)   id: Alk5  initialValue: 500
	
//x(7)   id: Alk5_dimer  initialValue: 0
	
//x(8)   id: Bax  initialValue: 0
	
//x(9)   id: Bax_Bcl2  initialValue: 90
	
//x(10)   id: Bax_Bcl2_Beclin  initialValue: 10
	
//x(11)   id: Bax_Bcl2_Beclin_I  initialValue: 0
	
//x(12)   id: Bcl2  initialValue: 30
	
//x(13)   id: Bcl2_Beclin  initialValue: 25
	
//x(14)   id: Bcl2_Beclin_I  initialValue: 0
	
//x(15)   id: Beclin  initialValue: 75
	
//x(16)   id: Beclin_I  initialValue: 0
	
//x(17)   id: Caspase_A  initialValue: 0
	
//x(18)   id: Caspase_I  initialValue: 100
	
//x(19)   id: Col2mRNA  initialValue: 0
	
//x(20)   id: DamP  initialValue: 0
	
//x(21)   id: IkB  initialValue: 0
	
//x(22)   id: IkB_NFkB  initialValue: 100
	
//x(23)   id: IL1  initialValue: 0
	
//x(24)   id: Lys_A  initialValue: 40
	
//x(25)   id: Lys_I  initialValue: 360
	
//x(26)   id: MMP13  initialValue: 0
	
//x(27)   id: MMP2  initialValue: 0
	
//x(28)   id: NFkB  initialValue: 0
	
//x(29)   id: NFkB_P  initialValue: 0
	
//x(30)   id: p38  initialValue: 100
	
//x(31)   id: p38_P  initialValue: 0
	
//x(32)   id: proMMP13  initialValue: 0
	
//x(33)   id: proMMP2  initialValue: 0
	
//x(34)   id: RAGE  initialValue: 0
	
//x(35)   id: ROS  initialValue: 2
	
//x(36)   id: Runx2_A  initialValue: 0
	
//x(37)   id: Runx2_I  initialValue: 100
	
//x(38)   id: Smad1  initialValue: 600
	
//x(39)   id: Smad1_P  initialValue: 0
	
//x(40)   id: Smad1_P_Smad4  initialValue: 0
	
//x(41)   id: Smad2  initialValue: 600
	
//x(42)   id: Smad2_P  initialValue: 0
	
//x(43)   id: Smad2_P_Smad4  initialValue: 0
	
//x(44)   id: Smad4  initialValue: 600
	
//x(45)   id: Smad7  initialValue: 0
	
//x(46)   id: SOD  initialValue: 2
	
//x(47)   id: Sox9  initialValue: 100
	
//x(48)   id: Sox9_A  initialValue: 0
	
//x(49)   id: Sox9mRNA  initialValue: 10
	
//x(50)   id: Tgfb_A  initialValue: 0
	
//x(51)   id: Tgfb_Alk1_Alk5  initialValue: 0
	
//x(52)   id: Tgfb_Alk1_Alk5_Smad7  initialValue: 0
	
//x(53)   id: Tgfb_Alk5_dimer  initialValue: 0
	
//x(54)   id: Tgfb_Alk5_dimer_Smad7  initialValue: 0
	
//x(55)   id: AggFrag  initialValue: 0
	
//x(56)   id: Aggrecan  initialValue: 0
	
//x(57)   id: Aggrecan_Collagen2  initialValue: 1000
	
//x(58)   id: ColFrag  initialValue: 0
	
//x(59)   id: Collagen2  initialValue: 0
	
//x(60)   id: Integrin  initialValue: 0
	
//x(61)   id: Tgfb_I  initialValue: 200
	
//x(62)   id: IntegrinCount  initialValue: 0