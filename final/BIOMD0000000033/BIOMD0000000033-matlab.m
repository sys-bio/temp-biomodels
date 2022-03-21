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
% Model name = Brown2004 - NGF and EGF signaling
%
% is http://identifiers.org/biomodels.db/MODEL6619514794
% is http://identifiers.org/biomodels.db/BIOMD0000000033
% isDescribedBy http://identifiers.org/pubmed/16204838
%


function main()
%Initial conditions vector
	x0=zeros(28,1);
	x0(1) = 1.0002E7;
	x0(2) = 456000.0;
	x0(3) = 80000.0;
	x0(4) = 0.0;
	x0(5) = 10000.0;
	x0(6) = 0.0;
	x0(7) = 120000.0;
	x0(8) = 0.0;
	x0(9) = 120000.0;
	x0(10) = 0.0;
	x0(11) = 120000.0;
	x0(12) = 0.0;
	x0(13) = 120000.0;
	x0(14) = 0.0;
	x0(15) = 120000.0;
	x0(16) = 0.0;
	x0(17) = 600000.0;
	x0(18) = 0.0;
	x0(19) = 600000.0;
	x0(20) = 0.0;
	x0(21) = 120000.0;
	x0(22) = 0.0;
	x0(23) = 120000.0;
	x0(24) = 0.0;
	x0(25) = 120000.0;
	x0(26) = 0.0;
	x0(27) = 120000.0;
	x0(28) = 0.0;


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
% Parameter:   id =  krbEGF, name = krbEGF
	global_par_krbEGF=2.18503E-5;
% Parameter:   id =  kruEGF, name = kruEGF
	global_par_kruEGF=0.0121008;
% Parameter:   id =  krbNGF, name = krbNGF
	global_par_krbNGF=1.38209E-7;
% Parameter:   id =  kruNGF, name = kruNGF
	global_par_kruNGF=0.00723811;
% Parameter:   id =  kEGF, name = kEGF
	global_par_kEGF=694.731;
% Parameter:   id =  KmEGF, name = KmEGF
	global_par_KmEGF=6086070.0;
% Parameter:   id =  kNGF, name = kNGF
	global_par_kNGF=389.428;
% Parameter:   id =  KmNGF, name = KmNGF
	global_par_KmNGF=2112.66;
% Parameter:   id =  kdSos, name = kdSos
	global_par_kdSos=1611.97;
% Parameter:   id =  KmdSos, name = KmdSos
	global_par_KmdSos=896896.0;
% Parameter:   id =  kSos, name = kSos
	global_par_kSos=32.344;
% Parameter:   id =  KmSos, name = KmSos
	global_par_KmSos=35954.3;
% Parameter:   id =  kRasGap, name = kRasGap
	global_par_kRasGap=1509.36;
% Parameter:   id =  KmRasGap, name = KmRasGap
	global_par_KmRasGap=1432410.0;
% Parameter:   id =  kRasToRaf1, name = kRasToRaf1
	global_par_kRasToRaf1=0.884096;
% Parameter:   id =  KmRasToRaf1, name = KmRasToRaf1
	global_par_KmRasToRaf1=62464.6;
% Parameter:   id =  kpRaf1, name = kpRaf1
	global_par_kpRaf1=185.759;
% Parameter:   id =  KmpRaf1, name = KmpRaf1
	global_par_KmpRaf1=4768350.0;
% Parameter:   id =  kpBRaf, name = kpBRaf
	global_par_kpBRaf=125.089;
% Parameter:   id =  KmpBRaf, name = KmpBRaf
	global_par_KmpBRaf=157948.0;
% Parameter:   id =  kdMek, name = kdMek
	global_par_kdMek=2.83243;
% Parameter:   id =  KmdMek, name = KmdMek
	global_par_KmdMek=518753.0;
% Parameter:   id =  kpMekCytoplasmic, name = kpMekCytoplasmic
	global_par_kpMekCytoplasmic=9.85367;
