
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_Cytoplasm   id: Cytoplasm
	compartment_Cytoplasm=1;
		
// a1_Reaction1   id: a1     reactionID: Reaction1
	a1_Reaction1=1;
	
// d1_Reaction2   id: d1     reactionID: Reaction2
	d1_Reaction2=0.4;
	
// k1_Reaction3   id: k1     reactionID: Reaction3
	k1_Reaction3=0.1;
	
// a2_Reaction4   id: a2     reactionID: Reaction4
	a2_Reaction4=0.5;
	
// d2_Reaction5   id: d2     reactionID: Reaction5
	d2_Reaction5=0.5;
	
// k2_Reaction6   id: k2     reactionID: Reaction6
	k2_Reaction6=0.1;
	
// a3_Reaction7   id: a3     reactionID: Reaction7
	a3_Reaction7=3.3;
	
// d3_Reaction8   id: d3     reactionID: Reaction8
	d3_Reaction8=0.42;
	
// k3_Reaction9   id: k3     reactionID: Reaction9
	k3_Reaction9=0.1;
	
// a4_Reaction10   id: a4     reactionID: Reaction10
	a4_Reaction10=10;
	
// d4_Reaction11   id: d4     reactionID: Reaction11
	d4_Reaction11=0.8;
	
// k4_Reaction12   id: k4     reactionID: Reaction12
	k4_Reaction12=0.1;
	
// a5_Reaction13   id: a5     reactionID: Reaction13
	a5_Reaction13=3.3;
	
// d5_Reaction14   id: d5     reactionID: Reaction14
	d5_Reaction14=0.4;
	
// k5_Reaction15   id: k5     reactionID: Reaction15
	k5_Reaction15=0.1;
	
// a6_Reaction16   id: a6     reactionID: Reaction16
	a6_Reaction16=10;
	
// d6_Reaction17   id: d6     reactionID: Reaction17
	d6_Reaction17=0.8;
	
// k6_Reaction18   id: k6     reactionID: Reaction18
	k6_Reaction18=0.1;
	
// a7_Reaction19   id: a7     reactionID: Reaction19
	a7_Reaction19=20;
	
// d7_Reaction20   id: d7     reactionID: Reaction20
	d7_Reaction20=0.6;
	
// k7_Reaction21   id: k7     reactionID: Reaction21
	k7_Reaction21=0.1;
	
// a8_Reaction22   id: a8     reactionID: Reaction22
	a8_Reaction22=5;
	
// d8_Reaction23   id: d8     reactionID: Reaction23
	d8_Reaction23=0.4;
	
// k8_Reaction24   id: k8     reactionID: Reaction24
	k8_Reaction24=0.1;
	
// a9_Reaction25   id: a9     reactionID: Reaction25
	a9_Reaction25=20;
	
// d9_Reaction26   id: d9     reactionID: Reaction26
	d9_Reaction26=0.6;
	
// k9_Reaction27   id: k9     reactionID: Reaction27
	k9_Reaction27=0.1;
	
// a10_Reaction28   id: a10     reactionID: Reaction28
	a10_Reaction28=5;
	
// d10_Reaction29   id: d10     reactionID: Reaction29
	d10_Reaction29=0.4;
	
// k10_Reaction30   id: k10     reactionID: Reaction30
	k10_Reaction30=0.1;
	



xdot=[
//x(1)   ID: MAPK  initialValue: 0.4
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a7_Reaction19* x(1) * x(13) ) + (1)*(1)* (d7_Reaction20* x(2) ) + (1)*(1)* (k8_Reaction24* x(5) ) );
	
//x(2)   ID: MAPKMEKpp  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d7_Reaction20* x(2) ) + (-1)*(1)* (k7_Reaction21* x(2) ) + (1)*(1)* (a7_Reaction19* x(1) * x(13) ) );
	
