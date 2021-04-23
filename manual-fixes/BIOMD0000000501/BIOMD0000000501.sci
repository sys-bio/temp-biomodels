
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_nucleus   id: nucleus
	compartment_nucleus=1;
		
// Kon_P1_p   id: Kon_P1
	Kon_P1_p=60000;
		
// Koff_P1_p   id: Koff_P1
	Koff_P1_p=100;
		
// Kon_G1_p   id: Kon_G1
	Kon_G1_p=2E10;
		
// Koff_G1_p   id: Koff_G1
	Koff_G1_p=100;
		
// Kon_NG1_p   id: Kon_NG1
	Kon_NG1_p=2E10;
		
// Koff_NG1_p   id: Koff_NG1
	Koff_NG1_p=5000;
		
// parameter_1_p   id: parameter_1
	parameter_1_p=0;
		



xdot=[
//x(1)   ID: S1  initialValue: 1.09648E-11
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) );
	
//x(2)   ID: DNA0000  initialValue: 1E-10
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) );
	
//x(3)   ID: DNA0001  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(4)   ID: DNA0010  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(5)   ID: DNA0100  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(6)   ID: DNA1000  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(7)   ID: DNA1100  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(8)   ID: DNA1010  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(9)   ID: DNA1001  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(10)   ID: DNA0110  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(11)   ID: DNA0101  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(12)   ID: DNA0011  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(13)   ID: DNA1110  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(14)   ID: DNA1011  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(15)   ID: DNA1101  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(16)   ID: DNA0111  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(17)   ID: DNA1111  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(18)   ID: DNA001_1  initialValue: 0
	(1/compartment_nucleus)*( (1)*(1)* (compartment_nucleus*()) );
	
//x(19)   ID: DNA01_10  initialValue: 0
	(1/compartment_nucleus)*( (1)*(1)* (compartment_nucleus*()) );
	
//x(20)   ID: DNA01_11  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(21)   ID: DNA011_1  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(22)   ID: DNA01_1_1  initialValue: 0
	(1/compartment_nucleus)*( (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(23)   ID: DNA101_1  initialValue: 0
	(1/compartment_nucleus)*( (1)*(1)* (compartment_nucleus*()) );
	
//x(24)   ID: DNA1_100  initialValue: 0
	(1/compartment_nucleus)*( (1)*(1)* (compartment_nucleus*()) );
	
//x(25)   ID: DNA1_101  initialValue: 0
	(1/compartment_nucleus)*( (1)*(1)* (compartment_nucleus*()) );
	
//x(26)   ID: DNA1_110  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(27)   ID: DNA11_10  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(28)   ID: DNA1_1_10  initialValue: 0
	(1/compartment_nucleus)*( (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(29)   ID: DNA1_111  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(30)   ID: DNA11_11  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(31)   ID: DNA111_1  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(32)   ID: DNA1_1_11  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(33)   ID: DNA1_11_1  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(34)   ID: DNA11_1_1  initialValue: 0
	(1/compartment_nucleus)*( (-1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) );
	
//x(35)   ID: DNA1_1_1_1  initialValue: 0
	(1/compartment_nucleus)*( (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) + (1)*(1)* (compartment_nucleus*()) )
	];


	
endfunction
        x0=[1.09648E-11;1E-10;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35])

//real_variable:
	
	
//x(1)   id: S1  initialValue: 1.09648E-11
	
//x(2)   id: DNA0000  initialValue: 1E-10
	
//x(3)   id: DNA0001  initialValue: 0
	
//x(4)   id: DNA0010  initialValue: 0
	
//x(5)   id: DNA0100  initialValue: 0
	
//x(6)   id: DNA1000  initialValue: 0
	
//x(7)   id: DNA1100  initialValue: 0
	
//x(8)   id: DNA1010  initialValue: 0
	
//x(9)   id: DNA1001  initialValue: 0
	
//x(10)   id: DNA0110  initialValue: 0
	
//x(11)   id: DNA0101  initialValue: 0
	
//x(12)   id: DNA0011  initialValue: 0
	
//x(13)   id: DNA1110  initialValue: 0
	
//x(14)   id: DNA1011  initialValue: 0
	
//x(15)   id: DNA1101  initialValue: 0
	
//x(16)   id: DNA0111  initialValue: 0
	
//x(17)   id: DNA1111  initialValue: 0
	
//x(18)   id: DNA001_1  initialValue: 0
	
//x(19)   id: DNA01_10  initialValue: 0
	
//x(20)   id: DNA01_11  initialValue: 0
	
//x(21)   id: DNA011_1  initialValue: 0
	
//x(22)   id: DNA01_1_1  initialValue: 0
	
//x(23)   id: DNA101_1  initialValue: 0
	
//x(24)   id: DNA1_100  initialValue: 0
	
//x(25)   id: DNA1_101  initialValue: 0
	
//x(26)   id: DNA1_110  initialValue: 0
	
//x(27)   id: DNA11_10  initialValue: 0
	
//x(28)   id: DNA1_1_10  initialValue: 0
	
//x(29)   id: DNA1_111  initialValue: 0
	
//x(30)   id: DNA11_11  initialValue: 0
	
//x(31)   id: DNA111_1  initialValue: 0
	
//x(32)   id: DNA1_1_11  initialValue: 0
	
//x(33)   id: DNA1_11_1  initialValue: 0
	
//x(34)   id: DNA11_1_1  initialValue: 0
	
//x(35)   id: DNA1_1_1_1  initialValue: 0