
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// K1__J1   id: K1     reactionID: _J1
	K1__J1=0.01;
	
// K2__J2   id: K2     reactionID: _J2
	K2__J2=0.00509;
	
// K3__J3   id: K3     reactionID: _J3
	K3__J3=0.00047;
	
// K4__J4   id: K4     reactionID: _J4
	K4__J4=0.0011;
	
// K5__J5   id: K5     reactionID: _J5
	K5__J5=0.00712;
	
// K6__J6   id: K6     reactionID: _J6
	K6__J6=0.00439;
	
// K7__J7   id: K7     reactionID: _J7
	K7__J7=0.00018;
	
// K8__J8   id: K8     reactionID: _J8
	K8__J8=0.11134;
	
// K9__J9   id: K9     reactionID: _J9
	K9__J9=0.14359;
	
// K10__J10   id: K10     reactionID: _J10
	K10__J10=0.00015;
	
// K11__J11   id: K11     reactionID: _J11
	K11__J11=0.12514;
	



xdot=[
//x(1)   ID: Glu  initialValue: 160
	(1/compartment_compartment)*( (-1)*(1)* (K1__J1* x(1) ) + (-1)*(1)* (K3__J3* x(1) ) + (-1)*(1)* (K7__J7* x(1) * x(10) ) + (1)*(1)* (K2__J2* x(2) ) );
	
//x(2)   ID: Fru  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (K2__J2* x(2) ) + (-1)*(1)* (K4__J4* x(2) ) + (-1)*(1)* (K5__J5* x(2) ) + (-1)*(1)* (K10__J10* x(2) * x(10) ) + (1)*(1)* (K1__J1* x(1) ) );
	
//x(3)   ID: Formic_acid  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (K3__J3* x(1) ) + (1)*(1)* (K4__J4* x(2) ) );
	
//x(4)   ID: Triose  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (K6__J6* x(4) ) + (1)*(2)* (K5__J5* x(2) ) );
	
//x(5)   ID: Acetic_acid  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (K6__J6* x(4) ) + (1)*(1)* (K8__J8* x(7) ) );
	
//x(6)   ID: Cn  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (K6__J6* x(4) ) );
	
//x(7)   ID: Amadori  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (K8__J8* x(7) ) + (-1)*(1)* (K9__J9* x(7) ) + (1)*(1)* (K7__J7* x(1) * x(10) ) );
	
//x(8)   ID: AMP  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (K11__J11* x(8) ) + (1)*(1)* (K9__J9* x(7) ) + (1)*(1)* (K10__J10* x(2) * x(10) ) );
	
//x(9)   ID: C5  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (K3__J3* x(1) ) + (1)*(1)* (K4__J4* x(2) ) );
	
//x(10)   ID: lys_R  initialValue: 15
	(1/compartment_compartment)*( (-1)*(1)* (K7__J7* x(1) * x(10) ) + (-1)*(1)* (K10__J10* x(2) * x(10) ) + (1)*(1)* (K8__J8* x(7) ) );
	
//x(11)   ID: Melanoidin  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (K11__J11* x(8) ) )
	];


	
endfunction
        x0=[160;0;0;0;0;0;0;0;0;15;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)'],[1;2;3;4;5;6;7;8;9;10;11])

//real_variable:
	
	
//x(1)   id: Glu  initialValue: 160
	
//x(2)   id: Fru  initialValue: 0
	
//x(3)   id: Formic_acid  initialValue: 0
	
//x(4)   id: Triose  initialValue: 0
	
//x(5)   id: Acetic_acid  initialValue: 0
	
//x(6)   id: Cn  initialValue: 0
	
//x(7)   id: Amadori  initialValue: 0
	
//x(8)   id: AMP  initialValue: 0
	
//x(9)   id: C5  initialValue: 0
	
//x(10)   id: lys_R  initialValue: 15
	
//x(11)   id: Melanoidin  initialValue: 0