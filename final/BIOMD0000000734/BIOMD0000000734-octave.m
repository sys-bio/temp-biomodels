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
% Model name = Mouse Iron Distribution - Rich and Deficient iron diets (tracer)
%
% is http://identifiers.org/biomodels.db/MODEL1903040001
% is http://identifiers.org/biomodels.db/BIOMD0000000734
%


function main()
%Initial conditions vector
	x0=zeros(22,1);
	x0(1) = 0.0;
	x0(2) = 0.0117590568706314;
	x0(3) = 0.0;
	x0(4) = 0.0379799887571665;
	x0(5) = 0.0;
	x0(6) = 0.00394239990123767;
	x0(7) = 0.0;
	x0(8) = 0.00200010981212238;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 1.5821833083706E-5;
	x0(12) = 0.0;
	x0(13) = 2.30017456622937E-8;
	x0(14) = 1.35248196757048E-5;
	x0(15) = 9.35334724058915E-6;
	x0(16) = 3.3311210465159E-8;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 2.86841656341217E-4;
	x0(21) = 0.00303783614844319;
	x0(22) = 0.0;


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

% Compartment: id = Duodenum, name = Duodenum, constant
	compartment_Duodenum=3.84615E-5;
% Compartment: id = RBC, name = RBC, constant
	compartment_RBC=7.9E-4;
% Compartment: id = Spleen, name = Spleen, constant
	compartment_Spleen=6.73077E-5;
% Compartment: id = Liver, name = Liver, constant
	compartment_Liver=0.001161905;
% Compartment: id = Plasma, name = Plasma, constant
	compartment_Plasma=0.0013;
% Compartment: id = RestOfBody, name = RestOfBody, constant
	compartment_RestOfBody=0.019694766;
% Compartment: id = BoneMarrow, name = BoneMarrow, constant
	compartment_BoneMarrow=2.14286E-4;
% Parameter:   id =  Total_Fe___in_body, name = Total_Fe* (in body)
% Parameter:   id =  FePlasma, name = FePlasma*
% Parameter:   id =  PDuo, name = PDuo
% Parameter:   id =  PLiver, name = PLiver
% Parameter:   id =  PSpleen, name = PSpleen
% Parameter:   id =  PRBC, name = PRBC
% Parameter:   id =  PRest, name = PRest
% Parameter:   id =  PPlasma, name = PPlasma
% Parameter:   id =  POutside, name = POutside
% Parameter:   id =  Injected, name = Injected
	global_par_Injected=3.073E15;
% Parameter:   id =  kNTBI_Fe1Tf, name = kNTBI_Fe1Tf
	global_par_kNTBI_Fe1Tf=1.084322005E9;
% Parameter:   id =  kInDuo, name = kInDuo
	global_par_kInDuo=0.0689984226081531;
% Parameter:   id =  kInLiver, name = kInLiver
	global_par_kInLiver=2.97790545667672;
% Parameter:   id =  kInRBC, name = kInRBC
	global_par_kInRBC=1.08447580176706;
% Parameter:   id =  kInRest, name = kInRest
	global_par_kInRest=6.16356235352873;
% Parameter:   id =  FePlasma_conc_, name = FePlasma(conc)*
% Parameter:   id =  Km, name = Km
	global_par_Km=0.0159421218669513;
% Parameter:   id =  Ki, name = Ki
	global_par_Ki=1.0E-9;
% Parameter:   id =  TfSaturation, name = TfSaturation
% Parameter:   id =  kFe1Tf_Fe2Tf, name = kFe1Tf_Fe2Tf
	global_par_kFe1Tf_Fe2Tf=1.084322005E9;
% Parameter:   id =  VDuoNTBI, name = VDuoNTBI
	global_par_VDuoNTBI=0.200241893786814;
% Parameter:   id =  VLiverNTBI, name = VLiverNTBI
	global_par_VLiverNTBI=0.0261147638001175;
% Parameter:   id =  VSpleenNTBI, name = VSpleenNTBI
	global_par_VSpleenNTBI=1.342204923;
% Parameter:   id =  VRestNTBI, name = VRestNTBI
	global_par_VRestNTBI=0.0109451335200198;
% Parameter:   id =  kDuoLoss, name = kDuoLoss
	global_par_kDuoLoss=0.0270113302698216;
% Parameter:   id =  vRBCSpleen, name = vRBCSpleen
	global_par_vRBCSpleen=0.0235286;
