
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_ext   id: ext
	compartment_ext=1;
		
// compartment_cell   id: cell
	compartment_cell=1;
		
// Keq_p   id: Keq
	Keq_p=0.32;
		
// FH2b_s   id: FH2b
	FH2b_s=0.0024;
		
// DHFRtot_s   id: DHFRtot
	DHFRtot_s=0.64;
		
// Vm_SHMT   id: Vm     reactionID: SHMT
	Vm_SHMT=18330;
	
// Km1_SHMT   id: Km1     reactionID: SHMT
	Km1_SHMT=1.7;
	
// Km2_SHMT   id: Km2     reactionID: SHMT
	Km2_SHMT=210;
	
// Vm_SHMTr   id: Vm     reactionID: SHMTr
	Vm_SHMTr=12200000;
	
// Km1_SHMTr   id: Km1     reactionID: SHMTr
	Km1_SHMTr=3200;
	
// Km2_SHMTr   id: Km2     reactionID: SHMTr
	Km2_SHMTr=10000;
	
// hp_HCHOtoCH2FH4   id: hp     reactionID: HCHOtoCH2FH4
	hp_HCHOtoCH2FH4=23.2;
	
// hl_CH2FH4toHCHO   id: hl     reactionID: CH2FH4toHCHO
	hl_CH2FH4toHCHO=0.3;
	
// Vm_MTHFR   id: Vm     reactionID: MTHFR
	Vm_MTHFR=224.8;
	
// Km1_MTHFR   id: Km1     reactionID: MTHFR
	Km1_MTHFR=50;
	
// Km2_MTHFR   id: Km2     reactionID: MTHFR
	Km2_MTHFR=50;
	
// Ki1_MTHFR   id: Ki1     reactionID: MTHFR
	Ki1_MTHFR=0.4;
	
// Ki21_MTHFR   id: Ki21     reactionID: MTHFR
	Ki21_MTHFR=59;
	
// Ki22_MTHFR   id: Ki22     reactionID: MTHFR
	Ki22_MTHFR=21.3;
	
// Ki23_MTHFR   id: Ki23     reactionID: MTHFR
	Ki23_MTHFR=7.68;
	
// Ki24_MTHFR   id: Ki24     reactionID: MTHFR
	Ki24_MTHFR=2.77;
	
// Ki25_MTHFR   id: Ki25     reactionID: MTHFR
	Ki25_MTHFR=1;
	
// Vm_MTR   id: Vm     reactionID: MTR
	Vm_MTR=22600;
	
// Km1_MTR   id: Km1     reactionID: MTR
	Km1_MTR=125;
	
// Km2_MTR   id: Km2     reactionID: MTR
	Km2_MTR=2900;
	
// Vm_HCOOHtoCHOFH4   id: Vm     reactionID: HCOOHtoCHOFH4
	Vm_HCOOHtoCHOFH4=3600;
	
// Km1_HCOOHtoCHOFH4   id: Km1     reactionID: HCOOHtoCHOFH4
	Km1_HCOOHtoCHOFH4=230;
	
// Km2_HCOOHtoCHOFH4   id: Km2     reactionID: HCOOHtoCHOFH4
	Km2_HCOOHtoCHOFH4=56;
	
// Km3_HCOOHtoCHOFH4   id: Km3     reactionID: HCOOHtoCHOFH4
	Km3_HCOOHtoCHOFH4=1600;
	
// Vm_GARFT   id: Vm     reactionID: GARFT
	Vm_GARFT=4126;
	
// Km1_GARFT   id: Km1     reactionID: GARFT
	Km1_GARFT=4.9;
	
// Km2_GARFT   id: Km2     reactionID: GARFT
	Km2_GARFT=52;
	
// Ki1_GARFT   id: Ki1     reactionID: GARFT
	Ki1_GARFT=5;
	
// Ki1f_GARFT   id: Ki1f     reactionID: GARFT
	Ki1f_GARFT=1;
	
// Ki21_GARFT   id: Ki21     reactionID: GARFT
	Ki21_GARFT=84;
	
// Ki22_GARFT   id: Ki22     reactionID: GARFT
	Ki22_GARFT=60;
	
// Ki23_GARFT   id: Ki23     reactionID: GARFT
	Ki23_GARFT=43;
	
// Ki24_GARFT   id: Ki24     reactionID: GARFT
	Ki24_GARFT=31;
	
