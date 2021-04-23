
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_default   id: default
	compartment_default=1;
		
// compartment_c1   id: c1
	compartment_c1=1;
		
// compartment_c3   id: c3
	compartment_c3=1;
		
// compartment_c4   id: c4
	compartment_c4=1;
		
// kass_r1_p   id: kass_r1
	kass_r1_p=0.784;
		
// kdiss_r1_p   id: kdiss_r1
	kdiss_r1_p=0.82;
		
// kass_r5_p   id: kass_r5
	kass_r5_p=1.15;
		
// kdiss_r5_p   id: kdiss_r5
	kdiss_r5_p=0.92;
		
// kass_r47_p   id: kass_r47
	kass_r47_p=1.31;
		
// kdiss_r47_p   id: kdiss_r47
	kdiss_r47_p=0.81;
		
// kass_r48_p   id: kass_r48
	kass_r48_p=0.85;
		
// kdiss_r48_p   id: kdiss_r48
	kdiss_r48_p=1.36;
		
// kass_r54_p   id: kass_r54
	kass_r54_p=0.8;
		
// kdiss_r54_p   id: kdiss_r54
	kdiss_r54_p=1.7;
		
// kass_r58_p   id: kass_r58
	kass_r58_p=1.74;
		
// kdiss_r58_p   id: kdiss_r58
	kdiss_r58_p=0.25;
		
// kass_r63_p   id: kass_r63
	kass_r63_p=1.77;
		
// kdiss_r63_p   id: kdiss_r63
	kdiss_r63_p=0.61;
		
// kass_r64_p   id: kass_r64
	kass_r64_p=1.29;
		
// kdiss_r64_p   id: kdiss_r64
	kdiss_r64_p=0.72;
		
// kass_r65_p   id: kass_r65
	kass_r65_p=1.8;
		
// kdiss_r65_p   id: kdiss_r65
	kdiss_r65_p=0.004;
		
// kass_r66_p   id: kass_r66
	kass_r66_p=1.99;
		
// kdiss_r66_p   id: kdiss_r66
	kdiss_r66_p=0.036;
		
// kass_r68_p   id: kass_r68
	kass_r68_p=2;
		
// kass_r88_p   id: kass_r88
	kass_r88_p=0.2;
		
// kdiss_r88_p   id: kdiss_r88
	kdiss_r88_p=1.09;
		
// kass_r90_p   id: kass_r90
	kass_r90_p=0.27;
		
// kdiss_r90_p   id: kdiss_r90
	kdiss_r90_p=1.028;
		
// kass_r91_p   id: kass_r91
	kass_r91_p=0.36;
		
// kdiss_r91_p   id: kdiss_r91
	kdiss_r91_p=1.16;
		
// kass_r92_p   id: kass_r92
	kass_r92_p=0.58;
		
// kdiss_r92_p   id: kdiss_r92
	kdiss_r92_p=0.92;
		
// kass_r96_p   id: kass_r96
	kass_r96_p=1.45;
		
// kdiss_r96_p   id: kdiss_r96
	kdiss_r96_p=0.183;
		
// kass_r98_p   id: kass_r98
	kass_r98_p=1.97;
		
// kdiss_r98_p   id: kdiss_r98
	kdiss_r98_p=1.09;
		
// kass_r99_p   id: kass_r99
	kass_r99_p=0.51;
		
// kdiss_r99_p   id: kdiss_r99
	kdiss_r99_p=0.854;
		
// kass_r102_p   id: kass_r102
	kass_r102_p=0.163;
		
// kdiss_r102_p   id: kdiss_r102
	kdiss_r102_p=1.65;
		
// kass_r103_p   id: kass_r103
	kass_r103_p=0.45;
		
// kdiss_r103_p   id: kdiss_r103
	kdiss_r103_p=1.277;
		
// kass_r105_p   id: kass_r105
	kass_r105_p=0.48;
		
