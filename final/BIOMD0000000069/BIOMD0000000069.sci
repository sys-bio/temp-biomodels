
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_default   id: default
	compartment_default=1;
		
// k1_p   id: k1
	k1_p=1;
		
// k2_p   id: k2
	k2_p=0.8;
		
// k3_p   id: k3
	k3_p=1;
		
// k4_p   id: k4
	k4_p=10;
		
// kPTP_p   id: kPTP
	kPTP_p=1;
		
// kCbp_p   id: kCbp
	kCbp_p=1;
		
// p1_p   id: p1
	p1_p=0.05;
		
// p2_p   id: p2
	p2_p=0.15;
		
// p3_p   id: p3
	p3_p=0.035;
		
// src_background_p   id: src_background
	src_background_p=0.0001;
		
// PTP_background_p   id: PTP_background
	PTP_background_p=0;
		
// kCSKon_p   id: kCSKon
	kCSKon_p=0.1;
		
// kCSKoff_p   id: kCSKoff
	kCSKoff_p=0.01;
		
// rho_srca_p   id: rho_srca
	rho_srca_p=1;
		
// rho_srco_p   id: rho_srco
	rho_srco_p=0;
		
// rho_srcc_p   id: rho_srcc
	rho_srcc_p=1;
		
// Kser_p   id: Kser
	Kser_p=1;
		
// acsk0_p   id: acsk0
	acsk0_p=0;
		
// ptp_activity_p   id: ptp_activity
	ptp_activity_p=0;
		
// src_activity_p   id: src_activity
	src_activity_p=0;
		



xdot=[
//x(1)   ID: srci  initialValue: 1
	(1/compartment_default)*( (-1)*(1)* (((k2_p* ( (PTP_background_p+(Kser_p* x(8) )) ) * x(1) )-(k1_p* x(5) * x(2) ))*compartment_default) + (1)*(1)* (compartment_default*k4_p*p1_p* x(4) ) );
	
//x(2)   ID: srco  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (((k3_p* ( ((rho_srco_p* x(2) )+(rho_srca_p* x(3) )+src_background_p+(rho_srcc_p* x(4) )) ) * x(2) )-(p1_p* x(3) ))*compartment_default) + (1)*(1)* (((k2_p* ( (PTP_background_p+(Kser_p* x(8) )) ) * x(1) )-(k1_p* x(5) * x(2) ))*compartment_default) );
	
//x(3)   ID: srca  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (((k1_p* x(5) * x(3) )-(k2_p* ( (PTP_background_p+(Kser_p* x(8) )) ) * x(4) ))*compartment_default) + (1)*(1)* (((k3_p* ( ((rho_srco_p* x(2) )+(rho_srca_p* x(3) )+src_background_p+(rho_srcc_p* x(4) )) ) * x(2) )-(p1_p* x(3) ))*compartment_default) );
	
//x(4)   ID: srcc  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* (compartment_default*k4_p*p1_p* x(4) ) + (1)*(1)* (((k1_p* x(5) * x(3) )-(k2_p* ( (PTP_background_p+(Kser_p* x(8) )) ) * x(4) ))*compartment_default) );
	
//x(5)   ID: Cbp_P_CSK  initialValue: 0
	(1/compartment_default)*( (1)*(1)* ((( x(10) *kCSKon_p* x(6) )-(kCSKoff_p* x(5) ))*compartment_default) );
	
//x(6)   ID: CSK_cytoplasm  initialValue: 1
	(1/compartment_default)*( (-1)*(1)* ((( x(10) *kCSKon_p* x(6) )-(kCSKoff_p* x(5) ))*compartment_default) );
	
//x(7)   ID: PTP  initialValue: 1
	(1/compartment_default)*( (-1)*(1)* (compartment_default*((((kPTP_p* ( ((rho_srco_p* x(2) )+(rho_srca_p* x(3) )+src_background_p+(rho_srcc_p* x(4) )) ) )+p3_p)* x(7) )-(p2_p* x(8) ))) );
	
//x(8)   ID: PTP_pY789  initialValue: 0
	(1/compartment_default)*( (1)*(1)* (compartment_default*((((kPTP_p* ( ((rho_srco_p* x(2) )+(rho_srca_p* x(3) )+src_background_p+(rho_srcc_p* x(4) )) ) )+p3_p)* x(7) )-(p2_p* x(8) ))) );
	
//x(9)   ID: Cbp  initialValue: 1
	(1/compartment_default)*( (-1)*(1)* (kCbp_p* ( ((rho_srco_p* x(2) )+(rho_srca_p* x(3) )+src_background_p+(rho_srcc_p* x(4) )) ) * x(9) *compartment_default) );
	
//x(10)   ID: Cbp_P  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* ((( x(10) *kCSKon_p* x(6) )-(kCSKoff_p* x(5) ))*compartment_default) + (1)*(1)* (kCbp_p* ( ((rho_srco_p* x(2) )+(rho_srca_p* x(3) )+src_background_p+(rho_srcc_p* x(4) )) ) * x(9) *compartment_default) )
	];


	
endfunction
        x0=[1;0;0;0;0;1;1;0;1;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)'],[1;2;3;4;5;6;7;8;9;10])

//real_variable:
	
	
//x(1)   id: srci  initialValue: 1
	
//x(2)   id: srco  initialValue: 0
	
//x(3)   id: srca  initialValue: 0
	
//x(4)   id: srcc  initialValue: 0
	
//x(5)   id: Cbp_P_CSK  initialValue: 0
	
//x(6)   id: CSK_cytoplasm  initialValue: 1
	
//x(7)   id: PTP  initialValue: 1
	
//x(8)   id: PTP_pY789  initialValue: 0
	
//x(9)   id: Cbp  initialValue: 1
	
//x(10)   id: Cbp_P  initialValue: 0