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
% Model name = Rehm2006_Caspase
%
% is http://identifiers.org/biomodels.db/MODEL5073396359
% is http://identifiers.org/biomodels.db/BIOMD0000000256
% isDescribedBy http://identifiers.org/pubmed/16932741
%


function main()
%Initial conditions vector
	x0=zeros(27,1);
	x0(1) = 0.12;
	x0(2) = 0.063;
	x0(3) = 0.0;
	x0(4) = 0.03;
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
	x0(21) = 3.372;
	x0(22) = 0.0;
	x0(23) = 1.0;
	x0(24) = 0.0;
	x0(25) = 0.126;
	x0(26) = 10.0;
	x0(27) = 0.0;


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
% Compartment: id = mito, name = mitochondrium, constant
	compartment_mito=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=4.68E-4;
% Parameter:   id =  k1r, name = k1r
	global_par_k1r=0.0039;
% Parameter:   id =  k2, name = k2
	global_par_k2=7.308E-4;
% Parameter:   id =  k2r, name = k2r
	global_par_k2r=0.0116;
% Parameter:   id =  k3, name = k3
	global_par_k3=6.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=12.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=48.0;
% Parameter:   id =  k6, name = k6
	global_par_k6=2.4;
% Parameter:   id =  k7, name = k7
	global_par_k7=156.0;
% Parameter:   id =  k7r, name = k7r
	global_par_k7r=0.144;
% Parameter:   id =  k8, name = k8
	global_par_k8=156.0;
% Parameter:   id =  k8r, name = k8r
	global_par_k8r=0.144;
% Parameter:   id =  k9, name = k9
	global_par_k9=156.0;
% Parameter:   id =  k9r, name = k9r
	global_par_k9r=0.144;
% Parameter:   id =  k10, name = k10
	global_par_k10=156.0;
% Parameter:   id =  k10r, name = k10r
	global_par_k10r=0.144;
% Parameter:   id =  k11, name = k11
	global_par_k11=12.0;
% Parameter:   id =  k12, name = k12
	global_par_k12=12.0;
% Parameter:   id =  k13, name = k13
	global_par_k13=12.0;
% Parameter:   id =  k14, name = k14
	global_par_k14=12.0;
% Parameter:   id =  k15, name = k15
	global_par_k15=12.0;
% Parameter:   id =  k16, name = k16
	global_par_k16=12.0;
% Parameter:   id =  k17, name = k17
	global_par_k17=12.0;
% Parameter:   id =  k18, name = k18
	global_par_k18=12.0;
% Parameter:   id =  k19, name = k19
	global_par_k19=12.0;
% Parameter:   id =  k20, name = k20
	global_par_k20=12.0;
% Parameter:   id =  k21, name = k21
	global_par_k21=156.0;
% Parameter:   id =  k21r, name = k21r
	global_par_k21r=0.144;
% Parameter:   id =  k22, name = k22
	global_par_k22=156.0;
% Parameter:   id =  k22r, name = k22r
	global_par_k22r=0.144;
% Parameter:   id =  k23, name = k23
	global_par_k23=156.0;
% Parameter:   id =  k23r, name = k23r
	global_par_k23r=0.144;
% Parameter:   id =  k24, name = k24
	global_par_k24=0.0;
% Parameter:   id =  k25, name = k25
	global_par_k25=0.0;
% Parameter:   id =  k26, name = k26
	global_par_k26=420.0;
% Parameter:   id =  k26r, name = k26r
	global_par_k26r=0.133;
% Parameter:   id =  k27, name = k27
	global_par_k27=420.0;
% Parameter:   id =  k27r, name = k27r
	global_par_k27r=156.0;
% Parameter:   id =  k28, name = k28
	global_par_k28=420.0;
% Parameter:   id =  k28r, name = k28r
	global_par_k28r=156.0;
% Parameter:   id =  k29, name = k29
	global_par_k29=420.0;
% Parameter:   id =  k29r, name = k29r
	global_par_k29r=156.0;
% Parameter:   id =  k30, name = k30
	global_par_k30=4.45;
