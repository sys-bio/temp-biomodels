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
% Model name = Shin_2018_EGFR-PYK2-c-Met interaction network_model
%
% isDescribedBy http://identifiers.org/pubmed/29920512
% is http://identifiers.org/biomodels.db/MODEL1909270001
% is http://identifiers.org/biomodels.db/BIOMD0000000826
%


function main()
%Initial conditions vector
	x0=zeros(13,1);
	x0(1) = 0.109014;
	x0(2) = 6.93991;
	x0(3) = 0.6219;
	x0(4) = 9.29922;
	x0(5) = 2.51016;
	x0(6) = 1.17843;
	x0(7) = 0.0228566;
	x0(8) = 4.67164;
	x0(9) = 0.502111;
	x0(10) = 10.4757;
	x0(11) = 0.49418;
	x0(12) = 0.669043;
	x0(13) = 0.0;


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

% Compartment: id = rootCompartment, name = rootCompartment, constant
	compartment_rootCompartment=1.0;
% Parameter:   id =  EGF, name = EGF
	global_par_EGF=10.0;
% Parameter:   id =  HGF, name = HGF
	global_par_HGF=0.0;
% Parameter:   id =  caSTAT3, name = caSTAT3
	global_par_caSTAT3=0.0;
% Parameter:   id =  kc1, name = kc1
	global_par_kc1=413.048;
% Parameter:   id =  Km1, name = Km1
	global_par_Km1=248.886;
% Parameter:   id =  kc2, name = kc2
	global_par_kc2=1406.05;
% Parameter:   id =  Km2, name = Km2
	global_par_Km2=3.80189;
% Parameter:   id =  Vmax3, name = Vmax3
	global_par_Vmax3=1.03753E-4;
% Parameter:   id =  Km3, name = Km3
	global_par_Km3=2.2856;
% Parameter:   id =  Ki3a, name = Ki3a
	global_par_Ki3a=0.0835603;
% Parameter:   id =  Vmax4, name = Vmax4
	global_par_Vmax4=11.1173;
% Parameter:   id =  kc3, name = kc3
	global_par_kc3=10.7895;
% Parameter:   id =  Km4, name = Km4
	global_par_Km4=90.7821;
% Parameter:   id =  Vs5, name = Vs5
	global_par_Vs5=26.5461;
% Parameter:   id =  Vmax5, name = Vmax5
	global_par_Vmax5=34.0408;
% Parameter:   id =  Km5, name = Km5
	global_par_Km5=4.74242;
% Parameter:   id =  kdeg6, name = kdeg6
	global_par_kdeg6=53.5797;
% Parameter:   id =  Vmax7, name = Vmax7
	global_par_Vmax7=3.34965;
% Parameter:   id =  Km7, name = Km7
	global_par_Km7=3.33426;
% Parameter:   id =  kc9a, name = kc9a
	global_par_kc9a=0.463447;
% Parameter:   id =  kc9b, name = kc9b
	global_par_kc9b=0.988553;
% Parameter:   id =  Km9, name = Km9
	global_par_Km9=34.914;
% Parameter:   id =  Vmax10, name = Vmax10
	global_par_Vmax10=0.530884;
% Parameter:   id =  Km10, name = Km10
	global_par_Km10=9.14113;
% Parameter:   id =  kdeg8, name = kdeg8
	global_par_kdeg8=0.0566239;
% Parameter:   id =  kc11, name = kc11
	global_par_kc11=0.321366;
% Parameter:   id =  Km11, name = Km11
	global_par_Km11=20.6063;
% Parameter:   id =  kc12, name = kc12
	global_par_kc12=2.89734E-4;
% Parameter:   id =  Km12, name = Km12
	global_par_Km12=11.5878;
% Parameter:   id =  Vs13, name = Vs13
	global_par_Vs13=0.0937562;
% Parameter:   id =  Vmax13, name = Vmax13
	global_par_Vmax13=0.354813;
% Parameter:   id =  Km13, name = Km13
	global_par_Km13=38.7258;
% Parameter:   id =  kdeg14, name = kdeg14
	global_par_kdeg14=4.56037;
% Parameter:   id =  Vmax15, name = Vmax15
	global_par_Vmax15=91.4113;
% Parameter:   id =  Km15, name = Km15
	global_par_Km15=6.45654;
% Parameter:   id =  kc17, name = kc17
	global_par_kc17=8.10961E-4;
