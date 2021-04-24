% This file works with OCTAVE and is automatically generated with 
% the System Biology Format Converter (http://sbfc.sourceforge.net/)
% from an SBML file.
% To run this file with Matlab you must edit the comments providing
% the definition of the ode solver and the signature for the 
% xdot function.
%
% The conversion system has the following limitations:
%  - You may have to re order some reactions and Assignment Rules definition
%  - Delays are not taken into account
%  - You should change the lsode parameters (start, end, steps) to get better results
%

%
% Model name = Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords
%
% is http://identifiers.org/biomodels.db/MODEL1603110003
%


function main()
%Initial conditions vector
	x0=zeros(75,1);
	x0(1) = 0.2;
	x0(2) = 0.25;
	x0(3) = 0.1;
	x0(4) = 0.5;
	x0(5) = 500.0;
	x0(6) = 0.25;
	x0(7) = 0.5;
	x0(8) = 0.2;
	x0(9) = 0.1;
	x0(10) = 500.0;
	x0(11) = 0.2;
	x0(12) = 0.1;
	x0(13) = 0.25;
	x0(14) = 0.5;
	x0(15) = 500.0;
	x0(16) = 0.2;
	x0(17) = 0.1;
	x0(18) = 0.5;
	x0(19) = 0.25;
	x0(20) = 500.0;
	x0(21) = 0.5;
	x0(22) = 0.1;
	x0(23) = 0.25;
	x0(24) = 0.2;
	x0(25) = 500.0;
	x0(26) = 0.2;
	x0(27) = 0.25;
	x0(28) = 0.5;
	x0(29) = 0.1;
	x0(30) = 500.0;
	x0(31) = 0.2;
	x0(32) = 0.25;
	x0(33) = 0.5;
	x0(34) = 0.1;
	x0(35) = 500.0;
	x0(36) = 0.5;
	x0(37) = 0.1;
	x0(38) = 0.25;
	x0(39) = 0.2;
	x0(40) = 500.0;
	x0(41) = 0.1;
	x0(42) = 0.2;
	x0(43) = 0.5;
	x0(44) = 0.25;
	x0(45) = 500.0;
	x0(46) = 0.5;
	x0(47) = 0.1;
	x0(48) = 0.25;
	x0(49) = 0.2;
	x0(50) = 500.0;
	x0(51) = 0.1;
	x0(52) = 0.25;
	x0(53) = 0.2;
	x0(54) = 0.5;
	x0(55) = 0.1;
	x0(56) = 0.25;
	x0(57) = 0.2;
	x0(58) = 0.5;
	x0(59) = 0.1;
	x0(60) = 0.25;
	x0(61) = 0.2;
	x0(62) = 0.5;
	x0(63) = 0.1;
	x0(64) = 0.25;
	x0(65) = 0.2;
	x0(66) = 0.5;
	x0(67) = 0.1;
	x0(68) = 0.25;
	x0(69) = 0.2;
	x0(70) = 0.5;
	x0(71) = 500.0;
	x0(72) = 500.0;
	x0(73) = 500.0;
	x0(74) = 500.0;
	x0(75) = 500.0;


% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
%	tspan=[0:0.01:100];
%	opts = odeset('AbsTol',1e-3);
%	[t,x]=ode23tb(@f,tspan,x0,opts);
% End Matlab code

% Start Octave code
	t=linspace(0,100,100);
	x=lsode('f',x0,t);
% End Octave code


	plot(t,x);
end



% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
%function xdot=f(t,x)
% End Matlab code

% Start Octave code
function xdot=f(x,t)
% End Octave code

% Compartment: id = cytosol5, name = cytosol5, constant
	compartment_cytosol5=1.0;
% Compartment: id = store5, name = store5, constant
	compartment_store5=1.0;
% Compartment: id = cytosol4, name = cytosol4, constant
	compartment_cytosol4=1.0;
% Compartment: id = cytosol1, name = cytosol1, constant
	compartment_cytosol1=1.0;
% Compartment: id = cytosol6, name = cytosol6, constant
	compartment_cytosol6=1.0;
% Compartment: id = store6, name = store6, constant
	compartment_store6=1.0;
% Compartment: id = store1, name = store1, constant
	compartment_store1=1.0;
% Compartment: id = store3, name = store3, constant
	compartment_store3=1.0;
% Compartment: id = cytosol3, name = cytosol3, constant
	compartment_cytosol3=1.0;
% Compartment: id = cytosol7, name = cytosol7, constant
	compartment_cytosol7=1.0;
% Compartment: id = store7, name = store7, constant
	compartment_store7=1.0;
% Compartment: id = cytosol8, name = cytosol8, constant
	compartment_cytosol8=1.0;
% Compartment: id = store8, name = store8, constant
	compartment_store8=1.0;
% Compartment: id = cytosol2, name = cytosol2, constant
	compartment_cytosol2=1.0;
% Compartment: id = store2, name = store2, constant
	compartment_store2=1.0;
% Compartment: id = cytosol9, name = cytosol9, constant
	compartment_cytosol9=1.0;
% Compartment: id = store9, name = store9, constant
	compartment_store9=1.0;
% Compartment: id = cytosol10, name = cytosol10, constant
	compartment_cytosol10=1.0;
% Compartment: id = store10, name = store10, constant
	compartment_store10=1.0;
% Compartment: id = cytosol11, name = cytosol11, constant
	compartment_cytosol11=1.0;
% Compartment: id = store11, name = store11, constant
	compartment_store11=1.0;
% Compartment: id = cytosol13, name = cytosol13, constant
	compartment_cytosol13=1.0;
% Compartment: id = store13, name = store13, constant
	compartment_store13=1.0;
% Compartment: id = cytosol14, name = cytosol14, constant
	compartment_cytosol14=1.0;
% Compartment: id = store14, name = store14, constant
	compartment_store14=1.0;
% Compartment: id = cytosol15, name = cytosol15, constant
	compartment_cytosol15=1.0;
% Compartment: id = store15, name = store15, constant
	compartment_store15=1.0;
% Compartment: id = store4, name = store4, constant
	compartment_store4=1.0;
% Compartment: id = cytosol12, name = cytosol12, constant
	compartment_cytosol12=1.0;
% Compartment: id = store12, name = store12, constant
	compartment_store12=1.0;
% Parameter:   id =  H, name = H
	global_par_H=0.0;
% Parameter:   id =  k_d, name = k_d
	global_par_k_d=0.34;
% Parameter:   id =  k_HR, name = k_HR
	global_par_k_HR=1.0;
% Parameter:   id =  kcat, name = kcat
	global_par_kcat=0.45;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.0;
% Parameter:   id =  D, name = D
	global_par_D=1.6;
% Parameter:   id =  E, name = E
	global_par_E=1.0;
% Parameter:   id =  F, name = F
	global_par_F=0.01;
% Parameter:   id =  A, name = A
	global_par_A=0.2;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.5;
% Parameter:   id =  L, name = L
	global_par_L=1.5E-4;
% Parameter:   id =  B, name = B
	global_par_B=0.082;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.15;
% Parameter:   id =  k_r1, name = k_r1
	global_par_k_r1=1.0;
% Parameter:   id =  G, name = G
	global_par_G=0.9;
% Parameter:   id =  k_r2, name = k_r2
	global_par_k_r2=1.5;
% Parameter:   id =  k_r, name = k_r
	global_par_k_r=2.0;
% Parameter:   id =  k_r3, name = k_r3
	global_par_k_r3=1.928571;
% Parameter:   id =  k_r4, name = k_r4
	global_par_k_r4=1.357143;
% Parameter:   id =  k_r5, name = k_r5
	global_par_k_r5=1.857143;
% Parameter:   id =  k_r6, name = k_r6
	global_par_k_r6=1.785714;
% Parameter:   id =  k_r7, name = k_r7
	global_par_k_r7=1.571429;
% Parameter:   id =  k_r8, name = k_r8
	global_par_k_r8=1.714286;
% Parameter:   id =  k_r9, name = k_r9
	global_par_k_r9=1.142857;
% Parameter:   id =  k_r10, name = k_r10
	global_par_k_r10=1.642857;
% Parameter:   id =  k_r11, name = k_r11
	global_par_k_r11=1.428571;
% Parameter:   id =  k_r12, name = k_r12
	global_par_k_r12=2.0;
% Parameter:   id =  k_r13, name = k_r13
	global_par_k_r13=1.214286;
% Parameter:   id =  k_r14, name = k_r14
	global_par_k_r14=1.071429;

% Reaction: id = r0, name = r0	% Local Parameter:   id =  k_ip31, name = k_ip31
	reaction_r0_k_ip31=0.785714;

	reaction_r0=compartment_cytosol1*function_4_r0(x(1), global_par_H, global_par_k3, reaction_r0_k_ip31, global_par_kcat, x(4));

% Reaction: id = r1, name = r1
	reaction_r1=compartment_cytosol1*function_4_r1(global_par_H, global_par_k_HR, global_par_k_d, global_par_k_r1, x(4));

% Reaction: id = r3, name = r3
	reaction_r3=function_4_r3(global_par_A, x(1), x(5), x(3), global_par_L, x(2), global_par_k1, compartment_store1);

% Reaction: id = r4, name = r4
	reaction_r4=compartment_cytosol1*function_4_r4(global_par_D, x(3));

% Reaction: id = r5, name = r5
	reaction_r5=function_4_r5(global_par_B, x(1), compartment_cytosol1, global_par_k2);

% Reaction: id = r6, name = r6
	reaction_r6=compartment_cytosol1*function_4_r6(x(1), global_par_E, x(2));

% Reaction: id = r8, name = r8	% Local Parameter:   id =  k_ip32, name = k_ip32
	reaction_r8_k_ip32=0.885714;

	reaction_r8=compartment_cytosol2*function_4_r8(x(8), global_par_H, global_par_k3, reaction_r8_k_ip32, global_par_kcat, x(7));

% Reaction: id = r12, name = r12
	reaction_r12=compartment_cytosol2*function_4_r12(global_par_H, global_par_k_HR, global_par_k_d, global_par_k_r2, x(7));

% Reaction: id = r13, name = r13
	reaction_r13=compartment_cytosol2*function_4_r13(x(8), global_par_E, x(6));

% Reaction: id = r14, name = r14
	reaction_r14=compartment_cytosol2*function_4_r14(global_par_D, x(9));

% Reaction: id = r9, name = r9
	reaction_r9=function_4_r9(global_par_A, x(8), x(10), x(9), global_par_L, x(6), global_par_k1, compartment_store2);

% Reaction: id = r15, name = r15
	reaction_r15=function_4_r15(global_par_B, x(8), compartment_cytosol2, global_par_k2);

% Reaction: id = r16, name = r16
	reaction_r16=function_4_r16(global_par_G, x(3), x(9), compartment_cytosol1);

% Reaction: id = r18, name = r18	% Local Parameter:   id =  k_ip33, name = k_ip33
	reaction_r18_k_ip33=0.757143;

	reaction_r18=compartment_cytosol3*function_4_r18(x(11), global_par_H, global_par_k3, reaction_r18_k_ip33, global_par_kcat, x(14));

% Reaction: id = r21, name = r21
	reaction_r21=compartment_cytosol3*function_4_r21(global_par_H, global_par_k_HR, global_par_k_d, global_par_k_r3, x(14));

% Reaction: id = r23, name = r23
	reaction_r23=compartment_cytosol3*function_4_r23(global_par_D, x(12));

% Reaction: id = r25, name = r25
	reaction_r25=compartment_cytosol3*function_4_r25(x(11), global_par_E, x(13));

% Reaction: id = r19, name = r19
	reaction_r19=function_4_r19(global_par_A, x(11), x(15), x(12), global_par_L, x(13), global_par_k1, compartment_store3);

% Reaction: id = r24, name = r24
	reaction_r24=function_4_r24(global_par_B, x(11), compartment_cytosol3, global_par_k2);

% Reaction: id = r27, name = r27
	reaction_r27=function_4_r27(global_par_G, x(9), x(12), compartment_cytosol3);

% Reaction: id = r28, name = r28
	reaction_r28=compartment_cytosol4*function_4_r28(global_par_H, global_par_k_HR, global_par_k_d, global_par_k_r4, x(18));

% Reaction: id = r29, name = r29	% Local Parameter:   id =  k_ip34, name = k_ip34
	reaction_r29_k_ip34=0.857143;

	reaction_r29=compartment_cytosol4*function_4_r29(x(16), global_par_H, global_par_k3, reaction_r29_k_ip34, global_par_kcat, x(18));

% Reaction: id = r30, name = r30
	reaction_r30=compartment_cytosol4*function_4_r30(global_par_D, x(17));

% Reaction: id = r33, name = r33
	reaction_r33=compartment_cytosol4*function_4_r33(x(16), global_par_E, x(19));

% Reaction: id = r34, name = r34
	reaction_r34=function_4_r34(global_par_A, x(16), x(20), x(17), global_par_L, x(19), global_par_k1, compartment_store4);

% Reaction: id = r35, name = r35
	reaction_r35=function_4_r35(global_par_B, x(16), compartment_cytosol4, global_par_k2);

% Reaction: id = r37, name = r37
	reaction_r37=function_4_r37(global_par_G, x(12), x(17), compartment_cytosol4);

% Reaction: id = r38, name = r38
	reaction_r38=compartment_cytosol5*function_4_r38(global_par_H, global_par_k_HR, global_par_k_d, global_par_k_r5, x(21));

% Reaction: id = r39, name = r39
	reaction_r39=compartment_cytosol5*function_4_r39(x(24), global_par_E, x(23));

% Reaction: id = r42, name = r42	% Local Parameter:   id =  k_ip35, name = k_ip35
	reaction_r42_k_ip35=0.842857;

	reaction_r42=compartment_cytosol5*function_4_r42(x(24), global_par_H, global_par_k3, reaction_r42_k_ip35, global_par_kcat, x(21));

% Reaction: id = r43, name = r43
	reaction_r43=compartment_cytosol5*function_4_r43(global_par_D, x(22));

% Reaction: id = r40, name = r40
	reaction_r40=function_4_r40(global_par_A, x(24), x(25), x(22), global_par_L, x(23), global_par_k1, compartment_store5);

% Reaction: id = r45, name = r45
	reaction_r45=function_4_r45(global_par_B, x(24), compartment_cytosol5, global_par_k2);

% Reaction: id = r47, name = r47
	reaction_r47=function_4_r47(global_par_G, x(17), x(22), compartment_cytosol5);

% Reaction: id = r51, name = r51
	reaction_r51=compartment_cytosol6*function_4_r51(x(26), global_par_E, x(27));

% Reaction: id = r53, name = r53
	reaction_r53=compartment_cytosol6*function_4_r53(global_par_H, global_par_k_HR, global_par_k_d, global_par_k_r6, x(28));

% Reaction: id = r54, name = r54
	reaction_r54=compartment_cytosol6*function_4_r54(global_par_D, x(29));

% Reaction: id = r55, name = r55	% Local Parameter:   id =  k_ip36, name = k_ip36
	reaction_r55_k_ip36=0.814286;

	reaction_r55=compartment_cytosol6*function_4_r55(x(26), global_par_H, global_par_k3, reaction_r55_k_ip36, global_par_kcat, x(28));

% Reaction: id = r48, name = r48
	reaction_r48=function_4_r48(global_par_B, x(26), compartment_cytosol6, global_par_k2);

% Reaction: id = r50, name = r50
	reaction_r50=function_4_r50(global_par_A, x(26), x(30), x(29), global_par_L, x(27), global_par_k1, compartment_store6);

% Reaction: id = r57, name = r57
	reaction_r57=function_4_r57(global_par_G, x(22), x(29), compartment_cytosol6);

% Reaction: id = r58, name = r58
	reaction_r58=compartment_cytosol7*function_4_r58(x(31), global_par_E, x(32));

% Reaction: id = r60, name = r60	% Local Parameter:   id =  k_ip37, name = k_ip37
	reaction_r60_k_ip37=0.742857;

	reaction_r60=compartment_cytosol7*function_4_r60(x(31), global_par_H, global_par_k3, reaction_r60_k_ip37, global_par_kcat, x(33));

% Reaction: id = r62, name = r62
	reaction_r62=compartment_cytosol7*function_4_r62(global_par_D, x(34));

% Reaction: id = r63, name = r63
	reaction_r63=compartment_cytosol7*function_4_r63(global_par_H, global_par_k_HR, global_par_k_d, global_par_k_r7, x(33));

% Reaction: id = r61, name = r61
	reaction_r61=function_4_r61(global_par_A, x(31), x(35), x(34), global_par_L, x(32), global_par_k1, compartment_store7);

% Reaction: id = r64, name = r64
	reaction_r64=function_4_r64(global_par_B, x(31), compartment_cytosol7, global_par_k2);

% Reaction: id = r67, name = r67
	reaction_r67=function_4_r67(global_par_G, x(29), x(34), compartment_cytosol7);

% Reaction: id = r68, name = r68
	reaction_r68=compartment_cytosol8*function_4_r68(global_par_D, x(37));

% Reaction: id = r70, name = r70
	reaction_r70=compartment_cytosol8*function_4_r70(x(39), global_par_E, x(38));

% Reaction: id = r71, name = r71
	reaction_r71=compartment_cytosol8*function_4_r71(global_par_H, global_par_k_HR, global_par_k_d, global_par_k_r8, x(36));

% Reaction: id = r73, name = r73	% Local Parameter:   id =  k_ip38, name = k_ip38
	reaction_r73_k_ip38=0.828571;

	reaction_r73=compartment_cytosol8*function_4_r73(x(39), global_par_H, global_par_k3, reaction_r73_k_ip38, global_par_kcat, x(36));

% Reaction: id = r72, name = r72
	reaction_r72=function_4_r72(global_par_A, x(39), x(40), x(37), global_par_L, x(38), global_par_k1, compartment_store8);

% Reaction: id = r75, name = r75
	reaction_r75=function_4_r75(global_par_B, x(39), compartment_cytosol8, global_par_k2);

% Reaction: id = r77, name = r77
	reaction_r77=function_4_r77(global_par_G, x(34), x(37), compartment_cytosol8);

% Reaction: id = r78, name = r78
	reaction_r78=compartment_cytosol9*function_4_r78(x(42), global_par_E, x(44));

% Reaction: id = r81, name = r81	% Local Parameter:   id =  k_ip39, name = k_ip39
	reaction_r81_k_ip39=0.771429;

	reaction_r81=compartment_cytosol9*function_4_r81(x(42), global_par_H, global_par_k3, reaction_r81_k_ip39, global_par_kcat, x(43));

% Reaction: id = r82, name = r82
	reaction_r82=compartment_cytosol9*function_4_r82(global_par_H, global_par_k_HR, global_par_k_d, global_par_k_r9, x(43));

% Reaction: id = r83, name = r83
	reaction_r83=compartment_cytosol9*function_4_r83(global_par_D, x(41));

% Reaction: id = r84, name = r84
	reaction_r84=function_4_r84(global_par_A, x(42), x(45), x(41), global_par_L, x(44), global_par_k1, compartment_store9);

% Reaction: id = r85, name = r85
	reaction_r85=function_4_r85(global_par_B, x(42), compartment_cytosol9, global_par_k2);

% Reaction: id = r87, name = r87
	reaction_r87=function_4_r87(global_par_G, x(37), x(41), compartment_cytosol9);

% Reaction: id = r89, name = r89	% Local Parameter:   id =  k_ip310, name = k_ip310
	reaction_r89_k_ip310=0.728571;

	reaction_r89=compartment_cytosol10*function_4_r89(x(49), global_par_H, global_par_k3, reaction_r89_k_ip310, global_par_kcat, x(46));

% Reaction: id = r91, name = r91
	reaction_r91=compartment_cytosol10*function_4_r91(global_par_H, global_par_k_HR, global_par_k_d, global_par_k_r10, x(46));

% Reaction: id = r92, name = r92
	reaction_r92=compartment_cytosol10*function_4_r92(x(49), global_par_E, x(48));

% Reaction: id = r93, name = r93
	reaction_r93=compartment_cytosol10*function_4_r93(global_par_D, x(47));

% Reaction: id = r94, name = r94
	reaction_r94=function_4_r94(global_par_A, x(49), x(50), x(47), global_par_L, x(48), global_par_k1, compartment_store10);

% Reaction: id = r95, name = r95
	reaction_r95=function_4_r95(global_par_B, x(49), compartment_cytosol10, global_par_k2);

% Reaction: id = r96, name = r96
	reaction_r96=function_4_r96(global_par_G, x(47), x(41), compartment_cytosol10);

% Reaction: id = r98, name = r98	% Local Parameter:   id =  k_ip311, name = k_ip311
	reaction_r98_k_ip311=0.714286;

	reaction_r98=compartment_cytosol11*function_4_r98(x(53), global_par_H, global_par_k3, reaction_r98_k_ip311, global_par_kcat, x(54));

% Reaction: id = r99, name = r99
	reaction_r99=compartment_cytosol11*function_4_r99(x(53), global_par_E, x(52));

% Reaction: id = r101, name = r101
	reaction_r101=compartment_cytosol11*function_4_r101(global_par_H, global_par_k_HR, global_par_k_d, global_par_k_r11, x(54));

% Reaction: id = r103, name = r103
	reaction_r103=compartment_cytosol11*function_4_r103(global_par_D, x(51));

% Reaction: id = r104, name = r104	% Local Parameter:   id =  k_ip312, name = k_ip312
	reaction_r104_k_ip312=0.871429;

	reaction_r104=compartment_cytosol12*function_4_r104(x(57), global_par_H, global_par_k3, reaction_r104_k_ip312, global_par_kcat, x(58));

% Reaction: id = r105, name = r105
	reaction_r105=compartment_cytosol12*function_4_r105(x(57), global_par_E, x(56));

% Reaction: id = r107, name = r107
	reaction_r107=compartment_cytosol12*function_4_r107(global_par_H, global_par_k_HR, global_par_k_d, global_par_k_r12, x(58));

% Reaction: id = r109, name = r109
	reaction_r109=compartment_cytosol12*function_4_r109(global_par_D, x(55));

% Reaction: id = r110, name = r110	% Local Parameter:   id =  k_ip313, name = k_ip313
	reaction_r110_k_ip313=0.9;

	reaction_r110=compartment_cytosol13*function_4_r110(x(61), global_par_H, global_par_k3, reaction_r110_k_ip313, global_par_kcat, x(62));

% Reaction: id = r111, name = r111
	reaction_r111=compartment_cytosol13*function_4_r111(x(61), global_par_E, x(60));

% Reaction: id = r113, name = r113
	reaction_r113=compartment_cytosol13*function_4_r113(global_par_H, global_par_k_HR, global_par_k_d, global_par_k_r13, x(62));

% Reaction: id = r115, name = r115
	reaction_r115=compartment_cytosol13*function_4_r115(global_par_D, x(59));

% Reaction: id = r116, name = r116	% Local Parameter:   id =  k_ip314, name = k_ip314
	reaction_r116_k_ip314=0.7;

	reaction_r116=compartment_cytosol14*function_4_r116(x(65), global_par_H, global_par_k3, reaction_r116_k_ip314, global_par_kcat, x(66));

% Reaction: id = r117, name = r117
	reaction_r117=compartment_cytosol14*function_4_r117(x(65), global_par_E, x(64));

% Reaction: id = r119, name = r119
	reaction_r119=compartment_cytosol14*function_4_r119(global_par_H, global_par_k_HR, global_par_k_d, global_par_k_r14, x(66));

% Reaction: id = r121, name = r121
	reaction_r121=compartment_cytosol14*function_4_r121(global_par_D, x(63));

% Reaction: id = r122, name = r122	% Local Parameter:   id =  k_ip315, name = k_ip315
	reaction_r122_k_ip315=0.8;

	reaction_r122=compartment_cytosol15*function_4_r122(x(69), global_par_H, global_par_k3, reaction_r122_k_ip315, global_par_kcat, x(70));

% Reaction: id = r123, name = r123
	reaction_r123=compartment_cytosol15*function_4_r123(x(69), global_par_E, x(68));

% Reaction: id = r125, name = r125	% Local Parameter:   id =  k_r15, name = k_r15
	reaction_r125_k_r15=1.285714;

	reaction_r125=compartment_cytosol15*function_4_r125(global_par_H, global_par_k_HR, global_par_k_d, reaction_r125_k_r15, x(70));

% Reaction: id = r127, name = r127
	reaction_r127=compartment_cytosol15*function_4_r127(global_par_D, x(67));

% Reaction: id = r128, name = r128
	reaction_r128=function_4_r128(global_par_A, x(53), x(71), x(51), global_par_L, x(52), global_par_k1, compartment_store11);

% Reaction: id = r129, name = r129
	reaction_r129=function_4_r129(global_par_B, x(53), compartment_cytosol11, global_par_k2);

% Reaction: id = r130, name = r130
	reaction_r130=function_4_r130(global_par_A, x(57), x(72), x(55), global_par_L, x(56), global_par_k1, compartment_store12);

% Reaction: id = r131, name = r131
	reaction_r131=function_4_r131(global_par_B, x(57), compartment_cytosol12, global_par_k2);

% Reaction: id = r132, name = r132
	reaction_r132=function_4_r132(global_par_A, x(61), x(73), x(59), global_par_L, x(60), global_par_k1, compartment_store13);

% Reaction: id = r133, name = r133
	reaction_r133=function_4_r133(global_par_B, x(61), compartment_cytosol13, global_par_k2);

% Reaction: id = r134, name = r134
	reaction_r134=function_4_r134(global_par_A, x(65), x(74), x(63), global_par_L, x(64), global_par_k1, compartment_store14);

% Reaction: id = r135, name = r135
	reaction_r135=function_4_r135(global_par_B, x(65), compartment_cytosol14, global_par_k2);

% Reaction: id = r136, name = r136
	reaction_r136=function_4_r136(global_par_A, x(69), x(75), x(67), global_par_L, x(68), global_par_k1, compartment_store15);

% Reaction: id = r137, name = r137
	reaction_r137=function_4_r137(global_par_B, x(69), compartment_cytosol15, global_par_k2);

% Reaction: id = r139, name = r139
	reaction_r139=function_4_r139(global_par_G, x(47), x(51), compartment_cytosol11);

% Reaction: id = r141, name = r141
	reaction_r141=function_4_r141(global_par_G, x(55), x(59), compartment_cytosol13);

% Reaction: id = r143, name = r143
	reaction_r143=function_4_r143(global_par_G, x(51), x(55), compartment_cytosol12);

% Reaction: id = r145, name = r145
	reaction_r145=function_4_r145(global_par_G, x(59), x(63), compartment_cytosol14);

% Reaction: id = r147, name = r147
	reaction_r147=function_4_r147(global_par_G, x(63), x(67), compartment_cytosol15);

%Event: id=event_1
	event_event_1=time >= 200;

	if(event_event_1) 
		global_par_H=1.8;
	end

	xdot=zeros(75,1);
	
% Species:   id = CaI_1, name = CaI_1, affected by kineticLaw
	xdot(1) = (1/(compartment_cytosol1))*(( 1.0 * reaction_r3) + (-1.0 * reaction_r5));
	
% Species:   id = g_1, name = g_1, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol1))*(( 1.0 * reaction_r6) + (-1.0 * reaction_r7));
	
