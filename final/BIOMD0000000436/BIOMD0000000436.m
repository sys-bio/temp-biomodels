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
% Model name = Gupta2009 - Eicosanoid Metabolism
%
% is http://identifiers.org/biomodels.db/MODEL1204240001
% is http://identifiers.org/biomodels.db/BIOMD0000000436
% isDescribedBy http://identifiers.org/pubmed/19486676
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 25.0;
	x0(9) = 0.5;
	x0(10) = 0.0;
	x0(11) = 1.0;
	x0(12) = 0.0;


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

% Compartment: id = c1, name = c1, constant
	compartment_c1=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=355.637;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.0E-15;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.0E-15;
% Parameter:   id =  k4, name = k4
	global_par_k4=1.0E-15;
% Parameter:   id =  k5, name = k5
	global_par_k5=1.0E-15;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.33;
% Parameter:   id =  k7, name = k7
	global_par_k7=1.0E-15;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.007;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.187;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.024;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.111;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.098;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.204;
% Parameter:   id =  k14, name = k14
	global_par_k14=1.0E-15;
% Parameter:   id =  k15, name = k15
	global_par_k15=0.061;
% Parameter:   id =  k16, name = k16
	global_par_k16=1.0E-15;
% Parameter:   id =  k17, name = k17
	global_par_k17=3.116;
% Parameter:   id =  k18, name = k18
	global_par_k18=0.054;
% Parameter:   id =  k19, name = k19
	global_par_k19=0.029;
% Parameter:   id =  k20, name = k20
	global_par_k20=0.014;
% Parameter:   id =  k21, name = k21
	global_par_k21=0.034;
% Parameter:   id =  k22, name = k22
	global_par_k22=0.116;
% Parameter:   id =  DNA, name = DNA
	global_par_DNA=1.0;
% Parameter:   id =  DGperDNA, name = DGperDNA
% Warning parameter DGperDNA is not constant, it should be controlled by a Rule and/or events
	global_par_DGperDNA=1.0;
% Parameter:   id =  onepmol, name = onepmol
	global_par_onepmol=1.0;
% Parameter:   id =  t0, name = t0
	global_par_t0=0.0;
% Parameter:   id =  t1, name = t1
	global_par_t1=0.5;
% Parameter:   id =  t2, name = t2
	global_par_t2=1.0;
% Parameter:   id =  t3, name = t3
	global_par_t3=2.0;
% Parameter:   id =  t4, name = t4
	global_par_t4=4.0;
% Parameter:   id =  t5, name = t5
	global_par_t5=8.0;
% Parameter:   id =  t6, name = t6
	global_par_t6=12.0;
% Parameter:   id =  timevalue, name = timevalue
% Parameter:   id =  zero, name = zero
	global_par_zero=0.0;
% Parameter:   id =  LPSactivity, name = LPSactivity
% Parameter:   id =  LPSslope, name = LPSslope
	global_par_LPSslope=0.0;
% Parameter:   id =  LPSint, name = LPSint
	global_par_LPSint=0.0;
% Parameter:   id =  LPSslopezero, name = LPSslopezero
	global_par_LPSslopezero=2.0;
% Parameter:   id =  LPSslope1, name = LPSslope1
	global_par_LPSslope1=-0.6667;
% Parameter:   id =  LPSslope3, name = LPSslope3
	global_par_LPSslope3=0.0;
% Parameter:   id =  LPSintzero, name = LPSintzero
	global_par_LPSintzero=0.0;
% Parameter:   id =  LPSint1, name = LPSint1
	global_par_LPSint1=1.3335;
% Parameter:   id =  LPSint3, name = LPSint3
	global_par_LPSint3=0.0;
% Parameter:   id =  DGactivity, name = DGactivity
% Parameter:   id =  DGint, name = DGint
	global_par_DGint=1.0;
% Parameter:   id =  DGslope, name = DGslope
	global_par_DGslope=1.0;
% Parameter:   id =  DGslopezero, name = DGslopezero
	global_par_DGslopezero=0.3014;
% Parameter:   id =  DGslope1, name = DGslope1
	global_par_DGslope1=-0.1572;
% Parameter:   id =  DGslope2, name = DGslope2
	global_par_DGslope2=0.0439;
% Parameter:   id =  DGslope3, name = DGslope3
	global_par_DGslope3=-0.0913;
% Parameter:   id =  DGslope4, name = DGslope4
	global_par_DGslope4=0.0976;
% Parameter:   id =  DGslope5, name = DGslope5
	global_par_DGslope5=0.0711;
% Parameter:   id =  DGslope6, name = DGslope6
	global_par_DGslope6=0.0846;
% Parameter:   id =  DGintzero, name = DGintzero
	global_par_DGintzero=1.0;
% Parameter:   id =  DGint1, name = DGint1
	global_par_DGint1=1.2292;
% Parameter:   id =  DGint2, name = DGint2
	global_par_DGint2=1.0282;
