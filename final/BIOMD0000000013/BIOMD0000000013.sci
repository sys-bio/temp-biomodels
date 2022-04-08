
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_chloroplast   id: chloroplast
	compartment_chloroplast=1;
		
// compartment_cytosol   id: cytosol
	compartment_cytosol=1;
		
// Light_on_p   id: Light_on
	Light_on_p=1;
		
// Rbco_vm_E1   id: Rbco_vm     reactionID: E1
	Rbco_vm_E1=340;
	
// Rbco_km_E1   id: Rbco_km     reactionID: E1
	Rbco_km_E1=0.02;
	
// Rbco_KiPGA_E1   id: Rbco_KiPGA     reactionID: E1
	Rbco_KiPGA_E1=0.84;
	
// Rbco_KiFBP_E1   id: Rbco_KiFBP     reactionID: E1
	Rbco_KiFBP_E1=0.04;
	
// Rbco_KiSBP_E1   id: Rbco_KiSBP     reactionID: E1
	Rbco_KiSBP_E1=0.075;
	
// Rbco_KiPi_E1   id: Rbco_KiPi     reactionID: E1
	Rbco_KiPi_E1=0.9;
	
// Rbco_KiNADPH_E1   id: Rbco_KiNADPH     reactionID: E1
	Rbco_KiNADPH_E1=0.07;
	
// PGK_v_E2   id: PGK_v     reactionID: E2
	PGK_v_E2=500000000;
	
// q2_E2   id: q2     reactionID: E2
	q2_E2=0.00031;
	
// G3Pdh_v_E3   id: G3Pdh_v     reactionID: E3
	G3Pdh_v_E3=500000000;
	
// q3_E3   id: q3     reactionID: E3
	q3_E3=16000000;
	
// TPI_v_E4   id: TPI_v     reactionID: E4
	TPI_v_E4=500000000;
	
// q4_E4   id: q4     reactionID: E4
	q4_E4=22;
	
// F_Aldo_v_E5   id: F_Aldo_v     reactionID: E5
	F_Aldo_v_E5=500000000;
	
// q5_E5   id: q5     reactionID: E5
	q5_E5=7.1;
	
// FBPase_ch_vm_E6   id: FBPase_ch_vm     reactionID: E6
	FBPase_ch_vm_E6=200;
	
// FBPase_ch_km_E6   id: FBPase_ch_km     reactionID: E6
	FBPase_ch_km_E6=0.03;
	
// FBPase_ch_KiF6P_E6   id: FBPase_ch_KiF6P     reactionID: E6
	FBPase_ch_KiF6P_E6=0.7;
	
// FBPase_ch_KiPi_E6   id: FBPase_ch_KiPi     reactionID: E6
	FBPase_ch_KiPi_E6=12;
	
// F_TKL_v_E7   id: F_TKL_v     reactionID: E7
	F_TKL_v_E7=500000000;
	
// q7_E7   id: q7     reactionID: E7
	q7_E7=0.084;
	
// E_Aldo_v_E8   id: E_Aldo_v     reactionID: E8
	E_Aldo_v_E8=500000000;
	
// q8_E8   id: q8     reactionID: E8
	q8_E8=13;
	
// SBPase_ch_vm_E9   id: SBPase_ch_vm     reactionID: E9
	SBPase_ch_vm_E9=40;
	
// SBPase_ch_km_E9   id: SBPase_ch_km     reactionID: E9
	SBPase_ch_km_E9=0.013;
	
// SBPase_ch_KiPi_E9   id: SBPase_ch_KiPi     reactionID: E9
	SBPase_ch_KiPi_E9=12;
	
// G_TKL_v_E10   id: G_TKL_v     reactionID: E10
	G_TKL_v_E10=500000000;
	
// q10_E10   id: q10     reactionID: E10
	q10_E10=0.85;
	
// R5Piso_v_E11   id: R5Piso_v     reactionID: E11
	R5Piso_v_E11=500000000;
	
// q11_E11   id: q11     reactionID: E11
	q11_E11=0.4;
	
// X5Pepi_v_E12   id: X5Pepi_v     reactionID: E12
	X5Pepi_v_E12=500000000;
	
// q12_E12   id: q12     reactionID: E12
	q12_E12=0.67;
	
