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
% Model name = Capuani2015 - Binding of Cbl and Gbr2 to EGFR (Multisite Phosphorylation Model - MPM)
%
% is http://identifiers.org/biomodels.db/MODEL1505190001
% is http://identifiers.org/biomodels.db/BIOMD0000000594
% isDescribedBy http://identifiers.org/pubmed/26264748
%


function main()
%Initial conditions vector
	x0=zeros(33,1);
	x0(1) = 2.80975332814237E-5;
	x0(2) = 3.30538809753328;
	x0(3) = 0.0146119024667186;
	x0(4) = 0;
	x0(5) = 0;
	x0(6) = 0;
	x0(7) = 0;
	x0(8) = 0.833;
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
% Parameter:   id =  K45P, name = K45P
% Parameter:   id =  KcgP, name = KcgP
% Parameter:   id =  kptp68, name = kptp68
% Parameter:   id =  kkin, name = kkin
% Parameter:   id =  kkin68, name = kkin68
% Parameter:   id =  kb45, name = kb45
% Parameter:   id =  ku45M, name = ku45M
% Parameter:   id =  kb45P, name = kb45P
% Parameter:   id =  kb68, name = kb68
% Parameter:   id =  ku68, name = ku68
% Parameter:   id =  kb68P, name = kb68P
% Parameter:   id =  ku68M, name = ku68M
% Parameter:   id =  kbcg, name = kbcg
% Parameter:   id =  kbcgP, name = kbcgP
% Parameter:   id =  kucgM, name = kucgM
% Parameter:   id =  Ltot, name = Ltot
	global_par_Ltot=0.0;
% Parameter:   id =  RT, name = RT
	global_par_RT=0.833;
% Parameter:   id =  CblT, name = CblT
	global_par_CblT=0.01464;
% Parameter:   id =  Grb2T, name = Grb2T
	global_par_Grb2T=3.32;
% Parameter:   id =  kptp, name = kptp
	global_par_kptp=0.016;
% Parameter:   id =  kkinbase, name = kkinbase
	global_par_kkinbase=0.0759155;
% Parameter:   id =  nH, name = nH
	global_par_nH=1.13;
% Parameter:   id =  xT, name = xT
	global_par_xT=4.59181;
% Parameter:   id =  K45, name = K45
	global_par_K45=0.201361;
% Parameter:   id =  Kcg, name = Kcg
	global_par_Kcg=0.006356;
% Parameter:   id =  ku45, name = ku45
	global_par_ku45=0.001011;
% Parameter:   id =  kucg, name = kucg
	global_par_kucg=0.309271;
% Parameter:   id =  PYMax, name = PYMax
	global_par_PYMax=2.279493223;
% Parameter:   id =  UbMax, name = UbMax
	global_par_UbMax=0.014306;
% Parameter:   id =  floc, name = floc
	global_par_floc=20000.0;
% Parameter:   id =  CblWT, name = CblWT
	global_par_CblWT=0.01464;
% Parameter:   id =  CblFactor, name = CblFactor
	global_par_CblFactor=1.0;
% assignmentRule: variable = kkin
	global_par_kkin=global_par_kkinbase*global_par_Ltot^global_par_nH/(global_par_Ltot^global_par_nH+global_par_xT^global_par_nH);
% assignmentRule: variable = K45P
	global_par_K45P=global_par_K45/global_par_floc;
% assignmentRule: variable = KcgP
	global_par_KcgP=global_par_Kcg/global_par_floc;
% assignmentRule: variable = kkin68
	global_par_kkin68=global_par_kkin;
% assignmentRule: variable = kptp68
	global_par_kptp68=global_par_kptp;
% assignmentRule: variable = kb45
	global_par_kb45=global_par_ku45/global_par_K45;
% assignmentRule: variable = kb68
	global_par_kb68=global_par_kb45;
% assignmentRule: variable = ku68
	global_par_ku68=global_par_ku45;
% assignmentRule: variable = kbcg
	global_par_kbcg=global_par_kucg/global_par_Kcg;
% assignmentRule: variable = ku45M
	global_par_ku45M=global_par_ku45;
% assignmentRule: variable = kb45P
	global_par_kb45P=global_par_ku45M/global_par_K45P;
% assignmentRule: variable = kb68P
	global_par_kb68P=global_par_kb45P;
% assignmentRule: variable = ku68M
	global_par_ku68M=global_par_ku45M;
% assignmentRule: variable = kucgM
	global_par_kucgM=global_par_kucg;
% assignmentRule: variable = kbcgP
	global_par_kbcgP=global_par_kucgM/global_par_KcgP;
% assignmentRule: variable = Tyr
	x(4)=x(9)+x(10)+x(11)+1*(x(12)+x(13)+x(14))+2*(x(15)+x(16)+x(17)+x(18)+x(19)+x(20)+x(21)+x(22))+2*(x(23)+x(24)+x(25))+3*(x(26)+x(27)+x(28)+x(29)+x(30)+x(31)+x(32)+x(33));
