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
% Model name = Albeck2008_extrinsic_apoptosis
%
% is http://identifiers.org/biomodels.db/MODEL6964793701
% is http://identifiers.org/biomodels.db/BIOMD0000000220
% isDescribedBy http://identifiers.org/pubmed/18406323
%


function main()
%Initial conditions vector
	x0=zeros(58,1);
	x0(1) = 3000.0;
	x0(2) = 200.0;
	x0(3) = 100.0;
	x0(4) = 20000.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 1000.0;
	x0(8) = 10000.0;
	x0(9) = 0.0;
	x0(10) = 40000.0;
	x0(11) = 0.0;
	x0(12) = 10000.0;
	x0(13) = 100000.0;
	x0(14) = 0.0;
	x0(15) = 1000000.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 20000.0;
	x0(19) = 100000.0;
	x0(20) = 0.0;
	x0(21) = 20000.0;
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
	x0(43) = 500000.0;
	x0(44) = 0.0;
	x0(45) = 0.0;
	x0(46) = 100000.0;
	x0(47) = 0.0;
	x0(48) = 0.0;
	x0(49) = 500000.0;
	x0(50) = 0.0;
	x0(51) = 0.0;
	x0(52) = 0.0;
	x0(53) = 100000.0;
	x0(54) = 0.0;
	x0(55) = 0.0;
	x0(56) = 100000.0;
	x0(57) = 0.0;
	x0(58) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Compartment: id = mitochondrion, name = mitochondrion, constant
	compartment_mitochondrion=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=4.0E-7;
% Parameter:   id =  k_1, name = k_1
	global_par_k_1=0.001;
% Parameter:   id =  kc1, name = kc1
	global_par_kc1=1.0E-5;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.0E-6;
% Parameter:   id =  k_2, name = k_2
	global_par_k_2=0.001;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.0E-6;
% Parameter:   id =  k_3, name = k_3
	global_par_k_3=0.001;
% Parameter:   id =  kc3, name = kc3
	global_par_kc3=1.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=1.0E-6;
% Parameter:   id =  k_4, name = k_4
	global_par_k_4=0.001;
% Parameter:   id =  k5, name = k5
	global_par_k5=1.0E-7;
% Parameter:   id =  k_5, name = k_5
	global_par_k_5=0.001;
% Parameter:   id =  kc5, name = kc5
	global_par_kc5=1.0;
% Parameter:   id =  k6, name = k6
	global_par_k6=1.0E-6;
% Parameter:   id =  k_6, name = k_6
	global_par_k_6=0.001;
% Parameter:   id =  kc6, name = kc6
	global_par_kc6=1.0;
% Parameter:   id =  k7, name = k7
	global_par_k7=3.0E-8;
% Parameter:   id =  k_7, name = k_7
	global_par_k_7=0.001;
% Parameter:   id =  k8, name = k8
	global_par_k8=2.0E-6;
% Parameter:   id =  k_8, name = k_8
	global_par_k_8=0.001;
% Parameter:   id =  kc8, name = kc8
	global_par_kc8=0.1;
% Parameter:   id =  k9, name = k9
	global_par_k9=1.0E-6;
% Parameter:   id =  k_9, name = k_9
	global_par_k_9=0.01;
% Parameter:   id =  kc9, name = kc9
	global_par_kc9=1.0;
% Parameter:   id =  k10, name = k10
	global_par_k10=1.0E-7;
% Parameter:   id =  k_10, name = k_10
	global_par_k_10=0.001;
% Parameter:   id =  kc10, name = kc10
	global_par_kc10=1.0;
% Parameter:   id =  k11, name = k11
	global_par_k11=1.0E-6;
% Parameter:   id =  k_11, name = k_11
	global_par_k_11=0.001;
% Parameter:   id =  k12, name = k12
	global_par_k12=1.0E-7;
% Parameter:   id =  k_12, name = k_12
	global_par_k_12=0.001;
% Parameter:   id =  kc12, name = kc12
	global_par_kc12=1.0;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.01;
% Parameter:   id =  k_13, name = k_13
	global_par_k_13=0.01;
% Parameter:   id =  k14, name = k14
	global_par_k14=1.0E-6;
