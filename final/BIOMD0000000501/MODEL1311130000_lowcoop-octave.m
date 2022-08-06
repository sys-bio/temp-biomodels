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
% Model name = DoubleGasBegitt2013_STAT
%
%


function main()
%Initial conditions vector
	x0=zeros(35,1);
	x0(1) = 1.09648E-11;
	x0(2) = 1.0E-10;
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

% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.0;
% Parameter:   id =  Kon_P1, name = Kon_P1
	global_par_Kon_P1=1000.0;
% Parameter:   id =  Koff_P1, name = Koff_P1
	global_par_Koff_P1=100.0;
% Parameter:   id =  Kon_G1, name = Kon_G1
	global_par_Kon_G1=2.0E10;
% Parameter:   id =  Koff_G1, name = Koff_G1
	global_par_Koff_G1=100.0;
% Parameter:   id =  Kon_NG1, name = Kon_NG1
	global_par_Kon_NG1=2.0E10;
% Parameter:   id =  Koff_NG1, name = Koff_NG1
	global_par_Koff_NG1=5000.0;
% Parameter:   id =  parameter_1, name = DoubleGasOccupancy
% assignmentRule: variable = parameter_1
	global_par_parameter_1=x(5)+x(7)+x(10)+x(11)+x(13)+x(15)+x(16)+x(17)+x(24)+x(19)+x(26)+x(27)+x(28)+x(25)+x(20)+x(21)+x(22)+x(29)+x(30)+x(31)+x(32)+x(33)+x(34)+x(35);

