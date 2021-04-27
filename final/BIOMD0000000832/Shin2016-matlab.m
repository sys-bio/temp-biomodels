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
% Model name = Shin2016 - Unveiling Hidden Dynamics of Hippo Signalling
%
% isDescribedBy http://identifiers.org/pubmed/27527217
% is http://identifiers.org/biomodels.db/MODEL1909250001
% is http://identifiers.org/biomodels.db/BIOMD0000000832
%


function main()
%Initial conditions vector
	x0=zeros(20,1);
	x0(1) = 200.0;
	x0(2) = 1.77;
	x0(3) = 0.2;
	x0(4) = 350.0;
	x0(5) = 185.6;
	x0(6) = 113.9;
	x0(7) = 0.23;
	x0(8) = 0.0;
	x0(9) = 200.0;
	x0(10) = 192.2;
	x0(11) = 7.8;
	x0(12) = 750.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 300.0;
	x0(17) = 0.0;
	x0(18) = 3000.0;
	x0(19) = 0.0;
	x0(20) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  kc_121, name = kc_121
	global_par_kc_121=0.2061;
% Parameter:   id =  V_121, name = V_121
	global_par_V_121=1027.0;
% Parameter:   id =  kc_11, name = kc_11
	global_par_kc_11=0.001149;
% Parameter:   id =  kc_12, name = kc_12
	global_par_kc_12=0.717;
% Parameter:   id =  V_11, name = V_11
	global_par_V_11=0.08687;
% Parameter:   id =  kc_92, name = kc_92
	global_par_kc_92=0.9203;
% Parameter:   id =  V_91, name = V_91
	global_par_V_91=2.071;
% Parameter:   id =  V_102, name = V_102
	global_par_V_102=317.3;
% Parameter:   id =  V_101, name = V_101
	global_par_V_101=994.8;
% Parameter:   id =  kc_131, name = kc_131
	global_par_kc_131=5.342;
% Parameter:   id =  V_131, name = V_131
	global_par_V_131=995.3;
% Parameter:   id =  Km_132, name = Km_132
	global_par_Km_132=151.0;
% Parameter:   id =  Km_23, name = Km_23
	global_par_Km_23=8.313E-4;
% Parameter:   id =  Km_22, name = Km_22
	global_par_Km_22=816.2;
% Parameter:   id =  kd_71, name = kd_71
	global_par_kd_71=4.886E-4;
% Parameter:   id =  kd_31, name = kd_31
	global_par_kd_31=0.6117;
% Parameter:   id =  Km_21, name = Km_21
	global_par_Km_21=427.3;
% Parameter:   id =  kd_21, name = kd_21
	global_par_kd_21=0.113;
% Parameter:   id =  kd_41, name = kd_41
	global_par_kd_41=1.226;
% Parameter:   id =  Km_51, name = Km_51
	global_par_Km_51=6.708;
% Parameter:   id =  Km_82, name = Km_82
	global_par_Km_82=3961.0;
% Parameter:   id =  Km_83, name = Km_83
	global_par_Km_83=22.26;
% Parameter:   id =  Km_81, name = Km_81
	global_par_Km_81=0.08503;
% Parameter:   id =  Km_112, name = Km_112
	global_par_Km_112=207.1;
% Parameter:   id =  Km_111, name = Km_111
	global_par_Km_111=0.07678;
% Parameter:   id =  Km_121, name = Km_121
	global_par_Km_121=120.5;
% Parameter:   id =  Km_122, name = Km_122
	global_par_Km_122=297.2;
% Parameter:   id =  Km_11, name = Km_11
	global_par_Km_11=51.21;
% Parameter:   id =  Km_13, name = Km_13
	global_par_Km_13=0.744;
% Parameter:   id =  Km_12, name = Km_12
	global_par_Km_12=0.01497;
% Parameter:   id =  Km_93, name = Km_93
	global_par_Km_93=0.9015;
% Parameter:   id =  Km_91, name = Km_91
	global_par_Km_91=0.8821;
% Parameter:   id =  Km_102, name = Km_102
	global_par_Km_102=3.197;
% Parameter:   id =  Km_101, name = Km_101
	global_par_Km_101=457.5;
% Parameter:   id =  Km_131, name = Km_131
	global_par_Km_131=0.03676;
% Parameter:   id =  Km_92, name = Km_92
	global_par_Km_92=10.68;
% Parameter:   id =  kc_21, name = kc_21
	global_par_kc_21=6684.0;
% Parameter:   id =  V_22, name = V_22
	global_par_V_22=7511.0;