% Parameter:   id =  k30r, name = k30r
	global_par_k30r=31.9;
% Parameter:   id =  k31, name = k31
	global_par_k31=0.33;
% Parameter:   id =  k31r, name = k31r
	global_par_k31r=14.2;
% Parameter:   id =  k32, name = k32
	global_par_k32=4.45;
% Parameter:   id =  k32r, name = k32r
	global_par_k32r=156.0;
% Parameter:   id =  k33, name = k33
	global_par_k33=0.33;
% Parameter:   id =  k33r, name = k33r
	global_par_k33r=156.0;
% Parameter:   id =  k34, name = k34
	global_par_k34=420.0;
% Parameter:   id =  k34r, name = k34r
	global_par_k34r=156.0;
% Parameter:   id =  k35, name = k35
	global_par_k35=0.0058;
% Parameter:   id =  k36, name = k36
	global_par_k36=0.0058;
% Parameter:   id =  k37, name = k37
	global_par_k37=0.0058;
% Parameter:   id =  k38, name = k38
	global_par_k38=0.0347;
% Parameter:   id =  k39, name = k39
	global_par_k39=0.0347;
% Parameter:   id =  k40, name = k40
	global_par_k40=0.0347;
% Parameter:   id =  k41, name = k41
	global_par_k41=0.0058;
% Parameter:   id =  k42, name = k42
	global_par_k42=0.0347;
% Parameter:   id =  k43, name = k43
	global_par_k43=0.0347;
% Parameter:   id =  k44, name = k44
	global_par_k44=0.0347;
% Parameter:   id =  k45, name = k45
	global_par_k45=0.0058;
% Parameter:   id =  k46, name = k46
	global_par_k46=0.0347;
% Parameter:   id =  k47, name = k47
	global_par_k47=0.0058;
% Parameter:   id =  k48, name = k48
	global_par_k48=0.0347;
% Parameter:   id =  k49, name = k49
	global_par_k49=0.0058;
% Parameter:   id =  k50, name = k50
	global_par_k50=0.0058;
% Parameter:   id =  k51, name = k51
	global_par_k51=0.0347;
% Parameter:   id =  k52, name = k52
	global_par_k52=0.0058;
% Parameter:   id =  k53, name = k53
	global_par_k53=12.0;
% Parameter:   id =  th_SMAC, name = t_SMAC_0.5
	global_par_th_SMAC=7.0;
% Parameter:   id =  apo_lim, name = limiting factor for apoptosome formation
% Parameter:   id =  th_Apop, name = t_Apop_0.5
	global_par_th_Apop=2.3;
% Parameter:   id =  th_CytC, name = th_CytC
	global_par_th_CytC=1.5;
% Parameter:   id =  SMAC_norm, name = free SMAC per XIAP
% Parameter:   id =  XIAP_ini, name = initial XIAP conc
% Warning parameter XIAP_ini is not constant, it should be controlled by a Rule and/or events
	global_par_XIAP_ini=NaN;
% Parameter:   id =  XIAP_2SMAC_norm, name = XIAP2*SMAC per XIAP
% Parameter:   id =  C9norm, name = normalised Casp-9
% Parameter:   id =  C9_tot, name = Caspase9 tot
% Warning parameter C9_tot is not constant, it should be controlled by a Rule and/or events
	global_par_C9_tot=NaN;
% Parameter:   id =  C9Pnorm, name = normalised Casp9-P
% Parameter:   id =  C3norm, name = normalised Casp-3
% Parameter:   id =  C3_tot, name = Caspase3 tot
% Warning parameter C3_tot is not constant, it should be controlled by a Rule and/or events
	global_par_C3_tot=NaN;
% Parameter:   id =  PC3norm, name = normalised Procasp-3
% Parameter:   id =  SMAC_rel, name = percent SMAC release
% Parameter:   id =  SMAC_tot, name = total SMAC
% Warning parameter SMAC_tot is not constant, it should be controlled by a Rule and/or events
	global_par_SMAC_tot=NaN;
