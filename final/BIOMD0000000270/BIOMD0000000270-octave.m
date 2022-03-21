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
% Model name = Schilling2009 - ERK distributive
%
% is http://identifiers.org/biomodels.db/MODEL1001120000
% is http://identifiers.org/biomodels.db/BIOMD0000000270
% isDescribedBy http://identifiers.org/pubmed/20029368
%


function main()
%Initial conditions vector
	x0=zeros(33,1);
	x0(1) = 2.0;
	x0(2) = 1.0;
	x0(3) = 10.7991;
	x0(4) = 2.5101;
	x0(5) = 3.7719;
	x0(6) = 11.0;
	x0(7) = 24.0;
	x0(8) = 7.0;
	x0(9) = 21.0;
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
	x0(33) = 50.0;


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
% Parameter:   id =  JAK2_phosphorylation_by_Epo, name = JAK2_phosphorylation_by_Epo
	global_par_JAK2_phosphorylation_by_Epo=0.0122149;
% Parameter:   id =  EpoR_phosphorylation_by_pJAK2, name = EpoR_phosphorylation_by_pJAK2
	global_par_EpoR_phosphorylation_by_pJAK2=3.15714;
% Parameter:   id =  SHP1_activation_by_pEpoR, name = SHP1_activation_by_pEpoR
	global_par_SHP1_activation_by_pEpoR=0.408408;
% Parameter:   id =  SHP1_delay, name = SHP1_delay
	global_par_SHP1_delay=0.408408;
% Parameter:   id =  actSHP1_deactivation, name = actSHP1_deactivation
	global_par_actSHP1_deactivation=0.0248773;
% Parameter:   id =  pEpoR_dephosphorylation_by_actSHP1, name = pEpoR_dephosphorylation_by_actSHP1
	global_par_pEpoR_dephosphorylation_by_actSHP1=1.19995;
% Parameter:   id =  pJAK2_dephosphorylation_by_actSHP1, name = pJAK2_dephosphorylation_by_actSHP1
	global_par_pJAK2_dephosphorylation_by_actSHP1=0.368384;
% Parameter:   id =  SOS_recruitment_by_pEpoR, name = SOS_recruitment_by_pEpoR
	global_par_SOS_recruitment_by_pEpoR=0.10271;
% Parameter:   id =  mSOS_release_from_membrane, name = mSOS_release_from_membrane
	global_par_mSOS_release_from_membrane=15.5956;
% Parameter:   id =  mSOS_induced_Raf_phosphorylation, name = mSOS_induced_Raf_phosphorylation
	global_par_mSOS_induced_Raf_phosphorylation=0.144515;
% Parameter:   id =  pRaf_dephosphorylation, name = pRaf_dephosphorylation
	global_par_pRaf_dephosphorylation=0.374228;
% Parameter:   id =  First_MEK2_phosphorylation_by_pRaf, name = First_MEK2_phosphorylation_by_pRaf
	global_par_First_MEK2_phosphorylation_by_pRaf=3.11919;
% Parameter:   id =  Second_MEK2_phosphorylation_by_pRaf, name = Second_MEK2_phosphorylation_by_pRaf
	global_par_Second_MEK2_phosphorylation_by_pRaf=215.158;
% Parameter:   id =  First_MEK1_phosphorylation_by_pRaf, name = First_MEK1_phosphorylation_by_pRaf
	global_par_First_MEK1_phosphorylation_by_pRaf=0.687193;
% Parameter:   id =  Second_MEK1_phosphorylation_by_pRaf, name = Second_MEK1_phosphorylation_by_pRaf
	global_par_Second_MEK1_phosphorylation_by_pRaf=667.957;
% Parameter:   id =  First_MEK_dephosphorylation, name = First_MEK_dephosphorylation
	global_par_First_MEK_dephosphorylation=0.130937;
% Parameter:   id =  Second_MEK_dephosphorylation, name = Second_MEK_dephosphorylation
	global_par_Second_MEK_dephosphorylation=0.0732724;
% Parameter:   id =  First_ERK1_phosphorylation_by_ppMEK, name = First_ERK1_phosphorylation_by_ppMEK
	global_par_First_ERK1_phosphorylation_by_ppMEK=2.4927;
% Parameter:   id =  Second_ERK1_phosphorylation_by_ppMEK, name = Second_ERK1_phosphorylation_by_ppMEK
	global_par_Second_ERK1_phosphorylation_by_ppMEK=59.5251;
% Parameter:   id =  First_ERK2_phosphorylation_by_ppMEK, name = First_ERK2_phosphorylation_by_ppMEK
	global_par_First_ERK2_phosphorylation_by_ppMEK=2.44361;