% Parameter:   id =  kRestLoss, name = kRestLoss
	global_par_kRestLoss=0.023533240736163;
% Parameter:   id =  Total_Fe, name = Total_Fe
% Parameter:   id =  Total_Fe_concentration, name = Total_Fe_concentration
% Parameter:   id =  FePlasma_0, name = FePlasma
% Parameter:   id =  kInBM, name = kInBM
	global_par_kInBM=15.7690636138556;
% Parameter:   id =  PBM, name = PBM
% Parameter:   id =  kBMSpleen, name = kBMSpleen
	global_par_kBMSpleen=0.061902954378781;
% Parameter:   id =  Total_Fe__g, name = Total_Fe_(g)
% Parameter:   id =  Total_Tf, name = Total_Tf
% Parameter:   id =  Total_Tf_conc, name = Total_Tf_conc
% Parameter:   id =  Total_Tf_mg_ml, name = Total_Tf_mg/ml
% Parameter:   id =  vDiet, name = vDiet
	global_par_vDiet=0.00377422331938439;
% Parameter:   id =  FePlasma_conc, name = FePlasma(conc)
% Parameter:   id =  quantity_to_number_factor, name = quantity to number factor
	global_par_quantity_to_number_factor=6.02214179E23;
% Parameter:   id =  Avogadro, name = Avogadro Constant
	global_par_Avogadro=6.02214179E23;
% assignmentRule: variable = PSpleen
	global_par_PSpleen=100*x(5)*global_par_quantity_to_number_factor*compartment_Spleen/global_par_Injected;
% assignmentRule: variable = PRBC
	global_par_PRBC=100*x(3)*global_par_quantity_to_number_factor*compartment_RBC/global_par_Injected;
% assignmentRule: variable = Total_Fe___in_body
	global_par_Total_Fe___in_body=x(1)*global_par_quantity_to_number_factor*compartment_Duodenum+x(7)*global_par_quantity_to_number_factor*compartment_Liver+x(5)*global_par_quantity_to_number_factor*compartment_Spleen+x(3)*global_par_quantity_to_number_factor*compartment_RBC+x(18)*global_par_quantity_to_number_factor*compartment_RestOfBody+x(9)*global_par_quantity_to_number_factor*compartment_Plasma+x(10)*global_par_quantity_to_number_factor*compartment_Plasma+2*x(17)*global_par_quantity_to_number_factor*compartment_Plasma+x(12)*global_par_quantity_to_number_factor*compartment_Plasma+x(22)*global_par_quantity_to_number_factor*compartment_BoneMarrow;
% assignmentRule: variable = FePlasma
	global_par_FePlasma=x(9)*global_par_quantity_to_number_factor*compartment_Plasma+x(10)*global_par_quantity_to_number_factor*compartment_Plasma+x(12)*global_par_quantity_to_number_factor*compartment_Plasma+2*x(17)*global_par_quantity_to_number_factor*compartment_Plasma;
% assignmentRule: variable = PLiver
	global_par_PLiver=100*x(7)*global_par_quantity_to_number_factor*compartment_Liver/global_par_Injected;
% assignmentRule: variable = PDuo
	global_par_PDuo=100*x(1)*global_par_quantity_to_number_factor*compartment_Duodenum/global_par_Injected;
% assignmentRule: variable = FePlasma_conc_
	global_par_FePlasma_conc_=global_par_FePlasma/(compartment_Plasma*global_par_Avogadro);
% assignmentRule: variable = TfSaturation
	global_par_TfSaturation=100*(2*x(9)*global_par_quantity_to_number_factor*compartment_Plasma+2*x(14)*global_par_quantity_to_number_factor*compartment_Plasma+x(12)*global_par_quantity_to_number_factor*compartment_Plasma+x(15)*global_par_quantity_to_number_factor*compartment_Plasma+2*x(17)*global_par_quantity_to_number_factor*compartment_Plasma)/(2*(x(9)*global_par_quantity_to_number_factor*compartment_Plasma+x(12)*global_par_quantity_to_number_factor*compartment_Plasma+x(11)*global_par_quantity_to_number_factor*compartment_Plasma+x(17)*global_par_quantity_to_number_factor*compartment_Plasma+x(14)*global_par_quantity_to_number_factor*compartment_Plasma+x(15)*global_par_quantity_to_number_factor*compartment_Plasma));
% assignmentRule: variable = POutside
	global_par_POutside=100*x(19)*global_par_quantity_to_number_factor*compartment_RestOfBody/global_par_Injected;