% Parameter:   id =  Apoform, name = percent Apoptosome formation
% Parameter:   id =  XIAP_norm, name = XIAP_norm
% Parameter:   id =  XIAP_C3_norm, name = XIAP_C3_norm
% Parameter:   id =  XIAP_C9_norm, name = XIAP_C9_norm
% Parameter:   id =  XIAP_p2frag_norm, name = XIAP_p2frag_norm
% Parameter:   id =  BIR12_norm, name = BIR12_norm
% Parameter:   id =  BIR3R_norm, name = BIR3R_norm
% Parameter:   id =  BIR12_C3_norm, name = BIR12_C3_norm
% Parameter:   id =  BIR3R_C9_norm, name = BIR3R_C9_norm
% Parameter:   id =  BIR3R_p2frag_norm, name = BIR3R_p2frag_norm
% Parameter:   id =  S_breakdown, name = S_breakdown
	global_par_S_breakdown=0.01;
% Parameter:   id =  CytC_tot, name = CytC_tot
% Warning parameter CytC_tot is not constant, it should be controlled by a Rule and/or events
	global_par_CytC_tot=NaN;
% Parameter:   id =  APAF1_tot, name = APAF1_tot
% Warning parameter APAF1_tot is not constant, it should be controlled by a Rule and/or events
	global_par_APAF1_tot=NaN;
% assignmentRule: variable = apo_lim
	global_par_apo_lim=piecewise(x(4), x(4) < x(21), x(21));
% assignmentRule: variable = SMAC_norm
	global_par_SMAC_norm=x(20)/global_par_XIAP_ini;
% assignmentRule: variable = XIAP_2SMAC_norm
	global_par_XIAP_2SMAC_norm=x(17)/global_par_XIAP_ini;
% assignmentRule: variable = C9norm
	global_par_C9norm=x(3)/global_par_C9_tot;
% assignmentRule: variable = C9Pnorm
	global_par_C9Pnorm=x(6)/global_par_C9_tot;
% assignmentRule: variable = C3norm
	global_par_C3norm=x(5)/global_par_C3_tot;
% assignmentRule: variable = PC3norm
	global_par_PC3norm=x(1)/global_par_C3_tot;
% assignmentRule: variable = SMAC_rel
	global_par_SMAC_rel=1-x(25)/global_par_SMAC_tot;
% assignmentRule: variable = Apoform
	global_par_Apoform=1-x(4)/global_par_C9_tot;
% assignmentRule: variable = XIAP_norm
	global_par_XIAP_norm=x(2)/global_par_XIAP_ini;
% assignmentRule: variable = XIAP_C3_norm
	global_par_XIAP_C3_norm=(x(7)+x(9))/global_par_XIAP_ini;
% assignmentRule: variable = XIAP_C9_norm
	global_par_XIAP_C9_norm=(x(8)+x(9))/global_par_XIAP_ini;
% assignmentRule: variable = XIAP_p2frag_norm
	global_par_XIAP_p2frag_norm=(x(10)+x(11))/global_par_XIAP_ini;
% assignmentRule: variable = BIR12_norm
	global_par_BIR12_norm=x(12)/global_par_XIAP_ini;
% assignmentRule: variable = BIR3R_norm
	global_par_BIR3R_norm=x(14)/global_par_XIAP_ini;
% assignmentRule: variable = BIR12_C3_norm
	global_par_BIR12_C3_norm=x(13)/global_par_XIAP_ini;
% assignmentRule: variable = BIR3R_C9_norm
	global_par_BIR3R_C9_norm=x(15)/global_par_XIAP_ini;
% assignmentRule: variable = BIR3R_p2frag_norm
	global_par_BIR3R_p2frag_norm=x(16)/global_par_XIAP_ini;

% Reaction: id = reaction1, name = ProCaspase3 Production
	reaction_reaction1=compartment_cell*(global_par_k1-global_par_k1r*x(1));

% Reaction: id = reaction2, name = XIAP Production
	reaction_reaction2=compartment_cell*(global_par_k2-global_par_k2r*x(2));