% Parameter:   id =  KmpMekCytoplasmic, name = KmpMekCytoplasmic
	global_par_KmpMekCytoplasmic=1007340.0;
% Parameter:   id =  kdErk, name = kdErk
	global_par_kdErk=8.8912;
% Parameter:   id =  KmdErk, name = KmdErk
	global_par_KmdErk=3496490.0;
% Parameter:   id =  kpP90Rsk, name = kpP90Rsk
	global_par_kpP90Rsk=0.0213697;
% Parameter:   id =  KmpP90Rsk, name = KmpP90Rsk
	global_par_KmpP90Rsk=763523.0;
% Parameter:   id =  kPI3K, name = kPI3K
	global_par_kPI3K=10.6737;
% Parameter:   id =  KmPI3K, name = KmPI3K
	global_par_KmPI3K=184912.0;
% Parameter:   id =  kPI3KRas, name = kPI3KRas
	global_par_kPI3KRas=0.0771067;
% Parameter:   id =  KmPI3KRas, name = KmPI3KRas
	global_par_KmPI3KRas=272056.0;
% Parameter:   id =  kAkt, name = kAkt
	global_par_kAkt=0.0566279;
% Parameter:   id =  KmAkt, name = KmAkt
	global_par_KmAkt=653951.0;
% Parameter:   id =  kdRaf1ByAkt, name = kdRaf1ByAkt
	global_par_kdRaf1ByAkt=15.1212;
% Parameter:   id =  KmRaf1ByAkt, name = KmRaf1ByAkt
	global_par_KmRaf1ByAkt=119355.0;
% Parameter:   id =  kC3GNGF, name = kC3GNGF
	global_par_kC3GNGF=146.912;
% Parameter:   id =  KmC3GNGF, name = KmC3GNGF
	global_par_KmC3GNGF=12876.2;
% Parameter:   id =  kC3G, name = kC3G
	global_par_kC3G=1.40145;
% Parameter:   id =  KmC3G, name = KmC3G
	global_par_KmC3G=10965.6;
% Parameter:   id =  kRapGap, name = kRapGap
	global_par_kRapGap=27.265;
% Parameter:   id =  KmRapGap, name = KmRapGap
	global_par_KmRapGap=295990.0;
% Parameter:   id =  kRap1ToBRaf, name = kRap1ToBRaf
	global_par_kRap1ToBRaf=2.20995;
% Parameter:   id =  KmRap1ToBRaf, name = KmRap1ToBRaf
	global_par_KmRap1ToBRaf=1025460.0;
% Parameter:   id =  kdRaf1, name = kdRaf1
	global_par_kdRaf1=0.126329;
% Parameter:   id =  KmdRaf1, name = KmdRaf1
	global_par_KmdRaf1=1061.71;
% Parameter:   id =  kdBRaf, name = kdBRaf
	global_par_kdBRaf=441.287;
% Parameter:   id =  KmdBRaf, name = KmdBRaf
	global_par_KmdBRaf=1.08795E7;

% Reaction: id = EGFBindingReaction, name = EGF binding
	reaction_EGFBindingReaction=compartment_cell*global_par_krbEGF*x(1)*x(3);

% Reaction: id = EGFUnbindingReaction, name = EFG unbinding
	reaction_EGFUnbindingReaction=compartment_cell*global_par_kruEGF*x(4);

% Reaction: id = NGFBindingReaction, name = NGF binding
	reaction_NGFBindingReaction=global_par_krbNGF*x(2)*x(5)*compartment_cell;

% Reaction: id = NGFUnbindingReaction, name = NGF unbinding
	reaction_NGFUnbindingReaction=global_par_kruNGF*x(6)*compartment_cell;

% Reaction: id = SosActivationByEGFReaction, name = SOS activation by EGF
	reaction_SosActivationByEGFReaction=compartment_cell*global_par_kEGF*x(4)*x(7)/(x(7)+global_par_KmEGF);