//x(3)   ID: MAPKp  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a8_Reaction22* x(3) * x(4) ) + (-1)*(1)* (a9_Reaction25* x(3) * x(13) ) + (1)*(1)* (k7_Reaction21* x(2) ) + (1)*(1)* (d8_Reaction23* x(5) ) + (1)*(1)* (d9_Reaction26* x(6) ) + (1)*(1)* (k10_Reaction30* x(8) ) );
	
//x(4)   ID: MAPKPH  initialValue: 0.3
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a8_Reaction22* x(3) * x(4) ) + (-1)*(1)* (a10_Reaction28* x(4) * x(7) ) + (1)*(1)* (d8_Reaction23* x(5) ) + (1)*(1)* (k8_Reaction24* x(5) ) + (1)*(1)* (d10_Reaction29* x(8) ) + (1)*(1)* (k10_Reaction30* x(8) ) );
	
//x(5)   ID: MAPKpMAPKPH  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d8_Reaction23* x(5) ) + (-1)*(1)* (k8_Reaction24* x(5) ) + (1)*(1)* (a8_Reaction22* x(3) * x(4) ) );
	
//x(6)   ID: MAPKpMEKpp  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d9_Reaction26* x(6) ) + (-1)*(1)* (k9_Reaction27* x(6) ) + (1)*(1)* (a9_Reaction25* x(3) * x(13) ) );
	
//x(7)   ID: MAPKpp  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a10_Reaction28* x(4) * x(7) ) + (1)*(1)* (k9_Reaction27* x(6) ) + (1)*(1)* (d10_Reaction29* x(8) ) );
	
//x(8)   ID: MAPKppMAPKPH  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d10_Reaction29* x(8) ) + (-1)*(1)* (k10_Reaction30* x(8) ) + (1)*(1)* (a10_Reaction28* x(4) * x(7) ) );
	
//x(9)   ID: MEK  initialValue: 0.2
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a3_Reaction7* x(9) * x(19) ) + (1)*(1)* (d3_Reaction8* x(16) ) + (1)*(1)* (k4_Reaction12* x(12) ) );
	
//x(10)   ID: MEKp  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a4_Reaction10* x(10) * x(11) ) + (-1)*(1)* (a5_Reaction13* x(10) * x(19) ) + (1)*(1)* (k3_Reaction9* x(16) ) + (1)*(1)* (d4_Reaction11* x(12) ) + (1)*(1)* (d5_Reaction14* x(15) ) + (1)*(1)* (k6_Reaction18* x(14) ) );
	
//x(11)   ID: MEKPH  initialValue: 0.2
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a4_Reaction10* x(10) * x(11) ) + (-1)*(1)* (a6_Reaction16* x(11) * x(13) ) + (1)*(1)* (d4_Reaction11* x(12) ) + (1)*(1)* (k4_Reaction12* x(12) ) + (1)*(1)* (d6_Reaction17* x(14) ) + (1)*(1)* (k6_Reaction18* x(14) ) );
	
//x(12)   ID: MEKpMEKPH  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d4_Reaction11* x(12) ) + (-1)*(1)* (k4_Reaction12* x(12) ) + (1)*(1)* (a4_Reaction10* x(10) * x(11) ) );
	
//x(13)   ID: MEKpp  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a6_Reaction16* x(11) * x(13) ) + (-1)*(1)* (a7_Reaction19* x(1) * x(13) ) + (-1)*(1)* (a9_Reaction25* x(3) * x(13) ) + (1)*(1)* (k5_Reaction15* x(15) ) + (1)*(1)* (d6_Reaction17* x(14) ) + (1)*(1)* (d7_Reaction20* x(2) ) + (1)*(1)* (k7_Reaction21* x(2) ) + (1)*(1)* (d9_Reaction26* x(6) ) + (1)*(1)* (k9_Reaction27* x(6) ) );
	
//x(14)   ID: MEKppMEKPH  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d6_Reaction17* x(14) ) + (-1)*(1)* (k6_Reaction18* x(14) ) + (1)*(1)* (a6_Reaction16* x(11) * x(13) ) );
	