% Parameter:   id =  Second_ERK2_phosphorylation_by_ppMEK, name = Second_ERK2_phosphorylation_by_ppMEK
	global_par_Second_ERK2_phosphorylation_by_ppMEK=53.0816;
% Parameter:   id =  First_ERK_dephosphorylation, name = First_ERK_dephosphorylation
	global_par_First_ERK_dephosphorylation=39.0886;
% Parameter:   id =  Second_ERK_dephosphorylation, name = Second_ERK_dephosphorylation
	global_par_Second_ERK_dephosphorylation=3.00453;
% Parameter:   id =  ppERK_neg_feedback_on_mSOS, name = ppERK_neg_feedback_on_mSOS
	global_par_ppERK_neg_feedback_on_mSOS=5122.68;
% Parameter:   id =  pSOS_dephosphorylation, name = pSOS_dephosphorylation
	global_par_pSOS_dephosphorylation=0.124944;
% Parameter:   id =  scale_pEpoR, name = scale_pEpoR
	global_par_scale_pEpoR=0.493312;
% Parameter:   id =  scale_pJAK2, name = scale_pJAK2
	global_par_scale_pJAK2=0.21008;
% Parameter:   id =  scale_ppERK, name = scale_ppERK
	global_par_scale_ppERK=13.5981;
% Parameter:   id =  scale_SOS, name = scale_SOS
	global_par_scale_SOS=1.10228;
% Parameter:   id =  scale_ppMEK, name = scale_ppMEK
	global_par_scale_ppMEK=40.5364;
% Parameter:   id =  rescaled_pEpoR, name = rescaled_pEpoR
% Parameter:   id =  rescaled_ppMEK1, name = rescaled_ppMEK1
% Parameter:   id =  rescaled_ppMEK2, name = rescaled_ppMEK2
% Parameter:   id =  rescaled_ppERK1, name = rescaled_ppERK1
% Parameter:   id =  rescaled_ppERK2, name = rescaled_ppERK2
% Parameter:   id =  rescaled_pJAK2, name = rescaled_pJAK2
% Parameter:   id =  rescaled_pSOS, name = rescaled_pSOS
% Parameter:   id =  rescaled_SOS, name = rescaled_SOS
% Parameter:   id =  rescaled_mSOS, name = rescaled_mSOS
% assignmentRule: variable = rescaled_pEpoR
	global_par_rescaled_pEpoR=global_par_scale_pEpoR*x(11);
% assignmentRule: variable = rescaled_pJAK2
	global_par_rescaled_pJAK2=global_par_scale_pJAK2*x(10);
% assignmentRule: variable = rescaled_ppERK1
	global_par_rescaled_ppERK1=global_par_scale_ppERK*x(18);
% assignmentRule: variable = rescaled_ppERK2
	global_par_rescaled_ppERK2=global_par_scale_ppERK*x(19);
% assignmentRule: variable = rescaled_ppMEK1
	global_par_rescaled_ppMEK1=global_par_scale_ppMEK*x(17);
% assignmentRule: variable = rescaled_ppMEK2
	global_par_rescaled_ppMEK2=global_par_scale_ppMEK*x(16);
% assignmentRule: variable = rescaled_pSOS
	global_par_rescaled_pSOS=global_par_scale_SOS*x(20);
% assignmentRule: variable = rescaled_SOS
	global_par_rescaled_SOS=global_par_scale_SOS*x(4);
% assignmentRule: variable = rescaled_mSOS
	global_par_rescaled_mSOS=global_par_scale_SOS*x(14);

% Reaction: id = reaction_1
	reaction_reaction_1=global_par_JAK2_phosphorylation_by_Epo*x(1)*x(33)*compartment_cell;

% Reaction: id = reaction_2
	reaction_reaction_2=global_par_EpoR_phosphorylation_by_pJAK2*x(2)*x(10)*compartment_cell;

% Reaction: id = reaction_3
	reaction_reaction_3=global_par_SHP1_activation_by_pEpoR*x(3)*x(11)*compartment_cell;

% Reaction: id = reaction_4
	reaction_reaction_4=global_par_SHP1_delay*x(12)*compartment_cell;

% Reaction: id = reaction_5
	reaction_reaction_5=global_par_SHP1_delay*x(25)*compartment_cell;

% Reaction: id = reaction_6
	reaction_reaction_6=global_par_SHP1_delay*x(26)*compartment_cell;

% Reaction: id = reaction_7
	reaction_reaction_7=global_par_SHP1_delay*x(27)*compartment_cell;

% Reaction: id = reaction_8
	reaction_reaction_8=global_par_SHP1_delay*x(28)*compartment_cell;

% Reaction: id = reaction_9
	reaction_reaction_9=global_par_SHP1_delay*x(29)*compartment_cell;

