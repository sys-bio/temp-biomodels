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
% Model name = Radulescu2008_NFkB_hierarchy_M_39_65_90
%
% is http://identifiers.org/biomodels.db/MODEL7743656488
% is http://identifiers.org/biomodels.db/BIOMD0000000227
% isDescribedBy http://identifiers.org/pubmed/18854041
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000139
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000140
% isDerivedFrom http://identifiers.org/pubmed/15094015
%


function main()
%Initial conditions vector
	x0=zeros(45,1);
	x0(1) = 3.33333333333333E-4;
	x0(2) = 3.33333333333333E-4;
	x0(3) = 3.33333333333333E-4;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 6.66666666666667E-6;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 6.66666666666667E-6;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 0.0;
	x0(39) = 6.66666666666667E-6;
	x0(40) = 0.0;
	x0(41) = 0.0;
	x0(42) = 0.0;
	x0(43) = 0.0;
	x0(44) = 0.0;
	x0(45) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Compartment: id = c1, name = nucleus, constant
	compartment_c1=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.25E-4;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.0E-5;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.1;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.0015;
% Parameter:   id =  k6, name = k6
	global_par_k6=1.25E-4;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.24;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.1;
% Parameter:   id =  k9, name = k9
	global_par_k9=1.2;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.1;
% Parameter:   id =  k11, name = k11
	global_par_k11=1.25E-4;
% Parameter:   id =  k12, name = k12
	global_par_k12=2.0E-5;
% Parameter:   id =  kf13, name = kf13
	global_par_kf13=0.5;
% Parameter:   id =  kr13, name = kr13
	global_par_kr13=0.0;
% Parameter:   id =  kf14, name = kf14
	global_par_kf14=0.5;
% Parameter:   id =  kr14, name = kr14
	global_par_kr14=0.0;
% Parameter:   id =  kf15, name = kf15
	global_par_kf15=0.0025;
% Parameter:   id =  kr15, name = kr15
	global_par_kr15=8.0E-5;
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
% Parameter:   id =  k25, name = k25
	global_par_k25=0.0;
% Parameter:   id =  k27, name = k27
	global_par_k27=4.0E-4;
% Parameter:   id =  kf28, name = kf28
	global_par_kf28=0.01;
% Parameter:   id =  kr28, name = kr28
	global_par_kr28=0.0;
% Parameter:   id =  kf32, name = kf32
	global_par_kf32=10.0;
% Parameter:   id =  kr32, name = kr32
	global_par_kr32=1.0E-4;
% Parameter:   id =  k42, name = k42
	global_par_k42=5.0E-4;
% Parameter:   id =  k43, name = k43
	global_par_k43=0.1;
% Parameter:   id =  k33, name = k33
	global_par_k33=5.0E-4;
% Parameter:   id =  k34, name = k34
	global_par_k34=0.1;
% Parameter:   id =  k69, name = k69
	global_par_k69=0.006;
% Parameter:   id =  k70, name = k70
	global_par_k70=0.06;
% Parameter:   id =  k49, name = k49
	global_par_k49=5.0E-4;
% Parameter:   id =  k50, name = k50
	global_par_k50=0.02;
% Parameter:   id =  k61, name = k61
	global_par_k61=0.06;
% Parameter:   id =  k62, name = k62
	global_par_k62=0.6;
% Parameter:   id =  k35, name = k35
	global_par_k35=0.01;
% Parameter:   id =  k36, name = k36
	global_par_k36=0.0041;
% Parameter:   id =  k37, name = k37
	global_par_k37=5.0E-5;
% Parameter:   id =  k38, name = k38
	global_par_k38=6.0E-5;
% Parameter:   id =  k39, name = k39
	global_par_k39=1.3E-4;
% Parameter:   id =  k40, name = k40
	global_par_k40=6.4E-5;
% Parameter:   id =  kf41, name = kf41
	global_par_kf41=10.0;
% Parameter:   id =  kr41, name = kr41
	global_par_kr41=1.0E-4;
% Parameter:   id =  k44, name = k44
	global_par_k44=0.016;
% Parameter:   id =  k45, name = k45
	global_par_k45=0.0053;
% Parameter:   id =  k46, name = k46
	global_par_k46=5.0E-5;
