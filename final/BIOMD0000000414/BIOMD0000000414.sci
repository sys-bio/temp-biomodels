
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// p1_star_p   id: p1_star
	p1_star_p=0.056;
		
// p2_p   id: p2
	p2_p=0.0053;
		
// lambda_star_p   id: lambda_star
	lambda_star_p=0.52;
		
// qj_star_p   id: qj_star
	qj_star_p=0.16;
		



xdot=[
//x(1)   ID: VENUS  initialValue: 1
	(1/compartment_cell)*( (-1)*(1)* (lambda_star_p*p2_p* x(1) ) + (-1)*(1)* ((p2_p* x(1) )/((p1_star_p* x(1) )+qj_star_p)) + (1)*(1)* p2_p )
	];


	
endfunction
        x0=[1];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)'],[1])

//real_variable:
	
	
//x(1)   id: VENUS  initialValue: 1