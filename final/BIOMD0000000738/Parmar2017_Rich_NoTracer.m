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
% Model name = Mouse Iron Distribution - Rich iron diet (No Tracer)
%
% is http://identifiers.org/biomodels.db/MODEL1605030005
% is http://identifiers.org/biomodels.db/BIOMD0000000738
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(1) = 0.0117590568706314;
	x0(2) = 0.0379799887571665;
	x0(3) = 0.00394239990123767;
	x0(4) = 0.00200010981212238;
	x0(5) = 1.5821833083706E-5;
	x0(6) = 2.30017456622937E-8;
	x0(7) = 1.35248196757048E-5;
	x0(8) = 9.35334724058915E-6;
	x0(9) = 3.3311210465159E-8;
	x0(10) = 2.86841656341217E-4;
	x0(11) = 0.00303783614844319;


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
% Parameter:   id =  Km, name = Km
	global_par_Km=0.0159421218669513;
% Parameter:   id =  Ki, name = Ki
	global_par_Ki=1.0E-9;
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
% Parameter:   id =  Total_Fe__particle, name = Total_Fe (particle)
% Parameter:   id =  Total_Fe__conc, name = Total_Fe (conc)
% Parameter:   id =  FePlasma__particle, name = FePlasma (particle)
% Parameter:   id =  kInBM, name = kInBM
	global_par_kInBM=15.7690636138556;
% Parameter:   id =  kBMSpleen, name = kBMSpleen
	global_par_kBMSpleen=0.061902954378781;
% Parameter:   id =  Total_Fe__g, name = Total_Fe (g)
% Parameter:   id =  Total_Tf__particle, name = Total_Tf (particle)
% Parameter:   id =  Total_Tf__conc, name = Total_Tf (conc)
% Parameter:   id =  Total_Tf__mg_ml, name = Total_Tf (mg/ml)
% Parameter:   id =  vDiet, name = vDiet
	global_par_vDiet=0.00415624;
% Parameter:   id =  FePlasma_conc, name = FePlasma(conc)
% Parameter:   id =  TfSaturation, name = TfSaturation
% Parameter:   id =  quantity_to_number_factor, name = quantity to number factor
	global_par_quantity_to_number_factor=6.02214179E23;
% Parameter:   id =  Avogadro, name = Avogadro
	global_par_Avogadro=6.02214179E23;
% Parameter:   id =  ModelValue_57_0, name = Initial for Avogadro
	global_par_ModelValue_57_0=6.02214179E23;
% assignmentRule: variable = Total_Fe__particle
	global_par_Total_Fe__particle=x(1)*global_par_Avogadro*compartment_Duodenum+x(4)*global_par_Avogadro*compartment_Liver+x(3)*global_par_Avogadro*compartment_Spleen+x(2)*global_par_Avogadro*compartment_RBC+x(10)*global_par_Avogadro*compartment_RestOfBody+2*x(7)*global_par_Avogadro*compartment_Plasma+x(8)*global_par_Avogadro*compartment_Plasma+x(9)*global_par_Avogadro*compartment_Plasma+x(11)*global_par_Avogadro*compartment_BoneMarrow;
% assignmentRule: variable = Total_Fe__conc
	global_par_Total_Fe__conc=(x(1)*global_par_Avogadro*compartment_Duodenum+x(4)*global_par_Avogadro*compartment_Liver+x(3)*global_par_Avogadro*compartment_Spleen+x(2)*global_par_Avogadro*compartment_RBC+x(10)*global_par_Avogadro*compartment_RestOfBody+2*x(7)*global_par_Avogadro*compartment_Plasma+x(8)*global_par_Avogadro*compartment_Plasma+x(9)*global_par_Avogadro*compartment_Plasma+x(11)*global_par_Avogadro*compartment_BoneMarrow)/(global_par_ModelValue_57_0*(compartment_Duodenum+compartment_Liver+compartment_Plasma+compartment_RBC+compartment_RestOfBody+compartment_Spleen));
% assignmentRule: variable = FePlasma__particle
	global_par_FePlasma__particle=2*x(7)*global_par_Avogadro*compartment_Plasma+x(8)*global_par_Avogadro*compartment_Plasma+x(9)*global_par_Avogadro*compartment_Plasma;
% assignmentRule: variable = Total_Fe__g
	global_par_Total_Fe__g=global_par_Total_Fe__particle*55.845/global_par_ModelValue_57_0;
% assignmentRule: variable = Total_Tf__particle
	global_par_Total_Tf__particle=x(5)*global_par_Avogadro*compartment_Plasma+x(8)*global_par_Avogadro*compartment_Plasma+x(7)*global_par_Avogadro*compartment_Plasma;
% assignmentRule: variable = Total_Tf__conc
	global_par_Total_Tf__conc=global_par_Total_Tf__particle/(global_par_ModelValue_57_0*compartment_Plasma);
% assignmentRule: variable = Total_Tf__mg_ml
	global_par_Total_Tf__mg_ml=global_par_Total_Tf__conc*80;
