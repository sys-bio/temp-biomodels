
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_synapse   id: synapse
	compartment_synapse=1E-16;
		
// Bkon_p   id: Bkon
	Bkon_p=5000000;
		
// Bkoff_p   id: Bkoff
	Bkoff_p=4495;
		
// Skon_p   id: Skon
	Skon_p=5000000;
		
// Skoff_p   id: Skoff
	Skoff_p=270.4;
		
// Mkon_p   id: Mkon
	Mkon_p=5000000;
		
// Mkoff_p   id: Mkoff
	Mkoff_p=16.65;
		
// Lkon_p   id: Lkon
	Lkon_p=5000000;
		
// Lkoff_p   id: Lkoff
	Lkoff_p=1.149;
		
// BSk0_p   id: BSk0
	BSk0_p=1083.603;
		
// SBk0_p   id: SBk0
	SBk0_p=2.38094578918663E5;
		
// BSk1_p   id: BSk1
	BSk1_p=4420.10883237053;
		
// SBk1_p   id: SBk1
	SBk1_p=5.83696035062632E4;
		
// BSk2_p   id: BSk2
	BSk2_p=18030;
		
// SBk2_p   id: SBk2
	SBk2_p=1.43094841930116E4;
		
// BSk3_p   id: BSk3
	BSk3_p=7.35459040327876E4;
		
// SBk3_p   id: SBk3
	SBk3_p=3508.01317072642;
		
// BSk4_p   id: BSk4
	BSk4_p=300000;
		
// SBk4_p   id: SBk4
	SBk4_p=860;
		
// SMk0_p   id: SMk0
	SMk0_p=75.8912;
		
// MSk0_p   id: MSk0
	MSk0_p=3.82125990892225E4;
		
// SMk1_p   id: SMk1
	SMk1_p=305.774358637215;
		
// MSk1_p   id: MSk1
	MSk1_p=9484.11767724676;
		
// SMk2_p   id: SMk2
	SMk2_p=1232;
		
// MSk2_p   id: MSk2
	MSk2_p=2353.8961038961;
		
// SMk3_p   id: SMk3
	SMk3_p=4963.86945839634;
		
// MSk3_p   id: MSk3
	MSk3_p=584.221648918401;
		
// SMk4_p   id: SMk4
	SMk4_p=20000;
		
// MSk4_p   id: MSk4
	MSk4_p=145;
		
// MLk0_p   id: MLk0
	MLk0_p=238.05;
		
// LMk0_p   id: LMk0
	LMk0_p=1.45137576139466E5;
		
// MLk1_p   id: MLk1
	MLk1_p=906.240862022895;
		
// LMk1_p   id: LMk1
	LMk1_p=3.81245223514619E4;
		
// MLk2_p   id: MLk2
	MLk2_p=3450;
		
// LMk2_p   id: LMk2
	LMk2_p=1.00144927536232E4;
		
// MLk3_p   id: MLk3
	MLk3_p=1.31339255365637E4;
		
// LMk3_p   id: LMk3
	LMk3_p=2630.59204225087;
		
// MLk4_p   id: MLk4
	MLk4_p=50000;
		
// LMk4_p   id: LMk4
	LMk4_p=691;
		
// BSc_p   id: BSc
	BSc_p=0.0601;
		
// SMc_p   id: SMc
	SMc_p=0.0616;
		
// MLc_p   id: MLc
	MLc_p=0.069;
		
// p_p   id: p
	p_p=0.5;
		



xdot=[
//x(1)   ID: B0  initialValue: 8.30269391581363E-7
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*BSk0_p* x(1) ) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*SBk0_p* x(2) ) + (1)*(1)* (compartment_synapse*()) );
	
//x(2)   ID: S0  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*SBk0_p* x(2) ) + (-1)*(1)* (compartment_synapse*SMk0_p* x(2) ) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*BSk0_p* x(1) ) + (1)*(1)* (compartment_synapse*MSk0_p* x(11) ) + (1)*(1)* (compartment_synapse*()) );
	
//x(3)   ID: B1  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*BSk1_p* x(3) ) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*SBk1_p* x(4) ) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) );
	
//x(4)   ID: S1  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*SBk1_p* x(4) ) + (-1)*(1)* (compartment_synapse*SMk1_p* x(4) ) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*BSk1_p* x(3) ) + (1)*(1)* (compartment_synapse*MSk1_p* x(12) ) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) );
	
//x(5)   ID: B2  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*BSk2_p* x(5) ) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*SBk2_p* x(6) ) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) );
	