% Reaction: id = DNA1, name = DNA1
	reaction_DNA1=compartment_nucleus*function_4_DNA1_1(x(2), x(3), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA2, name = DNA2
	reaction_DNA2=compartment_nucleus*function_4_DNA2_1(x(2), x(4), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA3, name = DNA3
	reaction_DNA3=compartment_nucleus*function_4_DNA3_1(x(3), x(12), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA4, name = DNA4
	reaction_DNA4=compartment_nucleus*function_4_DNA4_1(x(4), x(12), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA5, name = DNA5
	reaction_DNA5=compartment_nucleus*function_4_DNA5_1(x(2), x(5), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA6, name = DNA6
	reaction_DNA6=compartment_nucleus*function_4_DNA6_1(x(5), x(11), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA7, name = DNA7
	reaction_DNA7=compartment_nucleus*function_4_DNA7_1(x(3), x(11), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA8, name = DNA8
	reaction_DNA8=compartment_nucleus*function_4_DNA8_1(x(4), x(10), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA9, name = DNA9
	reaction_DNA9=compartment_nucleus*function_4_DNA9_1(x(5), x(10), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA10, name = DNA10
	reaction_DNA10=compartment_nucleus*function_4_DNA10_1(x(12), x(16), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA11, name = DNA11
	reaction_DNA11=compartment_nucleus*function_4_DNA11_1(x(11), x(16), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA12, name = DNA12
	reaction_DNA12=compartment_nucleus*function_4_DNA12_1(x(10), x(16), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA13, name = DNA13
	reaction_DNA13=compartment_nucleus*function_4_DNA13_1(x(2), x(6), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA14, name = DNA14
	reaction_DNA14=compartment_nucleus*function_4_DNA14_1(x(3), x(9), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA15, name = DNA15
	reaction_DNA15=compartment_nucleus*function_4_DNA15_1(x(6), x(9), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA16, name = DNA16
	reaction_DNA16=compartment_nucleus*function_4_DNA16_1(x(6), x(8), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA17, name = DNA17
	reaction_DNA17=compartment_nucleus*function_4_DNA17_1(x(4), x(8), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA18, name = DNA18
	reaction_DNA18=compartment_nucleus*function_4_DNA18_1(x(12), x(14), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA19, name = DNA19
	reaction_DNA19=compartment_nucleus*function_4_DNA19_1(x(9), x(14), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA20, name = DNA20
	reaction_DNA20=compartment_nucleus*function_4_DNA20_1(x(8), x(14), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA21, name = DNA21
	reaction_DNA21=compartment_nucleus*function_4_DNA21_1(x(6), x(7), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA22, name = DNA22
	reaction_DNA22=compartment_nucleus*function_4_DNA22_1(x(5), x(7), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA23, name = DNA23
	reaction_DNA23=compartment_nucleus*function_4_DNA23_1(x(11), x(15), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA24, name = DNA24
	reaction_DNA24=compartment_nucleus*function_4_DNA24_1(x(9), x(15), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA25, name = DNA25
	reaction_DNA25=compartment_nucleus*function_4_DNA25_1(x(7), x(15), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA26, name = DNA26
	reaction_DNA26=compartment_nucleus*function_4_DNA26_1(x(10), x(13), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA27, name = DNA27
	reaction_DNA27=compartment_nucleus*function_4_DNA27_1(x(8), x(13), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA28, name = DNA28
	reaction_DNA28=compartment_nucleus*function_4_DNA28_1(x(7), x(13), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA29, name = DNA29
	reaction_DNA29=compartment_nucleus*function_4_DNA29_1(x(16), x(17), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA30, name = DNA30
	reaction_DNA30=compartment_nucleus*function_4_DNA30_1(x(14), x(17), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA31, name = DNA31
	reaction_DNA31=compartment_nucleus*function_4_DNA31_1(x(15), x(17), global_par_Koff_G1, global_par_Kon_G1, x(1), compartment_nucleus);

% Reaction: id = DNA32, name = DNA32
	reaction_DNA32=compartment_nucleus*function_4_DNA32_1(x(13), x(17), global_par_Koff_NG1, global_par_Kon_NG1, x(1), compartment_nucleus);

% Reaction: id = DNA33, name = DNA33
	reaction_DNA33=compartment_nucleus*function_4_DNA33_1(x(12), x(18), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA34, name = DNA34
	reaction_DNA34=compartment_nucleus*function_4_DNA34_1(x(10), x(19), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA35, name = DNA35
	reaction_DNA35=compartment_nucleus*function_4_DNA35_1(x(16), x(20), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA36, name = DNA36
	reaction_DNA36=compartment_nucleus*function_4_DNA36_1(x(16), x(21), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA37, name = DNA37
	reaction_DNA37=compartment_nucleus*function_4_DNA37_1(x(20), x(22), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA38, name = DNA38
	reaction_DNA38=compartment_nucleus*function_4_DNA38_1(x(21), x(22), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA39, name = DNA39
	reaction_DNA39=compartment_nucleus*function_4_DNA39_1(x(7), x(24), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA40, name = DNA40
	reaction_DNA40=compartment_nucleus*function_4_DNA40_1(x(15), x(25), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA41, name = DNA41
	reaction_DNA41=compartment_nucleus*function_4_DNA41_1(x(13), x(26), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA42, name = DNA42
	reaction_DNA42=compartment_nucleus*function_4_DNA42_1(x(13), x(27), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA43, name = DNA43
	reaction_DNA43=compartment_nucleus*function_4_DNA43_1(x(26), x(28), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA44, name = DNA44
	reaction_DNA44=compartment_nucleus*function_4_DNA44_1(x(27), x(28), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA45, name = DNA45
	reaction_DNA45=compartment_nucleus*function_4_DNA45_1(x(17), x(29), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA46, name = DNA46
	reaction_DNA46=compartment_nucleus*function_4_DNA46_1(x(17), x(30), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA47, name = DNA47
	reaction_DNA47=compartment_nucleus*function_4_DNA47_1(x(17), x(31), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA48, name = DNA48
	reaction_DNA48=compartment_nucleus*function_4_DNA48_1(x(29), x(33), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA49, name = DNA49
	reaction_DNA49=compartment_nucleus*function_4_DNA49_1(x(31), x(33), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA50, name = DNA50
	reaction_DNA50=compartment_nucleus*function_4_DNA50_1(x(29), x(32), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA51, name = DNA51
	reaction_DNA51=compartment_nucleus*function_4_DNA51_1(x(30), x(32), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA52, name = DNA52
	reaction_DNA52=compartment_nucleus*function_4_DNA52_1(x(30), x(34), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA53, name = DNA53
	reaction_DNA53=compartment_nucleus*function_4_DNA53_1(x(31), x(34), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA54, name = DNA54
	reaction_DNA54=compartment_nucleus*function_4_DNA54_1(x(32), x(35), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA55, name = DNA55
	reaction_DNA55=compartment_nucleus*function_4_DNA55_1(x(33), x(35), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA56, name = DNA56
	reaction_DNA56=compartment_nucleus*function_4_DNA56_1(x(34), x(35), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

% Reaction: id = DNA57, name = DNA57
	reaction_DNA57=compartment_nucleus*function_4_DNA57(x(14), x(23), global_par_Koff_P1, global_par_Kon_P1, compartment_nucleus);

	xdot=zeros(35,1);
	
% Species:   id = S1, name = S1, affected by kineticLaw
	xdot(1) = (1/(compartment_nucleus))*((-1.0 * reaction_DNA1) + (-1.0 * reaction_DNA2) + (-1.0 * reaction_DNA3) + (-1.0 * reaction_DNA4) + (-1.0 * reaction_DNA5) + (-1.0 * reaction_DNA6) + (-1.0 * reaction_DNA7) + (-1.0 * reaction_DNA8) + (-1.0 * reaction_DNA9) + (-1.0 * reaction_DNA10) + (-1.0 * reaction_DNA11) + (-1.0 * reaction_DNA12) + (-1.0 * reaction_DNA13) + (-1.0 * reaction_DNA14) + (-1.0 * reaction_DNA15) + (-1.0 * reaction_DNA16) + (-1.0 * reaction_DNA17) + (-1.0 * reaction_DNA18) + (-1.0 * reaction_DNA19) + (-1.0 * reaction_DNA20) + (-1.0 * reaction_DNA21) + (-1.0 * reaction_DNA22) + (-1.0 * reaction_DNA23) + (-1.0 * reaction_DNA24) + (-1.0 * reaction_DNA25) + (-1.0 * reaction_DNA26) + (-1.0 * reaction_DNA27) + (-1.0 * reaction_DNA28) + (-1.0 * reaction_DNA29) + (-1.0 * reaction_DNA30) + (-1.0 * reaction_DNA31) + (-1.0 * reaction_DNA32));
	
% Species:   id = DNA0000, name = DNA0000, affected by kineticLaw
	xdot(2) = (1/(compartment_nucleus))*((-1.0 * reaction_DNA1) + (-1.0 * reaction_DNA2) + (-1.0 * reaction_DNA5) + (-1.0 * reaction_DNA13));
	
% Species:   id = DNA0001, name = DNA0001, affected by kineticLaw
	xdot(3) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA1) + (-1.0 * reaction_DNA3) + (-1.0 * reaction_DNA7) + (-1.0 * reaction_DNA14));
	
% Species:   id = DNA0010, name = DNA0010, affected by kineticLaw
	xdot(4) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA2) + (-1.0 * reaction_DNA4) + (-1.0 * reaction_DNA8) + (-1.0 * reaction_DNA17));
	
% Species:   id = DNA0100, name = DNA0100, affected by kineticLaw
	xdot(5) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA5) + (-1.0 * reaction_DNA6) + (-1.0 * reaction_DNA9) + (-1.0 * reaction_DNA22));
	
% Species:   id = DNA1000, name = DNA1000, affected by kineticLaw
	xdot(6) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA13) + (-1.0 * reaction_DNA15) + (-1.0 * reaction_DNA16) + (-1.0 * reaction_DNA21));
	
% Species:   id = DNA1100, name = DNA1100, affected by kineticLaw
	xdot(7) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA21) + ( 1.0 * reaction_DNA22) + (-1.0 * reaction_DNA25) + (-1.0 * reaction_DNA28) + (-1.0 * reaction_DNA39));
	
% Species:   id = DNA1010, name = DNA1010, affected by kineticLaw
	xdot(8) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA16) + ( 1.0 * reaction_DNA17) + (-1.0 * reaction_DNA20) + (-1.0 * reaction_DNA27));
	
% Species:   id = DNA1001, name = DNA1001, affected by kineticLaw
	xdot(9) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA14) + ( 1.0 * reaction_DNA15) + (-1.0 * reaction_DNA19) + (-1.0 * reaction_DNA24));
	
% Species:   id = DNA0110, name = DNA0110, affected by kineticLaw
	xdot(10) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA8) + ( 1.0 * reaction_DNA9) + (-1.0 * reaction_DNA12) + (-1.0 * reaction_DNA26) + (-1.0 * reaction_DNA34));
	
% Species:   id = DNA0101, name = DNA0101, affected by kineticLaw
	xdot(11) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA6) + ( 1.0 * reaction_DNA7) + (-1.0 * reaction_DNA11) + (-1.0 * reaction_DNA23));
	
% Species:   id = DNA0011, name = DNA0011, affected by kineticLaw
	xdot(12) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA3) + ( 1.0 * reaction_DNA4) + (-1.0 * reaction_DNA10) + (-1.0 * reaction_DNA18) + (-1.0 * reaction_DNA33));
	
% Species:   id = DNA1110, name = DNA1110, affected by kineticLaw
	xdot(13) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA26) + ( 1.0 * reaction_DNA27) + ( 1.0 * reaction_DNA28) + (-1.0 * reaction_DNA32) + (-1.0 * reaction_DNA41) + (-1.0 * reaction_DNA42));
	
% Species:   id = DNA1011, name = DNA1011, affected by kineticLaw
	xdot(14) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA18) + ( 1.0 * reaction_DNA19) + ( 1.0 * reaction_DNA20) + (-1.0 * reaction_DNA30) + (-1.0 * reaction_DNA57));
	
% Species:   id = DNA1101, name = DNA1101, affected by kineticLaw
	xdot(15) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA23) + ( 1.0 * reaction_DNA24) + ( 1.0 * reaction_DNA25) + (-1.0 * reaction_DNA31) + (-1.0 * reaction_DNA40));
	
% Species:   id = DNA0111, name = DNA0111, affected by kineticLaw
	xdot(16) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA10) + ( 1.0 * reaction_DNA11) + ( 1.0 * reaction_DNA12) + (-1.0 * reaction_DNA29) + (-1.0 * reaction_DNA35) + (-1.0 * reaction_DNA36));
	
% Species:   id = DNA1111, name = DNA1111, affected by kineticLaw
	xdot(17) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA29) + ( 1.0 * reaction_DNA30) + ( 1.0 * reaction_DNA31) + ( 1.0 * reaction_DNA32) + (-1.0 * reaction_DNA45) + (-1.0 * reaction_DNA46) + (-1.0 * reaction_DNA47));
	
% Species:   id = DNA001_1, name = DNA001_1, affected by kineticLaw
	xdot(18) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA33));
	
% Species:   id = DNA01_10, name = DNA01_10, affected by kineticLaw
	xdot(19) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA34));
	
% Species:   id = DNA01_11, name = DNA01_11, affected by kineticLaw
	xdot(20) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA35) + (-1.0 * reaction_DNA37));
	
% Species:   id = DNA011_1, name = DNA011_1, affected by kineticLaw
	xdot(21) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA36) + (-1.0 * reaction_DNA38));
	
% Species:   id = DNA01_1_1, name = DNA01_1_1, affected by kineticLaw
	xdot(22) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA37) + ( 1.0 * reaction_DNA38));
	
% Species:   id = DNA101_1, name = DNA101_1, affected by kineticLaw
	xdot(23) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA57));
	
% Species:   id = DNA1_100, name = DNA1_100, affected by kineticLaw
	xdot(24) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA39));
	
% Species:   id = DNA1_101, name = DNA1_101, affected by kineticLaw
	xdot(25) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA40));
	
% Species:   id = DNA1_110, name = DNA1_110, affected by kineticLaw
	xdot(26) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA41) + (-1.0 * reaction_DNA43));
	
% Species:   id = DNA11_10, name = DNA11_10, affected by kineticLaw
	xdot(27) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA42) + (-1.0 * reaction_DNA44));
	
% Species:   id = DNA1_1_10, name = DNA1_1_10, affected by kineticLaw
	xdot(28) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA43) + ( 1.0 * reaction_DNA44));
	
% Species:   id = DNA1_111, name = DNA1_111, affected by kineticLaw
	xdot(29) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA45) + (-1.0 * reaction_DNA48) + (-1.0 * reaction_DNA50));
	
