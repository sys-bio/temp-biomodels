
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// BR_p   id: BR
	BR_p=0.005;
		
// Rs_p   id: Rs
	Rs_p=3;
		
// KD_p   id: KD
	KD_p=200;
		
// kdegR_p   id: kdegR
	kdegR_p=0.005;
		
// kon_p   id: kon
	kon_p=0.001;
		
// koff_p   id: koff
	koff_p=0.05;
		
// kdegC_p   id: kdegC
	kdegC_p=0.01;
		
// k1_p   id: k1
	k1_p=1;
		
// k2_p   id: k2
	k2_p=5;
		
// k3_p   id: k3
	k3_p=45;
		
// kdegX_p   id: kdegX
	kdegX_p=0.005;
		
// kdegA_p   id: kdegA
	kdegA_p=0.005;
		
// BI_p   id: BI
	BI_p=0.005;
		
// TFs_p   id: TFs
	TFs_p=3;
		
// kdegI_p   id: kdegI
	kdegI_p=0.005;
		



xdot=[
//x(1)   ID: L  initialValue: 0.1
	0;
	
//x(2)   ID: R  initialValue: 1
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*kdegR_p* x(2) ) + (-1)*(1)* (compartment_cell*((kon_p* x(1) * x(2) )-(koff_p* x(3) ))) + (1)*(1)* (compartment_cell*(BR_p+((Rs_p* x(6) )/(KD_p+ x(6) )))) );
	
//x(3)   ID: C  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*kdegC_p* x(3) ) + (-1)*(1)* (compartment_cell*((k1_p* x(3) * x(4) )-(k2_p* x(5) ))) + (1)*(1)* (compartment_cell*((kon_p* x(1) * x(2) )-(koff_p* x(3) ))) + (1)*(1)* (compartment_cell*k3_p* x(5) ) );
	
//x(4)   ID: I  initialValue: 1
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*((k1_p* x(3) * x(4) )-(k2_p* x(5) ))) + (-1)*(1)* (compartment_cell*kdegI_p* x(4) ) + (1)*(1)* (compartment_cell*(BI_p+((TFs_p* x(6) )/(KD_p+ x(6) )))) );
	
//x(5)   ID: X  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*k3_p* x(5) ) + (-1)*(1)* (compartment_cell*kdegX_p* x(5) ) + (1)*(1)* (compartment_cell*((k1_p* x(3) * x(4) )-(k2_p* x(5) ))) );
	
//x(6)   ID: A  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (compartment_cell*kdegA_p* x(6) ) + (1)*(1)* (compartment_cell*k3_p* x(5) ) )
	];


	
endfunction
        x0=[0.1;1;0;1;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)'],[1;2;3;4;5;6])

//real_variable:
	
	
//x(1)   id: L  initialValue: 0.1
	
//x(2)   id: R  initialValue: 1
	
//x(3)   id: C  initialValue: 0
	
//x(4)   id: I  initialValue: 1
	
//x(5)   id: X  initialValue: 0
	
//x(6)   id: A  initialValue: 0