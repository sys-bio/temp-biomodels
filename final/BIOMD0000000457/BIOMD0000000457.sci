
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartment_1   id: compartment_1
	compartment_compartment_1=4E-14;
		
// parameter_1_p   id: parameter_1
	parameter_1_p=7.16464328895E-7;
		
// parameter_2_p   id: parameter_2
	parameter_2_p=8.10035535716195E9;
		
// parameter_3_p   id: parameter_3
	parameter_3_p=0.284007213965168;
		
// parameter_4_p   id: parameter_4
	parameter_4_p=2.83243562938545E4;
		
// parameter_5_p   id: parameter_5
	parameter_5_p=3.10377169466493E9;
		
// parameter_6_p   id: parameter_6
	parameter_6_p=0.00322599;
		
// parameter_7_p   id: parameter_7
	parameter_7_p=2306950;
		
// parameter_8_p   id: parameter_8
	parameter_8_p=2.24052E9;
		
// parameter_9_p   id: parameter_9
	parameter_9_p=7.29116740026381E4;
		
// parameter_10_p   id: parameter_10
	parameter_10_p=0;
		
// parameter_11_p   id: parameter_11
	parameter_11_p=7.16464328895E-7;
		
// parameter_12_p   id: parameter_12
	parameter_12_p=2.86585731558E-20;
		
// species_5_s   id: species_5
	species_5_s=2.59334189247694E-5;
		
// species_39_s   id: species_39
	species_39_s=0.000518668391964828;
		
// species_45_s   id: species_45
	species_45_s=0.000259333683546025;
		
// k1_reaction_1   id: k1     reactionID: reaction_1
	k1_reaction_1=19609600;
	
// k2_reaction_1   id: k2     reactionID: reaction_1
	k2_reaction_1=34.8025;
	
// k1_reaction_2   id: k1     reactionID: reaction_2
	k1_reaction_2=533.26;
	
// k2_reaction_2   id: k2     reactionID: reaction_2
	k2_reaction_2=3.97698;
	
// k1_reaction_3   id: k1     reactionID: reaction_3
	k1_reaction_3=104798;
	
// k2_reaction_3   id: k2     reactionID: reaction_3
	k2_reaction_3=6.32998;
	
// k1_reaction_4   id: k1     reactionID: reaction_4
	k1_reaction_4=20024500;
	
// k2_reaction_4   id: k2     reactionID: reaction_4
	k2_reaction_4=0.406929;
	
// k1_reaction_5   id: k1     reactionID: reaction_5
	k1_reaction_5=160265000;
	
// k2_reaction_5   id: k2     reactionID: reaction_5
	k2_reaction_5=57.1854;
	
// k1_reaction_6   id: k1     reactionID: reaction_6
	k1_reaction_6=3865650;
	
// k2_reaction_6   id: k2     reactionID: reaction_6
	k2_reaction_6=31.1969;
	
// k1_reaction_7   id: k1     reactionID: reaction_7
	k1_reaction_7=814356;
	
// k1_reaction_8   id: k1     reactionID: reaction_8
	k1_reaction_8=19725400;
	
// k1_reaction_9   id: k1     reactionID: reaction_9
	k1_reaction_9=43327400;
	
// k2_reaction_9   id: k2     reactionID: reaction_9
	k2_reaction_9=1977.92;
	
// k1_reaction_10   id: k1     reactionID: reaction_10
	k1_reaction_10=5026500;
	
// k2_reaction_10   id: k2     reactionID: reaction_10
	k2_reaction_10=0.00774034;
	
// k1_reaction_11   id: k1     reactionID: reaction_11
	k1_reaction_11=57991200;
	
// k2_reaction_11   id: k2     reactionID: reaction_11
	k2_reaction_11=2.70026;
	
// k1_reaction_12   id: k1     reactionID: reaction_12
	k1_reaction_12=307831;
	
// k2_reaction_12   id: k2     reactionID: reaction_12
	k2_reaction_12=2.38184;
	
// k1_reaction_13   id: k1     reactionID: reaction_13
	k1_reaction_13=3.5208E14;
	
// k2_reaction_13   id: k2     reactionID: reaction_13
	k2_reaction_13=0.785013;
	
// k1_reaction_14   id: k1     reactionID: reaction_14
	k1_reaction_14=1062040000;
	
// k1_reaction_15   id: k1     reactionID: reaction_15
	k1_reaction_15=8.7134E10;
	
// k2_reaction_15   id: k2     reactionID: reaction_15
	k2_reaction_15=1.2395;
	
// k1_reaction_16   id: k1     reactionID: reaction_16
	k1_reaction_16=304.768;
	
// k2_reaction_16   id: k2     reactionID: reaction_16
	k2_reaction_16=45.4082;
	
// k1_reaction_17   id: k1     reactionID: reaction_17
	k1_reaction_17=561005000;
	
// k2_reaction_17   id: k2     reactionID: reaction_17
	k2_reaction_17=47.8215;
	
// k_reaction_18   id: k     reactionID: reaction_18
	k_reaction_18=1.3072E13;
	
// k1_reaction_19   id: k1     reactionID: reaction_19
	k1_reaction_19=1170250;
	
// k2_reaction_19   id: k2     reactionID: reaction_19
	k2_reaction_19=14.2912;
	
// k1_reaction_20   id: k1     reactionID: reaction_20
	k1_reaction_20=13.295;
	
// k2_reaction_20   id: k2     reactionID: reaction_20
	k2_reaction_20=43354100;
	
