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
% Model name = Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways
%
% is http://identifiers.org/biomodels.db/MODEL1112260000
% isDescribedBy http://identifiers.org/pubmed/20567500
% is http://identifiers.org/biomodels.db/BIOMD0000000705
%


function main()
%Initial conditions vector
	x0=zeros(41,1);
	x0(1) = 6.06060606060606E13;
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
	x0(13) = 1.20481927710843E14;
	x0(14) = 0.0;
	x0(15) = 1.20481927710843E14;
	x0(16) = 0.0;
	x0(17) = 1.20481927710843E14;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 1.20481927710843E14;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 6.06060606060606E12;
	x0(28) = 1.51515151515152E15;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 6.06060606060606E14;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 6.06060606060606E13;
	x0(39) = 6.06060606060606E13;
	x0(40) = 0.0;
	x0(41) = 1.0;


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
% Parameter:   id =  transcription_rate, name = transcription_rate
	global_par_transcription_rate=3.0;
% Parameter:   id =  kmdeg, name = kmdeg
	global_par_kmdeg=5.622;
% Parameter:   id =  kpdeg, name = kpdeg
	global_par_kpdeg=0.0019;
% Parameter:   id =  kdeg, name = kdeg
	global_par_kdeg=1.0E-4;
% Parameter:   id =  kdephos, name = kdephos
	global_par_kdephos=5.0E-5;
% Parameter:   id =  kexp, name = kexp
	global_par_kexp=0.22;
% Parameter:   id =  kkin, name = kkin
	global_par_kkin=5.0E-5;
% Parameter:   id =  kub1, name = kub1
	global_par_kub1=1.0E-6;
% Parameter:   id =  kub2, name = kub2
	global_par_kub2=3.0E-6;
% Parameter:   id =  ksynth, name = ksynth
	global_par_ksynth=0.0055;
% Parameter:   id =  ktranscr, name = ktranscr
	global_par_ktranscr=0.3;
% Parameter:   id =  ktransl, name = ktransl
	global_par_ktransl=1.23;
% Parameter:   id =  ktr1_181818, name = ktr1_181818
	global_par_ktr1_181818=0.181818;
% Parameter:   id =  ktr2_0181818, name = ktr2_0181818
	global_par_ktr2_0181818=0.0181818;
% Parameter:   id =  ktr3_125, name = ktr3_125
	global_par_ktr3_125=0.125;
% Parameter:   id =  ktr4_055, name = ktr4_055
	global_par_ktr4_055=0.055;
% Parameter:   id =  ktr5_25, name = ktr5_25
	global_par_ktr5_25=0.25;
% Parameter:   id =  ktr4_55, name = ktr4_55
	global_par_ktr4_55=0.55;
% Parameter:   id =  Metabolite_21, name = Initial for Foxo1_total
	global_par_Metabolite_21=1.20481927710843E14;
