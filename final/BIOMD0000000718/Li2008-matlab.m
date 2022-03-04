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
% Model name = Li2008 - Caulobacter Cell Cycle
%
% is http://identifiers.org/biomodels.db/MODEL1811070001
% is http://identifiers.org/biomodels.db/BIOMD0000000718
%


function main()
%Initial conditions vector
	x0=zeros(16,1);
	x0(1) = 0.11;
	x0(2) = 0.78;
	x0(3) = 0.6;
	x0(4) = 0.29;
	x0(5) = 1.0;
	x0(6) = 0.66;
	x0(7) = 0.34;
	x0(8) = 0.11;
	x0(9) = 0.5;
	x0(10) = 1.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.05;
	x0(16) = 1.05;


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

% Compartment: id = Caulobacter, name = Caulobacter, constant
	compartment_Caulobacter=1.0;
% Parameter:   id =  ks_CtrA_P1, name = ks,CtrA-P1
	global_par_ks_CtrA_P1=0.0083;
% Parameter:   id =  ks_CtrA_P2, name = ks,CtrA-P2
	global_par_ks_CtrA_P2=0.073;
% Parameter:   id =  kd_CtrA1, name = kd,CtrA1
	global_par_kd_CtrA1=0.002;
% Parameter:   id =  kd_CtrA2, name = kd,CtrA2
	global_par_kd_CtrA2=0.15;
% Parameter:   id =  ks_GcrA, name = ks,GcrA
	global_par_ks_GcrA=0.045;
% Parameter:   id =  kd_GcrA, name = kd,GcrA
	global_par_kd_GcrA=0.022;
% Parameter:   id =  ks_DnaA, name = ks,DnaA
	global_par_ks_DnaA=0.0165;
% Parameter:   id =  kd_DnaA, name = kd,DnaA
	global_par_kd_DnaA=0.007;
% Parameter:   id =  ks_Fts, name = ks,Fts
	global_par_ks_Fts=0.063;
% Parameter:   id =  kd_Fts, name = kd,Fts
	global_par_kd_Fts=0.035;
% Parameter:   id =  kzring_open, name = kzring,open
	global_par_kzring_open=0.8;
% Parameter:   id =  kzring_closed1, name = kzring,closed1
	global_par_kzring_closed1=1.0E-4;
% Parameter:   id =  kzring_closed2, name = kzring,closed2
	global_par_kzring_closed2=0.6;
% Parameter:   id =  ks_DivK, name = ks,DivK
	global_par_ks_DivK=0.0054;
% Parameter:   id =  kd_DivK, name = kd,DivK
	global_par_kd_DivK=0.002;
% Parameter:   id =  kd_Divk_P, name = kd,Divk_P
	global_par_kd_Divk_P=0.002;
% Parameter:   id =  ks_I, name = ks,I
	global_par_ks_I=0.08;
% Parameter:   id =  kd_I, name = kd,I
	global_par_kd_I=0.04;
% Parameter:   id =  ks_CcrM, name = ks,CcrM
	global_par_ks_CcrM=0.072;
% Parameter:   id =  kd_CcrM, name = kd,CcrM
	global_par_kd_CcrM=0.07;
% Parameter:   id =  km_cori, name = km,cori
	global_par_km_cori=0.4;
% Parameter:   id =  km_ctrA, name = km,ctrA
	global_par_km_ctrA=0.4;
% Parameter:   id =  km_ccrM, name = km,ccrM
	global_par_km_ccrM=0.4;
% Parameter:   id =  km_fts, name = km,fts
	global_par_km_fts=0.4;
% Parameter:   id =  ka_Ini, name = ka,Ini
	global_par_ka_Ini=0.01;
% Parameter:   id =  kelong, name = kelong
	global_par_kelong=0.006;
% Parameter:   id =  ktrans_DivK, name = ktrans,DivK
	global_par_ktrans_DivK=0.5;
% Parameter:   id =  ktrans_DivK_P, name = ktrans,DivK_P
	global_par_ktrans_DivK_P=0.0295;
% Parameter:   id =  Ji_CtrA_CtrA, name = Ji,CtrA-CtrA
	global_par_Ji_CtrA_CtrA=0.4;
% Parameter:   id =  JZring_Fts, name = JZring-Fts
	global_par_JZring_Fts=0.78;
% Parameter:   id =  Jm_fts, name = Jm,fts
	global_par_Jm_fts=0.95;
% Parameter:   id =  thetacori, name = thetacori
	global_par_thetacori=2.0E-4;