% Species:   id = DNA11_11, name = DNA11_11, affected by kineticLaw
	xdot(30) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA46) + (-1.0 * reaction_DNA51) + (-1.0 * reaction_DNA52));
	
% Species:   id = DNA111_1, name = DNA111_1, affected by kineticLaw
	xdot(31) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA47) + (-1.0 * reaction_DNA49) + (-1.0 * reaction_DNA53));
	
% Species:   id = DNA1_1_11, name = DNA1_1_11, affected by kineticLaw
	xdot(32) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA50) + ( 1.0 * reaction_DNA51) + (-1.0 * reaction_DNA54));
	
% Species:   id = DNA1_11_1, name = DNA1_11_1, affected by kineticLaw
	xdot(33) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA48) + ( 1.0 * reaction_DNA49) + (-1.0 * reaction_DNA55));
	
% Species:   id = DNA11_1_1, name = DNA11_1_1, affected by kineticLaw
	xdot(34) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA52) + ( 1.0 * reaction_DNA53) + (-1.0 * reaction_DNA56));
	
% Species:   id = DNA1_1_1_1, name = DNA1_1_1_1, affected by kineticLaw
	xdot(35) = (1/(compartment_nucleus))*(( 1.0 * reaction_DNA54) + ( 1.0 * reaction_DNA55) + ( 1.0 * reaction_DNA56));
