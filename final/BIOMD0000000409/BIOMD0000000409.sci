
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// Cdk_p   id: Cdk
	Cdk_p=0;
		
// ksclb2_p   id: ksclb2
	ksclb2_p=0.03;
		
// kdclb2_p   id: kdclb2
	kdclb2_p=0.03;
		
// kadclb2_p   id: kadclb2
	kadclb2_p=0.2;
		
// kaadclb2_p   id: kaadclb2
	kaadclb2_p=2;
		
// kscdc20_p   id: kscdc20
	kscdc20_p=0.015;
		
// kdcdc20_p   id: kdcdc20
	kdcdc20_p=0.05;
		
// kadcdc20_p   id: kadcdc20
	kadcdc20_p=2;
		
// kdcdh_p   id: kdcdh
	kdcdh_p=0.01;
		
// kadcdh_p   id: kadcdh
	kadcdh_p=1;
		
// kapcdh_p   id: kapcdh
	kapcdh_p=1;
		
// Jcdh_p   id: Jcdh
	Jcdh_p=0.0015;
		
// Cdh1T_p   id: Cdh1T
	Cdh1T_p=1;
		
// kssecurin_p   id: kssecurin
	kssecurin_p=0.03;
		
// kdsecurin_p   id: kdsecurin
	kdsecurin_p=0.05;
		
// kadsecurin_p   id: kadsecurin
	kadsecurin_p=2;
		
// ksseparase_p   id: ksseparase
	ksseparase_p=0.001;
		
// kdseparase_p   id: kdseparase
	kdseparase_p=0.004;
		
// lasecurin_p   id: lasecurin
	lasecurin_p=500;
		
// ldsecurin_p   id: ldsecurin
	ldsecurin_p=1;
		
// kad_p   id: kad
	kad_p=0.1;
		
// kd_p   id: kd
	kd_p=0.45;
		
// kp_p   id: kp
	kp_p=0.4;
		
// kap_p   id: kap
	kap_p=2;
		
// Jnet_p   id: Jnet
	Jnet_p=0.2;
		
// lanet_p   id: lanet
	lanet_p=500;
		
// ldnet_p   id: ldnet
	ldnet_p=1;
		
// Net1T_p   id: Net1T
	Net1T_p=1;
		
// Cdc14T_p   id: Cdc14T
	Cdc14T_p=0.5;
		
// kspolo_p   id: kspolo
	kspolo_p=0.01;
		
// kdpolo_p   id: kdpolo
	kdpolo_p=0.01;
		
// kadpolo_p   id: kadpolo
	kadpolo_p=0.25;
		
// kapolo_p   id: kapolo
	kapolo_p=0;
		
// kaapolo_p   id: kaapolo
	kaapolo_p=0.5;
		
// kipolo_p   id: kipolo
	kipolo_p=0.1;
		
// Jpolo_p   id: Jpolo
	Jpolo_p=0.25;
		
// katem_p   id: katem
	katem_p=0;
		
// kaatem_p   id: kaatem
	kaatem_p=0.5;
		
// kitem_p   id: kitem
	kitem_p=0.1;
		
// kaitem_p   id: kaitem
	kaitem_p=1;
		
// Jtem1_p   id: Jtem1
	Jtem1_p=0.005;
		
// Tem1T_p   id: Tem1T
	Tem1T_p=1;
		
// kacdc15_p   id: kacdc15
	kacdc15_p=0.02;
		
// kaacdc15_p   id: kaacdc15
	kaacdc15_p=0.5;
		
// kicdc15_p   id: kicdc15
	kicdc15_p=0;
		
// kaicdc15_p   id: kaicdc15
	kaicdc15_p=0.2;
		
// Jcdc15_p   id: Jcdc15
	Jcdc15_p=0.2;
		
// lamen_p   id: lamen
	lamen_p=10;
		
// ldmen_p   id: ldmen
	ldmen_p=0.1;
		
// Cdc15T_p   id: Cdc15T
	Cdc15T_p=1;
		
// kpp_p   id: kpp
	kpp_p=0.1;
		
// ki_p   id: ki
	ki_p=20;
		
