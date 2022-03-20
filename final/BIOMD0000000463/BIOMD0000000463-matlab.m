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
% Model name = Heldt2012 - Influenza Virus Replication
%
% is http://identifiers.org/biomodels.db/MODEL1307270000
% is http://identifiers.org/biomodels.db/BIOMD0000000463
% isDescribedBy http://identifiers.org/pubmed/22593159
% isDerivedFrom http://identifiers.org/pubmed/9894006
%


function main()
%Initial conditions vector
	x0=zeros(39,1);
	x0(1) = 150.0;
	x0(2) = 0.0;
	x0(3) = 10.0;
	x0(4) = 1000.0;
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

% Compartment: id = compartment_1, name = cell, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  parameter_1, name = kAttHi
	global_par_parameter_1=0.0809;
% Parameter:   id =  parameter_2, name = kAttLo
	global_par_parameter_2=4.55E-4;
% Parameter:   id =  parameter_3, name = kDisHi
% Parameter:   id =  parameter_4, name = kDisLo
% Parameter:   id =  parameter_5, name = kEn
	global_par_parameter_5=4.8;
% Parameter:   id =  parameter_6, name = kFus
	global_par_parameter_6=3.21;
% Parameter:   id =  parameter_7, name = kDegVen
% Parameter:   id =  parameter_8, name = kImp
	global_par_parameter_8=6.0;
% Parameter:   id =  parameter_9, name = kSynP
	global_par_parameter_9=64800.0;
% Parameter:   id =  parameter_10, name = kSynV
	global_par_parameter_10=13.86;
% Parameter:   id =  parameter_11, name = kSynC
	global_par_parameter_11=1.38;
% Parameter:   id =  parameter_12, name = kBindRdrp
	global_par_parameter_12=1.0;
% Parameter:   id =  parameter_13, name = kBindNp
	global_par_parameter_13=3.01E-4;
% Parameter:   id =  parameter_14, name = kBindM1
	global_par_parameter_14=1.39E-6;
% Parameter:   id =  parameter_15, name = kExp
	global_par_parameter_15=1.0E-6;
% Parameter:   id =  parameter_16, name = kSynP_Drib
% Parameter:   id =  parameter_17, name = kRdrp
	global_par_parameter_17=1.0;
% Parameter:   id =  parameter_18, name = kRel
	global_par_parameter_18=0.0037;
% Parameter:   id =  parameter_19, name = kDegR
	global_par_parameter_19=36.36;
% Parameter:   id =  parameter_20, name = kDegRnp
	global_par_parameter_20=0.09;
% Parameter:   id =  parameter_21, name = kDegM
	global_par_parameter_21=0.33;
% Parameter:   id =  parameter_22, name = kDegRrdrp
	global_par_parameter_22=4.25;
% Parameter:   id =  parameter_23, name = Ffus
	global_par_parameter_23=0.51;
% Parameter:   id =  parameter_24, name = Drib
	global_par_parameter_24=160.0;
% Parameter:   id =  parameter_25, name = Fspl7
	global_par_parameter_25=0.02;
% Parameter:   id =  parameter_26, name = Fspl8
	global_par_parameter_26=0.125;
% Parameter:   id =  parameter_27, name = kSynP_M1
% Parameter:   id =  parameter_28, name = kSynP_M2
% Parameter:   id =  parameter_29, name = kSynP_NEP
% Parameter:   id =  parameter_30, name = L1
	global_par_parameter_30=2320.0;
% Parameter:   id =  parameter_31, name = L2
	global_par_parameter_31=2320.0;
% Parameter:   id =  parameter_32, name = L3
	global_par_parameter_32=2211.0;
% Parameter:   id =  parameter_33, name = L4
	global_par_parameter_33=1757.0;
% Parameter:   id =  parameter_34, name = L5
	global_par_parameter_34=1540.0;
% Parameter:   id =  parameter_35, name = L6
	global_par_parameter_35=1392.0;
% Parameter:   id =  parameter_36, name = L7
	global_par_parameter_36=1005.0;
% Parameter:   id =  parameter_37, name = L8
	global_par_parameter_37=868.0;
% Parameter:   id =  parameter_38, name = kSynM
	global_par_parameter_38=250000.0;