// k1_reaction_21   id: k1     reactionID: reaction_21
	k1_reaction_21=3.95919E4;
	
// k2_reaction_21   id: k2     reactionID: reaction_21
	k2_reaction_21=8.80234E-6;
	
// k1_reaction_22   id: k1     reactionID: reaction_22
	k1_reaction_22=1.80542;
	
// k2_reaction_22   id: k2     reactionID: reaction_22
	k2_reaction_22=1.29513;
	
// k1_reaction_23   id: k1     reactionID: reaction_23
	k1_reaction_23=93.5995;
	
// k2_reaction_23   id: k2     reactionID: reaction_23
	k2_reaction_23=4.37144E4;
	
// k1_reaction_138   id: k1     reactionID: reaction_138
	k1_reaction_138=1.42008E4;
	
// k2_reaction_138   id: k2     reactionID: reaction_138
	k2_reaction_138=1.80326E4;
	
// k1_reaction_139   id: k1     reactionID: reaction_139
	k1_reaction_139=1600000000;
	
// k2_reaction_139   id: k2     reactionID: reaction_139
	k2_reaction_139=3.53781E4;
	
// k1_reaction_140   id: k1     reactionID: reaction_140
	k1_reaction_140=153068000;
	
// k1_reaction_141   id: k1     reactionID: reaction_141
	k1_reaction_141=3.5491E9;
	



xdot=[
//x(1)   ID: species_1  initialValue: 1.17510804502861E-6
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_1* x(1) * x(2) )-(k2_reaction_1* x(3) ))) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(2)   ID: species_2  initialValue: 2.26917415591732E-7
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_1* x(1) * x(2) )-(k2_reaction_1* x(3) ))) + (1)*(1)* (compartment_compartment_1*((k1_reaction_2* x(3) )-(k2_reaction_2* x(4) * x(2) ))) );
	
//x(3)   ID: species_3  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_2* x(3) )-(k2_reaction_2* x(4) * x(2) ))) + (1)*(1)* (compartment_compartment_1*((k1_reaction_1* x(1) * x(2) )-(k2_reaction_1* x(3) ))) );
	
//x(4)   ID: species_4  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_3* x(4) *species_5_s)-(k2_reaction_3* x(5) ))) + (1)*(1)* (compartment_compartment_1*((k1_reaction_2* x(3) )-(k2_reaction_2* x(4) * x(2) ))) );
	
//x(5)   ID: species_6  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_5* x(5) * x(8) )-(k2_reaction_5* x(9) ))) + (1)*(1)* (compartment_compartment_1*((k1_reaction_3* x(4) *species_5_s)-(k2_reaction_3* x(5) ))) );
	
//x(6)   ID: species_7  initialValue: 9.31982242608899E-7
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_4* x(6) * x(7) )-(k2_reaction_4* x(8) ))) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(7)   ID: species_8  initialValue: 8.10419341399042E-7
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_4* x(6) * x(7) )-(k2_reaction_4* x(8) ))) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(8)   ID: species_9  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_5* x(5) * x(8) )-(k2_reaction_5* x(9) ))) + (1)*(1)* (compartment_compartment_1*((k1_reaction_4* x(6) * x(7) )-(k2_reaction_4* x(8) ))) );
	
//x(9)   ID: species_10  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_6* x(10) * x(9) )-(k2_reaction_6* x(11) ))) + (1)*(1)* (compartment_compartment_1*((k1_reaction_5* x(5) * x(8) )-(k2_reaction_5* x(9) ))) );
	
//x(10)   ID: species_11  initialValue: 1.53979674865818E-6
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_6* x(10) * x(9) )-(k2_reaction_6* x(11) ))) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(11)   ID: species_12  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_8* x(11) * x(14) ) + (1)*(1)* (compartment_compartment_1*((k1_reaction_6* x(10) * x(9) )-(k2_reaction_6* x(11) ))) );
	
//x(12)   ID: species_13  initialValue: 7.69898374329091E-6
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_7* x(12) * x(13) ) + (1)*(1)* (compartment_compartment_1*k1_reaction_141* x(162) ) );
	
//x(13)   ID: species_14  initialValue: 2.30969512298727E-6
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_7* x(12) * x(13) ) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(14)   ID: species_15  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_8* x(11) * x(14) ) + (1)*(1)* (compartment_compartment_1*k1_reaction_7* x(12) * x(13) ) );
	
//x(15)   ID: species_16  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_14* x(15) * x(26) ) + (1)*(1)* (compartment_compartment_1*k1_reaction_8* x(11) * x(14) ) );
	
//x(16)   ID: species_17  initialValue: 3.24167736559617E-6
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_9* x(16) * x(17) )-(k2_reaction_9* x(18) ))) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(17)   ID: species_18  initialValue: 8.91461275538947E-7
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_9* x(16) * x(17) )-(k2_reaction_9* x(18) ))) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(18)   ID: species_19  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_11* x(18) * x(21) )-(k2_reaction_11* x(22) ))) + (1)*(1)* (compartment_compartment_1*((k1_reaction_9* x(16) * x(17) )-(k2_reaction_9* x(18) ))) );
	
//x(19)   ID: species_20  initialValue: 7.16464328895E-7
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_10* x(19) * x(20) )-(k2_reaction_10* x(21) ))) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(20)   ID: species_21  initialValue: 1.78292255107789E-6
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_10* x(19) * x(20) )-(k2_reaction_10* x(21) ))) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(21)   ID: species_22  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_11* x(18) * x(21) )-(k2_reaction_11* x(22) ))) + (1)*(1)* (compartment_compartment_1*((k1_reaction_10* x(19) * x(20) )-(k2_reaction_10* x(21) ))) );
	
