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
% Model name = Bachmann2011 - Division of labor by dual feedback regulators controls JAK2/STAT5 signaling over broad ligand range
%
% isDescribedBy http://identifiers.org/pubmed/21772264
% is http://identifiers.org/biomodels.db/MODEL1911140001
% is http://identifiers.org/biomodels.db/BIOMD0000000861
%


function main()
%Initial conditions vector
	x0=zeros(26,1);
	x0(1) = 3.97622;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 26.7251;
	x0(8) = 0.0;
	x0(9) = 79.7535;
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
	x0(26) = 1.24997E-7;


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

% Compartment: id = cyt, name = cyt, constant
	compartment_cyt=0.4;
% Compartment: id = nuc, name = nuc, constant
	compartment_nuc=0.275;
% Parameter:   id =  ActD, name = ActD
	global_par_ActD=0.0;
% Parameter:   id =  CISEqc, name = CISEqc
	global_par_CISEqc=432.871;
% Parameter:   id =  CISEqcOE, name = CISEqcOE
	global_par_CISEqcOE=0.530261;
% Parameter:   id =  CISInh, name = CISInh
	global_par_CISInh=7.84653E8;
% Parameter:   id =  CISRNADelay, name = CISRNADelay
	global_par_CISRNADelay=0.144775;
% Parameter:   id =  CISRNAEqc, name = CISRNAEqc
	global_par_CISRNAEqc=1.0;
% Parameter:   id =  CISRNATurn, name = CISRNATurn
	global_par_CISRNATurn=1000.0;
% Parameter:   id =  CISTurn, name = CISTurn
	global_par_CISTurn=0.00839842;
% Parameter:   id =  CISoe, name = CISoe
	global_par_CISoe=0.0;
% Parameter:   id =  EpoRActJAK2, name = EpoRActJAK2
	global_par_EpoRActJAK2=0.267308;
% Parameter:   id =  EpoRCISInh, name = EpoRCISInh
	global_par_EpoRCISInh=1000000.0;
% Parameter:   id =  EpoRCISRemove, name = EpoRCISRemove
	global_par_EpoRCISRemove=5.42932;
% Parameter:   id =  JAK2ActEpo, name = JAK2ActEpo
	global_par_JAK2ActEpo=633253.0;
% Parameter:   id =  JAK2EpoRDeaSHP1, name = JAK2EpoRDeaSHP1
	global_par_JAK2EpoRDeaSHP1=142.722;
% Parameter:   id =  SHP1ActEpoR, name = SHP1ActEpoR
	global_par_SHP1ActEpoR=0.001;
% Parameter:   id =  SHP1Dea, name = SHP1Dea
	global_par_SHP1Dea=0.00816391;
% Parameter:   id =  SOCS3Eqc, name = SOCS3Eqc
	global_par_SOCS3Eqc=173.653;
% Parameter:   id =  SOCS3EqcOE, name = SOCS3EqcOE
	global_par_SOCS3EqcOE=0.679157;
% Parameter:   id =  SOCS3Inh, name = SOCS3Inh
	global_par_SOCS3Inh=10.408;
% Parameter:   id =  SOCS3RNADelay, name = SOCS3RNADelay
	global_par_SOCS3RNADelay=1.06465;
% Parameter:   id =  SOCS3RNAEqc, name = SOCS3RNAEqc
	global_par_SOCS3RNAEqc=1.0;
% Parameter:   id =  SOCS3RNATurn, name = SOCS3RNATurn
	global_par_SOCS3RNATurn=0.00830844;
% Parameter:   id =  SOCS3Turn, name = SOCS3Turn
	global_par_SOCS3Turn=10000.0;
% Parameter:   id =  SOCS3oe, name = SOCS3oe
	global_par_SOCS3oe=0.0;
% Parameter:   id =  STAT5ActEpoR, name = STAT5ActEpoR
	global_par_STAT5ActEpoR=38.9757;
% Parameter:   id =  STAT5ActJAK2, name = STAT5ActJAK2
	global_par_STAT5ActJAK2=0.0780965;
% Parameter:   id =  STAT5Exp, name = STAT5Exp
	global_par_STAT5Exp=0.0745155;
% Parameter:   id =  STAT5Imp, name = STAT5Imp
	global_par_STAT5Imp=0.0268889;
% Parameter:   id =  epo_level, name = epo_level
	global_par_epo_level=1.24997E-7;
% Parameter:   id =  init_EpoRJAK2, name = init_EpoRJAK2
	global_par_init_EpoRJAK2=3.97622;
