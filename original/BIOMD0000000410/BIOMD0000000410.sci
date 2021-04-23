
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment__1   id: _1
	compartment__1=1;
		
// compartment__3   id: _3
	compartment__3=1;
		
// parameter_1_p   id: parameter_1
	parameter_1_p=0.01;
		
// parameter_2_p   id: parameter_2
	parameter_2_p=0;
		
// parameter_3_p   id: parameter_3
	parameter_3_p=0;
		
// parameter_4_p   id: parameter_4
	parameter_4_p=0;
		
// parameter_5_p   id: parameter_5
	parameter_5_p=0;
		
// parameter_6_p   id: parameter_6
	parameter_6_p=0;
		
// parameter_7_p   id: parameter_7
	parameter_7_p=0;
		
// parameter_8_p   id: parameter_8
	parameter_8_p=0;
		
// parameter_9_p   id: parameter_9
	parameter_9_p=0;
		
// parameter_10_p   id: parameter_10
	parameter_10_p=0;
		
// k1__29   id: k1     reactionID: _29
	k1__29=0.0492;
	
// Km__31   id: Km     reactionID: _31
	Km__31=40;
	
// V__31   id: V     reactionID: _31
	V__31=2.34;
	
// k1__33   id: k1     reactionID: _33
	k1__33=1.6;
	
// k2__33   id: k2     reactionID: _33
	k2__33=1.6;
	
// k1__35   id: k1     reactionID: _35
	k1__35=0.232;
	
// k1__37   id: k1     reactionID: _37
	k1__37=255.068;
	
// Km__39   id: Km     reactionID: _39
	Km__39=0.53;
	
// V__39   id: V     reactionID: _39
	V__39=3.51;
	
// k1__41   id: k1     reactionID: _41
	k1__41=0.2;
	
// k1__43   id: k1     reactionID: _43
	k1__43=2.9;
	
// k2__43   id: k2     reactionID: _43
	k2__43=0.2;
	
// k__77   id: k     reactionID: _77
	k__77=9.45;
	
// k1__86   id: k1     reactionID: _86
	k1__86=0.03333;
	
// k2__86   id: k2     reactionID: _86
	k2__86=0.03333;
	
// k1__103   id: k1     reactionID: _103
	k1__103=1;
	
// k2__103   id: k2     reactionID: _103
	k2__103=0.1;
	
// k__125   id: k     reactionID: _125
	k__125=1000;
	
// km__125   id: km     reactionID: _125
	km__125=0.0318;
	
// k__132   id: k     reactionID: _132
	k__132=3.51;
	
// km__132   id: km     reactionID: _132
	km__132=0.53;
	
// k1__139   id: k1     reactionID: _139
	k1__139=16.6;
	
// k1__149   id: k1     reactionID: _149
	k1__149=1000;
	
// k1__156   id: k1     reactionID: _156
	k1__156=0.156;
	
// k2__156   id: k2     reactionID: _156
	k2__156=0.156;
	
// k1__164   id: k1     reactionID: _164
	k1__164=0.16;
	
// k1__172   id: k1     reactionID: _172
	k1__172=0.1;
	
// k2__172   id: k2     reactionID: _172
	k2__172=0.01;
	
// k1__178   id: k1     reactionID: _178
	k1__178=1;
	
// k2__178   id: k2     reactionID: _178
	k2__178=0.01;
	
// k1__192   id: k1     reactionID: _192
	k1__192=1900;
	
// k1__194   id: k1     reactionID: _194
	k1__194=8.69;
	
// k2__194   id: k2     reactionID: _194
	k2__194=0.01;
	
// v_reaction_1   id: v     reactionID: reaction_1
	v_reaction_1=0.00146;
	
// k_reaction_2   id: k     reactionID: reaction_2
	k_reaction_2=0.0001;
	
// k1_reaction_2   id: k1     reactionID: reaction_2
	k1_reaction_2=0.031;
	
// k_reaction_3   id: k     reactionID: reaction_3
	k_reaction_3=0.0001;
	
// k1_reaction_3   id: k1     reactionID: reaction_3
	k1_reaction_3=0.1;
	
// k_reaction_4   id: k     reactionID: reaction_4
	k_reaction_4=0.000228;
	
// k1_reaction_4   id: k1     reactionID: reaction_4
	k1_reaction_4=0.0285;
	
// k_reaction_5   id: k     reactionID: reaction_5
	k_reaction_5=2E-5;
	
// k1_reaction_5   id: k1     reactionID: reaction_5
	k1_reaction_5=0.00055;
	
// v_reaction_6   id: v     reactionID: reaction_6
	v_reaction_6=0.0125;
	
// k1_reaction_7   id: k1     reactionID: reaction_7
	k1_reaction_7=1;
	
// k2_reaction_7   id: k2     reactionID: reaction_7
	k2_reaction_7=0.05288;
	
// k1_reaction_8   id: k1     reactionID: reaction_8
	k1_reaction_8=0.156;
	