% Parameter:   id =  k_14, name = k_14
	global_par_k_14=0.001;
% Parameter:   id =  k15, name = k15
	global_par_k15=1.0E-6;
% Parameter:   id =  k_15, name = k_15
	global_par_k_15=0.001;
% Parameter:   id =  k16, name = k16
	global_par_k16=1.0E-6;
% Parameter:   id =  k_16, name = k_16
	global_par_k_16=0.001;
% Parameter:   id =  k17, name = k17
	global_par_k17=1.0E-6;
% Parameter:   id =  k_17, name = k_17
	global_par_k_17=0.001;
% Parameter:   id =  k18, name = k18
	global_par_k18=1.0E-6;
% Parameter:   id =  k_18, name = k_18
	global_par_k_18=0.001;
% Parameter:   id =  k19, name = k19
	global_par_k19=1.0E-6;
% Parameter:   id =  k_19, name = k_19
	global_par_k_19=0.001;
% Parameter:   id =  kc19, name = kc19
	global_par_kc19=1.0;
% Parameter:   id =  k20, name = k20
	global_par_k20=2.0E-6;
% Parameter:   id =  k_20, name = k_20
	global_par_k_20=0.001;
% Parameter:   id =  kc20, name = kc20
	global_par_kc20=10.0;
% Parameter:   id =  k21, name = k21
	global_par_k21=2.0E-6;
% Parameter:   id =  k_21, name = k_21
	global_par_k_21=0.001;
% Parameter:   id =  kc21, name = kc21
	global_par_kc21=10.0;
% Parameter:   id =  k22, name = k22
	global_par_k22=0.01;
% Parameter:   id =  k_22, name = k_22
	global_par_k_22=0.01;
% Parameter:   id =  k23, name = k23
	global_par_k23=5.0E-7;
% Parameter:   id =  k_23, name = k_23
	global_par_k_23=0.001;
% Parameter:   id =  kc23, name = kc23
	global_par_kc23=1.0;
% Parameter:   id =  k24, name = k24
	global_par_k24=5.0E-8;
% Parameter:   id =  k_24, name = k_24
	global_par_k_24=0.001;
% Parameter:   id =  k25, name = k25
	global_par_k25=5.0E-9;
% Parameter:   id =  k_25, name = k_25
	global_par_k_25=0.001;
% Parameter:   id =  kc25, name = kc25
	global_par_kc25=1.0;
% Parameter:   id =  k26, name = k26
	global_par_k26=0.01;
% Parameter:   id =  k_26, name = k_26
	global_par_k_26=0.01;
% Parameter:   id =  k27, name = k27
	global_par_k27=2.0E-6;
% Parameter:   id =  k_27, name = k_27
	global_par_k_27=0.001;
% Parameter:   id =  k28, name = k28
	global_par_k28=7.0E-6;
% Parameter:   id =  k_28, name = k_28
	global_par_k_28=0.001;
% Parameter:   id =  kc7, name = kc7
	global_par_kc7=1.0;
% Parameter:   id =  v, name = v
	global_par_v=0.07;
% Parameter:   id =  pC3_frac, name = pC3 fraction
% Parameter:   id =  C3_frac, name = C3 fraction
% Parameter:   id =  C3_UB_frac, name = degraded C3 fraction
% Parameter:   id =  cPARP_frac, name = cPARP fraction
% Parameter:   id =  C3_tot, name = total Caspase 3
% Parameter:   id =  fC3_fract, name = free C3 fraction
% assignmentRule: variable = C3_tot
	global_par_C3_tot=x(8)+x(28)+x(29)+x(9)+x(32)+x(33)+x(34)+x(14);
% assignmentRule: variable = C3_frac
	global_par_C3_frac=(x(9)+x(32)+x(33)+x(34))/global_par_C3_tot;
% assignmentRule: variable = C3_UB_frac
	global_par_C3_UB_frac=x(14)/global_par_C3_tot;
% assignmentRule: variable = pC3_frac
	global_par_pC3_frac=(x(8)+x(28)+x(29))/global_par_C3_tot;
% assignmentRule: variable = fC3_fract
	global_par_fC3_fract=x(9)/global_par_C3_tot;