//x(15)   ID: MEKpRAFp  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d5_Reaction14* x(15) ) + (-1)*(1)* (k5_Reaction15* x(15) ) + (1)*(1)* (a5_Reaction13* x(10) * x(19) ) );
	
//x(16)   ID: MEKRAFp  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d3_Reaction8* x(16) ) + (-1)*(1)* (k3_Reaction9* x(16) ) + (1)*(1)* (a3_Reaction7* x(9) * x(19) ) );
	
//x(17)   ID: RAF  initialValue: 0.3
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a1_Reaction1* x(17) * x(18) ) + (1)*(1)* (d1_Reaction2* x(22) ) + (1)*(1)* (k2_Reaction6* x(21) ) );
	
//x(18)   ID: RAFK  initialValue: 0.2
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a1_Reaction1* x(17) * x(18) ) + (1)*(1)* (d1_Reaction2* x(22) ) + (1)*(1)* (k1_Reaction3* x(22) ) );
	
//x(19)   ID: RAFp  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a2_Reaction4* x(19) * x(20) ) + (-1)*(1)* (a3_Reaction7* x(9) * x(19) ) + (-1)*(1)* (a5_Reaction13* x(10) * x(19) ) + (1)*(1)* (k1_Reaction3* x(22) ) + (1)*(1)* (d2_Reaction5* x(21) ) + (1)*(1)* (d3_Reaction8* x(16) ) + (1)*(1)* (k3_Reaction9* x(16) ) + (1)*(1)* (d5_Reaction14* x(15) ) + (1)*(1)* (k5_Reaction15* x(15) ) );
	
//x(20)   ID: RAFPH  initialValue: 0.3
	(1/compartment_Cytoplasm)*( (-1)*(1)* (a2_Reaction4* x(19) * x(20) ) + (1)*(1)* (d2_Reaction5* x(21) ) + (1)*(1)* (k2_Reaction6* x(21) ) );
	
//x(21)   ID: RAFpRAFPH  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d2_Reaction5* x(21) ) + (-1)*(1)* (k2_Reaction6* x(21) ) + (1)*(1)* (a2_Reaction4* x(19) * x(20) ) );
	
//x(22)   ID: RAFRAFK  initialValue: 0
	(1/compartment_Cytoplasm)*( (-1)*(1)* (d1_Reaction2* x(22) ) + (-1)*(1)* (k1_Reaction3* x(22) ) + (1)*(1)* (a1_Reaction1* x(17) * x(18) ) )
	];


	
endfunction
        x0=[0.4;0;0;0.3;0;0;0;0;0.2;0;0.2;0;0;0;0;0;0.3;0.2;0;0.3;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22])

//real_variable:
	
	
//x(1)   id: MAPK  initialValue: 0.4
	
//x(2)   id: MAPKMEKpp  initialValue: 0
	
//x(3)   id: MAPKp  initialValue: 0
	
//x(4)   id: MAPKPH  initialValue: 0.3
	
//x(5)   id: MAPKpMAPKPH  initialValue: 0
	
//x(6)   id: MAPKpMEKpp  initialValue: 0
	
//x(7)   id: MAPKpp  initialValue: 0
	
//x(8)   id: MAPKppMAPKPH  initialValue: 0
	
//x(9)   id: MEK  initialValue: 0.2
	
//x(10)   id: MEKp  initialValue: 0
	
//x(11)   id: MEKPH  initialValue: 0.2
	
//x(12)   id: MEKpMEKPH  initialValue: 0
	
//x(13)   id: MEKpp  initialValue: 0
	
//x(14)   id: MEKppMEKPH  initialValue: 0
	
//x(15)   id: MEKpRAFp  initialValue: 0
	
//x(16)   id: MEKRAFp  initialValue: 0
	
//x(17)   id: RAF  initialValue: 0.3
	
//x(18)   id: RAFK  initialValue: 0.2
	
//x(19)   id: RAFp  initialValue: 0
	
//x(20)   id: RAFPH  initialValue: 0.3
	
//x(21)   id: RAFpRAFPH  initialValue: 0
	
//x(22)   id: RAFRAFK  initialValue: 0