% assignmentRule: variable = PRest
	global_par_PRest=100*x(18)*global_par_quantity_to_number_factor*compartment_RestOfBody/global_par_Injected;
% assignmentRule: variable = PPlasma
	global_par_PPlasma=100*(x(10)*global_par_quantity_to_number_factor*compartment_Plasma+2*x(17)*global_par_quantity_to_number_factor*compartment_Plasma+x(9)*global_par_quantity_to_number_factor*compartment_Plasma+x(12)*global_par_quantity_to_number_factor*compartment_Plasma)/global_par_Injected;
% assignmentRule: variable = Total_Fe_concentration
	global_par_Total_Fe_concentration=(x(2)*global_par_quantity_to_number_factor*compartment_Duodenum+x(8)*global_par_quantity_to_number_factor*compartment_Liver+x(6)*global_par_quantity_to_number_factor*compartment_Spleen+x(4)*global_par_quantity_to_number_factor*compartment_RBC+x(20)*global_par_quantity_to_number_factor*compartment_RestOfBody+2*x(14)*global_par_quantity_to_number_factor*compartment_Plasma+x(9)*global_par_quantity_to_number_factor*compartment_Plasma+x(15)*global_par_quantity_to_number_factor*compartment_Plasma+x(16)*global_par_quantity_to_number_factor*compartment_Plasma+x(21)*global_par_quantity_to_number_factor*compartment_BoneMarrow)/(global_par_Avogadro*(compartment_Duodenum+compartment_Liver+compartment_Plasma+compartment_RBC+compartment_RestOfBody+compartment_Spleen));
% assignmentRule: variable = Total_Fe
	global_par_Total_Fe=x(2)*global_par_quantity_to_number_factor*compartment_Duodenum+x(8)*global_par_quantity_to_number_factor*compartment_Liver+x(6)*global_par_quantity_to_number_factor*compartment_Spleen+x(4)*global_par_quantity_to_number_factor*compartment_RBC+x(20)*global_par_quantity_to_number_factor*compartment_RestOfBody+2*x(14)*global_par_quantity_to_number_factor*compartment_Plasma+x(9)*global_par_quantity_to_number_factor*compartment_Plasma+x(15)*global_par_quantity_to_number_factor*compartment_Plasma+x(16)*global_par_quantity_to_number_factor*compartment_Plasma+x(21)*global_par_quantity_to_number_factor*compartment_BoneMarrow;
% assignmentRule: variable = FePlasma_0
	global_par_FePlasma_0=2*x(14)*global_par_quantity_to_number_factor*compartment_Plasma+x(9)*global_par_quantity_to_number_factor*compartment_Plasma+x(15)*global_par_quantity_to_number_factor*compartment_Plasma+x(16)*global_par_quantity_to_number_factor*compartment_Plasma;
% assignmentRule: variable = FePlasma_conc
	global_par_FePlasma_conc=global_par_FePlasma_0/(compartment_Plasma*global_par_Avogadro);
% assignmentRule: variable = PBM
	global_par_PBM=100*x(22)*global_par_quantity_to_number_factor*compartment_BoneMarrow/global_par_Injected;
% assignmentRule: variable = Total_Fe__g
	global_par_Total_Fe__g=global_par_Total_Fe*55.845/global_par_Avogadro;
% assignmentRule: variable = Total_Tf
	global_par_Total_Tf=x(11)*global_par_quantity_to_number_factor*compartment_Plasma+x(12)*global_par_quantity_to_number_factor*compartment_Plasma+x(15)*global_par_quantity_to_number_factor*compartment_Plasma+x(17)*global_par_quantity_to_number_factor*compartment_Plasma+x(9)*global_par_quantity_to_number_factor*compartment_Plasma+x(14)*global_par_quantity_to_number_factor*compartment_Plasma;
% assignmentRule: variable = Total_Tf_conc
	global_par_Total_Tf_conc=global_par_Total_Tf/(global_par_Avogadro*compartment_Plasma);
% assignmentRule: variable = Total_Tf_mg_ml
	global_par_Total_Tf_mg_ml=global_par_Total_Tf_conc*80;

% Reaction: id = Duo_NTBI, name = Duo_NTBI*
	reaction_Duo_NTBI=mixed_competitive_and_noncompetitive_inhibition(global_par_VDuoNTBI, compartment_Duodenum, x(1), global_par_Km, x(2), x(13), global_par_Ki);