% assignmentRule: variable = Ub
	x(5)=x(21)+x(32)+x(10)+x(16)+x(27)+x(11)+x(17)+x(28)+x(20)+x(31)+x(22)+x(33);
% assignmentRule: variable = TyrNorm
	x(6)=x(4)/global_par_PYMax;
% assignmentRule: variable = UbNorm
	x(7)=x(5)/(global_par_UbMax*global_par_CblFactor);

% Reaction: id = r1, name = EGFR_10UU has site Y1045 dephosphorylated
	reaction_r1=global_par_kptp*x(9);

% Reaction: id = r2, name = EGFR_01UU has site Y1068/Y1086 dephosphorylated
	reaction_r2=global_par_kptp68*x(12);

% Reaction: id = r3, name = EGFR_11UU has site Y1045 dephosphorylated
	reaction_r3=global_par_kptp*x(15);

% Reaction: id = r4, name = EGFR_11UU has site Y1068/Y1086 dephosphorylated
	reaction_r4=global_par_kptp68*x(15);

% Reaction: id = r5, name = EGFR_11CU has site Y1068/Y1086 dephosphorylated
	reaction_r5=global_par_kptp68*x(16);

% Reaction: id = r6, name = EGFR_11LU has site Y1068/Y1086 dephosphorylated
	reaction_r6=global_par_kptp68*x(17);

% Reaction: id = r7, name = EGFR_11UG has site Y1045 dephosphorylated
	reaction_r7=global_par_kptp*x(18);

% Reaction: id = r8, name = EGFR_11UL has site Y1045 dephosphorylated
	reaction_r8=global_par_kptp*x(19);

% Reaction: id = r9, name = EGFR_02UU has site Y1068/Y1086 dephosphorylated
	reaction_r9=2*global_par_kptp68*x(23);

% Reaction: id = r10, name = EGFR_02UG has site Y1068/Y1-86 dephosphorylated
	reaction_r10=global_par_kptp68*x(24);

% Reaction: id = r11, name = EGFR_02UL has site Y1068/Y1-86 dephosphorylated
	reaction_r11=global_par_kptp68*x(25);

% Reaction: id = r12, name = EGFR_12UU has site Y1045 dephosphorylated
	reaction_r12=global_par_kptp*x(26);

% Reaction: id = r13, name = EGFR_12UU has site Y1068/Y1086 dephosphorylated
	reaction_r13=2*global_par_kptp68*x(26);

% Reaction: id = r14, name = EGFR_12CU has site Y1068/Y1086 dephosphorylated
	reaction_r14=2*global_par_kptp68*x(27);

% Reaction: id = r15, name = EGFR_12LU has site Y1068/Y1086 dephosphorylated
	reaction_r15=2*global_par_kptp68*x(28);

% Reaction: id = r16, name = EGFR_12UG has site Y1045 dephosphorylated
	reaction_r16=global_par_kptp*x(29);

% Reaction: id = r17, name = EGFR_12UG has site Y1068/Y1-86 dephosphorylated
	reaction_r17=global_par_kptp68*x(29);

% Reaction: id = r18, name = EGFR_12UL has site Y1045 dephosphorylated
	reaction_r18=global_par_kptp*x(30);

% Reaction: id = r19, name = EGFR_12UL has site Y1068/Y1-86 dephosphorylated
	reaction_r19=global_par_kptp68*x(30);

% Reaction: id = r20, name = EGFR_12CG has site Y1068/Y1-86 dephosphorylated
	reaction_r20=global_par_kptp68*x(31);

% Reaction: id = r21, name = EGFR_12CC has site Y1068/Y1-86 dephosphorylated
	reaction_r21=global_par_kptp68*x(32);

% Reaction: id = r22, name = EGFR_12LG has site Y1068/Y1-86 dephosphorylated
	reaction_r22=global_par_kptp68*x(33);

% Reaction: id = r23, name = EGFR_00UU has site Y1045 phosphorylated
	reaction_r23=global_par_kkin*x(8);

% Reaction: id = r24, name = EGFR_00UU has site Y1068/Y1086 phosphorylated
	reaction_r24=2*global_par_kkin68*x(8);

% Reaction: id = r25, name = EGFR_10UU has site Y1068/Y1086 phosphorylated
	reaction_r25=2*global_par_kkin68*x(9);

% Reaction: id = r26, name = EGFR_10CU has site Y1068/Y1086 phosphorylated
	reaction_r26=2*global_par_kkin68*x(10);

% Reaction: id = r27, name = EGFR_10LU has site Y1068/Y1086 phosphorylated
	reaction_r27=2*global_par_kkin68*x(11);

% Reaction: id = r28, name = EGFR_01UU has site Y1045 phosphorylated
	reaction_r28=global_par_kkin*x(12);

% Reaction: id = r29, name = EGFR_01UU has site Y1068/Y1086 phosphorylated
	reaction_r29=global_par_kkin68*x(12);

% Reaction: id = r30, name = EGFR_01UG has site Y1045 phosphorylated
	reaction_r30=global_par_kkin*x(13);

