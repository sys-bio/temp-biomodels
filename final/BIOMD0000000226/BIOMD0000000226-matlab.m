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
% Model name = Radulescu2008_NFkB_hierarchy_M_14_25_28_Lipniacky
%
% is http://identifiers.org/biomodels.db/MODEL7743386835
% is http://identifiers.org/biomodels.db/BIOMD0000000226
% isDescribedBy http://identifiers.org/pubmed/18854041
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000139
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000140
% isDerivedFrom http://identifiers.org/pubmed/15094015
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.06;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;


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
% Compartment: id = c2, name = nucleus, constant
	compartment_c2=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.0025;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.25E-4;
% Parameter:   id =  k3, name = k3
% Warning parameter k3 is not constant, it should be controlled by a Rule and/or events
	global_par_k3=2.5E-6;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.1;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.0015;
% Parameter:   id =  k6, name = k6
	global_par_k6=1.25E-4;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.2;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.1;
% Parameter:   id =  k9, name = k9
	global_par_k9=1.0;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.1;
% Parameter:   id =  k11, name = k11
	global_par_k11=1.25E-4;
% Parameter:   id =  k12, name = k12
	global_par_k12=2.0E-5;
% Parameter:   id =  kf13, name = kf13
	global_par_kf13=18.4;
% Parameter:   id =  kr13, name = kr13
	global_par_kr13=0.0;
% Parameter:   id =  kf14, name = kf14
	global_par_kf14=18.4;
% Parameter:   id =  kr14, name = kr14
	global_par_kr14=0.0;
% Parameter:   id =  kf15, name = kf15
	global_par_kf15=0.0025;
% Parameter:   id =  kr15, name = kr15
	global_par_kr15=0.0;
% Parameter:   id =  k16, name = k16
	global_par_k16=0.5;
% Parameter:   id =  k17, name = k17
	global_par_k17=4.0E-4;
% Parameter:   id =  k18, name = k18
	global_par_k18=3.0E-4;
% Parameter:   id =  k20, name = k20
	global_par_k20=5.0E-7;
% Parameter:   id =  k19, name = k19
	global_par_k19=0.0;
% Parameter:   id =  k21, name = k21
	global_par_k21=1.0E-4;
% Parameter:   id =  k22, name = k22
	global_par_k22=0.5;
% Parameter:   id =  kf23, name = kf23
	global_par_kf23=0.001;
% Parameter:   id =  kr23, name = kr23
	global_par_kr23=5.0E-4;
% Parameter:   id =  k27, name = k27
	global_par_k27=4.0E-4;
% Parameter:   id =  kf28, name = kf28
	global_par_kf28=0.01;
% Parameter:   id =  kr28, name = kr28
	global_par_kr28=0.0;
% Parameter:   id =  k26, name = k26
	global_par_k26=5.0E-7;

% Reaction: id = re44
	reaction_re44=global_par_k26*x(13);

% Reaction: id = re45
	reaction_re45=global_par_k27*x(1);

% Reaction: id = re46
	reaction_re46=global_par_k21*x(11);

% Reaction: id = re47
	reaction_re47=global_par_k22*x(1);

% Reaction: id = re48
	reaction_re48=global_par_k19+global_par_k20*x(13);

% Reaction: id = re49
	reaction_re49=global_par_k1*x(6);

% Reaction: id = re52
	reaction_re52=global_par_k12*x(7);

% Reaction: id = re53
	reaction_re53=global_par_k2*x(6);

% Reaction: id = re56
	reaction_re56=global_par_k6*x(5);

% Reaction: id = re57
	reaction_re57=global_par_k8*x(8);

% Reaction: id = re58
	reaction_re58=global_par_k9*x(5)*x(7);

% Reaction: id = re59
	reaction_re59=global_par_k10*x(9);

% Reaction: id = re60
	reaction_re60=global_par_k11*x(4);

% Reaction: id = re61
	reaction_re61=global_par_k16*x(2);

% Reaction: id = re63
	reaction_re63=global_par_k5*x(5)+global_par_k4*x(5)*x(3);

% Reaction: id = re64
	reaction_re64=global_par_k3;

% Reaction: id = re65
	reaction_re65=global_par_kf13*x(12)*x(11)-global_par_kr13*x(7);

% Reaction: id = re66
	reaction_re66=global_par_k7*x(5)*x(11);

% Reaction: id = re67
	reaction_re67=global_par_kf15*x(12)-global_par_kr15*x(13);

