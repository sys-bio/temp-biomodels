
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// eps_p   id: eps
	eps_p=0.01;
		
// lambda1_p   id: lambda1
	lambda1_p=0.1;
		
// lambda3_p   id: lambda3
	lambda3_p=0.02;
		
// alphaAux_p   id: alphaAux
	alphaAux_p=1;
		
// alphaTIR1_p   id: alphaTIR1
	alphaTIR1_p=1;
		
// alphaARF_p   id: alphaARF
	alphaARF_p=1;
		
// phiIAAp_p   id: phiIAAp
	phiIAAp_p=100;
		
// phiARp_p   id: phiARp
	phiARp_p=2;
		
// phiPINp_p   id: phiPINp
	phiPINp_p=100;
		
// deltaIAAp_p   id: deltaIAAp
	deltaIAAp_p=1;
		
// deltaARp_p   id: deltaARp
	deltaARp_p=1;
		
// deltaPINp_p   id: deltaPINp
	deltaPINp_p=1;
		
// muAux_p   id: muAux
	muAux_p=0.1;
		
// muIAAs_p   id: muIAAs
	muIAAs_p=1;
		
// etaAuxTIR1_p   id: etaAuxTIR1
	etaAuxTIR1_p=10;
		
// etaARFIAA_p   id: etaARFIAA
	etaARFIAA_p=1;
		
// la_p   id: la
	la_p=0.5;
		
// ld_p   id: ld
	ld_p=0.1;
		
// pa_p   id: pa
	pa_p=10;
		
// pd_p   id: pd
	pd_p=10;
		
// ka_p   id: ka
	ka_p=100;
		
// kd_p   id: kd
	kd_p=1;
		
// qa_p   id: qa
	qa_p=1;
		
// qd_p   id: qd
	qd_p=1;
		
// thetaARF_p   id: thetaARF
	thetaARF_p=0.1;
		
// thetaARF2_p   id: thetaARF2
	thetaARF2_p=0.01;
		
// thARFIAA_p   id: thARFIAA
	thARFIAA_p=0.1;
		
// thetaIAAp_p   id: thetaIAAp
	thetaIAAp_p=0.1;
		
// thetaARp_p   id: thetaARp
	thetaARp_p=0.1;
		
// psiARFIAA_p   id: psiARFIAA
	psiARFIAA_p=0.1;
		
// psiARF_p   id: psiARF
	psiARF_p=0.1;
		
// alphaCk_p   id: alphaCk
	alphaCk_p=1;
		
// alphaARRB_p   id: alphaARRB
	alphaARRB_p=2;
		
// alphaAHK_p   id: alphaAHK
	alphaAHK_p=1;
		
// alphaPH_p   id: alphaPH
	alphaPH_p=1;
		
// phiCRp_p   id: phiCRp
	phiCRp_p=2;
		
// phiARRAp_p   id: phiARRAp
	phiARRAp_p=100;
		
// deltaCRp_p   id: deltaCRp
	deltaCRp_p=1;
		
// deltaARRAp_p   id: deltaARRAp
	deltaARRAp_p=1;
		
// muCk_p   id: muCk
	muCk_p=0.1;
		
// etaAHKph_p   id: etaAHKph
	etaAHKph_p=1;
		
// etaCkPh_p   id: etaCkPh
	etaCkPh_p=1;
		
// ra_p   id: ra
	ra_p=1;
		
// rd_p   id: rd
	rd_p=1;
		
// ua_p   id: ua
	ua_p=1;
		
// ud_p   id: ud
	ud_p=1;
		
// sa_p   id: sa
	sa_p=1;
		
// sd_p   id: sd
	sd_p=1;
		
// thARRAph_p   id: thARRAph
	thARRAph_p=0.1;
		
// thARRBph_p   id: thARRBph
	thARRBph_p=0.1;
		
// TIR1_s   id: TIR1
	TIR1_s=0;
		
// ARF_s   id: ARF
	ARF_s=0;
		
// ARRBp_s   id: ARRBp
	ARRBp_s=0;
		
// CkAHKph_s   id: CkAHKph
	CkAHKph_s=0;
		
// CkAHK_s   id: CkAHK
	CkAHK_s=0;
		
// F1_s   id: F1
	F1_s=0;
		
// F2_s   id: F2
	F2_s=0;
		
// F3_s   id: F3
	F3_s=0;
		
// F4_s   id: F4
	F4_s=0;
		
