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
% Model name = Carbo2013 - Cytokine driven CD4+ T Cell differentiation and phenotype plasticity
%
% is http://identifiers.org/biomodels.db/MODEL1304230001
% is http://identifiers.org/biomodels.db/BIOMD0000000451
% isDescribedBy http://identifiers.org/pubmed/23592971
%


function main()
%Initial conditions vector
	x0=zeros(59,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 1.0;
	x0(7) = 0.0;
	x0(8) = 1.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.9999999518;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.999999951844375;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.999999951844375;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.999999951844375;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.999999951844375;
	x0(26) = 0.0;
	x0(27) = 0.999999951844375;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.999999951844375;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.999999951844375;
	x0(35) = 0.999999951844375;
	x0(36) = 0.0;
	x0(37) = 0.999999951844375;
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
	x0(51) = 0.0;
	x0(52) = 0.0;
	x0(53) = 0.0;
	x0(54) = 0.0;
	x0(55) = 0.08;
	x0(56) = 0.0;
	x0(57) = 0.0;
	x0(58) = 0.9999999518;
	x0(59) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Compartment: id = c1, name = T Helper Cell, constant
	compartment_c1=1.0;
% Parameter:   id =  parameter_1, name = Hill Coeficient
	global_par_parameter_1=2.0;
% Parameter:   id =  parameter_2, name = BActin
	global_par_parameter_2=0.00850607781012331;
% Parameter:   id =  parameter_3, name = FOXP3R
% Parameter:   id =  parameter_4, name = IL17R
% Parameter:   id =  ModelValue_5, name = Initial for BActin
	global_par_ModelValue_5=0.00850607781012331;
% assignmentRule: variable = parameter_3
	global_par_parameter_3=x(57)/global_par_ModelValue_5;
% assignmentRule: variable = parameter_4
	global_par_parameter_4=x(46)/global_par_ModelValue_5;

% Reaction: id = re2, name = re2	% Local Parameter:   id =  Vf, name = Vf
	reaction_re2_Vf=0.1;
	% Local Parameter:   id =  K, name = K
	reaction_re2_K=0.138094;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re2_Vr=0.1;

	reaction_re2=function_1(reaction_re2_Vf, x(11), x(30), reaction_re2_K, global_par_parameter_1, x(54), reaction_re2_Vr, x(29));

% Reaction: id = re3, name = re3	% Local Parameter:   id =  Vf, name = Vf
	reaction_re3_Vf=0.1;
	% Local Parameter:   id =  K, name = K
	reaction_re3_K=2.01676;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re3_Vr=0.1;

	reaction_re3=compartment_c1*function_2(reaction_re3_Vf, const_species_s65, x(29), global_par_parameter_1, reaction_re3_K, reaction_re3_Vr, x(39));

% Reaction: id = re6, name = re6	% Local Parameter:   id =  k1, name = k1
	reaction_re6_k1=0.1;

	reaction_re6=reaction_re6_k1*x(28);

% Reaction: id = re8, name = re8	% Local Parameter:   id =  Vf, name = Vf
	reaction_re8_Vf=0.1;
	% Local Parameter:   id =  K1, name = K1
	reaction_re8_K1=2.94611;
	% Local Parameter:   id =  K2, name = K2
	reaction_re8_K2=0.743847;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re8_Vr=0.1;

	reaction_re8=function_3(reaction_re8_Vf, x(2), x(27), reaction_re8_K1, global_par_parameter_1, x(54), reaction_re8_K2, global_par_parameter_1, x(56), reaction_re8_Vr, x(26));

% Reaction: id = re9, name = re9	% Local Parameter:   id =  Vf, name = Vf
	reaction_re9_Vf=0.1;
	% Local Parameter:   id =  K1, name = K1
	reaction_re9_K1=0.1;
	% Local Parameter:   id =  K2, name = K2
	reaction_re9_K2=98.9482;
	% Local Parameter:   id =  K3, name = K3
	reaction_re9_K3=0.0539426;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re9_Vr=0.1;

	reaction_re9=compartment_c1*function_4(reaction_re9_Vf, reaction_re9_K1, global_par_parameter_1, x(56), reaction_re9_K2, global_par_parameter_1, x(57), x(39), global_par_parameter_1, reaction_re9_K3, reaction_re9_Vr, x(40), const_species_species_10, const_species_species_11);

% Reaction: id = re10, name = re10	% Local Parameter:   id =  Vf, name = Vf
	reaction_re10_Vf=0.1;
	% Local Parameter:   id =  K1, name = K1
	reaction_re10_K1=0.125481;
	% Local Parameter:   id =  K2, name = K2
	reaction_re10_K2=0.896854;
	% Local Parameter:   id =  K3, name = K3
	reaction_re10_K3=0.031433;
	% Local Parameter:   id =  K4, name = K4
	reaction_re10_K4=66.6168;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re10_Vr=0.1;

	reaction_re10=compartment_c1*function_5(reaction_re10_Vf, const_species_s67, reaction_re10_K1, global_par_parameter_1, x(33), reaction_re10_K2, global_par_parameter_1, x(53), x(26), global_par_parameter_1, reaction_re10_K3, x(36), global_par_parameter_1, reaction_re10_K4, reaction_re10_Vr, x(41));

% Reaction: id = re11, name = re11	% Local Parameter:   id =  Vf, name = Vf
	reaction_re11_Vf=0.1;
	% Local Parameter:   id =  K, name = K
	reaction_re11_K=0.263953;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re11_Vr=0.1;

	reaction_re11=function_1(reaction_re11_Vf, x(1), x(25), reaction_re11_K, global_par_parameter_1, x(51), reaction_re11_Vr, x(24));

% Reaction: id = re12, name = re12	% Local Parameter:   id =  k1, name = k1
	reaction_re12_k1=0.1;

	reaction_re12=reaction_re12_k1*x(42);

% Reaction: id = re13, name = re13	% Local Parameter:   id =  Vf, name = Vf
	reaction_re13_Vf=0.1;
	% Local Parameter:   id =  K, name = K
	reaction_re13_K=0.1;
	% Local Parameter:   id =  K1, name = K1
	reaction_re13_K1=5.04432;
	% Local Parameter:   id =  K2, name = K2
	reaction_re13_K2=0.0705365;
	% Local Parameter:   id =  K3, name = K3
	reaction_re13_K3=14.9778;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re13_Vr=0.1;

	reaction_re13=compartment_c1*function_6(reaction_re13_Vf, const_species_s70, reaction_re13_K, global_par_parameter_1, x(56), x(33), global_par_parameter_1, reaction_re13_K1, x(24), global_par_parameter_1, reaction_re13_K2, x(43), global_par_parameter_1, reaction_re13_K3, reaction_re13_Vr, x(44));

% Reaction: id = re14, name = re14	% Local Parameter:   id =  Vf, name = Vf
	reaction_re14_Vf=0.1;
	% Local Parameter:   id =  K1, name = K1
	reaction_re14_K1=0.501917;
	% Local Parameter:   id =  K2, name = K2
	reaction_re14_K2=0.812366;
	% Local Parameter:   id =  K3, name = K3
	reaction_re14_K3=0.1;
	% Local Parameter:   id =  K4, name = K4
	reaction_re14_K4=0.001477;
	% Local Parameter:   id =  K5, name = K5
	reaction_re14_K5=100.0;
	% Local Parameter:   id =  K6, name = K6
	reaction_re14_K6=0.230841;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re14_Vr=0.1;

	reaction_re14=compartment_c1*function_7(reaction_re14_Vf, const_species_species_5, reaction_re14_K1, global_par_parameter_1, const_species_species_14, reaction_re14_K2, global_par_parameter_1, x(49), reaction_re14_K3, global_par_parameter_1, x(56), x(41), global_par_parameter_1, reaction_re14_K4, x(40), global_par_parameter_1, reaction_re14_K5, x(52), global_par_parameter_1, reaction_re14_K6, reaction_re14_Vr, x(42));

% Reaction: id = re15, name = re15	% Local Parameter:   id =  Vf, name = Vf
	reaction_re15_Vf=0.1;
	% Local Parameter:   id =  K1, name = K1
	reaction_re15_K1=0.916783;
	% Local Parameter:   id =  K2, name = K2
	reaction_re15_K2=1.33537;
	% Local Parameter:   id =  K3, name = K3
	reaction_re15_K3=3.58849;
	% Local Parameter:   id =  K4, name = K4
	reaction_re15_K4=0.727962;
	% Local Parameter:   id =  K5, name = K5
	reaction_re15_K5=6.97805;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re15_Vr=0.1;

	reaction_re15=compartment_c1*function_13(reaction_re15_Vf, const_species_s80, reaction_re15_K1, global_par_parameter_1, x(15), reaction_re15_K2, global_par_parameter_1, x(49), x(41), global_par_parameter_1, reaction_re15_K3, x(44), global_par_parameter_1, reaction_re15_K4, x(52), global_par_parameter_1, reaction_re15_K5, reaction_re15_Vr, x(52));

% Reaction: id = re16, name = re16	% Local Parameter:   id =  Vf, name = Vf
	reaction_re16_Vf=0.1;
	% Local Parameter:   id =  K1, name = K1
	reaction_re16_K1=0.1;
	% Local Parameter:   id =  K2, name = K2
	reaction_re16_K2=0.004433;
	% Local Parameter:   id =  K3, name = K3
	reaction_re16_K3=99.987;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re16_Vr=0.1;

	reaction_re16=compartment_c1*function_8(reaction_re16_Vf, const_species_s69, reaction_re16_K1, global_par_parameter_1, x(56), reaction_re16_K2, global_par_parameter_1, x(51), x(24), global_par_parameter_1, reaction_re16_K3, reaction_re16_Vr, x(43));

% Reaction: id = re17, name = re17	% Local Parameter:   id =  Vf, name = Vf
	reaction_re17_Vf=0.1;
	% Local Parameter:   id =  K1, name = K1
	reaction_re17_K1=7.83763;
	% Local Parameter:   id =  K2, name = K2
	reaction_re17_K2=0.667462;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re17_Vr=0.1;

	reaction_re17=compartment_c1*function_9(reaction_re17_Vf, const_species_s79, x(44), global_par_parameter_1, reaction_re17_K1, x(52), global_par_parameter_1, reaction_re17_K2, reaction_re17_Vr, x(51));

% Reaction: id = re18, name = re18	% Local Parameter:   id =  k1, name = k1
	reaction_re18_k1=0.1;

	reaction_re18=reaction_re18_k1*x(23);

% Reaction: id = re19, name = re19	% Local Parameter:   id =  Vf, name = Vf
	reaction_re19_Vf=0.1;
	% Local Parameter:   id =  K, name = K
	reaction_re19_K=13.0657;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re19_Vr=0.1;

	reaction_re19=function_1(reaction_re19_Vf, x(5), x(22), reaction_re19_K, global_par_parameter_1, x(51), reaction_re19_Vr, x(21));

% Reaction: id = re20, name = re20	% Local Parameter:   id =  Vf, name = Vf
	reaction_re20_Vf=0.1;
	% Local Parameter:   id =  K1, name = K1
	reaction_re20_K1=0.210399;
	% Local Parameter:   id =  K2, name = K2
	reaction_re20_K2=56.3452;
	% Local Parameter:   id =  K3, name = K3
	reaction_re20_K3=98.0373;
	% Local Parameter:   id =  K4, name = K4
	reaction_re20_K4=0.855534;
	% Local Parameter:   id =  K5, name = K5
	reaction_re20_K5=4.32731;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re20_Vr=0.1;

	reaction_re20=function_13(reaction_re20_Vf, const_species_species_15, reaction_re20_K1, global_par_parameter_1, x(44), reaction_re20_K2, global_par_parameter_1, const_species_species_13, x(23), global_par_parameter_1, reaction_re20_K3, x(53), global_par_parameter_1, reaction_re20_K4, x(50), global_par_parameter_1, reaction_re20_K5, reaction_re20_Vr, x(23));

% Reaction: id = re23, name = re23	% Local Parameter:   id =  Vf, name = Vf
	reaction_re23_Vf=0.1;
	% Local Parameter:   id =  K1, name = K1
	reaction_re23_K1=0.199351;
	% Local Parameter:   id =  K2, name = K2
	reaction_re23_K2=9.61521;
	% Local Parameter:   id =  K3, name = K3
	reaction_re23_K3=0.214012;
	% Local Parameter:   id =  K4, name = K4
	reaction_re23_K4=0.321065;
	% Local Parameter:   id =  K5, name = K5
	reaction_re23_K5=0.1;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re23_Vr=0.1;

	reaction_re23=compartment_c1*function_10(reaction_re23_Vf, const_species_s81, reaction_re23_K1, global_par_parameter_1, x(52), reaction_re23_K2, global_par_parameter_1, x(49), reaction_re23_K3, global_par_parameter_1, x(15), x(54), global_par_parameter_1, reaction_re23_K4, x(56), global_par_parameter_1, reaction_re23_K5, reaction_re23_Vr, x(53));

% Reaction: id = re24, name = re24	% Local Parameter:   id =  Vf, name = Vf
	reaction_re24_Vf=0.1;
	% Local Parameter:   id =  K, name = K
	reaction_re24_K=0.1;
	% Local Parameter:   id =  n1, name = n1
	reaction_re24_n1=0.004304;
	% Local Parameter:   id =  K1, name = K1
	reaction_re24_K1=0.1;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re24_Vr=0.1;

	reaction_re24=compartment_c1*function_15(reaction_re24_Vf, const_species_s82, reaction_re24_K, global_par_parameter_1, x(24), x(21), reaction_re24_n1, reaction_re24_K1, reaction_re24_Vr, x(54));

% Reaction: id = re25, name = re25	% Local Parameter:   id =  k1, name = k1
	reaction_re25_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_re25_k2=0.1;

	reaction_re25=reaction_re25_k1*x(7)*x(19)-reaction_re25_k2*x(18);

% Reaction: id = re26, name = re26	% Local Parameter:   id =  Vf, name = Vf
	reaction_re26_Vf=0.1;
	% Local Parameter:   id =  K, name = K
	reaction_re26_K=0.374591;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re26_Vr=0.1;

	reaction_re26=compartment_c1*function_2(reaction_re26_Vf, const_species_s77, x(18), global_par_parameter_1, reaction_re26_K, reaction_re26_Vr, x(50));

% Reaction: id = re27, name = re27	% Local Parameter:   id =  Vf, name = Vf
	reaction_re27_Vf=0.1;
	% Local Parameter:   id =  K1, name = K1
	reaction_re27_K1=100.0;
	% Local Parameter:   id =  K2, name = K2
	reaction_re27_K2=0.354892;
	% Local Parameter:   id =  K3, name = K3
	reaction_re27_K3=1.31281;
	% Local Parameter:   id =  K4, name = K4
	reaction_re27_K4=6.79025E-4;
	% Local Parameter:   id =  K5, name = K5
	reaction_re27_K5=2.07945;
	% Local Parameter:   id =  K6, name = K6
	reaction_re27_K6=100.0;
	% Local Parameter:   id =  K7, name = K7
	reaction_re27_K7=1.93254E-7;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re27_Vr=0.1;

	reaction_re27=compartment_c1*function_11(reaction_re27_Vf, const_species_s78, reaction_re27_K1, global_par_parameter_1, x(54), reaction_re27_K2, global_par_parameter_1, x(49), reaction_re27_K3, global_par_parameter_1, x(12), x(15), global_par_parameter_1, reaction_re27_K4, x(44), global_par_parameter_1, reaction_re27_K5, x(50), global_par_parameter_1, reaction_re27_K6, x(56), global_par_parameter_1, reaction_re27_K7, reaction_re27_Vr, x(57));

% Reaction: id = re28, name = re28	% Local Parameter:   id =  k1, name = k1
	reaction_re28_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_re28_k2=0.1;

	reaction_re28=reaction_re28_k1*x(6)*x(16)-reaction_re28_k2*x(15);

% Reaction: id = re29, name = re29	% Local Parameter:   id =  k1, name = k1
	reaction_re29_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_re29_k2=0.1;

	reaction_re29=reaction_re29_k1*x(8)*x(13)-reaction_re29_k2*x(12);

% Reaction: id = re30, name = re30	% Local Parameter:   id =  Vf, name = Vf
	reaction_re30_Vf=0.1;
	% Local Parameter:   id =  K, name = K
	reaction_re30_K=0.1;
	% Local Parameter:   id =  K1, name = K1
	reaction_re30_K1=0.636796;
	% Local Parameter:   id =  K2, name = K2
	reaction_re30_K2=39.018;
	% Local Parameter:   id =  K3, name = K3
	reaction_re30_K3=2.26986;
	% Local Parameter:   id =  K4, name = K4
	reaction_re30_K4=0.137545;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re30_Vr=0.1;

	reaction_re30=compartment_c1*function_12(reaction_re30_Vf, const_species_s76, reaction_re30_K, global_par_parameter_1, x(56), x(33), global_par_parameter_1, reaction_re30_K1, x(36), global_par_parameter_1, reaction_re30_K2, x(38), global_par_parameter_1, reaction_re30_K3, x(12), global_par_parameter_1, reaction_re30_K4, reaction_re30_Vr, x(49));

% Reaction: id = re31, name = re31	% Local Parameter:   id =  Vf, name = Vf
	reaction_re31_Vf=0.2249;
	% Local Parameter:   id =  K1, name = K1
	reaction_re31_K1=9722.09;
	% Local Parameter:   id =  K2, name = K2
	reaction_re31_K2=0.703778;
	% Local Parameter:   id =  K3, name = K3
	reaction_re31_K3=1.24123;
	% Local Parameter:   id =  K4, name = K4
	reaction_re31_K4=997.263;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re31_Vr=0.1;

	reaction_re31=compartment_c1*function_5(reaction_re31_Vf, const_species_s75, reaction_re31_K1, global_par_parameter_1, x(57), reaction_re31_K2, global_par_parameter_1, x(56), x(49), global_par_parameter_1, reaction_re31_K3, x(15), global_par_parameter_1, reaction_re31_K4, reaction_re31_Vr, x(48));

% Reaction: id = re32, name = re32	% Local Parameter:   id =  Vf, name = Vf
	reaction_re32_Vf=0.1;
	% Local Parameter:   id =  K, name = K
	reaction_re32_K=0.240705;
	% Local Parameter:   id =  K1, name = K1
	reaction_re32_K1=8.14189;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re32_Vr=0.1;

	reaction_re32=function_14(reaction_re32_Vf, x(3), x(34), reaction_re32_K, global_par_parameter_1, x(50), x(59), global_par_parameter_1, reaction_re32_K1, reaction_re32_Vr, x(33));

% Reaction: id = re33, name = re33	% Local Parameter:   id =  k1, name = k1
	reaction_re33_k1=0.1;

	reaction_re33=reaction_re33_k1*x(32);

% Reaction: id = re34, name = re34	% Local Parameter:   id =  k1, name = k1
	reaction_re34_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_re34_k2=0.1;

	reaction_re34=reaction_re34_k1*x(4)-reaction_re34_k2*x(45);

% Reaction: id = re35, name = re35	% Local Parameter:   id =  Vf, name = Vf
	reaction_re35_Vf=0.1;
	% Local Parameter:   id =  K, name = K
	reaction_re35_K=4.66107;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re35_Vr=0.1;

	reaction_re35=compartment_c1*function_1(reaction_re35_Vf, x(45), x(35), reaction_re35_K, global_par_parameter_1, x(52), reaction_re35_Vr, x(36));

% Reaction: id = re36, name = re36	% Local Parameter:   id =  Vf, name = Vf
	reaction_re36_Vf=0.1;
	% Local Parameter:   id =  K, name = K
	reaction_re36_K=0.1;
	% Local Parameter:   id =  K1, name = K1
	reaction_re36_K1=25.5354;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re36_Vr=0.1;

	reaction_re36=compartment_c1*function_14(reaction_re36_Vf, const_species_species_9, const_species_species_8, reaction_re36_K, global_par_parameter_1, x(56), x(12), global_par_parameter_1, reaction_re36_K1, reaction_re36_Vr, x(45));

% Reaction: id = re37, name = re37	% Local Parameter:   id =  Vf, name = Vf
	reaction_re37_Vf=0.1;
	% Local Parameter:   id =  K, name = K
	reaction_re37_K=0.118892;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re37_Vr=0.1;

	reaction_re37=compartment_c1*function_2(reaction_re37_Vf, const_species_species_6, x(49), global_par_parameter_1, reaction_re37_K, reaction_re37_Vr, x(32));

% Reaction: id = re39, name = re38	% Local Parameter:   id =  k1, name = k1
	reaction_re39_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_re39_k2=0.1;

	reaction_re39=reaction_re39_k1*x(10)*x(37)-reaction_re39_k2*x(38);

% Reaction: id = re42, name = re42	% Local Parameter:   id =  Vf, name = Vf
	reaction_re42_Vf=0.1;
	% Local Parameter:   id =  K, name = K
	reaction_re42_K=0.1;
	% Local Parameter:   id =  K1, name = K1
	reaction_re42_K1=0.1;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_re42_Vr=0.1;

	reaction_re42=compartment_c1*function_14(reaction_re42_Vf, x(55), const_species_s86, reaction_re42_K, global_par_parameter_1, x(24), x(21), global_par_parameter_1, reaction_re42_K1, reaction_re42_Vr, x(56));

% Reaction: id = re44, name = re44	% Local Parameter:   id =  k1, name = k1
	reaction_re44_k1=0.1;

	reaction_re44=reaction_re44_k1*x(17);

% Reaction: id = re45, name = re45	% Local Parameter:   id =  k1, name = k1
	reaction_re45_k1=0.1;

	reaction_re45=reaction_re45_k1*x(20);

% Reaction: id = re46, name = re46	% Local Parameter:   id =  k1, name = k1
	reaction_re46_k1=0.1;

	reaction_re46=reaction_re46_k1*x(14);

% Reaction: id = reaction_1, name = re48	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=0.1;

	reaction_reaction_1=reaction_reaction_1_k1*x(47);

% Reaction: id = reaction_2, name = re49	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=0.1;

	reaction_reaction_2=reaction_reaction_2_k1*x(46);

% Reaction: id = reaction_3, name = re50	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=0.184881;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_3_k2=0.1896;

	reaction_reaction_3=reaction_reaction_3_k1*x(9)*x(58)-reaction_reaction_3_k2*x(59);

% Reaction: id = reaction_4, name = re47	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_4_k1=0.1;

	reaction_reaction_4=reaction_reaction_4_k1*x(31);

% Reaction: id = reaction_5, name = re51	% Local Parameter:   id =  Vf, name = Vf
	reaction_reaction_5_Vf=0.225095;
	% Local Parameter:   id =  K, name = K
	reaction_reaction_5_K=0.1;
	% Local Parameter:   id =  K1, name = K1
	reaction_reaction_5_K1=1.62893;
	% Local Parameter:   id =  K2, name = K2
	reaction_reaction_5_K2=0.526832;
	% Local Parameter:   id =  K3, name = K3
	reaction_reaction_5_K3=5.47889;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_reaction_5_Vr=0.1;

	reaction_reaction_5=compartment_c1*function_6(reaction_reaction_5_Vf, const_species_species_7, reaction_reaction_5_K, global_par_parameter_1, x(56), x(36), global_par_parameter_1, reaction_reaction_5_K1, x(48), global_par_parameter_1, reaction_reaction_5_K2, x(41), global_par_parameter_1, reaction_reaction_5_K3, reaction_reaction_5_Vr, x(46));

% Reaction: id = reaction_6, name = IL18 pool	% Local Parameter:   id =  V, name = V
	reaction_reaction_6_V=0.1;
	% Local Parameter:   id =  k, name = k
	reaction_reaction_6_k=0.5;

	reaction_reaction_6=compartment_default*function_16(reaction_reaction_6_V, const_species_species_16, global_par_parameter_1, x(11), reaction_reaction_6_k);

% Reaction: id = reaction_7, name = IL12 pool	% Local Parameter:   id =  V, name = V
	reaction_reaction_7_V=0.1;
	% Local Parameter:   id =  k, name = k
	reaction_reaction_7_k=0.5;

	reaction_reaction_7=compartment_default*function_16(reaction_reaction_7_V, const_species_species_17, global_par_parameter_1, x(2), reaction_reaction_7_k);

% Reaction: id = reaction_8, name = IFNg pool	% Local Parameter:   id =  V, name = V
	reaction_reaction_8_V=0.1;
	% Local Parameter:   id =  k, name = k
	reaction_reaction_8_k=0.1;

	reaction_reaction_8=compartment_default*function_16(reaction_reaction_8_V, const_species_species_18, global_par_parameter_1, x(1), reaction_reaction_8_k);

% Reaction: id = reaction_9, name = IL21 pool	% Local Parameter:   id =  V, name = V
	reaction_reaction_9_V=0.1;
	% Local Parameter:   id =  k, name = k
	reaction_reaction_9_k=0.1;

	reaction_reaction_9=compartment_default*function_16(reaction_reaction_9_V, const_species_species_19, global_par_parameter_1, x(3), reaction_reaction_9_k);

% Reaction: id = reaction_10, name = IL23 pool	% Local Parameter:   id =  V, name = V
	reaction_reaction_10_V=0.1;
	% Local Parameter:   id =  k, name = k
	reaction_reaction_10_k=0.1;

	reaction_reaction_10=compartment_default*function_16(reaction_reaction_10_V, const_species_species_20, global_par_parameter_1, x(4), reaction_reaction_10_k);

% Reaction: id = reaction_11, name = IL17 pool	% Local Parameter:   id =  V, name = V
	reaction_reaction_11_V=0.1;
	% Local Parameter:   id =  k, name = k
	reaction_reaction_11_k=0.1;

	reaction_reaction_11=function_16(reaction_reaction_11_V, const_species_species_21, global_par_parameter_1, x(46), reaction_reaction_11_k);

% Reaction: id = reaction_12, name = IL10 pool	% Local Parameter:   id =  V, name = V
	reaction_reaction_12_V=0.1;
	% Local Parameter:   id =  k, name = k
	reaction_reaction_12_k=0.1;

	reaction_reaction_12=compartment_default*function_16(reaction_reaction_12_V, const_species_species_22, global_par_parameter_1, x(10), reaction_reaction_12_k);

% Reaction: id = reaction_13, name = IL6 pool	% Local Parameter:   id =  V, name = V
	reaction_reaction_13_V=0.1;
	% Local Parameter:   id =  k, name = k
	reaction_reaction_13_k=0.1;

	reaction_reaction_13=compartment_default*function_16(reaction_reaction_13_V, const_species_species_23, global_par_parameter_1, x(8), reaction_reaction_13_k);

% Reaction: id = reaction_14, name = IL2 pool	% Local Parameter:   id =  V, name = V
	reaction_reaction_14_V=0.1;
	% Local Parameter:   id =  k, name = k
	reaction_reaction_14_k=0.1;

	reaction_reaction_14=compartment_default*function_16(reaction_reaction_14_V, const_species_species_24, global_par_parameter_1, x(7), reaction_reaction_14_k);

% Reaction: id = reaction_15, name = TGFb pool	% Local Parameter:   id =  V, name = V
	reaction_reaction_15_V=0.1;
	% Local Parameter:   id =  k, name = k
	reaction_reaction_15_k=0.1;

	reaction_reaction_15=compartment_default*function_16(reaction_reaction_15_V, const_species_species_25, global_par_parameter_1, x(6), reaction_reaction_15_k);

% Reaction: id = reaction_16, name = IL4 pool	% Local Parameter:   id =  V, name = V
	reaction_reaction_16_V=0.1;
	% Local Parameter:   id =  k, name = k
	reaction_reaction_16_k=0.1;

	reaction_reaction_16=compartment_default*function_16(reaction_reaction_16_V, const_species_species_26, global_par_parameter_1, x(5), reaction_reaction_16_k);

% Reaction: id = reaction_17, name = re52	% Local Parameter:   id =  Vf, name = Vf
	reaction_reaction_17_Vf=0.1;
	% Local Parameter:   id =  K, name = K
	reaction_reaction_17_K=0.508159;
	% Local Parameter:   id =  K1, name = K1
	reaction_reaction_17_K1=0.1;
	% Local Parameter:   id =  K2, name = K2
	reaction_reaction_17_K2=0.00125893;
	% Local Parameter:   id =  K3, name = K3
	reaction_reaction_17_K3=0.645162;
	% Local Parameter:   id =  K4, name = K4
	reaction_reaction_17_K4=100.0;
	% Local Parameter:   id =  Vr, name = Vr
	reaction_reaction_17_Vr=0.1;

	reaction_reaction_17=function_12(reaction_reaction_17_Vf, const_species_species_27, reaction_reaction_17_K, global_par_parameter_1, x(36), x(56), global_par_parameter_1, reaction_reaction_17_K1, x(33), global_par_parameter_1, reaction_reaction_17_K2, x(53), global_par_parameter_1, reaction_reaction_17_K3, x(50), global_par_parameter_1, reaction_reaction_17_K4, reaction_reaction_17_Vr, x(47));

% Species:   id = species_13, name = anti-IL4, constant	const_species_species_13=1.0;

% Species:   id = species_14, name = anti-IFNg, constant	const_species_species_14=1.0;

% Species:   id = species_15, name = pIL4, constant	const_species_species_15=1.0;

% Species:   id = species_16, name = IL18_pool, constant	const_species_species_16=0.0;

% Species:   id = species_17, name = IL12_pool, constant	const_species_species_17=0.0;

% Species:   id = species_18, name = IFNg_pool, constant	const_species_species_18=0.0;

% Species:   id = species_19, name = IL21_pool, constant	const_species_species_19=0.0;

% Species:   id = species_20, name = IL23_pool, constant	const_species_species_20=0.0;

% Species:   id = species_21, name = IL17_pool, constant	const_species_species_21=0.0;

% Species:   id = species_22, name = IL10_pool, constant	const_species_species_22=0.0;

% Species:   id = species_23, name = IL6_pool, constant	const_species_species_23=1.0;

% Species:   id = species_24, name = IL2_pool, constant	const_species_species_24=0.0;

% Species:   id = species_25, name = TGFb_pool, constant	const_species_species_25=1.0;

% Species:   id = species_26, name = IL4_pool, constant	const_species_species_26=0.0;

% Species:   id = species_27, name = pIL10, constant	const_species_species_27=1.0;

% Species:   id = s65, name = IRAK1, constant	const_species_s65=0.5;

% Species:   id = s67, name = STAT4, constant	const_species_s67=0.999999951844375;

% Species:   id = s69, name = JAK1, constant	const_species_s69=0.5;

% Species:   id = s70, name = STAT1, constant	const_species_s70=0.999999951844375;

% Species:   id = s75, name = RORgt, constant	const_species_s75=0.999999951844375;

% Species:   id = s76, name = STAT3, constant	const_species_s76=0.999999951844375;

% Species:   id = s77, name = STAT5, constant	const_species_s77=0.999999951844375;

% Species:   id = s78, name = FOXP3, constant	const_species_s78=0.999999951844375;

% Species:   id = s79, name = SOCS1, constant	const_species_s79=0.999999951844375;

% Species:   id = s80, name = Tbet, constant	const_species_s80=0.999999951844375;

% Species:   id = s81, name = GATA3, constant	const_species_s81=0.999999951844375;

% Species:   id = s82, name = STAT6, constant	const_species_s82=1.0;

% Species:   id = s86, name = Ligand, constant	const_species_s86=0.9999999518;

% Species:   id = species_8, name = p19, constant	const_species_species_8=0.9999999518;

% Species:   id = species_9, name = p40, constant	const_species_species_9=0.9999999518;

% Species:   id = species_10, name = p50, constant	const_species_species_10=0.5;

% Species:   id = species_11, name = p65, constant	const_species_species_11=0.5;

% Species:   id = species_5, name = pIFNg, constant	const_species_species_5=0.9999999518;

% Species:   id = species_6, name = pIL21, constant	const_species_species_6=0.999999951844375;

% Species:   id = species_7, name = pIL17, constant	const_species_species_7=0.999999951844375;

	xdot=zeros(59,1);
	
% Species:   id = s22, name = eIFNg, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*((-1.0 * reaction_re11) + ( 1.0 * reaction_re12) + ( 1.0 * reaction_reaction_8));
	
% Species:   id = s11, name = eIL12, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*(( 1.0 * reaction_re6) + (-1.0 * reaction_re8) + ( 1.0 * reaction_reaction_7));
	
% Species:   id = s51, name = eIL21, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*((-1.0 * reaction_re32) + ( 1.0 * reaction_re33) + ( 1.0 * reaction_reaction_9));
	
% Species:   id = s55, name = eIL23, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*((-1.0 * reaction_re34) + ( 1.0 * reaction_reaction_10));
	
% Species:   id = s30, name = eIL4, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*(( 1.0 * reaction_re18) + (-1.0 * reaction_re19) + ( 1.0 * reaction_reaction_16));
	
% Species:   id = s87, name = eTGFb, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*((-1.0 * reaction_re28) + ( 1.0 * reaction_re44) + ( 1.0 * reaction_reaction_15));
	
% Species:   id = s89, name = eIL2, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*((-1.0 * reaction_re25) + ( 1.0 * reaction_re45) + ( 1.0 * reaction_reaction_14));
	
% Species:   id = s90, name = eIL6, affected by kineticLaw
	xdot(8) = (1/(compartment_default))*((-1.0 * reaction_re29) + ( 1.0 * reaction_re46) + ( 1.0 * reaction_reaction_13));
	
% Species:   id = species_1, name = eIL17, affected by kineticLaw
	xdot(9) = (1/(compartment_default))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3));
	