% assignmentRule: variable = FePlasma_conc
	global_par_FePlasma_conc=global_par_FePlasma__particle/(compartment_Plasma*global_par_ModelValue_57_0);
% assignmentRule: variable = TfSaturation
	global_par_TfSaturation=100*(2*x(7)*global_par_Avogadro*compartment_Plasma+x(8)*global_par_Avogadro*compartment_Plasma)/(2*(x(5)*global_par_Avogadro*compartment_Plasma+x(7)*global_par_Avogadro*compartment_Plasma+x(8)*global_par_Avogadro*compartment_Plasma));

% Reaction: id = HepcidinDecay, name = HepcidinDecay	% Local Parameter:   id =  k1, name = k1
	reaction_HepcidinDecay_k1=0.75616;

	reaction_HepcidinDecay=compartment_Plasma*reaction_HepcidinDecay_k1*x(6);

% Reaction: id = Duo_NTBI, name = Duo_NTBI
	reaction_Duo_NTBI=non_competitive_inhibition(global_par_VDuoNTBI, compartment_Duodenum, x(1), global_par_Km, x(6), global_par_Ki);

% Reaction: id = Fe2Tf_BM, name = Fe2Tf_BM
	reaction_Fe2Tf_BM=mass_action__dif_compartments__explicit_volume___1(global_par_kInBM, compartment_Plasma, x(7));

% Reaction: id = RBC_Spleen, name = RBC_Spleen
	reaction_RBC_Spleen=mass_action__dif_compartments__explicit_volume___1(global_par_vRBCSpleen, compartment_RBC, x(2));

% Reaction: id = Spleen_NTBI, name = Spleen_NTBI
	reaction_Spleen_NTBI=non_competitive_inhibition(global_par_VSpleenNTBI, compartment_Spleen, x(3), global_par_Km, x(6), global_par_Ki);

% Reaction: id = Liver_NTBI, name = Liver_NTBI
	reaction_Liver_NTBI=non_competitive_inhibition(global_par_VLiverNTBI, compartment_Liver, x(4), global_par_Km, x(6), global_par_Ki);

% Reaction: id = NTBI_Fe1Tf, name = NTBI_Fe1Tf
	reaction_NTBI_Fe1Tf=compartment_Plasma*global_par_kNTBI_Fe1Tf*x(9)*x(5);

% Reaction: id = DuoLoss, name = DuoLoss
	reaction_DuoLoss=mass_action__dif_compartments__explicit_volume___1(global_par_kDuoLoss, compartment_Duodenum, x(1));

% Reaction: id = Fe2Tf_Liver, name = Fe2Tf_Liver
	reaction_Fe2Tf_Liver=mass_action__dif_compartments__explicit_volume___1(global_par_kInLiver, compartment_Plasma, x(7));

% Reaction: id = Fe2Tf_Rest, name = Fe2Tf_Rest
	reaction_Fe2Tf_Rest=mass_action__dif_compartments__explicit_volume___1(global_par_kInRest, compartment_Plasma, x(7));

% Reaction: id = RestLoss, name = RestLoss
	reaction_RestLoss=compartment_RestOfBody*global_par_kRestLoss*x(10);

% Reaction: id = Fe2Tf_Duo, name = Fe2Tf_Duo
	reaction_Fe2Tf_Duo=mass_action__dif_compartments__explicit_volume___1(global_par_kInDuo, compartment_Plasma, x(7));

% Reaction: id = Rest_NTBI, name = Rest_NTBI
	reaction_Rest_NTBI=non_competitive_inhibition(global_par_VRestNTBI, compartment_RestOfBody, x(10), global_par_Km, x(6), global_par_Ki);

% Reaction: id = Fe1Tf_Fe2Tf, name = Fe1Tf_Fe2Tf
	reaction_Fe1Tf_Fe2Tf=compartment_Plasma*global_par_kFe1Tf_Fe2Tf*x(8)*x(9);

% Reaction: id = Fe1Tf_Liver, name = Fe1Tf_Liver
	reaction_Fe1Tf_Liver=mass_action__dif_compartments__explicit_volume___1(global_par_kInLiver, compartment_Plasma, x(8));

% Reaction: id = Fe1Tf_BM, name = Fe1Tf_BM
	reaction_Fe1Tf_BM=mass_action__dif_compartments__explicit_volume___1(global_par_kInBM, compartment_Plasma, x(8));

% Reaction: id = Fe1Tf_Rest, name = Fe1Tf_Rest
	reaction_Fe1Tf_Rest=mass_action__dif_compartments__explicit_volume___1(global_par_kInRest, compartment_Plasma, x(8));

% Reaction: id = Fe1Tf_Duo, name = Fe1Tf_Duo
	reaction_Fe1Tf_Duo=mass_action__dif_compartments__explicit_volume___1(global_par_kInDuo, compartment_Plasma, x(8));

% Reaction: id = BM_RBC, name = BM_RBC
	reaction_BM_RBC=mass_action__dif_compartments__explicit_volume___1(global_par_kInRBC, compartment_BoneMarrow, x(11));