% Species:   id = IP3_1, name = IP3_1, affected by kineticLaw
	xdot(3) = (1/(compartment_cytosol1))*(( 1.0 * reaction_r0) + (-1.0 * reaction_r4) + (-1.0 * reaction_r16));
	
% Species:   id = r_1, name = r_1, affected by kineticLaw
	xdot(4) = (1/(compartment_cytosol1))*((-1.0 * reaction_r1) + ( 1.0 * reaction_r2));
	
% Species:   id = CaT_1, name = CaT_1, affected by kineticLaw
	xdot(5) = (1/(compartment_store1))*((-1.0 * reaction_r3) + ( 1.0 * reaction_r5));
	
% Species:   id = g_2, name = g_2, affected by kineticLaw
	xdot(6) = (1/(compartment_cytosol2))*((-1.0 * reaction_r10) + ( 1.0 * reaction_r13));
	
% Species:   id = r_2, name = r_2, affected by kineticLaw
	xdot(7) = (1/(compartment_cytosol2))*(( 1.0 * reaction_r11) + (-1.0 * reaction_r12));
	
% Species:   id = CaI_2, name = CaI_2, affected by kineticLaw
	xdot(8) = (1/(compartment_cytosol2))*(( 1.0 * reaction_r9) + (-1.0 * reaction_r15));
	