% Species:   id = species_2, name = eIL10, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*((-1.0 * reaction_re39) + ( 1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_12));
	
% Species:   id = species_12, name = eIL18, affected by kineticLaw
	xdot(11) = (1/(compartment_default))*((-1.0 * reaction_re2) + ( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_6));
	
% Species:   id = s48, name = IL6-IL6R, affected by kineticLaw
	xdot(12) = (1/(compartment_c1))*(( 1.0 * reaction_re29));
	
% Species:   id = s47, name = IL6R, affected by kineticLaw
	xdot(13) = (1/(compartment_c1))*((-1.0 * reaction_re29));
	
% Species:   id = s46, name = IL6, affected by kineticLaw
	xdot(14) = (1/(compartment_c1))*((-1.0 * reaction_re46));
	
% Species:   id = s45, name = TGFb-TGFbR, affected by kineticLaw
	xdot(15) = (1/(compartment_c1))*(( 1.0 * reaction_re28));
	
% Species:   id = s44, name = TGFbR, affected by kineticLaw
	xdot(16) = (1/(compartment_c1))*((-1.0 * reaction_re28));
	
% Species:   id = s43, name = TGFb, affected by kineticLaw
	xdot(17) = (1/(compartment_c1))*((-1.0 * reaction_re44));
	
