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
% Model name = Sivakumar2011_NeuralStemCellDifferentiation_Crosstalk
%
% is http://identifiers.org/biomodels.db/MODEL1111020000
% is http://identifiers.org/biomodels.db/BIOMD0000000398
% isDescribedBy http://identifiers.org/pubmed/21978399
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000394
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000395
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000396
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000397
%


function main()
%Initial conditions vector
	x0=zeros(27,1);
	x0(1) = 0.0;
	x0(2) = 5.0;
	x0(3) = 0.0;
	x0(4) = 5.0;
	x0(5) = 100.0;
	x0(6) = 5.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 5.0;
	x0(10) = 5.0;
	x0(11) = 0.0;
	x0(12) = 5.0;
	x0(13) = 0.0;
	x0(14) = 5.0;
	x0(15) = 5.0;
	x0(16) = 0.0;
	x0(17) = 100.0;
	x0(18) = 5.0;
	x0(19) = 5.0;
	x0(20) = 0.0;
	x0(21) = 5.0;
	x0(22) = 5.0;
	x0(23) = 0.0;
	x0(24) = 5.0;
	x0(25) = 5.0;
	x0(26) = 0.0;
	x0(27) = 100.0;


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
% Compartment: id = c1, name = nucleus, constant
	compartment_c1=1.0;
% Parameter:   id =  kV_re29_s60, name = kV_re29_s60
	global_par_kV_re29_s60=1.0;
% Parameter:   id =  kM_re29_s60_s57, name = kM_re29_s60_s57
	global_par_kM_re29_s60_s57=1.0;
% Parameter:   id =  kG_s57, name = kG_s57
	global_par_kG_s57=1.0;
% Parameter:   id =  kM_re29_s60_s53, name = kM_re29_s60_s53
	global_par_kM_re29_s60_s53=1.0;
% Parameter:   id =  kG_s53, name = kG_s53
	global_par_kG_s53=1.0;
% Parameter:   id =  kM_re29_s60_s58, name = kM_re29_s60_s58
	global_par_kM_re29_s60_s58=1.0;
% Parameter:   id =  kG_s58, name = kG_s58
	global_par_kG_s58=1.0;
% Parameter:   id =  kI_re29_s61, name = kI_re29_s61
	global_par_kI_re29_s61=1.0;
% Parameter:   id =  kass_re31, name = kass_re31
	global_par_kass_re31=1.0;
% Parameter:   id =  kdiss_re31, name = kdiss_re31
	global_par_kdiss_re31=1.0;
% Parameter:   id =  kass_re32, name = kass_re32
	global_par_kass_re32=1.0;
% Parameter:   id =  kdiss_re32, name = kdiss_re32
	global_par_kdiss_re32=1.0;
% Parameter:   id =  kass_re33, name = kass_re33
	global_par_kass_re33=1.0;
% Parameter:   id =  kdiss_re33, name = kdiss_re33
	global_par_kdiss_re33=1.0;
% Parameter:   id =  kass_re36, name = kass_re36
	global_par_kass_re36=1.0;
% Parameter:   id =  kdiss_re36, name = kdiss_re36
	global_par_kdiss_re36=1.0;
% Parameter:   id =  kI_re36_s101, name = kI_re36_s101
	global_par_kI_re36_s101=1.0;
% Parameter:   id =  kass_re37, name = kass_re37
	global_par_kass_re37=1.0;
% Parameter:   id =  kdiss_re37, name = kdiss_re37
	global_par_kdiss_re37=1.0;
% Parameter:   id =  kass_re38, name = kass_re38
	global_par_kass_re38=1.0;
% Parameter:   id =  kdiss_re38, name = kdiss_re38
	global_par_kdiss_re38=1.0;
% Parameter:   id =  kcatp_re40, name = kcatp_re40
	global_par_kcatp_re40=1.0;
% Parameter:   id =  kcatn_re40, name = kcatn_re40
	global_par_kcatn_re40=1.0;
% Parameter:   id =  kM_re40_s124, name = kM_re40_s124
	global_par_kM_re40_s124=1.0;
% Parameter:   id =  ki_re40_s124, name = ki_re40_s124
	global_par_ki_re40_s124=1.0;
% Parameter:   id =  kass_re42, name = kass_re42
	global_par_kass_re42=1.0;
% Parameter:   id =  kdiss_re42, name = kdiss_re42
	global_par_kdiss_re42=1.0;