% Parameter:   id =  k47, name = k47
	global_par_k47=6.4E-5;
% Parameter:   id =  kf48, name = kf48
	global_par_kf48=10.0;
% Parameter:   id =  kr48, name = kr48
	global_par_kr48=1.0E-4;
% Parameter:   id =  k51, name = k51
	global_par_k51=0.025;
% Parameter:   id =  kf52, name = kf52
	global_par_kf52=0.003;
% Parameter:   id =  kr52, name = kr52
	global_par_kr52=0.001;
% Parameter:   id =  k53, name = k53
	global_par_k53=2.0E-4;
% Parameter:   id =  k54, name = k54
	global_par_k54=2.0E-4;
% Parameter:   id =  kf55, name = kf55
	global_par_kf55=0.62;
% Parameter:   id =  kr55, name = kr55
	global_par_kr55=4.8E-4;
% Parameter:   id =  kf56, name = kf56
	global_par_kf56=0.62;
% Parameter:   id =  kr56, name = kr56
	global_par_kr56=4.8E-4;
% Parameter:   id =  kf57, name = kf57
	global_par_kf57=18.4;
% Parameter:   id =  kr57, name = kr57
	global_par_kr57=0.055;
% Parameter:   id =  kf58, name = kf58
	global_par_kf58=18.4;
% Parameter:   id =  kr58, name = kr58
	global_par_kr58=0.055;
% Parameter:   id =  kf59, name = kf59
	global_par_kf59=0.0038;
% Parameter:   id =  kr59, name = kr59
	global_par_kr59=8.0E-13;
% Parameter:   id =  kf60, name = kf60
	global_par_kf60=0.0038;
% Parameter:   id =  kr60, name = kr60
	global_par_kr60=8.0E-13;
% Parameter:   id =  kf63, name = kf63
	global_par_kf63=0.62;
% Parameter:   id =  kr63, name = kr63
	global_par_kr63=4.8E-4;
% Parameter:   id =  kf64, name = kf64
	global_par_kf64=0.62;
% Parameter:   id =  kr64, name = kr64
	global_par_kr64=4.8E-4;
% Parameter:   id =  kf65, name = kf65
	global_par_kf65=18.4;
% Parameter:   id =  kr65, name = kr65
	global_par_kr65=0.055;
% Parameter:   id =  kf66, name = kf66
	global_par_kf66=18.4;
% Parameter:   id =  kr66, name = kr66
	global_par_kr66=0.055;
% Parameter:   id =  kf67, name = kf67
	global_par_kf67=0.0038;
% Parameter:   id =  kr67, name = kr67
	global_par_kr67=8.0E-13;
% Parameter:   id =  kf68, name = kf68
	global_par_kf68=0.0038;
% Parameter:   id =  kr68, name = kr68
	global_par_kr68=8.0E-13;
% Parameter:   id =  k71, name = k71
	global_par_k71=2.0E-4;
% Parameter:   id =  k72, name = k72
	global_par_k72=2.0E-4;

% Reaction: id = re1
	reaction_re1=global_par_kf32*x(35)*x(1)-global_par_kr32*x(36);

% Reaction: id = re8
	reaction_re8=global_par_kf64*x(32)*x(36)-global_par_kr64*x(37);

% Reaction: id = re14
	reaction_re14=global_par_kf56*x(32)*x(40)-global_par_kr56*x(44);

% Reaction: id = re15
	reaction_re15=global_par_kf57*x(4)*x(42)-global_par_kr57*x(43);

% Reaction: id = re19
	reaction_re19=global_par_kf63*x(32)*x(35)-global_par_kr63*x(33);

% Reaction: id = re20
	reaction_re20=global_par_kf65*x(4)*x(33)-global_par_kr65*x(34);

% Reaction: id = re21
	reaction_re21=global_par_kf55*x(32)*x(39)-global_par_kr55*x(42);

% Reaction: id = re22
	reaction_re22=global_par_kf66*x(4)*x(37)-global_par_kr66*x(38);

% Reaction: id = re23
	reaction_re23=global_par_kf58*x(4)*x(44)-global_par_kr58*x(45);

% Reaction: id = re24
	reaction_re24=global_par_kf48*x(3)*x(39)-global_par_kr48*x(40);