% Reaction: id = r31, name = EGFR_01UG has site Y1068/Y1086 phosphorylated
	reaction_r31=global_par_kkin68*x(13);

% Reaction: id = r32, name = EGFR_01UL has site Y1045 phosphorylated
	reaction_r32=global_par_kkin*x(14);

% Reaction: id = r33, name = EGFR_01UL has site Y1068/Y1086 phosphorylated
	reaction_r33=global_par_kkin68*x(14);

% Reaction: id = r34, name = EGFR_11UU has site Y1068/Y1086 phosphorylated
	reaction_r34=global_par_kkin68*x(15);

% Reaction: id = r35, name = EGFR_11CU has site Y1068/Y1086 phosphorylated
	reaction_r35=global_par_kkin68*x(16);

% Reaction: id = r36, name = EGFR_11LU has site Y1068/Y1086 phosphorylated
	reaction_r36=global_par_kkin68*x(17);

% Reaction: id = r37, name = EGFR_11UG has site Y1068/Y1086 phosphorylated
	reaction_r37=global_par_kkin68*x(18);

% Reaction: id = r38, name = EGFR_11UL has site Y1068/Y1086 phosphorylated
	reaction_r38=global_par_kkin68*x(19);

% Reaction: id = r39, name = EGFR_11CG has site Y1068/Y1086 phosphorylated
	reaction_r39=global_par_kkin68*x(20);

% Reaction: id = r40, name = EGFR_11CC has site Y1068/Y1086 phosphorylated
	reaction_r40=global_par_kkin68*x(21);

% Reaction: id = r41, name = EGFR_11LG has site Y1068/Y1086 phosphorylated
	reaction_r41=global_par_kkin68*x(22);

% Reaction: id = r42, name = EGFR_02UU has site Y1045 phosphorylated
	reaction_r42=global_par_kkin*x(23);

% Reaction: id = r43, name = EGFR_02UG has site Y1045 phosphorylated
	reaction_r43=global_par_kkin*x(24);

% Reaction: id = r44, name = EGFR_02UL has site Y1045 phosphorylated
	reaction_r44=global_par_kkin*x(25);

% Reaction: id = r45, name = Cbl and Grb2  bind yielding  CG
	reaction_r45=global_par_kbcg*x(1)*x(2);

% Reaction: id = r46, name = CG  dissociates to  Cbl and Grb2
	reaction_r46=global_par_kucg*x(3);

% Reaction: id = r47, name = Cbl and EGFR_10UU  bind yielding  EGFR_10CU
	reaction_r47=global_par_kb45*x(1)*x(9);

% Reaction: id = r48, name = EGFR_10CU  dissociates to  Cbl and EGFR_10UU
	reaction_r48=global_par_ku45*x(10);

% Reaction: id = r49, name = CG and EGFR_10UU  bind yielding  EGFR_10LU
	reaction_r49=global_par_kb45*x(3)*x(9);

% Reaction: id = r50, name = EGFR_10LU  dissociates to  CG and EGFR_10UU
	reaction_r50=global_par_ku45*x(11);

% Reaction: id = r51, name = Grb2 and EGFR_10CU  bind yielding  EGFR_10LU
	reaction_r51=global_par_kbcg*x(2)*x(10);

% Reaction: id = r52, name = EGFR_10LU  dissociates to  Grb2 and EGFR_10CU
	reaction_r52=global_par_kucg*x(11);

% Reaction: id = r53, name = Grb2 and EGFR_01UU  bind yielding  EGFR_01UG
	reaction_r53=global_par_kb68*x(2)*x(12);

% Reaction: id = r54, name = EGFR_01UG  dissociates to  Grb2 and EGFR_01UU
	reaction_r54=global_par_ku68*x(13);

% Reaction: id = r55, name = CG and EGFR_01UU  bind yielding  EGFR_01UL
	reaction_r55=global_par_kb68*x(3)*x(12);

% Reaction: id = r56, name = EGFR_01UL  dissociates to  CG and EGFR_01UU
	reaction_r56=global_par_ku68*x(14);

% Reaction: id = r57, name = Cbl and EGFR_01UG  bind yielding  EGFR_01UL
	reaction_r57=global_par_kbcg*x(1)*x(13);

% Reaction: id = r58, name = EGFR_01UL  dissociates to Cbl and EGFR_01UG
	reaction_r58=global_par_kucg*x(14);

% Reaction: id = r59, name = Cbl and EGFR_11UU  bind yielding  EGFR_11CU
	reaction_r59=global_par_kb45*x(1)*x(15);

% Reaction: id = r60, name = EGFR_11CU  dissociates to  Cbl and EGFR_11UU
	reaction_r60=global_par_ku45*x(16);

% Reaction: id = r61, name = CG and EGFR_11UU  bind yielding  EGFR_11LU
	reaction_r61=global_par_kb45*x(3)*x(15);

% Reaction: id = r62, name = EGFR_11LU  dissociates to  CG and EGFR_11UU
	reaction_r62=global_par_ku45*x(17);