// kdiss_r105_p   id: kdiss_r105
	kdiss_r105_p=1.62;
		
// kass_r106_p   id: kass_r106
	kass_r106_p=0.05;
		
// kdiss_r106_p   id: kdiss_r106
	kdiss_r106_p=1.13;
		
// kass_r107_p   id: kass_r107
	kass_r107_p=0.91;
		
// kdiss_r107_p   id: kdiss_r107
	kdiss_r107_p=1.056;
		
// kass_r104_s30_p   id: kass_r104_s30
	kass_r104_s30_p=0.39;
		
// kdiss_r104_s30_p   id: kdiss_r104_s30
	kdiss_r104_s30_p=1.278;
		
// kass_r85_s30_p   id: kass_r85_s30
	kass_r85_s30_p=0.7;
		
// kdiss_r85_s30_p   id: kdiss_r85_s30
	kdiss_r85_s30_p=0.649;
		
// kass_re65_p   id: kass_re65
	kass_re65_p=1.68;
		
// kass_re64_p   id: kass_re64
	kass_re64_p=0.83;
		
// kass_r86_s37_p   id: kass_r86_s37
	kass_r86_s37_p=0.87;
		
// kdiss_r86_s37_p   id: kdiss_r86_s37
	kdiss_r86_s37_p=1.32;
		
// kass_r67_p   id: kass_r67
	kass_r67_p=0.86;
		
// kdiss_r67_p   id: kdiss_r67
	kdiss_r67_p=0.7;
		
// kI_r86_s304_p   id: kI_r86_s304
	kI_r86_s304_p=1.43;
		



