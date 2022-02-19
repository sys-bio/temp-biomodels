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
% Model name = Rodriguez-Caso2006_Polyamine_Metabolism
%
% is http://identifiers.org/biomodels.db/MODEL6812345601
% is http://identifiers.org/biomodels.db/BIOMD0000000190
% isDescribedBy http://identifiers.org/pubmed/16709566
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(8) = 1.27905671844446;
	x0(9) = 0.677298510125025;
	x0(10) = 0.367465856805639;
	x0(11) = 0.574589492832405;
	x0(1) = 0.01;
	x0(2) = 0.01;
	x0(3) = 0.01;
	x0(4) = 0.01;
	x0(5) = 0.01;
	x0(6) = 0.01;
	x0(7) = 0.01;


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

% Compartment: id = cytosol, name = Cytosol, constant
	compartment_cytosol=1.0;
% Parameter:   id =  Vmaxodc, name = Vmaxodc
% Parameter:   id =  Vmaxssat, name = Vmaxssat
% Parameter:   id =  Vmaxsamdc, name = Vmaxsamdc
% Parameter:   id =  Antz, name = Antz
% Parameter:   id =  Keq, name = Keq
	global_par_Keq=1.0;
% Parameter:   id =  Kdodc, name = KdODC
	global_par_Kdodc=0.05;
% Parameter:   id =  Ksodc, name = KsODC
	global_par_Ksodc=5.0;
% Parameter:   id =  Kdssat, name = KdSSAT
	global_par_Kdssat=0.2;
% Parameter:   id =  Ksssat, name = KsSSAT
	global_par_Ksssat=0.001;
% Parameter:   id =  Kdsamdc, name = KdSAMDC
	global_par_Kdsamdc=0.02;
% Parameter:   id =  Kssamdc, name = KsSAMDC
	global_par_Kssamdc=1.0;
% Parameter:   id =  Kdantz, name = KdANTZ
	global_par_Kdantz=0.02;
% Parameter:   id =  Ksantz, name = KsANTZ
	global_par_Ksantz=0.02;
% Parameter:   id =  R, name = R
	global_par_R=0.004;
% Parameter:   id =  C, name = C
	global_par_C=4.44;
% Parameter:   id =  Kaccoa, name = Kaccoa
% Parameter:   id =  Kcoa, name = Kcoa
% assignmentRule: variable = Kaccoa
	global_par_Kaccoa=global_par_R;
% assignmentRule: variable = Kcoa
	global_par_Kcoa=3*global_par_R;
% rateRule: variable = Vmaxodc
global_par_Vmaxodc = x(8);
% rateRule: variable = Vmaxssat
global_par_Vmaxssat = x(9);
% rateRule: variable = Vmaxsamdc
global_par_Vmaxsamdc = x(10);
% rateRule: variable = Antz
global_par_Antz = x(11);

% Reaction: id = ODC, name = Ornithine decarboxylase	% Local Parameter:   id =  Kipodc, name = Kipodc
	reaction_ODC_Kipodc=1300.0;
	% Local Parameter:   id =  Kmodc, name = Kmodc
	reaction_ODC_Kmodc=60.0;

	reaction_ODC=compartment_cytosol*global_par_Vmaxodc*const_species_ORN/(reaction_ODC_Kmodc*(1+x(3)/reaction_ODC_Kipodc)+const_species_ORN);

% Reaction: id = SAMdc, name = S-adenosylmethionine decarboxylase	% Local Parameter:   id =  Kapsamdc, name = Kapsamdc
	reaction_SAMdc_Kapsamdc=0.5;
	% Local Parameter:   id =  Kiasamdc, name = Kiasamdc
	reaction_SAMdc_Kiasamdc=2.5;
	% Local Parameter:   id =  Kissamdc, name = Kissamdc
	reaction_SAMdc_Kissamdc=500.0;
	% Local Parameter:   id =  Kmsamdc, name = Kmsamdc
	reaction_SAMdc_Kmsamdc=50.0;

	reaction_SAMdc=compartment_cytosol*global_par_Vmaxsamdc/(1+x(4)/reaction_SAMdc_Kissamdc)*x(1)/(reaction_SAMdc_Kmsamdc*(1+reaction_SAMdc_Kapsamdc/x(3)+x(2)/reaction_SAMdc_Kiasamdc)+x(1));