% Species:   id = s38, name = IL2-IL2R, affected by kineticLaw
	xdot(18) = (1/(compartment_c1))*(( 1.0 * reaction_re25));
	
% Species:   id = s37, name = IL2R, affected by kineticLaw
	xdot(19) = (1/(compartment_c1))*((-1.0 * reaction_re25));
	
% Species:   id = s36, name = IL2, affected by kineticLaw
	xdot(20) = (1/(compartment_c1))*((-1.0 * reaction_re45));
	
% Species:   id = s33, name = IL4-IL4R, affected by kineticLaw
	xdot(21) = (1/(compartment_c1))*(( 1.0 * reaction_re19));
	
% Species:   id = s32, name = IL4R, affected by kineticLaw
	xdot(22) = (1/(compartment_c1))*((-1.0 * reaction_re19));
	
% Species:   id = s31, name = IL4, affected by kineticLaw
	xdot(23) = (1/(compartment_c1))*((-1.0 * reaction_re18) + ( 1.0 * reaction_re20));
	
% Species:   id = s25, name = IFNg-IFNgR, affected by kineticLaw
	xdot(24) = (1/(compartment_c1))*(( 1.0 * reaction_re11));
	
% Species:   id = s24, name = IFNgR, affected by kineticLaw
	xdot(25) = (1/(compartment_c1))*((-1.0 * reaction_re11));
	