% Reaction: id = re25
	reaction_re25=global_par_kf67*x(34)-global_par_kr67*x(29)*x(35);

% Reaction: id = re26
	reaction_re26=global_par_kf68*x(38)-global_par_kr68*x(29)*x(36);

% Reaction: id = re27
	reaction_re27=global_par_kf60*x(45)-global_par_kr60*x(29)*x(40);

% Reaction: id = re28
	reaction_re28=global_par_kf59*x(43)-global_par_kr59*x(29)*x(39);

% Reaction: id = re29
	reaction_re29=global_par_kf41*x(2)*x(30)-global_par_kr41*x(31);

% Reaction: id = re30
	reaction_re30=global_par_k42*x(30)+global_par_k43*x(31);

% Reaction: id = re31
	reaction_re31=global_par_k33*x(35)+global_par_k34*x(36)+global_par_k69*x(33)+global_par_k70*x(37);

% Reaction: id = re32
	reaction_re32=global_par_k49*x(39)+global_par_k50*x(40)+global_par_k62*x(44)+global_par_k61*x(42);

% Reaction: id = re33
	reaction_re33=global_par_k54*x(32);

% Reaction: id = re34
	reaction_re34=global_par_k35*x(22);

% Reaction: id = re35
	reaction_re35=global_par_k38*x(5);

% Reaction: id = re36
	reaction_re36=global_par_k37*x(6);

% Reaction: id = re37
	reaction_re37=global_par_k36*x(6);

% Reaction: id = re38
	reaction_re38=global_par_k39*x(5);

% Reaction: id = re39
	reaction_re39=global_par_k40*x(7);

% Reaction: id = re40
	reaction_re40=global_par_k44*x(20);

% Reaction: id = re41
	reaction_re41=global_par_k46*x(8);

% Reaction: id = re42
	reaction_re42=global_par_k47*x(9);

% Reaction: id = re43
	reaction_re43=global_par_k45*x(8);

% Reaction: id = re44
	reaction_re44=global_par_k51*x(24);

% Reaction: id = re45
	reaction_re45=global_par_k27*x(23);

% Reaction: id = re46
	reaction_re46=global_par_k21*x(10);

% Reaction: id = re47
	reaction_re47=global_par_k22*x(23);

% Reaction: id = re48
	reaction_re48=global_par_k19+global_par_k20*x(32);

% Reaction: id = re49
	reaction_re49=global_par_k1*x(17);

% Reaction: id = re52
	reaction_re52=global_par_k12*x(25);

% Reaction: id = re53
	reaction_re53=global_par_k2*x(17);

% Reaction: id = re56
	reaction_re56=global_par_k6*x(16);

% Reaction: id = re57
	reaction_re57=global_par_k8*x(28);

% Reaction: id = re58
	reaction_re58=global_par_k9*x(16)*x(25);

% Reaction: id = re59
	reaction_re59=global_par_k10*x(26);

% Reaction: id = re60
	reaction_re60=global_par_k11*x(15);

% Reaction: id = re61
	reaction_re61=global_par_k16*x(13);

% Reaction: id = re62
	reaction_re62=global_par_kf52*x(7)*x(9)-global_par_kr52*x(27);

% Reaction: id = re63
	reaction_re63=global_par_k5*x(16)+global_par_k4*x(16)*x(14);

% Reaction: id = re64
	reaction_re64=global_par_k3;

% Reaction: id = re65
	reaction_re65=global_par_kf13*x(27)*x(10)-global_par_kr13*x(25);

% Reaction: id = re66
	reaction_re66=global_par_k7*x(16)*x(10);

% Reaction: id = re67
	reaction_re67=global_par_kf15*x(27)-global_par_kr15*x(32);

% Reaction: id = re68
	reaction_re68=global_par_kf28*x(29)-global_par_kr28*x(25);

% Reaction: id = re69
	reaction_re69=global_par_kf14*x(32)*x(4)-global_par_kr14*x(29);

% Reaction: id = re70
	reaction_re70=global_par_k17*x(13);

% Reaction: id = re71
	reaction_re71=global_par_k18*x(14);

% Reaction: id = re72
	reaction_re72=global_par_kf23*x(10)-global_par_kr23*x(4);

