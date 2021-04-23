
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// kd_p   id: kd
	kd_p=0.334;
		
// ka_p   id: ka
	ka_p=0.000822;
		
// mu_p   id: mu
	mu_p=0.79;
		
// ld_p   id: ld
	ld_p=4.49;
		
// lm_p   id: lm
	lm_p=0.175;
		
// la_p   id: la
	la_p=1.15;
		
// delta_p   id: delta
	delta_p=0.486;
		
// lambda_p   id: lambda
	lambda_p=0.00316;
		
// TIR1T_p   id: TIR1T
	TIR1T_p=18.5;
		
// alpha_tr_p   id: alpha_tr
	alpha_tr_p=30.5;
		



xdot=[
//x(1)   ID: auxin  initialValue: 7.38
	(1/compartment_cell)*( (-1)*(1)* (ka_p* x(1) * x(2) ) + (-1)*(1)* (mu_p* x(1) ) + (1)*(1)* (kd_p* x(3) ) + (1)*(1)* alpha_tr_p );
	
//x(2)   ID: TIR1  initialValue: 15.4
	(1/compartment_cell)*( (-1)*(1)* (ka_p* x(1) * x(2) ) + (1)*(1)* (kd_p* x(3) ) );
	
//x(3)   ID: auxinTIR1  initialValue: 0.28
	(1/compartment_cell)*( (-1)*(1)* (kd_p* x(3) ) + (-1)*(1)* (la_p* x(3) * x(5) ) + (1)*(1)* (ka_p* x(1) * x(2) ) + (1)*(1)* (ld_p* x(4) ) + (1)*(1)* (lm_p* x(4) ) );
	
//x(4)   ID: auxinTIR1VENUS  initialValue: 2.78
	(1/compartment_cell)*( (-1)*(1)* (ld_p* x(4) ) + (-1)*(1)* (lm_p* x(4) ) + (1)*(1)* (la_p* x(3) * x(5) ) );
	
//x(5)   ID: VENUS  initialValue: 40.4
	(1/compartment_cell)*( (-1)*(1)* (la_p* x(3) * x(5) ) + (-1)*(1)* (lambda_p* x(5) ) + (1)*(1)* (ld_p* x(4) ) + (1)*(1)* delta_p )
	];


	
endfunction
        x0=[7.38;15.4;0.28;2.78;40.4];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)'],[1;2;3;4;5])

//real_variable:
	
	
//x(1)   id: auxin  initialValue: 7.38
	
//x(2)   id: TIR1  initialValue: 15.4
	
//x(3)   id: auxinTIR1  initialValue: 0.28
	
//x(4)   id: auxinTIR1VENUS  initialValue: 2.78
	
//x(5)   id: VENUS  initialValue: 40.4