// Ru5Pk_ch_vm_E13   id: Ru5Pk_ch_vm     reactionID: E13
	Ru5Pk_ch_vm_E13=10000;
	
// Ru5Pk_ch_km1_E13   id: Ru5Pk_ch_km1     reactionID: E13
	Ru5Pk_ch_km1_E13=0.05;
	
// Ru5Pk_ch_KiPGA_E13   id: Ru5Pk_ch_KiPGA     reactionID: E13
	Ru5Pk_ch_KiPGA_E13=2;
	
// Ru5Pk_ch_KiRuBP_E13   id: Ru5Pk_ch_KiRuBP     reactionID: E13
	Ru5Pk_ch_KiRuBP_E13=0.7;
	
// Ru5Pk_ch_KiPi_E13   id: Ru5Pk_ch_KiPi     reactionID: E13
	Ru5Pk_ch_KiPi_E13=4;
	
// Ru5Pk_ch_KiADP1_E13   id: Ru5Pk_ch_KiADP1     reactionID: E13
	Ru5Pk_ch_KiADP1_E13=2.5;
	
// Ru5Pk_ch_km2_E13   id: Ru5Pk_ch_km2     reactionID: E13
	Ru5Pk_ch_km2_E13=0.05;
	
// Ru5Pk_ch_KiADP2_E13   id: Ru5Pk_ch_KiADP2     reactionID: E13
	Ru5Pk_ch_KiADP2_E13=0.4;
	
// PGI_v_E14   id: PGI_v     reactionID: E14
	PGI_v_E14=500000000;
	
// q14_E14   id: q14     reactionID: E14
	q14_E14=2.3;
	
// PGM_v_E15   id: PGM_v     reactionID: E15
	PGM_v_E15=500000000;
	
// q15_E15   id: q15     reactionID: E15
	q15_E15=0.058;
	
// LR_vm_light_reaction   id: LR_vm     reactionID: light_reaction
	LR_vm_light_reaction=3500;
	
// LR_kmADP_light_reaction   id: LR_kmADP     reactionID: light_reaction
	LR_kmADP_light_reaction=0.014;
	
// LR_kmPi_light_reaction   id: LR_kmPi     reactionID: light_reaction
	LR_kmPi_light_reaction=0.3;
	
// StSyn_vm_E16   id: StSyn_vm     reactionID: E16
	StSyn_vm_E16=40;
	
// stsyn_ch_km1_E16   id: stsyn_ch_km1     reactionID: E16
	stsyn_ch_km1_E16=0.08;
	
// stsyn_ch_Ki_E16   id: stsyn_ch_Ki     reactionID: E16
	stsyn_ch_Ki_E16=10;
	
// stsyn_ch_km2_E16   id: stsyn_ch_km2     reactionID: E16
	stsyn_ch_km2_E16=0.08;
	
// stsyn_ch_ka1_E16   id: stsyn_ch_ka1     reactionID: E16
	stsyn_ch_ka1_E16=0.1;
	
// stsyn_ch_ka2_E16   id: stsyn_ch_ka2     reactionID: E16
	stsyn_ch_ka2_E16=0.02;
	
// stsyn_ch_ka3_E16   id: stsyn_ch_ka3     reactionID: E16
	stsyn_ch_ka3_E16=0.02;
	
// StPase_Vm_E17   id: StPase_Vm     reactionID: E17
	StPase_Vm_E17=40;
	
// StPase_km_E17   id: StPase_km     reactionID: E17
	StPase_km_E17=0.1;
	
// StPase_kiG1P_E17   id: StPase_kiG1P     reactionID: E17
	StPase_kiG1P_E17=0.05;
	
// TP_Piap_vm_E18_DHAP   id: TP_Piap_vm     reactionID: E18_DHAP
	TP_Piap_vm_E18_DHAP=250;
	
// TP_Piap_kDHAP_ch_E18_DHAP   id: TP_Piap_kDHAP_ch     reactionID: E18_DHAP
	TP_Piap_kDHAP_ch_E18_DHAP=0.077;
	
// TP_Piap_kPi_cyt_E18_DHAP   id: TP_Piap_kPi_cyt     reactionID: E18_DHAP
	TP_Piap_kPi_cyt_E18_DHAP=0.74;
	
