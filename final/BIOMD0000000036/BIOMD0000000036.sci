
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_default   id: default
	compartment_default=1;
		
// compartment_CYTOPLASM   id: CYTOPLASM
	compartment_CYTOPLASM=1;
		
// N_A_p   id: N_A
	N_A_p=6.0221367E23;
		
// EmptySet_s   id: EmptySet
	EmptySet_s=0;
		
// Vm_TC   id: Vm     reactionID: TC
	Vm_TC=1;
	
// Pcrit_TC   id: Pcrit     reactionID: TC
	Pcrit_TC=0.1;
	
// Keq_TC   id: Keq     reactionID: TC
	Keq_TC=200;
	
// V_TL   id: V     reactionID: TL
	V_TL=0.5;
	
// D_mRNAD   id: D     reactionID: mRNAD
	D_mRNAD=0.1;
	
// D_ProteinD   id: D     reactionID: ProteinD
	D_ProteinD=0.1;
	
// k1_DBT   id: k1     reactionID: DBT
	k1_DBT=10;
	
// k2_DBT   id: k2     reactionID: DBT
	k2_DBT=0.03;
	
// J_DBT   id: J     reactionID: DBT
	J_DBT=0.05;
	
// Keq_DBT   id: Keq     reactionID: DBT
	Keq_DBT=200;
	



xdot=[
//x(1)   ID: M  initialValue: 1
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (D_mRNAD* x(1) *compartment_CYTOPLASM) + (1)*(1)* (compartment_CYTOPLASM*(Vm_TC/(( 1 )+(power((( x(2) *(( 1 )-(( 2 )/(( 1 )+(power((( 1 )+(( 8 )*Keq_TC* x(2) )),( 0.5 )))))))/(( 2 )*Pcrit_TC)),( 2 )))))) );
	
//x(2)   ID: P  initialValue: 1
	(1/compartment_CYTOPLASM)*( (-1)*(1)* (D_ProteinD* x(2) *compartment_CYTOPLASM) + (-1)*(1)* (compartment_CYTOPLASM*(((k1_DBT* x(2) *(( 2 )/(( 1 )+(power((( 1 )+(( 8 )*Keq_DBT* x(2) )),( 0.5 ))))))+(k2_DBT* x(2) ))/(J_DBT+ x(2) ))) + (1)*(1)* (V_TL* x(1) *compartment_CYTOPLASM) )
	];


	
endfunction
        x0=[1;1];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)'],[1;2])

//real_variable:
	
	
//x(1)   id: M  initialValue: 1
	
//x(2)   id: P  initialValue: 1