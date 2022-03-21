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
% Model name = Nazaret2009_TCA_RC_ATP
%
% is http://identifiers.org/biomodels.db/MODEL2594602728
% is http://identifiers.org/biomodels.db/BIOMD0000000232
% isDescribedBy http://identifiers.org/pubmed/19007794
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(10) = NaN;
	x0(1) = 0;
	x0(2) = 3.536;
	x0(3) = 0.856;
	x0(4) = 0;
	x0(5) = 0.063;
	x0(6) = 0.225;
	x0(7) = 0.44;
	x0(8) = 0.005;
	x0(9) = 0.154;


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

% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Compartment: id = mitochondrion, name = mitochondrial matrix, constant
	compartment_mitochondrion=1.0;
% Parameter:   id =  ATPcrit, name = ATPcrit
% Parameter:   id =  At, name = At
	global_par_At=4.16;
% Parameter:   id =  C, name = C
	global_par_C=6.75E-6;
% Parameter:   id =  DeltaGtransport, name = DeltaGtransport
% Parameter:   id =  DeltaPsi, name = DeltaPsi
% Parameter:   id =  DeltaPsim, name = DeltaPsim
	global_par_DeltaPsim=150.0;
% Parameter:   id =  F, name = Faraday constant
	global_par_F=96485.0;
% Parameter:   id =  JANT, name = JANT
% Parameter:   id =  JATP, name = JATP
% Parameter:   id =  Jleak, name = Jleak
% Parameter:   id =  Jresp, name = Jresp
% Parameter:   id =  K, name = K
	global_par_K=2.0;
% Parameter:   id =  Kapp, name = Kapp
	global_par_Kapp=4.4E-9;
% Parameter:   id =  Nt, name = Nt
	global_par_Nt=1.07;
% Parameter:   id =  R, name = gas constant
	global_par_R=8314.0;
% Parameter:   id =  T, name = absolute temperature
	global_par_T=298.0;
% Parameter:   id =  a, name = a
	global_par_a=0.1;
% Parameter:   id =  b, name = b
	global_par_b=0.004;
% Parameter:   id =  kANT, name = kANT
	global_par_kANT=0.05387;
% Parameter:   id =  kATP, name = kATP
	global_par_kATP=131.9;
% Parameter:   id =  kleak, name = kleak
	global_par_kleak=4.26E-4;
% Parameter:   id =  kresp, name = kresp
	global_par_kresp=2.5;
% assignmentRule: variable = JANT
	global_par_JANT=global_par_kANT*x(2);
% assignmentRule: variable = Jleak
	global_par_Jleak=global_par_kleak*global_par_DeltaPsi;
% rateRule: variable = DeltaPsi
global_par_DeltaPsi = x(10);
% assignmentRule: variable = Jresp
	global_par_Jresp=global_par_kresp*(global_par_Nt-x(3))/(global_par_K+global_par_Nt-x(3))/(1+exp(global_par_a*(global_par_DeltaPsi-global_par_DeltaPsim)));
% assignmentRule: variable = JATP
	global_par_JATP=global_par_kATP*(2/(1+exp(global_par_b*(x(2)-global_par_ATPcrit)))-1);
% assignmentRule: variable = ATPcrit
	global_par_ATPcrit=global_par_At/(1+exp(-3*global_par_DeltaGtransport/(global_par_R*global_par_T))/(global_par_Kapp*const_species_iP));
% assignmentRule: variable = DeltaGtransport
	global_par_DeltaGtransport=1.2*global_par_F*global_par_DeltaPsi;
% assignmentRule: variable = ADP
	x(1)=global_par_At-x(2);
% assignmentRule: variable = NADH
	x(4)=global_par_Nt-x(3);

% Reaction: id = v1, name = v1	% Local Parameter:   id =  k1, name = k1
	reaction_v1_k1=0.038;

	reaction_v1=compartment_mitochondrion*reaction_v1_k1;

% Reaction: id = v2, name = v2	% Local Parameter:   id =  k2, name = k2
	reaction_v2_k2=0.152;

	reaction_v2=compartment_mitochondrion*reaction_v2_k2*x(9)*x(3);