% Reaction: id = reaction_10
	reaction_reaction_10=global_par_SHP1_delay*x(30)*compartment_cell;

% Reaction: id = reaction_11
	reaction_reaction_11=global_par_SHP1_delay*x(31)*compartment_cell;

% Reaction: id = reaction_12
	reaction_reaction_12=global_par_SHP1_delay*x(32)*compartment_cell;

% Reaction: id = reaction_13
	reaction_reaction_13=global_par_actSHP1_deactivation*x(13)*compartment_cell;

% Reaction: id = reaction_14
	reaction_reaction_14=global_par_pEpoR_dephosphorylation_by_actSHP1*x(11)*x(13)*compartment_cell;

% Reaction: id = reaction_15
	reaction_reaction_15=global_par_pJAK2_dephosphorylation_by_actSHP1*x(10)*x(13)*compartment_cell;

% Reaction: id = reaction_16
	reaction_reaction_16=global_par_SOS_recruitment_by_pEpoR*x(4)*x(11)*compartment_cell;

% Reaction: id = reaction_17
	reaction_reaction_17=global_par_mSOS_release_from_membrane*x(14)*compartment_cell;

% Reaction: id = reaction_18
	reaction_reaction_18=global_par_mSOS_induced_Raf_phosphorylation*x(5)*x(14)*compartment_cell;

% Reaction: id = reaction_19
	reaction_reaction_19=global_par_pRaf_dephosphorylation*x(15)*compartment_cell;

% Reaction: id = reaction_20
	reaction_reaction_20=global_par_First_MEK2_phosphorylation_by_pRaf*x(6)*x(15)*compartment_cell;

% Reaction: id = reaction_21
	reaction_reaction_21=global_par_First_MEK1_phosphorylation_by_pRaf*x(7)*x(15)*compartment_cell;

% Reaction: id = reaction_22
	reaction_reaction_22=global_par_Second_MEK2_phosphorylation_by_pRaf*x(21)*x(15)*compartment_cell;

% Reaction: id = reaction_23
	reaction_reaction_23=global_par_Second_MEK1_phosphorylation_by_pRaf*x(22)*x(15)*compartment_cell;

% Reaction: id = reaction_24
	reaction_reaction_24=global_par_First_MEK_dephosphorylation*x(16)*compartment_cell;

% Reaction: id = reaction_25
	reaction_reaction_25=global_par_First_MEK_dephosphorylation*x(17)*compartment_cell;

% Reaction: id = reaction_26
	reaction_reaction_26=global_par_Second_MEK_dephosphorylation*x(21)*compartment_cell;

% Reaction: id = reaction_27
	reaction_reaction_27=global_par_Second_MEK_dephosphorylation*x(22)*compartment_cell;

% Reaction: id = reaction_28
	reaction_reaction_28=global_par_First_ERK1_phosphorylation_by_ppMEK*x(8)*x(16)*compartment_cell;

% Reaction: id = reaction_29
	reaction_reaction_29=global_par_First_ERK2_phosphorylation_by_ppMEK*x(9)*x(16)*compartment_cell;

% Reaction: id = reaction_30
	reaction_reaction_30=global_par_First_ERK1_phosphorylation_by_ppMEK*x(8)*x(17)*compartment_cell;

% Reaction: id = reaction_31
	reaction_reaction_31=global_par_First_ERK2_phosphorylation_by_ppMEK*x(9)*x(17)*compartment_cell;

% Reaction: id = reaction_32
	reaction_reaction_32=global_par_Second_ERK1_phosphorylation_by_ppMEK*x(23)*x(16)*compartment_cell;

% Reaction: id = reaction_33
	reaction_reaction_33=global_par_Second_ERK2_phosphorylation_by_ppMEK*x(24)*x(16)*compartment_cell;

% Reaction: id = reaction_34
	reaction_reaction_34=global_par_Second_ERK1_phosphorylation_by_ppMEK*x(23)*x(17)*compartment_cell;

% Reaction: id = reaction_35
	reaction_reaction_35=global_par_Second_ERK2_phosphorylation_by_ppMEK*x(24)*x(17)*compartment_cell;

% Reaction: id = reaction_36
	reaction_reaction_36=global_par_First_ERK_dephosphorylation*x(18)*compartment_cell;

% Reaction: id = reaction_37
	reaction_reaction_37=global_par_First_ERK_dephosphorylation*x(19)*compartment_cell;

% Reaction: id = reaction_38
	reaction_reaction_38=global_par_Second_ERK_dephosphorylation*x(23)*compartment_cell;

% Reaction: id = reaction_39
	reaction_reaction_39=global_par_Second_ERK_dephosphorylation*x(24)*compartment_cell;

% Reaction: id = reaction_40
	reaction_reaction_40=global_par_ppERK_neg_feedback_on_mSOS*x(14)*x(18)*compartment_cell;

