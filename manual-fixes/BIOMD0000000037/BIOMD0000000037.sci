
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// IfrSfrPfr_Photoreceptor_activation   id: IfrSfrPfr     reactionID: Photoreceptor_activation
	IfrSfrPfr_Photoreceptor_activation=0.1;
	
// IrSrPr_Photoreceptor_inactivation   id: IrSrPr     reactionID: Photoreceptor_inactivation
	IrSrPr_Photoreceptor_inactivation=0;
	
// kia_Transducer_activation   id: kia     reactionID: Transducer_activation
	kia_Transducer_activation=0.1;
	
// kai_Transducer_inactivation   id: kai     reactionID: Transducer_inactivation
	kai_Transducer_inactivation=0.8;
	
// kx_preS_formation   id: kx     reactionID: preS_formation
	kx_preS_formation=0.2;
	
// ky_S_generation   id: ky     reactionID: S_generation
	ky_S_generation=1;
	
// kG_Glucose_sensor_inactivation   id: kG     reactionID: Glucose_sensor_inactivation
	kG_Glucose_sensor_inactivation=0.1;
	
// alpha1_S_formation   id: alpha1     reactionID: S_formation
	alpha1_S_formation=30;
	
// alpha2_V_formation   id: alpha2     reactionID: V_formation
	alpha2_V_formation=50;
	
// kd_s_S_degradation   id: kd_s     reactionID: S_degradation
	kd_s_S_degradation=1;
	
// kd_v_V_degradation   id: kd_v     reactionID: V_degradation
	kd_v_V_degradation=1;
	
// kd_Photoreceptor_decay   id: kd     reactionID: Photoreceptor_decay
	kd_Photoreceptor_decay=0.1;
	



xdot=[
//x(1)   ID: Pfr  initialValue: 10
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment* x(1) *IfrSfrPfr_Photoreceptor_activation) + (1)*(1)* (IrSrPr_Photoreceptor_inactivation* x(2) *compartment_compartment) );
	
//x(2)   ID: Pr  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (IrSrPr_Photoreceptor_inactivation* x(2) *compartment_compartment) + (-1)*(1)* (compartment_compartment*kd_Photoreceptor_decay* x(2) ) + (1)*(1)* (compartment_compartment* x(1) *IfrSfrPfr_Photoreceptor_activation) );
	
//x(3)   ID: Xi  initialValue: 6
	(1/compartment_compartment)*( (-1)*(1)* ( x(3) *kia_Transducer_activation* x(2) *compartment_compartment) + (1)*(1)* (kai_Transducer_inactivation* x(4) *compartment_compartment) );
	
//x(4)   ID: Xa  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (kai_Transducer_inactivation* x(4) *compartment_compartment) + (1)*(1)* ( x(3) *kia_Transducer_activation* x(2) *compartment_compartment) );
	
//x(5)   ID: prepreS  initialValue: 200
	(1/compartment_compartment)*( (-1)*(1)* ( x(5) *kx_preS_formation* x(4) *compartment_compartment) );
	
//x(6)   ID: preS  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* ( x(6) *ky_S_generation* x(7) *compartment_compartment) + (1)*(1)* ( x(5) *kx_preS_formation* x(4) *compartment_compartment) );
	
//x(7)   ID: Ya  initialValue: 0.9
	(1/compartment_compartment)*( (-1)*(1)* (kG_Glucose_sensor_inactivation* x(7) * x(9) *compartment_compartment) );
	
//x(8)   ID: S  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (kd_s_S_degradation* x(8) *compartment_compartment) + (1)*(1)* ( x(6) *ky_S_generation* x(7) *compartment_compartment) + (1)*(1)* (compartment_compartment*(alpha1_S_formation/(( 1 )+(power( x(11) ,( 3 )))))) );
	
//x(9)   ID: Gluc  initialValue: 0
	0;
	
//x(10)   ID: Yi  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (kG_Glucose_sensor_inactivation* x(7) * x(9) *compartment_compartment) );
	
//x(11)   ID: V  initialValue: 30
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment* x(11) *kd_v_V_degradation) + (1)*(1)* (compartment_compartment*(alpha2_V_formation/(( 1 )+(power( x(8) ,( 3 )))))) );
	
//x(12)   ID: Pi  initialValue: 0
	(1/compartment_compartment)*( (1)*(1)* (compartment_compartment*kd_Photoreceptor_decay* x(2) ) )
	];


	
endfunction
        x0=[10;0;6;0;200;0;0.9;0;0;0;30;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)'],[1;2;3;4;5;6;7;8;9;10;11;12])

//real_variable:
	
	
//x(1)   id: Pfr  initialValue: 10
	
//x(2)   id: Pr  initialValue: 0
	
//x(3)   id: Xi  initialValue: 6
	
//x(4)   id: Xa  initialValue: 0
	
//x(5)   id: prepreS  initialValue: 200
	
//x(6)   id: preS  initialValue: 0
	
//x(7)   id: Ya  initialValue: 0.9
	
//x(8)   id: S  initialValue: 0
	
//x(9)   id: Gluc  initialValue: 0
	
//x(10)   id: Yi  initialValue: 0
	
//x(11)   id: V  initialValue: 30
	
//x(12)   id: Pi  initialValue: 0