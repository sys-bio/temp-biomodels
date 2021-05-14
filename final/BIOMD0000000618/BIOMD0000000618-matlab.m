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
% Model name = Krohn2011 - Cerebral amyloid-? proteostasis regulated by membrane transport protein ABCC1
%
% is http://identifiers.org/biomodels.db/MODEL1607270000
% is http://identifiers.org/biomodels.db/BIOMD0000000618
% isDescribedBy http://identifiers.org/pubmed/21881209
%


function main()
%Initial conditions vector
	x0=zeros(102,1);
	x0(53) = 1.04389999999997;
	x0(54) = 0.0;
	x0(55) = 0.0;
	x0(56) = 0.0;
	x0(57) = 0.0;
	x0(58) = 0.0;
	x0(59) = 0.0;
	x0(60) = 0.0;
	x0(61) = 0.0;
	x0(62) = 0.0;
	x0(63) = 0.0;
	x0(64) = 0.0;
	x0(65) = 0.0;
	x0(66) = 0.0;
	x0(67) = 0.0;
	x0(68) = 0.0;
	x0(69) = 0.0;
	x0(70) = 0.0;
	x0(71) = 0.0;
	x0(72) = 0.0;
	x0(73) = 0.0;
	x0(74) = 0.0;
	x0(75) = 0.0;
	x0(76) = 0.0;
	x0(77) = 0.0;
	x0(78) = 0.0;
	x0(79) = 0.0;
	x0(80) = 0.0;
	x0(81) = 0.0;
	x0(82) = 0.0;
	x0(83) = 0.0;
	x0(84) = 0.0;
	x0(85) = 0.0;
	x0(86) = 0.0;
	x0(87) = 0.0;
	x0(88) = 0.0;
	x0(89) = 0.0;
	x0(90) = 0.0;
	x0(91) = 0.0;
	x0(92) = 0.0;
	x0(93) = 0.0;
	x0(94) = 0.0;
	x0(95) = 0.0;
	x0(96) = 0.0;
	x0(97) = 0.0;
	x0(98) = 0.0;
	x0(99) = 0.0;
	x0(100) = 0.0;
	x0(101) = 0.0;
	x0(102) = 0.0;
	x0(1) = 1.04389999999997;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
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
	x0(46) = 0.0;
	x0(47) = 0.0;
	x0(48) = 0.0;
	x0(49) = 0.0;
	x0(50) = 0.0;
	x0(51) = 1.04389999999997;
	x0(52) = 0.0;


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

% Compartment: id = C1, name = Brain, constant
	compartment_C1=1.0;
% Parameter:   id =  P, name = P
	global_par_P=91.239;
% Parameter:   id =  c_T, name = c_T
	global_par_c_T=82.418999999;
% Parameter:   id =  s_T, name = s_T
	global_par_s_T=17.744;
% Parameter:   id =  e_T, name = e_T
	global_par_e_T=7.8115;
% Parameter:   id =  k_n, name = k_n
	global_par_k_n=0.34508;
% Parameter:   id =  k_sol, name = k_sol
	global_par_k_sol=0.34237;
% Parameter:   id =  k_insol, name = k_insol
	global_par_k_insol=0.3586;
% Parameter:   id =  n_n, name = n_n
	global_par_n_n=6.0;
% Parameter:   id =  blocking, name = blocking
% Parameter:   id =  soluble, name = soluble
% Parameter:   id =  insoluble, name = insoluble
% Parameter:   id =  R_T, name = R_T
% Parameter:   id =  a_T, name = a_T
% Parameter:   id =  I_net, name = I_net
% assignmentRule: variable = R_T
	global_par_R_T=global_par_c_T*x(1);
% assignmentRule: variable = insoluble
	global_par_insoluble=x(11)*15+x(12)*16+17*x(13)+18*x(14)+19*x(15)+20*x(16)+21*x(17)+22*x(18)+23*x(19)+24*x(20)+25*x(21)+26*x(22)+27*x(23)+28*x(24)+29*x(25)+30*x(26)+31*x(27)+32*x(28)+33*x(29)+34*x(30)+35*x(31)+36*x(32)+37*x(33)+38*x(34)+39*x(35)+40*x(36)+41*x(37)+42*x(38)+43*x(39)+44*x(40)+45*x(41)+46*x(42)+47*x(43)+48*x(44)+49*x(45)+50*x(46)+51*x(47)+52*x(48)+53*x(49)+54*x(50);