% Reaction: id = Fe2Tf_BM_, name = Fe2Tf_BM**
	reaction_Fe2Tf_BM_=mass_action__dif_compartments__explicit_volume___1(global_par_kInBM, compartment_Plasma, x(17));

% Reaction: id = RBC_Spleen, name = RBC_Spleen*
	reaction_RBC_Spleen=mass_action__dif_compartments__explicit_volume___1(global_par_vRBCSpleen, compartment_RBC, x(3));

% Reaction: id = Spleen_NTBI, name = Spleen_NTBI*
	reaction_Spleen_NTBI=mixed_competitive_and_noncompetitive_inhibition(global_par_VSpleenNTBI, compartment_Spleen, x(5), global_par_Km, x(6), x(13), global_par_Ki);

% Reaction: id = Liver_NTBI, name = Liver_NTBI*
	reaction_Liver_NTBI=mixed_competitive_and_noncompetitive_inhibition(global_par_VLiverNTBI, compartment_Liver, x(7), global_par_Km, x(8), x(13), global_par_Ki);

% Reaction: id = NTBI_Fe1Tf, name = NTBI_Fe1Tf*
	reaction_NTBI_Fe1Tf=compartment_Plasma*global_par_kNTBI_Fe1Tf*x(10)*x(11);

% Reaction: id = DuoLoss, name = DuoLoss*
	reaction_DuoLoss=mass_action__dif_compartments__explicit_volume___1(global_par_kDuoLoss, compartment_Duodenum, x(1));

% Reaction: id = Fe2Tf_Liver_, name = Fe2Tf_Liver**
	reaction_Fe2Tf_Liver_=mass_action__dif_compartments__explicit_volume___1(global_par_kInLiver, compartment_Plasma, x(17));

% Reaction: id = Fe2Tf_Rest_, name = Fe2Tf_Rest**
	reaction_Fe2Tf_Rest_=mass_action__dif_compartments__explicit_volume___1(global_par_kInRest, compartment_Plasma, x(17));

% Reaction: id = RestLoss, name = RestLoss*
	reaction_RestLoss=compartment_RestOfBody*global_par_kRestLoss*x(18);

% Reaction: id = Fe2Tf_Duo_, name = Fe2Tf_Duo**
	reaction_Fe2Tf_Duo_=mass_action__dif_compartments__explicit_volume___1(global_par_kInDuo, compartment_Plasma, x(17));

% Reaction: id = Rest_NTBI, name = Rest_NTBI*
	reaction_Rest_NTBI=mixed_competitive_and_noncompetitive_inhibition(global_par_VRestNTBI, compartment_RestOfBody, x(18), global_par_Km, x(20), x(13), global_par_Ki);

% Reaction: id = Fe1Tf__Fe2Tf_, name = Fe1Tf*_Fe2Tf**
	reaction_Fe1Tf__Fe2Tf_=compartment_Plasma*global_par_kFe1Tf_Fe2Tf*x(12)*x(10);

% Reaction: id = Fe1Tf_Liver, name = Fe1Tf_Liver*
	reaction_Fe1Tf_Liver=mass_action__dif_compartments__explicit_volume___1(global_par_kInLiver, compartment_Plasma, x(12));

% Reaction: id = Fe1Tf_BM, name = Fe1Tf_BM*
	reaction_Fe1Tf_BM=mass_action__dif_compartments__explicit_volume___1(global_par_kInBM, compartment_Plasma, x(12));

% Reaction: id = Fe1Tf_Rest, name = Fe1Tf_Rest*
	reaction_Fe1Tf_Rest=mass_action__dif_compartments__explicit_volume___1(global_par_kInRest, compartment_Plasma, x(12));

% Reaction: id = Fe1Tf_Duo, name = Fe1Tf_Duo*
	reaction_Fe1Tf_Duo=mass_action__dif_compartments__explicit_volume___1(global_par_kInDuo, compartment_Plasma, x(12));

% Reaction: id = HepcidinDecay, name = HepcidinDecay	% Local Parameter:   id =  k1, name = k1
	reaction_HepcidinDecay_k1=0.75616;

	reaction_HepcidinDecay=compartment_Plasma*reaction_HepcidinDecay_k1*x(13);

% Reaction: id = Duo_NTBI_0, name = Duo_NTBI
	reaction_Duo_NTBI_0=mixed_competitive_and_noncompetitive_inhibition(global_par_VDuoNTBI, compartment_Duodenum, x(2), global_par_Km, x(1), x(13), global_par_Ki);