% Parameter:   id =  init_SHP1, name = init_SHP1
	global_par_init_SHP1=26.7251;
% Parameter:   id =  init_STAT5, name = init_STAT5
	global_par_init_STAT5=79.7535;

% Reaction: id = reaction_1, name = reaction_1
	reaction_reaction_1=compartment_cyt*Function_for_reaction_1(x(26), x(1), global_par_JAK2ActEpo, x(25), global_par_SOCS3Eqc, global_par_SOCS3Inh);

% Reaction: id = reaction_2, name = reaction_2
	reaction_reaction_2=compartment_cyt*Function_for_reaction_2(x(2), global_par_JAK2EpoRDeaSHP1, x(8), global_par_init_SHP1);

% Reaction: id = reaction_3, name = reaction_3
	reaction_reaction_3=compartment_cyt*Function_for_reaction_3(global_par_EpoRActJAK2, x(2), x(25), global_par_SOCS3Eqc, global_par_SOCS3Inh);

% Reaction: id = reaction_4, name = reaction_4
	reaction_reaction_4=compartment_cyt*Function_for_reaction_4(global_par_EpoRActJAK2, global_par_EpoRCISInh, x(6), x(2), x(25), global_par_SOCS3Eqc, global_par_SOCS3Inh);

% Reaction: id = reaction_5, name = reaction_5
	reaction_reaction_5=compartment_cyt*Function_for_reaction_5(global_par_EpoRActJAK2, global_par_EpoRCISInh, x(6), x(25), global_par_SOCS3Eqc, global_par_SOCS3Inh, x(3));

% Reaction: id = reaction_6, name = reaction_6
	reaction_reaction_6=compartment_cyt*Function_for_reaction_6(global_par_EpoRActJAK2, x(25), global_par_SOCS3Eqc, global_par_SOCS3Inh, x(4));

% Reaction: id = reaction_7, name = reaction_7
	reaction_reaction_7=compartment_cyt*Function_for_reaction_7(global_par_JAK2EpoRDeaSHP1, x(8), global_par_init_SHP1, x(3));

% Reaction: id = reaction_8, name = reaction_8
	reaction_reaction_8=compartment_cyt*Function_for_reaction_8(global_par_JAK2EpoRDeaSHP1, x(8), global_par_init_SHP1, x(4));

% Reaction: id = reaction_9, name = reaction_9
	reaction_reaction_9=compartment_cyt*Function_for_reaction_9(global_par_JAK2EpoRDeaSHP1, x(8), global_par_init_SHP1, x(5));

% Reaction: id = reaction_10, name = reaction_10
	reaction_reaction_10=compartment_cyt*Function_for_reaction_10(global_par_EpoRCISRemove, x(6), global_par_init_EpoRJAK2, x(5), x(3));

% Reaction: id = reaction_11, name = reaction_11
	reaction_reaction_11=compartment_cyt*Function_for_reaction_11(x(2), x(7), global_par_SHP1ActEpoR, global_par_init_EpoRJAK2, x(5), x(3), x(4));

% Reaction: id = reaction_12, name = reaction_12
	reaction_reaction_12=compartment_cyt*global_par_SHP1Dea*x(8);

% Reaction: id = reaction_13, name = reaction_13
	reaction_reaction_13=compartment_cyt*Function_for_reaction_13(x(2), x(25), global_par_SOCS3Eqc, global_par_SOCS3Inh, x(9), global_par_STAT5ActJAK2, global_par_init_EpoRJAK2, x(5), x(3), x(4));

% Reaction: id = reaction_14, name = reaction_14
	reaction_reaction_14=compartment_cyt*Function_for_reaction_14(x(18), global_par_CISEqc, global_par_CISInh, x(25), global_par_SOCS3Eqc, global_par_SOCS3Inh, x(9), global_par_STAT5ActEpoR, global_par_init_EpoRJAK2, x(5), x(3));

% Reaction: id = reaction_15, name = reaction_15
	reaction_reaction_15=Function_for_reaction_15(global_par_STAT5Imp, compartment_cyt, x(10));

% Reaction: id = reaction_16, name = reaction_16
	reaction_reaction_16=Function_for_reaction_16(global_par_STAT5Exp, x(11), compartment_nuc);

% Reaction: id = reaction_17, name = reaction_17
	reaction_reaction_17=compartment_nuc*Function_for_reaction_17(global_par_ActD, global_par_CISRNAEqc, global_par_CISRNATurn, global_par_init_STAT5, x(11), compartment_nuc);

% Reaction: id = reaction_18, name = reaction_18
	reaction_reaction_18=compartment_nuc*global_par_CISRNADelay*x(12);

