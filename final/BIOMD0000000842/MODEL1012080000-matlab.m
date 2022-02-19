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
% Model name = Heitzler2012_GPCRsignalling
%
% is http://identifiers.org/biomodels.db/MODEL1012080000
% isDescribedBy http://identifiers.org/pubmed/22735336
%


function main()
%Initial conditions vector
	x0=zeros(18,1);
	x0(1) = 0.08;
	x0(2) = 56.99;
	x0(3) = 4.243;
	x0(4) = 0.997;
	x0(5) = 0.009;
	x0(6) = 8.842;
	x0(7) = 0.002;
	x0(8) = 0.015;
	x0(9) = 0.015;
	x0(10) = 0.858;
	x0(11) = 0.483;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;


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

% Compartment: id = compartmentOne, name = compartmentOne, constant
	compartment_compartmentOne=1.0;
% Parameter:   id =  k0, name = k0
% Warning parameter k0 is not constant, it should be controlled by a Rule and/or events
	global_par_k0=3.11E-4;
% Parameter:   id =  k1, name = k1
% Warning parameter k1 is not constant, it should be controlled by a Rule and/or events
	global_par_k1=0.0178;
% Parameter:   id =  k2, name = k2
% Warning parameter k2 is not constant, it should be controlled by a Rule and/or events
	global_par_k2=7.6;
% Parameter:   id =  k3, name = k3
% Warning parameter k3 is not constant, it should be controlled by a Rule and/or events
	global_par_k3=4.63;
% Parameter:   id =  k4, name = k4
% Warning parameter k4 is not constant, it should be controlled by a Rule and/or events
	global_par_k4=0.0787;
% Parameter:   id =  k5, name = k5
% Warning parameter k5 is not constant, it should be controlled by a Rule and/or events
	global_par_k5=2.65;
% Parameter:   id =  k6, name = k6
% Warning parameter k6 is not constant, it should be controlled by a Rule and/or events
	global_par_k6=5.0985;
% Parameter:   id =  k7, name = k7
% Warning parameter k7 is not constant, it should be controlled by a Rule and/or events
	global_par_k7=0.461;
% Parameter:   id =  k8, name = k8
% Warning parameter k8 is not constant, it should be controlled by a Rule and/or events
	global_par_k8=1.77;
% Parameter:   id =  k9, name = k9
% Warning parameter k9 is not constant, it should be controlled by a Rule and/or events
	global_par_k9=3.04;
% Parameter:   id =  k10, name = k10
% Warning parameter k10 is not constant, it should be controlled by a Rule and/or events
	global_par_k10=2.27;
% Parameter:   id =  k11, name = k11
% Warning parameter k11 is not constant, it should be controlled by a Rule and/or events
	global_par_k11=2.61;
% Parameter:   id =  k12, name = k12
% Warning parameter k12 is not constant, it should be controlled by a Rule and/or events
	global_par_k12=2.59;
% Parameter:   id =  k13, name = k13
% Warning parameter k13 is not constant, it should be controlled by a Rule and/or events
	global_par_k13=0.00619;
% Parameter:   id =  k14, name = k14
% Warning parameter k14 is not constant, it should be controlled by a Rule and/or events
	global_par_k14=0.0311;
% Parameter:   id =  k15, name = k15
% Warning parameter k15 is not constant, it should be controlled by a Rule and/or events
	global_par_k15=6.54E-5;
% Parameter:   id =  k16, name = k16
% Warning parameter k16 is not constant, it should be controlled by a Rule and/or events
	global_par_k16=0.0723;
% Parameter:   id =  k17, name = k17
% Warning parameter k17 is not constant, it should be controlled by a Rule and/or events
	global_par_k17=0.0665;
% Parameter:   id =  k18, name = k18
% Warning parameter k18 is not constant, it should be controlled by a Rule and/or events
	global_par_k18=0.59;
% Parameter:   id =  k19, name = k19
% Warning parameter k19 is not constant, it should be controlled by a Rule and/or events
	global_par_k19=0.205;
% Parameter:   id =  k20, name = k20
% Warning parameter k20 is not constant, it should be controlled by a Rule and/or events
	global_par_k20=1.04;
% Parameter:   id =  k21, name = k21
% Warning parameter k21 is not constant, it should be controlled by a Rule and/or events
	global_par_k21=4.2E-4;
% Parameter:   id =  k22, name = k22
% Warning parameter k22 is not constant, it should be controlled by a Rule and/or events
	global_par_k22=14.44;
% Parameter:   id =  k23, name = k23
% Warning parameter k23 is not constant, it should be controlled by a Rule and/or events
	global_par_k23=1.05;