% assignmentRule: variable = soluble
	global_par_soluble=x(1)+x(2)*global_par_n_n+7*x(3)+8*x(4)+9*x(5)+10*x(6)+11*x(7)+12*x(8)+13*x(9)+14*x(10);
% assignmentRule: variable = blocking
	global_par_blocking=x(11)+x(12)+x(13)+x(14)+x(15)+x(16)+x(17)+x(18)+x(19)+x(20)+x(21)+x(22)+x(23)+x(24)+x(25)+x(26)+x(27)+x(28)+x(29)+x(30)+x(31)+x(32)+x(33)+x(34)+x(35)+x(36)+x(37)+x(38)+x(39)+x(40)+x(41)+x(42)+x(43)+x(44)+x(45)+x(46)+x(47)+x(48)+x(49)+x(50);
% assignmentRule: variable = a_T
	global_par_a_T=global_par_R_T*global_par_s_T^global_par_e_T/(global_par_s_T^global_par_e_T+global_par_blocking^global_par_e_T);
% assignmentRule: variable = I_net
	global_par_I_net=global_par_P-global_par_a_T;
% assignmentRule: variable = insoluble_obs
	x(52)=global_par_insoluble;
% assignmentRule: variable = soluble_obs
	x(51)=global_par_soluble;
% rateRule: variable = M
x(1) = x(53);
% rateRule: variable = N
x(2) = x(54);
% rateRule: variable = A7
x(3) = x(55);
% rateRule: variable = A8
x(4) = x(56);
% rateRule: variable = A9
x(5) = x(57);
% rateRule: variable = A10
x(6) = x(58);
% rateRule: variable = A11
x(7) = x(59);
% rateRule: variable = A12
x(8) = x(60);
% rateRule: variable = A13
x(9) = x(61);
% rateRule: variable = A14
x(10) = x(62);
% rateRule: variable = A15
x(11) = x(63);
% rateRule: variable = A16
x(12) = x(64);
% rateRule: variable = A17
x(13) = x(65);
% rateRule: variable = A18
x(14) = x(66);
% rateRule: variable = A19
x(15) = x(67);
% rateRule: variable = A20
x(16) = x(68);
% rateRule: variable = A21
x(17) = x(69);
% rateRule: variable = A22
x(18) = x(70);
% rateRule: variable = A23
x(19) = x(71);
% rateRule: variable = A24
x(20) = x(72);
% rateRule: variable = A25
x(21) = x(73);
% rateRule: variable = A26
x(22) = x(74);
% rateRule: variable = A27
x(23) = x(75);
% rateRule: variable = A28
x(24) = x(76);
% rateRule: variable = A29
x(25) = x(77);
% rateRule: variable = A30
x(26) = x(78);
% rateRule: variable = A31
x(27) = x(79);
% rateRule: variable = A32
x(28) = x(80);
% rateRule: variable = A33
x(29) = x(81);
% rateRule: variable = A34
x(30) = x(82);
% rateRule: variable = A35
x(31) = x(83);
% rateRule: variable = A36
x(32) = x(84);
% rateRule: variable = A37
x(33) = x(85);
% rateRule: variable = A38
x(34) = x(86);
% rateRule: variable = A39
x(35) = x(87);
% rateRule: variable = A40
x(36) = x(88);
% rateRule: variable = A41
x(37) = x(89);
% rateRule: variable = A42
x(38) = x(90);
% rateRule: variable = A43
x(39) = x(91);
% rateRule: variable = A44
x(40) = x(92);
% rateRule: variable = A45
x(41) = x(93);
% rateRule: variable = A46
x(42) = x(94);
% rateRule: variable = A47
x(43) = x(95);
% rateRule: variable = A48
x(44) = x(96);
% rateRule: variable = A49
x(45) = x(97);
% rateRule: variable = A50
x(46) = x(98);
% rateRule: variable = A51
x(47) = x(99);
% rateRule: variable = A52
x(48) = x(100);
% rateRule: variable = A53
x(49) = x(101);
% rateRule: variable = A54
x(50) = x(102);

	xdot=zeros(102,1);
	% rateRule: variable = M
	xdot(53) = global_par_I_net-global_par_k_n*global_par_n_n*x(1)^global_par_n_n-global_par_k_sol*x(2)*x(1)-global_par_k_sol*x(3)*x(1)-global_par_k_sol*x(4)*x(1)-global_par_k_sol*x(5)*x(1)-global_par_k_sol*x(6)*x(1)-global_par_k_sol*x(7)*x(1)-global_par_k_sol*x(8)*x(1)-global_par_k_sol*x(9)*x(1)-global_par_k_insol*x(10)*x(1)-global_par_k_insol*x(11)*x(1)-global_par_k_insol*x(12)*x(1)-global_par_k_insol*x(13)*x(1)-global_par_k_insol*x(14)*x(1)-global_par_k_insol*x(15)*x(1)-global_par_k_insol*x(16)*x(1)-global_par_k_insol*x(17)*x(1)-global_par_k_insol*x(18)*x(1)-global_par_k_insol*x(19)*x(1)-global_par_k_insol*x(20)*x(1)-global_par_k_insol*x(21)*x(1)-global_par_k_insol*x(22)*x(1)-global_par_k_insol*x(23)*x(1)-global_par_k_insol*x(24)*x(1)-global_par_k_insol*x(25)*x(1)-global_par_k_insol*x(26)*x(1)-global_par_k_insol*x(27)*x(1)-global_par_k_insol*x(28)*x(1)-global_par_k_insol*x(29)*x(1)-global_par_k_insol*x(30)*x(1)-global_par_k_insol*x(31)*x(1)-global_par_k_insol*x(32)*x(1)-global_par_k_insol*x(33)*x(1)-global_par_k_insol*x(34)*x(1)-global_par_k_insol*x(35)*x(1)-global_par_k_insol*x(36)*x(1)-global_par_k_insol*x(37)*x(1)-global_par_k_insol*x(38)*x(1)-global_par_k_insol*x(39)*x(1)-global_par_k_insol*x(40)*x(1)-global_par_k_insol*x(41)*x(1)-global_par_k_insol*x(42)*x(1)-global_par_k_insol*x(43)*x(1)-global_par_k_insol*x(44)*x(1)-global_par_k_insol*x(45)*x(1)-global_par_k_insol*x(46)*x(1)-global_par_k_insol*x(47)*x(1)-global_par_k_insol*x(48)*x(1)-global_par_k_insol*x(49)*x(1);
	% rateRule: variable = N
	xdot(54) = global_par_k_n*x(1)^global_par_n_n-global_par_k_sol*x(2)*x(1);
	% rateRule: variable = A7
	xdot(55) = global_par_k_sol*x(2)*x(1)-global_par_k_sol*x(3)*x(1);
	% rateRule: variable = A8
	xdot(56) = global_par_k_sol*x(3)*x(1)-global_par_k_sol*x(4)*x(1);
	% rateRule: variable = A9
	xdot(57) = global_par_k_sol*x(4)*x(1)-global_par_k_sol*x(5)*x(1);
	% rateRule: variable = A10
	xdot(58) = global_par_k_sol*x(5)*x(1)-global_par_k_sol*x(6)*x(1);
	% rateRule: variable = A11
	xdot(59) = global_par_k_sol*x(6)*x(1)-global_par_k_sol*x(7)*x(1);
	% rateRule: variable = A12
	xdot(60) = global_par_k_sol*x(7)*x(1)-global_par_k_sol*x(8)*x(1);
	% rateRule: variable = A13
	xdot(61) = global_par_k_sol*x(8)*x(1)-global_par_k_sol*x(9)*x(1);
	% rateRule: variable = A14
	xdot(62) = global_par_k_sol*x(9)*x(1)-global_par_k_insol*x(10)*x(1);
	% rateRule: variable = A15
	xdot(63) = global_par_k_insol*x(10)*x(1)-global_par_k_insol*x(11)*x(1);
	% rateRule: variable = A16
	xdot(64) = global_par_k_insol*x(11)*x(1)-global_par_k_insol*x(12)*x(1);
	% rateRule: variable = A17
	xdot(65) = global_par_k_insol*x(12)*x(1)-global_par_k_insol*x(13)*x(1);
	% rateRule: variable = A18
	xdot(66) = global_par_k_insol*x(13)*x(1)-global_par_k_insol*x(14)*x(1);
	% rateRule: variable = A19
	xdot(67) = global_par_k_insol*x(14)*x(1)-global_par_k_insol*x(15)*x(1);
	% rateRule: variable = A20
	xdot(68) = global_par_k_insol*x(15)*x(1)-global_par_k_insol*x(16)*x(1);
	% rateRule: variable = A21
	xdot(69) = global_par_k_insol*x(16)*x(1)-global_par_k_insol*x(17)*x(1);
	% rateRule: variable = A22
	xdot(70) = global_par_k_insol*x(17)*x(1)-global_par_k_insol*x(18)*x(1);
	% rateRule: variable = A23
	xdot(71) = global_par_k_insol*x(18)*x(1)-global_par_k_insol*x(19)*x(1);
	% rateRule: variable = A24
	xdot(72) = global_par_k_insol*x(19)*x(1)-global_par_k_insol*x(20)*x(1);
	% rateRule: variable = A25
	xdot(73) = global_par_k_insol*x(20)*x(1)-global_par_k_insol*x(21)*x(1);
	% rateRule: variable = A26
	xdot(74) = global_par_k_insol*x(21)*x(1)-global_par_k_insol*x(22)*x(1);
	% rateRule: variable = A27
	xdot(75) = global_par_k_insol*x(22)*x(1)-global_par_k_insol*x(23)*x(1);
	% rateRule: variable = A28
	xdot(76) = global_par_k_insol*x(23)*x(1)-global_par_k_insol*x(24)*x(1);
	% rateRule: variable = A29
	xdot(77) = global_par_k_insol*x(24)*x(1)-global_par_k_insol*x(25)*x(1);
	% rateRule: variable = A30
	xdot(78) = global_par_k_insol*x(25)*x(1)-global_par_k_insol*x(26)*x(1);
	% rateRule: variable = A31
	xdot(79) = global_par_k_insol*x(26)*x(1)-global_par_k_insol*x(27)*x(1);
	% rateRule: variable = A32
	xdot(80) = global_par_k_insol*x(27)*x(1)-global_par_k_insol*x(28)*x(1);
	% rateRule: variable = A33
	xdot(81) = global_par_k_insol*x(28)*x(1)-global_par_k_insol*x(29)*x(1);
	% rateRule: variable = A34
	xdot(82) = global_par_k_insol*x(29)*x(1)-global_par_k_insol*x(30)*x(1);
	% rateRule: variable = A35
	xdot(83) = global_par_k_insol*x(30)*x(1)-global_par_k_insol*x(31)*x(1);
	% rateRule: variable = A36
	xdot(84) = global_par_k_insol*x(31)*x(1)-global_par_k_insol*x(32)*x(1);
	% rateRule: variable = A37
	xdot(85) = global_par_k_insol*x(32)*x(1)-global_par_k_insol*x(33)*x(1);
	% rateRule: variable = A38
	xdot(86) = global_par_k_insol*x(33)*x(1)-global_par_k_insol*x(34)*x(1);
	% rateRule: variable = A39
	xdot(87) = global_par_k_insol*x(34)*x(1)-global_par_k_insol*x(35)*x(1);
	% rateRule: variable = A40
	xdot(88) = global_par_k_insol*x(35)*x(1)-global_par_k_insol*x(36)*x(1);
	% rateRule: variable = A41
	xdot(89) = global_par_k_insol*x(36)*x(1)-global_par_k_insol*x(37)*x(1);
	% rateRule: variable = A42
	xdot(90) = global_par_k_insol*x(37)*x(1)-global_par_k_insol*x(38)*x(1);
	% rateRule: variable = A43
	xdot(91) = global_par_k_insol*x(38)*x(1)-global_par_k_insol*x(39)*x(1);
	% rateRule: variable = A44
	xdot(92) = global_par_k_insol*x(39)*x(1)-global_par_k_insol*x(40)*x(1);
	% rateRule: variable = A45
	xdot(93) = global_par_k_insol*x(40)*x(1)-global_par_k_insol*x(41)*x(1);
	% rateRule: variable = A46
	xdot(94) = global_par_k_insol*x(41)*x(1)-global_par_k_insol*x(42)*x(1);
	% rateRule: variable = A47
	xdot(95) = global_par_k_insol*x(42)*x(1)-global_par_k_insol*x(43)*x(1);
	% rateRule: variable = A48
	xdot(96) = global_par_k_insol*x(43)*x(1)-global_par_k_insol*x(44)*x(1);
	% rateRule: variable = A49
	xdot(97) = global_par_k_insol*x(44)*x(1)-global_par_k_insol*x(45)*x(1);
	% rateRule: variable = A50
	xdot(98) = global_par_k_insol*x(45)*x(1)-global_par_k_insol*x(46)*x(1);
	% rateRule: variable = A51
	xdot(99) = global_par_k_insol*x(46)*x(1)-global_par_k_insol*x(47)*x(1);
	% rateRule: variable = A52
	xdot(100) = global_par_k_insol*x(47)*x(1)-global_par_k_insol*x(48)*x(1);
	% rateRule: variable = A53
	xdot(101) = global_par_k_insol*x(48)*x(1)-global_par_k_insol*x(49)*x(1);
	% rateRule: variable = A54
	xdot(102) = global_par_k_insol*x(49)*x(1);
	
