
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Cytosol   id: Cytosol
	compartment_Cytosol=1;
		
// compartment_Endoplasmic_Reticulum   id: Endoplasmic_Reticulum
	compartment_Endoplasmic_Reticulum=1;
		
// compartment_Mitochondria   id: Mitochondria
	compartment_Mitochondria=1;
		
// Kch_v1   id: Kch     reactionID: v1
	Kch_v1=4100;
	
// K1_v1   id: K1     reactionID: v1
	K1_v1=5;
	
// Kleak_v3   id: Kleak     reactionID: v3
	Kleak_v3=0.05;
	
// Kpump_v5   id: Kpump     reactionID: v5
	Kpump_v5=20;
	
// Kout_v7   id: Kout     reactionID: v7
	Kout_v7=125;
	
// K3_v7   id: K3     reactionID: v7
	K3_v7=5;
	
// Km_v7   id: Km     reactionID: v7
	Km_v7=0.00625;
	
// Kin_v9   id: Kin     reactionID: v9
	Kin_v9=300;
	
// K2_v9   id: K2     reactionID: v9
	K2_v9=0.8;
	
// Kminus_v11   id: Kminus     reactionID: v11
	Kminus_v11=0.01;
	
// Kplus_v12   id: Kplus     reactionID: v12
	Kplus_v12=0.1;
	



xdot=[
//x(1)   ID: Ca_cyt  initialValue: 0.35
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Endoplasmic_Reticulum*Kpump_v5* x(1) ) + (-1)*(1)* (compartment_Mitochondria*((Kin_v9*(power( x(1) ,( 8 ))))/((power(K2_v9,( 8 )))+(power( x(1) ,( 8 )))))) + (-1)*(1)* (compartment_Cytosol*Kplus_v12* x(1) * x(5) ) + (1)*(1)* (compartment_Cytosol*((Kch_v1*(power( x(1) ,( 2 )))*( x(2) - x(1) ))/((power(K1_v1,( 2 )))+(power( x(1) ,( 2 )))))) + (1)*(1)* (compartment_Cytosol*Kleak_v3*( x(2) - x(1) )) + (1)*(1)* (compartment_Cytosol* x(3) *(((Kout_v7*(power( x(1) ,( 2 ))))/((power(K3_v7,( 2 )))+(power( x(1) ,( 2 )))))+Km_v7)) + (1)*(1)* (compartment_Cytosol*Kminus_v11* x(4) ) );
	
//x(2)   ID: CaER  initialValue: 0.76
	(1/compartment_Endoplasmic_Reticulum)*( (-1)*(0.25)* (compartment_Cytosol*((Kch_v1*(power( x(1) ,( 2 )))*( x(2) - x(1) ))/((power(K1_v1,( 2 )))+(power( x(1) ,( 2 )))))) + (-1)*(0.25)* (compartment_Cytosol*Kleak_v3*( x(2) - x(1) )) + (1)*(0.25)* (compartment_Endoplasmic_Reticulum*Kpump_v5* x(1) ) );
	
//x(3)   ID: CaM  initialValue: 0.29
	(1/compartment_Mitochondria)*( (-1)*(0.25)* (compartment_Cytosol* x(3) *(((Kout_v7*(power( x(1) ,( 2 ))))/((power(K3_v7,( 2 )))+(power( x(1) ,( 2 )))))+Km_v7)) + (1)*(0.25)* (compartment_Mitochondria*((Kin_v9*(power( x(1) ,( 8 ))))/((power(K2_v9,( 8 )))+(power( x(1) ,( 8 )))))) );
	
//x(4)   ID: CaPr  initialValue: 85.45
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*Kminus_v11* x(4) ) + (1)*(1)* (compartment_Cytosol*Kplus_v12* x(1) * x(5) ) );
	
//x(5)   ID: Pr  initialValue: 34.55
	(1/compartment_Cytosol)*( (-1)*(1)* (compartment_Cytosol*Kplus_v12* x(1) * x(5) ) + (1)*(1)* (compartment_Cytosol*Kminus_v11* x(4) ) )
	];


	
endfunction
        x0=[0.35;0.76;0.29;85.45;34.55];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)'],[1;2;3;4;5])

//real_variable:
	
	
//x(1)   id: Ca_cyt  initialValue: 0.35
	
//x(2)   id: CaER  initialValue: 0.76
	
//x(3)   id: CaM  initialValue: 0.29
	
//x(4)   id: CaPr  initialValue: 85.45
	
//x(5)   id: Pr  initialValue: 34.55