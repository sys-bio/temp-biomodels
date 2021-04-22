
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_cytoplasm   id: cytoplasm
	compartment_cytoplasm=1;
		
// compartment_store   id: store
	compartment_store=1;
		
// kf_p   id: kf
	kf_p=0;
		
// Kd_p   id: Kd
	Kd_p=0;
		
// kf0_p   id: kf0
	kf0_p=6;
		
// gamma_p   id: gamma
	gamma_p=9;
		
// Ka_p   id: Ka
	Ka_p=0.5;
		
// Kb_p   id: Kb
	Kb_p=0.5;
		
// Kd0_p   id: Kd0
	Kd0_p=10;
		
// kd_TF_degradation   id: kd     reactionID: TF_degradation
	kd_TF_degradation=1;
	
// Rbas_TF_synthesis_basal   id: Rbas     reactionID: TF_synthesis_basal
	Rbas_TF_synthesis_basal=0.1;
	
// v0_Calcium_Influx   id: v0     reactionID: Calcium_Influx
	v0_Calcium_Influx=1;
	
// v1_Calcium_Influx_stimulation   id: v1     reactionID: Calcium_Influx_stimulation
	v1_Calcium_Influx_stimulation=5.7;
	
// beta_Calcium_Influx_stimulation   id: beta     reactionID: Calcium_Influx_stimulation
	beta_Calcium_Influx_stimulation=0.3;
	
// Vm2_Calcium_into_store   id: Vm2     reactionID: Calcium_into_store
	Vm2_Calcium_into_store=30;
	
// K2_Calcium_into_store   id: K2     reactionID: Calcium_into_store
	K2_Calcium_into_store=0.5;
	
// n_Calcium_into_store   id: n     reactionID: Calcium_into_store
	n_Calcium_into_store=2;
	
// Vm3_Calcium_into_cytoplasm   id: Vm3     reactionID: Calcium_into_cytoplasm
	Vm3_Calcium_into_cytoplasm=325;
	
// Kr_Calcium_into_cytoplasm   id: Kr     reactionID: Calcium_into_cytoplasm
	Kr_Calcium_into_cytoplasm=1.7;
	
// K_A_Calcium_into_cytoplasm   id: K_A     reactionID: Calcium_into_cytoplasm
	K_A_Calcium_into_cytoplasm=0.46;
	
// m_Calcium_into_cytoplasm   id: m     reactionID: Calcium_into_cytoplasm
	m_Calcium_into_cytoplasm=2;
	
// p_Calcium_into_cytoplasm   id: p     reactionID: Calcium_into_cytoplasm
	p_Calcium_into_cytoplasm=4;
	
// k1_Leakage   id: k1     reactionID: Leakage
	k1_Leakage=0.7;
	
// k_Leakage_from_cytoplasm   id: k     reactionID: Leakage_from_cytoplasm
	k_Leakage_from_cytoplasm=10;
	



xdot=[
//x(1)   ID: X  initialValue: 15
	(1/compartment_cytoplasm)*( (-1)*(1)* (kd_TF_degradation* x(1) ) + (1)*(1)* (( ( (kf0_p*(( 1 )+((gamma_p*(power( x(3) ,( 4 ))))/((power(Ka_p,( 4 )))+(power( x(3) ,( 4 ))))))) ) *(power( x(1) ,( 2 ))))/((power( x(1) ,( 2 )))+ ( (Kd0_p/(( 1 )+((power( x(3) ,( 4 )))/(power(Kb_p,( 4 )))))) ) )) + (1)*(1)* Rbas_TF_synthesis_basal );
	
//x(2)   ID: Y  initialValue: 0
	(1/compartment_store)*( (-1)*(1)* ((((Vm3_Calcium_into_cytoplasm*(power( x(2) ,m_Calcium_into_cytoplasm)))/((power(Kr_Calcium_into_cytoplasm,m_Calcium_into_cytoplasm))+(power( x(2) ,m_Calcium_into_cytoplasm))))*(power( x(3) ,p_Calcium_into_cytoplasm)))/((power(K_A_Calcium_into_cytoplasm,p_Calcium_into_cytoplasm))+(power( x(3) ,p_Calcium_into_cytoplasm)))) + (-1)*(1)* (k1_Leakage* x(2) ) + (1)*(1)* ((Vm2_Calcium_into_store*(power( x(3) ,n_Calcium_into_store)))/((power(K2_Calcium_into_store,n_Calcium_into_store))+(power( x(3) ,n_Calcium_into_store)))) );
	
//x(3)   ID: Z  initialValue: 0.25
	(1/compartment_cytoplasm)*( (-1)*(1)* ((Vm2_Calcium_into_store*(power( x(3) ,n_Calcium_into_store)))/((power(K2_Calcium_into_store,n_Calcium_into_store))+(power( x(3) ,n_Calcium_into_store)))) + (-1)*(1)* (k_Leakage_from_cytoplasm* x(3) ) + (1)*(1)* v0_Calcium_Influx + (1)*(1)* (v1_Calcium_Influx_stimulation*beta_Calcium_Influx_stimulation) + (1)*(1)* ((((Vm3_Calcium_into_cytoplasm*(power( x(2) ,m_Calcium_into_cytoplasm)))/((power(Kr_Calcium_into_cytoplasm,m_Calcium_into_cytoplasm))+(power( x(2) ,m_Calcium_into_cytoplasm))))*(power( x(3) ,p_Calcium_into_cytoplasm)))/((power(K_A_Calcium_into_cytoplasm,p_Calcium_into_cytoplasm))+(power( x(3) ,p_Calcium_into_cytoplasm)))) + (1)*(1)* (k1_Leakage* x(2) ) )
	];


	
endfunction
        x0=[15;0;0.25];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)'],[1;2;3])

//real_variable:
	
	
//x(1)   id: X  initialValue: 15
	
//x(2)   id: Y  initialValue: 0
	
//x(3)   id: Z  initialValue: 0.25