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
% Model name = Middleton2012_GibberellinSignalling
%
% is http://identifiers.org/biomodels.db/MODEL1206190000
% is http://identifiers.org/biomodels.db/BIOMD0000000422
% isDescribedBy http://identifiers.org/pubmed/22523240
%


function main()
%Initial conditions vector
	x0=zeros(37,1);
	x0(1) = 0.01;
	x0(2) = 0.01;
	x0(3) = 0.01;
	x0(4) = 0.01;
	x0(5) = 0.01;
	x0(6) = 0.01;
	x0(7) = 0.01;
	x0(8) = 0.01;
	x0(9) = 0.01;
	x0(10) = 0.01;
	x0(11) = 0.01;
	x0(12) = 0.01;
	x0(13) = 0.01;
	x0(14) = 0.01;
	x0(15) = 0.01;
	x0(16) = 0.01;
	x0(17) = 0.01;
	x0(18) = 0.01;
	x0(19) = 0.01;
	x0(20) = 0.01;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.01;
	x0(31) = 0.01;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;


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
% Parameter:   id =  muGA20ox, name = muGA20ox
	global_par_muGA20ox=0.047770755070625;
% Parameter:   id =  muGA3ox, name = muGA3ox
	global_par_muGA3ox=0.102600014140148;
% Parameter:   id =  muGID, name = muGID
	global_par_muGID=0.045708818961487;
% Parameter:   id =  muDELLA, name = muDELLA
	global_par_muDELLA=0.070794578438414;
% Parameter:   id =  Pmem, name = Pmem
	global_par_Pmem=2.66664;
% Parameter:   id =  muGA, name = muGA
	global_par_muGA=0.290804218727464;
% Parameter:   id =  omegaGA4, name = omegaGA4
	global_par_omegaGA4=0.0;
% Parameter:   id =  tGA4on, name = tGA4on
	global_par_tGA4on=500.0;
% Parameter:   id =  tGA4off, name = tGA4off
	global_par_tGA4off=620.0;
% Parameter:   id =  appliedGA4, name = appliedGA4
	global_par_appliedGA4=2.0;
% Parameter:   id =  omegaGA12ga13, name = omegaGA12ga13
	global_par_omegaGA12ga13=0.006602803853512;
% Parameter:   id =  omegaGA12, name = omegaGA12
% Parameter:   id =  R, name = R
	global_par_R=1.0;
% assignmentRule: variable = omegaGA12
	global_par_omegaGA12=global_par_R*global_par_omegaGA12ga13;

% Reaction: id = re1, name = GA4-GID association	% Local Parameter:   id =  la, name = la
	reaction_re1_la=1.35;

	reaction_re1=reaction_re1_la*x(1)*x(2);

% Reaction: id = re2, name = GA4.GID dissociation	% Local Parameter:   id =  ld, name = ld
	reaction_re2_ld=2.84315148627376;

	reaction_re2=reaction_re2_ld*x(15);

% Reaction: id = re3, name = GA4.GID-DELLA1 association	% Local Parameter:   id =  ua1, name = ua1
	reaction_re3_ua1=10.0;

	reaction_re3=reaction_re3_ua1*x(20)*x(3);

% Reaction: id = re4, name = GA4.GID.DELLA1 dissociation	% Local Parameter:   id =  ud1, name = ud1
	reaction_re4_ud1=0.133045441797809;

	reaction_re4=reaction_re4_ud1*x(31);

% Reaction: id = re5, name = DELLA ubiquitination	% Local Parameter:   id =  um, name = um
	reaction_re5_um=6.92208879449283;

	reaction_re5=reaction_re5_um*x(31);

% Reaction: id = re6, name = GA12 supply
	reaction_re6=global_par_omegaGA12;

% Reaction: id = re7, name = GA12-GA20ox association	% Local Parameter:   id =  ka12, name = ka12
	reaction_re7_ka12=2904.11853677638;

	reaction_re7=reaction_re7_ka12*x(5)*x(9);

% Reaction: id = re8, name = GA12.GA20ox dissociation	% Local Parameter:   id =  kd12, name = kd12
	reaction_re8_kd12=2.67298621993027;

	reaction_re8=reaction_re8_kd12*x(19);

% Reaction: id = re9, name = GA15 production	% Local Parameter:   id =  km12, name = km12
	reaction_re9_km12=198.80427707769;

	reaction_re9=reaction_re9_km12*x(19);

% Reaction: id = re10, name = GA15-GA20ox association	% Local Parameter:   id =  ka15, name = ka15
	reaction_re10_ka15=2073.22402517968;

	reaction_re10=reaction_re10_ka15*x(6)*x(9);