% Parameter:   id =  DGint3, name = DGint3
	global_par_DGint3=1.2987;
% Parameter:   id =  DGint4, name = DGint4
	global_par_DGint4=0.543;
% Parameter:   id =  DGint5, name = DGint5
	global_par_DGint5=0.7549;
% Parameter:   id =  DGint6, name = DGint6
	global_par_DGint6=0.5927;
% Parameter:   id =  GPChoratio, name = GPChoratio
% Parameter:   id =  GPChoint, name = GPChoint
	global_par_GPChoint=315.3137;
% Parameter:   id =  GPChoslope, name = GPChoslope
	global_par_GPChoslope=-158.43;
% Parameter:   id =  GPChoslopezero, name = GPChoslopezero
	global_par_GPChoslopezero=-158.43;
% Parameter:   id =  GPChoslope1, name = GPChoslope1
	global_par_GPChoslope1=112.28;
% Parameter:   id =  GPChoslope2, name = GPChoslope2
	global_par_GPChoslope2=24.31;
% Parameter:   id =  GPChoslope3, name = GPChoslope3
	global_par_GPChoslope3=-39.93;
% Parameter:   id =  GPChoslope4, name = GPChoslope4
	global_par_GPChoslope4=5.48;
% Parameter:   id =  GPChoslope5, name = GPChoslope5
	global_par_GPChoslope5=27.08;
% Parameter:   id =  GPChoslope6, name = GPChoslope6
	global_par_GPChoslope6=-4.874;
% Parameter:   id =  GPChointzero, name = GPChointzero
	global_par_GPChointzero=315.3137;
% Parameter:   id =  GPChoint1, name = GPChoint1
	global_par_GPChoint1=179.96;
% Parameter:   id =  GPChoint2, name = GPChoint2
	global_par_GPChoint2=267.93;
% Parameter:   id =  GPChoint3, name = GPChoint3
	global_par_GPChoint3=396.41;
% Parameter:   id =  GPChoint4, name = GPChoint4
	global_par_GPChoint4=214.77;
% Parameter:   id =  GPChoint5, name = GPChoint5
	global_par_GPChoint5=41.93;
% Parameter:   id =  GPChoint6, name = GPChoint6
	global_par_GPChoint6=425.43;
% assignmentRule: variable = timevalue
	global_par_timevalue=t+global_par_t0;
% assignmentRule: variable = LPSactivity
	global_par_LPSactivity=activitycalc(global_par_timevalue, global_par_LPSslope, global_par_LPSint);
% assignmentRule: variable = DGactivity
	global_par_DGactivity=activitycalc(global_par_timevalue, global_par_DGslope, global_par_DGint);
% assignmentRule: variable = GPChoratio
	global_par_GPChoratio=activitycalc(global_par_timevalue, global_par_GPChoslope, global_par_GPChoint)/global_par_GPChointzero;

% Reaction: id = r2
	reaction_r2=global_par_k2*const_species_FA;

% Reaction: id = r3
	reaction_r3=global_par_k3*global_par_DGactivity*global_par_DGperDNA*global_par_DNA;

% Reaction: id = r7
	reaction_r7=global_par_k7*global_par_GPChoratio*x(11);

% Reaction: id = r5
	reaction_r5=global_par_k5*global_par_DGactivity*global_par_GPChoratio*x(11)/global_par_DNA;

% Reaction: id = r11
	reaction_r11=global_par_k11*x(8);

% Reaction: id = r10
	reaction_r10=global_par_k10*global_par_DGactivity*x(8)/global_par_DNA;

% Reaction: id = r8
	reaction_r8=global_par_k8*x(8);

% Reaction: id = r4
	reaction_r4=global_par_k4*x(8);

% Reaction: id = r9
	reaction_r9=global_par_k9*x(1);

% Reaction: id = r13
	reaction_r13=global_par_k13*x(2);

% Reaction: id = r14
	reaction_r14=global_par_k14*x(3);

% Reaction: id = r15
	reaction_r15=global_par_k15*x(2);

% Reaction: id = r16
	reaction_r16=global_par_k16*x(4);

% Reaction: id = r17
	reaction_r17=global_par_k17*x(2);

% Reaction: id = r18
	reaction_r18=global_par_k18*x(5);

% Reaction: id = r19
	reaction_r19=global_par_k19*x(5);

% Reaction: id = r20
	reaction_r20=global_par_k20*x(12);

% Reaction: id = r21
	reaction_r21=global_par_k21*x(6);

% Reaction: id = r22
	reaction_r22=global_par_k22*x(7);

% Reaction: id = r1
	reaction_r1=global_par_k1*global_par_onepmol*global_par_LPSactivity;

% Reaction: id = r6
	reaction_r6=global_par_k6*x(11)*global_par_GPChoratio*global_par_LPSactivity;

