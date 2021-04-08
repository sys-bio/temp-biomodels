
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment_0   id: compartment_0
	compartment_compartment_0=1;
		
// vsb_reaction_0   id: vsb     reactionID: reaction_0
	vsb_reaction_0=1.8;
	
// K_reaction_0   id: K     reactionID: reaction_0
	K_reaction_0=1;
	
// m_reaction_0   id: m     reactionID: reaction_0
	m_reaction_0=2;
	
// k_reaction_1   id: k     reactionID: reaction_1
	k_reaction_1=0.32;
	
// k1_reaction_2   id: k1     reactionID: reaction_2
	k1_reaction_2=0.02;
	
// V_reaction_3   id: V     reactionID: reaction_3
	V_reaction_3=1.4;
	
// Km_reaction_3   id: Km     reactionID: reaction_3
	Km_reaction_3=1.006;
	
// k1_reaction_4   id: k1     reactionID: reaction_4
	k1_reaction_4=0.8;
	
// k2_reaction_4   id: k2     reactionID: reaction_4
	k2_reaction_4=0.4;
	
// k_reaction_5   id: k     reactionID: reaction_5
	k_reaction_5=3.2;
	
// k1_reaction_6   id: k1     reactionID: reaction_6
	k1_reaction_6=0.02;
	
// V_reaction_7   id: V     reactionID: reaction_7
	V_reaction_7=1.2;
	
// Km_reaction_7   id: Km     reactionID: reaction_7
	Km_reaction_7=1.006;
	
// V_reaction_8   id: V     reactionID: reaction_8
	V_reaction_8=1.4;
	
// Km_reaction_8   id: Km     reactionID: reaction_8
	Km_reaction_8=0.3;
	
// Vs_reaction_9   id: Vs     reactionID: reaction_9
	Vs_reaction_9=2.4;
	
// n_reaction_9   id: n     reactionID: reaction_9
	n_reaction_9=2;
	
// K_reaction_9   id: K     reactionID: reaction_9
	K_reaction_9=0.6;
	
// k_reaction_10   id: k     reactionID: reaction_10
	k_reaction_10=1.2;
	
// V_reaction_11   id: V     reactionID: reaction_11
	V_reaction_11=3.4;
	
// Km_reaction_11   id: Km     reactionID: reaction_11
	Km_reaction_11=0.3;
	
// V_reaction_12   id: V     reactionID: reaction_12
	V_reaction_12=9.6;
	
// Km_reaction_12   id: Km     reactionID: reaction_12
	Km_reaction_12=1.006;
	
// k1_reaction_13   id: k1     reactionID: reaction_13
	k1_reaction_13=0.8;
	
// k2_reaction_13   id: k2     reactionID: reaction_13
	k2_reaction_13=0.4;
	
// V_reaction_14   id: V     reactionID: reaction_14
	V_reaction_14=2.4;
	
// Km_reaction_14   id: Km     reactionID: reaction_14
	Km_reaction_14=1.006;
	
// V_reaction_15   id: V     reactionID: reaction_15
	V_reaction_15=1.4;
	
// Km_reaction_15   id: Km     reactionID: reaction_15
	Km_reaction_15=0.3;
	
// k1_reaction_16   id: k1     reactionID: reaction_16
	k1_reaction_16=0.8;
	
// k2_reaction_16   id: k2     reactionID: reaction_16
	k2_reaction_16=0.4;
	
// k1_reaction_17   id: k1     reactionID: reaction_17
	k1_reaction_17=0.02;
	
// k1_reaction_18   id: k1     reactionID: reaction_18
	k1_reaction_18=0.02;
	
// k1_reaction_19   id: k1     reactionID: reaction_19
	k1_reaction_19=0.02;
	
// Vs_reaction_20   id: Vs     reactionID: reaction_20
	Vs_reaction_20=2.2;
	
// n_reaction_20   id: n     reactionID: reaction_20
	n_reaction_20=2;
	
// K_reaction_20   id: K     reactionID: reaction_20
	K_reaction_20=0.6;
	
// V_reaction_21   id: V     reactionID: reaction_21
	V_reaction_21=2.4;
	
// Km_reaction_21   id: Km     reactionID: reaction_21
	Km_reaction_21=1.006;
	
// k1_reaction_22   id: k1     reactionID: reaction_22
	k1_reaction_22=0.02;
	
// k1_reaction_23   id: k1     reactionID: reaction_23
	k1_reaction_23=1;
	
// k2_reaction_23   id: k2     reactionID: reaction_23
	k2_reaction_23=0.2;
	
// V_reaction_24   id: V     reactionID: reaction_24
	V_reaction_24=1.3;
	
// Km_reaction_24   id: Km     reactionID: reaction_24
	Km_reaction_24=0.4;
	
// V_reaction_25   id: V     reactionID: reaction_25
	V_reaction_25=2;
	