% Reaction: id = re74
	reaction_re74=global_par_k53*x(27);

% Reaction: id = re75
	reaction_re75=global_par_k71*x(25);

% Reaction: id = re76
	reaction_re76=global_par_k72*x(29);

% Species:   id = s108, name = csa17_degraded, constant	const_species_s108=0.0;

% Species:   id = s109, name = sa4_degraded, constant	const_species_s109=0.0;

% Species:   id = s111, name = sa438_degraded, constant	const_species_s111=0.0;

% Species:   id = s112, name = sa3_degraded, constant	const_species_s112=0.0;

% Species:   id = s118, name = sa8_degraded, constant	const_species_s118=0.0;

% Species:   id = s120, name = sa9_degraded, constant	const_species_s120=0.0;

% Species:   id = s122, name = sa13_degraded, constant	const_species_s122=0.0;

% Species:   id = s129, name = sa444_degraded, constant	const_species_s129=0.0;

% Species:   id = s131, name = sa19_degraded, constant	const_species_s131=0.0;

% Species:   id = s134, name = sa20_degraded, constant	const_species_s134=0.0;

% Species:   id = s153, name = sa96_degraded, constant	const_species_s153=0.0;

% Species:   id = s154, name = sa97_degraded, constant	const_species_s154=0.0;

% Species:   id = s156, name = csa21_degraded, constant	const_species_s156=0.0;

% Species:   id = s157, name = csa18_degraded, constant	const_species_s157=0.0;

% Species:   id = s158, name = csa9_degraded, constant	const_species_s158=0.0;

%Event: id=signal
	event_signal=time > 72000;

	if(event_signal) 
		global_par_k1=0.0025;
	end

	xdot=zeros(45,1);
	
% Species:   id = s22, name = FTAx, affected by kineticLaw
	xdot(1) = (1/(compartment_c1))*((-1.0 * reaction_re1));
	
% Species:   id = s36, name = FTAy, affected by kineticLaw
	xdot(2) = (1/(compartment_c1))*((-1.0 * reaction_re29));
	
% Species:   id = s65, name = FTAz, affected by kineticLaw
	xdot(3) = (1/(compartment_c1))*((-1.0 * reaction_re24));
	
% Species:   id = s93, name = IkB_alpha, affected by kineticLaw
	xdot(4) = (1/(compartment_c1))*((-1.0 * reaction_re15) + (-1.0 * reaction_re20) + (-1.0 * reaction_re22) + (-1.0 * reaction_re23) + (-1.0 * reaction_re69) + ( 5.0 * reaction_re72));
	
% Species:   id = s110, name = p105, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*((-1.0 * reaction_re35) + ( 1.0 * reaction_re37) + (-1.0 * reaction_re38));
	
% Species:   id = s113, name = mRNAp105, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_re34) + (-1.0 * reaction_re36) + (-1.0 * reaction_re37) + ( 1.0 * reaction_re37));
	
% Species:   id = s114, name = p50, affected by kineticLaw
	xdot(7) = (1/(compartment_default))*(( 1.0 * reaction_re38) + (-1.0 * reaction_re39) + (-1.0 * reaction_re62));
	
% Species:   id = s117, name = mRNAp65, affected by kineticLaw
	xdot(8) = (1/(compartment_default))*(( 1.0 * reaction_re40) + (-1.0 * reaction_re41) + (-1.0 * reaction_re43) + ( 1.0 * reaction_re43));
	
% Species:   id = s119, name = p65, affected by kineticLaw
	xdot(9) = (1/(compartment_default))*((-1.0 * reaction_re42) + ( 1.0 * reaction_re43) + (-1.0 * reaction_re62));
	
% Species:   id = s123, name = IkB_alpha, affected by kineticLaw
	xdot(10) = (1/(compartment_default))*((-1.0 * reaction_re46) + ( 1.0 * reaction_re47) + (-1.0 * reaction_re65) + (-1.0 * reaction_re66) + (-1.0 * reaction_re72));
	
% Species:   id = s124, name = sa12_degraded, affected by kineticLaw
	xdot(11) = (1/(compartment_default))*(( 1.0 * reaction_re45));
	