// Ki25_GARFT   id: Ki25     reactionID: GARFT
	Ki25_GARFT=22;
	
// Vm_ATIC7   id: Vm     reactionID: ATIC7
	Vm_ATIC7=31675;
	
// Km1_ATIC7   id: Km1     reactionID: ATIC7
	Km1_ATIC7=5.5;
	
// Km2_ATIC7   id: Km2     reactionID: ATIC7
	Km2_ATIC7=24;
	
// Ki1_ATIC7   id: Ki1     reactionID: ATIC7
	Ki1_ATIC7=2.89;
	
// Ki1f_ATIC7   id: Ki1f     reactionID: ATIC7
	Ki1f_ATIC7=5.3;
	
// Ki21_ATIC7   id: Ki21     reactionID: ATIC7
	Ki21_ATIC7=40;
	
// Ki22_ATIC7   id: Ki22     reactionID: ATIC7
	Ki22_ATIC7=31.5;
	
// Ki23_ATIC7   id: Ki23     reactionID: ATIC7
	Ki23_ATIC7=2.33;
	
// Ki24_ATIC7   id: Ki24     reactionID: ATIC7
	Ki24_ATIC7=3.61;
	
// Ki25_ATIC7   id: Ki25     reactionID: ATIC7
	Ki25_ATIC7=5.89;
	
// Vm_MTHFD   id: Vm     reactionID: MTHFD
	Vm_MTHFD=68500;
	
// Km1_MTHFD   id: Km1     reactionID: MTHFD
	Km1_MTHFD=3;
	
// Km2_MTHFD   id: Km2     reactionID: MTHFD
	Km2_MTHFD=21.8;
	
// Vm_TYMS   id: Vm     reactionID: TYMS
	Vm_TYMS=58;
	
// Km1_TYMS   id: Km1     reactionID: TYMS
	Km1_TYMS=2.5;
	
// Km2_TYMS   id: Km2     reactionID: TYMS
	Km2_TYMS=1.8;
	
// Ki1_TYMS   id: Ki1     reactionID: TYMS
	Ki1_TYMS=3;
	
// Ki1f_TYMS   id: Ki1f     reactionID: TYMS
	Ki1f_TYMS=1.6;
	
// Ki21_TYMS   id: Ki21     reactionID: TYMS
	Ki21_TYMS=13;
	
// Ki22_TYMS   id: Ki22     reactionID: TYMS
	Ki22_TYMS=0.08;
	
// Ki23_TYMS   id: Ki23     reactionID: TYMS
	Ki23_TYMS=0.07;
	
// Ki24_TYMS   id: Ki24     reactionID: TYMS
	Ki24_TYMS=0.065;
	
// Ki25_TYMS   id: Ki25     reactionID: TYMS
	Ki25_TYMS=0.047;
	
// kter_DHFReductase   id: kter     reactionID: DHFReductase
	kter_DHFReductase=2109.4;
	
// Vm_FFH2syn   id: Vm     reactionID: FFH2syn
	Vm_FFH2syn=65;
	
// Vm_ATIC12   id: Vm     reactionID: ATIC12
	Vm_ATIC12=9503;
	
// Km1_ATIC12   id: Km1     reactionID: ATIC12
	Km1_ATIC12=5.3;
	
// Km2_ATIC12   id: Km2     reactionID: ATIC12
	Km2_ATIC12=24;
	
// Ki1_ATIC12   id: Ki1     reactionID: ATIC12
	Ki1_ATIC12=2.89;
	
// Ki1f_ATIC12   id: Ki1f     reactionID: ATIC12
	Ki1f_ATIC12=5.5;
	
// Ki21_ATIC12   id: Ki21     reactionID: ATIC12
	Ki21_ATIC12=40;
	
// Ki22_ATIC12   id: Ki22     reactionID: ATIC12
	Ki22_ATIC12=31.5;
	
// Ki23_ATIC12   id: Ki23     reactionID: ATIC12
	Ki23_ATIC12=2.33;
	
// Ki24_ATIC12   id: Ki24     reactionID: ATIC12
	Ki24_ATIC12=3.61;
	
// Ki25_ATIC12   id: Ki25     reactionID: ATIC12
	Ki25_ATIC12=5.89;
	
// Vm_AICARsyn   id: Vm     reactionID: AICARsyn
	Vm_AICARsyn=4656;
	
// Km1_AICARsyn   id: Km1     reactionID: AICARsyn
	Km1_AICARsyn=100;
	
