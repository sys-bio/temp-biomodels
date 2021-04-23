
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_BZ   id: BZ
	compartment_BZ=1;
		
// f_p   id: f
	f_p=1;
		
// BrO3_s   id: BrO3
	BrO3_s=0.06;
		
// HOBr_s   id: HOBr
	HOBr_s=0;
		
// k1_Reaction1   id: k1     reactionID: Reaction1
	k1_Reaction1=1.34;
	
// k2_Reaction2   id: k2     reactionID: Reaction2
	k2_Reaction2=1600000000;
	
// k3_Reaction3   id: k3     reactionID: Reaction3
	k3_Reaction3=8000;
	
// k4_Reaction4   id: k4     reactionID: Reaction4
	k4_Reaction4=40000000;
	
// k5_Reaction5   id: k5     reactionID: Reaction5
	k5_Reaction5=1;
	



xdot=[
//x(1)   ID: Br  initialValue: 1E-7
	(1/compartment_BZ)*( (-1)*(1)* ( x(1) *BrO3_s*k1_Reaction1*compartment_BZ) + (-1)*(1)* ( x(1) * x(3) *k2_Reaction2*compartment_BZ) + (1)*( f_p )* ( x(2) *k5_Reaction5*compartment_BZ) );
	
//x(2)   ID: Ce  initialValue: 0.05
	(1/compartment_BZ)*( (-1)*(1)* ( x(2) *k5_Reaction5*compartment_BZ) + (1)*(1)* (BrO3_s* x(3) *k3_Reaction3*compartment_BZ) );
	
//x(3)   ID: HBrO2  initialValue: 5E-11
	(1/compartment_BZ)*( (-1)*(1)* ( x(1) * x(3) *k2_Reaction2*compartment_BZ) + (-1)*(1)* (BrO3_s* x(3) *k3_Reaction3*compartment_BZ) + (-1)*(2)* ((power( x(3) ,( 2 )))*k4_Reaction4*compartment_BZ) + (1)*(1)* ( x(1) *BrO3_s*k1_Reaction1*compartment_BZ) + (1)*(2)* (BrO3_s* x(3) *k3_Reaction3*compartment_BZ) )
	];


	
endfunction
        x0=[1E-7;0.05;5E-11];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)'],[1;2;3])

//real_variable:
	
	
//x(1)   id: Br  initialValue: 1E-7
	
//x(2)   id: Ce  initialValue: 0.05
	
//x(3)   id: HBrO2  initialValue: 5E-11