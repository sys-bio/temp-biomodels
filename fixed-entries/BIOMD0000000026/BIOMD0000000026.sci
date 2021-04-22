
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_uVol   id: uVol
	compartment_uVol=1;
		
// k1_p   id: k1
	k1_p=0.02;
		
// k_1_p   id: k_1
	k_1_p=1;
		
// k2_p   id: k2
	k2_p=0.01;
		
// k3_p   id: k3
	k3_p=0.032;
		
// k_3_p   id: k_3
	k_3_p=1;
		
// k4_p   id: k4
	k4_p=15;
		
// h1_p   id: h1
	h1_p=0.045;
		
// h_1_p   id: h_1
	h_1_p=1;
		
// h2_p   id: h2
	h2_p=0.092;
		
// h3_p   id: h3
	h3_p=1;
		
// h_3_p   id: h_3
	h_3_p=0.01;
		
// h4_p   id: h4
	h4_p=0.01;
		
// h_4_p   id: h_4
	h_4_p=1;
		
// h5_p   id: h5
	h5_p=0.5;
		
// h6_p   id: h6
	h6_p=0.086;
		
// h_6_p   id: h_6
	h_6_p=0.0011;
		



xdot=[
//x(1)   ID: M  initialValue: 500
	(1/compartment_uVol)*( (-1)*(1)* (compartment_uVol*((k1_p* x(1) * x(4) )-(k_1_p* x(6) ))) + (1)*(1)* (compartment_uVol*((h6_p* x(11) )-(h_6_p* x(1) * x(5) ))) );
	
//x(2)   ID: Mp  initialValue: 0
	(1/compartment_uVol)*( (-1)*(1)* (compartment_uVol*((k3_p* x(2) * x(4) )-(k_3_p* x(7) ))) + (-1)*(1)* (compartment_uVol*((h4_p* x(2) * x(5) )-(h_4_p* x(10) ))) + (1)*(1)* (compartment_uVol*k2_p* x(6) ) + (1)*(1)* ((h3_p* x(9) )-(h_3_p* x(2) * x(5) )) );
	
//x(3)   ID: Mpp  initialValue: 0
	(1/compartment_uVol)*( (-1)*(1)* (compartment_uVol*((h1_p* x(3) * x(5) )-(h_1_p* x(8) ))) + (1)*(1)* (compartment_uVol*k4_p* x(7) ) );
	
//x(4)   ID: MAPKK  initialValue: 50
	(1/compartment_uVol)*( (-1)*(1)* (compartment_uVol*((k1_p* x(1) * x(4) )-(k_1_p* x(6) ))) + (-1)*(1)* (compartment_uVol*((k3_p* x(2) * x(4) )-(k_3_p* x(7) ))) + (1)*(1)* (compartment_uVol*k2_p* x(6) ) + (1)*(1)* (compartment_uVol*k4_p* x(7) ) );
	
//x(5)   ID: MKP3  initialValue: 100
	(1/compartment_uVol)*( (-1)*(1)* (compartment_uVol*((h1_p* x(3) * x(5) )-(h_1_p* x(8) ))) + (-1)*(1)* (compartment_uVol*((h4_p* x(2) * x(5) )-(h_4_p* x(10) ))) + (1)*(1)* ((h3_p* x(9) )-(h_3_p* x(2) * x(5) )) + (1)*(1)* (compartment_uVol*((h6_p* x(11) )-(h_6_p* x(1) * x(5) ))) );
	
//x(6)   ID: M_MAPKK  initialValue: 0
	(1/compartment_uVol)*( (-1)*(1)* (compartment_uVol*k2_p* x(6) ) + (1)*(1)* (compartment_uVol*((k1_p* x(1) * x(4) )-(k_1_p* x(6) ))) );
	
//x(7)   ID: Mp_MAPKK  initialValue: 0
	(1/compartment_uVol)*( (-1)*(1)* (compartment_uVol*k4_p* x(7) ) + (1)*(1)* (compartment_uVol*((k3_p* x(2) * x(4) )-(k_3_p* x(7) ))) );
	
//x(8)   ID: Mpp_MKP3  initialValue: 0
	(1/compartment_uVol)*( (-1)*(1)* (compartment_uVol*h2_p* x(8) ) + (1)*(1)* (compartment_uVol*((h1_p* x(3) * x(5) )-(h_1_p* x(8) ))) );
	
//x(9)   ID: Mp_MKP3_dep  initialValue: 0
	(1/compartment_uVol)*( (-1)*(1)* ((h3_p* x(9) )-(h_3_p* x(2) * x(5) )) + (1)*(1)* (compartment_uVol*h2_p* x(8) ) );
	
//x(10)   ID: Mp_MKP3  initialValue: 0
	(1/compartment_uVol)*( (-1)*(1)* (compartment_uVol*h5_p* x(10) ) + (1)*(1)* (compartment_uVol*((h4_p* x(2) * x(5) )-(h_4_p* x(10) ))) );
	
//x(11)   ID: M_MKP3  initialValue: 0
	(1/compartment_uVol)*( (-1)*(1)* (compartment_uVol*((h6_p* x(11) )-(h_6_p* x(1) * x(5) ))) + (1)*(1)* (compartment_uVol*h5_p* x(10) ) )
	];


	
endfunction
        x0=[500;0;0;50;100;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)'],[1;2;3;4;5;6;7;8;9;10;11])

//real_variable:
	
	
//x(1)   id: M  initialValue: 500
	
//x(2)   id: Mp  initialValue: 0
	
//x(3)   id: Mpp  initialValue: 0
	
//x(4)   id: MAPKK  initialValue: 50
	
//x(5)   id: MKP3  initialValue: 100
	
//x(6)   id: M_MAPKK  initialValue: 0
	
//x(7)   id: Mp_MAPKK  initialValue: 0
	
//x(8)   id: Mpp_MKP3  initialValue: 0
	
//x(9)   id: Mp_MKP3_dep  initialValue: 0
	
//x(10)   id: Mp_MKP3  initialValue: 0
	
//x(11)   id: M_MKP3  initialValue: 0