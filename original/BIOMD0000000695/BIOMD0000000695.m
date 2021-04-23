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
% Model name = FelixGarza2017 - Blue Light Treatment of Psoriasis (simplified)
%
% is http://identifiers.org/biomodels.db/MODEL1701090001
% isDescribedBy http://identifiers.org/doi/10.3389/fphys.2017.00028
% is http://identifiers.org/biomodels.db/BIOMD0000000695
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(1) = 362.0;
	x0(2) = 77.0;
	x0(3) = 61.0;
	x0(4) = 238.0;
	x0(5) = 119.0;
	x0(6) = 185.0;
	x0(7) = 6459.0;
	x0(8) = 32098.0;
	x0(9) = 20536.0;
	x0(10) = 79788.0;
	x0(11) = 0.0;
	x0(12) = 77633.0;


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

% Compartment: id = compartmentOne, name = Healthy, constant
	compartment_compartmentOne=1.0;
% Compartment: id = Psoriatic, name = Psoriatic, constant
	compartment_Psoriatic=1.0;
% Parameter:   id =  AId, name = AId
	global_par_AId=3.5E-4;
% Parameter:   id =  AIh, name = AIh
	global_par_AIh=0.0012;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.0714;
% Parameter:   id =  alphaps, name = alphaps
	global_par_alphaps=0.2856;
% Parameter:   id =  apopFBL, name = apopFBL
	global_par_apopFBL=0.0;
% Parameter:   id =  aProl, name = aProl
	global_par_aProl=1.0;
% Parameter:   id =  beta1h, name = beta1
	global_par_beta1h=1.97036443732479E-6;
% Parameter:   id =  beta2, name = beta2
	global_par_beta2=2.07849419303164E-5;
% Parameter:   id =  beta3, name = beta3
	global_par_beta3=2.59511413696436E-4;
% Parameter:   id =  beta4, name = beta4
	global_par_beta4=6.68001601922307E-5;
% Parameter:   id =  beta5, name = beta5
	global_par_beta5=1.33360032038446E-4;
% Parameter:   id =  betaps1, name = betaps1
	global_par_betaps1=2.29680388135848E-6;
% Parameter:   id =  betaps2, name = betaps2
	global_par_betaps2=2.42284799679888E-5;
% Parameter:   id =  betaps3, name = betaps3
	global_par_betaps3=3.78132346321212E-4;
% Parameter:   id =  betaps4, name = betaps4
	global_par_betaps4=9.73340669234232E-5;
% Parameter:   id =  bProl, name = bProl
	global_par_bProl=-0.003404;
% Parameter:   id =  doseBL, name = doseBL
	global_par_doseBL=52.11;
% Parameter:   id =  gamma1h, name = gamma1h
	global_par_gamma1h=0.0033;
% Parameter:   id =  gamma1ps, name = gamma1ps
	global_par_gamma1ps=0.0132;
% Parameter:   id =  gamma2, name = gamma2
	global_par_gamma2=0.014;
% Parameter:   id =  gamma2ps, name = gamma2ps
	global_par_gamma2ps=0.046897728935757;
% Parameter:   id =  k1ah, name = k1ah
	global_par_k1ah=0.0131;
% Parameter:   id =  k1sh, name = k1sh
	global_par_k1sh=0.00164;
% Parameter:   id =  k2a, name = k2a
	global_par_k2a=0.138;
% Parameter:   id =  k2s, name = k2s
	global_par_k2s=0.0173;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.216;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.0556;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.111;
% Parameter:   id =  Ka, name = Ka
% Parameter:   id =  km1, name = km1
	global_par_km1=1.0E-6;
% Parameter:   id =  km2, name = km2
	global_par_km2=1.0E-6;
% Parameter:   id =  kmps1, name = kmps1
	global_par_kmps1=1.0E-6;
% Parameter:   id =  kmps2, name = kmps2
	global_par_kmps2=1.0E-6;
% Parameter:   id =  Kp, name = Kp
	global_par_Kp=6.0;