% Parameter:   id =  ka_71, name = ka_71
	global_par_ka_71=28.12;
% Parameter:   id =  ka_21, name = ka_21
	global_par_ka_21=4472.0;
% Parameter:   id =  V_21, name = V_21
	global_par_V_21=1414.0;
% Parameter:   id =  ka_22, name = ka_22
	global_par_ka_22=0.0684;
% Parameter:   id =  ka_41, name = ka_41
	global_par_ka_41=0.4237;
% Parameter:   id =  V_51, name = V_51
	global_par_V_51=5.688E-4;
% Parameter:   id =  kc_81, name = kc_81
	global_par_kc_81=6189.0;
% Parameter:   id =  kc_82, name = kc_82
	global_par_kc_82=2.93E-4;
% Parameter:   id =  V_81, name = V_81
	global_par_V_81=2261.0;
% Parameter:   id =  kc_112, name = kc_112
	global_par_kc_112=0.002742;
% Parameter:   id =  V_111, name = V_111
	global_par_V_111=254.7;
% Parameter:   id =  kc_91, name = kc_91
	global_par_kc_91=0.1177;
% Parameter:   id =  aEGFR, name = aEGFR
	global_par_aEGFR=500.0;
% Parameter:   id =  pAkt_max, name = pAkt_max
	global_par_pAkt_max=200.0;
% Parameter:   id =  aMST2_max, name = aMST2_max
	global_par_aMST2_max=94.8;
% Parameter:   id =  ppERK_max, name = ppERK_max
	global_par_ppERK_max=226.84;
% Parameter:   id =  aMST2_norm, name = aMST2_norm
% Parameter:   id =  pAkt_norm, name = pAkt_norm
% Parameter:   id =  ppERK_norm, name = ppERK_norm
% Parameter:   id =  Metabolite_4, name = Initial for aMST2
	global_par_Metabolite_4=185.6;
% Parameter:   id =  Metabolite_5, name = Initial for aMST2uRASSF1A
	global_par_Metabolite_5=113.9;
% Parameter:   id =  ModelValue_51, name = Initial for pAkt_max
	global_par_ModelValue_51=200.0;
% Parameter:   id =  ModelValue_53, name = Initial for ppERK_max
	global_par_ModelValue_53=226.84;
% assignmentRule: variable = aMST2_norm
	global_par_aMST2_norm=(x(5)+x(6))/(global_par_Metabolite_4+global_par_Metabolite_5);
% assignmentRule: variable = ppERK_norm
	global_par_ppERK_norm=x(19)/global_par_ModelValue_53;
% assignmentRule: variable = pAkt_norm
	global_par_pAkt_norm=x(20)/global_par_ModelValue_51;

% Reaction: id = v1, name = v1
	reaction_v1=compartment_compartment*Function_for_v1(global_par_kc_11, global_par_aEGFR, x(1), global_par_Km_11);

% Reaction: id = v2, name = v2
	reaction_v2=compartment_compartment*Function_for_v2(global_par_V_11, x(20), global_par_Km_12);

% Reaction: id = v3, name = v3
	reaction_v3=compartment_compartment*Function_for_v3(global_par_kc_12, x(1), x(17), global_par_Km_13);

% Reaction: id = v4, name = v4
	reaction_v4=compartment_compartment*Function_for_v4(global_par_V_21, x(5), global_par_Km_21);

% Reaction: id = v5, name = v5
	reaction_v5=compartment_compartment*Function_for_v5(global_par_V_22, x(8), global_par_Km_22);

% Reaction: id = v6, name = v6
	reaction_v6=compartment_compartment*Function_for_v6(global_par_ka_21, x(3));

% Reaction: id = v7, name = v7
	reaction_v7=compartment_compartment*Function_for_v7(global_par_ka_22, x(3), x(2), global_par_kd_21, x(7));

% Reaction: id = v8, name = v8
	reaction_v8=compartment_compartment*Function_for_v8(global_par_kc_21, x(3), x(20), global_par_Km_23);

% Reaction: id = v9, name = v9
	reaction_v9=compartment_compartment*Function_for_v9(global_par_kd_31, x(4));

% Reaction: id = v10, name = v10
	reaction_v10=compartment_compartment*Function_for_v10(global_par_ka_41, x(5), x(2), global_par_kd_41, x(6));

% Reaction: id = v11, name = v11
	reaction_v11=compartment_compartment*Function_for_v11(global_par_V_51, x(7), global_par_Km_51);

% Reaction: id = v12, name = v12
	reaction_v12=compartment_compartment*Function_for_v12(global_par_ka_71, x(8), x(12), global_par_kd_71, x(9));