//x(6)   ID: S2  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*SBk2_p* x(6) ) + (-1)*(1)* (compartment_synapse*SMk2_p* x(6) ) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*BSk2_p* x(5) ) + (1)*(1)* (compartment_synapse*MSk2_p* x(13) ) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) );
	
//x(7)   ID: B3  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*BSk3_p* x(7) ) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*SBk3_p* x(8) ) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) );
	
//x(8)   ID: S3  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*SBk3_p* x(8) ) + (-1)*(1)* (compartment_synapse*SMk3_p* x(8) ) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*BSk3_p* x(7) ) + (1)*(1)* (compartment_synapse*MSk3_p* x(14) ) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) );
	
//x(9)   ID: B4  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*BSk4_p* x(9) ) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*SBk4_p* x(10) ) + (1)*(1)* (compartment_synapse*()) );
	
//x(10)   ID: S4  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*SBk4_p* x(10) ) + (-1)*(1)* (compartment_synapse*SMk4_p* x(10) ) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*BSk4_p* x(9) ) + (1)*(1)* (compartment_synapse*MSk4_p* x(15) ) + (1)*(1)* (compartment_synapse*()) );
	
//x(11)   ID: M0  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*MSk0_p* x(11) ) + (-1)*(1)* (compartment_synapse*MLk0_p* x(11) ) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*SMk0_p* x(2) ) + (1)*(1)* (compartment_synapse*LMk0_p* x(16) ) + (1)*(1)* (compartment_synapse*()) );
	
//x(12)   ID: M1  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*MSk1_p* x(12) ) + (-1)*(1)* (compartment_synapse*MLk1_p* x(12) ) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*SMk1_p* x(4) ) + (1)*(1)* (compartment_synapse*LMk1_p* x(17) ) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) );
	
//x(13)   ID: M2  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*MSk2_p* x(13) ) + (-1)*(1)* (compartment_synapse*MLk2_p* x(13) ) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*SMk2_p* x(6) ) + (1)*(1)* (compartment_synapse*LMk2_p* x(18) ) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) );
	
//x(14)   ID: M3  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*MSk3_p* x(14) ) + (-1)*(1)* (compartment_synapse*MLk3_p* x(14) ) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*SMk3_p* x(8) ) + (1)*(1)* (compartment_synapse*LMk3_p* x(19) ) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) );
	
//x(15)   ID: M4  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*MSk4_p* x(15) ) + (-1)*(1)* (compartment_synapse*MLk4_p* x(15) ) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*SMk4_p* x(10) ) + (1)*(1)* (compartment_synapse*LMk4_p* x(20) ) + (1)*(1)* (compartment_synapse*()) );
	
//x(16)   ID: L0  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*LMk0_p* x(16) ) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*MLk0_p* x(11) ) + (1)*(1)* (compartment_synapse*()) );
	
//x(17)   ID: L1  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*LMk1_p* x(17) ) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*MLk1_p* x(12) ) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) );
	
//x(18)   ID: L2  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*LMk2_p* x(18) ) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*MLk2_p* x(13) ) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) );
	
//x(19)   ID: L3  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*LMk3_p* x(19) ) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*MLk3_p* x(14) ) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) );
	
//x(20)   ID: L4  initialValue: 0
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*LMk4_p* x(20) ) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*MLk4_p* x(15) ) + (1)*(1)* (compartment_synapse*()) );
	
//x(21)   ID: glu  initialValue: 0.000830269391581363
	(1/compartment_synapse)*( (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (-1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) + (1)*(1)* (compartment_synapse*()) )
	];


	
endfunction
        x0=[8.30269391581363E-7;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0.000830269391581363];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21])

//real_variable:
	
	
//x(1)   id: B0  initialValue: 8.30269391581363E-7
	
//x(2)   id: S0  initialValue: 0
	
//x(3)   id: B1  initialValue: 0
	
//x(4)   id: S1  initialValue: 0
	
//x(5)   id: B2  initialValue: 0
	
//x(6)   id: S2  initialValue: 0
	
//x(7)   id: B3  initialValue: 0
	
//x(8)   id: S3  initialValue: 0
	
//x(9)   id: B4  initialValue: 0
	
//x(10)   id: S4  initialValue: 0
	
//x(11)   id: M0  initialValue: 0
	
//x(12)   id: M1  initialValue: 0
	
//x(13)   id: M2  initialValue: 0
	
//x(14)   id: M3  initialValue: 0
	
//x(15)   id: M4  initialValue: 0
	
//x(16)   id: L0  initialValue: 0
	
//x(17)   id: L1  initialValue: 0
	
//x(18)   id: L2  initialValue: 0
	
//x(19)   id: L3  initialValue: 0
	
//x(20)   id: L4  initialValue: 0
	
//x(21)   id: glu  initialValue: 0.000830269391581363