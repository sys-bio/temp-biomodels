
function z=power(x,y),z=x^y,endfunction
function z=root(x,y),z=y^(1/x),endfunction
function z=gt(x,y),z=x-y,endfunction
function z=lt(x,y),z=y-x,endfunction

function xdot=f(t,x)

// compartment_C1   id: C1
	compartment_C1=1;
		
// P_p   id: P
	P_p=91.239;
		
// c_T_p   id: c_T
	c_T_p=82.418999999;
		
// s_T_p   id: s_T
	s_T_p=17.744;
		
// e_T_p   id: e_T
	e_T_p=7.8115;
		
// k_n_p   id: k_n
	k_n_p=0.34508;
		
// k_sol_p   id: k_sol
	k_sol_p=0.34237;
		
// k_insol_p   id: k_insol
	k_insol_p=0.3586;
		
// n_n_p   id: n_n
	n_n_p=6;
		
// blocking_p   id: blocking
	blocking_p=0;
		
// soluble_p   id: soluble
	soluble_p=1.04389999999997;
		
// insoluble_p   id: insoluble
	insoluble_p=0;
		
// R_T_p   id: R_T
	R_T_p=86.0371940989535;
		
// a_T_p   id: a_T
	a_T_p=86.0371940989535;
		
// I_net_p   id: I_net
	I_net_p=5.20180590104651;
		
// soluble_obs_s   id: soluble_obs
	soluble_obs_s=1.04389999999997;
		
// insoluble_obs_s   id: insoluble_obs
	insoluble_obs_s=0;
		



