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
% Model name = Liu2011_Complement_System
%
% is http://identifiers.org/biomodels.db/MODEL1101260000
% is http://identifiers.org/biomodels.db/BIOMD0000000303
% isDescribedBy http://identifiers.org/pubmed/21283780
%


function main()
%Initial conditions vector
	x0=zeros(42,1);
	x0(1) = 2.0;
	x0(2) = 0.0327796;
	x0(3) = 0.0;
	x0(4) = 770.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 310.0;
	x0(8) = 2470.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 4650.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 6.8;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 20.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 260.0;
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
	x0(42) = 5.0E-4;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  ka01_1, name = ka01_1
	global_par_ka01_1=0.0275999;
% Parameter:   id =  ka01_2, name = ka01_2
	global_par_ka01_2=0.0109;
% Parameter:   id =  ka02_1, name = ka02_1
	global_par_ka02_1=7.4E-4;
% Parameter:   id =  ka02_2, name = ka02_2
	global_par_ka02_2=0.0011;
% Parameter:   id =  ka03_1, name = ka03_1
	global_par_ka03_1=2.0;
% Parameter:   id =  ka04_1, name = ka04_1
	global_par_ka04_1=10.5;
% Parameter:   id =  kc01_1, name = kc01_1
	global_par_kc01_1=0.64564661669102;
% Parameter:   id =  kc01_2, name = kc01_2
	global_par_kc01_2=0.194551104058408;
% Parameter:   id =  kc02, name = kc02
	global_par_kc02=5.91152775857994E-4;
% Parameter:   id =  kc03_1, name = kc03_1
	global_par_kc03_1=0.414004459949002;
% Parameter:   id =  kc03_2, name = kc03_2
	global_par_kc03_2=0.99647572245388;
% Parameter:   id =  kc04_1, name = kc04_1
	global_par_kc04_1=0.977836567576895;
% Parameter:   id =  ka03_2, name = ka03_2
	global_par_ka03_2=500.0;
% Parameter:   id =  ka04_2, name = ka04_2
	global_par_ka04_2=2500.0;
% Parameter:   id =  kd02_2, name = kd02_2
	global_par_kd02_2=0.1;
% Parameter:   id =  kd02_1, name = kd02_1
	global_par_kd02_1=0.0368010796682635;
% Parameter:   id =  kd03_1, name = kd03_1
	global_par_kd03_1=66.3776807395383;
% Parameter:   id =  kd03_2, name = kd03_2
	global_par_kd03_2=829.115813389061;
% Parameter:   id =  kb01_1, name = kb01_1
	global_par_kb01_1=0.091011109910329;
% Parameter:   id =  kb01_2, name = kb01_2
	global_par_kb01_2=0.0508205528375529;
% Parameter:   id =  kb02_1, name = kb02_1
	global_par_kb02_1=0.0368010796682635;
% Parameter:   id =  kb02_2, name = kb02_2
	global_par_kb02_2=0.1;
% Parameter:   id =  kb03_1, name = kb03_1
	global_par_kb03_1=66.3776807395383;
% Parameter:   id =  kb03_2, name = kb03_2
	global_par_kb03_2=829.115813389061;
% Parameter:   id =  kb04_1, name = kb04_1
	global_par_kb04_1=1.1;
% Parameter:   id =  kb04_2, name = kb04_2
	global_par_kb04_2=2000.0;
% Parameter:   id =  kc04_2, name = kc04_2
	global_par_kc04_2=0.199162432258527;
% Parameter:   id =  kd01_1, name = kd01_1
	global_par_kd01_1=7.07E-5;
% Parameter:   id =  kd01_2, name = kd01_2
	global_par_kd01_2=7.23E-5;
% Parameter:   id =  kd04_1, name = kd04_1
	global_par_kd04_1=1.1;
% Parameter:   id =  kd04_2, name = kd04_2
	global_par_kd04_2=2000.0;
% Parameter:   id =  ke01_1, name = ke01_1
	global_par_ke01_1=7.07E-5;
% Parameter:   id =  ke01_2, name = ke01_2
	global_par_ke01_2=1.0E-4;
% Parameter:   id =  ke02_1, name = ke02_1
	global_par_ke02_1=7.4E-4;
% Parameter:   id =  ke02_2, name = ke02_2
	global_par_ke02_2=0.0011;
% Parameter:   id =  ke03_1, name = ke03_1
	global_par_ke03_1=2.0;
% Parameter:   id =  ke03_2, name = ke03_2
	global_par_ke03_2=500.0;
