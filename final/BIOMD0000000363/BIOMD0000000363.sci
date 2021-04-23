
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// k1_r1   id: k1     reactionID: r1
	k1_r1=0.005;
	
// k1_r2   id: k1     reactionID: r2
	k1_r2=0.01;
	
// k1_r3   id: k1     reactionID: r3
	k1_r3=1E-5;
	
// k1_r4   id: k1     reactionID: r4
	k1_r4=2.5E-5;
	



xdot=[
//x(1)   ID: II  initialValue: 1
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k1_r1* x(1) ) + (-1)*(1)* (compartment_compartment*k1_r3* x(1) ) );
	
//x(2)   ID: M  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k1_r2* x(2) ) + (1)*(1)* (compartment_compartment*k1_r1* x(1) ) );
	
//x(3)   ID: IIa  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*k1_r2* x(2) ) + (1)*(1)* (compartment_compartment*k1_r4* x(4) ) );
	
//x(4)   ID: P2  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k1_r4* x(4) ) + (1)*(1)* (compartment_compartment*k1_r3* x(1) ) )
	];


	
endfunction
        x0=[1;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)'],[1;2;3;4])

//real_variable:
	
	
//x(1)   id: II  initialValue: 1
	
//x(2)   id: M  initialValue: 0
	
//x(3)   id: IIa  initialValue: 0
	
//x(4)   id: P2  initialValue: 0