% Reaction: id = Fe2Tf_BM, name = Fe2Tf_BM
	reaction_Fe2Tf_BM=mass_action__dif_compartments__explicit_volume___1(global_par_kInBM, compartment_Plasma, x(14));

% Reaction: id = RBC_Spleen_0, name = RBC_Spleen
	reaction_RBC_Spleen_0=mass_action__dif_compartments__explicit_volume___1(global_par_vRBCSpleen, compartment_RBC, x(4));

% Reaction: id = Spleen_NTBI_0, name = Spleen_NTBI
	reaction_Spleen_NTBI_0=mixed_competitive_and_noncompetitive_inhibition(global_par_VSpleenNTBI, compartment_Spleen, x(6), global_par_Km, x(5), x(13), global_par_Ki);

% Reaction: id = Liver_NTBI_0, name = Liver_NTBI
	reaction_Liver_NTBI_0=mixed_competitive_and_noncompetitive_inhibition(global_par_VLiverNTBI, compartment_Liver, x(8), global_par_Km, x(7), x(13), global_par_Ki);

% Reaction: id = NTBI_Fe1Tf_0, name = NTBI_Fe1Tf
	reaction_NTBI_Fe1Tf_0=compartment_Plasma*global_par_kNTBI_Fe1Tf*x(16)*x(11);

% Reaction: id = DuoLoss_0, name = DuoLoss
	reaction_DuoLoss_0=mass_action__dif_compartments__explicit_volume___1(global_par_kDuoLoss, compartment_Duodenum, x(2));

% Reaction: id = Fe2Tf_Liver, name = Fe2Tf_Liver
	reaction_Fe2Tf_Liver=mass_action__dif_compartments__explicit_volume___1(global_par_kInLiver, compartment_Plasma, x(14));

% Reaction: id = Fe2Tf_Rest, name = Fe2Tf_Rest
	reaction_Fe2Tf_Rest=mass_action__dif_compartments__explicit_volume___1(global_par_kInRest, compartment_Plasma, x(14));

% Reaction: id = RestLoss_0, name = RestLoss
	reaction_RestLoss_0=compartment_RestOfBody*global_par_kRestLoss*x(20);

% Reaction: id = Fe2Tf_Duo, name = Fe2Tf_Duo
	reaction_Fe2Tf_Duo=mass_action__dif_compartments__explicit_volume___1(global_par_kInDuo, compartment_Plasma, x(14));

% Reaction: id = Rest_NTBI_0, name = Rest_NTBI
	reaction_Rest_NTBI_0=mixed_competitive_and_noncompetitive_inhibition(global_par_VRestNTBI, compartment_RestOfBody, x(20), global_par_Km, x(18), x(13), global_par_Ki);

% Reaction: id = Fe1Tf_Fe2Tf, name = Fe1Tf_Fe2Tf
	reaction_Fe1Tf_Fe2Tf=compartment_Plasma*global_par_kFe1Tf_Fe2Tf*x(15)*x(16);

% Reaction: id = Fe1Tf_Liver_0, name = Fe1Tf_Liver
	reaction_Fe1Tf_Liver_0=mass_action__dif_compartments__explicit_volume___1(global_par_kInLiver, compartment_Plasma, x(15));

% Reaction: id = Fe1Tf_BM_0, name = Fe1Tf_BM
	reaction_Fe1Tf_BM_0=mass_action__dif_compartments__explicit_volume___1(global_par_kInBM, compartment_Plasma, x(15));

% Reaction: id = Fe1Tf_Rest_0, name = Fe1Tf_Rest
	reaction_Fe1Tf_Rest_0=mass_action__dif_compartments__explicit_volume___1(global_par_kInRest, compartment_Plasma, x(15));

% Reaction: id = Fe1Tf_Duo_0, name = Fe1Tf_Duo
	reaction_Fe1Tf_Duo_0=mass_action__dif_compartments__explicit_volume___1(global_par_kInDuo, compartment_Plasma, x(15));

% Reaction: id = Fe1Tf_Fe2Tf_0, name = Fe1Tf_Fe2Tf*
	reaction_Fe1Tf_Fe2Tf_0=compartment_Plasma*global_par_kFe1Tf_Fe2Tf*x(15)*x(10);

% Reaction: id = Fe1Tf__Fe2Tf, name = Fe1Tf*_Fe2Tf*
	reaction_Fe1Tf__Fe2Tf=compartment_Plasma*global_par_kFe1Tf_Fe2Tf*x(12)*x(16);

