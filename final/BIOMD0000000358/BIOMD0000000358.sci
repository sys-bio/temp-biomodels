
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment_1   id: compartment_1
	compartment_compartment_1=1;
		
// kcat_X_p   id: kcat_X
	kcat_X_p=239.1;
		
// km_X_p   id: km_X
	km_X_p=23.65;
		
// ki_Xa_p   id: ki_Xa
	ki_Xa_p=4.531;
		
// k_PT_p   id: k_PT
	k_PT_p=122.9;
		
// k_PL_p   id: k_PL
	k_PL_p=801.4;
		
// kcat_V_p   id: kcat_V
	kcat_V_p=7.844;
		
// km_V_p   id: km_V
	km_V_p=149.7;
		
// kcat_II_p   id: kcat_II
	kcat_II_p=43.87;
		
// km_II_p   id: km_II
	km_II_p=62.25;
		
// kcat_2_p   id: kcat_2
	kcat_2_p=12.4;
		
// km_2_p   id: km_2
	km_2_p=0.06148;
		
// ki_IIaAlpha2M_p   id: ki_IIaAlpha2M
	ki_IIaAlpha2M_p=0.1762;
		
// ki_IIaATIII_p   id: ki_IIaATIII
	ki_IIaATIII_p=0.7859;
		
// AmAct_p   id: AmAct
	AmAct_p=0;
		



xdot=[
//x(1)   ID: X  initialValue: 81.24998
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) );
	
//x(2)   ID: Xa  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*ki_Xa_p* x(2) ) + (-1)*(1)* (compartment_compartment_1*((k_PT_p* x(6) * x(2) * x(4) )-(k_PL_p* x(5) ))) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(3)   ID: Xa_ATIII  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*ki_Xa_p* x(2) ) );
	
//x(4)   ID: PL  initialValue: 9.999997
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k_PT_p* x(6) * x(2) * x(4) )-(k_PL_p* x(5) ))) );
	
//x(5)   ID: PT  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*((k_PT_p* x(6) * x(2) * x(4) )-(k_PL_p* x(5) ))) );
	
//x(6)   ID: Va  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k_PT_p* x(6) * x(2) * x(4) )-(k_PL_p* x(5) ))) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(7)   ID: IIa  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*ki_IIaAlpha2M_p* x(7) ) + (-1)*(1)* (compartment_compartment_1*ki_IIaATIII_p* x(7) ) + (1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(8)   ID: V  initialValue: 6.711998
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) );
	
//x(9)   ID: II  initialValue: 509.2998
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (-1)*(1)* (compartment_compartment_1*()) );
	
//x(10)   ID: IIa_alpha2M  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*ki_IIaAlpha2M_p* x(7) ) );
	
//x(11)   ID: IIa_ATIII  initialValue: 0
	(1/compartment_compartment_1)*( (1)*(1)* (compartment_compartment_1*ki_IIaATIII_p* x(7) ) );
	
//x(12)   ID: RVV  initialValue: 0.3349999
	0
	];


	
endfunction
        x0=[81.24998;0;0;9.999997;0;0;0;6.711998;509.2998;0;0;0.3349999];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)'],[1;2;3;4;5;6;7;8;9;10;11;12])

//real_variable:
	
	
//x(1)   id: X  initialValue: 81.24998
	
//x(2)   id: Xa  initialValue: 0
	
//x(3)   id: Xa_ATIII  initialValue: 0
	
//x(4)   id: PL  initialValue: 9.999997
	
//x(5)   id: PT  initialValue: 0
	
//x(6)   id: Va  initialValue: 0
	
//x(7)   id: IIa  initialValue: 0
	
//x(8)   id: V  initialValue: 6.711998
	
//x(9)   id: II  initialValue: 509.2998
	
//x(10)   id: IIa_alpha2M  initialValue: 0
	
//x(11)   id: IIa_ATIII  initialValue: 0
	
//x(12)   id: RVV  initialValue: 0.3349999