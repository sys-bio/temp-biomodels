
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Compartment   id: Compartment
	compartment_Compartment=1;
		
// vsP_p   id: vsP
	vsP_p=1.1;
		
// vmP_p   id: vmP
	vmP_p=1;
		
// KmP_p   id: KmP
	KmP_p=0.2;
		
// KIP_p   id: KIP
	KIP_p=1;
		
// Pt_p   id: Pt
	Pt_p=0;
		
// ksP_p   id: ksP
	ksP_p=0.9;
		
// vdP_p   id: vdP
	vdP_p=2.2;
		
// KdP_p   id: KdP
	KdP_p=0.2;
		
// vsT_p   id: vsT
	vsT_p=1;
		
// vmT_p   id: vmT
	vmT_p=0.7;
		
// KmT_p   id: KmT
	KmT_p=0.2;
		
// KIT_p   id: KIT
	KIT_p=1;
		
// ksT_p   id: ksT
	ksT_p=0.9;
		
// vdT_p   id: vdT
	vdT_p=3;
		
// KdT_p   id: KdT
	KdT_p=0.2;
		
// kdC_p   id: kdC
	kdC_p=0.01;
		
// kdN_p   id: kdN
	kdN_p=0.01;
		
// k1_p   id: k1
	k1_p=0.8;
		
// k2_p   id: k2
	k2_p=0.2;
		
// k3_p   id: k3
	k3_p=1.2;
		
// k4_p   id: k4
	k4_p=0.6;
		
// kd_p   id: kd
	kd_p=0.01;
		
// V1P_p   id: V1P
	V1P_p=8;
		
// V1T_p   id: V1T
	V1T_p=8;
		
// V2P_p   id: V2P
	V2P_p=1;
		
// V2T_p   id: V2T
	V2T_p=1;
		
// V3P_p   id: V3P
	V3P_p=8;
		
// V3T_p   id: V3T
	V3T_p=8;
		
// V4P_p   id: V4P
	V4P_p=1;
		
// V4T_p   id: V4T
	V4T_p=1;
		
// K1P_p   id: K1P
	K1P_p=2;
		
// K1T_p   id: K1T
	K1T_p=2;
		
// K2P_p   id: K2P
	K2P_p=2;
		
// K2T_p   id: K2T
	K2T_p=2;
		
// K3P_p   id: K3P
	K3P_p=2;
		
// K3T_p   id: K3T
	K3T_p=2;
		
// K4P_p   id: K4P
	K4P_p=2;
		
// K4T_p   id: K4T
	K4T_p=2;
		
// n_p   id: n
	n_p=4;
		



xdot=[
//x(1)   ID: MP  initialValue: 0.0614368
	        
          ((vsP_p*((power(KIP_p,n_p))/((power(KIP_p,n_p))+(power( x(2) ,n_p)))))-((vmP_p*( x(1) /(KmP_p+ x(1) )))+(kd_p* x(1) )))
        ;
	
//x(2)   ID: CN  initialValue: 1.34728
	        
          ((k1_p* x(3) )-((k2_p* x(2) )+(kdN_p* x(2) )))
        ;
	
//x(3)   ID: C  initialValue: 0.207614
	        
          (((k3_p* x(10) * x(4) )+(k2_p* x(2) ))-((k4_p* x(3) )+(k1_p* x(3) )+(kdC_p* x(3) )))
        ;
	
//x(4)   ID: T2  initialValue: 0.0145428
	        
          (((V3T_p*( x(5) /(K3T_p+ x(5) )))+(k4_p* x(3) ))-((V4T_p*( x(4) /(K4T_p+ x(4) )))+(k3_p* x(10) * x(4) )+(vdT_p*( x(4) /(KdT_p+ x(4) )))+(kd_p* x(4) )))
        ;
	
//x(5)   ID: T1  initialValue: 0.0213384
	        
          (((V1T_p*( x(6) /(K1T_p+ x(6) )))+(V4T_p*( x(4) /(K4T_p+ x(4) ))))-((V2T_p*( x(5) /(K2T_p+ x(5) )))+(V3T_p*( x(5) /(K3T_p+ x(5) )))+(kd_p* x(5) )))
        ;
	
//x(6)   ID: T0  initialValue: 0.0217261
	        
          (((ksT_p* x(7) )+(V2T_p*( x(5) /(K2T_p+ x(5) ))))-((V1T_p*( x(6) /(K1T_p+ x(6) )))+(kd_p* x(6) )))
        ;
	
//x(7)   ID: MT  initialValue: 0.0860342
	        
          ((vsT_p*((power(KIT_p,n_p))/((power(KIT_p,n_p))+(power( x(2) ,n_p)))))-((vmT_p*( x(7) /(KmT_p+ x(7) )))+(kd_p* x(7) )))
        ;
	
//x(8)   ID: P0  initialValue: 0.0169928
	        
          (((ksP_p* x(1) )+(V2P_p*( x(9) /(K2P_p+ x(9) ))))-((V1P_p*( x(8) /(K1P_p+ x(8) )))+(kd_p* x(8) )))
        ;
	
//x(9)   ID: P1  initialValue: 0.0141356
	        
          (((V1P_p*( x(8) /(K1P_p+ x(8) )))+(V4P_p*( x(10) /(K4P_p+ x(10) ))))-((V2P_p*( x(9) /(K2P_p+ x(9) )))+(V3P_p*( x(9) /(K3P_p+ x(9) )))+(kd_p* x(9) )))
        ;
	
//x(10)   ID: P2  initialValue: 0.0614368
	        
          (((V3P_p*( x(9) /(K3P_p+ x(9) )))+(k4_p* x(3) ))-((V4P_p*( x(10) /(K4P_p+ x(10) )))+(k3_p* x(10) * x(4) )+(vdP_p*( x(10) /(KdP_p+ x(10) )))+(kd_p* x(10) )))
        
	];


	
endfunction
        x0=[0.0614368;1.34728;0.207614;0.0145428;0.0213384;0.0217261;0.0860342;0.0169928;0.0141356;0.0614368];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)'],[1;2;3;4;5;6;7;8;9;10])

//real_variable:
	
	
//x(1)   id: MP  initialValue: 0.0614368
	
//x(2)   id: CN  initialValue: 1.34728
	
//x(3)   id: C  initialValue: 0.207614
	
//x(4)   id: T2  initialValue: 0.0145428
	
//x(5)   id: T1  initialValue: 0.0213384
	
//x(6)   id: T0  initialValue: 0.0217261
	
//x(7)   id: MT  initialValue: 0.0860342
	
//x(8)   id: P0  initialValue: 0.0169928
	
//x(9)   id: P1  initialValue: 0.0141356
	
//x(10)   id: P2  initialValue: 0.0614368