xdot=[
//x(1)   ID: s5  initialValue: 0
	(1/compartment_default)*( (-1)*(1)* ((kass_r1_p* x(1) * x(3) )-(kdiss_r1_p* x(2) )) + (1)*(1)* ((kass_r107_p* x(25) )-(kdiss_r107_p* x(1) )) );
	
//x(2)   ID: s16  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ((kass_r5_p* x(5) * x(2) )-(kdiss_r5_p* x(4) )) + (1)*(1)* ((kass_r1_p* x(1) * x(3) )-(kdiss_r1_p* x(2) )) );
	
//x(3)   ID: s1  initialValue: 3
	(1/compartment_c1)*( (-1)*(1)* ((kass_r1_p* x(1) * x(3) )-(kdiss_r1_p* x(2) )) );
	
//x(4)   ID: s27  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* ((kass_r5_p* x(5) * x(2) )-(kdiss_r5_p* x(4) )) );
	
//x(5)   ID: s28  initialValue: 3
	(1/compartment_c1)*( (-1)*(1)* ((kass_r5_p* x(5) * x(2) )-(kdiss_r5_p* x(4) )) );
	
//x(6)   ID: s30  initialValue: 1
	(1/compartment_c1)*( (1)*(1)* ((kass_r106_p* x(42) )-(kdiss_r106_p* x(6) )) );
	
//x(7)   ID: s31  initialValue: 3
	(1/compartment_c1)*( (-1)*(1)* ((kass_r102_p* x(42) * x(7) )-(kdiss_r102_p* x(43) )) );
	
//x(8)   ID: s32  initialValue: 1
	(1/compartment_c1)*( (-1)*(1)* ( x(6) *((kass_r104_s30_p* x(15) * x(8) )-(kdiss_r104_s30_p* x(42) * x(9) ))) + (-1)*(1)* ( x(6) *((kass_r85_s30_p* x(28) * x(8) )-(kdiss_r85_s30_p* x(35) * x(9) ))) + (-1)*(1)* ((kI_r86_s304_p/(kI_r86_s304_p+ x(49) ))* x(10) *((kass_r86_s37_p* x(35) * x(8) * x(8) * x(8) )-(kdiss_r86_s37_p* x(36) * x(9) * x(9) * x(9) ))) + (-1)*(1)* ((kI_r86_s304_p/(kI_r86_s304_p+ x(49) ))* x(10) *((kass_r86_s37_p* x(35) * x(8) * x(8) * x(8) )-(kdiss_r86_s37_p* x(36) * x(9) * x(9) * x(9) ))) + (-1)*(1)* ((kI_r86_s304_p/(kI_r86_s304_p+ x(49) ))* x(10) *((kass_r86_s37_p* x(35) * x(8) * x(8) * x(8) )-(kdiss_r86_s37_p* x(36) * x(9) * x(9) * x(9) ))) );
	
//x(9)   ID: s33  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* ( x(6) *((kass_r104_s30_p* x(15) * x(8) )-(kdiss_r104_s30_p* x(42) * x(9) ))) + (1)*(1)* ( x(6) *((kass_r85_s30_p* x(28) * x(8) )-(kdiss_r85_s30_p* x(35) * x(9) ))) + (1)*(1)* ((kI_r86_s304_p/(kI_r86_s304_p+ x(49) ))* x(10) *((kass_r86_s37_p* x(35) * x(8) * x(8) * x(8) )-(kdiss_r86_s37_p* x(36) * x(9) * x(9) * x(9) ))) + (1)*(1)* ((kI_r86_s304_p/(kI_r86_s304_p+ x(49) ))* x(10) *((kass_r86_s37_p* x(35) * x(8) * x(8) * x(8) )-(kdiss_r86_s37_p* x(36) * x(9) * x(9) * x(9) ))) + (1)*(1)* ((kI_r86_s304_p/(kI_r86_s304_p+ x(49) ))* x(10) *((kass_r86_s37_p* x(35) * x(8) * x(8) * x(8) )-(kdiss_r86_s37_p* x(36) * x(9) * x(9) * x(9) ))) );
	
//x(10)   ID: s37  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* ((kass_r105_p* x(44) )-(kdiss_r105_p* x(10) )) );
	
//x(11)   ID: s46  initialValue: 1
	(1/compartment_c1)*( (-1)*(1)* ((kass_r48_p* x(27) * x(11) )-(kdiss_r48_p* x(28) )) );
	
//x(12)   ID: s75  initialValue: 3
	(1/compartment_c1)*( (-1)*(1)* ((kass_r54_p* x(27) * x(12) )-(kdiss_r54_p* x(29) )) );
	
//x(13)   ID: s101  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* ((kass_r98_p* x(40) )-(kdiss_r98_p* x(13) * x(41) )) );
	
//x(14)   ID: s102  initialValue: 3
	(1/compartment_c1)*( (-1)*(1)* ((kass_r103_p* x(43) * x(14) )-(kdiss_r103_p* x(44) )) );
	
//x(15)   ID: s107  initialValue: 3
	(1/compartment_c1)*( (-1)*(1)* ( x(6) *((kass_r104_s30_p* x(15) * x(8) )-(kdiss_r104_s30_p* x(42) * x(9) ))) );
	
//x(16)   ID: s121  initialValue: 4
	(1/compartment_c1)*( (-1)*(1)* ((kass_r47_p* x(16) * x(26) )-(kdiss_r47_p* x(27) )) );
	
//x(17)   ID: s155  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* ((kass_r91_p* x(47) )-(kdiss_r91_p* x(17) * x(48) )) );
	
//x(18)   ID: s164  initialValue: 0
	(1/compartment_c1)*( (1)*(1)* ((kass_r99_p* x(41) )-(kdiss_r99_p* x(18) * x(39) )) );
	
//x(19)   ID: s171  initialValue: 2
	(1/compartment_c3)*( (-1)*(1)* ((kass_r65_p* x(32) * x(19) )-(kdiss_r65_p* x(33) )) );
	
//x(20)   ID: s172  initialValue: 2
	(1/compartment_c3)*( (-1)*(1)* ((kass_r67_p* x(34) * x(20) )-(kdiss_r67_p* x(50) )) );
	
//x(21)   ID: s173  initialValue: 2
	(1/compartment_c3)*( (-1)*(1)* ((kass_r66_p* x(33) * x(21) )-(kdiss_r66_p* x(34) )) );
	
//x(22)   ID: s170  initialValue: 2
	(1/compartment_c3)*( (-1)*(1)* ((kass_r64_p* x(31) * x(22) )-(kdiss_r64_p* x(32) )) );
	
//x(23)   ID: s195  initialValue: 0
	(1/compartment_c3)*( (1)*(1)* (kass_r68_p* x(50) ) );
	
//x(24)   ID: s174  initialValue: 4
	(1/compartment_c3)*( (-1)*(1)* ((kass_r63_p* x(24) * x(30) )-(kdiss_r63_p* x(31) )) );
	
//x(25)   ID: s239  initialValue: 5
	(1/compartment_c4)*( (-1)*(1)* ((kass_r107_p* x(25) )-(kdiss_r107_p* x(1) )) );
	
//x(26)   ID: s36  initialValue: 5
	(1/compartment_c1)*( (-1)*(1)* ((kass_r47_p* x(16) * x(26) )-(kdiss_r47_p* x(27) )) + (-1)*(1)* ((kass_r58_p* x(26) )-(kdiss_r58_p* x(30) )) );
	
//x(27)   ID: s123  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ((kass_r48_p* x(27) * x(11) )-(kdiss_r48_p* x(28) )) + (-1)*(1)* ((kass_r54_p* x(27) * x(12) )-(kdiss_r54_p* x(29) )) + (1)*(1)* ((kass_r47_p* x(16) * x(26) )-(kdiss_r47_p* x(27) )) );
	
//x(28)   ID: s129  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ( x(6) *((kass_r85_s30_p* x(28) * x(8) )-(kdiss_r85_s30_p* x(35) * x(9) ))) + (1)*(1)* ((kass_r48_p* x(27) * x(11) )-(kdiss_r48_p* x(28) )) );
	
//x(29)   ID: s159  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ((kass_r96_p* x(29) * x(37) )-(kdiss_r96_p* x(40) )) + (1)*(1)* ((kass_r54_p* x(27) * x(12) )-(kdiss_r54_p* x(29) )) );
	
//x(30)   ID: s232  initialValue: 0
	(1/compartment_c3)*( (-1)*(1)* ((kass_r63_p* x(24) * x(30) )-(kdiss_r63_p* x(31) )) + (1)*(1)* ((kass_r58_p* x(26) )-(kdiss_r58_p* x(30) )) + (1)*(1)* (kass_re65_p* x(38) ) + (1)*(1)* (kass_re64_p* x(39) ) );
	
//x(31)   ID: s176  initialValue: 0
	(1/compartment_c3)*( (-1)*(1)* ((kass_r64_p* x(31) * x(22) )-(kdiss_r64_p* x(32) )) + (1)*(1)* ((kass_r63_p* x(24) * x(30) )-(kdiss_r63_p* x(31) )) );
	
//x(32)   ID: s179  initialValue: 0
	(1/compartment_c3)*( (-1)*(1)* ((kass_r65_p* x(32) * x(19) )-(kdiss_r65_p* x(33) )) + (1)*(1)* ((kass_r64_p* x(31) * x(22) )-(kdiss_r64_p* x(32) )) );
	
//x(33)   ID: s183  initialValue: 0
	(1/compartment_c3)*( (-1)*(1)* ((kass_r66_p* x(33) * x(21) )-(kdiss_r66_p* x(34) )) + (1)*(1)* ((kass_r65_p* x(32) * x(19) )-(kdiss_r65_p* x(33) )) );
	
//x(34)   ID: s188  initialValue: 0
	(1/compartment_c3)*( (-1)*(1)* ((kass_r67_p* x(34) * x(20) )-(kdiss_r67_p* x(50) )) + (1)*(1)* ((kass_r66_p* x(33) * x(21) )-(kdiss_r66_p* x(34) )) );
	
//x(35)   ID: s245  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ((kI_r86_s304_p/(kI_r86_s304_p+ x(49) ))* x(10) *((kass_r86_s37_p* x(35) * x(8) * x(8) * x(8) )-(kdiss_r86_s37_p* x(36) * x(9) * x(9) * x(9) ))) + (1)*(1)* ( x(6) *((kass_r85_s30_p* x(28) * x(8) )-(kdiss_r85_s30_p* x(35) * x(9) ))) );
	
//x(36)   ID: s252  initialValue: 5
	(1/compartment_c1)*( (-1)*(1)* ((kass_r88_p* x(36) * x(45) )-(kdiss_r88_p* x(46) )) + (1)*(1)* ((kI_r86_s304_p/(kI_r86_s304_p+ x(49) ))* x(10) *((kass_r86_s37_p* x(35) * x(8) * x(8) * x(8) )-(kdiss_r86_s37_p* x(36) * x(9) * x(9) * x(9) ))) );
	
//x(37)   ID: s268  initialValue: 1
	(1/compartment_c1)*( (-1)*(1)* ((kass_r90_p* x(46) * x(37) )-(kdiss_r90_p* x(47) )) + (-1)*(1)* ((kass_r96_p* x(29) * x(37) )-(kdiss_r96_p* x(40) )) );
	
//x(38)   ID: s260  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (kass_re65_p* x(38) ) + (1)*(1)* ((kass_r92_p* x(48) )-(kdiss_r92_p* x(45) * x(38) )) );
	
//x(39)   ID: s270  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (kass_re64_p* x(39) ) + (1)*(1)* ((kass_r99_p* x(41) )-(kdiss_r99_p* x(18) * x(39) )) );
	
//x(40)   ID: s275  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ((kass_r98_p* x(40) )-(kdiss_r98_p* x(13) * x(41) )) + (1)*(1)* ((kass_r96_p* x(29) * x(37) )-(kdiss_r96_p* x(40) )) );
	
//x(41)   ID: s278  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ((kass_r99_p* x(41) )-(kdiss_r99_p* x(18) * x(39) )) + (1)*(1)* ((kass_r98_p* x(40) )-(kdiss_r98_p* x(13) * x(41) )) );
	
//x(42)   ID: s286  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ((kass_r102_p* x(42) * x(7) )-(kdiss_r102_p* x(43) )) + (-1)*(1)* ((kass_r106_p* x(42) )-(kdiss_r106_p* x(6) )) + (1)*(1)* ( x(6) *((kass_r104_s30_p* x(15) * x(8) )-(kdiss_r104_s30_p* x(42) * x(9) ))) );
	
//x(43)   ID: s288  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ((kass_r103_p* x(43) * x(14) )-(kdiss_r103_p* x(44) )) + (1)*(1)* ((kass_r102_p* x(42) * x(7) )-(kdiss_r102_p* x(43) )) );
	
//x(44)   ID: s292  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ((kass_r105_p* x(44) )-(kdiss_r105_p* x(10) )) + (1)*(1)* ((kass_r103_p* x(43) * x(14) )-(kdiss_r103_p* x(44) )) );
	
//x(45)   ID: s61  initialValue: 2
	(1/compartment_c1)*( (-1)*(1)* ((kass_r88_p* x(36) * x(45) )-(kdiss_r88_p* x(46) )) + (1)*(1)* ((kass_r92_p* x(48) )-(kdiss_r92_p* x(45) * x(38) )) );
	
//x(46)   ID: s259  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ((kass_r90_p* x(46) * x(37) )-(kdiss_r90_p* x(47) )) + (1)*(1)* ((kass_r88_p* x(36) * x(45) )-(kdiss_r88_p* x(46) )) );
	
//x(47)   ID: s266  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ((kass_r91_p* x(47) )-(kdiss_r91_p* x(17) * x(48) )) + (1)*(1)* ((kass_r90_p* x(46) * x(37) )-(kdiss_r90_p* x(47) )) );
	
//x(48)   ID: s267  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ((kass_r92_p* x(48) )-(kdiss_r92_p* x(45) * x(38) )) + (1)*(1)* ((kass_r91_p* x(47) )-(kdiss_r91_p* x(17) * x(48) )) );
	
//x(49)   ID: s304  initialValue: 0.5
	0;
	
//x(50)   ID: s305  initialValue: 0
	(1/compartment_c3)*( (-1)*(1)* (kass_r68_p* x(50) ) + (1)*(1)* ((kass_r67_p* x(34) * x(20) )-(kdiss_r67_p* x(50) )) )
	];


	
