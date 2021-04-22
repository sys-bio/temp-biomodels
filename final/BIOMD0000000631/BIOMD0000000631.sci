
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// v1_p   id: v1
	v1_p=4.58;
		
// v1L_p   id: v1L
	v1L_p=3;
		
// v2A_p   id: v2A
	v2A_p=1.27;
		
// v2B_p   id: v2B
	v2B_p=1.48;
		
// v3_p   id: v3
	v3_p=1;
		
// v4_p   id: v4
	v4_p=1.47;
		
// k1L_p   id: k1L
	k1L_p=0.53;
		
// v2L_p   id: v2L
	v2L_p=5;
		
// k1D_p   id: k1D
	k1D_p=0.21;
		
// k2_p   id: k2
	k2_p=0.35;
		
// k3_p   id: k3
	k3_p=0.56;
		
// k4_p   id: k4
	k4_p=0.57;
		
// p1_p   id: p1
	p1_p=0.76;
		
// p1L_p   id: p1L
	p1L_p=0.42;
		
// p2_p   id: p2
	p2_p=1.01;
		
// p3_p   id: p3
	p3_p=0.64;
		
// p4_p   id: p4
	p4_p=1.01;
		
// d1_p   id: d1
	d1_p=0.68;
		
// d2D_p   id: d2D
	d2D_p=0.5;
		
// d2L_p   id: d2L
	d2L_p=0.29;
		
// d3D_p   id: d3D
	d3D_p=0.48;
		
// d3L_p   id: d3L
	d3L_p=0.78;
		
// d4D_p   id: d4D
	d4D_p=1.21;
		
// d4L_p   id: d4L
	d4L_p=0.38;
		
// K1_p   id: K1
	K1_p=0.16;
		
// K2_p   id: K2
	K2_p=1.18;
		
// K3_p   id: K3
	K3_p=0.24;
		
// K4_p   id: K4
	K4_p=0.23;
		
// K5_p   id: K5
	K5_p=0.3;
		
// K6_p   id: K6
	K6_p=0.46;
		
// K7_p   id: K7
	K7_p=2;
		
// K8_p   id: K8
	K8_p=0.36;
		
// K9_p   id: K9
	K9_p=1.9;
		
// K10_p   id: K10
	K10_p=1.9;
		
// v5_p   id: v5
	v5_p=0.1;
		
// k5_p   id: k5
	k5_p=0.14;
		
// p5_p   id: p5
	p5_p=0.62;
		
// d5L_p   id: d5L
	d5L_p=4;
		
// d5D_p   id: d5D
	d5D_p=0.52;
		
// g1_p   id: g1
	g1_p=0.01;
		
// g2_p   id: g2
	g2_p=0.12;
		
// K11_p   id: K11
	K11_p=0.21;
		
// K12_p   id: K12
	K12_p=0.56;
		
// PP_p   id: PP
	PP_p=12;
		
// T_p   id: T
	T_p=24;
		