// Km2_AICARsyn   id: Km2     reactionID: AICARsyn
	Km2_AICARsyn=100;
	
// Vm_FPGS12   id: Vm     reactionID: FPGS12
	Vm_FPGS12=0.129;
	
// Vm_FPGS23   id: Vm     reactionID: FPGS23
	Vm_FPGS23=0.369;
	
// Vm_FPGS34   id: Vm     reactionID: FPGS34
	Vm_FPGS34=0.118;
	
// Vm_FPGS45   id: Vm     reactionID: FPGS45
	Vm_FPGS45=0.185;
	
// Vm_GGH21   id: Vm     reactionID: GGH21
	Vm_GGH21=0.195;
	
// Vm_GGH32   id: Vm     reactionID: GGH32
	Vm_GGH32=0.025;
	
// Vm_GGH43   id: Vm     reactionID: GGH43
	Vm_GGH43=0.031;
	
// Vm_GGH54   id: Vm     reactionID: GGH54
	Vm_GGH54=0.191;
	
// Vm_RFC   id: Vm     reactionID: RFC
	Vm_RFC=82.2;
	
// Km_RFC   id: Km     reactionID: RFC
	Km_RFC=8.2;
	
// Vm_MTX1export   id: Vm     reactionID: MTX1export
	Vm_MTX1export=4.65;
	
// Vm_MTX2export   id: Vm     reactionID: MTX2export
	Vm_MTX2export=0;
	
// Vm_MTX3export   id: Vm     reactionID: MTX3export
	Vm_MTX3export=0.063;
	
// Vm_MTX4export   id: Vm     reactionID: MTX4export
	Vm_MTX4export=0.063;
	
// Vm_MTX5export   id: Vm     reactionID: MTX5export
	Vm_MTX5export=0.063;
	
// Vm_MTX1on   id: Vm     reactionID: MTX1on
	Vm_MTX1on=23100;
	
// Vm_MTX2on   id: Vm     reactionID: MTX2on
	Vm_MTX2on=44300;
	
// Vm_MTX3on   id: Vm     reactionID: MTX3on
	Vm_MTX3on=85100;
	
// Vm_MTX4on   id: Vm     reactionID: MTX4on
	Vm_MTX4on=163000;
	
// Vm_MTX5on   id: Vm     reactionID: MTX5on
	Vm_MTX5on=314000;
	
// Vm_MTX1off   id: Vm     reactionID: MTX1off
	Vm_MTX1off=0.42;
	
// Vm_MTX2off   id: Vm     reactionID: MTX2off
	Vm_MTX2off=0.42;
	
// Vm_MTX3off   id: Vm     reactionID: MTX3off
	Vm_MTX3off=0.42;
	
// Vm_MTX4off   id: Vm     reactionID: MTX4off
	Vm_MTX4off=0.42;
	
// Vm_MTX5off   id: Vm     reactionID: MTX5off
	Vm_MTX5off=0.42;
	
// k0_DHFRfsyn   id: k0     reactionID: DHFRfsyn
	k0_DHFRfsyn=0.0192;
	
// k1_DHFRfsyn   id: k1     reactionID: DHFRfsyn
	k1_DHFRfsyn=0.04416;
	
// Vm_DHFRdeg   id: Vm     reactionID: DHFRdeg
	Vm_DHFRdeg=0.03;
	
// Vm_FH2bdeg   id: Vm     reactionID: FH2bdeg
	Vm_FH2bdeg=0.03;
	
// Vm_MTX1deg   id: Vm     reactionID: MTX1deg
	Vm_MTX1deg=0.03;
	
// Vm_MTX2deg   id: Vm     reactionID: MTX2deg
	Vm_MTX2deg=0.03;
	
// Vm_MTX3deg   id: Vm     reactionID: MTX3deg
	Vm_MTX3deg=0.03;
	
// Vm_MTX4deg   id: Vm     reactionID: MTX4deg
	Vm_MTX4deg=0.03;
	
// Vm_MTX5deg   id: Vm     reactionID: MTX5deg
	Vm_MTX5deg=0.03;
	