% Reaction: id = SSAT_for_S, name = Spermidine/Spermine N1-acetyltransferase for S	% Local Parameter:   id =  Kmaccoassat, name = Kmaccoassat
	reaction_SSAT_for_S_Kmaccoassat=1.5;
	% Local Parameter:   id =  Kmcoassat, name = Kmcoassat
	reaction_SSAT_for_S_Kmcoassat=40.0;
	% Local Parameter:   id =  Kmdssat, name = Kmdssat
	reaction_SSAT_for_S_Kmdssat=130.0;
	% Local Parameter:   id =  Kmsssat, name = Kmsssat
	reaction_SSAT_for_S_Kmsssat=35.0;

	reaction_SSAT_for_S=compartment_cytosol*1/global_par_C*global_par_Vmaxssat*x(4)*const_species_AcCoA/(reaction_SSAT_for_S_Kmsssat*(1+x(5)/reaction_SSAT_for_S_Kmdssat)*reaction_SSAT_for_S_Kmaccoassat*(1+const_species_CoA/reaction_SSAT_for_S_Kmcoassat)+reaction_SSAT_for_S_Kmaccoassat*(1+const_species_CoA/reaction_SSAT_for_S_Kmcoassat)*x(4)+reaction_SSAT_for_S_Kmsssat*(1+x(5)/reaction_SSAT_for_S_Kmdssat)*const_species_AcCoA+x(4)*const_species_AcCoA);

% Reaction: id = SSAT_for_D, name = Spermidine/spermine N1-acetyltransferase for D	% Local Parameter:   id =  Kmaccoassat, name = Kmaccoassat
	reaction_SSAT_for_D_Kmaccoassat=1.5;
	% Local Parameter:   id =  Kmcoassat, name = Kmcoassat
	reaction_SSAT_for_D_Kmcoassat=40.0;
	% Local Parameter:   id =  Kmdssat, name = Kmdssat
	reaction_SSAT_for_D_Kmdssat=130.0;
	% Local Parameter:   id =  Kmsssat, name = Kmsssat
	reaction_SSAT_for_D_Kmsssat=35.0;

	reaction_SSAT_for_D=compartment_cytosol*global_par_Vmaxssat*x(5)*const_species_AcCoA/(reaction_SSAT_for_D_Kmdssat*(1+x(4)/reaction_SSAT_for_D_Kmsssat)*reaction_SSAT_for_D_Kmaccoassat*(1+const_species_CoA/reaction_SSAT_for_D_Kmcoassat)+reaction_SSAT_for_D_Kmaccoassat*(1+const_species_CoA/reaction_SSAT_for_D_Kmcoassat)*x(5)+reaction_SSAT_for_D_Kmdssat*(1+x(4)/reaction_SSAT_for_D_Kmsssat)*const_species_AcCoA+x(5)*const_species_AcCoA);

% Reaction: id = PAO_for_aD, name = Polyamine oxidase for aD	% Local Parameter:   id =  Kmadpao, name = Kmadpao
	reaction_PAO_for_aD_Kmadpao=14.0;
	% Local Parameter:   id =  Kmaspao, name = Kmaspao
	reaction_PAO_for_aD_Kmaspao=0.6;
	% Local Parameter:   id =  Kmdpao, name = Kmdpao
	reaction_PAO_for_aD_Kmdpao=50.0;
	% Local Parameter:   id =  Kmspao, name = Kmspao
	reaction_PAO_for_aD_Kmspao=15.0;
	% Local Parameter:   id =  Vmpao, name = Vmpao
	reaction_PAO_for_aD_Vmpao=10.35;

	reaction_PAO_for_aD=compartment_cytosol*reaction_PAO_for_aD_Vmpao*x(7)/(reaction_PAO_for_aD_Kmadpao*(1+x(7)/reaction_PAO_for_aD_Kmadpao+x(6)/reaction_PAO_for_aD_Kmaspao+x(5)/reaction_PAO_for_aD_Kmdpao+x(4)/reaction_PAO_for_aD_Kmspao));