% Species:   id = s14, name = IL12-IL12R, affected by kineticLaw
	xdot(26) = (1/(compartment_c1))*(( 1.0 * reaction_re8));
	
% Species:   id = s13, name = IL12R, affected by kineticLaw
	xdot(27) = (1/(compartment_c1))*((-1.0 * reaction_re8));
	
% Species:   id = s12, name = IL12, affected by kineticLaw
	xdot(28) = (1/(compartment_c1))*((-1.0 * reaction_re6));
	
% Species:   id = s3, name = IL18-IL18R, affected by kineticLaw
	xdot(29) = (1/(compartment_c1))*(( 1.0 * reaction_re2));
	
% Species:   id = s2, name = IL18R, affected by kineticLaw
	xdot(30) = (1/(compartment_c1))*((-1.0 * reaction_re2));
	
% Species:   id = s1, name = IL18, affected by kineticLaw
	xdot(31) = (1/(compartment_c1))*((-1.0 * reaction_reaction_4));
	
% Species:   id = s52, name = IL21, affected by kineticLaw
	xdot(32) = (1/(compartment_c1))*((-1.0 * reaction_re33) + ( 1.0 * reaction_re37));
	
% Species:   id = s54, name = IL21-IL21R, affected by kineticLaw
	xdot(33) = (1/(compartment_c1))*(( 1.0 * reaction_re32));
	