% Parameter:   id =  parameter_39, name = kSynM1
% Parameter:   id =  parameter_40, name = kSynM2
% Parameter:   id =  parameter_41, name = kSynM3
% Parameter:   id =  parameter_42, name = kSynM4
% Parameter:   id =  parameter_43, name = kSynM5
% Parameter:   id =  parameter_44, name = kSynM6
% Parameter:   id =  parameter_45, name = kSynM7
% Parameter:   id =  parameter_46, name = kSynM8
% Parameter:   id =  parameter_47, name = kEqHi
	global_par_parameter_47=0.0113;
% Parameter:   id =  parameter_48, name = kEqLo
	global_par_parameter_48=8.33E-5;
% assignmentRule: variable = parameter_16
	global_par_parameter_16=global_par_parameter_9/global_par_parameter_24;
% assignmentRule: variable = parameter_3
	global_par_parameter_3=global_par_parameter_1/global_par_parameter_47;
% assignmentRule: variable = parameter_4
	global_par_parameter_4=global_par_parameter_2/global_par_parameter_48;
% assignmentRule: variable = parameter_7
	global_par_parameter_7=(1-global_par_parameter_23)/global_par_parameter_23*global_par_parameter_6;
% assignmentRule: variable = parameter_43
	global_par_parameter_43=global_par_parameter_38/global_par_parameter_34/8;
% assignmentRule: variable = parameter_44
	global_par_parameter_44=global_par_parameter_38/global_par_parameter_35/8;
% assignmentRule: variable = parameter_27
	global_par_parameter_27=global_par_parameter_9/global_par_parameter_24*(1-global_par_parameter_25);
% assignmentRule: variable = parameter_46
	global_par_parameter_46=global_par_parameter_38/global_par_parameter_37/8;
% assignmentRule: variable = parameter_40
	global_par_parameter_40=global_par_parameter_38/global_par_parameter_31/8;
% assignmentRule: variable = parameter_41
	global_par_parameter_41=global_par_parameter_38/global_par_parameter_32/8;
% assignmentRule: variable = parameter_39
	global_par_parameter_39=global_par_parameter_38/global_par_parameter_30/8;
% assignmentRule: variable = parameter_42
	global_par_parameter_42=global_par_parameter_38/global_par_parameter_33/8;
% assignmentRule: variable = parameter_28
	global_par_parameter_28=global_par_parameter_9/global_par_parameter_24*global_par_parameter_25;
% assignmentRule: variable = parameter_29
	global_par_parameter_29=global_par_parameter_9/global_par_parameter_24*global_par_parameter_26;
% assignmentRule: variable = parameter_45
	global_par_parameter_45=global_par_parameter_38/global_par_parameter_36/8;
% assignmentRule: variable = species_38
	x(38)=8*(x(2)+x(5)+x(6))+x(8)+x(9)+x(18)+x(19)+x(15)+x(16);
% assignmentRule: variable = species_36
	x(36)=x(10)+x(12)+x(17);
% assignmentRule: variable = species_39
	x(39)=x(38)/8;
% assignmentRule: variable = species_37
	x(37)=x(36)/8;

% Reaction: id = reaction_1, name = Binding of virions to high-affinity sites
	reaction_reaction_1=compartment_compartment_1*(global_par_parameter_1*x(3)*x(1)-global_par_parameter_3*x(2));

% Reaction: id = reaction_2, name = Binding of virions to low-affinity sites
	reaction_reaction_2=compartment_compartment_1*(global_par_parameter_2*x(3)*x(4)-global_par_parameter_4*x(5));

% Reaction: id = reaction_3, name = Endocytosis of virions bound to high-affinity sites
	reaction_reaction_3=compartment_compartment_1*global_par_parameter_5*x(2);

% Reaction: id = reaction_4, name = Endocytosis of virions bound to low-affinity sites
	reaction_reaction_4=compartment_compartment_1*global_par_parameter_5*x(5);

% Reaction: id = reaction_5, name = Fusion of virions with endosomes
	reaction_reaction_5=compartment_compartment_1*global_par_parameter_6*x(6);

% Reaction: id = reaction_6, name = Degradation of virions in endosomes
	reaction_reaction_6=compartment_compartment_1*global_par_parameter_7*x(6);