% Parameter:   id =  kps1a, name = kps1a
	global_par_kps1a=0.0524;
% Parameter:   id =  kps1s, name = kps1s
	global_par_kps1s=0.00656;
% Parameter:   id =  kps2a, name = kps2a
	global_par_kps2a=0.552;
% Parameter:   id =  kps2s, name = kps2s
	global_par_kps2s=0.0692;
% Parameter:   id =  kps3, name = kps3
	global_par_kps3=1.08;
% Parameter:   id =  kps4, name = kps4
	global_par_kps4=0.278;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=3.5;
% Parameter:   id =  LPSI0, name = LPSI0
	global_par_LPSI0=5.34;
% Parameter:   id =  n, name = n
	global_par_n=3.0;
% Parameter:   id =  omega, name = omega
	global_par_omega=100.0;
% Parameter:   id =  Psch, name = Psch
	global_par_Psch=2267.67532424221;
% Parameter:   id =  Pscmax, name = Pscmax
	global_par_Pscmax=4500.0;
% Parameter:   id =  Ptah, name = Ptah
	global_par_Ptah=11184.7844353585;
% Parameter:   id =  rhoDe, name = rhoDe
	global_par_rhoDe=4.0;
% Parameter:   id =  rhoSC, name = rhoSC
	global_par_rhoSC=4.0;
% Parameter:   id =  rhoTA, name = rhoTA
	global_par_rhoTA=4.0;
% Parameter:   id =  rhoTr, name = rhoTr
	global_par_rhoTr=5.0;
% Parameter:   id =  skinType, name = skinType
	global_par_skinType=0.579;
% Parameter:   id =  therI, name = therI
	global_par_therI=84.0;
% Parameter:   id =  thetaBLprol, name = thetaBLprol
	global_par_thetaBLprol=0.837459445281375;
% Parameter:   id =  Treatment_Duration, name = Treatment_Duration
	global_par_Treatment_Duration=1.0;
% assignmentRule: variable = Ka
	global_par_Ka=3^(1/2)*global_par_Psch/10;

% Reaction: id = R_1, name = R_001
	reaction_R_1=compartment_Psoriatic*Function_for_R_1(compartment_compartmentOne, global_par_k4, global_par_rhoTr, x(10));

% Reaction: id = R_2, name = R_002
	reaction_R_2=compartment_Psoriatic*Function_for_R_2(global_par_alpha, global_par_apopFBL, compartment_compartmentOne, global_par_rhoDe, x(12));

% Reaction: id = R_3, name = R_003
	reaction_R_3=compartment_Psoriatic*Function_for_R_3(compartment_compartmentOne, global_par_k3, global_par_rhoTr, x(9));

% Reaction: id = R_4, name = R_004
	reaction_R_4=compartment_Psoriatic*Function_for_R_4(global_par_AId, global_par_apopFBL, compartment_compartmentOne, global_par_k4, global_par_rhoTr, x(10));

% Reaction: id = R_5, name = R_005
	reaction_R_5=compartment_Psoriatic*Function_for_R_5(compartment_compartmentOne, global_par_k2s, global_par_rhoTA, x(8));

% Reaction: id = R_6, name = R_006
	reaction_R_6=compartment_Psoriatic*Function_for_R_6(compartment_compartmentOne, global_par_k2a, global_par_rhoTA, x(8));

% Reaction: id = R_7, name = R_007
	reaction_R_7=compartment_Psoriatic*Function_for_R_7(global_par_AId, global_par_apopFBL, compartment_compartmentOne, global_par_k3, global_par_rhoTr, x(9));

% Reaction: id = R_8, name = R_008
	reaction_R_8=compartment_Psoriatic*Function_for_R_8(compartment_compartmentOne, global_par_km2, x(9));

% Reaction: id = R_9, name = R_009
	reaction_R_9=compartment_Psoriatic*Function_for_R_9(compartment_compartmentOne, global_par_k1sh, global_par_rhoSC, x(7));

