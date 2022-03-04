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
% Model name = Singh2006_TCA_mtu_model1
%
% is http://identifiers.org/biomodels.db/MODEL8584292730
% is http://identifiers.org/biomodels.db/BIOMD0000000219
% isDescribedBy http://identifiers.org/pubmed/16887020
%


function main()
%Initial conditions vector
	x0=zeros(13,1);
	x0(1) = 0.5;
	x0(2) = 3.0E-4;
	x0(3) = 1.0E-4;
	x0(4) = 3.4;
	x0(5) = 0.06;
	x0(6) = 0.96;
	x0(7) = 0.03;
	x0(8) = 2.464;
	x0(9) = 0.04;
	x0(10) = 0.08528;
	x0(11) = 0.408;
	x0(12) = 0.114;
	x0(13) = 0.1;


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

% Reaction: id = CS	% Local Parameter:   id =  Vf_cs, name = Vf_cs
	reaction_CS_Vf_cs=64.8;
	% Local Parameter:   id =  Kaca_cs, name = Kaca_cs
	reaction_CS_Kaca_cs=0.05;
	% Local Parameter:   id =  Koaa_cs, name = Koaa_cs
	reaction_CS_Koaa_cs=0.012;
	% Local Parameter:   id =  Vr_cs, name = Vr_cs
	reaction_CS_Vr_cs=0.648;
	% Local Parameter:   id =  Kcoa_cs, name = Kcoa_cs
	reaction_CS_Kcoa_cs=0.5;
	% Local Parameter:   id =  Kcit_cs, name = Kcit_cs
	reaction_CS_Kcit_cs=0.12;

	reaction_CS=compartment_cell*(reaction_CS_Vf_cs*x(1)/reaction_CS_Kaca_cs*x(2)/reaction_CS_Koaa_cs-reaction_CS_Vr_cs*x(3)/reaction_CS_Kcoa_cs*x(4)/reaction_CS_Kcit_cs)/((1+x(1)/reaction_CS_Kaca_cs+x(3)/reaction_CS_Kcoa_cs)*(1+x(2)/reaction_CS_Koaa_cs+x(4)/reaction_CS_Kcit_cs));

% Reaction: id = ACN	% Local Parameter:   id =  Vf_acn, name = Vf_acn
	reaction_ACN_Vf_acn=31.2;
	% Local Parameter:   id =  Kcit_acn, name = Kcit_acn
	reaction_ACN_Kcit_acn=1.7;
	% Local Parameter:   id =  Vr_acn, name = Vr_acn
	reaction_ACN_Vr_acn=0.312;
	% Local Parameter:   id =  Kicit_acn, name = Kicit_acn
	reaction_ACN_Kicit_acn=0.7;

	reaction_ACN=compartment_cell*(reaction_ACN_Vf_acn*x(4)/reaction_ACN_Kcit_acn-reaction_ACN_Vr_acn*x(5)/reaction_ACN_Kicit_acn)/(1+x(4)/reaction_ACN_Kcit_acn+x(5)/reaction_ACN_Kicit_acn);

% Reaction: id = ICD1	% Local Parameter:   id =  Vf_icd1, name = Vf_icd1
	reaction_ICD1_Vf_icd1=10.2;
	% Local Parameter:   id =  Kicit_icd1, name = Kicit_icd1
	reaction_ICD1_Kicit_icd1=0.03;
	% Local Parameter:   id =  Vr_icd1, name = Vr_icd1
	reaction_ICD1_Vr_icd1=0.102;
	% Local Parameter:   id =  Kakg_icd1, name = Kakg_icd1
	reaction_ICD1_Kakg_icd1=0.3;

	reaction_ICD1=compartment_cell*(reaction_ICD1_Vf_icd1*x(5)/reaction_ICD1_Kicit_icd1-reaction_ICD1_Vr_icd1*x(6)/reaction_ICD1_Kakg_icd1)/(1+x(5)/reaction_ICD1_Kicit_icd1+x(6)/reaction_ICD1_Kakg_icd1);

% Reaction: id = ICD2	% Local Parameter:   id =  Vf_icd2, name = Vf_icd2
	reaction_ICD2_Vf_icd2=9.965;
	% Local Parameter:   id =  Kicit_icd2, name = Kicit_icd2
	reaction_ICD2_Kicit_icd2=0.06;
	% Local Parameter:   id =  Vr_icd2, name = Vr_icd2
	reaction_ICD2_Vr_icd2=0.09965;
	% Local Parameter:   id =  Kakg_icd2, name = Kakg_icd2
	reaction_ICD2_Kakg_icd2=0.6;

	reaction_ICD2=compartment_cell*(reaction_ICD2_Vf_icd2*x(5)/reaction_ICD2_Kicit_icd2-reaction_ICD2_Vr_icd2*x(6)/reaction_ICD2_Kakg_icd2)/(1+x(5)/reaction_ICD2_Kicit_icd2+x(6)/reaction_ICD2_Kakg_icd2);