% Parameter:   id =  Km17, name = Km17
	global_par_Km17=9.81748;
% Parameter:   id =  Vmax18, name = Vmax18
	global_par_Vmax18=0.0606736;
% Parameter:   id =  Km18, name = Km18
	global_par_Km18=9.95405;
% Parameter:   id =  kdeg16, name = kdeg16
	global_par_kdeg16=24.4906;
% Parameter:   id =  kc16, name = kc16
	global_par_kc16=1.1749;
% Parameter:   id =  Km16, name = Km16
	global_par_Km16=528.445;
% Parameter:   id =  kc19, name = kc19
	global_par_kc19=52.723;
% Parameter:   id =  Km19, name = Km19
	global_par_Km19=13.3045;
% Parameter:   id =  kc20, name = kc20
	global_par_kc20=35.6451;
% Parameter:   id =  Km20, name = Km20
	global_par_Km20=24.322;
% Parameter:   id =  kc21, name = kc21
	global_par_kc21=0.00397192;
% Parameter:   id =  Km21, name = Km21
	global_par_Km21=52.723;
% Parameter:   id =  Vmax22, name = Vmax22
	global_par_Vmax22=0.034914;
% Parameter:   id =  Km22, name = Km22
	global_par_Km22=46.4515;
% Parameter:   id =  Vmax2, name = Vmax2
	global_par_Vmax2=112.202;
% Parameter:   id =  Vmax12, name = Vmax12
	global_par_Vmax12=7.63836;
% Parameter:   id =  Vmax20, name = Vmax20
	global_par_Vmax20=0.0483059;
% Parameter:   id =  kc23a, name = kc23a
	global_par_kc23a=7.03072E9;
% Parameter:   id =  kc23b, name = kc23b
	global_par_kc23b=8.43335E8;
% Parameter:   id =  Km23, name = Km23
	global_par_Km23=2.83139;
% Parameter:   id =  Vmax24, name = Vmax24
	global_par_Vmax24=4.39542E9;
% Parameter:   id =  Km24, name = Km24
	global_par_Km24=0.156675;
% Parameter:   id =  kc10, name = kc10
	global_par_kc10=0.00610942;
% Parameter:   id =  Ki9, name = Ki9
	global_par_Ki9=1.65577;
% Parameter:   id =  Ki23, name = Ki23
	global_par_Ki23=13.4896;
% Parameter:   id =  ka25, name = ka25
	global_par_ka25=127.35;
% Parameter:   id =  kd25, name = kd25
	global_par_kd25=11.749;
% Parameter:   id =  kalEMD1, name = kalEMD1
	global_par_kalEMD1=9311.08;
% Parameter:   id =  caEGF, name = caEGF
	global_par_caEGF=0.0891251;
% Parameter:   id =  caHGF, name = caHGF
	global_par_caHGF=0.0090365;
% Parameter:   id =  EGFRtot, name = EGFRtot
	global_par_EGFRtot=398.107;
% Parameter:   id =  STAT3tot, name = STAT3tot
	global_par_STAT3tot=144.212;
% Parameter:   id =  Cbltot, name = Cbltot
	global_par_Cbltot=174.985;
% Parameter:   id =  PTPtot, name = PTPtot
	global_par_PTPtot=296.483;
% Parameter:   id =  ERKtot, name = ERKtot
	global_par_ERKtot=166.725;
% Parameter:   id =  Ki1, name = Ki1
	global_par_Ki1=1.0;
% Parameter:   id =  Ki3b, name = Ki3b
	global_par_Ki3b=1.0;
% Parameter:   id =  Gefitinib, name = Gefitinib
	global_par_Gefitinib=0.0;
% Parameter:   id =  EMD, name = EMD
	global_par_EMD=0.0;
% Parameter:   id =  PF396, name = PF396
	global_par_PF396=0.0;
% Parameter:   id =  Stattictot, name = Stattictot
	global_par_Stattictot=0.0;
% Parameter:   id =  pSTAT3_max, name = pSTAT3_max
	global_par_pSTAT3_max=128.0;
% Parameter:   id =  pERK_max, name = pERK_max
	global_par_pERK_max=163.6;
% Parameter:   id =  c_Met_max, name = c_Met_max
	global_par_c_Met_max=16.7;
% Parameter:   id =  PYK2_max, name = PYK2_max
	global_par_PYK2_max=14.58;