% assignmentRule: variable = cPARP_frac
	global_par_cPARP_frac=x(16)/(x(16)+x(15)+x(34));

% Reaction: id = re1
	reaction_re1=compartment_cell*(x(1)*x(2)*global_par_k1-x(22)*global_par_k_1);

% Reaction: id = re2
	reaction_re2=compartment_cell*x(22)*global_par_kc1;

% Reaction: id = re3
	reaction_re3=compartment_cell*(x(23)*x(3)*global_par_k2-x(24)*global_par_k_2);

% Reaction: id = re4
	reaction_re4=compartment_cell*(x(23)*x(4)*global_par_k3-x(25)*global_par_k_3);

% Reaction: id = re5
	reaction_re5=compartment_cell*x(25)*global_par_kc3;

% Reaction: id = re6
	reaction_re6=compartment_cell*(x(6)*x(4)*global_par_k7-x(26)*global_par_k_7);

% Reaction: id = re7
	reaction_re7=compartment_cell*x(26)*global_par_kc7;

% Reaction: id = re8
	reaction_re8=compartment_cell*(x(5)*x(7)*global_par_k4-x(27)*global_par_k_4);

% Reaction: id = re9
	reaction_re9=compartment_cell*(x(8)*x(5)*global_par_k5-x(28)*global_par_k_5);

% Reaction: id = re10
	reaction_re10=compartment_cell*x(28)*global_par_kc5;

% Reaction: id = re11
	reaction_re11=compartment_cell*(x(5)*x(10)*global_par_k10-x(31)*global_par_k_10);

% Reaction: id = re12
	reaction_re12=compartment_cell*x(31)*global_par_kc10;

% Reaction: id = re13
	reaction_re13=compartment_cell*(x(8)*x(30)*global_par_k25-x(29)*global_par_k_25);

% Reaction: id = re14
	reaction_re14=compartment_cell*x(29)*global_par_kc25;

% Reaction: id = re15
	reaction_re15=compartment_cell*(x(9)*x(12)*global_par_k6-x(32)*global_par_k_6);

% Reaction: id = re16
	reaction_re16=compartment_cell*x(32)*global_par_kc6;

% Reaction: id = re17
	reaction_re17=compartment_cell*(x(9)*x(13)*global_par_k8-x(33)*global_par_k_8);

% Reaction: id = re18
	reaction_re18=compartment_cell*x(33)*global_par_kc8;

% Reaction: id = re19
	reaction_re19=compartment_cell*(x(15)*x(9)*global_par_k9-x(34)*global_par_k_9);

% Reaction: id = re20
	reaction_re20=compartment_cell*x(34)*global_par_kc9;

% Reaction: id = re21
	reaction_re21=compartment_cell*(x(13)*x(30)*global_par_k27-x(35)*global_par_k_27);

% Reaction: id = re22
	reaction_re22=compartment_cell*(x(13)*x(17)*global_par_k28-x(36)*global_par_k_28);

% Reaction: id = re23
	reaction_re23=compartment_cell*(x(11)*x(18)*global_par_k11-x(37)*global_par_k_11);

% Reaction: id = re24
	reaction_re24=compartment_cell*(x(11)*x(19)*global_par_k12-x(38)*global_par_k_12);

% Reaction: id = re25
	reaction_re25=compartment_cell*x(38)*global_par_kc12;

% Reaction: id = re26
	reaction_re26=compartment_cell*(x(20)*global_par_k13-x(57)*global_par_k_13);

% Reaction: id = re27
	reaction_re27=compartment_mitochondrion*(x(57)*x(21)*global_par_k14/global_par_v-x(39)*global_par_k_14);

% Reaction: id = re29
	reaction_re29=compartment_mitochondrion*(x(57)*x(57)*global_par_k15/global_par_v-x(58)*global_par_k_15);

% Reaction: id = re30
	reaction_re30=compartment_mitochondrion*(x(58)*x(58)*global_par_k17/global_par_v-x(40)*global_par_k_17);

% Reaction: id = re31
	reaction_re31=compartment_mitochondrion*(x(21)*x(58)*global_par_k16/global_par_v-x(41)*global_par_k_16);

