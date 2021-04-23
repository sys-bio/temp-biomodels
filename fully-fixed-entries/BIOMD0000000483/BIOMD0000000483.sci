
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_default   id: default
	compartment_default=1;
		
// da_p   id: da
	da_p=1;
		
// db_p   id: db
	db_p=1;
		
// sa_p   id: sa
	sa_p=100;
		
// sb_p   id: sb
	sb_p=100;
		
// ba_p   id: ba
	ba_p=1E-5;
		
// bb_p   id: bb
	bb_p=1E-5;
		
// ua_p   id: ua
	ua_p=0.1;
		
// ub_p   id: ub
	ub_p=0.1;
		



xdot=[
//x(1)   ID: Pa  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*da_p* x(1) ) + (-1)*(2)* (compartment_default*bb_p*(( x(1) *( x(1) -( 1 )))/( 2 ))* x(4) ) + (1)*(1)* (compartment_default*sa_p* x(3) ) + (1)*(2)* (compartment_default*ub_p* x(6) ) );
	
//x(2)   ID: Pb  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*db_p* x(2) ) + (-1)*(2)* (compartment_default*ba_p*(( x(2) *( x(2) -( 1 )))/( 2 ))* x(3) ) + (1)*(1)* (compartment_default*sb_p* x(4) ) + (1)*(2)* (compartment_default*ua_p* x(5) ) );
	
//x(3)   ID: Da  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*ba_p*(( x(2) *( x(2) -( 1 )))/( 2 ))* x(3) ) + (1)*(1)* (compartment_default*ua_p* x(5) ) );
	
//x(4)   ID: Db  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*bb_p*(( x(1) *( x(1) -( 1 )))/( 2 ))* x(4) ) + (1)*(1)* (compartment_default*ub_p* x(6) ) );
	
//x(5)   ID: BDa  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*ua_p* x(5) ) + (1)*(1)* (compartment_default*ba_p*(( x(2) *( x(2) -( 1 )))/( 2 ))* x(3) ) );
	
//x(6)   ID: BDb  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*ub_p* x(6) ) + (1)*(1)* (compartment_default*bb_p*(( x(1) *( x(1) -( 1 )))/( 2 ))* x(4) ) );
	
//x(7)   ID: ESA  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*sa_p* x(3) ) + (1)*(1)* (compartment_default*da_p* x(1) ) );
	
//x(8)   ID: ESB  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*sb_p* x(4) ) + (1)*(1)* (compartment_default*db_p* x(2) ) )
	];


	
endfunction
        x0=[0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)'],[1;2;3;4;5;6;7;8])

//real_variable:
	
	
//x(1)   id: Pa  initialValue: 0
	
//x(2)   id: Pb  initialValue: 0
	
//x(3)   id: Da  initialValue: 0
	
//x(4)   id: Db  initialValue: 0
	
//x(5)   id: BDa  initialValue: 0
	
//x(6)   id: BDb  initialValue: 0
	
//x(7)   id: ESA  initialValue: 0
	
//x(8)   id: ESB  initialValue: 0