% assignmentRule: variable = Foxo1_pUb1_tot
	x(16)=(x(4)*compartment_cytoplasm+x(5)*compartment_nucleus+x(6)*compartment_dnabound+x(10)*compartment_cytoplasm+x(11)*compartment_nucleus+x(12)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = cytoplasm_Foxo1_tot
	x(17)=(x(1)*compartment_cytoplasm+x(4)*compartment_cytoplasm+x(7)*compartment_cytoplasm+x(10)*compartment_cytoplasm)/compartment_extracellular;
% assignmentRule: variable = Foxo1_Pa0_tot
	x(13)=(x(1)*compartment_cytoplasm+x(2)*compartment_nucleus+x(3)*compartment_dnabound+x(4)*compartment_cytoplasm+x(5)*compartment_nucleus+x(6)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = Foxo1_Pa1_tot
	x(14)=(x(7)*compartment_cytoplasm+x(8)*compartment_nucleus+x(9)*compartment_dnabound+x(10)*compartment_cytoplasm+x(11)*compartment_nucleus+x(12)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = Foxo1_pUb0_tot
	x(15)=(x(1)*compartment_cytoplasm+x(2)*compartment_nucleus+x(3)*compartment_dnabound+x(7)*compartment_cytoplasm+x(8)*compartment_nucleus+x(9)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = nucleus_Foxo1_tot
	x(18)=(x(2)*compartment_nucleus+x(5)*compartment_nucleus+x(8)*compartment_nucleus+x(11)*compartment_nucleus)/compartment_extracellular;
% assignmentRule: variable = dnabound_Foxo1_tot
	x(19)=(x(3)*compartment_dnabound+x(6)*compartment_dnabound+x(9)*compartment_dnabound+x(12)*compartment_dnabound)/compartment_extracellular;
% assignmentRule: variable = Foxo1_all
	x(20)=(x(17)*compartment_extracellular+x(18)*compartment_extracellular+x(19)*compartment_extracellular)/compartment_extracellular;
% assignmentRule: variable = Foxo1_total_rate
	x(41)=x(20)/global_par_Metabolite_21;

% Reaction: id = R1, name = Synthesis
	reaction_R1=compartment_cytoplasm*Function_for_Synthesis(x(27), compartment_cytoplasm, global_par_ksynth);

% Reaction: id = R2, name = transport cytoplasm_Foxo1 to nucleus_Foxo1
	reaction_R2=Function_for_transport_cytoplasm_Foxo1_Pa0_pUb0_to_nucleus_Foxo1_Pa0_pUb0(compartment_cytoplasm, x(1), global_par_ktr1_181818);

% Reaction: id = R3, name = transport nucleus_Foxo1 to cytoplasm_Foxo1
	reaction_R3=Function_for_transport_nucleus_Foxo1_Pa0_pUb0_to_cytoplasm_Foxo1_Pa0_pUb0(global_par_ktr4_055, compartment_nucleus, x(2));

% Reaction: id = R4, name = transport nucleus_Foxo1 to dnabound_Foxo1_
	reaction_R4=Function_for_transport_nucleus_Foxo1_Pa0_pUb0_to_dnabound_Foxo1_Pa0_pUb0(global_par_ktr5_25, compartment_nucleus, x(2));

% Reaction: id = R5, name = transport dnabound_Foxo1 to nucleus_Foxo1
	reaction_R5=Function_for_transport_dnabound_Foxo1_Pa0_pUb0_to_nucleus_Foxo1_Pa0_pUb0(compartment_dnabound, x(3), global_par_ktr3_125);

% Reaction: id = R6, name = transport cytoplasm_Foxo1_polyubiquitinated to nucleus_Foxo1_polyubiquitinated
	reaction_R6=Function_for_transport_cytoplasm_Foxo1_Pa0_pUb1_to_nucleus_Foxo1_Pa0_pUb1(compartment_cytoplasm, x(4), global_par_ktr1_181818);

% Reaction: id = R7, name = transport nucleus_Foxo1_polyubiquitinated to cytoplasm_Foxo1_polyubiquitinated
	reaction_R7=Function_for_transport_nucleus_Foxo1_Pa0_pUb1_to_cytoplasm_Foxo1_Pa0_pUb1(global_par_ktr4_055, compartment_nucleus, x(5));

% Reaction: id = R8, name = transport nucleus_Foxo1_polyubiquitinated to dnabound_Foxo1_polyubiquitinated
	reaction_R8=Function_for_transport_nucleus_Foxo1_Pa0_pUb1_to_dnabound_Foxo1_Pa0_pUb1(global_par_ktr5_25, compartment_nucleus, x(5));

% Reaction: id = R9, name = transport dnabound_Foxo1_polyubiquitinated to nucleus_Foxo1_polyubiquitinated
	reaction_R9=Function_for_transport_dnabound_Foxo1_Pa0_pUb1_to_nucleus_Foxo1_Pa0_pUb1(compartment_dnabound, x(6), global_par_ktr3_125);

% Reaction: id = R10, name = transport cytoplasm_Foxo1_phosphorylated to nucleus_Foxo1_phosphorylated
	reaction_R10=Function_for_transport_cytoplasm_Foxo1_Pa1_pUb0_to_nucleus_Foxo1_Pa1_pUb0(compartment_cytoplasm, x(7), global_par_ktr2_0181818);

% Reaction: id = R11, name = transport nucleus_Foxo1_phosphorylated to cytoplasm_Foxo1_phosphorylated
	reaction_R11=Function_for_transport_nucleus_Foxo1_Pa1_pUb0_to_cytoplasm_Foxo1_Pa1_pUb0(global_par_ktr4_55, compartment_nucleus, x(8));

% Reaction: id = R12, name = transport nucleus_Foxo1_phosphorylated to dnabound_Foxo1_phosphorylated
	reaction_R12=Function_for_transport_nucleus_Foxo1_Pa1_pUb0_to_dnabound_Foxo1_Pa1_pUb0(global_par_ktr3_125, compartment_nucleus, x(8));

% Reaction: id = R13, name = transport dnabound_Foxo1_phosphorylated to nucleus_Foxo1_phosphorylated
	reaction_R13=Function_for_transport_dnabound_Foxo1_Pa1_pUb0_to_nucleus_Foxo1_Pa1_pUb0(compartment_dnabound, x(9), global_par_ktr3_125);

% Reaction: id = R14, name = transport cytoplasm_Foxo1_phosphorylated_polyubiquitinated to nucleus_Foxo1_phosphorylated_polyubiquitinated
	reaction_R14=Function_for_transport_cytoplasm_Foxo1_Pa1_pUb1_to_nucleus_Foxo1_Pa1_pUb1(compartment_cytoplasm, x(10), global_par_ktr2_0181818);

% Reaction: id = R15, name = transport nucleus_Foxo1_phosphorylated_polyubiquitinated to cytoplasm_Foxo1_phosphorylated_polyubiquitinated
	reaction_R15=Function_for_transport_nucleus_Foxo1_Pa1_pUb1_to_cytoplasm_Foxo1_Pa1_pUb1(global_par_ktr4_55, compartment_nucleus, x(11));

% Reaction: id = R16, name = transport nucleus_Foxo1_phosphorylated_polyubiquitinated to dnabound_Foxo1_phosphorylated_polyubiquitinated
	reaction_R16=Function_for_transport_nucleus_Foxo1_Pa1_pUb1_to_dnabound_Foxo1_Pa1_pUb1(global_par_ktr3_125, compartment_nucleus, x(11));

% Reaction: id = R17, name = transport dnabound_Foxo1_phosphorylated_polyubiquitinated to nucleus_Foxo1_phosphorylated_polyubiquitinated
	reaction_R17=Function_for_transport_dnabound_Foxo1_Pa1_pUb1_to_nucleus_Foxo1_Pa1_pUb1(compartment_dnabound, x(12), global_par_ktr3_125);

% Reaction: id = R18, name = phosphorylation of cytoplasm_Foxo1_not_polyubiquitinated Akt
	reaction_R18=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa0_pUb0_to_cytoplasm_Foxo1_Pa1_pUb0_by_Akt(x(28), compartment_cytoplasm, x(1), global_par_kkin);

% Reaction: id = R19, name = phosphorylation of nucleus_Foxo1_not_polyubiquitinated by Akt
	reaction_R19=Function_for_conversion_of_nucleus_Foxo1_Pa0_pUb0_to_nucleus_Foxo1_Pa1_pUb0_by_Akt(x(28), compartment_cytoplasm, global_par_kkin, compartment_nucleus, x(2));

% Reaction: id = R20, name = phosphorylation of dnabound_Foxo1_phosphorylated
	reaction_R20=Function_for_conversion_of_dnabound_Foxo1_Pa0_pUb0_to_dnabound_Foxo1_Pa1_pUb0_by_Akt(x(28), compartment_cytoplasm, compartment_dnabound, x(3), global_par_kkin);

% Reaction: id = R21, name = phosphorylation of cytoplasm_Foxo1_polyubiquitinated
	reaction_R21=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa0_pUb1_to_cytoplasm_Foxo1_Pa1_pUb1_by_Akt(x(28), compartment_cytoplasm, x(4), global_par_kkin);

% Reaction: id = R22, name = phosphorylation of nucleus_Foxo1_polyubiquitinated
	reaction_R22=Function_for_conversion_of_nucleus_Foxo1_Pa0_pUb1_to_nucleus_Foxo1_Pa1_pUb1_by_Akt(x(28), compartment_cytoplasm, global_par_kkin, compartment_nucleus, x(5));

% Reaction: id = R23, name = phosphorylation of dnabound_Foxo1_polyubiquitinated
	reaction_R23=Function_for_conversion_of_dnabound_Foxo1_Pa0_pUb1_to_dnabound_Foxo1_Pa1_pUb1_by_Akt(x(28), compartment_cytoplasm, compartment_dnabound, x(6), global_par_kkin);

% Reaction: id = R24, name = phosphorylation of cytoplasm_Foxo1 to cytoplasm_Foxo1_phosphorylated by SGK
	reaction_R24=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa0_pUb0_to_cytoplasm_Foxo1_Pa1_pUb0_by_SGK(x(29), compartment_cytoplasm, x(1), global_par_kkin);

% Reaction: id = R25, name = phosphorylation of nucleus_Foxo1 to nucleus_Foxo1_phosphorylated by SGK
	reaction_R25=Function_for_conversion_of_nucleus_Foxo1_Pa0_pUb0_to_nucleus_Foxo1_Pa1_pUb0_by_SGK(x(29), compartment_cytoplasm, global_par_kkin, compartment_nucleus, x(2));

% Reaction: id = R26, name = phosphorylation of dnabound_Foxo1 to dnabound_Foxo1_phosphorylated by SGK
	reaction_R26=Function_for_conversion_of_dnabound_Foxo1_Pa0_pUb0_to_dnabound_Foxo1_Pa1_pUb0_by_SGK(x(29), compartment_cytoplasm, compartment_dnabound, x(3), global_par_kkin);

% Reaction: id = R27, name = phosphorylation of cytoplasm_Foxo1_polyubiquitinated to cytoplasm_Foxo1_phosphorylated_polyubiquitinated by SGK
	reaction_R27=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa0_pUb1_to_cytoplasm_Foxo1_Pa1_pUb1_by_SGK(x(29), compartment_cytoplasm, x(4), global_par_kkin);

% Reaction: id = R28, name = phosphorylation of nucleus_Foxo1_polyubiquitinated to nucleus_Foxo1_phosphorylated_polyubiquitinatedby SGK
	reaction_R28=Function_for_conversion_of_nucleus_Foxo1_Pa0_pUb1_to_nucleus_Foxo1_Pa1_pUb1_by_SGK(x(29), compartment_cytoplasm, global_par_kkin, compartment_nucleus, x(5));

% Reaction: id = R29, name = phosphorylation of dnabound_Foxo1_polyubiquitinated to dnabound_Foxo1_phosphorylated_polyubiquitinated by SGK
	reaction_R29=Function_for_conversion_of_dnabound_Foxo1_Pa0_pUb1_to_dnabound_Foxo1_Pa1_pUb1_by_SGK(x(29), compartment_cytoplasm, compartment_dnabound, x(6), global_par_kkin);

% Reaction: id = R30, name = dephosphorylation of cytoplasm_Foxo1_phosphorylated
	reaction_R30=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa1_pUb0_to_cytoplasm_Foxo1_Pa0_pUb0_by_PP2A(x(34), compartment_cytoplasm, x(7), global_par_kdephos);

% Reaction: id = R31, name = dephosphorylation of nucleus_Foxo1_phosphorylated
	reaction_R31=Function_for_conversion_of_nucleus_Foxo1_Pa1_pUb0_to_nucleus_Foxo1_Pa0_pUb0_by_PP2A(x(34), compartment_cytoplasm, global_par_kdephos, compartment_nucleus, x(8));

% Reaction: id = R32, name = dephosphorylation of dnabound_Foxo1_phosphorylated
	reaction_R32=Function_for_conversion_of_dnabound_Foxo1_Pa1_pUb0_to_dnabound_Foxo1_Pa0_pUb0_by_PP2A(x(34), compartment_cytoplasm, compartment_dnabound, x(9), global_par_kdephos);

% Reaction: id = R33, name = dephosphorylation of cytoplasm_Foxo1_phosphorylated_polyubiquitinated
	reaction_R33=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa1_pUb1_to_cytoplasm_Foxo1_Pa0_pUb1_by_PP2A(x(34), compartment_cytoplasm, x(10), global_par_kdephos);

% Reaction: id = R34, name = dephosphorylation of nucleus_Foxo1_phosphorylated_polyubiquitinated
	reaction_R34=Function_for_conversion_of_nucleus_Foxo1_Pa1_pUb1_to_nucleus_Foxo1_Pa0_pUb1_by_PP2A(x(34), compartment_cytoplasm, global_par_kdephos, compartment_nucleus, x(11));

% Reaction: id = R35, name = dephosphorylation of dnabound_Foxo1_phosphorylated_polyubiquitinated
	reaction_R35=Function_for_conversion_of_dnabound_Foxo1_Pa1_pUb1_to_dnabound_Foxo1_Pa0_pUb1_by_PP2A(x(34), compartment_cytoplasm, compartment_dnabound, x(12), global_par_kdephos);

% Reaction: id = R36, name = polyubiquination of cytoplasm_Foxo1
	reaction_R36=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa0_pUb0_to_cytoplasm_Foxo1_Pa0_pUb1_by_SCF(x(39), compartment_cytoplasm, x(1), global_par_kub1);

% Reaction: id = R37, name = polyubiquination of nucleus_Foxo1
	reaction_R37=Function_for_conversion_of_nucleus_Foxo1_Pa0_pUb0_to_nucleus_Foxo1_Pa0_pUb1_by_SCF(x(39), compartment_cytoplasm, global_par_kub1, compartment_nucleus, x(2));

% Reaction: id = R38, name = polyubiquination of dnabound_Foxo1
	reaction_R38=Function_for_conversion_of_dnabound_Foxo1_Pa0_pUb0_to_dnabound_Foxo1_Pa0_pUb1_by_SCF(x(39), compartment_cytoplasm, compartment_dnabound, x(3), global_par_kub1);

% Reaction: id = R39, name = polyubiquination of cytoplasm_Foxo1_phosphorylated
	reaction_R39=compartment_cytoplasm*Function_for_conversion_of_cytoplasm_Foxo1_Pa1_pUb0_to_cytoplasm_Foxo1_Pa1_pUb1_by_SCF(x(39), compartment_cytoplasm, x(7), global_par_kub2);

% Reaction: id = R40, name = polyubiquination of nucleus_Foxo1_phosphorylated
	reaction_R40=Function_for_conversion_of_nucleus_Foxo1_Pa1_pUb0_to_nucleus_Foxo1_Pa1_pUb1_by_SCF(x(39), compartment_cytoplasm, global_par_kub2, compartment_nucleus, x(8));

% Reaction: id = R41, name = polyubiquination of dnabound_Foxo1_phosphorylated
	reaction_R41=Function_for_conversion_of_dnabound_Foxo1_Pa1_pUb0_to_dnabound_Foxo1_Pa1_pUb1_by_SCF(x(39), compartment_cytoplasm, compartment_dnabound, x(9), global_par_kub2);

% Reaction: id = R42, name = degradation of cytoplasm_Foxo1_polyubiquitinated
	reaction_R42=compartment_cytoplasm*Function_for_degradation_of_cytoplasm_Foxo1_Pa0_pUb1(x(40), compartment_cytoplasm, x(4), global_par_kdeg);

% Reaction: id = R43, name = degradation of cytoplasm_Foxo1_Pa1_polyubiquitinated
	reaction_R43=compartment_cytoplasm*Function_for_degradation_of_cytoplasm_Foxo1_Pa1_pUb1(x(40), compartment_cytoplasm, x(10), global_par_kdeg);

% Reaction: id = R44, name = transcription of inr by dnabound_Foxo1
	reaction_R44=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa0_pUb0(compartment_dnabound, x(3), global_par_ktranscr);

% Reaction: id = R45, name = transcription of sod2 by dnabound_Foxo1
	reaction_R45=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa0_pUb0(compartment_dnabound, x(3), global_par_ktranscr);

% Reaction: id = R46, name = transcription of inr by dnabound_Foxo1_polyubiquitinated
	reaction_R46=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa0_pUb1(compartment_dnabound, x(6), global_par_ktranscr);

% Reaction: id = R47, name = transcription of sod2 by dnabound_Foxo1_polyubiquitinated
	reaction_R47=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa0_pUb1(compartment_dnabound, x(6), global_par_ktranscr);

% Reaction: id = R48, name = transcription of inr by dnabound_Foxo1_phosphorylated
	reaction_R48=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa1_pUb0(compartment_dnabound, x(9), global_par_ktranscr);

% Reaction: id = R49, name = transcription of sod2 by dnabound_Foxo1_phosphorylated
	reaction_R49=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa1_pUb0(compartment_dnabound, x(9), global_par_ktranscr);

% Reaction: id = R50, name = transcription of inr by dnabound_Foxo1_Pa1_polyubiquitinated
	reaction_R50=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa1_pUb1(compartment_dnabound, x(12), global_par_ktranscr);

% Reaction: id = R51, name = transcription of sod2 by dnabound_Foxo1_Pa1_polyubiquitinated
	reaction_R51=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa1_pUb1(compartment_dnabound, x(12), global_par_ktranscr);

% Reaction: id = R53, name = export of inr RNA
	reaction_R53=Function_for_export_of_inr_RNA(global_par_kexp, compartment_nucleus, x(21));

% Reaction: id = R54, name = cyto degradation of inr RNA
	reaction_R54=compartment_cytoplasm*Function_for_cyto_degr_of_inr_RNA(compartment_cytoplasm, x(22), global_par_kmdeg);

% Reaction: id = R55, name = translation of inr
	reaction_R55=compartment_cytoplasm*Function_for_translation_of_inr(compartment_cytoplasm, x(22), global_par_ktransl);

% Reaction: id = R56, name = degradation of Inr protein
	reaction_R56=compartment_cytoplasm*Function_for_degradation_of_Inr_protein(compartment_cytoplasm, x(23), global_par_kpdeg);

% Reaction: id = R58, name = export of sod2 RNA
	reaction_R58=Function_for_export_of_sod2_RNA(global_par_kexp, compartment_nucleus, x(24));

% Reaction: id = R59, name = cyto degradation of sod2 RNA
	reaction_R59=compartment_cytoplasm*Function_for_cyto_degr_of_sod2_RNA(compartment_cytoplasm, x(25), global_par_kmdeg);

% Reaction: id = R60, name = translation of sod2
	reaction_R60=compartment_cytoplasm*Function_for_translation_of_sod2(compartment_cytoplasm, x(25), global_par_ktransl);

% Reaction: id = R61, name = degradation of Sod2 protein
	reaction_R61=compartment_cytoplasm*Function_for_degradation_of_Sod2_protein(compartment_cytoplasm, x(26), global_par_kpdeg);

% Species:   id = null, name = null, constant	const_species_null=0.0;

% Species:   id = degr_Foxo1, name = degr_Foxo1, constant	const_species_degr_Foxo1=0.0;

	xdot=zeros(41,1);
	
% Species:   id = cytoplasm_Foxo1_Pa0_pUb0, name = cytoplasm_Foxo1_unpolyubiquitinated_unphosphorylated, affected by kineticLaw
	xdot(1) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + ( 1.0 * reaction_R3) + (-1.0 * reaction_R18) + (-1.0 * reaction_R24) + ( 1.0 * reaction_R30) + (-1.0 * reaction_R36));
	
% Species:   id = nucleus_Foxo1_Pa0_pUb0, name = nucleus_Foxo1_unpolyubiquitinated_unphosphorylated, affected by kineticLaw
	xdot(2) = (1/(compartment_nucleus))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R4) + ( 1.0 * reaction_R5) + (-1.0 * reaction_R19) + (-1.0 * reaction_R25) + ( 1.0 * reaction_R31) + (-1.0 * reaction_R37));
	
% Species:   id = dnabound_Foxo1_Pa0_pUb0, name = dnabound_Foxo1_unpolyubiquitinated_unphosphorylated, affected by kineticLaw
	xdot(3) = (1/(compartment_dnabound))*(( 1.0 * reaction_R4) + (-1.0 * reaction_R5) + (-1.0 * reaction_R20) + (-1.0 * reaction_R26) + ( 1.0 * reaction_R32) + (-1.0 * reaction_R38));
	
% Species:   id = cytoplasm_Foxo1_Pa0_pUb1, name = cytoplasm_Foxo1_polyubiquitinated, affected by kineticLaw
	xdot(4) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R6) + ( 1.0 * reaction_R7) + (-1.0 * reaction_R21) + (-1.0 * reaction_R27) + ( 1.0 * reaction_R33) + ( 1.0 * reaction_R36) + (-1.0 * reaction_R42));
	