% Reaction: id = r63, name = Grb2 and EGFR_11UU  bind yielding  EGFR_11UG
	reaction_r63=global_par_kb68*x(2)*x(15);

% Reaction: id = r64, name = EGFR_11UG  dissociates to  Grb2 and EGFR_11UU
	reaction_r64=global_par_ku68*x(18);

% Reaction: id = r65, name = CG and EGFR_11UU  bind yielding  EGFR_11UL
	reaction_r65=global_par_kb68*x(3)*x(15);

% Reaction: id = r66, name = EGFR_11UL  dissociates to  CG and EGFR_11UU
	reaction_r66=global_par_ku68*x(19);

% Reaction: id = r67, name = Grb2 and EGFR_11CU  bind yielding  EGFR_11LU
	reaction_r67=global_par_kbcg*x(2)*x(16);

% Reaction: id = r68, name = EGFR_11LU  dissociates to  Grb2 and EGFR_11CU
	reaction_r68=global_par_kucg*x(17);

% Reaction: id = r69, name = Grb2 and EGFR_11CU  bind yielding  EGFR_11CG
	reaction_r69=global_par_kb68*x(2)*x(16);

% Reaction: id = r70, name = EGFR_11CG  dissociates to  Grb2 and EGFR_11CU
	reaction_r70=global_par_ku68*x(20);

% Reaction: id = r71, name = Grb2 and EGFR_11LU  bind yielding  EGFR_11LG
	reaction_r71=global_par_kb68*x(2)*x(17);

% Reaction: id = r72, name = EGFR_11LG  dissociates to  Grb2 and EGFR_11LU
	reaction_r72=global_par_ku68*x(22);

% Reaction: id = r73, name = EGFR_11LU  transforms in (singly-bound -> doubly-bound)  EGFR_11CC
	reaction_r73=global_par_kb68P*x(17);

% Reaction: id = r74, name = EGFR_11CC  tranforms in (doubly-bound -> singly-bound)  EGFR_11LU
	reaction_r74=global_par_ku68M*x(21);

% Reaction: id = r75, name = Cbl and EGFR_11UG  bind yielding  EGFR_11CG
	reaction_r75=global_par_kb45*x(1)*x(18);

% Reaction: id = r76, name = EGFR_11CG  dissociates to  Cbl and EGFR_11UG
	reaction_r76=global_par_ku45*x(20);

% Reaction: id = r77, name = CG and EGFR_11UG  bind yielding  EGFR_11LG
	reaction_r77=global_par_kb45*x(3)*x(18);

% Reaction: id = r78, name = EGFR_11LG  dissociates to  CG and EGFR_11UG
	reaction_r78=global_par_ku45*x(22);

% Reaction: id = r79, name = Cbl and EGFR_11UG  bind yielding  EGFR_11UL
	reaction_r79=global_par_kbcg*x(1)*x(18);

% Reaction: id = r80, name = EGFR_11UL  dissociates to Cbl and EGFR_11UG
	reaction_r80=global_par_kucg*x(19);

% Reaction: id = r81, name = EGFR_11UL  transforms in (singly-bound -> doubly-bound)  EGFR_11CC
	reaction_r81=global_par_kb45P*x(19);

% Reaction: id = r82, name = EGFR_11CC  tranforms in (doubly-bound -> singly-bound)  EGFR_11UL
	reaction_r82=global_par_ku45M*x(21);

% Reaction: id = r83, name = EGFR_11CG  transforms in (Cbl bind Grb2 directly)  EGFR_11CC
	reaction_r83=global_par_kbcgP*x(20);

% Reaction: id = r84, name = EGFR_11CC  tranforms in (Cbl-Grb2 loose direct binding, but stay bound to EGFR)  EGFR_11CG
	reaction_r84=global_par_kucgM*x(21);

% Reaction: id = r85, name = Grb2 and EGFR_11CG  bind yielding  EGFR_11LG
	reaction_r85=global_par_kbcg*x(2)*x(20);

% Reaction: id = r86, name = EGFR_11LG  dissociates to  Grb2 and EGFR_11CG
	reaction_r86=global_par_kucg*x(22);

% Reaction: id = r87, name = Grb2 and EGFR_02UU  bind yielding  EGFR_02UG
	reaction_r87=2*global_par_kb68*x(2)*x(23);

% Reaction: id = r88, name = EGFR_02UG  dissociates to  Grb2 and EGFR_02UU
	reaction_r88=global_par_ku68*x(24);

% Reaction: id = r89, name = CG and EGFR_02UU  bind yielding  EGFR_02UL
	reaction_r89=2*global_par_kb68*x(3)*x(23);

% Reaction: id = r90, name = EGFR_02UL  dissociates to  CG and EGFR_02UU
	reaction_r90=global_par_ku68*x(25);

% Reaction: id = r91, name = Cbl and EGFR_02UG  bind yielding  EGFR_02UL
	reaction_r91=global_par_kbcg*x(1)*x(24);