% Reaction: id = v3, name = v3	% Local Parameter:   id =  k3, name = k3
	reaction_v3_k3=57.142;

	reaction_v3=compartment_mitochondrion*reaction_v3_k3*x(8)*x(5);

% Reaction: id = v4, name = v4	% Local Parameter:   id =  k4, name = k4
	reaction_v4_k4=0.053;

	reaction_v4=compartment_mitochondrion*reaction_v4_k4*x(7)*x(3);

% Reaction: id = v5, name = v5	% Local Parameter:   id =  k5, name = k5
	reaction_v5_k5=0.082361;

	reaction_v5=compartment_mitochondrion*reaction_v5_k5*x(6)*x(3)*(global_par_At-x(2));

% Reaction: id = v6, name = v6	% Local Parameter:   id =  k6, name = k6
	reaction_v6_k6=0.0032;
	% Local Parameter:   id =  Keq, name = Keq
	reaction_v6_Keq=0.3975;

	reaction_v6=compartment_mitochondrion*reaction_v6_k6*(x(8)-x(6)/reaction_v6_Keq);

% Reaction: id = v7, name = v7	% Local Parameter:   id =  k7, name = k7
	reaction_v7_k7=0.04;

	reaction_v7=compartment_mitochondrion*reaction_v7_k7*x(9)*x(2);

% Reaction: id = v8, name = v8	% Local Parameter:   id =  k8, name = k8
	reaction_v8_k8=3.6;

	reaction_v8=compartment_mitochondrion*reaction_v8_k8*x(8);

% Reaction: id = vresp, name = vresp
	reaction_vresp=compartment_mitochondrion*global_par_Jresp;

% Reaction: id = vATP, name = vATP
	reaction_vATP=compartment_mitochondrion*global_par_JATP;

% Reaction: id = vANT, name = vANT
	reaction_vANT=compartment_mitochondrion*global_par_JANT;

% Reaction: id = vleak, name = vleak
	reaction_vleak=compartment_mitochondrion*global_par_Jleak;

% Species:   id = H, name = H+, constant	const_species_H=1.0;

% Species:   id = He, name = H+, constant	const_species_He=1.0;

% Species:   id = O2, name = oxygen, constant	const_species_O2=1.0;

% Species:   id = iP, name = phosphate, constant	const_species_iP=2.44;

% Species:   id = H2O, name = water, constant	const_species_H2O=1.0;

	xdot=zeros(10,1);
	% rateRule: variable = DeltaPsi
	xdot(10) = (10*global_par_Jresp-3*global_par_JATP-global_par_Jleak-global_par_JANT)/global_par_C;
	
% Species:   id = ADP, name = ADP, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(2) = (1/(compartment_mitochondrion))*(( 1.0 * reaction_v5) + (-1.0 * reaction_v7) + ( 1.0 * reaction_vATP) + (-1.0 * reaction_vANT));
	
% Species:   id = NAD, name = NAD(+), affected by kineticLaw
	xdot(3) = (1/(compartment_mitochondrion))*((-1.0 * reaction_v2) + (-1.0 * reaction_v4) + (-2.0 * reaction_v5) + ( 1.0 * reaction_vresp));
	
% Species:   id = NADH, name = NADH, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = AcCoA, name = acetyl-CoA, affected by kineticLaw
	xdot(5) = (1/(compartment_mitochondrion))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v3));
	
% Species:   id = KG, name = alpha-ketoglutarate, affected by kineticLaw
	xdot(6) = (1/(compartment_mitochondrion))*(( 1.0 * reaction_v4) + (-1.0 * reaction_v5) + ( 1.0 * reaction_v6));
	
% Species:   id = Cit, name = citrate, affected by kineticLaw
	xdot(7) = (1/(compartment_mitochondrion))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v4));
	
% Species:   id = OAA, name = oxaloacetate, affected by kineticLaw
	xdot(8) = (1/(compartment_mitochondrion))*((-1.0 * reaction_v3) + ( 1.0 * reaction_v5) + (-1.0 * reaction_v6) + ( 1.0 * reaction_v7) + (-1.0 * reaction_v8));
	
% Species:   id = Pyr, name = pyruvate, affected by kineticLaw
	xdot(9) = (1/(compartment_mitochondrion))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2) + (-1.0 * reaction_v7));
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


