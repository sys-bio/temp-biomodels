
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_compartmentOne   id: compartmentOne
	compartment_compartmentOne=1;
		



xdot=[
//x(1)   ID: k0  initialValue: 0.000311
	0;
	
//x(2)   ID: k1  initialValue: 0.0178
	0;
	
//x(3)   ID: k2  initialValue: 7.6
	0;
	
//x(4)   ID: k3  initialValue: 4.63
	0;
	
//x(5)   ID: k4  initialValue: 0.0787
	0;
	
//x(6)   ID: k5  initialValue: 2.65
	0;
	
//x(7)   ID: k6  initialValue: 5.0985
	0;
	
//x(8)   ID: k7  initialValue: 0.461
	0;
	
//x(9)   ID: k8  initialValue: 1.77
	0;
	
//x(10)   ID: k9  initialValue: 3.04
	0;
	
//x(11)   ID: k10  initialValue: 2.27
	0;
	
//x(12)   ID: k11  initialValue: 2.61
	0;
	
//x(13)   ID: k12  initialValue: 2.59
	0;
	
//x(14)   ID: k13  initialValue: 0.00619
	0;
	
//x(15)   ID: k14  initialValue: 0.0311
	0;
	
//x(16)   ID: k15  initialValue: 6.54E-5
	0;
	
//x(17)   ID: k16  initialValue: 0.0723
	0;
	
//x(18)   ID: k17  initialValue: 0.0665
	0;
	
//x(19)   ID: k18  initialValue: 0.59
	0;
	
//x(20)   ID: k19  initialValue: 0.205
	0;
	
//x(21)   ID: k20  initialValue: 1.04
	0;
	
//x(22)   ID: k21  initialValue: 0.00042
	0;
	
//x(23)   ID: k22  initialValue: 14.44
	0;
	
//x(24)   ID: k23  initialValue: 1.05
	0;
	
//x(25)   ID: k24  initialValue: 0.347
	0;
	
//x(26)   ID: k25  initialValue: 0.762
	0;
	
//x(27)   ID: GRK23  initialValue: 0.899447579
	0;
	
//x(28)   ID: GRK56  initialValue: 1.5180818
	0;
	
//x(29)   ID: GRK23_si  initialValue: 0.478865092
	0;
	
//x(30)   ID: GRK56_si  initialValue: 0.00103512491
	0;
	
//x(31)   ID: P0_Ro  initialValue: 0.00173556731
	0;
	
//x(32)   ID: P0_a_Ro  initialValue: 2.09075206E-5
	0;
	
//x(33)   ID: barr2_0_si  initialValue: 0.000112306963
	0;
	
//x(34)   ID: nDAG  initialValue: 4.11974423
	0;
	
//x(35)   ID: nPKC  initialValue: 7.20901786
	0;
	
//x(36)   ID: HR  initialValue: 0.08
	(1/compartment_compartmentOne)*( (-1)*(1)* ( x(3) * x(37) * x(36) ) + (-1)*(1)* ( x(11) * x(27) * x(36) ) + (-1)*(1)* ( x(19) * x(28) * x(36) ) + (-1)*(1)* ( x(20) * x(46) * x(36) ) + (1)*(1)* ( x(3) * x(37) * x(36) ) + (1)*(1)* ( x(16) * x(49) ) + (1)*(1)* ( x(17) * x(50) ) + (1)*(1)* ( x(18) * x(51) ) + (1)*(1)* ( x(24) * x(52) ) );
	
//x(37)   ID: G  initialValue: 56.99
	(1/compartment_compartmentOne)*( (-1)*(1)* ( x(1) * x(37) ) + (-1)*(1)* ( x(2) * x(37) * x(48) ) + (-1)*(1)* ( x(3) * x(37) * x(36) ) + (1)*(1)* ( x(7) * x(47) ) );
	
//x(38)   ID: ERK  initialValue: 4.243
	(1/compartment_compartmentOne)*( (-1)*(1)* ( x(6) * x(38) * x(42) ) + (-1)*(1)* ( x(22) * x(38) * x(52) ) + (-1)*(1)* ( x(23) * x(38) * x(53) ) + (1)*(1)* ( x(10) * x(43) ) + (1)*(1)* ( x(26) * x(44) ) );
	
//x(39)   ID: PIP2  initialValue: 0.997
	(1/compartment_compartmentOne)*( (-1)*(1)* ( x(4) * x(47) * x(39) ) + (1)*(1)* ( x(8) * x(40) ) );
	
//x(40)   ID: DAG  initialValue: 0.009
	(1/compartment_compartmentOne)*( (-1)*(1)* ( x(5) * x(40) * x(41) ) + (-1)*(1)* ( x(8) * x(40) ) + (1)*(1)* ( x(4) * x(47) * x(39) ) + (1)*(1)* ( x(5) * x(40) * x(41) ) );
	
//x(41)   ID: PKC  initialValue: 8.842
	(1/compartment_compartmentOne)*( (-1)*(1)* ( x(5) * x(40) * x(41) ) + (1)*(1)* ( x(9) * x(42) ) );
	
//x(42)   ID: PKC_a  initialValue: 0.002
	(1/compartment_compartmentOne)*( (-1)*(1)* ( x(6) * x(38) * x(42) ) + (-1)*(1)* ( x(9) * x(42) ) + (1)*(1)* ( x(5) * x(40) * x(41) ) + (1)*(1)* ( x(6) * x(38) * x(42) ) );
	
//x(43)   ID: GpERK  initialValue: 0.015
	(1/compartment_compartmentOne)*( (-1)*(1)* ( x(10) * x(43) ) + (1)*(1)* ( x(6) * x(38) * x(42) ) );
	
//x(44)   ID: bpERK  initialValue: 0.015
	(1/compartment_compartmentOne)*( (-1)*(1)* ( x(26) * x(44) ) + (1)*(1)* ( x(22) * x(38) * x(52) ) + (1)*(1)* ( x(23) * x(38) * x(53) ) );
	
//x(45)   ID: barr1  initialValue: 0.858
	(1/compartment_compartmentOne)*( (-1)*(1)* ( x(12) * x(45) * x(48) ) + (1)*(1)* ( x(14) * x(49) ) + (1)*(1)* ( x(16) * x(49) ) );
	
//x(46)   ID: barr2  initialValue: 0.483
	(1/compartment_compartmentOne)*( (-1)*(1)* ( x(13) * x(46) * x(48) ) + (-1)*(1)* ( x(20) * x(46) * x(36) ) + (-1)*(1)* ( x(21) * x(46) * x(51) ) + (1)*(1)* ( x(15) * x(50) ) + (1)*(1)* ( x(17) * x(50) ) + (1)*(1)* ( x(24) * x(52) ) + (1)*(1)* ( x(25) * x(53) ) );
	
//x(47)   ID: G_a  initialValue: 0
	(1/compartment_compartmentOne)*( (-1)*(1)* ( x(4) * x(47) * x(39) ) + (-1)*(1)* ( x(7) * x(47) ) + (1)*(1)* ( x(1) * x(37) ) + (1)*(1)* ( x(2) * x(37) * x(48) ) + (1)*(1)* ( x(3) * x(37) * x(36) ) + (1)*(1)* ( x(4) * x(47) * x(39) ) );
	
//x(48)   ID: HRP1  initialValue: 0
	(1/compartment_compartmentOne)*( (-1)*(1)* ( x(2) * x(37) * x(48) ) + (-1)*(1)* ( x(12) * x(45) * x(48) ) + (-1)*(1)* ( x(13) * x(46) * x(48) ) + (1)*(1)* ( x(2) * x(37) * x(48) ) + (1)*(1)* ( x(11) * x(27) * x(36) ) + (1)*(1)* ( x(14) * x(49) ) + (1)*(1)* ( x(15) * x(50) ) );
	
//x(49)   ID: Hbarr1RP1  initialValue: 0
	(1/compartment_compartmentOne)*( (-1)*(1)* ( x(14) * x(49) ) + (-1)*(1)* ( x(16) * x(49) ) + (1)*(1)* ( x(12) * x(45) * x(48) ) );
	
//x(50)   ID: Hbarr2RP1  initialValue: 0
	(1/compartment_compartmentOne)*( (-1)*(1)* ( x(15) * x(50) ) + (-1)*(1)* ( x(17) * x(50) ) + (1)*(1)* ( x(13) * x(46) * x(48) ) );
	
//x(51)   ID: HRP2  initialValue: 0
	(1/compartment_compartmentOne)*( (-1)*(1)* ( x(18) * x(51) ) + (-1)*(1)* ( x(21) * x(46) * x(51) ) + (1)*(1)* ( x(19) * x(28) * x(36) ) + (1)*(1)* ( x(25) * x(53) ) );
	
//x(52)   ID: HRbarr2  initialValue: 0
	(1/compartment_compartmentOne)*( (-1)*(1)* ( x(24) * x(52) ) + (-1)*(1)* ( x(22) * x(38) * x(52) ) + (1)*(1)* ( x(20) * x(46) * x(36) ) + (1)*(1)* ( x(22) * x(38) * x(52) ) );
	
//x(53)   ID: Hbarr2RP2  initialValue: 0
	(1/compartment_compartmentOne)*( (-1)*(1)* ( x(25) * x(53) ) + (-1)*(1)* ( x(23) * x(38) * x(53) ) + (1)*(1)* ( x(21) * x(46) * x(51) ) + (1)*(1)* ( x(23) * x(38) * x(53) ) )
	];


	