% Species:   id = nucleus_Foxo1_Pa0_pUb1, name = nucleus_Foxo1_polyubiquitinated, affected by kineticLaw
	xdot(5) = (1/(compartment_nucleus))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R7) + (-1.0 * reaction_R8) + ( 1.0 * reaction_R9) + (-1.0 * reaction_R22) + (-1.0 * reaction_R28) + ( 1.0 * reaction_R34) + ( 1.0 * reaction_R37));
	
% Species:   id = dnabound_Foxo1_Pa0_pUb1, name = dnabound_Foxo1_polyubiquitinated, affected by kineticLaw
	xdot(6) = (1/(compartment_dnabound))*(( 1.0 * reaction_R8) + (-1.0 * reaction_R9) + (-1.0 * reaction_R23) + (-1.0 * reaction_R29) + ( 1.0 * reaction_R35) + ( 1.0 * reaction_R38));
	
% Species:   id = cytoplasm_Foxo1_Pa1_pUb0, name = cytoplasm_Foxo1_phosphorylated, affected by kineticLaw
	xdot(7) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R10) + ( 1.0 * reaction_R11) + ( 1.0 * reaction_R18) + ( 1.0 * reaction_R24) + (-1.0 * reaction_R30) + (-1.0 * reaction_R39));
	