xdot=[
//x(1)   ID: FH2f  initialValue: 0.0012
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*kter_DHFReductase* ( (( x(1) * x(2) )/Keq_p) ) ) + (-1)*(1)* (compartment_cell*Vm_FFH2syn* x(1) ) + (1)*(1)* (compartment_cell*((Vm_TYMS* x(4) * x(22) )/(( x(22) * x(4) *(( 1 )+( x(11) /Ki21_TYMS)+( x(12) /Ki22_TYMS)+( x(13) /Ki23_TYMS)+( x(14) /Ki24_TYMS)+( x(15) /Ki25_TYMS)+( x(1) /Ki1_TYMS)))+(Km1_TYMS* x(22) *((( x(7) /Ki1f_TYMS)*( x(11) /Ki21_TYMS))+((( 1 )+( x(7) /Ki1f_TYMS))*(( 1 )+( x(12) /Ki22_TYMS)+( x(13) /Ki23_TYMS)+( x(14) /Ki24_TYMS)+( x(15) /Ki25_TYMS)+( x(1) /Ki1_TYMS)))))+(Km1_TYMS*Km2_TYMS*(( 1 )+( x(12) /Ki22_TYMS)+( x(13) /Ki23_TYMS)+( x(14) /Ki24_TYMS)+( x(15) /Ki25_TYMS)+( x(1) /Ki1_TYMS)))))) + (1)*(1)* (compartment_cell*((Vm_ATIC12* x(7) * x(10) )/(( x(10) * x(7) )+( x(7) *Km2_ATIC12)+(( x(10) +Km2_ATIC12)*Km1_ATIC12*(( 1 )+( x(11) /Ki21_ATIC12)+( x(12) /Ki22_ATIC12)+( x(13) /Ki23_ATIC12)+( x(14) /Ki24_ATIC12)+( x(15) /Ki25_ATIC12)+( x(1) /Ki1_ATIC12)+( x(7) /Ki1f_ATIC12)))))) + (1)*(1)* (compartment_cell*Vm_FH2bdeg* ( (( x(1) * x(2) )/Keq_p) ) ) );
	
//x(2)   ID: DHFRf  initialValue: 0.64
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*Vm_MTX1on* x(2) * x(11) ) + (-1)*(1)* (compartment_cell*Vm_MTX2on* x(2) * x(12) ) + (-1)*(1)* (compartment_cell*Vm_MTX3on* x(2) * x(13) ) + (-1)*(1)* (compartment_cell*Vm_MTX4on* x(2) * x(14) ) + (-1)*(1)* (compartment_cell*Vm_MTX5on* x(2) * x(15) ) + (-1)*(1)* (Vm_DHFRdeg*compartment_cell*( x(2) + ( (( x(1) * x(2) )/Keq_p) ) )) + (1)*(1)* (compartment_cell*Vm_MTX1off* x(16) ) + (1)*(1)* (compartment_cell*Vm_MTX2off* x(17) ) + (1)*(1)* (compartment_cell*Vm_MTX3off* x(18) ) + (1)*(1)* (compartment_cell*Vm_MTX4off* x(19) ) + (1)*(1)* (compartment_cell*Vm_MTX5off* x(20) ) + (1)*(1)* (compartment_cell*(k0_DHFRfsyn+(k1_DHFRfsyn* x(21) ))) );
	
//x(3)   ID: FH4  initialValue: 0.46
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((Vm_SHMT*(( x(24) /Km2_SHMT)/(( 1 )+( x(24) /Km2_SHMT)))*( x(3) /Km1_SHMT))/(( 1 )+( x(3) /Km1_SHMT)))) + (-1)*(1)* (compartment_cell*hp_HCHOtoCH2FH4* x(3) * x(8) ) + (-1)*(1)* (compartment_cell*(Vm_HCOOHtoCHOFH4/((( 1 )+(Km1_HCOOHtoCHOFH4/ x(3) ))*(( 1 )+(Km2_HCOOHtoCHOFH4/ x(26) ))*(( 1 )+(Km3_HCOOHtoCHOFH4/ x(25) ))))) + (1)*(1)* (compartment_cell*((Vm_SHMTr*(( x(28) /Km2_SHMTr)/(( 1 )+( x(28) /Km2_SHMTr)))*( x(4) /Km1_SHMTr))/(( 1 )+( x(4) /Km1_SHMTr)))) + (1)*(1)* (compartment_cell*hl_CH2FH4toHCHO* x(4) ) + (1)*(1)* (compartment_cell*((Vm_MTR*(( x(31) /Km2_MTR)/(( 1 )+( x(31) /Km2_MTR)))*( x(5) /Km1_MTR))/(( 1 )+( x(5) /Km1_MTR)))) + (1)*(1)* (compartment_cell*((Vm_GARFT* x(6) * x(23) )/(( x(23) * x(6) )+( x(6) *Km2_GARFT)+(( x(23) +Km2_GARFT)*Km1_GARFT*(( 1 )+( x(11) /Ki21_GARFT)+( x(12) /Ki22_GARFT)+( x(13) /Ki23_GARFT)+( x(14) /Ki24_GARFT)+( x(15) /Ki25_GARFT)+( x(1) /Ki1_GARFT)+( x(7) /Ki1f_GARFT)))))) + (1)*(1)* (compartment_cell*((Vm_ATIC7* x(6) * x(10) )/(( x(10) * x(6) )+( x(6) *Km2_ATIC7)+(( x(10) +Km2_ATIC7)*Km1_ATIC7*(( 1 )+( x(11) /Ki21_ATIC7)+( x(12) /Ki22_ATIC7)+( x(13) /Ki23_ATIC7)+( x(14) /Ki24_ATIC7)+( x(15) /Ki25_ATIC7)+( x(1) /Ki1_ATIC7)+( x(7) /Ki1f_ATIC7)))))) + (1)*(1)* (compartment_cell*kter_DHFReductase* ( (( x(1) * x(2) )/Keq_p) ) ) );
	