% Species:   id = s126, name = A20, affected by kineticLaw
	xdot(12) = (1/(compartment_c1))*((-1.0 * reaction_re48));
	
% Species:   id = s127, name = mRNAA20, affected by kineticLaw
	xdot(13) = (1/(compartment_default))*(( 1.0 * reaction_re48) + (-1.0 * reaction_re61) + ( 1.0 * reaction_re61) + (-1.0 * reaction_re70));
	
% Species:   id = s128, name = A20, affected by kineticLaw
	xdot(14) = (1/(compartment_default))*(( 1.0 * reaction_re61) + (-1.0 * reaction_re71));
	
% Species:   id = s130, name = IKKi, affected by kineticLaw
	xdot(15) = (1/(compartment_default))*((-1.0 * reaction_re60) + ( 1.0 * reaction_re63));
	
% Species:   id = s132, name = IKKa, affected by kineticLaw
	xdot(16) = (1/(compartment_default))*(( 1.0 * reaction_re49) + (-1.0 * reaction_re56) + ( 1.0 * reaction_re57) + (-1.0 * reaction_re58) + ( 1.0 * reaction_re59) + (-1.0 * reaction_re63) + (-1.0 * reaction_re66));
	
% Species:   id = s133, name = IKKn, affected by kineticLaw
	xdot(17) = (1/(compartment_default))*((-1.0 * reaction_re49) + (-1.0 * reaction_re53) + ( 1.0 * reaction_re64));
	
% Species:   id = s150, name = IKK, affected by kineticLaw
	xdot(18) = (1/(compartment_c1))*((-1.0 * reaction_re64));
	
% Species:   id = s160, name = InactivePRaseonp65, affected by kineticLaw
	xdot(19) = (1/(compartment_c1))*((-1.0 * reaction_re30));
	
% Species:   id = s165, name = ActivePRaseonp65, affected by kineticLaw
	xdot(20) = (1/(compartment_c1))*(( 1.0 * reaction_re30) + (-1.0 * reaction_re40));
	
% Species:   id = s170, name = InactivePRaseonp105, affected by kineticLaw
	xdot(21) = (1/(compartment_c1))*((-1.0 * reaction_re31));
	
% Species:   id = s173, name = ActivePRaseonp105, affected by kineticLaw
	xdot(22) = (1/(compartment_c1))*(( 1.0 * reaction_re31) + (-1.0 * reaction_re34));
	
% Species:   id = s178, name = mRNAIKB_alpha, affected by kineticLaw
	xdot(23) = (1/(compartment_default))*(( 1.0 * reaction_re44) + (-1.0 * reaction_re45) + (-1.0 * reaction_re47) + ( 1.0 * reaction_re47));
	
% Species:   id = s185, name = ActivePRaseonIkB_alpha, affected by kineticLaw
	xdot(24) = (1/(compartment_c1))*(( 1.0 * reaction_re32) + (-1.0 * reaction_re44));
	
% Species:   id = s188, name = NFkB:IkB_alpha, affected by kineticLaw
	xdot(25) = (1/(compartment_default))*((-1.0 * reaction_re52) + (-1.0 * reaction_re58) + ( 1.0 * reaction_re65) + ( 1.0 * reaction_re68) + (-1.0 * reaction_re75));
	
% Species:   id = s189, name = NFkB:IKKa:Ikb_alpha, affected by kineticLaw
	xdot(26) = (1/(compartment_default))*(( 1.0 * reaction_re58) + (-1.0 * reaction_re59));
	
% Species:   id = s190, name = NFkB, affected by kineticLaw
	xdot(27) = (1/(compartment_default))*(( 1.0 * reaction_re52) + ( 1.0 * reaction_re59) + ( 1.0 * reaction_re62) + (-1.0 * reaction_re65) + (-1.0 * reaction_re67) + (-1.0 * reaction_re74));
	
% Species:   id = s191, name = IKKa:IKB_alpha, affected by kineticLaw
	xdot(28) = (1/(compartment_default))*((-1.0 * reaction_re57) + ( 1.0 * reaction_re66));
	