% Reaction: id = r92, name = EGFR_02UL  dissociates to Cbl and EGFR_02UG
	reaction_r92=global_par_kucg*x(25);

% Reaction: id = r93, name = Cbl and EGFR_12UU  bind yielding  EGFR_12CU
	reaction_r93=global_par_kb45*x(1)*x(26);

% Reaction: id = r94, name = EGFR_12CU  dissociates to  Cbl and EGFR_12UU
	reaction_r94=global_par_ku45*x(27);

% Reaction: id = r95, name = CG and EGFR_12UU  bind yielding  EGFR_12LU
	reaction_r95=global_par_kb45*x(3)*x(26);

% Reaction: id = r96, name = EGFR_12LU  dissociates to  CG and EGFR_12UU
	reaction_r96=global_par_ku45*x(28);

% Reaction: id = r97, name = Grb2 and EGFR_12UU  bind yielding  EGFR_12UG
	reaction_r97=2*global_par_kb68*x(2)*x(26);

% Reaction: id = r98, name = EGFR_12UG  dissociates to  Grb2 and EGFR_12UU
	reaction_r98=global_par_ku68*x(29);

% Reaction: id = r99, name = CG and EGFR_12UU  bind yielding  EGFR_12UL
	reaction_r99=2*global_par_kb68*x(3)*x(26);

% Reaction: id = r100, name = EGFR_12UL  dissociates to  CG and EGFR_12UU
	reaction_r100=global_par_ku68*x(30);

% Reaction: id = r101, name = Grb2 and EGFR_12CU  bind yielding  EGFR_12LU
	reaction_r101=global_par_kbcg*x(2)*x(27);

% Reaction: id = r102, name = EGFR_12LU  dissociates to  Grb2 and EGFR_12CU
	reaction_r102=global_par_kucg*x(28);

% Reaction: id = r103, name = Grb2 and EGFR_12CU  bind yielding  EGFR_12CG
	reaction_r103=2*global_par_kb68*x(2)*x(27);

% Reaction: id = r104, name = EGFR_12CG  dissociates to  Grb2 and EGFR_12CU
	reaction_r104=global_par_ku68*x(31);

% Reaction: id = r105, name = Grb2 and EGFR_12LU  bind yielding  EGFR_12LG
	reaction_r105=2*global_par_kb68*x(2)*x(28);

% Reaction: id = r106, name = EGFR_12LG  dissociates to  Grb2 and EGFR_12LU
	reaction_r106=global_par_ku68*x(33);

% Reaction: id = r107, name = EGFR_12LU  transforms in (singly-bound -> doubly-bound)  EGFR_12CC
	reaction_r107=2*global_par_kb68P*x(28);

% Reaction: id = r108, name = EGFR_12CC  tranforms in (doubly-bound -> singly-bound)  EGFR_12LU
	reaction_r108=global_par_ku68M*x(32);

% Reaction: id = r109, name = Cbl and EGFR_12UG  bind yielding  EGFR_12CG
	reaction_r109=global_par_kb45*x(1)*x(29);

% Reaction: id = r110, name = EGFR_12CG  dissociates to  Cbl and EGFR_12UG
	reaction_r110=global_par_ku45*x(31);

% Reaction: id = r111, name = CG and EGFR_12UG  bind yielding  EGFR_12LG
	reaction_r111=global_par_kb45*x(3)*x(29);

% Reaction: id = r112, name = EGFR_12LG  dissociates to  CG and EGFR_12UG
	reaction_r112=global_par_ku45*x(33);

% Reaction: id = r113, name = Cbl and EGFR_12UG  bind yielding  EGFR_12UL
	reaction_r113=global_par_kbcg*x(1)*x(29);

% Reaction: id = r114, name = EGFR_12UL  dissociates to Cbl and EGFR_12UG
	reaction_r114=global_par_kucg*x(30);

% Reaction: id = r115, name = EGFR_12UL  transforms in (singly-bound -> doubly-bound)  EGFR_12CC
	reaction_r115=global_par_kb45P*x(30);

% Reaction: id = r116, name = EGFR_12CC  tranforms in (doubly-bound -> singly-bound)  EGFR_12UL
	reaction_r116=global_par_ku45M*x(32);

% Reaction: id = r117, name = EGFR_12CG  transforms in (Cbl bind Grb2 directly)  EGFR_12CC
	reaction_r117=global_par_kbcgP*x(31);

% Reaction: id = r118, name = EGFR_12CC  tranforms in (Cbl-Grb2 loose direct binding, but stay bound to EGFR)  EGFR_12CG
	reaction_r118=global_par_kucgM*x(32);

% Reaction: id = r119, name = Grb2 and EGFR_12CG  bind yielding  EGFR_12LG
	reaction_r119=global_par_kbcg*x(2)*x(31);

% Reaction: id = r120, name = EGFR_12LG  dissociates to  Grb2 and EGFR_12CG
	reaction_r120=global_par_kucg*x(33);

	xdot=zeros(33,1);
	