//x(22)   ID: species_23  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_12* x(23) * x(22) )-(k2_reaction_12* x(163) ))) + (1)*(1)* (compartment_compartment_1*((k1_reaction_11* x(18) * x(21) )-(k2_reaction_11* x(22) ))) );
	
//x(23)   ID: species_24  initialValue: 9.72503209678849E-6
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_12* x(23) * x(22) )-(k2_reaction_12* x(163) ))) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(24)   ID: species_25  initialValue: 1.13458707795866E-6
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_13* x(24) * x(163) )-(k2_reaction_13* x(26) ))) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(25)   ID: species_26  initialValue: 0
	0;
	
//x(26)   ID: species_27  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_14* x(15) * x(26) ) + (1)*(1)* (compartment_compartment_1*((k1_reaction_13* x(24) * x(163) )-(k2_reaction_13* x(26) ))) );
	
//x(27)   ID: species_28  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_15* x(27) * x(28) )-(k2_reaction_15* x(29) ))) + (1)*(1)* (compartment_compartment_1*k1_reaction_14* x(15) * x(26) ) );
	
//x(28)   ID: species_29  initialValue: 1.13458707795866E-6
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_15* x(27) * x(28) )-(k2_reaction_15* x(29) ))) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(29)   ID: species_30  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_17* x(29) * x(31) )-(k2_reaction_17* x(32) ))) + (1)*(1)* (compartment_compartment_1*((k1_reaction_15* x(27) * x(28) )-(k2_reaction_15* x(29) ))) );
	
//x(30)   ID: species_31  initialValue: 1.9450064193577E-7
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_16* x(30) )-(k2_reaction_16* x(31) ))) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(31)   ID: species_32  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_17* x(29) * x(31) )-(k2_reaction_17* x(32) ))) + (1)*(1)* (compartment_compartment_1*((k1_reaction_16* x(30) )-(k2_reaction_16* x(31) ))) );
	
//x(32)   ID: species_33  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*((k1_reaction_17* x(29) * x(31) )-(k2_reaction_17* x(32) ))) );
	
//x(33)   ID: species_34  initialValue: 7.6989833745501E-6
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*k1_reaction_141* x(162) ) );
	
//x(34)   ID: species_35  initialValue: 4.05209670699521E-5
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_19* x(34) * x(35) )-(k2_reaction_19* x(36) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(44) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(48) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(54) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(60) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(66) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(72) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(78) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(84) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(90) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(96) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(102) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(108) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(114) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(120) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(126) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(132) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(138) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(144) ) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(150) ) );
	
//x(35)   ID: species_36  initialValue: 3.20115639852622E-6
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_19* x(34) * x(35) )-(k2_reaction_19* x(36) ))) + (1)*(1)* (compartment_compartment_1*((k1_reaction_20* x(36) )-(k2_reaction_20* x(37) * x(35) ))) );
	
//x(36)   ID: species_37  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_20* x(36) )-(k2_reaction_20* x(37) * x(35) ))) + (1)*(1)* (compartment_compartment_1*((k1_reaction_19* x(34) * x(35) )-(k2_reaction_19* x(36) ))) );
	
//x(37)   ID: species_38  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_21* x(37) *species_39_s)-(k2_reaction_21* x(38) ))) + (1)*(1)* (compartment_compartment_1*((k1_reaction_20* x(36) )-(k2_reaction_20* x(37) * x(35) ))) );
	
//x(38)   ID: species_40  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(43) )-(parameter_3_p* x(44) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(47) )-(parameter_3_p* x(48) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(53) )-(parameter_3_p* x(54) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(59) )-(parameter_3_p* x(60) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(65) )-(parameter_3_p* x(66) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(71) )-(parameter_3_p* x(72) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(77) )-(parameter_3_p* x(78) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(83) )-(parameter_3_p* x(84) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(89) )-(parameter_3_p* x(90) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(95) )-(parameter_3_p* x(96) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(101) )-(parameter_3_p* x(102) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(107) )-(parameter_3_p* x(108) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(113) )-(parameter_3_p* x(114) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(119) )-(parameter_3_p* x(120) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(125) )-(parameter_3_p* x(126) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(131) )-(parameter_3_p* x(132) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(137) )-(parameter_3_p* x(138) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(143) )-(parameter_3_p* x(144) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(149) )-(parameter_3_p* x(150) ))) + (1)*(1)* (compartment_compartment_1*((k1_reaction_21* x(37) *species_39_s)-(k2_reaction_21* x(38) ))) );
	
//x(39)   ID: species_41  initialValue: 5.6729353897933E-6
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_22* x(39) )-(k2_reaction_22* x(40) ))) + (1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(74) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(80) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(86) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(92) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(98) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(104) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(110) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(116) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(122) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(128) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(134) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(140) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(146) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(152) ) );
	
//x(40)   ID: species_42  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(45) )-(parameter_6_p* x(46) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(49) )-(parameter_6_p* x(50) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(55) )-(parameter_6_p* x(56) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(61) )-(parameter_6_p* x(62) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(67) )-(parameter_6_p* x(68) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(73) )-(parameter_6_p* x(74) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(79) )-(parameter_6_p* x(80) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(85) )-(parameter_6_p* x(86) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(91) )-(parameter_6_p* x(92) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(97) )-(parameter_6_p* x(98) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(103) )-(parameter_6_p* x(104) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(109) )-(parameter_6_p* x(110) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(115) )-(parameter_6_p* x(116) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(121) )-(parameter_6_p* x(122) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(127) )-(parameter_6_p* x(128) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(133) )-(parameter_6_p* x(134) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(139) )-(parameter_6_p* x(140) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(145) )-(parameter_6_p* x(146) ))) + (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(151) )-(parameter_6_p* x(152) ))) + (1)*(1)* (compartment_compartment_1*((k1_reaction_22* x(39) )-(k2_reaction_22* x(40) ))) );
	
