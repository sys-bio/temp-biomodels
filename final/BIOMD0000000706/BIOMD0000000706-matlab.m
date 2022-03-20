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
% Model name = Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications (with acetylation pathway)
%
% is http://identifiers.org/biomodels.db/MODEL1112260001
% isDescribedBy http://identifiers.org/pubmed/20567500
% is http://identifiers.org/biomodels.db/BIOMD0000000706
%


function main()
%Initial conditions vector
	x0=zeros(56,1);
	x0(1) = 0.0;
	x0(2) = 6.06060606060606E13;
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
	x0(26) = 1.20481927710843E14;
	x0(27) = 0.0;
	x0(28) = 1.20481927710843E14;
	x0(29) = 0.0;
	x0(30) = 1.20481927710843E14;
	x0(31) = 0.0;
	x0(32) = 1.20481927710843E14;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 1.20481927710843E14;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 0.0;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 6.06060606060606E12;
	x0(44) = 0.0;
	x0(45) = 0.0;
	x0(46) = 0.0;
	x0(47) = 0.0;
	x0(48) = 0.0;
	x0(49) = 6.06060606060606E14;
	x0(50) = 6.06060606060606E13;
	x0(51) = 6.060606061E11;
	x0(52) = 0.0;
	x0(53) = 6.06060606060606E13;
	x0(54) = 6.06060606060606E13;
	x0(55) = 6.06060606060606E13;
	x0(56) = 1.0;


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

% Compartment: id = extracellular, name = extracellular, constant
	compartment_extracellular=8.3E-12;
% Compartment: id = cellsurface, name = cellsurface, constant
	compartment_cellsurface=6.4E-14;
% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.65E-11;
% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=5.0E-13;
% Compartment: id = dnabound, name = dnabound, constant
	compartment_dnabound=1.0E-13;
% Parameter:   id =  Metabolite_35, name = Initial for Foxo1_all
	global_par_Metabolite_35=1.20481927710843E14;