% Reaction: id = r12
	reaction_r12=global_par_k12*x(8)*global_par_LPSactivity;

% Species:   id = FA, name = FA, constant	const_species_FA=1.0;

%Event: id=
	event_=global_par_timevalue > global_par_t0;

	if(event_) 
		global_par_LPSint=global_par_LPSintzero;
		global_par_LPSslope=global_par_LPSslopezero;
		global_par_DGint=global_par_DGintzero;
		global_par_DGslope=global_par_DGslopezero;
		global_par_GPChoint=global_par_GPChointzero;
		global_par_GPChoslope=global_par_GPChoslopezero;
	end

%Event: id=
	event_=global_par_timevalue >= global_par_t1;

	if(event_) 
		global_par_LPSint=global_par_LPSint1;
		global_par_LPSslope=global_par_LPSslope1;
		global_par_DGint=global_par_DGint1;
		global_par_DGslope=global_par_DGslope1;
		global_par_GPChoint=global_par_GPChoint1;
		global_par_GPChoslope=global_par_GPChoslope1;
	end

%Event: id=
	event_=global_par_timevalue >= global_par_t2;

	if(event_) 
		global_par_DGint=global_par_DGint2;
		global_par_DGslope=global_par_DGslope2;
		global_par_GPChoint=global_par_GPChoint2;
		global_par_GPChoslope=global_par_GPChoslope2;
	end

%Event: id=
	event_=global_par_timevalue >= global_par_t3;

	if(event_) 
		global_par_LPSint=global_par_LPSint3;
		global_par_LPSslope=global_par_LPSslope3;
		global_par_DGint=global_par_DGint3;
		global_par_DGslope=global_par_DGslope3;
		global_par_GPChoint=global_par_GPChoint3;
		global_par_GPChoslope=global_par_GPChoslope3;
	end

%Event: id=
	event_=global_par_timevalue >= global_par_t4;

	if(event_) 
		global_par_DGint=global_par_DGint4;
		global_par_DGslope=global_par_DGslope4;
		global_par_GPChoint=global_par_GPChoint4;
		global_par_GPChoslope=global_par_GPChoslope4;
	end

%Event: id=
	event_=global_par_timevalue >= global_par_t5;

	if(event_) 
		global_par_DGint=global_par_DGint5;
		global_par_DGslope=global_par_DGslope5;
		global_par_GPChoint=global_par_GPChoint5;
		global_par_GPChoslope=global_par_GPChoslope5;
	end

%Event: id=
	event_=global_par_timevalue >= global_par_t6;

	if(event_) 
		global_par_DGint=global_par_DGint6;
		global_par_DGslope=global_par_DGslope6;
		global_par_GPChoint=global_par_GPChoint6;
		global_par_GPChoslope=global_par_GPChoslope6;
	end

	xdot=zeros(12,1);
	
% Species:   id = HETE, name = HETE, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_r8) + (-1.0 * reaction_r9);
	
% Species:   id = PGH2, name = PGH2, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_r11) + ( 1.0 * reaction_r10) + (-1.0 * reaction_r13) + (-1.0 * reaction_r15) + (-1.0 * reaction_r17) + ( 1.0 * reaction_r12);
	
% Species:   id = PGE2, name = PGE2, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_r13) + (-1.0 * reaction_r14);
	
% Species:   id = PGF2a, name = PGF2a, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_r15) + (-1.0 * reaction_r16);
	
% Species:   id = PGD2, name = PGD2, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_r17) + (-1.0 * reaction_r18) + (-1.0 * reaction_r19);
	
% Species:   id = PGJ2, name = PGJ2, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_r18) + (-1.0 * reaction_r21);
	
% Species:   id = dPGJ2, name = dPGJ2, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_r21) + (-1.0 * reaction_r22);
	
% Species:   id = AA, name = Arachidonic acid, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_r2) + ( 1.0 * reaction_r3) + ( 1.0 * reaction_r7) + ( 1.0 * reaction_r5) + (-1.0 * reaction_r11) + (-1.0 * reaction_r10) + (-1.0 * reaction_r8) + (-1.0 * reaction_r4) + ( 1.0 * reaction_r1) + ( 1.0 * reaction_r6) + (-1.0 * reaction_r12);
	
% Species:   id = LPS, name = LPS
% Warning species is not changed by either rules or reactions
	xdot(9) = ;
	
% Species:   id = DG, name = DG, affected by kineticLaw
	xdot(10) = (1/(compartment_c1))*((-1.0 * reaction_r3));
	
% Species:   id = GPCho, name = GPCho, affected by kineticLaw
	xdot(11) = (-1.0 * reaction_r7) + (-1.0 * reaction_r5) + (-1.0 * reaction_r6);
	
% Species:   id = dPGD2, name = dPGD2, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_r19) + (-1.0 * reaction_r20);
end

function z=activitycalc(x,slopea,yintercepta), z=(yintercepta+x*slopea);end

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