//x(41)   ID: species_43  initialValue: 4.45730637769471E-6
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_23* x(41) )-(k2_reaction_23* x(42) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(52) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(58) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(64) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(70) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(76) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(82) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(88) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(94) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(100) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(106) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(112) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(118) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(124) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(130) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(136) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(142) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(148) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(154) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(157) ) );
	
//x(42)   ID: species_44  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(51) * x(42) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(57) * x(42) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(63) * x(42) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(69) * x(42) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(75) * x(42) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(81) * x(42) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(87) * x(42) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(93) * x(42) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(99) * x(42) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(105) * x(42) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(111) * x(42) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(117) * x(42) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(123) * x(42) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(129) * x(42) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(135) * x(42) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(141) * x(42) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(147) * x(42) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(153) * x(42) ) + (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(156) * x(42) ) + (1)*(1)* (compartment_compartment_1*((k1_reaction_23* x(41) )-(k2_reaction_23* x(42) ))) );
	
//x(43)   ID: species_46  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(43) )-(parameter_3_p* x(44) ))) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(44)   ID: species_47  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(44) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(43) )-(parameter_3_p* x(44) ))) );
	
//x(45)   ID: species_48  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(45) )-(parameter_6_p* x(46) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(44) ) );
	
//x(46)   ID: species_49  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(45) )-(parameter_6_p* x(46) ))) );
	
//x(47)   ID: species_50  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(47) )-(parameter_3_p* x(48) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(52) ) );
	
//x(48)   ID: species_51  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(48) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(47) )-(parameter_3_p* x(48) ))) );
	
//x(49)   ID: species_52  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(49) )-(parameter_6_p* x(50) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(48) ) );
	
//x(50)   ID: species_53  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(49) )-(parameter_6_p* x(50) ))) );
	
//x(51)   ID: species_54  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(51) * x(42) ) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(52)   ID: species_55  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(52) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(51) * x(42) ) );
	
//x(53)   ID: species_56  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(53) )-(parameter_3_p* x(54) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(58) ) );
	
//x(54)   ID: species_57  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(54) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(53) )-(parameter_3_p* x(54) ))) );
	
//x(55)   ID: species_58  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(55) )-(parameter_6_p* x(56) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(54) ) );
	
//x(56)   ID: species_59  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(55) )-(parameter_6_p* x(56) ))) );
	
//x(57)   ID: species_60  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(57) * x(42) ) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(58)   ID: species_61  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(58) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(57) * x(42) ) );
	
//x(59)   ID: species_62  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(59) )-(parameter_3_p* x(60) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(64) ) );
	
//x(60)   ID: species_63  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(60) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(59) )-(parameter_3_p* x(60) ))) );
	
//x(61)   ID: species_64  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(61) )-(parameter_6_p* x(62) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(60) ) );
	
//x(62)   ID: species_65  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(61) )-(parameter_6_p* x(62) ))) );
	
//x(63)   ID: species_66  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(63) * x(42) ) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(64)   ID: species_67  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(64) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(63) * x(42) ) );
	
//x(65)   ID: species_68  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(65) )-(parameter_3_p* x(66) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(70) ) );
	
//x(66)   ID: species_69  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(66) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(65) )-(parameter_3_p* x(66) ))) );
	
//x(67)   ID: species_70  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(67) )-(parameter_6_p* x(68) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(66) ) );
	
//x(68)   ID: species_71  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*()) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(67) )-(parameter_6_p* x(68) ))) );
	
//x(69)   ID: species_72  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(69) * x(42) ) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(70)   ID: species_73  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(70) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(69) * x(42) ) );
	
//x(71)   ID: species_74  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(71) )-(parameter_3_p* x(72) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(76) ) );
	
//x(72)   ID: species_75  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(72) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(71) )-(parameter_3_p* x(72) ))) );
	
//x(73)   ID: species_76  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(73) )-(parameter_6_p* x(74) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(72) ) );
	
//x(74)   ID: species_77  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_7_p* x(74) ) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(73) )-(parameter_6_p* x(74) ))) );
	
//x(75)   ID: species_78  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(75) * x(42) ) + (1)*(1)* (compartment_compartment_1*()) );
	
//x(76)   ID: species_79  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(76) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(75) * x(42) ) );
	
//x(77)   ID: species_80  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(77) )-(parameter_3_p* x(78) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(82) ) );
	
//x(78)   ID: species_81  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(78) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(77) )-(parameter_3_p* x(78) ))) );
	
//x(79)   ID: species_82  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(79) )-(parameter_6_p* x(80) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(78) ) );
	
//x(80)   ID: species_83  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_7_p* x(80) ) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(79) )-(parameter_6_p* x(80) ))) );
	
//x(81)   ID: species_84  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(81) * x(42) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(74) ) );
	
//x(82)   ID: species_85  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(82) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(81) * x(42) ) );
	
//x(83)   ID: species_86  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(83) )-(parameter_3_p* x(84) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(88) ) );
	
//x(84)   ID: species_87  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(84) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(83) )-(parameter_3_p* x(84) ))) );
	
