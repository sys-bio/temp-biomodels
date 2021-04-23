
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_default   id: default
	compartment_default=1;
		
// compartment_c1   id: c1
	compartment_c1=1;
		
// k1_re1   id: k1     reactionID: re1
	k1_re1=13.22;
	
// k1_re2   id: k1     reactionID: re2
	k1_re2=1.85;
	
// k1_re3   id: k1     reactionID: re3
	k1_re3=0.03;
	
// k1_re4   id: k1     reactionID: re4
	k1_re4=14.61;
	
// k1_re5   id: k1     reactionID: re5
	k1_re5=0.56;
	
// k1_re6   id: k1     reactionID: re6
	k1_re6=2.27;
	
// k1_re7   id: k1     reactionID: re7
	k1_re7=0.25;
	
// k1_re8   id: k1     reactionID: re8
	k1_re8=0.96;
	
// k1_re9   id: k1     reactionID: re9
	k1_re9=0.03;
	
// k1_re10   id: k1     reactionID: re10
	k1_re10=0.02;
	
// k1_re11   id: k1     reactionID: re11
	k1_re11=0.98;
	
// k1_re12   id: k1     reactionID: re12
	k1_re12=1.04;
	
// k1_re14   id: k1     reactionID: re14
	k1_re14=0.3;
	
// k1_re15   id: k1     reactionID: re15
	k1_re15=0.03;
	
// k1_re16   id: k1     reactionID: re16
	k1_re16=0.11;
	
// k1_re17   id: k1     reactionID: re17
	k1_re17=0.06;
	
// k1_re18   id: k1     reactionID: re18
	k1_re18=0.79;
	
// k1_re19   id: k1     reactionID: re19
	k1_re19=0.41;
	
// k1_re22   id: k1     reactionID: re22
	k1_re22=0.42;
	
// k1_re23   id: k1     reactionID: re23
	k1_re23=0.2;
	
// k1_re24   id: k1     reactionID: re24
	k1_re24=0.04;
	
// k1_re25   id: k1     reactionID: re25
	k1_re25=0.05;
	
// k1_re26   id: k1     reactionID: re26
	k1_re26=0.09;
	
// k1_re28   id: k1     reactionID: re28
	k1_re28=0.04;
	
// k1_re29   id: k1     reactionID: re29
	k1_re29=0.1;
	
// k1_re30   id: k1     reactionID: re30
	k1_re30=0.03;
	
// k1_re31   id: k1     reactionID: re31
	k1_re31=0.02;
	
// k1_re33   id: k1     reactionID: re33
	k1_re33=0.17;
	
// k1_re34   id: k1     reactionID: re34
	k1_re34=0.18;
	



xdot=[
//x(1)   ID: s1  initialValue: 100
	(1/compartment_c1)*( (-1)*(1)* ( x(1) *k1_re1) + (-1)*(1)* ( x(1) *k1_re6) + (-1)*(1)* ( x(1) *k1_re8) + (-1)*(1)* ( x(1) *k1_re10) + (-1)*(1)* ( x(1) *k1_re11) + (-1)*(1)* ( x(1) *k1_re12) + (-1)*(1)* ( x(1) *k1_re16) + (-1)*(1)* ( x(1) *k1_re18) + (-1)*(1)* ( x(1) *k1_re22) + (-1)*(1)* ( x(1) *k1_re24) + (-1)*(1)* ( x(1) *k1_re26) + (-1)*(1)* ( x(1) *k1_re28) + (-1)*(1)* ( x(1) *k1_re30) + (1)*(1)* ( x(4) *k1_re4) + (1)*(1)* ( x(5) *k1_re7) + (1)*(1)* ( x(6) *k1_re9) + (1)*(1)* ( x(11) *k1_re17) + (1)*(1)* ( x(12) *k1_re19) + (1)*(1)* ( x(13) *k1_re23) + (1)*(1)* ( x(14) *k1_re25) + (1)*(1)* ( x(16) *k1_re29) + (1)*(1)* ( x(17) *k1_re31) + (1)*(1)* (k1_re33* x(7) ) );
	
//x(2)   ID: s2  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ( x(2) *k1_re2) + (-1)*(1)* ( x(2) *k1_re5) + (1)*(1)* ( x(1) *k1_re1) );
	
//x(3)   ID: s3  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ( x(3) *k1_re3) + (1)*(1)* ( x(2) *k1_re2) );
	
//x(4)   ID: s4  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ( x(4) *k1_re4) + (1)*(1)* ( x(3) *k1_re3) + (1)*(1)* ( x(2) *k1_re5) );
	
//x(5)   ID: s5  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ( x(5) *k1_re7) + (1)*(1)* ( x(1) *k1_re6) );
	
//x(6)   ID: s6  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ( x(6) *k1_re9) + (1)*(1)* ( x(1) *k1_re8) );
	
//x(7)   ID: s7  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (k1_re33* x(7) ) + (1)*(1)* ( x(1) *k1_re10) );
	
//x(8)   ID: s8  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ( x(8) *k1_re15) + (1)*(1)* ( x(1) *k1_re12) );
	
//x(9)   ID: s9  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ( x(9) *k1_re14) + (1)*(1)* ( x(1) *k1_re11) );
	
//x(10)   ID: s10  initialValue: 0
	(1/compartment_default)*( (1)*(1)* ( x(9) *k1_re14) + (1)*(1)* ( x(8) *k1_re15) + (1)*(1)* (k1_re34* x(15) ) );
	
//x(11)   ID: s11  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ( x(11) *k1_re17) + (1)*(1)* ( x(1) *k1_re16) );
	
//x(12)   ID: s12  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ( x(12) *k1_re19) + (1)*(1)* ( x(1) *k1_re18) );
	
//x(13)   ID: s13  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ( x(13) *k1_re23) + (1)*(1)* ( x(1) *k1_re22) );
	
//x(14)   ID: s14  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ( x(14) *k1_re25) + (1)*(1)* ( x(1) *k1_re24) );
	
//x(15)   ID: s15  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* (k1_re34* x(15) ) + (1)*(1)* ( x(1) *k1_re26) );
	
//x(16)   ID: s16  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ( x(16) *k1_re29) + (1)*(1)* ( x(1) *k1_re28) );
	
//x(17)   ID: s17  initialValue: 0
	(1/compartment_c1)*( (-1)*(1)* ( x(17) *k1_re31) + (1)*(1)* ( x(1) *k1_re30) )
	];


	
endfunction
        x0=[100;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17])

//real_variable:
	
	
//x(1)   id: s1  initialValue: 100
	
//x(2)   id: s2  initialValue: 0
	
//x(3)   id: s3  initialValue: 0
	
//x(4)   id: s4  initialValue: 0
	
//x(5)   id: s5  initialValue: 0
	
//x(6)   id: s6  initialValue: 0
	
//x(7)   id: s7  initialValue: 0
	
//x(8)   id: s8  initialValue: 0
	
//x(9)   id: s9  initialValue: 0
	
//x(10)   id: s10  initialValue: 0
	
//x(11)   id: s11  initialValue: 0
	
//x(12)   id: s12  initialValue: 0
	
//x(13)   id: s13  initialValue: 0
	
//x(14)   id: s14  initialValue: 0
	
//x(15)   id: s15  initialValue: 0
	
//x(16)   id: s16  initialValue: 0
	
//x(17)   id: s17  initialValue: 0