// TP_Piap_kPi_ch_E18_DHAP   id: TP_Piap_kPi_ch     reactionID: E18_DHAP
	TP_Piap_kPi_ch_E18_DHAP=0.63;
	
// TP_Piap_kPGA_ch_E18_DHAP   id: TP_Piap_kPGA_ch     reactionID: E18_DHAP
	TP_Piap_kPGA_ch_E18_DHAP=0.25;
	
// TP_Piap_kGAP_ch_E18_DHAP   id: TP_Piap_kGAP_ch     reactionID: E18_DHAP
	TP_Piap_kGAP_ch_E18_DHAP=0.075;
	
// PGA_xpMult_E18_PGA   id: PGA_xpMult     reactionID: E18_PGA
	PGA_xpMult_E18_PGA=0.75;
	
// TP_Piap_vm_E18_PGA   id: TP_Piap_vm     reactionID: E18_PGA
	TP_Piap_vm_E18_PGA=250;
	
// TP_Piap_kPGA_ch_E18_PGA   id: TP_Piap_kPGA_ch     reactionID: E18_PGA
	TP_Piap_kPGA_ch_E18_PGA=0.25;
	
// TP_Piap_kPi_cyt_E18_PGA   id: TP_Piap_kPi_cyt     reactionID: E18_PGA
	TP_Piap_kPi_cyt_E18_PGA=0.74;
	
// TP_Piap_kPi_ch_E18_PGA   id: TP_Piap_kPi_ch     reactionID: E18_PGA
	TP_Piap_kPi_ch_E18_PGA=0.63;
	
// TP_Piap_kDHAP_ch_E18_PGA   id: TP_Piap_kDHAP_ch     reactionID: E18_PGA
	TP_Piap_kDHAP_ch_E18_PGA=0.077;
	
// TP_Piap_kGAP_ch_E18_PGA   id: TP_Piap_kGAP_ch     reactionID: E18_PGA
	TP_Piap_kGAP_ch_E18_PGA=0.075;
	
// TP_Piap_vm_E18_GAP   id: TP_Piap_vm     reactionID: E18_GAP
	TP_Piap_vm_E18_GAP=250;
	
// TP_Piap_kGAP_ch_E18_GAP   id: TP_Piap_kGAP_ch     reactionID: E18_GAP
	TP_Piap_kGAP_ch_E18_GAP=0.075;
	
// TP_Piap_kPi_cyt_E18_GAP   id: TP_Piap_kPi_cyt     reactionID: E18_GAP
	TP_Piap_kPi_cyt_E18_GAP=0.74;
	
// TP_Piap_kPi_ch_E18_GAP   id: TP_Piap_kPi_ch     reactionID: E18_GAP
	TP_Piap_kPi_ch_E18_GAP=0.63;
	
// TP_Piap_kPGA_ch_E18_GAP   id: TP_Piap_kPGA_ch     reactionID: E18_GAP
	TP_Piap_kPGA_ch_E18_GAP=0.25;
	
// TP_Piap_kDHAP_ch_E18_GAP   id: TP_Piap_kDHAP_ch     reactionID: E18_GAP
	TP_Piap_kDHAP_ch_E18_GAP=0.077;
	



