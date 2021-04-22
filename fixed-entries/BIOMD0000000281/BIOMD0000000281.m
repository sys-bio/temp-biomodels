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
% Model name = Chance1960_Glycolysis_Respiration
%
% is http://identifiers.org/biomodels.db/MODEL1010190002
% is http://identifiers.org/biomodels.db/BIOMD0000000281
% isDescribedBy http://identifiers.org/pubmed/13692276
%


function main()
%Initial conditions vector
	x0=zeros(32,1);
	x0(1) = 0.0;
	x0(2) = 1.0E-5;
	x0(3) = 0.0;
	x0(4) = 5.0E-4;
	x0(5) = 1.0E-4;
	x0(6) = 0.0;
	x0(7) = 1.0E-5;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 1.0E-4;
	x0(13) = 1.0E-4;
	x0(14) = 0.004;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.001;
	x0(18) = 0.001;
	x0(19) = 3.0E-5;
	x0(20) = 3.0E-5;
	x0(21) = 2.0E-5;
	x0(22) = 2.0E-5;
	x0(23) = 5.0E-4;
	x0(24) = 2.0E-5;
	x0(25) = 5.0E-4;
	x0(26) = 0.0;
	x0(27) = 2.0E-6;
	x0(28) = 1.0E-6;
	x0(29) = 0.0;
	x0(30) = 5.0E-5;
	x0(31) = 0.0;
	x0(32) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  GLU_0, name = relative GLU
% Parameter:   id =  ENZ_0, name = relative ENZ
% Parameter:   id =  ENG_0, name = relative ENG
% Parameter:   id =  TP1_0, name = relative TP1
% Parameter:   id =  ADP_0, name = relative ADP
% Parameter:   id =  GLP_0, name = relative GLP
% Parameter:   id =  ETZ_0, name = relative ETZ
% Parameter:   id =  ETG_0, name = relative ETG
% Parameter:   id =  GPP_0, name = relative GPP
% Parameter:   id =  GAP_0, name = relative GAP
% Parameter:   id =  DHA_0, name = relative DHA
% Parameter:   id =  DPN_0, name = relative DPN
% Parameter:   id =  DPH_0, name = relative DPH
% Parameter:   id =  PID_0, name = relative PID
% Parameter:   id =  DGA_0, name = relative DGA
% Parameter:   id =  PGA_0, name = relative PGA
% Parameter:   id =  PYR_0, name = relative PYR
% Parameter:   id =  LAC_0, name = relative LAC
% Parameter:   id =  DIN_0, name = relative DIN
% Parameter:   id =  DIH_0, name = relative DIH
% Parameter:   id =  XI_0, name = relative XI
% Parameter:   id =  XSI_0, name = relative XSI
% Parameter:   id =  OXY_0, name = relative OXY
% Parameter:   id =  XSP_0, name = relative XSP
% Parameter:   id =  TP2_0, name = relative TP2
% Parameter:   id =  DBP_0, name = relative DBP
% Parameter:   id =  PUE_0, name = relative PUE
% Parameter:   id =  PPP_0, name = relative PPP
% Parameter:   id =  AGP_0, name = relative AGP
% Parameter:   id =  MOD_0, name = relative MOD
% Parameter:   id =  MOB_0, name = relative MOB
% Parameter:   id =  MOX_0, name = relative MOX
% assignmentRule: variable = GLU_0
	global_par_GLU_0=x(1)/0.003;
% assignmentRule: variable = ENZ_0
	global_par_ENZ_0=x(2)/1.02E-5;
% assignmentRule: variable = ENG_0
	global_par_ENG_0=x(3)/1.02E-5;
% assignmentRule: variable = TP1_0
	global_par_TP1_0=x(4)/0.0015;
% assignmentRule: variable = ADP_0
	global_par_ADP_0=x(5)/0.001;
% assignmentRule: variable = GLP_0
	global_par_GLP_0=x(6)/0.001;
% assignmentRule: variable = ETZ_0
	global_par_ETZ_0=x(7)/1E-5;
% assignmentRule: variable = ETG_0
	global_par_ETG_0=x(8)/1E-5;
% assignmentRule: variable = GPP_0
	global_par_GPP_0=x(9)/0.001;
% assignmentRule: variable = GAP_0
	global_par_GAP_0=x(10)/0.0002;
% assignmentRule: variable = DHA_0
	global_par_DHA_0=x(11)/0.0013;
% assignmentRule: variable = DPN_0
	global_par_DPN_0=x(12)/0.00025;
% assignmentRule: variable = DPH_0
	global_par_DPH_0=x(13)/0.0002;
% assignmentRule: variable = PID_0
	global_par_PID_0=x(14)/0.005;