% Species:   id = s192, name = NFkB:IkB_alpha, affected by kineticLaw
	xdot(29) = (1/(compartment_c1))*(( 1.0 * reaction_re25) + ( 1.0 * reaction_re26) + ( 1.0 * reaction_re27) + ( 1.0 * reaction_re28) + (-5.0 * reaction_re68) + ( 1.0 * reaction_re69) + (-1.0 * reaction_re76));
	
% Species:   id = s193, name = Promp65:RNAP2, affected by kineticLaw
	xdot(30) = (1/(compartment_c1))*((-1.0 * reaction_re29));
	
% Species:   id = s194, name = Promp65:RNAP2:FTAy, affected by kineticLaw
	xdot(31) = (1/(compartment_c1))*(( 1.0 * reaction_re29));
	
% Species:   id = s195, name = NFkB, affected by kineticLaw
	xdot(32) = (1/(compartment_c1))*((-1.0 * reaction_re8) + (-1.0 * reaction_re14) + (-1.0 * reaction_re19) + (-1.0 * reaction_re21) + (-1.0 * reaction_re33) + ( 5.0 * reaction_re67) + (-1.0 * reaction_re69));
	
% Species:   id = s196, name = Promp105:RNAP1:p50p65, affected by kineticLaw
	xdot(33) = (1/(compartment_c1))*(( 1.0 * reaction_re19) + (-1.0 * reaction_re20));
	
% Species:   id = s197, name = Promp105:RNAP1:p50p65:IkBa, affected by kineticLaw
	xdot(34) = (1/(compartment_c1))*(( 1.0 * reaction_re20) + (-1.0 * reaction_re25));
	
% Species:   id = s198, name = Promp105:RNAP, affected by kineticLaw
	xdot(35) = (1/(compartment_c1))*((-1.0 * reaction_re1) + (-1.0 * reaction_re19) + ( 1.0 * reaction_re25));
	
% Species:   id = s199, name = Promp105:RNAP:FTAX, affected by kineticLaw
	xdot(36) = (1/(compartment_c1))*(( 1.0 * reaction_re1) + (-1.0 * reaction_re8) + ( 1.0 * reaction_re26));
	
% Species:   id = s200, name = Promp105:RNAP1:FTAx:p50p65, affected by kineticLaw
	xdot(37) = (1/(compartment_c1))*(( 1.0 * reaction_re8) + (-1.0 * reaction_re22));
	
% Species:   id = s201, name = Promp105:RNAP1:FTAx:p50p65:IkBa, affected by kineticLaw
	xdot(38) = (1/(compartment_c1))*(( 1.0 * reaction_re22) + (-1.0 * reaction_re26));
	
% Species:   id = s205, name = PromIkBa:RNAP3, affected by kineticLaw
	xdot(39) = (1/(compartment_c1))*((-1.0 * reaction_re21) + (-1.0 * reaction_re24) + ( 1.0 * reaction_re28));
	
% Species:   id = s206, name = PromIkBa:RNAP3:FTAz, affected by kineticLaw
	xdot(40) = (1/(compartment_c1))*((-1.0 * reaction_re14) + ( 1.0 * reaction_re24) + ( 1.0 * reaction_re27));
	
% Species:   id = s209, name = InactivePRaseonIkB_alpha, affected by kineticLaw
	xdot(41) = (1/(compartment_c1))*((-1.0 * reaction_re32));
	
% Species:   id = s212, name = PromIkBa:RNAP3:p50p65, affected by kineticLaw
	xdot(42) = (1/(compartment_c1))*((-1.0 * reaction_re15) + ( 1.0 * reaction_re21));
	
% Species:   id = s213, name = PromIkBa:RNAP3:p50p65:IkBa, affected by kineticLaw
	xdot(43) = (1/(compartment_c1))*(( 1.0 * reaction_re15) + (-1.0 * reaction_re28));
	
% Species:   id = s214, name = IkBa:RNAP3:FTAz:p50p65, affected by kineticLaw
	xdot(44) = (1/(compartment_c1))*(( 1.0 * reaction_re14) + (-1.0 * reaction_re23));
	
% Species:   id = s215, name = PromIkBa:RNAP3:FTAz:p50p65:IkB_alpha, affected by kineticLaw
	xdot(45) = (1/(compartment_c1))*(( 1.0 * reaction_re23) + (-1.0 * reaction_re27));
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