% Reaction: id = reaction3
	reaction_reaction3=compartment_cell*global_par_k3*x(3)*x(1);

% Reaction: id = reaction4
	reaction_reaction4=compartment_cell*global_par_k4*x(3)*x(5);

% Reaction: id = reaction5
	reaction_reaction5=compartment_cell*global_par_k5*x(6)*x(1);

% Reaction: id = reaction6
	reaction_reaction6=compartment_cell*global_par_k6*x(1)*x(5);

% Reaction: id = reaction7
	reaction_reaction7=compartment_cell*(global_par_k7*x(5)*x(2)-global_par_k7r*x(7));

% Reaction: id = reaction8
	reaction_reaction8=compartment_cell*(global_par_k8*x(5)*x(8)-global_par_k8r*x(9));

% Reaction: id = reaction9
	reaction_reaction9=compartment_cell*(global_par_k9*x(5)*x(10)-global_par_k9r*x(11));

% Reaction: id = reaction10
	reaction_reaction10=compartment_cell*(global_par_k10*x(5)*x(12)-global_par_k10r*x(13));

% Reaction: id = reaction11
	reaction_reaction11=compartment_cell*global_par_k11*x(5)*x(2);

% Reaction: id = reaction12
	reaction_reaction12=compartment_cell*global_par_k12*x(5)*x(8);

% Reaction: id = reaction13
	reaction_reaction13=compartment_cell*global_par_k13*x(5)*x(7);

% Reaction: id = reaction14
	reaction_reaction14=compartment_cell*global_par_k14*x(5)*x(10);

% Reaction: id = reaction15
	reaction_reaction15=compartment_cell*global_par_k15*x(5)*x(11);

% Reaction: id = reaction16
	reaction_reaction16=compartment_cell*global_par_k16*x(5)*x(9);

% Reaction: id = reaction17
	reaction_reaction17=compartment_cell*global_par_k17*x(5)*x(17);

% Reaction: id = reaction18
	reaction_reaction18=compartment_cell*global_par_k18*x(5)*x(9);

% Reaction: id = reaction19
	reaction_reaction19=compartment_cell*global_par_k19*x(5)*x(8);

% Reaction: id = reaction20
	reaction_reaction20=compartment_cell*global_par_k20*x(5)*x(15);

% Reaction: id = reaction21
	reaction_reaction21=compartment_cell*(global_par_k21*x(3)*x(2)-global_par_k21r*x(8));

% Reaction: id = reaction22
	reaction_reaction22=compartment_cell*(global_par_k22*x(3)*x(7)-global_par_k22r*x(9));

% Reaction: id = reaction23
	reaction_reaction23=compartment_cell*(global_par_k23*x(3)*x(14)-global_par_k23r*x(15));

% Reaction: id = reaction24
	reaction_reaction24=compartment_cell*global_par_k24*x(16);

% Reaction: id = reaction25
	reaction_reaction25=compartment_cell*global_par_k25*x(10);

% Reaction: id = reaction26
	reaction_reaction26=compartment_cell*(global_par_k26*x(2)*x(20)*x(20)-global_par_k26r*x(17));

% Reaction: id = reaction27
	reaction_reaction27=compartment_cell*(global_par_k27*x(8)*x(20)*x(20)-global_par_k27r*x(17)*x(3));

% Reaction: id = reaction28
	reaction_reaction28=compartment_cell*(global_par_k28*x(7)*x(20)*x(20)-global_par_k28r*x(17)*x(5));

% Reaction: id = reaction29
	reaction_reaction29=compartment_cell*(global_par_k29*x(9)*x(20)*x(20)-global_par_k29r*x(17)*x(5)*x(3));

% Reaction: id = reaction30
	reaction_reaction30=compartment_cell*(global_par_k30*x(12)*x(20)-global_par_k30r*x(18));

% Reaction: id = reaction31
	reaction_reaction31=compartment_cell*(global_par_k31*x(14)*x(20)-global_par_k31r*x(19));

% Reaction: id = reaction32
	reaction_reaction32=compartment_cell*(global_par_k32*x(13)*x(20)-global_par_k32r*x(18)*x(5));