end

function z=function_4_DNA4_1(DNA0010,DNA0011,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA0010*S1-Koff_NG1*DNA0011)/nucleus);end

function z=function_4_DNA5_1(DNA0000,DNA0100,Koff_G1,Kon_G1,S1,nucleus), z=((Kon_G1*DNA0000*S1-Koff_G1*DNA0100)/nucleus);end

function z=function_4_DNA6_1(DNA0100,DNA0101,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA0100*S1-Koff_NG1*DNA0101)/nucleus);end

function z=function_4_DNA23_1(DNA0101,DNA1101,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA0101*S1-Koff_NG1*DNA1101)/nucleus);end

function z=function_4_DNA15_1(DNA1000,DNA1001,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA1000*S1-Koff_NG1*DNA1001)/nucleus);end

function z=function_4_DNA13_1(DNA0000,DNA1000,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA0000*S1-Koff_NG1*DNA1000)/nucleus);end

function z=function_4_DNA19_1(DNA1001,DNA1011,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA1001*S1-Koff_NG1*DNA1011)/nucleus);end

function z=function_4_DNA11_1(DNA0101,DNA0111,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA0101*S1-Koff_NG1*DNA0111)/nucleus);end

function z=function_4_DNA8_1(DNA0010,DNA0110,Koff_G1,Kon_G1,S1,nucleus), z=((Kon_G1*DNA0010*S1-Koff_G1*DNA0110)/nucleus);end