endfunction
        x0=[0;0;3;0;3;1;3;1;0;0;1;3;0;3;3;4;0;0;2;2;2;2;0;4;5;5;0;0;0;0;0;0;0;0;0;5;1;0;0;0;0;0;0;0;2;0;0;0;0.5;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50])

//real_variable:
	
	
//x(1)   id: s5  initialValue: 0
	
//x(2)   id: s16  initialValue: 0
	
//x(3)   id: s1  initialValue: 3
	
//x(4)   id: s27  initialValue: 0
	
//x(5)   id: s28  initialValue: 3
	
//x(6)   id: s30  initialValue: 1
	
//x(7)   id: s31  initialValue: 3
	
//x(8)   id: s32  initialValue: 1
	
//x(9)   id: s33  initialValue: 0
	
//x(10)   id: s37  initialValue: 0
	
//x(11)   id: s46  initialValue: 1
	
//x(12)   id: s75  initialValue: 3
	
//x(13)   id: s101  initialValue: 0
	
//x(14)   id: s102  initialValue: 3
	
//x(15)   id: s107  initialValue: 3
	
//x(16)   id: s121  initialValue: 4
	
//x(17)   id: s155  initialValue: 0
	
//x(18)   id: s164  initialValue: 0
	
//x(19)   id: s171  initialValue: 2
	