% Reaction: id = re11, name = GA15.GA20ox dissociation	% Local Parameter:   id =  kd15, name = kd15
	reaction_re11_kd15=0.008827838388125;

	reaction_re11=reaction_re11_kd15*x(18);

% Reaction: id = re12, name = GA24 production	% Local Parameter:   id =  km15, name = km15
	reaction_re12_km15=763.777072066507;

	reaction_re12=reaction_re12_km15*x(18);

% Reaction: id = re13, name = GA24-GA20ox association	% Local Parameter:   id =  ka24, name = ka24
	reaction_re13_ka24=3099.18915892587;

	reaction_re13=reaction_re13_ka24*x(7)*x(9);

% Reaction: id = re14, name = GA24.GA20ox dissociation	% Local Parameter:   id =  kd24, name = kd24
	reaction_re14_kd24=0.01588492846351;

	reaction_re14=reaction_re14_kd24*x(17);

% Reaction: id = re15, name = GA9 production	% Local Parameter:   id =  km24, name = km24
	reaction_re15_km24=2.58846077319221;

	reaction_re15=reaction_re15_km24*x(17);

% Reaction: id = re16, name = GA9-GA3ox association	% Local Parameter:   id =  ka9, name = ka9
	reaction_re16_ka9=2073.22402517968;

	reaction_re16=reaction_re16_ka9*x(8)*x(10);

% Reaction: id = re17, name = GA9.GA3ox dissociation	% Local Parameter:   id =  kd9, name = kd9
	reaction_re17_kd9=0.008827838388125;

	reaction_re17=reaction_re17_kd9*x(16);

% Reaction: id = re18, name = GA4 production	% Local Parameter:   id =  km9, name = km9
	reaction_re18_km9=763.777072066507;

	reaction_re18=reaction_re18_km9*x(16);

% Reaction: id = re19, name = GA4.GID lid closing	% Local Parameter:   id =  q, name = q
	reaction_re19_q=0.025118864315096;

	reaction_re19=reaction_re19_q*x(15);

% Reaction: id = re20, name = GA4.GID-Closed lid opening	% Local Parameter:   id =  p, name = p
	reaction_re20_p=0.077624711662869;

	reaction_re20=reaction_re20_p*x(20);

% Reaction: id = re21, name = della translation	% Local Parameter:   id =  deltaDELLA, name = deltaDELLA
	reaction_re21_deltaDELLA=5.27749140286577E-4;

	reaction_re21=reaction_re21_deltaDELLA*x(12);

% Reaction: id = re22, name = ga20ox translation	% Local Parameter:   id =  deltaGA20ox, name = deltaGA20ox
	reaction_re22_deltaGA20ox=0.192990314378105;

	reaction_re22=reaction_re22_deltaGA20ox*x(11);

% Reaction: id = re23, name = ga3ox translation	% Local Parameter:   id =  deltaGA3ox, name = deltaGA3ox
	reaction_re23_deltaGA3ox=0.019299031437811;

	reaction_re23=reaction_re23_deltaGA3ox*x(13);

% Reaction: id = re24, name = gid translation	% Local Parameter:   id =  deltaGID, name = deltaGA3ox
	reaction_re24_deltaGID=19.2990314378105;

	reaction_re24=reaction_re24_deltaGID*x(14);

% Reaction: id = re27, name = ga20ox transcription (activated by DELLA)	% Local Parameter:   id =  thetaGA20ox, name = thetaGA20ox
	reaction_re27_thetaGA20ox=0.6383;

	reaction_re27=global_par_muGA20ox*x(3)/(x(3)+reaction_re27_thetaGA20ox);

% Reaction: id = re28, name = gid transcription (activated by DELLA)	% Local Parameter:   id =  thetaGID, name = thetaGID
	reaction_re28_thetaGID=5.5995E-4;

	reaction_re28=global_par_muGID*x(3)/(x(3)+reaction_re28_thetaGID);

% Reaction: id = re29, name = della transcription (repressed by DELLA)	% Local Parameter:   id =  thetaDELLA, name = thetaDELLA
	reaction_re29_thetaDELLA=0.01;

	reaction_re29=global_par_muDELLA*reaction_re29_thetaDELLA/(x(3)+reaction_re29_thetaDELLA);

% Reaction: id = re30, name = ga3ox transcription (activated by DELLA)	% Local Parameter:   id =  thetaGA3ox, name = thetaGA3ox
	reaction_re30_thetaGA3ox=0.0082;

	reaction_re30=global_par_muGA3ox*x(3)/(x(3)+reaction_re30_thetaGA3ox);