% Species:   id = IP3_2, name = IP3_2, affected by kineticLaw
	xdot(9) = (1/(compartment_cytosol2))*(( 1.0 * reaction_r8) + (-1.0 * reaction_r14) + ( 1.0 * reaction_r16) + ( 1.0 * reaction_r27));
	
% Species:   id = CaT_2, name = CaT_2, affected by kineticLaw
	xdot(10) = (1/(compartment_store2))*((-1.0 * reaction_r9) + ( 1.0 * reaction_r15));
	
% Species:   id = CaI_3, name = CaI_3, affected by kineticLaw
	xdot(11) = (1/(compartment_cytosol3))*(( 1.0 * reaction_r19) + (-1.0 * reaction_r24));
	
% Species:   id = IP3_3, name = IP3_3, affected by kineticLaw
	xdot(12) = (1/(compartment_cytosol3))*(( 1.0 * reaction_r18) + (-1.0 * reaction_r23) + (-1.0 * reaction_r27) + ( 1.0 * reaction_r37));
	
% Species:   id = g_3, name = g_3, affected by kineticLaw
	xdot(13) = (1/(compartment_cytosol3))*((-1.0 * reaction_r22) + ( 1.0 * reaction_r25));
	
% Species:   id = r_3, name = r_3, affected by kineticLaw
	xdot(14) = (1/(compartment_cytosol3))*(( 1.0 * reaction_r20) + (-1.0 * reaction_r21));
	