// F5a_s   id: F5a
	F5a_s=0;
		
// F5b_s   id: F5b
	F5b_s=0;
		
// F6_s   id: F6
	F6_s=0;
		



xdot=[
//x(1)   ID: IAAm  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* ((phiIAAp_p*((lambda1_p* ( (( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) /thetaARF_p)/(( 1 )+( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) /thetaARF_p)+( x(7) /thetaARF2_p)+( x(6) /thARFIAA_p)+(( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) * x(2) )/psiARFIAA_p)+((power( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) ,( 2 )))/psiARF_p)+( x(17) /thARRBph_p))) ) )+ ( ((( x(7) /thetaARF2_p)+((power( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) ,( 2 )))/psiARF_p))/(( 1 )+( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) /thetaARF_p)+( x(7) /thetaARF2_p)+( x(6) /thARFIAA_p)+(( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) * x(2) )/psiARFIAA_p)+((power( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) ,( 2 )))/psiARF_p)+( x(17) /thARRBph_p))) ) +(lambda3_p* ( (( x(17) /thARRBph_p)/(( 1 )+( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) /thetaARF_p)+( x(7) /thetaARF2_p)+( x(6) /thARFIAA_p)+(( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) * x(2) )/psiARFIAA_p)+((power( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) ,( 2 )))/psiARF_p)+( x(17) /thARRBph_p))) ) )))- x(1) ) );
	
//x(2)   ID: IAAp  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* (((( 1 )/eps_p)*(((deltaIAAp_p* x(1) )-(la_p* x(2) * x(3) ))+(ld_p* x(4) )))+(etaARFIAA_p*((pd_p* x(6) )-(pa_p* x(2) * ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) )))) );
	
//x(3)   ID: AuxTIR1  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* ((( 1 )/eps_p)*((((ka_p* x(8) * ( ((alphaTIR1_p- x(3) )- x(4) ) ) )-(kd_p* x(3) ))+((ld_p+( 1 ))* x(4) ))-(la_p* x(3) * x(2) ))) );
	
//x(4)   ID: AuxTIAA  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* ((( 1 )/eps_p)*((la_p* x(2) * x(3) )-((ld_p+( 1 ))* x(4) ))) );
	
//x(5)   ID: IAAs  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* ((( 1 )/eps_p)*( x(4) -(muIAAs_p* x(5) ))) );
	
//x(6)   ID: ARFIAA  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* ((pa_p* ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) * x(2) )-(pd_p* x(6) )) );
	
//x(7)   ID: ARF2  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* ((qa_p*(power( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) ,( 2 ))))-(qd_p* x(7) )) );
	
//x(8)   ID: Aux  initialValue: 1
	(1/compartment_cell)*( (1)*(1)* ((muAux_p*(alphaAux_p- x(8) ))-((( 1 )/eps_p)*etaAuxTIR1_p*((ka_p* x(8) * ( ((alphaTIR1_p- x(3) )- x(4) ) ) )-(kd_p* x(3) )))) );
	
//x(9)   ID: PINm  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* ((phiPINp_p*((lambda1_p* ( (( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) /thetaARF_p)/(( 1 )+( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) /thetaARF_p)+( x(7) /thetaARF2_p)+( x(6) /thARFIAA_p)+(( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) * x(2) )/psiARFIAA_p)+((power( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) ,( 2 )))/psiARF_p))) ) )+ ( ((( x(7) /thetaARF2_p)+((power( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) ,( 2 )))/psiARF_p))/(( 1 )+( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) /thetaARF_p)+( x(7) /thetaARF2_p)+( x(6) /thARFIAA_p)+(( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) * x(2) )/psiARFIAA_p)+((power( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) ,( 2 )))/psiARF_p))) ) ))- x(9) ) );
	
//x(10)   ID: PINp  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* ((( 1 )/eps_p)*((deltaPINp_p* x(9) )- x(10) )) );
	
//x(11)   ID: ARm  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* ((phiARp_p*((lambda1_p* ( (( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) /thetaARF_p)/(( 1 )+( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) /thetaARF_p)+( x(7) /thetaARF2_p)+( x(6) /thARFIAA_p)+(( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) * x(2) )/psiARFIAA_p)+((power( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) ,( 2 )))/psiARF_p))) ) )+ ( ((( x(7) /thetaARF2_p)+((power( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) ,( 2 )))/psiARF_p))/(( 1 )+( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) /thetaARF_p)+( x(7) /thetaARF2_p)+( x(6) /thARFIAA_p)+(( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) * x(2) )/psiARFIAA_p)+((power( ( ((alphaARF_p-(( 2 )* x(7) ))- x(6) ) ) ,( 2 )))/psiARF_p))) ) ))- x(11) ) );
	
//x(12)   ID: ARp  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* ((( 1 )/eps_p)*((deltaARp_p* x(11) )- x(12) )) );
	
//x(13)   ID: CRm  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* ((phiCRp_p* ( (( x(17) /thARRBph_p)/(( 1 )+( x(18) /thARRAph_p)+( x(17) /thARRBph_p))) ) )- x(13) ) );
	
//x(14)   ID: CRp  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* ((( 1 )/eps_p)*((deltaCRp_p* x(13) )- x(14) )) );
	
//x(15)   ID: AHKph  initialValue: 1
	(1/compartment_cell)*( (1)*(1)* ((( 1 )/eps_p)*((rd_p* ( (((alphaPH_p- x(15) )- x(18) )- x(17) ) ) )-(ra_p* x(15) * x(16) ))) );
	
//x(16)   ID: Ck  initialValue: 1
	(1/compartment_cell)*( (1)*(1)* ((muCk_p*(alphaCk_p- x(16) ))-((etaCkPh_p/eps_p)*((ra_p* x(15) * x(16) )-(rd_p* ( (((alphaPH_p- x(15) )- x(18) )- x(17) ) ) )))) );
	
//x(17)   ID: ARRBph  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* ((( 1 )/eps_p)*((ua_p* ( (((alphaPH_p- x(15) )- x(18) )- x(17) ) ) * ( (alphaARRB_p-(etaAHKph_p* x(17) )) ) )-(ud_p* ( (alphaAHK_p-(etaAHKph_p*( x(15) + ( (((alphaPH_p- x(15) )- x(18) )- x(17) ) ) ))) ) * x(17) ))) );
	
//x(18)   ID: ARRAph  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* ((( 1 )/eps_p)*((sa_p* ( (((alphaPH_p- x(15) )- x(18) )- x(17) ) ) * x(20) )-(sd_p* ( (alphaAHK_p-(etaAHKph_p*( x(15) + ( (((alphaPH_p- x(15) )- x(18) )- x(17) ) ) ))) ) * x(18) ))) );
	
//x(19)   ID: ARRAm  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* ((phiARRAp_p* ( (( x(12) /thetaARp_p)/(( 1 )+( x(12) /thetaARp_p))) ) )- x(19) ) );
	
//x(20)   ID: ARRAp  initialValue: 0
	(1/compartment_cell)*( (1)*(1)* ((( 1 )/eps_p)*(((deltaARRAp_p* x(19) )- x(20) )+(etaAHKph_p*((sd_p* ( (alphaAHK_p-(etaAHKph_p*( x(15) + ( (((alphaPH_p- x(15) )- x(18) )- x(17) ) ) ))) ) * x(18) )-(sa_p* ( (((alphaPH_p- x(15) )- x(18) )- x(17) ) ) * x(20) ))))) )
	];


	