% Species:   id = s53, name = IL21R, affected by kineticLaw
	xdot(34) = (1/(compartment_c1))*((-1.0 * reaction_re32));
	
% Species:   id = s58, name = IL23R, affected by kineticLaw
	xdot(35) = (1/(compartment_c1))*((-1.0 * reaction_re35));
	
% Species:   id = s59, name = IL23-IL23R, affected by kineticLaw
	xdot(36) = (1/(compartment_c1))*(( 1.0 * reaction_re35));
	
% Species:   id = s62, name = IL10R, affected by kineticLaw
	xdot(37) = (1/(compartment_c1))*((-1.0 * reaction_re39));
	
% Species:   id = s63, name = IL10-IL10R, affected by kineticLaw
	xdot(38) = (1/(compartment_c1))*(( 1.0 * reaction_re39));
	
% Species:   id = s10, name = IRAK1-P, affected by kineticLaw
	xdot(39) = (1/(compartment_c1))*(( 1.0 * reaction_re3));
	
% Species:   id = s20, name = p50/p65 dimer, affected by kineticLaw
	xdot(40) = (1/(compartment_c1))*(( 1.0 * reaction_re9));
	
% Species:   id = s21, name = STAT4-P, affected by kineticLaw
	xdot(41) = (1/(compartment_c1))*(( 1.0 * reaction_re10));
	