% Reaction: id = R_10, name = R_010
	reaction_R_10=compartment_Psoriatic*Function_for_R_10(compartment_compartmentOne, global_par_k1ah, global_par_rhoSC, x(7));

% Reaction: id = R_11, name = R_011
	reaction_R_11=compartment_Psoriatic*Function_for_R_11(global_par_aProl, global_par_bProl, compartment_compartmentOne, global_par_doseBL, global_par_gamma2, global_par_rhoTA, x(8));

% Reaction: id = R_12, name = R_012
	reaction_R_12=compartment_Psoriatic*Function_for_R_12(global_par_AId, global_par_apopFBL, compartment_compartmentOne, global_par_k2s, global_par_rhoTA, x(8));

% Reaction: id = R_13, name = R_013
	reaction_R_13=compartment_Psoriatic*Function_for_R_13(compartment_compartmentOne, global_par_km1, x(8));

% Reaction: id = R_14, name = R_014
	reaction_R_14=compartment_Psoriatic*Function_for_R_14(global_par_aProl, global_par_bProl, compartment_compartmentOne, global_par_doseBL, global_par_gamma1h, global_par_rhoSC, x(7));

% Reaction: id = R_15, name = R_015
	reaction_R_15=Function_for_R_15(global_par_Pscmax, global_par_aProl, global_par_bProl, compartment_compartmentOne, global_par_doseBL, global_par_gamma1h, global_par_lambda, global_par_rhoSC, x(6), x(7));

% Reaction: id = R_16, name = R_016
	reaction_R_16=compartment_Psoriatic*Function_for_R_16(global_par_AId, global_par_Ka, global_par_Kp, global_par_Pscmax, global_par_aProl, global_par_apopFBL, global_par_bProl, compartment_compartmentOne, global_par_doseBL, global_par_gamma1h, global_par_k1sh, global_par_lambda, global_par_rhoSC, x(7));

% Reaction: id = R_17, name = R_017
	reaction_R_17=compartment_compartmentOne*Function_for_R_17(compartment_compartmentOne, global_par_k5, x(5));

% Reaction: id = R_18, name = R_018
	reaction_R_18=compartment_compartmentOne*Function_for_R_18(global_par_alpha, global_par_apopFBL, compartment_compartmentOne, x(6));

% Reaction: id = R_19, name = R_019
	reaction_R_19=compartment_compartmentOne*Function_for_R_19(compartment_compartmentOne, global_par_k4, x(4));

% Reaction: id = R_20, name = R_020
	reaction_R_20=compartment_compartmentOne*Function_for_R_20(global_par_AIh, global_par_apopFBL, compartment_compartmentOne, global_par_k5, x(5));

% Reaction: id = R_21, name = R_021
	reaction_R_21=compartment_compartmentOne*Function_for_R_21(compartment_compartmentOne, global_par_k3, x(3));

% Reaction: id = R_22, name = R_022
	reaction_R_22=compartment_compartmentOne*Function_for_R_22(global_par_AIh, global_par_apopFBL, compartment_compartmentOne, global_par_k4, x(4));

% Reaction: id = R_23, name = R_023
	reaction_R_23=compartment_compartmentOne*Function_for_R_23(compartment_compartmentOne, global_par_k2s, x(2));

% Reaction: id = R_24, name = R_024
	reaction_R_24=compartment_compartmentOne*Function_for_R_24(compartment_compartmentOne, global_par_k2a, x(2));

% Reaction: id = R_25, name = R_025
	reaction_R_25=compartment_compartmentOne*Function_for_R_25(global_par_AIh, global_par_apopFBL, compartment_compartmentOne, global_par_k3, x(3));

% Reaction: id = R_26, name = R_026
	reaction_R_26=compartment_compartmentOne*Function_for_R_26(compartment_compartmentOne, global_par_km2, x(3));

% Reaction: id = R_27, name = R_027
	reaction_R_27=Function_for_R_27(global_par_Ptah, compartment_compartmentOne, global_par_k1sh, global_par_n, global_par_omega, x(1), x(2), x(8));