% Parameter:   id =  pSTAT3_norm, name = pSTAT3_norm
% Parameter:   id =  pERK_norm, name = pERK_norm
% Parameter:   id =  c_Met_norm, name = c-Met_norm
% Parameter:   id =  PYK2_norm, name = PYK2_norm
% Parameter:   id =  ModelValue_80, name = Initial for PYK2_max
	global_par_ModelValue_80=14.58;
% Parameter:   id =  ModelValue_79, name = Initial for c_Met_max
	global_par_ModelValue_79=16.7;
% Parameter:   id =  ModelValue_78, name = Initial for pERK_max
	global_par_ModelValue_78=163.6;
% Parameter:   id =  ModelValue_77, name = Initial for pSTAT3_max
	global_par_ModelValue_77=128.0;
% assignmentRule: variable = pSTAT3_norm
	global_par_pSTAT3_norm=x(6)/global_par_ModelValue_77;
% assignmentRule: variable = PYK2_norm
	global_par_PYK2_norm=x(4)/global_par_ModelValue_80;
% assignmentRule: variable = pERK_norm
	global_par_pERK_norm=x(12)/global_par_ModelValue_78;
% assignmentRule: variable = c_Met_norm
	global_par_c_Met_norm=x(8)/global_par_ModelValue_79;

% Reaction: id = v1, name = v1
	reaction_v1=compartment_rootCompartment*Function_for_v1(global_par_EGF, global_par_EGFRtot, x(2), global_par_Gefitinib, global_par_Ki1, global_par_Km1, global_par_caEGF, global_par_kc1, x(1), compartment_rootCompartment);

% Reaction: id = v2, name = v2
	reaction_v2=compartment_rootCompartment*Function_for_v2(global_par_Km2, global_par_Vmax2, x(11), global_par_kc2, x(1), compartment_rootCompartment);

% Reaction: id = v3, name = v3
	reaction_v3=compartment_rootCompartment*Function_for_v3(global_par_EGFRtot, x(2), global_par_Ki3a, global_par_Ki3b, global_par_Km3, global_par_PF396, x(4), global_par_Vmax3, global_par_kc3, x(10), x(1), x(5), compartment_rootCompartment);

% Reaction: id = v4, name = v4
	reaction_v4=compartment_rootCompartment*Function_for_v4(x(2), global_par_Km4, global_par_Vmax4, compartment_rootCompartment);

% Reaction: id = v5, name = v5
	reaction_v5=compartment_rootCompartment*Function_for_v5(global_par_Km5, global_par_Vmax5, global_par_Vs5, x(6), compartment_rootCompartment);

% Reaction: id = v6, name = v6
	reaction_v6=compartment_rootCompartment*Function_for_v6(x(3), global_par_kdeg6, compartment_rootCompartment);

% Reaction: id = v7, name = v7
	reaction_v7=compartment_rootCompartment*Function_for_v7(global_par_Km7, x(3), global_par_Vmax7, compartment_rootCompartment);

% Reaction: id = v8, name = v8
	reaction_v8=compartment_rootCompartment*Function_for_v8(x(4), global_par_kdeg8, compartment_rootCompartment);

% Reaction: id = v9, name = v9
	reaction_v9=compartment_rootCompartment*Function_for_v9(global_par_EMD, global_par_Ki9, global_par_Km9, x(4), global_par_kc9a, global_par_kc9b, x(1), x(9), compartment_rootCompartment);

% Reaction: id = v10, name = v10
	reaction_v10=compartment_rootCompartment*Function_for_v10(global_par_Km10, global_par_Vmax10, x(11), global_par_kc10, x(5), compartment_rootCompartment);

% Reaction: id = v11, name = v11
	reaction_v11=compartment_rootCompartment*Function_for_v11(global_par_Ki3b, global_par_Km11, global_par_PF396, global_par_STAT3tot, x(13), global_par_kc11, x(5), x(6), compartment_rootCompartment);

% Reaction: id = v12, name = v12
	reaction_v12=compartment_rootCompartment*Function_for_v12(global_par_Km12, global_par_Vmax12, x(11), global_par_kc12, x(6), compartment_rootCompartment);

% Reaction: id = v13, name = v13
	reaction_v13=compartment_rootCompartment*Function_for_v13(global_par_Km13, global_par_Vmax13, global_par_Vs13, x(6), compartment_rootCompartment);

% Reaction: id = v14, name = v14
	reaction_v14=compartment_rootCompartment*Function_for_v14(x(7), global_par_kdeg14, compartment_rootCompartment);