% assignmentRule: variable = Foxo1_Pa0_tot
	x(26)=(x(2)*compartment_cytoplasm+x(3)*compartment_nucleus+x(4)*compartment_dnabound+x(5)*compartment_cytoplasm+x(6)*compartment_nucleus+x(7)*compartment_dnabound+x(8)*compartment_cytoplasm+x(9)*compartment_nucleus+x(10)*compartment_dnabound+x(11)*compartment_cytoplasm+x(12)*compartment_nucleus+x(13)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = Foxo1_Pa1_tot
	x(27)=(x(14)*compartment_cytoplasm+x(15)*compartment_nucleus+x(16)*compartment_dnabound+x(17)*compartment_cytoplasm+x(18)*compartment_nucleus+x(19)*compartment_dnabound+x(20)*compartment_cytoplasm+x(21)*compartment_nucleus+x(22)*compartment_dnabound+x(23)*compartment_cytoplasm+x(24)*compartment_nucleus+x(25)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = Foxo1_Ac0_tot
	x(28)=(x(2)*compartment_cytoplasm+x(3)*compartment_nucleus+x(4)*compartment_dnabound+x(5)*compartment_cytoplasm+x(6)*compartment_nucleus+x(7)*compartment_dnabound+x(14)*compartment_cytoplasm+x(15)*compartment_nucleus+x(16)*compartment_dnabound+x(17)*compartment_cytoplasm+x(18)*compartment_nucleus+x(19)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = Foxo1_Ac1_tot
	x(29)=(x(8)*compartment_cytoplasm+x(9)*compartment_nucleus+x(10)*compartment_dnabound+x(11)*compartment_cytoplasm+x(12)*compartment_nucleus+x(13)*compartment_dnabound+x(20)*compartment_cytoplasm+x(21)*compartment_nucleus+x(22)*compartment_dnabound+x(23)*compartment_cytoplasm+x(24)*compartment_nucleus+x(25)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = Foxo1_pUb0_tot
	x(30)=(x(2)*compartment_cytoplasm+x(3)*compartment_nucleus+x(4)*compartment_dnabound+x(8)*compartment_cytoplasm+x(9)*compartment_nucleus+x(10)*compartment_dnabound+x(14)*compartment_cytoplasm+x(15)*compartment_nucleus+x(16)*compartment_dnabound+x(20)*compartment_cytoplasm+x(21)*compartment_nucleus+x(22)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = Foxo1_pUb1_tot
	x(31)=(x(5)*compartment_cytoplasm+x(6)*compartment_nucleus+x(7)*compartment_dnabound+x(11)*compartment_cytoplasm+x(12)*compartment_nucleus+x(13)*compartment_dnabound+x(17)*compartment_cytoplasm+x(18)*compartment_nucleus+x(19)*compartment_dnabound+x(23)*compartment_cytoplasm+x(24)*compartment_nucleus+x(25)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = cytoplasm_Foxo1_tot
	x(32)=(x(2)*compartment_cytoplasm+x(5)*compartment_cytoplasm+x(8)*compartment_cytoplasm+x(11)*compartment_cytoplasm+x(14)*compartment_cytoplasm+x(17)*compartment_cytoplasm+x(20)*compartment_cytoplasm+x(23)*compartment_cytoplasm)/compartment_extracellular;
% assignmentRule: variable = nucleus_Foxo1_tot
	x(33)=(x(3)*compartment_nucleus+x(6)*compartment_nucleus+x(9)*compartment_nucleus+x(12)*compartment_nucleus+x(15)*compartment_nucleus+x(18)*compartment_nucleus+x(21)*compartment_nucleus+x(24)*compartment_nucleus)/compartment_extracellular;
% assignmentRule: variable = dnabound_Foxo1_tot
	x(34)=(x(4)*compartment_dnabound+x(7)*compartment_dnabound+x(10)*compartment_dnabound+x(13)*compartment_dnabound+x(16)*compartment_dnabound+x(19)*compartment_dnabound+x(22)*compartment_dnabound+x(25)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = Foxo1_all
	x(35)=(x(32)*compartment_extracellular+x(33)*compartment_extracellular+x(34)*compartment_extracellular)/compartment_extracellular;
% assignmentRule: variable = Foxo1_all_rate
	x(56)=x(35)/global_par_Metabolite_35;

% Reaction: id = R1, name = Synthesis of Foxo1 in cytoplasm mediated by E2F1	% Local Parameter:   id =  ksynth, name = ksynth
	reaction_R1_ksynth=0.0055;

	reaction_R1=compartment_cytoplasm*Function_for_Synthesis(x(42), compartment_cytoplasm, reaction_R1_ksynth);

% Reaction: id = R2, name = transport cytoplasm_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated	% Local Parameter:   id =  ktr, name = ktr
	reaction_R2_ktr=0.181818;

	reaction_R2=Function_for_transport_cytoplasm_Foxo1_Pa0_Ac0_pUb0_to_nucleus_Foxo1_Pa0_Ac0_pUb0(compartment_cytoplasm, x(2), reaction_R2_ktr);

% Reaction: id = R3, name = transport nucleus_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated to cytoplasm	% Local Parameter:   id =  ktr, name = ktr
	reaction_R3_ktr=0.055;

	reaction_R3=Function_for_transport_nucleus_Foxo1_Pa0_Ac0_pUb0_to_cytoplasm_Foxo1_Pa0_Ac0_pUb0(reaction_R3_ktr, compartment_nucleus, x(3));

% Reaction: id = R4, name = transport nucleus_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated to dnabound	% Local Parameter:   id =  ktr, name = ktr
	reaction_R4_ktr=0.25;

	reaction_R4=Function_for_transport_nucleus_Foxo1_Pa0_Ac0_pUb0_to_dnabound_Foxo1_Pa0_Ac0_pUb0(reaction_R4_ktr, compartment_nucleus, x(3));

% Reaction: id = R5, name = transport dnabound_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated to nucleus	% Local Parameter:   id =  ktr, name = ktr
	reaction_R5_ktr=0.125;

	reaction_R5=Function_for_transport_dnabound_Foxo1_Pa0_Ac0_pUb0_to_nucleus_Foxo1_Pa0_Ac0_pUb0(compartment_dnabound, x(4), reaction_R5_ktr);

% Reaction: id = R6, name = transport cytoplasm_Foxo1_unphosphorylated_unacetylated_polyubiquitinated to nucleus	% Local Parameter:   id =  ktr, name = ktr
	reaction_R6_ktr=0.181818;

	reaction_R6=Function_for_transport_cytoplasm_Foxo1_Pa0_Ac0_pUb1_to_nucleus_Foxo1_Pa0_Ac0_pUb1(compartment_cytoplasm, x(5), reaction_R6_ktr);

% Reaction: id = R7, name = transport nucleus_Foxo1_unphosphorylated_unacetylated_polyubiquitinated to cytoplasm	% Local Parameter:   id =  ktr, name = ktr
	reaction_R7_ktr=0.055;

	reaction_R7=Function_for_transport_nucleus_Foxo1_Pa0_Ac0_pUb1_to_cytoplasm_Foxo1_Pa0_Ac0_pUb1(reaction_R7_ktr, compartment_nucleus, x(6));

% Reaction: id = R8, name = transport nucleus_Foxo1_unphosphorylated_unacetylated_polyubiquitinated to dnabound	% Local Parameter:   id =  ktr, name = ktr
	reaction_R8_ktr=0.25;

	reaction_R8=Function_for_transport_nucleus_Foxo1_Pa0_Ac0_pUb1_to_dnabound_Foxo1_Pa0_Ac0_pUb1(reaction_R8_ktr, compartment_nucleus, x(6));

% Reaction: id = R9, name = transport dnabound_Foxo1_unphosphorylated_unacetylated_polyubiquitinated to nucleus	% Local Parameter:   id =  ktr, name = ktr
	reaction_R9_ktr=0.125;

	reaction_R9=Function_for_transport_dnabound_Foxo1_Pa0_Ac0_pUb1_to_nucleus_Foxo1_Pa0_Ac0_pUb1(compartment_dnabound, x(7), reaction_R9_ktr);

% Reaction: id = R10, name = transport cytoplasm_Foxo1_unphosphorylated_acetylated_notpolyubiquitinated to nucleus	% Local Parameter:   id =  ktr, name = ktr
	reaction_R10_ktr=0.181818;

	reaction_R10=Function_for_transport_cytoplasm_Foxo1_Pa0_Ac1_pUb0_to_nucleus_Foxo1_Pa0_Ac1_pUb0(compartment_cytoplasm, x(8), reaction_R10_ktr);

% Reaction: id = R11, name = transport nucleus_Foxo1_unphosphorylated_acetylated_notpolyubiquitinated to cytoplasm	% Local Parameter:   id =  ktr, name = ktr
	reaction_R11_ktr=0.055;

	reaction_R11=Function_for_transport_nucleus_Foxo1_Pa0_Ac1_pUb0_to_cytoplasm_Foxo1_Pa0_Ac1_pUb0(reaction_R11_ktr, compartment_nucleus, x(9));

% Reaction: id = R12, name = transport nucleus_Foxo1_unphosphorylated_acetylated_notpolyubiquitinated to dnabound	% Local Parameter:   id =  ktr, name = ktr
	reaction_R12_ktr=0.125;

	reaction_R12=Function_for_transport_nucleus_Foxo1_Pa0_Ac1_pUb0_to_dnabound_Foxo1_Pa0_Ac1_pUb0(reaction_R12_ktr, compartment_nucleus, x(9));

% Reaction: id = R13, name = transport dnabound_Foxo1_unphosphorylated_acetylated_notpolyubiquitinated to nucleus	% Local Parameter:   id =  ktr, name = ktr
	reaction_R13_ktr=0.125;

	reaction_R13=Function_for_transport_dnabound_Foxo1_Pa0_Ac1_pUb0_to_nucleus_Foxo1_Pa0_Ac1_pUb0(compartment_dnabound, x(10), reaction_R13_ktr);

% Reaction: id = R14, name = transport cytoplasm_Foxo1_unphosphorylated_acetylated_npolyubiquitinated to nucleus	% Local Parameter:   id =  ktr, name = ktr
	reaction_R14_ktr=0.181818;

	reaction_R14=Function_for_transport_cytoplasm_Foxo1_Pa0_Ac1_pUb1_to_nucleus_Foxo1_Pa0_Ac1_pUb1(compartment_cytoplasm, x(11), reaction_R14_ktr);

% Reaction: id = R15, name = transport nucleus_Foxo1_unphosphorylated_acetylated_polyubiquitinated to cytoplasm	% Local Parameter:   id =  ktr, name = ktr
	reaction_R15_ktr=0.055;

	reaction_R15=Function_for_transport_nucleus_Foxo1_Pa0_Ac1_pUb1_to_cytoplasm_Foxo1_Pa0_Ac1_pUb1(reaction_R15_ktr, compartment_nucleus, x(12));

% Reaction: id = R16, name = transport nucleus_Foxo1_unphosphorylated_acetylated_polyubiquitinated to dnabound	% Local Parameter:   id =  ktr, name = ktr
	reaction_R16_ktr=0.125;

	reaction_R16=Function_for_transport_nucleus_Foxo1_Pa0_Ac1_pUb1_to_dnabound_Foxo1_Pa0_Ac1_pUb1(reaction_R16_ktr, compartment_nucleus, x(12));

% Reaction: id = R17, name = transport dnabound_Foxo1_unphosphorylated_acetylated_polyubiquitinated to nucleus	% Local Parameter:   id =  ktr, name = ktr
	reaction_R17_ktr=0.125;

	reaction_R17=Function_for_transport_dnabound_Foxo1_Pa0_Ac1_pUb1_to_nucleus_Foxo1_Pa0_Ac1_pUb1(compartment_dnabound, x(13), reaction_R17_ktr);

% Reaction: id = R18, name = transport cytoplasm_Foxo1_phosphorylated_unacetylated_notpolyubiquitinated to nucleus	% Local Parameter:   id =  ktr, name = ktr
	reaction_R18_ktr=0.0181818;

	reaction_R18=Function_for_transport_cytoplasm_Foxo1_Pa1_Ac0_pUb0_to_nucleus_Foxo1_Pa1_Ac0_pUb0(compartment_cytoplasm, x(14), reaction_R18_ktr);

% Reaction: id = R19, name = transport nucleus_Foxo1_phosphorylated_unacetylated_notpolyubiquitinated to cytoplasm	% Local Parameter:   id =  ktr, name = ktr
	reaction_R19_ktr=0.55;

	reaction_R19=Function_for_transport_nucleus_Foxo1_Pa1_Ac0_pUb0_to_cytoplasm_Foxo1_Pa1_Ac0_pUb0(reaction_R19_ktr, compartment_nucleus, x(15));

% Reaction: id = R20, name = transport nucleus_Foxo1_phosphorylated_unacetylated_notpolyubiquitinated to dnabound	% Local Parameter:   id =  ktr, name = ktr
	reaction_R20_ktr=0.125;

	reaction_R20=Function_for_transport_nucleus_Foxo1_Pa1_Ac0_pUb0_to_dnabound_Foxo1_Pa1_Ac0_pUb0(reaction_R20_ktr, compartment_nucleus, x(15));

% Reaction: id = R21, name = transport dnabound_Foxo1_phosphorylated_unacetylated_notpolyubiquitinated to nucleus	% Local Parameter:   id =  ktr, name = ktr
	reaction_R21_ktr=0.125;

	reaction_R21=Function_for_transport_dnabound_Foxo1_Pa1_Ac0_pUb0_to_nucleus_Foxo1_Pa1_Ac0_pUb0(compartment_dnabound, x(16), reaction_R21_ktr);

% Reaction: id = R22, name = transport cytoplasm_Foxo1_phosphorylated_unacetylated_polyubiquitinated to nucleus	% Local Parameter:   id =  ktr, name = ktr
	reaction_R22_ktr=0.0181818;

	reaction_R22=Function_for_transport_cytoplasm_Foxo1_Pa1_Ac0_pUb1_to_nucleus_Foxo1_Pa1_Ac0_pUb1(compartment_cytoplasm, x(17), reaction_R22_ktr);

% Reaction: id = R23, name = transport nucleus_Foxo1_phosphorylated_unacetylated_polyubiquitinated to cytoplasm	% Local Parameter:   id =  ktr, name = ktr
	reaction_R23_ktr=0.55;

	reaction_R23=Function_for_transport_nucleus_Foxo1_Pa1_Ac0_pUb1_to_cytoplasm_Foxo1_Pa1_Ac0_pUb1(reaction_R23_ktr, compartment_nucleus, x(18));

% Reaction: id = R24, name = transport nucleus_Foxo1_phosphorylated_unacetylated_polyubiquitinated to dnabound	% Local Parameter:   id =  ktr, name = ktr
	reaction_R24_ktr=0.125;

	reaction_R24=Function_for_transport_nucleus_Foxo1_Pa1_Ac0_pUb1_to_dnabound_Foxo1_Pa1_Ac0_pUb1(reaction_R24_ktr, compartment_nucleus, x(18));

% Reaction: id = R25, name = transport dnabound_Foxo1_phosphorylated_unacetylated_polyubiquitinated to nucleus	% Local Parameter:   id =  ktr, name = ktr
	reaction_R25_ktr=0.125;

	reaction_R25=Function_for_transport_dnabound_Foxo1_Pa1_Ac0_pUb1_to_nucleus_Foxo1_Pa1_Ac0_pUb1(compartment_dnabound, x(19), reaction_R25_ktr);

% Reaction: id = R26, name = transport cytoplasm_Foxo1_phosphorylated_acetylated_notpolyubiquitinated to nucleus	% Local Parameter:   id =  ktr, name = ktr
	reaction_R26_ktr=0.0181818;

	reaction_R26=Function_for_transport_cytoplasm_Foxo1_Pa1_Ac1_pUb0_to_nucleus_Foxo1_Pa1_Ac1_pUb0(compartment_cytoplasm, x(20), reaction_R26_ktr);

% Reaction: id = R27, name = transport nucleus_Foxo1_phosphorylated_acetylated_notpolyubiquitinated to cytoplasm	% Local Parameter:   id =  ktr, name = ktr
	reaction_R27_ktr=0.55;

	reaction_R27=Function_for_transport_nucleus_Foxo1_Pa1_Ac1_pUb0_to_cytoplasm_Foxo1_Pa1_Ac1_pUb0(reaction_R27_ktr, compartment_nucleus, x(21));

% Reaction: id = R28, name = transport nucleus_Foxo1_phosphorylated_acetylated_notpolyubiquitinated to dnabound	% Local Parameter:   id =  ktr, name = ktr
	reaction_R28_ktr=0.0625;

	reaction_R28=Function_for_transport_nucleus_Foxo1_Pa1_Ac1_pUb0_to_dnabound_Foxo1_Pa1_Ac1_pUb0(reaction_R28_ktr, compartment_nucleus, x(21));

% Reaction: id = R29, name = transport dnabound_Foxo1_phosphorylated_acetylated_notpolyubiquitinated to nucleus	% Local Parameter:   id =  ktr, name = ktr
	reaction_R29_ktr=0.125;

	reaction_R29=Function_for_transport_dnabound_Foxo1_Pa1_Ac1_pUb0_to_nucleus_Foxo1_Pa1_Ac1_pUb0(compartment_dnabound, x(22), reaction_R29_ktr);

% Reaction: id = R30, name = transport cytoplasm_Foxo1_phosphorylated_acetylated_polyubiquitinated to nucleus	% Local Parameter:   id =  ktr, name = ktr
	reaction_R30_ktr=0.0181818;

	reaction_R30=Function_for_transport_cytoplasm_Foxo1_Pa1_Ac1_pUb1_to_nucleus_Foxo1_Pa1_Ac1_pUb1(compartment_cytoplasm, x(23), reaction_R30_ktr);

% Reaction: id = R31, name = transport nucleus_Foxo1_phosphorylated_acetylated_polyubiquitinated to cytoplasm	% Local Parameter:   id =  ktr, name = ktr
	reaction_R31_ktr=0.55;

	reaction_R31=Function_for_transport_nucleus_Foxo1_Pa1_Ac1_pUb1_to_cytoplasm_Foxo1_Pa1_Ac1_pUb1(reaction_R31_ktr, compartment_nucleus, x(24));

% Reaction: id = R32, name = transport nucleus_Foxo1_phosphorylated_acetylated_polyubiquitinated to dnabound	% Local Parameter:   id =  ktr, name = ktr
	reaction_R32_ktr=0.0625;

	reaction_R32=Function_for_transport_nucleus_Foxo1_Pa1_Ac1_pUb1_to_dnabound_Foxo1_Pa1_Ac1_pUb1(reaction_R32_ktr, compartment_nucleus, x(24));

% Reaction: id = R33, name = transport dnabound_Foxo1_phosphorylated_acetylated_polyubiquitinated to nucleus	% Local Parameter:   id =  ktr, name = ktr
	reaction_R33_ktr=0.125;

	reaction_R33=Function_for_transport_dnabound_Foxo1_Pa1_Ac1_pUb1_to_nucleus_Foxo1_Pa1_Ac1_pUb1(compartment_dnabound, x(25), reaction_R33_ktr);

% Reaction: id = R34, name = phosphorylation of cytoplasm_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated by Akt	% Local Parameter:   id =  kkin, name = kkin
	reaction_R34_kkin=5.0E-5;

	reaction_R34=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac0_pUb0_to_cytoplasm_Foxo1_Pa1_Ac0_pUb0_by_Akt(x(43), compartment_cytoplasm, x(2), reaction_R34_kkin);

% Reaction: id = R35, name = phosphorylation of nucleus_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated by Akt	% Local Parameter:   id =  kkin, name = kkin
	reaction_R35_kkin=5.0E-5;

	reaction_R35=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb0_to_nucleus_Foxo1_Pa1_Ac0_pUb0_by_Akt(x(43), compartment_cytoplasm, reaction_R35_kkin, compartment_nucleus, x(3));

% Reaction: id = R36, name = phosphorylation of dnabound_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated by Akt	% Local Parameter:   id =  kkin, name = kkin
	reaction_R36_kkin=5.0E-5;

	reaction_R36=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb0_to_dnabound_Foxo1_Pa1_Ac0_pUb0_by_Akt(x(43), compartment_cytoplasm, compartment_dnabound, x(4), reaction_R36_kkin);

% Reaction: id = R37, name = phosphorylation of cytoplasm_Foxo1_unphosphorylated_unacetylated_polyubiquitinated by Akt	% Local Parameter:   id =  kkin, name = kkin
	reaction_R37_kkin=5.0E-5;

	reaction_R37=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac0_pUb1_to_cytoplasm_Foxo1_Pa1_Ac0_pUb1_by_Akt(x(43), compartment_cytoplasm, x(5), reaction_R37_kkin);

% Reaction: id = R38, name = phosphorylation of nucleus_Foxo1_unphosphorylated_unacetylated_polyubiquitinated by Akt	% Local Parameter:   id =  kkin, name = kkin
	reaction_R38_kkin=5.0E-5;

	reaction_R38=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb1_to_nucleus_Foxo1_Pa1_Ac0_pUb1_by_Akt(x(43), compartment_cytoplasm, reaction_R38_kkin, compartment_nucleus, x(6));

% Reaction: id = R39, name = phosphorylation of dnabound_Foxo1_unphosphorylated_unacetylated_polyubiquitinated by Akt	% Local Parameter:   id =  kkin, name = kkin
	reaction_R39_kkin=5.0E-5;

	reaction_R39=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb1_to_dnabound_Foxo1_Pa1_Ac0_pUb1_by_Akt(x(43), compartment_cytoplasm, compartment_dnabound, x(7), reaction_R39_kkin);

% Reaction: id = R40, name = phosphorylation of cytoplasm_Foxo1_unphosphorylated_acetylated_notpolyubiquitinated by Akt	% Local Parameter:   id =  kkin, name = kkin
	reaction_R40_kkin=5.0E-5;

	reaction_R40=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac1_pUb0_to_cytoplasm_Foxo1_Pa1_Ac1_pUb0_by_Akt(x(43), compartment_cytoplasm, x(8), reaction_R40_kkin);

% Reaction: id = R41, name = phosphorylation of nucleus_Foxo1_unphosphorylated_acetylated_notpolyubiquitinated by Akt	% Local Parameter:   id =  kkin, name = kkin
	reaction_R41_kkin=5.0E-5;

	reaction_R41=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb0_to_nucleus_Foxo1_Pa1_Ac1_pUb0_by_Akt(x(43), compartment_cytoplasm, reaction_R41_kkin, compartment_nucleus, x(9));

% Reaction: id = R42, name = phosphorylation of dnabound_Foxo1_unphosphorylated_acetylated_notpolyubiquitinated by Akt	% Local Parameter:   id =  kkin, name = kkin
	reaction_R42_kkin=5.0E-5;

	reaction_R42=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb0_to_dnabound_Foxo1_Pa1_Ac1_pUb0_by_Akt(x(43), compartment_cytoplasm, compartment_dnabound, x(10), reaction_R42_kkin);

% Reaction: id = R43, name = phosphorylation of ccytoplasm_Foxo1_unphosphorylated_acetylated_polyubiquitinated by Akt	% Local Parameter:   id =  kkin, name = kkin
	reaction_R43_kkin=5.0E-5;

	reaction_R43=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac1_pUb1_to_cytoplasm_Foxo1_Pa1_Ac1_pUb1_by_Akt(x(43), compartment_cytoplasm, x(11), reaction_R43_kkin);

% Reaction: id = R44, name = phosphorylation of nucleus_Foxo1_unphosphorylated_acetylated_polyubiquitinated by Akt	% Local Parameter:   id =  kkin, name = kkin
	reaction_R44_kkin=5.0E-5;

	reaction_R44=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb1_to_nucleus_Foxo1_Pa1_Ac1_pUb1_by_Akt(x(43), compartment_cytoplasm, reaction_R44_kkin, compartment_nucleus, x(12));

% Reaction: id = R45, name = phosphorylation of dnabound_Foxo1_unphosphorylated_acetylated_polyubiquitinated by Akt	% Local Parameter:   id =  kkin, name = kkin
	reaction_R45_kkin=5.0E-5;

	reaction_R45=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb1_to_dnabound_Foxo1_Pa1_Ac1_pUb1_by_Akt(x(43), compartment_cytoplasm, compartment_dnabound, x(13), reaction_R45_kkin);

% Reaction: id = R46, name = phosphorylation of cytoplasm_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R46_kkin=5.0E-5;

	reaction_R46=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac0_pUb0_to_cytoplasm_Foxo1_Pa1_Ac0_pUb0_by_SGK(x(44), compartment_cytoplasm, x(2), reaction_R46_kkin);

% Reaction: id = R47, name = phosphorylation of nucleus_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R47_kkin=5.0E-5;

	reaction_R47=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb0_to_nucleus_Foxo1_Pa1_Ac0_pUb0_by_SGK(x(44), compartment_cytoplasm, reaction_R47_kkin, compartment_nucleus, x(3));

% Reaction: id = R48, name = phosphorylation of dnabound_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R48_kkin=5.0E-5;

	reaction_R48=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb0_to_dnabound_Foxo1_Pa1_Ac0_pUb0_by_SGK(x(44), compartment_cytoplasm, compartment_dnabound, x(4), reaction_R48_kkin);

% Reaction: id = R49, name = phosphorylation of cytoplasm_Foxo1_unphosphorylated_unacetylated_polyubiquitinated by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R49_kkin=5.0E-5;

	reaction_R49=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac0_pUb1_to_cytoplasm_Foxo1_Pa1_Ac0_pUb1_by_SGK(x(44), compartment_cytoplasm, x(5), reaction_R49_kkin);

% Reaction: id = R50, name = phosphorylation of nucleus_Foxo1_unphosphorylated_unacetylated_polyubiquitinated by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R50_kkin=5.0E-5;

	reaction_R50=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb1_to_nucleus_Foxo1_Pa1_Ac0_pUb1_by_SGK(x(44), compartment_cytoplasm, reaction_R50_kkin, compartment_nucleus, x(6));

% Reaction: id = R51, name = phosphorylation of dnabound_Foxo1_unphosphorylated_unacetylated_polyubiquitinated by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R51_kkin=5.0E-5;

	reaction_R51=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb1_to_dnabound_Foxo1_Pa1_Ac0_pUb1_by_SGK(x(44), compartment_cytoplasm, compartment_dnabound, x(7), reaction_R51_kkin);

% Reaction: id = R52, name = phosphorylation of cytoplasm_Foxo1_unphosphorylated_acetylated_notpolyubiquitinated by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R52_kkin=5.0E-5;

	reaction_R52=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac1_pUb0_to_cytoplasm_Foxo1_Pa1_Ac1_pUb0_by_SGK(x(44), compartment_cytoplasm, x(8), reaction_R52_kkin);

% Reaction: id = R53, name = phosphorylation of nucleus_Foxo1_unphosphorylated_acetylated_notpolyubiquitinated by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R53_kkin=5.0E-5;

	reaction_R53=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb0_to_nucleus_Foxo1_Pa1_Ac1_pUb0_by_SGK(x(44), compartment_cytoplasm, reaction_R53_kkin, compartment_nucleus, x(9));

% Reaction: id = R54, name = phosphorylation of dnabound_Foxo1_Punphosphorylated_acetylated_notpolyubiquitinated by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R54_kkin=5.0E-5;

	reaction_R54=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb0_to_dnabound_Foxo1_Pa1_Ac1_pUb0_by_SGK(x(44), compartment_cytoplasm, compartment_dnabound, x(10), reaction_R54_kkin);

% Reaction: id = R55, name = phosphorylation of cytoplasm_Foxo1_unphosphorylated_acetylated_polyubiquitinated by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R55_kkin=5.0E-5;

	reaction_R55=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac1_pUb1_to_cytoplasm_Foxo1_Pa1_Ac1_pUb1_by_SGK(x(44), compartment_cytoplasm, x(11), reaction_R55_kkin);

% Reaction: id = R56, name = phosphorylation of nucleus_Foxo1_unphosphorylated_acetylated_polyubiquitinated by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R56_kkin=5.0E-5;

	reaction_R56=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb1_to_nucleus_Foxo1_Pa1_Ac1_pUb1_by_SGK(x(44), compartment_cytoplasm, reaction_R56_kkin, compartment_nucleus, x(12));

% Reaction: id = R57, name = phosphorylation of dnabound_Foxo1_unphosphorylated_acetylated_polyubiquitinated by SGK	% Local Parameter:   id =  kkin, name = kkin
	reaction_R57_kkin=5.0E-5;

	reaction_R57=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb1_to_dnabound_Foxo1_Pa1_Ac1_pUb1_by_SGK(x(44), compartment_cytoplasm, compartment_dnabound, x(13), reaction_R57_kkin);

% Reaction: id = R58, name = dephosphorylation of cytoplasm_Foxo1_phosphorylated_unacetylated_notpolyubiquitinated by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R58_kdephos=5.0E-5;

	reaction_R58=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa1_Ac0_pUb0_to_cytoplasm_Foxo1_Pa0_Ac0_pUb0_by_PP2A(x(49), compartment_cytoplasm, x(14), reaction_R58_kdephos);

% Reaction: id = R59, name = dephosphorylation of nucleus_Foxo1_phosphorylated_unacetylated_notpolyubiquitinated by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R59_kdephos=5.0E-5;

	reaction_R59=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac0_pUb0_to_nucleus_Foxo1_Pa0_Ac0_pUb0_by_PP2A(x(49), compartment_cytoplasm, reaction_R59_kdephos, compartment_nucleus, x(15));

% Reaction: id = R60, name = dephosphorylation of dnabound_Foxo1_phosphorylated_unacetylated_notpolyubiquitinated by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R60_kdephos=5.0E-5;

	reaction_R60=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac0_pUb0_to_dnabound_Foxo1_Pa0_Ac0_pUb0_by_PP2A(x(49), compartment_cytoplasm, compartment_dnabound, x(16), reaction_R60_kdephos);

% Reaction: id = R61, name = dephosphorylation of cytoplasm_Foxo1_phosphorylated_unacetylated_polyubiquitinated by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R61_kdephos=5.0E-5;

	reaction_R61=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa1_Ac0_pUb1_to_cytoplasm_Foxo1_Pa0_Ac0_pUb1_by_PP2A(x(49), compartment_cytoplasm, x(17), reaction_R61_kdephos);

% Reaction: id = R62, name = dephosphorylation of nucleus_Foxo1_phosphorylated_unacetylated_polyubiquitinated by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R62_kdephos=5.0E-5;

	reaction_R62=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac0_pUb1_to_nucleus_Foxo1_Pa0_Ac0_pUb1_by_PP2A(x(49), compartment_cytoplasm, reaction_R62_kdephos, compartment_nucleus, x(18));

% Reaction: id = R63, name = dephosphorylation of dnabound_Foxo1_phosphorylated_unacetylated_polyubiquitinated by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R63_kdephos=5.0E-5;

	reaction_R63=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac0_pUb1_to_dnabound_Foxo1_Pa0_Ac0_pUb1_by_PP2A(x(49), compartment_cytoplasm, compartment_dnabound, x(19), reaction_R63_kdephos);

% Reaction: id = R64, name = dephosphorylation of cytoplasm_Foxo1_phosphorylated_acetylated_notpolyubiquitinated by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R64_kdephos=5.0E-5;

	reaction_R64=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa1_Ac1_pUb0_to_cytoplasm_Foxo1_Pa0_Ac1_pUb0_by_PP2A(x(49), compartment_cytoplasm, x(20), reaction_R64_kdephos);

% Reaction: id = R65, name = dephosphorylation of nucleus_Foxo1_phosphorylated_acetylated_notpolyubiquitinated by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R65_kdephos=5.0E-5;

	reaction_R65=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac1_pUb0_to_nucleus_Foxo1_Pa0_Ac1_pUb0_by_PP2A(x(49), compartment_cytoplasm, reaction_R65_kdephos, compartment_nucleus, x(21));

% Reaction: id = R66, name = dephosphorylation of dnabound_Foxo1_phosphorylated_acetylated_notpolyubiquitinated by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R66_kdephos=5.0E-5;

	reaction_R66=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac1_pUb0_to_dnabound_Foxo1_Pa0_Ac1_pUb0_by_PP2A(x(49), compartment_cytoplasm, compartment_dnabound, x(22), reaction_R66_kdephos);

% Reaction: id = R67, name = dephosphorylation of cytoplasm_Foxo1_phosphorylated_acetylated_polyubiquitinated by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R67_kdephos=5.0E-5;

	reaction_R67=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa1_Ac1_pUb1_to_cytoplasm_Foxo1_Pa0_Ac1_pUb1_by_PP2A(x(49), compartment_cytoplasm, x(23), reaction_R67_kdephos);

% Reaction: id = R68, name = dephosphorylation of nucleus_Foxo1_phosphorylated_acetylated_polyubiquitinated by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R68_kdephos=5.0E-5;

	reaction_R68=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac1_pUb1_to_nucleus_Foxo1_Pa0_Ac1_pUb1_by_PP2A(x(49), compartment_cytoplasm, reaction_R68_kdephos, compartment_nucleus, x(24));

% Reaction: id = R69, name = dephosphorylation of dnabound_Foxo1_phosphorylated_acetylated_polyubiquitinated by PP2A	% Local Parameter:   id =  kdephos, name = kdephos
	reaction_R69_kdephos=5.0E-5;

	reaction_R69=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac1_pUb1_to_dnabound_Foxo1_Pa0_Ac1_pUb1_by_PP2A(x(49), compartment_cytoplasm, compartment_dnabound, x(25), reaction_R69_kdephos);

% Reaction: id = R70, name = acetylation of nucleus_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated by CBPP300	% Local Parameter:   id =  kacet, name = kacet
	reaction_R70_kacet=1.0E-4;

	reaction_R70=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb0_to_nucleus_Foxo1_Pa0_Ac1_pUb0_by_CBPP300(x(50), compartment_cytoplasm, reaction_R70_kacet, compartment_nucleus, x(3));

% Reaction: id = R71, name = acetylation of dnabound_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated by CBPP300	% Local Parameter:   id =  kacet, name = kacet
	reaction_R71_kacet=1.0E-4;

	reaction_R71=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb0_to_dnabound_Foxo1_Pa0_Ac1_pUb0_by_CBPP300(x(50), compartment_cytoplasm, compartment_dnabound, x(4), reaction_R71_kacet);

% Reaction: id = R72, name = acetylation of nucleus_Foxo1_unphosphorylated_unacetylated_polyubiquitinated by CBPP300	% Local Parameter:   id =  kacet, name = kacet
	reaction_R72_kacet=1.0E-4;

	reaction_R72=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb1_to_nucleus_Foxo1_Pa0_Ac1_pUb1_by_CBPP300(x(50), compartment_cytoplasm, reaction_R72_kacet, compartment_nucleus, x(6));

% Reaction: id = R73, name = acetylation of dnabound_Foxo1_unphosphorylated_unacetylated_polyubiquitinated by CBPP300	% Local Parameter:   id =  kacet, name = kacet
	reaction_R73_kacet=1.0E-4;

	reaction_R73=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb1_to_dnabound_Foxo1_Pa0_Ac1_pUb1_by_CBPP300(x(50), compartment_cytoplasm, compartment_dnabound, x(7), reaction_R73_kacet);

% Reaction: id = R74, name = deacetylation of nucleus_Foxo1unphosphorylated_acetylated_notpolyubiquitinated by SIRT1	% Local Parameter:   id =  kdeac, name = kdeac
	reaction_R74_kdeac=1.0E-4;

	reaction_R74=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb0_to_nucleus_Foxo1_Pa0_Ac0_pUb0_by_SIRT1(x(51), compartment_cytoplasm, reaction_R74_kdeac, compartment_nucleus, x(9));

% Reaction: id = R75, name = deacetylation of dnabound_Foxo1_unphosphorylated_acetylated_notpolyubiquitinated by SIRT1	% Local Parameter:   id =  kdeac, name = kdeac
	reaction_R75_kdeac=1.0E-4;

	reaction_R75=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb0_to_dnabound_Foxo1_Pa0_Ac0_pUb0_by_SIRT1(x(51), compartment_cytoplasm, compartment_dnabound, x(10), reaction_R75_kdeac);

% Reaction: id = R76, name = deacetylation of nucleus_Foxo1_unphosphorylated_acetylated_polyubiquitinated by SIRT1	% Local Parameter:   id =  kdeac, name = kdeac
	reaction_R76_kdeac=1.0E-4;

	reaction_R76=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb1_to_nucleus_Foxo1_Pa0_Ac0_pUb1_by_SIRT1(x(51), compartment_cytoplasm, reaction_R76_kdeac, compartment_nucleus, x(12));

% Reaction: id = R77, name = deacetylation of dnabound_Foxo1_unphosphorylated_acetylated_polyubiquitinated by SIRT1	% Local Parameter:   id =  kdeac, name = kdeac
	reaction_R77_kdeac=1.0E-4;

	reaction_R77=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb1_to_dnabound_Foxo1_Pa0_Ac0_pUb1_by_SIRT1(x(51), compartment_cytoplasm, compartment_dnabound, x(13), reaction_R77_kdeac);

% Reaction: id = R78, name = acetylation of nucleus_Foxo1_phosphorylated_unacetylated_notpolyubiquitinated by CBPP300	% Local Parameter:   id =  kacet, name = kacet
	reaction_R78_kacet=1.0E-4;

	reaction_R78=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac0_pUb0_to_nucleus_Foxo1_Pa1_Ac1_pUb0_by_CBPP300(x(50), compartment_cytoplasm, reaction_R78_kacet, compartment_nucleus, x(15));

% Reaction: id = R79, name = acetylation of dnabound_Foxo1_phosphorylated_unacetylated_notpolyubiquitinated by CBPP300	% Local Parameter:   id =  kacet, name = kacet
	reaction_R79_kacet=1.0E-4;

	reaction_R79=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac0_pUb0_to_dnabound_Foxo1_Pa1_Ac1_pUb0_by_CBPP300(x(50), compartment_cytoplasm, compartment_dnabound, x(16), reaction_R79_kacet);

% Reaction: id = R80, name = acetylation of nucleus_Foxo1_phosphorylated_unacetylated_polyubiquitinated by CBPP300	% Local Parameter:   id =  kacet, name = kacet
	reaction_R80_kacet=1.0E-4;

	reaction_R80=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac0_pUb1_to_nucleus_Foxo1_Pa1_Ac1_pUb1_by_CBPP300(x(50), compartment_cytoplasm, reaction_R80_kacet, compartment_nucleus, x(18));

% Reaction: id = R81, name = acetylation of dnabound_Foxo1_phosphorylated_unacetylated_polyubiquitinated by CBPP300	% Local Parameter:   id =  kacet, name = kacet
	reaction_R81_kacet=1.0E-4;

	reaction_R81=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac0_pUb1_to_dnabound_Foxo1_Pa1_Ac1_pUb1_by_CBPP300(x(50), compartment_cytoplasm, compartment_dnabound, x(19), reaction_R81_kacet);

% Reaction: id = R82, name = deacetylation of nucleus_Foxo1_phosphorylated_acetylated_notpolyubiquitinated by SIRT1	% Local Parameter:   id =  kdeac, name = kdeac
	reaction_R82_kdeac=1.0E-4;

	reaction_R82=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac1_pUb0_to_nucleus_Foxo1_Pa1_Ac0_pUb0_by_SIRT1(x(51), compartment_cytoplasm, reaction_R82_kdeac, compartment_nucleus, x(21));

% Reaction: id = R83, name = deacetylation of dnabound_Foxo1_phosphorylated_acetylated_notpolyubiquitinated by SIRT1	% Local Parameter:   id =  kdeac, name = kdeac
	reaction_R83_kdeac=1.0E-4;

	reaction_R83=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac1_pUb0_to_dnabound_Foxo1_Pa1_Ac0_pUb0_by_SIRT1(x(51), compartment_cytoplasm, compartment_dnabound, x(22), reaction_R83_kdeac);

% Reaction: id = R84, name = deacetylation of nucleus_Foxo1_phosphorylated_acetylated_polyubiquitinated by SIRT1	% Local Parameter:   id =  kdeac, name = kdeac
	reaction_R84_kdeac=1.0E-4;

	reaction_R84=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac1_pUb1_to_nucleus_Foxo1_Pa1_Ac0_pUb1_by_SIRT1(x(51), compartment_cytoplasm, reaction_R84_kdeac, compartment_nucleus, x(24));

% Reaction: id = R85, name = deacetylation of dnabound_Foxo1_phosphorylated_acetylated_polyubiquitinated by SIRT1	% Local Parameter:   id =  kdeac, name = kdeac
	reaction_R85_kdeac=1.0E-4;

	reaction_R85=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac1_pUb1_to_dnabound_Foxo1_Pa1_Ac0_pUb1_by_SIRT1(x(51), compartment_cytoplasm, compartment_dnabound, x(25), reaction_R85_kdeac);

% Reaction: id = R86, name = polyubiquitination of cytoplasm_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R86_kub=1.0E-6;

	reaction_R86=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac0_pUb0_to_cytoplasm_Foxo1_Pa0_Ac0_pUb1_by_SCF(x(54), compartment_cytoplasm, x(2), reaction_R86_kub);

% Reaction: id = R87, name = polyubiquitination of nucleus_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R87_kub=1.0E-6;

	reaction_R87=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb0_to_nucleus_Foxo1_Pa0_Ac0_pUb1_by_SCF(x(54), compartment_cytoplasm, reaction_R87_kub, compartment_nucleus, x(3));

% Reaction: id = R88, name = polyubiquitination of dnabound_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R88_kub=1.0E-6;

	reaction_R88=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb0_to_dnabound_Foxo1_Pa0_Ac0_pUb1_by_SCF(x(54), compartment_cytoplasm, compartment_dnabound, x(4), reaction_R88_kub);

% Reaction: id = R89, name = polyubiquitination of cytoplasm_Foxo1_unphosphorylated_acetylated_notpolyubiquitinated by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R89_kub=3.33333E-8;

	reaction_R89=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac1_pUb0_to_cytoplasm_Foxo1_Pa0_Ac1_pUb1_by_SCF(x(54), compartment_cytoplasm, x(8), reaction_R89_kub);

% Reaction: id = R90, name = polyubiquitination of nucleus_Foxo1_unphosphorylated_acetylated_notpolyubiquitinated by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R90_kub=3.33333E-8;

	reaction_R90=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb0_to_nucleus_Foxo1_Pa0_Ac1_pUb1_by_SCF(x(54), compartment_cytoplasm, reaction_R90_kub, compartment_nucleus, x(9));

% Reaction: id = R91, name = polyubiquitination of dnabound_Foxo1_unphosphorylated_acetylated_notpolyubiquitinated by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R91_kub=3.33333E-8;

	reaction_R91=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb0_to_dnabound_Foxo1_Pa0_Ac1_pUb1_by_SCF(x(54), compartment_cytoplasm, compartment_dnabound, x(10), reaction_R91_kub);

% Reaction: id = R92, name = polyubiquitination of cytoplasm_Foxo1_phosphorylated_unacetylated_notpolyubiquitinated by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R92_kub=3.0E-6;

	reaction_R92=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa1_Ac0_pUb0_to_cytoplasm_Foxo1_Pa1_Ac0_pUb1_by_SCF(x(54), compartment_cytoplasm, x(14), reaction_R92_kub);

% Reaction: id = R93, name = polyubiquitination of nucleus_Foxo1_phosphorylated_unacetylated_notpolyubiquitinated by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R93_kub=3.0E-6;

	reaction_R93=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac0_pUb0_to_nucleus_Foxo1_Pa1_Ac0_pUb1_by_SCF(x(54), compartment_cytoplasm, reaction_R93_kub, compartment_nucleus, x(15));

% Reaction: id = R94, name = polyubiquitination of dnabound_Foxo1_phosphorylated_unacetylated_notpolyubiquitinated by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R94_kub=3.0E-6;

	reaction_R94=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac0_pUb0_to_dnabound_Foxo1_Pa1_Ac0_pUb1_by_SCF(x(54), compartment_cytoplasm, compartment_dnabound, x(16), reaction_R94_kub);

% Reaction: id = R95, name = polyubiquitination of cytoplasm_Foxo1_phosphorylated_acetylated_notpolyubiquitinated by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R95_kub=1.0E-7;

	reaction_R95=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa1_Ac1_pUb0_to_cytoplasm_Foxo1_Pa1_Ac1_pUb1_by_SCF(x(54), compartment_cytoplasm, x(20), reaction_R95_kub);

% Reaction: id = R96, name = polyubiquitination of nucleus_Foxo1phosphorylated_acetylated_notpolyubiquitinated by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R96_kub=1.0E-7;

	reaction_R96=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac1_pUb0_to_nucleus_Foxo1_Pa1_Ac1_pUb1_by_SCF(x(54), compartment_cytoplasm, reaction_R96_kub, compartment_nucleus, x(21));

% Reaction: id = R97, name = polyubiquitination of dnabound_Foxo1_phosphorylated_acetylated_notpolyubiquitinated by SCF	% Local Parameter:   id =  kub, name = kub
	reaction_R97_kub=1.0E-7;

	reaction_R97=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac1_pUb0_to_dnabound_Foxo1_Pa1_Ac1_pUb1_by_SCF(x(54), compartment_cytoplasm, compartment_dnabound, x(22), reaction_R97_kub);

% Reaction: id = R98, name = degradation of cytoplasm_Foxo1_Pa0_Ac0_pUb1	% Local Parameter:   id =  kdeg, name = kdeg
	reaction_R98_kdeg=1.0E-4;

	reaction_R98=compartment_cytoplasm*Function_for_degradation_of_cytoplasm_Foxo1_Pa0_Ac0_pUb1(x(55), compartment_cytoplasm, x(5), reaction_R98_kdeg);

% Reaction: id = R99, name = degradation of cytoplasm_Foxo1_Pa0_Ac1_pUb1	% Local Parameter:   id =  kdeg, name = kdeg
	reaction_R99_kdeg=1.0E-4;

	reaction_R99=compartment_cytoplasm*Function_for_degradation_of_cytoplasm_Foxo1_Pa0_Ac1_pUb1(x(55), compartment_cytoplasm, x(11), reaction_R99_kdeg);

% Reaction: id = R100, name = degradation of cytoplasm_Foxo1_Pa1_Ac0_pUb1	% Local Parameter:   id =  kdeg, name = kdeg
	reaction_R100_kdeg=1.0E-4;

	reaction_R100=compartment_cytoplasm*Function_for_degradation_of_cytoplasm_Foxo1_Pa1_Ac0_pUb1(x(55), compartment_cytoplasm, x(17), reaction_R100_kdeg);

% Reaction: id = R101, name = degradation of cytoplasm_Foxo1_Pa1_Ac1_pUb1	% Local Parameter:   id =  kdeg, name = kdeg
	reaction_R101_kdeg=1.0E-4;

	reaction_R101=compartment_cytoplasm*Function_for_degradation_of_cytoplasm_Foxo1_Pa1_Ac1_pUb1(x(55), compartment_cytoplasm, x(23), reaction_R101_kdeg);

% Reaction: id = R102, name = transcription of inr by dnabound_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R102_ktranscr=0.3;

	reaction_R102=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa0_Ac0_pUb0(compartment_dnabound, x(4), reaction_R102_ktranscr);

% Reaction: id = R103, name = transcription of sod2 by dnabound_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R103_ktranscr=0.3;

	reaction_R103=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa0_Ac0_pUb0(compartment_dnabound, x(4), reaction_R103_ktranscr);

% Reaction: id = R104, name = transcription of inr by dnabound_Foxo1_unphosphorylated_unacetylated_polyubiquitinated	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R104_ktranscr=0.3;

	reaction_R104=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa0_Ac0_pUb1(compartment_dnabound, x(7), reaction_R104_ktranscr);

% Reaction: id = R105, name = transcription of sod2 by dnabound_Foxo1_unphosphorylated_unacetylated_polyubiquitinated	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R105_ktranscr=0.3;

	reaction_R105=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa0_Ac0_pUb1(compartment_dnabound, x(7), reaction_R105_ktranscr);

% Reaction: id = R106, name = transcription of inr by dnabound_Foxo1_unphosphorylated_acetylated_notpolyubiquitinated	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R106_ktranscr=0.3;

	reaction_R106=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa0_Ac1_pUb0(compartment_dnabound, x(10), reaction_R106_ktranscr);

% Reaction: id = R107, name = transcription of sod2 by dnabound_Foxo1_unphosphorylated_acetylated_notpolyubiquitinated	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R107_ktranscr=0.3;

	reaction_R107=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa0_Ac1_pUb0(compartment_dnabound, x(10), reaction_R107_ktranscr);

% Reaction: id = R108, name = transcription of inr by dnabound_Foxo1_unphosphorylated_acetylated_polyubiquitinated	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R108_ktranscr=0.3;

	reaction_R108=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa0_Ac1_pUb1(compartment_dnabound, x(13), reaction_R108_ktranscr);

% Reaction: id = R109, name = transcription of sod2 by dnabound_Foxo1_unphosphorylated_acetylated_polyubiquitinated	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R109_ktranscr=0.3;

	reaction_R109=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa0_Ac1_pUb1(compartment_dnabound, x(13), reaction_R109_ktranscr);

% Reaction: id = R110, name = transcription of inr by dnabound_Foxo1_phosphorylated_unacetylated_notpolyubiquitinated	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R110_ktranscr=0.3;

	reaction_R110=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa1_Ac0_pUb0(compartment_dnabound, x(16), reaction_R110_ktranscr);

% Reaction: id = R111, name = transcription of sod2 by dnabound_Foxo1_phosphorylated_unacetylated_notpolyubiquitinated	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R111_ktranscr=0.3;

	reaction_R111=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa1_Ac0_pUb0(compartment_dnabound, x(16), reaction_R111_ktranscr);

% Reaction: id = R112, name = transcription of inr by dnabound_Foxo1_phosphorylated_unacetylated_polyubiquitinated	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R112_ktranscr=0.3;

	reaction_R112=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa1_Ac0_pUb1(compartment_dnabound, x(19), reaction_R112_ktranscr);

% Reaction: id = R113, name = transcription of sod2 by dnabound_Foxo1_phosphorylated_unacetylated_polyubiquitinated	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R113_ktranscr=0.3;

	reaction_R113=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa1_Ac0_pUb1(compartment_dnabound, x(19), reaction_R113_ktranscr);

% Reaction: id = R114, name = transcription of inr by dnabound_Foxo1_phosphorylated_acetylated_notpolyubiquitinated	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R114_ktranscr=0.3;

	reaction_R114=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa1_Ac1_pUb0(compartment_dnabound, x(22), reaction_R114_ktranscr);

% Reaction: id = R115, name = transcription of sod2 by dnabound_Foxo1_phosphorylated_acetylated_notpolyubiquitinated	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R115_ktranscr=0.3;

	reaction_R115=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa1_Ac1_pUb0(compartment_dnabound, x(22), reaction_R115_ktranscr);

% Reaction: id = R116, name = transcription of inr by dnabound_Foxo1_phosphorylated_acetylated_polyubiquitinated	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R116_ktranscr=0.3;

	reaction_R116=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa1_Ac1_pUb1(compartment_dnabound, x(25), reaction_R116_ktranscr);

% Reaction: id = R117, name = transcription of sod2 by dnabound_Foxo1_phosphorylated_acetylated_polyubiquitinated	% Local Parameter:   id =  ktranscr, name = ktranscr
	reaction_R117_ktranscr=0.3;

	reaction_R117=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa1_Ac1_pUb1(compartment_dnabound, x(25), reaction_R117_ktranscr);

% Reaction: id = R119, name = export of inr RNA	% Local Parameter:   id =  kexp, name = kexp
	reaction_R119_kexp=0.22;

	reaction_R119=Function_for_export_of_inr_RNA(reaction_R119_kexp, compartment_nucleus, x(36));

% Reaction: id = R120, name = cyto degr of inr RNA	% Local Parameter:   id =  kmdeg, name = kmdeg
	reaction_R120_kmdeg=5.622;

	reaction_R120=compartment_cytoplasm*Function_for_cyto_degr_of_inr_RNA(compartment_cytoplasm, x(37), reaction_R120_kmdeg);

% Reaction: id = R121, name = translation of inr	% Local Parameter:   id =  ktransl, name = ktransl
	reaction_R121_ktransl=1.23;

	reaction_R121=compartment_cytoplasm*Function_for_translation_of_inr(compartment_cytoplasm, x(37), reaction_R121_ktransl);

% Reaction: id = R122, name = degradation of Inr protein	% Local Parameter:   id =  kpdeg, name = kpdeg
	reaction_R122_kpdeg=0.0019;

	reaction_R122=compartment_cytoplasm*Function_for_degradation_of_Inr_protein(compartment_cytoplasm, x(38), reaction_R122_kpdeg);

% Reaction: id = R124, name = export of sod2 RNA	% Local Parameter:   id =  kexp, name = kexp
	reaction_R124_kexp=0.22;

	reaction_R124=Function_for_export_of_sod2_RNA(reaction_R124_kexp, compartment_nucleus, x(39));

% Reaction: id = R125, name = cyto degr of sod2 RNA	% Local Parameter:   id =  kmdeg, name = kmdeg
	reaction_R125_kmdeg=5.622;

	reaction_R125=compartment_cytoplasm*Function_for_cyto_degr_of_sod2_RNA(compartment_cytoplasm, x(40), reaction_R125_kmdeg);

% Reaction: id = R126, name = translation of sod2	% Local Parameter:   id =  ktransl, name = ktransl
	reaction_R126_ktransl=1.23;

	reaction_R126=compartment_cytoplasm*Function_for_translation_of_sod2(compartment_cytoplasm, x(40), reaction_R126_ktransl);

% Reaction: id = R127, name = degradation of Sod2 protein	% Local Parameter:   id =  kpdeg, name = kpdeg
	reaction_R127_kpdeg=0.0019;

	reaction_R127=compartment_cytoplasm*Function_for_degradation_of_Sod2_protein(compartment_cytoplasm, x(41), reaction_R127_kpdeg);

% Species:   id = null, name = null, constant	const_species_null=0.0;

%Event: id=event_0000001
	event_event_0000001=time >= 60;

	if(event_event_0000001) 
		x(43)=100000/compartment_cytoplasm;
	end

	xdot=zeros(56,1);
	
% Species:   id = degr_Foxo1, name = degr_Foxo1, affected by kineticLaw
	xdot(1) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R98) + ( 1.0 * reaction_R99) + ( 1.0 * reaction_R100) + ( 1.0 * reaction_R101));
	
% Species:   id = cytoplasm_Foxo1_Pa0_Ac0_pUb0, name = cytoplasm_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated, affected by kineticLaw
	xdot(2) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + ( 1.0 * reaction_R3) + (-1.0 * reaction_R34) + (-1.0 * reaction_R46) + ( 1.0 * reaction_R58) + (-1.0 * reaction_R86));
	
% Species:   id = nucleus_Foxo1_Pa0_Ac0_pUb0, name = nucleus_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated, affected by kineticLaw
	xdot(3) = (1/(compartment_nucleus))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R4) + ( 1.0 * reaction_R5) + (-1.0 * reaction_R35) + (-1.0 * reaction_R47) + ( 1.0 * reaction_R59) + (-1.0 * reaction_R70) + ( 1.0 * reaction_R74) + (-1.0 * reaction_R87));
	
% Species:   id = dnabound_Foxo1_Pa0_Ac0_pUb0, name = dnabound_Foxo1_unphosphorylated_unacetylated_notpolyubiquitinated, affected by kineticLaw
	xdot(4) = (1/(compartment_dnabound))*(( 1.0 * reaction_R4) + (-1.0 * reaction_R5) + (-1.0 * reaction_R36) + (-1.0 * reaction_R48) + ( 1.0 * reaction_R60) + (-1.0 * reaction_R71) + ( 1.0 * reaction_R75) + (-1.0 * reaction_R88));
	
% Species:   id = cytoplasm_Foxo1_Pa0_Ac0_pUb1, name = cytoplasm_Foxo1_unphosphorylated_unacetylated_polyubiquitinated, affected by kineticLaw
	xdot(5) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R6) + ( 1.0 * reaction_R7) + (-1.0 * reaction_R37) + (-1.0 * reaction_R49) + ( 1.0 * reaction_R61) + ( 1.0 * reaction_R86) + (-1.0 * reaction_R98));
	