% Parameter:   id =  ke04_1, name = ke04_1
	global_par_ke04_1=10.5;
% Parameter:   id =  ke04_2, name = ke04_2
	global_par_ke04_2=2500.0;
% Parameter:   id =  kf01_1, name = kf01_1
	global_par_kf01_1=0.969998277173144;
% Parameter:   id =  kf01_2, name = kf01_2
	global_par_kf01_2=0.069020578737621;
% Parameter:   id =  kf02_1, name = kf02_1
	global_par_kf02_1=0.969998277173144;
% Parameter:   id =  kf02_2, name = kf02_2
	global_par_kf02_2=0.069020578737621;
% Parameter:   id =  kf03, name = kf03
	global_par_kf03=0.0613537204215846;
% Parameter:   id =  kf04_2, name = kf04_2
	global_par_kf04_2=0.983691204042155;
% Parameter:   id =  kf04_1, name = kf04_1
	global_par_kf04_1=0.613416050428938;
% Parameter:   id =  kf05, name = kf05
	global_par_kf05=0.980777558937884;
% Parameter:   id =  mC3, name = mC3
% Parameter:   id =  kf06_1, name = kf06_1
	global_par_kf06_1=0.613416050428938;
% Parameter:   id =  kf06_2, name = kf06_2
	global_par_kf06_2=0.983691204042155;
% Parameter:   id =  kf07_1, name = kf07_1
	global_par_kf07_1=0.613416050428938;
% Parameter:   id =  kf07_2, name = kf07_2
	global_par_kf07_2=0.983691204042155;
% Parameter:   id =  kd05_1, name = kd05_1
	global_par_kd05_1=7.4E-4;
% Parameter:   id =  kd05_2, name = kd05_2
	global_par_kd05_2=0.0011;
% Parameter:   id =  kd06_1, name = kd06_1
	global_par_kd06_1=2.0;
% Parameter:   id =  kd06_2, name = kd06_2
	global_par_kd06_2=500.0;
% Parameter:   id =  kd07_1, name = kd07_1
	global_par_kd07_1=10.5;
% Parameter:   id =  kd07_2, name = kd07_2
	global_par_kd07_2=2500.0;
% Parameter:   id =  ke05_1, name = ke05_1
	global_par_ke05_1=0.0368010796682635;
% Parameter:   id =  ke05_2, name = ke05_2
	global_par_ke05_2=0.1;
% Parameter:   id =  ke06_1, name = ke06_1
	global_par_ke06_1=66.3776807395383;
% Parameter:   id =  ke06_2, name = ke06_2
	global_par_ke06_2=829.115813389061;
% Parameter:   id =  ke07_1, name = ke07_1
	global_par_ke07_1=1.1;
% Parameter:   id =  ke07_2, name = ke07_2
	global_par_ke07_2=2000.0;
% Parameter:   id =  kd08_1, name = kd08_1
	global_par_kd08_1=0.0368010796682635;
% Parameter:   id =  kd08_2, name = kd08_2
	global_par_kd08_2=0.1;
% Parameter:   id =  kd09_1, name = kd09_1
	global_par_kd09_1=7.4E-4;
% Parameter:   id =  kd09_2, name = kd09_2
	global_par_kd09_2=0.0011;
% Parameter:   id =  kd10_1, name = kd10_1
	global_par_kd10_1=71.1705760475931;
% Parameter:   id =  kd10_2, name = kd10_2
	global_par_kd10_2=3796.22684377655;
% Parameter:   id =  kd11_1, name = kd11_1
	global_par_kd11_1=38.9625903487667;
% Parameter:   id =  kd11_2, name = kd11_2
	global_par_kd11_2=5972.30640657865;
% Parameter:   id =  kg01_1, name = kg01_1
	global_par_kg01_1=0.091011109910329;
% Parameter:   id =  kg01_2, name = kg01_2
	global_par_kg01_2=0.0508205528375529;
% Parameter:   id =  kg02_1, name = kg02_1
	global_par_kg02_1=0.0368010796682635;
% Parameter:   id =  kg02_2, name = kg02_2
	global_par_kg02_2=0.1;
% Parameter:   id =  kg03_1, name = kg03_1
	global_par_kg03_1=66.3776807395383;
% Parameter:   id =  kg03_2, name = kg03_2
	global_par_kg03_2=829.115813389061;
% Parameter:   id =  kg04_1, name = kg04_1
	global_par_kg04_1=1.1;
