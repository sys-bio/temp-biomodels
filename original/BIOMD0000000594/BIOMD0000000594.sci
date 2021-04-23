
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// K45P_p   id: K45P
	K45P_p=0;
		
// KcgP_p   id: KcgP
	KcgP_p=0;
		
// kptp68_p   id: kptp68
	kptp68_p=0;
		
// kkin_p   id: kkin
	kkin_p=0;
		
// kkin68_p   id: kkin68
	kkin68_p=0;
		
// kb45_p   id: kb45
	kb45_p=0;
		
// ku45M_p   id: ku45M
	ku45M_p=0;
		
// kb45P_p   id: kb45P
	kb45P_p=0;
		
// kb68_p   id: kb68
	kb68_p=0;
		
// ku68_p   id: ku68
	ku68_p=0;
		
// kb68P_p   id: kb68P
	kb68P_p=0;
		
// ku68M_p   id: ku68M
	ku68M_p=0;
		
// kbcg_p   id: kbcg
	kbcg_p=0;
		
// kbcgP_p   id: kbcgP
	kbcgP_p=0;
		
// kucgM_p   id: kucgM
	kucgM_p=0;
		
// Ltot_p   id: Ltot
	Ltot_p=0;
		
// RT_p   id: RT
	RT_p=0.833;
		
// CblT_p   id: CblT
	CblT_p=0.01464;
		
// Grb2T_p   id: Grb2T
	Grb2T_p=3.32;
		
// kptp_p   id: kptp
	kptp_p=0.016;
		
// kkinbase_p   id: kkinbase
	kkinbase_p=0.0759155;
		
// nH_p   id: nH
	nH_p=1.13;
		
// xT_p   id: xT
	xT_p=4.59181;
		
// K45_p   id: K45
	K45_p=0.201361;
		
// Kcg_p   id: Kcg
	Kcg_p=0.006356;
		
// ku45_p   id: ku45
	ku45_p=0.001011;
		
// kucg_p   id: kucg
	kucg_p=0.309271;
		
// PYMax_p   id: PYMax
	PYMax_p=2.279493223;
		
// UbMax_p   id: UbMax
	UbMax_p=0.014306;
		
// floc_p   id: floc
	floc_p=20000;
		
// CblWT_p   id: CblWT
	CblWT_p=0.01464;
		
// CblFactor_p   id: CblFactor
	CblFactor_p=1;
		
// Tyr_s   id: Tyr
	Tyr_s=0;
		
// Ub_s   id: Ub
	Ub_s=0;
		
// TyrNorm_s   id: TyrNorm
	TyrNorm_s=0;
		
// UbNorm_s   id: UbNorm
	UbNorm_s=0;
		