% Species:   id = nucleus_Foxo1_Pa0_Ac0_pUb1, name = nucleus_Foxo1_unphosphorylated_unacetylated_polyubiquitinated, affected by kineticLaw
	xdot(6) = (1/(compartment_nucleus))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R7) + (-1.0 * reaction_R8) + ( 1.0 * reaction_R9) + (-1.0 * reaction_R38) + (-1.0 * reaction_R50) + ( 1.0 * reaction_R62) + (-1.0 * reaction_R72) + ( 1.0 * reaction_R76) + ( 1.0 * reaction_R87));
	
% Species:   id = dnabound_Foxo1_Pa0_Ac0_pUb1, name = dnabound_Foxo1_unphosphorylated_unacetylated_polyubiquitinated, affected by kineticLaw
	xdot(7) = (1/(compartment_dnabound))*(( 1.0 * reaction_R8) + (-1.0 * reaction_R9) + (-1.0 * reaction_R39) + (-1.0 * reaction_R51) + ( 1.0 * reaction_R63) + (-1.0 * reaction_R73) + ( 1.0 * reaction_R77) + ( 1.0 * reaction_R88));
	
% Species:   id = cytoplasm_Foxo1_Pa0_Ac1_pUb0, name = cytoplasm_Foxo1_unphosphorylated_acetylated_notpolyubiquitinated, affected by kineticLaw
	xdot(8) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R10) + ( 1.0 * reaction_R11) + (-1.0 * reaction_R40) + (-1.0 * reaction_R52) + ( 1.0 * reaction_R64) + (-1.0 * reaction_R89));
	
