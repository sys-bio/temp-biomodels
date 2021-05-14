
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=4E-12;
		
// K_PP_norm_max_p   id: K_PP_norm_max
	K_PP_norm_max_p=0.900049;
		
// K_PP_norm_s   id: K_PP_norm
	K_PP_norm_s=0;
		
// KK_PP_norm_s   id: KK_PP_norm
	KK_PP_norm_s=0;
		
// KKK_P_norm_s   id: KKK_P_norm
	KKK_P_norm_s=0;
		
// rel_K_PP_max_s   id: rel_K_PP_max
	rel_K_PP_max_s=0;
		
// a1_r1a   id: a1     reactionID: r1a
	a1_r1a=1000;
	
// d1_r1a   id: d1     reactionID: r1a
	d1_r1a=150;
	
// k2_r1b   id: k2     reactionID: r1b
	k2_r1b=150;
	
// a2_r2a   id: a2     reactionID: r2a
	a2_r2a=1000;
	
// d2_r2a   id: d2     reactionID: r2a
	d2_r2a=150;
	
// k2_r2b   id: k2     reactionID: r2b
	k2_r2b=150;
	
// a3_r3a   id: a3     reactionID: r3a
	a3_r3a=1000;
	
// d3_r3a   id: d3     reactionID: r3a
	d3_r3a=150;
	
// k3_r3b   id: k3     reactionID: r3b
	k3_r3b=150;
	
// a4_r4a   id: a4     reactionID: r4a
	a4_r4a=1000;
	
// d4_r4a   id: d4     reactionID: r4a
	d4_r4a=150;
	
// k4_r4b   id: k4     reactionID: r4b
	k4_r4b=150;
	
// a5_r5a   id: a5     reactionID: r5a
	a5_r5a=1000;
	
// d5_r5a   id: d5     reactionID: r5a
	d5_r5a=150;
	
// k5_r5b   id: k5     reactionID: r5b
	k5_r5b=150;
	
// a6_r6a   id: a6     reactionID: r6a
	a6_r6a=1000;
	
// d6_r6a   id: d6     reactionID: r6a
	d6_r6a=150;
	
// k6_r6b   id: k6     reactionID: r6b
	k6_r6b=150;
	
// a7_r7a   id: a7     reactionID: r7a
	a7_r7a=1000;
	
// d7_r7a   id: d7     reactionID: r7a
	d7_r7a=150;
	
// k7_r7b   id: k7     reactionID: r7b
	k7_r7b=150;
	
// a8_r8a   id: a8     reactionID: r8a
	a8_r8a=1000;
	
// d8_r8a   id: d8     reactionID: r8a
	d8_r8a=150;
	
// k8_r8b   id: k8     reactionID: r8b
	k8_r8b=150;
	
// a9_r9a   id: a9     reactionID: r9a
	a9_r9a=1000;
	
// d9_r9a   id: d9     reactionID: r9a
	d9_r9a=150;
	
// k9_r9b   id: k9     reactionID: r9b
	k9_r9b=150;
	
// a10_r10a   id: a10     reactionID: r10a
	a10_r10a=1000;
	
// d10_r10a   id: d10     reactionID: r10a
	d10_r10a=150;
	
// k10_r10b   id: k10     reactionID: r10b
	k10_r10b=150;
	



xdot=[
//x(1)   ID: E1  initialValue: 3E-5
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((a1_r1a* x(1) * x(3) )-(d1_r1a* x(13) ))) + (1)*(1)* (compartment_compartment*k2_r1b* x(13) ) );
	
//x(2)   ID: E2  initialValue: 0.0003
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((a2_r2a* x(2) * x(4) )-(d2_r2a* x(14) ))) + (1)*(1)* (compartment_compartment*k2_r2b* x(14) ) );
	
//x(3)   ID: KKK  initialValue: 0.003
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((a1_r1a* x(1) * x(3) )-(d1_r1a* x(13) ))) + (1)*(1)* (compartment_compartment*k2_r2b* x(14) ) );
	
//x(4)   ID: P_KKK  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((a2_r2a* x(2) * x(4) )-(d2_r2a* x(14) ))) + (-1)*(1)* (compartment_compartment*((a3_r3a* x(5) * x(4) )-(d3_r3a* x(15) ))) + (-1)*(1)* (compartment_compartment*((a5_r5a* x(6) * x(4) )-(d5_r5a* x(16) ))) + (1)*(1)* (compartment_compartment*k2_r1b* x(13) ) + (1)*(1)* (compartment_compartment*k3_r3b* x(15) ) + (1)*(1)* (compartment_compartment*k5_r5b* x(16) ) );
	
//x(5)   ID: KK  initialValue: 1.2
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((a3_r3a* x(5) * x(4) )-(d3_r3a* x(15) ))) + (1)*(1)* (compartment_compartment*k4_r4b* x(20) ) );
	
//x(6)   ID: P_KK  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((a4_r4a* x(6) * x(12) )-(d4_r4a* x(20) ))) + (-1)*(1)* (compartment_compartment*((a5_r5a* x(6) * x(4) )-(d5_r5a* x(16) ))) + (1)*(1)* (compartment_compartment*k3_r3b* x(15) ) + (1)*(1)* (compartment_compartment*k6_r6b* x(19) ) );
	
//x(7)   ID: PP_KK  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((a6_r6a* x(7) * x(12) )-(d6_r6a* x(19) ))) + (-1)*(1)* (compartment_compartment*((a7_r7a* x(8) * x(7) )-(d7_r7a* x(17) ))) + (-1)*(1)* (compartment_compartment*((a9_r9a* x(9) * x(7) )-(d9_r9a* x(18) ))) + (1)*(1)* (compartment_compartment*k5_r5b* x(16) ) + (1)*(1)* (compartment_compartment*k7_r7b* x(17) ) + (1)*(1)* (compartment_compartment*k9_r9b* x(18) ) );
	