xdot=[
//x(1)   ID: Cbl  initialValue: 2.80975332814237E-5
	(1/compartment_cell)*( (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(1) * x(2) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(1) * x(5) ) + (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(1) * x(9) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(1) * x(11) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(1) * x(14) ) + (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(1) * x(14) ) + (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(1) * x(20) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(1) * x(22) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(1) * x(25) ) + (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(1) * x(25) ) + (1)*(1)* (kucg_p* x(3) ) + (1)*(1)* (ku45_p* x(6) ) + (1)*(1)* (kucg_p* x(10) ) + (1)*(1)* (ku45_p* x(12) ) + (1)*(1)* (ku45_p* x(16) ) + (1)*(1)* (kucg_p* x(15) ) + (1)*(1)* (kucg_p* x(21) ) + (1)*(1)* (ku45_p* x(23) ) + (1)*(1)* (ku45_p* x(27) ) + (1)*(1)* (kucg_p* x(26) ) );
	
//x(2)   ID: Grb2  initialValue: 3.30538809753328
	(1/compartment_cell)*( (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(1) * x(2) ) + (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(2) * x(6) ) + (-1)*(1)* ( ( ) * x(2) * x(8) ) + (-1)*(1)* ( ( ) * x(2) * x(11) ) + (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(2) * x(12) ) + (-1)*(1)* ( ( ) * x(2) * x(12) ) + (-1)*(1)* ( ( ) * x(2) * x(13) ) + (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(2) * x(16) ) + (-1)*(1)* (( 2 )* ( ) * x(2) * x(19) ) + (-1)*(1)* (( 2 )* ( ) * x(2) * x(22) ) + (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(2) * x(23) ) + (-1)*(1)* (( 2 )* ( ) * x(2) * x(23) ) + (-1)*(1)* (( 2 )* ( ) * x(2) * x(24) ) + (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(2) * x(27) ) + (1)*(1)* (kucg_p* x(3) ) + (1)*(1)* (kucg_p* x(7) ) + (1)*(1)* ( ( ) * x(9) ) + (1)*(1)* ( ( ) * x(14) ) + (1)*(1)* (kucg_p* x(13) ) + (1)*(1)* ( ( ) * x(16) ) + (1)*(1)* ( ( ) * x(18) ) + (1)*(1)* (kucg_p* x(18) ) + (1)*(1)* ( ( ) * x(20) ) + (1)*(1)* ( ( ) * x(25) ) + (1)*(1)* (kucg_p* x(24) ) + (1)*(1)* ( ( ) * x(27) ) + (1)*(1)* ( ( ) * x(29) ) + (1)*(1)* (kucg_p* x(29) ) );
	
//x(3)   ID: CG  initialValue: 0.0146119024667186
	(1/compartment_cell)*( (-1)*(1)* (kucg_p* x(3) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(3) * x(5) ) + (-1)*(1)* ( ( ) * x(3) * x(8) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(3) * x(11) ) + (-1)*(1)* ( ( ) * x(3) * x(11) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(3) * x(14) ) + (-1)*(1)* (( 2 )* ( ) * x(3) * x(19) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(3) * x(22) ) + (-1)*(1)* (( 2 )* ( ) * x(3) * x(22) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(3) * x(25) ) + (1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(1) * x(2) ) + (1)*(1)* (ku45_p* x(7) ) + (1)*(1)* ( ( ) * x(10) ) + (1)*(1)* (ku45_p* x(13) ) + (1)*(1)* ( ( ) * x(15) ) + (1)*(1)* (ku45_p* x(18) ) + (1)*(1)* ( ( ) * x(21) ) + (1)*(1)* (ku45_p* x(24) ) + (1)*(1)* ( ( ) * x(26) ) + (1)*(1)* (ku45_p* x(29) ) );
	
//x(4)   ID: EGFR_00UU  initialValue: 0.833
	(1/compartment_cell)*( (-1)*(1)* ( ( (kkinbase_p*((power(Ltot_p,nH_p))/((power(Ltot_p,nH_p))+(power(xT_p,nH_p))))) ) * x(4) ) + (-1)*(1)* (( 2 )* ( ) * x(4) ) + (1)*(1)* (kptp_p* x(5) ) + (1)*(1)* ( ( ) * x(8) ) );
	
//x(5)   ID: EGFR_10UU  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kptp_p* x(5) ) + (-1)*(1)* (( 2 )* ( ) * x(5) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(1) * x(5) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(3) * x(5) ) + (1)*(1)* ( ( ) * x(11) ) + (1)*(1)* ( ( (kkinbase_p*((power(Ltot_p,nH_p))/((power(Ltot_p,nH_p))+(power(xT_p,nH_p))))) ) * x(4) ) + (1)*(1)* (ku45_p* x(6) ) + (1)*(1)* (ku45_p* x(7) ) );
	
//x(6)   ID: EGFR_10CU  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (( 2 )* ( ) * x(6) ) + (-1)*(1)* (ku45_p* x(6) ) + (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(2) * x(6) ) + (1)*(1)* ( ( ) * x(12) ) + (1)*(1)* ( ( (ku45_p/K45_p) ) * x(1) * x(5) ) + (1)*(1)* (kucg_p* x(7) ) );
	
//x(7)   ID: EGFR_10LU  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (( 2 )* ( ) * x(7) ) + (-1)*(1)* (ku45_p* x(7) ) + (-1)*(1)* (kucg_p* x(7) ) + (1)*(1)* ( ( ) * x(13) ) + (1)*(1)* ( ( (ku45_p/K45_p) ) * x(3) * x(5) ) + (1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(2) * x(6) ) );
	
//x(8)   ID: EGFR_01UU  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* ( ( ) * x(8) ) + (-1)*(1)* ( ( (kkinbase_p*((power(Ltot_p,nH_p))/((power(Ltot_p,nH_p))+(power(xT_p,nH_p))))) ) * x(8) ) + (-1)*(1)* ( ( ) * x(8) ) + (-1)*(1)* ( ( ) * x(2) * x(8) ) + (-1)*(1)* ( ( ) * x(3) * x(8) ) + (1)*(1)* (kptp_p* x(11) ) + (1)*(1)* (( 2 )* ( ) * x(19) ) + (1)*(1)* (( 2 )* ( ) * x(4) ) + (1)*(1)* ( ( ) * x(9) ) + (1)*(1)* ( ( ) * x(10) ) );
	
//x(9)   ID: EGFR_01UG  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* ( ( (kkinbase_p*((power(Ltot_p,nH_p))/((power(Ltot_p,nH_p))+(power(xT_p,nH_p))))) ) * x(9) ) + (-1)*(1)* ( ( ) * x(9) ) + (-1)*(1)* ( ( ) * x(9) ) + (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(1) * x(9) ) + (1)*(1)* (kptp_p* x(14) ) + (1)*(1)* ( ( ) * x(20) ) + (1)*(1)* ( ( ) * x(2) * x(8) ) + (1)*(1)* (kucg_p* x(10) ) );
	
//x(10)   ID: EGFR_01UL  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* ( ( (kkinbase_p*((power(Ltot_p,nH_p))/((power(Ltot_p,nH_p))+(power(xT_p,nH_p))))) ) * x(10) ) + (-1)*(1)* ( ( ) * x(10) ) + (-1)*(1)* ( ( ) * x(10) ) + (-1)*(1)* (kucg_p* x(10) ) + (1)*(1)* (kptp_p* x(15) ) + (1)*(1)* ( ( ) * x(21) ) + (1)*(1)* ( ( ) * x(3) * x(8) ) + (1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(1) * x(9) ) );
	
//x(11)   ID: EGFR_11UU  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kptp_p* x(11) ) + (-1)*(1)* ( ( ) * x(11) ) + (-1)*(1)* ( ( ) * x(11) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(1) * x(11) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(3) * x(11) ) + (-1)*(1)* ( ( ) * x(2) * x(11) ) + (-1)*(1)* ( ( ) * x(3) * x(11) ) + (1)*(1)* (( 2 )* ( ) * x(22) ) + (1)*(1)* (( 2 )* ( ) * x(5) ) + (1)*(1)* ( ( (kkinbase_p*((power(Ltot_p,nH_p))/((power(Ltot_p,nH_p))+(power(xT_p,nH_p))))) ) * x(8) ) + (1)*(1)* (ku45_p* x(12) ) + (1)*(1)* (ku45_p* x(13) ) + (1)*(1)* ( ( ) * x(14) ) + (1)*(1)* ( ( ) * x(15) ) );
	
//x(12)   ID: EGFR_11CU  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* ( ( ) * x(12) ) + (-1)*(1)* ( ( ) * x(12) ) + (-1)*(1)* (ku45_p* x(12) ) + (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(2) * x(12) ) + (-1)*(1)* ( ( ) * x(2) * x(12) ) + (1)*(1)* (( 2 )* ( ) * x(23) ) + (1)*(1)* (( 2 )* ( ) * x(6) ) + (1)*(1)* ( ( (ku45_p/K45_p) ) * x(1) * x(11) ) + (1)*(1)* (kucg_p* x(13) ) + (1)*(1)* ( ( ) * x(16) ) );
	
//x(13)   ID: EGFR_11LU  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* ( ( ) * x(13) ) + (-1)*(1)* ( ( ) * x(13) ) + (-1)*(1)* (ku45_p* x(13) ) + (-1)*(1)* (kucg_p* x(13) ) + (-1)*(1)* ( ( ) * x(2) * x(13) ) + (-1)*(1)* ( ( ) * x(13) ) + (1)*(1)* (( 2 )* ( ) * x(24) ) + (1)*(1)* (( 2 )* ( ) * x(7) ) + (1)*(1)* ( ( (ku45_p/K45_p) ) * x(3) * x(11) ) + (1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(2) * x(12) ) + (1)*(1)* ( ( ) * x(18) ) + (1)*(1)* ( ( ) * x(17) ) );
	
//x(14)   ID: EGFR_11UG  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kptp_p* x(14) ) + (-1)*(1)* ( ( ) * x(14) ) + (-1)*(1)* ( ( ) * x(14) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(1) * x(14) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(3) * x(14) ) + (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(1) * x(14) ) + (1)*(1)* ( ( ) * x(25) ) + (1)*(1)* ( ( (kkinbase_p*((power(Ltot_p,nH_p))/((power(Ltot_p,nH_p))+(power(xT_p,nH_p))))) ) * x(9) ) + (1)*(1)* ( ( ) * x(2) * x(11) ) + (1)*(1)* (ku45_p* x(16) ) + (1)*(1)* (ku45_p* x(18) ) + (1)*(1)* (kucg_p* x(15) ) );
	
//x(15)   ID: EGFR_11UL  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kptp_p* x(15) ) + (-1)*(1)* ( ( ) * x(15) ) + (-1)*(1)* ( ( ) * x(15) ) + (-1)*(1)* (kucg_p* x(15) ) + (-1)*(1)* ( ( ( ( ) / ( (K45_p/floc_p) ) ) ) * x(15) ) + (1)*(1)* ( ( ) * x(26) ) + (1)*(1)* ( ( (kkinbase_p*((power(Ltot_p,nH_p))/((power(Ltot_p,nH_p))+(power(xT_p,nH_p))))) ) * x(10) ) + (1)*(1)* ( ( ) * x(3) * x(11) ) + (1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(1) * x(14) ) + (1)*(1)* ( ( ) * x(17) ) );
	
//x(16)   ID: EGFR_11CG  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* ( ( ) * x(16) ) + (-1)*(1)* ( ( ) * x(16) ) + (-1)*(1)* (ku45_p* x(16) ) + (-1)*(1)* ( ( ( ( ) / ( (Kcg_p/floc_p) ) ) ) * x(16) ) + (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(2) * x(16) ) + (1)*(1)* ( ( ) * x(27) ) + (1)*(1)* ( ( ) * x(2) * x(12) ) + (1)*(1)* ( ( (ku45_p/K45_p) ) * x(1) * x(14) ) + (1)*(1)* ( ( ) * x(17) ) + (1)*(1)* (kucg_p* x(18) ) );
	
//x(17)   ID: EGFR_11CC  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* ( ( ) * x(17) ) + (-1)*(1)* ( ( ) * x(17) ) + (-1)*(1)* ( ( ) * x(17) ) + (-1)*(1)* ( ( ) * x(17) ) + (1)*(1)* ( ( ) * x(28) ) + (1)*(1)* ( ( ) * x(13) ) + (1)*(1)* ( ( ( ( ) / ( (K45_p/floc_p) ) ) ) * x(15) ) + (1)*(1)* ( ( ( ( ) / ( (Kcg_p/floc_p) ) ) ) * x(16) ) );
	
//x(18)   ID: EGFR_11LG  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* ( ( ) * x(18) ) + (-1)*(1)* ( ( ) * x(18) ) + (-1)*(1)* (ku45_p* x(18) ) + (-1)*(1)* (kucg_p* x(18) ) + (1)*(1)* ( ( ) * x(29) ) + (1)*(1)* ( ( ) * x(2) * x(13) ) + (1)*(1)* ( ( (ku45_p/K45_p) ) * x(3) * x(14) ) + (1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(2) * x(16) ) );
	
//x(19)   ID: EGFR_02UU  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (( 2 )* ( ) * x(19) ) + (-1)*(1)* ( ( (kkinbase_p*((power(Ltot_p,nH_p))/((power(Ltot_p,nH_p))+(power(xT_p,nH_p))))) ) * x(19) ) + (-1)*(1)* (( 2 )* ( ) * x(2) * x(19) ) + (-1)*(1)* (( 2 )* ( ) * x(3) * x(19) ) + (1)*(1)* (kptp_p* x(22) ) + (1)*(1)* ( ( ) * x(8) ) + (1)*(1)* ( ( ) * x(20) ) + (1)*(1)* ( ( ) * x(21) ) );
	
//x(20)   ID: EGFR_02UG  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* ( ( ) * x(20) ) + (-1)*(1)* ( ( (kkinbase_p*((power(Ltot_p,nH_p))/((power(Ltot_p,nH_p))+(power(xT_p,nH_p))))) ) * x(20) ) + (-1)*(1)* ( ( ) * x(20) ) + (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(1) * x(20) ) + (1)*(1)* (kptp_p* x(25) ) + (1)*(1)* ( ( ) * x(9) ) + (1)*(1)* (( 2 )* ( ) * x(2) * x(19) ) + (1)*(1)* (kucg_p* x(21) ) );
	
//x(21)   ID: EGFR_02UL  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* ( ( ) * x(21) ) + (-1)*(1)* ( ( (kkinbase_p*((power(Ltot_p,nH_p))/((power(Ltot_p,nH_p))+(power(xT_p,nH_p))))) ) * x(21) ) + (-1)*(1)* ( ( ) * x(21) ) + (-1)*(1)* (kucg_p* x(21) ) + (1)*(1)* (kptp_p* x(26) ) + (1)*(1)* ( ( ) * x(10) ) + (1)*(1)* (( 2 )* ( ) * x(3) * x(19) ) + (1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(1) * x(20) ) );
	
//x(22)   ID: EGFR_12UU  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kptp_p* x(22) ) + (-1)*(1)* (( 2 )* ( ) * x(22) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(1) * x(22) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(3) * x(22) ) + (-1)*(1)* (( 2 )* ( ) * x(2) * x(22) ) + (-1)*(1)* (( 2 )* ( ) * x(3) * x(22) ) + (1)*(1)* ( ( ) * x(11) ) + (1)*(1)* ( ( (kkinbase_p*((power(Ltot_p,nH_p))/((power(Ltot_p,nH_p))+(power(xT_p,nH_p))))) ) * x(19) ) + (1)*(1)* (ku45_p* x(23) ) + (1)*(1)* (ku45_p* x(24) ) + (1)*(1)* ( ( ) * x(25) ) + (1)*(1)* ( ( ) * x(26) ) );
	
//x(23)   ID: EGFR_12CU  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (( 2 )* ( ) * x(23) ) + (-1)*(1)* (ku45_p* x(23) ) + (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(2) * x(23) ) + (-1)*(1)* (( 2 )* ( ) * x(2) * x(23) ) + (1)*(1)* ( ( ) * x(12) ) + (1)*(1)* ( ( (ku45_p/K45_p) ) * x(1) * x(22) ) + (1)*(1)* (kucg_p* x(24) ) + (1)*(1)* ( ( ) * x(27) ) );
	
//x(24)   ID: EGFR_12LU  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (( 2 )* ( ) * x(24) ) + (-1)*(1)* (ku45_p* x(24) ) + (-1)*(1)* (kucg_p* x(24) ) + (-1)*(1)* (( 2 )* ( ) * x(2) * x(24) ) + (-1)*(1)* (( 2 )* ( ) * x(24) ) + (1)*(1)* ( ( ) * x(13) ) + (1)*(1)* ( ( (ku45_p/K45_p) ) * x(3) * x(22) ) + (1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(2) * x(23) ) + (1)*(1)* ( ( ) * x(29) ) + (1)*(1)* ( ( ) * x(28) ) );
	
//x(25)   ID: EGFR_12UG  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kptp_p* x(25) ) + (-1)*(1)* ( ( ) * x(25) ) + (-1)*(1)* ( ( ) * x(25) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(1) * x(25) ) + (-1)*(1)* ( ( (ku45_p/K45_p) ) * x(3) * x(25) ) + (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(1) * x(25) ) + (1)*(1)* ( ( ) * x(14) ) + (1)*(1)* ( ( (kkinbase_p*((power(Ltot_p,nH_p))/((power(Ltot_p,nH_p))+(power(xT_p,nH_p))))) ) * x(20) ) + (1)*(1)* (( 2 )* ( ) * x(2) * x(22) ) + (1)*(1)* (ku45_p* x(27) ) + (1)*(1)* (ku45_p* x(29) ) + (1)*(1)* (kucg_p* x(26) ) );
	
//x(26)   ID: EGFR_12UL  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kptp_p* x(26) ) + (-1)*(1)* ( ( ) * x(26) ) + (-1)*(1)* ( ( ) * x(26) ) + (-1)*(1)* (kucg_p* x(26) ) + (-1)*(1)* ( ( ( ( ) / ( (K45_p/floc_p) ) ) ) * x(26) ) + (1)*(1)* ( ( ) * x(15) ) + (1)*(1)* ( ( (kkinbase_p*((power(Ltot_p,nH_p))/((power(Ltot_p,nH_p))+(power(xT_p,nH_p))))) ) * x(21) ) + (1)*(1)* (( 2 )* ( ) * x(3) * x(22) ) + (1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(1) * x(25) ) + (1)*(1)* ( ( ) * x(28) ) );
	
//x(27)   ID: EGFR_12CG  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* ( ( ) * x(27) ) + (-1)*(1)* ( ( ) * x(27) ) + (-1)*(1)* (ku45_p* x(27) ) + (-1)*(1)* ( ( ( ( ) / ( (Kcg_p/floc_p) ) ) ) * x(27) ) + (-1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(2) * x(27) ) + (1)*(1)* ( ( ) * x(16) ) + (1)*(1)* (( 2 )* ( ) * x(2) * x(23) ) + (1)*(1)* ( ( (ku45_p/K45_p) ) * x(1) * x(25) ) + (1)*(1)* ( ( ) * x(28) ) + (1)*(1)* (kucg_p* x(29) ) );
	
//x(28)   ID: EGFR_12CC  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* ( ( ) * x(28) ) + (-1)*(1)* ( ( ) * x(28) ) + (-1)*(1)* ( ( ) * x(28) ) + (-1)*(1)* ( ( ) * x(28) ) + (1)*(1)* ( ( ) * x(17) ) + (1)*(1)* (( 2 )* ( ) * x(24) ) + (1)*(1)* ( ( ( ( ) / ( (K45_p/floc_p) ) ) ) * x(26) ) + (1)*(1)* ( ( ( ( ) / ( (Kcg_p/floc_p) ) ) ) * x(27) ) );
	
//x(29)   ID: EGFR_12LG  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* ( ( ) * x(29) ) + (-1)*(1)* ( ( ) * x(29) ) + (-1)*(1)* (ku45_p* x(29) ) + (-1)*(1)* (kucg_p* x(29) ) + (1)*(1)* ( ( ) * x(18) ) + (1)*(1)* (( 2 )* ( ) * x(2) * x(24) ) + (1)*(1)* ( ( (ku45_p/K45_p) ) * x(3) * x(25) ) + (1)*(1)* ( ( (kucg_p/Kcg_p) ) * x(2) * x(27) ) )
	];


	