//x(85)   ID: species_88  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(85) )-(parameter_6_p* x(86) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(84) ) );
	
//x(86)   ID: species_89  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_7_p* x(86) ) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(85) )-(parameter_6_p* x(86) ))) );
	
//x(87)   ID: species_90  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(87) * x(42) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(80) ) );
	
//x(88)   ID: species_91  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(88) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(87) * x(42) ) );
	
//x(89)   ID: species_92  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(89) )-(parameter_3_p* x(90) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(94) ) );
	
//x(90)   ID: species_93  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(90) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(89) )-(parameter_3_p* x(90) ))) );
	
//x(91)   ID: species_94  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(91) )-(parameter_6_p* x(92) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(90) ) );
	
//x(92)   ID: species_95  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_7_p* x(92) ) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(91) )-(parameter_6_p* x(92) ))) );
	
//x(93)   ID: species_96  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(93) * x(42) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(86) ) );
	
//x(94)   ID: species_97  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(94) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(93) * x(42) ) );
	
//x(95)   ID: species_98  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(95) )-(parameter_3_p* x(96) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(100) ) );
	
//x(96)   ID: species_99  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(96) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(95) )-(parameter_3_p* x(96) ))) );
	
//x(97)   ID: species_100  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(97) )-(parameter_6_p* x(98) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(96) ) );
	
//x(98)   ID: species_101  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_7_p* x(98) ) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(97) )-(parameter_6_p* x(98) ))) );
	
//x(99)   ID: species_102  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(99) * x(42) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(92) ) );
	
//x(100)   ID: species_103  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(100) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(99) * x(42) ) );
	
//x(101)   ID: species_104  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(101) )-(parameter_3_p* x(102) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(106) ) );
	
//x(102)   ID: species_105  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(102) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(101) )-(parameter_3_p* x(102) ))) );
	
//x(103)   ID: species_106  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(103) )-(parameter_6_p* x(104) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(102) ) );
	
//x(104)   ID: species_107  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_7_p* x(104) ) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(103) )-(parameter_6_p* x(104) ))) );
	
//x(105)   ID: species_108  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(105) * x(42) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(98) ) );
	
//x(106)   ID: species_109  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(106) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(105) * x(42) ) );
	
//x(107)   ID: species_110  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(107) )-(parameter_3_p* x(108) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(112) ) );
	
//x(108)   ID: species_111  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(108) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(107) )-(parameter_3_p* x(108) ))) );
	
//x(109)   ID: species_112  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(109) )-(parameter_6_p* x(110) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(108) ) );
	
//x(110)   ID: species_113  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_7_p* x(110) ) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(109) )-(parameter_6_p* x(110) ))) );
	
//x(111)   ID: species_114  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(111) * x(42) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(104) ) );
	
//x(112)   ID: species_115  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(112) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(111) * x(42) ) );
	
//x(113)   ID: species_116  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(113) )-(parameter_3_p* x(114) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(118) ) );
	
//x(114)   ID: species_117  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(114) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(113) )-(parameter_3_p* x(114) ))) );
	
//x(115)   ID: species_118  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(115) )-(parameter_6_p* x(116) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(114) ) );
	
//x(116)   ID: species_119  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_7_p* x(116) ) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(115) )-(parameter_6_p* x(116) ))) );
	
//x(117)   ID: species_120  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(117) * x(42) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(110) ) );
	
//x(118)   ID: species_121  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(118) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(117) * x(42) ) );
	
//x(119)   ID: species_122  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(119) )-(parameter_3_p* x(120) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(124) ) );
	
//x(120)   ID: species_123  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(120) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(119) )-(parameter_3_p* x(120) ))) );
	
//x(121)   ID: species_124  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(121) )-(parameter_6_p* x(122) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(120) ) );
	
//x(122)   ID: species_125  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_7_p* x(122) ) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(121) )-(parameter_6_p* x(122) ))) );
	
//x(123)   ID: species_126  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(123) * x(42) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(116) ) );
	
//x(124)   ID: species_127  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(124) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(123) * x(42) ) );
	
//x(125)   ID: species_128  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(125) )-(parameter_3_p* x(126) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(130) ) );
	
//x(126)   ID: species_129  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(126) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(125) )-(parameter_3_p* x(126) ))) );
	
//x(127)   ID: species_130  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(127) )-(parameter_6_p* x(128) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(126) ) );
	
//x(128)   ID: species_131  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_7_p* x(128) ) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(127) )-(parameter_6_p* x(128) ))) );
	
//x(129)   ID: species_132  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(129) * x(42) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(122) ) );
	
//x(130)   ID: species_133  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(130) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(129) * x(42) ) );
	
//x(131)   ID: species_134  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(131) )-(parameter_3_p* x(132) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(136) ) );
	
//x(132)   ID: species_135  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(132) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(131) )-(parameter_3_p* x(132) ))) );
	
//x(133)   ID: species_136  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(133) )-(parameter_6_p* x(134) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(132) ) );
	
//x(134)   ID: species_137  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_7_p* x(134) ) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(133) )-(parameter_6_p* x(134) ))) );
	
//x(135)   ID: species_138  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(135) * x(42) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(128) ) );
	
//x(136)   ID: species_139  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(136) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(135) * x(42) ) );
	
//x(137)   ID: species_140  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(137) )-(parameter_3_p* x(138) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(142) ) );
	
//x(138)   ID: species_141  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(138) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(137) )-(parameter_3_p* x(138) ))) );
	
//x(139)   ID: species_142  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(139) )-(parameter_6_p* x(140) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(138) ) );
	