% Reaction: id = v13, name = v13
	reaction_v13=compartment_compartment*Function_for_v13(global_par_V_81, x(10), global_par_Km_81);

% Reaction: id = v14, name = v14
	reaction_v14=compartment_compartment*Function_for_v14(global_par_kc_81, x(5), x(11), global_par_Km_82);

% Reaction: id = v15, name = v15
	reaction_v15=compartment_compartment*Function_for_v15(global_par_kc_82, x(6), x(11), global_par_Km_83);

% Reaction: id = v16, name = v16
	reaction_v16=compartment_compartment*Function_for_v16(global_par_V_91, x(13), global_par_Km_91);

% Reaction: id = v17, name = v17
	reaction_v17=compartment_compartment*Function_for_v17(global_par_kc_91, x(10), x(13), global_par_Km_92);

% Reaction: id = v18, name = v18
	reaction_v18=compartment_compartment*Function_for_v18(global_par_kc_92, x(12), x(17), global_par_Km_93);

% Reaction: id = v19, name = v19
	reaction_v19=compartment_compartment*Function_for_v19(global_par_V_101, x(14), global_par_Km_101);

% Reaction: id = v20, name = v20
	reaction_v20=compartment_compartment*Function_for_v20(global_par_V_102, x(13), global_par_Km_102);

% Reaction: id = v21, name = v21
	reaction_v21=compartment_compartment*Function_for_v21(global_par_V_111, x(15), global_par_Km_111);

% Reaction: id = v22, name = v22
	reaction_v22=compartment_compartment*Function_for_v22(global_par_kc_112, x(14), x(19), global_par_Km_112);

% Reaction: id = v23, name = v23
	reaction_v23=compartment_compartment*Function_for_v23(global_par_kc_121, global_par_aEGFR, x(16), global_par_Km_121);

% Reaction: id = v24, name = v24
	reaction_v24=compartment_compartment*Function_for_v24(global_par_V_121, x(17), global_par_Km_122);

% Reaction: id = v25, name = v25
	reaction_v25=compartment_compartment*Function_for_v25(global_par_kc_131, x(14), x(18), global_par_Km_131);

% Reaction: id = v26, name = v26
	reaction_v26=compartment_compartment*Function_for_v26(global_par_V_131, x(19), global_par_Km_132);

	xdot=zeros(20,1);
	
% Species:   id = Akt, name = Akt, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_v1) + ( 1.0 * reaction_v2) + (-1.0 * reaction_v3));
	
% Species:   id = RASSF1A, name = RASSF1A, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_v7) + (-1.0 * reaction_v10));
	
% Species:   id = MST2, name = MST2, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_v4) + ( 1.0 * reaction_v5) + (-2.0 * reaction_v6) + (-1.0 * reaction_v7) + (-1.0 * reaction_v8));
	
% Species:   id = dMST2, name = dMST2, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_v6) + (-1.0 * reaction_v9));
	
% Species:   id = aMST2, name = aMST2, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*((-1.0 * reaction_v4) + ( 2.0 * reaction_v9) + (-1.0 * reaction_v10));
	
% Species:   id = aMST2uRASSF1A, name = aMST2uRASSF1A, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_v10) + ( 1.0 * reaction_v11));
	
% Species:   id = MST2uRASSF1A, name = MST2uRASSF1A, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_v7) + (-1.0 * reaction_v11));
	
% Species:   id = iMST2, name = iMST2, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*((-1.0 * reaction_v5) + ( 1.0 * reaction_v8) + (-1.0 * reaction_v12));
	
% Species:   id = iRaf1uiMST2, name = iRaf1uiMST2, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_v12));
	
% Species:   id = aLATS1, name = aLATS1, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*((-1.0 * reaction_v13) + ( 1.0 * reaction_v14) + ( 1.0 * reaction_v15));
	
% Species:   id = LATS1, name = LATS1, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_v13) + (-1.0 * reaction_v14) + (-1.0 * reaction_v15));
	
% Species:   id = iRaf1, name = iRaf1, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*((-1.0 * reaction_v12) + ( 1.0 * reaction_v16) + ( 1.0 * reaction_v17) + (-1.0 * reaction_v18));
	
% Species:   id = Raf1, name = Raf1, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*((-1.0 * reaction_v16) + (-1.0 * reaction_v17) + ( 1.0 * reaction_v18) + ( 1.0 * reaction_v19) + (-1.0 * reaction_v20));
	