% Reaction: id = R_28, name = R_028
	reaction_R_28=Function_for_R_28(global_par_Ptah, compartment_compartmentOne, global_par_k1ah, global_par_n, global_par_omega, x(1), x(2), x(8));

% Reaction: id = R_29, name = R_029
	reaction_R_29=compartment_compartmentOne*Function_for_R_29(global_par_aProl, global_par_bProl, compartment_compartmentOne, global_par_doseBL, global_par_gamma2, x(2));

% Reaction: id = R_30, name = R_030
	reaction_R_30=compartment_compartmentOne*Function_for_R_30(global_par_AIh, global_par_apopFBL, compartment_compartmentOne, global_par_k2s, x(2));

% Reaction: id = R_31, name = R_031
	reaction_R_31=compartment_compartmentOne*Function_for_R_31(compartment_compartmentOne, global_par_km1, x(2));

% Reaction: id = R_32, name = R_032
	reaction_R_32=Function_for_R_32(global_par_Ptah, global_par_aProl, global_par_bProl, compartment_compartmentOne, global_par_doseBL, global_par_gamma1h, global_par_n, global_par_omega, x(1), x(2), x(8));

% Reaction: id = R_33, name = R_033
	reaction_R_33=Function_for_R_33(global_par_Pscmax, global_par_Ptah, global_par_aProl, global_par_bProl, compartment_compartmentOne, global_par_doseBL, global_par_gamma1h, global_par_k1sh, global_par_n, global_par_omega, x(1), x(2), x(8));

% Reaction: id = R_34, name = R_034
	reaction_R_34=Function_for_R_34(global_par_Pscmax, global_par_Ptah, global_par_aProl, global_par_bProl, compartment_compartmentOne, global_par_doseBL, global_par_gamma1h, global_par_lambda, global_par_n, global_par_omega, x(1), x(2), x(7), x(8));

% Reaction: id = R_35, name = R_035
	reaction_R_35=compartment_compartmentOne*Function_for_R_35(global_par_AIh, global_par_apopFBL, compartment_compartmentOne, global_par_k1sh, x(1));

%Event: id=Treatment_Break_after_28_days
	event_Treatment_Break_after_28_days=((time > 28) && (time < 84)) && ((time-floor(time/(7/3))*7/3) > global_par_Treatment_Duration);

	if(event_Treatment_Break_after_28_days) 
		global_par_doseBL=0*90*global_par_skinType;
	end

%Event: id=Treatment_Start_after_28_days
	event_Treatment_Start_after_28_days=((time > 28) && (time < 84)) && ((time-floor(time/(7/3))*7/3) < global_par_Treatment_Duration);

	if(event_Treatment_Start_after_28_days) 
		global_par_doseBL=90*global_par_skinType;
	end

%Event: id=Treatment_Stopped_on_Day_84
	event_Treatment_Stopped_on_Day_84=time > 84;

	if(event_Treatment_Stopped_on_Day_84) 
		global_par_doseBL=0;
	end

	xdot=zeros(12,1);
	
% Species:   id = xFinal_1, name = Stem Cells, affected by kineticLaw
	xdot(1) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_27) + ( 1.0 * reaction_R_27) + (-1.0 * reaction_R_28) + ( 1.0 * reaction_R_28) + ( 1.0 * reaction_R_31) + (-1.0 * reaction_R_32) + ( 2.0 * reaction_R_32) + (-1.0 * reaction_R_33) + (-1.0 * reaction_R_34) + (-1.0 * reaction_R_35));
	
% Species:   id = xFinal_2, name = Transit Amplifying Cells, affected by kineticLaw
	xdot(2) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_23) + (-1.0 * reaction_R_24) + ( 1.0 * reaction_R_24) + ( 1.0 * reaction_R_26) + (-1.0 * reaction_R_27) + ( 3.0 * reaction_R_27) + (-1.0 * reaction_R_28) + ( 2.0 * reaction_R_28) + (-1.0 * reaction_R_29) + ( 2.0 * reaction_R_29) + (-1.0 * reaction_R_30) + (-1.0 * reaction_R_31) + (-1.0 * reaction_R_32) + ( 1.0 * reaction_R_32) + (-1.0 * reaction_R_33) + ( 1.0 * reaction_R_33) + (-1.0 * reaction_R_34) + ( 1.0 * reaction_R_34));
	