% Species:   id = CaT_3, name = CaT_3, affected by kineticLaw
	xdot(15) = (1/(compartment_store3))*((-1.0 * reaction_r19) + ( 1.0 * reaction_r24));
	
% Species:   id = CaI_4, name = CaI_4, affected by kineticLaw
	xdot(16) = (1/(compartment_cytosol4))*(( 1.0 * reaction_r34) + (-1.0 * reaction_r35));
	
% Species:   id = IP3_4, name = IP3_4, affected by kineticLaw
	xdot(17) = (1/(compartment_cytosol4))*(( 1.0 * reaction_r29) + (-1.0 * reaction_r30) + (-1.0 * reaction_r37) + ( 1.0 * reaction_r47));
	
% Species:   id = r_4, name = r_4, affected by kineticLaw
	xdot(18) = (1/(compartment_cytosol4))*((-1.0 * reaction_r28) + ( 1.0 * reaction_r32));
	
% Species:   id = g_4, name = g_4, affected by kineticLaw
	xdot(19) = (1/(compartment_cytosol4))*((-1.0 * reaction_r31) + ( 1.0 * reaction_r33));
	
% Species:   id = CaT_4, name = CaT_4, affected by kineticLaw
	xdot(20) = (1/(compartment_store4))*((-1.0 * reaction_r34) + ( 1.0 * reaction_r35));
	