% Parameter:   id =  kI_re42_s147, name = kI_re42_s147
	global_par_kI_re42_s147=1.0;
% Parameter:   id =  kI_re42_s135, name = kI_re42_s135
	global_par_kI_re42_s135=1.0;
% Parameter:   id =  kass_re43, name = kass_re43
	global_par_kass_re43=1.0;
% Parameter:   id =  kdiss_re43, name = kdiss_re43
	global_par_kdiss_re43=1.0;
% Parameter:   id =  kass_re34_s85, name = kass_re34_s85
	global_par_kass_re34_s85=1.0;
% Parameter:   id =  kdiss_re34_s85, name = kdiss_re34_s85
	global_par_kdiss_re34_s85=1.0;
% Parameter:   id =  kass_re34_s89, name = kass_re34_s89
	global_par_kass_re34_s89=1.0;
% Parameter:   id =  kdiss_re34_s89, name = kdiss_re34_s89
	global_par_kdiss_re34_s89=1.0;
% Parameter:   id =  kass_re35_s89, name = kass_re35_s89
	global_par_kass_re35_s89=1.0;
% Parameter:   id =  kdiss_re35_s89, name = kdiss_re35_s89
	global_par_kdiss_re35_s89=1.0;

% Reaction: id = re29
	reaction_re29=global_par_kI_re29_s61/(global_par_kI_re29_s61+x(5))*x(4)*global_par_kV_re29_s60*(x(2)/global_par_kM_re29_s60_s57*(global_par_kG_s57*global_par_kM_re29_s60_s57/(global_par_kG_s53*global_par_kM_re29_s60_s53*global_par_kG_s58*global_par_kM_re29_s60_s58))^(0.5)-x(1)/global_par_kM_re29_s60_s53*x(3)/global_par_kM_re29_s60_s58*(global_par_kG_s53*global_par_kM_re29_s60_s53*global_par_kG_s58*global_par_kM_re29_s60_s58/(global_par_kG_s57*global_par_kM_re29_s60_s57))^(0.5))/(x(2)/global_par_kM_re29_s60_s57+(1+x(1)/global_par_kM_re29_s60_s53)*(1+x(3)/global_par_kM_re29_s60_s58));

% Reaction: id = re31
	reaction_re31=global_par_kass_re31*x(1)*x(6)-global_par_kdiss_re31*x(7);

% Reaction: id = re32
	reaction_re32=global_par_kass_re32*x(7)-global_par_kdiss_re32*x(8);

% Reaction: id = re33
	reaction_re33=global_par_kass_re33*x(9)*x(10)-global_par_kdiss_re33*x(11);

% Reaction: id = re36
	reaction_re36=global_par_kI_re36_s101/(global_par_kI_re36_s101+x(17))*(global_par_kass_re36*x(14)*x(15)-global_par_kdiss_re36*x(16));

% Reaction: id = re37
	reaction_re37=global_par_kass_re37*x(16)-global_par_kdiss_re37*x(8);

% Reaction: id = re38
	reaction_re38=global_par_kass_re38*x(18)*x(19)-global_par_kdiss_re38*x(20);

% Reaction: id = re40
	reaction_re40=(global_par_kcatp_re40/(global_par_ki_re40_s124*global_par_kM_re40_s124)*x(20)*x(21)*x(22)-global_par_kcatn_re40/global_par_kM_re40_s124*x(20)*x(23))/(1+x(21)/global_par_ki_re40_s124+x(22)/global_par_ki_re40_s124+x(21)*x(22)/(global_par_ki_re40_s124*global_par_kM_re40_s124)+x(23)/global_par_kM_re40_s124);

% Reaction: id = re42
	reaction_re42=global_par_kI_re42_s147/(global_par_kI_re42_s147+x(27))*global_par_kI_re42_s135/(global_par_kI_re42_s135+x(23))*(global_par_kass_re42*x(24)*x(25)-global_par_kdiss_re42*x(26));

% Reaction: id = re43
	reaction_re43=global_par_kass_re43*x(25)-global_par_kdiss_re43*x(8);

% Reaction: id = re34
	reaction_re34=x(11)*(global_par_kass_re34_s85*x(12)-global_par_kdiss_re34_s85*x(12))+x(13)*(global_par_kass_re34_s89*x(12)-global_par_kdiss_re34_s89*x(12));

