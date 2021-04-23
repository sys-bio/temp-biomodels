
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_default   id: default
	compartment_default=1E-15;
		
// compartment_CYTOPLASM   id: CYTOPLASM
	compartment_CYTOPLASM=1E-15;
		
// compartment_compartment_0000004   id: compartment_0000004
	compartment_compartment_0000004=1E-15;
		
// EmptySet_s   id: EmptySet
	EmptySet_s=0;
		
// Pt_s   id: Pt
	Pt_s=1;
		
// Vs_rM   id: Vs     reactionID: rM
	Vs_rM=0.76;
	
// KI_rM   id: KI     reactionID: rM
	KI_rM=1;
	
// n_rM   id: n     reactionID: rM
	n_rM=4;
	
// ks_rTL   id: ks     reactionID: rTL
	ks_rTL=0.38;
	
// V1_rP01   id: V1     reactionID: rP01
	V1_rP01=3.2;
	
// K1_rP01   id: K1     reactionID: rP01
	K1_rP01=2;
	
// V2_rP10   id: V2     reactionID: rP10
	V2_rP10=1.58;
	
// K2_rP10   id: K2     reactionID: rP10
	K2_rP10=2;
	
// V3_rP12   id: V3     reactionID: rP12
	V3_rP12=5;
	
// K3_rP12   id: K3     reactionID: rP12
	K3_rP12=2;
	
// V4_rP21   id: V4     reactionID: rP21
	V4_rP21=2.5;
	
// K4_rP21   id: K4     reactionID: rP21
	K4_rP21=2;
	
// k1_rP2n   id: k1     reactionID: rP2n
	k1_rP2n=1.9;
	
// k2_rPn2   id: k2     reactionID: rPn2
	k2_rPn2=1.3;
	
// Km_rmRNAd   id: Km     reactionID: rmRNAd
	Km_rmRNAd=0.5;
	
// Vm_rmRNAd   id: Vm     reactionID: rmRNAd
	Vm_rmRNAd=0.65;
	
// Vd_rVd   id: Vd     reactionID: rVd
	Vd_rVd=0.95;
	
// Kd_rVd   id: Kd     reactionID: rVd
	Kd_rVd=0.2;
	



xdot=[
//x(1)   ID: M  initialValue: 0.1
	(1/compartment_CYTOPLASM)*( (-1)*(1)* ((Vm_rmRNAd* x(1) *compartment_CYTOPLASM)/(Km_rmRNAd+ x(1) )) + (1)*(1)* ((compartment_default*Vs_rM*(power(KI_rM,n_rM)))/((power(KI_rM,n_rM))+(power( x(5) ,n_rM)))) );
	
//x(2)   ID: P0  initialValue: 0.25
	(1/compartment_CYTOPLASM)*( (-1)*(1)* ((compartment_CYTOPLASM*V1_rP01* x(2) )/(K1_rP01+ x(2) )) + (1)*(1)* (ks_rTL* x(1) *compartment_default) + (1)*(1)* ((compartment_CYTOPLASM*V2_rP10* x(3) )/(K2_rP10+ x(3) )) );
	
//x(3)   ID: P1  initialValue: 0.25
	(1/compartment_CYTOPLASM)*( (-1)*(1)* ((compartment_CYTOPLASM*V2_rP10* x(3) )/(K2_rP10+ x(3) )) + (-1)*(1)* ((compartment_CYTOPLASM*V3_rP12* x(3) )/(K3_rP12+ x(3) )) + (1)*(1)* ((compartment_CYTOPLASM*V1_rP01* x(2) )/(K1_rP01+ x(2) )) + (1)*(1)* ((compartment_CYTOPLASM*V4_rP21* x(4) )/(K4_rP21+ x(4) )) );
	
//x(4)   ID: P2  initialValue: 0.25
	(1/compartment_CYTOPLASM)*( (-1)*(1)* ((compartment_CYTOPLASM*V4_rP21* x(4) )/(K4_rP21+ x(4) )) + (-1)*(1)* (k1_rP2n* x(4) *compartment_CYTOPLASM) + (-1)*(1)* ((compartment_CYTOPLASM*Vd_rVd* x(4) )/(Kd_rVd+ x(4) )) + (1)*(1)* ((compartment_CYTOPLASM*V3_rP12* x(3) )/(K3_rP12+ x(3) )) + (1)*(1)* (k2_rPn2* x(5) *compartment_compartment_0000004) );
	
//x(5)   ID: Pn  initialValue: 0.25
	(1/compartment_compartment_0000004)*( (-1)*(1)* (k2_rPn2* x(5) *compartment_compartment_0000004) + (1)*(1)* (k1_rP2n* x(4) *compartment_CYTOPLASM) )
	];


	
endfunction
        x0=[0.1;0.25;0.25;0.25;0.25];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)'],[1;2;3;4;5])

//real_variable:
	
	
//x(1)   id: M  initialValue: 0.1
	
//x(2)   id: P0  initialValue: 0.25
	
//x(3)   id: P1  initialValue: 0.25
	
//x(4)   id: P2  initialValue: 0.25
	
//x(5)   id: Pn  initialValue: 0.25