% Reaction: id = KDH	% Local Parameter:   id =  Vf_kdh, name = Vf_kdh
	reaction_KDH_Vf_kdh=57.344;
	% Local Parameter:   id =  Kakg_kdh, name = Kakg_kdh
	reaction_KDH_Kakg_kdh=0.1;
	% Local Parameter:   id =  Vr_kdh, name = Vr_kdh
	reaction_KDH_Vr_kdh=0.57344;
	% Local Parameter:   id =  Ksca_kdh, name = Ksca_kdh
	reaction_KDH_Ksca_kdh=1.0;

	reaction_KDH=compartment_cell*(reaction_KDH_Vf_kdh*x(6)/reaction_KDH_Kakg_kdh-reaction_KDH_Vr_kdh*x(9)/reaction_KDH_Ksca_kdh)/(1+x(6)/reaction_KDH_Kakg_kdh+x(9)/reaction_KDH_Ksca_kdh);

% Reaction: id = KGD	% Local Parameter:   id =  Vf_kgd, name = Vf_kgd
	reaction_KGD_Vf_kgd=48.3;
	% Local Parameter:   id =  Kakg_kgd, name = Kakg_kgd
	reaction_KGD_Kakg_kgd=0.48;
	% Local Parameter:   id =  Vr_kgd, name = Vr_kgd
	reaction_KGD_Vr_kgd=0.483;
	% Local Parameter:   id =  Kssa_kgd, name = Kssa_kgd
	reaction_KGD_Kssa_kgd=4.8;

	reaction_KGD=compartment_cell*(reaction_KGD_Vf_kgd*x(6)/reaction_KGD_Kakg_kgd-reaction_KGD_Vr_kgd*x(7)/reaction_KGD_Kssa_kgd)/(1+x(6)/reaction_KGD_Kakg_kgd+x(7)/reaction_KGD_Kssa_kgd);

% Reaction: id = SSADH	% Local Parameter:   id =  Vf_ssadh, name = Vf_ssadh
	reaction_SSADH_Vf_ssadh=6.51;
	% Local Parameter:   id =  Kssa_ssadh, name = Kssa_ssadh
	reaction_SSADH_Kssa_ssadh=0.015;
	% Local Parameter:   id =  Vr_ssadh, name = Vr_ssadh
	reaction_SSADH_Vr_ssadh=0.0651;
	% Local Parameter:   id =  Ksuc_ssadh, name = Ksuc_ssadh
	reaction_SSADH_Ksuc_ssadh=0.15;

	reaction_SSADH=compartment_cell*(reaction_SSADH_Vf_ssadh*x(7)/reaction_SSADH_Kssa_ssadh-reaction_SSADH_Vr_ssadh*x(8)/reaction_SSADH_Ksuc_ssadh)/(1+x(7)/reaction_SSADH_Kssa_ssadh+x(8)/reaction_SSADH_Ksuc_ssadh);

% Reaction: id = ScAS	% Local Parameter:   id =  Vf_scas, name = Vf_scas
	reaction_ScAS_Vf_scas=1.2;
	% Local Parameter:   id =  Ksca_scas, name = Ksca_scas
	reaction_ScAS_Ksca_scas=0.02;
	% Local Parameter:   id =  Vr_scas, name = Vr_scas
	reaction_ScAS_Vr_scas=0.012;
	% Local Parameter:   id =  Ksuc_scas, name = Ksuc_scas
	reaction_ScAS_Ksuc_scas=5.0;

	reaction_ScAS=compartment_cell*(reaction_ScAS_Vf_scas*x(9)/reaction_ScAS_Ksca_scas-reaction_ScAS_Vr_scas*x(8)/reaction_ScAS_Ksuc_scas)/(1+x(9)/reaction_ScAS_Ksca_scas+x(8)/reaction_ScAS_Ksuc_scas);

% Reaction: id = SDH	% Local Parameter:   id =  Vf_sdh, name = Vf_sdh
	reaction_SDH_Vf_sdh=1.02;
	% Local Parameter:   id =  Ksuc_sdh, name = Ksuc_sdh
	reaction_SDH_Ksuc_sdh=0.12;
	% Local Parameter:   id =  Vr_sdh, name = Vr_sdh
	reaction_SDH_Vr_sdh=1.02;
	% Local Parameter:   id =  Kfa_sdh, name = Kfa_sdh
	reaction_SDH_Kfa_sdh=0.15;

	reaction_SDH=compartment_cell*(reaction_SDH_Vf_sdh*x(8)/reaction_SDH_Ksuc_sdh-reaction_SDH_Vr_sdh*x(10)/reaction_SDH_Kfa_sdh)/(1+x(8)/reaction_SDH_Ksuc_sdh+x(10)/reaction_SDH_Kfa_sdh);