% Reaction: id = re35
	reaction_re35=x(13)*(global_par_kass_re35_s89*x(12)-global_par_kdiss_re35_s89*x(8));

	xdot=zeros(27,1);
	
% Species:   id = s53, name = NICD, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*(( 1.0 * reaction_re29) + (-1.0 * reaction_re31));
	
% Species:   id = s57, name = Notch, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*((-1.0 * reaction_re29));
	
% Species:   id = s58, name = Notch TM, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_re29));
	
% Species:   id = s60, name = Gamma secretase
% Warning species is not changed by either rules or reactions
	xdot(4) = ;
	
% Species:   id = s61, name = DAPT
% Warning species is not changed by either rules or reactions
	xdot(5) = ;
	
% Species:   id = s68, name = RBP-jk, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*((-1.0 * reaction_re31));
	
% Species:   id = s72, name = Complex NICD-RBP, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*(( 1.0 * reaction_re31) + (-1.0 * reaction_re32));
	
% Species:   id = s73, name = Hes-1, affected by kineticLaw
	xdot(8) = (1/(compartment_c1))*(( 1.0 * reaction_re32) + ( 1.0 * reaction_re37) + ( 1.0 * reaction_re43) + ( 1.0 * reaction_re35));
	
% Species:   id = s81, name = Shh, affected by kineticLaw
	xdot(9) = (1/(compartment_default))*((-1.0 * reaction_re33));
	
% Species:   id = s83, name = Ptch1, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*((-1.0 * reaction_re33));
	
% Species:   id = s85, name = Complex Shh Ptch1, affected by kineticLaw
	xdot(11) = (1/(compartment_default))*(( 1.0 * reaction_re33));
	
% Species:   id = s88, name = smo, affected by kineticLaw
	xdot(12) = (1/(compartment_default))*((-1.0 * reaction_re34) + ( 1.0 * reaction_re34) + (-1.0 * reaction_re35));
	
% Species:   id = s89, name = SAG
% Warning species is not changed by either rules or reactions
	xdot(13) = ;
	
% Species:   id = s96, name = EGF, affected by kineticLaw
	xdot(14) = (1/(compartment_default))*((-1.0 * reaction_re36));
	
% Species:   id = s98, name = EGFR, affected by kineticLaw
	xdot(15) = (1/(compartment_default))*((-1.0 * reaction_re36));
	
% Species:   id = s100, name = Complex EGF-EGFR, affected by kineticLaw
	xdot(16) = (1/(compartment_default))*(( 1.0 * reaction_re36) + (-1.0 * reaction_re37));
	
% Species:   id = s101, name = Erlotinib
% Warning species is not changed by either rules or reactions
	xdot(17) = ;
	
% Species:   id = s107, name = Wnt, affected by kineticLaw
	xdot(18) = (1/(compartment_default))*((-1.0 * reaction_re38));
	
% Species:   id = s109, name = Frzzl, affected by kineticLaw
	xdot(19) = (1/(compartment_default))*((-1.0 * reaction_re38));
	
% Species:   id = s111, name = Complex Wnt-Frzzl, affected by kineticLaw
	xdot(20) = (1/(compartment_default))*(( 1.0 * reaction_re38));
	
% Species:   id = s122, name = Dishevelled, affected by kineticLaw
	xdot(21) = (1/(compartment_default))*((-1.0 * reaction_re40));
	
% Species:   id = s124, name = FRAT-CK2, affected by kineticLaw
	xdot(22) = (1/(compartment_default))*((-1.0 * reaction_re40));
	
% Species:   id = s135, name = Complex Dishevelled-FRAT-CK2, affected by kineticLaw
	xdot(23) = (1/(compartment_default))*(( 1.0 * reaction_re40));
	
% Species:   id = s142, name = GSK3B, affected by kineticLaw
	xdot(24) = (1/(compartment_default))*((-1.0 * reaction_re42));
	
% Species:   id = s144, name = Beta-catenin, affected by kineticLaw
	xdot(25) = (1/(compartment_default))*((-1.0 * reaction_re42) + (-1.0 * reaction_re43));
	
% Species:   id = s146, name = Complex GSK3B-Bcatenin, affected by kineticLaw
	xdot(26) = (1/(compartment_default))*(( 1.0 * reaction_re42));
	
% Species:   id = s147, name = 6 bromoindirubin 3`oxime
% Warning species is not changed by either rules or reactions
	xdot(27) = ;
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


