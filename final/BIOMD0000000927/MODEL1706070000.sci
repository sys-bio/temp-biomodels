
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Cell   id: Cell
	compartment_Cell=1;
		
// Sauxin_p   id: Sauxin
	Sauxin_p=0.02;
		
// muaux_p   id: muaux
	muaux_p=0.1;
		
// lambda1_p   id: lambda1
	lambda1_p=0.48;
		
// thetaARF_p   id: thetaARF
	thetaARF_p=100;
		
// thetaARF2_p   id: thetaARF2
	thetaARF2_p=100;
		
// thetaARFIAA_p   id: thetaARFIAA
	thetaARFIAA_p=100;
		
// muIAAm_p   id: muIAAm
	muIAAm_p=0.003;
		
// muIAA_p   id: muIAA
	muIAA_p=0.003;
		
// delta_p   id: delta
	delta_p=4;
		
// qa_p   id: qa
	qa_p=0.5;
		
// qd_p   id: qd
	qd_p=0.44;
		
// pa_p   id: pa
	pa_p=1;
		
// pd_p   id: pd
	pd_p=0.072;
		
// ka_p   id: ka
	ka_p=0.00082;
		
// kd_p   id: kd
	kd_p=0.33;
		
// la_p   id: la
	la_p=5.75;
		
// ld_p   id: ld
	ld_p=0.045;
		
// lm_p   id: lm
	lm_p=0.9;
		
// muIAAstar_p   id: muIAAstar
	muIAAstar_p=0.1;
		
// null_s   id: null
	null_s=0;
		



xdot=[
//x(1)   ID: aux  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ( x(1) *muaux_p) + (-1)*(1)* ( x(1) *ka_p* x(9) ) + (1)*(1)* Sauxin_p + (1)*(1)* ( x(7) *kd_p) );
	
//x(2)   ID: IAAm  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ( x(2) *muIAAm_p) + (-1)*(1)* (delta_p* x(2) ) + (1)*(1)* ( x(4) *lambda1_p*(power((thetaARF_p*(( x(4) *(power(thetaARF_p,( -1 ))))+( x(6) *(power(thetaARF2_p,( -1 ))))+( x(5) *(power(thetaARFIAA_p,( -1 ))))+( 1 ))),( -1 )))) + (1)*(1)* (delta_p* x(2) ) );
	
//x(3)   ID: IAAp  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ( x(3) *muIAA_p) + (-1)*(1)* ( x(4) * x(3) *pa_p) + (-1)*(1)* ( x(7) * x(3) *la_p) + (1)*(1)* (delta_p* x(2) ) + (1)*(1)* ( x(5) *pd_p) + (1)*(1)* ( x(8) *ld_p) );
	
//x(4)   ID: ARF  initialValue: 10
	(1/compartment_Cell)*( (-1)*(2)* ((power( x(4) ,( 2 )))*qa_p) + (-1)*(1)* ( x(4) * x(3) *pa_p) + (1)*(2)* ( x(6) *qd_p) + (1)*(1)* ( x(5) *pd_p) );
	
//x(5)   ID: ARFIAA  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ( x(5) *pd_p) + (1)*(1)* ( x(4) * x(3) *pa_p) );
	
//x(6)   ID: ARF2  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ( x(6) *qd_p) + (1)*(1)* ((power( x(4) ,( 2 )))*qa_p) );
	
//x(7)   ID: auxTIR1  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ( x(7) *kd_p) + (-1)*(1)* ( x(7) * x(3) *la_p) + (1)*(1)* ( x(1) *ka_p* x(9) ) + (1)*(1)* ( x(8) *ld_p) + (1)*(1)* ( x(8) *lm_p) );
	
//x(8)   ID: auxTIR1IAA  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ( x(8) *ld_p) + (-1)*(1)* ( x(8) *lm_p) + (1)*(1)* ( x(7) * x(3) *la_p) );
	
//x(9)   ID: TIR1  initialValue: 18.51
	(1/compartment_Cell)*( (-1)*(1)* ( x(1) *ka_p* x(9) ) + (1)*(1)* ( x(7) *kd_p) );
	
//x(10)   ID: IAAstar  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ( x(10) *muIAAstar_p) + (1)*(1)* ( x(8) *lm_p) )
	];


	
endfunction
        x0=[0;0;0;10;0;0;0;0;18.51;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)'],[1;2;3;4;5;6;7;8;9;10])

//real_variable:
	
	
//x(1)   id: aux  initialValue: 0
	
//x(2)   id: IAAm  initialValue: 0
	
//x(3)   id: IAAp  initialValue: 0
	
//x(4)   id: ARF  initialValue: 10
	
//x(5)   id: ARFIAA  initialValue: 0
	
//x(6)   id: ARF2  initialValue: 0
	
//x(7)   id: auxTIR1  initialValue: 0
	
//x(8)   id: auxTIR1IAA  initialValue: 0
	
//x(9)   id: TIR1  initialValue: 18.51
	
//x(10)   id: IAAstar  initialValue: 0