//x(20)   id: s172  initialValue: 2
	
//x(21)   id: s173  initialValue: 2
	
//x(22)   id: s170  initialValue: 2
	
//x(23)   id: s195  initialValue: 0
	
//x(24)   id: s174  initialValue: 4
	
//x(25)   id: s239  initialValue: 5
	
//x(26)   id: s36  initialValue: 5
	
//x(27)   id: s123  initialValue: 0
	
//x(28)   id: s129  initialValue: 0
	
//x(29)   id: s159  initialValue: 0
	
//x(30)   id: s232  initialValue: 0
	
//x(31)   id: s176  initialValue: 0
	
//x(32)   id: s179  initialValue: 0
	
//x(33)   id: s183  initialValue: 0
	
//x(34)   id: s188  initialValue: 0
	
//x(35)   id: s245  initialValue: 0
	
//x(36)   id: s252  initialValue: 5
	
//x(37)   id: s268  initialValue: 1
	
//x(38)   id: s260  initialValue: 0
	
//x(39)   id: s270  initialValue: 0
	
//x(40)   id: s275  initialValue: 0
	
//x(41)   id: s278  initialValue: 0
	
//x(42)   id: s286  initialValue: 0
	
//x(43)   id: s288  initialValue: 0
	
//x(44)   id: s292  initialValue: 0
	
//x(45)   id: s61  initialValue: 2
	
//x(46)   id: s259  initialValue: 0
	
//x(47)   id: s266  initialValue: 0
	
//x(48)   id: s267  initialValue: 0
	
//x(49)   id: s304  initialValue: 0.5
	
//x(50)   id: s305  initialValue: 0