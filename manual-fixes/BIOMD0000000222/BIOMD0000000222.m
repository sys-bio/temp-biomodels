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
% Model name = Singh2006_TCA_Ecoli_glucose
%
% is http://identifiers.org/biomodels.db/MODEL8583955822
% is http://identifiers.org/biomodels.db/BIOMD0000000222
% isDescribedBy http://identifiers.org/pubmed/16887020
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(1) = 0.5;
	x0(2) = 0.004;
	x0(3) = 1.0E-4;
	x0(4) = 3.0;
	x0(5) = 0.018;
	x0(6) = 0.2;
	x0(7) = 0.04;
	x0(8) = 0.6;
	x0(9) = 0.3;
	x0(10) = 1.8;
	x0(11) = 4.0;
	x0(12) = 0.1;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;

% Reaction: id = CS	% Local Parameter:   id =  Vf_cs, name = Vf_cs
	reaction_CS_Vf_cs=91.2;
	% Local Parameter:   id =  Kaca_cs, name = Kaca_cs
	reaction_CS_Kaca_cs=0.03;
	% Local Parameter:   id =  Koaa_cs, name = Koaa_cs
	reaction_CS_Koaa_cs=0.07;
	% Local Parameter:   id =  Vr_cs, name = Vr_cs
	reaction_CS_Vr_cs=0.912;
	% Local Parameter:   id =  Kcoa_cs, name = Kcoa_cs
	reaction_CS_Kcoa_cs=0.3;
	% Local Parameter:   id =  Kcit_cs, name = Kcit_cs
	reaction_CS_Kcit_cs=0.7;

	reaction_CS=compartment_cell*(reaction_CS_Vf_cs*x(1)/reaction_CS_Kaca_cs*x(2)/reaction_CS_Koaa_cs-reaction_CS_Vr_cs*x(3)/reaction_CS_Kcoa_cs*x(4)/reaction_CS_Kcit_cs)/((1+x(1)/reaction_CS_Kaca_cs+x(3)/reaction_CS_Kcoa_cs)*(1+x(2)/reaction_CS_Koaa_cs+x(4)/reaction_CS_Kcit_cs));

% Reaction: id = ACN	% Local Parameter:   id =  Vf_acn, name = Vf_acn
	reaction_ACN_Vf_acn=91.2;
	% Local Parameter:   id =  Kcit_acn, name = Kcit_acn
	reaction_ACN_Kcit_acn=1.7;
	% Local Parameter:   id =  Vr_acn, name = Vr_acn
	reaction_ACN_Vr_acn=0.912;
	% Local Parameter:   id =  Kicit_acn, name = Kicit_acn
	reaction_ACN_Kicit_acn=3.33;

	reaction_ACN=compartment_cell*(reaction_ACN_Vf_acn*x(4)/reaction_ACN_Kcit_acn-reaction_ACN_Vr_acn*x(5)/reaction_ACN_Kicit_acn)/(1+x(4)/reaction_ACN_Kcit_acn+x(5)/reaction_ACN_Kicit_acn);

% Reaction: id = ICD	% Local Parameter:   id =  Vf_icd, name = Vf_icd
	reaction_ICD_Vf_icd=14.72;
	% Local Parameter:   id =  Kicit_icd, name = Kicit_icd
	reaction_ICD_Kicit_icd=0.008;
	% Local Parameter:   id =  Vr_icd, name = Vr_icd
	reaction_ICD_Vr_icd=0.1472;
	% Local Parameter:   id =  Kakg_icd, name = Kakg_icd
	reaction_ICD_Kakg_icd=0.13;

	reaction_ICD=compartment_cell*(reaction_ICD_Vf_icd*x(5)/reaction_ICD_Kicit_icd-reaction_ICD_Vr_icd*x(6)/reaction_ICD_Kakg_icd)/(1+x(5)/reaction_ICD_Kicit_icd+x(6)/reaction_ICD_Kakg_icd);

% Reaction: id = KDH	% Local Parameter:   id =  Vf_kdh, name = Vf_kdh
	reaction_KDH_Vf_kdh=35.84;
	% Local Parameter:   id =  Kakg_kdh, name = Kakg_kdh
	reaction_KDH_Kakg_kdh=0.1;
	% Local Parameter:   id =  Vr_kdh, name = Vr_kdh
	reaction_KDH_Vr_kdh=0.3584;
	% Local Parameter:   id =  Ksca_kdh, name = Ksca_kdh
	reaction_KDH_Ksca_kdh=1.0;

	reaction_KDH=compartment_cell*(reaction_KDH_Vf_kdh*x(6)/reaction_KDH_Kakg_kdh-reaction_KDH_Vr_kdh*x(7)/reaction_KDH_Ksca_kdh)/(1+x(6)/reaction_KDH_Kakg_kdh+x(7)/reaction_KDH_Ksca_kdh);

