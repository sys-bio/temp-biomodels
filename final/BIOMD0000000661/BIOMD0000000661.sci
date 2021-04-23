
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// compartment_Tumour_cell   id: Tumour_cell
	compartment_Tumour_cell=1;
		
// compartment_T_Lymphocyte_cell   id: T_Lymphocyte_cell
	compartment_T_Lymphocyte_cell=1;
		
// k1_p   id: k1
	k1_p=8.38E-10;
		
// k2_p   id: k2
	k2_p=0.006;
		
// k3_p   id: k3
	k3_p=5.9413;
		
// k4_p   id: k4
	k4_p=0.35;
		
// k5_p   id: k5
	k5_p=2.52E-9;
		
// k6_p   id: k6
	k6_p=2244;
		
// k7_p   id: k7
	k7_p=0.35;
		
// k8_p   id: k8
	k8_p=1.92E10;
		
// k9_p   id: k9
	k9_p=8.73E9;
		
// k10_p   id: k10
	k10_p=3110;
		
// k11_p   id: k11
	k11_p=13.9;
		



xdot=[
//x(1)   ID: T  initialValue: 500.000000000001
	(1/compartment_compartment)*( (-1)*(1)* () );
	
//x(2)   ID: LT  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*()) + (-1)*(1)* () + (1)*(1)* (compartment_compartment*()) );
	
//x(3)   ID: RT  initialValue: 1.00000000000001E4
	(1/compartment_T_Lymphocyte_cell)*( (-1)*(1)* (compartment_T_Lymphocyte_cell*k7_p* x(3) ) + (-1)*(1)* () + (1)*(1)* (compartment_T_Lymphocyte_cell*()) );
	
//x(4)   ID: m  initialValue: 500.000000000001
	(1/compartment_compartment)*( (-1)*(1)* () );
	
//x(5)   ID: Lm  initialValue: 1000
	(1/compartment_Tumour_cell)*( (-1)*(1)* (compartment_Tumour_cell*()) + (-1)*(1)* () + (1)*(1)* (compartment_Tumour_cell*()) );
	
//x(6)   ID: Rm  initialValue: 1000
	(1/compartment_Tumour_cell)*( (-1)*(1)* (compartment_Tumour_cell*k7_p* x(6) ) + (-1)*(1)* () + (1)*(1)* (compartment_Tumour_cell*()) );
	
//x(7)   ID: SL  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k11_p* x(7) ) + (-1)*(1)* () + (1)*(1)* () )
	];


	
endfunction
        x0=[500.000000000001;0;1.00000000000001E4;500.000000000001;1000;1000;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)'],[1;2;3;4;5;6;7])

//real_variable:
	
	
//x(1)   id: T  initialValue: 500.000000000001
	
//x(2)   id: LT  initialValue: 0
	
//x(3)   id: RT  initialValue: 1.00000000000001E4
	
//x(4)   id: m  initialValue: 500.000000000001
	
//x(5)   id: Lm  initialValue: 1000
	
//x(6)   id: Rm  initialValue: 1000
	
//x(7)   id: SL  initialValue: 0