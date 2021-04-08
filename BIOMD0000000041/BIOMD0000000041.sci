
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_IMS   id: IMS
	compartment_IMS=0.0625;
		
// compartment_CYT   id: CYT
	compartment_CYT=0.75;
		
// V_1_OxPhos   id: V_1     reactionID: OxPhos
	V_1_OxPhos=4600;
	
// Ka_1_OxPhos   id: Ka_1     reactionID: OxPhos
	Ka_1_OxPhos=800;
	
// Kb_1_OxPhos   id: Kb_1     reactionID: OxPhos
	Kb_1_OxPhos=20;
	
// Vf_2_MiCK   id: Vf_2     reactionID: MiCK
	Vf_2_MiCK=2658;
	
// Kia_2_MiCK   id: Kia_2     reactionID: MiCK
	Kia_2_MiCK=750;
	
// Kb_2_MiCK   id: Kb_2     reactionID: MiCK
	Kb_2_MiCK=5200;
	
// Vb_2_MiCK   id: Vb_2     reactionID: MiCK
	Vb_2_MiCK=11160;
	
// Kic_2_MiCK   id: Kic_2     reactionID: MiCK
	Kic_2_MiCK=204.8;
	
// Kd_2_MiCK   id: Kd_2     reactionID: MiCK
	Kd_2_MiCK=500;
	
// Kib_2_MiCK   id: Kib_2     reactionID: MiCK
	Kib_2_MiCK=28800;
	
// Kid_2_MiCK   id: Kid_2     reactionID: MiCK
	Kid_2_MiCK=1600;
	
// Vf_3_MMCK   id: Vf_3     reactionID: MMCK
	Vf_3_MMCK=6966;
	
// Kia_3_MMCK   id: Kia_3     reactionID: MMCK
	Kia_3_MMCK=900;
	
// Kb_3_MMCK   id: Kb_3     reactionID: MMCK
	Kb_3_MMCK=15500;
	
// Vb_3_MMCK   id: Vb_3     reactionID: MMCK
	Vb_3_MMCK=29250;
	
// Kic_3_MMCK   id: Kic_3     reactionID: MMCK
	Kic_3_MMCK=222.4;
	
// Kd_3_MMCK   id: Kd_3     reactionID: MMCK
	Kd_3_MMCK=1670;
	
// Kib_3_MMCK   id: Kib_3     reactionID: MMCK
	Kib_3_MMCK=34900;
	
// Kid_3_MMCK   id: Kid_3     reactionID: MMCK
	Kid_3_MMCK=4730;
	
// v_4_ATPase   id: v_4     reactionID: ATPase
	v_4_ATPase=4600;
	
// k2_5_Pi_diffusion   id: k2_5     reactionID: Pi_diffusion
	k2_5_Pi_diffusion=18.4;
	
// k1_6_Cr_diffusion   id: k1_6     reactionID: Cr_diffusion
	k1_6_Cr_diffusion=14.6;
	
// k1_7_ADP_diffusion   id: k1_7     reactionID: ADP_diffusion
	k1_7_ADP_diffusion=8.16;
	
// k1_8_PCr_diffusion   id: k1_8     reactionID: PCr_diffusion
	k1_8_PCr_diffusion=14.6;
	
// k1_9_ATP_diffusion   id: k1_9     reactionID: ATP_diffusion
	k1_9_ATP_diffusion=8.16;
	