% assignmentRule: variable = DGA_0
	global_par_DGA_0=x(15)/0.0002;
% assignmentRule: variable = PGA_0
	global_par_PGA_0=x(16)/0.0002;
% assignmentRule: variable = PYR_0
	global_par_PYR_0=x(17)/0.002;
% assignmentRule: variable = LAC_0
	global_par_LAC_0=x(18)/0.0012;
% assignmentRule: variable = DIN_0
	global_par_DIN_0=x(19)/7E-5;
% assignmentRule: variable = DIH_0
	global_par_DIH_0=x(20)/7E-5;
% assignmentRule: variable = XI_0
	global_par_XI_0=x(21)/6E-5;
% assignmentRule: variable = XSI_0
	global_par_XSI_0=x(22)/6E-5;
% assignmentRule: variable = OXY_0
	global_par_OXY_0=x(23)/0.0005;
% assignmentRule: variable = XSP_0
	global_par_XSP_0=x(24)/6E-5;
% assignmentRule: variable = TP2_0
	global_par_TP2_0=x(25)/0.0015;
% assignmentRule: variable = DBP_0
	global_par_DBP_0=x(26)/0.025;
% assignmentRule: variable = PUE_0
	global_par_PUE_0=x(27)/3.06E-6;
% assignmentRule: variable = PPP_0
	global_par_PPP_0=x(28)/3.06;
% assignmentRule: variable = AGP_0
	global_par_AGP_0=x(29)/0.0013;
% assignmentRule: variable = MOD_0
	global_par_MOD_0=x(30)/5E-5;
% assignmentRule: variable = MOB_0
	global_par_MOB_0=x(31)/0.0001;
% assignmentRule: variable = MOX_0
	global_par_MOX_0=x(32)/5E-5;

% Reaction: id = r_1, name = reaction 1	% Local Parameter:   id =  k, name = k
	reaction_r_1_k=3.0E9;

	reaction_r_1=compartment_cell*1E-6*reaction_r_1_k*x(1)*x(2);

% Reaction: id = r_2, name = reaction 2	% Local Parameter:   id =  k, name = k
	reaction_r_2_k=1.0E10;

	reaction_r_2=compartment_cell*1E-6*reaction_r_2_k*x(3)*x(4);

% Reaction: id = r_3, name = reaction 3	% Local Parameter:   id =  k, name = k
	reaction_r_3_k=4.0E10;

	reaction_r_3=compartment_cell*1E-6*reaction_r_3_k*x(6)*x(7);

% Reaction: id = r_4, name = reaction 4	% Local Parameter:   id =  k, name = k
	reaction_r_4_k=4.0E10;

	reaction_r_4=compartment_cell*1E-6*reaction_r_4_k*x(8)*x(4);

% Reaction: id = r_5, name = reaction 5	% Local Parameter:   id =  k, name = k
	reaction_r_5_k=100000.0;

	reaction_r_5=compartment_cell*1E-6*reaction_r_5_k*x(9);

% Reaction: id = r_6, name = reaction 6	% Local Parameter:   id =  k, name = k
	reaction_r_6_k=2.0E9;

	reaction_r_6=compartment_cell*1E-6*reaction_r_6_k*x(11)*x(13);

% Reaction: id = r_7, name = reaction 7	% Local Parameter:   id =  k, name = k
	reaction_r_7_k=8.0E7;

	reaction_r_7=compartment_cell*1E-6*reaction_r_7_k*x(29)*x(12);

% Reaction: id = r_8, name = reaction 8	% Local Parameter:   id =  k, name = k
	reaction_r_8_k=6.0E11;

	reaction_r_8=compartment_cell*1E-6*reaction_r_8_k*x(10)*x(30);

% Reaction: id = r_9, name = reaction 9	% Local Parameter:   id =  k, name = k
	reaction_r_9_k=4.0E8;

	reaction_r_9=compartment_cell*1E-6*reaction_r_9_k*x(31)*x(14);

% Reaction: id = r_10, name = reaction 10	% Local Parameter:   id =  k, name = k
	reaction_r_10_k=6.0E9;

	reaction_r_10=compartment_cell*1E-6*reaction_r_10_k*x(32)*x(12);

% Reaction: id = r_11, name = reaction 11	% Local Parameter:   id =  k, name = k
	reaction_r_11_k=1.0E10;

	reaction_r_11=compartment_cell*1E-6*reaction_r_11_k*x(15)*x(5);

% Reaction: id = r_12, name = reaction 12	% Local Parameter:   id =  k, name = k
	reaction_r_12_k=5.0E9;

	reaction_r_12=compartment_cell*1E-6*reaction_r_12_k*x(16)*x(5);

