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
% Model name = Sivakumar2011 - Hedgehog Signaling Pathway
%
% is http://identifiers.org/biomodels.db/MODEL1101270001
% is http://identifiers.org/biomodels.db/BIOMD0000000395
% isDescribedBy http://identifiers.org/pubmed/21978399
% isDerivedFrom http://identifiers.org/panther.pathway/P00025
%


function main()
%Initial conditions vector
	x0=zeros(23,1);
	x0(1) = 2.0;
	x0(2) = 0.0;
	x0(3) = 5.0;
	x0(4) = 0.0;
	x0(5) = 2.5;
	x0(6) = 5.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 2.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 2.5;
	x0(15) = 0.0;
	x0(16) = 3.0;
	x0(17) = 3.0;
	x0(18) = 0.0;
	x0(19) = 0.5;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Compartment: id = c1, name = Receiving cell, constant
	compartment_c1=1.0;
% Compartment: id = c4, name = lipid raft, constant
	compartment_c4=1.0;
% Compartment: id = c5, name = nucleus, constant
	compartment_c5=1.0;
% Parameter:   id =  kass_r7, name = kass_r7
	global_par_kass_r7=1.13;
% Parameter:   id =  kdiss_r7, name = kdiss_r7
	global_par_kdiss_r7=1.122;
% Parameter:   id =  kcatp_r14, name = kcatp_r14
	global_par_kcatp_r14=1.146;
% Parameter:   id =  kM_r14_s69, name = kM_r14_s69
	global_par_kM_r14_s69=1.03;
% Parameter:   id =  kcatn_r14, name = kcatn_r14
	global_par_kcatn_r14=1.75;
% Parameter:   id =  kM_r14_s46, name = kM_r14_s46
	global_par_kM_r14_s46=0.215;
% Parameter:   id =  kass_r25, name = kass_r25
	global_par_kass_r25=1.27;
% Parameter:   id =  kdiss_r25, name = kdiss_r25
	global_par_kdiss_r25=0.73;
% Parameter:   id =  kass_r26, name = kass_r26
	global_par_kass_r26=1.33;
% Parameter:   id =  kdiss_r26, name = kdiss_r26
	global_par_kdiss_r26=0.61;
% Parameter:   id =  kass_r51, name = kass_r51
	global_par_kass_r51=1.23;
% Parameter:   id =  kdiss_r51, name = kdiss_r51
	global_par_kdiss_r51=0.46;
% Parameter:   id =  kass_r52, name = kass_r52
	global_par_kass_r52=0.6;
% Parameter:   id =  kdiss_r52, name = kdiss_r52
	global_par_kdiss_r52=1.67;
% Parameter:   id =  kcatp_r53, name = kcatp_r53
	global_par_kcatp_r53=1.29;
% Parameter:   id =  kM_r53_s70, name = kM_r53_s70
	global_par_kM_r53_s70=0.79;
% Parameter:   id =  kcatn_r53, name = kcatn_r53
	global_par_kcatn_r53=1.62;
% Parameter:   id =  kass_r54, name = kass_r54
	global_par_kass_r54=1.28;
% Parameter:   id =  kdiss_r54, name = kdiss_r54
	global_par_kdiss_r54=0.71;
% Parameter:   id =  kass_r55, name = kass_r55
	global_par_kass_r55=1.56;
% Parameter:   id =  kass_r15_s21, name = kass_r15_s21
	global_par_kass_r15_s21=1.53;
% Parameter:   id =  kdiss_r15_s21, name = kdiss_r15_s21
	global_par_kdiss_r15_s21=0.89;
% Parameter:   id =  kass_re24_s157, name = kass_re24_s157
	global_par_kass_re24_s157=1.0;
% Parameter:   id =  kass_r23_s21, name = kass_r23_s21
	global_par_kass_r23_s21=1.0;
% Parameter:   id =  kdiss_r23_s21, name = kdiss_r23_s21
	global_par_kdiss_r23_s21=1.0;

% Reaction: id = r52
	reaction_r52=global_par_kass_r52*x(15)-global_par_kdiss_r52*x(4);

% Reaction: id = r55
	reaction_r55=global_par_kass_r55*x(20);

% Reaction: id = r7
	reaction_r7=global_par_kass_r7*x(6)*x(3)-global_par_kdiss_r7*x(7);

% Reaction: id = r14
	reaction_r14=x(7)*(global_par_kcatp_r14/global_par_kM_r14_s69*x(10)-global_par_kcatn_r14/global_par_kM_r14_s46*x(8))/(1+x(10)/global_par_kM_r14_s69+x(8)/global_par_kM_r14_s46);

% Reaction: id = r51
	reaction_r51=global_par_kass_r51*x(5)*x(14)-global_par_kdiss_r51*x(15);

% Reaction: id = r53
	reaction_r53=x(9)*(global_par_kcatp_r53/global_par_kM_r53_s70*x(13)-global_par_kcatn_r53/global_par_kM_r53_s70*x(13))/(1+x(13)/global_par_kM_r53_s70+x(13)/global_par_kM_r53_s70);

% Reaction: id = re24
	reaction_re24=x(19)*global_par_kass_re24_s157*x(16)*x(17);