endfunction
        x0=[0.000311;0.0178;7.6;4.63;0.0787;2.65;5.0985;0.461;1.77;3.04;2.27;2.61;2.59;0.00619;0.0311;6.54E-5;0.0723;0.0665;0.59;0.205;1.04;0.00042;14.44;1.05;0.347;0.762;0.899447579;1.5180818;0.478865092;0.00103512491;0.00173556731;2.09075206E-5;0.000112306963;4.11974423;7.20901786;0.08;56.99;4.243;0.997;0.009;8.842;0.002;0.015;0.015;0.858;0.483;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)' 'x(51)' 'x(52)' 'x(53)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50;51;52;53])

//real_variable:
	
	
//x(1)   id: k0  initialValue: 0.000311
	
//x(2)   id: k1  initialValue: 0.0178
	
//x(3)   id: k2  initialValue: 7.6
	
//x(4)   id: k3  initialValue: 4.63
	
//x(5)   id: k4  initialValue: 0.0787
	
//x(6)   id: k5  initialValue: 2.65
	
//x(7)   id: k6  initialValue: 5.0985
	
//x(8)   id: k7  initialValue: 0.461
	
//x(9)   id: k8  initialValue: 1.77
	
//x(10)   id: k9  initialValue: 3.04
	
//x(11)   id: k10  initialValue: 2.27
	