% Parameter:   id =  kg04_2, name = kg04_2
	global_par_kg04_2=2000.0;
% Parameter:   id =  kt01, name = kt01
	global_par_kt01=3.42266E-4;
% Parameter:   id =  kt02, name = kt02
	global_par_kt02=0.492901;
% Parameter:   id =  kt03, name = kt03
	global_par_kt03=0.0470911;
% Parameter:   id =  kt04_1, name = kt04_1
	global_par_kt04_1=0.0;
% Parameter:   id =  kt04_2, name = kt04_2
	global_par_kt04_2=0.0;
% assignmentRule: variable = mC3
	global_par_mC3=x(16);

% Reaction: id = a_01, name = a_01
	reaction_a_01=compartment_compartment*(global_par_ka01_1*x(2)*x(1)-global_par_ka01_2*x(3));

% Reaction: id = a_02, name = a_02
	reaction_a_02=compartment_compartment*(global_par_ka02_1*x(3)*x(8)-global_par_ka02_2*x(9));

% Reaction: id = a_03, name = a_03
	reaction_a_03=compartment_compartment*function_1(global_par_ka03_1, x(9), x(4), global_par_ka03_2);

% Reaction: id = a_04, name = a_04
	reaction_a_04=compartment_compartment*function_1(global_par_ka04_1, x(9), x(7), global_par_ka04_2);

% Reaction: id = c_01, name = c_01
	reaction_c_01=compartment_compartment*(global_par_kc01_1*x(6)*x(10)-global_par_kc01_2*x(12));

% Reaction: id = c_02, name = c_02
	reaction_c_02=compartment_compartment*global_par_kc02*x(12)*x(13);

% Reaction: id = c_03, name = c_03
	reaction_c_03=compartment_compartment*(global_par_kc03_1*x(15)-global_par_kc03_2*x(16));

% Reaction: id = c_04, name = c_04
	reaction_c_04=compartment_compartment*(global_par_kc04_1*x(12)-global_par_kc04_2*x(18));

% Reaction: id = d_01, name = d_01
	reaction_d_01=compartment_compartment*(global_par_kd01_1*x(3)*x(21)-global_par_kd01_2*x(23));

% Reaction: id = d_02, name = d_02
	reaction_d_02=compartment_compartment*(global_par_kd02_1*x(23)*x(17)-global_par_kd02_2*x(24));

% Reaction: id = d_03, name = d_03
	reaction_d_03=compartment_compartment*function_1(global_par_kd03_1, x(24), x(4), global_par_kd03_2);

% Reaction: id = d_04, name = d_04
	reaction_d_04=compartment_compartment*function_1(global_par_kd04_1, x(24), x(7), global_par_kd04_2);

% Reaction: id = b_01, name = b_01
	reaction_b_01=compartment_compartment*(global_par_kb01_1*x(19)*x(21)-global_par_kb01_2*x(20));

% Reaction: id = b_02, name = b_02
	reaction_b_02=compartment_compartment*(global_par_kb02_1*x(20)*x(17)-global_par_kb02_2*x(22));

% Reaction: id = b_03, name = b_03
	reaction_b_03=compartment_compartment*function_1(global_par_kb03_1, x(22), x(4), global_par_kb03_2);

% Reaction: id = b_04, name = b_04
	reaction_b_04=compartment_compartment*function_1(global_par_kb04_1, x(22), x(7), global_par_kb04_2);

% Reaction: id = e_01, name = e_01
	reaction_e_01=compartment_compartment*(global_par_ke01_1*x(20)*x(1)-global_par_ke01_2*x(25));

% Reaction: id = e_02, name = e_02
	reaction_e_02=compartment_compartment*(global_par_ke02_1*x(25)*x(8)-global_par_ke02_2*x(26));

% Reaction: id = e_03, name = e_03
	reaction_e_03=compartment_compartment*function_1(global_par_ke03_1, x(26), x(4), global_par_ke03_2);

% Reaction: id = e_04, name = e_04
	reaction_e_04=compartment_compartment*function_1(global_par_ke04_1, x(26), x(7), global_par_ke04_2);

% Reaction: id = f_01, name = f_01
	reaction_f_01=compartment_compartment*(global_par_kf01_1*x(27)*x(3)-global_par_kf01_2*x(28));

% Reaction: id = f_02, name = f_02
	reaction_f_02=compartment_compartment*(global_par_kf02_1*x(27)*x(25)-global_par_kf02_2*x(29));

% Reaction: id = f_03, name = f_03
	reaction_f_03=compartment_compartment*global_par_kf03*x(12)*x(27);

