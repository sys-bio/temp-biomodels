
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Drosophilia   id: Drosophilia
	compartment_Drosophilia=1;
		
// compartment_compartment_0000003   id: compartment_0000003
	compartment_compartment_0000003=1;
		
// compartment_compartment_0000002   id: compartment_0000002
	compartment_compartment_0000002=1;
		
// species_0000012_s   id: species_0000012
	species_0000012_s=1;
		
// species_0000013_s   id: species_0000013
	species_0000013_s=1;
		
// a_Reaction1   id: a     reactionID: Reaction1
	a_Reaction1=1;
	
// A1_Reaction1   id: A1     reactionID: Reaction1
	A1_Reaction1=0.45;
	
// B1_Reaction1   id: B1     reactionID: Reaction1
	B1_Reaction1=0;
	
// c1_Reaction1   id: c1     reactionID: Reaction1
	c1_Reaction1=0;
	
// r1_Reaction1   id: r1     reactionID: Reaction1
	r1_Reaction1=1.02;
	
// s1_Reaction1   id: s1     reactionID: Reaction1
	s1_Reaction1=1.45;
	
// r_Reaction1   id: r     reactionID: Reaction1
	r_Reaction1=4;
	
// D0_Reaction2   id: D0     reactionID: Reaction2
	D0_Reaction2=0.012;
	
// a_Reaction3   id: a     reactionID: Reaction3
	a_Reaction3=1;
	
// A2_Reaction3   id: A2     reactionID: Reaction3
	A2_Reaction3=0.45;
	
// B2_Reaction3   id: B2     reactionID: Reaction3
	B2_Reaction3=0;
	
// c2_Reaction3   id: c2     reactionID: Reaction3
	c2_Reaction3=0;
	
// r2_Reaction3   id: r2     reactionID: Reaction3
	r2_Reaction3=1.02;
	
// s3_Reaction3   id: s3     reactionID: Reaction3
	s3_Reaction3=1.45;
	
// r_Reaction3   id: r     reactionID: Reaction3
	r_Reaction3=4;
	
// D0_Reaction4   id: D0     reactionID: Reaction4
	D0_Reaction4=0.012;
	
// a_Reaction5   id: a     reactionID: Reaction5
	a_Reaction5=1;
	
// A3_Reaction5   id: A3     reactionID: Reaction5
	A3_Reaction5=0.8;
	
// B3_Reaction5   id: B3     reactionID: Reaction5
	B3_Reaction5=0.6;
	
// c3_Reaction5   id: c3     reactionID: Reaction5
	c3_Reaction5=0;
	
// r3_Reaction5   id: r3     reactionID: Reaction5
	r3_Reaction5=0.89;
	
// s5_Reaction5   id: s5     reactionID: Reaction5
	s5_Reaction5=1.63;
	
// r_Reaction5   id: r     reactionID: Reaction5
	r_Reaction5=4;
	
// D0_Reaction6   id: D0     reactionID: Reaction6
	D0_Reaction6=0.012;
	
// k3_Reaction7   id: k3     reactionID: Reaction7
	k3_Reaction7=2;
	
// T3_Reaction7   id: T3     reactionID: Reaction7
	T3_Reaction7=1.63;
	
// k4_Reaction8   id: k4     reactionID: Reaction8
	k4_Reaction8=2;
	
// T4_Reaction8   id: T4     reactionID: Reaction8
	T4_Reaction8=0.52;
	
// k2_Reaction9   id: k2     reactionID: Reaction9
	k2_Reaction9=2;
	
// T2_Reaction9   id: T2     reactionID: Reaction9
	T2_Reaction9=0.72;
	
// k1_Reaction10   id: k1     reactionID: Reaction10
	k1_Reaction10=2;
	
// T1_Reaction10   id: T1     reactionID: Reaction10
	T1_Reaction10=1.73;
	