% Parameter:   id =  k24, name = k24
% Warning parameter k24 is not constant, it should be controlled by a Rule and/or events
	global_par_k24=0.347;
% Parameter:   id =  k25, name = k25
% Warning parameter k25 is not constant, it should be controlled by a Rule and/or events
	global_par_k25=0.762;
% Parameter:   id =  GRK23, name = GRK23
% Warning parameter GRK23 is not constant, it should be controlled by a Rule and/or events
	global_par_GRK23=0.899447579;
% Parameter:   id =  GRK56, name = GRK56
% Warning parameter GRK56 is not constant, it should be controlled by a Rule and/or events
	global_par_GRK56=1.5180818;
% Parameter:   id =  GRK23_si, name = GRK23_si
% Warning parameter GRK23_si is not constant, it should be controlled by a Rule and/or events
	global_par_GRK23_si=0.478865092;
% Parameter:   id =  GRK56_si, name = GRK56_si
% Warning parameter GRK56_si is not constant, it should be controlled by a Rule and/or events
	global_par_GRK56_si=0.00103512491;
% Parameter:   id =  P0_Ro, name = P0_Ro
% Warning parameter P0_Ro is not constant, it should be controlled by a Rule and/or events
	global_par_P0_Ro=0.00173556731;
% Parameter:   id =  P0_a_Ro, name = P0_a_Ro
% Warning parameter P0_a_Ro is not constant, it should be controlled by a Rule and/or events
	global_par_P0_a_Ro=2.09075206E-5;
% Parameter:   id =  barr2_0_si, name = barr2_0_si
% Warning parameter barr2_0_si is not constant, it should be controlled by a Rule and/or events
	global_par_barr2_0_si=1.12306963E-4;
% Parameter:   id =  nDAG, name = nDAG
% Warning parameter nDAG is not constant, it should be controlled by a Rule and/or events
	global_par_nDAG=4.11974423;
% Parameter:   id =  nPKC, name = nPKC
% Warning parameter nPKC is not constant, it should be controlled by a Rule and/or events
	global_par_nPKC=7.20901786;

% Reaction: id = R_1
	reaction_R_1=global_par_k0*x(2);

% Reaction: id = R_2
	reaction_R_2=global_par_k1*x(2)*x(13);

% Reaction: id = R_3
	reaction_R_3=global_par_k2*x(2)*x(1);

% Reaction: id = R_4
	reaction_R_4=global_par_k3*x(12)*x(4);

% Reaction: id = R_5
	reaction_R_5=global_par_k4*x(5)*x(6);

% Reaction: id = R_6
	reaction_R_6=global_par_k5*x(3)*x(7);

% Reaction: id = R_7
	reaction_R_7=global_par_k6*x(12);

% Reaction: id = R_8
	reaction_R_8=global_par_k7*x(5);

% Reaction: id = R_9
	reaction_R_9=global_par_k8*x(7);

% Reaction: id = R_10
	reaction_R_10=global_par_k9*x(8);

% Reaction: id = R_11
	reaction_R_11=global_par_k10*global_par_GRK23*x(1);

% Reaction: id = R_12
	reaction_R_12=global_par_k11*x(10)*x(13);

% Reaction: id = R_13
	reaction_R_13=global_par_k13*x(14);

% Reaction: id = R_14
	reaction_R_14=global_par_k12*x(11)*x(13);

% Reaction: id = R_15
	reaction_R_15=global_par_k14*x(15);

% Reaction: id = R_16
	reaction_R_16=global_par_k15*x(14);

% Reaction: id = R_17
	reaction_R_17=global_par_k16*x(15);

% Reaction: id = R_18
	reaction_R_18=global_par_k18*global_par_GRK56*x(1);

% Reaction: id = R_19
	reaction_R_19=global_par_k17*x(16);

% Reaction: id = R_20
	reaction_R_20=global_par_k19*x(11)*x(1);

% Reaction: id = R_21
	reaction_R_21=global_par_k23*x(17);

% Reaction: id = R_22
	reaction_R_22=global_par_k20*x(11)*x(16);

% Reaction: id = R_23
	reaction_R_23=global_par_k24*x(18);

% Reaction: id = R_24
	reaction_R_24=global_par_k21*x(3)*x(17);

% Reaction: id = R_25
	reaction_R_25=global_par_k22*x(3)*x(18);

% Reaction: id = R_26
	reaction_R_26=global_par_k25*x(9);

	xdot=zeros(18,1);
	