% Reaction: id = v15, name = v15
	reaction_v15=compartment_rootCompartment*Function_for_v15(global_par_Km15, global_par_Vmax15, x(7), compartment_rootCompartment);

% Reaction: id = v16, name = v16
	reaction_v16=compartment_rootCompartment*Function_for_v16(global_par_Km16, x(8), global_par_kc16, global_par_kdeg16, x(10), compartment_rootCompartment);

% Reaction: id = v17, name = v17
	reaction_v17=compartment_rootCompartment*Function_for_v17(global_par_HGF, global_par_Km17, x(8), global_par_caHGF, global_par_kc17, compartment_rootCompartment);

% Reaction: id = v18, name = v18
	reaction_v18=compartment_rootCompartment*Function_for_v18(global_par_Km18, global_par_Vmax18, x(9), compartment_rootCompartment);

% Reaction: id = v19, name = v19
	reaction_v19=compartment_rootCompartment*Function_for_v19(global_par_Cbltot, global_par_Km19, global_par_kc19, x(10), x(1), compartment_rootCompartment);

% Reaction: id = v20, name = v20
	reaction_v20=compartment_rootCompartment*Function_for_v20(global_par_Km20, global_par_Vmax20, x(11), global_par_kc20, x(10), compartment_rootCompartment);

% Reaction: id = v21, name = v21
	reaction_v21=compartment_rootCompartment*Function_for_v21(global_par_Km21, global_par_PTPtot, x(11), global_par_kc21, x(1), compartment_rootCompartment);

% Reaction: id = v22, name = v22
	reaction_v22=compartment_rootCompartment*Function_for_v22(global_par_Km22, global_par_Vmax22, x(11), compartment_rootCompartment);

% Reaction: id = v23, name = v23
	reaction_v23=compartment_rootCompartment*Function_for_v23(global_par_EMD, global_par_ERKtot, global_par_Ki23, global_par_Km23, global_par_kc23a, global_par_kc23b, x(1), x(12), x(9), compartment_rootCompartment);

% Reaction: id = v24, name = v24
	reaction_v24=compartment_rootCompartment*Function_for_v24(global_par_Km24, global_par_Vmax24, x(12), compartment_rootCompartment);

% Reaction: id = v25, name = v25
	reaction_v25=compartment_rootCompartment*Function_for_v25(global_par_STAT3tot, x(13), global_par_Stattictot, global_par_ka25, global_par_kd25, x(6), compartment_rootCompartment);

	xdot=zeros(13,1);
	
% Species:   id = pEGFR, name = pEGFR, affected by kineticLaw
	xdot(1) = (1/(compartment_rootCompartment))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2));
	
% Species:   id = EGFRub, name = EGFRub, affected by kineticLaw
	xdot(2) = (1/(compartment_rootCompartment))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v4));
	
% Species:   id = PYK2m, name = PYK2m, affected by kineticLaw
	xdot(3) = (1/(compartment_rootCompartment))*(( 1.0 * reaction_v5) + (-1.0 * reaction_v6));
	
% Species:   id = PYK2, name = PYK2, affected by kineticLaw
	xdot(4) = (1/(compartment_rootCompartment))*(( 1.0 * reaction_v7) + (-1.0 * reaction_v8) + (-1.0 * reaction_v9) + ( 1.0 * reaction_v10));
	
% Species:   id = pPYK2, name = pPYK2, affected by kineticLaw
	xdot(5) = (1/(compartment_rootCompartment))*(( 1.0 * reaction_v9) + (-1.0 * reaction_v10));
	
% Species:   id = pSTAT3, name = pSTAT3, affected by kineticLaw
	xdot(6) = (1/(compartment_rootCompartment))*(( 1.0 * reaction_v11) + (-1.0 * reaction_v12));
	
% Species:   id = cMETm, name = cMETm, affected by kineticLaw
	xdot(7) = (1/(compartment_rootCompartment))*(( 1.0 * reaction_v13) + (-1.0 * reaction_v14));
	
% Species:   id = cMET, name = cMET, affected by kineticLaw
	xdot(8) = (1/(compartment_rootCompartment))*(( 1.0 * reaction_v15) + (-1.0 * reaction_v16) + (-1.0 * reaction_v17) + ( 1.0 * reaction_v18));
	
% Species:   id = pcMET, name = pcMET, affected by kineticLaw
	xdot(9) = (1/(compartment_rootCompartment))*(( 1.0 * reaction_v17) + (-1.0 * reaction_v18));
	
