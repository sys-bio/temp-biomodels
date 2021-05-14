
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// NE_k1_p   id: NE_k1
	NE_k1_p=0.15;
		
// NE_k2_p   id: NE_k2
	NE_k2_p=12;
		
// MS_Vmax_p   id: MS_Vmax
	MS_Vmax_p=500;
		
// MS_Km_5mTHF_p   id: MS_Km_5mTHF
	MS_Km_5mTHF_p=25;
		
// MS_Km_Hcy_p   id: MS_Km_Hcy
	MS_Km_Hcy_p=0.1;
		
// MS_Kd_p   id: MS_Kd
	MS_Kd_p=1;
		
// MTHFR_Vmax_p   id: MTHFR_Vmax
	MTHFR_Vmax_p=6000;
		
// MTHFR_Km_NADPH_p   id: MTHFR_Km_NADPH
	MTHFR_Km_NADPH_p=16;
		
// MTHFR_Km_5_10_CH2THF_p   id: MTHFR_Km_5_10_CH2THF
	MTHFR_Km_5_10_CH2THF_p=50;
		
// FTD_Vmax_p   id: FTD_Vmax
	FTD_Vmax_p=14000;
		
// FTD_Km_10fTHF_p   id: FTD_Km_10fTHF
	FTD_Km_10fTHF_p=20;
		
// FTS_Vmax_p   id: FTS_Vmax
	FTS_Vmax_p=2000;
		
// FTS_Km_HCOOH_p   id: FTS_Km_HCOOH
	FTS_Km_HCOOH_p=43;
		
// FTS_Km_THF_p   id: FTS_Km_THF
	FTS_Km_THF_p=3;
		
// AICART_Vmax_p   id: AICART_Vmax
	AICART_Vmax_p=45000;
		
// AICART_Km_AICAR_p   id: AICART_Km_AICAR
	AICART_Km_AICAR_p=100;
		
// AICART_Km_10fTHF_p   id: AICART_Km_10fTHF
	AICART_Km_10fTHF_p=5.9;
		
// PGT_Vmax_p   id: PGT_Vmax
	PGT_Vmax_p=16200;
		
// PGT_Km_GAR_p   id: PGT_Km_GAR
	PGT_Km_GAR_p=520;
		
// PGT_Km_10fTHF_p   id: PGT_Km_10fTHF
	PGT_Km_10fTHF_p=4.9;
		
// TS_Vmax_p   id: TS_Vmax
	TS_Vmax_p=50;
		
// TS_Km_dUMP_p   id: TS_Km_dUMP
	TS_Km_dUMP_p=6.3;
		
// TS_Km_5_10_CH2THF_p   id: TS_Km_5_10_CH2THF
	TS_Km_5_10_CH2THF_p=14;
		
// DHFR_Vmax_p   id: DHFR_Vmax
	DHFR_Vmax_p=50;
		
// DHFR_Km_NADPH_p   id: DHFR_Km_NADPH
	DHFR_Km_NADPH_p=4;
		
// DHFR_Km_DHF_p   id: DHFR_Km_DHF
	DHFR_Km_DHF_p=0.5;
		
// MTCH_VmaxF_p   id: MTCH_VmaxF
	MTCH_VmaxF_p=800000;
		
// MTCH_Km_5_10_CHTHF_p   id: MTCH_Km_5_10_CHTHF
	MTCH_Km_5_10_CHTHF_p=250;
		
// MTCH_VmaxR_p   id: MTCH_VmaxR
	MTCH_VmaxR_p=20000;
		
// MTCH_Km_10fTHF_p   id: MTCH_Km_10fTHF
	MTCH_Km_10fTHF_p=100;
		
// SHMT_VmaxF_p   id: SHMT_VmaxF
	SHMT_VmaxF_p=40000;
		
// SHMT_Km_Ser_p   id: SHMT_Km_Ser
	SHMT_Km_Ser_p=600;
		
// SHMT_Km_THF_p   id: SHMT_Km_THF
	SHMT_Km_THF_p=50;
		
// SHMT_VmaxR_p   id: SHMT_VmaxR
	SHMT_VmaxR_p=25000;
		
// MTD_VmaxF_p   id: MTD_VmaxF
	MTD_VmaxF_p=200000;
		