% Species:   id = r_5, name = r_5, affected by kineticLaw
	xdot(21) = (1/(compartment_cytosol5))*((-1.0 * reaction_r38) + ( 1.0 * reaction_r44));
	
% Species:   id = IP3_5, name = IP3_5, affected by kineticLaw
	xdot(22) = (1/(compartment_cytosol5))*(( 1.0 * reaction_r42) + (-1.0 * reaction_r43) + (-1.0 * reaction_r47) + ( 1.0 * reaction_r57));
	
% Species:   id = g_5, name = g_5, affected by kineticLaw
	xdot(23) = (1/(compartment_cytosol5))*(( 1.0 * reaction_r39) + (-1.0 * reaction_r41));
	
% Species:   id = CaI_5, name = CaI_5, affected by kineticLaw
	xdot(24) = (1/(compartment_cytosol5))*(( 1.0 * reaction_r40) + (-1.0 * reaction_r45));
	
% Species:   id = CaT_5, name = CaT_5, affected by kineticLaw
	xdot(25) = (1/(compartment_store5))*((-1.0 * reaction_r40) + ( 1.0 * reaction_r45));
	
% Species:   id = CaI_6, name = CaI_6, affected by kineticLaw
	xdot(26) = (1/(compartment_cytosol6))*((-1.0 * reaction_r48) + ( 1.0 * reaction_r50));
	
% Species:   id = g_6, name = g_6, affected by kineticLaw
	xdot(27) = (1/(compartment_cytosol6))*((-1.0 * reaction_r49) + ( 1.0 * reaction_r51));
	
% Species:   id = r_6, name = r_6, affected by kineticLaw
	xdot(28) = (1/(compartment_cytosol6))*(( 1.0 * reaction_r52) + (-1.0 * reaction_r53));
	
% Species:   id = IP3_6, name = IP3_6, affected by kineticLaw
	xdot(29) = (1/(compartment_cytosol6))*((-1.0 * reaction_r54) + ( 1.0 * reaction_r55) + (-1.0 * reaction_r57) + ( 1.0 * reaction_r67));
	
% Species:   id = CaT_6, name = CaT_6, affected by kineticLaw
	xdot(30) = (1/(compartment_store6))*(( 1.0 * reaction_r48) + (-1.0 * reaction_r50));
	
% Species:   id = CaI_7, name = CaI_7, affected by kineticLaw
	xdot(31) = (1/(compartment_cytosol7))*(( 1.0 * reaction_r61) + (-1.0 * reaction_r64));
	
% Species:   id = g_7, name = g_7, affected by kineticLaw
	xdot(32) = (1/(compartment_cytosol7))*(( 1.0 * reaction_r58) + (-1.0 * reaction_r65));
	
% Species:   id = r_7, name = r_7, affected by kineticLaw
	xdot(33) = (1/(compartment_cytosol7))*(( 1.0 * reaction_r59) + (-1.0 * reaction_r63));
	
% Species:   id = IP3_7, name = IP3_7, affected by kineticLaw
	xdot(34) = (1/(compartment_cytosol7))*(( 1.0 * reaction_r60) + (-1.0 * reaction_r62) + (-1.0 * reaction_r67) + ( 1.0 * reaction_r77));
	
% Species:   id = CaT_7, name = CaT_7, affected by kineticLaw
	xdot(35) = (1/(compartment_store7))*((-1.0 * reaction_r61) + ( 1.0 * reaction_r64));
	
% Species:   id = r_8, name = r_8, affected by kineticLaw
	xdot(36) = (1/(compartment_cytosol8))*((-1.0 * reaction_r71) + ( 1.0 * reaction_r74));
	
% Species:   id = IP3_8, name = IP3_8, affected by kineticLaw
	xdot(37) = (1/(compartment_cytosol8))*((-1.0 * reaction_r68) + ( 1.0 * reaction_r73) + (-1.0 * reaction_r77) + ( 1.0 * reaction_r87));
	
% Species:   id = g_8, name = g_8, affected by kineticLaw
	xdot(38) = (1/(compartment_cytosol8))*((-1.0 * reaction_r69) + ( 1.0 * reaction_r70));
	
% Species:   id = CaI_8, name = CaI_8, affected by kineticLaw
	xdot(39) = (1/(compartment_cytosol8))*(( 1.0 * reaction_r72) + (-1.0 * reaction_r75));
	
% Species:   id = CaT_8, name = CaT_8, affected by kineticLaw
	xdot(40) = (1/(compartment_store8))*((-1.0 * reaction_r72) + ( 1.0 * reaction_r75));
	
% Species:   id = IP3_9, name = IP3_9, affected by kineticLaw
	xdot(41) = (1/(compartment_cytosol9))*(( 1.0 * reaction_r81) + (-1.0 * reaction_r83) + (-1.0 * reaction_r87) + ( 1.0 * reaction_r96));
	
% Species:   id = CaI_9, name = CaI_9, affected by kineticLaw
	xdot(42) = (1/(compartment_cytosol9))*(( 1.0 * reaction_r84) + (-1.0 * reaction_r85));
	
% Species:   id = r_9, name = r_9, affected by kineticLaw
	xdot(43) = (1/(compartment_cytosol9))*(( 1.0 * reaction_r80) + (-1.0 * reaction_r82));
	
% Species:   id = g_9, name = g_9, affected by kineticLaw
	xdot(44) = (1/(compartment_cytosol9))*(( 1.0 * reaction_r78) + (-1.0 * reaction_r79));
	
% Species:   id = CaT_9, name = CaT_9, affected by kineticLaw
	xdot(45) = (1/(compartment_store9))*((-1.0 * reaction_r84) + ( 1.0 * reaction_r85));
	
% Species:   id = r_10, name = r_10, affected by kineticLaw
	xdot(46) = (1/(compartment_cytosol10))*(( 1.0 * reaction_r88) + (-1.0 * reaction_r91));
	
% Species:   id = IP3_10, name = IP3_10, affected by kineticLaw
	xdot(47) = (1/(compartment_cytosol10))*(( 1.0 * reaction_r89) + (-1.0 * reaction_r93) + (-1.0 * reaction_r96) + ( 1.0 * reaction_r139));
	
% Species:   id = g_10, name = g_10, affected by kineticLaw
	xdot(48) = (1/(compartment_cytosol10))*((-1.0 * reaction_r90) + ( 1.0 * reaction_r92));
	
% Species:   id = CaI_10, name = CaI_10, affected by kineticLaw
	xdot(49) = (1/(compartment_cytosol10))*(( 1.0 * reaction_r94) + (-1.0 * reaction_r95));
	
% Species:   id = CaT_10, name = CaT_10, affected by kineticLaw
	xdot(50) = (1/(compartment_store10))*((-1.0 * reaction_r94) + ( 1.0 * reaction_r95));
	
% Species:   id = IP3_11, name = IP3_11, affected by kineticLaw
	xdot(51) = (1/(compartment_cytosol11))*(( 1.0 * reaction_r98) + (-1.0 * reaction_r103) + (-1.0 * reaction_r139) + ( 1.0 * reaction_r143));
	