% Reaction: id = PAO_for_aS, name = Polyamine oxidase for aS	% Local Parameter:   id =  Kmadpao, name = Kmadpao
	reaction_PAO_for_aS_Kmadpao=14.0;
	% Local Parameter:   id =  Kmaspao, name = Kmaspao
	reaction_PAO_for_aS_Kmaspao=0.6;
	% Local Parameter:   id =  Kmdpao, name = Kmdpao
	reaction_PAO_for_aS_Kmdpao=50.0;
	% Local Parameter:   id =  Kmspao, name = Kmspao
	reaction_PAO_for_aS_Kmspao=15.0;
	% Local Parameter:   id =  Vmpao, name = Vmpao
	reaction_PAO_for_aS_Vmpao=10.35;

	reaction_PAO_for_aS=compartment_cytosol*reaction_PAO_for_aS_Vmpao*x(6)/(reaction_PAO_for_aS_Kmaspao*(1+x(7)/reaction_PAO_for_aS_Kmadpao+x(6)/reaction_PAO_for_aS_Kmaspao+x(5)/reaction_PAO_for_aS_Kmdpao+x(4)/reaction_PAO_for_aS_Kmspao));

% Reaction: id = SpdS, name = Spermidine synthase	% Local Parameter:   id =  KaSpds, name = KaSpds
	reaction_SpdS_KaSpds=0.3;
	% Local Parameter:   id =  Kiaspds, name = Kiaspds
	reaction_SpdS_Kiaspds=0.8;
	% Local Parameter:   id =  Kidspds, name = Kidspds
	reaction_SpdS_Kidspds=100.0;
	% Local Parameter:   id =  Kpspds, name = Kpspds
	reaction_SpdS_Kpspds=40.0;
	% Local Parameter:   id =  Vmspds, name = Vmspds
	reaction_SpdS_Vmspds=10.95;

	reaction_SpdS=compartment_cytosol*reaction_SpdS_Vmspds*x(2)*x(3)/(reaction_SpdS_Kiaspds*reaction_SpdS_Kpspds*(1+x(5)/reaction_SpdS_Kidspds)+reaction_SpdS_Kpspds*x(2)+reaction_SpdS_KaSpds*(1+x(5)/reaction_SpdS_Kidspds)*x(3)+x(2)*x(3));

% Reaction: id = SpmS, name = Spermine synthase	% Local Parameter:   id =  Kaspms, name = Kaspms
	reaction_SpmS_Kaspms=0.1;
	% Local Parameter:   id =  Kdspms, name = Kdspms
	reaction_SpmS_Kdspms=60.0;
	% Local Parameter:   id =  Kiaspms, name = Kiaspms
	reaction_SpmS_Kiaspms=0.06;
	% Local Parameter:   id =  Kisspms, name = Kisspms
	reaction_SpmS_Kisspms=25.0;
	% Local Parameter:   id =  Vmspms, name = Vmspms
	reaction_SpmS_Vmspms=3.23;

	reaction_SpmS=compartment_cytosol*reaction_SpmS_Vmspms*x(2)*x(5)/(reaction_SpmS_Kiaspms*reaction_SpmS_Kdspms*(1+x(4)/reaction_SpmS_Kisspms)+reaction_SpmS_Kdspms*x(2)+reaction_SpmS_Kaspms*(1+x(4)/reaction_SpmS_Kisspms)*x(5)+x(2)*x(5));

% Reaction: id = MAT, name = Methionine adenosyltransferase	% Local Parameter:   id =  Kimetmat, name = Kimetmat
	reaction_MAT_Kimetmat=50.0;
	% Local Parameter:   id =  Kmmat, name = Kmmat
	reaction_MAT_Kmmat=41.0;
	% Local Parameter:   id =  Vmmat, name = Vmmat
	reaction_MAT_Vmmat=0.45;

	reaction_MAT=compartment_cytosol*reaction_MAT_Vmmat/(1+reaction_MAT_Kmmat/const_species_Met*(1+x(1)/reaction_MAT_Kimetmat));