% Reaction: id = re32
	reaction_re32=compartment_mitochondrion*(x(21)*x(40)*global_par_k18/global_par_v-x(42)*global_par_k_18);

% Reaction: id = re33
	reaction_re33=compartment_mitochondrion*(x(40)*x(43)*global_par_k19/global_par_v-x(44)*global_par_k_19);

% Reaction: id = re34
	reaction_re34=compartment_mitochondrion*x(44)*global_par_kc19;

% Reaction: id = re35
	reaction_re35=compartment_mitochondrion*(x(45)*x(46)*global_par_k21/global_par_v-x(47)*global_par_k_21);

% Reaction: id = re36
	reaction_re36=compartment_mitochondrion*x(47)*global_par_kc21;

% Reaction: id = re37
	reaction_re37=compartment_cell*(x(48)*global_par_k26-x(17)*global_par_k_26);

% Reaction: id = re38
	reaction_re38=compartment_mitochondrion*(x(45)*x(49)*global_par_k20/global_par_v-x(50)*global_par_k_20);

% Reaction: id = re39
	reaction_re39=compartment_mitochondrion*x(50)*global_par_kc20;

% Reaction: id = re40
	reaction_re40=compartment_cell*(x(51)*global_par_k22-x(52)*global_par_k_22);

% Reaction: id = re41
	reaction_re41=compartment_cell*(x(52)*x(53)*global_par_k23-x(54)*global_par_k_23);

% Reaction: id = re42
	reaction_re42=compartment_cell*x(54)*global_par_kc23;

% Reaction: id = re43
	reaction_re43=compartment_cell*(x(55)*x(56)*global_par_k24-x(30)*global_par_k_24);

	xdot=zeros(58,1);
	
% Species:   id = L, name = L, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_re1));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_re1));
	
% Species:   id = flip, name = flip, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*((-1.0 * reaction_re3));
	
% Species:   id = pC8, name = proC8, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*((-1.0 * reaction_re4) + (-1.0 * reaction_re6));
	
% Species:   id = C8, name = casp8, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_re5) + ( 1.0 * reaction_re7) + (-1.0 * reaction_re8) + (-1.0 * reaction_re9) + ( 1.0 * reaction_re10) + (-1.0 * reaction_re11) + ( 1.0 * reaction_re12));
	
% Species:   id = C6, name = casp6, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*((-1.0 * reaction_re6) + ( 1.0 * reaction_re7) + ( 1.0 * reaction_re16));
	
% Species:   id = BAR, name = BAR, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*((-1.0 * reaction_re8));
	
% Species:   id = pC3, name = proC3, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*((-1.0 * reaction_re9) + (-1.0 * reaction_re13));
	
% Species:   id = C3, name = casp3, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_re10) + ( 1.0 * reaction_re14) + (-1.0 * reaction_re15) + ( 1.0 * reaction_re16) + (-1.0 * reaction_re17) + (-1.0 * reaction_re19) + ( 1.0 * reaction_re20));
	
% Species:   id = Bid, name = Bid, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*((-1.0 * reaction_re11));
	
% Species:   id = tBid, name = tBid, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_re12) + (-1.0 * reaction_re23) + (-1.0 * reaction_re24) + ( 1.0 * reaction_re25));
	
% Species:   id = pC6, name = proC6, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*((-1.0 * reaction_re15));
	
% Species:   id = XIAP, name = XIAP, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*((-1.0 * reaction_re17) + ( 1.0 * reaction_re18) + (-1.0 * reaction_re21) + (-1.0 * reaction_re22));
	
% Species:   id = C3_Ub, name = Ub C3, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*(( 1.0 * reaction_re18));
	
% Species:   id = PARP, name = PARP, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*((-1.0 * reaction_re19));
	
% Species:   id = CPARP, name = cPARP, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_re20));
	
% Species:   id = Smac, name = Smac, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*((-1.0 * reaction_re22) + ( 1.0 * reaction_re37));
	
% Species:   id = Bcl2c, name = cytosolic Bcl-2, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*((-1.0 * reaction_re23));
	
% Species:   id = Bax, name = Bax, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*((-1.0 * reaction_re24));
	
% Species:   id = Bax_hash, name = Bax#, affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*(( 1.0 * reaction_re25) + (-1.0 * reaction_re26));
	