xdot=[
//x(1)   ID: L  initialValue: 1
	0;
	
//x(2)   ID: D  initialValue: 0
	0;
	
//x(3)   ID: CL_m  initialValue: 1
	(1/compartment_cell)*( (-1)*(1)* (k1L_p* x(1) * x(3) ) + (-1)*(1)* (k1D_p* x(2) * x(3) ) + (1)*(1)* (v1_p/(( 1 )+(power(( x(6) /K1_p),( 2 )))+(power(( x(8) /K2_p),( 2 ))))) + (1)*(1)* ((v1L_p* x(1) * x(14) )/(( 1 )+(power(( x(6) /K1_p),( 2 )))+(power(( x(8) /K2_p),( 2 ))))) );
	
//x(4)   ID: CL_p  initialValue: 1
	(1/compartment_cell)*( (-1)*(1)* (d1_p* x(4) ) + (1)*(1)* (p1_p* x(3) ) + (1)*(1)* (p1L_p* x(1) * x(3) ) );
	
//x(5)   ID: P97_m  initialValue: 1
	(1/compartment_cell)*( (-1)*(1)* (k2_p* x(5) ) + (1)*(1)* ((v2L_p* x(1) * x(14) )/(( 1 )+(power(( x(8) /K4_p),( 2 )))+(power(( x(10) /K5_p),( 2 ))))) + (1)*(1)* (v2A_p/(( 1 )+(power(( x(8) /K4_p),( 2 )))+(power(( x(10) /K5_p),( 2 ))))) + (1)*(1)* (((v2B_p*(power( x(4) ,( 2 ))))/((power(K3_p,( 2 )))+(power( x(4) ,( 2 )))))/(( 1 )+(power(( x(8) /K4_p),( 2 )))+(power(( x(10) /K5_p),( 2 ))))) );
	
//x(6)   ID: P97_p  initialValue: 1
	(1/compartment_cell)*( (-1)*(1)* (d2D_p* x(2) * x(6) ) + (-1)*(1)* (d2L_p* x(1) * x(6) ) + (1)*(1)* (p2_p* x(5) ) );
	
//x(7)   ID: P51_m  initialValue: 1
	(1/compartment_cell)*( (-1)*(1)* (k3_p* x(7) ) + (1)*(1)* (v3_p/(( 1 )+(power(( x(4) /K6_p),( 2 )))+(power(( x(8) /K7_p),( 2 ))))) );
	
//x(8)   ID: P51_p  initialValue: 1
	(1/compartment_cell)*( (-1)*(1)* (d3D_p* x(2) * x(8) ) + (-1)*(1)* (d3L_p* x(1) * x(8) ) + (1)*(1)* (p3_p* x(7) ) );
	
//x(9)   ID: EL_m  initialValue: 1
	(1/compartment_cell)*( (-1)*(1)* (k4_p* x(9) ) + (1)*(1)* (( x(1) *v4_p)/(( 1 )+(power(( x(4) /K8_p),( 2 )))+(power(( x(8) /K9_p),( 2 )))+(power(( x(10) /K10_p),( 2 ))))) );
	
//x(10)   ID: EL_p  initialValue: 1
	(1/compartment_cell)*( (-1)*(1)* (d4D_p* x(2) * x(10) ) + (-1)*(1)* (d4L_p* x(1) * x(10) ) + (1)*(1)* (p4_p* x(9) ) );
	
//x(11)   ID: PIF_m  initialValue: 1
	(1/compartment_cell)*( (-1)*(1)* (k5_p* x(11) ) + (1)*(1)* (v5_p/(( 1 )+(power(( x(10) /K11_p),( 2 ))))) );
	
//x(12)   ID: PIF_p  initialValue: 1
	(1/compartment_cell)*( (-1)*(1)* (d5D_p* x(2) * x(12) ) + (-1)*(1)* (d5L_p* x(1) * x(12) ) + (1)*(1)* (p5_p* x(11) ) );
	
//x(13)   ID: hypocotyl  initialValue: 1
	(1/compartment_cell)*( (1)*(1)* g1_p + (1)*(1)* ((g2_p*(power( x(12) ,( 2 ))))/((power(K12_p,( 2 )))+(power( x(12) ,( 2 ))))) );
	
//x(14)   ID: P  initialValue: 1
	(1/compartment_cell)*( (-1)*(1)* ( x(14) * x(1) ) + (1)*(1)* (( 0.3 )*(( 1 )- x(14) )* x(2) ) )
	];


	
endfunction
        x0=[1;0;1;1;1;1;1;1;1;1;1;1;1;1];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14])

//real_variable:
	
	
//x(1)   id: L  initialValue: 1
	
//x(2)   id: D  initialValue: 0
	
//x(3)   id: CL_m  initialValue: 1
	
//x(4)   id: CL_p  initialValue: 1
	
//x(5)   id: P97_m  initialValue: 1
	
//x(6)   id: P97_p  initialValue: 1
	
//x(7)   id: P51_m  initialValue: 1
	
//x(8)   id: P51_p  initialValue: 1
	
//x(9)   id: EL_m  initialValue: 1
	
//x(10)   id: EL_p  initialValue: 1
	
//x(11)   id: PIF_m  initialValue: 1
	
//x(12)   id: PIF_p  initialValue: 1
	
//x(13)   id: hypocotyl  initialValue: 1
	
//x(14)   id: P  initialValue: 1