% Reaction: id = VCoA, name = VCOA
	reaction_VCoA=compartment_cytosol*global_par_Kcoa*const_species_AcCoA;

% Reaction: id = VacCoA, name = VACCOA
	reaction_VacCoA=compartment_cytosol*global_par_Kaccoa*const_species_CoA;

% Reaction: id = P_efflux, name = Putrescine efflux	% Local Parameter:   id =  Kpefflux, name = Kpefflux
	reaction_P_efflux_Kpefflux=0.01;

	reaction_P_efflux=compartment_cytosol*reaction_P_efflux_Kpefflux*x(3);

% Reaction: id = aD_efflux, name = aD efflux	% Local Parameter:   id =  Kadefflux, name = Kadefflux
	reaction_aD_efflux_Kadefflux=0.01;

	reaction_aD_efflux=compartment_cytosol*reaction_aD_efflux_Kadefflux*x(7);

% Species:   id = Met, name = Methionine, constant	const_species_Met=50.0;

% Species:   id = ORN, name = L-Ornithine, constant	const_species_ORN=300.0;

% Species:   id = AcCoA, name = Acetyl-CoA, constant	const_species_AcCoA=39.5;

% Species:   id = CoA, name = CoA, constant	const_species_CoA=160.0;

	xdot=zeros(11,1);
	% rateRule: variable = Vmaxodc
	xdot(8) = global_par_Ksodc/(1+global_par_Keq*(x(5)+x(4)))-global_par_Kdodc*global_par_Antz*global_par_Vmaxodc;
	% rateRule: variable = Vmaxssat
	xdot(9) = global_par_Ksssat*(1-1/(1+global_par_Keq*(x(5)+x(4))))-global_par_Kdssat*1/(1+global_par_Keq*(x(5)+x(4)))*global_par_Vmaxssat;
	% rateRule: variable = Vmaxsamdc
	xdot(10) = global_par_Kssamdc*1/(1+global_par_Keq*(x(5)+x(4)))-global_par_Kdsamdc*global_par_Vmaxsamdc;
	% rateRule: variable = Antz
	xdot(11) = global_par_Ksantz*(1-1/(1+global_par_Keq*0.01*(x(5)+x(4))))-global_par_Kdantz*global_par_Antz;
	
% Species:   id = SAM, name = S-adenosyl-L-methionine, affected by kineticLaw
	xdot(1) = (1/(compartment_cytosol))*((-1.0 * reaction_SAMdc) + ( 1.0 * reaction_MAT));
	
% Species:   id = A, name = S-adenosylmethioninamine, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*(( 1.0 * reaction_SAMdc) + (-1.0 * reaction_SpdS) + (-1.0 * reaction_SpmS));
	
% Species:   id = P, name = Putrescine, affected by kineticLaw
	xdot(3) = (1/(compartment_cytosol))*(( 1.0 * reaction_ODC) + ( 1.0 * reaction_PAO_for_aD) + (-1.0 * reaction_SpdS) + (-1.0 * reaction_P_efflux));
	
% Species:   id = S, name = Spermine, affected by kineticLaw
	xdot(4) = (1/(compartment_cytosol))*((-1.0 * reaction_SSAT_for_S) + ( 1.0 * reaction_SpmS));
	
% Species:   id = D, name = Spermidine, affected by kineticLaw
	xdot(5) = (1/(compartment_cytosol))*((-1.0 * reaction_SSAT_for_D) + ( 1.0 * reaction_PAO_for_aS) + ( 1.0 * reaction_SpdS) + (-1.0 * reaction_SpmS));
	
% Species:   id = aS, name = N1-Acetylspermine, affected by kineticLaw
	xdot(6) = (1/(compartment_cytosol))*(( 1.0 * reaction_SSAT_for_S) + (-1.0 * reaction_PAO_for_aS));
	
% Species:   id = aD, name = N1-Acetylspermidine, affected by kineticLaw
	xdot(7) = (1/(compartment_cytosol))*(( 1.0 * reaction_SSAT_for_D) + (-1.0 * reaction_PAO_for_aD) + (-1.0 * reaction_aD_efflux));
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