% Species:   id = nucleus_Foxo1_Pa0_Ac1_pUb0, name = nucleus_Foxo1_unphosphorylated_acetylated_notpolyubiquitinated, affected by kineticLaw
	xdot(9) = (1/(compartment_nucleus))*(( 1.0 * reaction_R10) + (-1.0 * reaction_R11) + (-1.0 * reaction_R12) + ( 1.0 * reaction_R13) + (-1.0 * reaction_R41) + (-1.0 * reaction_R53) + ( 1.0 * reaction_R65) + ( 1.0 * reaction_R70) + (-1.0 * reaction_R74) + (-1.0 * reaction_R90));
	
% Species:   id = dnabound_Foxo1_Pa0_Ac1_pUb0, name = dnabound_Foxo1_unphosphorylated_acetylated_notpolyubiquitinated, affected by kineticLaw
	xdot(10) = (1/(compartment_dnabound))*(( 1.0 * reaction_R12) + (-1.0 * reaction_R13) + (-1.0 * reaction_R42) + (-1.0 * reaction_R54) + ( 1.0 * reaction_R66) + ( 1.0 * reaction_R71) + (-1.0 * reaction_R75) + (-1.0 * reaction_R91));
	
% Species:   id = cytoplasm_Foxo1_Pa0_Ac1_pUb1, name = cytoplasm_Foxo1_unphosphorylated_acetylated_polyubiquitinated, affected by kineticLaw
	xdot(11) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R14) + ( 1.0 * reaction_R15) + (-1.0 * reaction_R43) + (-1.0 * reaction_R55) + ( 1.0 * reaction_R67) + ( 1.0 * reaction_R89) + (-1.0 * reaction_R99));
	