//x(12)   id: k11  initialValue: 2.61
	
//x(13)   id: k12  initialValue: 2.59
	
//x(14)   id: k13  initialValue: 0.00619
	
//x(15)   id: k14  initialValue: 0.0311
	
//x(16)   id: k15  initialValue: 6.54E-5
	
//x(17)   id: k16  initialValue: 0.0723
	
//x(18)   id: k17  initialValue: 0.0665
	
//x(19)   id: k18  initialValue: 0.59
	
//x(20)   id: k19  initialValue: 0.205
	
//x(21)   id: k20  initialValue: 1.04
	
//x(22)   id: k21  initialValue: 0.00042
	
//x(23)   id: k22  initialValue: 14.44
	
//x(24)   id: k23  initialValue: 1.05
	
//x(25)   id: k24  initialValue: 0.347
	
//x(26)   id: k25  initialValue: 0.762
	
//x(27)   id: GRK23  initialValue: 0.899447579
	
//x(28)   id: GRK56  initialValue: 1.5180818
	
//x(29)   id: GRK23_si  initialValue: 0.478865092
	
//x(30)   id: GRK56_si  initialValue: 0.00103512491
	
//x(31)   id: P0_Ro  initialValue: 0.00173556731
	
//x(32)   id: P0_a_Ro  initialValue: 2.09075206E-5
	
//x(33)   id: barr2_0_si  initialValue: 0.000112306963
	
//x(34)   id: nDAG  initialValue: 4.11974423
	
//x(35)   id: nPKC  initialValue: 7.20901786
	
//x(36)   id: HR  initialValue: 0.08
	
//x(37)   id: G  initialValue: 56.99
	
//x(38)   id: ERK  initialValue: 4.243
	
//x(39)   id: PIP2  initialValue: 0.997
	
//x(40)   id: DAG  initialValue: 0.009
	
//x(41)   id: PKC  initialValue: 8.842
	
//x(42)   id: PKC_a  initialValue: 0.002
	
//x(43)   id: GpERK  initialValue: 0.015
	
//x(44)   id: bpERK  initialValue: 0.015
	
//x(45)   id: barr1  initialValue: 0.858
	
//x(46)   id: barr2  initialValue: 0.483
	
//x(47)   id: G_a  initialValue: 0
	
//x(48)   id: HRP1  initialValue: 0
	
//x(49)   id: Hbarr1RP1  initialValue: 0
	
//x(50)   id: Hbarr2RP1  initialValue: 0
	
//x(51)   id: HRP2  initialValue: 0
	
//x(52)   id: HRbarr2  initialValue: 0
	
//x(53)   id: Hbarr2RP2  initialValue: 0