% Species:   id = g_11, name = g_11, affected by kineticLaw
	xdot(52) = (1/(compartment_cytosol11))*(( 1.0 * reaction_r99) + (-1.0 * reaction_r100));
	
% Species:   id = CaI_11, name = CaI_11, affected by kineticLaw
	xdot(53) = (1/(compartment_cytosol11))*(( 1.0 * reaction_r128) + (-1.0 * reaction_r129));
	
% Species:   id = r_11, name = r_11, affected by kineticLaw
	xdot(54) = (1/(compartment_cytosol11))*((-1.0 * reaction_r101) + ( 1.0 * reaction_r102));
	
% Species:   id = IP3_12, name = IP3_12, affected by kineticLaw
	xdot(55) = (1/(compartment_cytosol12))*(( 1.0 * reaction_r104) + (-1.0 * reaction_r109) + ( 1.0 * reaction_r141) + (-1.0 * reaction_r143));
	
% Species:   id = g_12, name = g_12, affected by kineticLaw
	xdot(56) = (1/(compartment_cytosol12))*(( 1.0 * reaction_r105) + (-1.0 * reaction_r106));
	
% Species:   id = CaI_12, name = CaI_12, affected by kineticLaw
	xdot(57) = (1/(compartment_cytosol12))*(( 1.0 * reaction_r130) + (-1.0 * reaction_r131));
	
% Species:   id = r_12, name = r_12, affected by kineticLaw
	xdot(58) = (1/(compartment_cytosol12))*((-1.0 * reaction_r107) + ( 1.0 * reaction_r108));
	
% Species:   id = IP3_13, name = IP3_13, affected by kineticLaw
	xdot(59) = (1/(compartment_cytosol13))*(( 1.0 * reaction_r110) + (-1.0 * reaction_r115) + (-1.0 * reaction_r141) + ( 1.0 * reaction_r145));
	
% Species:   id = g_13, name = g_13, affected by kineticLaw
	xdot(60) = (1/(compartment_cytosol13))*(( 1.0 * reaction_r111) + (-1.0 * reaction_r112));
	
% Species:   id = CaI_13, name = CaI_13, affected by kineticLaw
	xdot(61) = (1/(compartment_cytosol13))*(( 1.0 * reaction_r132) + (-1.0 * reaction_r133));
	
% Species:   id = r_13, name = r_13, affected by kineticLaw
	xdot(62) = (1/(compartment_cytosol13))*((-1.0 * reaction_r113) + ( 1.0 * reaction_r114));
	
% Species:   id = IP3_14, name = IP3_14, affected by kineticLaw
	xdot(63) = (1/(compartment_cytosol14))*(( 1.0 * reaction_r116) + (-1.0 * reaction_r121) + (-1.0 * reaction_r145) + ( 1.0 * reaction_r147));
	
% Species:   id = g_14, name = g_14, affected by kineticLaw
	xdot(64) = (1/(compartment_cytosol14))*(( 1.0 * reaction_r117) + (-1.0 * reaction_r118));
	
% Species:   id = CaI_14, name = CaI_14, affected by kineticLaw
	xdot(65) = (1/(compartment_cytosol14))*(( 1.0 * reaction_r134) + (-1.0 * reaction_r135));
	
% Species:   id = r_14, name = r_14, affected by kineticLaw
	xdot(66) = (1/(compartment_cytosol14))*((-1.0 * reaction_r119) + ( 1.0 * reaction_r120));
	
% Species:   id = IP3_15, name = IP3_15, affected by kineticLaw
	xdot(67) = (1/(compartment_cytosol15))*(( 1.0 * reaction_r122) + (-1.0 * reaction_r127) + (-1.0 * reaction_r147));
	
% Species:   id = g_15, name = g_15, affected by kineticLaw
	xdot(68) = (1/(compartment_cytosol15))*(( 1.0 * reaction_r123) + (-1.0 * reaction_r124));
	
% Species:   id = CaI_15, name = CaI_15, affected by kineticLaw
	xdot(69) = (1/(compartment_cytosol15))*(( 1.0 * reaction_r136) + (-1.0 * reaction_r137));
	
% Species:   id = r_15, name = r_15, affected by kineticLaw
	xdot(70) = (1/(compartment_cytosol15))*((-1.0 * reaction_r125) + ( 1.0 * reaction_r126));
	
% Species:   id = CaT_11, name = CaT_11, affected by kineticLaw
	xdot(71) = (1/(compartment_store11))*((-1.0 * reaction_r128) + ( 1.0 * reaction_r129));
	
% Species:   id = CaT_12, name = CaT_12, affected by kineticLaw
	xdot(72) = (1/(compartment_store12))*((-1.0 * reaction_r130) + ( 1.0 * reaction_r131));
	
% Species:   id = CaT_13, name = CaT_13, affected by kineticLaw
	xdot(73) = (1/(compartment_store13))*((-1.0 * reaction_r132) + ( 1.0 * reaction_r133));
	
% Species:   id = CaT_14, name = CaT_14, affected by kineticLaw
	xdot(74) = (1/(compartment_store14))*((-1.0 * reaction_r134) + ( 1.0 * reaction_r135));
	
% Species:   id = CaT_15, name = CaT_15, affected by kineticLaw
	xdot(75) = (1/(compartment_store15))*((-1.0 * reaction_r136) + ( 1.0 * reaction_r137));
end

function z=function_1(v), z=(v);end

function z=function_4_r0(CaI_1,H,k3,k_ip31,kcat,r_1), z=(k_ip31*H*r_1*(1+(-k3*1/(CaI_1+k3)))*1/(kcat+r_1));end

function z=function_4_r1(H,k_HR,k_d,k_r1,r_1), z=(k_d*r_1+k_HR*H*r_1+k_r1*r_1);end

function z=function_4_r3(A,CaI_1,CaT_1,IP3_1,L,g_1,k1,store1), z=((1+(-g_1))*(A*(0.5*IP3_1)^4*1/(k1+0.5*IP3_1)^4+L)*(CaT_1+(-CaI_1))*store1);end

function z=function_4_r4(D,IP3_1), z=(0.5*D*IP3_1);end

function z=function_4_r5(B,CaI_1,cytosol1,k2), z=(B*CaI_1^2*1/(k2^2+CaI_1^2)*cytosol1);end

function z=function_4_r6(CaI_1,E,g_1), z=(E*CaI_1^4*(1+(-g_1)));end

function z=function_4_r8(CaI_2,H,k3,k_ip32,kcat,r_2), z=(k_ip32*H*r_2*(1+(-k3*1/(CaI_2+k3)))*1/(kcat+r_2));end

function z=function_4_r12(H,k_HR,k_d,k_r2,r_2), z=(k_d*r_2+k_HR*H*r_2+k_r2*r_2);end

function z=function_4_r13(CaI_2,E,g_2), z=(E*CaI_2^4*(1+(-g_2)));end

function z=function_4_r14(D,IP3_2), z=(0.5*D*IP3_2);end

function z=function_4_r9(A,CaI_2,CaT_2,IP3_2,L,g_2,k1,store2), z=((1+(-g_2))*(A*(0.5*IP3_2)^4*1/(k1+0.5*IP3_2)^4+L)*(CaT_2+(-CaI_2))*store2);end

function z=function_4_r15(B,CaI_2,cytosol2,k2), z=(B*CaI_2^2*1/(k2^2+CaI_2^2)*cytosol2);end

function z=function_4_r16(G,IP3_1,IP3_2,cytosol1), z=(G*(IP3_1+(-IP3_2))*cytosol1);end