% Species:   id = Cbl, name = Cbl, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_r45) + ( 1.0 * reaction_r46) + (-1.0 * reaction_r47) + ( 1.0 * reaction_r48) + (-1.0 * reaction_r57) + ( 1.0 * reaction_r58) + (-1.0 * reaction_r59) + ( 1.0 * reaction_r60) + (-1.0 * reaction_r75) + ( 1.0 * reaction_r76) + (-1.0 * reaction_r79) + ( 1.0 * reaction_r80) + (-1.0 * reaction_r91) + ( 1.0 * reaction_r92) + (-1.0 * reaction_r93) + ( 1.0 * reaction_r94) + (-1.0 * reaction_r109) + ( 1.0 * reaction_r110) + (-1.0 * reaction_r113) + ( 1.0 * reaction_r114));
	
% Species:   id = Grb2, name = Grb2, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_r45) + ( 1.0 * reaction_r46) + (-1.0 * reaction_r51) + ( 1.0 * reaction_r52) + (-1.0 * reaction_r53) + ( 1.0 * reaction_r54) + (-1.0 * reaction_r63) + ( 1.0 * reaction_r64) + (-1.0 * reaction_r67) + ( 1.0 * reaction_r68) + (-1.0 * reaction_r69) + ( 1.0 * reaction_r70) + (-1.0 * reaction_r71) + ( 1.0 * reaction_r72) + (-1.0 * reaction_r85) + ( 1.0 * reaction_r86) + (-1.0 * reaction_r87) + ( 1.0 * reaction_r88) + (-1.0 * reaction_r97) + ( 1.0 * reaction_r98) + (-1.0 * reaction_r101) + ( 1.0 * reaction_r102) + (-1.0 * reaction_r103) + ( 1.0 * reaction_r104) + (-1.0 * reaction_r105) + ( 1.0 * reaction_r106) + (-1.0 * reaction_r119) + ( 1.0 * reaction_r120));
	
% Species:   id = CG, name = CG, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_r45) + (-1.0 * reaction_r46) + (-1.0 * reaction_r49) + ( 1.0 * reaction_r50) + (-1.0 * reaction_r55) + ( 1.0 * reaction_r56) + (-1.0 * reaction_r61) + ( 1.0 * reaction_r62) + (-1.0 * reaction_r65) + ( 1.0 * reaction_r66) + (-1.0 * reaction_r77) + ( 1.0 * reaction_r78) + (-1.0 * reaction_r89) + ( 1.0 * reaction_r90) + (-1.0 * reaction_r95) + ( 1.0 * reaction_r96) + (-1.0 * reaction_r99) + ( 1.0 * reaction_r100) + (-1.0 * reaction_r111) + ( 1.0 * reaction_r112));
	
% Species:   id = Tyr, name = Tyr, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = Ub, name = Ub, defined in a rule 	xdot(5) = x(5);
	
% Species:   id = TyrNorm, name = TyrNorm, defined in a rule 	xdot(6) = x(6);
	
% Species:   id = UbNorm, name = UbNorm, defined in a rule 	xdot(7) = x(7);
	
% Species:   id = EGFR_00UU, name = EGFR_00UU, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_r1) + ( 1.0 * reaction_r2) + (-1.0 * reaction_r23) + (-1.0 * reaction_r24));
	
% Species:   id = EGFR_10UU, name = EGFR_10UU, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*((-1.0 * reaction_r1) + ( 1.0 * reaction_r4) + ( 1.0 * reaction_r23) + (-1.0 * reaction_r25) + (-1.0 * reaction_r47) + ( 1.0 * reaction_r48) + (-1.0 * reaction_r49) + ( 1.0 * reaction_r50));
	
% Species:   id = EGFR_10CU, name = EGFR_10CU, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_r5) + (-1.0 * reaction_r26) + ( 1.0 * reaction_r47) + (-1.0 * reaction_r48) + (-1.0 * reaction_r51) + ( 1.0 * reaction_r52));
	
% Species:   id = EGFR_10LU, name = EGFR_10LU, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_r6) + (-1.0 * reaction_r27) + ( 1.0 * reaction_r49) + (-1.0 * reaction_r50) + ( 1.0 * reaction_r51) + (-1.0 * reaction_r52));
	
% Species:   id = EGFR_01UU, name = EGFR_01UU, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*((-1.0 * reaction_r2) + ( 1.0 * reaction_r3) + ( 1.0 * reaction_r9) + ( 1.0 * reaction_r24) + (-1.0 * reaction_r28) + (-1.0 * reaction_r29) + (-1.0 * reaction_r53) + ( 1.0 * reaction_r54) + (-1.0 * reaction_r55) + ( 1.0 * reaction_r56));
	
% Species:   id = EGFR_01UG, name = EGFR_01UG, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_r7) + ( 1.0 * reaction_r10) + (-1.0 * reaction_r30) + (-1.0 * reaction_r31) + ( 1.0 * reaction_r53) + (-1.0 * reaction_r54) + (-1.0 * reaction_r57) + ( 1.0 * reaction_r58));
	