% Reaction: id = FUM	% Local Parameter:   id =  Vf_fum, name = Vf_fum
	reaction_FUM_Vf_fum=87.7;
	% Local Parameter:   id =  Kfa_fum, name = Kfa_fum
	reaction_FUM_Kfa_fum=0.25;
	% Local Parameter:   id =  Vr_fum, name = Vr_fum
	reaction_FUM_Vr_fum=87.7;
	% Local Parameter:   id =  Kmal_fum, name = Kmal_fum
	reaction_FUM_Kmal_fum=2.38;

	reaction_FUM=compartment_cell*(reaction_FUM_Vf_fum*x(10)/reaction_FUM_Kfa_fum-reaction_FUM_Vr_fum*x(11)/reaction_FUM_Kmal_fum)/(1+x(10)/reaction_FUM_Kfa_fum+x(11)/reaction_FUM_Kmal_fum);

% Reaction: id = MDH	% Local Parameter:   id =  Vf_mdh, name = Vf_mdh
	reaction_MDH_Vf_mdh=184.0;
	% Local Parameter:   id =  Kmal_mdh, name = Kmal_mdh
	reaction_MDH_Kmal_mdh=0.833;
	% Local Parameter:   id =  Vr_mdh, name = Vr_mdh
	reaction_MDH_Vr_mdh=184.0;
	% Local Parameter:   id =  Koaa_mdh, name = Koaa_mdh
	reaction_MDH_Koaa_mdh=0.0443;

	reaction_MDH=compartment_cell*(reaction_MDH_Vf_mdh*x(11)/reaction_MDH_Kmal_mdh-reaction_MDH_Vr_mdh*x(2)/reaction_MDH_Koaa_mdh)/(1+x(11)/reaction_MDH_Kmal_mdh+x(2)/reaction_MDH_Koaa_mdh);

% Reaction: id = ICL1	% Local Parameter:   id =  Vf_icl1, name = Vf_icl1
	reaction_ICL1_Vf_icl1=1.172;
	% Local Parameter:   id =  Kicit_icl1, name = Kicit_icl1
	reaction_ICL1_Kicit_icl1=0.145;
	% Local Parameter:   id =  Vr_icl1, name = Vr_icl1
	reaction_ICL1_Vr_icl1=0.01172;
	% Local Parameter:   id =  Ksuc_icl1, name = Ksuc_icl1
	reaction_ICL1_Ksuc_icl1=0.59;
	% Local Parameter:   id =  Kgly_icl1, name = Kgly_icl1
	reaction_ICL1_Kgly_icl1=0.13;

	reaction_ICL1=compartment_cell*(reaction_ICL1_Vf_icl1*x(5)/reaction_ICL1_Kicit_icl1-reaction_ICL1_Vr_icl1*x(8)/reaction_ICL1_Ksuc_icl1*x(12)/reaction_ICL1_Kgly_icl1)/(1+x(5)/reaction_ICL1_Kicit_icl1+x(8)/reaction_ICL1_Ksuc_icl1+x(12)/reaction_ICL1_Kgly_icl1+x(5)/reaction_ICL1_Kicit_icl1*x(8)/reaction_ICL1_Ksuc_icl1+x(8)/reaction_ICL1_Ksuc_icl1*x(12)/reaction_ICL1_Kgly_icl1);

% Reaction: id = ICL2	% Local Parameter:   id =  Vf_icl2, name = Vf_icl2
	reaction_ICL2_Vf_icl2=0.391;
	% Local Parameter:   id =  Kicit_icl2, name = Kicit_icl2
	reaction_ICL2_Kicit_icl2=1.3;
	% Local Parameter:   id =  Vr_icl2, name = Vr_icl2
	reaction_ICL2_Vr_icl2=0.00391;
	% Local Parameter:   id =  Ksuc_icl2, name = Ksuc_icl2
	reaction_ICL2_Ksuc_icl2=5.9;
	% Local Parameter:   id =  Kgly_icl2, name = Kgly_icl2
	reaction_ICL2_Kgly_icl2=1.3;

	reaction_ICL2=compartment_cell*(reaction_ICL2_Vf_icl2*x(5)/reaction_ICL2_Kicit_icl2-reaction_ICL2_Vr_icl2*x(8)/reaction_ICL2_Ksuc_icl2*x(12)/reaction_ICL2_Kgly_icl2)/(1+x(5)/reaction_ICL2_Kicit_icl2+x(8)/reaction_ICL2_Ksuc_icl2+x(12)/reaction_ICL2_Kgly_icl2+x(5)/reaction_ICL2_Kicit_icl2*x(8)/reaction_ICL2_Ksuc_icl2+x(8)/reaction_ICL2_Ksuc_icl2*x(12)/reaction_ICL2_Kgly_icl2);