% Species:   id = aRaf1, name = aRaf1, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*((-1.0 * reaction_v19) + ( 1.0 * reaction_v20) + ( 1.0 * reaction_v21) + (-1.0 * reaction_v22));
	
% Species:   id = ipRaf1, name = ipRaf1, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*((-1.0 * reaction_v21) + ( 1.0 * reaction_v22));
	
% Species:   id = RasGDP, name = RasGDP, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*((-1.0 * reaction_v23) + ( 1.0 * reaction_v24));
	
% Species:   id = RasGTP, name = RasGTP, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*(( 1.0 * reaction_v23) + (-1.0 * reaction_v24));
	
% Species:   id = ERK, name = ERK, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment))*((-1.0 * reaction_v25) + ( 1.0 * reaction_v26));
	
% Species:   id = ppERK, name = ppERK, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment))*(( 1.0 * reaction_v25) + (-1.0 * reaction_v26));
	
% Species:   id = pAkt, name = pAkt, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2) + ( 1.0 * reaction_v3));
end

function z=Function_for_v25(kc131,aRaf1,ERK,Km131), z=(kc131*aRaf1*ERK/(Km131+ERK));end

function z=Function_for_v2(V11,pAkt,Km12), z=(V11*pAkt/(Km12+pAkt));end

function z=Function_for_v26(V131,ppERK,Km132), z=(V131*ppERK/(Km132+ppERK));end

function z=Function_for_v18(kc92,iRaf1,RasGTP,Km93), z=(kc92*iRaf1*RasGTP/(Km93+iRaf1));end

function z=Function_for_v1(kc11,aEGFR,Akt,Km11), z=(kc11*aEGFR*Akt/(Km11+Akt));end

function z=Function_for_v24(V121,RasGTP,Km122), z=(V121*RasGTP/(Km122+RasGTP));end

function z=Function_for_v19(V101,aRaf1,Km101), z=(V101*aRaf1/(Km101+aRaf1));end

function z=Function_for_v11(V51,MST2uRASSF1A,Km51), z=(V51*MST2uRASSF1A/(Km51+MST2uRASSF1A));end

function z=Function_for_v20(V102,Raf1,Km102), z=(V102*Raf1/(Km102+Raf1));end

function z=Function_for_v16(V91,Raf1,Km91), z=(V91*Raf1/(Km91+Raf1));end

function z=Function_for_v3(kc12,Akt,RasGTP,Km13), z=(kc12*Akt*RasGTP/(Km13+Akt));end

function z=Function_for_v22(kc112,aRaf1,ppERK,Km112), z=(kc112*aRaf1*ppERK/(Km112+aRaf1));end

function z=Function_for_v23(kc121,aEGFR,RasGDP,Km121), z=(kc121*aEGFR*RasGDP/(Km121+RasGDP));end

function z=Function_for_v7(ka22,MST2,RASSF1A,kd21,MST2uRASSF1A), z=(ka22*MST2*RASSF1A-kd21*MST2uRASSF1A);end

function z=Function_for_v15(kc82,aMST2uRASSF1A,LATS1,Km83), z=(kc82*aMST2uRASSF1A*LATS1/(Km83+LATS1));end

function z=Function_for_v8(kc21,MST2,pAkt,Km23), z=(kc21*MST2*pAkt/(Km23+MST2));end

function z=Function_for_v4(V21,aMST2,Km21), z=(V21*aMST2/(Km21+aMST2));end

function z=Function_for_v10(ka41,aMST2,RASSF1A,kd41,aMST2uRASSF1A), z=(ka41*aMST2*RASSF1A-kd41*aMST2uRASSF1A);end

function z=Function_for_v12(ka71,iMST2,iRaf1,kd71,iRaf1uiMST2), z=(ka71*iMST2*iRaf1-kd71*iRaf1uiMST2);end

function z=Function_for_v5(V22,iMST2,Km22), z=(V22*iMST2/(Km22+iMST2));end

function z=Function_for_v6(ka21,MST2), z=(ka21*MST2^2);end

function z=Function_for_v14(kc81,aMST2,LATS1,Km82), z=(kc81*aMST2*LATS1/(Km82+LATS1));end

function z=Function_for_v21(V111,ipRaf1,Km111), z=(V111*ipRaf1/(Km111+ipRaf1));end

function z=Function_for_v13(V81,aLATS1,Km81), z=(V81*aLATS1/(Km81+aLATS1));end

function z=Function_for_v17(kc91,aLATS1,Raf1,Km92), z=(kc91*aLATS1*Raf1/(Km92+Raf1));end

function z=Function_for_v9(kd31,dMST2), z=(kd31*dMST2);end

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