% Parameter:   id =  Ja_CtrA_CtrA, name = Ja,CtrA-CtrA
	global_par_Ja_CtrA_CtrA=0.45;
% Parameter:   id =  Ja_DnaA_CtrA, name = Ja,DnaA-CtrA
	global_par_Ja_DnaA_CtrA=0.3;
% Parameter:   id =  Jm_cori, name = Jm,cori
	global_par_Jm_cori=0.95;
% Parameter:   id =  thetaCtrA, name = thetaCtrA
	global_par_thetaCtrA=0.2;
% Parameter:   id =  Jd_CtrA_Divk_P, name = Jd,CtrA-Divk_P
	global_par_Jd_CtrA_Divk_P=0.55;
% Parameter:   id =  Ja_open, name = Ja,open
	global_par_Ja_open=0.01;
% Parameter:   id =  Jm_ctrA, name = Jm,ctrA
	global_par_Jm_ctrA=0.95;
% Parameter:   id =  thetaGcrA, name = thetaGcrA
	global_par_thetaGcrA=0.45;
% Parameter:   id =  Ji_GcrA_CtrA, name = Ji,GcrA-CtrA
	global_par_Ji_GcrA_CtrA=0.2;
% Parameter:   id =  Ja_closed, name = Ja,closed
	global_par_Ja_closed=0.1;
% Parameter:   id =  Jm_ccrM, name = Jm,ccrM
	global_par_Jm_ccrM=0.95;
% Parameter:   id =  thetaDnaA, name = thetaDnaA
	global_par_thetaDnaA=0.6;
% Parameter:   id =  Pelong, name = Pelong
	global_par_Pelong=0.05;
% Parameter:   id =  PccrM, name = PccrM
	global_par_PccrM=0.2;
% Parameter:   id =  PctrA, name = PctrA
	global_par_PctrA=0.375;
% Parameter:   id =  Pfts, name = Pfts
	global_par_Pfts=0.625;
% Parameter:   id =  Ji_DnaA_GcrA, name = Ji,DnaA-GcrA
	global_par_Ji_DnaA_GcrA=0.5;
% Parameter:   id =  Count, name = Count
	global_par_Count=2.0;

% Reaction: id = reaction, name = reaction
	reaction_reaction=compartment_Caulobacter*function_1(global_par_ks_CtrA_P2, x(1), global_par_Ja_CtrA_CtrA, x(11));

% Reaction: id = reaction_1, name = reaction_1
	reaction_reaction_1=compartment_Caulobacter*function_2(global_par_ks_CtrA_P1, global_par_Ji_CtrA_CtrA, x(1), x(11), x(2));

% Reaction: id = reaction_2, name = reaction_2
	reaction_reaction_2=compartment_Caulobacter*global_par_kd_CtrA1*x(1);

% Reaction: id = reaction_3, name = reaction_3
	reaction_reaction_3=compartment_Caulobacter*function_1(global_par_kd_CtrA2, x(7), global_par_Jd_CtrA_Divk_P, x(1));

% Reaction: id = reaction_4, name = reaction_4
	reaction_reaction_4=compartment_Caulobacter*function_4(global_par_ks_GcrA, global_par_Ji_GcrA_CtrA, x(1), x(3));

% Reaction: id = reaction_5, name = reaction_5
	reaction_reaction_5=compartment_Caulobacter*global_par_kd_GcrA*x(2);

% Reaction: id = reaction_6, name = reaction_6
	reaction_reaction_6=compartment_Caulobacter*function_5(global_par_ks_DnaA, global_par_Ji_DnaA_GcrA, x(2), x(1), global_par_Ja_DnaA_CtrA, x(10));

% Reaction: id = reaction_7, name = reaction_7
	reaction_reaction_7=compartment_Caulobacter*global_par_kd_DnaA*x(3);

% Reaction: id = reaction_8, name = reaction_8
	reaction_reaction_8=compartment_Caulobacter*function_6(global_par_ks_Fts, x(1), x(13));

% Reaction: id = reaction_9, name = reaction_9
	reaction_reaction_9=compartment_Caulobacter*global_par_kd_Fts*x(4);

% Reaction: id = reaction_10, name = reaction_10
	reaction_reaction_10=compartment_Caulobacter*function_7(global_par_kzring_open, x(5), global_par_Ja_open);

% Reaction: id = reaction_11, name = reaction_11
	reaction_reaction_11=compartment_Caulobacter*function_8(global_par_kzring_closed1, x(5), global_par_Ja_closed);