// k2_reaction_8   id: k2     reactionID: reaction_8
	k2_reaction_8=0.336;
	
// k1_reaction_9   id: k1     reactionID: reaction_9
	k1_reaction_9=0.027778;
	
// k1_reaction_10   id: k1     reactionID: reaction_10
	k1_reaction_10=0.027778;
	
// k1_reaction_11   id: k1     reactionID: reaction_11
	k1_reaction_11=0.027778;
	
// k1_reaction_12   id: k1     reactionID: reaction_12
	k1_reaction_12=0.03333;
	
// v_reaction_13   id: v     reactionID: reaction_13
	v_reaction_13=0.0156;
	
// v_reaction_14   id: v     reactionID: reaction_14
	v_reaction_14=0.01183;
	
// k1_reaction_15   id: k1     reactionID: reaction_15
	k1_reaction_15=0.1266;
	
// k1_reaction_16   id: k1     reactionID: reaction_16
	k1_reaction_16=0.065;
	
// Km_reaction_17   id: Km     reactionID: reaction_17
	Km_reaction_17=3.51;
	
// V_reaction_17   id: V     reactionID: reaction_17
	V_reaction_17=0.53;
	
// k1_reaction_18   id: k1     reactionID: reaction_18
	k1_reaction_18=0.232;
	
// k1_reaction_19   id: k1     reactionID: reaction_19
	k1_reaction_19=0.2333;
	
// k2_reaction_19   id: k2     reactionID: reaction_19
	k2_reaction_19=1.8056;
	
// k1_reaction_20   id: k1     reactionID: reaction_20
	k1_reaction_20=0.2;
	
// k1_reaction_21   id: k1     reactionID: reaction_21
	k1_reaction_21=0.1;
	
// k2_reaction_21   id: k2     reactionID: reaction_21
	k2_reaction_21=0.2;
	
// v_reaction_22   id: v     reactionID: reaction_22
	v_reaction_22=0.04528;
	
// k1_reaction_23   id: k1     reactionID: reaction_23
	k1_reaction_23=0.2;
	
// Km_reaction_24   id: Km     reactionID: reaction_24
	Km_reaction_24=3.51;
	
// V_reaction_24   id: V     reactionID: reaction_24
	V_reaction_24=0.53;
	
// Km_reaction_25   id: Km     reactionID: reaction_25
	Km_reaction_25=40;
	
// V_reaction_25   id: V     reactionID: reaction_25
	V_reaction_25=2.34;
	
// Km_reaction_26   id: Km     reactionID: reaction_26
	Km_reaction_26=0.53;
	
// V_reaction_26   id: V     reactionID: reaction_26
	V_reaction_26=3.51;
	
// k_reaction_27   id: k     reactionID: reaction_27
	k_reaction_27=1000;
	
// km_reaction_27   id: km     reactionID: reaction_27
	km_reaction_27=0.0318;
	
// k_reaction_28   id: k     reactionID: reaction_28
	k_reaction_28=3.51;
	
// km_reaction_28   id: km     reactionID: reaction_28
	km_reaction_28=0.53;
	
// k1_reaction_29   id: k1     reactionID: reaction_29
	k1_reaction_29=0.2;
	
// k1_reaction_30   id: k1     reactionID: reaction_30
	k1_reaction_30=0.156;
	
// k2_reaction_30   id: k2     reactionID: reaction_30
	k2_reaction_30=0.336;
	
// k1_reaction_31   id: k1     reactionID: reaction_31
	k1_reaction_31=1;
	
// k2_reaction_31   id: k2     reactionID: reaction_31
	k2_reaction_31=0.1;
	
// k1_reaction_32   id: k1     reactionID: reaction_32
	k1_reaction_32=0.0492;
	
// k1_reaction_33   id: k1     reactionID: reaction_33
	k1_reaction_33=16.6;
	
// k1_reaction_34   id: k1     reactionID: reaction_34
	k1_reaction_34=1000;
	
// k1_reaction_35   id: k1     reactionID: reaction_35
	k1_reaction_35=255.068;
	
// k1_reaction_36   id: k1     reactionID: reaction_36
	k1_reaction_36=1.6;
	
// k2_reaction_36   id: k2     reactionID: reaction_36
	k2_reaction_36=1.6;
	
// k1_reaction_37   id: k1     reactionID: reaction_37
	k1_reaction_37=0.16;
	
// k1_reaction_38   id: k1     reactionID: reaction_38
	k1_reaction_38=0.232;
	
// k1_reaction_39   id: k1     reactionID: reaction_39
	k1_reaction_39=0.1;
	
// k1_reaction_40   id: k1     reactionID: reaction_40
	k1_reaction_40=0.232;
	
// k1_reaction_41   id: k1     reactionID: reaction_41
	k1_reaction_41=0.1;
	
// k2_reaction_41   id: k2     reactionID: reaction_41
	k2_reaction_41=0.2;
	
// k_reaction_42   id: k     reactionID: reaction_42
	k_reaction_42=2E-5;
	