//x(4)   ID: CH2FH4  initialValue: 0.26
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((Vm_SHMTr*(( x(28) /Km2_SHMTr)/(( 1 )+( x(28) /Km2_SHMTr)))*( x(4) /Km1_SHMTr))/(( 1 )+( x(4) /Km1_SHMTr)))) + (-1)*(1)* (compartment_cell*hl_CH2FH4toHCHO* x(4) ) + (-1)*(1)* (compartment_cell*((Vm_MTHFR* x(4) * x(30) )/(( x(30) * x(4) )+( x(4) *Km2_MTHFR)+(( x(30) +Km2_MTHFR)*Km1_MTHFR*(( 1 )+( x(11) /Ki21_MTHFR)+( x(12) /Ki22_MTHFR)+( x(13) /Ki23_MTHFR)+( x(14) /Ki24_MTHFR)+( x(15) /Ki25_MTHFR)+( x(1) /Ki1_MTHFR)))))) + (-1)*(1)* (compartment_cell*Vm_MTHFD*(( x(4) /Km1_MTHFD)/(( 1 )+( x(4) /Km1_MTHFD)))*(( x(29) /Km2_MTHFD)/(( 1 )+( x(29) /Km2_MTHFD)))) + (-1)*(1)* (compartment_cell*((Vm_TYMS* x(4) * x(22) )/(( x(22) * x(4) *(( 1 )+( x(11) /Ki21_TYMS)+( x(12) /Ki22_TYMS)+( x(13) /Ki23_TYMS)+( x(14) /Ki24_TYMS)+( x(15) /Ki25_TYMS)+( x(1) /Ki1_TYMS)))+(Km1_TYMS* x(22) *((( x(7) /Ki1f_TYMS)*( x(11) /Ki21_TYMS))+((( 1 )+( x(7) /Ki1f_TYMS))*(( 1 )+( x(12) /Ki22_TYMS)+( x(13) /Ki23_TYMS)+( x(14) /Ki24_TYMS)+( x(15) /Ki25_TYMS)+( x(1) /Ki1_TYMS)))))+(Km1_TYMS*Km2_TYMS*(( 1 )+( x(12) /Ki22_TYMS)+( x(13) /Ki23_TYMS)+( x(14) /Ki24_TYMS)+( x(15) /Ki25_TYMS)+( x(1) /Ki1_TYMS)))))) + (1)*(1)* (compartment_cell*((Vm_SHMT*(( x(24) /Km2_SHMT)/(( 1 )+( x(24) /Km2_SHMT)))*( x(3) /Km1_SHMT))/(( 1 )+( x(3) /Km1_SHMT)))) + (1)*(1)* (compartment_cell*hp_HCHOtoCH2FH4* x(3) * x(8) ) );
	
