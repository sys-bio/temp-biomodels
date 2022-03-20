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
% Model name = Calzone2007_CellCycle
%
% is http://identifiers.org/biomodels.db/MODEL1509031628
% is http://identifiers.org/biomodels.db/BIOMD0000000144
% isDescribedBy http://identifiers.org/pubmed/17667953
%


function main()
%Initial conditions vector
	x0=zeros(18,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.8;
	x0(4) = 0.0;
	x0(5) = 0.8;
	x0(6) = 1.0;
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
	x0(18) = 1.0;


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

% Compartment: id = nuclei, name = nuclei, constant
	compartment_nuclei=1.0;
% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Parameter:   id =  ksc, name = ksc
	global_par_ksc=0.01;
% Parameter:   id =  kdc, name = kdcp
	global_par_kdc=0.01;
% Parameter:   id =  kdnp, name = kdnp
	global_par_kdnp=0.01;
% Parameter:   id =  kdn, name = kdnpp
	global_par_kdn=1.5;
% Parameter:   id =  kaie, name = kaie
	global_par_kaie=1.0;
% Parameter:   id =  kiie, name = kiie
	global_par_kiie=0.4;
% Parameter:   id =  kafzy, name = kafzy
	global_par_kafzy=1.0;
% Parameter:   id =  kifzy, name = kifzy
	global_par_kifzy=0.2;
% Parameter:   id =  kweep, name = kweep
	global_par_kweep=0.005;
% Parameter:   id =  kwee, name = kweepp
	global_par_kwee=1.0;
% Parameter:   id =  kstgp, name = kstgp
	global_par_kstgp=0.2;
% Parameter:   id =  kstg, name = kstgpp
	global_par_kstg=2.0;
% Parameter:   id =  ksstg, name = ksstg
	global_par_ksstg=0.0;
% Parameter:   id =  kdstg, name = kdstg
	global_par_kdstg=0.0;
% Parameter:   id =  kastgp, name = kastgp
	global_par_kastgp=0.0;
% Parameter:   id =  kastg, name = kastgpp
	global_par_kastg=1.0;
% Parameter:   id =  kistg, name = kistg
	global_par_kistg=0.3;
% Parameter:   id =  kawee, name = kawee
	global_par_kawee=0.3;
% Parameter:   id =  kiweep, name = kiweep
	global_par_kiweep=0.01;
% Parameter:   id =  kiwee, name = kiweepp
	global_par_kiwee=1.0;
% Parameter:   id =  kt, name = kin
	global_par_kt=0.15;
% Parameter:   id =  Jaie, name = Jaie
	global_par_Jaie=0.01;
% Parameter:   id =  Jiie, name = Jiie
	global_par_Jiie=0.01;
% Parameter:   id =  Jafzy, name = Jafzy
	global_par_Jafzy=0.01;
% Parameter:   id =  Jifzy, name = Jifzy
	global_par_Jifzy=0.01;
% Parameter:   id =  Jastg, name = Jastg
	global_par_Jastg=0.05;
% Parameter:   id =  Jistg, name = Jistg
	global_par_Jistg=0.05;
% Parameter:   id =  Jawee, name = Jawee
	global_par_Jawee=0.05;
% Parameter:   id =  Jiwee, name = Jiwee
	global_par_Jiwee=0.05;
% Parameter:   id =  Jm, name = Jm
	global_par_Jm=0.05;
% Parameter:   id =  kdmp, name = kdmp
	global_par_kdmp=0.002;
% Parameter:   id =  kdm, name = kdmpp
	global_par_kdm=0.2;
% Parameter:   id =  koutw_1, name = koutw
	global_par_koutw_1=0.01;
% Parameter:   id =  kinw_1, name = kinw
	global_par_kinw_1=0.04;
% Parameter:   id =  kouts_1, name = kouts
	global_par_kouts_1=0.02;
% Parameter:   id =  kins_1, name = kins
	global_par_kins_1=0.08;
% Parameter:   id =  kez_1, name = kez
	global_par_kez_1=0.5;
% Parameter:   id =  factor_1, name = factor
	global_par_factor_1=1.95;
% Parameter:   id =  E_1, name = E
	global_par_E_1=7.0E-5;
% Parameter:   id =  ksxp_1, name = ksxp
	global_par_ksxp_1=0.001;
% Parameter:   id =  ksxm_1, name = ksxm
	global_par_ksxm_1=5.0E-4;
% Parameter:   id =  kout_1, name = kout
	global_par_kout_1=0.0;
% Parameter:   id =  CycBT, name = CycBT
% Parameter:   id =  StringT, name = StringT
	global_par_StringT=0.8;
% Parameter:   id =  Wee1T, name = Wee1T
	global_par_Wee1T=0.8;
% Parameter:   id =  StgPT, name = StgPT
% assignmentRule: variable = CycBT
	global_par_CycBT=(1-x(18)*global_par_E_1)*(x(1)+x(2))+x(18)*global_par_E_1*(x(10)+x(11));
% assignmentRule: variable = StgPT
	global_par_StgPT=(1-x(18)*global_par_E_1)*x(3)+x(18)*global_par_E_1*x(14);
% assignmentRule: variable = Wee1Pc
	x(5)=(global_par_Wee1T-x(18)*global_par_E_1*(x(13)+x(12)))/(1-x(18)*global_par_E_1)-x(4);

% Reaction: id = R_1, name = Synthesis of MPFc
	reaction_R_1=global_par_ksc*compartment_cytoplasm;

% Reaction: id = R_2, name = Activation of MPFc
	reaction_R_2=compartment_cytoplasm*(global_par_kstgp+global_par_kstg*x(3))*x(2);

% Reaction: id = R_3, name = Inactivation of MPFc
	reaction_R_3=compartment_cytoplasm*(global_par_kweep+global_par_kwee*x(4))*x(1);

% Reaction: id = R_6, name = Degradation of cyclin
	reaction_R_6=compartment_cytoplasm*global_par_kdc*x(2);

% Reaction: id = R_7, name = degradation of cyclin
	reaction_R_7=compartment_cytoplasm*global_par_kdc*x(1);

% Reaction: id = R_8, name = Inactivation of Wee1c
	reaction_R_8=compartment_cytoplasm*(global_par_kiweep+global_par_kiwee*x(1))*x(4)/(global_par_Jiwee+x(4));

% Reaction: id = R_9, name = Activation of Wee1c
	reaction_R_9=compartment_cytoplasm*global_par_kawee*x(5)/(global_par_Jawee+x(5));

% Reaction: id = R_10, name = mRNA of Stg
	reaction_R_10=compartment_nuclei*(global_par_kdmp*x(6)/(global_par_Jm+x(6))+global_par_kdm*x(7)*x(6));

% Reaction: id = R_12, name = Synthesis of Stg
	reaction_R_12=compartment_cytoplasm*global_par_ksstg*x(6);

% Reaction: id = R_13, name = activation of Stgc
	reaction_R_13=compartment_cytoplasm*(global_par_kastgp+global_par_kastg*x(1))*x(8)/(global_par_Jastg+x(8));

% Reaction: id = R_14, name = inactivation of Stgc
	reaction_R_14=compartment_cytoplasm*global_par_kistg*x(3)/(global_par_Jistg+x(3));

% Reaction: id = R_15, name = degradation of Stgc
	reaction_R_15=compartment_cytoplasm*global_par_kdstg*x(8);

% Reaction: id = R_16, name = degradation of active Stgc
	reaction_R_16=compartment_cytoplasm*global_par_kdstg*x(3);

% Reaction: id = R_19, name = export of MPF from cytoplasm
	reaction_R_19=compartment_cytoplasm*global_par_kt*x(1)*global_par_E_1*x(18)/(1-x(18)*global_par_E_1);

% Reaction: id = importofMPFintocytoplasm_1, name = import of MPF into cytoplasm
	reaction_importofMPFintocytoplasm_1=compartment_nuclei*global_par_kout_1*x(10)*global_par_E_1*x(18)/(1-x(18)*global_par_E_1);

% Reaction: id = _16, name = import of MPF into nucleus
	reaction__16=compartment_cytoplasm*global_par_kt*x(1);

% Reaction: id = exportofMPFfromnucleus_1, name = export of MPF from nucleus
	reaction_exportofMPFfromnucleus_1=compartment_nuclei*global_par_kout_1*x(10);

% Reaction: id = importofpreMPFintocytoplaslm_1, name = import of preMPF into cytoplasm
	reaction_importofpreMPFintocytoplaslm_1=compartment_nuclei*global_par_kout_1*x(11)*x(18)*global_par_E_1/(1-x(18)*global_par_E_1);

% Reaction: id = R_20, name = export of preMPF from cytoplasm
	reaction_R_20=compartment_cytoplasm*global_par_kt*x(2)*global_par_E_1*x(18)/(1-x(18)*global_par_E_1);

% Reaction: id = _18, name = import of preMPF into nucleus
	reaction__18=compartment_cytoplasm*global_par_kt*x(2);

% Reaction: id = exportofpreMPFnfromnucleus_1, name = export of preMPFn from nucleus
	reaction_exportofpreMPFnfromnucleus_1=compartment_nuclei*global_par_kout_1*x(11);

% Reaction: id = R_21, name = export of Wee1P from nucleus
	reaction_R_21=compartment_nuclei*global_par_koutw_1*x(12);

% Reaction: id = _182_1, name = import of  Wee1P into cytoplasm
	reaction__182_1=compartment_nuclei*global_par_koutw_1*x(12)*x(18)*global_par_E_1/(1-x(18)*global_par_E_1);

% Reaction: id = R_22, name = export of Wee1P from cytoplasm
	reaction_R_22=compartment_cytoplasm*global_par_kinw_1*x(5)*global_par_E_1*x(18)/(1-x(18)*global_par_E_1);

% Reaction: id = _20, name = import of Wee1P into nucleus
	reaction__20=compartment_cytoplasm*global_par_kinw_1*x(5);

% Reaction: id = R_23, name = export of Wee1 from nucleus
	reaction_R_23=compartment_nuclei*global_par_koutw_1*x(13);

% Reaction: id = _22, name = import of Wee1 into cytoplasm
	reaction__22=compartment_nuclei*global_par_koutw_1*x(13)*x(18)*global_par_E_1/(1-x(18)*global_par_E_1);

% Reaction: id = R_24, name = export of Wee1c from cytoplasm
	reaction_R_24=compartment_cytoplasm*global_par_kinw_1*x(4)*global_par_E_1*x(18)/(1-x(18)*global_par_E_1);

% Reaction: id = _24, name = import of Wee1 into nucleus
	reaction__24=compartment_cytoplasm*global_par_kinw_1*x(4);

% Reaction: id = R_25, name = export of StgP from nucleus
	reaction_R_25=compartment_nuclei*global_par_kouts_1*x(14);

% Reaction: id = _26, name = import of StgP into cytoplasm
	reaction__26=compartment_nuclei*global_par_kouts_1*x(14)*global_par_E_1*x(18)/(1-x(18)*global_par_E_1);

% Reaction: id = R_26, name = export of StgP from cytoplasm
	reaction_R_26=compartment_cytoplasm*global_par_kins_1*x(3)*global_par_E_1*x(18)/(1-x(18)*global_par_E_1);

% Reaction: id = _28, name = import of StgP into nucleus
	reaction__28=compartment_cytoplasm*global_par_kins_1*x(3);

% Reaction: id = R_27, name = export of Stg from nucleus
	reaction_R_27=compartment_nuclei*global_par_kouts_1*x(15);

% Reaction: id = _30, name = import of Stg into cytoplasm
	reaction__30=compartment_nuclei*global_par_kouts_1*x(15)*global_par_E_1*x(18)/(1-x(18)*global_par_E_1);

% Reaction: id = R_28, name = export of Stg from cytoplasm
	reaction_R_28=compartment_cytoplasm*global_par_kins_1*x(8)*global_par_E_1*x(18)/(1-x(18)*global_par_E_1);

% Reaction: id = _32, name = import of Stg into nucleus
	reaction__32=compartment_cytoplasm*global_par_kins_1*x(8);

% Reaction: id = R_29, name = activation of MPFn
	reaction_R_29=compartment_nuclei*(global_par_kstgp+global_par_kstg*x(14))*x(11);

% Reaction: id = R_30, name = inactivation of MPFn
	reaction_R_30=compartment_nuclei*(global_par_kweep+global_par_kwee*x(13))*x(10);

% Reaction: id = R_33, name = degradation of preMPFn
	reaction_R_33=compartment_nuclei*(global_par_kdnp+global_par_kdn*x(16))*x(11);

% Reaction: id = R_34, name = degradation of MPFn
	reaction_R_34=compartment_nuclei*(global_par_kdnp+global_par_kdn*x(16))*x(10);

% Reaction: id = R_37, name = activation of intermediary enzyme
	reaction_R_37=compartment_nuclei*global_par_kiie*x(17)/(global_par_Jiie+x(17));

% Reaction: id = R_38, name = inactivation of intermediary enzyme
	reaction_R_38=compartment_nuclei*global_par_kaie*(1-x(17))*x(10)/(global_par_Jaie+1-x(17));

% Reaction: id = R_39, name = activation of FZY
	reaction_R_39=compartment_nuclei*global_par_kafzy*x(17)*(1-x(16))/(global_par_Jafzy+1-x(16));

% Reaction: id = R_40, name = inactivation of FZY
	reaction_R_40=compartment_nuclei*global_par_kifzy*x(16)/(global_par_Jifzy+x(16));

% Reaction: id = R_41, name = inactivation of Wee1n
	reaction_R_41=compartment_nuclei*(global_par_kiweep+global_par_kiwee*x(10))*x(13)/(global_par_Jiwee+x(13));

% Reaction: id = R_42, name = activation of Wee1n
	reaction_R_42=compartment_nuclei*global_par_kawee*x(12)/(global_par_Jawee+x(12));

% Reaction: id = R_43, name = activation of StgPn
	reaction_R_43=compartment_nuclei*(global_par_kastgp+global_par_kastg*x(10))*x(15)/(global_par_Jastg+x(15));

% Reaction: id = R_44, name = inactivation of StgPn
	reaction_R_44=compartment_nuclei*global_par_kistg*x(14)/(global_par_Jistg+x(14));

% Reaction: id = R_45, name = degradation of Stgn
	reaction_R_45=compartment_nuclei*global_par_kdstg*x(15);

% Reaction: id = R_46, name = degradation of StgPn
	reaction_R_46=compartment_nuclei*global_par_kdstg*x(14);

% Reaction: id = Nuclei_1, name = Nuclei
	reaction_Nuclei_1=0;

% Reaction: id = _50, name = Zygotic mRNA
	reaction__50=compartment_nuclei*global_par_ksxm_1*x(18);

% Reaction: id = _51, name = Zygotic proteins
	reaction__51=compartment_cytoplasm*global_par_ksxp_1*x(9);

%Event: id=
	event_=x(16) >= global_par_kez_1;

	if(event_) 
		x(18)=global_par_factor_1*x(18);
		x(10)=x(10)/1.95;
		x(11)=x(11)/1.95;
		x(13)=x(13)/1.95;
		x(12)=x(12)/1.95;
		x(4)=x(4)*(1-x(18)*global_par_E_1)/(1-1.95*x(18)*global_par_E_1);
		x(15)=x(15)/1.95;
		x(3)=x(3)*(1-x(18)*global_par_E_1)/(1-1.95*x(18)*global_par_E_1);
		x(8)=x(8)*(1-x(18)*global_par_E_1)/(1-1.95*x(18)*global_par_E_1);
		x(14)=x(14)/1.95;
		x(1)=x(1)*(1-x(18)*global_par_E_1)/(1-1.95*x(18)*global_par_E_1);
	end

	xdot=zeros(18,1);
	
% Species:   id = MPFc, name = MPFc, affected by kineticLaw
	xdot(1) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R_1) + ( 1.0 * reaction_R_2) + (-1.0 * reaction_R_3) + (-1.0 * reaction_R_7) + (-1.0 * reaction_R_19) + ( 1.0 * reaction_importofMPFintocytoplasm_1));
	