% Reaction: id = reaction33
	reaction_reaction33=compartment_cell*(global_par_k33*x(15)*x(20)-global_par_k33r*x(19)*x(3));

% Reaction: id = reaction34
	reaction_reaction34=compartment_cell*(global_par_k34*x(10)*x(20)*x(20)-global_par_k34r*x(22));

% Reaction: id = reaction35
	reaction_reaction35=compartment_cell*global_par_k35*x(6);

% Reaction: id = reaction36
	reaction_reaction36=compartment_cell*global_par_k36*x(3);

% Reaction: id = reaction37
	reaction_reaction37=compartment_cell*global_par_k37*x(5);

% Reaction: id = reaction38
	reaction_reaction38=compartment_cell*global_par_k38*x(7);

% Reaction: id = reaction39
	reaction_reaction39=compartment_cell*global_par_k39*x(9);

% Reaction: id = reaction40
	reaction_reaction40=compartment_cell*global_par_k40*x(8);

% Reaction: id = reaction41
	reaction_reaction41=compartment_cell*global_par_k41*x(10);

% Reaction: id = reaction42
	reaction_reaction42=compartment_cell*global_par_k42*x(11);

% Reaction: id = reaction43
	reaction_reaction43=compartment_cell*global_par_k43*x(22);

% Reaction: id = reaction44
	reaction_reaction44=compartment_cell*global_par_k44*x(17);

% Reaction: id = reaction45
	reaction_reaction45=compartment_cell*global_par_k45*x(12);

% Reaction: id = reaction46
	reaction_reaction46=compartment_cell*global_par_k46*x(14);

% Reaction: id = reaction47
	reaction_reaction47=compartment_cell*global_par_k47*x(18);

% Reaction: id = reaction48
	reaction_reaction48=compartment_cell*global_par_k48*x(19);

% Reaction: id = reaction49
	reaction_reaction49=compartment_cell*global_par_k49*x(13);

% Reaction: id = reaction50
	reaction_reaction50=compartment_cell*global_par_k50*x(15);

% Reaction: id = reaction51
	reaction_reaction51=compartment_cell*global_par_k51*x(16);

% Reaction: id = reaction52
	reaction_reaction52=compartment_cell*global_par_k52*x(20);

% Reaction: id = reaction53
	reaction_reaction53=compartment_cell*global_par_k53*x(5)*x(23);

%Event: id=Production_Breakdown
	event_Production_Breakdown=x(23) < global_par_S_breakdown;

	if(event_Production_Breakdown) 
		global_par_k51=0.0058;
		global_par_k50=0.0058;
		global_par_k48=0.0058;
		global_par_k46=0.0058;
		global_par_k44=0.0058;
		global_par_k43=0.0058;
		global_par_k40=0.0058;
		global_par_k39=0.0058;
		global_par_k38=0.0058;
		global_par_k2r=0;
		global_par_k2=0;
		global_par_k1r=0;
		global_par_k1=0;
	end

	xdot=zeros(27,1);
	
% Species:   id = PC3, name = ProCasp3, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_reaction1) + (-1.0 * reaction_reaction3) + (-1.0 * reaction_reaction5) + (-1.0 * reaction_reaction6));
	
% Species:   id = XIAP, name = XIAP, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_reaction2) + (-1.0 * reaction_reaction7) + (-1.0 * reaction_reaction11) + (-1.0 * reaction_reaction21) + ( 1.0 * reaction_reaction25) + (-1.0 * reaction_reaction26));
	
% Species:   id = C9, name = Casp9(p35-p12), affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*((-1.0 * reaction_reaction3) + ( 1.0 * reaction_reaction3) + (-1.0 * reaction_reaction4) + (-1.0 * reaction_reaction21) + (-1.0 * reaction_reaction22) + (-1.0 * reaction_reaction23) + ( 1.0 * reaction_reaction27) + ( 1.0 * reaction_reaction29) + ( 1.0 * reaction_reaction33) + (-1.0 * reaction_reaction36) + ( 1.0 * reaction_Apo_formation));
	