% Reaction: id = ScAS	% Local Parameter:   id =  Vf_scas, name = Vf_scas
	reaction_ScAS_Vf_scas=3.5;
	% Local Parameter:   id =  Ksca_scas, name = Ksca_scas
	reaction_ScAS_Ksca_scas=0.02;
	% Local Parameter:   id =  Vr_scas, name = Vr_scas
	reaction_ScAS_Vr_scas=0.035;
	% Local Parameter:   id =  Ksuc_scas, name = Ksuc_scas
	reaction_ScAS_Ksuc_scas=5.0;

	reaction_ScAS=compartment_cell*(reaction_ScAS_Vf_scas*x(7)/reaction_ScAS_Ksca_scas-reaction_ScAS_Vr_scas*x(8)/reaction_ScAS_Ksuc_scas)/(1+x(7)/reaction_ScAS_Ksca_scas+x(8)/reaction_ScAS_Ksuc_scas);

% Reaction: id = SDH	% Local Parameter:   id =  Vf_sdh, name = Vf_sdh
	reaction_SDH_Vf_sdh=7.38;
	% Local Parameter:   id =  Ksuc_sdh, name = Ksuc_sdh
	reaction_SDH_Ksuc_sdh=0.02;
	% Local Parameter:   id =  Vr_sdh, name = Vr_sdh
	reaction_SDH_Vr_sdh=7.31;
	% Local Parameter:   id =  Kfa_sdh, name = Kfa_sdh
	reaction_SDH_Kfa_sdh=0.4;

	reaction_SDH=compartment_cell*(reaction_SDH_Vf_sdh*x(8)/reaction_SDH_Ksuc_sdh-reaction_SDH_Vr_sdh*x(9)/reaction_SDH_Kfa_sdh)/(1+x(8)/reaction_SDH_Ksuc_sdh+x(9)/reaction_SDH_Kfa_sdh);

% Reaction: id = FUM	% Local Parameter:   id =  Vf_fum, name = Vf_fum
	reaction_FUM_Vf_fum=44.64;
	% Local Parameter:   id =  Kfa_fum, name = Kfa_fum
	reaction_FUM_Kfa_fum=0.15;
	% Local Parameter:   id =  Vr_fum, name = Vr_fum
	reaction_FUM_Vr_fum=37.2;
	% Local Parameter:   id =  Kmal_fum, name = Kmal_fum
	reaction_FUM_Kmal_fum=0.04;

	reaction_FUM=compartment_cell*(reaction_FUM_Vf_fum*x(9)/reaction_FUM_Kfa_fum-reaction_FUM_Vr_fum*x(10)/reaction_FUM_Kmal_fum)/(1+x(9)/reaction_FUM_Kfa_fum+x(10)/reaction_FUM_Kmal_fum);

% Reaction: id = MDH	% Local Parameter:   id =  Vf_mdh, name = Vf_mdh
	reaction_MDH_Vf_mdh=356.64;
	% Local Parameter:   id =  Kmal_mdh, name = Kmal_mdh
	reaction_MDH_Kmal_mdh=2.6;
	% Local Parameter:   id =  Vr_mdh, name = Vr_mdh
	reaction_MDH_Vr_mdh=353.11;
	% Local Parameter:   id =  Koaa_mdh, name = Koaa_mdh
	reaction_MDH_Koaa_mdh=0.04;

	reaction_MDH=compartment_cell*(reaction_MDH_Vf_mdh*x(10)/reaction_MDH_Kmal_mdh-reaction_MDH_Vr_mdh*x(2)/reaction_MDH_Koaa_mdh)/(1+x(10)/reaction_MDH_Kmal_mdh+x(2)/reaction_MDH_Koaa_mdh);