% Species:   id = Bcl2, name = Bcl-2, affected by kineticLaw
	xdot(21) = (1/(compartment_mitochondrion))*((-1.0 * reaction_re27) + (-1.0 * reaction_re31) + (-1.0 * reaction_re32));
	
% Species:   id = L_R, name = L:R, affected by kineticLaw
	xdot(22) = (1/(compartment_cell))*(( 1.0 * reaction_re1) + (-1.0 * reaction_re2));
	
% Species:   id = R_hash, name = R#, affected by kineticLaw
	xdot(23) = (1/(compartment_cell))*(( 1.0 * reaction_re2) + (-1.0 * reaction_re3) + (-1.0 * reaction_re4) + ( 1.0 * reaction_re5));
	
% Species:   id = flip_R_hash, name = flip:R#, affected by kineticLaw
	xdot(24) = (1/(compartment_cell))*(( 1.0 * reaction_re3));
	
% Species:   id = R_hash_pC8, name = R#:pC8, affected by kineticLaw
	xdot(25) = (1/(compartment_cell))*(( 1.0 * reaction_re4) + (-1.0 * reaction_re5));
	
% Species:   id = C6_pC8, name = C6:pC8, affected by kineticLaw
	xdot(26) = (1/(compartment_cell))*(( 1.0 * reaction_re6) + (-1.0 * reaction_re7));
	
% Species:   id = BAR_C8, name = BAR:C8, affected by kineticLaw
	xdot(27) = (1/(compartment_cell))*(( 1.0 * reaction_re8));
	
% Species:   id = C8_pC3, name = C8:pC3, affected by kineticLaw
	xdot(28) = (1/(compartment_cell))*(( 1.0 * reaction_re9) + (-1.0 * reaction_re10));
	
% Species:   id = pC3_Apop, name = pC3:Apop, affected by kineticLaw
	xdot(29) = (1/(compartment_cell))*(( 1.0 * reaction_re13) + (-1.0 * reaction_re14));
	
% Species:   id = Apop, name = Apop, affected by kineticLaw
	xdot(30) = (1/(compartment_cell))*((-1.0 * reaction_re13) + ( 1.0 * reaction_re14) + (-1.0 * reaction_re21) + ( 1.0 * reaction_re43));
	
% Species:   id = C8_Bid, name = C8:Bid, affected by kineticLaw
	xdot(31) = (1/(compartment_cell))*(( 1.0 * reaction_re11) + (-1.0 * reaction_re12));
	
% Species:   id = C3_pC6, name = C3:pC6, affected by kineticLaw
	xdot(32) = (1/(compartment_cell))*(( 1.0 * reaction_re15) + (-1.0 * reaction_re16));
	
% Species:   id = XIAP_C3, name = XIAP:C3, affected by kineticLaw
	xdot(33) = (1/(compartment_cell))*(( 1.0 * reaction_re17) + (-1.0 * reaction_re18));
	
% Species:   id = PARP_C3, name = PARP:C3, affected by kineticLaw
	xdot(34) = (1/(compartment_cell))*(( 1.0 * reaction_re19) + (-1.0 * reaction_re20));
	
% Species:   id = Apop_XIAP, name = Apop:XIAP, affected by kineticLaw
	xdot(35) = (1/(compartment_cell))*(( 1.0 * reaction_re21));
	
% Species:   id = Smac_XIAP, name = Smac:XIAP, affected by kineticLaw
	xdot(36) = (1/(compartment_cell))*(( 1.0 * reaction_re22));
	
% Species:   id = Bcl2c_tBid, name = Bcl2c:tBid, affected by kineticLaw
	xdot(37) = (1/(compartment_cell))*(( 1.0 * reaction_re23));
	
% Species:   id = Bax_tBid, name = Bax:tBid, affected by kineticLaw
	xdot(38) = (1/(compartment_cell))*(( 1.0 * reaction_re24) + (-1.0 * reaction_re25));
	
% Species:   id = Baxm_Bcl2, name = Baxm:Bcl2, affected by kineticLaw
	xdot(39) = (1/(compartment_mitochondrion))*(( 1.0 * reaction_re27));
	
