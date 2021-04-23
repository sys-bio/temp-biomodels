
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_chloroplast   id: chloroplast
	compartment_chloroplast=1;
		
// Rp_p   id: Rp
	Rp_p=3.2;
		
// Nt_p   id: Nt
	Nt_p=0.5;
		
// alpha_p   id: alpha
	alpha_p=0.3;
		
// Q_p   id: Q
	Q_p=1000;
		
// J_p   id: J
	J_p=4.8582995951417;
		
// Gamma_p   id: Gamma
	Gamma_p=42.8926627111176;
		
// teta_p   id: teta
	teta_p=0.9;
		
// Vcmax_p   id: Vcmax
	Vcmax_p=2.53232284114507;
		
// Vomax_p   id: Vomax
	Vomax_p=0.531787796640465;
		
// Kc_p   id: Kc
	Kc_p=406.066146391504;
		
// Ko_p   id: Ko
	Ko_p=276.900084789612;
		
// Vj_p   id: Vj
	Vj_p=0.899589030506691;
		
// phi_p   id: phi
	phi_p=0.263964911408408;
		
// Vc_p   id: Vc
	Vc_p=0.646926785453086;
		
// RuBP_s   id: RuBP
	RuBP_s=2;
		
// CO2_s   id: CO2
	CO2_s=245;
		
// O2_s   id: O2
	O2_s=210;
		
// NADP_s   id: NADP
	NADP_s=0.29;
		



xdot=[
//x(1)   ID: PGA  initialValue: 2.4
	(1/compartment_chloroplast)*( (-1)*(1)* (compartment_chloroplast*()) + (1)*(2)* (compartment_chloroplast*()) + (1)*(1.5)* (compartment_chloroplast*()) );
	
//x(2)   ID: NADPH  initialValue: 0.21
	(1/compartment_chloroplast)*( (-1)*(2)* (compartment_chloroplast*()) + (-1)*(2)* (compartment_chloroplast*()) + (1)*(1)* (compartment_chloroplast*()) )
	];


	
endfunction
        x0=[2.4;0.21];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)'],[1;2])

//real_variable:
	
	
//x(1)   id: PGA  initialValue: 2.4
	
//x(2)   id: NADPH  initialValue: 0.21