% Species:   id = M, name = M, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = N, name = N, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = A7, name = A7, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = A8, name = A8, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = A9, name = A9, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = A10, name = A10, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = A11, name = A11, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = A12, name = A12, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = A13, name = A13, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = A14, name = A14, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = A15, name = A15, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = A16, name = A16, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = A17, name = A17, involved in a rule 	xdot(13) = x(13);
	
% Species:   id = A18, name = A18, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = A19, name = A19, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = A20, name = A20, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = A21, name = A21, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = A22, name = A22, involved in a rule 	xdot(18) = x(18);
	
% Species:   id = A23, name = A23, involved in a rule 	xdot(19) = x(19);
	
% Species:   id = A24, name = A24, involved in a rule 	xdot(20) = x(20);
	
% Species:   id = A25, name = A25, involved in a rule 	xdot(21) = x(21);
	
% Species:   id = A26, name = A26, involved in a rule 	xdot(22) = x(22);
	
% Species:   id = A27, name = A27, involved in a rule 	xdot(23) = x(23);
	
% Species:   id = A28, name = A28, involved in a rule 	xdot(24) = x(24);
	
% Species:   id = A29, name = A29, involved in a rule 	xdot(25) = x(25);
	
% Species:   id = A30, name = A30, involved in a rule 	xdot(26) = x(26);
	