% Species:   id = xFinal_3, name = Growth Arrested Cells, affected by kineticLaw
	xdot(3) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_21) + ( 2.0 * reaction_R_23) + ( 1.0 * reaction_R_24) + (-1.0 * reaction_R_25) + (-1.0 * reaction_R_26));
	
% Species:   id = xFinal_4, name = Spinous cells, affected by kineticLaw
	xdot(4) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_19) + ( 1.0 * reaction_R_21) + (-1.0 * reaction_R_22));
	
% Species:   id = xFinal_5, name = Granular Cells, affected by kineticLaw
	xdot(5) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_17) + ( 1.0 * reaction_R_19) + (-1.0 * reaction_R_20));
	
% Species:   id = xFinal_6, name = Corneocytes, affected by kineticLaw
	xdot(6) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_15) + ( 1.0 * reaction_R_15) + ( 1.0 * reaction_R_17) + (-1.0 * reaction_R_18));
	
% Species:   id = xFinal_7, name = Stem Cells, affected by kineticLaw
	xdot(7) = (1/(compartment_Psoriatic))*((-1.0 * reaction_R_9) + (-1.0 * reaction_R_10) + ( 1.0 * reaction_R_10) + ( 1.0 * reaction_R_13) + (-1.0 * reaction_R_14) + ( 2.0 * reaction_R_14) + (-1.0 * reaction_R_15) + (-1.0 * reaction_R_16) + (-1.0 * reaction_R_34) + ( 1.0 * reaction_R_34));
	
% Species:   id = xFinal_8, name = Transit Amplifying Cells, affected by kineticLaw
	xdot(8) = (1/(compartment_Psoriatic))*((-1.0 * reaction_R_5) + (-1.0 * reaction_R_6) + ( 1.0 * reaction_R_6) + ( 1.0 * reaction_R_8) + ( 2.0 * reaction_R_9) + ( 1.0 * reaction_R_10) + (-1.0 * reaction_R_11) + ( 2.0 * reaction_R_11) + (-1.0 * reaction_R_12) + (-1.0 * reaction_R_13) + (-1.0 * reaction_R_27) + ( 1.0 * reaction_R_27) + (-1.0 * reaction_R_28) + ( 1.0 * reaction_R_28) + (-1.0 * reaction_R_32) + ( 1.0 * reaction_R_32) + (-1.0 * reaction_R_33) + ( 1.0 * reaction_R_33) + (-1.0 * reaction_R_34) + ( 1.0 * reaction_R_34));
	
% Species:   id = xFinal_9, name = Growth Arrested Cells, affected by kineticLaw
	xdot(9) = (1/(compartment_Psoriatic))*((-1.0 * reaction_R_3) + ( 2.0 * reaction_R_5) + ( 1.0 * reaction_R_6) + (-1.0 * reaction_R_7) + (-1.0 * reaction_R_8));
	
% Species:   id = xFinal_10, name = Spinous cells, affected by kineticLaw
	xdot(10) = (1/(compartment_Psoriatic))*((-1.0 * reaction_R_1) + ( 1.0 * reaction_R_3) + (-1.0 * reaction_R_4));
	
% Species:   id = xFinal_11, name = Granular Cells
% Warning species is not changed by either rules or reactions
	xdot(11) = ;
	
% Species:   id = xFinal_12, name = Corneocytes, affected by kineticLaw
	xdot(12) = (1/(compartment_Psoriatic))*(( 1.0 * reaction_R_1) + (-1.0 * reaction_R_2));
end

