
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment_0000001   id: compartment_0000001
	compartment_compartment_0000001=1;
		
// k1_p   id: k1
	k1_p=6.6e-07;
		
// k2_p   id: k2
	k2_p=1600000000;
		
// k3_p   id: k3
	k3_p=1600000000;
		
// k4_p   id: k4
	k4_p=100000;
		
// k5_p   id: k5
	k5_p=20000;
		
// k6_p   id: k6
	k6_p=1;
		
// k7_p   id: k7
	k7_p=34000000;
		
// k9_p   id: k9
	k9_p=1000000;
		
// k10_p   id: k10
	k10_p=1000;
		
// k11_p   id: k11
	k11_p=250000000;
		
// k12_p   id: k12
	k12_p=0.38;
		
// k13a_p   id: k13a
	k13a_p=0.0087;
		
// k13b_p   id: k13b
	k13b_p=0.0087;
		
// k17_p   id: k17
	k17_p=30000;
		
// k18_p   id: k18
	k18_p=7;
		
// k19_p   id: k19
	k19_p=88000;
		
// HO2star_p   id: HO2star
	HO2star_p=0;
		
// Cu_I_ZnSOD_p   id: Cu_I_ZnSOD
	Cu_I_ZnSOD_p=0;
		
// species_0000016_s   id: species_0000016
	species_0000016_s=1e-05;
		
// species_0000017_s   id: species_0000017
	species_0000017_s=1e-05;
		



xdot=[
//x(1)   ID: species_0000001  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*k2_p* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment_0000001*k3_p* x(1) * ( (species_0000016_s- x(2) ) ) ) + (-1)*(1)* (compartment_compartment_0000001*k4_p* x(1) * x(4) ) + (-1)*(1)* (compartment_compartment_0000001*k5_p* x(1) * x(3) ) + (-1)*(1)* (k10_p* ( ( x(1) /( 100 )) ) *compartment_compartment_0000001) + (1)*(1)* (compartment_compartment_0000001*k1_p) );
	
//x(2)   ID: species_0000002  initialValue: 5e-06
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*k2_p* x(1) * x(2) ) + (-1)*(1)* (compartment_compartment_0000001*k13b_p* x(2) ) + (1)*(1)* (compartment_compartment_0000001*k3_p* x(1) * ( (species_0000016_s- x(2) ) ) ) + (1)*(1)* (compartment_compartment_0000001*k13a_p* ( (species_0000016_s- x(2) ) ) ) );
	
//x(3)   ID: species_0000006  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*k5_p* x(1) * x(3) ) + (-1)*(1)* (compartment_compartment_0000001*k6_p* x(3) * x(2) ) + (-1)*(1)* (compartment_compartment_0000001*k7_p* x(3) *species_0000017_s) + (1)*(1)* (compartment_compartment_0000001*k3_p* x(1) * ( (species_0000016_s- x(2) ) ) ) + (1)*(1)* (compartment_compartment_0000001*k10_p* ( ( x(1) /( 100 )) ) ) );
	
//x(4)   ID: species_0000007  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*k4_p* x(1) * x(4) ) + (-1)*(1)* (compartment_compartment_0000001*k18_p* x(4) ) + (-1)*(2)* (compartment_compartment_0000001*k19_p*(power( x(4) ,( 2 )))) + (1)*(1)* (compartment_compartment_0000001*k17_p* x(7) ) );
	
//x(5)   ID: species_0000008  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*k9_p* x(5) ) + (-1)*(1)* (compartment_compartment_0000001*k11_p* x(5) ) + (1)*(2)* (compartment_compartment_0000001*k5_p* x(1) * x(3) ) + (1)*(2)* (compartment_compartment_0000001*k6_p* x(3) * x(2) ) );
	
//x(6)   ID: species_0000009  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*k12_p* x(6) ) + (1)*(1)* (compartment_compartment_0000001*k4_p* x(1) * x(4) ) + (1)*(1)* (compartment_compartment_0000001*k18_p* x(4) ) );
	
//x(7)   ID: species_0000011  initialValue: 0
	(1/compartment_compartment_0000001)*( (-1)*(1)* (compartment_compartment_0000001*k17_p* x(7) ) + (1)*(1)* (compartment_compartment_0000001*k10_p* ( ( x(1) /( 100 )) ) ) + (1)*(1)* (compartment_compartment_0000001*k11_p* x(5) ) + (1)*(1)* (compartment_compartment_0000001*k18_p* x(4) ) )
	];


	
endfunction
        x0=[0;5e-06;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)'],[1;2;3;4;5;6;7])

//real_variable:
	
	
//x(1)   id: species_0000001  initialValue: 0
	
//x(2)   id: species_0000002  initialValue: 5e-06
	
//x(3)   id: species_0000006  initialValue: 0
	
//x(4)   id: species_0000007  initialValue: 0
	
//x(5)   id: species_0000008  initialValue: 0
	
//x(6)   id: species_0000009  initialValue: 0
	
//x(7)   id: species_0000011  initialValue: 0