% Species:   id = Bax4, name = Bax4, affected by kineticLaw
	xdot(40) = (1/(compartment_mitochondrion))*(( 1.0 * reaction_re30) + (-1.0 * reaction_re32) + (-1.0 * reaction_re33));
	
% Species:   id = Bax2_Bcl2, name = Bax2:Bcl2, affected by kineticLaw
	xdot(41) = (1/(compartment_mitochondrion))*(( 1.0 * reaction_re31));
	
% Species:   id = Bax4_Bcl2, name = Bax4:Bcl2, affected by kineticLaw
	xdot(42) = (1/(compartment_mitochondrion))*(( 1.0 * reaction_re32));
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(43) = (1/(compartment_mitochondrion))*((-1.0 * reaction_re33));
	
% Species:   id = Bax4_M, name = Bax4:M, affected by kineticLaw
	xdot(44) = (1/(compartment_mitochondrion))*(( 1.0 * reaction_re33) + (-1.0 * reaction_re34));
	
% Species:   id = M_hash, name = M#, affected by kineticLaw
	xdot(45) = (1/(compartment_mitochondrion))*(( 1.0 * reaction_re34) + (-1.0 * reaction_re35) + ( 1.0 * reaction_re36) + (-1.0 * reaction_re38) + ( 1.0 * reaction_re39));
	
% Species:   id = Smacm, name = Smac_m, affected by kineticLaw
	xdot(46) = (1/(compartment_mitochondrion))*((-1.0 * reaction_re35));
	
% Species:   id = M_hash_Smacm, name = M#:Smac_m, affected by kineticLaw
	xdot(47) = (1/(compartment_mitochondrion))*(( 1.0 * reaction_re35) + (-1.0 * reaction_re36));
	
% Species:   id = Smacr, name = Smac released, affected by kineticLaw
	xdot(48) = (1/(compartment_mitochondrion))*(( 1.0 * reaction_re36) + (-1.0 * reaction_re37));
	
% Species:   id = CytoCm, name = CytoC_m, affected by kineticLaw
	xdot(49) = (1/(compartment_mitochondrion))*((-1.0 * reaction_re38));
	
% Species:   id = M_hash_CytoCm, name = M#:CytoC_m, affected by kineticLaw
	xdot(50) = (1/(compartment_mitochondrion))*(( 1.0 * reaction_re38) + (-1.0 * reaction_re39));
	
% Species:   id = CytoCr, name = CytoC released, affected by kineticLaw
	xdot(51) = (1/(compartment_mitochondrion))*(( 1.0 * reaction_re39) + (-1.0 * reaction_re40));
	
% Species:   id = CytoC, name = CytoC, affected by kineticLaw
	xdot(52) = (1/(compartment_cell))*(( 1.0 * reaction_re40) + (-1.0 * reaction_re41) + ( 1.0 * reaction_re42));
	
% Species:   id = Apaf, name = Apaf, affected by kineticLaw
	xdot(53) = (1/(compartment_cell))*((-1.0 * reaction_re41));
	
% Species:   id = CytoC_Apaf, name = CytoC:Apaf, affected by kineticLaw
	xdot(54) = (1/(compartment_cell))*(( 1.0 * reaction_re41) + (-1.0 * reaction_re42));
	
% Species:   id = Apaf_hash, name = Apaf#, affected by kineticLaw
	xdot(55) = (1/(compartment_cell))*(( 1.0 * reaction_re42) + (-1.0 * reaction_re43));
	
% Species:   id = pC9, name = proC9, affected by kineticLaw
	xdot(56) = (1/(compartment_cell))*((-1.0 * reaction_re43));
	
% Species:   id = Baxm, name = Baxm, affected by kineticLaw
	xdot(57) = (1/(compartment_mitochondrion))*(( 1.0 * reaction_re26) + (-1.0 * reaction_re27) + (-1.0 * reaction_re29) + (-1.0 * reaction_re29));
	
% Species:   id = Bax2, name = Bax2, affected by kineticLaw
	xdot(58) = (1/(compartment_mitochondrion))*(( 1.0 * reaction_re29) + (-1.0 * reaction_re30) + (-1.0 * reaction_re30) + (-1.0 * reaction_re31));
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