// Km_reaction_25   id: Km     reactionID: reaction_25
	Km_reaction_25=0.4;
	
// V_reaction_26   id: V     reactionID: reaction_26
	V_reaction_26=2.2;
	
// Km_reaction_26   id: Km     reactionID: reaction_26
	Km_reaction_26=0.3;
	
// k1_reaction_27   id: k1     reactionID: reaction_27
	k1_reaction_27=0.02;
	
// k1_reaction_28   id: k1     reactionID: reaction_28
	k1_reaction_28=0.02;
	
// k1_reaction_29   id: k1     reactionID: reaction_29
	k1_reaction_29=0.02;
	
// k1_reaction_30   id: k1     reactionID: reaction_30
	k1_reaction_30=0.02;
	
// k1_reaction_31   id: k1     reactionID: reaction_31
	k1_reaction_31=0.02;
	
// k1_reaction_32   id: k1     reactionID: reaction_32
	k1_reaction_32=0.02;
	
// V_reaction_33   id: V     reactionID: reaction_33
	V_reaction_33=1.4;
	
// Km_reaction_33   id: Km     reactionID: reaction_33
	Km_reaction_33=0.3;
	
// k1_reaction_34   id: k1     reactionID: reaction_34
	k1_reaction_34=0.02;
	
// V_reaction_35   id: V     reactionID: reaction_35
	V_reaction_35=3;
	
// Km_reaction_35   id: Km     reactionID: reaction_35
	Km_reaction_35=0.3;
	
// V_reaction_36   id: V     reactionID: reaction_36
	V_reaction_36=1.4;
	
// Km_reaction_36   id: Km     reactionID: reaction_36
	Km_reaction_36=1.006;
	
// V_reaction_37   id: V     reactionID: reaction_37
	V_reaction_37=3;
	
// Km_reaction_37   id: Km     reactionID: reaction_37
	Km_reaction_37=0.3;
	
// k1_reaction_38   id: k1     reactionID: reaction_38
	k1_reaction_38=0.02;
	
// V_reaction_39   id: V     reactionID: reaction_39
	V_reaction_39=1.6;
	
// Km_reaction_39   id: Km     reactionID: reaction_39
	Km_reaction_39=0.3;
	
// k1_reaction_40   id: k1     reactionID: reaction_40
	k1_reaction_40=0.02;
	
// V_reaction_41   id: V     reactionID: reaction_41
	V_reaction_41=0.2;
	
// Km_reaction_41   id: Km     reactionID: reaction_41
	Km_reaction_41=0.1;
	
// V_reaction_42   id: V     reactionID: reaction_42
	V_reaction_42=0.4;
	
// Km_reaction_42   id: Km     reactionID: reaction_42
	Km_reaction_42=0.1;
	
// V_reaction_43   id: V     reactionID: reaction_43
	V_reaction_43=0.2;
	
// Km_reaction_43   id: Km     reactionID: reaction_43
	Km_reaction_43=0.1;
	
// V_reaction_44   id: V     reactionID: reaction_44
	V_reaction_44=0.6;
	
// Km_reaction_44   id: Km     reactionID: reaction_44
	Km_reaction_44=0.1;
	
// V_reaction_45   id: V     reactionID: reaction_45
	V_reaction_45=0.2;
	
// Km_reaction_45   id: Km     reactionID: reaction_45
	Km_reaction_45=0.1;
	
// k1_reaction_46   id: k1     reactionID: reaction_46
	k1_reaction_46=0.02;
	
// V_reaction_47   id: V     reactionID: reaction_47
	V_reaction_47=0.2;
	
// Km_reaction_47   id: Km     reactionID: reaction_47
	Km_reaction_47=0.1;
	
// Vs_reaction_48   id: Vs     reactionID: reaction_48
	Vs_reaction_48=1.6;
	
// n_reaction_48   id: n     reactionID: reaction_48
	n_reaction_48=2;
	
// K_reaction_48   id: K     reactionID: reaction_48
	K_reaction_48=0.6;
	
// k1_reaction_49   id: k1     reactionID: reaction_49
	k1_reaction_49=0.02;
	
// V_reaction_50   id: V     reactionID: reaction_50
	V_reaction_50=1.6;
	
// Km_reaction_50   id: Km     reactionID: reaction_50
	Km_reaction_50=0.4;
	
// k_reaction_51   id: k     reactionID: reaction_51
	k_reaction_51=1.7;
	
// k1_reaction_52   id: k1     reactionID: reaction_52
	k1_reaction_52=0.8;
	
// k2_reaction_52   id: k2     reactionID: reaction_52
	k2_reaction_52=0.4;
	
// V_reaction_53   id: V     reactionID: reaction_53
	V_reaction_53=4.4;
	