% Species:   id = s68, name = IFNg, affected by kineticLaw
	xdot(42) = (1/(compartment_c1))*((-1.0 * reaction_re12) + ( 1.0 * reaction_re14));
	
% Species:   id = s28, name = JAK1-P, affected by kineticLaw
	xdot(43) = (1/(compartment_c1))*(( 1.0 * reaction_re16));
	
% Species:   id = s26, name = STAT1-P, affected by kineticLaw
	xdot(44) = (1/(compartment_c1))*(( 1.0 * reaction_re13));
	
% Species:   id = s57, name = p40/p19 dimer, affected by kineticLaw
	xdot(45) = (1/(compartment_c1))*(( 1.0 * reaction_re34) + (-1.0 * reaction_re35) + ( 1.0 * reaction_re36));
	
% Species:   id = s73, name = IL17, affected by kineticLaw
	xdot(46) = (1/(compartment_c1))*((-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_11));
	
% Species:   id = s74, name = IL10, affected by kineticLaw
	xdot(47) = (1/(compartment_c1))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_17));
	
% Species:   id = s50, name = RORgt-ligand, affected by kineticLaw
	xdot(48) = (1/(compartment_c1))*(( 1.0 * reaction_re31));
	
% Species:   id = s49, name = STAT3-P, affected by kineticLaw
	xdot(49) = (1/(compartment_c1))*(( 1.0 * reaction_re30));
	