% Reaction: id = r_13, name = reaction 13	% Local Parameter:   id =  k, name = k
	reaction_r_13_k=5.0E8;

	reaction_r_13=compartment_cell*1E-6*reaction_r_13_k*x(17)*x(13);

% Reaction: id = r_14, name = reaction 14	% Local Parameter:   id =  k, name = k
	reaction_r_14_k=1.0E7;

	reaction_r_14=compartment_cell*1E-6*reaction_r_14_k*x(18)*x(12);

% Reaction: id = r_15, name = reaction 15	% Local Parameter:   id =  k, name = k
	reaction_r_15_k=2.0E7;

	reaction_r_15=compartment_cell*1E-6*reaction_r_15_k*x(17)*x(19);

% Reaction: id = r_16, name = reaction 16	% Local Parameter:   id =  k, name = k
	reaction_r_16_k=7.5E12;

	reaction_r_16=compartment_cell*1E-6*reaction_r_16_k*x(20)*x(21)*x(23);

% Reaction: id = r_17, name = reaction 17	% Local Parameter:   id =  k, name = k
	reaction_r_17_k=4.0E8;

	reaction_r_17=compartment_cell*1E-6*reaction_r_17_k*x(22)*x(14);

% Reaction: id = r_18, name = reaction 18	% Local Parameter:   id =  k, name = k
	reaction_r_18_k=1.5E10;

	reaction_r_18=compartment_cell*1E-6*reaction_r_18_k*x(24)*x(5);

% Reaction: id = r_19, name = reaction 19	% Local Parameter:   id =  k, name = k
	reaction_r_19_k=1.2E8;

	reaction_r_19=compartment_cell*1E-6*reaction_r_19_k*x(22)*x(26);

% Reaction: id = r_20, name = reaction 20	% Local Parameter:   id =  k, name = k
	reaction_r_20_k=4000000.0;

	reaction_r_20=compartment_cell*1E-6*reaction_r_20_k*x(25)*x(26);

% Reaction: id = r_21, name = reaction 21	% Local Parameter:   id =  k, name = k
	reaction_r_21_k=3.0E9;

	reaction_r_21=compartment_cell*1E-6*reaction_r_21_k*x(4)*x(27);

% Reaction: id = r_22, name = reaction 22	% Local Parameter:   id =  k, name = k
	reaction_r_22_k=2000000.0;

	reaction_r_22=compartment_cell*1E-6*reaction_r_22_k*x(28);

%Event: id=e_1
	event_e_1=time >= 64;

	if(event_e_1) 
		x(1)=0.003;
	end

%Event: id=e_2
	event_e_2=time >= 119;

	if(event_e_2) 
		x(26)=0.025;
	end

	xdot=zeros(32,1);
	
% Species:   id = GLU, name = (GLU) glucose, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_r_1));
	
% Species:   id = ENZ, name = (ENZ) hexokinase, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_r_1) + ( 1.0 * reaction_r_2));
	
% Species:   id = ENG, name = (ENG) hexokinase-glucose intermediate, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_r_1) + (-1.0 * reaction_r_2));
	
% Species:   id = TP1, name = (TP1) adenosine triphosphate in store 1 (cytoplasm), affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*((-1.0 * reaction_r_2) + (-1.0 * reaction_r_4) + ( 1.0 * reaction_r_11) + ( 1.0 * reaction_r_12) + ( 1.0 * reaction_r_20) + (-1.0 * reaction_r_21));
	
% Species:   id = ADP, name = (ADP) adenosine diphosphate, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_r_2) + ( 1.0 * reaction_r_4) + (-1.0 * reaction_r_11) + (-1.0 * reaction_r_12) + (-1.0 * reaction_r_18) + ( 1.0 * reaction_r_22));
	
% Species:   id = GLP, name = (GLP) glucose 6-phosphate, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_r_2) + (-1.0 * reaction_r_3));
	
% Species:   id = ETZ, name = (ETZ) phosphofructokinase, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*((-1.0 * reaction_r_3) + ( 1.0 * reaction_r_4));
	
% Species:   id = ETG, name = (ETG) phosphofructokinase intermediate, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_r_3) + (-1.0 * reaction_r_4));
	
% Species:   id = GPP, name = (GPP) hexose diphosphate, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_r_4) + (-1.0 * reaction_r_5));
	
% Species:   id = GAP, name = (GAP) glyceraldehyde 3-phosphate, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_r_5) + (-1.0 * reaction_r_8));
	
% Species:   id = DHA, name = (DHA) dihydroxacetone phosphate, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_r_5) + (-1.0 * reaction_r_6) + ( 1.0 * reaction_r_7));
	
% Species:   id = DPN, name = (DPN) extramitochondrial diphospyridine nucleotide, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_r_6) + (-1.0 * reaction_r_7) + (-1.0 * reaction_r_10) + ( 1.0 * reaction_r_13) + (-1.0 * reaction_r_14));
	