function z=function_4_DNA22_1(DNA0100,DNA1100,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA0100*S1-Koff_NG1*DNA1100)/nucleus);end

function z=function_4_DNA10_1(DNA0011,DNA0111,Koff_G1,Kon_G1,S1,nucleus), z=((Kon_G1*DNA0011*S1-Koff_G1*DNA0111)/nucleus);end

function z=function_4_DNA17_1(DNA0010,DNA1010,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA0010*S1-Koff_NG1*DNA1010)/nucleus);end

function z=function_4_DNA24_1(DNA1001,DNA1101,Koff_G1,Kon_G1,S1,nucleus), z=((Kon_G1*DNA1001*S1-Koff_G1*DNA1101)/nucleus);end

function z=function_4_DNA18_1(DNA0011,DNA1011,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA0011*S1-Koff_NG1*DNA1011)/nucleus);end

function z=function_4_DNA21_1(DNA1000,DNA1100,Koff_G1,Kon_G1,S1,nucleus), z=((Kon_G1*DNA1000*S1-Koff_G1*DNA1100)/nucleus);end

function z=function_4_DNA1_1(DNA0000,DNA0001,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA0000*S1-Koff_NG1*DNA0001)/nucleus);end

function z=function_4_DNA2_1(DNA0000,DNA0010,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA0000*S1-Koff_NG1*DNA0010)/nucleus);end

function z=function_4_DNA3_1(DNA0001,DNA0011,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA0001*S1-Koff_NG1*DNA0011)/nucleus);end

function z=function_4_DNA26_1(DNA0110,DNA1110,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA0110*S1-Koff_NG1*DNA1110)/nucleus);end

function z=function_4_DNA9_1(DNA0100,DNA0110,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA0100*S1-Koff_NG1*DNA0110)/nucleus);end

function z=function_4_DNA16_1(DNA1000,DNA1010,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA1000*S1-Koff_NG1*DNA1010)/nucleus);end

function z=function_4_DNA20_1(DNA1010,DNA1011,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA1010*S1-Koff_NG1*DNA1011)/nucleus);end

function z=function_4_DNA12_1(DNA0110,DNA0111,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA0110*S1-Koff_NG1*DNA0111)/nucleus);end

function z=function_4_DNA25_1(DNA1100,DNA1101,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA1100*S1-Koff_NG1*DNA1101)/nucleus);end

function z=function_4_DNA7_1(DNA0001,DNA0101,Koff_G1,Kon_G1,S1,nucleus), z=((Kon_G1*DNA0001*S1-Koff_G1*DNA0101)/nucleus);end

function z=function_4_DNA27_1(DNA1010,DNA1110,Koff_G1,Kon_G1,S1,nucleus), z=((Kon_G1*DNA1010*S1-Koff_G1*DNA1110)/nucleus);end

function z=function_4_DNA28_1(DNA1100,DNA1110,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA1100*S1-Koff_NG1*DNA1110)/nucleus);end

function z=function_4_DNA29_1(DNA0111,DNA1111,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA0111*S1-Koff_NG1*DNA1111)/nucleus);end

