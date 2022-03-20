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
% Model name = Lai2007_O2_Transport_Metabolism
%
% is http://identifiers.org/biomodels.db/MODEL1004170000
% is http://identifiers.org/biomodels.db/BIOMD0000000248
% isDescribedBy http://identifiers.org/pubmed/17380394
% isDerivedFrom http://identifiers.org/pubmed/16636861
% isDerivedFrom http://identifiers.org/pubmed/10898733
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(10) = 0.03969;
	x0(11) = 0.0374;
	x0(1) = 8.198857;
	x0(2) = 40.98942;
	x0(3) = 0.001142;
	x0(4) = 1.01056;
	x0(5) = 0.5;
	x0(6) = 5.281527;
	x0(7) = 0.4084824;
	x0(8) = 0.03969;
	x0(9) = 0.0374;


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

% Compartment: id = Capillary, name = Capillary, constant
	compartment_Capillary=2.0979;
% Compartment: id = Tissue, name = Tissue, constant
	compartment_Tissue=27.8721;
% Parameter:   id =  StO2m, name = StO2m
% Parameter:   id =  RStO2m, name = RStO2m
% Parameter:   id =  Katpase, name = Katpase
% Parameter:   id =  KatpaseW, name = KatpaseW
	global_par_KatpaseW=0.3207601;
% Parameter:   id =  Kadp, name = Kadp
	global_par_Kadp=0.058;
% Parameter:   id =  Kia, name = Kia
	global_par_Kia=0.135;
% Parameter:   id =  Kiq, name = Kiq
	global_par_Kiq=3.5;
% Parameter:   id =  Kib, name = Kib
	global_par_Kib=3.9;
% Parameter:   id =  Kp, name = Kp
	global_par_Kp=3.8;
% Parameter:   id =  Kb, name = Kb
	global_par_Kb=1.11;
% Parameter:   id =  Km, name = Km
	global_par_Km=7.0E-4;
% Parameter:   id =  VfCK, name = VfCK
	global_par_VfCK=6000.0;
% Parameter:   id =  VrCK, name = VrCK
	global_par_VrCK=3008.65837589001;
% Parameter:   id =  QRm, name = QRm
	global_par_QRm=0.688;
% Parameter:   id =  QWm, name = QWm
	global_par_QWm=3.118;
% Parameter:   id =  Qm, name = Qm
% Parameter:   id =  Qc, name = Qc
	global_par_Qc=8.0;
% Parameter:   id =  PSR, name = PSR
	global_par_PSR=134.2828;
% Parameter:   id =  PSE, name = PSE
	global_par_PSE=20000.0;
% Parameter:   id =  PSm, name = PSm
% Parameter:   id =  nH, name = nH
	global_par_nH=2.7;
% Parameter:   id =  Hct, name = Hct
	global_par_Hct=0.45;
% Parameter:   id =  Wmc, name = Wmc
	global_par_Wmc=0.8064;
% Parameter:   id =  CmcMb, name = CmcMb
	global_par_CmcMb=0.5;
% Parameter:   id =  CrbcHb, name = CrbcHb
	global_par_CrbcHb=5.18;
% Parameter:   id =  KMb, name = KMb
	global_par_KMb=308.642;
% Parameter:   id =  KHb, name = KHb
	global_par_KHb=7800.7;
% Parameter:   id =  tE, name = tE
	global_par_tE=3.0;
% Parameter:   id =  CTart, name = CTart
	global_par_CTart=9.199981;
% Parameter:   id =  Vmax, name = Vmax
% Parameter:   id =  VmaxM, name = VmaxM
	global_par_VmaxM=53.5150933;
% Parameter:   id =  VmaxH, name = VmaxH
	global_par_VmaxH=34.68714;
% Parameter:   id =  VmaxVH, name = VmaxVH
	global_par_VmaxVH=23.11702;
% Parameter:   id =  KatpaseE, name = KatpaseE
% Parameter:   id =  KatpaseM, name = KatpaseM
	global_par_KatpaseM=1.71080439028658;