% Reaction: id = reaction_7, name = Nuclear import of vRNPs
	reaction_reaction_7=compartment_compartment_1*global_par_parameter_8*x(8);

% Reaction: id = reaction_8, name = Synthesis of cRNA
	reaction_reaction_8=compartment_compartment_1*global_par_parameter_11*x(9);

% Reaction: id = reaction_9, name = Binding of polymerase to nascent cRNA
	reaction_reaction_9=compartment_compartment_1*global_par_parameter_12*x(10)*x(11);

% Reaction: id = reaction_10, name = Binding of NP to RdRp-cRNA complexes
	reaction_reaction_10=compartment_compartment_1*function_1(global_par_parameter_13, x(12), x(13));

% Reaction: id = reaction_11, name = Binding of M1 to vRNPs in the nucleus
	reaction_reaction_11=compartment_compartment_1*function_1(global_par_parameter_14, x(9), x(14));

% Reaction: id = reaction_12, name = Nuclear export of vRNPs
	reaction_reaction_12=compartment_compartment_1*global_par_parameter_15*x(15)*x(31);

% Reaction: id = reaction_13, name = Synthesis of vRNA
	reaction_reaction_13=compartment_compartment_1*global_par_parameter_10*x(17);

% Reaction: id = reaction_14, name = Binding of polymerase to nascent vRNA
	reaction_reaction_14=compartment_compartment_1*global_par_parameter_12*x(18)*x(11);

% Reaction: id = reaction_15, name = Binding of NP to RdRp-vRNA complexes
	reaction_reaction_15=compartment_compartment_1*function_1(global_par_parameter_13, x(19), x(13));

% Reaction: id = reaction_16, name = Synthesis of mRNA of segment 1
	reaction_reaction_16=compartment_compartment_1*global_par_parameter_39*x(9);

% Reaction: id = reaction_17, name = Synthesis of mRNA of segment 2
	reaction_reaction_17=compartment_compartment_1*global_par_parameter_40*x(9);

% Reaction: id = reaction_18, name = Synthesis of mRNA of segment 3
	reaction_reaction_18=compartment_compartment_1*global_par_parameter_41*x(9);

% Reaction: id = reaction_19, name = Synthesis of mRNA of segment 4
	reaction_reaction_19=compartment_compartment_1*global_par_parameter_42*x(9);

% Reaction: id = reaction_20, name = Synthesis of mRNA of segment 5
	reaction_reaction_20=compartment_compartment_1*global_par_parameter_43*x(9);

% Reaction: id = reaction_21, name = Synthesis of mRNA of segment 6
	reaction_reaction_21=compartment_compartment_1*global_par_parameter_44*x(9);

% Reaction: id = reaction_22, name = Synthesis of mRNA of segment 7
	reaction_reaction_22=compartment_compartment_1*global_par_parameter_45*x(9);

% Reaction: id = reaction_23, name = Synthesis of mRNA of segment 8
	reaction_reaction_23=compartment_compartment_1*global_par_parameter_46*x(9);

% Reaction: id = reaction_24, name = Synthesis of PB1
	reaction_reaction_24=compartment_compartment_1*global_par_parameter_16*x(21);

% Reaction: id = reaction_25, name = Synthesis of PB2
	reaction_reaction_25=compartment_compartment_1*global_par_parameter_16*x(20);

% Reaction: id = reaction_26, name = Synthesis of PA
	reaction_reaction_26=compartment_compartment_1*global_par_parameter_16*x(22);

% Reaction: id = reaction_27, name = Formation of polymerases
	reaction_reaction_27=compartment_compartment_1*global_par_parameter_17*x(28)*x(29)*x(30);

% Reaction: id = reaction_28, name = Synthesis of NP
	reaction_reaction_28=compartment_compartment_1*global_par_parameter_16*x(24);

% Reaction: id = reaction_29, name = Synthesis of M1
	reaction_reaction_29=compartment_compartment_1*global_par_parameter_27*x(26);

% Reaction: id = reaction_30, name = Synthesis of NEP
	reaction_reaction_30=compartment_compartment_1*global_par_parameter_29*x(27);

% Reaction: id = reaction_31, name = Synthesis of HA
	reaction_reaction_31=compartment_compartment_1*global_par_parameter_16*x(23);

% Reaction: id = reaction_32, name = Synthesis of NA
	reaction_reaction_32=compartment_compartment_1*global_par_parameter_16*x(25);

