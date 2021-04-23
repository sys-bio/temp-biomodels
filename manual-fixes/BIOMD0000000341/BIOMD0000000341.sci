
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// si_p   id: si
	si_p=0.72;
		
// Eg0_p   id: Eg0
	Eg0_p=1.44;
		
// R0_p   id: R0
	R0_p=864;
		
// sigma_p   id: sigma
	sigma_p=43.2;
		
// alpha_p   id: alpha
	alpha_p=20000;
		
// k_p   id: k
	k_p=432;
		
// d0_p   id: d0
	d0_p=0.06;
		
// r1_p   id: r1
	r1_p=0.00084;
		
// r2_p   id: r2
	r2_p=2.4E-6;
		



xdot=[
//x(1)   ID: G  initialValue: 250
	        
          (R0_p-((Eg0_p+(si_p* x(2) ))* x(1) ))
        ;
	
//x(2)   ID: I  initialValue: 2.8
	        
          ((( x(3) *sigma_p*(power( x(1) ,( 2 ))))/(alpha_p+(power( x(1) ,( 2 )))))-(k_p* x(2) ))
        ;
	
//x(3)   ID: B  initialValue: 37
	        
          ((((d0_p)+(r1_p* x(1) ))-(r2_p*(power( x(1) ,( 2 )))))* x(3) )
        
	];


	
endfunction
        x0=[250;2.8;37];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)'],[1;2;3])

//real_variable:
	
	
//x(1)   id: G  initialValue: 250
	
//x(2)   id: I  initialValue: 2.8
	
//x(3)   id: B  initialValue: 37