% Species:   id = nucleus_Foxo1_Pa1_pUb0, name = nucleus_Foxo1_phosphorylated, affected by kineticLaw
	xdot(8) = (1/(compartment_nucleus))*(( 1.0 * reaction_R10) + (-1.0 * reaction_R11) + (-1.0 * reaction_R12) + ( 1.0 * reaction_R13) + ( 1.0 * reaction_R19) + ( 1.0 * reaction_R25) + (-1.0 * reaction_R31) + (-1.0 * reaction_R40));
	
% Species:   id = dnabound_Foxo1_Pa1_pUb0, name = dnabound_Foxo1_phosphorylated, affected by kineticLaw
	xdot(9) = (1/(compartment_dnabound))*(( 1.0 * reaction_R12) + (-1.0 * reaction_R13) + ( 1.0 * reaction_R20) + ( 1.0 * reaction_R26) + (-1.0 * reaction_R32) + (-1.0 * reaction_R41));
	
% Species:   id = cytoplasm_Foxo1_Pa1_pUb1, name = cytoplasm_Foxo1_polyubiquitinated_phosphorylated, affected by kineticLaw
	xdot(10) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R14) + ( 1.0 * reaction_R15) + ( 1.0 * reaction_R21) + ( 1.0 * reaction_R27) + (-1.0 * reaction_R33) + ( 1.0 * reaction_R39) + (-1.0 * reaction_R43));
	