% Reaction: id = Fe2Tf_Duo_0, name = Fe2Tf_Duo*
	reaction_Fe2Tf_Duo_0=mass_action__dif_compartments__explicit_volume___1(global_par_kInDuo, compartment_Plasma, x(9));

% Reaction: id = Fe2Tf_Liver_0, name = Fe2Tf_Liver*
	reaction_Fe2Tf_Liver_0=mass_action__dif_compartments__explicit_volume___1(global_par_kInLiver, compartment_Plasma, x(9));

% Reaction: id = Fe2Tf_BM_0, name = Fe2Tf_BM*
	reaction_Fe2Tf_BM_0=mass_action__dif_compartments__explicit_volume___1(global_par_kInBM, compartment_Plasma, x(9));

% Reaction: id = Fe2Tf_Rest_0, name = Fe2Tf_Rest*
	reaction_Fe2Tf_Rest_0=mass_action__dif_compartments__explicit_volume___1(global_par_kInRest, compartment_Plasma, x(9));

% Reaction: id = BM_RBC, name = BM_RBC
	reaction_BM_RBC=mass_action__dif_compartments__explicit_volume___1(global_par_kInRBC, compartment_BoneMarrow, x(21));

% Reaction: id = BM_RBC_0, name = BM_RBC*
	reaction_BM_RBC_0=mass_action__dif_compartments__explicit_volume___1(global_par_kInRBC, compartment_BoneMarrow, x(22));

% Reaction: id = BM_Spleen, name = BM_Spleen
	reaction_BM_Spleen=mass_action__dif_compartments__explicit_volume___1(global_par_kBMSpleen, compartment_BoneMarrow, x(21));

% Reaction: id = BM_Spleen_0, name = BM_Spleen*
	reaction_BM_Spleen_0=mass_action__dif_compartments__explicit_volume___1(global_par_kBMSpleen, compartment_BoneMarrow, x(22));

% Species:   id = FeOutside_0, name = FeOutside, constant	const_species_FeOutside_0=0.0;

%Event: id=event_1
	event_event_1=time >= 35;

	if(event_event_1) 
		x(10)=global_par_Injected/(global_par_Avogadro*compartment_Plasma);
	end

	xdot=zeros(22,1);
	
% Species:   id = FeDuo, name = FeDuo*, affected by kineticLaw
	xdot(1) = (1/(compartment_Duodenum))*((-1.0 * reaction_Duo_NTBI) + (-1.0 * reaction_DuoLoss) + ( 2.0 * reaction_Fe2Tf_Duo_) + ( 1.0 * reaction_Fe1Tf_Duo) + ( 1.0 * reaction_Fe2Tf_Duo_0));
	
% Species:   id = FeDuo_0, name = FeDuo, affected by kineticLaw
	xdot(2) = (1/(compartment_Duodenum))*(( 1.0 * reaction_Diet) + (-1.0 * reaction_Duo_NTBI_0) + (-1.0 * reaction_DuoLoss_0) + ( 2.0 * reaction_Fe2Tf_Duo) + ( 1.0 * reaction_Fe1Tf_Duo_0) + ( 1.0 * reaction_Fe2Tf_Duo_0));
	
% Species:   id = FeRBC, name = FeRBC*, affected by kineticLaw
	xdot(3) = (1/(compartment_RBC))*((-1.0 * reaction_RBC_Spleen) + ( 1.0 * reaction_BM_RBC_0));
	
% Species:   id = FeRBC_0, name = FeRBC, affected by kineticLaw
	xdot(4) = (1/(compartment_RBC))*((-1.0 * reaction_RBC_Spleen_0) + ( 1.0 * reaction_BM_RBC));
	
% Species:   id = FeSpleen, name = FeSpleen*, affected by kineticLaw
	xdot(5) = (1/(compartment_Spleen))*(( 1.0 * reaction_RBC_Spleen) + (-1.0 * reaction_Spleen_NTBI) + ( 1.0 * reaction_BM_Spleen_0));
	
% Species:   id = FeSpleen_0, name = FeSpleen, affected by kineticLaw
	xdot(6) = (1/(compartment_Spleen))*(( 1.0 * reaction_RBC_Spleen_0) + (-1.0 * reaction_Spleen_NTBI_0) + ( 1.0 * reaction_BM_Spleen));
	
