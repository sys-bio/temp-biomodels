
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment   id: compartment
	compartment_compartment=1;
		
// k1f_v1   id: k1f     reactionID: v1
	k1f_v1=1960;
	
// k1r_v1   id: k1r     reactionID: v1
	k1r_v1=480000;
	
// k2f_v2   id: k2f     reactionID: v2
	k2f_v2=108000;
	
// k2r_v2   id: k2r     reactionID: v2
	k2r_v2=294;
	
// k3f_v3   id: k3f     reactionID: v3
	k3f_v3=14000;
	
// k3r_v3   id: k3r     reactionID: v3
	k3r_v3=14000;
	
// k4f_v4   id: k4f     reactionID: v4
	k4f_v4=84000;
	
// k4r_v4   id: k4r     reactionID: v4
	k4r_v4=3360;
	
// k5f_v5   id: k5f     reactionID: v5
	k5f_v5=21960;
	
// k5r_v5   id: k5r     reactionID: v5
	k5r_v5=21960;
	
// k6f_v6   id: k6f     reactionID: v6
	k6f_v6=4392;
	
// k6r_v6   id: k6r     reactionID: v6
	k6r_v6=3384;
	
// k7f_v7   id: k7f     reactionID: v7
	k7f_v7=880;
	
// k7r_v7   id: k7r     reactionID: v7
	k7r_v7=880;
	
// k8f_v8   id: k8f     reactionID: v8
	k8f_v8=2640;
	
// k8r_v8   id: k8r     reactionID: v8
	k8r_v8=960;
	
// k9f_v9   id: k9f     reactionID: v9
	k9f_v9=260;
	
// k9r_v9   id: k9r     reactionID: v9
	k9r_v9=389;
	
// k10f_v10   id: k10f     reactionID: v10
	k10f_v10=4800;
	
// k10r_v10   id: k10r     reactionID: v10
	k10r_v10=0.0054;
	



xdot=[
//x(1)   ID: EI  initialValue: 3
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k1f_v1* x(14) * x(1) )-(k1r_v1* x(2) ))) + (1)*(1)* (compartment_compartment*((k4f_v4* x(5) )-(k4r_v4* x(1) * x(6) ))) );
	
//x(2)   ID: PyrPI  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k2f_v2* x(2) )-(k2r_v2* x(15) * x(3) ))) + (1)*(1)* (compartment_compartment*((k1f_v1* x(14) * x(1) )-(k1r_v1* x(2) ))) );
	
//x(3)   ID: EIP  initialValue: 2
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k3f_v3* x(3) * x(4) )-(k3r_v3* x(5) ))) + (1)*(1)* (compartment_compartment*((k2f_v2* x(2) )-(k2r_v2* x(15) * x(3) ))) );
	
//x(4)   ID: HPr  initialValue: 25
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k3f_v3* x(3) * x(4) )-(k3r_v3* x(5) ))) + (1)*(1)* (compartment_compartment*((k6f_v6* x(8) )-(k6r_v6* x(4) * x(9) ))) );
	
//x(5)   ID: EIPHPr  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k4f_v4* x(5) )-(k4r_v4* x(1) * x(6) ))) + (1)*(1)* (compartment_compartment*((k3f_v3* x(3) * x(4) )-(k3r_v3* x(5) ))) );
	
//x(6)   ID: HPrP  initialValue: 25
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k5f_v5* x(6) * x(7) )-(k5r_v5* x(8) ))) + (1)*(1)* (compartment_compartment*((k4f_v4* x(5) )-(k4r_v4* x(1) * x(6) ))) );
	
//x(7)   ID: EIIA  initialValue: 20
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k5f_v5* x(6) * x(7) )-(k5r_v5* x(8) ))) + (1)*(1)* (compartment_compartment*((k8f_v8* x(11) )-(k8r_v8* x(7) * x(12) ))) );
	
//x(8)   ID: HPrPIIA  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k6f_v6* x(8) )-(k6r_v6* x(4) * x(9) ))) + (1)*(1)* (compartment_compartment*((k5f_v5* x(6) * x(7) )-(k5r_v5* x(8) ))) );
	
//x(9)   ID: EIIAP  initialValue: 20
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k7f_v7* x(9) * x(10) )-(k7r_v7* x(11) ))) + (1)*(1)* (compartment_compartment*((k6f_v6* x(8) )-(k6r_v6* x(4) * x(9) ))) );
	
//x(10)   ID: EIICB  initialValue: 5
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k7f_v7* x(9) * x(10) )-(k7r_v7* x(11) ))) + (1)*(1)* (compartment_compartment*((k10f_v10* x(13) )-(k10r_v10* x(10) * x(16) ))) );
	
//x(11)   ID: EIIAPIICB  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k8f_v8* x(11) )-(k8r_v8* x(7) * x(12) ))) + (1)*(1)* (compartment_compartment*((k7f_v7* x(9) * x(10) )-(k7r_v7* x(11) ))) );
	
//x(12)   ID: EIICBP  initialValue: 5
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k9f_v9* x(12) * x(17) )-(k9r_v9* x(13) ))) + (1)*(1)* (compartment_compartment*((k8f_v8* x(11) )-(k8r_v8* x(7) * x(12) ))) );
	
//x(13)   ID: EIICBPGlc  initialValue: 0
	(1/compartment_compartment)*( (-1)*(1)* (compartment_compartment*((k10f_v10* x(13) )-(k10r_v10* x(10) * x(16) ))) + (1)*(1)* (compartment_compartment*((k9f_v9* x(12) * x(17) )-(k9r_v9* x(13) ))) );
	
//x(14)   ID: PEP  initialValue: 2800
	0;
	
//x(15)   ID: Pyr  initialValue: 900
	0;
	
//x(16)   ID: GlcP  initialValue: 50
	0;
	
//x(17)   ID: Glc  initialValue: 500
	0
	];


	
endfunction
        x0=[3;0;2;25;0;25;20;0;20;5;0;5;0;2800;900;50;500];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17])

//real_variable:
	
	
//x(1)   id: EI  initialValue: 3
	
//x(2)   id: PyrPI  initialValue: 0
	
//x(3)   id: EIP  initialValue: 2
	
//x(4)   id: HPr  initialValue: 25
	
//x(5)   id: EIPHPr  initialValue: 0
	
//x(6)   id: HPrP  initialValue: 25
	
//x(7)   id: EIIA  initialValue: 20
	
//x(8)   id: HPrPIIA  initialValue: 0
	
//x(9)   id: EIIAP  initialValue: 20
	
//x(10)   id: EIICB  initialValue: 5
	
//x(11)   id: EIIAPIICB  initialValue: 0
	
//x(12)   id: EIICBP  initialValue: 5
	
//x(13)   id: EIICBPGlc  initialValue: 0
	
//x(14)   id: PEP  initialValue: 2800
	
//x(15)   id: Pyr  initialValue: 900
	
//x(16)   id: GlcP  initialValue: 50
	
//x(17)   id: Glc  initialValue: 500