function z=Function_for_R_7(AId,apopFBL,compartmentOne,k3,rhoTr,xFinal_9), z=((AId*k3*xFinal_9*rhoTr/(1-AId)+apopFBL*xFinal_9)/compartmentOne);end

function z=Function_for_R_6(compartmentOne,k2a,rhoTA,xFinal_8), z=(k2a*rhoTA*xFinal_8/compartmentOne);end

function z=Function_for_R_10(compartmentOne,k1ah,rhoSC,xFinal_7), z=(k1ah*rhoSC*xFinal_7/compartmentOne);end

function z=Function_for_R_3(compartmentOne,k3,rhoTr,xFinal_9), z=(k3*rhoTr*xFinal_9/compartmentOne);end

function z=Function_for_R_1(compartmentOne,k4,rhoTr,xFinal_10), z=(k4*rhoTr*xFinal_10/compartmentOne);end

function z=Function_for_R_2(alpha,apopFBL,compartmentOne,rhoDe,xFinal_12), z=((alpha*rhoDe*xFinal_12+apopFBL*xFinal_12)/compartmentOne);end

function z=Function_for_R_5(compartmentOne,k2s,rhoTA,xFinal_8), z=(k2s*rhoTA*xFinal_8/compartmentOne);end

function z=Function_for_R_4(AId,apopFBL,compartmentOne,k4,rhoTr,xFinal_10), z=((AId*k4*xFinal_10*rhoTr/(1-AId)+apopFBL*xFinal_10)/compartmentOne);end

function z=Function_for_R_12(AId,apopFBL,compartmentOne,k2s,rhoTA,xFinal_8), z=((AId*k2s*xFinal_8*rhoTA/(1-AId)+apopFBL*xFinal_8)/compartmentOne);end

function z=Function_for_R_14(aProl,bProl,compartmentOne,doseBL,gamma1h,rhoSC,xFinal_7), z=(aProl*gamma1h*rhoSC*exp(bProl*doseBL)*xFinal_7/compartmentOne);end

function z=Function_for_R_13(compartmentOne,km1,xFinal_8), z=(km1*xFinal_8/compartmentOne);end

function z=Function_for_R_19(compartmentOne,k4,xFinal_4), z=(k4*xFinal_4/compartmentOne);end

function z=Function_for_R_8(compartmentOne,km2,xFinal_9), z=(km2*xFinal_9/compartmentOne);end

function z=Function_for_R_9(compartmentOne,k1sh,rhoSC,xFinal_7), z=(k1sh*rhoSC*xFinal_7/compartmentOne);end

function z=Function_for_R_11(aProl,bProl,compartmentOne,doseBL,gamma2,rhoTA,xFinal_8), z=(aProl*aProl*gamma2*rhoTA*exp(bProl*doseBL)*exp(bProl*doseBL)*xFinal_8/compartmentOne);end

function z=Function_for_R_17(compartmentOne,k5,xFinal_5), z=(k5*xFinal_5/compartmentOne);end

function z=Function_for_R_22(AIh,apopFBL,compartmentOne,k4,xFinal_4), z=((k4*xFinal_4*AIh/(1-AIh)+apopFBL*xFinal_4)/compartmentOne);end

function z=Function_for_R_15(Pscmax,aProl,bProl,compartmentOne,doseBL,gamma1h,lambda,rhoSC,xFinal_6,xFinal_7), z=(aProl*gamma1h*rhoSC*exp(bProl*doseBL)*xFinal_7*xFinal_6/(lambda*Pscmax)/compartmentOne);end

function z=Function_for_R_16(AId,Ka,Kp,Pscmax,aProl,apopFBL,bProl,compartmentOne,doseBL,gamma1h,k1sh,lambda,rhoSC,xFinal_7), z=((aProl*gamma1h*rhoSC*exp(bProl*doseBL)*xFinal_7*xFinal_7/(lambda*Pscmax)+AId*k1sh*xFinal_7*rhoSC/(1-AId)+apopFBL*xFinal_7+Kp*1/(Ka^2+xFinal_7^2)*xFinal_7^2)/compartmentOne);end