% Species:   id = nucleus_Foxo1_Pa0_Ac1_pUb1, name = nucleus_Foxo1_unphosphorylated_acetylated_polyubiquitinated, affected by kineticLaw
	xdot(12) = (1/(compartment_nucleus))*(( 1.0 * reaction_R14) + (-1.0 * reaction_R15) + (-1.0 * reaction_R16) + ( 1.0 * reaction_R17) + (-1.0 * reaction_R44) + (-1.0 * reaction_R56) + ( 1.0 * reaction_R68) + ( 1.0 * reaction_R72) + (-1.0 * reaction_R76) + ( 1.0 * reaction_R90));
	
% Species:   id = dnabound_Foxo1_Pa0_Ac1_pUb1, name = dnabound_Foxo1_unphosphorylated_acetylated_polyubiquitinated, affected by kineticLaw
	xdot(13) = (1/(compartment_dnabound))*(( 1.0 * reaction_R16) + (-1.0 * reaction_R17) + (-1.0 * reaction_R45) + (-1.0 * reaction_R57) + ( 1.0 * reaction_R69) + ( 1.0 * reaction_R73) + (-1.0 * reaction_R77) + ( 1.0 * reaction_R91));
	
% Species:   id = cytoplasm_Foxo1_Pa1_Ac0_pUb0, name = cytoplasm_Foxo1_phosphorylated_unacetylated_notpolyubiquitinated, affected by kineticLaw
	xdot(14) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R18) + ( 1.0 * reaction_R19) + ( 1.0 * reaction_R34) + ( 1.0 * reaction_R46) + (-1.0 * reaction_R58) + (-1.0 * reaction_R92));
	
% Species:   id = nucleus_Foxo1_Pa1_Ac0_pUb0, name = nucleus_Foxo1_phosphorylated_unacetylated_notpolyubiquitinated, affected by kineticLaw
	xdot(15) = (1/(compartment_nucleus))*(( 1.0 * reaction_R18) + (-1.0 * reaction_R19) + (-1.0 * reaction_R20) + ( 1.0 * reaction_R21) + ( 1.0 * reaction_R35) + ( 1.0 * reaction_R47) + (-1.0 * reaction_R59) + (-1.0 * reaction_R78) + ( 1.0 * reaction_R82) + (-1.0 * reaction_R93));
	
% Species:   id = dnabound_Foxo1_Pa1_Ac0_pUb0, name = dnabound_Foxo1_phosphorylated_unacetylated_notpolyubiquitinated, affected by kineticLaw
	xdot(16) = (1/(compartment_dnabound))*(( 1.0 * reaction_R20) + (-1.0 * reaction_R21) + ( 1.0 * reaction_R36) + ( 1.0 * reaction_R48) + (-1.0 * reaction_R60) + (-1.0 * reaction_R79) + ( 1.0 * reaction_R83) + (-1.0 * reaction_R94));
	
% Species:   id = cytoplasm_Foxo1_Pa1_Ac0_pUb1, name = cytoplasm_Foxo1_phosphorylated_unacetylated_polyubiquitinated, affected by kineticLaw
	xdot(17) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R22) + ( 1.0 * reaction_R23) + ( 1.0 * reaction_R37) + ( 1.0 * reaction_R49) + (-1.0 * reaction_R61) + ( 1.0 * reaction_R92) + (-1.0 * reaction_R100));
	
% Species:   id = nucleus_Foxo1_Pa1_Ac0_pUb1, name = nucleus_Foxo1_phosphorylated_unacetylated_polyubiquitinated, affected by kineticLaw
	xdot(18) = (1/(compartment_nucleus))*(( 1.0 * reaction_R22) + (-1.0 * reaction_R23) + (-1.0 * reaction_R24) + ( 1.0 * reaction_R25) + ( 1.0 * reaction_R38) + ( 1.0 * reaction_R50) + (-1.0 * reaction_R62) + (-1.0 * reaction_R80) + ( 1.0 * reaction_R84) + ( 1.0 * reaction_R93));
	
% Species:   id = dnabound_Foxo1_Pa1_Ac0_pUb1, name = dnabound_Foxo1_phosphorylated_unacetylated_polyubiquitinated, affected by kineticLaw
	xdot(19) = (1/(compartment_dnabound))*(( 1.0 * reaction_R24) + (-1.0 * reaction_R25) + ( 1.0 * reaction_R39) + ( 1.0 * reaction_R51) + (-1.0 * reaction_R63) + (-1.0 * reaction_R81) + ( 1.0 * reaction_R85) + ( 1.0 * reaction_R94));
	
% Species:   id = cytoplasm_Foxo1_Pa1_Ac1_pUb0, name = cytoplasm_Foxo1_phosphorylated_acetylated_notpolyubiquitinated, affected by kineticLaw
	xdot(20) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R26) + ( 1.0 * reaction_R27) + ( 1.0 * reaction_R40) + ( 1.0 * reaction_R52) + (-1.0 * reaction_R64) + (-1.0 * reaction_R95));
	
% Species:   id = nucleus_Foxo1_Pa1_Ac1_pUb0, name = nucleus_Foxo1_phosphorylated_acetylated_notpolyubiquitinated, affected by kineticLaw
	xdot(21) = (1/(compartment_nucleus))*(( 1.0 * reaction_R26) + (-1.0 * reaction_R27) + (-1.0 * reaction_R28) + ( 1.0 * reaction_R29) + ( 1.0 * reaction_R41) + ( 1.0 * reaction_R53) + (-1.0 * reaction_R65) + ( 1.0 * reaction_R78) + (-1.0 * reaction_R82) + (-1.0 * reaction_R96));
	
% Species:   id = dnabound_Foxo1_Pa1_Ac1_pUb0, name = dnabound_Foxo1_phosphorylated_acetylated_notpolyubiquitinated, affected by kineticLaw
	xdot(22) = (1/(compartment_dnabound))*(( 1.0 * reaction_R28) + (-1.0 * reaction_R29) + ( 1.0 * reaction_R42) + ( 1.0 * reaction_R54) + (-1.0 * reaction_R66) + ( 1.0 * reaction_R79) + (-1.0 * reaction_R83) + (-1.0 * reaction_R97));
	