% Reaction: id = f_04, name = f_04
	reaction_f_04=compartment_compartment*(global_par_kf04_1*x(27)*x(6)-global_par_kf04_2*x(31));

% Reaction: id = f_05, name = f_05
	reaction_f_05=compartment_compartment*global_par_kf05*x(12)*x(27);

% Reaction: id = f_06, name = f_06
	reaction_f_06=compartment_compartment*(global_par_kf06_1*x(12)*x(27)-global_par_kf06_2*x(32));

% Reaction: id = f_07, name = f_07
	reaction_f_07=compartment_compartment*(global_par_kf07_1*x(18)*x(27)-global_par_kf07_2*x(33));

% Reaction: id = t_01, name = t_01	% Local Parameter:   id =  k1_4, name = k1
	reaction_t_01_k1_4=3.42266E-4;

	reaction_t_01=compartment_compartment*reaction_t_01_k1_4*x(27);

% Reaction: id = t_02, name = t_02	% Local Parameter:   id =  k1_4, name = k1
	reaction_t_02_k1_4=0.492901;

	reaction_t_02=compartment_compartment*reaction_t_02_k1_4*x(15);

% Reaction: id = t_03, name = t_03	% Local Parameter:   id =  k1_4, name = k1
	reaction_t_03_k1_4=0.0470911;

	reaction_t_03=compartment_compartment*reaction_t_03_k1_4*x(12);

% Reaction: id = d_05, name = d_05
	reaction_d_05=compartment_compartment*(global_par_kd05_1*x(23)*x(8)-global_par_kd05_2*x(34));

% Reaction: id = d_06, name = d_06
	reaction_d_06=compartment_compartment*function_1(global_par_kd06_1, x(34), x(4), global_par_kd06_2);

% Reaction: id = d_07, name = d_07
	reaction_d_07=compartment_compartment*function_1(global_par_kd07_1, x(34), x(7), global_par_kd07_2);

% Reaction: id = t_04, name = t_04	% Local Parameter:   id =  k1_4, name = k1
	reaction_t_04_k1_4=0.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_t_04_k2=0.0;

	reaction_t_04=compartment_compartment*(reaction_t_04_k1_4*x(27)*x(23)-reaction_t_04_k2*x(35));

% Reaction: id = e_05, name = e_05
	reaction_e_05=compartment_compartment*(global_par_ke05_1*x(25)*x(17)-global_par_ke05_2*x(36));

% Reaction: id = e_06, name = e_06
	reaction_e_06=compartment_compartment*function_1(global_par_ke06_1, x(36), x(4), global_par_ke06_2);

% Reaction: id = e_07, name = e_07
	reaction_e_07=compartment_compartment*function_1(global_par_ke07_1, x(36), x(7), global_par_ke07_2);

% Reaction: id = d_08, name = d_08
	reaction_d_08=compartment_compartment*(global_par_kd08_1*x(34)*x(17)-global_par_kd08_2*x(37));

% Reaction: id = d_09, name = d_09
	reaction_d_09=compartment_compartment*(global_par_kd09_1*x(24)*x(8)-global_par_kd09_2*x(37));

% Reaction: id = d_10, name = d_10
	reaction_d_10=compartment_compartment*function_1(global_par_kd10_1, x(37), x(4), global_par_kd10_2);

% Reaction: id = d_11, name = d_11
	reaction_d_11=compartment_compartment*function_1(global_par_kd11_1, x(37), x(7), global_par_kd11_2);

% Reaction: id = g_01, name = g_01
	reaction_g_01=compartment_compartment*(global_par_kg01_1*x(42)*x(40)-global_par_kg01_2*x(39));

% Reaction: id = g_02, name = g_02
	reaction_g_02=compartment_compartment*(global_par_kg02_1*x(39)*x(17)-global_par_kg02_2*x(41));

% Reaction: id = g_03, name = g_03
	reaction_g_03=compartment_compartment*function_1(global_par_kg03_1, x(41), x(4), global_par_kg03_2);

% Reaction: id = g_04, name = g_04
	reaction_g_04=compartment_compartment*function_1(global_par_kg04_1, x(41), x(7), global_par_kg04_2);

	xdot=zeros(42,1);
	
% Species:   id = CRP, name = CRP, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_a_01) + (-1.0 * reaction_e_01));
	
% Species:   id = PC, name = PC, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_a_01));
	