% Species:   id = nucleus_Foxo1_Pa1_pUb1, name = nucleus_Foxo1_polyubiquitinated_phosphorylated, affected by kineticLaw
	xdot(11) = (1/(compartment_nucleus))*(( 1.0 * reaction_R14) + (-1.0 * reaction_R15) + (-1.0 * reaction_R16) + ( 1.0 * reaction_R17) + ( 1.0 * reaction_R22) + ( 1.0 * reaction_R28) + (-1.0 * reaction_R34) + ( 1.0 * reaction_R40));
	
% Species:   id = dnabound_Foxo1_Pa1_pUb1, name = dnabound_Foxo1_polyubiquitinated_phosphorylated, affected by kineticLaw
	xdot(12) = (1/(compartment_dnabound))*(( 1.0 * reaction_R16) + (-1.0 * reaction_R17) + ( 1.0 * reaction_R23) + ( 1.0 * reaction_R29) + (-1.0 * reaction_R35) + ( 1.0 * reaction_R41));
	
% Species:   id = Foxo1_Pa0_tot, name = Foxo1_unphosphorylated_total, involved in a rule 	xdot(13) = x(13);
	
% Species:   id = Foxo1_Pa1_tot, name = Foxo1_phosphorylated_total, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = Foxo1_pUb0_tot, name = Foxo1_unpolyubiquitinated_total, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = Foxo1_pUb1_tot, name = Foxo1_polyubiquitinated_total, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = cytoplasm_Foxo1_tot, name = cytoplasm_Foxo1_total, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = nucleus_Foxo1_tot, name = nucleus_Foxo1_total, involved in a rule 	xdot(18) = x(18);
	
