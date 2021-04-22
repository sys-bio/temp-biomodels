
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// Vmapp1_p   id: Vmapp1
	Vmapp1_p=2.3;
		
// Kmapp1_p   id: Kmapp1
	Kmapp1_p=700;
		
// Vm2_p   id: Vm2
	Vm2_p=170;
		
// Km2ATP_p   id: Km2ATP
	Km2ATP_p=25;
		
// Km2AMP_p   id: Km2AMP
	Km2AMP_p=110;
		
// K_p   id: K
	K_p=71000;
		
// Vmapp3_p   id: Vmapp3
	Vmapp3_p=65;
		
// Kmapp3_p   id: Kmapp3
	Kmapp3_p=260;
		
// k4_p   id: k4
	k4_p=5;
		
// Lac_s   id: Lac
	Lac_s=0;
		



xdot=[
//x(1)   ID: ATP  initialValue: 16.3
	(1/compartment_compartment)*( (-1)*(1)* ((Vmapp1_p* x(1) )/(Kmapp1_p+ x(1) )) + (-1)*(1)* ((Vm2_p* x(1) * x(2) )/(K_p+(Km2ATP_p* x(2) )+(Km2AMP_p* x(1) )+( x(1) * x(2) ))) + (1)*(1)* ((Vmapp3_p* x(3) )/(Kmapp3_p+ x(3) )) );
	
//x(2)   ID: AMP  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* ((Vm2_p* x(1) * x(2) )/(K_p+(Km2ATP_p* x(2) )+(Km2AMP_p* x(1) )+( x(1) * x(2) ))) + (1)*(1)* ((Vmapp1_p* x(1) )/(Kmapp1_p+ x(1) )) );
	
//x(3)   ID: ADP  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* ((Vmapp3_p* x(3) )/(Kmapp3_p+ x(3) )) + (1)*(2)* ((Vm2_p* x(1) * x(2) )/(K_p+(Km2ATP_p* x(2) )+(Km2AMP_p* x(1) )+( x(1) * x(2) ))) );
	
//x(4)   ID: Pyr  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (k4_p* x(4) ) + (1)*(1)* ((Vmapp3_p* x(3) )/(Kmapp3_p+ x(3) )) );
	
//x(5)   ID: NADH  initialValue: 256
	(1/compartment_compartment)*( (-1)*(1)* (k4_p* x(4) ) )
	];


	
endfunction
        x0=[16.3;0;0;0;256];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)'],[1;2;3;4;5])

//real_variable:
	
	
//x(1)   id: ATP  initialValue: 16.3
	
//x(2)   id: AMP  initialValue: 0
	
//x(3)   id: ADP  initialValue: 0
	
//x(4)   id: Pyr  initialValue: 0
	
//x(5)   id: NADH  initialValue: 256