% Species:   id = HR, name = H-R, affected by kineticLaw
	xdot(1) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_3) + ( 1.0 * reaction_R_3) + (-1.0 * reaction_R_11) + ( 1.0 * reaction_R_16) + ( 1.0 * reaction_R_17) + (-1.0 * reaction_R_18) + ( 1.0 * reaction_R_19) + (-1.0 * reaction_R_20) + ( 1.0 * reaction_R_21));
	
% Species:   id = G, name = G, affected by kineticLaw
	xdot(2) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_1) + (-1.0 * reaction_R_2) + (-1.0 * reaction_R_3) + ( 1.0 * reaction_R_7));
	
% Species:   id = ERK, name = ERK, affected by kineticLaw
	xdot(3) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_6) + ( 1.0 * reaction_R_10) + (-1.0 * reaction_R_24) + (-1.0 * reaction_R_25) + ( 1.0 * reaction_R_26));
	
% Species:   id = PIP2, name = PIP2, affected by kineticLaw
	xdot(4) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_4) + ( 1.0 * reaction_R_8));
	
% Species:   id = DAG, name = DAG, affected by kineticLaw
	xdot(5) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_4) + (-1.0 * reaction_R_5) + ( 1.0 * reaction_R_5) + (-1.0 * reaction_R_8));
	
% Species:   id = PKC, name = PKC, affected by kineticLaw
	xdot(6) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_5) + ( 1.0 * reaction_R_9));
	
% Species:   id = PKC_a, name = PKC_a, affected by kineticLaw
	xdot(7) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_5) + (-1.0 * reaction_R_6) + ( 1.0 * reaction_R_6) + (-1.0 * reaction_R_9));
	
% Species:   id = GpERK, name = GpERK, affected by kineticLaw
	xdot(8) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_6) + (-1.0 * reaction_R_10));
	
% Species:   id = bpERK, name = bpERK, affected by kineticLaw
	xdot(9) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_24) + ( 1.0 * reaction_R_25) + (-1.0 * reaction_R_26));
	
% Species:   id = barr1, name = barr1, affected by kineticLaw
	xdot(10) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_12) + ( 1.0 * reaction_R_13) + ( 1.0 * reaction_R_16));
	
% Species:   id = barr2, name = barr2, affected by kineticLaw
	xdot(11) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_14) + ( 1.0 * reaction_R_15) + ( 1.0 * reaction_R_17) + (-1.0 * reaction_R_20) + ( 1.0 * reaction_R_21) + (-1.0 * reaction_R_22) + ( 1.0 * reaction_R_23));
	
% Species:   id = G_a, name = G_a, affected by kineticLaw
	xdot(12) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_1) + ( 1.0 * reaction_R_2) + ( 1.0 * reaction_R_3) + (-1.0 * reaction_R_4) + ( 1.0 * reaction_R_4) + (-1.0 * reaction_R_7));
	
% Species:   id = HRP1, name = H-R~{P1}, affected by kineticLaw
	xdot(13) = (1/(compartment_compartmentOne))*((-1.0 * reaction_R_2) + ( 1.0 * reaction_R_2) + ( 1.0 * reaction_R_11) + (-1.0 * reaction_R_12) + ( 1.0 * reaction_R_13) + (-1.0 * reaction_R_14) + ( 1.0 * reaction_R_15));
	
% Species:   id = Hbarr1RP1, name = H-barr1-R~{P1}, affected by kineticLaw
	xdot(14) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_12) + (-1.0 * reaction_R_13) + (-1.0 * reaction_R_16));
	
% Species:   id = Hbarr2RP1, name = H-barr2-R~{P1}, affected by kineticLaw
	xdot(15) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_14) + (-1.0 * reaction_R_15) + (-1.0 * reaction_R_17));
	
% Species:   id = HRP2, name = H-R~{P2}, affected by kineticLaw
	xdot(16) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_18) + (-1.0 * reaction_R_19) + (-1.0 * reaction_R_22) + ( 1.0 * reaction_R_23));
	
% Species:   id = HRbarr2, name = H-R-barr2, affected by kineticLaw
	xdot(17) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_20) + (-1.0 * reaction_R_21) + (-1.0 * reaction_R_24) + ( 1.0 * reaction_R_24));
	
% Species:   id = Hbarr2RP2, name = H-barr2-R~{P2}, affected by kineticLaw
	xdot(18) = (1/(compartment_compartmentOne))*(( 1.0 * reaction_R_22) + (-1.0 * reaction_R_23) + (-1.0 * reaction_R_25) + ( 1.0 * reaction_R_25));
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