xdot=[
//x(1)   ID: M  initialValue: 1.04389999999997
	        
          ((((((((((((((((((((((((((((((((((((((((((((((((( ( (P_p- ( ( ( (c_T_p* x(1) ) ) *((power(s_T_p,e_T_p))/((power(s_T_p,e_T_p))+(power( ( ( x(11) + x(12) + x(13) + x(14) + x(15) + x(16) + x(17) + x(18) + x(19) + x(20) + x(21) + x(22) + x(23) + x(24) + x(25) + x(26) + x(27) + x(28) + x(29) + x(30) + x(31) + x(32) + x(33) + x(34) + x(35) + x(36) + x(37) + x(38) + x(39) + x(40) + x(41) + x(42) + x(43) + x(44) + x(45) + x(46) + x(47) + x(48) + x(49) + x(50) ) ) ,e_T_p))))) ) ) ) -(k_n_p*n_n_p*(power( x(1) ,n_n_p))))-(k_sol_p* x(2) * x(1) ))-(k_sol_p* x(3) * x(1) ))-(k_sol_p* x(4) * x(1) ))-(k_sol_p* x(5) * x(1) ))-(k_sol_p* x(6) * x(1) ))-(k_sol_p* x(7) * x(1) ))-(k_sol_p* x(8) * x(1) ))-(k_sol_p* x(9) * x(1) ))-(k_insol_p* x(10) * x(1) ))-(k_insol_p* x(11) * x(1) ))-(k_insol_p* x(12) * x(1) ))-(k_insol_p* x(13) * x(1) ))-(k_insol_p* x(14) * x(1) ))-(k_insol_p* x(15) * x(1) ))-(k_insol_p* x(16) * x(1) ))-(k_insol_p* x(17) * x(1) ))-(k_insol_p* x(18) * x(1) ))-(k_insol_p* x(19) * x(1) ))-(k_insol_p* x(20) * x(1) ))-(k_insol_p* x(21) * x(1) ))-(k_insol_p* x(22) * x(1) ))-(k_insol_p* x(23) * x(1) ))-(k_insol_p* x(24) * x(1) ))-(k_insol_p* x(25) * x(1) ))-(k_insol_p* x(26) * x(1) ))-(k_insol_p* x(27) * x(1) ))-(k_insol_p* x(28) * x(1) ))-(k_insol_p* x(29) * x(1) ))-(k_insol_p* x(30) * x(1) ))-(k_insol_p* x(31) * x(1) ))-(k_insol_p* x(32) * x(1) ))-(k_insol_p* x(33) * x(1) ))-(k_insol_p* x(34) * x(1) ))-(k_insol_p* x(35) * x(1) ))-(k_insol_p* x(36) * x(1) ))-(k_insol_p* x(37) * x(1) ))-(k_insol_p* x(38) * x(1) ))-(k_insol_p* x(39) * x(1) ))-(k_insol_p* x(40) * x(1) ))-(k_insol_p* x(41) * x(1) ))-(k_insol_p* x(42) * x(1) ))-(k_insol_p* x(43) * x(1) ))-(k_insol_p* x(44) * x(1) ))-(k_insol_p* x(45) * x(1) ))-(k_insol_p* x(46) * x(1) ))-(k_insol_p* x(47) * x(1) ))-(k_insol_p* x(48) * x(1) ))-(k_insol_p* x(49) * x(1) ))
        ;
	
//x(2)   ID: N  initialValue: 0
	        
          ((k_n_p*(power( x(1) ,n_n_p)))-(k_sol_p* x(2) * x(1) ))
        ;
	
//x(3)   ID: A7  initialValue: 0
	        
          ((k_sol_p* x(2) * x(1) )-(k_sol_p* x(3) * x(1) ))
        ;
	
//x(4)   ID: A8  initialValue: 0
	        
          ((k_sol_p* x(3) * x(1) )-(k_sol_p* x(4) * x(1) ))
        ;
	
//x(5)   ID: A9  initialValue: 0
	        
          ((k_sol_p* x(4) * x(1) )-(k_sol_p* x(5) * x(1) ))
        ;
	
//x(6)   ID: A10  initialValue: 0
	        
          ((k_sol_p* x(5) * x(1) )-(k_sol_p* x(6) * x(1) ))
        ;
	
//x(7)   ID: A11  initialValue: 0
	        
          ((k_sol_p* x(6) * x(1) )-(k_sol_p* x(7) * x(1) ))
        ;
	
//x(8)   ID: A12  initialValue: 0
	        
          ((k_sol_p* x(7) * x(1) )-(k_sol_p* x(8) * x(1) ))
        ;
	
//x(9)   ID: A13  initialValue: 0
	        
          ((k_sol_p* x(8) * x(1) )-(k_sol_p* x(9) * x(1) ))
        ;
	
//x(10)   ID: A14  initialValue: 0
	        
          ((k_sol_p* x(9) * x(1) )-(k_insol_p* x(10) * x(1) ))
        ;
	
//x(11)   ID: A15  initialValue: 0
	        
          ((k_insol_p* x(10) * x(1) )-(k_insol_p* x(11) * x(1) ))
        ;
	
//x(12)   ID: A16  initialValue: 0
	        
          ((k_insol_p* x(11) * x(1) )-(k_insol_p* x(12) * x(1) ))
        ;
	
//x(13)   ID: A17  initialValue: 0
	        
          ((k_insol_p* x(12) * x(1) )-(k_insol_p* x(13) * x(1) ))
        ;
	
//x(14)   ID: A18  initialValue: 0
	        
          ((k_insol_p* x(13) * x(1) )-(k_insol_p* x(14) * x(1) ))
        ;
	
//x(15)   ID: A19  initialValue: 0
	        
          ((k_insol_p* x(14) * x(1) )-(k_insol_p* x(15) * x(1) ))
        ;
	
//x(16)   ID: A20  initialValue: 0
	        
          ((k_insol_p* x(15) * x(1) )-(k_insol_p* x(16) * x(1) ))
        ;
	
//x(17)   ID: A21  initialValue: 0
	        
          ((k_insol_p* x(16) * x(1) )-(k_insol_p* x(17) * x(1) ))
        ;
	
//x(18)   ID: A22  initialValue: 0
	        
          ((k_insol_p* x(17) * x(1) )-(k_insol_p* x(18) * x(1) ))
        ;
	
//x(19)   ID: A23  initialValue: 0
	        
          ((k_insol_p* x(18) * x(1) )-(k_insol_p* x(19) * x(1) ))
        ;
	
//x(20)   ID: A24  initialValue: 0
	        
          ((k_insol_p* x(19) * x(1) )-(k_insol_p* x(20) * x(1) ))
        ;
	
//x(21)   ID: A25  initialValue: 0
	        
          ((k_insol_p* x(20) * x(1) )-(k_insol_p* x(21) * x(1) ))
        ;
	
//x(22)   ID: A26  initialValue: 0
	        
          ((k_insol_p* x(21) * x(1) )-(k_insol_p* x(22) * x(1) ))
        ;
	
//x(23)   ID: A27  initialValue: 0
	        
          ((k_insol_p* x(22) * x(1) )-(k_insol_p* x(23) * x(1) ))
        ;
	
//x(24)   ID: A28  initialValue: 0
	        
          ((k_insol_p* x(23) * x(1) )-(k_insol_p* x(24) * x(1) ))
        ;
	
//x(25)   ID: A29  initialValue: 0
	        
          ((k_insol_p* x(24) * x(1) )-(k_insol_p* x(25) * x(1) ))
        ;
	
//x(26)   ID: A30  initialValue: 0
	        
          ((k_insol_p* x(25) * x(1) )-(k_insol_p* x(26) * x(1) ))
        ;
	
//x(27)   ID: A31  initialValue: 0
	        
          ((k_insol_p* x(26) * x(1) )-(k_insol_p* x(27) * x(1) ))
        ;
	
//x(28)   ID: A32  initialValue: 0
	        
          ((k_insol_p* x(27) * x(1) )-(k_insol_p* x(28) * x(1) ))
        ;
	
//x(29)   ID: A33  initialValue: 0
	        
          ((k_insol_p* x(28) * x(1) )-(k_insol_p* x(29) * x(1) ))
        ;
	
//x(30)   ID: A34  initialValue: 0
	        
          ((k_insol_p* x(29) * x(1) )-(k_insol_p* x(30) * x(1) ))
        ;
	
//x(31)   ID: A35  initialValue: 0
	        
          ((k_insol_p* x(30) * x(1) )-(k_insol_p* x(31) * x(1) ))
        ;
	
//x(32)   ID: A36  initialValue: 0
	        
          ((k_insol_p* x(31) * x(1) )-(k_insol_p* x(32) * x(1) ))
        ;
	
//x(33)   ID: A37  initialValue: 0
	        
          ((k_insol_p* x(32) * x(1) )-(k_insol_p* x(33) * x(1) ))
        ;
	
//x(34)   ID: A38  initialValue: 0
	        
          ((k_insol_p* x(33) * x(1) )-(k_insol_p* x(34) * x(1) ))
        ;
	
//x(35)   ID: A39  initialValue: 0
	        
          ((k_insol_p* x(34) * x(1) )-(k_insol_p* x(35) * x(1) ))
        ;
	
//x(36)   ID: A40  initialValue: 0
	        
          ((k_insol_p* x(35) * x(1) )-(k_insol_p* x(36) * x(1) ))
        ;
	
//x(37)   ID: A41  initialValue: 0
	        
          ((k_insol_p* x(36) * x(1) )-(k_insol_p* x(37) * x(1) ))
        ;
	
//x(38)   ID: A42  initialValue: 0
	        
          ((k_insol_p* x(37) * x(1) )-(k_insol_p* x(38) * x(1) ))
        ;
	
//x(39)   ID: A43  initialValue: 0
	        
          ((k_insol_p* x(38) * x(1) )-(k_insol_p* x(39) * x(1) ))
        ;
	
//x(40)   ID: A44  initialValue: 0
	        
          ((k_insol_p* x(39) * x(1) )-(k_insol_p* x(40) * x(1) ))
        ;
	
//x(41)   ID: A45  initialValue: 0
	        
          ((k_insol_p* x(40) * x(1) )-(k_insol_p* x(41) * x(1) ))
        ;
	
//x(42)   ID: A46  initialValue: 0
	        
          ((k_insol_p* x(41) * x(1) )-(k_insol_p* x(42) * x(1) ))
        ;
	
//x(43)   ID: A47  initialValue: 0
	        
          ((k_insol_p* x(42) * x(1) )-(k_insol_p* x(43) * x(1) ))
        ;
	
//x(44)   ID: A48  initialValue: 0
	        
          ((k_insol_p* x(43) * x(1) )-(k_insol_p* x(44) * x(1) ))
        ;
	
//x(45)   ID: A49  initialValue: 0
	        
          ((k_insol_p* x(44) * x(1) )-(k_insol_p* x(45) * x(1) ))
        ;
	
//x(46)   ID: A50  initialValue: 0
	        
          ((k_insol_p* x(45) * x(1) )-(k_insol_p* x(46) * x(1) ))
        ;
	
//x(47)   ID: A51  initialValue: 0
	        
          ((k_insol_p* x(46) * x(1) )-(k_insol_p* x(47) * x(1) ))
        ;
	
//x(48)   ID: A52  initialValue: 0
	        
          ((k_insol_p* x(47) * x(1) )-(k_insol_p* x(48) * x(1) ))
        ;
	
//x(49)   ID: A53  initialValue: 0
	        
          ((k_insol_p* x(48) * x(1) )-(k_insol_p* x(49) * x(1) ))
        ;
	
//x(50)   ID: A54  initialValue: 0
	        
          (k_insol_p* x(49) * x(1) )
        
	];


	