// PP2AT_p   id: PP2AT
	PP2AT_p=1;
		
// Inh_p   id: Inh
	Inh_p=0;
		
// AA_s   id: AA
	AA_s=1;
		
// degr_s   id: degr
	degr_s=1;
		
// Cdh1_i_s   id: Cdh1_i
	Cdh1_i_s=0;
		
// securin_s   id: securin
	securin_s=0;
		
// separase_s   id: separase
	separase_s=0;
		
// Polo_i_s   id: Polo_i
	Polo_i_s=0;
		
// Tem1_i_s   id: Tem1_i
	Tem1_i_s=0;
		
// Cdc15_i_s   id: Cdc15_i
	Cdc15_i_s=0;
		
// PP2A_s   id: PP2A
	PP2A_s=0;
		
// Net1P_s   id: Net1P
	Net1P_s=0;
		
// Cdc14_s   id: Cdc14
	Cdc14_s=0;
		



xdot=[
//x(1)   ID: Clb2  initialValue: 0.997
	(1/compartment_compartment)*( (-1)*(1)* ((kdclb2_p+(kadclb2_p* x(2) )+(kaadclb2_p* x(3) ))* x(1) ) + (1)*(1)* ksclb2_p );
	
//x(2)   ID: Cdc20  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* ((kdcdc20_p+(kadcdc20_p* x(3) ))* x(2) ) + (1)*(1)* kscdc20_p );
	
//x(3)   ID: Cdh1  initialValue: 3.8E-5
	(1/compartment_compartment)*( (-1)*(1)* (kapcdh_p* ( ( x(1) /(( 1 )+Inh_p)) ) *( x(3) /(Jcdh_p+ x(3) ))) + (1)*(1)* ((kdcdh_p+(kadcdh_p* ( (Cdc14T_p- x(8) ) ) ))*((Cdh1T_p- x(3) )/((Jcdh_p+Cdh1T_p)- x(3) ))) );
	
//x(4)   ID: securinT  initialValue: 0.6
	(1/compartment_compartment)*( (-1)*(1)* ((kdsecurin_p+(kadsecurin_p* x(2) ))* x(4) ) + (1)*(1)* kssecurin_p );
	
//x(5)   ID: separaseT  initialValue: 0.25
	(1/compartment_compartment)*( (-1)*(1)* (kdseparase_p* x(5) ) + (1)*(1)* ksseparase_p );
	
//x(6)   ID: securinseparase  initialValue: 0.248
	(1/compartment_compartment)*( (-1)*(1)* ((kdsecurin_p+(kadsecurin_p* x(2) ))* x(6) ) + (-1)*(1)* (kdseparase_p* x(6) ) + (1)*(1)* ((lasecurin_p* ( ( x(4) - x(6) ) ) * ( ( x(5) - x(6) ) ) )-(ldsecurin_p* x(6) )) );
	
//x(7)   ID: Net1  initialValue: 0.098
	(1/compartment_compartment)*( (-1)*(1)* (((kp_p* ( ( x(1) /(( 1 )+Inh_p)) ) )+(kap_p* x(13) ))*( x(7) /(Jnet_p+ x(7) + x(8) ))) + (-1)*(1)* (lanet_p* x(7) * ( (Cdc14T_p- x(8) ) ) ) + (1)*(1)* (((kad_p* ( (Cdc14T_p- x(8) ) ) )+(kd_p* ( (((( 1 )+(kpp_p*ki_p* ( ( x(5) - x(6) ) ) ))/(( 1 )+(ki_p* ( ( x(5) - x(6) ) ) )))*PP2AT_p) ) ))*( ( ((Net1T_p- x(7) )- x(8) ) ) /(Jnet_p+ ( ((Net1T_p- x(7) )- x(8) ) ) ))) + (1)*(1)* (ldnet_p* x(8) ) );
	
//x(8)   ID: Net1Cdc14  initialValue: 0.485
	(1/compartment_compartment)*( (-1)*(1)* (ldnet_p* x(8) ) + (-1)*(1)* (((kp_p* ( ( x(1) /(( 1 )+Inh_p)) ) )+(kap_p* x(13) ))*( x(8) /(Jnet_p+ x(7) + x(8) ))) + (1)*(1)* (lanet_p* x(7) * ( (Cdc14T_p- x(8) ) ) ) );
	
//x(9)   ID: PoloT  initialValue: 0.99
	(1/compartment_compartment)*( (-1)*(1)* ((kdpolo_p+(kadpolo_p* x(3) ))* x(9) ) + (1)*(1)* kspolo_p );
	
//x(10)   ID: Polo  initialValue: 0.945
	(1/compartment_compartment)*( (-1)*(1)* (kipolo_p*( x(10) /(Jpolo_p+ x(10) ))) + (-1)*(1)* ((kdpolo_p+(kadpolo_p* x(3) ))* x(10) ) + (1)*(1)* ((kapolo_p+(kaapolo_p* ( ( x(1) /(( 1 )+Inh_p)) ) ))*(( x(9) - x(10) )/((Jpolo_p+ x(9) )- x(10) ))) );
	
//x(11)   ID: Tem1  initialValue: 0.00389
	(1/compartment_compartment)*( (-1)*(1)* ((kitem_p+(kaitem_p* ( (((( 1 )+(kpp_p*ki_p* ( ( x(5) - x(6) ) ) ))/(( 1 )+(ki_p* ( ( x(5) - x(6) ) ) )))*PP2AT_p) ) ))*( x(11) /(Jtem1_p+ x(11) ))) + (1)*(1)* ((katem_p+(kaatem_p* x(10) ))*((Tem1T_p- x(11) )/((Jtem1_p+Tem1T_p)- x(11) ))) );
	
//x(12)   ID: Cdc15  initialValue: 0.0257
	(1/compartment_compartment)*( (-1)*(1)* ((kicdc15_p+(kaicdc15_p* ( ( x(1) /(( 1 )+Inh_p)) ) ))*( x(12) /(Jcdc15_p+ x(12) ))) + (1)*(1)* ((kacdc15_p+(kaacdc15_p* ( (Cdc14T_p- x(8) ) ) ))*((Cdc15T_p- x(12) )/((Jcdc15_p+Cdc15T_p)- x(12) ))) );
	
//x(13)   ID: MEN  initialValue: 8E-6
	(1/compartment_compartment)*( (-1)*(1)* (ldmen_p* x(13) ) + (-1)*(1)* ((kitem_p+(kaitem_p* ( (((( 1 )+(kpp_p*ki_p* ( ( x(5) - x(6) ) ) ))/(( 1 )+(ki_p* ( ( x(5) - x(6) ) ) )))*PP2AT_p) ) ))*( x(13) /(Jtem1_p+ x(11) ))) + (-1)*(1)* ((kicdc15_p+(kaicdc15_p* ( ( x(1) /(( 1 )+Inh_p)) ) ))*( x(13) /(Jcdc15_p+ x(12) ))) + (1)*(1)* (lamen_p*( x(11) - x(13) )*( x(12) - x(13) )) )
	];


	
endfunction
        x0=[0.997;0;3.8E-5;0.6;0.25;0.248;0.098;0.485;0.99;0.945;0.00389;0.0257;8E-6];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)'],[1;2;3;4;5;6;7;8;9;10;11;12;13])

//real_variable:
	
	
//x(1)   id: Clb2  initialValue: 0.997
	
//x(2)   id: Cdc20  initialValue: 0
	
//x(3)   id: Cdh1  initialValue: 3.8E-5
	
//x(4)   id: securinT  initialValue: 0.6
	
//x(5)   id: separaseT  initialValue: 0.25
	
//x(6)   id: securinseparase  initialValue: 0.248
	
//x(7)   id: Net1  initialValue: 0.098
	
//x(8)   id: Net1Cdc14  initialValue: 0.485
	
//x(9)   id: PoloT  initialValue: 0.99
	
//x(10)   id: Polo  initialValue: 0.945
	
//x(11)   id: Tem1  initialValue: 0.00389
	
//x(12)   id: Cdc15  initialValue: 0.0257
	
//x(13)   id: MEN  initialValue: 8E-6