% Species:   id = PC_CRP, name = PC/CRP, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_a_01) + (-1.0 * reaction_a_02) + (-1.0 * reaction_d_01) + (-1.0 * reaction_f_01));
	
% Species:   id = C4, name = C4, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_a_03) + (-1.0 * reaction_d_03) + (-1.0 * reaction_b_03) + (-1.0 * reaction_e_03) + (-1.0 * reaction_d_06) + (-1.0 * reaction_e_06) + (-1.0 * reaction_d_10) + (-1.0 * reaction_g_03));
	
% Species:   id = C4a, name = C4a, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_a_03) + ( 1.0 * reaction_d_03) + ( 1.0 * reaction_b_03) + ( 1.0 * reaction_e_03) + ( 1.0 * reaction_d_06) + ( 1.0 * reaction_e_06) + ( 1.0 * reaction_d_10) + ( 1.0 * reaction_g_03));
	
% Species:   id = C4b, name = C4b, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_a_03) + (-1.0 * reaction_c_01) + ( 1.0 * reaction_d_03) + ( 1.0 * reaction_b_03) + ( 1.0 * reaction_e_03) + (-1.0 * reaction_f_04) + ( 1.0 * reaction_f_05) + ( 1.0 * reaction_d_06) + ( 1.0 * reaction_e_06) + ( 1.0 * reaction_d_10) + ( 1.0 * reaction_g_03));
	
% Species:   id = C2, name = C2, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_a_04) + (-1.0 * reaction_d_04) + (-1.0 * reaction_b_04) + (-1.0 * reaction_e_04) + (-1.0 * reaction_d_07) + (-1.0 * reaction_e_07) + (-1.0 * reaction_d_11) + (-1.0 * reaction_g_04));
	
% Species:   id = C1, name = C1, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*((-1.0 * reaction_a_02) + (-1.0 * reaction_e_02) + (-1.0 * reaction_d_05) + (-1.0 * reaction_d_09));
	
% Species:   id = PC_CRP_C1, name = PC/CRP/C1, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_a_02));
	
% Species:   id = C2a, name = C2a, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_a_04) + (-1.0 * reaction_c_01) + ( 1.0 * reaction_d_04) + ( 1.0 * reaction_b_04) + ( 1.0 * reaction_e_04) + ( 1.0 * reaction_f_05) + ( 1.0 * reaction_d_07) + ( 1.0 * reaction_e_07) + ( 1.0 * reaction_d_11) + ( 1.0 * reaction_g_04));
	
% Species:   id = C2b, name = C2b, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_a_04) + ( 1.0 * reaction_d_04) + ( 1.0 * reaction_b_04) + ( 1.0 * reaction_e_04) + ( 1.0 * reaction_d_07) + ( 1.0 * reaction_e_07) + ( 1.0 * reaction_d_11) + ( 1.0 * reaction_g_04));
	
% Species:   id = C4b_C2a, name = C4b/C2a, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_c_01) + (-1.0 * reaction_c_02) + ( 1.0 * reaction_c_02) + (-1.0 * reaction_c_04) + (-1.0 * reaction_f_03) + (-1.0 * reaction_f_05) + (-1.0 * reaction_f_06) + (-1.0 * reaction_t_03));
	
% Species:   id = C3, name = C3, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*((-1.0 * reaction_c_02));
	
% Species:   id = C3a, name = C3a, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_c_02));
	
% Species:   id = C3b, name = C3b, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*(( 1.0 * reaction_c_02) + (-1.0 * reaction_c_03) + (-1.0 * reaction_t_02));
	
% Species:   id = dC3b, name = dC3b, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*(( 1.0 * reaction_c_03));
	
% Species:   id = MASP, name = MASP, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*((-1.0 * reaction_d_02) + (-1.0 * reaction_b_02) + (-1.0 * reaction_e_05) + (-1.0 * reaction_d_08) + (-1.0 * reaction_g_02));
	
% Species:   id = dC4b_C2a, name = dC4b/C2a, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment))*(( 1.0 * reaction_c_04) + (-1.0 * reaction_f_07));
	
% Species:   id = GlcNac, name = GlcNac, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment))*((-1.0 * reaction_b_01));
	
% Species:   id = GlcNac_LF, name = GlcNac/LF, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment))*(( 1.0 * reaction_b_01) + (-1.0 * reaction_b_02) + (-1.0 * reaction_e_01));
	
% Species:   id = LF, name = LF, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment))*((-1.0 * reaction_d_01) + (-1.0 * reaction_b_01));
	