% Species:   id = cytoplasm_Foxo1_Pa1_Ac1_pUb1, name = cytoplasm_Foxo1_phosphorylated_acetylated_polyubiquitinated, affected by kineticLaw
	xdot(23) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R30) + ( 1.0 * reaction_R31) + ( 1.0 * reaction_R43) + ( 1.0 * reaction_R55) + (-1.0 * reaction_R67) + ( 1.0 * reaction_R95) + (-1.0 * reaction_R101));
	
% Species:   id = nucleus_Foxo1_Pa1_Ac1_pUb1, name = nucleus_Foxo1_phosphorylated_acetylated_polyubiquitinated, affected by kineticLaw
	xdot(24) = (1/(compartment_nucleus))*(( 1.0 * reaction_R30) + (-1.0 * reaction_R31) + (-1.0 * reaction_R32) + ( 1.0 * reaction_R33) + ( 1.0 * reaction_R44) + ( 1.0 * reaction_R56) + (-1.0 * reaction_R68) + ( 1.0 * reaction_R80) + (-1.0 * reaction_R84) + ( 1.0 * reaction_R96));
	
% Species:   id = dnabound_Foxo1_Pa1_Ac1_pUb1, name = dnabound_Foxo1_phosphorylated_acetylated_polyubiquitinated, affected by kineticLaw
	xdot(25) = (1/(compartment_dnabound))*(( 1.0 * reaction_R32) + (-1.0 * reaction_R33) + ( 1.0 * reaction_R45) + ( 1.0 * reaction_R57) + (-1.0 * reaction_R69) + ( 1.0 * reaction_R81) + (-1.0 * reaction_R85) + ( 1.0 * reaction_R97));
	
% Species:   id = Foxo1_Pa0_tot, name = Foxo1_unphosphorylated_tot, involved in a rule 	xdot(26) = x(26);
	
% Species:   id = Foxo1_Pa1_tot, name = Foxo1_phosphorylated_tot, involved in a rule 	xdot(27) = x(27);
	
% Species:   id = Foxo1_Ac0_tot, name = Foxo1_unacetylated_tot, involved in a rule 	xdot(28) = x(28);
	
% Species:   id = Foxo1_Ac1_tot, name = Foxo1_acetylated_tot, involved in a rule 	xdot(29) = x(29);
	
% Species:   id = Foxo1_pUb0_tot, name = Foxo1_unpolyubiquitinated_tot, involved in a rule 	xdot(30) = x(30);
	
% Species:   id = Foxo1_pUb1_tot, name = Foxo1_polyubiquitinated_tot, involved in a rule 	xdot(31) = x(31);
	
% Species:   id = cytoplasm_Foxo1_tot, name = cytoplasm_Foxo1_tot, involved in a rule 	xdot(32) = x(32);
	
% Species:   id = nucleus_Foxo1_tot, name = nucleus_Foxo1_tot, involved in a rule 	xdot(33) = x(33);
	
% Species:   id = dnabound_Foxo1_tot, name = dnabound_Foxo1_tot, involved in a rule 	xdot(34) = x(34);
	
% Species:   id = Foxo1_all, name = Foxo1_all, involved in a rule 	xdot(35) = x(35);
	
% Species:   id = nucleus_RNA_Inr, name = nucleus_RNA_Inr, affected by kineticLaw
	xdot(36) = (1/(compartment_nucleus))*(( 1.0 * reaction_R102) + ( 1.0 * reaction_R104) + ( 1.0 * reaction_R106) + ( 1.0 * reaction_R108) + ( 1.0 * reaction_R110) + ( 1.0 * reaction_R112) + ( 1.0 * reaction_R114) + ( 1.0 * reaction_R116) + ( 1.0 * reaction_R118) + (-1.0 * reaction_R119));
	
% Species:   id = cytoplasm_RNA_Inr, name = cytoplasm_RNA_Inr, affected by kineticLaw
	xdot(37) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R119) + (-1.0 * reaction_R120));
	
% Species:   id = cytoplasm_Inr, name = cytoplasm_Inr, affected by kineticLaw
	xdot(38) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R121) + (-1.0 * reaction_R122));
	
% Species:   id = nucleus_RNA_Sod2, name = nucleus_RNA_Sod2, affected by kineticLaw
	xdot(39) = (1/(compartment_nucleus))*(( 1.0 * reaction_R103) + ( 1.0 * reaction_R105) + ( 1.0 * reaction_R107) + ( 1.0 * reaction_R109) + ( 1.0 * reaction_R111) + ( 1.0 * reaction_R113) + ( 1.0 * reaction_R115) + ( 1.0 * reaction_R117) + ( 1.0 * reaction_R123) + (-1.0 * reaction_R124));
	
% Species:   id = cytoplasm_RNA_Sod2, name = cytoplasm_RNA_Sod2, affected by kineticLaw
	xdot(40) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R124) + (-1.0 * reaction_R125));
	
% Species:   id = cytoplasm_Sod2, name = cytoplasm_Sod2, affected by kineticLaw
	xdot(41) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R126) + (-1.0 * reaction_R127));
	
% Species:   id = E2F1, name = E2F1
% Warning species is not changed by either rules or reactions
	xdot(42) = ;
	
% Species:   id = Akt, name = Akt
% Warning species is not changed by either rules or reactions
	xdot(43) = ;
	
% Species:   id = SGK, name = SGK
% Warning species is not changed by either rules or reactions
	xdot(44) = ;
	
% Species:   id = CDK2, name = CDK2
% Warning species is not changed by either rules or reactions
	xdot(45) = ;
	
% Species:   id = AMPK, name = AMPK
% Warning species is not changed by either rules or reactions
	xdot(46) = ;
	
% Species:   id = IKKb, name = IKKb
% Warning species is not changed by either rules or reactions
	xdot(47) = ;
	
% Species:   id = JNK, name = JNK
% Warning species is not changed by either rules or reactions
	xdot(48) = ;
	
% Species:   id = PP2A, name = PP2A
% Warning species is not changed by either rules or reactions
	xdot(49) = ;
	
% Species:   id = CBPP300, name = CBPP300
% Warning species is not changed by either rules or reactions
	xdot(50) = ;
	
% Species:   id = SIRT1, name = SIRT1
% Warning species is not changed by either rules or reactions
	xdot(51) = ;
	
% Species:   id = E3, name = E3
% Warning species is not changed by either rules or reactions
	xdot(52) = ;
	
% Species:   id = USP7, name = USP7
% Warning species is not changed by either rules or reactions
	xdot(53) = ;
	
% Species:   id = SCF, name = SCF
% Warning species is not changed by either rules or reactions
	xdot(54) = ;
	
% Species:   id = Proteasome, name = Proteasome
% Warning species is not changed by either rules or reactions
	xdot(55) = ;
	
