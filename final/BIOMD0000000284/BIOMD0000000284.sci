
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// X_s   id: X
	X_s=10;
		
// Y_s   id: Y
	Y_s=2;
		
// Z_s   id: Z
	Z_s=1;
		



xdot=[
//x(1)   ID: A  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(((( 2 )* x(1) )- x(2) )/(( 1 )+ x(1) + x(2) ))) + (1)*(1)* (compartment_cell*(((( 10 )*X_s)- x(1) )/(( 1 )+X_s+ x(1) +(power( x(2) ,( 2 )))))) );
	
//x(2)   ID: B  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(( x(2) - x(3) )/(( 1 )+ x(2) + x(3) +(power( x(4) ,( 2 )))))) + (-1)*(1)* (compartment_cell*(( x(2) - x(5) )/(( 1 )+ x(2) + x(5) +(power( x(6) ,( 2 )))))) + (1)*(1)* (compartment_cell*(((( 2 )* x(1) )- x(2) )/(( 1 )+ x(1) + x(2) ))) );
	
//x(3)   ID: C  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(((( 5 )* x(3) )- x(4) )/(( 1 )+ x(3) + x(4) ))) + (1)*(1)* (compartment_cell*(( x(2) - x(3) )/(( 1 )+ x(2) + x(3) +(power( x(4) ,( 2 )))))) );
	
//x(4)   ID: D  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(((( 10 )* x(4) )-Y_s)/(( 1 )+ x(4) +Y_s))) + (1)*(1)* (compartment_cell*(((( 5 )* x(3) )- x(4) )/(( 1 )+ x(3) + x(4) ))) );
	
//x(5)   ID: E  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(((( 5 )* x(5) )- x(6) )/(( 1 )+ x(5) + x(6) ))) + (1)*(1)* (compartment_cell*(( x(2) - x(5) )/(( 1 )+ x(2) + x(5) +(power( x(6) ,( 2 )))))) );
	
//x(6)   ID: F  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*(((( 10 )* x(6) )-Z_s)/(( 1 )+ x(6) +Z_s))) + (1)*(1)* (compartment_cell*(((( 5 )* x(5) )- x(6) )/(( 1 )+ x(5) + x(6) ))) )
	];


	
endfunction
        x0=[0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)'],[1;2;3;4;5;6])

//real_variable:
	
	
//x(1)   id: A  initialValue: 0
	
//x(2)   id: B  initialValue: 0
	
//x(3)   id: C  initialValue: 0
	
//x(4)   id: D  initialValue: 0
	
//x(5)   id: E  initialValue: 0
	
//x(6)   id: F  initialValue: 0