% Species:   id = dnabound_Foxo1_tot, name = dnabound_Foxo1_total, involved in a rule 	xdot(19) = x(19);
	
% Species:   id = Foxo1_all, name = Foxo1_total, involved in a rule 	xdot(20) = x(20);
	
% Species:   id = nucleus_RNA_Inr, name = nucleus_RNA_Inr, affected by kineticLaw
	xdot(21) = (1/(compartment_nucleus))*(( 1.0 * reaction_R44) + ( 1.0 * reaction_R46) + ( 1.0 * reaction_R48) + ( 1.0 * reaction_R50) + ( 1.0 * reaction_R52) + (-1.0 * reaction_R53));
	
% Species:   id = cytoplasm_RNA_Inr, name = cytoplasm_RNA_Inr, affected by kineticLaw
	xdot(22) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R53) + (-1.0 * reaction_R54));
	
% Species:   id = cytoplasm_Inr, name = cytoplasm_Inr, affected by kineticLaw
	xdot(23) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R55) + (-1.0 * reaction_R56));
	
% Species:   id = nucleus_RNA_Sod2, name = nucleus_RNA_Sod2, affected by kineticLaw
	xdot(24) = (1/(compartment_nucleus))*(( 1.0 * reaction_R45) + ( 1.0 * reaction_R47) + ( 1.0 * reaction_R49) + ( 1.0 * reaction_R51) + ( 1.0 * reaction_R57) + (-1.0 * reaction_R58));
	
% Species:   id = cytoplasm_RNA_Sod2, name = cytoplasm_RNA_Sod2, affected by kineticLaw
	xdot(25) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R58) + (-1.0 * reaction_R59));
	
% Species:   id = cytoplasm_Sod2, name = cytoplasm_Sod2, affected by kineticLaw
	xdot(26) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R60) + (-1.0 * reaction_R61));
	
% Species:   id = E2F1, name = E2F1
% Warning species is not changed by either rules or reactions
	xdot(27) = ;
	
% Species:   id = Akt, name = Akt
% Warning species is not changed by either rules or reactions
	xdot(28) = ;
	
% Species:   id = SGK, name = SGK
% Warning species is not changed by either rules or reactions
	xdot(29) = ;
	
% Species:   id = CDK2, name = CDK2
% Warning species is not changed by either rules or reactions
	xdot(30) = ;
	
% Species:   id = AMPK, name = AMPK
% Warning species is not changed by either rules or reactions
	xdot(31) = ;
	
% Species:   id = IKKb, name = IKK
% Warning species is not changed by either rules or reactions
	xdot(32) = ;
	
% Species:   id = JNK, name = JNK
% Warning species is not changed by either rules or reactions
	xdot(33) = ;
	
% Species:   id = PP2A, name = PP2A
% Warning species is not changed by either rules or reactions
	xdot(34) = ;
	
% Species:   id = CBPP300, name = CBPP300
% Warning species is not changed by either rules or reactions
	xdot(35) = ;
	
% Species:   id = SIRT1, name = SIRT1
% Warning species is not changed by either rules or reactions
	xdot(36) = ;
	
% Species:   id = E3, name = E3
% Warning species is not changed by either rules or reactions
	xdot(37) = ;
	
% Species:   id = USP7, name = USP7
% Warning species is not changed by either rules or reactions
	xdot(38) = ;
	
% Species:   id = SCF, name = SCF
% Warning species is not changed by either rules or reactions
	xdot(39) = ;
	
% Species:   id = Proteasome, name = Proteasome
% Warning species is not changed by either rules or reactions
	xdot(40) = ;
	
% Species:   id = Foxo1_total_rate, name = Foxo1_total_rate, involved in a rule 	xdot(41) = x(41);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_Synthesis(E2F1,cytoplasm,ksynth), z=(E2F1*cytoplasm*ksynth/cytoplasm);end