//x(140)   ID: species_143  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_7_p* x(140) ) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(139) )-(parameter_6_p* x(140) ))) );
	
//x(141)   ID: species_144  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(141) * x(42) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(134) ) );
	
//x(142)   ID: species_145  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(142) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(141) * x(42) ) );
	
//x(143)   ID: species_146  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(143) )-(parameter_3_p* x(144) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(148) ) );
	
//x(144)   ID: species_147  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(144) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(143) )-(parameter_3_p* x(144) ))) );
	
//x(145)   ID: species_148  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(145) )-(parameter_6_p* x(146) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(144) ) );
	
//x(146)   ID: species_149  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_7_p* x(146) ) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(145) )-(parameter_6_p* x(146) ))) );
	
//x(147)   ID: species_150  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(147) * x(42) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(140) ) );
	
//x(148)   ID: species_151  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(148) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(147) * x(42) ) );
	
//x(149)   ID: species_152  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(149) )-(parameter_3_p* x(150) ))) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(154) ) );
	
//x(150)   ID: species_153  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_4_p* x(150) ) + (1)*(1)* (compartment_compartment_1*((parameter_2_p* x(38) * x(149) )-(parameter_3_p* x(150) ))) );
	
//x(151)   ID: species_154  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(151) )-(parameter_6_p* x(152) ))) + (1)*(1)* (compartment_compartment_1*parameter_4_p* x(150) ) );
	
//x(152)   ID: species_155  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_7_p* x(152) ) + (1)*(1)* (compartment_compartment_1*((parameter_5_p* x(40) * x(151) )-(parameter_6_p* x(152) ))) );
	
//x(153)   ID: species_156  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(153) * x(42) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(146) ) );
	
//x(154)   ID: species_157  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(154) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(153) * x(42) ) );
	
//x(155)   ID: species_158  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_140* x(161) * x(155) ) + (1)*(1)* (compartment_compartment_1*parameter_9_p* x(157) ) );
	
//x(156)   ID: species_159  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_8_p* x(156) * x(42) ) + (1)*(1)* (compartment_compartment_1*parameter_7_p* x(152) ) );
	
//x(157)   ID: species_160  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*parameter_9_p* x(157) ) + (1)*(1)* (compartment_compartment_1*parameter_8_p* x(156) * x(42) ) );
	
//x(158)   ID: species_161  initialValue: 5.6729353897933E-7
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_138* x(158) )-(k2_reaction_138* x(159) ))) + (1)*(1)* (compartment_compartment_1*k1_reaction_141* x(162) ) );
	
//x(159)   ID: species_162  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_139* x(160) * x(159) )-(k2_reaction_139* x(161) ))) + (1)*(1)* (compartment_compartment_1*((k1_reaction_138* x(158) )-(k2_reaction_138* x(159) ))) );
	
//x(160)   ID: species_163  initialValue: 8.91461275538947E-7
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_139* x(160) * x(159) )-(k2_reaction_139* x(161) ))) + (1)*(1)* (compartment_compartment_1*k1_reaction_141* x(162) ) );
	
//x(161)   ID: species_164  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_140* x(161) * x(155) ) + (1)*(1)* (compartment_compartment_1*((k1_reaction_139* x(160) * x(159) )-(k2_reaction_139* x(161) ))) );
	
//x(162)   ID: species_165  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*k1_reaction_141* x(162) ) + (1)*(1)* (compartment_compartment_1*k1_reaction_140* x(161) * x(155) ) );
	
//x(163)   ID: species_166  initialValue: 0
	(1/compartment_compartment_1)*( (-1)*(1)* (compartment_compartment_1*((k1_reaction_13* x(24) * x(163) )-(k2_reaction_13* x(26) ))) + (1)*(1)* (compartment_compartment_1*((k1_reaction_12* x(23) * x(22) )-(k2_reaction_12* x(163) ))) )
	];


	
endfunction
        x0=[1.17510804502861E-6;2.26917415591732E-7;0;0;0;9.31982242608899E-7;8.10419341399042E-7;0;0;1.53979674865818E-6;0;7.69898374329091E-6;2.30969512298727E-6;0;0;3.24167736559617E-6;8.91461275538947E-7;0;7.16464328895E-7;1.78292255107789E-6;0;0;9.72503209678849E-6;1.13458707795866E-6;0;0;0;1.13458707795866E-6;0;1.9450064193577E-7;0;0;7.6989833745501E-6;4.05209670699521E-5;3.20115639852622E-6;0;0;0;5.6729353897933E-6;0;4.45730637769471E-6;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;5.6729353897933E-7;0;8.91461275538947E-7;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)' 'x(54)' 'x(55)' 'x(56)' 'x(57)' 'x(58)' 'x(59)' 'x(60)' 'x(61)' 'x(62)' 'x(63)' 'x(64)' 'x(65)' 'x(66)' 'x(67)' 'x(68)' 'x(69)' 'x(70)' 'x(71)' 'x(72)' 'x(73)' 'x(74)' 'x(75)' 'x(76)' 'x(77)' 'x(78)' 'x(79)' 'x(80)' 'x(81)' 'x(82)' 'x(83)' 'x(84)' 'x(85)' 'x(86)' 'x(87)' 'x(88)' 'x(89)' 'x(90)' 'x(91)' 'x(92)' 'x(93)' 'x(94)' 'x(95)' 'x(96)' 'x(97)' 'x(98)' 'x(99)' 'x(100)' 'x(101)' 'x(102)' 'x(103)' 'x(104)' 'x(105)' 'x(106)' 'x(107)' 'x(108)' 'x(109)' 'x(110)' 'x(111)' 'x(112)' 'x(113)' 'x(114)' 'x(115)' 'x(116)' 'x(117)' 'x(118)' 'x(119)' 'x(120)' 'x(121)' 'x(122)' 'x(123)' 'x(124)' 'x(125)' 'x(126)' 'x(127)' 'x(128)' 'x(129)' 'x(130)' 'x(131)' 'x(132)' 'x(133)' 'x(134)' 'x(135)' 'x(136)' 'x(137)' 'x(138)' 'x(139)' 'x(140)' 'x(141)' 'x(142)' 'x(143)' 'x(144)' 'x(145)' 'x(146)' 'x(147)' 'x(148)' 'x(149)' 'x(150)' 'x(151)' 'x(152)' 'x(153)' 'x(154)' 'x(155)' 'x(156)' 'x(157)' 'x(158)' 'x(159)' 'x(160)' 'x(161)' 'x(162)' 'x(163)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53;54;55;56;57;58;59;60;61;62;63;64;65;66;67;68;69;70;71;72;73;74;75;76;77;78;79;80;81;82;83;84;85;86;87;88;89;90;91;92;93;94;95;96;97;98;99;100;101;102;103;104;105;106;107;108;109;110;111;112;113;114;115;116;117;118;119;120;121;122;123;124;125;126;127;128;129;130;131;132;133;134;135;136;137;138;139;140;141;142;143;144;145;146;147;148;149;150;151;152;153;154;155;156;157;158;159;160;161;162;163])