// k1_reaction_42   id: k1     reactionID: reaction_42
	k1_reaction_42=0.00055;
	
// k1_reaction_43   id: k1     reactionID: reaction_43
	k1_reaction_43=0.05;
	
// k1_reaction_44   id: k1     reactionID: reaction_44
	k1_reaction_44=1;
	
// k2_reaction_44   id: k2     reactionID: reaction_44
	k2_reaction_44=0.05288;
	
// k1_reaction_45   id: k1     reactionID: reaction_45
	k1_reaction_45=0.1;
	
// k2_reaction_45   id: k2     reactionID: reaction_45
	k2_reaction_45=0.1;
	
// k1_reaction_46   id: k1     reactionID: reaction_46
	k1_reaction_46=2.9;
	
// k2_reaction_46   id: k2     reactionID: reaction_46
	k2_reaction_46=0.2;
	
// k_reaction_47   id: k     reactionID: reaction_47
	k_reaction_47=0.0001;
	
// k1_reaction_47   id: k1     reactionID: reaction_47
	k1_reaction_47=0.0022;
	
// k1_reaction_48   id: k1     reactionID: reaction_48
	k1_reaction_48=1.6;
	
// k2_reaction_48   id: k2     reactionID: reaction_48
	k2_reaction_48=1.6;
	
// k1_reaction_49   id: k1     reactionID: reaction_49
	k1_reaction_49=1900;
	
// k1_reaction_50   id: k1     reactionID: reaction_50
	k1_reaction_50=1;
	
// k2_reaction_50   id: k2     reactionID: reaction_50
	k2_reaction_50=0.01;
	
// k1_reaction_51   id: k1     reactionID: reaction_51
	k1_reaction_51=0.5;
	
// k1_reaction_52   id: k1     reactionID: reaction_52
	k1_reaction_52=0.05;
	
// k2_reaction_52   id: k2     reactionID: reaction_52
	k2_reaction_52=3;
	
// k1_reaction_53   id: k1     reactionID: reaction_53
	k1_reaction_53=0.463;
	
// k2_reaction_53   id: k2     reactionID: reaction_53
	k2_reaction_53=0.102;
	
// k1_reaction_54   id: k1     reactionID: reaction_54
	k1_reaction_54=0.463;
	
// k2_reaction_54   id: k2     reactionID: reaction_54
	k2_reaction_54=0.102;
	
// k1_reaction_55   id: k1     reactionID: reaction_55
	k1_reaction_55=0.2;
	
// k2_reaction_55   id: k2     reactionID: reaction_55
	k2_reaction_55=0.2;
	
// k1_reaction_56   id: k1     reactionID: reaction_56
	k1_reaction_56=0.2;
	
// k2_reaction_56   id: k2     reactionID: reaction_56
	k2_reaction_56=0.2;
	
// k1_reaction_57   id: k1     reactionID: reaction_57
	k1_reaction_57=0.2;
	
// k2_reaction_57   id: k2     reactionID: reaction_57
	k2_reaction_57=0.2;
	
// k1_reaction_58   id: k1     reactionID: reaction_58
	k1_reaction_58=1.6;
	
// k2_reaction_58   id: k2     reactionID: reaction_58
	k2_reaction_58=1.6;
	
// k1_reaction_59   id: k1     reactionID: reaction_59
	k1_reaction_59=0.2;
	
// k2_reaction_59   id: k2     reactionID: reaction_59
	k2_reaction_59=0.2;
	
// k1_reaction_60   id: k1     reactionID: reaction_60
	k1_reaction_60=0.1;
	
// k2_reaction_60   id: k2     reactionID: reaction_60
	k2_reaction_60=0.1;
	
// k1_reaction_61   id: k1     reactionID: reaction_61
	k1_reaction_61=0.1;
	
// k2_reaction_61   id: k2     reactionID: reaction_61
	k2_reaction_61=0.1;
	
// k1_reaction_62   id: k1     reactionID: reaction_62
	k1_reaction_62=1;
	
// k2_reaction_62   id: k2     reactionID: reaction_62
	k2_reaction_62=1;
	
// k1_reaction_63   id: k1     reactionID: reaction_63
	k1_reaction_63=1;
	
// k2_reaction_63   id: k2     reactionID: reaction_63
	k2_reaction_63=1;
	
// k1_reaction_64   id: k1     reactionID: reaction_64
	k1_reaction_64=0.005;
	
// k1_reaction_65   id: k1     reactionID: reaction_65
	k1_reaction_65=0.005;
	
// v_reaction_66   id: v     reactionID: reaction_66
	v_reaction_66=2E-5;
	
// k1_reaction_67   id: k1     reactionID: reaction_67
	k1_reaction_67=0.1;
	
// k1_reaction_68   id: k1     reactionID: reaction_68
	k1_reaction_68=0.1;
	
// k1_reaction_69   id: k1     reactionID: reaction_69
	k1_reaction_69=0.1;
	
// k1_reaction_70   id: k1     reactionID: reaction_70
	k1_reaction_70=0.1;
	