// v3_Reaction11   id: v3     reactionID: Reaction11
	v3_Reaction11=1.63;
	
// parameter_0000073_Reaction11   id: parameter_0000073     reactionID: Reaction11
	parameter_0000073_Reaction11=1.63;
	
// v1_Reaction12   id: v1     reactionID: Reaction12
	v1_Reaction12=1.45;
	
// parameter_0000072_Reaction12   id: parameter_0000072     reactionID: Reaction12
	parameter_0000072_Reaction12=1.45;
	
// s4_Reaction16   id: s4     reactionID: Reaction16
	s4_Reaction16=0.48;
	
// s6_Reaction18   id: s6     reactionID: Reaction18
	s6_Reaction18=0.47;
	
// s2_Reaction19   id: s2     reactionID: Reaction19
	s2_Reaction19=0.48;
	
// D0_Reaction20   id: D0     reactionID: Reaction20
	D0_Reaction20=0.012;
	
// D0_Reaction21   id: D0     reactionID: Reaction21
	D0_Reaction21=0.012;
	
// D0_Reaction23   id: D0     reactionID: Reaction23
	D0_Reaction23=0.012;
	
// D0_Reaction24   id: D0     reactionID: Reaction24
	D0_Reaction24=0.012;
	
// D0_Reaction25   id: D0     reactionID: Reaction25
	D0_Reaction25=0.012;
	
// D0_Reaction26   id: D0     reactionID: Reaction26
	D0_Reaction26=0.012;
	
// D0_Reaction27   id: D0     reactionID: Reaction27
	D0_Reaction27=0.012;
	
// D1_Reaction28   id: D1     reactionID: Reaction28
	D1_Reaction28=0.94;
	
// L1_Reaction28   id: L1     reactionID: Reaction28
	L1_Reaction28=0.3;
	
// D2_Reaction29   id: D2     reactionID: Reaction29
	D2_Reaction29=0.44;
	
// L2_Reaction29   id: L2     reactionID: Reaction29
	L2_Reaction29=0.2;
	
// D3_Reaction30   id: D3     reactionID: Reaction30
	D3_Reaction30=0.94;
	
// L3_Reaction30   id: L3     reactionID: Reaction30
	L3_Reaction30=0.3;
	
// D4_Reaction31   id: D4     reactionID: Reaction31
	D4_Reaction31=0.44;
	
// L4_Reaction31   id: L4     reactionID: Reaction31
	L4_Reaction31=0.2;
	
// D5_Reaction32   id: D5     reactionID: Reaction32
	D5_Reaction32=0.44;
	
// L5_Reaction32   id: L5     reactionID: Reaction32
	L5_Reaction32=0.2;
	
// D6_Reaction33   id: D6     reactionID: Reaction33
	D6_Reaction33=0.29;
	
// L6_Reaction33   id: L6     reactionID: Reaction33
	L6_Reaction33=0.2;
	
// D7_Reaction34   id: D7     reactionID: Reaction34
	D7_Reaction34=0.54;
	
// L7_Reaction34   id: L7     reactionID: Reaction34
	L7_Reaction34=0.13;
	
// D8_Reaction35   id: D8     reactionID: Reaction35
	D8_Reaction35=0.6;
	
// L8_Reaction35   id: L8     reactionID: Reaction35
	L8_Reaction35=0.2;
	
// D9_Reaction36   id: D9     reactionID: Reaction36
	D9_Reaction36=0.6;
	
// L9_Reaction36   id: L9     reactionID: Reaction36
	L9_Reaction36=0.2;
	
// D10_Reaction37   id: D10     reactionID: Reaction37
	D10_Reaction37=0.3;
	
// L10_Reaction37   id: L10     reactionID: Reaction37
	L10_Reaction37=0.2;
	