endfunction
        x0=[2.80975332814237E-5;3.30538809753328;0.0146119024667186;0.833;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29])

//real_variable:
	
	
//x(1)   id: Cbl  initialValue: 2.80975332814237E-5
	
//x(2)   id: Grb2  initialValue: 3.30538809753328
	
//x(3)   id: CG  initialValue: 0.0146119024667186
	
//x(4)   id: EGFR_00UU  initialValue: 0.833
	
//x(5)   id: EGFR_10UU  initialValue: 0
	
//x(6)   id: EGFR_10CU  initialValue: 0
	
//x(7)   id: EGFR_10LU  initialValue: 0
	
//x(8)   id: EGFR_01UU  initialValue: 0
	
//x(9)   id: EGFR_01UG  initialValue: 0
	
//x(10)   id: EGFR_01UL  initialValue: 0
	
//x(11)   id: EGFR_11UU  initialValue: 0
	
//x(12)   id: EGFR_11CU  initialValue: 0
	
//x(13)   id: EGFR_11LU  initialValue: 0
	
//x(14)   id: EGFR_11UG  initialValue: 0
	
//x(15)   id: EGFR_11UL  initialValue: 0
	
//x(16)   id: EGFR_11CG  initialValue: 0
	
//x(17)   id: EGFR_11CC  initialValue: 0
	
//x(18)   id: EGFR_11LG  initialValue: 0
	
//x(19)   id: EGFR_02UU  initialValue: 0
	
//x(20)   id: EGFR_02UG  initialValue: 0
	
//x(21)   id: EGFR_02UL  initialValue: 0
	
//x(22)   id: EGFR_12UU  initialValue: 0
	
//x(23)   id: EGFR_12CU  initialValue: 0
	
//x(24)   id: EGFR_12LU  initialValue: 0
	
//x(25)   id: EGFR_12UG  initialValue: 0
	
//x(26)   id: EGFR_12UL  initialValue: 0
	
//x(27)   id: EGFR_12CG  initialValue: 0
	
//x(28)   id: EGFR_12CC  initialValue: 0
	
//x(29)   id: EGFR_12LG  initialValue: 0