function z=function_4_r18(CaI_3,H,k3,k_ip33,kcat,r_3), z=(k_ip33*H*r_3*(1+(-k3*1/(CaI_3+k3)))*1/(kcat+r_3));end

function z=function_4_r21(H,k_HR,k_d,k_r3,r_3), z=(k_d*r_3+k_HR*H*r_3+k_r3*r_3);end

function z=function_4_r23(D,IP3_3), z=(0.5*D*IP3_3);end

function z=function_4_r25(CaI_3,E,g_3), z=(E*CaI_3^4*(1+(-g_3)));end

function z=function_4_r19(A,CaI_3,CaT_3,IP3_3,L,g_3,k1,store3), z=((1+(-g_3))*(A*(0.5*IP3_3)^4*1/(k1+0.5*IP3_3)^4+L)*(CaT_3+(-CaI_3))*store3);end

function z=function_4_r24(B,CaI_3,cytosol3,k2), z=(B*CaI_3^2*1/(k2^2+CaI_3^2)*cytosol3);end

function z=function_4_r27(G,IP3_2,IP3_3,cytosol3), z=(G*(IP3_3+(-IP3_2))*cytosol3);end

function z=function_4_r28(H,k_HR,k_d,k_r4,r_4), z=(k_d*r_4+k_HR*H*r_4+k_r4*r_4);end

function z=function_4_r29(CaI_4,H,k3,k_ip34,kcat,r_4), z=(k_ip34*H*r_4*(1+(-k3*1/(CaI_4+k3)))*1/(kcat+r_4));end

function z=function_4_r30(D,IP3_4), z=(0.5*D*IP3_4);end

function z=function_4_r33(CaI_4,E,g_4), z=(E*CaI_4^4*(1+(-g_4)));end

function z=function_4_r34(A,CaI_4,CaT_4,IP3_4,L,g_4,k1,store4), z=((1+(-g_4))*(A*(0.5*IP3_4)^4*1/(k1+0.5*IP3_4)^4+L)*(CaT_4+(-CaI_4))*store4);end

function z=function_4_r35(B,CaI_4,cytosol4,k2), z=(B*CaI_4^2*1/(k2^2+CaI_4^2)*cytosol4);end

function z=function_4_r37(G,IP3_3,IP3_4,cytosol4), z=(G*(IP3_4+(-IP3_3))*cytosol4);end

function z=function_4_r38(H,k_HR,k_d,k_r5,r_5), z=(k_d*r_5+k_HR*H*r_5+k_r5*r_5);end

function z=function_4_r39(CaI_5,E,g_5), z=(E*CaI_5^4*(1+(-g_5)));end

function z=function_4_r42(CaI_5,H,k3,k_ip35,kcat,r_5), z=(k_ip35*H*r_5*(1+(-k3*1/(CaI_5+k3)))*1/(kcat+r_5));end

function z=function_4_r43(D,IP3_5), z=(0.5*D*IP3_5);end

function z=function_4_r40(A,CaI_5,CaT_5,IP3_5,L,g_5,k1,store5), z=((1+(-g_5))*(A*(0.5*IP3_5)^4*1/(k1+0.5*IP3_5)^4+L)*(CaT_5+(-CaI_5))*store5);end

function z=function_4_r45(B,CaI_5,cytosol5,k2), z=(B*CaI_5^2*1/(k2^2+CaI_5^2)*cytosol5);end

function z=function_4_r47(G,IP3_4,IP3_5,cytosol5), z=(G*(IP3_5+(-IP3_4))*cytosol5);end

function z=function_4_r51(CaI_6,E,g_6), z=(E*CaI_6^4*(1+(-g_6)));end

function z=function_4_r53(H,k_HR,k_d,k_r6,r_6), z=(k_d*r_6+k_HR*H*r_6+k_r6*r_6);end

function z=function_4_r54(D,IP3_6), z=(0.5*D*IP3_6);end

function z=function_4_r55(CaI_6,H,k3,k_ip36,kcat,r_6), z=(k_ip36*H*r_6*(1+(-k3*1/(CaI_6+k3)))*1/(kcat+r_6));end

function z=function_4_r48(B,CaI_6,cytosol6,k2), z=(B*CaI_6^2*1/(k2^2+CaI_6^2)*cytosol6);end

function z=function_4_r50(A,CaI_6,CaT_6,IP3_6,L,g_6,k1,store6), z=((1+(-g_6))*(A*(0.5*IP3_6)^4*1/(k1+0.5*IP3_6)^4+L)*(CaT_6+(-CaI_6))*store6);end

function z=function_4_r57(G,IP3_5,IP3_6,cytosol6), z=(G*(IP3_6+(-IP3_5))*cytosol6);end

function z=function_4_r58(CaI_7,E,g_7), z=(E*CaI_7^4*(1+(-g_7)));end

function z=function_4_r60(CaI_7,H,k3,k_ip37,kcat,r_7), z=(k_ip37*H*r_7*(1+(-k3*1/(CaI_7+k3)))*1/(kcat+r_7));end

function z=function_4_r62(D,IP3_7), z=(0.5*D*IP3_7);end

function z=function_4_r63(H,k_HR,k_d,k_r7,r_7), z=(k_d*r_7+k_HR*H*r_7+k_r7*r_7);end

function z=function_4_r61(A,CaI_7,CaT_7,IP3_7,L,g_7,k1,store7), z=((1+(-g_7))*(A*(0.5*IP3_7)^4*1/(k1+0.5*IP3_7)^4+L)*(CaT_7+(-CaI_7))*store7);end

function z=function_4_r64(B,CaI_7,cytosol7,k2), z=(B*CaI_7^2*1/(k2^2+CaI_7^2)*cytosol7);end

function z=function_4_r67(G,IP3_6,IP3_7,cytosol7), z=(G*(IP3_7+(-IP3_6))*cytosol7);end

function z=function_4_r68(D,IP3_8), z=(0.5*D*IP3_8);end

function z=function_4_r70(CaI_8,E,g_8), z=(E*CaI_8^4*(1+(-g_8)));end

function z=function_4_r71(H,k_HR,k_d,k_r8,r_8), z=(k_d*r_8+k_HR*H*r_8+k_r8*r_8);end

function z=function_4_r73(CaI_8,H,k3,k_ip38,kcat,r_8), z=(k_ip38*H*r_8*(1+(-k3*1/(CaI_8+k3)))*1/(kcat+r_8));end

function z=function_4_r72(A,CaI_8,CaT_8,IP3_8,L,g_8,k1,store8), z=((1+(-g_8))*(A*(0.5*IP3_8)^4*1/(k1+0.5*IP3_8)^4+L)*(CaT_8+(-CaI_8))*store8);end

function z=function_4_r75(B,CaI_8,cytosol8,k2), z=(B*CaI_8^2*1/(k2^2+CaI_8^2)*cytosol8);end

function z=function_4_r77(G,IP3_7,IP3_8,cytosol8), z=(G*(IP3_8+(-IP3_7))*cytosol8);end

function z=function_4_r78(CaI_9,E,g_9), z=(E*CaI_9^4*(1+(-g_9)));end

function z=function_4_r81(CaI_9,H,k3,k_ip39,kcat,r_9), z=(k_ip39*H*r_9*(1+(-k3*1/(CaI_9+k3)))*1/(kcat+r_9));end

function z=function_4_r82(H,k_HR,k_d,k_r9,r_9), z=(k_d*r_9+k_HR*H*r_9+k_r9*r_9);end

function z=function_4_r83(D,IP3_9), z=(0.5*D*IP3_9);end

function z=function_4_r84(A,CaI_9,CaT_9,IP3_9,L,g_9,k1,store9), z=((1+(-g_9))*(A*(0.5*IP3_9)^4*1/(k1+0.5*IP3_9)^4+L)*(CaT_9+(-CaI_9))*store9);end