% Reaction: id = reaction_12, name = reaction_12
	reaction_reaction_12=compartment_Caulobacter*function_9(global_par_kzring_closed2, x(4), global_par_JZring_Fts, x(5), global_par_Ja_closed);

% Reaction: id = reaction_13, name = reaction_13
	reaction_reaction_13=compartment_Caulobacter*function_10(global_par_ks_DivK, x(1));

% Reaction: id = reaction_14, name = reaction_14
	reaction_reaction_14=compartment_Caulobacter*global_par_ktrans_DivK_P*x(7);

% Reaction: id = reaction_15, name = reaction_15
	reaction_reaction_15=compartment_Caulobacter*function_11(global_par_ktrans_DivK, x(6), x(5));

% Reaction: id = reaction_16, name = reaction_16
	reaction_reaction_16=compartment_Caulobacter*global_par_kd_DivK*x(6);

% Reaction: id = reaction_17, name = reaction_17
	reaction_reaction_17=compartment_Caulobacter*function_10(global_par_kd_Divk_P, x(6));

% Reaction: id = reaction_18, name = reaction_18
	reaction_reaction_18=compartment_Caulobacter*function_6(global_par_ks_I, x(1), x(12));

% Reaction: id = reaction_19, name = reaction_19
	reaction_reaction_19=compartment_Caulobacter*global_par_kd_I*x(8);

% Reaction: id = reaction_20, name = reaction_20
	reaction_reaction_20=compartment_Caulobacter*function_10(global_par_ks_CcrM, x(8));

% Reaction: id = reaction_21, name = reaction_21
	reaction_reaction_21=compartment_Caulobacter*global_par_kd_CcrM*x(9);

% Reaction: id = reaction_22, name = reaction_22
	reaction_reaction_22=compartment_Caulobacter*function_12(global_par_km_cori, x(9), global_par_Jm_cori, x(10));

% Reaction: id = reaction_23, name = reaction_23
	reaction_reaction_23=compartment_Caulobacter*function_12(global_par_km_ctrA, x(9), global_par_Jm_ctrA, x(11));

% Reaction: id = reaction_24, name = reaction_24
	reaction_reaction_24=compartment_Caulobacter*function_12(global_par_km_ccrM, x(9), global_par_Jm_ccrM, x(12));

% Reaction: id = reaction_25, name = reaction_25
	reaction_reaction_25=compartment_Caulobacter*function_12(global_par_km_fts, x(9), global_par_Jm_fts, x(13));

% Reaction: id = reaction_26, name = reaction_26
	reaction_reaction_26=compartment_Caulobacter*function_13(global_par_ka_Ini, x(3), global_par_thetaDnaA, x(2), global_par_thetaGcrA, x(1), global_par_thetaCtrA, x(10), global_par_thetacori);

% Reaction: id = reaction_27, name = reaction_27
	reaction_reaction_27=compartment_Caulobacter*function_14(global_par_kelong, x(15), global_par_Pelong, global_par_Count);

% Reaction: id = reaction_28, name = reaction_28
	reaction_reaction_28=compartment_Caulobacter*function_14(global_par_kelong, x(15), global_par_Pelong, global_par_Count);

%Event: id=Pelong_threshold
	event_Pelong_threshold=x(15) == global_par_Pelong;

	if(event_Pelong_threshold) 
		x(10)=1;
	end

%Event: id=PctrA_threshold
	event_PctrA_threshold=x(15) == global_par_PctrA;

	if(event_PctrA_threshold) 
		x(11)=1;
	end

%Event: id=PccrM_treshold
	event_PccrM_treshold=x(15) == global_par_PccrM;

	if(event_PccrM_treshold) 
		x(12)=1;
	end

%Event: id=Pfts_treshold
	event_Pfts_treshold=x(15) == global_par_Pfts;

	if(event_Pfts_treshold) 
		x(13)=1;
	end

%Event: id=Ini_reset
	event_Ini_reset=x(14) > 0.05;

	if(event_Ini_reset) 
		x(14)=0;
	end

%Event: id=Elong_reset_by_Ini
	event_Elong_reset_by_Ini=x(14) == 0.05;

	if(event_Elong_reset_by_Ini) 
		x(15)=x(15)+global_par_Count*0.05;
	end

%Event: id=Elong_reset_by_Count
	event_Elong_reset_by_Count=x(15) >= (global_par_Count/2);

	if(event_Elong_reset_by_Count) 
		x(15)=0;
	end