% Reaction: id = re68
	reaction_re68=global_par_kf28*x(10)-global_par_kr28*x(7);

% Reaction: id = re69
	reaction_re69=global_par_kf14*x(13)*x(14)-global_par_kr14*x(10);

% Reaction: id = re70
	reaction_re70=global_par_k17*x(2);

% Reaction: id = re71
	reaction_re71=global_par_k18*x(3);

% Reaction: id = re72
	reaction_re72=global_par_kf23*x(11)-global_par_kr23*x(14);

% Species:   id = s121, name = IKBA, constant	const_species_s121=0.0;

% Species:   id = s122, name = sa13_degraded, constant	const_species_s122=0.0;

% Species:   id = s124, name = sa12_degraded, constant	const_species_s124=0.0;

% Species:   id = s126, name = A20, constant	const_species_s126=0.0;

% Species:   id = s129, name = sa444_degraded, constant	const_species_s129=0.0;

% Species:   id = s131, name = sa19_degraded, constant	const_species_s131=0.0;

% Species:   id = s134, name = sa20_degraded, constant	const_species_s134=0.0;

% Species:   id = s150, name = IKK, constant	const_species_s150=0.0;

% Species:   id = s153, name = sa96_degraded, constant	const_species_s153=0.0;

% Species:   id = s154, name = sa97_degraded, constant	const_species_s154=0.0;

	xdot=zeros(14,1);
	
% Species:   id = s125, name = mRNAIKBA, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*(( 1.0 * reaction_re44) + (-1.0 * reaction_re45) + (-1.0 * reaction_re47) + ( 1.0 * reaction_re47));
	
% Species:   id = s127, name = mRNAA20, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*(( 1.0 * reaction_re48) + (-1.0 * reaction_re61) + ( 1.0 * reaction_re61) + (-1.0 * reaction_re70));
	
% Species:   id = s128, name = A20, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_re61) + (-1.0 * reaction_re71));
	
% Species:   id = s130, name = IKKi, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*((-1.0 * reaction_re60) + ( 1.0 * reaction_re63));
	
% Species:   id = s132, name = IKKa, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*(( 1.0 * reaction_re49) + (-1.0 * reaction_re56) + ( 1.0 * reaction_re57) + (-1.0 * reaction_re58) + ( 1.0 * reaction_re59) + (-1.0 * reaction_re63) + (-1.0 * reaction_re66));
	
% Species:   id = s133, name = IKKn, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*((-1.0 * reaction_re49) + (-1.0 * reaction_re53) + ( 1.0 * reaction_re64));
	
% Species:   id = s135, name = NFkB:IkB_alpha, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*((-1.0 * reaction_re52) + (-1.0 * reaction_re58) + ( 1.0 * reaction_re65) + ( 1.0 * reaction_re68));
	
% Species:   id = s139, name = IKKa/IKBa, affected by kineticLaw
	xdot(8) = (1/(compartment_default))*((-1.0 * reaction_re57) + ( 1.0 * reaction_re66));
	
% Species:   id = s152, name = NFkB/Ikb_alpha/IKKa, affected by kineticLaw
	xdot(9) = (1/(compartment_default))*(( 1.0 * reaction_re58) + (-1.0 * reaction_re59));
	
% Species:   id = s159, name = NFkB/IkB_alpha, affected by kineticLaw
	xdot(10) = (1/(compartment_c2))*((-5.0 * reaction_re68) + ( 1.0 * reaction_re69));
	
% Species:   id = s160, name = IkB_alpha, affected by kineticLaw
	xdot(11) = (1/(compartment_default))*((-1.0 * reaction_re46) + ( 1.0 * reaction_re47) + (-1.0 * reaction_re65) + (-1.0 * reaction_re66) + (-1.0 * reaction_re72));
	
% Species:   id = s161, name = NFkB, affected by kineticLaw
	xdot(12) = (1/(compartment_default))*(( 1.0 * reaction_re52) + ( 1.0 * reaction_re59) + (-1.0 * reaction_re65) + (-1.0 * reaction_re67));
	
% Species:   id = s164, name = NFkB, affected by kineticLaw
	xdot(13) = (1/(compartment_c2))*(( 5.0 * reaction_re67) + (-1.0 * reaction_re69));
	
% Species:   id = s167, name = IkB_alpha, affected by kineticLaw
	xdot(14) = (1/(compartment_c2))*((-1.0 * reaction_re69) + ( 5.0 * reaction_re72));
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


