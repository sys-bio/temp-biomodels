
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Cytoplasm   id: Cytoplasm
	compartment_Cytoplasm=1;
		
// compartment_Nucleus   id: Nucleus
	compartment_Nucleus=1;
		
// vs_p   id: vs
	vs_p=1.6;
		
// vm_p   id: vm
	vm_p=0.505;
		
// Km_p   id: Km
	Km_p=0.5;
		
// KI_p   id: KI
	KI_p=1;
		
// n_p   id: n
	n_p=4;
		
// Ft_p   id: Ft
	Ft_p=0;
		
// ks_p   id: ks
	ks_p=0.5;
		
// vd_p   id: vd
	vd_p=1.4;
		
// Kd_p   id: Kd
	Kd_p=0.13;
		
// k1_p   id: k1
	k1_p=0.5;
		
// k2_p   id: k2
	k2_p=0.6;
		



xdot=[
//x(1)   ID: M  initialValue: 0.1
	        
          ((vs_p*((power(KI_p,n_p))/((power(KI_p,n_p))+(power( x(3) ,n_p)))))-(vm_p*( x(1) /(Km_p+ x(1) ))))
        ;
	
//x(2)   ID: FC  initialValue: 0.1
	        
          (((ks_p* x(1) )+(k2_p* x(3) ))-((vd_p*( x(2) /(Kd_p+ x(2) )))+(k1_p* x(2) )))
        ;
	
//x(3)   ID: FN  initialValue: 0.1
	        
          ((k1_p* x(2) )-(k2_p* x(3) ))
        
	];


	
endfunction
        x0=[0.1;0.1;0.1];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)'],[1;2;3])

//real_variable:
	
	
//x(1)   id: M  initialValue: 0.1
	
//x(2)   id: FC  initialValue: 0.1
	
//x(3)   id: FN  initialValue: 0.1