% Reaction: id = SosActivationByNGFReaction, name = SOS activation by NGF
	reaction_SosActivationByNGFReaction=compartment_cell*global_par_kNGF*x(6)*x(7)/(x(7)+global_par_KmNGF);

% Reaction: id = SosDeactivationReaction, name = SOS deactivation
	reaction_SosDeactivationReaction=compartment_cell*global_par_kdSos*x(10)*x(8)/(x(8)+global_par_KmdSos);

% Reaction: id = RasActivationReaction, name = Ras activation
	reaction_RasActivationReaction=compartment_cell*global_par_kSos*x(8)*x(11)/(x(11)+global_par_KmSos);

% Reaction: id = RasDeactivationReaction, name = Ras deactivation
	reaction_RasDeactivationReaction=compartment_cell*global_par_kRasGap*const_species_RasGapActive*x(12)/(x(12)+global_par_KmRasGap);

% Reaction: id = Raf1ByRasActivationReaction, name = Raf1 activation by Ras
	reaction_Raf1ByRasActivationReaction=compartment_cell*global_par_kRasToRaf1*x(12)*x(13)/(x(13)+global_par_KmRasToRaf1);

% Reaction: id = MekbyRaf1ActivationReaction, name = Mek activation by Raf1
	reaction_MekbyRaf1ActivationReaction=compartment_cell*global_par_kpRaf1*x(14)*x(17)/(x(17)+global_par_KmpRaf1);

% Reaction: id = MekbyBRafActivationReaction, name = Mek activation by B-Raf
	reaction_MekbyBRafActivationReaction=compartment_cell*global_par_kpBRaf*x(16)*x(17)/(x(17)+global_par_KmpBRaf);

% Reaction: id = ErkActivationReaction, name = Erk activation
	reaction_ErkActivationReaction=compartment_cell*global_par_kpMekCytoplasmic*x(18)*x(19)/(x(19)+global_par_KmpMekCytoplasmic);

% Reaction: id = MekDeactivationReaction, name = Mek deactivation
	reaction_MekDeactivationReaction=compartment_cell*global_par_kdMek*const_species_PP2AActive*x(18)/(x(18)+global_par_KmdMek);

% Reaction: id = ErkDeactivationReaction, name = Erk deactivation
	reaction_ErkDeactivationReaction=compartment_cell*global_par_kdErk*const_species_PP2AActive*x(20)/(x(20)+global_par_KmdErk);

% Reaction: id = Raf1byPPtaseDeactivationReaction, name = Raf1 deactivation by PPase
	reaction_Raf1byPPtaseDeactivationReaction=compartment_cell*global_par_kdRaf1*const_species_Raf1PPtase*x(14)/(x(14)+global_par_KmdRaf1);

% Reaction: id = P90RskActivationReaction, name = P90Rsk activation
	reaction_P90RskActivationReaction=compartment_cell*global_par_kpP90Rsk*x(20)*x(9)/(x(9)+global_par_KmpP90Rsk);

% Reaction: id = PI3KbyEGFRActivationReaction, name = PI3K activation by EGFR
	reaction_PI3KbyEGFRActivationReaction=compartment_cell*global_par_kPI3K*x(4)*x(21)/(x(21)+global_par_KmPI3K);

% Reaction: id = PI3KbyRasActivationReaction, name = PI3K activation by Ras
	reaction_PI3KbyRasActivationReaction=compartment_cell*global_par_kPI3KRas*x(12)*x(21)/(x(21)+global_par_KmPI3KRas);

% Reaction: id = AktActivationReaction, name = Akt activation
	reaction_AktActivationReaction=compartment_cell*global_par_kAkt*x(22)*x(23)/(x(23)+global_par_KmAkt);

% Reaction: id = Raf1ByAktDeactivationReaction, name = Raf1 deactivation by Akt
	reaction_Raf1ByAktDeactivationReaction=compartment_cell*global_par_kdRaf1ByAkt*x(24)*x(14)/(x(14)+global_par_KmRaf1ByAkt);

