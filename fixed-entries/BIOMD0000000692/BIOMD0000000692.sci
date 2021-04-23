
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_geometry   id: geometry
	compartment_geometry=5.236E-13;
		
// Pi_curve_p   id: Pi_curve
	Pi_curve_p=0;
		
// hplc_curve_p   id: hplc_curve
	hplc_curve_p=100;
		
// kb_GTP_hydrolysis_sbo_1_sbc_   id: kb     reactionID: GTP_hydrolysis_sbo_1_sbc_
	kb_GTP_hydrolysis_sbo_1_sbc_=1.15192E-13;
	
// kf_GTP_hydrolysis_sbo_1_sbc_   id: kf     reactionID: GTP_hydrolysis_sbo_1_sbc_
	kf_GTP_hydrolysis_sbo_1_sbc_=1.02102E-11;
	
// kb_GTP_hydrolysis_sbo_2_sbc_   id: kb     reactionID: GTP_hydrolysis_sbo_2_sbc_
	kb_GTP_hydrolysis_sbo_2_sbc_=5.65482E-17;
	
// kf_GTP_hydrolysis_sbo_2_sbc_   id: kf     reactionID: GTP_hydrolysis_sbo_2_sbc_
	kf_GTP_hydrolysis_sbo_2_sbc_=2.0944E-11;
	
// kb_Ras_activation   id: kb     reactionID: Ras_activation
	kb_Ras_activation=2.8798E-12;
	
// kf_Ras_activation   id: kf     reactionID: Ras_activation
	kf_Ras_activation=2.18865E-10;
	
// kb_GAP_dissociation   id: kb     reactionID: GAP_dissociation
	kb_GAP_dissociation=6.28318E-13;
	
// kf_GAP_dissociation   id: kf     reactionID: GAP_dissociation
	kf_GAP_dissociation=2.43474E-11;
	
// kb_NF1_binding   id: kb     reactionID: NF1_binding
	kb_NF1_binding=3.3301E-12;
	
// kf_NF1_binding   id: kf     reactionID: NF1_binding
	kf_NF1_binding=6.28318E-13;
	



xdot=[
//x(1)   ID: Pi  initialValue: 1
	(1/compartment_geometry)*( (1)*(1)* (compartment_geometry*()) );
	
//x(2)   ID: RasGTP  initialValue: 1
	(1/compartment_geometry)*( (-1)*(1)* (compartment_geometry*()) );
	
//x(3)   ID: RasGTP_minus_NF1  initialValue: 0
	(1/compartment_geometry)*( (-1)*(1)* (compartment_geometry*()) + (1)*(1)* (compartment_geometry*()) );
	
//x(4)   ID: RasGTP_minus_NF1_star_  initialValue: 0
	(1/compartment_geometry)*( (-1)*(1)* (compartment_geometry*()) + (1)*(1)* (compartment_geometry*()) );
	
//x(5)   ID: RasGDP_minus_NF1_Pi  initialValue: 0
	(1/compartment_geometry)*( (-1)*(1)* (compartment_geometry*()) + (1)*(1)* (compartment_geometry*()) );
	
//x(6)   ID: RasGDP_NF1  initialValue: 0
	(1/compartment_geometry)*( (-1)*(1)* (compartment_geometry*()) + (1)*(1)* (compartment_geometry*()) );
	
//x(7)   ID: RasGDP  initialValue: 0
	(1/compartment_geometry)*( (1)*(1)* (compartment_geometry*()) );
	
//x(8)   ID: NF1  initialValue: 9.99936338171632
	(1/compartment_geometry)*( (-1)*(1)* (compartment_geometry*()) + (1)*(1)* (compartment_geometry*()) )
	];


	
endfunction
        x0=[1;1;0;0;0;0;0;9.99936338171632];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)'],[1;2;3;4;5;6;7;8])

//real_variable:
	
	
//x(1)   id: Pi  initialValue: 1
	
//x(2)   id: RasGTP  initialValue: 1
	
//x(3)   id: RasGTP_minus_NF1  initialValue: 0
	
//x(4)   id: RasGTP_minus_NF1_star_  initialValue: 0
	
//x(5)   id: RasGDP_minus_NF1_Pi  initialValue: 0
	
//x(6)   id: RasGDP_NF1  initialValue: 0
	
//x(7)   id: RasGDP  initialValue: 0
	
//x(8)   id: NF1  initialValue: 9.99936338171632