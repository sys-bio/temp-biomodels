
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Cell   id: Cell
	compartment_Cell=1;
		
// V1_p   id: V1
	V1_p=0;
		
// K6_p   id: K6
	K6_p=0.3;
		
// V1p_p   id: V1p
	V1p_p=0.75;
		
// V3_p   id: V3
	V3_p=0;
		
// V3p_p   id: V3p
	V3p_p=0.3;
		
// vi_reaction1   id: vi     reactionID: reaction1
	vi_reaction1=0.1;
	
// k1_reaction2   id: k1     reactionID: reaction2
	k1_reaction2=0.5;
	
// K5_reaction2   id: K5     reactionID: reaction2
	K5_reaction2=0.02;
	
// kd_reaction3   id: kd     reactionID: reaction3
	kd_reaction3=0.02;
	
// K1_reaction4   id: K1     reactionID: reaction4
	K1_reaction4=0.1;
	
// V2_reaction5   id: V2     reactionID: reaction5
	V2_reaction5=0.25;
	
// K2_reaction5   id: K2     reactionID: reaction5
	K2_reaction5=0.1;
	
// K3_reaction6   id: K3     reactionID: reaction6
	K3_reaction6=0.2;
	
// K4_reaction7   id: K4     reactionID: reaction7
	K4_reaction7=0.1;
	
// V4_reaction7   id: V4     reactionID: reaction7
	V4_reaction7=0.1;
	
// a1_reaction8   id: a1     reactionID: reaction8
	a1_reaction8=0.05;
	
// a2_reaction9   id: a2     reactionID: reaction9
	a2_reaction9=0.05;
	
// alpha_reaction10   id: alpha     reactionID: reaction10
	alpha_reaction10=0.1;
	
// d1_reaction10   id: d1     reactionID: reaction10
	d1_reaction10=0.05;
	
// kd_reaction11   id: kd     reactionID: reaction11
	kd_reaction11=0.02;
	
// alpha_reaction11   id: alpha     reactionID: reaction11
	alpha_reaction11=0.1;
	
// vs_reaction12   id: vs     reactionID: reaction12
	vs_reaction12=0.2;
	
// d1_reaction13   id: d1     reactionID: reaction13
	d1_reaction13=0.05;
	



xdot=[
//x(1)   ID: C  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ( x(1) *k1_reaction2* x(2) *(power(( x(1) +K5_reaction2),( -1 )))) + (-1)*(1)* ( x(1) *kd_reaction3) + (-1)*(1)* (a1_reaction8* x(1) * x(4) ) + (1)*(1)* vi_reaction1 + (1)*(1)* (a2_reaction9* x(5) ) + (1)*(1)* (alpha_reaction10*d1_reaction10* x(5) ) );
	
//x(2)   ID: X  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* (V4_reaction7* x(2) *(power((K4_reaction7+ x(2) ),( -1 )))) + (1)*(1)* ( ( ( x(3) *V3p_p) ) *(( 1 )+(( -1 )* x(2) ))*(power((K3_reaction6+(( -1 )* x(2) )+( 1 )),( -1 )))) );
	
//x(3)   ID: M  initialValue: 0
	(1/compartment_Cell)*( (-1)*(1)* ( x(3) *V2_reaction5*(power((K2_reaction5+ x(3) ),( -1 )))) + (1)*(1)* ((( 1 )+(( -1 )* x(3) ))* ( ( x(1) *V1p_p*(power(( x(1) +K6_p),( -1 )))) ) *(power((K1_reaction4+(( -1 )* x(3) )+( 1 )),( -1 )))) );
	
//x(4)   ID: Y  initialValue: 1
	(1/compartment_Cell)*( (-1)*(1)* (a1_reaction8* x(1) * x(4) ) + (-1)*(1)* (d1_reaction13* x(4) ) + (1)*(1)* (a2_reaction9* x(5) ) + (1)*(1)* (alpha_reaction11*kd_reaction11* x(5) ) + (1)*(1)* vs_reaction12 );
	
//x(5)   ID: Z  initialValue: 1
	(1/compartment_Cell)*( (-1)*(1)* (a2_reaction9* x(5) ) + (-1)*(1)* (alpha_reaction10*d1_reaction10* x(5) ) + (-1)*(1)* (alpha_reaction11*kd_reaction11* x(5) ) + (1)*(1)* (a1_reaction8* x(1) * x(4) ) )
	];


	
endfunction
        x0=[0;0;0;1;1];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)'],[1;2;3;4;5])

//real_variable:
	
	
//x(1)   id: C  initialValue: 0
	
//x(2)   id: X  initialValue: 0
	
//x(3)   id: M  initialValue: 0
	
//x(4)   id: Y  initialValue: 1
	
//x(5)   id: Z  initialValue: 1