% Reaction: id = reaction_33, name = Synthesis of M2
	reaction_reaction_33=compartment_compartment_1*global_par_parameter_28*x(26);

% Reaction: id = reaction_34, name = Virus release	% Local Parameter:   id =  KmB, name = KmB
	reaction_reaction_34_KmB=450.0;
	% Local Parameter:   id =  KmC, name = KmC
	reaction_reaction_34_KmC=5000.0;
	% Local Parameter:   id =  KmD, name = KmD
	reaction_reaction_34_KmD=10000.0;
	% Local Parameter:   id =  KmE, name = KmE
	reaction_reaction_34_KmE=1000.0;
	% Local Parameter:   id =  KmF, name = KmF
	reaction_reaction_34_KmF=30000.0;
	% Local Parameter:   id =  KmG, name = KmG
	reaction_reaction_34_KmG=400.0;
	% Local Parameter:   id =  KmH, name = KmH
	reaction_reaction_34_KmH=1650.0;

	reaction_reaction_34=compartment_compartment_1*function_2(global_par_parameter_18, x(16), x(11), reaction_reaction_34_KmB, x(32), reaction_reaction_34_KmC, x(13), reaction_reaction_34_KmD, x(33), reaction_reaction_34_KmE, x(14), reaction_reaction_34_KmF, x(34), reaction_reaction_34_KmG, x(31), reaction_reaction_34_KmH);

% Reaction: id = reaction_35, name = Degradation of vRNPs in the nucleus
	reaction_reaction_35=compartment_compartment_1*global_par_parameter_20*x(9);

% Reaction: id = reaction_36, name = Degradation of nascent cRNA
	reaction_reaction_36=compartment_compartment_1*global_par_parameter_19*x(10);

% Reaction: id = reaction_37, name = Degradation of nascent vRNA
	reaction_reaction_37=compartment_compartment_1*global_par_parameter_19*x(18);

% Reaction: id = reaction_38, name = Degradation of RdRp-cRNA
	reaction_reaction_38=compartment_compartment_1*global_par_parameter_22*x(12);

% Reaction: id = reaction_39, name = Degradation of RdRp-vRNA
	reaction_reaction_39=compartment_compartment_1*global_par_parameter_22*x(19);

% Reaction: id = reaction_40, name = Degradation of cRNPs
	reaction_reaction_40=compartment_compartment_1*global_par_parameter_20*x(17);

% Reaction: id = reaction_41, name = Degradation of M1-vRNP complexes in the nucleus
	reaction_reaction_41=compartment_compartment_1*global_par_parameter_20*x(15);

% Reaction: id = reaction_42, name = Degradation of M1-vRNP complexes in the cytoplasm
	reaction_reaction_42=compartment_compartment_1*global_par_parameter_20*x(16);

% Reaction: id = reaction_43, name = Degradation of mRNA of segment 1
	reaction_reaction_43=compartment_compartment_1*global_par_parameter_21*x(20);

% Reaction: id = reaction_44, name = Degradation of mRNA of segment 2
	reaction_reaction_44=compartment_compartment_1*global_par_parameter_21*x(21);

% Reaction: id = reaction_45, name = Degradation of mRNA of segment 3
	reaction_reaction_45=compartment_compartment_1*global_par_parameter_21*x(22);

% Reaction: id = reaction_46, name = Degradation of mRNA of segment 4
	reaction_reaction_46=compartment_compartment_1*global_par_parameter_21*x(23);

% Reaction: id = reaction_47, name = Degradation of mRNA of segment 5
	reaction_reaction_47=compartment_compartment_1*global_par_parameter_21*x(24);

% Reaction: id = reaction_48, name = Degradation of mRNA of segment 6
	reaction_reaction_48=compartment_compartment_1*global_par_parameter_21*x(25);

% Reaction: id = reaction_49, name = Degradation of mRNA of segment 7
	reaction_reaction_49=compartment_compartment_1*global_par_parameter_21*x(26);

% Reaction: id = reaction_50, name = Degradation of mRNA of segment 8
	reaction_reaction_50=compartment_compartment_1*global_par_parameter_21*x(27);

	xdot=zeros(39,1);
	
% Species:   id = species_1, name = Bhi, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_3));
	