% Species:   id = FeLiver, name = FeLiver*, affected by kineticLaw
	xdot(7) = (1/(compartment_Liver))*((-1.0 * reaction_Liver_NTBI) + ( 2.0 * reaction_Fe2Tf_Liver_) + ( 1.0 * reaction_Fe1Tf_Liver) + ( 1.0 * reaction_Fe2Tf_Liver_0));
	
% Species:   id = FeLiver_0, name = FeLiver, affected by kineticLaw
	xdot(8) = (1/(compartment_Liver))*((-1.0 * reaction_Liver_NTBI_0) + ( 2.0 * reaction_Fe2Tf_Liver) + ( 1.0 * reaction_Fe1Tf_Liver_0) + ( 1.0 * reaction_Fe2Tf_Liver_0));
	
% Species:   id = Fe2Tf, name = Fe2Tf*, affected by kineticLaw
	xdot(9) = (1/(compartment_Plasma))*(( 1.0 * reaction_Fe1Tf_Fe2Tf_0) + ( 1.0 * reaction_Fe1Tf__Fe2Tf) + (-1.0 * reaction_Fe2Tf_Duo_0) + (-1.0 * reaction_Fe2Tf_Liver_0) + (-1.0 * reaction_Fe2Tf_BM_0) + (-1.0 * reaction_Fe2Tf_Rest_0));
	
% Species:   id = NTBI, name = NTBI*, affected by kineticLaw
	xdot(10) = (1/(compartment_Plasma))*(( 1.0 * reaction_Duo_NTBI) + ( 1.0 * reaction_Spleen_NTBI) + ( 1.0 * reaction_Liver_NTBI) + (-1.0 * reaction_NTBI_Fe1Tf) + ( 1.0 * reaction_Rest_NTBI) + (-1.0 * reaction_Fe1Tf__Fe2Tf_) + (-1.0 * reaction_Fe1Tf_Fe2Tf_0));
	
% Species:   id = Tf, name = Tf, affected by kineticLaw
	xdot(11) = (1/(compartment_Plasma))*(( 1.0 * reaction_Fe2Tf_BM_) + (-1.0 * reaction_NTBI_Fe1Tf) + ( 1.0 * reaction_Fe2Tf_Liver_) + ( 1.0 * reaction_Fe2Tf_Rest_) + ( 1.0 * reaction_Fe2Tf_Duo_) + ( 1.0 * reaction_Fe1Tf_Liver) + ( 1.0 * reaction_Fe1Tf_BM) + ( 1.0 * reaction_Fe1Tf_Rest) + ( 1.0 * reaction_Fe1Tf_Duo) + ( 1.0 * reaction_Fe2Tf_BM) + (-1.0 * reaction_NTBI_Fe1Tf_0) + ( 1.0 * reaction_Fe2Tf_Liver) + ( 1.0 * reaction_Fe2Tf_Rest) + ( 1.0 * reaction_Fe2Tf_Duo) + ( 1.0 * reaction_Fe1Tf_Liver_0) + ( 1.0 * reaction_Fe1Tf_BM_0) + ( 1.0 * reaction_Fe1Tf_Rest_0) + ( 1.0 * reaction_Fe1Tf_Duo_0) + ( 1.0 * reaction_Fe2Tf_Duo_0) + ( 1.0 * reaction_Fe2Tf_Liver_0) + ( 1.0 * reaction_Fe2Tf_BM_0) + ( 1.0 * reaction_Fe2Tf_Rest_0));
	
% Species:   id = Fe1Tf, name = Fe1Tf*, affected by kineticLaw
	xdot(12) = (1/(compartment_Plasma))*(( 1.0 * reaction_NTBI_Fe1Tf) + (-1.0 * reaction_Fe1Tf__Fe2Tf_) + (-1.0 * reaction_Fe1Tf_Liver) + (-1.0 * reaction_Fe1Tf_BM) + (-1.0 * reaction_Fe1Tf_Rest) + (-1.0 * reaction_Fe1Tf_Duo) + (-1.0 * reaction_Fe1Tf__Fe2Tf));
	
% Species:   id = Hepcidin, name = Hepcidin, affected by kineticLaw
	xdot(13) = (1/(compartment_Plasma))*(( 1.0 * reaction_HepcidinSynthesis) + (-1.0 * reaction_HepcidinDecay));
	