% Species:   id = preMPFc, name = preMPFc, affected by kineticLaw
	xdot(2) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R_2) + ( 1.0 * reaction_R_3) + (-1.0 * reaction_R_6) + ( 1.0 * reaction_importofpreMPFintocytoplaslm_1) + (-1.0 * reaction_R_20));
	
% Species:   id = StgPc, name = StgPc, affected by kineticLaw
	xdot(3) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R_13) + (-1.0 * reaction_R_14) + (-1.0 * reaction_R_16) + ( 1.0 * reaction__26) + (-1.0 * reaction_R_26));
	
% Species:   id = Wee1c, name = Wee1c, affected by kineticLaw
	xdot(4) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R_8) + ( 1.0 * reaction_R_9) + ( 1.0 * reaction__22) + (-1.0 * reaction_R_24));
	
% Species:   id = Wee1Pc, name = Wee1Pc, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = Stgm, name = Stgm, affected by kineticLaw
	xdot(6) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R_10));
	
% Species:   id = Xp, name = Xp, affected by kineticLaw
	xdot(7) = (1/(compartment_cytoplasm))*(( 1.0 * reaction__51));
	
% Species:   id = Stgc, name = Stgc, affected by kineticLaw
	xdot(8) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R_12) + (-1.0 * reaction_R_13) + ( 1.0 * reaction_R_14) + (-1.0 * reaction_R_15) + ( 1.0 * reaction__30) + (-1.0 * reaction_R_28));
	