function z=function_4_r85(B,CaI_9,cytosol9,k2), z=(B*CaI_9^2*1/(k2^2+CaI_9^2)*cytosol9);end

function z=function_4_r87(G,IP3_8,IP3_9,cytosol9), z=(G*(IP3_9+(-IP3_8))*cytosol9);end

function z=function_4_r89(CaI_10,H,k3,k_ip310,kcat,r_10), z=(k_ip310*H*r_10*(1+(-k3*1/(CaI_10+k3)))*1/(kcat+r_10));end

function z=function_4_r91(H,k_HR,k_d,k_r10,r_10), z=(k_d*r_10+k_HR*H*r_10+k_r10*r_10);end

function z=function_4_r92(CaI_10,E,g_10), z=(E*CaI_10^4*(1+(-g_10)));end

function z=function_4_r93(D,IP3_10), z=(0.5*D*IP3_10);end

function z=function_4_r95(B,CaI_10,cytosol10,k2), z=(B*CaI_10^2*1/(k2^2+CaI_10^2)*cytosol10);end

function z=function_4_r94(A,CaI_10,CaT_10,IP3_10,L,g_10,k1,store10), z=((1+(-g_10))*(A*(0.5*IP3_10)^4*1/(k1+0.5*IP3_10)^4+L)*(CaT_10+(-CaI_10))*store10);end

function z=function_4_r96(G,IP3_10,IP3_9,cytosol10), z=(G*(IP3_10+(-IP3_9))*cytosol10);end

function z=function_4_r98(CaI_11,H,k3,k_ip311,kcat,r_11), z=(k_ip311*H*r_11*(1+(-k3*1/(CaI_11+k3)))*1/(kcat+r_11));end

function z=function_4_r99(CaI_11,E,g_11), z=(E*CaI_11^4*(1+(-g_11)));end

function z=function_4_r101(H,k_HR,k_d,k_r11,r_11), z=(k_d*r_11+k_HR*H*r_11+k_r11*r_11);end

function z=function_4_r103(D,IP3_11), z=(0.5*D*IP3_11);end

function z=function_4_r104(CaI_12,H,k3,k_ip312,kcat,r_12), z=(k_ip312*H*r_12*(1+(-k3*1/(CaI_12+k3)))*1/(kcat+r_12));end

function z=function_4_r105(CaI_12,E,g_12), z=(E*CaI_12^4*(1+(-g_12)));end

function z=function_4_r107(H,k_HR,k_d,k_r12,r_12), z=(k_d*r_12+k_HR*H*r_12+k_r12*r_12);end

function z=function_4_r109(D,IP3_12), z=(0.5*D*IP3_12);end

function z=function_4_r110(CaI_13,H,k3,k_ip313,kcat,r_13), z=(k_ip313*H*r_13*(1+(-k3*1/(CaI_13+k3)))*1/(kcat+r_13));end

function z=function_4_r111(CaI_13,E,g_13), z=(E*CaI_13^4*(1+(-g_13)));end

function z=function_4_r113(H,k_HR,k_d,k_r13,r_13), z=(k_d*r_13+k_HR*H*r_13+k_r13*r_13);end

function z=function_4_r115(D,IP3_13), z=(0.5*D*IP3_13);end

function z=function_4_r116(CaI_14,H,k3,k_ip314,kcat,r_14), z=(k_ip314*H*r_14*(1+(-k3*1/(CaI_14+k3)))*1/(kcat+r_14));end

function z=function_4_r117(CaI_14,E,g_14), z=(E*CaI_14^4*(1+(-g_14)));end

function z=function_4_r119(H,k_HR,k_d,k_r14,r_14), z=(k_d*r_14+k_HR*H*r_14+k_r14*r_14);end

function z=function_4_r121(D,IP3_14), z=(0.5*D*IP3_14);end

function z=function_4_r122(CaI_15,H,k3,k_ip315,kcat,r_15), z=(k_ip315*H*r_15*(1+(-k3*1/(CaI_15+k3)))*1/(kcat+r_15));end

function z=function_4_r123(CaI_15,E,g_15), z=(E*CaI_15^4*(1+(-g_15)));end

function z=function_4_r125(H,k_HR,k_d,k_r15,r_15), z=(k_d*r_15+k_HR*H*r_15+k_r15*r_15);end

function z=function_4_r127(D,IP3_15), z=(0.5*D*IP3_15);end

function z=function_4_r128(A,CaI_11,CaT_11,IP3_11,L,g_11,k1,store11), z=((1+(-g_11))*(A*(0.5*IP3_11)^4*1/(k1+0.5*IP3_11)^4+L)*(CaT_11+(-CaI_11))*store11);end

function z=function_4_r129(B,CaI_11,cytosol11,k2), z=(B*CaI_11^2*1/(k2^2+CaI_11^2)*cytosol11);end

function z=function_4_r130(A,CaI_12,CaT_12,IP3_12,L,g_12,k1,store12), z=((1+(-g_12))*(A*(0.5*IP3_12)^4*1/(k1+0.5*IP3_12)^4+L)*(CaT_12+(-CaI_12))*store12);end

function z=function_4_r131(B,CaI_12,cytosol12,k2), z=(B*CaI_12^2*1/(k2^2+CaI_12^2)*cytosol12);end

function z=function_4_r132(A,CaI_13,CaT_13,IP3_13,L,g_13,k1,store13), z=((1+(-g_13))*(A*(0.5*IP3_13)^4*1/(k1+0.5*IP3_13)^4+L)*(CaT_13+(-CaI_13))*store13);end

function z=function_4_r133(B,CaI_13,cytosol13,k2), z=(B*CaI_13^2*1/(k2^2+CaI_13^2)*cytosol13);end

function z=function_4_r134(A,CaI_14,CaT_14,IP3_14,L,g_14,k1,store14), z=((1+(-g_14))*(A*(0.5*IP3_14)^4*1/(k1+0.5*IP3_14)^4+L)*(CaT_14+(-CaI_14))*store14);end

function z=function_4_r135(B,CaI_14,cytosol14,k2), z=(B*CaI_14^2*1/(k2^2+CaI_14^2)*cytosol14);end

function z=function_4_r136(A,CaI_15,CaT_15,IP3_15,L,g_15,k1,store15), z=((1+(-g_15))*(A*(0.5*IP3_15)^4*1/(k1+0.5*IP3_15)^4+L)*(CaT_15+(-CaI_15))*store15);end

function z=function_4_r137(B,CaI_15,cytosol15,k2), z=(B*CaI_15^2*1/(k2^2+CaI_15^2)*cytosol15);end

function z=function_4_r139(G,IP3_10,IP3_11,cytosol11), z=(G*(IP3_11+(-IP3_10))*cytosol11);end

function z=function_4_r141(G,IP3_12,IP3_13,cytosol13), z=(G*(IP3_13+(-IP3_12))*cytosol13);end

function z=function_4_r143(G,IP3_11,IP3_12,cytosol12), z=(G*(IP3_12+(-IP3_11))*cytosol12);end

function z=function_4_r145(G,IP3_13,IP3_14,cytosol14), z=(G*(IP3_14+(-IP3_13))*cytosol14);end

function z=function_4_r147(G,IP3_14,IP3_15,cytosol15), z=(G*(IP3_15+(-IP3_14))*cytosol15);end

% adding few functions representing operators used in SBML but not present directly 
% in either matlab or octave. 
function z=pow(x,y),z=x^y;end
function z=root(x,y),z=y^(1/x);end
function z = piecewise(varargin)
	numArgs = nargin;
	result = 0;
	foundResult = 0;
	for k=1:2: numArgs-1
		if varargin{k+1} == 1
			result = varargin{k};
			foundResult = 1;
			break;
		end
	end
	if foundResult == 0
		result = varargin{numArgs};
	end
	z = result;
end