% Species:   id = s39, name = STAT5-P, affected by kineticLaw
	xdot(50) = (1/(compartment_c1))*(( 1.0 * reaction_re26));
	
% Species:   id = s29, name = SOCS1-JAKs, affected by kineticLaw
	xdot(51) = (1/(compartment_c1))*(( 1.0 * reaction_re17));
	
% Species:   id = s27, name = Tbet-P, affected by kineticLaw
	xdot(52) = (1/(compartment_c1))*(( 1.0 * reaction_re15));
	
% Species:   id = s35, name = GATA3-P, affected by kineticLaw
	xdot(53) = (1/(compartment_c1))*(( 1.0 * reaction_re23));
	
% Species:   id = s34, name = STAT6-P, affected by kineticLaw
	xdot(54) = (1/(compartment_c1))*(( 1.0 * reaction_re24));
	
% Species:   id = s85, name = PPARg, affected by kineticLaw
	xdot(55) = (1/(compartment_c1))*((-1.0 * reaction_re42));
	
% Species:   id = s83, name = L-PPARg, affected by kineticLaw
	xdot(56) = (1/(compartment_c1))*(( 1.0 * reaction_re42));
	
% Species:   id = s40, name = acetylated FOXP3, affected by kineticLaw
	xdot(57) = (1/(compartment_c1))*(( 1.0 * reaction_re27));
	