// k2_reaction_70   id: k2     reactionID: reaction_70
	k2_reaction_70=0.1;
	



xdot=[
//x(1)   ID: _75  initialValue: 0
	(1/compartment__1)*( (-1)*(2)* (compartment__1*()) + (-1)*(1)* (compartment__1*k1_reaction_11* x(1) ) + (1)*(1)* (compartment__1*()) + (1)*(2)* (compartment__1*k1_reaction_12* x(2) ) );
	
//x(2)   ID: _79  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (compartment__1*((k1__86* x(2) *(power( x(3) ,( 2 ))))-(k2__86* x(4) ))) + (-1)*(1)* (compartment__1*k1_reaction_12* x(2) ) + (1)*(1)* (compartment__1*()) );
	
//x(3)   ID: _84  initialValue: 0
	(1/compartment__1)*( (-1)*(2)* (compartment__1*((k1__86* x(2) *(power( x(3) ,( 2 ))))-(k2__86* x(4) ))) + (-1)*(1)* (compartment__1*k1_reaction_10* x(3) ) + (1)*(1)* (compartment__1*()) );
	
//x(4)   ID: _96  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (compartment__1*k1__192* x(12) * x(4) ) + (-1)*(1)* (compartment__1*((k1__194* x(11) * x(4) )-(k2__194* x(13) ))) + (-1)*(1)* (compartment__1*k1_reaction_9* x(4) ) + (-1)*(1)* (compartment__1*k1_reaction_49* x(23) * x(4) ) + (1)*(1)* (compartment__1*((k1__86* x(2) *(power( x(3) ,( 2 ))))-(k2__86* x(4) ))) );
	
//x(5)   ID: _99  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (compartment__1*((k1__103* x(6) * x(5) )-(k2__103* x(7) ))) + (-1)*(1)* (compartment__1*()) + (-1)*(1)* ((k1_reaction_8* x(5) )-(k2_reaction_8* x(35) )) + (-1)*(1)* (compartment__1*k1_reaction_20* x(5) ) + (-1)*(1)* (compartment__1*((k1_reaction_61* x(5) * x(20) )-(k2_reaction_61* x(25) ))) + (1)*(1)* (compartment__1*()) + (1)*(1)* (compartment__1*()) );
	
//x(6)   ID: _101  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (compartment__1*((k1__103* x(6) * x(5) )-(k2__103* x(7) ))) + (-1)*(1)* (compartment__1*k1_reaction_16* x(6) ) + (-1)*(1)* (compartment__1*((k1_reaction_31* x(6) * x(16) )-(k2_reaction_31* x(18) ))) + (1)*(1)* (compartment__1*()) + (1)*(1)* (compartment__1*()) + (1)*(1)* (compartment__1*()) );
	
//x(7)   ID: _105  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (compartment__1*()) + (1)*(1)* (compartment__1*((k1__103* x(6) * x(5) )-(k2__103* x(7) ))) );
	
//x(8)   ID: _129  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (k1__139* x(8) ) + (-1)*(2)* (compartment__1*k1__149* x(9) *(power( x(8) ,( 2 )))) + (-1)*(1)* (compartment__1*()) + (1)*(1)* (compartment__1*()) + (1)*(1)* (compartment__1*()) );
	
//x(9)   ID: _147  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (compartment__1*k1__149* x(9) *(power( x(8) ,( 2 )))) + (-1)*(1)* ((k1__156* x(9) )-(k2__156* x(29) )) + (-1)*(1)* (compartment__1*k1_reaction_15* x(9) ) + (-1)*(1)* (compartment__1*k1_reaction_34* x(9) *(power( x(17) ,( 2 )))) + (1)*(1)* (compartment__1*()) );
	
//x(10)   ID: _153  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (k1__164* x(10) ) + (1)*(1)* (compartment__1*k1__149* x(9) *(power( x(8) ,( 2 )))) );
	
//x(11)   ID: _174  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (compartment__1*((k1__194* x(11) * x(4) )-(k2__194* x(13) ))) + (-1)*(1)* (compartment__1*()) + (1)*(1)* ((k1__172* x(36) )-(k2__172* x(11) )) + (1)*(1)* (compartment__1*()) );
	
//x(12)   ID: _181  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (compartment__1*k1__192* x(12) * x(4) ) + (1)*(1)* ((k1__178* x(37) )-(k2__178* x(12) )) );
	
//x(13)   ID: _198  initialValue: 0
	(1/compartment__1)*( (1)*(1)* (compartment__1*((k1__194* x(11) * x(4) )-(k2__194* x(13) ))) );
	
//x(14)   ID: species_1  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (compartment__1*()) + (1)*(1)* (compartment__1*()) + (1)*(1)* ((k1_reaction_19* x(33) )-(k2_reaction_19* x(14) )) );
	
//x(15)   ID: species_2  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (compartment__1*k1_reaction_18* x(15) ) + (-1)*(1)* ((k1_reaction_21* x(15) )-(k2_reaction_21* x(31) )) + (1)*(1)* (compartment__1*()) );
	
//x(16)   ID: species_3  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (compartment__1*k1_reaction_23* x(16) ) + (-1)*(1)* (compartment__1*()) + (-1)*(1)* ((k1_reaction_30* x(16) )-(k2_reaction_30* x(39) )) + (-1)*(1)* (compartment__1*((k1_reaction_31* x(6) * x(16) )-(k2_reaction_31* x(18) ))) + (-1)*(1)* (compartment__1*((k1_reaction_45* x(16) * x(20) )-(k2_reaction_45* x(21) ))) + (1)*(1)* (compartment__1*()) + (1)*(1)* (compartment__1*()) );
	
//x(17)   ID: species_4  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (compartment__1*()) + (-1)*(1)* (k1_reaction_33* x(17) ) + (-1)*(2)* (compartment__1*k1_reaction_34* x(9) *(power( x(17) ,( 2 )))) + (1)*(1)* (compartment__1*()) + (1)*(1)* (compartment__1*()) );
	
//x(18)   ID: species_5  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (compartment__1*()) + (1)*(1)* (compartment__1*((k1_reaction_31* x(6) * x(16) )-(k2_reaction_31* x(18) ))) );
	
//x(19)   ID: species_6  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (k1_reaction_37* x(19) ) + (1)*(1)* (compartment__1*k1_reaction_34* x(9) *(power( x(17) ,( 2 )))) );
	
//x(20)   ID: species_7  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (compartment__1*k1_reaction_40* x(20) ) + (-1)*(1)* ((k1_reaction_41* x(20) )-(k2_reaction_41* x(44) )) + (-1)*(1)* (compartment__1*((k1_reaction_45* x(16) * x(20) )-(k2_reaction_45* x(21) ))) + (-1)*(1)* (compartment__1*((k1_reaction_61* x(5) * x(20) )-(k2_reaction_61* x(25) ))) + (1)*(1)* (compartment__1*()) );
	
//x(21)   ID: species_8  initialValue: 0
	(1/compartment__1)*( (1)*(1)* (compartment__1*((k1_reaction_45* x(16) * x(20) )-(k2_reaction_45* x(21) ))) );
	
//x(22)   ID: species_9  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (compartment__1*()) + (1)*(1)* (compartment__1*()) + (1)*(1)* ((k1_reaction_52* x(46) )-(k2_reaction_52* x(22) )) );
	
//x(23)   ID: species_10  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (compartment__1*k1_reaction_49* x(23) * x(4) ) + (1)*(1)* ((k1_reaction_50* x(47) )-(k2_reaction_50* x(23) )) );
	
//x(24)   ID: species_11  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* ((k1_reaction_59* x(24) * x(50) )-(k2_reaction_59* x(51) )) + (1)*(1)* ((k1_reaction_58* x(30) *(power( x(44) ,( 2 ))))-(k2_reaction_58* x(24) )) );
	
//x(25)   ID: species_12  initialValue: 0
	(1/compartment__1)*( (1)*(1)* (compartment__1*((k1_reaction_61* x(5) * x(20) )-(k2_reaction_61* x(25) ))) );
	
//x(26)   ID: species_13  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (k1__35*(power( x(33) ,( 3 )))* x(26) ) + (-1)*(1)* (k1_reaction_68* x(26) *(power( x(53) ,( 3 )))) + (1)*(1)* ((k1_reaction_62*(power( x(34) ,( 3 )))*(power( x(31) ,( 3 ))))-(k2_reaction_62* x(26) )) );
	
//x(27)   ID: species_14  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (k1_reaction_38* x(27) ) + (-1)*(1)* (k1_reaction_69* x(27) *(power( x(53) ,( 3 )))) + (1)*(1)* ((k1_reaction_63*(power( x(42) ,( 3 )))*(power( x(31) ,( 3 ))))-(k2_reaction_63* x(27) )) );
	
//x(28)   ID: species_15  initialValue: 0
	(1/compartment__1)*( (-1)*(1)* (compartment__1*k1_reaction_67* x(28) ) + (-1)*(1)* ((k1_reaction_70* x(28) )-(k2_reaction_70* x(53) )) + (1)*(1)* (compartment__1*()) );
	
//x(29)   ID: _5  initialValue: 0
	(1/compartment__3)*( (-1)*(1)* (compartment__3*k1__37* x(29) *(power( x(34) ,( 2 )))) + (-1)*(1)* (compartment__3*((k1_reaction_7* x(29) * x(31) )-(k2_reaction_7* x(38) ))) + (-1)*(1)* (compartment__3*k1_reaction_35* x(29) *(power( x(42) ,( 2 )))) + (-1)*(1)* (compartment__3*((k1_reaction_44* x(29) * x(44) )-(k2_reaction_44* x(45) ))) + (1)*(1)* (compartment__3*k1__29* x(49) ) + (1)*(1)* ((k1__156* x(9) )-(k2__156* x(29) )) + (1)*(1)* (compartment__3*k1_reaction_32* x(41) ) );
	
//x(30)   ID: _9  initialValue: 0
	(1/compartment__3)*( (-1)*(1)* (compartment__3*()) + (-1)*(1)* (compartment__3*((k1__33* x(30) *(power( x(31) ,( 2 ))))-(k2__33* x(32) ))) + (-1)*(1)* (compartment__3*((k1_reaction_54* x(30) * x(50) )-(k2_reaction_54* x(52) ))) + (-1)*(1)* ((k1_reaction_58* x(30) *(power( x(44) ,( 2 ))))-(k2_reaction_58* x(24) )) + (-1)*(1)* (compartment__3*k1_reaction_64* x(30) ) + (1)*(1)* (compartment__3*k1__37* x(29) *(power( x(34) ,( 2 )))) + (1)*(1)* (k1__164* x(10) ) );
	
//x(31)   ID: _11  initialValue: 0
	(1/compartment__3)*( (-1)*(2)* (compartment__3*((k1__33* x(30) *(power( x(31) ,( 2 ))))-(k2__33* x(32) ))) + (-1)*(1)* (compartment__3*((k1_reaction_7* x(29) * x(31) )-(k2_reaction_7* x(38) ))) + (-1)*(2)* (compartment__3*((k1_reaction_36* x(40) *(power( x(31) ,( 2 ))))-(k2_reaction_36* x(43) ))) + (-1)*(3)* ((k1_reaction_62*(power( x(34) ,( 3 )))*(power( x(31) ,( 3 ))))-(k2_reaction_62* x(26) )) + (-1)*(3)* ((k1_reaction_63*(power( x(42) ,( 3 )))*(power( x(31) ,( 3 ))))-(k2_reaction_63* x(27) )) + (1)*(1)* ((k1_reaction_21* x(15) )-(k2_reaction_21* x(31) )) );
	
//x(32)   ID: _13  initialValue: 0
	(1/compartment__3)*( (-1)*(1)* (compartment__3*((k1_reaction_56* x(32) * x(50) )-(k2_reaction_56* x(51) ))) + (1)*(1)* (compartment__3*((k1__33* x(30) *(power( x(31) ,( 2 ))))-(k2__33* x(32) ))) );
	
//x(33)   ID: _15  initialValue: 0
	(1/compartment__3)*( (-1)*(3)* (k1__35*(power( x(33) ,( 3 )))* x(26) ) + (-1)*(1)* (compartment__3*k1__41* x(35) * x(33) ) + (-1)*(1)* (compartment__3*((k1__43* x(33) * x(36) )-(k2__43* x(37) ))) + (-1)*(1)* ((k1_reaction_19* x(33) )-(k2_reaction_19* x(14) )) );
	
//x(34)   ID: _19  initialValue: 0
	(1/compartment__3)*( (-1)*(2)* (compartment__3*k1__37* x(29) *(power( x(34) ,( 2 )))) + (-1)*(1)* (compartment__3*()) + (-1)*(3)* ((k1_reaction_62*(power( x(34) ,( 3 )))*(power( x(31) ,( 3 ))))-(k2_reaction_62* x(26) )) + (1)*(3)* (k1__35*(power( x(33) ,( 3 )))* x(26) ) + (1)*(1)* (k1__139* x(8) ) + (1)*(3)* (k1_reaction_68* x(26) *(power( x(53) ,( 3 )))) );
	
//x(35)   ID: _21  initialValue: 0
	(1/compartment__3)*( (-1)*(1)* (compartment__3*k1__41* x(35) * x(33) ) + (1)*(1)* (compartment__3*()) + (1)*(1)* ((k1_reaction_8* x(5) )-(k2_reaction_8* x(35) )) + (1)*(2)* (compartment__3*k1_reaction_32* x(41) ) );
	
//x(36)   ID: _25  initialValue: 0
	(1/compartment__3)*( (-1)*(1)* (compartment__3*((k1__43* x(33) * x(36) )-(k2__43* x(37) ))) + (-1)*(1)* ((k1__172* x(36) )-(k2__172* x(11) )) + (-1)*(1)* (compartment__3*((k1_reaction_46* x(46) * x(36) )-(k2_reaction_46* x(47) ))) );
	
//x(37)   ID: _27  initialValue: 0
	(1/compartment__3)*( (-1)*(1)* ((k1__178* x(37) )-(k2__178* x(12) )) + (1)*(1)* (compartment__3*((k1__43* x(33) * x(36) )-(k2__43* x(37) ))) );
	
//x(38)   ID: species_16  initialValue: 0
	(1/compartment__3)*( (1)*(1)* (compartment__3*((k1_reaction_7* x(29) * x(31) )-(k2_reaction_7* x(38) ))) );
	
//x(39)   ID: species_17  initialValue: 0
	(1/compartment__3)*( (-1)*(1)* (compartment__3*k1_reaction_29* x(39) ) + (1)*(2)* (compartment__3*k1__29* x(49) ) + (1)*(1)* (compartment__3*()) + (1)*(1)* ((k1_reaction_30* x(16) )-(k2_reaction_30* x(39) )) );
	
//x(40)   ID: species_18  initialValue: 0
	(1/compartment__3)*( (-1)*(1)* (compartment__3*()) + (-1)*(1)* (compartment__3*((k1_reaction_36* x(40) *(power( x(31) ,( 2 ))))-(k2_reaction_36* x(43) ))) + (-1)*(1)* (compartment__3*((k1_reaction_48* x(40) *(power( x(44) ,( 2 ))))-(k2_reaction_48* x(48) ))) + (-1)*(1)* (compartment__3*((k1_reaction_53* x(40) * x(50) )-(k2_reaction_53* x(52) ))) + (-1)*(1)* (compartment__3*k1_reaction_65* x(40) ) + (1)*(1)* (compartment__3*k1_reaction_35* x(29) *(power( x(42) ,( 2 )))) + (1)*(1)* (k1_reaction_37* x(19) ) );
	
//x(41)   ID: species_19  initialValue: 0
	(1/compartment__3)*( (-1)*(1)* (compartment__3*k1_reaction_32* x(41) ) + (1)*(1)* (compartment__3*()) );
	
//x(42)   ID: species_20  initialValue: 0
	(1/compartment__3)*( (-1)*(1)* (compartment__3*()) + (-1)*(2)* (compartment__3*k1_reaction_35* x(29) *(power( x(42) ,( 2 )))) + (-1)*(3)* ((k1_reaction_63*(power( x(42) ,( 3 )))*(power( x(31) ,( 3 ))))-(k2_reaction_63* x(27) )) + (1)*(1)* (k1_reaction_33* x(17) ) + (1)*(1)* (k1_reaction_38* x(27) ) + (1)*(1)* (k1_reaction_69* x(27) *(power( x(53) ,( 3 )))) );
	
//x(43)   ID: species_21  initialValue: 0
	(1/compartment__3)*( (-1)*(1)* (compartment__3*((k1_reaction_55* x(43) * x(50) )-(k2_reaction_55* x(51) ))) + (1)*(1)* (compartment__3*((k1_reaction_36* x(40) *(power( x(31) ,( 2 ))))-(k2_reaction_36* x(43) ))) );
	
//x(44)   ID: species_22  initialValue: 0
	(1/compartment__3)*( (-1)*(1)* (compartment__3*((k1_reaction_44* x(29) * x(44) )-(k2_reaction_44* x(45) ))) + (-1)*(2)* (compartment__3*((k1_reaction_48* x(40) *(power( x(44) ,( 2 ))))-(k2_reaction_48* x(48) ))) + (-1)*(2)* ((k1_reaction_58* x(30) *(power( x(44) ,( 2 ))))-(k2_reaction_58* x(24) )) + (1)*(1)* ((k1_reaction_41* x(20) )-(k2_reaction_41* x(44) )) );
	
//x(45)   ID: species_23  initialValue: 0
	(1/compartment__3)*( (-1)*(1)* (compartment__3*((k1_reaction_60* x(45) * x(50) )-(k2_reaction_60* x(51) ))) + (1)*(1)* (compartment__3*((k1_reaction_44* x(29) * x(44) )-(k2_reaction_44* x(45) ))) );
	
//x(46)   ID: species_24  initialValue: 0
	(1/compartment__3)*( (-1)*(1)* (compartment__3*((k1_reaction_46* x(46) * x(36) )-(k2_reaction_46* x(47) ))) + (-1)*(1)* ((k1_reaction_52* x(46) )-(k2_reaction_52* x(22) )) );
	
//x(47)   ID: species_25  initialValue: 0
	(1/compartment__3)*( (-1)*(1)* ((k1_reaction_50* x(47) )-(k2_reaction_50* x(23) )) + (1)*(1)* (compartment__3*((k1_reaction_46* x(46) * x(36) )-(k2_reaction_46* x(47) ))) );
	
//x(48)   ID: species_26  initialValue: 0
	(1/compartment__3)*( (-1)*(1)* (compartment__3*((k1_reaction_57* x(48) * x(50) )-(k2_reaction_57* x(51) ))) + (1)*(1)* (compartment__3*((k1_reaction_48* x(40) *(power( x(44) ,( 2 ))))-(k2_reaction_48* x(48) ))) );
	
//x(49)   ID: species_27  initialValue: 0
	(1/compartment__3)*( (-1)*(1)* (compartment__3*k1__29* x(49) ) + (1)*(1)* (compartment__3*()) );
	
//x(50)   ID: species_28  initialValue: 0.0999999951844375
	(1/compartment__3)*( (-1)*(1)* (compartment__3*((k1_reaction_53* x(40) * x(50) )-(k2_reaction_53* x(52) ))) + (-1)*(1)* (compartment__3*((k1_reaction_54* x(30) * x(50) )-(k2_reaction_54* x(52) ))) + (-1)*(1)* (compartment__3*((k1_reaction_55* x(43) * x(50) )-(k2_reaction_55* x(51) ))) + (-1)*(1)* (compartment__3*((k1_reaction_56* x(32) * x(50) )-(k2_reaction_56* x(51) ))) + (-1)*(1)* (compartment__3*((k1_reaction_57* x(48) * x(50) )-(k2_reaction_57* x(51) ))) + (-1)*(1)* ((k1_reaction_59* x(24) * x(50) )-(k2_reaction_59* x(51) )) + (-1)*(1)* (compartment__3*((k1_reaction_60* x(45) * x(50) )-(k2_reaction_60* x(51) ))) );
	
//x(51)   ID: species_29  initialValue: 0
	(1/compartment__3)*( (1)*(1)* (compartment__3*((k1_reaction_55* x(43) * x(50) )-(k2_reaction_55* x(51) ))) + (1)*(1)* (compartment__3*((k1_reaction_56* x(32) * x(50) )-(k2_reaction_56* x(51) ))) + (1)*(1)* (compartment__3*((k1_reaction_57* x(48) * x(50) )-(k2_reaction_57* x(51) ))) + (1)*(1)* ((k1_reaction_59* x(24) * x(50) )-(k2_reaction_59* x(51) )) + (1)*(1)* (compartment__3*((k1_reaction_60* x(45) * x(50) )-(k2_reaction_60* x(51) ))) );
	
//x(52)   ID: species_30  initialValue: 0
	(1/compartment__3)*( (1)*(1)* (compartment__3*((k1_reaction_53* x(40) * x(50) )-(k2_reaction_53* x(52) ))) + (1)*(1)* (compartment__3*((k1_reaction_54* x(30) * x(50) )-(k2_reaction_54* x(52) ))) );
	
//x(53)   ID: species_31  initialValue: 0
	(1/compartment__3)*( (-1)*(3)* (k1_reaction_68* x(26) *(power( x(53) ,( 3 )))) + (-1)*(3)* (k1_reaction_69* x(27) *(power( x(53) ,( 3 )))) + (1)*(1)* ((k1_reaction_70* x(28) )-(k2_reaction_70* x(53) )) )
	];


	