% Species:   id = A31, name = A31, involved in a rule 	xdot(27) = x(27);
	
% Species:   id = A32, name = A32, involved in a rule 	xdot(28) = x(28);
	
% Species:   id = A33, name = A33, involved in a rule 	xdot(29) = x(29);
	
% Species:   id = A34, name = A34, involved in a rule 	xdot(30) = x(30);
	
% Species:   id = A35, name = A35, involved in a rule 	xdot(31) = x(31);
	
% Species:   id = A36, name = A36, involved in a rule 	xdot(32) = x(32);
	
% Species:   id = A37, name = A37, involved in a rule 	xdot(33) = x(33);
	
% Species:   id = A38, name = A38, involved in a rule 	xdot(34) = x(34);
	
% Species:   id = A39, name = A39, involved in a rule 	xdot(35) = x(35);
	
% Species:   id = A40, name = A40, involved in a rule 	xdot(36) = x(36);
	
% Species:   id = A41, name = A41, involved in a rule 	xdot(37) = x(37);
	
% Species:   id = A42, name = A42, involved in a rule 	xdot(38) = x(38);
	
% Species:   id = A43, name = A43, involved in a rule 	xdot(39) = x(39);
	
% Species:   id = A44, name = A44, involved in a rule 	xdot(40) = x(40);
	
% Species:   id = A45, name = A45, involved in a rule 	xdot(41) = x(41);
	
% Species:   id = A46, name = A46, involved in a rule 	xdot(42) = x(42);
	
% Species:   id = A47, name = A47, involved in a rule 	xdot(43) = x(43);
	
% Species:   id = A48, name = A48, involved in a rule 	xdot(44) = x(44);
	
% Species:   id = A49, name = A49, involved in a rule 	xdot(45) = x(45);
	
% Species:   id = A50, name = A50, involved in a rule 	xdot(46) = x(46);
	
% Species:   id = A51, name = A51, involved in a rule 	xdot(47) = x(47);
	
% Species:   id = A52, name = A52, involved in a rule 	xdot(48) = x(48);
	
% Species:   id = A53, name = A53, involved in a rule 	xdot(49) = x(49);
	
% Species:   id = A54, name = A54, involved in a rule 	xdot(50) = x(50);
	
% Species:   id = soluble_obs, name = soluble_obs, involved in a rule 	xdot(51) = x(51);
	
% Species:   id = insoluble_obs, name = insoluble_obs, involved in a rule 	xdot(52) = x(52);
end

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