% Reaction: id = reaction_19, name = reaction_19
	reaction_reaction_19=compartment_nuc*global_par_CISRNADelay*x(13);

% Reaction: id = reaction_20, name = reaction_20
	reaction_reaction_20=compartment_nuc*global_par_CISRNADelay*x(14);

% Reaction: id = reaction_21, name = reaction_21
	reaction_reaction_21=compartment_nuc*global_par_CISRNADelay*x(15);

% Reaction: id = reaction_22, name = reaction_22
	reaction_reaction_22=Function_for_reaction_22(global_par_CISRNADelay, x(16), compartment_nuc);

% Reaction: id = reaction_23, name = reaction_23
	reaction_reaction_23=compartment_cyt*global_par_CISRNATurn*x(17);

% Reaction: id = reaction_24, name = reaction_24
	reaction_reaction_24=compartment_cyt*Function_for_reaction_24(global_par_CISEqc, x(17), global_par_CISRNAEqc, global_par_CISTurn);

% Reaction: id = reaction_25, name = reaction_25
	reaction_reaction_25=compartment_cyt*global_par_CISTurn*x(18);

% Reaction: id = reaction_26, name = reaction_26
	reaction_reaction_26=compartment_cyt*Function_for_reaction_26(global_par_CISEqc, global_par_CISEqcOE, global_par_CISTurn, global_par_CISoe, compartment_cyt);

% Reaction: id = reaction_27, name = reaction_27
	reaction_reaction_27=compartment_nuc*Function_for_reaction_27(global_par_ActD, global_par_SOCS3RNAEqc, global_par_SOCS3RNATurn, global_par_init_STAT5, x(11), compartment_nuc);

% Reaction: id = reaction_28, name = reaction_28
	reaction_reaction_28=compartment_nuc*global_par_SOCS3RNADelay*x(19);

% Reaction: id = reaction_29, name = reaction_29
	reaction_reaction_29=compartment_nuc*global_par_SOCS3RNADelay*x(20);

% Reaction: id = reaction_30, name = reaction_30
	reaction_reaction_30=compartment_nuc*global_par_SOCS3RNADelay*x(21);

% Reaction: id = reaction_31, name = reaction_31
	reaction_reaction_31=compartment_nuc*global_par_SOCS3RNADelay*x(22);

% Reaction: id = reaction_32, name = reaction_32
	reaction_reaction_32=Function_for_reaction_32(global_par_SOCS3RNADelay, x(23), compartment_nuc);

% Reaction: id = reaction_33, name = reaction_33
	reaction_reaction_33=compartment_cyt*global_par_SOCS3RNATurn*x(24);

% Reaction: id = reaction_34, name = reaction_34
	reaction_reaction_34=compartment_cyt*Function_for_reaction_34(global_par_SOCS3Eqc, x(24), global_par_SOCS3RNAEqc, global_par_SOCS3Turn);

% Reaction: id = reaction_35, name = reaction_35
	reaction_reaction_35=compartment_cyt*global_par_SOCS3Turn*x(25);

% Reaction: id = reaction_36, name = reaction_36
	reaction_reaction_36=compartment_cyt*Function_for_reaction_36(global_par_SOCS3Eqc, global_par_SOCS3EqcOE, global_par_SOCS3Turn, global_par_SOCS3oe, compartment_cyt);

	xdot=zeros(26,1);
	
% Species:   id = EpoRJAK2, name = EpoRJAK2, affected by kineticLaw
	xdot(1) = (1/(compartment_cyt))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_9));
	
% Species:   id = EpoRpJAK2, name = EpoRpJAK2, affected by kineticLaw
	xdot(2) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = p1EpoRpJAK2, name = p1EpoRpJAK2, affected by kineticLaw
	xdot(3) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_7));
	
% Species:   id = p2EpoRpJAK2, name = p2EpoRpJAK2, affected by kineticLaw
	xdot(4) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_8));
	
% Species:   id = p12EpoRpJAK2, name = p12EpoRpJAK2, affected by kineticLaw
	xdot(5) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_9));
	
% Species:   id = EpoRJAK2_CIS, name = EpoRJAK2_CIS, affected by kineticLaw
	xdot(6) = (1/(compartment_cyt))*((-1.0 * reaction_reaction_10));
	
% Species:   id = SHP1, name = SHP1, affected by kineticLaw
	xdot(7) = (1/(compartment_cyt))*((-1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_12));
	
% Species:   id = SHP1Act, name = SHP1Act, affected by kineticLaw
	xdot(8) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12));
	
