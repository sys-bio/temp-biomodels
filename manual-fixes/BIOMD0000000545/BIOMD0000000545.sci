
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Hypctol   id: Hypctol
	compartment_Hypctol=1;
		
// ks1_p   id: ks1
	ks1_p=0.23;
		
// ks2_p   id: ks2
	ks2_p=4.0526;
		
// kdr1_p   id: kdr1
	kdr1_p=0.1;
		
// kdr2_p   id: kdr2
	kdr2_p=0.2118;
		
// k1_p   id: k1
	k1_p=0.0043;
		
// k2_p   id: k2
	k2_p=161.62;
		
// ka1_p   id: ka1
	ka1_p=0.0372;
		
// ka2_p   id: ka2
	ka2_p=0.0611;
		
// ka3_p   id: ka3
	ka3_p=4.7207;
		
// kd1_p   id: kd1
	kd1_p=94.3524;
		
// kd2_p   id: kd2
	kd2_p=50.6973;
		
// kd3_p   id: kd3
	kd3_p=0.5508;
		
// ks3_p   id: ks3
	ks3_p=0.4397;
		
// kdr3_p   id: kdr3
	kdr3_p=1.246;
		
// UV_p   id: UV
	UV_p=1;
		
// ka4_p   id: ka4
	ka4_p=10.1285;
		
// kd4_p   id: kd4
	kd4_p=1.1999;
		
// n1_p   id: n1
	n1_p=3;
		
// n2_p   id: n2
	n2_p=2;
		
// n3_p   id: n3
	n3_p=3.5;
		
// kdr3a_p   id: kdr3a
	kdr3a_p=0.9735;
		
// kdr3b_p   id: kdr3b
	kdr3b_p=0.406;
		
// ksr_p   id: ksr
	ksr_p=0.7537;
		
// UM_Total_p   id: UM_Total
	UM_Total_p=0;
		
// COP1_Total_p   id: COP1_Total
	COP1_Total_p=0;
		
// FHY3_s   id: FHY3
	FHY3_s=5;
		



xdot=[
//x(1)   ID: CS  initialValue: 0.2
	(1/compartment_Hypctol)*( (-1)*(2)* ((ka1_p*(power( x(1) ,( 2 )))*(power( x(4) ,( 2 ))))-(kd1_p* x(5) )) + (-1)*(2)* ((ka2_p*(power( x(1) ,( 2 )))* x(2) )-(kd2_p* x(3) )) + (1)*(1)* ((ks1_p*(( 1 )+(UV_p*n3_p*( x(11) +FHY3_s))))-(kdr1_p*(( 1 )+(n1_p*UV_p))* x(1) )) );
	
//x(2)   ID: CD  initialValue: 10
	(1/compartment_Hypctol)*( (-1)*(1)* ((ka2_p*(power( x(1) ,( 2 )))* x(2) )-(kd2_p* x(3) )) + (-1)*(1)* ((ka4_p* x(2) * x(12) )-(kd4_p* x(13) )) );
	
//x(3)   ID: CDCS  initialValue: 2
	(1/compartment_Hypctol)*( (1)*(1)* ((ka2_p*(power( x(1) ,( 2 )))* x(2) )-(kd2_p* x(3) )) );
	
//x(4)   ID: UVR8M  initialValue: 0
	(1/compartment_Hypctol)*( (-1)*(2)* (k1_p*(power( x(4) ,( 2 )))) + (-1)*(2)* ((ka1_p*(power( x(1) ,( 2 )))*(power( x(4) ,( 2 ))))-(kd1_p* x(5) )) + (-1)*(1)* (ka3_p* x(4) * x(7) ) + (1)*(2)* (k2_p* x(6) ) );
	
//x(5)   ID: UCS  initialValue: 0
	(1/compartment_Hypctol)*( (1)*(1)* ((ka1_p*(power( x(1) ,( 2 )))*(power( x(4) ,( 2 ))))-(kd1_p* x(5) )) );
	
//x(6)   ID: UVR8D  initialValue: 20
	(1/compartment_Hypctol)*( (-1)*(1)* (k2_p* x(6) ) + (1)*(1)* (k1_p*(power( x(4) ,( 2 )))) + (1)*(1)* (kd3_p*(power( x(8) ,( 2 )))) );
	
//x(7)   ID: RUP  initialValue: 0
	(1/compartment_Hypctol)*( (-1)*(1)* (ka3_p* x(4) * x(7) ) + (1)*(1)* ((ks2_p*(( 1 )+(UV_p* x(5) )))-(kdr2_p* x(7) )) + (1)*(2)* (kd3_p*(power( x(8) ,( 2 )))) );
	
//x(8)   ID: UR  initialValue: 0
	(1/compartment_Hypctol)*( (-1)*(2)* (kd3_p*(power( x(8) ,( 2 )))) + (1)*(1)* (ka3_p* x(4) * x(7) ) );
	
//x(9)   ID: UVR8_M  initialValue: 0
	0;
	
//x(10)   ID: COP1  initialValue: 4.2
	0;
	
//x(11)   ID: HY5  initialValue: 0.25
	(1/compartment_Hypctol)*( (1)*(1)* ((ks3_p*(( 1 )+(n2_p*UV_p)))-(kdr3_p*((( x(3) /(kdr3a_p+ x(3) ))+( x(13) /(kdr3b_p+ x(13) )))-( x(5) /(ksr_p+ x(5) )))* x(11) )) );
	
//x(12)   ID: DWD  initialValue: 20
	(1/compartment_Hypctol)*( (-1)*(1)* ((ka4_p* x(2) * x(12) )-(kd4_p* x(13) )) );
	
//x(13)   ID: CDW  initialValue: 0
	(1/compartment_Hypctol)*( (1)*(1)* ((ka4_p* x(2) * x(12) )-(kd4_p* x(13) )) )
	];


	
endfunction
        x0=[0.2;10;2;0;0;20;0;0;0;4.2;0.25;20;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)'],[1;2;3;4;5;6;7;8;9;10;11;12;13])

//real_variable:
	
	
//x(1)   id: CS  initialValue: 0.2
	
//x(2)   id: CD  initialValue: 10
	
//x(3)   id: CDCS  initialValue: 2
	
//x(4)   id: UVR8M  initialValue: 0
	
//x(5)   id: UCS  initialValue: 0
	
//x(6)   id: UVR8D  initialValue: 20
	
//x(7)   id: RUP  initialValue: 0
	
//x(8)   id: UR  initialValue: 0
	
//x(9)   id: UVR8_M  initialValue: 0
	
//x(10)   id: COP1  initialValue: 4.2
	
//x(11)   id: HY5  initialValue: 0.25
	
//x(12)   id: DWD  initialValue: 20
	
//x(13)   id: CDW  initialValue: 0