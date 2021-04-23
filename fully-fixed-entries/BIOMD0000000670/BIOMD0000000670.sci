
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// A_p   id: A
	A_p=0.025;
		
// N_p   id: N
	N_p=1;
		
// I_p   id: I
	I_p=0.01;
		
// K_l_p   id: K_l
	K_l_p=17.857;
		
// delta_l_p   id: delta_l
	delta_l_p=0.1;
		
// K_m_p   id: K_m
	K_m_p=25;
		
// xi_p   id: xi
	xi_p=2;
		
// S_p   id: S
	S_p=62.5;
		



xdot=[
//x(1)   ID: l  initialValue: 0.0999999999999985
	        
          (((((A_p* x(1) * x(3) *(N_p+( 1 )))/(N_p+ x(1) + x(3) + x(2) ))+(I_p*(( 1 )+(S_p* x(3) ))))-(K_l_p* x(1) * x(3) * x(3) ))-(delta_l_p* x(1) ))
        ;
	
//x(2)   ID: n  initialValue: 0.899999999999988
	        
          ((( x(2) *(N_p+( 1 )))/(N_p+ x(1) + x(3) + x(2) ))- x(2) )
        ;
	
//x(3)   ID: m  initialValue: 0.899999999999988
	        
          ((((xi_p* x(3) *(N_p+( 1 )))/(N_p+ x(1) + x(3) + x(2) ))- x(3) )-(K_m_p* x(1) * x(3) * x(3) ))
        
	];


	
endfunction
        x0=[0.0999999999999985;0.899999999999988;0.899999999999988];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)'],[1;2;3])

//real_variable:
	
	
//x(1)   id: l  initialValue: 0.0999999999999985
	
//x(2)   id: n  initialValue: 0.899999999999988
	
//x(3)   id: m  initialValue: 0.899999999999988