endfunction
        x0=[1.04389999999997;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];

t=linspace(0,90);
%ODEOPTIONS=[1,0,0,%inf,0,2,2000,12,5,0,-1,-1];
x=ode(x0,0,t,f);
        
//this@is@a@test
plot(t',x')
legends(['x(1)' 'x(2)' 'x(3)' 'x(4)' 'x(5)' 'x(6)' 'x(7)' 'x(8)' 'x(9)' 'x(10)' 'x(11)' 'x(12)' 'x(13)' 'x(14)' 'x(15)' 'x(16)' 'x(17)' 'x(18)' 'x(19)' 'x(20)' 'x(21)' 'x(22)' 'x(23)' 'x(24)' 'x(25)' 'x(26)' 'x(27)' 'x(28)' 'x(29)' 'x(30)' 'x(31)' 'x(32)' 'x(33)' 'x(34)' 'x(35)' 'x(36)' 'x(37)' 'x(38)' 'x(39)' 'x(40)' 'x(41)' 'x(42)' 'x(43)' 'x(44)' 'x(45)' 'x(46)' 'x(47)' 'x(48)' 'x(49)' 'x(50)'],[1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;47;48;49;50])

//real_variable:
	
	
//x(1)   id: M  initialValue: 1.04389999999997
	
//x(2)   id: N  initialValue: 0
	