% Species:   id = pCbl, name = pCbl, affected by kineticLaw
	xdot(10) = (1/(compartment_rootCompartment))*(( 1.0 * reaction_v19) + (-1.0 * reaction_v20));
	
% Species:   id = aPTP, name = aPTP, affected by kineticLaw
	xdot(11) = (1/(compartment_rootCompartment))*(( 1.0 * reaction_v21) + (-1.0 * reaction_v22));
	
% Species:   id = pERK, name = pERK, affected by kineticLaw
	xdot(12) = (1/(compartment_rootCompartment))*(( 1.0 * reaction_v23) + (-1.0 * reaction_v24));
	
% Species:   id = STAT3uStattic, name = STAT3uStattic, affected by kineticLaw
	xdot(13) = (1/(compartment_rootCompartment))*(( 1.0 * reaction_v25));
end

function z=STAT3(STAT3tot,pSTAT3,STAT3uStattic), z=(STAT3tot-pSTAT3-STAT3uStattic);end

function z=Function_for_v16(Km16,cMET,kc16,kdeg16,pCbl,rootCompartment), z=((kdeg16+kc16*pCbl*rootCompartment)*cMET*rootCompartment/(Km16+cMET*rootCompartment)/rootCompartment);end

function z=PYK2tot(PYK2,pPYK2), z=(PYK2+pPYK2);end

function z=Stattic(Stattictot,STAT3uStattic), z=(Stattictot-STAT3uStattic);end

function z=Function_for_v9(EMD,Ki9,Km9,PYK2,kc9a,kc9b,pEGFR,pcMET,rootCompartment), z=((kc9a*pEGFR*rootCompartment+kc9b*pcMET*rootCompartment/(1+EMD/Ki9))*PYK2*rootCompartment/(Km9+PYK2*rootCompartment)/rootCompartment);end

function z=Function_for_v5(Km5,Vmax5,Vs5,pSTAT3,rootCompartment), z=((Vs5+Vmax5*pSTAT3*rootCompartment/(Km5+pSTAT3*rootCompartment))/rootCompartment);end

function z=Function_for_v22(Km22,Vmax22,aPTP,rootCompartment), z=(Vmax22*aPTP*rootCompartment/(Km22+aPTP*rootCompartment)/rootCompartment);end

function z=Function_for_v7(Km7,PYK2m,Vmax7,rootCompartment), z=(Vmax7*PYK2m*rootCompartment/(Km7+PYK2m*rootCompartment)/rootCompartment);end

function z=PTP(PTPtot,aPTP), z=(PTPtot-aPTP);end

function z=Function_for_v12(Km12,Vmax12,aPTP,kc12,pSTAT3,rootCompartment), z=((Vmax12+kc12*aPTP*rootCompartment)*pSTAT3*rootCompartment/(Km12+pSTAT3*rootCompartment)/rootCompartment);end

function z=Function_for_v10(Km10,Vmax10,aPTP,kc10,pPYK2,rootCompartment), z=((Vmax10+kc10*aPTP*rootCompartment)*pPYK2*rootCompartment/(Km10+pPYK2*rootCompartment)/rootCompartment);end

function z=Function_for_v13(Km13,Vmax13,Vs13,pSTAT3,rootCompartment), z=((Vs13+Vmax13*pSTAT3*rootCompartment/(Km13+pSTAT3*rootCompartment))/rootCompartment);end

function z=Function_for_v21(Km21,PTPtot,aPTP,kc21,pEGFR,rootCompartment,kc21*pEGFR*rootCompartment*PTP(PTPtot), z=(aPTP*rootCompartment)/(Km21+PTP(PTPtot,aPTP*rootCompartment))/rootCompartment);end

function z=Function_for_v11(Ki3b,Km11,PF396,STAT3tot,STAT3uStattic,kc11,pPYK2,pSTAT3,rootCompartment,pSTAT3*rootCompartment,pSTAT3*rootCompartment), z=(kc11*pPYK2*rootCompartment/(1+PF396/Ki3b)*STAT3(STAT3tot,STAT3uStattic*rootCompartment)/(Km11+STAT3(STAT3tot,STAT3uStattic*rootCompartment))/rootCompartment);end

function z=Function_for_v25(STAT3tot,STAT3uStattic,Stattictot,ka25,kd25,pSTAT3,rootCompartment,(ka25*STAT3(STAT3tot,pSTAT3*rootCompartment), z=(STAT3uStattic*rootCompartment)*Stattic(Stattictot,STAT3uStattic*rootCompartment)-kd25*STAT3uStattic*rootCompartment)/rootCompartment);end