//x(5)   ID: CH3FH4  initialValue: 1.63
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((Vm_MTR*(( x(31) /Km2_MTR)/(( 1 )+( x(31) /Km2_MTR)))*( x(5) /Km1_MTR))/(( 1 )+( x(5) /Km1_MTR)))) + (1)*(1)* (compartment_cell*((Vm_MTHFR* x(4) * x(30) )/(( x(30) * x(4) )+( x(4) *Km2_MTHFR)+(( x(30) +Km2_MTHFR)*Km1_MTHFR*(( 1 )+( x(11) /Ki21_MTHFR)+( x(12) /Ki22_MTHFR)+( x(13) /Ki23_MTHFR)+( x(14) /Ki24_MTHFR)+( x(15) /Ki25_MTHFR)+( x(1) /Ki1_MTHFR)))))) );
	
//x(6)   ID: CHOFH4  initialValue: 1
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((Vm_GARFT* x(6) * x(23) )/(( x(23) * x(6) )+( x(6) *Km2_GARFT)+(( x(23) +Km2_GARFT)*Km1_GARFT*(( 1 )+( x(11) /Ki21_GARFT)+( x(12) /Ki22_GARFT)+( x(13) /Ki23_GARFT)+( x(14) /Ki24_GARFT)+( x(15) /Ki25_GARFT)+( x(1) /Ki1_GARFT)+( x(7) /Ki1f_GARFT)))))) + (-1)*(1)* (compartment_cell*((Vm_ATIC7* x(6) * x(10) )/(( x(10) * x(6) )+( x(6) *Km2_ATIC7)+(( x(10) +Km2_ATIC7)*Km1_ATIC7*(( 1 )+( x(11) /Ki21_ATIC7)+( x(12) /Ki22_ATIC7)+( x(13) /Ki23_ATIC7)+( x(14) /Ki24_ATIC7)+( x(15) /Ki25_ATIC7)+( x(1) /Ki1_ATIC7)+( x(7) /Ki1f_ATIC7)))))) + (1)*(1)* (compartment_cell*(Vm_HCOOHtoCHOFH4/((( 1 )+(Km1_HCOOHtoCHOFH4/ x(3) ))*(( 1 )+(Km2_HCOOHtoCHOFH4/ x(26) ))*(( 1 )+(Km3_HCOOHtoCHOFH4/ x(25) ))))) + (1)*(1)* (compartment_cell*Vm_MTHFD*(( x(4) /Km1_MTHFD)/(( 1 )+( x(4) /Km1_MTHFD)))*(( x(29) /Km2_MTHFD)/(( 1 )+( x(29) /Km2_MTHFD)))) );
	
//x(7)   ID: FFH2  initialValue: 0.000332
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((Vm_ATIC12* x(7) * x(10) )/(( x(10) * x(7) )+( x(7) *Km2_ATIC12)+(( x(10) +Km2_ATIC12)*Km1_ATIC12*(( 1 )+( x(11) /Ki21_ATIC12)+( x(12) /Ki22_ATIC12)+( x(13) /Ki23_ATIC12)+( x(14) /Ki24_ATIC12)+( x(15) /Ki25_ATIC12)+( x(1) /Ki1_ATIC12)+( x(7) /Ki1f_ATIC12)))))) + (1)*(1)* (compartment_cell*Vm_FFH2syn* x(1) ) );
	
//x(8)   ID: HCHO  initialValue: 0.0074
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*hp_HCHOtoCH2FH4* x(3) * x(8) ) + (1)*(1)* (compartment_cell*hl_CH2FH4toHCHO* x(4) ) );
	
//x(9)   ID: FGAR  initialValue: 16.49
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*Vm_AICARsyn*(( x(27) /Km1_AICARsyn)/(( 1 )+( x(27) /Km1_AICARsyn)))*(( x(9) /Km2_AICARsyn)/(( 1 )+( x(9) /Km2_AICARsyn)))) + (1)*(1)* (compartment_cell*((Vm_GARFT* x(6) * x(23) )/(( x(23) * x(6) )+( x(6) *Km2_GARFT)+(( x(23) +Km2_GARFT)*Km1_GARFT*(( 1 )+( x(11) /Ki21_GARFT)+( x(12) /Ki22_GARFT)+( x(13) /Ki23_GARFT)+( x(14) /Ki24_GARFT)+( x(15) /Ki25_GARFT)+( x(1) /Ki1_GARFT)+( x(7) /Ki1f_GARFT)))))) );
	