//x(3)   id: A7  initialValue: 0
	
//x(4)   id: A8  initialValue: 0
	
//x(5)   id: A9  initialValue: 0
	
//x(6)   id: A10  initialValue: 0
	
//x(7)   id: A11  initialValue: 0
	
//x(8)   id: A12  initialValue: 0
	
//x(9)   id: A13  initialValue: 0
	
//x(10)   id: A14  initialValue: 0
	
//x(11)   id: A15  initialValue: 0
	
//x(12)   id: A16  initialValue: 0
	
//x(13)   id: A17  initialValue: 0
	
//x(14)   id: A18  initialValue: 0
	
//x(15)   id: A19  initialValue: 0
	
//x(16)   id: A20  initialValue: 0
	
//x(17)   id: A21  initialValue: 0
	
//x(18)   id: A22  initialValue: 0
	
//x(19)   id: A23  initialValue: 0
	
//x(20)   id: A24  initialValue: 0
	
//x(21)   id: A25  initialValue: 0
	
//x(22)   id: A26  initialValue: 0
	
//x(23)   id: A27  initialValue: 0
	
//x(24)   id: A28  initialValue: 0
	
//x(25)   id: A29  initialValue: 0
	
//x(26)   id: A30  initialValue: 0
	
//x(27)   id: A31  initialValue: 0
	
//x(28)   id: A32  initialValue: 0
	
//x(29)   id: A33  initialValue: 0
	
//x(30)   id: A34  initialValue: 0
	
//x(31)   id: A35  initialValue: 0
	
//x(32)   id: A36  initialValue: 0
	
//x(33)   id: A37  initialValue: 0
	
//x(34)   id: A38  initialValue: 0
	
//x(35)   id: A39  initialValue: 0
	
//x(36)   id: A40  initialValue: 0
	
//x(37)   id: A41  initialValue: 0
	
//x(38)   id: A42  initialValue: 0
	
//x(39)   id: A43  initialValue: 0
	
//x(40)   id: A44  initialValue: 0
	
//x(41)   id: A45  initialValue: 0
	
//x(42)   id: A46  initialValue: 0
	
//x(43)   id: A47  initialValue: 0
	
//x(44)   id: A48  initialValue: 0
	
//x(45)   id: A49  initialValue: 0
	
//x(46)   id: A50  initialValue: 0
	
//x(47)   id: A51  initialValue: 0
	
//x(48)   id: A52  initialValue: 0
	
//x(49)   id: A53  initialValue: 0
	
//x(50)   id: A54  initialValue: 0