% Species:   id = STAT5, name = STAT5, affected by kineticLaw
	xdot(9) = (1/(compartment_cyt))*((-1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_16));
	
% Species:   id = pSTAT5, name = pSTAT5, affected by kineticLaw
	xdot(10) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15));
	
% Species:   id = npSTAT5, name = npSTAT5, affected by kineticLaw
	xdot(11) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16));
	
% Species:   id = CISnRNA1, name = CISnRNA1, affected by kineticLaw
	xdot(12) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_18));
	
% Species:   id = CISnRNA2, name = CISnRNA2, affected by kineticLaw
	xdot(13) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19));
	
% Species:   id = CISnRNA3, name = CISnRNA3, affected by kineticLaw
	xdot(14) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_20));
	
% Species:   id = CISnRNA4, name = CISnRNA4, affected by kineticLaw
	xdot(15) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_21));
	
% Species:   id = CISnRNA5, name = CISnRNA5, affected by kineticLaw
	xdot(16) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_22));
	
% Species:   id = CISRNA, name = CISRNA, affected by kineticLaw
	xdot(17) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_23));
	
% Species:   id = CIS, name = CIS, affected by kineticLaw
	xdot(18) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_25) + ( 1.0 * reaction_reaction_26));
	
% Species:   id = SOCS3nRNA1, name = SOCS3nRNA1, affected by kineticLaw
	xdot(19) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction_27) + (-1.0 * reaction_reaction_28));
	
% Species:   id = SOCS3nRNA2, name = SOCS3nRNA2, affected by kineticLaw
	xdot(20) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_29));
	
% Species:   id = SOCS3nRNA3, name = SOCS3nRNA3, affected by kineticLaw
	xdot(21) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_30));
	
% Species:   id = SOCS3nRNA4, name = SOCS3nRNA4, affected by kineticLaw
	xdot(22) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_31));
	
% Species:   id = SOCS3nRNA5, name = SOCS3nRNA5, affected by kineticLaw
	xdot(23) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_32));
	
% Species:   id = SOCS3RNA, name = SOCS3RNA, affected by kineticLaw
	xdot(24) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_33));
	
% Species:   id = SOCS3, name = SOCS3, affected by kineticLaw
	xdot(25) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_35) + ( 1.0 * reaction_reaction_36));
	
% Species:   id = Epo, name = Epo
% Warning species is not changed by either rules or reactions
	xdot(26) = ;
end

function z=Function_for_reaction_4(EpoRActJAK2,EpoRCISInh,EpoRJAK2_CIS,EpoRpJAK2,SOCS3,SOCS3Eqc,SOCS3Inh), z=(3*EpoRActJAK2*EpoRpJAK2/((SOCS3Inh*SOCS3/SOCS3Eqc+1)*(EpoRCISInh*EpoRJAK2_CIS+1)));end

function z=Function_for_reaction_8(JAK2EpoRDeaSHP1,SHP1Act,init_SHP1,p2EpoRpJAK2), z=(JAK2EpoRDeaSHP1*SHP1Act*p2EpoRpJAK2/init_SHP1);end

function z=Function_for_reaction_3(EpoRActJAK2,EpoRpJAK2,SOCS3,SOCS3Eqc,SOCS3Inh), z=(EpoRActJAK2*EpoRpJAK2/(SOCS3Inh*SOCS3/SOCS3Eqc+1));end

function z=Function_for_reaction_5(EpoRActJAK2,EpoRCISInh,EpoRJAK2_CIS,SOCS3,SOCS3Eqc,SOCS3Inh,p1EpoRpJAK2), z=(3*EpoRActJAK2*p1EpoRpJAK2/((SOCS3Inh*SOCS3/SOCS3Eqc+1)*(EpoRCISInh*EpoRJAK2_CIS+1)));end

function z=Function_for_reaction_6(EpoRActJAK2,SOCS3,SOCS3Eqc,SOCS3Inh,p2EpoRpJAK2), z=(EpoRActJAK2*p2EpoRpJAK2/(SOCS3Inh*SOCS3/SOCS3Eqc+1));end

function z=Function_for_reaction_9(JAK2EpoRDeaSHP1,SHP1Act,init_SHP1,p12EpoRpJAK2), z=(JAK2EpoRDeaSHP1*SHP1Act*p12EpoRpJAK2/init_SHP1);end

function z=Function_for_reaction_10(EpoRCISRemove,EpoRJAK2_CIS,init_EpoRJAK2,p12EpoRpJAK2,p1EpoRpJAK2), z=(EpoRCISRemove*EpoRJAK2_CIS*(p12EpoRpJAK2+p1EpoRpJAK2)/init_EpoRJAK2);end