% Species:   id = EGFR_01UL, name = EGFR_01UL, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*(( 1.0 * reaction_r8) + ( 1.0 * reaction_r11) + (-1.0 * reaction_r32) + (-1.0 * reaction_r33) + ( 1.0 * reaction_r55) + (-1.0 * reaction_r56) + ( 1.0 * reaction_r57) + (-1.0 * reaction_r58));
	
% Species:   id = EGFR_11UU, name = EGFR_11UU, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*((-1.0 * reaction_r3) + (-1.0 * reaction_r4) + ( 1.0 * reaction_r13) + ( 1.0 * reaction_r25) + ( 1.0 * reaction_r28) + (-1.0 * reaction_r34) + (-1.0 * reaction_r59) + ( 1.0 * reaction_r60) + (-1.0 * reaction_r61) + ( 1.0 * reaction_r62) + (-1.0 * reaction_r63) + ( 1.0 * reaction_r64) + (-1.0 * reaction_r65) + ( 1.0 * reaction_r66));
	
% Species:   id = EGFR_11CU, name = EGFR_11CU, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*((-1.0 * reaction_r5) + ( 1.0 * reaction_r14) + ( 1.0 * reaction_r26) + (-1.0 * reaction_r35) + ( 1.0 * reaction_r59) + (-1.0 * reaction_r60) + (-1.0 * reaction_r67) + ( 1.0 * reaction_r68) + (-1.0 * reaction_r69) + ( 1.0 * reaction_r70));
	
% Species:   id = EGFR_11LU, name = EGFR_11LU, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*((-1.0 * reaction_r6) + ( 1.0 * reaction_r15) + ( 1.0 * reaction_r27) + (-1.0 * reaction_r36) + ( 1.0 * reaction_r61) + (-1.0 * reaction_r62) + ( 1.0 * reaction_r67) + (-1.0 * reaction_r68) + (-1.0 * reaction_r71) + ( 1.0 * reaction_r72) + (-1.0 * reaction_r73) + ( 1.0 * reaction_r74));
	
% Species:   id = EGFR_11UG, name = EGFR_11UG, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*((-1.0 * reaction_r7) + ( 1.0 * reaction_r17) + ( 1.0 * reaction_r30) + (-1.0 * reaction_r37) + ( 1.0 * reaction_r63) + (-1.0 * reaction_r64) + (-1.0 * reaction_r75) + ( 1.0 * reaction_r76) + (-1.0 * reaction_r77) + ( 1.0 * reaction_r78) + (-1.0 * reaction_r79) + ( 1.0 * reaction_r80));
	
% Species:   id = EGFR_11UL, name = EGFR_11UL, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*((-1.0 * reaction_r8) + ( 1.0 * reaction_r19) + ( 1.0 * reaction_r32) + (-1.0 * reaction_r38) + ( 1.0 * reaction_r65) + (-1.0 * reaction_r66) + ( 1.0 * reaction_r79) + (-1.0 * reaction_r80) + (-1.0 * reaction_r81) + ( 1.0 * reaction_r82));
	
% Species:   id = EGFR_11CG, name = EGFR_11CG, affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*(( 1.0 * reaction_r20) + (-1.0 * reaction_r39) + ( 1.0 * reaction_r69) + (-1.0 * reaction_r70) + ( 1.0 * reaction_r75) + (-1.0 * reaction_r76) + (-1.0 * reaction_r83) + ( 1.0 * reaction_r84) + (-1.0 * reaction_r85) + ( 1.0 * reaction_r86));
	
% Species:   id = EGFR_11CC, name = EGFR_11CC, affected by kineticLaw
	xdot(21) = (1/(compartment_cell))*(( 1.0 * reaction_r21) + (-1.0 * reaction_r40) + ( 1.0 * reaction_r73) + (-1.0 * reaction_r74) + ( 1.0 * reaction_r81) + (-1.0 * reaction_r82) + ( 1.0 * reaction_r83) + (-1.0 * reaction_r84));
	
% Species:   id = EGFR_11LG, name = EGFR_11LG, affected by kineticLaw
	xdot(22) = (1/(compartment_cell))*(( 1.0 * reaction_r22) + (-1.0 * reaction_r41) + ( 1.0 * reaction_r71) + (-1.0 * reaction_r72) + ( 1.0 * reaction_r77) + (-1.0 * reaction_r78) + ( 1.0 * reaction_r85) + (-1.0 * reaction_r86));
	
% Species:   id = EGFR_02UU, name = EGFR_02UU, affected by kineticLaw
	xdot(23) = (1/(compartment_cell))*((-1.0 * reaction_r9) + ( 1.0 * reaction_r12) + ( 1.0 * reaction_r29) + (-1.0 * reaction_r42) + (-1.0 * reaction_r87) + ( 1.0 * reaction_r88) + (-1.0 * reaction_r89) + ( 1.0 * reaction_r90));
	