% Species:   id = Fe2Tf_0, name = Fe2Tf, affected by kineticLaw
	xdot(14) = (1/(compartment_Plasma))*((-1.0 * reaction_Fe2Tf_BM) + (-1.0 * reaction_Fe2Tf_Liver) + (-1.0 * reaction_Fe2Tf_Rest) + (-1.0 * reaction_Fe2Tf_Duo) + ( 1.0 * reaction_Fe1Tf_Fe2Tf));
	
% Species:   id = Fe1Tf_0, name = Fe1Tf, affected by kineticLaw
	xdot(15) = (1/(compartment_Plasma))*(( 1.0 * reaction_NTBI_Fe1Tf_0) + (-1.0 * reaction_Fe1Tf_Fe2Tf) + (-1.0 * reaction_Fe1Tf_Liver_0) + (-1.0 * reaction_Fe1Tf_BM_0) + (-1.0 * reaction_Fe1Tf_Rest_0) + (-1.0 * reaction_Fe1Tf_Duo_0) + (-1.0 * reaction_Fe1Tf_Fe2Tf_0));
	
% Species:   id = NTBI_0, name = NTBI, affected by kineticLaw
	xdot(16) = (1/(compartment_Plasma))*(( 1.0 * reaction_Duo_NTBI_0) + ( 1.0 * reaction_Spleen_NTBI_0) + ( 1.0 * reaction_Liver_NTBI_0) + (-1.0 * reaction_NTBI_Fe1Tf_0) + ( 1.0 * reaction_Rest_NTBI_0) + (-1.0 * reaction_Fe1Tf_Fe2Tf) + (-1.0 * reaction_Fe1Tf__Fe2Tf));
	
% Species:   id = Fe2Tf_, name = Fe2Tf**, affected by kineticLaw
	xdot(17) = (1/(compartment_Plasma))*((-1.0 * reaction_Fe2Tf_BM_) + (-1.0 * reaction_Fe2Tf_Liver_) + (-1.0 * reaction_Fe2Tf_Rest_) + (-1.0 * reaction_Fe2Tf_Duo_) + ( 1.0 * reaction_Fe1Tf__Fe2Tf_));
	
% Species:   id = FeRest, name = FeRest*, affected by kineticLaw
	xdot(18) = (1/(compartment_RestOfBody))*(( 2.0 * reaction_Fe2Tf_Rest_) + (-1.0 * reaction_RestLoss) + (-1.0 * reaction_Rest_NTBI) + ( 1.0 * reaction_Fe1Tf_Rest) + ( 1.0 * reaction_Fe2Tf_Rest_0));
	
% Species:   id = FeOutside, name = FeOutside*, affected by kineticLaw
	xdot(19) = (1/(compartment_RestOfBody))*(( 1.0 * reaction_DuoLoss) + ( 1.0 * reaction_RestLoss));
	
% Species:   id = FeRest_0, name = FeRest, affected by kineticLaw
	xdot(20) = (1/(compartment_RestOfBody))*(( 2.0 * reaction_Fe2Tf_Rest) + (-1.0 * reaction_RestLoss_0) + (-1.0 * reaction_Rest_NTBI_0) + ( 1.0 * reaction_Fe1Tf_Rest_0) + ( 1.0 * reaction_Fe2Tf_Rest_0));
	
% Species:   id = FeBM, name = FeBM, affected by kineticLaw
	xdot(21) = (1/(compartment_BoneMarrow))*(( 2.0 * reaction_Fe2Tf_BM) + ( 1.0 * reaction_Fe1Tf_BM_0) + ( 1.0 * reaction_Fe2Tf_BM_0) + (-1.0 * reaction_BM_RBC) + (-1.0 * reaction_BM_Spleen));
	
% Species:   id = FeBM_0, name = FeBM*, affected by kineticLaw
	xdot(22) = (1/(compartment_BoneMarrow))*(( 2.0 * reaction_Fe2Tf_BM_) + ( 1.0 * reaction_Fe1Tf_BM) + ( 1.0 * reaction_Fe2Tf_BM_0) + (-1.0 * reaction_BM_RBC_0) + (-1.0 * reaction_BM_Spleen_0));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=mixed_competitive_and_noncompetitive_inhibition(v,volume,substrate,Km,compet_inhib,noncompet_inhib,Ki), z=(v*volume*substrate/((Km+substrate+compet_inhib)*(1+noncompet_inhib/Ki)));end

function z=mass_action__dif_compartments__explicit_volume___1(k,VolCompart,Substrate), z=(k*Substrate*VolCompart);end

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