% Species:   id = species_2, name = VattHi, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_3));
	
% Species:   id = species_3, name = Vex, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2));
	
% Species:   id = species_4, name = Blo, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_4));
	
% Species:   id = species_5, name = VattLo, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_4));
	
% Species:   id = species_6, name = Ven, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = species_7, name = Vfus, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_5));
	
% Species:   id = species_8, name = VpCyt, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*(( 8.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_7));
	
% Species:   id = species_9, name = VpNuc, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17) + ( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_18) + ( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_20) + ( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_22) + ( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_35));
	
% Species:   id = species_10, name = Rc, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_36));
	
% Species:   id = species_11, name = P_Rdrp, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_27) + (-37.0 * reaction_reaction_34));
	
% Species:   id = species_12, name = RcRdrp, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_38));
	
% Species:   id = species_13, name = P_Np, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_1))*((-71.0 * reaction_reaction_10) + (-71.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_28) + (-433.0 * reaction_reaction_34));
	
% Species:   id = species_14, name = P_M1, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_1))*((-8.5 * reaction_reaction_11) + ( 1.0 * reaction_reaction_29) + (-2932.0 * reaction_reaction_34));
	
% Species:   id = species_15, name = VpNucM1, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_41));
	
% Species:   id = species_16, name = VpCytM1, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_12) + (-8.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_42));
	
% Species:   id = species_17, name = Cp, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_40));
	
% Species:   id = species_18, name = Rv, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_37));
	
% Species:   id = species_19, name = RvRdrp, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_39));
	
% Species:   id = species_20, name = Rm1, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_43));
	
% Species:   id = species_21, name = Rm2, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_24) + ( 1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_44));
	
% Species:   id = species_22, name = Rm3, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_26) + ( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_45));
	
% Species:   id = species_23, name = Rm4, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_31) + ( 1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_46));
	
% Species:   id = species_24, name = Rm5, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_28) + ( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_47));
	
% Species:   id = species_25, name = Rm6, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_32) + ( 1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_48));
	
% Species:   id = species_26, name = Rm7, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_29) + ( 1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_33) + ( 1.0 * reaction_reaction_33) + (-1.0 * reaction_reaction_49));
	
% Species:   id = species_27, name = Rm8, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_30) + ( 1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_50));
	
% Species:   id = species_28, name = P_Pb1, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_27));
	
% Species:   id = species_29, name = P_Pb2, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_27));
	
% Species:   id = species_30, name = P_Pa, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_26) + (-1.0 * reaction_reaction_27));
	
% Species:   id = species_31, name = P_Nep, affected by kineticLaw
	xdot(31) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_30) + (-157.0 * reaction_reaction_34));
	
% Species:   id = species_32, name = P_Ha, affected by kineticLaw
	xdot(32) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_31) + (-500.0 * reaction_reaction_34));
	
% Species:   id = species_33, name = P_Na, affected by kineticLaw
	xdot(33) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_32) + (-100.0 * reaction_reaction_34));
	
% Species:   id = species_34, name = P_M2, affected by kineticLaw
	xdot(34) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_33) + (-40.0 * reaction_reaction_34));
	
% Species:   id = species_35, name = Vrel, affected by kineticLaw
	xdot(35) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_34));
	
% Species:   id = species_36, name = total cRNA, involved in a rule 	xdot(36) = x(36);
	
% Species:   id = species_37, name = total cRNA of a segment, involved in a rule 	xdot(37) = x(37);
	
% Species:   id = species_38, name = total vRNA, involved in a rule 	xdot(38) = x(38);
	
% Species:   id = species_39, name = total vRNA of a segment, involved in a rule 	xdot(39) = x(39);
end

function z=function_2(k,substrateA,substrateB,KmB,substrateC,KmC,substrateD,KmD,substrateE,KmE,substrateF,KmF,substrateG,KmG,substrateH,KmH), z=(k*substrateA*substrateB*substrateC*substrateD*substrateE*substrateF*substrateG*substrateH/((substrateB+KmB)*(substrateC+KmC)*(substrateD+KmD)*(substrateE+KmE)*(substrateF+KmF)*(substrateG+KmG)*(substrateH+KmH)));end

function z=function_1(k,substratea,substrateb), z=(k*substratea*substrateb);end

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