% Species:   id = EGFR_02UG, name = EGFR_02UG, affected by kineticLaw
	xdot(24) = (1/(compartment_cell))*((-1.0 * reaction_r10) + ( 1.0 * reaction_r16) + ( 1.0 * reaction_r31) + (-1.0 * reaction_r43) + ( 1.0 * reaction_r87) + (-1.0 * reaction_r88) + (-1.0 * reaction_r91) + ( 1.0 * reaction_r92));
	
% Species:   id = EGFR_02UL, name = EGFR_02UL, affected by kineticLaw
	xdot(25) = (1/(compartment_cell))*((-1.0 * reaction_r11) + ( 1.0 * reaction_r18) + ( 1.0 * reaction_r33) + (-1.0 * reaction_r44) + ( 1.0 * reaction_r89) + (-1.0 * reaction_r90) + ( 1.0 * reaction_r91) + (-1.0 * reaction_r92));
	
% Species:   id = EGFR_12UU, name = EGFR_12UU, affected by kineticLaw
	xdot(26) = (1/(compartment_cell))*((-1.0 * reaction_r12) + (-1.0 * reaction_r13) + ( 1.0 * reaction_r34) + ( 1.0 * reaction_r42) + (-1.0 * reaction_r93) + ( 1.0 * reaction_r94) + (-1.0 * reaction_r95) + ( 1.0 * reaction_r96) + (-1.0 * reaction_r97) + ( 1.0 * reaction_r98) + (-1.0 * reaction_r99) + ( 1.0 * reaction_r100));
	
% Species:   id = EGFR_12CU, name = EGFR_12CU, affected by kineticLaw
	xdot(27) = (1/(compartment_cell))*((-1.0 * reaction_r14) + ( 1.0 * reaction_r35) + ( 1.0 * reaction_r93) + (-1.0 * reaction_r94) + (-1.0 * reaction_r101) + ( 1.0 * reaction_r102) + (-1.0 * reaction_r103) + ( 1.0 * reaction_r104));
	
% Species:   id = EGFR_12LU, name = EGFR_12LU, affected by kineticLaw
	xdot(28) = (1/(compartment_cell))*((-1.0 * reaction_r15) + ( 1.0 * reaction_r36) + ( 1.0 * reaction_r95) + (-1.0 * reaction_r96) + ( 1.0 * reaction_r101) + (-1.0 * reaction_r102) + (-1.0 * reaction_r105) + ( 1.0 * reaction_r106) + (-1.0 * reaction_r107) + ( 1.0 * reaction_r108));
	
% Species:   id = EGFR_12UG, name = EGFR_12UG, affected by kineticLaw
	xdot(29) = (1/(compartment_cell))*((-1.0 * reaction_r16) + (-1.0 * reaction_r17) + ( 1.0 * reaction_r37) + ( 1.0 * reaction_r43) + ( 1.0 * reaction_r97) + (-1.0 * reaction_r98) + (-1.0 * reaction_r109) + ( 1.0 * reaction_r110) + (-1.0 * reaction_r111) + ( 1.0 * reaction_r112) + (-1.0 * reaction_r113) + ( 1.0 * reaction_r114));
	
% Species:   id = EGFR_12UL, name = EGFR_12UL, affected by kineticLaw
	xdot(30) = (1/(compartment_cell))*((-1.0 * reaction_r18) + (-1.0 * reaction_r19) + ( 1.0 * reaction_r38) + ( 1.0 * reaction_r44) + ( 1.0 * reaction_r99) + (-1.0 * reaction_r100) + ( 1.0 * reaction_r113) + (-1.0 * reaction_r114) + (-1.0 * reaction_r115) + ( 1.0 * reaction_r116));
	
% Species:   id = EGFR_12CG, name = EGFR_12CG, affected by kineticLaw
	xdot(31) = (1/(compartment_cell))*((-1.0 * reaction_r20) + ( 1.0 * reaction_r39) + ( 1.0 * reaction_r103) + (-1.0 * reaction_r104) + ( 1.0 * reaction_r109) + (-1.0 * reaction_r110) + (-1.0 * reaction_r117) + ( 1.0 * reaction_r118) + (-1.0 * reaction_r119) + ( 1.0 * reaction_r120));
	
% Species:   id = EGFR_12CC, name = EGFR_12CC, affected by kineticLaw
	xdot(32) = (1/(compartment_cell))*((-1.0 * reaction_r21) + ( 1.0 * reaction_r40) + ( 1.0 * reaction_r107) + (-1.0 * reaction_r108) + ( 1.0 * reaction_r115) + (-1.0 * reaction_r116) + ( 1.0 * reaction_r117) + (-1.0 * reaction_r118));
	
% Species:   id = EGFR_12LG, name = EGFR_12LG, affected by kineticLaw
	xdot(33) = (1/(compartment_cell))*((-1.0 * reaction_r22) + ( 1.0 * reaction_r41) + ( 1.0 * reaction_r105) + (-1.0 * reaction_r106) + ( 1.0 * reaction_r111) + (-1.0 * reaction_r112) + ( 1.0 * reaction_r119) + (-1.0 * reaction_r120));
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