% Species:   id = PC9, name = ProCasp9, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*((-1.0 * reaction_Apo_formation));
	
% Species:   id = C3, name = C3, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_reaction3) + (-1.0 * reaction_reaction4) + ( 1.0 * reaction_reaction4) + ( 1.0 * reaction_reaction5) + (-1.0 * reaction_reaction6) + ( 2.0 * reaction_reaction6) + (-1.0 * reaction_reaction7) + (-1.0 * reaction_reaction8) + (-1.0 * reaction_reaction9) + (-1.0 * reaction_reaction10) + (-1.0 * reaction_reaction11) + ( 1.0 * reaction_reaction11) + (-1.0 * reaction_reaction12) + ( 1.0 * reaction_reaction12) + (-1.0 * reaction_reaction13) + ( 1.0 * reaction_reaction13) + (-1.0 * reaction_reaction14) + ( 1.0 * reaction_reaction14) + (-1.0 * reaction_reaction15) + ( 1.0 * reaction_reaction15) + (-1.0 * reaction_reaction16) + ( 1.0 * reaction_reaction16) + (-1.0 * reaction_reaction17) + ( 1.0 * reaction_reaction17) + (-1.0 * reaction_reaction18) + ( 1.0 * reaction_reaction18) + (-1.0 * reaction_reaction19) + ( 1.0 * reaction_reaction19) + (-1.0 * reaction_reaction20) + ( 1.0 * reaction_reaction20) + ( 1.0 * reaction_reaction28) + ( 1.0 * reaction_reaction29) + ( 1.0 * reaction_reaction32) + (-1.0 * reaction_reaction37) + (-1.0 * reaction_reaction53) + ( 1.0 * reaction_reaction53));
	
% Species:   id = C9P, name = Casp9(p35-p10), affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_reaction4) + (-1.0 * reaction_reaction5) + ( 1.0 * reaction_reaction5) + ( 1.0 * reaction_reaction18) + ( 1.0 * reaction_reaction19) + ( 1.0 * reaction_reaction20) + (-1.0 * reaction_reaction35));
	
% Species:   id = XIAP_C3, name = XIAP-Casp3, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_reaction7) + (-1.0 * reaction_reaction13) + (-1.0 * reaction_reaction22) + (-1.0 * reaction_reaction28) + (-1.0 * reaction_reaction38));
	
% Species:   id = XIAP_C9, name = XIAP-Casp9, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*((-1.0 * reaction_reaction8) + (-1.0 * reaction_reaction12) + (-1.0 * reaction_reaction19) + ( 1.0 * reaction_reaction21) + (-1.0 * reaction_reaction27) + (-1.0 * reaction_reaction40));
	
% Species:   id = XIAP_C9_C3, name = XIAP-Casp9-Casp3, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_reaction8) + (-1.0 * reaction_reaction16) + (-1.0 * reaction_reaction18) + ( 1.0 * reaction_reaction22) + (-1.0 * reaction_reaction29) + (-1.0 * reaction_reaction39));
	
% Species:   id = XIAP_p2frag, name = XIAP-p2 fragment, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*((-1.0 * reaction_reaction9) + (-1.0 * reaction_reaction14) + ( 1.0 * reaction_reaction19) + (-1.0 * reaction_reaction25) + (-1.0 * reaction_reaction34) + (-1.0 * reaction_reaction41));
	
% Species:   id = XIAP_p2frag_C3, name = XIAP-p2frag-Casp3, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_reaction9) + (-1.0 * reaction_reaction15) + ( 1.0 * reaction_reaction18) + (-1.0 * reaction_reaction42));
	
% Species:   id = BIR12, name = BIR12, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*((-1.0 * reaction_reaction10) + ( 1.0 * reaction_reaction11) + ( 1.0 * reaction_reaction12) + ( 1.0 * reaction_reaction14) + (-1.0 * reaction_reaction30) + (-1.0 * reaction_reaction45));
	