endfunction
        x0=[0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0.0999999951844375;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53])

//real_variable:
	
	
//x(1)   id: _75  initialValue: 0
	
//x(2)   id: _79  initialValue: 0
	
//x(3)   id: _84  initialValue: 0
	
//x(4)   id: _96  initialValue: 0
	
//x(5)   id: _99  initialValue: 0
	
//x(6)   id: _101  initialValue: 0
	
//x(7)   id: _105  initialValue: 0
	
//x(8)   id: _129  initialValue: 0
	
//x(9)   id: _147  initialValue: 0
	
//x(10)   id: _153  initialValue: 0
	
//x(11)   id: _174  initialValue: 0
	
//x(12)   id: _181  initialValue: 0
	
//x(13)   id: _198  initialValue: 0
	
//x(14)   id: species_1  initialValue: 0
	
//x(15)   id: species_2  initialValue: 0
	
//x(16)   id: species_3  initialValue: 0
	
//x(17)   id: species_4  initialValue: 0
	
//x(18)   id: species_5  initialValue: 0
	
//x(19)   id: species_6  initialValue: 0
	
//x(20)   id: species_7  initialValue: 0
	
//x(21)   id: species_8  initialValue: 0
	
//x(22)   id: species_9  initialValue: 0
	
//x(23)   id: species_10  initialValue: 0
	