//real_variable:
	
	
//x(1)   id: species_1  initialValue: 1.17510804502861E-6
	
//x(2)   id: species_2  initialValue: 2.26917415591732E-7
	
//x(3)   id: species_3  initialValue: 0
	
//x(4)   id: species_4  initialValue: 0
	
//x(5)   id: species_6  initialValue: 0
	
//x(6)   id: species_7  initialValue: 9.31982242608899E-7
	
//x(7)   id: species_8  initialValue: 8.10419341399042E-7
	
//x(8)   id: species_9  initialValue: 0
	
//x(9)   id: species_10  initialValue: 0
	
//x(10)   id: species_11  initialValue: 1.53979674865818E-6
	
//x(11)   id: species_12  initialValue: 0
	
//x(12)   id: species_13  initialValue: 7.69898374329091E-6
	
//x(13)   id: species_14  initialValue: 2.30969512298727E-6
	
//x(14)   id: species_15  initialValue: 0
	
//x(15)   id: species_16  initialValue: 0
	
//x(16)   id: species_17  initialValue: 3.24167736559617E-6
	
//x(17)   id: species_18  initialValue: 8.91461275538947E-7
	
//x(18)   id: species_19  initialValue: 0
	
//x(19)   id: species_20  initialValue: 7.16464328895E-7
	
//x(20)   id: species_21  initialValue: 1.78292255107789E-6
	
//x(21)   id: species_22  initialValue: 0
	
//x(22)   id: species_23  initialValue: 0
	
//x(23)   id: species_24  initialValue: 9.72503209678849E-6
	
//x(24)   id: species_25  initialValue: 1.13458707795866E-6
	
//x(25)   id: species_26  initialValue: 0
	
//x(26)   id: species_27  initialValue: 0
	
//x(27)   id: species_28  initialValue: 0
	
//x(28)   id: species_29  initialValue: 1.13458707795866E-6
	
//x(29)   id: species_30  initialValue: 0
	
//x(30)   id: species_31  initialValue: 1.9450064193577E-7
	
//x(31)   id: species_32  initialValue: 0
	
//x(32)   id: species_33  initialValue: 0
	
//x(33)   id: species_34  initialValue: 7.6989833745501E-6
	
//x(34)   id: species_35  initialValue: 4.05209670699521E-5
	
//x(35)   id: species_36  initialValue: 3.20115639852622E-6
	
//x(36)   id: species_37  initialValue: 0
	
//x(37)   id: species_38  initialValue: 0
	
//x(38)   id: species_40  initialValue: 0
	
//x(39)   id: species_41  initialValue: 5.6729353897933E-6
	
//x(40)   id: species_42  initialValue: 0
	
//x(41)   id: species_43  initialValue: 4.45730637769471E-6
	
//x(42)   id: species_44  initialValue: 0
	
//x(43)   id: species_46  initialValue: 0
	
//x(44)   id: species_47  initialValue: 0
	
//x(45)   id: species_48  initialValue: 0
	
//x(46)   id: species_49  initialValue: 0
	
//x(47)   id: species_50  initialValue: 0
	
//x(48)   id: species_51  initialValue: 0
	
//x(49)   id: species_52  initialValue: 0
	
//x(50)   id: species_53  initialValue: 0
	
//x(51)   id: species_54  initialValue: 0
	
//x(52)   id: species_55  initialValue: 0
	
//x(53)   id: species_56  initialValue: 0
	
//x(54)   id: species_57  initialValue: 0
	
//x(55)   id: species_58  initialValue: 0
	
//x(56)   id: species_59  initialValue: 0
	
//x(57)   id: species_60  initialValue: 0
	
//x(58)   id: species_61  initialValue: 0
	
//x(59)   id: species_62  initialValue: 0
	
//x(60)   id: species_63  initialValue: 0
	
//x(61)   id: species_64  initialValue: 0
	
//x(62)   id: species_65  initialValue: 0
	
//x(63)   id: species_66  initialValue: 0
	