% Species:   id = Foxo1_all_rate, name = Foxo1_all_rate, involved in a rule 	xdot(56) = x(56);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac0_pUb0_to_cytoplasm_Foxo1_Pa0_Ac0_pUb1_by_SCF(SCF,cytoplasm,cytoplasm_Foxo1_Pa0_Ac0_pUb0,kub), z=(cytoplasm_Foxo1_Pa0_Ac0_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb0_to_nucleus_Foxo1_Pa0_Ac0_pUb1_by_SCF(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa0_Ac0_pUb0), z=(nucleus_Foxo1_Pa0_Ac0_pUb0*nucleus*SCF*cytoplasm*kub);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac1_pUb0_to_cytoplasm_Foxo1_Pa0_Ac1_pUb1_by_SCF(SCF,cytoplasm,cytoplasm_Foxo1_Pa0_Ac1_pUb0,kub), z=(cytoplasm_Foxo1_Pa0_Ac1_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb0_to_dnabound_Foxo1_Pa0_Ac0_pUb1_by_SCF(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Ac0_pUb0,kub), z=(dnabound_Foxo1_Pa0_Ac0_pUb0*dnabound*SCF*cytoplasm*kub);end

function z=Function_for_Synthesis(E2F1,cytoplasm,ksynth), z=(E2F1*cytoplasm*ksynth/cytoplasm);end

function z=Function_for_transport_cytoplasm_Foxo1_Pa0_Ac0_pUb0_to_nucleus_Foxo1_Pa0_Ac0_pUb0(cytoplasm,cytoplasm_Foxo1_Pa0_Ac0_pUb0,ktr), z=(cytoplasm_Foxo1_Pa0_Ac0_pUb0*cytoplasm*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa0_Ac0_pUb0_to_cytoplasm_Foxo1_Pa0_Ac0_pUb0(ktr,nucleus,nucleus_Foxo1_Pa0_Ac0_pUb0), z=(nucleus_Foxo1_Pa0_Ac0_pUb0*nucleus*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa0_Ac0_pUb0_to_dnabound_Foxo1_Pa0_Ac0_pUb0(ktr,nucleus,nucleus_Foxo1_Pa0_Ac0_pUb0), z=(nucleus_Foxo1_Pa0_Ac0_pUb0*nucleus*ktr);end

function z=Function_for_transport_dnabound_Foxo1_Pa0_Ac0_pUb0_to_nucleus_Foxo1_Pa0_Ac0_pUb0(dnabound,dnabound_Foxo1_Pa0_Ac0_pUb0,ktr), z=(dnabound_Foxo1_Pa0_Ac0_pUb0*dnabound*ktr);end

function z=Function_for_transport_cytoplasm_Foxo1_Pa0_Ac0_pUb1_to_nucleus_Foxo1_Pa0_Ac0_pUb1(cytoplasm,cytoplasm_Foxo1_Pa0_Ac0_pUb1,ktr), z=(cytoplasm_Foxo1_Pa0_Ac0_pUb1*cytoplasm*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa0_Ac0_pUb1_to_cytoplasm_Foxo1_Pa0_Ac0_pUb1(ktr,nucleus,nucleus_Foxo1_Pa0_Ac0_pUb1), z=(nucleus_Foxo1_Pa0_Ac0_pUb1*nucleus*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa0_Ac0_pUb1_to_dnabound_Foxo1_Pa0_Ac0_pUb1(ktr,nucleus,nucleus_Foxo1_Pa0_Ac0_pUb1), z=(nucleus_Foxo1_Pa0_Ac0_pUb1*nucleus*ktr);end

function z=Function_for_transport_dnabound_Foxo1_Pa0_Ac0_pUb1_to_nucleus_Foxo1_Pa0_Ac0_pUb1(dnabound,dnabound_Foxo1_Pa0_Ac0_pUb1,ktr), z=(dnabound_Foxo1_Pa0_Ac0_pUb1*dnabound*ktr);end

function z=Function_for_transport_cytoplasm_Foxo1_Pa0_Ac1_pUb0_to_nucleus_Foxo1_Pa0_Ac1_pUb0(cytoplasm,cytoplasm_Foxo1_Pa0_Ac1_pUb0,ktr), z=(cytoplasm_Foxo1_Pa0_Ac1_pUb0*cytoplasm*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa0_Ac1_pUb0_to_cytoplasm_Foxo1_Pa0_Ac1_pUb0(ktr,nucleus,nucleus_Foxo1_Pa0_Ac1_pUb0), z=(nucleus_Foxo1_Pa0_Ac1_pUb0*nucleus*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa0_Ac1_pUb0_to_dnabound_Foxo1_Pa0_Ac1_pUb0(ktr,nucleus,nucleus_Foxo1_Pa0_Ac1_pUb0), z=(nucleus_Foxo1_Pa0_Ac1_pUb0*nucleus*ktr);end

function z=Function_for_transport_dnabound_Foxo1_Pa0_Ac1_pUb0_to_nucleus_Foxo1_Pa0_Ac1_pUb0(dnabound,dnabound_Foxo1_Pa0_Ac1_pUb0,ktr), z=(dnabound_Foxo1_Pa0_Ac1_pUb0*dnabound*ktr);end

function z=Function_for_transport_cytoplasm_Foxo1_Pa0_Ac1_pUb1_to_nucleus_Foxo1_Pa0_Ac1_pUb1(cytoplasm,cytoplasm_Foxo1_Pa0_Ac1_pUb1,ktr), z=(cytoplasm_Foxo1_Pa0_Ac1_pUb1*cytoplasm*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa0_Ac1_pUb1_to_cytoplasm_Foxo1_Pa0_Ac1_pUb1(ktr,nucleus,nucleus_Foxo1_Pa0_Ac1_pUb1), z=(nucleus_Foxo1_Pa0_Ac1_pUb1*nucleus*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa0_Ac1_pUb1_to_dnabound_Foxo1_Pa0_Ac1_pUb1(ktr,nucleus,nucleus_Foxo1_Pa0_Ac1_pUb1), z=(nucleus_Foxo1_Pa0_Ac1_pUb1*nucleus*ktr);end

function z=Function_for_transport_dnabound_Foxo1_Pa0_Ac1_pUb1_to_nucleus_Foxo1_Pa0_Ac1_pUb1(dnabound,dnabound_Foxo1_Pa0_Ac1_pUb1,ktr), z=(dnabound_Foxo1_Pa0_Ac1_pUb1*dnabound*ktr);end

function z=Function_for_transport_cytoplasm_Foxo1_Pa1_Ac0_pUb0_to_nucleus_Foxo1_Pa1_Ac0_pUb0(cytoplasm,cytoplasm_Foxo1_Pa1_Ac0_pUb0,ktr), z=(cytoplasm_Foxo1_Pa1_Ac0_pUb0*cytoplasm*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa1_Ac0_pUb0_to_cytoplasm_Foxo1_Pa1_Ac0_pUb0(ktr,nucleus,nucleus_Foxo1_Pa1_Ac0_pUb0), z=(nucleus_Foxo1_Pa1_Ac0_pUb0*nucleus*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa1_Ac0_pUb0_to_dnabound_Foxo1_Pa1_Ac0_pUb0(ktr,nucleus,nucleus_Foxo1_Pa1_Ac0_pUb0), z=(nucleus_Foxo1_Pa1_Ac0_pUb0*nucleus*ktr);end

function z=Function_for_transport_dnabound_Foxo1_Pa1_Ac0_pUb0_to_nucleus_Foxo1_Pa1_Ac0_pUb0(dnabound,dnabound_Foxo1_Pa1_Ac0_pUb0,ktr), z=(dnabound_Foxo1_Pa1_Ac0_pUb0*dnabound*ktr);end

function z=Function_for_transport_cytoplasm_Foxo1_Pa1_Ac0_pUb1_to_nucleus_Foxo1_Pa1_Ac0_pUb1(cytoplasm,cytoplasm_Foxo1_Pa1_Ac0_pUb1,ktr), z=(cytoplasm_Foxo1_Pa1_Ac0_pUb1*cytoplasm*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa1_Ac0_pUb1_to_cytoplasm_Foxo1_Pa1_Ac0_pUb1(ktr,nucleus,nucleus_Foxo1_Pa1_Ac0_pUb1), z=(nucleus_Foxo1_Pa1_Ac0_pUb1*nucleus*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa1_Ac0_pUb1_to_dnabound_Foxo1_Pa1_Ac0_pUb1(ktr,nucleus,nucleus_Foxo1_Pa1_Ac0_pUb1), z=(nucleus_Foxo1_Pa1_Ac0_pUb1*nucleus*ktr);end

function z=Function_for_transport_dnabound_Foxo1_Pa1_Ac0_pUb1_to_nucleus_Foxo1_Pa1_Ac0_pUb1(dnabound,dnabound_Foxo1_Pa1_Ac0_pUb1,ktr), z=(dnabound_Foxo1_Pa1_Ac0_pUb1*dnabound*ktr);end

function z=Function_for_transport_cytoplasm_Foxo1_Pa1_Ac1_pUb0_to_nucleus_Foxo1_Pa1_Ac1_pUb0(cytoplasm,cytoplasm_Foxo1_Pa1_Ac1_pUb0,ktr), z=(cytoplasm_Foxo1_Pa1_Ac1_pUb0*cytoplasm*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa1_Ac1_pUb0_to_cytoplasm_Foxo1_Pa1_Ac1_pUb0(ktr,nucleus,nucleus_Foxo1_Pa1_Ac1_pUb0), z=(nucleus_Foxo1_Pa1_Ac1_pUb0*nucleus*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa1_Ac1_pUb0_to_dnabound_Foxo1_Pa1_Ac1_pUb0(ktr,nucleus,nucleus_Foxo1_Pa1_Ac1_pUb0), z=(nucleus_Foxo1_Pa1_Ac1_pUb0*nucleus*ktr);end

function z=Function_for_transport_dnabound_Foxo1_Pa1_Ac1_pUb0_to_nucleus_Foxo1_Pa1_Ac1_pUb0(dnabound,dnabound_Foxo1_Pa1_Ac1_pUb0,ktr), z=(dnabound_Foxo1_Pa1_Ac1_pUb0*dnabound*ktr);end

function z=Function_for_transport_cytoplasm_Foxo1_Pa1_Ac1_pUb1_to_nucleus_Foxo1_Pa1_Ac1_pUb1(cytoplasm,cytoplasm_Foxo1_Pa1_Ac1_pUb1,ktr), z=(cytoplasm_Foxo1_Pa1_Ac1_pUb1*cytoplasm*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa1_Ac1_pUb1_to_cytoplasm_Foxo1_Pa1_Ac1_pUb1(ktr,nucleus,nucleus_Foxo1_Pa1_Ac1_pUb1), z=(nucleus_Foxo1_Pa1_Ac1_pUb1*nucleus*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa1_Ac1_pUb1_to_dnabound_Foxo1_Pa1_Ac1_pUb1(ktr,nucleus,nucleus_Foxo1_Pa1_Ac1_pUb1), z=(nucleus_Foxo1_Pa1_Ac1_pUb1*nucleus*ktr);end

function z=Function_for_transport_dnabound_Foxo1_Pa1_Ac1_pUb1_to_nucleus_Foxo1_Pa1_Ac1_pUb1(dnabound,dnabound_Foxo1_Pa1_Ac1_pUb1,ktr), z=(dnabound_Foxo1_Pa1_Ac1_pUb1*dnabound*ktr);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac0_pUb0_to_cytoplasm_Foxo1_Pa1_Ac0_pUb0_by_Akt(Akt,cytoplasm,cytoplasm_Foxo1_Pa0_Ac0_pUb0,kkin), z=(cytoplasm_Foxo1_Pa0_Ac0_pUb0*cytoplasm*Akt*cytoplasm*kkin/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb0_to_nucleus_Foxo1_Pa1_Ac0_pUb0_by_Akt(Akt,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Ac0_pUb0), z=(nucleus_Foxo1_Pa0_Ac0_pUb0*nucleus*Akt*cytoplasm*kkin);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb0_to_dnabound_Foxo1_Pa1_Ac0_pUb0_by_Akt(Akt,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Ac0_pUb0,kkin), z=(dnabound_Foxo1_Pa0_Ac0_pUb0*dnabound*Akt*cytoplasm*kkin);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac0_pUb1_to_cytoplasm_Foxo1_Pa1_Ac0_pUb1_by_Akt(Akt,cytoplasm,cytoplasm_Foxo1_Pa0_Ac0_pUb1,kkin), z=(cytoplasm_Foxo1_Pa0_Ac0_pUb1*cytoplasm*Akt*cytoplasm*kkin/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb1_to_nucleus_Foxo1_Pa1_Ac0_pUb1_by_Akt(Akt,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Ac0_pUb1), z=(nucleus_Foxo1_Pa0_Ac0_pUb1*nucleus*Akt*cytoplasm*kkin);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb1_to_dnabound_Foxo1_Pa1_Ac0_pUb1_by_Akt(Akt,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Ac0_pUb1,kkin), z=(dnabound_Foxo1_Pa0_Ac0_pUb1*dnabound*Akt*cytoplasm*kkin);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac1_pUb0_to_cytoplasm_Foxo1_Pa1_Ac1_pUb0_by_Akt(Akt,cytoplasm,cytoplasm_Foxo1_Pa0_Ac1_pUb0,kkin), z=(cytoplasm_Foxo1_Pa0_Ac1_pUb0*cytoplasm*Akt*cytoplasm*kkin/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb0_to_nucleus_Foxo1_Pa1_Ac1_pUb0_by_Akt(Akt,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Ac1_pUb0), z=(nucleus_Foxo1_Pa0_Ac1_pUb0*nucleus*Akt*cytoplasm*kkin);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb0_to_dnabound_Foxo1_Pa1_Ac1_pUb0_by_Akt(Akt,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Ac1_pUb0,kkin), z=(dnabound_Foxo1_Pa0_Ac1_pUb0*dnabound*Akt*cytoplasm*kkin);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac1_pUb1_to_cytoplasm_Foxo1_Pa1_Ac1_pUb1_by_Akt(Akt,cytoplasm,cytoplasm_Foxo1_Pa0_Ac1_pUb1,kkin), z=(cytoplasm_Foxo1_Pa0_Ac1_pUb1*cytoplasm*Akt*cytoplasm*kkin/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb1_to_nucleus_Foxo1_Pa1_Ac1_pUb1_by_Akt(Akt,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Ac1_pUb1), z=(nucleus_Foxo1_Pa0_Ac1_pUb1*nucleus*Akt*cytoplasm*kkin);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb1_to_dnabound_Foxo1_Pa1_Ac1_pUb1_by_Akt(Akt,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Ac1_pUb1,kkin), z=(dnabound_Foxo1_Pa0_Ac1_pUb1*dnabound*Akt*cytoplasm*kkin);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac0_pUb0_to_cytoplasm_Foxo1_Pa1_Ac0_pUb0_by_SGK(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Ac0_pUb0,kkin), z=(cytoplasm_Foxo1_Pa0_Ac0_pUb0*cytoplasm*SGK*cytoplasm*kkin/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb0_to_nucleus_Foxo1_Pa1_Ac0_pUb0_by_SGK(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Ac0_pUb0), z=(nucleus_Foxo1_Pa0_Ac0_pUb0*nucleus*SGK*cytoplasm*kkin);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb0_to_dnabound_Foxo1_Pa1_Ac0_pUb0_by_SGK(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Ac0_pUb0,kkin), z=(dnabound_Foxo1_Pa0_Ac0_pUb0*dnabound*SGK*cytoplasm*kkin);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac0_pUb1_to_cytoplasm_Foxo1_Pa1_Ac0_pUb1_by_SGK(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Ac0_pUb1,kkin), z=(cytoplasm_Foxo1_Pa0_Ac0_pUb1*cytoplasm*SGK*cytoplasm*kkin/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb1_to_nucleus_Foxo1_Pa1_Ac0_pUb1_by_SGK(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Ac0_pUb1), z=(nucleus_Foxo1_Pa0_Ac0_pUb1*nucleus*SGK*cytoplasm*kkin);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb1_to_dnabound_Foxo1_Pa1_Ac0_pUb1_by_SGK(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Ac0_pUb1,kkin), z=(dnabound_Foxo1_Pa0_Ac0_pUb1*dnabound*SGK*cytoplasm*kkin);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac1_pUb0_to_cytoplasm_Foxo1_Pa1_Ac1_pUb0_by_SGK(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Ac1_pUb0,kkin), z=(cytoplasm_Foxo1_Pa0_Ac1_pUb0*cytoplasm*SGK*cytoplasm*kkin/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb0_to_nucleus_Foxo1_Pa1_Ac1_pUb0_by_SGK(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Ac1_pUb0), z=(nucleus_Foxo1_Pa0_Ac1_pUb0*nucleus*SGK*cytoplasm*kkin);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb0_to_dnabound_Foxo1_Pa1_Ac1_pUb0_by_SGK(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Ac1_pUb0,kkin), z=(dnabound_Foxo1_Pa0_Ac1_pUb0*dnabound*SGK*cytoplasm*kkin);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac1_pUb1_to_cytoplasm_Foxo1_Pa1_Ac1_pUb1_by_SGK(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_Ac1_pUb1,kkin), z=(cytoplasm_Foxo1_Pa0_Ac1_pUb1*cytoplasm*SGK*cytoplasm*kkin/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb1_to_nucleus_Foxo1_Pa1_Ac1_pUb1_by_SGK(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_Ac1_pUb1), z=(nucleus_Foxo1_Pa0_Ac1_pUb1*nucleus*SGK*cytoplasm*kkin);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb1_to_dnabound_Foxo1_Pa1_Ac1_pUb1_by_SGK(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Ac1_pUb1,kkin), z=(dnabound_Foxo1_Pa0_Ac1_pUb1*dnabound*SGK*cytoplasm*kkin);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa1_Ac0_pUb0_to_cytoplasm_Foxo1_Pa0_Ac0_pUb0_by_PP2A(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Ac0_pUb0,kdephos), z=(cytoplasm_Foxo1_Pa1_Ac0_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac0_pUb0_to_nucleus_Foxo1_Pa0_Ac0_pUb0_by_PP2A(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Ac0_pUb0), z=(nucleus_Foxo1_Pa1_Ac0_pUb0*nucleus*PP2A*cytoplasm*kdephos);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac0_pUb0_to_dnabound_Foxo1_Pa0_Ac0_pUb0_by_PP2A(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Ac0_pUb0,kdephos), z=(dnabound_Foxo1_Pa1_Ac0_pUb0*dnabound*PP2A*cytoplasm*kdephos);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa1_Ac0_pUb1_to_cytoplasm_Foxo1_Pa0_Ac0_pUb1_by_PP2A(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Ac0_pUb1,kdephos), z=(cytoplasm_Foxo1_Pa1_Ac0_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac0_pUb1_to_nucleus_Foxo1_Pa0_Ac0_pUb1_by_PP2A(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Ac0_pUb1), z=(nucleus_Foxo1_Pa1_Ac0_pUb1*nucleus*PP2A*cytoplasm*kdephos);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac0_pUb1_to_dnabound_Foxo1_Pa0_Ac0_pUb1_by_PP2A(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Ac0_pUb1,kdephos), z=(dnabound_Foxo1_Pa1_Ac0_pUb1*dnabound*PP2A*cytoplasm*kdephos);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa1_Ac1_pUb0_to_cytoplasm_Foxo1_Pa0_Ac1_pUb0_by_PP2A(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Ac1_pUb0,kdephos), z=(cytoplasm_Foxo1_Pa1_Ac1_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac1_pUb0_to_nucleus_Foxo1_Pa0_Ac1_pUb0_by_PP2A(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Ac1_pUb0), z=(nucleus_Foxo1_Pa1_Ac1_pUb0*nucleus*PP2A*cytoplasm*kdephos);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac1_pUb0_to_dnabound_Foxo1_Pa0_Ac1_pUb0_by_PP2A(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Ac1_pUb0,kdephos), z=(dnabound_Foxo1_Pa1_Ac1_pUb0*dnabound*PP2A*cytoplasm*kdephos);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa1_Ac1_pUb1_to_cytoplasm_Foxo1_Pa0_Ac1_pUb1_by_PP2A(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_Ac1_pUb1,kdephos), z=(cytoplasm_Foxo1_Pa1_Ac1_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac1_pUb1_to_nucleus_Foxo1_Pa0_Ac1_pUb1_by_PP2A(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_Ac1_pUb1), z=(nucleus_Foxo1_Pa1_Ac1_pUb1*nucleus*PP2A*cytoplasm*kdephos);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac1_pUb1_to_dnabound_Foxo1_Pa0_Ac1_pUb1_by_PP2A(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Ac1_pUb1,kdephos), z=(dnabound_Foxo1_Pa1_Ac1_pUb1*dnabound*PP2A*cytoplasm*kdephos);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb0_to_nucleus_Foxo1_Pa0_Ac1_pUb0_by_CBPP300(CBPP300,cytoplasm,kacet,nucleus,nucleus_Foxo1_Pa0_Ac0_pUb0), z=(nucleus_Foxo1_Pa0_Ac0_pUb0*nucleus*CBPP300*cytoplasm*kacet);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb0_to_dnabound_Foxo1_Pa0_Ac1_pUb0_by_CBPP300(CBPP300,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Ac0_pUb0,kacet), z=(dnabound_Foxo1_Pa0_Ac0_pUb0*dnabound*CBPP300*cytoplasm*kacet);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb1_to_nucleus_Foxo1_Pa0_Ac1_pUb1_by_CBPP300(CBPP300,cytoplasm,kacet,nucleus,nucleus_Foxo1_Pa0_Ac0_pUb1), z=(nucleus_Foxo1_Pa0_Ac0_pUb1*nucleus*CBPP300*cytoplasm*kacet);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb1_to_dnabound_Foxo1_Pa0_Ac1_pUb1_by_CBPP300(CBPP300,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Ac0_pUb1,kacet), z=(dnabound_Foxo1_Pa0_Ac0_pUb1*dnabound*CBPP300*cytoplasm*kacet);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb0_to_nucleus_Foxo1_Pa0_Ac0_pUb0_by_SIRT1(SIRT1,cytoplasm,kdeac,nucleus,nucleus_Foxo1_Pa0_Ac1_pUb0), z=(nucleus_Foxo1_Pa0_Ac1_pUb0*nucleus*SIRT1*cytoplasm*kdeac);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb0_to_dnabound_Foxo1_Pa0_Ac0_pUb0_by_SIRT1(SIRT1,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Ac1_pUb0,kdeac), z=(dnabound_Foxo1_Pa0_Ac1_pUb0*dnabound*SIRT1*cytoplasm*kdeac);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb1_to_nucleus_Foxo1_Pa0_Ac0_pUb1_by_SIRT1(SIRT1,cytoplasm,kdeac,nucleus,nucleus_Foxo1_Pa0_Ac1_pUb1), z=(nucleus_Foxo1_Pa0_Ac1_pUb1*nucleus*SIRT1*cytoplasm*kdeac);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb1_to_dnabound_Foxo1_Pa0_Ac0_pUb1_by_SIRT1(SIRT1,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Ac1_pUb1,kdeac), z=(dnabound_Foxo1_Pa0_Ac1_pUb1*dnabound*SIRT1*cytoplasm*kdeac);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac0_pUb0_to_nucleus_Foxo1_Pa1_Ac1_pUb0_by_CBPP300(CBPP300,cytoplasm,kacet,nucleus,nucleus_Foxo1_Pa1_Ac0_pUb0), z=(nucleus_Foxo1_Pa1_Ac0_pUb0*nucleus*CBPP300*cytoplasm*kacet);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac0_pUb0_to_dnabound_Foxo1_Pa1_Ac1_pUb0_by_CBPP300(CBPP300,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Ac0_pUb0,kacet), z=(dnabound_Foxo1_Pa1_Ac0_pUb0*dnabound*CBPP300*cytoplasm*kacet);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac0_pUb1_to_nucleus_Foxo1_Pa1_Ac1_pUb1_by_CBPP300(CBPP300,cytoplasm,kacet,nucleus,nucleus_Foxo1_Pa1_Ac0_pUb1), z=(nucleus_Foxo1_Pa1_Ac0_pUb1*nucleus*CBPP300*cytoplasm*kacet);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac0_pUb1_to_dnabound_Foxo1_Pa1_Ac1_pUb1_by_CBPP300(CBPP300,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Ac0_pUb1,kacet), z=(dnabound_Foxo1_Pa1_Ac0_pUb1*dnabound*CBPP300*cytoplasm*kacet);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac1_pUb0_to_nucleus_Foxo1_Pa1_Ac0_pUb0_by_SIRT1(SIRT1,cytoplasm,kdeac,nucleus,nucleus_Foxo1_Pa1_Ac1_pUb0), z=(nucleus_Foxo1_Pa1_Ac1_pUb0*nucleus*SIRT1*cytoplasm*kdeac);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac1_pUb0_to_dnabound_Foxo1_Pa1_Ac0_pUb0_by_SIRT1(SIRT1,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Ac1_pUb0,kdeac), z=(dnabound_Foxo1_Pa1_Ac1_pUb0*dnabound*SIRT1*cytoplasm*kdeac);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac1_pUb1_to_nucleus_Foxo1_Pa1_Ac0_pUb1_by_SIRT1(SIRT1,cytoplasm,kdeac,nucleus,nucleus_Foxo1_Pa1_Ac1_pUb1), z=(nucleus_Foxo1_Pa1_Ac1_pUb1*nucleus*SIRT1*cytoplasm*kdeac);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac1_pUb1_to_dnabound_Foxo1_Pa1_Ac0_pUb1_by_SIRT1(SIRT1,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Ac1_pUb1,kdeac), z=(dnabound_Foxo1_Pa1_Ac1_pUb1*dnabound*SIRT1*cytoplasm*kdeac);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb0_to_nucleus_Foxo1_Pa0_Ac1_pUb1_by_SCF(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa0_Ac1_pUb0), z=(nucleus_Foxo1_Pa0_Ac1_pUb0*nucleus*SCF*cytoplasm*kub);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb0_to_dnabound_Foxo1_Pa0_Ac1_pUb1_by_SCF(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa0_Ac1_pUb0,kub), z=(dnabound_Foxo1_Pa0_Ac1_pUb0*dnabound*SCF*cytoplasm*kub);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa1_Ac0_pUb0_to_cytoplasm_Foxo1_Pa1_Ac0_pUb1_by_SCF(SCF,cytoplasm,cytoplasm_Foxo1_Pa1_Ac0_pUb0,kub), z=(cytoplasm_Foxo1_Pa1_Ac0_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac0_pUb0_to_nucleus_Foxo1_Pa1_Ac0_pUb1_by_SCF(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa1_Ac0_pUb0), z=(nucleus_Foxo1_Pa1_Ac0_pUb0*nucleus*SCF*cytoplasm*kub);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac0_pUb0_to_dnabound_Foxo1_Pa1_Ac0_pUb1_by_SCF(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Ac0_pUb0,kub), z=(dnabound_Foxo1_Pa1_Ac0_pUb0*dnabound*SCF*cytoplasm*kub);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa1_Ac1_pUb0_to_cytoplasm_Foxo1_Pa1_Ac1_pUb1_by_SCF(SCF,cytoplasm,cytoplasm_Foxo1_Pa1_Ac1_pUb0,kub), z=(cytoplasm_Foxo1_Pa1_Ac1_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac1_pUb0_to_nucleus_Foxo1_Pa1_Ac1_pUb1_by_SCF(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa1_Ac1_pUb0), z=(nucleus_Foxo1_Pa1_Ac1_pUb0*nucleus*SCF*cytoplasm*kub);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac1_pUb0_to_dnabound_Foxo1_Pa1_Ac1_pUb1_by_SCF(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa1_Ac1_pUb0,kub), z=(dnabound_Foxo1_Pa1_Ac1_pUb0*dnabound*SCF*cytoplasm*kub);end

function z=Function_for_degradation_of_cytoplasm_Foxo1_Pa0_Ac0_pUb1(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa0_Ac0_pUb1,kdeg), z=(cytoplasm_Foxo1_Pa0_Ac0_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm);end

function z=Function_for_degradation_of_cytoplasm_Foxo1_Pa0_Ac1_pUb1(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa0_Ac1_pUb1,kdeg), z=(cytoplasm_Foxo1_Pa0_Ac1_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm);end

function z=Function_for_degradation_of_cytoplasm_Foxo1_Pa1_Ac0_pUb1(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa1_Ac0_pUb1,kdeg), z=(cytoplasm_Foxo1_Pa1_Ac0_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm);end

function z=Function_for_degradation_of_cytoplasm_Foxo1_Pa1_Ac1_pUb1(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa1_Ac1_pUb1,kdeg), z=(cytoplasm_Foxo1_Pa1_Ac1_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm);end

function z=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa0_Ac0_pUb0(dnabound,dnabound_Foxo1_Pa0_Ac0_pUb0,ktranscr), z=(dnabound_Foxo1_Pa0_Ac0_pUb0*dnabound*ktranscr);end

function z=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa0_Ac0_pUb0(dnabound,dnabound_Foxo1_Pa0_Ac0_pUb0,ktranscr), z=(dnabound_Foxo1_Pa0_Ac0_pUb0*dnabound*ktranscr);end

function z=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa0_Ac0_pUb1(dnabound,dnabound_Foxo1_Pa0_Ac0_pUb1,ktranscr), z=(dnabound_Foxo1_Pa0_Ac0_pUb1*dnabound*ktranscr);end

function z=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa0_Ac0_pUb1(dnabound,dnabound_Foxo1_Pa0_Ac0_pUb1,ktranscr), z=(dnabound_Foxo1_Pa0_Ac0_pUb1*dnabound*ktranscr);end

function z=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa0_Ac1_pUb0(dnabound,dnabound_Foxo1_Pa0_Ac1_pUb0,ktranscr), z=(dnabound_Foxo1_Pa0_Ac1_pUb0*dnabound*ktranscr);end

function z=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa0_Ac1_pUb0(dnabound,dnabound_Foxo1_Pa0_Ac1_pUb0,ktranscr), z=(dnabound_Foxo1_Pa0_Ac1_pUb0*dnabound*ktranscr);end

function z=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa0_Ac1_pUb1(dnabound,dnabound_Foxo1_Pa0_Ac1_pUb1,ktranscr), z=(dnabound_Foxo1_Pa0_Ac1_pUb1*dnabound*ktranscr);end

function z=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa0_Ac1_pUb1(dnabound,dnabound_Foxo1_Pa0_Ac1_pUb1,ktranscr), z=(dnabound_Foxo1_Pa0_Ac1_pUb1*dnabound*ktranscr);end

function z=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa1_Ac0_pUb0(dnabound,dnabound_Foxo1_Pa1_Ac0_pUb0,ktranscr), z=(dnabound_Foxo1_Pa1_Ac0_pUb0*dnabound*ktranscr);end

function z=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa1_Ac0_pUb0(dnabound,dnabound_Foxo1_Pa1_Ac0_pUb0,ktranscr), z=(dnabound_Foxo1_Pa1_Ac0_pUb0*dnabound*ktranscr);end

function z=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa1_Ac0_pUb1(dnabound,dnabound_Foxo1_Pa1_Ac0_pUb1,ktranscr), z=(dnabound_Foxo1_Pa1_Ac0_pUb1*dnabound*ktranscr);end

function z=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa1_Ac0_pUb1(dnabound,dnabound_Foxo1_Pa1_Ac0_pUb1,ktranscr), z=(dnabound_Foxo1_Pa1_Ac0_pUb1*dnabound*ktranscr);end

function z=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa1_Ac1_pUb0(dnabound,dnabound_Foxo1_Pa1_Ac1_pUb0,ktranscr), z=(dnabound_Foxo1_Pa1_Ac1_pUb0*dnabound*ktranscr);end

function z=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa1_Ac1_pUb0(dnabound,dnabound_Foxo1_Pa1_Ac1_pUb0,ktranscr), z=(dnabound_Foxo1_Pa1_Ac1_pUb0*dnabound*ktranscr);end

function z=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa1_Ac1_pUb1(dnabound,dnabound_Foxo1_Pa1_Ac1_pUb1,ktranscr), z=(dnabound_Foxo1_Pa1_Ac1_pUb1*dnabound*ktranscr);end

function z=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa1_Ac1_pUb1(dnabound,dnabound_Foxo1_Pa1_Ac1_pUb1,ktranscr), z=(dnabound_Foxo1_Pa1_Ac1_pUb1*dnabound*ktranscr);end

function z=Function_for_export_of_inr_RNA(kexp,nucleus,nucleus_RNA_Inr), z=(nucleus_RNA_Inr*nucleus*kexp);end

function z=Function_for_cyto_degr_of_inr_RNA(cytoplasm,cytoplasm_RNA_Inr,kmdeg), z=(cytoplasm_RNA_Inr*cytoplasm*kmdeg/cytoplasm);end

function z=Function_for_translation_of_inr(cytoplasm,cytoplasm_RNA_Inr,ktransl), z=(cytoplasm_RNA_Inr*cytoplasm*ktransl/cytoplasm);end

function z=Function_for_degradation_of_Inr_protein(cytoplasm,cytoplasm_Inr,kpdeg), z=(cytoplasm_Inr*cytoplasm*kpdeg/cytoplasm);end

function z=Function_for_export_of_sod2_RNA(kexp,nucleus,nucleus_RNA_Sod2), z=(nucleus_RNA_Sod2*nucleus*kexp);end

function z=Function_for_cyto_degr_of_sod2_RNA(cytoplasm,cytoplasm_RNA_Sod2,kmdeg), z=(cytoplasm_RNA_Sod2*cytoplasm*kmdeg/cytoplasm);end

function z=Function_for_translation_of_sod2(cytoplasm,cytoplasm_RNA_Sod2,ktransl), z=(cytoplasm_RNA_Sod2*cytoplasm*ktransl/cytoplasm);end

function z=Function_for_degradation_of_Sod2_protein(cytoplasm,cytoplasm_Sod2,kpdeg), z=(cytoplasm_Sod2*cytoplasm*kpdeg/cytoplasm);end

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