% Species:   id = GlcNac_LF_MASP, name = GlcNac/LF/MASP, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment))*(( 1.0 * reaction_b_02));
	
% Species:   id = PC_CRP_LF, name = PC/CRP/LF, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment))*(( 1.0 * reaction_d_01) + (-1.0 * reaction_d_02) + (-1.0 * reaction_d_05) + (-1.0 * reaction_t_04));
	
% Species:   id = PC_CRP_LF_MASP, name = PC/CRP/LF/MASP, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment))*(( 1.0 * reaction_d_02) + (-1.0 * reaction_d_09));
	
% Species:   id = GlcNac_LF_CRP, name = GlcNac/LF/CRP, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment))*(( 1.0 * reaction_e_01) + (-1.0 * reaction_e_02) + (-1.0 * reaction_f_02) + (-1.0 * reaction_e_05));
	
% Species:   id = GlcNac_LF_CRP_C1, name = GlcNac/LF/CRP/C1, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment))*(( 1.0 * reaction_e_02));
	
% Species:   id = C4BP, name = C4BP, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment))*((-1.0 * reaction_f_01) + (-1.0 * reaction_f_02) + (-1.0 * reaction_f_03) + ( 1.0 * reaction_f_03) + (-1.0 * reaction_f_04) + (-1.0 * reaction_f_05) + ( 1.0 * reaction_f_05) + (-1.0 * reaction_f_06) + (-1.0 * reaction_f_07) + (-1.0 * reaction_t_01) + (-1.0 * reaction_t_04));
	
% Species:   id = C4BP_PC_CRP, name = C4BP/PC/CRP, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment))*(( 1.0 * reaction_f_01));
	
% Species:   id = C4BP_GlcNac_LF_CRP, name = C4BP/GlcNac/LF/CRP, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment))*(( 1.0 * reaction_f_02));
	
% Species:   id = iC4b_C2a, name = iC4b/C2a, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment))*(( 1.0 * reaction_f_03));
	
% Species:   id = C4BP_C4b, name = C4BP/C4b, affected by kineticLaw
	xdot(31) = (1/(compartment_compartment))*(( 1.0 * reaction_f_04));
	
% Species:   id = C4b_C2a_C4BP, name = C4b/C2a/C4BP, affected by kineticLaw
	xdot(32) = (1/(compartment_compartment))*(( 1.0 * reaction_f_06));
	
% Species:   id = dC4b_C2a_C4BP, name = dC4b/C2a/C4BP, affected by kineticLaw
	xdot(33) = (1/(compartment_compartment))*(( 1.0 * reaction_f_07));
	
% Species:   id = PC_CRP_LF_C1, name = PC/CRP/LF/C1, affected by kineticLaw
	xdot(34) = (1/(compartment_compartment))*(( 1.0 * reaction_d_05) + (-1.0 * reaction_d_08));
	
% Species:   id = C4BP_PC_CRP_LF, name = C4BP/PC/CRP/LF, affected by kineticLaw
	xdot(35) = (1/(compartment_compartment))*(( 1.0 * reaction_t_04));
	
% Species:   id = GlcNac_LF_CRP_MASP, name = GlcNac/LF/CRP/MASP, affected by kineticLaw
	xdot(36) = (1/(compartment_compartment))*(( 1.0 * reaction_e_05));
	
% Species:   id = PC_CRP_LF_C1_MASP, name = PC/CRP/LF/C1/MASP, affected by kineticLaw
	xdot(37) = (1/(compartment_compartment))*(( 1.0 * reaction_d_08) + ( 1.0 * reaction_d_09));
	
% Species:   id = GlcNac_LF_C1_MASP, name = GlcNac/LF/C1/MASP
% Warning species is not changed by either rules or reactions
	xdot(38) = ;
	
% Species:   id = GlcNac_HF, name = GlcNac/HF, affected by kineticLaw
	xdot(39) = (1/(compartment_compartment))*(( 1.0 * reaction_g_01) + (-1.0 * reaction_g_02));
	
% Species:   id = HF, name = HF, affected by kineticLaw
	xdot(40) = (1/(compartment_compartment))*((-1.0 * reaction_g_01));
	
% Species:   id = GlcNac_HF_MASP, name = GlcNac/HF/MASP, affected by kineticLaw
	xdot(41) = (1/(compartment_compartment))*(( 1.0 * reaction_g_02));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(42) = (1/(compartment_compartment))*((-1.0 * reaction_g_01));
end

function z=function_1(k,E,S,Km), z=(k*E*S/(Km+S));end

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