//x(10)   ID: AICAR  initialValue: 3.695
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((Vm_ATIC7* x(6) * x(10) )/(( x(10) * x(6) )+( x(6) *Km2_ATIC7)+(( x(10) +Km2_ATIC7)*Km1_ATIC7*(( 1 )+( x(11) /Ki21_ATIC7)+( x(12) /Ki22_ATIC7)+( x(13) /Ki23_ATIC7)+( x(14) /Ki24_ATIC7)+( x(15) /Ki25_ATIC7)+( x(1) /Ki1_ATIC7)+( x(7) /Ki1f_ATIC7)))))) + (-1)*(1)* (compartment_cell*((Vm_ATIC12* x(7) * x(10) )/(( x(10) * x(7) )+( x(7) *Km2_ATIC12)+(( x(10) +Km2_ATIC12)*Km1_ATIC12*(( 1 )+( x(11) /Ki21_ATIC12)+( x(12) /Ki22_ATIC12)+( x(13) /Ki23_ATIC12)+( x(14) /Ki24_ATIC12)+( x(15) /Ki25_ATIC12)+( x(1) /Ki1_ATIC12)+( x(7) /Ki1f_ATIC12)))))) + (1)*(1)* (compartment_cell*Vm_AICARsyn*(( x(27) /Km1_AICARsyn)/(( 1 )+( x(27) /Km1_AICARsyn)))*(( x(9) /Km2_AICARsyn)/(( 1 )+( x(9) /Km2_AICARsyn)))) );
	
//x(11)   ID: MTX1  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*Vm_FPGS12* x(11) ) + (-1)*(1)* (compartment_cell*Vm_MTX1export* x(11) ) + (-1)*(1)* (compartment_cell*Vm_MTX1on* x(2) * x(11) ) + (1)*(1)* (compartment_cell*Vm_GGH21* x(12) ) + (1)*(1)* (compartment_ext*((Vm_RFC* x(21) )/(Km_RFC+ x(21) ))) + (1)*(1)* (compartment_cell*Vm_MTX1off* x(16) ) + (1)*(1)* (compartment_cell*Vm_MTX1deg* x(16) ) );
	
//x(12)   ID: MTX2  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*Vm_FPGS23* x(12) ) + (-1)*(1)* (compartment_cell*Vm_GGH21* x(12) ) + (-1)*(1)* (compartment_cell*Vm_MTX2export* x(12) ) + (-1)*(1)* (compartment_cell*Vm_MTX2on* x(2) * x(12) ) + (1)*(1)* (compartment_cell*Vm_FPGS12* x(11) ) + (1)*(1)* (compartment_cell*Vm_GGH32* x(13) ) + (1)*(1)* (compartment_cell*Vm_MTX2off* x(17) ) + (1)*(1)* (compartment_cell*Vm_MTX2deg* x(17) ) );
	
//x(13)   ID: MTX3  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*Vm_FPGS34* x(13) ) + (-1)*(1)* (compartment_cell*Vm_GGH32* x(13) ) + (-1)*(1)* (compartment_cell*Vm_MTX3export* x(13) ) + (-1)*(1)* (compartment_cell*Vm_MTX3on* x(2) * x(13) ) + (1)*(1)* (compartment_cell*Vm_FPGS23* x(12) ) + (1)*(1)* (compartment_cell*Vm_GGH43* x(14) ) + (1)*(1)* (compartment_cell*Vm_MTX3off* x(18) ) + (1)*(1)* (compartment_cell*Vm_MTX3deg* x(18) ) );
	
//x(14)   ID: MTX4  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*Vm_FPGS45* x(14) ) + (-1)*(1)* (compartment_cell*Vm_GGH43* x(14) ) + (-1)*(1)* (compartment_cell*Vm_MTX4export* x(14) ) + (-1)*(1)* (compartment_cell*Vm_MTX4on* x(2) * x(14) ) + (1)*(1)* (compartment_cell*Vm_FPGS34* x(13) ) + (1)*(1)* (compartment_cell*Vm_GGH54* x(15) ) + (1)*(1)* (compartment_cell*Vm_MTX4off* x(19) ) + (1)*(1)* (compartment_cell*Vm_MTX4deg* x(19) ) );
	
//x(15)   ID: MTX5  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*Vm_GGH54* x(15) ) + (-1)*(1)* (compartment_cell*Vm_MTX5export* x(15) ) + (-1)*(1)* (compartment_cell*Vm_MTX5on* x(2) * x(15) ) + (1)*(1)* (compartment_cell*Vm_FPGS45* x(14) ) + (1)*(1)* (compartment_cell*Vm_MTX5off* x(20) ) + (1)*(1)* (compartment_cell*Vm_MTX5deg* x(20) ) );
	
