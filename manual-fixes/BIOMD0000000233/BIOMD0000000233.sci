
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_batch   id: batch
	compartment_batch=1;
		
// S_s   id: S
	S_s=1;
		
// P_s   id: P
	P_s=1;
		
// k1_r1   id: k1     reactionID: r1
	k1_r1=8;
	
// k2_r2   id: k2     reactionID: r2
	k2_r2=1;
	
// k3_r3   id: k3     reactionID: r3
	k3_r3=1;
	
// k4_r4   id: k4     reactionID: r4
	k4_r4=1.5;
	



xdot=[
//x(1)   ID: X  initialValue: 1
	(1/compartment_batch)*( (-1)*(2)* (k2_r2*(power( x(1) ,( 2 )))) + (-1)*(1)* (k3_r3* x(1) * x(2) ) + (-1)*(1)* (k4_r4* x(1) ) + (1)*(2)* (k1_r1*S_s* x(2) ) + (1)*(1)* (k2_r2*(power( x(1) ,( 2 )))) );
	
//x(2)   ID: Y  initialValue: 1
	(1/compartment_batch)*( (-1)*(1)* (k1_r1*S_s* x(2) ) + (-1)*(1)* (k3_r3* x(1) * x(2) ) + (1)*(1)* (k2_r2*(power( x(1) ,( 2 )))) + (1)*(1)* (k3_r3* x(1) * x(2) ) )
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
	
	
//x(1)   id: X  initialValue: 1
	
//x(2)   id: Y  initialValue: 1