% Reaction: id = BM_Spleen, name = BM_Spleen
	reaction_BM_Spleen=mass_action__dif_compartments__explicit_volume___1(global_par_kBMSpleen, compartment_BoneMarrow, x(11));

% Species:   id = FeOutside, name = FeOutside, constant	const_species_FeOutside=0.0;

	xdot=zeros(11,1);
	
% Species:   id = FeDuo, name = FeDuo, affected by kineticLaw
	xdot(1) = (1/(compartment_Duodenum))*(( 1.0 * reaction_Diet) + (-1.0 * reaction_Duo_NTBI) + (-1.0 * reaction_DuoLoss) + ( 2.0 * reaction_Fe2Tf_Duo) + ( 1.0 * reaction_Fe1Tf_Duo));
	
% Species:   id = FeRBC, name = FeRBC, affected by kineticLaw
	xdot(2) = (1/(compartment_RBC))*((-1.0 * reaction_RBC_Spleen) + ( 1.0 * reaction_BM_RBC));
	
% Species:   id = FeSpleen, name = FeSpleen, affected by kineticLaw
	xdot(3) = (1/(compartment_Spleen))*(( 1.0 * reaction_RBC_Spleen) + (-1.0 * reaction_Spleen_NTBI) + ( 1.0 * reaction_BM_Spleen));
	
% Species:   id = FeLiver, name = FeLiver, affected by kineticLaw
	xdot(4) = (1/(compartment_Liver))*((-1.0 * reaction_Liver_NTBI) + ( 2.0 * reaction_Fe2Tf_Liver) + ( 1.0 * reaction_Fe1Tf_Liver));
	
% Species:   id = Tf, name = Tf, affected by kineticLaw
	xdot(5) = (1/(compartment_Plasma))*(( 1.0 * reaction_Fe2Tf_BM) + (-1.0 * reaction_NTBI_Fe1Tf) + ( 1.0 * reaction_Fe2Tf_Liver) + ( 1.0 * reaction_Fe2Tf_Rest) + ( 1.0 * reaction_Fe2Tf_Duo) + ( 1.0 * reaction_Fe1Tf_Liver) + ( 1.0 * reaction_Fe1Tf_BM) + ( 1.0 * reaction_Fe1Tf_Rest) + ( 1.0 * reaction_Fe1Tf_Duo));
	
% Species:   id = Hepcidin, name = Hepcidin, affected by kineticLaw
	xdot(6) = (1/(compartment_Plasma))*(( 1.0 * reaction_HepcidinSynthesis) + (-1.0 * reaction_HepcidinDecay));
	
% Species:   id = Fe2Tf, name = Fe2Tf, affected by kineticLaw
	xdot(7) = (1/(compartment_Plasma))*((-1.0 * reaction_Fe2Tf_BM) + (-1.0 * reaction_Fe2Tf_Liver) + (-1.0 * reaction_Fe2Tf_Rest) + (-1.0 * reaction_Fe2Tf_Duo) + ( 1.0 * reaction_Fe1Tf_Fe2Tf));
	
% Species:   id = Fe1Tf, name = Fe1Tf, affected by kineticLaw
	xdot(8) = (1/(compartment_Plasma))*(( 1.0 * reaction_NTBI_Fe1Tf) + (-1.0 * reaction_Fe1Tf_Fe2Tf) + (-1.0 * reaction_Fe1Tf_Liver) + (-1.0 * reaction_Fe1Tf_BM) + (-1.0 * reaction_Fe1Tf_Rest) + (-1.0 * reaction_Fe1Tf_Duo));
	
% Species:   id = NTBI, name = NTBI, affected by kineticLaw
	xdot(9) = (1/(compartment_Plasma))*(( 1.0 * reaction_Duo_NTBI) + ( 1.0 * reaction_Spleen_NTBI) + ( 1.0 * reaction_Liver_NTBI) + (-1.0 * reaction_NTBI_Fe1Tf) + ( 1.0 * reaction_Rest_NTBI) + (-1.0 * reaction_Fe1Tf_Fe2Tf));
	
% Species:   id = FeRest, name = FeRest, affected by kineticLaw
	xdot(10) = (1/(compartment_RestOfBody))*(( 2.0 * reaction_Fe2Tf_Rest) + (-1.0 * reaction_RestLoss) + (-1.0 * reaction_Rest_NTBI) + ( 1.0 * reaction_Fe1Tf_Rest));
	
% Species:   id = FeBM, name = FeBM, affected by kineticLaw
	xdot(11) = (1/(compartment_BoneMarrow))*(( 2.0 * reaction_Fe2Tf_BM) + ( 1.0 * reaction_Fe1Tf_BM) + (-1.0 * reaction_BM_RBC) + (-1.0 * reaction_BM_Spleen));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=mass_action__dif_compartments__explicit_volume___1(k,VolCompart,Substrate), z=(k*Substrate*VolCompart);end

function z=non_competitive_inhibition(v,volume,substrate,Km,noncompet_inhib,Ki), z=(v*volume*substrate/((Km+substrate)*(1+noncompet_inhib/Ki)));end

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