% Species:   id = DPH, name = (DPH) extramitochondrial reduced diphospyridine nucleotide, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*((-1.0 * reaction_r_6) + ( 1.0 * reaction_r_7) + ( 1.0 * reaction_r_8) + (-1.0 * reaction_r_13) + ( 1.0 * reaction_r_14));
	
% Species:   id = PID, name = (PID) inorganic phosphate, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*((-1.0 * reaction_r_9) + (-1.0 * reaction_r_17) + ( 1.0 * reaction_r_22));
	
% Species:   id = DGA, name = (DGA) 1,3 diphosphoglycerate, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*(( 1.0 * reaction_r_9) + (-1.0 * reaction_r_11));
	
% Species:   id = PGA, name = (PGA) 3 phosphoglycerate, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_r_11) + (-1.0 * reaction_r_12));
	
% Species:   id = PYR, name = (PYR) pyruvate, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*(( 1.0 * reaction_r_12) + (-1.0 * reaction_r_13) + ( 1.0 * reaction_r_14) + (-1.0 * reaction_r_15));
	
% Species:   id = LAC, name = (LAC) lactate, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*(( 1.0 * reaction_r_13) + (-1.0 * reaction_r_14));
	
% Species:   id = DIN, name = (DIN) intramitochondrial diphospyridine nucleotide, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*((-4.0 * reaction_r_15) + ( 1.0 * reaction_r_16));
	
% Species:   id = DIH, name = (DIH) intramitochondrial reduced diphospyridine nucleotide, affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*(( 4.0 * reaction_r_15) + (-1.0 * reaction_r_16));
	
% Species:   id = XI, name = (XI) low energy intermediate in oxidative phosphorylation, affected by kineticLaw
	xdot(21) = (1/(compartment_cell))*((-3.0 * reaction_r_16) + ( 1.0 * reaction_r_18) + ( 1.0 * reaction_r_19));
	
% Species:   id = XSI, name = (XSI) high energy intermediate in oxidative phosphorylation, affected by kineticLaw
	xdot(22) = (1/(compartment_cell))*(( 3.0 * reaction_r_16) + (-1.0 * reaction_r_17) + (-1.0 * reaction_r_19));
	
% Species:   id = OXY, name = (OXY) oxygen, affected by kineticLaw
	xdot(23) = (1/(compartment_cell))*((-1.0 * reaction_r_16));
	
% Species:   id = XSP, name = (XSP) phosphorylated intermediate in oxidative phosphorylation, affected by kineticLaw
	xdot(24) = (1/(compartment_cell))*(( 1.0 * reaction_r_17) + (-1.0 * reaction_r_18));
	
% Species:   id = TP2, name = (TP2) adenosine triphosphate in store 2 (mitochondria), affected by kineticLaw
	xdot(25) = (1/(compartment_cell))*(( 1.0 * reaction_r_18) + (-1.0 * reaction_r_20));
	
% Species:   id = DBP, name = (DBP) dibromophenol
% Warning species is not changed by either rules or reactions
	xdot(26) = ;
	
% Species:   id = PUE, name = (PUE) enzyme concerned in ATP utilization, affected by kineticLaw
	xdot(27) = (1/(compartment_cell))*((-1.0 * reaction_r_21) + ( 1.0 * reaction_r_22));
	
% Species:   id = PPP, name = (PPP) enzyme intermediate concerned in ATP utilization, affected by kineticLaw
	xdot(28) = (1/(compartment_cell))*(( 1.0 * reaction_r_21) + (-1.0 * reaction_r_22));
	
% Species:   id = AGP, name = (AGP) alpha-glycerophosphate, affected by kineticLaw
	xdot(29) = (1/(compartment_cell))*(( 1.0 * reaction_r_6) + (-1.0 * reaction_r_7));
	
% Species:   id = MOD, name = (MOD) glyceraldehyde 3-phoshphate dehydrogenase-DPN complex, affected by kineticLaw
	xdot(30) = (1/(compartment_cell))*((-1.0 * reaction_r_8) + ( 1.0 * reaction_r_10));
	
% Species:   id = MOB, name = (MOB) acyl enzyme intermediate of glyceraldehyde 3-phoshphate dehydrogenase, affected by kineticLaw
	xdot(31) = (1/(compartment_cell))*(( 1.0 * reaction_r_8) + (-1.0 * reaction_r_9));
	
% Species:   id = MOX, name = (MOX) glyceraldehyde 3-phoshphate dehydrogenase, affected by kineticLaw
	xdot(32) = (1/(compartment_cell))*(( 1.0 * reaction_r_9) + (-1.0 * reaction_r_10));
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


