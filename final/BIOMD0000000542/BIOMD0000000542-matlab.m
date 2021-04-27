% This file works with MATLAB and is automatically generated with 
% the System Biology Format Converter (http://sbfc.sourceforge.net/)
% from an SBML file. 
% To run this file with Octave you must edit the comments providing
% the definition of the ode solver and the signature for the 
% xdot function.
%
% The conversion system has the following limitations:
%  - You may have to re order some reactions and Assignment Rules definition
%  - Delays are not taken into account
%  - You should change the lsode parameters (start, end, steps) to get better results
%

%
% Model name = Yuraszeck2010 - Vulnerabilities in the Tau Network in Tau Pathophysiology
%
% is http://identifiers.org/biomodels.db/MODEL1408150000
% is http://identifiers.org/biomodels.db/BIOMD0000000542
% isDescribedBy http://identifiers.org/pubmed/21085645
%


function main()
%Initial conditions vector
	x0=zeros(49,1);
	x0(46) = 1.0;
	x0(47) = 1.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 15.0;
	x0(4) = 1.0;
	x0(5) = 0.1;
	x0(6) = 0.1;
	x0(7) = 0.1;
	x0(8) = 0.1;
	x0(9) = 1.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 0.0;


% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
	tspan=[0:0.01:100];
	opts = odeset('AbsTol',1e-3);
	[t,x]=ode23tb(@f,tspan,x0,opts);
% End Matlab code

% Start Octave code
%	t=linspace(0,100,100);
%	x=lsode('f',x0,t);
% End Octave code


	plot(t,x);
end



% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
function xdot=f(t,x)
% End Matlab code

% Start Octave code
%function xdot=f(x,t)
% End Octave code

% Compartment: id = Brain, name = Brain, constant
	compartment_Brain=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.03725;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.391818;
% Parameter:   id =  k3, name = k3
	global_par_k3=27.5668;
% Parameter:   id =  k4, name = k4
	global_par_k4=6.065997;
% Parameter:   id =  k5, name = k5
	global_par_k5=7.99621;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.142099;
% Parameter:   id =  k7, name = k7
	global_par_k7=21.91138;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.608448;
% Parameter:   id =  k9, name = k9
	global_par_k9=5.760257;
% Parameter:   id =  k10, name = k10
	global_par_k10=7.118684;
% Parameter:   id =  k11, name = k11
	global_par_k11=15.0;
% Parameter:   id =  k12, name = k12
	global_par_k12=9.633772;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.163388;
% Parameter:   id =  k14, name = k14
	global_par_k14=1.540886;
% Parameter:   id =  k15, name = k15
	global_par_k15=9.220426;
% Parameter:   id =  k16, name = k16
	global_par_k16=50.66157;
% Parameter:   id =  k17, name = k17
	global_par_k17=0.202066;
% Parameter:   id =  k18, name = k18
	global_par_k18=3.940468;
% Parameter:   id =  k19, name = k19
	global_par_k19=8.052152;
% Parameter:   id =  k20, name = k20
	global_par_k20=19.76984;
% Parameter:   id =  k21, name = k21
	global_par_k21=7.248652;
% Parameter:   id =  k22, name = k22
	global_par_k22=0.173127;
% Parameter:   id =  k23, name = k23
	global_par_k23=0.075176;
% Parameter:   id =  k24, name = k24
	global_par_k24=0.039141;
% Parameter:   id =  k25, name = k25
	global_par_k25=0.066012;
% Parameter:   id =  k26, name = k26
	global_par_k26=0.1452;
% Parameter:   id =  k27, name = k27
	global_par_k27=0.473124;
% Parameter:   id =  k28, name = k28
	global_par_k28=12.62955;
% Parameter:   id =  k29, name = k29
	global_par_k29=0.006017;
% Parameter:   id =  k30, name = k30
	global_par_k30=16.56551;
% Parameter:   id =  k31, name = k31
	global_par_k31=3.991539;
% Parameter:   id =  k32, name = k32
	global_par_k32=7.130081;
% Parameter:   id =  k33, name = k33
	global_par_k33=0.009267;
% Parameter:   id =  k34, name = k34
	global_par_k34=1.11E-4;
% Parameter:   id =  k35, name = k35
	global_par_k35=0.146177;
% Parameter:   id =  k36, name = k36
	global_par_k36=0.006298;
% Parameter:   id =  k37, name = k37
	global_par_k37=1.07;
% Parameter:   id =  k38, name = k38
	global_par_k38=0.029266;
% Parameter:   id =  k39, name = k39
	global_par_k39=1.163756;
% Parameter:   id =  k40, name = k40
	global_par_k40=0.050949;
% Parameter:   id =  k41, name = k41
	global_par_k41=0.279;
% Parameter:   id =  k42, name = k42
	global_par_k42=0.025365;
% Parameter:   id =  k43, name = k43
	global_par_k43=3.68998;
% Parameter:   id =  k44, name = k44
	global_par_k44=27.5668;
% Parameter:   id =  k45, name = k45
	global_par_k45=0.216599;
% Parameter:   id =  k46, name = k46
	global_par_k46=7.99621;
% Parameter:   id =  k47, name = k47
	global_par_k47=2.801964;
% Parameter:   id =  k48, name = k48
	global_par_k48=21.91138;
% Parameter:   id =  k49, name = k49
	global_par_k49=0.003379;
% Parameter:   id =  k50, name = k50
	global_par_k50=5.760257;
% Parameter:   id =  k51, name = k51
	global_par_k51=7.118684;
% Parameter:   id =  k52, name = k52
	global_par_k52=15.0;
% Parameter:   id =  k53, name = k53
	global_par_k53=9.633772;
% Parameter:   id =  k54, name = k54
	global_par_k54=0.054463;
% Parameter:   id =  k55, name = k55
	global_par_k55=1.540886;
% Parameter:   id =  k56, name = k56
	global_par_k56=9.220426;
% Parameter:   id =  k57, name = k57
	global_par_k57=50.66157;
% Parameter:   id =  k58, name = k58
	global_par_k58=0.067355;
% Parameter:   id =  k59, name = k59
	global_par_k59=3.940468;
% Parameter:   id =  k60, name = k60
	global_par_k60=8.052152;
% Parameter:   id =  k61, name = k61
	global_par_k61=19.76984;
% Parameter:   id =  k62, name = k62
	global_par_k62=2.416217;
% Parameter:   id =  k63, name = k63
	global_par_k63=0.211664;
% Parameter:   id =  k64, name = k64
	global_par_k64=0.074306;
% Parameter:   id =  k65, name = k65
	global_par_k65=0.001334;
% Parameter:   id =  k66, name = k66
	global_par_k66=0.028914;
% Parameter:   id =  k67, name = k67
	global_par_k67=0.1452;
% Parameter:   id =  k68, name = k68
	global_par_k68=0.004313;
% Parameter:   id =  k69, name = k69
	global_par_k69=12.62955;
% Parameter:   id =  k70, name = k70
	global_par_k70=0.073055;
% Parameter:   id =  k71, name = k71
	global_par_k71=16.56551;
% Parameter:   id =  k72, name = k72
	global_par_k72=0.014352;
% Parameter:   id =  k73, name = k73
	global_par_k73=7.130081;
% Parameter:   id =  k74, name = k74
	global_par_k74=1.61E-4;
% Parameter:   id =  k75, name = k75
	global_par_k75=8.57E-5;
% Parameter:   id =  k76, name = k76
	global_par_k76=0.283991;
% Parameter:   id =  k77, name = k77
	global_par_k77=1.185806;
% Parameter:   id =  k78, name = k78
	global_par_k78=0.004562;
% Parameter:   id =  k79, name = k79
	global_par_k79=0.346673;
% Parameter:   id =  k80, name = k80
	global_par_k80=0.551509;
% Parameter:   id =  k81, name = k81
	global_par_k81=5.59E-5;
% Parameter:   id =  k82, name = k82
	global_par_k82=0.644848;
% Parameter:   id =  k83, name = k83
	global_par_k83=0.006502;
% Parameter:   id =  k84, name = k84
	global_par_k84=0.68;
% Parameter:   id =  k85, name = k85
	global_par_k85=0.015317;
% Parameter:   id =  k86, name = k86
	global_par_k86=5.0E-6;
% Parameter:   id =  k87, name = k87
	global_par_k87=0.0012;
% Parameter:   id =  k88, name = k88
	global_par_k88=5.0E-6;
% Parameter:   id =  k89, name = k89
	global_par_k89=0.06;
% Parameter:   id =  k90, name = k90
	global_par_k90=0.095;
% Parameter:   id =  k91, name = k91
	global_par_k91=0.005429;
% Parameter:   id =  k92, name = k92
	global_par_k92=0.095;
% Parameter:   id =  k93, name = k93
	global_par_k93=0.019;
% rateRule: variable = _20S
x(4) = x(46);
% rateRule: variable = _26S
x(9) = x(47);
% rateRule: variable = Ap
x(15) = x(48);
% rateRule: variable = Bp
x(17) = x(49);

% Reaction: id = r2, name = r2
	reaction_r2=compartment_Brain*Michaelis_Menten(global_par_k2, x(18), x(2), global_par_k3);

% Reaction: id = r3, name = r3
	reaction_r3=compartment_Brain*Henri_Michaelis_Menten__irreversible(x(19), global_par_k5, global_par_k4);

% Reaction: id = r4, name = r4
	reaction_r4=compartment_Brain*Michaelis_Menten(global_par_k6, x(19), x(2), global_par_k7);

% Reaction: id = r5, name = r5
	reaction_r5=compartment_Brain*Henri_Michaelis_Menten__irreversible(x(20), global_par_k9, global_par_k8);

% Reaction: id = r6, name = r6
	reaction_r6=compartment_Brain*global_par_k10*x(18);

% Reaction: id = r7, name = r7
	reaction_r7=compartment_Brain*global_par_k11*x(21);

% Reaction: id = r8, name = r8
	reaction_r8=compartment_Brain*Mass_Action(global_par_k12, x(21), x(3));

% Reaction: id = r9, name = r9
	reaction_r9=compartment_Brain*global_par_k13*x(22);

% Reaction: id = r10, name = r10
	reaction_r10=compartment_Brain*global_par_k14*x(19);

% Reaction: id = r11, name = r11
	reaction_r11=compartment_Brain*global_par_k15*x(23);

% Reaction: id = r12, name = r12
	reaction_r12=compartment_Brain*Mass_Action(global_par_k16, x(23), x(3));

% Reaction: id = r13, name = r13
	reaction_r13=compartment_Brain*global_par_k17*x(24);

% Reaction: id = r14, name = r14
	reaction_r14=compartment_Brain*global_par_k18*x(20);

% Reaction: id = r15, name = r15
	reaction_r15=compartment_Brain*global_par_k19*x(25);

% Reaction: id = r16, name = r16
	reaction_r16=compartment_Brain*Mass_Action(global_par_k20, x(25), x(3));

% Reaction: id = r17, name = r17
	reaction_r17=compartment_Brain*global_par_k21*x(26);

% Reaction: id = r18, name = r18
	reaction_r18=compartment_Brain*Mass_Action_(global_par_k22, x(18), x(4), x(2));

% Reaction: id = r19, name = r19
	reaction_r19=compartment_Brain*Mass_Action_(global_par_k23, x(19), x(4), x(2));

% Reaction: id = r20, name = r20
	reaction_r20=compartment_Brain*Mass_Action_(global_par_k24, x(20), x(4), x(2));

% Reaction: id = r21, name = r21
	reaction_r21=compartment_Brain*Michaelis_Menten(global_par_k25, x(22), x(2), global_par_k26);

% Reaction: id = r22, name = r22
	reaction_r22=compartment_Brain*Henri_Michaelis_Menten__irreversible(x(24), global_par_k28, global_par_k27);

% Reaction: id = r23, name = r23
	reaction_r23=compartment_Brain*Michaelis_Menten(global_par_k29, x(24), x(2), global_par_k30);

% Reaction: id = r24, name = r24
	reaction_r24=compartment_Brain*Henri_Michaelis_Menten__irreversible(x(26), global_par_k32, global_par_k31);

% Reaction: id = r25, name = r25
	reaction_r25=compartment_Brain*Mass_Action(global_par_k33, x(20), x(5));

% Reaction: id = r26, name = r26
	reaction_r26=compartment_Brain*global_par_k34*x(27);

% Reaction: id = r27, name = r27
	reaction_r27=compartment_Brain*Mass_Action(global_par_k35, x(27), x(6));

% Reaction: id = r28, name = r28
	reaction_r28=compartment_Brain*Henri_Michaelis_Menten__irreversible(x(28), global_par_k9, global_par_k8);

% Reaction: id = r29, name = r29
	reaction_r29=compartment_Brain*global_par_k36*x(29);

% Reaction: id = r30, name = r30
	reaction_r30=compartment_Brain*Mass_Action(global_par_k37, x(27), x(7));

% Reaction: id = r31, name = r31
	reaction_r31=compartment_Brain*global_par_k38*x(30);

% Reaction: id = r32, name = r32
	reaction_r32=compartment_Brain*Mass_Action(global_par_k39, x(30), x(8));

% Reaction: id = r33, name = r33
	reaction_r33=compartment_Brain*global_par_k40*x(31);

% Reaction: id = r34, name = r34
	reaction_r34=compartment_Brain*Mass_Action_(global_par_k41, x(10), x(9), x(2));

% Reaction: id = r36, name = r36
	reaction_r36=compartment_Brain*Michaelis_Menten(global_par_k43, x(32), x(2), global_par_k44);

% Reaction: id = r37, name = r37
	reaction_r37=compartment_Brain*Henri_Michaelis_Menten__irreversible(x(33), global_par_k46, global_par_k45);

% Reaction: id = r38, name = r38
	reaction_r38=compartment_Brain*Michaelis_Menten(global_par_k47, x(33), x(2), global_par_k48);

% Reaction: id = r39, name = r39
	reaction_r39=compartment_Brain*Henri_Michaelis_Menten__irreversible(x(34), global_par_k50, global_par_k49);

% Reaction: id = r40, name = r40
	reaction_r40=compartment_Brain*global_par_k51*x(32);

% Reaction: id = r41, name = r41
	reaction_r41=compartment_Brain*global_par_k52*x(35);

% Reaction: id = r42, name = r42
	reaction_r42=compartment_Brain*Mass_Action(global_par_k53, x(35), x(3));

% Reaction: id = r43, name = r43
	reaction_r43=compartment_Brain*global_par_k54*x(36);

% Reaction: id = r44, name = r44
	reaction_r44=compartment_Brain*global_par_k55*x(33);

% Reaction: id = r45, name = r45
	reaction_r45=compartment_Brain*global_par_k56*x(37);

% Reaction: id = r46, name = r46
	reaction_r46=compartment_Brain*Mass_Action(global_par_k57, x(37), x(3));

% Reaction: id = r47, name = r47
	reaction_r47=compartment_Brain*global_par_k58*x(38);

% Reaction: id = r48, name = r48
	reaction_r48=compartment_Brain*global_par_k59*x(34);

% Reaction: id = r49, name = r49
	reaction_r49=compartment_Brain*global_par_k60*x(39);

% Reaction: id = r50, name = r50
	reaction_r50=compartment_Brain*Mass_Action(global_par_k61, x(39), x(3));

% Reaction: id = r51, name = r51
	reaction_r51=compartment_Brain*global_par_k62*x(40);

% Reaction: id = r52, name = r52
	reaction_r52=compartment_Brain*Mass_Action_(global_par_k63, x(32), x(4), x(2));

% Reaction: id = r53, name = r53
	reaction_r53=compartment_Brain*Mass_Action_(global_par_k64, x(33), x(4), x(2));

% Reaction: id = r54, name = r54
	reaction_r54=compartment_Brain*Mass_Action_(global_par_k65, x(34), x(4), x(2));

% Reaction: id = r55, name = r55
	reaction_r55=compartment_Brain*Michaelis_Menten(global_par_k66, x(36), x(2), global_par_k67);

% Reaction: id = r56, name = r56
	reaction_r56=compartment_Brain*Henri_Michaelis_Menten__irreversible(x(38), global_par_k69, global_par_k68);

% Reaction: id = r57, name = r57
	reaction_r57=compartment_Brain*Michaelis_Menten(global_par_k70, x(38), x(2), global_par_k71);

% Reaction: id = r58, name = r58
	reaction_r58=compartment_Brain*Henri_Michaelis_Menten__irreversible(x(40), global_par_k73, global_par_k72);

% Reaction: id = r59, name = r59
	reaction_r59=compartment_Brain*Mass_Action(global_par_k74, x(34), x(5));

% Reaction: id = r60, name = r60
	reaction_r60=compartment_Brain*global_par_k75*x(41);

% Reaction: id = r61, name = r61
	reaction_r61=compartment_Brain*Mass_Action(global_par_k76, x(41), x(6));

% Reaction: id = r62, name = r62
	reaction_r62=compartment_Brain*Henri_Michaelis_Menten__irreversible(x(42), global_par_k9, global_par_k77);

% Reaction: id = r63, name = r63
	reaction_r63=compartment_Brain*global_par_k78*x(43);

% Reaction: id = r64, name = r64
	reaction_r64=compartment_Brain*Mass_Action(global_par_k79, x(41), x(7));

% Reaction: id = r65, name = r65
	reaction_r65=compartment_Brain*global_par_k80*x(44);

% Reaction: id = r66, name = r66
	reaction_r66=compartment_Brain*Mass_Action(global_par_k81, x(44), x(8));

% Reaction: id = r67, name = r67
	reaction_r67=compartment_Brain*global_par_k82*x(45);

% Reaction: id = r68, name = r68
	reaction_r68=compartment_Brain*Mass_Action_(global_par_k83, x(11), x(9), x(2));

% Reaction: id = r69, name = r69
	reaction_r69=compartment_Brain*global_par_k84*x(1);

% Reaction: id = r70, name = r70
	reaction_r70=compartment_Brain*global_par_k85*x(2);

% Reaction: id = r71, name = r71
	reaction_r71=compartment_Brain*Nucleation(global_par_k86, x(10));

% Reaction: id = r72, name = r72
	reaction_r72=compartment_Brain*global_par_k87*x(12);

% Reaction: id = r73, name = r73
	reaction_r73=compartment_Brain*Nucleation(global_par_k88, x(11));

% Reaction: id = r74, name = r74
	reaction_r74=compartment_Brain*global_par_k89*x(13);

% Reaction: id = r75, name = r75
	reaction_r75=compartment_Brain*Mass_Action(global_par_k90, x(12), x(10));

% Reaction: id = r76, name = r76
	reaction_r76=compartment_Brain*global_par_k91*x(14);

% Reaction: id = r77, name = r77
	reaction_r77=compartment_Brain*Mass_Action(global_par_k90, x(10), x(14));

% Reaction: id = r78, name = r78
	reaction_r78=compartment_Brain*Mass_Action(global_par_k90, x(10), x(15));

% Reaction: id = r79, name = r79
	reaction_r79=compartment_Brain*global_par_k91*x(15);

% Reaction: id = r80, name = r80
	reaction_r80=compartment_Brain*Mass_Action(global_par_k92, x(13), x(11));

% Reaction: id = r81, name = r81
	reaction_r81=compartment_Brain*global_par_k93*x(16);

% Reaction: id = r82, name = r82
	reaction_r82=compartment_Brain*Mass_Action(global_par_k92, x(11), x(16));

% Reaction: id = r83, name = r83
	reaction_r83=compartment_Brain*Mass_Action(global_par_k92, x(11), x(17));

% Reaction: id = r84, name = r84
	reaction_r84=compartment_Brain*global_par_k93*x(17);

	xdot=zeros(49,1);
	% rateRule: variable = _20S
	xdot(46) = 0;
	% rateRule: variable = _26S
	xdot(47) = 0;
	% rateRule: variable = Ap
	xdot(48) = reaction_r77;
	% rateRule: variable = Bp
	xdot(49) = reaction_r82;
	
% Species:   id = ADP, name = ADP, affected by kineticLaw
	xdot(1) = (1/(compartment_Brain))*(( 1.0 * reaction_r2) + ( 1.0 * reaction_r4) + ( 1.0 * reaction_r18) + ( 1.0 * reaction_r19) + ( 1.0 * reaction_r20) + ( 1.0 * reaction_r21) + ( 1.0 * reaction_r23) + ( 1.0 * reaction_r34) + ( 1.0 * reaction_r36) + ( 1.0 * reaction_r38) + ( 1.0 * reaction_r52) + ( 1.0 * reaction_r53) + ( 1.0 * reaction_r54) + ( 1.0 * reaction_r55) + ( 1.0 * reaction_r57) + ( 1.0 * reaction_r68) + (-1.0 * reaction_r69) + ( 1.0 * reaction_r70));
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(2) = (1/(compartment_Brain))*((-1.0 * reaction_r2) + (-1.0 * reaction_r4) + (-1.0 * reaction_r18) + (-1.0 * reaction_r19) + (-1.0 * reaction_r20) + (-1.0 * reaction_r21) + (-1.0 * reaction_r23) + (-1.0 * reaction_r34) + (-1.0 * reaction_r36) + (-1.0 * reaction_r38) + (-1.0 * reaction_r52) + (-1.0 * reaction_r53) + (-1.0 * reaction_r54) + (-1.0 * reaction_r55) + (-1.0 * reaction_r57) + (-1.0 * reaction_r68) + ( 1.0 * reaction_r69) + (-1.0 * reaction_r70));
	
% Species:   id = MT, name = MT, affected by kineticLaw
	xdot(3) = (1/(compartment_Brain))*((-1.0 * reaction_r8) + ( 1.0 * reaction_r9) + (-1.0 * reaction_r12) + ( 1.0 * reaction_r13) + (-1.0 * reaction_r16) + ( 1.0 * reaction_r17) + (-1.0 * reaction_r42) + ( 1.0 * reaction_r43) + (-1.0 * reaction_r46) + ( 1.0 * reaction_r47) + (-1.0 * reaction_r50) + ( 1.0 * reaction_r51));
	
% Species:   id = _20S, name = 20S, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = Hsc70, name = Hsc70, affected by kineticLaw
	xdot(5) = (1/(compartment_Brain))*((-1.0 * reaction_r25) + ( 1.0 * reaction_r26) + ( 1.0 * reaction_r27) + ( 1.0 * reaction_r31) + (-1.0 * reaction_r59) + ( 1.0 * reaction_r60) + ( 1.0 * reaction_r61) + ( 1.0 * reaction_r65));
	
% Species:   id = Hsp90, name = Hsp90, affected by kineticLaw
	xdot(6) = (1/(compartment_Brain))*((-1.0 * reaction_r27) + ( 1.0 * reaction_r29) + (-1.0 * reaction_r61) + ( 1.0 * reaction_r63));
	
% Species:   id = CHIP, name = CHIP, affected by kineticLaw
	xdot(7) = (1/(compartment_Brain))*((-1.0 * reaction_r30) + ( 1.0 * reaction_r31) + ( 1.0 * reaction_r33) + (-1.0 * reaction_r64) + ( 1.0 * reaction_r65) + ( 1.0 * reaction_r67));
	
% Species:   id = Bag2, name = Bag2, affected by kineticLaw
	xdot(8) = (1/(compartment_Brain))*((-1.0 * reaction_r32) + ( 1.0 * reaction_r33) + (-1.0 * reaction_r66) + ( 1.0 * reaction_r67));
	
% Species:   id = _26S, name = 26S, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = TauH3RUb, name = TauH3RUb, affected by kineticLaw
	xdot(10) = (1/(compartment_Brain))*(( 1.0 * reaction_r31) + (-1.0 * reaction_r34) + (-2.0 * reaction_r71) + ( 2.0 * reaction_r72) + (-1.0 * reaction_r75) + ( 1.0 * reaction_r76) + (-1.0 * reaction_r77) + (-1.0 * reaction_r78) + ( 1.0 * reaction_r79));
	
% Species:   id = TauH4RUb, name = TauH4RUb, affected by kineticLaw
	xdot(11) = (1/(compartment_Brain))*(( 1.0 * reaction_r65) + (-1.0 * reaction_r68) + (-2.0 * reaction_r73) + ( 2.0 * reaction_r74) + (-1.0 * reaction_r80) + ( 1.0 * reaction_r81) + (-1.0 * reaction_r82) + (-1.0 * reaction_r83) + ( 1.0 * reaction_r84));
	
% Species:   id = Nucleus3, name = Nucleus3, affected by kineticLaw
	xdot(12) = (1/(compartment_Brain))*(( 1.0 * reaction_r71) + (-1.0 * reaction_r72) + (-1.0 * reaction_r75) + ( 1.0 * reaction_r76));
	
% Species:   id = Nucleus4, name = Nucleus4, affected by kineticLaw
	xdot(13) = (1/(compartment_Brain))*(( 1.0 * reaction_r73) + (-1.0 * reaction_r74) + (-1.0 * reaction_r80) + ( 1.0 * reaction_r81));
	
% Species:   id = Agg33, name = Agg33, affected by kineticLaw
	xdot(14) = (1/(compartment_Brain))*(( 1.0 * reaction_r75) + (-1.0 * reaction_r76) + (-1.0 * reaction_r77));
	
% Species:   id = Ap, name = Ap, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = Agg43, name = Agg43, affected by kineticLaw
	xdot(16) = (1/(compartment_Brain))*(( 1.0 * reaction_r80) + (-1.0 * reaction_r81) + (-1.0 * reaction_r82));
	
% Species:   id = Bp, name = Bp, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = Tau03R, name = Tau03R, affected by kineticLaw
	xdot(18) = (1/(compartment_Brain))*(( 1.0 * reaction_r1) + (-1.0 * reaction_r2) + ( 1.0 * reaction_r3) + (-1.0 * reaction_r6) + ( 1.0 * reaction_r7) + (-1.0 * reaction_r18) + ( 1.0 * reaction_r29));
	
% Species:   id = TauN3R, name = TauN3R, affected by kineticLaw
	xdot(19) = (1/(compartment_Brain))*(( 1.0 * reaction_r2) + (-1.0 * reaction_r3) + (-1.0 * reaction_r4) + ( 1.0 * reaction_r5) + (-1.0 * reaction_r10) + ( 1.0 * reaction_r11) + (-1.0 * reaction_r19));
	
% Species:   id = TauH3R, name = TauH3R, affected by kineticLaw
	xdot(20) = (1/(compartment_Brain))*(( 1.0 * reaction_r4) + (-1.0 * reaction_r5) + (-1.0 * reaction_r14) + ( 1.0 * reaction_r15) + (-1.0 * reaction_r20) + (-1.0 * reaction_r25) + ( 1.0 * reaction_r26));
	
% Species:   id = Tau0_3R, name = Tau0*3R, affected by kineticLaw
	xdot(21) = (1/(compartment_Brain))*(( 1.0 * reaction_r6) + (-1.0 * reaction_r7) + (-1.0 * reaction_r8) + ( 1.0 * reaction_r9));
	
% Species:   id = Tau03RMT, name = Tau03RMT, affected by kineticLaw
	xdot(22) = (1/(compartment_Brain))*(( 1.0 * reaction_r8) + (-1.0 * reaction_r9) + (-1.0 * reaction_r21) + ( 1.0 * reaction_r22));
	
% Species:   id = TauN_3R, name = TauN*3R, affected by kineticLaw
	xdot(23) = (1/(compartment_Brain))*(( 1.0 * reaction_r10) + (-1.0 * reaction_r11) + (-1.0 * reaction_r12) + ( 1.0 * reaction_r13));
	
% Species:   id = TauN3RMT, name = TauN3RMT, affected by kineticLaw
	xdot(24) = (1/(compartment_Brain))*(( 1.0 * reaction_r12) + (-1.0 * reaction_r13) + ( 1.0 * reaction_r21) + (-1.0 * reaction_r22) + (-1.0 * reaction_r23) + ( 1.0 * reaction_r24));
	
% Species:   id = TauH_3R, name = TauH*3R, affected by kineticLaw
	xdot(25) = (1/(compartment_Brain))*(( 1.0 * reaction_r14) + (-1.0 * reaction_r15) + (-1.0 * reaction_r16) + ( 1.0 * reaction_r17));
	
% Species:   id = TauH3RMT, name = TauH3RMT, affected by kineticLaw
	xdot(26) = (1/(compartment_Brain))*(( 1.0 * reaction_r16) + (-1.0 * reaction_r17) + ( 1.0 * reaction_r23) + (-1.0 * reaction_r24));
	
% Species:   id = TauH3R_Hsc70, name = TauH3R-Hsc70, affected by kineticLaw
	xdot(27) = (1/(compartment_Brain))*(( 1.0 * reaction_r25) + (-1.0 * reaction_r26) + (-1.0 * reaction_r27) + (-1.0 * reaction_r30) + ( 1.0 * reaction_r33));
	
% Species:   id = TauH3R_Hsp90, name = TauH3R-Hsp90, affected by kineticLaw
	xdot(28) = (1/(compartment_Brain))*(( 1.0 * reaction_r27) + (-1.0 * reaction_r28));
	
% Species:   id = Tau03R_Hsp90, name = Tau03R-Hsp90, affected by kineticLaw
	xdot(29) = (1/(compartment_Brain))*(( 1.0 * reaction_r28) + (-1.0 * reaction_r29));
	
% Species:   id = TauH3R_CHIP_Hsc70, name = TauH3R-CHIP-Hsc70, affected by kineticLaw
	xdot(30) = (1/(compartment_Brain))*(( 1.0 * reaction_r30) + (-1.0 * reaction_r31) + (-1.0 * reaction_r32));
	
% Species:   id = TauH3R_CHIP_Hsc70_Bag2, name = TauH3R-CHIP-Hsc70-Bag2, affected by kineticLaw
	xdot(31) = (1/(compartment_Brain))*(( 1.0 * reaction_r32) + (-1.0 * reaction_r33));
	
% Species:   id = Tau04R, name = Tau04R, affected by kineticLaw
	xdot(32) = (1/(compartment_Brain))*(( 1.0 * reaction_r35) + (-1.0 * reaction_r36) + ( 1.0 * reaction_r37) + (-1.0 * reaction_r40) + ( 1.0 * reaction_r41) + (-1.0 * reaction_r52) + ( 1.0 * reaction_r63));
	
% Species:   id = TauN4R, name = TauN4R, affected by kineticLaw
	xdot(33) = (1/(compartment_Brain))*(( 1.0 * reaction_r36) + (-1.0 * reaction_r37) + (-1.0 * reaction_r38) + ( 1.0 * reaction_r39) + (-1.0 * reaction_r44) + ( 1.0 * reaction_r45) + (-1.0 * reaction_r53));
	
% Species:   id = TauH4R, name = TauH4R, affected by kineticLaw
	xdot(34) = (1/(compartment_Brain))*(( 1.0 * reaction_r38) + (-1.0 * reaction_r39) + (-1.0 * reaction_r48) + ( 1.0 * reaction_r49) + (-1.0 * reaction_r54) + (-1.0 * reaction_r59) + ( 1.0 * reaction_r60));
	
% Species:   id = Tau0_4R, name = Tau0*4R, affected by kineticLaw
	xdot(35) = (1/(compartment_Brain))*(( 1.0 * reaction_r40) + (-1.0 * reaction_r41) + (-1.0 * reaction_r42) + ( 1.0 * reaction_r43));
	
% Species:   id = Tau04RMT, name = Tau04RMT, affected by kineticLaw
	xdot(36) = (1/(compartment_Brain))*(( 1.0 * reaction_r42) + (-1.0 * reaction_r43) + (-1.0 * reaction_r55) + ( 1.0 * reaction_r56));
	
% Species:   id = TauN_4R, name = TauN*4R, affected by kineticLaw
	xdot(37) = (1/(compartment_Brain))*(( 1.0 * reaction_r44) + (-1.0 * reaction_r45) + (-1.0 * reaction_r46) + ( 1.0 * reaction_r47));
	
% Species:   id = TauN4RMT, name = TauN4RMT, affected by kineticLaw
	xdot(38) = (1/(compartment_Brain))*(( 1.0 * reaction_r46) + (-1.0 * reaction_r47) + ( 1.0 * reaction_r55) + (-1.0 * reaction_r56) + (-1.0 * reaction_r57) + ( 1.0 * reaction_r58));
	
% Species:   id = TauH_4R, name = TauH*4R, affected by kineticLaw
	xdot(39) = (1/(compartment_Brain))*(( 1.0 * reaction_r48) + (-1.0 * reaction_r49) + (-1.0 * reaction_r50) + ( 1.0 * reaction_r51));
	
% Species:   id = TauH4RMT, name = TauH4RMT, affected by kineticLaw
	xdot(40) = (1/(compartment_Brain))*(( 1.0 * reaction_r50) + (-1.0 * reaction_r51) + ( 1.0 * reaction_r57) + (-1.0 * reaction_r58));
	
% Species:   id = TauH4R_Hsc70, name = TauH4R-Hsc70, affected by kineticLaw
	xdot(41) = (1/(compartment_Brain))*(( 1.0 * reaction_r59) + (-1.0 * reaction_r60) + (-1.0 * reaction_r61) + (-1.0 * reaction_r64) + ( 1.0 * reaction_r67));
	
% Species:   id = TauH4R_Hsp90, name = TauH4R-Hsp90, affected by kineticLaw
	xdot(42) = (1/(compartment_Brain))*(( 1.0 * reaction_r61) + (-1.0 * reaction_r62));
	
% Species:   id = Tau04R_Hsp90, name = Tau04R-Hsp90, affected by kineticLaw
	xdot(43) = (1/(compartment_Brain))*(( 1.0 * reaction_r62) + (-1.0 * reaction_r63));
	
% Species:   id = TauH4R_CHIP_Hsc70, name = TauH4R-CHIP-Hsc70, affected by kineticLaw
	xdot(44) = (1/(compartment_Brain))*(( 1.0 * reaction_r64) + (-1.0 * reaction_r65) + (-1.0 * reaction_r66));
	
% Species:   id = TauH4R_CHIP_Hsc70_Bag2, name = TauH4R-CHIP-Hsc70-Bag2, affected by kineticLaw
	xdot(45) = (1/(compartment_Brain))*(( 1.0 * reaction_r66) + (-1.0 * reaction_r67));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Henri_Michaelis_Menten__irreversible(substrate,Km,V), z=(V*substrate/(Km+substrate));end

function z=Mass_Action(k1,x1,x2), z=(k1*x1*x2);end

function z=Michaelis_Menten(k1,x1,x2,k2), z=(k1*x1*x2/(k2+x1));end

function z=Mass_Action_(K1,x1,x2,x3), z=(K1*x1*x2*x3);end

function z=Nucleation(k1,x1), z=(k1*x1^2);end

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