% Species:   id = BIR12_C3, name = BIR12-Casp3, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_reaction10) + ( 1.0 * reaction_reaction13) + ( 1.0 * reaction_reaction15) + ( 1.0 * reaction_reaction16) + (-1.0 * reaction_reaction32) + (-1.0 * reaction_reaction49));
	
% Species:   id = BIR3R, name = BIR3R, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*(( 1.0 * reaction_reaction11) + ( 1.0 * reaction_reaction13) + (-1.0 * reaction_reaction23) + ( 1.0 * reaction_reaction24) + (-1.0 * reaction_reaction31) + (-1.0 * reaction_reaction46));
	
% Species:   id = BIR3R_C9, name = BIR3R-Casp9, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*(( 1.0 * reaction_reaction12) + ( 1.0 * reaction_reaction16) + (-1.0 * reaction_reaction20) + ( 1.0 * reaction_reaction23) + (-1.0 * reaction_reaction33) + (-1.0 * reaction_reaction50));
	
% Species:   id = BIR3R_p2frag, name = BIR3R-p2frag, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_reaction14) + ( 1.0 * reaction_reaction15) + ( 1.0 * reaction_reaction20) + (-1.0 * reaction_reaction24) + (-1.0 * reaction_reaction51));
	
% Species:   id = XIAP_2SMAC, name = XIAP-2*SMAC, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*((-1.0 * reaction_reaction17) + ( 1.0 * reaction_reaction26) + ( 1.0 * reaction_reaction27) + ( 1.0 * reaction_reaction28) + ( 1.0 * reaction_reaction29) + (-1.0 * reaction_reaction44));
	
% Species:   id = BIR12_SMAC, name = BIR12-SMAC, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*(( 1.0 * reaction_reaction17) + ( 1.0 * reaction_reaction30) + ( 1.0 * reaction_reaction32) + (-1.0 * reaction_reaction47));
	
% Species:   id = BIR3R_SMAC, name = BIR3R-SMAC, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*(( 1.0 * reaction_reaction17) + ( 1.0 * reaction_reaction31) + ( 1.0 * reaction_reaction33) + (-1.0 * reaction_reaction48));
	
% Species:   id = SMAC, name = SMAC, affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*((-2.0 * reaction_reaction26) + (-2.0 * reaction_reaction27) + (-2.0 * reaction_reaction28) + (-2.0 * reaction_reaction29) + (-1.0 * reaction_reaction30) + (-1.0 * reaction_reaction31) + (-1.0 * reaction_reaction32) + (-1.0 * reaction_reaction33) + (-2.0 * reaction_reaction34) + (-1.0 * reaction_reaction52) + ( 1.0 * reaction_SMAC_release));
	
% Species:   id = APAF1, name = APAF1, affected by kineticLaw
	xdot(21) = (1/(compartment_cell))*((-1.0 * reaction_Apo_formation));
	
% Species:   id = XIAP_p2frag_2SMAC, name = XIAP-p2frag-2*SMAC, affected by kineticLaw
	xdot(22) = (1/(compartment_cell))*(( 1.0 * reaction_reaction34) + (-1.0 * reaction_reaction43));
	
% Species:   id = Substrate, name = Casp3 Substrate, affected by kineticLaw
	xdot(23) = (1/(compartment_cell))*((-1.0 * reaction_reaction53));
	
% Species:   id = ClvgPrds, name = Clevage Products, affected by kineticLaw
	xdot(24) = (1/(compartment_cell))*(( 1.0 * reaction_reaction53));
	
% Species:   id = SMAC_mito, name = SMAC in mitochondrium, affected by kineticLaw
	xdot(25) = (1/(compartment_mito))*((-1.0 * reaction_SMAC_release));
	
% Species:   id = CytC_mit, name = Cytochrome C in mitochondrium, affected by kineticLaw
	xdot(26) = (1/(compartment_mito))*((-1.0 * reaction_CytC_release));
	
% Species:   id = CytC_cell, name = cytosolic Cytochrome C, affected by kineticLaw
	xdot(27) = (1/(compartment_cell))*(( 1.0 * reaction_CytC_release));
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