//x(24)   id: species_11  initialValue: 0
	
//x(25)   id: species_12  initialValue: 0
	
//x(26)   id: species_13  initialValue: 0
	
//x(27)   id: species_14  initialValue: 0
	
//x(28)   id: species_15  initialValue: 0
	
//x(29)   id: _5  initialValue: 0
	
//x(30)   id: _9  initialValue: 0
	
//x(31)   id: _11  initialValue: 0
	
//x(32)   id: _13  initialValue: 0
	
//x(33)   id: _15  initialValue: 0
	
//x(34)   id: _19  initialValue: 0
	
//x(35)   id: _21  initialValue: 0
	
//x(36)   id: _25  initialValue: 0
	
//x(37)   id: _27  initialValue: 0
	
//x(38)   id: species_16  initialValue: 0
	
//x(39)   id: species_17  initialValue: 0
	
//x(40)   id: species_18  initialValue: 0
	
//x(41)   id: species_19  initialValue: 0
	
//x(42)   id: species_20  initialValue: 0
	
//x(43)   id: species_21  initialValue: 0
	
//x(44)   id: species_22  initialValue: 0
	
//x(45)   id: species_23  initialValue: 0
	
//x(46)   id: species_24  initialValue: 0
	
//x(47)   id: species_25  initialValue: 0
	
//x(48)   id: species_26  initialValue: 0
	
//x(49)   id: species_27  initialValue: 0
	
//x(50)   id: species_28  initialValue: 0.0999999951844375
	
//x(51)   id: species_29  initialValue: 0
	
//x(52)   id: species_30  initialValue: 0
	
//x(53)   id: species_31  initialValue: 0