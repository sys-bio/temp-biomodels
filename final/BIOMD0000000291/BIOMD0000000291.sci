
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// k1_p   id: k1
	k1_p=0.484;
		
// k2_p   id: k2
	k2_p=0.07958;
		
// k3_p   id: k3
	k3_p=5.095E-6;
		
// k4_p   id: k4
	k4_p=2.656E-5;
		
// k5_p   id: k5
	k5_p=0.005489;
		
// k6_p   id: k6
	k6_p=3.226E-7;
		
// k7_p   id: k7
	k7_p=0.00301;
		
// k8_p   id: k8
	k8_p=1.011E-7;
		
// k9_p   id: k9
	k9_p=0.01685;
		
// k10_p   id: k10
	k10_p=0.1325;
		
// K_AlB_p   id: K_AlB
	K_AlB_p=95000;
		
// K_AlB2_p   id: K_AlB2
	K_AlB2_p=3000;
		
// n_p   id: n
	n_p=1;
		
// x5_s   id: x5
	x5_s=0.4615385;
		
// x6_s   id: x6
	x6_s=0.1754386;
		
// x7_s   id: x7
	x7_s=1.174;
		
// A0_s   id: A0
	A0_s=0.4615385;
		
// B0_s   id: B0
	B0_s=0.1754386;
		
// C0_s   id: C0
	C0_s=1.174;
		



xdot=[
//x(1)   ID: x1  initialValue: 0
	        
          (((((K_AlB_p*k3_p* ( (((A0_s- x(1) )- x(3) )- x(4) ) ) * ( (((B0_s- x(1) )- x(2) )-(( 2 )* x(4) )) ) )-(K_AlB2_p*k4_p* x(1) * ( (((B0_s- x(1) )- x(2) )-(( 2 )* x(4) )) ) ))-(k3_p* x(1) ))-(k9_p* x(1) *(power( ( ((C0_s- x(2) )-(n_p* x(3) )) ) ,(n_p+( 1 ))))))+(k4_p* x(4) )+(k10_p* x(4) * ( ((C0_s- x(2) )-(n_p* x(3) )) ) ))
        ;
	
//x(2)   ID: x2  initialValue: 0
	        
          (((k6_p* ( ((C0_s- x(2) )-(n_p* x(3) )) ) * ( (((B0_s- x(1) )- x(2) )-(( 2 )* x(4) )) ) )-(k8_p* x(2) ))+(k9_p* x(1) *(power( ( ((C0_s- x(2) )-(n_p* x(3) )) ) ,(n_p+( 1 )))))+(k10_p* x(4) * ( ((C0_s- x(2) )-(n_p* x(3) )) ) ))
        ;
	
//x(3)   ID: x3  initialValue: 0
	        
          (((k5_p*(power( ( ((C0_s- x(2) )-(n_p* x(3) )) ) ,n_p))* ( (((A0_s- x(1) )- x(3) )- x(4) ) ) )-(k7_p* x(3) ))+(k9_p* x(1) *(power( ( ((C0_s- x(2) )-(n_p* x(3) )) ) ,(n_p+( 1 ))))))
        ;
	
//x(4)   ID: x4  initialValue: 0
	        
          (((K_AlB2_p*k4_p* x(1) * ( (((B0_s- x(1) )- x(2) )-(( 2 )* x(4) )) ) )-(k4_p* x(4) ))-(k10_p* x(4) * ( ((C0_s- x(2) )-(n_p* x(3) )) ) ))
        
	];


	
endfunction
        x0=[0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)'],[1;2;3;4])

//real_variable:
	
	
//x(1)   id: x1  initialValue: 0
	
//x(2)   id: x2  initialValue: 0
	
//x(3)   id: x3  initialValue: 0
	
//x(4)   id: x4  initialValue: 0