% Reaction: id = re31, name = della decay
	reaction_re31=global_par_muDELLA*x(12);

% Reaction: id = re32, name = gid decay
	reaction_re32=global_par_muGID*x(14);

% Reaction: id = re33, name = ga20ox decay
	reaction_re33=global_par_muGA20ox*x(11);

% Reaction: id = re34, name = ga3ox decay
	reaction_re34=global_par_muGA3ox*x(13);

% Reaction: id = re35, name = GA20ox decay	% Local Parameter:   id =  gammaGA20ox, name = gammaGA20ox
	reaction_re35_gammaGA20ox=3.514;

	reaction_re35=reaction_re35_gammaGA20ox*x(9);

% Reaction: id = re37, name = GID decay	% Local Parameter:   id =  gammaGID, name = gammaGID
	reaction_re37_gammaGID=3.514;

	reaction_re37=reaction_re37_gammaGID*x(2);

% Reaction: id = re38, name = GA3ox decay	% Local Parameter:   id =  gammaGA3ox, name = gammaGA3ox
	reaction_re38_gammaGA3ox=3.514;

	reaction_re38=reaction_re38_gammaGA3ox*x(10);

% Reaction: id = re39, name = GA4.GID-DELLA2 association	% Local Parameter:   id =  ua2, name = ua2
	reaction_re39_ua2=316.2278;

	reaction_re39=reaction_re39_ua2*x(20)*x(3);

% Reaction: id = re40, name = GA4.GID.DELLA2 dissociation	% Local Parameter:   id =  ud2, name = ud2
	reaction_re40_ud2=2.8184;

	reaction_re40=reaction_re40_ud2*x(30);

% Reaction: id = re41, name = GA4 supply	% Local Parameter:   id =  A1, name = A1
	reaction_re41_A1=0.0307;

	reaction_re41=global_par_Pmem*reaction_re41_A1*global_par_omegaGA4;

% Reaction: id = re42, name = degradation of GA12
	reaction_re42=global_par_muGA*x(5);

% Reaction: id = re43, name = degradation of GA15
	reaction_re43=global_par_muGA*x(6);

% Reaction: id = re44, name = degradation of GA24
	reaction_re44=global_par_muGA*x(7);

% Reaction: id = re45, name = degradation of GA9
	reaction_re45=global_par_muGA*x(8);

% Reaction: id = re46, name = degradation of GA4	% Local Parameter:   id =  B1, name = B1
	reaction_re46_B1=3.9795E-4;

	reaction_re46=(global_par_muGA+global_par_Pmem*reaction_re46_B1)*x(1);

%Event: id=AddGA4
	event_AddGA4=time > global_par_tGA4on;

	if(event_AddGA4) 
		global_par_omegaGA4=global_par_appliedGA4;
	end

%Event: id=RemoveGA4
	event_RemoveGA4=time > global_par_tGA4off;

	if(event_RemoveGA4) 
		global_par_omegaGA4=0;
	end

	xdot=zeros(37,1);
	
% Species:   id = s1, name = GA4, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_re1) + ( 1.0 * reaction_re2) + ( 1.0 * reaction_re18) + ( 1.0 * reaction_re41) + (-1.0 * reaction_re46);
	
% Species:   id = s2, name = GID, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_re1) + ( 1.0 * reaction_re2) + ( 1.0 * reaction_re24) + (-1.0 * reaction_re37);
	
% Species:   id = s16, name = DELLA, affected by kineticLaw
	xdot(3) = (-1.0 * reaction_re3) + ( 1.0 * reaction_re4) + ( 1.0 * reaction_re21) + (-1.0 * reaction_re39) + ( 1.0 * reaction_re40);
	
% Species:   id = s22, name = DELLA_U, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_re5);
	
% Species:   id = s23, name = GA12, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_re6) + (-1.0 * reaction_re7) + ( 1.0 * reaction_re8) + (-1.0 * reaction_re42);
	
% Species:   id = s24, name = GA15, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_re9) + (-1.0 * reaction_re10) + ( 1.0 * reaction_re11) + (-1.0 * reaction_re43);
	
% Species:   id = s25, name = GA24, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_re12) + (-1.0 * reaction_re13) + ( 1.0 * reaction_re14) + (-1.0 * reaction_re44);
	
% Species:   id = s26, name = GA9, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_re15) + (-1.0 * reaction_re16) + ( 1.0 * reaction_re17) + (-1.0 * reaction_re45);
	
