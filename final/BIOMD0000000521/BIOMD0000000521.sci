
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_plama   id: plama
	compartment_plama=1;
		
// compartment_tissue   id: tissue
	compartment_tissue=1;
		
// Pstar_p   id: Pstar
	Pstar_p=0;
		
// P0_p   id: P0
	P0_p=7.13;
		
// Q0_p   id: Q0
	Q0_p=41.2;
		
// lambda_P_p   id: lambda_P
	lambda_P_p=0.121;
		
// k_PQ_p   id: k_PQ
	k_PQ_p=0.00295;
		
// k_Qp_P_p   id: k_Qp_P
	k_Qp_P_p=0.0031;
		
// delta_QP_p   id: delta_QP
	delta_QP_p=0.0087;
		
// gamma_p   id: gamma
	gamma_p=0.729;
		
// KDE_p   id: KDE
	KDE_p=0.24;
		
// K_p   id: K
	K_p=100;
		



xdot=[
//x(1)   ID: C  initialValue: 1
	        
          ((KDE_p)* x(1) )
        ;
	
//x(2)   ID: P  initialValue: 7.13
	        
          (((((lambda_P_p* x(2) )*(( 1 )-( ( (( x(2) + x(3) )+ x(4) ) ) /K_p)))+(k_Qp_P_p* x(4) ))-(k_PQ_p* x(2) ))-(((gamma_p* x(1) )*KDE_p)* x(2) ))
        ;
	
//x(3)   ID: Q  initialValue: 41.2
	        
          (k_PQ_p-(((gamma_p* x(1) )*KDE_p)* x(3) ))
        ;
	
//x(4)   ID: Qp  initialValue: 0
	        
          (((((gamma_p* x(1) )*KDE_p)* x(3) )-(k_Qp_P_p* x(4) ))-(delta_QP_p* x(4) ))
        
	];


	
endfunction
        x0=[1;7.13;41.2;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)'],[1;2;3;4])

//real_variable:
	
	
//x(1)   id: C  initialValue: 1
	
//x(2)   id: P  initialValue: 7.13
	
//x(3)   id: Q  initialValue: 41.2
	
//x(4)   id: Qp  initialValue: 0