//x(64)   id: species_67  initialValue: 0
	
//x(65)   id: species_68  initialValue: 0
	
//x(66)   id: species_69  initialValue: 0
	
//x(67)   id: species_70  initialValue: 0
	
//x(68)   id: species_71  initialValue: 0
	
//x(69)   id: species_72  initialValue: 0
	
//x(70)   id: species_73  initialValue: 0
	
//x(71)   id: species_74  initialValue: 0
	
//x(72)   id: species_75  initialValue: 0
	
//x(73)   id: species_76  initialValue: 0
	
//x(74)   id: species_77  initialValue: 0
	
//x(75)   id: species_78  initialValue: 0
	
//x(76)   id: species_79  initialValue: 0
	
//x(77)   id: species_80  initialValue: 0
	
//x(78)   id: species_81  initialValue: 0
	
//x(79)   id: species_82  initialValue: 0
	
//x(80)   id: species_83  initialValue: 0
	
//x(81)   id: species_84  initialValue: 0
	
//x(82)   id: species_85  initialValue: 0
	
//x(83)   id: species_86  initialValue: 0
	
//x(84)   id: species_87  initialValue: 0
	
//x(85)   id: species_88  initialValue: 0
	
//x(86)   id: species_89  initialValue: 0
	
//x(87)   id: species_90  initialValue: 0
	
//x(88)   id: species_91  initialValue: 0
	
//x(89)   id: species_92  initialValue: 0
	
//x(90)   id: species_93  initialValue: 0
	
//x(91)   id: species_94  initialValue: 0
	
//x(92)   id: species_95  initialValue: 0
	
//x(93)   id: species_96  initialValue: 0
	
//x(94)   id: species_97  initialValue: 0
	
//x(95)   id: species_98  initialValue: 0
	
//x(96)   id: species_99  initialValue: 0
	
//x(97)   id: species_100  initialValue: 0
	
//x(98)   id: species_101  initialValue: 0
	
//x(99)   id: species_102  initialValue: 0
	
//x(100)   id: species_103  initialValue: 0
	
//x(101)   id: species_104  initialValue: 0
	
//x(102)   id: species_105  initialValue: 0
	
//x(103)   id: species_106  initialValue: 0
	
//x(104)   id: species_107  initialValue: 0
	
//x(105)   id: species_108  initialValue: 0
	
//x(106)   id: species_109  initialValue: 0
	
//x(107)   id: species_110  initialValue: 0
	
//x(108)   id: species_111  initialValue: 0
	
//x(109)   id: species_112  initialValue: 0
	
//x(110)   id: species_113  initialValue: 0
	
//x(111)   id: species_114  initialValue: 0
	
//x(112)   id: species_115  initialValue: 0
	
//x(113)   id: species_116  initialValue: 0
	
//x(114)   id: species_117  initialValue: 0
	
//x(115)   id: species_118  initialValue: 0
	
//x(116)   id: species_119  initialValue: 0
	
//x(117)   id: species_120  initialValue: 0
	
//x(118)   id: species_121  initialValue: 0
	
//x(119)   id: species_122  initialValue: 0
	
//x(120)   id: species_123  initialValue: 0
	
//x(121)   id: species_124  initialValue: 0
	
//x(122)   id: species_125  initialValue: 0
	
//x(123)   id: species_126  initialValue: 0
	
//x(124)   id: species_127  initialValue: 0
	
//x(125)   id: species_128  initialValue: 0
	
//x(126)   id: species_129  initialValue: 0
	
//x(127)   id: species_130  initialValue: 0
	
//x(128)   id: species_131  initialValue: 0
	
//x(129)   id: species_132  initialValue: 0
	
//x(130)   id: species_133  initialValue: 0
	
//x(131)   id: species_134  initialValue: 0
	
//x(132)   id: species_135  initialValue: 0
	
//x(133)   id: species_136  initialValue: 0
	
//x(134)   id: species_137  initialValue: 0
	
//x(135)   id: species_138  initialValue: 0
	
//x(136)   id: species_139  initialValue: 0
	
//x(137)   id: species_140  initialValue: 0
	
//x(138)   id: species_141  initialValue: 0
	
//x(139)   id: species_142  initialValue: 0
	
//x(140)   id: species_143  initialValue: 0
	
//x(141)   id: species_144  initialValue: 0
	
//x(142)   id: species_145  initialValue: 0
	
//x(143)   id: species_146  initialValue: 0
	
//x(144)   id: species_147  initialValue: 0
	
//x(145)   id: species_148  initialValue: 0
	
//x(146)   id: species_149  initialValue: 0
	
//x(147)   id: species_150  initialValue: 0
	
//x(148)   id: species_151  initialValue: 0
	
//x(149)   id: species_152  initialValue: 0
	
//x(150)   id: species_153  initialValue: 0
	
//x(151)   id: species_154  initialValue: 0
	
//x(152)   id: species_155  initialValue: 0
	
//x(153)   id: species_156  initialValue: 0
	
//x(154)   id: species_157  initialValue: 0
	
//x(155)   id: species_158  initialValue: 0
	
//x(156)   id: species_159  initialValue: 0
	
//x(157)   id: species_160  initialValue: 0
	
//x(158)   id: species_161  initialValue: 5.6729353897933E-7
	
//x(159)   id: species_162  initialValue: 0
	
//x(160)   id: species_163  initialValue: 8.91461275538947E-7
	
//x(161)   id: species_164  initialValue: 0
	
//x(162)   id: species_165  initialValue: 0
	
//x(163)   id: species_166  initialValue: 0