% Species:   id = species_4, name = IL17R, affected by kineticLaw
	xdot(58) = (1/(compartment_c1))*((-1.0 * reaction_reaction_3));
	
% Species:   id = species_3, name = IL17-IL17R, affected by kineticLaw
	xdot(59) = (1/(compartment_c1))*(( 1.0 * reaction_reaction_3));
end

function z=function_1(Vf,r1,r2,K,n,I,Vr,p), z=(Vf*r1*r2*K^n/(I^n+K^n)-Vr*p);end

function z=function_2(Vf,r1,A,n,K,Vr,p), z=(Vf*r1*(1+A^n/(A^n+K^n))-Vr*p);end

function z=function_3(Vf,r1,r2,K1,n1,I1,K2,n2,I2,Vr,p), z=(Vf*r1*r2*K1^n1/(I1^n1+K1^n1)*K2^n2/(I2^n2+K2^n2)-Vr*p);end

function z=function_4(Vf,K1,n1,I1,K2,n2,I2,A,n3,K3,Vr,p,r1,r2), z=(Vf*r1*r2*K1^n1/(I1^n1+K1^n1)*K2^n2/(I2^n2+K2^n2)*(1+A^n3/(A^n3+K3^n3))-Vr*p);end

function z=function_6(Vf,r1,K,n,I,A1,n1,K1,A2,n2,K2,A3,n3,K3,Vr,p), z=(Vf*r1*K^n/(I^n+K^n)*(A1^n1/(A1^n1+K1^n1)+A2^n2/(A2^n2+K2^n2)+A3^n3/(A3^n3+K3^n3))-Vr*p);end

function z=function_7(Vf,r1,K1,n1,I1,K2,n2,I2,K3,n3,I3,A1,n4,K4,A2,n5,K5,A3,n6,K6,Vr,p), z=(Vf*r1*K1^n1/(I1^n1+K1^n1)*K2^n2/(I2^n2+K2^n2)*K3^n3/(I3^n3+K3^n3)*(A1^n4/(A1^n4+K4^n4)+A2^n5/(A2^n5+K5^n5)+A3^n6/(A3^n6+K6^n6))-Vr*p);end

function z=function_8(Vf,r1,K1,n1,I1,K2,n2,I2,A,n3,K3,Vr,p), z=(Vf*r1*K1^n1/(I1^n1+K1^n1)*K2^n2/(I2^n2+K2^n2)*(1+A^n3/(A^n3+K3^n3))-Vr*p);end

function z=function_9(Vf,r1,A1,n1,K1,A2,n2,K2,Vr,p), z=(Vf*r1*A1^n1/(A1^n1+K1^n1)*A2^n2/(A2^n2+K2^n2)-Vr*p);end

function z=function_10(Vf,r1,K1,n1,I1,K2,n2,I2,K3,n3,I3,A1,n4,K4,A2,n5,K5,Vr,p), z=(Vf*r1*K1^n1/(I1^n1+K1^n1)*K2^n2/(I2^n2+K2^n2)*K3^n3/(I3^n3+K3^n3)*(A1^n4/(A1^n4+K4^n4)+A2^n5/(A2^n5+K5^n5))-Vr*p);end

function z=function_12(Vf,r1,K,n,I,A1,n1,K1,A2,n2,K2,A3,n3,K3,A4,n4,K4,Vr,p), z=(Vf*r1*K^n/(I^n+K^n)*(A1^n1/(A1^n1+K1^n1)+A2^n2/(A2^n2+K2^n2)+A3^n3/(A3^n3+K3^n3)+A4^n4/(A4^n4+K4^n4))-Vr*p);end

function z=function_14(Vf,r1,r2,K,n,I,A,n1,K1,Vr,p), z=(Vf*r1*r2*K^n/(I^n+K^n)*(1+A^n1/(A^n1+K1^n1))-Vr*p);end

function z=function_11(Vf,r1,K1,n1,I1,K2,n2,I2,K3,n3,I3,A1,n4,K4,A2,n5,K5,A3,n6,K6,A4,n7,K7,Vr,p), z=(Vf*r1*K1^n1/(I1^n1+K1^n1)*K2^n2/(I2^n2+K2^n2)*K3^n3/(I3^n3+K3^n3)*(A1^n4/(A1^n4+K4^n4)+A2^n5/(A2^n5+K5^n5)+A3^n6/(A3^n6+K6^n6)+A4^n7/(A4^n7+K7^n7))-Vr*p);end

function z=function_5(Vf,r1,K1,n1,I1,K2,n2,I2,A1,n3,K3,A2,n4,K4,Vr,p), z=(Vf*r1*K1^n1/(I1^n1+K1^n1)*K2^n2/(I2^n2+K2^n2)*(A1^n3/(A1^n3+K3^n3)+A2^n4/(A2^n4+K4^n4))-Vr*p);end

function z=function_13(Vf,r1,K1,n1,I1,K2,n2,I2,A1,n3,K3,A2,n4,K4,A3,n5,K5,Vr,p), z=(Vf*r1*K1^n1/(I1^n1+K1^n1)*K2^n2/(I2^n2+K2^n2)*(A1^n3/(A1^n3+K3^n3)+A2^n4/(A2^n4+K4^n4)+A3^n5/(A3^n5+K5^n5))-Vr*p);end

function z=function_15(Vf,r1,K,n,I,A1,n1,K1,Vr,p), z=(Vf*r1*K^n/(I^n+K^n)*A1^n1/(A1^n1+K1^n1)-Vr*p);end

function z=function_16(V,pool,n,ext,k), z=(V*(pool^n/(pool^n+ext^n+0.001)-k*ext));end

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