//x(16)   ID: MTX1b  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*Vm_MTX1off* x(16) ) + (-1)*(1)* (compartment_cell*Vm_MTX1deg* x(16) ) + (1)*(1)* (compartment_cell*Vm_MTX1on* x(2) * x(11) ) );
	
//x(17)   ID: MTX2b  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*Vm_MTX2off* x(17) ) + (-1)*(1)* (compartment_cell*Vm_MTX2deg* x(17) ) + (1)*(1)* (compartment_cell*Vm_MTX2on* x(2) * x(12) ) );
	
//x(18)   ID: MTX3b  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*Vm_MTX3off* x(18) ) + (-1)*(1)* (compartment_cell*Vm_MTX3deg* x(18) ) + (1)*(1)* (compartment_cell*Vm_MTX3on* x(2) * x(13) ) );
	
//x(19)   ID: MTX4b  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*Vm_MTX4off* x(19) ) + (-1)*(1)* (compartment_cell*Vm_MTX4deg* x(19) ) + (1)*(1)* (compartment_cell*Vm_MTX4on* x(2) * x(14) ) );
	
//x(20)   ID: MTX5b  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*Vm_MTX5off* x(20) ) + (-1)*(1)* (compartment_cell*Vm_MTX5deg* x(20) ) + (1)*(1)* (compartment_cell*Vm_MTX5on* x(2) * x(15) ) );
	
//x(21)   ID: EMTX  initialValue: 0
	0;
	
//x(22)   ID: dUMP  initialValue: 20.76
	0;
	
//x(23)   ID: GAR  initialValue: 689.6
	0;
	
//x(24)   ID: serine  initialValue: 123.3
	0;
	
//x(25)   ID: formate  initialValue: 500
	0;
	
//x(26)   ID: ATP  initialValue: 2980
	0;
	
//x(27)   ID: glutamine  initialValue: 7170
	0;
	
//x(28)   ID: glycine  initialValue: 1600
	0;
	
//x(29)   ID: NADP  initialValue: 6.73
	0;
	
//x(30)   ID: NADPH  initialValue: 294
	0;
	
//x(31)   ID: homocysteine  initialValue: 10
	0
	];


	
endfunction
        x0=[0.0012;0.64;0.46;0.26;1.63;1;0.000332;0.0074;16.49;3.695;0;0;0;0;0;0;0;0;0;0;0;20.76;689.6;123.3;500;2980;7170;1600;6.73;294;10];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31])

//real_variable:
	
	
//x(1)   id: FH2f  initialValue: 0.0012
	
//x(2)   id: DHFRf  initialValue: 0.64
	
//x(3)   id: FH4  initialValue: 0.46
	
//x(4)   id: CH2FH4  initialValue: 0.26
	
//x(5)   id: CH3FH4  initialValue: 1.63
	
//x(6)   id: CHOFH4  initialValue: 1
	
//x(7)   id: FFH2  initialValue: 0.000332
	
//x(8)   id: HCHO  initialValue: 0.0074
	
//x(9)   id: FGAR  initialValue: 16.49
	
//x(10)   id: AICAR  initialValue: 3.695
	
//x(11)   id: MTX1  initialValue: 0
	
//x(12)   id: MTX2  initialValue: 0
	
//x(13)   id: MTX3  initialValue: 0
	
//x(14)   id: MTX4  initialValue: 0
	
//x(15)   id: MTX5  initialValue: 0
	
//x(16)   id: MTX1b  initialValue: 0
	
//x(17)   id: MTX2b  initialValue: 0
	
//x(18)   id: MTX3b  initialValue: 0
	
//x(19)   id: MTX4b  initialValue: 0
	
//x(20)   id: MTX5b  initialValue: 0
	
//x(21)   id: EMTX  initialValue: 0
	
//x(22)   id: dUMP  initialValue: 20.76
	
//x(23)   id: GAR  initialValue: 689.6
	
//x(24)   id: serine  initialValue: 123.3
	
//x(25)   id: formate  initialValue: 500
	
//x(26)   id: ATP  initialValue: 2980
	
//x(27)   id: glutamine  initialValue: 7170
	
//x(28)   id: glycine  initialValue: 1600
	
//x(29)   id: NADP  initialValue: 6.73
	
//x(30)   id: NADPH  initialValue: 294
	
//x(31)   id: homocysteine  initialValue: 10