function z=Function_for_v18(Km18,Vmax18,pcMET,rootCompartment), z=(Vmax18*pcMET*rootCompartment/(Km18+pcMET*rootCompartment)/rootCompartment);end

function z=Function_for_v14(cMETm,kdeg14,rootCompartment), z=(kdeg14*cMETm*rootCompartment/rootCompartment);end

function z=Function_for_v8(PYK2,kdeg8,rootCompartment), z=(kdeg8*PYK2*rootCompartment/rootCompartment);end

function z=Function_for_v20(Km20,Vmax20,aPTP,kc20,pCbl,rootCompartment), z=((Vmax20+kc20*aPTP*rootCompartment)*pCbl*rootCompartment/(Km20+pCbl*rootCompartment)/rootCompartment);end

function z=Function_for_v24(Km24,Vmax24,pERK,rootCompartment), z=(Vmax24*pERK*rootCompartment/(Km24+pERK*rootCompartment)/rootCompartment);end

function z=Cbl(Cbltot,pCbl), z=(Cbltot-pCbl);end

function z=Function_for_v17(HGF,Km17,cMET,caHGF,kc17,rootCompartment), z=((kc17*HGF+caHGF)*cMET*rootCompartment/(Km17+cMET*rootCompartment)/rootCompartment);end

function z=Function_for_v2(Km2,Vmax2,aPTP,kc2,pEGFR,rootCompartment), z=((Vmax2+kc2*aPTP*rootCompartment)*pEGFR*rootCompartment/(Km2+pEGFR*rootCompartment)/rootCompartment);end

function z=Function_for_v4(EGFRub,Km4,Vmax4,rootCompartment), z=(Vmax4*EGFRub*rootCompartment/(Km4+EGFRub*rootCompartment)/rootCompartment);end

function z=ERK(ERKtot,pERK), z=(ERKtot-pERK);end

function z=Function_for_v6(PYK2m,kdeg6,rootCompartment), z=(kdeg6*PYK2m*rootCompartment/rootCompartment);end

function z=EGFR(EGFRtot,pEGFR,EGFRub), z=(EGFRtot-pEGFR-EGFRub);end

function z=Function_for_v15(Km15,Vmax15,cMETm,rootCompartment), z=(Vmax15*cMETm*rootCompartment/(Km15+cMETm*rootCompartment)/rootCompartment);end

function z=Function_for_v3(EGFRtot,EGFRub,Ki3a,Ki3b,Km3,PF396,PYK2,Vmax3,kc3,pCbl,pEGFR,pPYK2,rootCompartment,pEGFR*rootCompartment,pEGFR*rootCompartment), z=((Vmax3+kc3*pCbl*rootCompartment)*EGFR(EGFRtot,EGFRub*rootCompartment)/(Km3+EGFR(EGFRtot,EGFRub*rootCompartment))*Ki3a/(Ki3a+PYK2tot(PYK2*rootCompartment,pPYK2*rootCompartment)/(1+PF396/Ki3b))/rootCompartment);end

function z=Function_for_v1(EGF,EGFRtot,EGFRub,Gefitinib,Ki1,Km1,caEGF,kc1,pEGFR,rootCompartment,pEGFR*rootCompartment,pEGFR*rootCompartment), z=(kc1*(EGF/(1+Gefitinib/Ki1)+caEGF)*EGFR(EGFRtot,EGFRub*rootCompartment)/(Km1+EGFR(EGFRtot,EGFRub*rootCompartment))/rootCompartment);end

function z=Function_for_v23(EMD,ERKtot,Ki23,Km23,kc23a,kc23b,pEGFR,pERK,pcMET,rootCompartment), z=((kc23a*pcMET*rootCompartment/(1+EMD/Ki23)+kc23b*pEGFR*rootCompartment)*ERK(ERKtot,pERK*rootCompartment)/(Km23+ERK(ERKtot,pERK*rootCompartment))/rootCompartment);end

function z=Function_for_v19(Cbltot,Km19,kc19,pCbl,pEGFR,rootCompartment,kc19*pEGFR*rootCompartment*Cbl(Cbltot), z=(pCbl*rootCompartment)/(Km19+Cbl(Cbltot,pCbl*rootCompartment))/rootCompartment);end

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