% Reaction: id = MS	% Local Parameter:   id =  Vf_ms, name = Vf_ms
	reaction_MS_Vf_ms=20.0;
	% Local Parameter:   id =  Kgly_ms, name = Kgly_ms
	reaction_MS_Kgly_ms=0.057;
	% Local Parameter:   id =  Kaca_ms, name = Kaca_ms
	reaction_MS_Kaca_ms=0.03;
	% Local Parameter:   id =  Vr_ms, name = Vr_ms
	reaction_MS_Vr_ms=0.2;
	% Local Parameter:   id =  Kmal_ms, name = Kmal_ms
	reaction_MS_Kmal_ms=1.0;
	% Local Parameter:   id =  Kcoa_ms, name = Kcoa_ms
	reaction_MS_Kcoa_ms=0.1;

	reaction_MS=compartment_cell*(reaction_MS_Vf_ms*x(12)/reaction_MS_Kgly_ms*x(1)/reaction_MS_Kaca_ms-reaction_MS_Vr_ms*x(11)/reaction_MS_Kmal_ms*x(3)/reaction_MS_Kcoa_ms)/((1+x(12)/reaction_MS_Kgly_ms+x(11)/reaction_MS_Kmal_ms)*(1+x(1)/reaction_MS_Kaca_ms+x(3)/reaction_MS_Kcoa_ms));

% Reaction: id = SYN	% Local Parameter:   id =  Vf_icd1, name = Vf_icd1
	reaction_SYN_Vf_icd1=10.2;
	% Local Parameter:   id =  Kicit_icd1, name = Kicit_icd1
	reaction_SYN_Kicit_icd1=0.03;
	% Local Parameter:   id =  Vr_icd1, name = Vr_icd1
	reaction_SYN_Vr_icd1=0.102;
	% Local Parameter:   id =  Kakg_icd1, name = Kakg_icd1
	reaction_SYN_Kakg_icd1=0.3;
	% Local Parameter:   id =  Vf_icd2, name = Vf_icd2
	reaction_SYN_Vf_icd2=9.965;
	% Local Parameter:   id =  Kicit_icd2, name = Kicit_icd2
	reaction_SYN_Kicit_icd2=0.06;
	% Local Parameter:   id =  Vr_icd2, name = Vr_icd2
	reaction_SYN_Vr_icd2=0.09965;
	% Local Parameter:   id =  Kakg_icd2, name = Kakg_icd2
	reaction_SYN_Kakg_icd2=0.6;

	reaction_SYN=compartment_cell*0.0341*((reaction_SYN_Vf_icd1*x(5)/reaction_SYN_Kicit_icd1-reaction_SYN_Vr_icd1*x(6)/reaction_SYN_Kakg_icd1)/(1+x(5)/reaction_SYN_Kicit_icd1+x(6)/reaction_SYN_Kakg_icd1)+(reaction_SYN_Vf_icd2*x(5)/reaction_SYN_Kicit_icd2-reaction_SYN_Vr_icd2*x(6)/reaction_SYN_Kakg_icd2)/(1+x(5)/reaction_SYN_Kicit_icd2+x(6)/reaction_SYN_Kakg_icd2));

	xdot=zeros(13,1);
	
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
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_ACN) + (-1.0 * reaction_ICD1) + (-1.0 * reaction_ICD2) + (-1.0 * reaction_ICL1) + (-1.0 * reaction_ICL2));
	
% Species:   id = akg, name = akg, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_ICD1) + ( 1.0 * reaction_ICD2) + (-1.0 * reaction_KDH) + (-1.0 * reaction_KGD) + (-1.0 * reaction_SYN));
	
% Species:   id = ssa, name = ssa, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_KGD) + (-1.0 * reaction_SSADH));
	
% Species:   id = suc, name = suc, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_SSADH) + ( 1.0 * reaction_ScAS) + (-1.0 * reaction_SDH) + ( 1.0 * reaction_ICL1) + ( 1.0 * reaction_ICL2));
	
% Species:   id = sca, name = sca, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_KDH) + (-1.0 * reaction_ScAS));
	
% Species:   id = fa, name = fa, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_SDH) + (-1.0 * reaction_FUM));
	
% Species:   id = mal, name = mal, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_FUM) + (-1.0 * reaction_MDH) + ( 1.0 * reaction_MS));
	
% Species:   id = gly, name = gly, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_ICL1) + ( 1.0 * reaction_ICL2) + (-1.0 * reaction_MS));
	
% Species:   id = biosyn, name = biosyn
%WARNING speciesID: biosyn, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(13) = 0.0;
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