% Species:   id = s27, name = GA20ox, affected by kineticLaw
	xdot(9) = (-1.0 * reaction_re7) + ( 1.0 * reaction_re8) + ( 1.0 * reaction_re9) + (-1.0 * reaction_re10) + ( 1.0 * reaction_re11) + ( 1.0 * reaction_re12) + (-1.0 * reaction_re13) + ( 1.0 * reaction_re14) + ( 1.0 * reaction_re15) + ( 1.0 * reaction_re22) + (-1.0 * reaction_re35);
	
% Species:   id = s28, name = GA3ox, affected by kineticLaw
	xdot(10) = (-1.0 * reaction_re16) + ( 1.0 * reaction_re17) + ( 1.0 * reaction_re18) + ( 1.0 * reaction_re23) + (-1.0 * reaction_re38);
	
% Species:   id = s39, name = ga20ox, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_re27) + (-1.0 * reaction_re33);
	
% Species:   id = s40, name = della, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_re29) + (-1.0 * reaction_re31);
	
% Species:   id = s41, name = ga3ox, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_re30) + (-1.0 * reaction_re34);
	
% Species:   id = s42, name = gid, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_re28) + (-1.0 * reaction_re32);
	
% Species:   id = s65, name = GA4-GID, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_re1) + (-1.0 * reaction_re2) + (-1.0 * reaction_re19) + ( 1.0 * reaction_re20);
	
% Species:   id = s29, name = GA9-GA3ox, affected by kineticLaw
	xdot(16) = ( 1.0 * reaction_re16) + (-1.0 * reaction_re17) + (-1.0 * reaction_re18);
	
% Species:   id = s30, name = GA24-GA20ox, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_re13) + (-1.0 * reaction_re14) + (-1.0 * reaction_re15);
	
% Species:   id = s31, name = GA15-GA20ox, affected by kineticLaw
	xdot(18) = ( 1.0 * reaction_re10) + (-1.0 * reaction_re11) + (-1.0 * reaction_re12);
	
% Species:   id = s32, name = GA12-GA20ox, affected by kineticLaw
	xdot(19) = ( 1.0 * reaction_re7) + (-1.0 * reaction_re8) + (-1.0 * reaction_re9);
	
% Species:   id = s62, name = GA4-GID-closed, affected by kineticLaw
	xdot(20) = (-1.0 * reaction_re3) + ( 1.0 * reaction_re4) + ( 1.0 * reaction_re5) + ( 1.0 * reaction_re19) + (-1.0 * reaction_re20) + (-1.0 * reaction_re39) + ( 1.0 * reaction_re40);
	
% Species:   id = s3, name = GA12_source
%WARNING speciesID: s3, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(21) = 0.0;
	
% Species:   id = s5, name = GA3ox_source
%WARNING speciesID: s5, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(22) = 0.0;
	
% Species:   id = s6, name = GA20ox_source
%WARNING speciesID: s6, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(23) = 0.0;
	
% Species:   id = s7, name = DELLA_source
%WARNING speciesID: s7, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(24) = 0.0;
	
% Species:   id = s33, name = GID_source
%WARNING speciesID: s33, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(25) = 0.0;
	
% Species:   id = s11, name = ga20ox_source
%WARNING speciesID: s11, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(26) = 0.0;
	
% Species:   id = s15, name = gid_source
%WARNING speciesID: s15, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(27) = 0.0;
	
% Species:   id = s34, name = della_source
%WARNING speciesID: s34, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(28) = 0.0;
	
% Species:   id = s35, name = ga3ox_source
%WARNING speciesID: s35, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(29) = 0.0;
	
% Species:   id = s36, name = GA4-GID-DELLA2, affected by kineticLaw
	xdot(30) = ( 1.0 * reaction_re39) + (-1.0 * reaction_re40);
	
% Species:   id = s45, name = GA4-GID-DELLA1, affected by kineticLaw
	xdot(31) = ( 1.0 * reaction_re3) + (-1.0 * reaction_re4) + (-1.0 * reaction_re5);
	
% Species:   id = s66, name = GA4_source
%WARNING speciesID: s66, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(32) = 0.0;
	
% Species:   id = s67, name = sa5_degraded
%WARNING speciesID: s67, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(33) = 0.0;
	
% Species:   id = s68, name = sa6_degraded
%WARNING speciesID: s68, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(34) = 0.0;
	
% Species:   id = s69, name = sa7_degraded
%WARNING speciesID: s69, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(35) = 0.0;
	
% Species:   id = s70, name = sa8_degraded
%WARNING speciesID: s70, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(36) = 0.0;
	
% Species:   id = s71, name = sa1_degraded
%WARNING speciesID: s71, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(37) = 0.0;
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