% Reaction: id = r15
	reaction_r15=x(7)*(global_par_kass_r15_s21*x(8)*x(1)-global_par_kdiss_r15_s21*x(9)*x(2));

% Reaction: id = r23
	reaction_r23=x(7)*(global_par_kass_r23_s21*x(21)-global_par_kdiss_r23_s21*x(12)*x(22));

% Reaction: id = r54
	reaction_r54=global_par_kass_r54*x(13)*x(11)-global_par_kdiss_r54*x(20);

% Reaction: id = r26
	reaction_r26=global_par_kass_r26*x(23)-global_par_kdiss_r26*x(13);

% Reaction: id = r25
	reaction_r25=global_par_kass_r25*x(22)-global_par_kdiss_r25*x(23)*x(10);

	xdot=zeros(23,1);
	
% Species:   id = s9, name = ATP, affected by kineticLaw
	xdot(1) = (1/(compartment_c1))*((-1.0 * reaction_r15));
	
% Species:   id = s10, name = ADP, affected by kineticLaw
	xdot(2) = (1/(compartment_c1))*(( 1.0 * reaction_r15));
	
% Species:   id = s1, name = Patched, affected by kineticLaw
	xdot(3) = (1/(compartment_c1))*((-1.0 * reaction_r7));
	
% Species:   id = s75, name = Hedgehog target gene, affected by kineticLaw
	xdot(4) = (1/(compartment_c5))*(( 1.0 * reaction_r52) + ( 1.0 * reaction_r55));
	
% Species:   id = s135, name = Sap18, affected by kineticLaw
	xdot(5) = (1/(compartment_c5))*((-1.0 * reaction_r51));
	
% Species:   id = s7, name = Hedgehog, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*((-1.0 * reaction_r7));
	
% Species:   id = s21, name = Complex_br_(Patched/Hedgehog), affected by kineticLaw
	xdot(7) = (1/(compartment_c1))*(( 1.0 * reaction_r7));
	
% Species:   id = s46, name = Complex_br_(Costal2/Fused/_br_Smoothened), affected by kineticLaw
	xdot(8) = (1/(compartment_c1))*(( 1.0 * reaction_r14) + (-1.0 * reaction_r15));
	
% Species:   id = s48, name = Complex_br_(Costal2/Smoothened/_br_Fused), affected by kineticLaw
	xdot(9) = (1/(compartment_c1))*(( 1.0 * reaction_r15));
	
% Species:   id = s69, name = Complex_br_(Costal2/Fused/_br_Smoothened), affected by kineticLaw
	xdot(10) = (1/(compartment_c4))*((-1.0 * reaction_r14) + ( 1.0 * reaction_r25));
	
% Species:   id = s71, name = CBP, affected by kineticLaw
	xdot(11) = (1/(compartment_c5))*((-1.0 * reaction_r54));
	
% Species:   id = s68, name = Microtubule, affected by kineticLaw
	xdot(12) = (1/(compartment_c1))*(( 1.0 * reaction_r23));
	
% Species:   id = s70, name = Cubitus_space_interruptus, affected by kineticLaw
	xdot(13) = (1/(compartment_c5))*((-1.0 * reaction_r53) + ( 1.0 * reaction_r53) + (-1.0 * reaction_r54) + ( 1.0 * reaction_r26));
	
% Species:   id = s128, name = Complex_br_(Cubitus_space_interruptus_space_repressor/Su(fu)), affected by kineticLaw
	xdot(14) = (1/(compartment_c5))*((-1.0 * reaction_r51));
	
% Species:   id = s140, name = Complex_br_(Sap18/Su(fu)/_br_Cubitus_space_interruptus_space_repressor), affected by kineticLaw
	xdot(15) = (1/(compartment_c5))*((-1.0 * reaction_r52) + ( 1.0 * reaction_r51));
	
% Species:   id = s148, name = smoothened, affected by kineticLaw
	xdot(16) = (1/(compartment_c1))*((-1.0 * reaction_re24));
	
% Species:   id = s150, name = complex, affected by kineticLaw
	xdot(17) = (1/(compartment_c1))*((-1.0 * reaction_re24));
	
% Species:   id = s152, name = MIcrotubule
% Warning species is not changed by either rules or reactions
	xdot(18) = ;
	
% Species:   id = s157, name = sag
% Warning species is not changed by either rules or reactions
	xdot(19) = ;
	
% Species:   id = s158, name = Complex_br_(CBP/Cubitus), affected by kineticLaw
	xdot(20) = (1/(compartment_c5))*((-1.0 * reaction_r55) + ( 1.0 * reaction_r54));
	
% Species:   id = s159, name = Complex_br_(Costal2/Fused/../microtubule), affected by kineticLaw
	xdot(21) = (1/(compartment_c4))*(( 1.0 * reaction_re24) + (-1.0 * reaction_r23));
	
% Species:   id = s160, name = Complex_br_(Su(fu)/Fused/../_br_Smoothened), affected by kineticLaw
	xdot(22) = (1/(compartment_c4))*(( 1.0 * reaction_r23) + (-1.0 * reaction_r25));
	
% Species:   id = s161, name = Complex_br_(Su(fu)/Cubitus), affected by kineticLaw
	xdot(23) = (1/(compartment_c1))*((-1.0 * reaction_r26) + ( 1.0 * reaction_r25));
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