% Reaction: id = C3GActivationReaction, name = C3G activation
	reaction_C3GActivationReaction=compartment_cell*global_par_kC3GNGF*x(6)*x(25)/(x(25)+global_par_KmC3GNGF);

% Reaction: id = Rap1ActivationReaction, name = Rap1 activation
	reaction_Rap1ActivationReaction=compartment_cell*global_par_kC3G*x(26)*x(27)/(x(27)+global_par_KmC3G);

% Reaction: id = Rap1DeactivationReaction, name = Rap1 deactivation
	reaction_Rap1DeactivationReaction=compartment_cell*global_par_kRapGap*const_species_RapGapActive*x(28)/(x(28)+global_par_KmRapGap);

% Reaction: id = BRafByRap1ActivationReaction, name = BRaf activation by Rap1
	reaction_BRafByRap1ActivationReaction=compartment_cell*global_par_kRap1ToBRaf*x(28)*x(15)/(x(15)+global_par_KmRap1ToBRaf);

% Reaction: id = BRafbyPPtaseDeactivationReaction, name = BRaf deactivation by PPase
	reaction_BRafbyPPtaseDeactivationReaction=compartment_cell*global_par_kdBRaf*const_species_Raf1PPtase*x(16)/(x(16)+global_par_KmdBRaf);

% Species:   id = RasGapActive, name = RasGapActive, constant	const_species_RasGapActive=120000.0;

% Species:   id = RapGapActive, name = RapGapActive, constant	const_species_RapGapActive=120000.0;

% Species:   id = PP2AActive, name = PP2AActive, constant	const_species_PP2AActive=120000.0;

% Species:   id = Raf1PPtase, name = Raf1PPtase, constant	const_species_Raf1PPtase=120000.0;

	xdot=zeros(28,1);
	
% Species:   id = EGF, name = EGF, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_EGFBindingReaction) + ( 1.0 * reaction_EGFUnbindingReaction));
	
% Species:   id = NGF, name = NGF, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_NGFBindingReaction) + ( 1.0 * reaction_NGFUnbindingReaction));
	
% Species:   id = freeEGFReceptor, name = freeEGFReceptor, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*((-1.0 * reaction_EGFBindingReaction) + ( 1.0 * reaction_EGFUnbindingReaction));
	
% Species:   id = boundEGFReceptor, name = boundEGFReceptor, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_EGFBindingReaction) + (-1.0 * reaction_EGFUnbindingReaction));
	
% Species:   id = freeNGFReceptor, name = freeNGFReceptor, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*((-1.0 * reaction_NGFBindingReaction) + ( 1.0 * reaction_NGFUnbindingReaction));
	
% Species:   id = boundNGFReceptor, name = boundNGFReceptor, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_NGFBindingReaction) + (-1.0 * reaction_NGFUnbindingReaction));
	
% Species:   id = SosInactive, name = SosInactive, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*((-1.0 * reaction_SosActivationByEGFReaction) + (-1.0 * reaction_SosActivationByNGFReaction) + ( 1.0 * reaction_SosDeactivationReaction));
	
% Species:   id = SosActive, name = SosActive, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_SosActivationByEGFReaction) + ( 1.0 * reaction_SosActivationByNGFReaction) + (-1.0 * reaction_SosDeactivationReaction));
	
% Species:   id = P90RskInactive, name = P90RskInactive, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*((-1.0 * reaction_P90RskActivationReaction));
	
% Species:   id = P90RskActive, name = P90RskActive, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_P90RskActivationReaction));
	
% Species:   id = RasInactive, name = RasInactive, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*((-1.0 * reaction_RasActivationReaction) + ( 1.0 * reaction_RasDeactivationReaction));
	
% Species:   id = RasActive, name = RasActive, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_RasActivationReaction) + (-1.0 * reaction_RasDeactivationReaction));
	
% Species:   id = Raf1Inactive, name = Raf1Inactive, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*((-1.0 * reaction_Raf1ByRasActivationReaction) + ( 1.0 * reaction_Raf1byPPtaseDeactivationReaction) + ( 1.0 * reaction_Raf1ByAktDeactivationReaction));
	