function z=Function_for_transport_cytoplasm_Foxo1_Pa0_pUb0_to_nucleus_Foxo1_Pa0_pUb0(cytoplasm,cytoplasm_Foxo1_Pa0_pUb0,ktr), z=(cytoplasm_Foxo1_Pa0_pUb0*cytoplasm*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa0_pUb0_to_cytoplasm_Foxo1_Pa0_pUb0(ktr,nucleus,nucleus_Foxo1_Pa0_pUb0), z=(nucleus_Foxo1_Pa0_pUb0*nucleus*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa0_pUb0_to_dnabound_Foxo1_Pa0_pUb0(ktr,nucleus,nucleus_Foxo1_Pa0_pUb0), z=(nucleus_Foxo1_Pa0_pUb0*nucleus*ktr);end

function z=Function_for_transport_dnabound_Foxo1_Pa0_pUb0_to_nucleus_Foxo1_Pa0_pUb0(dnabound,dnabound_Foxo1_Pa0_pUb0,ktr), z=(dnabound_Foxo1_Pa0_pUb0*dnabound*ktr);end

function z=Function_for_transport_cytoplasm_Foxo1_Pa0_pUb1_to_nucleus_Foxo1_Pa0_pUb1(cytoplasm,cytoplasm_Foxo1_Pa0_pUb1,ktr), z=(cytoplasm_Foxo1_Pa0_pUb1*cytoplasm*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa0_pUb1_to_cytoplasm_Foxo1_Pa0_pUb1(ktr,nucleus,nucleus_Foxo1_Pa0_pUb1), z=(nucleus_Foxo1_Pa0_pUb1*nucleus*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa0_pUb1_to_dnabound_Foxo1_Pa0_pUb1(ktr,nucleus,nucleus_Foxo1_Pa0_pUb1), z=(nucleus_Foxo1_Pa0_pUb1*nucleus*ktr);end

function z=Function_for_transport_dnabound_Foxo1_Pa0_pUb1_to_nucleus_Foxo1_Pa0_pUb1(dnabound,dnabound_Foxo1_Pa0_pUb1,ktr), z=(dnabound_Foxo1_Pa0_pUb1*dnabound*ktr);end

function z=Function_for_transport_cytoplasm_Foxo1_Pa1_pUb0_to_nucleus_Foxo1_Pa1_pUb0(cytoplasm,cytoplasm_Foxo1_Pa1_pUb0,ktr), z=(cytoplasm_Foxo1_Pa1_pUb0*cytoplasm*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa1_pUb0_to_cytoplasm_Foxo1_Pa1_pUb0(ktr,nucleus,nucleus_Foxo1_Pa1_pUb0), z=(nucleus_Foxo1_Pa1_pUb0*nucleus*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa1_pUb0_to_dnabound_Foxo1_Pa1_pUb0(ktr,nucleus,nucleus_Foxo1_Pa1_pUb0), z=(nucleus_Foxo1_Pa1_pUb0*nucleus*ktr);end

function z=Function_for_transport_dnabound_Foxo1_Pa1_pUb0_to_nucleus_Foxo1_Pa1_pUb0(dnabound,dnabound_Foxo1_Pa1_pUb0,ktr), z=(dnabound_Foxo1_Pa1_pUb0*dnabound*ktr);end

function z=Function_for_transport_cytoplasm_Foxo1_Pa1_pUb1_to_nucleus_Foxo1_Pa1_pUb1(cytoplasm,cytoplasm_Foxo1_Pa1_pUb1,ktr), z=(cytoplasm_Foxo1_Pa1_pUb1*cytoplasm*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa1_pUb1_to_cytoplasm_Foxo1_Pa1_pUb1(ktr,nucleus,nucleus_Foxo1_Pa1_pUb1), z=(nucleus_Foxo1_Pa1_pUb1*nucleus*ktr);end

function z=Function_for_transport_nucleus_Foxo1_Pa1_pUb1_to_dnabound_Foxo1_Pa1_pUb1(ktr,nucleus,nucleus_Foxo1_Pa1_pUb1), z=(nucleus_Foxo1_Pa1_pUb1*nucleus*ktr);end

function z=Function_for_transport_dnabound_Foxo1_Pa1_pUb1_to_nucleus_Foxo1_Pa1_pUb1(dnabound,dnabound_Foxo1_Pa1_pUb1,ktr), z=(dnabound_Foxo1_Pa1_pUb1*dnabound*ktr);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa0_pUb0_to_cytoplasm_Foxo1_Pa1_pUb0_by_Akt(Akt,cytoplasm,cytoplasm_Foxo1_Pa0_pUb0,kkin), z=(cytoplasm_Foxo1_Pa0_pUb0*cytoplasm*Akt*cytoplasm*kkin/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_pUb0_to_nucleus_Foxo1_Pa1_pUb0_by_Akt(Akt,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_pUb0), z=(nucleus_Foxo1_Pa0_pUb0*nucleus*Akt*cytoplasm*kkin);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_pUb0_to_dnabound_Foxo1_Pa1_pUb0_by_Akt(Akt,cytoplasm,dnabound,dnabound_Foxo1_Pa0_pUb0,kkin), z=(dnabound_Foxo1_Pa0_pUb0*dnabound*Akt*cytoplasm*kkin);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa0_pUb1_to_cytoplasm_Foxo1_Pa1_pUb1_by_Akt(Akt,cytoplasm,cytoplasm_Foxo1_Pa0_pUb1,kkin), z=(cytoplasm_Foxo1_Pa0_pUb1*cytoplasm*Akt*cytoplasm*kkin/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_pUb1_to_nucleus_Foxo1_Pa1_pUb1_by_Akt(Akt,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_pUb1), z=(nucleus_Foxo1_Pa0_pUb1*nucleus*Akt*cytoplasm*kkin);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_pUb1_to_dnabound_Foxo1_Pa1_pUb1_by_Akt(Akt,cytoplasm,dnabound,dnabound_Foxo1_Pa0_pUb1,kkin), z=(dnabound_Foxo1_Pa0_pUb1*dnabound*Akt*cytoplasm*kkin);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa0_pUb0_to_cytoplasm_Foxo1_Pa1_pUb0_by_SGK(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_pUb0,kkin), z=(cytoplasm_Foxo1_Pa0_pUb0*cytoplasm*SGK*cytoplasm*kkin/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_pUb0_to_nucleus_Foxo1_Pa1_pUb0_by_SGK(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_pUb0), z=(nucleus_Foxo1_Pa0_pUb0*nucleus*SGK*cytoplasm*kkin);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_pUb0_to_dnabound_Foxo1_Pa1_pUb0_by_SGK(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_pUb0,kkin), z=(dnabound_Foxo1_Pa0_pUb0*dnabound*SGK*cytoplasm*kkin);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa0_pUb1_to_cytoplasm_Foxo1_Pa1_pUb1_by_SGK(SGK,cytoplasm,cytoplasm_Foxo1_Pa0_pUb1,kkin), z=(cytoplasm_Foxo1_Pa0_pUb1*cytoplasm*SGK*cytoplasm*kkin/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_pUb1_to_nucleus_Foxo1_Pa1_pUb1_by_SGK(SGK,cytoplasm,kkin,nucleus,nucleus_Foxo1_Pa0_pUb1), z=(nucleus_Foxo1_Pa0_pUb1*nucleus*SGK*cytoplasm*kkin);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_pUb1_to_dnabound_Foxo1_Pa1_pUb1_by_SGK(SGK,cytoplasm,dnabound,dnabound_Foxo1_Pa0_pUb1,kkin), z=(dnabound_Foxo1_Pa0_pUb1*dnabound*SGK*cytoplasm*kkin);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa1_pUb0_to_cytoplasm_Foxo1_Pa0_pUb0_by_PP2A(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_pUb0,kdephos), z=(cytoplasm_Foxo1_Pa1_pUb0*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa1_pUb0_to_nucleus_Foxo1_Pa0_pUb0_by_PP2A(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_pUb0), z=(nucleus_Foxo1_Pa1_pUb0*nucleus*PP2A*cytoplasm*kdephos);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa1_pUb0_to_dnabound_Foxo1_Pa0_pUb0_by_PP2A(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_pUb0,kdephos), z=(dnabound_Foxo1_Pa1_pUb0*dnabound*PP2A*cytoplasm*kdephos);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa1_pUb1_to_cytoplasm_Foxo1_Pa0_pUb1_by_PP2A(PP2A,cytoplasm,cytoplasm_Foxo1_Pa1_pUb1,kdephos), z=(cytoplasm_Foxo1_Pa1_pUb1*cytoplasm*PP2A*cytoplasm*kdephos/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa1_pUb1_to_nucleus_Foxo1_Pa0_pUb1_by_PP2A(PP2A,cytoplasm,kdephos,nucleus,nucleus_Foxo1_Pa1_pUb1), z=(nucleus_Foxo1_Pa1_pUb1*nucleus*PP2A*cytoplasm*kdephos);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa1_pUb1_to_dnabound_Foxo1_Pa0_pUb1_by_PP2A(PP2A,cytoplasm,dnabound,dnabound_Foxo1_Pa1_pUb1,kdephos), z=(dnabound_Foxo1_Pa1_pUb1*dnabound*PP2A*cytoplasm*kdephos);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa0_pUb0_to_cytoplasm_Foxo1_Pa0_pUb1_by_SCF(SCF,cytoplasm,cytoplasm_Foxo1_Pa0_pUb0,kub), z=(cytoplasm_Foxo1_Pa0_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa0_pUb0_to_nucleus_Foxo1_Pa0_pUb1_by_SCF(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa0_pUb0), z=(nucleus_Foxo1_Pa0_pUb0*nucleus*SCF*cytoplasm*kub);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa0_pUb0_to_dnabound_Foxo1_Pa0_pUb1_by_SCF(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa0_pUb0,kub), z=(dnabound_Foxo1_Pa0_pUb0*dnabound*SCF*cytoplasm*kub);end

function z=Function_for_conversion_of_cytoplasm_Foxo1_Pa1_pUb0_to_cytoplasm_Foxo1_Pa1_pUb1_by_SCF(SCF,cytoplasm,cytoplasm_Foxo1_Pa1_pUb0,kub), z=(cytoplasm_Foxo1_Pa1_pUb0*cytoplasm*SCF*cytoplasm*kub/cytoplasm);end

function z=Function_for_conversion_of_nucleus_Foxo1_Pa1_pUb0_to_nucleus_Foxo1_Pa1_pUb1_by_SCF(SCF,cytoplasm,kub,nucleus,nucleus_Foxo1_Pa1_pUb0), z=(nucleus_Foxo1_Pa1_pUb0*nucleus*SCF*cytoplasm*kub);end

function z=Function_for_conversion_of_dnabound_Foxo1_Pa1_pUb0_to_dnabound_Foxo1_Pa1_pUb1_by_SCF(SCF,cytoplasm,dnabound,dnabound_Foxo1_Pa1_pUb0,kub), z=(dnabound_Foxo1_Pa1_pUb0*dnabound*SCF*cytoplasm*kub);end

function z=Function_for_degradation_of_cytoplasm_Foxo1_Pa0_pUb1(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa0_pUb1,kdeg), z=(cytoplasm_Foxo1_Pa0_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm);end

function z=Function_for_degradation_of_cytoplasm_Foxo1_Pa1_pUb1(Proteasome,cytoplasm,cytoplasm_Foxo1_Pa1_pUb1,kdeg), z=(cytoplasm_Foxo1_Pa1_pUb1*cytoplasm*Proteasome*cytoplasm*kdeg/cytoplasm);end

function z=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa0_pUb0(dnabound,dnabound_Foxo1_Pa0_pUb0,ktranscr), z=(dnabound_Foxo1_Pa0_pUb0*dnabound*ktranscr);end

function z=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa0_pUb0(dnabound,dnabound_Foxo1_Pa0_pUb0,ktranscr), z=(dnabound_Foxo1_Pa0_pUb0*dnabound*ktranscr);end

function z=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa0_pUb1(dnabound,dnabound_Foxo1_Pa0_pUb1,ktranscr), z=(dnabound_Foxo1_Pa0_pUb1*dnabound*ktranscr);end

function z=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa0_pUb1(dnabound,dnabound_Foxo1_Pa0_pUb1,ktranscr), z=(dnabound_Foxo1_Pa0_pUb1*dnabound*ktranscr);end

function z=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa1_pUb0(dnabound,dnabound_Foxo1_Pa1_pUb0,ktranscr), z=(dnabound_Foxo1_Pa1_pUb0*dnabound*ktranscr);end

function z=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa1_pUb0(dnabound,dnabound_Foxo1_Pa1_pUb0,ktranscr), z=(dnabound_Foxo1_Pa1_pUb0*dnabound*ktranscr);end

function z=Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa1_pUb1(dnabound,dnabound_Foxo1_Pa1_pUb1,ktranscr), z=(dnabound_Foxo1_Pa1_pUb1*dnabound*ktranscr);end

function z=Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa1_pUb1(dnabound,dnabound_Foxo1_Pa1_pUb1,ktranscr), z=(dnabound_Foxo1_Pa1_pUb1*dnabound*ktranscr);end

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