xdot=[
//x(1)   ID: ADPi  initialValue: 0
	(1/compartment_IMS)*( (-1)*(1)* (compartment_IMS*((V_1_OxPhos* x(1) * x(9) )/(Ka_1_OxPhos*Kb_1_OxPhos*(( 1 )+( x(1) /Ka_1_OxPhos)+( x(9) /Kb_1_OxPhos)+(( x(1) * x(9) )/(Ka_1_OxPhos*Kb_1_OxPhos)))))) + (-1)*(1)* ((compartment_IMS*k1_7_ADP_diffusion* x(1) )-(compartment_CYT*k1_7_ADP_diffusion* x(6) )) + (1)*(1)* (compartment_IMS*((((Vf_2_MiCK* x(2) * x(3) )/(Kia_2_MiCK*Kb_2_MiCK))-((Vb_2_MiCK* x(1) * x(4) )/(Kic_2_MiCK*Kd_2_MiCK)))/(( 1 )+( x(3) /Kib_2_MiCK)+( x(4) /Kid_2_MiCK)+( x(2) *((( 1 )/Kia_2_MiCK)+( x(3) /(Kia_2_MiCK*Kb_2_MiCK))))+( x(1) *((( 1 )/Kic_2_MiCK)+( x(3) /(Kic_2_MiCK*Kib_2_MiCK))+( x(4) /(Kid_2_MiCK*((Kic_2_MiCK*Kd_2_MiCK)/Kid_2_MiCK)))))))) );
	
//x(2)   ID: ATPi  initialValue: 0
	(1/compartment_IMS)*( (-1)*(1)* (compartment_IMS*((((Vf_2_MiCK* x(2) * x(3) )/(Kia_2_MiCK*Kb_2_MiCK))-((Vb_2_MiCK* x(1) * x(4) )/(Kic_2_MiCK*Kd_2_MiCK)))/(( 1 )+( x(3) /Kib_2_MiCK)+( x(4) /Kid_2_MiCK)+( x(2) *((( 1 )/Kia_2_MiCK)+( x(3) /(Kia_2_MiCK*Kb_2_MiCK))))+( x(1) *((( 1 )/Kic_2_MiCK)+( x(3) /(Kic_2_MiCK*Kib_2_MiCK))+( x(4) /(Kid_2_MiCK*((Kic_2_MiCK*Kd_2_MiCK)/Kid_2_MiCK)))))))) + (-1)*(1)* ((compartment_IMS*k1_9_ATP_diffusion* x(2) )-(compartment_CYT*k1_9_ATP_diffusion* x(7) )) + (1)*(1)* (compartment_IMS*((V_1_OxPhos* x(1) * x(9) )/(Ka_1_OxPhos*Kb_1_OxPhos*(( 1 )+( x(1) /Ka_1_OxPhos)+( x(9) /Kb_1_OxPhos)+(( x(1) * x(9) )/(Ka_1_OxPhos*Kb_1_OxPhos)))))) );
	
//x(3)   ID: Cri  initialValue: 0
	(1/compartment_IMS)*( (-1)*(1)* (compartment_IMS*((((Vf_2_MiCK* x(2) * x(3) )/(Kia_2_MiCK*Kb_2_MiCK))-((Vb_2_MiCK* x(1) * x(4) )/(Kic_2_MiCK*Kd_2_MiCK)))/(( 1 )+( x(3) /Kib_2_MiCK)+( x(4) /Kid_2_MiCK)+( x(2) *((( 1 )/Kia_2_MiCK)+( x(3) /(Kia_2_MiCK*Kb_2_MiCK))))+( x(1) *((( 1 )/Kic_2_MiCK)+( x(3) /(Kic_2_MiCK*Kib_2_MiCK))+( x(4) /(Kid_2_MiCK*((Kic_2_MiCK*Kd_2_MiCK)/Kid_2_MiCK)))))))) + (-1)*(1)* ((compartment_IMS*k1_6_Cr_diffusion* x(3) )-(compartment_CYT*k1_6_Cr_diffusion* x(8) )) );
	
//x(4)   ID: PCri  initialValue: 0
	(1/compartment_IMS)*( (-1)*(1)* ((compartment_IMS*k1_8_PCr_diffusion* x(4) )-(compartment_CYT*k1_8_PCr_diffusion* x(5) )) + (1)*(1)* (compartment_IMS*((((Vf_2_MiCK* x(2) * x(3) )/(Kia_2_MiCK*Kb_2_MiCK))-((Vb_2_MiCK* x(1) * x(4) )/(Kic_2_MiCK*Kd_2_MiCK)))/(( 1 )+( x(3) /Kib_2_MiCK)+( x(4) /Kid_2_MiCK)+( x(2) *((( 1 )/Kia_2_MiCK)+( x(3) /(Kia_2_MiCK*Kb_2_MiCK))))+( x(1) *((( 1 )/Kic_2_MiCK)+( x(3) /(Kic_2_MiCK*Kib_2_MiCK))+( x(4) /(Kid_2_MiCK*((Kic_2_MiCK*Kd_2_MiCK)/Kid_2_MiCK)))))))) );
	
//x(5)   ID: PCr  initialValue: 0
	(1/compartment_CYT)*( (1)*(1)* (compartment_CYT*((((Vf_3_MMCK* x(7) * x(8) )/(Kia_3_MMCK*Kb_3_MMCK))-((Vb_3_MMCK* x(6) * x(5) )/(Kic_3_MMCK*Kd_3_MMCK)))/(( 1 )+( x(8) /Kib_3_MMCK)+( x(5) /Kid_3_MMCK)+( x(7) *((( 1 )/Kia_3_MMCK)+( x(8) /(Kia_3_MMCK*Kb_3_MMCK))))+( x(6) *((( 1 )/Kic_3_MMCK)+( x(8) /(Kic_3_MMCK*Kib_3_MMCK))+( x(5) /(Kid_3_MMCK*((Kic_3_MMCK*Kd_3_MMCK)/Kid_3_MMCK)))))))) + (1)*(1)* ((compartment_IMS*k1_8_PCr_diffusion* x(4) )-(compartment_CYT*k1_8_PCr_diffusion* x(5) )) );
	
//x(6)   ID: ADP  initialValue: 0
	(1/compartment_CYT)*( (1)*(1)* (compartment_CYT*((((Vf_3_MMCK* x(7) * x(8) )/(Kia_3_MMCK*Kb_3_MMCK))-((Vb_3_MMCK* x(6) * x(5) )/(Kic_3_MMCK*Kd_3_MMCK)))/(( 1 )+( x(8) /Kib_3_MMCK)+( x(5) /Kid_3_MMCK)+( x(7) *((( 1 )/Kia_3_MMCK)+( x(8) /(Kia_3_MMCK*Kb_3_MMCK))))+( x(6) *((( 1 )/Kic_3_MMCK)+( x(8) /(Kic_3_MMCK*Kib_3_MMCK))+( x(5) /(Kid_3_MMCK*((Kic_3_MMCK*Kd_3_MMCK)/Kid_3_MMCK)))))))) + (1)*(1)* (compartment_CYT*v_4_ATPase* x(7) ) + (1)*(1)* ((compartment_IMS*k1_7_ADP_diffusion* x(1) )-(compartment_CYT*k1_7_ADP_diffusion* x(6) )) );
	
//x(7)   ID: ATP  initialValue: 9700
	(1/compartment_CYT)*( (-1)*(1)* (compartment_CYT*((((Vf_3_MMCK* x(7) * x(8) )/(Kia_3_MMCK*Kb_3_MMCK))-((Vb_3_MMCK* x(6) * x(5) )/(Kic_3_MMCK*Kd_3_MMCK)))/(( 1 )+( x(8) /Kib_3_MMCK)+( x(5) /Kid_3_MMCK)+( x(7) *((( 1 )/Kia_3_MMCK)+( x(8) /(Kia_3_MMCK*Kb_3_MMCK))))+( x(6) *((( 1 )/Kic_3_MMCK)+( x(8) /(Kic_3_MMCK*Kib_3_MMCK))+( x(5) /(Kid_3_MMCK*((Kic_3_MMCK*Kd_3_MMCK)/Kid_3_MMCK)))))))) + (-1)*(1)* (compartment_CYT*v_4_ATPase* x(7) ) + (1)*(1)* ((compartment_IMS*k1_9_ATP_diffusion* x(2) )-(compartment_CYT*k1_9_ATP_diffusion* x(7) )) );
	
//x(8)   ID: Cr  initialValue: 26000
	(1/compartment_CYT)*( (-1)*(1)* (compartment_CYT*((((Vf_3_MMCK* x(7) * x(8) )/(Kia_3_MMCK*Kb_3_MMCK))-((Vb_3_MMCK* x(6) * x(5) )/(Kic_3_MMCK*Kd_3_MMCK)))/(( 1 )+( x(8) /Kib_3_MMCK)+( x(5) /Kid_3_MMCK)+( x(7) *((( 1 )/Kia_3_MMCK)+( x(8) /(Kia_3_MMCK*Kb_3_MMCK))))+( x(6) *((( 1 )/Kic_3_MMCK)+( x(8) /(Kic_3_MMCK*Kib_3_MMCK))+( x(5) /(Kid_3_MMCK*((Kic_3_MMCK*Kd_3_MMCK)/Kid_3_MMCK)))))))) + (1)*(1)* ((compartment_IMS*k1_6_Cr_diffusion* x(3) )-(compartment_CYT*k1_6_Cr_diffusion* x(8) )) );
	
//x(9)   ID: Pi  initialValue: 32000
	(1/compartment_IMS)*( (-1)*(1)* (compartment_IMS*((V_1_OxPhos* x(1) * x(9) )/(Ka_1_OxPhos*Kb_1_OxPhos*(( 1 )+( x(1) /Ka_1_OxPhos)+( x(9) /Kb_1_OxPhos)+(( x(1) * x(9) )/(Ka_1_OxPhos*Kb_1_OxPhos)))))) + (-1)*(1)* ((compartment_IMS*k2_5_Pi_diffusion* x(9) )-(compartment_CYT*k2_5_Pi_diffusion* x(10) )) );
	
//x(10)   ID: P  initialValue: 0
	(1/compartment_CYT)*( (1)*(1)* (compartment_CYT*v_4_ATPase* x(7) ) + (1)*(1)* ((compartment_IMS*k2_5_Pi_diffusion* x(9) )-(compartment_CYT*k2_5_Pi_diffusion* x(10) )) )
	];


	
endfunction
        x0=[0;0;0;0;0;0;9700;26000;32000;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)'],[1;2;3;4;5;6;7;8;9;10])

//real_variable:
	
	
//x(1)   id: ADPi  initialValue: 0
	
//x(2)   id: ATPi  initialValue: 0
	
//x(3)   id: Cri  initialValue: 0
	
//x(4)   id: PCri  initialValue: 0
	
//x(5)   id: PCr  initialValue: 0
	
//x(6)   id: ADP  initialValue: 0
	
//x(7)   id: ATP  initialValue: 9700
	
//x(8)   id: Cr  initialValue: 26000
	
//x(9)   id: Pi  initialValue: 32000
	
//x(10)   id: P  initialValue: 0