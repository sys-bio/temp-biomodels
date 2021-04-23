
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// T_p   id: T
	T_p=1;
		
// M_p   id: M
	M_p=0.01;
		
// P_p   id: P
	P_p=0.121;
		
// J_p   id: J
	J_p=100;
		
// W2_p   id: W2
	W2_p=0.2;
		
// W3_p   id: W3
	W3_p=13.48;
		
// U_p   id: U
	U_p=0.02;
		
// W_p   id: W
	W_p=0.01;
		
// n_p   id: n
	n_p=1.2;
		
// k_p   id: k
	k_p=-1;
		



xdot=[
//x(1)   ID: I  initialValue: 10
	(1/compartment_cell)*( (-1)*(3)* (compartment_cell*W2_p* x(1) * ( ((( x(3) +(( 3 )* x(2) ))-(power((((( 6 )* x(3) * x(2) )-(( 3 )*(power( x(2) ,( 2 )))))+(power( x(3) ,( 2 )))),( 0.5 ))))/( 6 )) ) ) + (1)*(1)* (compartment_cell*P_p*J_p) );
	
//x(2)   ID: E  initialValue: 2.1
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*W2_p* x(1) * ( ((( x(3) +(( 3 )* x(2) ))-(power((((( 6 )* x(3) * x(2) )-(( 3 )*(power( x(2) ,( 2 )))))+(power( x(3) ,( 2 )))),( 0.5 ))))/( 6 )) ) ) + (-1)*(1)* (compartment_cell*( 2 )*U_p) + (1)*(1)* (compartment_cell*W3_p*(power( ( ((( x(3) +(( 3 )* x(2) ))-(power((((( 6 )* x(3) * x(2) )-(( 3 )*(power( x(2) ,( 2 )))))+(power( x(3) ,( 2 )))),( 0.5 ))))/( 6 )) ) ,( 0.52 )))*(power( ( ((((( 7 )* x(3) )-(( 3 )* x(2) ))-(power((((( 6 )* x(3) * x(2) )-(( 3 )*(power( x(2) ,( 2 )))))+(power( x(3) ,( 2 )))),( 0.5 ))))/( 6 )) ) ,( 0.41 )))) );
	
//x(3)   ID: A  initialValue: 1.11
	(1/compartment_cell)*( (1)*(1)* (compartment_cell*U_p*(( 1 )-(W_p*(power( ( ((( x(3) +(( 3 )* x(2) ))-(power((((( 6 )* x(3) * x(2) )-(( 3 )*(power( x(2) ,( 2 )))))+(power( x(3) ,( 2 )))),( 0.5 ))))/( 6 )) ) ,n_p))*(power( ( ((((( 7 )* x(3) )-(( 3 )* x(2) ))-(power((((( 6 )* x(3) * x(2) )-(( 3 )*(power( x(2) ,( 2 )))))+(power( x(3) ,( 2 )))),( 0.5 ))))/( 6 )) ) ,k_p))))) )
	];


	
endfunction
        x0=[10;2.1;1.11];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)'],[1;2;3])

//real_variable:
	
	
//x(1)   id: I  initialValue: 10
	
//x(2)   id: E  initialValue: 2.1
	
//x(3)   id: A  initialValue: 1.11