xdot=[
//x(1)   ID: x_CO2  initialValue: 1
	0;
	
//x(2)   ID: RuBP_ch  initialValue: 0.33644
	(1/compartment_chloroplast)*( (-1)*(1)* ((Light_on_p*Rbco_vm_E1* x(2) *compartment_chloroplast)/( x(2) +(Rbco_km_E1*(( 1 )+( x(3) /Rbco_KiPGA_E1)+( x(10) /Rbco_KiFBP_E1)+( x(14) /Rbco_KiSBP_E1)+( x(8) /Rbco_KiPi_E1)+( x(6) /Rbco_KiNADPH_E1))))) + (1)*(1)* ((Light_on_p*Ru5Pk_ch_vm_E13* x(17) *compartment_chloroplast* x(4) )/(( x(17) +(Ru5Pk_ch_km1_E13*(( 1 )+( x(3) /Ru5Pk_ch_KiPGA_E13)+( x(2) /Ru5Pk_ch_KiRuBP_E13)+( x(8) /Ru5Pk_ch_KiPi_E13))))*(( x(4) *(( 1 )+( x(23) /Ru5Pk_ch_KiADP1_E13)))+(Ru5Pk_ch_km2_E13*(( 1 )+( x(23) /Ru5Pk_ch_KiADP2_E13)))))) );
	
//x(3)   ID: PGA_ch  initialValue: 3.35479
	(1/compartment_chloroplast)*( (-1)*(1)* (Light_on_p*PGK_v_E2*compartment_chloroplast*(( x(3) * x(4) )-(( x(5) * x(23) )/q2_E2))) + (-1)*(1)* ((PGA_xpMult_E18_PGA*TP_Piap_vm_E18_PGA* x(3) *compartment_chloroplast)/(TP_Piap_kPGA_ch_E18_PGA*(( 1 )+((( 1 )+(TP_Piap_kPi_cyt_E18_PGA/ x(18) ))*(( x(8) /TP_Piap_kPi_ch_E18_PGA)+( x(3) /TP_Piap_kPGA_ch_E18_PGA)+( x(9) /TP_Piap_kDHAP_ch_E18_PGA)+( x(7) /TP_Piap_kGAP_ch_E18_PGA)))))) + (1)*(2)* ((Light_on_p*Rbco_vm_E1* x(2) *compartment_chloroplast)/( x(2) +(Rbco_km_E1*(( 1 )+( x(3) /Rbco_KiPGA_E1)+( x(10) /Rbco_KiFBP_E1)+( x(14) /Rbco_KiSBP_E1)+( x(8) /Rbco_KiPi_E1)+( x(6) /Rbco_KiNADPH_E1))))) );
	
//x(4)   ID: ATP_ch  initialValue: 0.49806
	(1/compartment_chloroplast)*( (-1)*(1)* (Light_on_p*PGK_v_E2*compartment_chloroplast*(( x(3) * x(4) )-(( x(5) * x(23) )/q2_E2))) + (-1)*(1)* ((Light_on_p*Ru5Pk_ch_vm_E13* x(17) *compartment_chloroplast* x(4) )/(( x(17) +(Ru5Pk_ch_km1_E13*(( 1 )+( x(3) /Ru5Pk_ch_KiPGA_E13)+( x(2) /Ru5Pk_ch_KiRuBP_E13)+( x(8) /Ru5Pk_ch_KiPi_E13))))*(( x(4) *(( 1 )+( x(23) /Ru5Pk_ch_KiADP1_E13)))+(Ru5Pk_ch_km2_E13*(( 1 )+( x(23) /Ru5Pk_ch_KiADP2_E13)))))) + (-1)*(1)* ((StSyn_vm_E16* x(26) * x(4) *compartment_chloroplast)/((( x(26) +stsyn_ch_km1_E16)*(( 1 )+( x(23) /stsyn_ch_Ki_E16))*( x(4) +stsyn_ch_km2_E16))+((stsyn_ch_km2_E16* x(8) )/(stsyn_ch_ka1_E16* x(3) ))+(stsyn_ch_ka2_E16* x(11) )+(stsyn_ch_ka3_E16* x(10) ))) + (1)*(1)* ((Light_on_p*LR_vm_light_reaction* x(23) * x(8) *compartment_chloroplast)/(( x(23) +LR_kmADP_light_reaction)*( x(8) +LR_kmPi_light_reaction))) );
	
//x(5)   ID: BPGA_ch  initialValue: 0.14825
	(1/compartment_chloroplast)*( (-1)*(1)* (Light_on_p*G3Pdh_v_E3*compartment_chloroplast*(( x(5) * x(6) * x(25) )-(( x(21) * x(7) * x(8) )/q3_E3))) + (1)*(1)* (Light_on_p*PGK_v_E2*compartment_chloroplast*(( x(3) * x(4) )-(( x(5) * x(23) )/q2_E2))) );
	
//x(6)   ID: x_NADPH_ch  initialValue: 0.21
	0;
	
//x(7)   ID: GAP_ch  initialValue: 0.01334
	(1/compartment_chloroplast)*( (-1)*(1)* (compartment_chloroplast*TPI_v_E4*( x(7) -( x(9) /q4_E4))) + (-1)*(1)* (F_Aldo_v_E5*compartment_chloroplast*(( x(9) * x(7) )-( x(10) /q5_E5))) + (-1)*(1)* (compartment_chloroplast*F_TKL_v_E7*(( x(11) * x(7) )-(( x(12) * x(13) )/q7_E7))) + (-1)*(1)* (compartment_chloroplast*G_TKL_v_E10*(( x(7) * x(15) )-(( x(13) * x(16) )/q10_E10))) + (-1)*(1)* ((TP_Piap_vm_E18_GAP* x(7) *compartment_chloroplast)/(TP_Piap_kGAP_ch_E18_GAP*(( 1 )+((( 1 )+(TP_Piap_kPi_cyt_E18_GAP/ x(18) ))*(( x(8) /TP_Piap_kPi_ch_E18_GAP)+( x(3) /TP_Piap_kPGA_ch_E18_GAP)+( x(9) /TP_Piap_kDHAP_ch_E18_GAP)+( x(7) /TP_Piap_kGAP_ch_E18_GAP)))))) + (1)*(1)* (Light_on_p*G3Pdh_v_E3*compartment_chloroplast*(( x(5) * x(6) * x(25) )-(( x(21) * x(7) * x(8) )/q3_E3))) );
	
//x(8)   ID: Pi_ch  initialValue: 1.5662
	(1/compartment_chloroplast)*( (-1)*(1)* ((Light_on_p*LR_vm_light_reaction* x(23) * x(8) *compartment_chloroplast)/(( x(23) +LR_kmADP_light_reaction)*( x(8) +LR_kmPi_light_reaction))) + (-1)*(1)* ((StPase_Vm_E17* x(8) *compartment_chloroplast)/( x(8) +(StPase_km_E17*(( 1 )+( x(26) /StPase_kiG1P_E17))))) + (1)*(1)* (Light_on_p*G3Pdh_v_E3*compartment_chloroplast*(( x(5) * x(6) * x(25) )-(( x(21) * x(7) * x(8) )/q3_E3))) + (1)*(1)* ((Light_on_p*FBPase_ch_vm_E6* x(10) *compartment_chloroplast)/( x(10) +(FBPase_ch_km_E6*(( 1 )+( x(11) /FBPase_ch_KiF6P_E6)+( x(8) /FBPase_ch_KiPi_E6))))) + (1)*(1)* ((Light_on_p*SBPase_ch_vm_E9* x(14) *compartment_chloroplast)/( x(14) +(SBPase_ch_km_E9*(( 1 )+( x(8) /SBPase_ch_KiPi_E9))))) + (1)*(2)* ((StSyn_vm_E16* x(26) * x(4) *compartment_chloroplast)/((( x(26) +stsyn_ch_km1_E16)*(( 1 )+( x(23) /stsyn_ch_Ki_E16))*( x(4) +stsyn_ch_km2_E16))+((stsyn_ch_km2_E16* x(8) )/(stsyn_ch_ka1_E16* x(3) ))+(stsyn_ch_ka2_E16* x(11) )+(stsyn_ch_ka3_E16* x(10) ))) + (1)*(1)* ((TP_Piap_vm_E18_DHAP* x(9) *compartment_chloroplast)/(TP_Piap_kDHAP_ch_E18_DHAP*(( 1 )+((( 1 )+(TP_Piap_kPi_cyt_E18_DHAP/ x(18) ))*(( x(8) /TP_Piap_kPi_ch_E18_DHAP)+( x(3) /TP_Piap_kPGA_ch_E18_DHAP)+( x(9) /TP_Piap_kDHAP_ch_E18_DHAP)+( x(7) /TP_Piap_kGAP_ch_E18_DHAP)))))) + (1)*(1)* ((PGA_xpMult_E18_PGA*TP_Piap_vm_E18_PGA* x(3) *compartment_chloroplast)/(TP_Piap_kPGA_ch_E18_PGA*(( 1 )+((( 1 )+(TP_Piap_kPi_cyt_E18_PGA/ x(18) ))*(( x(8) /TP_Piap_kPi_ch_E18_PGA)+( x(3) /TP_Piap_kPGA_ch_E18_PGA)+( x(9) /TP_Piap_kDHAP_ch_E18_PGA)+( x(7) /TP_Piap_kGAP_ch_E18_PGA)))))) + (1)*(1)* ((TP_Piap_vm_E18_GAP* x(7) *compartment_chloroplast)/(TP_Piap_kGAP_ch_E18_GAP*(( 1 )+((( 1 )+(TP_Piap_kPi_cyt_E18_GAP/ x(18) ))*(( x(8) /TP_Piap_kPi_ch_E18_GAP)+( x(3) /TP_Piap_kPGA_ch_E18_GAP)+( x(9) /TP_Piap_kDHAP_ch_E18_GAP)+( x(7) /TP_Piap_kGAP_ch_E18_GAP)))))) );
	
//x(9)   ID: DHAP_ch  initialValue: 0.29345
	(1/compartment_chloroplast)*( (-1)*(1)* (F_Aldo_v_E5*compartment_chloroplast*(( x(9) * x(7) )-( x(10) /q5_E5))) + (-1)*(1)* (compartment_chloroplast*E_Aldo_v_E8*(( x(12) * x(9) )-( x(14) /q8_E8))) + (-1)*(1)* ((TP_Piap_vm_E18_DHAP* x(9) *compartment_chloroplast)/(TP_Piap_kDHAP_ch_E18_DHAP*(( 1 )+((( 1 )+(TP_Piap_kPi_cyt_E18_DHAP/ x(18) ))*(( x(8) /TP_Piap_kPi_ch_E18_DHAP)+( x(3) /TP_Piap_kPGA_ch_E18_DHAP)+( x(9) /TP_Piap_kDHAP_ch_E18_DHAP)+( x(7) /TP_Piap_kGAP_ch_E18_DHAP)))))) + (1)*(1)* (compartment_chloroplast*TPI_v_E4*( x(7) -( x(9) /q4_E4))) );
	
//x(10)   ID: FBP_ch  initialValue: 0.02776
	(1/compartment_chloroplast)*( (-1)*(1)* ((Light_on_p*FBPase_ch_vm_E6* x(10) *compartment_chloroplast)/( x(10) +(FBPase_ch_km_E6*(( 1 )+( x(11) /FBPase_ch_KiF6P_E6)+( x(8) /FBPase_ch_KiPi_E6))))) + (1)*(1)* (F_Aldo_v_E5*compartment_chloroplast*(( x(9) * x(7) )-( x(10) /q5_E5))) );
	
//x(11)   ID: F6P_ch  initialValue: 1.36481
	(1/compartment_chloroplast)*( (-1)*(1)* (compartment_chloroplast*F_TKL_v_E7*(( x(11) * x(7) )-(( x(12) * x(13) )/q7_E7))) + (-1)*(1)* (PGI_v_E14*compartment_chloroplast*( x(11) -( x(20) /q14_E14))) + (1)*(1)* ((Light_on_p*FBPase_ch_vm_E6* x(10) *compartment_chloroplast)/( x(10) +(FBPase_ch_km_E6*(( 1 )+( x(11) /FBPase_ch_KiF6P_E6)+( x(8) /FBPase_ch_KiPi_E6))))) );
	
//x(12)   ID: E4P_ch  initialValue: 0.41021
	(1/compartment_chloroplast)*( (-1)*(1)* (compartment_chloroplast*E_Aldo_v_E8*(( x(12) * x(9) )-( x(14) /q8_E8))) + (1)*(1)* (compartment_chloroplast*F_TKL_v_E7*(( x(11) * x(7) )-(( x(12) * x(13) )/q7_E7))) );
	
//x(13)   ID: X5P_ch  initialValue: 0.00363
	(1/compartment_chloroplast)*( (-1)*(1)* (compartment_chloroplast*X5Pepi_v_E12*( x(13) -( x(17) /q12_E12))) + (1)*(1)* (compartment_chloroplast*F_TKL_v_E7*(( x(11) * x(7) )-(( x(12) * x(13) )/q7_E7))) + (1)*(1)* (compartment_chloroplast*G_TKL_v_E10*(( x(7) * x(15) )-(( x(13) * x(16) )/q10_E10))) );
	
//x(14)   ID: SBP_ch  initialValue: 1.56486
	(1/compartment_chloroplast)*( (-1)*(1)* ((Light_on_p*SBPase_ch_vm_E9* x(14) *compartment_chloroplast)/( x(14) +(SBPase_ch_km_E9*(( 1 )+( x(8) /SBPase_ch_KiPi_E9))))) + (1)*(1)* (compartment_chloroplast*E_Aldo_v_E8*(( x(12) * x(9) )-( x(14) /q8_E8))) );
	
//x(15)   ID: S7P_ch  initialValue: 0.00541
	(1/compartment_chloroplast)*( (-1)*(1)* (compartment_chloroplast*G_TKL_v_E10*(( x(7) * x(15) )-(( x(13) * x(16) )/q10_E10))) + (1)*(1)* ((Light_on_p*SBPase_ch_vm_E9* x(14) *compartment_chloroplast)/( x(14) +(SBPase_ch_km_E9*(( 1 )+( x(8) /SBPase_ch_KiPi_E9))))) );
	
//x(16)   ID: R5P_ch  initialValue: 0.00599
	(1/compartment_chloroplast)*( (-1)*(1)* (R5Piso_v_E11*compartment_chloroplast*( x(16) -( x(17) /q11_E11))) + (1)*(1)* (compartment_chloroplast*G_TKL_v_E10*(( x(7) * x(15) )-(( x(13) * x(16) )/q10_E10))) );
	
//x(17)   ID: Ru5P_ch  initialValue: 0.00235
	(1/compartment_chloroplast)*( (-1)*(1)* ((Light_on_p*Ru5Pk_ch_vm_E13* x(17) *compartment_chloroplast* x(4) )/(( x(17) +(Ru5Pk_ch_km1_E13*(( 1 )+( x(3) /Ru5Pk_ch_KiPGA_E13)+( x(2) /Ru5Pk_ch_KiRuBP_E13)+( x(8) /Ru5Pk_ch_KiPi_E13))))*(( x(4) *(( 1 )+( x(23) /Ru5Pk_ch_KiADP1_E13)))+(Ru5Pk_ch_km2_E13*(( 1 )+( x(23) /Ru5Pk_ch_KiADP2_E13)))))) + (1)*(1)* (R5Piso_v_E11*compartment_chloroplast*( x(16) -( x(17) /q11_E11))) + (1)*(1)* (compartment_chloroplast*X5Pepi_v_E12*( x(13) -( x(17) /q12_E12))) );
	
//x(18)   ID: x_Pi_cyt  initialValue: 0.5
	0;
	
//x(19)   ID: x_GAP_cyt  initialValue: 1
	0;
	
//x(20)   ID: G6P_ch  initialValue: 3.1396
	(1/compartment_chloroplast)*( (-1)*(1)* (PGM_v_E15*compartment_chloroplast*( x(20) -( x(26) /q15_E15))) + (1)*(1)* (PGI_v_E14*compartment_chloroplast*( x(11) -( x(20) /q14_E14))) );
	
//x(21)   ID: x_NADP_ch  initialValue: 0.29
	0;
	
//x(22)   ID: x_PGA_cyt  initialValue: 1
	0;
	
//x(23)   ID: ADP_ch  initialValue: 0.00149
	(1/compartment_chloroplast)*( (-1)*(1)* ((Light_on_p*LR_vm_light_reaction* x(23) * x(8) *compartment_chloroplast)/(( x(23) +LR_kmADP_light_reaction)*( x(8) +LR_kmPi_light_reaction))) + (1)*(1)* (Light_on_p*PGK_v_E2*compartment_chloroplast*(( x(3) * x(4) )-(( x(5) * x(23) )/q2_E2))) + (1)*(1)* ((Light_on_p*Ru5Pk_ch_vm_E13* x(17) *compartment_chloroplast* x(4) )/(( x(17) +(Ru5Pk_ch_km1_E13*(( 1 )+( x(3) /Ru5Pk_ch_KiPGA_E13)+( x(2) /Ru5Pk_ch_KiRuBP_E13)+( x(8) /Ru5Pk_ch_KiPi_E13))))*(( x(4) *(( 1 )+( x(23) /Ru5Pk_ch_KiADP1_E13)))+(Ru5Pk_ch_km2_E13*(( 1 )+( x(23) /Ru5Pk_ch_KiADP2_E13)))))) + (1)*(1)* ((StSyn_vm_E16* x(26) * x(4) *compartment_chloroplast)/((( x(26) +stsyn_ch_km1_E16)*(( 1 )+( x(23) /stsyn_ch_Ki_E16))*( x(4) +stsyn_ch_km2_E16))+((stsyn_ch_km2_E16* x(8) )/(stsyn_ch_ka1_E16* x(3) ))+(stsyn_ch_ka2_E16* x(11) )+(stsyn_ch_ka3_E16* x(10) ))) );
	
//x(24)   ID: x_DHAP_cyt  initialValue: 1
	0;
	
//x(25)   ID: x_Proton_ch  initialValue: 2.512E-5
	0;
	
//x(26)   ID: G1P_ch  initialValue: 0.18206
	(1/compartment_chloroplast)*( (-1)*(1)* ((StSyn_vm_E16* x(26) * x(4) *compartment_chloroplast)/((( x(26) +stsyn_ch_km1_E16)*(( 1 )+( x(23) /stsyn_ch_Ki_E16))*( x(4) +stsyn_ch_km2_E16))+((stsyn_ch_km2_E16* x(8) )/(stsyn_ch_ka1_E16* x(3) ))+(stsyn_ch_ka2_E16* x(11) )+(stsyn_ch_ka3_E16* x(10) ))) + (1)*(1)* (PGM_v_E15*compartment_chloroplast*( x(20) -( x(26) /q15_E15))) + (1)*(1)* ((StPase_Vm_E17* x(8) *compartment_chloroplast)/( x(8) +(StPase_km_E17*(( 1 )+( x(26) /StPase_kiG1P_E17))))) );
	
//x(27)   ID: x_Starch_ch  initialValue: 1
	0
	];


	
