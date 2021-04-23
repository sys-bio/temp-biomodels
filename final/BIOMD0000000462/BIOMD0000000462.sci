
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cell   id: cell
	compartment_cell=1;
		
// kprod_p   id: kprod
	kprod_p=1.86E-5;
		
// kdeg_p   id: kdeg
	kdeg_p=2.1E-5;
		
// kdimer_p   id: kdimer
	kdimer_p=1.1783E-7;
		
// kdedimer_p   id: kdedimer
	kdedimer_p=8.4655E-6;
		
// kdisagg_p   id: kdisagg
	kdisagg_p=5.4357E-5;
		
// kpf_p   id: kpf
	kpf_p=2.785E-6;
		
// kpg_p   id: kpg
	kpg_p=0.00574;
		
// kpghalf_p   id: kpghalf
	kpghalf_p=4;
		
// kdegNep_p   id: kdegNep
	kdegNep_p=1.8E-10;
		
// Source_s   id: Source
	Source_s=1;
		
// Sink_s   id: Sink
	Sink_s=1;
		



xdot=[
//x(1)   ID: Abeta  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kdeg_p* x(1) * x(4) *( 0.001 )) + (-1)*(2)* (kdimer_p* x(1) *( x(1) -( 1 ))*( 0.5 )) + (-1)*(1)* ((kpg_p* x(1) *(power( x(3) ,( 2 ))))/((power(kpghalf_p,( 2 )))+(power( x(3) ,( 2 ))))) + (1)*(1)* (kprod_p*Source_s) + (1)*(2)* (kdedimer_p* x(2) ) + (1)*(1)* (kdisagg_p* x(3) ) );
	
//x(2)   ID: AbDim  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* (kdedimer_p* x(2) ) + (-1)*(2)* (kpf_p* x(2) *( x(2) -( 1 ))*( 0.5 )) + (1)*(1)* (kdimer_p* x(1) *( x(1) -( 1 ))*( 0.5 )) );
	
//x(3)   ID: AbP  initialValue: 0
	(1/compartment_cell)*( (-1)*(1)* ((kpg_p* x(1) *(power( x(3) ,( 2 ))))/((power(kpghalf_p,( 2 )))+(power( x(3) ,( 2 ))))) + (-1)*(1)* (kdisagg_p* x(3) ) + (1)*(4)* (kpf_p* x(2) *( x(2) -( 1 ))*( 0.5 )) + (1)*(2)* ((kpg_p* x(1) *(power( x(3) ,( 2 ))))/((power(kpghalf_p,( 2 )))+(power( x(3) ,( 2 ))))) );
	
//x(4)   ID: Nep  initialValue: 1000
	(1/compartment_cell)*( (-1)*(1)* (kdeg_p* x(1) * x(4) *( 0.001 )) + (-1)*(1)* (kdegNep_p* x(4) ) + (1)*(1)* (kdeg_p* x(1) * x(4) *( 0.001 )) )
	];


	
endfunction
        x0=[0;0;0;1000];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)'],[1;2;3;4])

//real_variable:
	
	
//x(1)   id: Abeta  initialValue: 0
	
//x(2)   id: AbDim  initialValue: 0
	
//x(3)   id: AbP  initialValue: 0
	
//x(4)   id: Nep  initialValue: 1000