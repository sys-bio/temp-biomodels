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
% Model name = Sluka2016  - Acetaminophen PBPK
%
% is http://identifiers.org/biomodels.db/MODEL1509230010
% is http://identifiers.org/biomodels.db/BIOMD0000000619
% isDescribedBy http://identifiers.org/pubmed/27636091
% isDerivedFrom http://identifiers.org/pubmed/20421935
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0093;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;


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

% Compartment: id = VArt, name = VArt, constant
	compartment_VArt=1.4994;
% Compartment: id = VGut, name = VGut, constant
	compartment_VGut=1.1046;
% Compartment: id = VGutLumen, name = VGutLumen, constant
	compartment_VGutLumen=1.0;
% Compartment: id = VLung, name = VLung, constant
	compartment_VLung=0.5082;
% Compartment: id = VVen, name = VVen, constant
	compartment_VVen=3.4104;
% Compartment: id = VRest, name = VRest, constant
	compartment_VRest=33.4698;
% Compartment: id = VLiver, name = VLiver, constant
	compartment_VLiver=1.7136;
% Compartment: id = VKidney, name = VKidney, constant
	compartment_VKidney=0.294;
% Compartment: id = VKidneyTubules, name = VKidneyTubules, constant
	compartment_VKidneyTubules=1.0;
% Parameter:   id =  APAP_Dose_grams, name = APAP_Dose_grams
	global_par_APAP_Dose_grams=1.4;
% Parameter:   id =  APAP_MW, name = APAP_MW
	global_par_APAP_MW=151.2;
% Parameter:   id =  APAP_Dose, name = APAP_Dose
	global_par_APAP_Dose=1.0;
% Parameter:   id =  BW, name = BW
	global_par_BW=70.0;
% Parameter:   id =  BW_ref, name = BW_ref
	global_par_BW_ref=1.0;
% Parameter:   id =  Cardiac_flow_ref, name = Cardiac_flow_ref
	global_par_Cardiac_flow_ref=15.0;
% Parameter:   id =  QCardiac, name = QCardiac
% Warning parameter QCardiac is not constant, it should be controlled by a Rule and/or events
	global_par_QCardiac=363.0;
% Parameter:   id =  QGut_fraction_QCardiac, name = QGut_fraction_QCardiac
	global_par_QGut_fraction_QCardiac=0.205;
% Parameter:   id =  QGut, name = QGut
% Warning parameter QGut is not constant, it should be controlled by a Rule and/or events
	global_par_QGut=74.42;
% Parameter:   id =  QLiver_fraction_QCardiac, name = QLiver_fraction_QCardiac
	global_par_QLiver_fraction_QCardiac=0.0535;
% Parameter:   id =  QLiver, name = QLiver
% Warning parameter QLiver is not constant, it should be controlled by a Rule and/or events
	global_par_QLiver=19.42;
% Parameter:   id =  QKidney_fraction_QCardiac, name = QKidney_fraction_QCardiac
	global_par_QKidney_fraction_QCardiac=0.2214;
% Parameter:   id =  QKidney, name = QKidney
% Warning parameter QKidney is not constant, it should be controlled by a Rule and/or events
	global_par_QKidney=80.37;
% Parameter:   id =  QRest, name = QRest
% Warning parameter QRest is not constant, it should be controlled by a Rule and/or events
	global_par_QRest=188.8;
% Parameter:   id =  QGFR_ref, name = QGFR_ref
	global_par_QGFR_ref=0.039;
% Parameter:   id =  Qgfr, name = Qgfr
% Warning parameter Qgfr is not constant, it should be controlled by a Rule and/or events
	global_par_Qgfr=0.9438;
% Parameter:   id =  kGutabs, name = kGutabs
	global_par_kGutabs=1.5;
% Parameter:   id =  CLmetabolism, name = CLmetabolism
	global_par_CLmetabolism=9.5;
% Parameter:   id =  Fraction_unbound_plasma, name = Fraction_unbound_plasma
	global_par_Fraction_unbound_plasma=0.8;
% Parameter:   id =  Ratioblood2plasma, name = Ratioblood2plasma
	global_par_Ratioblood2plasma=1.09;
% Parameter:   id =  Kliver2plasma, name = Kliver2plasma
	global_par_Kliver2plasma=1.0;
% Parameter:   id =  Kkidney2plasma, name = Kkidney2plasma
	global_par_Kkidney2plasma=1.0;
% Parameter:   id =  KRest2plasma, name = KRest2plasma
	global_par_KRest2plasma=1.6;
% Parameter:   id =  VTotal_ref, name = VTotal_ref
	global_par_VTotal_ref=0.6;