% Reaction: id = ICL	% Local Parameter:   id =  Vf_icl, name = Vf_icl
	reaction_ICL_Vf_icl=1.9;
	% Local Parameter:   id =  Kicit_icl, name = Kicit_icl
	reaction_ICL_Kicit_icl=0.604;
	% Local Parameter:   id =  Vr_icl, name = Vr_icl
	reaction_ICL_Vr_icl=0.019;
	% Local Parameter:   id =  Ksuc_icl, name = Ksuc_icl
	reaction_ICL_Ksuc_icl=0.59;
	% Local Parameter:   id =  Kgly_icl, name = Kgly_icl
	reaction_ICL_Kgly_icl=0.13;

	reaction_ICL=compartment_cell*(reaction_ICL_Vf_icl*x(5)/reaction_ICL_Kicit_icl-reaction_ICL_Vr_icl*x(8)/reaction_ICL_Ksuc_icl*x(11)/reaction_ICL_Kgly_icl)/(1+x(5)/reaction_ICL_Kicit_icl+x(8)/reaction_ICL_Ksuc_icl+x(11)/reaction_ICL_Kgly_icl+x(5)/reaction_ICL_Kicit_icl*x(8)/reaction_ICL_Ksuc_icl+x(8)/reaction_ICL_Ksuc_icl*x(11)/reaction_ICL_Kgly_icl);

% Reaction: id = MS	% Local Parameter:   id =  Vf_ms, name = Vf_ms
	reaction_MS_Vf_ms=1.9;
	% Local Parameter:   id =  Kgly_ms, name = Kgly_ms
	reaction_MS_Kgly_ms=2.0;
	% Local Parameter:   id =  Kaca_ms, name = Kaca_ms
	reaction_MS_Kaca_ms=0.01;
	% Local Parameter:   id =  Vr_ms, name = Vr_ms
	reaction_MS_Vr_ms=0.019;
	% Local Parameter:   id =  Kmal_ms, name = Kmal_ms
	reaction_MS_Kmal_ms=1.0;
	% Local Parameter:   id =  Kcoa_ms, name = Kcoa_ms
	reaction_MS_Kcoa_ms=0.1;

	reaction_MS=compartment_cell*(reaction_MS_Vf_ms*x(11)/reaction_MS_Kgly_ms*x(1)/reaction_MS_Kaca_ms-reaction_MS_Vr_ms*x(10)/reaction_MS_Kmal_ms*x(3)/reaction_MS_Kcoa_ms)/((1+x(11)/reaction_MS_Kgly_ms+x(10)/reaction_MS_Kmal_ms)*(1+x(1)/reaction_MS_Kaca_ms+x(3)/reaction_MS_Kcoa_ms));

% Reaction: id = SYN	% Local Parameter:   id =  Vf_icd, name = Vf_icd
	reaction_SYN_Vf_icd=14.72;
	% Local Parameter:   id =  Kicit_icd, name = Kicit_icd
	reaction_SYN_Kicit_icd=0.008;
	% Local Parameter:   id =  Vr_icd, name = Vr_icd
	reaction_SYN_Vr_icd=0.1472;
	% Local Parameter:   id =  Kakg_icd, name = Kakg_icd
	reaction_SYN_Kakg_icd=0.13;

	reaction_SYN=compartment_cell*0.188*(reaction_SYN_Vf_icd*x(5)/reaction_SYN_Kicit_icd-reaction_SYN_Vr_icd*x(6)/reaction_SYN_Kakg_icd)/(1+x(5)/reaction_SYN_Kicit_icd+x(6)/reaction_SYN_Kakg_icd);

	xdot=zeros(12,1);
	
% Species:   id = aca, name = aca
%WARNING speciesID: aca, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = oaa, name = oaa
%WARNING speciesID: oaa, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(2) = 0.0;
	
% Species:   id = coa, name = coa
%WARNING speciesID: coa, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(3) = 0.0;
	
% Species:   id = cit, name = cit, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_CS) + (-1.0 * reaction_ACN));
	
% Species:   id = icit, name = icit, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_ACN) + (-1.0 * reaction_ICD) + (-1.0 * reaction_ICL));
	
% Species:   id = akg, name = akg, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_ICD) + (-1.0 * reaction_KDH) + (-1.0 * reaction_SYN));
	
% Species:   id = sca, name = sca, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_KDH) + (-1.0 * reaction_ScAS));
	
% Species:   id = suc, name = suc, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_ScAS) + (-1.0 * reaction_SDH) + ( 1.0 * reaction_ICL));
	
% Species:   id = fa, name = fa, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_SDH) + (-1.0 * reaction_FUM));
	
% Species:   id = mal, name = mal, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_FUM) + (-1.0 * reaction_MDH) + ( 1.0 * reaction_MS));
	
% Species:   id = gly, name = gly, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_ICL) + (-1.0 * reaction_MS));
	
% Species:   id = biosyn, name = biosyn
%WARNING speciesID: biosyn, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(12) = 0.0;
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


