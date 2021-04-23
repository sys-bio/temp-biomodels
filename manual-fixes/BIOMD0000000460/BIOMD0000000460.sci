
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// kbd_p   id: kbd
	kbd_p=5.8E-9;
		
// kbs_p   id: kbs
	kbs_p=100;
		
// kbx_p   id: kbx
	kbx_p=8.4E-5;
		
// kxd_p   id: kxd
	kxd_p=1.2E-13;
		
// kxs_p   id: kxs
	kxs_p=2E-6;
		
// kzd_p   id: kzd
	kzd_p=0.052;
		
// kzs_p   id: kzs
	kzs_p=1.7E-6;
		
// IPTG_s   id: IPTG
	IPTG_s=100;
		



xdot=[
//x(1)   ID: sigb  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (((kzd_p* x(2) ))+(kzs_p* x(1) )) + (-1)*(1)* ((kxs_p* x(1) )-(kxd_p* x(3) )) + (1)*(1)* ((IPTG_s*kbs_p)-( x(1) *(kbd_p+(kbx_p* x(3) )))) );
	
//x(2)   ID: lacz  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (((kzd_p* x(2) ))+(kzs_p* x(1) )) );
	
//x(3)   ID: x  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* ((kxs_p* x(1) )-(kxd_p* x(3) )) )
	];


	
endfunction
        x0=[0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)'],[1;2;3])

//real_variable:
	
	
//x(1)   id: sigb  initialValue: 0
	
//x(2)   id: lacz  initialValue: 0
	
//x(3)   id: x  initialValue: 0