// MTD_Km_5_10_CH2THF_p   id: MTD_Km_5_10_CH2THF
	MTD_Km_5_10_CH2THF_p=2;
		
// MTD_VmaxR_p   id: MTD_VmaxR
	MTD_VmaxR_p=594000;
		
// MTD_Km_5_10_CHTHF_p   id: MTD_Km_5_10_CHTHF
	MTD_Km_5_10_CHTHF_p=10;
		



xdot=[
//x(1)   ID: _5mTHF  initialValue: 5.16
	(1/compartment_compartment)*( (-1)*(1)* ((MS_Vmax_p*( x(1) /MS_Km_5mTHF_p)*( x(14) /MS_Km_Hcy_p))/((MS_Kd_p/MS_Km_5mTHF_p)+( x(1) /MS_Km_5mTHF_p)+( x(14) /MS_Km_Hcy_p)+(( x(1) * x(14) )/(MS_Km_5mTHF_p*MS_Km_Hcy_p)))) + (1)*(1)* (MTHFR_Vmax_p*( x(13) /(MTHFR_Km_NADPH_p+ x(13) ))*( x(4) /(MTHFR_Km_5_10_CH2THF_p+ x(4) ))) );
	
//x(2)   ID: THF  initialValue: 6.73
	(1/compartment_compartment)*( (-1)*(1)* (( x(12) *NE_k1_p* x(2) )-(NE_k2_p* x(4) )) + (-1)*(1)* (FTS_Vmax_p*( x(12) /(FTS_Km_HCOOH_p+ x(12) ))*( x(2) /(FTS_Km_THF_p+ x(2) ))) + (-1)*(1)* ((SHMT_VmaxF_p*( x(7) /(SHMT_Km_Ser_p+ x(7) ))*( x(2) /(SHMT_Km_THF_p+ x(2) )))-(SHMT_VmaxR_p*( x(8) /(SHMT_Km_Ser_p+ x(8) ))*( x(4) /(SHMT_Km_THF_p+ x(4) )))) + (1)*(1)* ((MS_Vmax_p*( x(1) /MS_Km_5mTHF_p)*( x(14) /MS_Km_Hcy_p))/((MS_Kd_p/MS_Km_5mTHF_p)+( x(1) /MS_Km_5mTHF_p)+( x(14) /MS_Km_Hcy_p)+(( x(1) * x(14) )/(MS_Km_5mTHF_p*MS_Km_Hcy_p)))) + (1)*(1)* (FTD_Vmax_p*( x(6) /(FTD_Km_10fTHF_p+ x(6) ))) + (1)*(1)* (AICART_Vmax_p*( x(11) /(AICART_Km_AICAR_p+ x(11) ))*( x(6) /(AICART_Km_10fTHF_p+ x(6) ))) + (1)*(1)* (PGT_Vmax_p*( x(10) /(PGT_Km_GAR_p+ x(10) ))*( x(6) /(PGT_Km_10fTHF_p+ x(6) ))) + (1)*(1)* (DHFR_Vmax_p*( x(13) /(DHFR_Km_NADPH_p+ x(13) ))*( x(3) /(DHFR_Km_DHF_p+ x(3) ))) );
	
//x(3)   ID: DHF  initialValue: 0.027
	(1/compartment_compartment)*( (-1)*(1)* (DHFR_Vmax_p*( x(13) /(DHFR_Km_NADPH_p+ x(13) ))*( x(3) /(DHFR_Km_DHF_p+ x(3) ))) + (1)*(1)* (TS_Vmax_p*( x(9) /(TS_Km_dUMP_p+ x(9) ))*( x(4) /(TS_Km_5_10_CH2THF_p+ x(4) ))) );
	
//x(4)   ID: _5_10_CH2THF  initialValue: 0.94
	(1/compartment_compartment)*( (-1)*(1)* (MTHFR_Vmax_p*( x(13) /(MTHFR_Km_NADPH_p+ x(13) ))*( x(4) /(MTHFR_Km_5_10_CH2THF_p+ x(4) ))) + (-1)*(1)* (TS_Vmax_p*( x(9) /(TS_Km_dUMP_p+ x(9) ))*( x(4) /(TS_Km_5_10_CH2THF_p+ x(4) ))) + (-1)*(1)* ((MTD_VmaxF_p*( x(4) /(MTD_Km_5_10_CH2THF_p+ x(4) )))-(MTD_VmaxR_p*( x(5) /(MTD_Km_5_10_CHTHF_p+ x(5) )))) + (1)*(1)* (( x(12) *NE_k1_p* x(2) )-(NE_k2_p* x(4) )) + (1)*(1)* ((SHMT_VmaxF_p*( x(7) /(SHMT_Km_Ser_p+ x(7) ))*( x(2) /(SHMT_Km_THF_p+ x(2) )))-(SHMT_VmaxR_p*( x(8) /(SHMT_Km_Ser_p+ x(8) ))*( x(4) /(SHMT_Km_THF_p+ x(4) )))) );
	
//x(5)   ID: _5_10_CHTHF  initialValue: 1.153
	(1/compartment_compartment)*( (-1)*(1)* ((MTCH_VmaxF_p*( x(5) /(MTCH_Km_5_10_CHTHF_p+ x(5) )))-(MTCH_VmaxR_p*( x(6) /(MTCH_Km_10fTHF_p+ x(6) )))) + (1)*(1)* ((MTD_VmaxF_p*( x(4) /(MTD_Km_5_10_CH2THF_p+ x(4) )))-(MTD_VmaxR_p*( x(5) /(MTD_Km_5_10_CHTHF_p+ x(5) )))) );
	
//x(6)   ID: _10fTHF  initialValue: 5.99
	(1/compartment_compartment)*( (-1)*(1)* (FTD_Vmax_p*( x(6) /(FTD_Km_10fTHF_p+ x(6) ))) + (-1)*(1)* (AICART_Vmax_p*( x(11) /(AICART_Km_AICAR_p+ x(11) ))*( x(6) /(AICART_Km_10fTHF_p+ x(6) ))) + (-1)*(1)* (PGT_Vmax_p*( x(10) /(PGT_Km_GAR_p+ x(10) ))*( x(6) /(PGT_Km_10fTHF_p+ x(6) ))) + (1)*(1)* (FTS_Vmax_p*( x(12) /(FTS_Km_HCOOH_p+ x(12) ))*( x(2) /(FTS_Km_THF_p+ x(2) ))) + (1)*(1)* ((MTCH_VmaxF_p*( x(5) /(MTCH_Km_5_10_CHTHF_p+ x(5) )))-(MTCH_VmaxR_p*( x(6) /(MTCH_Km_10fTHF_p+ x(6) )))) );
	
//x(7)   ID: Ser  initialValue: 468
	0;
	
//x(8)   ID: Gly  initialValue: 1850
	0;
	
//x(9)   ID: dUMP  initialValue: 20
	0;
	
//x(10)   ID: GAR  initialValue: 10
	0;
	
//x(11)   ID: AICAR  initialValue: 2.1
	0;
	
//x(12)   ID: HCOOH  initialValue: 900
	0;
	
//x(13)   ID: NADPH  initialValue: 50
	0;
	
//x(14)   ID: Hcy  initialValue: 1
	0
	];


	
endfunction
        x0=[5.16;6.73;0.027;0.94;1.153;5.99;468;1850;20;10;2.1;900;50;1];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14])

//real_variable:
	
	
//x(1)   id: _5mTHF  initialValue: 5.16
	
//x(2)   id: THF  initialValue: 6.73
	
//x(3)   id: DHF  initialValue: 0.027
	
//x(4)   id: _5_10_CH2THF  initialValue: 0.94
	
//x(5)   id: _5_10_CHTHF  initialValue: 1.153
	
//x(6)   id: _10fTHF  initialValue: 5.99
	
//x(7)   id: Ser  initialValue: 468
	
//x(8)   id: Gly  initialValue: 1850
	
//x(9)   id: dUMP  initialValue: 20
	
//x(10)   id: GAR  initialValue: 10
	
//x(11)   id: AICAR  initialValue: 2.1
	
//x(12)   id: HCOOH  initialValue: 900
	
//x(13)   id: NADPH  initialValue: 50
	
//x(14)   id: Hcy  initialValue: 1