endfunction
        x0=[0;0;0;0;0;0;0;1;0;0;0;0;0;0;1;1;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20])

//real_variable:
	
	
//x(1)   id: IAAm  initialValue: 0
	
//x(2)   id: IAAp  initialValue: 0
	
//x(3)   id: AuxTIR1  initialValue: 0
	
//x(4)   id: AuxTIAA  initialValue: 0
	
//x(5)   id: IAAs  initialValue: 0
	
//x(6)   id: ARFIAA  initialValue: 0
	
//x(7)   id: ARF2  initialValue: 0
	
//x(8)   id: Aux  initialValue: 1
	
//x(9)   id: PINm  initialValue: 0
	
//x(10)   id: PINp  initialValue: 0
	
//x(11)   id: ARm  initialValue: 0
	
//x(12)   id: ARp  initialValue: 0
	
//x(13)   id: CRm  initialValue: 0
	
//x(14)   id: CRp  initialValue: 0
	
//x(15)   id: AHKph  initialValue: 1
	
//x(16)   id: Ck  initialValue: 1
	
//x(17)   id: ARRBph  initialValue: 0
	
//x(18)   id: ARRAph  initialValue: 0
	
//x(19)   id: ARRAm  initialValue: 0
	
//x(20)   id: ARRAp  initialValue: 0