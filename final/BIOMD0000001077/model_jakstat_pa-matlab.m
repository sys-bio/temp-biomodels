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
% Model name = Adlung2021 - Cell-to-cell variability in JAK2/STAT5 pathway 
%
%


function main()
%Initial conditions vector
	x0=zeros(15,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 1.0;
	x0(4) = 1.0;
	x0(5) = 1.0;
	x0(6) = 1.0;
	x0(7) = 1.0;
	x0(8) = 1.0;
	x0(9) = 1.0;
	x0(10) = 1.0;
	x0(11) = 1.0;
	x0(12) = 1.0;
	x0(13) = 1.0;
	x0(14) = 1.0;
	x0(15) = 1.0;


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

% Compartment: id = cyt, name = cyt, constant
	compartment_cyt=0.4;
% Compartment: id = nuc, name = nuc, constant
	compartment_nuc=0.275;
% Parameter:   id =  ActD, name = ActD
	global_par_ActD=0.0;
% Parameter:   id =  CISEqc, name = CISEqc
	global_par_CISEqc=0.767538787148837;
% Parameter:   id =  CISInh, name = CISInh
	global_par_CISInh=4.3834039529483E8;
% Parameter:   id =  CISRNADelay, name = CISRNADelay
	global_par_CISRNADelay=0.119845304696486;
% Parameter:   id =  CISRNAEqc, name = CISRNAEqc
	global_par_CISRNAEqc=1.0;
% Parameter:   id =  CISRNATurn, name = CISRNATurn
	global_par_CISRNATurn=0.119809412320528;
% Parameter:   id =  CISTurn, name = CISTurn
	global_par_CISTurn=0.0178232876161209;
% Parameter:   id =  DeaEpoRJAKActSHP1, name = DeaEpoRJAKActSHP1
	global_par_DeaEpoRJAKActSHP1=8.85910280224449E-4;
% Parameter:   id =  EpoRActJAK2, name = EpoRActJAK2
	global_par_EpoRActJAK2=0.326237934674659;
% Parameter:   id =  JAK2ActEpo, name = JAK2ActEpo
	global_par_JAK2ActEpo=0.0520769792397573;
% Parameter:   id =  SHP1ActEpoR, name = SHP1ActEpoR
	global_par_SHP1ActEpoR=1.0;
% Parameter:   id =  SHP1Dea, name = SHP1Dea
	global_par_SHP1Dea=0.00557392820000894;
% Parameter:   id =  SOCS3Eqc, name = SOCS3Eqc
	global_par_SOCS3Eqc=0.162493786913208;
% Parameter:   id =  SOCS3EqcOE, name = SOCS3EqcOE
	global_par_SOCS3EqcOE=828.06160444759;
% Parameter:   id =  SOCS3Inh, name = SOCS3Inh
	global_par_SOCS3Inh=0.010341350346111;
% Parameter:   id =  SOCS3Turn, name = SOCS3Turn
	global_par_SOCS3Turn=0.0806005449025786;
% Parameter:   id =  SOCS3oe, name = SOCS3oe
	global_par_SOCS3oe=0.0;
% Parameter:   id =  STAT5ActEpoR, name = STAT5ActEpoR
	global_par_STAT5ActEpoR=0.299136651563824;
% Parameter:   id =  STAT5ActJAK2, name = STAT5ActJAK2
	global_par_STAT5ActJAK2=0.0513253755320527;
% Parameter:   id =  STAT5Exp, name = STAT5Exp
	global_par_STAT5Exp=0.0112157105187786;
% Parameter:   id =  STAT5Imp, name = STAT5Imp
	global_par_STAT5Imp=0.0404763494591488;
% Parameter:   id =  epo_level, name = epo_level
	global_par_epo_level=5.0;
% Parameter:   id =  init_EpoRJAK2, name = init_EpoRJAK2
% Warning parameter init_EpoRJAK2 is not constant, it should be controlled by a Rule and/or events
	global_par_init_EpoRJAK2=3.97504832099667;
% Parameter:   id =  init_SHP1, name = init_SHP1
% Warning parameter init_SHP1 is not constant, it should be controlled by a Rule and/or events
	global_par_init_SHP1=26.7236153222782;
% Parameter:   id =  init_STAT5, name = init_STAT5
% Warning parameter init_STAT5 is not constant, it should be controlled by a Rule and/or events
	global_par_init_STAT5=79.7242077843376;
% Parameter:   id =  Epo, name = Epo
% assignmentRule: variable = Epo
	global_par_Epo=global_par_epo_level;

% Reaction: id = v1_v_0, name = v_0
	reaction_v1_v_0=compartment_cyt*global_par_Epo*x(1)*global_par_JAK2ActEpo/(x(15)*global_par_SOCS3Inh/global_par_SOCS3Eqc+1);

% Reaction: id = v2_v_1, name = v_1
	reaction_v2_v_1=compartment_cyt*global_par_DeaEpoRJAKActSHP1*x(2)*x(7)/global_par_SHP1ActEpoR;

% Reaction: id = v3_v_2, name = v_2
	reaction_v3_v_2=compartment_cyt*x(2)*global_par_EpoRActJAK2/(x(15)*global_par_SOCS3Inh/global_par_SOCS3Eqc+1);

% Reaction: id = v4_v_3, name = v_3
	reaction_v4_v_3=compartment_cyt*3*x(2)*global_par_EpoRActJAK2/(x(15)*global_par_SOCS3Inh/global_par_SOCS3Eqc+1);

% Reaction: id = v5_v_4, name = v_4
	reaction_v5_v_4=compartment_cyt*3*global_par_EpoRActJAK2*x(3)/(x(15)*global_par_SOCS3Inh/global_par_SOCS3Eqc+1);

% Reaction: id = v6_v_5, name = v_5
	reaction_v6_v_5=compartment_cyt*global_par_EpoRActJAK2*x(4)/(x(15)*global_par_SOCS3Inh/global_par_SOCS3Eqc+1);

% Reaction: id = v7_v_6, name = v_6
	reaction_v7_v_6=compartment_cyt*global_par_DeaEpoRJAKActSHP1*x(7)*x(3)/global_par_SHP1ActEpoR;

% Reaction: id = v8_v_7, name = v_7
	reaction_v8_v_7=compartment_cyt*global_par_DeaEpoRJAKActSHP1*x(7)*x(4)/global_par_SHP1ActEpoR;

% Reaction: id = v9_v_8, name = v_8
	reaction_v9_v_8=compartment_cyt*global_par_DeaEpoRJAKActSHP1*x(7)*x(5)/global_par_SHP1ActEpoR;

% Reaction: id = v12_v_11, name = v_11
	reaction_v12_v_11=compartment_cyt*x(6)*global_par_SHP1ActEpoR*(x(2)+x(5)+x(3)+x(4));

% Reaction: id = v13_v_12, name = v_12
	reaction_v13_v_12=compartment_cyt*global_par_SHP1Dea*x(7);

% Reaction: id = v14_v_13, name = v_13
	reaction_v14_v_13=compartment_cyt*x(8)*global_par_STAT5ActJAK2*(x(2)+x(5)+x(3)+x(4))/(x(15)*global_par_SOCS3Inh/global_par_SOCS3Eqc+1);

% Reaction: id = v15_v_14, name = v_14
	reaction_v15_v_14=compartment_cyt*x(8)*global_par_STAT5ActEpoR*(x(5)+x(3))^2/((x(15)*global_par_SOCS3Inh/global_par_SOCS3Eqc+1)*(x(14)*global_par_CISInh/global_par_CISEqc+1));

% Reaction: id = v16_v_15, name = v_15
	reaction_v16_v_15=compartment_cyt*global_par_STAT5Imp*x(9);

% Reaction: id = v17_v_16, name = v_16
	reaction_v17_v_16=compartment_nuc*global_par_STAT5Exp*x(10);

% Reaction: id = v18_v_17, name = v_17
	reaction_v18_v_17=compartment_nuc*(-global_par_CISRNAEqc)*global_par_CISRNATurn*x(10)*(global_par_ActD-1);

% Reaction: id = v19_v_18, name = v_18
	reaction_v19_v_18=compartment_nuc*x(11)*global_par_CISRNADelay;

% Reaction: id = v20_v_19, name = v_19
	reaction_v20_v_19=compartment_nuc*x(12)*global_par_CISRNADelay;

% Reaction: id = v21_v_20, name = v_20
	reaction_v21_v_20=compartment_cyt*x(13)*global_par_CISRNATurn;

% Reaction: id = v22_v_21, name = v_21
	reaction_v22_v_21=compartment_cyt*x(13)*global_par_CISEqc*global_par_CISTurn;

% Reaction: id = v23_v_22, name = v_22
	reaction_v23_v_22=compartment_cyt*x(14)*global_par_CISTurn;

% Reaction: id = v24_v_23, name = v_23
	reaction_v24_v_23=compartment_cyt*(-global_par_SOCS3Eqc)*global_par_SOCS3Turn*x(10)*(global_par_ActD-1);

% Reaction: id = v25_v_24, name = v_24
	reaction_v25_v_24=compartment_cyt*x(15)*global_par_SOCS3Turn;

% Reaction: id = v26_v_25, name = v_25
	reaction_v26_v_25=compartment_cyt*global_par_SOCS3oe*global_par_SOCS3Eqc*global_par_SOCS3Turn*global_par_SOCS3EqcOE;

	xdot=zeros(15,1);
	
% Species:   id = EpoRJAK2, name = EpoRJAK2, affected by kineticLaw
	xdot(1) = (1/(compartment_cyt))*((-1.0 * reaction_v1_v_0) + ( 1.0 * reaction_v2_v_1) + ( 1.0 * reaction_v7_v_6) + ( 1.0 * reaction_v8_v_7) + ( 1.0 * reaction_v9_v_8));
	
% Species:   id = EpoRpJAK2, name = EpoRpJAK2, affected by kineticLaw
	xdot(2) = (1/(compartment_cyt))*(( 1.0 * reaction_v1_v_0) + (-1.0 * reaction_v2_v_1) + (-1.0 * reaction_v3_v_2) + (-1.0 * reaction_v4_v_3));
	
% Species:   id = p1EpoRpJAK2, name = p1EpoRpJAK2, affected by kineticLaw
	xdot(3) = (1/(compartment_cyt))*(( 1.0 * reaction_v3_v_2) + (-1.0 * reaction_v5_v_4) + (-1.0 * reaction_v7_v_6));
	
% Species:   id = p2EpoRpJAK2, name = p2EpoRpJAK2, affected by kineticLaw
	xdot(4) = (1/(compartment_cyt))*(( 1.0 * reaction_v4_v_3) + (-1.0 * reaction_v6_v_5) + (-1.0 * reaction_v8_v_7));
	
% Species:   id = p12EpoRpJAK2, name = p12EpoRpJAK2, affected by kineticLaw
	xdot(5) = (1/(compartment_cyt))*(( 1.0 * reaction_v5_v_4) + ( 1.0 * reaction_v6_v_5) + (-1.0 * reaction_v9_v_8));
	
% Species:   id = SHP1, name = SHP1
% Warning species is not changed by either rules or reactions
	xdot(6) = ;
	
% Species:   id = SHP1Act, name = SHP1Act, affected by kineticLaw
	xdot(7) = (1/(compartment_cyt))*(( 1.0 * reaction_v12_v_11) + (-1.0 * reaction_v13_v_12));
	
% Species:   id = STAT5, name = STAT5, affected by kineticLaw
	xdot(8) = (1/(compartment_cyt))*((-1.0 * reaction_v14_v_13) + (-1.0 * reaction_v15_v_14) + ( 1.0 * reaction_v17_v_16));
	
% Species:   id = pSTAT5, name = pSTAT5, affected by kineticLaw
	xdot(9) = (1/(compartment_cyt))*(( 1.0 * reaction_v14_v_13) + ( 1.0 * reaction_v15_v_14) + (-1.0 * reaction_v16_v_15));
	
% Species:   id = npSTAT5, name = npSTAT5, affected by kineticLaw
	xdot(10) = (1/(compartment_nuc))*(( 1.0 * reaction_v16_v_15) + (-1.0 * reaction_v17_v_16));
	
% Species:   id = CISnRNA1, name = CISnRNA1, affected by kineticLaw
	xdot(11) = (1/(compartment_nuc))*(( 1.0 * reaction_v18_v_17) + (-1.0 * reaction_v19_v_18));
	
% Species:   id = CISnRNA2, name = CISnRNA2, affected by kineticLaw
	xdot(12) = (1/(compartment_nuc))*(( 1.0 * reaction_v19_v_18) + (-1.0 * reaction_v20_v_19));
	
% Species:   id = CISRNA, name = CISRNA, affected by kineticLaw
	xdot(13) = (1/(compartment_cyt))*(( 1.0 * reaction_v20_v_19) + (-1.0 * reaction_v21_v_20));
	
% Species:   id = CIS, name = CIS, affected by kineticLaw
	xdot(14) = (1/(compartment_cyt))*(( 1.0 * reaction_v22_v_21) + (-1.0 * reaction_v23_v_22));
	
% Species:   id = SOCS3, name = SOCS3, affected by kineticLaw
	xdot(15) = (1/(compartment_cyt))*(( 1.0 * reaction_v24_v_23) + (-1.0 * reaction_v25_v_24) + ( 1.0 * reaction_v26_v_25));
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