% Parameter:   id =  KatpaseH, name = KatpaseH
	global_par_KatpaseH=2.2581564;
% Parameter:   id =  KatpaseVH, name = KatpaseVH
	global_par_KatpaseVH=3.3423645;
% Parameter:   id =  dQMm, name = dQMm
% Parameter:   id =  dQMmM, name = dQMmM
	global_par_dQMmM=7.9167374;
% Parameter:   id =  dQMmH, name = dQMmH
	global_par_dQMmH=9.42198;
% Parameter:   id =  dQMmVH, name = dQMmVH
	global_par_dQMmVH=12.74981;
% Parameter:   id =  tauQm, name = tauQm
% Parameter:   id =  tauQmM, name = tauQmM
	global_par_tauQmM=0.32;
% Parameter:   id =  tauQmH, name = tauQmH
	global_par_tauQmH=0.396;
% Parameter:   id =  tauQmVH, name = tauQmVH
	global_par_tauQmVH=0.42;
% Parameter:   id =  StO2mW, name = StO2mW
	global_par_StO2mW=81.17123516;
% Parameter:   id =  exercise_level, name = exercise_level
	global_par_exercise_level=3.0;
% Parameter:   id =  ATPase_flux_mM, name = ATPase_flux_mM
% Parameter:   id =  CK_flux_mM, name = CK_flux_mM
% Parameter:   id =  oxygen_phosph, name = oxygen_phosphorilation_rate_mM
% rateRule: variable = CFcap
x(8) = x(10);
% rateRule: variable = CFtis
x(9) = x(11);
% assignmentRule: variable = Katpase
	global_par_Katpase=piecewise(global_par_KatpaseW, time <= global_par_tE, global_par_KatpaseE);
% assignmentRule: variable = Qm
	global_par_Qm=piecewise(global_par_QWm, time <= global_par_tE, global_par_QWm+global_par_dQMm*(1-exp((global_par_tE-time)/global_par_tauQm)));
% assignmentRule: variable = PSm
	global_par_PSm=global_par_PSR+(global_par_PSE-global_par_PSR)*(1-exp((global_par_QRm-global_par_Qm)/global_par_Qc));
% assignmentRule: variable = StO2m
	global_par_StO2m=100*(global_par_Hct*global_par_CrbcHb*global_par_KHb*x(8)^global_par_nH/(1+global_par_KHb*x(8)^global_par_nH)*compartment_Capillary+global_par_Wmc*global_par_CmcMb*global_par_KMb*x(9)/(1+global_par_KMb*x(9))*compartment_Tissue)/(global_par_CrbcHb*global_par_Hct*compartment_Capillary+global_par_CmcMb*global_par_Wmc*compartment_Tissue);
% assignmentRule: variable = RStO2m
	global_par_RStO2m=global_par_StO2m/global_par_StO2mW-1;
% assignmentRule: variable = Vmax
	global_par_Vmax=piecewise(global_par_VmaxM, global_par_exercise_level == 1, piecewise(global_par_VmaxH, global_par_exercise_level == 2, global_par_VmaxVH));
% assignmentRule: variable = KatpaseE
	global_par_KatpaseE=piecewise(global_par_KatpaseM, global_par_exercise_level == 1, piecewise(global_par_KatpaseH, global_par_exercise_level == 2, global_par_KatpaseVH));
% assignmentRule: variable = dQMm
	global_par_dQMm=piecewise(global_par_dQMmM, global_par_exercise_level == 1, piecewise(global_par_dQMmH, global_par_exercise_level == 2, global_par_dQMmVH));
% assignmentRule: variable = tauQm
	global_par_tauQm=piecewise(global_par_tauQmM, global_par_exercise_level == 1, piecewise(global_par_tauQmH, global_par_exercise_level == 2, global_par_tauQmVH));
% assignmentRule: variable = ATPase_flux_mM
	global_par_ATPase_flux_mM=reaction_ATPase/compartment_Tissue;