%Event: id=DNA_reset_by_Ini
	event_DNA_reset_by_Ini=x(14) == 0.05;

	if(event_DNA_reset_by_Ini) 
		x(16)=x(16)+global_par_Count*0.05;
	end

%Event: id=DNA_reset_by_Z_ring
	event_DNA_reset_by_Z_ring=x(5) < 0.11;

	if(event_DNA_reset_by_Z_ring) 
		x(16)=x(16)/2;
	end

%Event: id=Count_assignment_by_Ini
	event_Count_assignment_by_Ini=x(14) >= 0.05;

	if(event_Count_assignment_by_Ini) 
		global_par_Count=global_par_Count*2;
	end

%Event: id=Count_reset_by_Z_ring
	event_Count_reset_by_Z_ring=x(5) < 0.11;

	if(event_Count_reset_by_Z_ring) 
		global_par_Count=global_par_Count/2;
	end

	xdot=zeros(16,1);
	
% Species:   id = CtrA, name = CtrA, affected by kineticLaw
	xdot(1) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_reaction) + ( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3));
	
% Species:   id = GcrA, name = GcrA, affected by kineticLaw
	xdot(2) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = DnaA, name = DnaA, affected by kineticLaw
	xdot(3) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7));
	
% Species:   id = Fts, name = Fts, affected by kineticLaw
	xdot(4) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9));
	
% Species:   id = Zring, name = Zring, affected by kineticLaw
	xdot(5) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12));
	
% Species:   id = DivK, name = DivK, affected by kineticLaw
	xdot(6) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_16));
	
% Species:   id = DivK_P, name = DivK_P, affected by kineticLaw
	xdot(7) = (1/(compartment_Caulobacter))*((-1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_17));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(8) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_19));
	
% Species:   id = CcrM, name = CcrM, affected by kineticLaw
	xdot(9) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_21));
	
% Species:   id = hcori, name = hcori, affected by kineticLaw
	xdot(10) = (1/(compartment_Caulobacter))*((-1.0 * reaction_reaction_22));
	
% Species:   id = hctrA, name = hctrA, affected by kineticLaw
	xdot(11) = (1/(compartment_Caulobacter))*((-1.0 * reaction_reaction_23));
	
% Species:   id = hccrM, name = hccrM, affected by kineticLaw
	xdot(12) = (1/(compartment_Caulobacter))*((-1.0 * reaction_reaction_24));
	
% Species:   id = hfts, name = hfts, affected by kineticLaw
	xdot(13) = (1/(compartment_Caulobacter))*((-1.0 * reaction_reaction_25));
	
% Species:   id = Ini, name = Ini, affected by kineticLaw
	xdot(14) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_reaction_26));
	
% Species:   id = Elong, name = Elong, affected by kineticLaw
	xdot(15) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_reaction_27));
	
% Species:   id = DNA, name = DNA, affected by kineticLaw
	xdot(16) = (1/(compartment_Caulobacter))*(( 1.0 * reaction_reaction_28));
end

function z=function_2(k,J,S,M1,M2), z=(k*J^2/(J^2+S^2)*M1*M2);end

function z=function_1(k,S,J,M1), z=(k*S^2/(J^2+S^2)*M1);end

function z=function_4(k,J,S,M1), z=(k*J^2/(J^2+S^2)*M1);end

function z=function_5(k,J1,M1,M2,J2,M3), z=(k*J1^2/(J1^2+M1^2)*M2^2/(J2^2+M2^2)*(2-M3));end

function z=function_6(k,M1,M2), z=(k*M1*M2);end

function z=function_7(k,P,J), z=(k*(1-P)/(J+1-P));end

function z=function_8(k,P,J), z=(k*P/(J+P));end

function z=function_9(k,M,J2,P,J1), z=(k*(M/J2)^4*P/(J1+P));end

function z=function_10(k,M), z=(k*M);end

function z=function_11(k,S,M), z=(k*S*(1-M));end

function z=function_12(k,M,J,S), z=(k*M^4/(J^4+M^4)*S);end

function z=function_13(k,m1,Theta1,M2,Theta2,M3,Theta3,M4,Theta4), z=(k*(m1/Theta1)^4*(M2/Theta2)^4/(1+(m1/Theta1)^4+(M2/Theta2)^4+(M3/Theta3)^4+M4/Theta4));end

function z=function_14(k,M,P,C), z=(k*M^4/(M^4+P^4)*C);end

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