function z=Function_for_reaction_11(EpoRpJAK2,SHP1,SHP1ActEpoR,init_EpoRJAK2,p12EpoRpJAK2,p1EpoRpJAK2,p2EpoRpJAK2), z=(SHP1ActEpoR*SHP1*(EpoRpJAK2+p12EpoRpJAK2+p1EpoRpJAK2+p2EpoRpJAK2)/init_EpoRJAK2);end

function z=Function_for_reaction_13(EpoRpJAK2,SOCS3,SOCS3Eqc,SOCS3Inh,STAT5,STAT5ActJAK2,init_EpoRJAK2,p12EpoRpJAK2,p1EpoRpJAK2,p2EpoRpJAK2), z=(STAT5ActJAK2*STAT5*(EpoRpJAK2+p12EpoRpJAK2+p1EpoRpJAK2+p2EpoRpJAK2)/(init_EpoRJAK2*(SOCS3Inh*SOCS3/SOCS3Eqc+1)));end

function z=Function_for_reaction_1(Epo,EpoRJAK2,JAK2ActEpo,SOCS3,SOCS3Eqc,SOCS3Inh), z=(JAK2ActEpo*Epo*EpoRJAK2/(SOCS3Inh*SOCS3/SOCS3Eqc+1));end

function z=Function_for_reaction_2(EpoRpJAK2,JAK2EpoRDeaSHP1,SHP1Act,init_SHP1), z=(JAK2EpoRDeaSHP1*SHP1Act*EpoRpJAK2/init_SHP1);end

function z=Function_for_reaction_7(JAK2EpoRDeaSHP1,SHP1Act,init_SHP1,p1EpoRpJAK2), z=(JAK2EpoRDeaSHP1*SHP1Act*p1EpoRpJAK2/init_SHP1);end

function z=Function_for_reaction_36(SOCS3Eqc,SOCS3EqcOE,SOCS3Turn,SOCS3oe,cyt), z=(SOCS3oe*SOCS3Eqc*SOCS3Turn*SOCS3EqcOE/cyt);end

function z=Function_for_reaction_34(SOCS3Eqc,SOCS3RNA,SOCS3RNAEqc,SOCS3Turn), z=(SOCS3Eqc*SOCS3Turn*SOCS3RNA/SOCS3RNAEqc);end

function z=Function_for_reaction_14(CIS,CISEqc,CISInh,SOCS3,SOCS3Eqc,SOCS3Inh,STAT5,STAT5ActEpoR,init_EpoRJAK2,p12EpoRpJAK2,p1EpoRpJAK2), z=(STAT5ActEpoR*STAT5*(p12EpoRpJAK2+p1EpoRpJAK2)^2/(init_EpoRJAK2^2*(CISInh*CIS/CISEqc+1)*(SOCS3Inh*SOCS3/SOCS3Eqc+1)));end

function z=Function_for_reaction_16(STAT5Exp,npSTAT5,nuc), z=(STAT5Exp*npSTAT5*nuc);end

function z=Function_for_reaction_17(ActD,CISRNAEqc,CISRNATurn,init_STAT5,npSTAT5,nuc), z=((-CISRNAEqc*CISRNATurn*npSTAT5*(ActD-1)/init_STAT5*nuc)/nuc);end

function z=Function_for_reaction_27(ActD,SOCS3RNAEqc,SOCS3RNATurn,init_STAT5,npSTAT5,nuc), z=((-SOCS3RNAEqc*SOCS3RNATurn*npSTAT5*(ActD-1)/init_STAT5*nuc)/nuc);end

function z=Function_for_reaction_32(SOCS3RNADelay,SOCS3nRNA5,nuc), z=(SOCS3RNADelay*SOCS3nRNA5*nuc);end

function z=Function_for_reaction_24(CISEqc,CISRNA,CISRNAEqc,CISTurn), z=(CISEqc*CISTurn*CISRNA/CISRNAEqc);end

function z=Function_for_reaction_15(STAT5Imp,cyt,pSTAT5), z=(STAT5Imp*pSTAT5*cyt);end

function z=Function_for_reaction_22(CISRNADelay,CISnRNA5,nuc), z=(CISRNADelay*CISnRNA5*nuc);end

function z=Function_for_reaction_26(CISEqc,CISEqcOE,CISTurn,CISoe,cyt), z=(CISoe*CISEqc*CISTurn*CISEqcOE/cyt);end

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