% Species:   id = Xm, name = Xm, affected by kineticLaw
	xdot(9) = (1/(compartment_cytoplasm))*(( 1.0 * reaction__50));
	
% Species:   id = MPFn, name = MPFn, affected by kineticLaw
	xdot(10) = (1/(compartment_nuclei))*(( 1.0 * reaction__16) + (-1.0 * reaction_exportofMPFfromnucleus_1) + ( 1.0 * reaction_R_29) + (-1.0 * reaction_R_30) + (-1.0 * reaction_R_34));
	
% Species:   id = preMPFn, name = preMPFn, affected by kineticLaw
	xdot(11) = (1/(compartment_nuclei))*(( 1.0 * reaction__18) + (-1.0 * reaction_exportofpreMPFnfromnucleus_1) + (-1.0 * reaction_R_29) + ( 1.0 * reaction_R_30) + (-1.0 * reaction_R_33));
	
% Species:   id = Wee1Pn, name = Wee1Pn, affected by kineticLaw
	xdot(12) = (1/(compartment_nuclei))*((-1.0 * reaction_R_21) + ( 1.0 * reaction__20) + ( 1.0 * reaction_R_41) + (-1.0 * reaction_R_42));
	
% Species:   id = Wee1n, name = Wee1n, affected by kineticLaw
	xdot(13) = (1/(compartment_nuclei))*((-1.0 * reaction_R_23) + ( 1.0 * reaction__24) + (-1.0 * reaction_R_41) + ( 1.0 * reaction_R_42));
	
% Species:   id = StgPn, name = StgPn, affected by kineticLaw
	xdot(14) = (1/(compartment_nuclei))*((-1.0 * reaction_R_25) + ( 1.0 * reaction__28) + ( 1.0 * reaction_R_43) + (-1.0 * reaction_R_44) + (-1.0 * reaction_R_46));
	
% Species:   id = Stgn, name = Stgn, affected by kineticLaw
	xdot(15) = (1/(compartment_nuclei))*((-1.0 * reaction_R_27) + ( 1.0 * reaction__32) + (-1.0 * reaction_R_43) + ( 1.0 * reaction_R_44) + (-1.0 * reaction_R_45));
	
% Species:   id = FZYa, name = FZYa, affected by kineticLaw
	xdot(16) = (1/(compartment_nuclei))*(( 1.0 * reaction_R_39) + (-1.0 * reaction_R_40));
	
% Species:   id = IEa_1, name = IEa_1, affected by kineticLaw
	xdot(17) = (1/(compartment_nuclei))*((-1.0 * reaction_R_37) + ( 1.0 * reaction_R_38));
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(18) = (1/(compartment_nuclei))*(( 1.0 * reaction_Nuclei_1));
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