% assignmentRule: variable = CK_flux_mM
	global_par_CK_flux_mM=1*reaction_CreatineKinase/compartment_Tissue;
% assignmentRule: variable = oxygen_phosph
	global_par_oxygen_phosph=reaction_OxidativePhosphorylation/compartment_Tissue*6;

% Reaction: id = ATPase, name = ATPase
	reaction_ATPase=compartment_Tissue*global_par_Katpase*x(1);

% Reaction: id = OxidativePhosphorylation, name = OxidativePhosphorylation
	reaction_OxidativePhosphorylation=compartment_Tissue*global_par_Vmax*x(9)/(global_par_Km+x(9))*x(3)/(global_par_Kadp+x(3));

% Reaction: id = ConvectionTransport, name = ConvectionTransport
	reaction_ConvectionTransport=global_par_Qm*(global_par_CTart-x(6));

% Reaction: id = DiffusionTransport, name = DiffusionTransport
	reaction_DiffusionTransport=global_par_PSm*(x(8)-x(9));

% Reaction: id = CreatineKinase, name = CreatineKinase
	reaction_CreatineKinase=compartment_Tissue*(global_par_VfCK*x(3)*x(2)/(global_par_Kb*global_par_Kia)-global_par_VrCK*x(4)*x(1)/(global_par_Kiq*global_par_Kp))/((global_par_Kia+x(3))/global_par_Kia+x(1)/global_par_Kiq+x(2)/global_par_Kib+x(3)*x(2)/(global_par_Kb*global_par_Kia)+x(4)*x(1)/(global_par_Kiq*global_par_Kp));

	xdot=zeros(11,1);
	% rateRule: variable = CFcap
	xdot(10) = (global_par_Qm*(global_par_CTart-x(6))-global_par_PSm*(x(8)-x(9)))*1/compartment_Capillary/(1+4*global_par_Hct*global_par_CrbcHb*global_par_KHb*global_par_nH*x(8)^(global_par_nH-1)/(1+global_par_KHb*x(8)^global_par_nH)^2);
	% rateRule: variable = CFtis
	xdot(11) = (global_par_PSm*(x(8)-x(9))/compartment_Tissue-global_par_Vmax*x(9)/(global_par_Km+x(9))*x(3)/(global_par_Kadp+x(3)))/(1+global_par_Wmc*global_par_CmcMb*global_par_KMb/(1+global_par_KMb*x(9))^2);
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(1) = (1/(compartment_Tissue))*((-1.0 * reaction_ATPase) + ( 6.0 * reaction_OxidativePhosphorylation) + ( 1.0 * reaction_CreatineKinase));
	
% Species:   id = PCr, name = PCr, affected by kineticLaw
	xdot(2) = (1/(compartment_Tissue))*((-1.0 * reaction_CreatineKinase));
	
% Species:   id = ADP, name = ADP, affected by kineticLaw
	xdot(3) = (1/(compartment_Tissue))*(( 1.0 * reaction_ATPase) + (-6.0 * reaction_OxidativePhosphorylation) + (-1.0 * reaction_CreatineKinase));
	
% Species:   id = Cr, name = Cr, affected by kineticLaw
	xdot(4) = (1/(compartment_Tissue))*(( 1.0 * reaction_CreatineKinase));
	
% Species:   id = Pi, name = Pi
% Warning species is not changed by either rules or reactions
	xdot(5) = ;
	
% Species:   id = CTcap, name = CTcap, affected by kineticLaw
	xdot(6) = (1/(compartment_Capillary))*(( 1.0 * reaction_ConvectionTransport) + (-1.0 * reaction_DiffusionTransport));
	
% Species:   id = CTtis, name = CTtis, affected by kineticLaw
	xdot(7) = (1/(compartment_Tissue))*((-1.0 * reaction_OxidativePhosphorylation) + ( 1.0 * reaction_DiffusionTransport));
	
% Species:   id = CFcap, name = CFcap, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = CFtis, name = CFtis, involved in a rule 	xdot(9) = x(9);
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