% Species:   id = Raf1Active, name = Raf1Active, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*(( 1.0 * reaction_Raf1ByRasActivationReaction) + (-1.0 * reaction_Raf1byPPtaseDeactivationReaction) + (-1.0 * reaction_Raf1ByAktDeactivationReaction));
	
% Species:   id = BRafInactive, name = BRafInactive, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*((-1.0 * reaction_BRafByRap1ActivationReaction) + ( 1.0 * reaction_BRafbyPPtaseDeactivationReaction));
	
% Species:   id = BRafActive, name = BRafActive, affected by kineticLaw
	xdot(16) = (1/(compartment_cell))*(( 1.0 * reaction_BRafByRap1ActivationReaction) + (-1.0 * reaction_BRafbyPPtaseDeactivationReaction));
	
% Species:   id = MekInactive, name = MekInactive, affected by kineticLaw
	xdot(17) = (1/(compartment_cell))*((-1.0 * reaction_MekbyRaf1ActivationReaction) + (-1.0 * reaction_MekbyBRafActivationReaction) + ( 1.0 * reaction_MekDeactivationReaction));
	
% Species:   id = MekActive, name = MekActive, affected by kineticLaw
	xdot(18) = (1/(compartment_cell))*(( 1.0 * reaction_MekbyRaf1ActivationReaction) + ( 1.0 * reaction_MekbyBRafActivationReaction) + (-1.0 * reaction_MekDeactivationReaction));
	
% Species:   id = ErkInactive, name = ErkInactive, affected by kineticLaw
	xdot(19) = (1/(compartment_cell))*((-1.0 * reaction_ErkActivationReaction) + ( 1.0 * reaction_ErkDeactivationReaction));
	
% Species:   id = ErkActive, name = ErkActive, affected by kineticLaw
	xdot(20) = (1/(compartment_cell))*(( 1.0 * reaction_ErkActivationReaction) + (-1.0 * reaction_ErkDeactivationReaction));
	
% Species:   id = PI3KInactive, name = PI3KInactive, affected by kineticLaw
	xdot(21) = (1/(compartment_cell))*((-1.0 * reaction_PI3KbyEGFRActivationReaction) + (-1.0 * reaction_PI3KbyRasActivationReaction));
	
% Species:   id = PI3KActive, name = PI3KActive, affected by kineticLaw
	xdot(22) = (1/(compartment_cell))*(( 1.0 * reaction_PI3KbyEGFRActivationReaction) + ( 1.0 * reaction_PI3KbyRasActivationReaction));
	
% Species:   id = AktInactive, name = AktInactive, affected by kineticLaw
	xdot(23) = (1/(compartment_cell))*((-1.0 * reaction_AktActivationReaction));
	
% Species:   id = AktActive, name = AktActive, affected by kineticLaw
	xdot(24) = (1/(compartment_cell))*(( 1.0 * reaction_AktActivationReaction));
	
% Species:   id = C3GInactive, name = C3GInactive, affected by kineticLaw
	xdot(25) = (1/(compartment_cell))*((-1.0 * reaction_C3GActivationReaction));
	
% Species:   id = C3GActive, name = C3GActive, affected by kineticLaw
	xdot(26) = (1/(compartment_cell))*(( 1.0 * reaction_C3GActivationReaction));
	
% Species:   id = Rap1Inactive, name = Rap1Inactive, affected by kineticLaw
	xdot(27) = (1/(compartment_cell))*((-1.0 * reaction_Rap1ActivationReaction) + ( 1.0 * reaction_Rap1DeactivationReaction));
	
% Species:   id = Rap1Active, name = Rap1Active, affected by kineticLaw
	xdot(28) = (1/(compartment_cell))*(( 1.0 * reaction_Rap1ActivationReaction) + (-1.0 * reaction_Rap1DeactivationReaction));
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