xdot=[
//x(1)   ID: EmptySet  initialValue: 0
	0;
	
//x(2)   ID: CCc  initialValue: 0.3
	(1/compartment_compartment_0000003)*( (-1)*(1)* (compartment_compartment_0000003*(( x(2) *T3_Reaction7)/(k3_Reaction7+ x(2) ))) + (-1)*(1)* (compartment_compartment_0000003* x(2) *D0_Reaction24) + (-1)*(1)* (compartment_compartment_0000003*(( x(2) *D9_Reaction36)/( x(2) +L9_Reaction36))) + (1)*(1)* (compartment_compartment_0000002*(( x(3) *T4_Reaction8)/(k4_Reaction8+ x(3) ))) + (1)*(1)* (compartment_compartment_0000003*(( x(4) *v3_Reaction11*species_0000012_s)-(parameter_0000073_Reaction11* x(2) ))) );
	
//x(3)   ID: CCn  initialValue: 0.4
	(1/compartment_compartment_0000002)*( (-1)*(1)* (compartment_compartment_0000002*(( x(3) *T4_Reaction8)/(k4_Reaction8+ x(3) ))) + (-1)*(1)* (compartment_compartment_0000002* x(3) *D0_Reaction26) + (-1)*(1)* (compartment_compartment_0000002*(( x(3) *D10_Reaction37)/( x(3) +L10_Reaction37))) + (1)*(1)* (compartment_compartment_0000003*(( x(2) *T3_Reaction7)/(k3_Reaction7+ x(2) ))) );
	
//x(4)   ID: Clkc  initialValue: 0.2
	(1/compartment_compartment_0000003)*( (-1)*(1)* (compartment_compartment_0000003*(( x(4) *v3_Reaction11*species_0000012_s)-(parameter_0000073_Reaction11* x(2) ))) + (-1)*(1)* (compartment_compartment_0000003* x(4) *D0_Reaction25) + (-1)*(1)* (compartment_compartment_0000003*(( x(4) *D8_Reaction35)/( x(4) +L8_Reaction35))) + (1)*(1)* (compartment_compartment_0000003* x(5) *s6_Reaction18) );
	
//x(5)   ID: Clkm  initialValue: 0.1
	(1/compartment_compartment_0000003)*( (-1)*(1)* (compartment_Drosophilia* x(5) *D0_Reaction6) + (-1)*(1)* (compartment_compartment_0000003*(( x(5) *D7_Reaction34)/( x(5) +L7_Reaction34))) + (1)*(1)* (compartment_compartment_0000003*(c3_Reaction5+(((B3_Reaction5+(power(( x(9) /A3_Reaction5),a_Reaction5)))*s5_Reaction5)/(( 1 )+B3_Reaction5+(power(( x(9) /A3_Reaction5),a_Reaction5))+(power(( x(3) /r3_Reaction5),r_Reaction5)))))) );
	
//x(6)   ID: Perc  initialValue: 0.6
	(1/compartment_compartment_0000003)*( (-1)*(1)* (compartment_compartment_0000003*(( x(6) * x(10) *v1_Reaction12)-(parameter_0000072_Reaction12* x(8) ))) + (-1)*(1)* (compartment_Drosophilia*D0_Reaction20* x(6) ) + (-1)*(1)* (compartment_compartment_0000003*((D2_Reaction29*species_0000013_s* x(6) )/(L2_Reaction29+ x(6) ))) + (1)*(1)* (compartment_compartment_0000003*s2_Reaction19* x(7) ) );
	
//x(7)   ID: Perm  initialValue: 0.5
	(1/compartment_compartment_0000003)*( (-1)*(1)* (compartment_compartment_0000003*D0_Reaction2* x(7) ) + (-1)*(1)* (compartment_compartment_0000003*((D1_Reaction28* x(7) )/(L1_Reaction28+ x(7) ))) + (1)*(1)* (compartment_compartment_0000003*(c1_Reaction1+(((B1_Reaction1+(power(( x(3) /A1_Reaction1),a_Reaction1)))*s1_Reaction1)/(( 1 )+B1_Reaction1+(power(( x(3) /A1_Reaction1),a_Reaction1))+(power(( x(9) /r1_Reaction1),r_Reaction1)))))) );
	
//x(8)   ID: PTc  initialValue: 0.9
	(1/compartment_compartment_0000003)*( (-1)*(1)* (compartment_compartment_0000003*(( x(8) *T1_Reaction10)/(k1_Reaction10+ x(8) ))) + (-1)*(1)* (compartment_compartment_0000003*D0_Reaction21* x(8) ) + (-1)*(1)* (compartment_compartment_0000003*((D5_Reaction32* x(8) )/(L5_Reaction32+ x(8) ))) + (1)*(1)* (compartment_compartment_0000002*(( x(9) *T2_Reaction9)/(k2_Reaction9+ x(9) ))) + (1)*(1)* (compartment_compartment_0000003*(( x(6) * x(10) *v1_Reaction12)-(parameter_0000072_Reaction12* x(8) ))) );
	
//x(9)   ID: PTn  initialValue: 1
	(1/compartment_compartment_0000002)*( (-1)*(1)* (compartment_compartment_0000002*(( x(9) *T2_Reaction9)/(k2_Reaction9+ x(9) ))) + (-1)*(1)* (compartment_compartment_0000002*D0_Reaction23* x(9) ) + (-1)*(1)* (compartment_compartment_0000002*((D6_Reaction33* x(9) )/(L6_Reaction33+ x(9) ))) + (1)*(1)* (compartment_compartment_0000003*(( x(8) *T1_Reaction10)/(k1_Reaction10+ x(8) ))) );
	
//x(10)   ID: Timc  initialValue: 0.8
	(1/compartment_compartment_0000003)*( (-1)*(1)* (compartment_compartment_0000003*(( x(6) * x(10) *v1_Reaction12)-(parameter_0000072_Reaction12* x(8) ))) + (-1)*(1)* (compartment_compartment_0000003*D0_Reaction27* x(10) ) + (-1)*(1)* (compartment_compartment_0000003*((D4_Reaction31* x(10) )/(L4_Reaction31+ x(10) ))) + (1)*(1)* (compartment_compartment_0000003*s4_Reaction16* x(11) ) );
	
//x(11)   ID: Timm  initialValue: 0.7
	(1/compartment_compartment_0000003)*( (-1)*(1)* (compartment_Drosophilia*D0_Reaction4* x(11) ) + (-1)*(1)* (compartment_compartment_0000003*((D3_Reaction30* x(11) )/(L3_Reaction30+ x(11) ))) + (1)*(1)* (compartment_compartment_0000003*(c2_Reaction3+(((B2_Reaction3+(power(( x(3) /A2_Reaction3),a_Reaction3)))*s3_Reaction3)/(( 1 )+B2_Reaction3+(power(( x(3) /A2_Reaction3),a_Reaction3))+(power(( x(9) /r2_Reaction3),r_Reaction3)))))) )
	];


	
endfunction
        x0=[0;0.3;0.4;0.2;0.1;0.6;0.5;0.9;1;0.8;0.7];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)'],[1;2;3;4;5;6;7;8;9;10;11])

//real_variable:
	
	
//x(1)   id: EmptySet  initialValue: 0
	
//x(2)   id: CCc  initialValue: 0.3
	
//x(3)   id: CCn  initialValue: 0.4
	
//x(4)   id: Clkc  initialValue: 0.2
	
//x(5)   id: Clkm  initialValue: 0.1
	
//x(6)   id: Perc  initialValue: 0.6
	
//x(7)   id: Perm  initialValue: 0.5
	
//x(8)   id: PTc  initialValue: 0.9
	
//x(9)   id: PTn  initialValue: 1
	
//x(10)   id: Timc  initialValue: 0.8
	
//x(11)   id: Timm  initialValue: 0.7