// Km_reaction_53   id: Km     reactionID: reaction_53
	Km_reaction_53=0.3;
	
// k1_reaction_54   id: k1     reactionID: reaction_54
	k1_reaction_54=0.02;
	
// V_reaction_55   id: V     reactionID: reaction_55
	V_reaction_55=0.8;
	
// Km_reaction_55   id: Km     reactionID: reaction_55
	Km_reaction_55=0.3;
	
// k1_reaction_56   id: k1     reactionID: reaction_56
	k1_reaction_56=0.02;
	



xdot=[
//x(1)   ID: species_0  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*k1_reaction_2* x(1) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(2)   ID: species_1  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*((k1_reaction_4* x(2) )-(k2_reaction_4* x(4) ))) + (-1)*(1)* (compartment_compartment_0*k1_reaction_34* x(2) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(3)   ID: species_2  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*k1_reaction_18* x(3) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(4)   ID: species_3  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*((k1_reaction_23* x(13) * x(4) )-(k2_reaction_23* x(16) ))) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*k1_reaction_40* x(4) ) + (1)*(1)* (compartment_compartment_0*((k1_reaction_4* x(2) )-(k2_reaction_4* x(4) ))) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(5)   ID: species_4  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*((k1_reaction_13* x(5) * x(9) )-(k2_reaction_13* x(11) ))) + (-1)*(1)* (compartment_compartment_0*k1_reaction_28* x(5) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(6)   ID: species_5  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*k1_reaction_6* x(6) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(7)   ID: species_6  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*k1_reaction_30* x(7) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(8)   ID: species_7  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*k1_reaction_22* x(8) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(9)   ID: species_8  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*((k1_reaction_13* x(5) * x(9) )-(k2_reaction_13* x(11) ))) + (-1)*(1)* (compartment_compartment_0*k1_reaction_27* x(9) ) + (1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(10)   ID: species_9  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*k1_reaction_29* x(10) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(11)   ID: species_10  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*((k1_reaction_16* x(11) )-(k2_reaction_16* x(13) ))) + (-1)*(1)* (compartment_compartment_0*k1_reaction_32* x(11) ) + (1)*(1)* (compartment_compartment_0*((k1_reaction_13* x(5) * x(9) )-(k2_reaction_13* x(11) ))) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(12)   ID: species_11  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*k1_reaction_31* x(12) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(13)   ID: species_12  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*((k1_reaction_23* x(13) * x(4) )-(k2_reaction_23* x(16) ))) + (-1)*(1)* (compartment_compartment_0*k1_reaction_46* x(13) ) + (1)*(1)* (compartment_compartment_0*((k1_reaction_16* x(11) )-(k2_reaction_16* x(13) ))) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(14)   ID: species_13  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*k1_reaction_19* x(14) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(15)   ID: species_14  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*k1_reaction_17* x(15) ) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(16)   ID: species_15  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*k1_reaction_38* x(16) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*((k1_reaction_23* x(13) * x(4) )-(k2_reaction_23* x(16) ))) );
	
//x(17)   ID: species_16  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*k1_reaction_49* x(17) ) + (-1)*(1)* (compartment_compartment_0*()) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(18)   ID: species_17  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*((k1_reaction_52* x(18) )-(k2_reaction_52* x(19) ))) + (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*k1_reaction_54* x(18) ) + (1)*(1)* (compartment_compartment_0*()) );
	
//x(19)   ID: species_18  initialValue: 0
	(1/compartment_compartment_0)*( (-1)*(1)* (compartment_compartment_0*()) + (-1)*(1)* (compartment_compartment_0*k1_reaction_56* x(19) ) + (1)*(1)* (compartment_compartment_0*((k1_reaction_52* x(18) )-(k2_reaction_52* x(19) ))) )
	];


	
endfunction
        x0=[0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19])

//real_variable:
	
	
//x(1)   id: species_0  initialValue: 0
	
//x(2)   id: species_1  initialValue: 0
	
//x(3)   id: species_2  initialValue: 0
	
//x(4)   id: species_3  initialValue: 0
	
//x(5)   id: species_4  initialValue: 0
	
//x(6)   id: species_5  initialValue: 0
	
//x(7)   id: species_6  initialValue: 0
	
//x(8)   id: species_7  initialValue: 0
	
//x(9)   id: species_8  initialValue: 0
	
//x(10)   id: species_9  initialValue: 0
	
//x(11)   id: species_10  initialValue: 0
	
//x(12)   id: species_11  initialValue: 0
	
//x(13)   id: species_12  initialValue: 0
	
//x(14)   id: species_13  initialValue: 0
	
//x(15)   id: species_14  initialValue: 0
	
//x(16)   id: species_15  initialValue: 0
	
//x(17)   id: species_16  initialValue: 0
	
//x(18)   id: species_17  initialValue: 0
	
//x(19)   id: species_18  initialValue: 0