//x(8)   ID: K  initialValue: 1.2
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((a7_r7a* x(8) * x(7) )-(d7_r7a* x(17) ))) + (1)*(1)* (compartment_compartment*k8_r8b* x(22) ) );
	
//x(9)   ID: P_K  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((a8_r8a* x(9) * x(11) )-(d8_r8a* x(22) ))) + (-1)*(1)* (compartment_compartment*((a9_r9a* x(9) * x(7) )-(d9_r9a* x(18) ))) + (1)*(1)* (compartment_compartment*k7_r7b* x(17) ) + (1)*(1)* (compartment_compartment*k10_r10b* x(21) ) );
	
//x(10)   ID: PP_K  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((a10_r10a* x(10) * x(11) )-(d10_r10a* x(21) ))) + (1)*(1)* (compartment_compartment*k9_r9b* x(18) ) );
	
//x(11)   ID: KPase  initialValue: 0.12
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((a8_r8a* x(9) * x(11) )-(d8_r8a* x(22) ))) + (-1)*(1)* (compartment_compartment*((a10_r10a* x(10) * x(11) )-(d10_r10a* x(21) ))) + (1)*(1)* (compartment_compartment*k8_r8b* x(22) ) + (1)*(1)* (compartment_compartment*k10_r10b* x(21) ) );
	
//x(12)   ID: KKPase  initialValue: 0.0003
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((a4_r4a* x(6) * x(12) )-(d4_r4a* x(20) ))) + (-1)*(1)* (compartment_compartment*((a6_r6a* x(7) * x(12) )-(d6_r6a* x(19) ))) + (1)*(1)* (compartment_compartment*k4_r4b* x(20) ) + (1)*(1)* (compartment_compartment*k6_r6b* x(19) ) );
	
//x(13)   ID: E1_KKK  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k2_r1b* x(13) ) + (1)*(1)* (compartment_compartment*((a1_r1a* x(1) * x(3) )-(d1_r1a* x(13) ))) );
	
//x(14)   ID: E2_P_KKK  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k2_r2b* x(14) ) + (1)*(1)* (compartment_compartment*((a2_r2a* x(2) * x(4) )-(d2_r2a* x(14) ))) );
	
//x(15)   ID: P_KKK_KK  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k3_r3b* x(15) ) + (1)*(1)* (compartment_compartment*((a3_r3a* x(5) * x(4) )-(d3_r3a* x(15) ))) );
	
//x(16)   ID: P_KKK_P_KK  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k5_r5b* x(16) ) + (1)*(1)* (compartment_compartment*((a5_r5a* x(6) * x(4) )-(d5_r5a* x(16) ))) );
	
//x(17)   ID: PP_KK_K  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k7_r7b* x(17) ) + (1)*(1)* (compartment_compartment*((a7_r7a* x(8) * x(7) )-(d7_r7a* x(17) ))) );
	
//x(18)   ID: PP_KK_P_K  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k9_r9b* x(18) ) + (1)*(1)* (compartment_compartment*((a9_r9a* x(9) * x(7) )-(d9_r9a* x(18) ))) );
	
//x(19)   ID: KKPase_PP_KK  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k6_r6b* x(19) ) + (1)*(1)* (compartment_compartment*((a6_r6a* x(7) * x(12) )-(d6_r6a* x(19) ))) );
	
//x(20)   ID: KKPase_P_KK  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k4_r4b* x(20) ) + (1)*(1)* (compartment_compartment*((a4_r4a* x(6) * x(12) )-(d4_r4a* x(20) ))) );
	
//x(21)   ID: KPase_PP_K  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k10_r10b* x(21) ) + (1)*(1)* (compartment_compartment*((a10_r10a* x(10) * x(11) )-(d10_r10a* x(21) ))) );
	
//x(22)   ID: KPase_P_K  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*k8_r8b* x(22) ) + (1)*(1)* (compartment_compartment*((a8_r8a* x(9) * x(11) )-(d8_r8a* x(22) ))) )
	];


	
endfunction
        x0=[3E-5;0.0003;0.003;0;1.2;0;0;1.2;0;0;0.12;0.0003;0;0;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22])

//real_variable:
	
	
//x(1)   id: E1  initialValue: 3E-5
	
//x(2)   id: E2  initialValue: 0.0003
	
//x(3)   id: KKK  initialValue: 0.003
	
//x(4)   id: P_KKK  initialValue: 0
	
//x(5)   id: KK  initialValue: 1.2
	
//x(6)   id: P_KK  initialValue: 0
	
//x(7)   id: PP_KK  initialValue: 0
	
//x(8)   id: K  initialValue: 1.2
	
//x(9)   id: P_K  initialValue: 0
	
//x(10)   id: PP_K  initialValue: 0
	
//x(11)   id: KPase  initialValue: 0.12
	
//x(12)   id: KKPase  initialValue: 0.0003
	
//x(13)   id: E1_KKK  initialValue: 0
	
//x(14)   id: E2_P_KKK  initialValue: 0
	
//x(15)   id: P_KKK_KK  initialValue: 0
	
//x(16)   id: P_KKK_P_KK  initialValue: 0
	
//x(17)   id: PP_KK_K  initialValue: 0
	
//x(18)   id: PP_KK_P_K  initialValue: 0
	
//x(19)   id: KKPase_PP_KK  initialValue: 0
	
//x(20)   id: KKPase_P_KK  initialValue: 0
	
//x(21)   id: KPase_PP_K  initialValue: 0
	
//x(22)   id: KPase_P_K  initialValue: 0