% Reaction: id = reaction_41
	reaction_reaction_41=global_par_ppERK_neg_feedback_on_mSOS*x(14)*x(19)*compartment_cell;

% Reaction: id = reaction_42
	reaction_reaction_42=global_par_pSOS_dephosphorylation*x(20)*compartment_cell;

	xdot=zeros(33,1);
	
% Species:   id = JAK2, name = JAK2, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_15));
	
% Species:   id = EpoR, name = EpoR, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_14));
	
% Species:   id = SHP1, name = SHP1, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*((-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_13));
	
% Species:   id = SOS, name = SOS, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*((-1.0 * reaction_reaction_16) + ( 1.0 * reaction_reaction_17) + ( 1.0 * reaction_reaction_42));
	
% Species:   id = Raf, name = Raf, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*((-1.0 * reaction_reaction_18) + ( 1.0 * reaction_reaction_19));
	
% Species:   id = MEK2, name = MEK2, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*((-1.0 * reaction_reaction_20) + ( 1.0 * reaction_reaction_26));
	
% Species:   id = MEK1, name = MEK1, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*((-1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_27));
	
% Species:   id = ERK1, name = ERK1, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*((-1.0 * reaction_reaction_28) + (-1.0 * reaction_reaction_30) + ( 1.0 * reaction_reaction_38));
	
% Species:   id = ERK2, name = ERK2, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*((-1.0 * reaction_reaction_29) + (-1.0 * reaction_reaction_31) + ( 1.0 * reaction_reaction_39));
	
% Species:   id = pJAK2, name = pJAK2, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_15));
	
% Species:   id = pEpoR, name = pEpoR, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_14));
	
% Species:   id = mSHP1, name = mSHP1, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = actSHP1, name = actSHP1, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13));
	
% Species:   id = mSOS, name = mSOS, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_40) + (-1.0 * reaction_reaction_41));
	
% Species:   id = pRaf, name = pRaf, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19));
	
% Species:   id = ppMEK2, name = ppMEK2, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_24));
	
% Species:   id = ppMEK1, name = ppMEK1, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_23) + (-1.0 * reaction_reaction_25));
	
% Species:   id = ppERK1, name = ppERK1, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_32) + ( 1.0 * reaction_reaction_34) + (-1.0 * reaction_reaction_36));
	
% Species:   id = ppERK2, name = ppERK2, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_33) + ( 1.0 * reaction_reaction_35) + (-1.0 * reaction_reaction_37));
	
% Species:   id = pSOS, name = pSOS, affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_40) + ( 1.0 * reaction_reaction_41) + (-1.0 * reaction_reaction_42));
	
% Species:   id = pMEK2, name = pMEK2, affected by kineticLaw
	xdot(21) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_22) + ( 1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_26));
	
% Species:   id = pMEK1, name = pMEK1, affected by kineticLaw
	xdot(22) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_25) + (-1.0 * reaction_reaction_27));
	
% Species:   id = pERK1, name = pERK1, affected by kineticLaw
	xdot(23) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_28) + ( 1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_32) + (-1.0 * reaction_reaction_34) + ( 1.0 * reaction_reaction_36) + (-1.0 * reaction_reaction_38));
	
% Species:   id = pERK2, name = pERK2, affected by kineticLaw
	xdot(24) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_29) + ( 1.0 * reaction_reaction_31) + (-1.0 * reaction_reaction_33) + (-1.0 * reaction_reaction_35) + ( 1.0 * reaction_reaction_37) + (-1.0 * reaction_reaction_39));
	
% Species:   id = Delay01_mSHP1, name = Delay01_mSHP1, affected by kineticLaw
	xdot(25) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = Delay02_mSHP1, name = Delay02_mSHP1, affected by kineticLaw
	xdot(26) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6));
	
% Species:   id = Delay03_mSHP1, name = Delay03_mSHP1, affected by kineticLaw
	xdot(27) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7));
	
% Species:   id = Delay04_mSHP1, name = Delay04_mSHP1, affected by kineticLaw
	xdot(28) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
	
% Species:   id = Delay05_mSHP1, name = Delay05_mSHP1, affected by kineticLaw
	xdot(29) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9));
	
% Species:   id = Delay06_mSHP1, name = Delay06_mSHP1, affected by kineticLaw
	xdot(30) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10));
	
% Species:   id = Delay07_mSHP1, name = Delay07_mSHP1, affected by kineticLaw
	xdot(31) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11));
	
% Species:   id = Delay08_mSHP1, name = Delay08_mSHP1, affected by kineticLaw
	xdot(32) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12));
	
% Species:   id = Epo, name = Epo
% Warning species is not changed by either rules or reactions
	xdot(33) = ;
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