function z=Function_for_R_18(alpha,apopFBL,compartmentOne,xFinal_6), z=((alpha*xFinal_6+apopFBL*xFinal_6)/compartmentOne);end

function z=Function_for_R_26(compartmentOne,km2,xFinal_3), z=(km2*xFinal_3/compartmentOne);end

function z=Function_for_R_27(Ptah,compartmentOne,k1sh,n,omega,xFinal_1,xFinal_2,xFinal_8), z=(omega*xFinal_1*k1sh/(1+(omega-1)*((xFinal_2+xFinal_8)/Ptah)^n)/compartmentOne);end

function z=Function_for_R_20(AIh,apopFBL,compartmentOne,k5,xFinal_5), z=((k5*xFinal_5*AIh/(1-AIh)+apopFBL*xFinal_5)/compartmentOne);end

function z=Function_for_R_21(compartmentOne,k3,xFinal_3), z=(k3*xFinal_3/compartmentOne);end

function z=Function_for_R_23(compartmentOne,k2s,xFinal_2), z=(k2s*xFinal_2/compartmentOne);end

function z=Function_for_R_24(compartmentOne,k2a,xFinal_2), z=(k2a*xFinal_2/compartmentOne);end

function z=Function_for_R_25(AIh,apopFBL,compartmentOne,k3,xFinal_3), z=((k3*xFinal_3*AIh/(1-AIh)+apopFBL*xFinal_3)/compartmentOne);end

function z=Function_for_R_32(Ptah,aProl,bProl,compartmentOne,doseBL,gamma1h,n,omega,xFinal_1,xFinal_2,xFinal_8), z=(aProl*gamma1h*exp(bProl*doseBL)*xFinal_1*omega/(1+(omega-1)*((xFinal_2+xFinal_8)/Ptah)^n)/compartmentOne);end

function z=Function_for_R_35(AIh,apopFBL,compartmentOne,k1sh,xFinal_1), z=((k1sh*xFinal_1*AIh/(1-AIh)+apopFBL*xFinal_1)/compartmentOne);end

function z=Function_for_R_28(Ptah,compartmentOne,k1ah,n,omega,xFinal_1,xFinal_2,xFinal_8), z=(omega*xFinal_1*k1ah/(1+(omega-1)*((xFinal_2+xFinal_8)/Ptah)^n)/compartmentOne);end

function z=Function_for_R_29(aProl,bProl,compartmentOne,doseBL,gamma2,xFinal_2), z=(aProl*gamma2*exp(bProl*doseBL)*xFinal_2/compartmentOne);end

function z=Function_for_R_30(AIh,apopFBL,compartmentOne,k2s,xFinal_2), z=((k2s*xFinal_2*AIh/(1-AIh)+apopFBL*xFinal_2)/compartmentOne);end

function z=Function_for_R_31(compartmentOne,km1,xFinal_2), z=(km1*xFinal_2/compartmentOne);end

function z=Function_for_R_33(Pscmax,Ptah,aProl,bProl,compartmentOne,doseBL,gamma1h,k1sh,n,omega,xFinal_1,xFinal_2,xFinal_8), z=((gamma1h*aProl*exp(bProl*doseBL)*xFinal_1*omega*xFinal_1/(1+(omega-1)*((xFinal_2+xFinal_8)/Ptah)^n)/Pscmax+k1sh*xFinal_1*omega/(1+(omega-1)*((xFinal_2+xFinal_8)/Ptah)^n))/compartmentOne);end

function z=Function_for_R_34(Pscmax,Ptah,aProl,bProl,compartmentOne,doseBL,gamma1h,lambda,n,omega,xFinal_1,xFinal_2,xFinal_7,xFinal_8), z=(gamma1h*aProl*exp(bProl*doseBL)*xFinal_1*omega*xFinal_7/(1+(omega-1)*((xFinal_2+xFinal_8)/Ptah)^n)/lambda/Pscmax/compartmentOne);end

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