% Parameter:   id =  VTotal, name = VTotal
% Warning parameter VTotal is not constant, it should be controlled by a Rule and/or events
	global_par_VTotal=42.0;
% Parameter:   id =  VLiver_fraction_VTotal, name = VLiver_fraction_VTotal
	global_par_VLiver_fraction_VTotal=0.0408;
% Parameter:   id =  VArt_fraction_VTotal, name = VArt_fraction_VTotal
	global_par_VArt_fraction_VTotal=0.0357;
% Parameter:   id =  VLung_fraction_VTotal, name = VLung_fraction_VTotal
	global_par_VLung_fraction_VTotal=0.0121;
% Parameter:   id =  VVen_fraction_VTotal, name = VVen_fraction_VTotal
	global_par_VVen_fraction_VTotal=0.0812;
% Parameter:   id =  VGut_fraction_VTotal, name = VGut_fraction_VTotal
	global_par_VGut_fraction_VTotal=0.0263;
% Parameter:   id =  VKidney_fraction_VTotal, name = VKidney_fraction_VTotal
	global_par_VKidney_fraction_VTotal=0.007;

% Reaction: id = J1, name = J01
	reaction_J1=global_par_QGut/compartment_VArt*x(1);

% Reaction: id = J2, name = J02
	reaction_J2=global_par_kGutabs*x(3);

% Reaction: id = J3, name = J03
	reaction_J3=global_par_QCardiac/compartment_VLung*x(4);

% Reaction: id = J4, name = J04
	reaction_J4=global_par_QCardiac/compartment_VVen*x(5);

% Reaction: id = J5, name = J05
	reaction_J5=global_par_QRest*x(1)/compartment_VArt;

% Reaction: id = J6, name = J06
	reaction_J6=global_par_QRest/compartment_VRest*x(6)*global_par_Ratioblood2plasma/(global_par_KRest2plasma*global_par_Fraction_unbound_plasma);

% Reaction: id = J7, name = J07
	reaction_J7=global_par_QLiver/compartment_VArt*x(1);

% Reaction: id = J8, name = J08
	reaction_J8=global_par_CLmetabolism*x(7)/(global_par_Kliver2plasma*global_par_Fraction_unbound_plasma);

% Reaction: id = J9, name = J09
	reaction_J9=global_par_QGut/compartment_VGut*x(2);

% Reaction: id = J10, name = J10
	reaction_J10=(global_par_QLiver+global_par_QGut)/compartment_VLiver*x(7)*global_par_Ratioblood2plasma/(global_par_Kliver2plasma*global_par_Fraction_unbound_plasma);

% Reaction: id = J11, name = J11
	reaction_J11=global_par_QKidney/compartment_VArt*x(1);

% Reaction: id = J12, name = J12
	reaction_J12=global_par_Qgfr/compartment_VKidney*x(9)/global_par_Kkidney2plasma;

% Reaction: id = J13, name = J13
	reaction_J13=global_par_QKidney/compartment_VKidney*x(9)*global_par_Ratioblood2plasma/(global_par_Kkidney2plasma*global_par_Fraction_unbound_plasma);

	xdot=zeros(10,1);
	
% Species:   id = CArt, name = CArt, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_J1) + ( 1.0 * reaction_J3) + (-1.0 * reaction_J5) + (-1.0 * reaction_J7) + (-1.0 * reaction_J11);
	
% Species:   id = CGut, name = CGut, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_J1) + ( 1.0 * reaction_J2) + (-1.0 * reaction_J9);
	
% Species:   id = AGutlumen, name = AGutlumen, affected by kineticLaw
	xdot(3) = (-1.0 * reaction_J2);
	
% Species:   id = CLung, name = CLung, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_J3) + ( 1.0 * reaction_J4);
	
% Species:   id = CVen, name = CVen, affected by kineticLaw
	xdot(5) = (-1.0 * reaction_J4) + ( 1.0 * reaction_J6) + ( 1.0 * reaction_J10) + ( 1.0 * reaction_J13);
	
% Species:   id = CRest, name = CRest, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_J5) + (-1.0 * reaction_J6);
	
% Species:   id = CLiver, name = CLiver, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_J7) + (-1.0 * reaction_J8) + ( 1.0 * reaction_J9) + (-1.0 * reaction_J10);
	
% Species:   id = CMetabolized, name = CMetabolized, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_J8);
	
% Species:   id = CKidney, name = CKidney, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_J11) + (-1.0 * reaction_J12) + (-1.0 * reaction_J13);
	
% Species:   id = CTubules, name = CTubules, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_J12);
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