endfunction
        x0=[1;0.33644;3.35479;0.49806;0.14825;0.21;0.01334;1.5662;0.29345;0.02776;1.36481;0.41021;0.00363;1.56486;0.00541;0.00599;0.00235;0.5;1;3.1396;0.29;1;0.00149;1;2.512E-5;0.18206;1];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27])

//real_variable:
	
	
//x(1)   id: x_CO2  initialValue: 1
	
//x(2)   id: RuBP_ch  initialValue: 0.33644
	
//x(3)   id: PGA_ch  initialValue: 3.35479
	
//x(4)   id: ATP_ch  initialValue: 0.49806
	
//x(5)   id: BPGA_ch  initialValue: 0.14825
	
//x(6)   id: x_NADPH_ch  initialValue: 0.21
	
//x(7)   id: GAP_ch  initialValue: 0.01334
	
//x(8)   id: Pi_ch  initialValue: 1.5662
	
//x(9)   id: DHAP_ch  initialValue: 0.29345
	
//x(10)   id: FBP_ch  initialValue: 0.02776
	
//x(11)   id: F6P_ch  initialValue: 1.36481
	
//x(12)   id: E4P_ch  initialValue: 0.41021
	
//x(13)   id: X5P_ch  initialValue: 0.00363
	
//x(14)   id: SBP_ch  initialValue: 1.56486
	
//x(15)   id: S7P_ch  initialValue: 0.00541
	
//x(16)   id: R5P_ch  initialValue: 0.00599
	
//x(17)   id: Ru5P_ch  initialValue: 0.00235
	
//x(18)   id: x_Pi_cyt  initialValue: 0.5
	
//x(19)   id: x_GAP_cyt  initialValue: 1
	
//x(20)   id: G6P_ch  initialValue: 3.1396
	
//x(21)   id: x_NADP_ch  initialValue: 0.29
	
//x(22)   id: x_PGA_cyt  initialValue: 1
	
//x(23)   id: ADP_ch  initialValue: 0.00149
	
//x(24)   id: x_DHAP_cyt  initialValue: 1
	
//x(25)   id: x_Proton_ch  initialValue: 2.512E-5
	
//x(26)   id: G1P_ch  initialValue: 0.18206
	
//x(27)   id: x_Starch_ch  initialValue: 1