function z=function_4_DNA30_1(DNA1011,DNA1111,Koff_G1,Kon_G1,S1,nucleus), z=((Kon_G1*DNA1011*S1-Koff_G1*DNA1111)/nucleus);end

function z=function_4_DNA31_1(DNA1101,DNA1111,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA1101*S1-Koff_NG1*DNA1111)/nucleus);end

function z=function_4_DNA32_1(DNA1110,DNA1111,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA1110*S1-Koff_NG1*DNA1111)/nucleus);end

function z=function_4_DNA33_1(DNA0011,DNA001_1,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA0011-Koff_P1*DNA001_1)/nucleus);end

function z=function_4_DNA34_1(DNA0110,DNA01_10,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA0110-Koff_P1*DNA01_10)/nucleus);end

function z=function_4_DNA42_1(DNA1110,DNA11_10,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA1110-Koff_P1*DNA11_10)/nucleus);end

function z=function_4_DNA35_1(DNA0111,DNA01_11,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA0111-Koff_P1*DNA01_11)/nucleus);end

function z=function_4_DNA36_1(DNA0111,DNA011_1,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA0111-Koff_P1*DNA011_1)/nucleus);end

function z=function_4_DNA37_1(DNA01_11,DNA01_1_1,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA01_11-Koff_P1*DNA01_1_1)/nucleus);end

function z=function_4_DNA38_1(DNA011_1,DNA01_1_1,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA011_1-Koff_P1*DNA01_1_1)/nucleus);end

function z=function_4_DNA39_1(DNA1100,DNA1_100,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA1100-Koff_P1*DNA1_100)/nucleus);end

function z=function_4_DNA40_1(DNA1101,DNA1_101,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA1101-Koff_P1*DNA1_101)/nucleus);end

function z=function_4_DNA41_1(DNA1110,DNA1_110,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA1110-Koff_P1*DNA1_110)/nucleus);end

function z=function_4_DNA14_1(DNA0001,DNA1001,Koff_NG1,Kon_NG1,S1,nucleus), z=((Kon_NG1*DNA0001*S1-Koff_NG1*DNA1001)/nucleus);end

function z=function_4_DNA50_1(DNA1_111,DNA1_1_11,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA1_111-Koff_P1*DNA1_1_11)/nucleus);end

function z=function_4_DNA43_1(DNA1_110,DNA1_1_10,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA1_110-Koff_P1*DNA1_1_10)/nucleus);end

function z=function_4_DNA44_1(DNA11_10,DNA1_1_10,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA11_10-Koff_P1*DNA1_1_10)/nucleus);end

function z=function_4_DNA45_1(DNA1111,DNA1_111,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA1111-Koff_P1*DNA1_111)/nucleus);end

function z=function_4_DNA46_1(DNA1111,DNA11_11,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA1111-Koff_P1*DNA11_11)/nucleus);end

function z=function_4_DNA47_1(DNA1111,DNA111_1,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA1111-Koff_P1*DNA111_1)/nucleus);end

function z=function_4_DNA48_1(DNA1_111,DNA1_11_1,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA1_111-Koff_P1*DNA1_11_1)/nucleus);end

function z=function_4_DNA49_1(DNA111_1,DNA1_11_1,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA111_1-Koff_P1*DNA1_11_1)/nucleus);end

function z=function_4_DNA52_1(DNA11_11,DNA11_1_1,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA11_11-Koff_P1*DNA11_1_1)/nucleus);end

function z=function_4_DNA53_1(DNA111_1,DNA11_1_1,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA111_1-Koff_P1*DNA11_1_1)/nucleus);end

function z=function_4_DNA54_1(DNA1_1_11,DNA1_1_1_1,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA1_1_11-Koff_P1*DNA1_1_1_1)/nucleus);end

function z=function_4_DNA55_1(DNA1_11_1,DNA1_1_1_1,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA1_11_1-Koff_P1*DNA1_1_1_1)/nucleus);end

function z=function_4_DNA56_1(DNA11_1_1,DNA1_1_1_1,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA11_1_1-Koff_P1*DNA1_1_1_1)/nucleus);end

function z=function_4_DNA57(DNA1011,DNA101_1,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA1011-Koff_P1*DNA101_1)/nucleus);end

function z=function_4_DNA51_1(DNA11_11,DNA1_1_11,Koff_P1,Kon_P1,nucleus), z=((Kon_P1*DNA11_11-Koff_P1*DNA1_1_11)/nucleus);end

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


