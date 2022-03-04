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
% Model name = Smith2009 - RGS mediated GTP hydrolysis
%
% is http://identifiers.org/biomodels.db/MODEL1212040001
% is http://identifiers.org/biomodels.db/BIOMD0000000439
% isDescribedBy http://identifiers.org/pubmed/19285552
% isDerivedFrom http://identifiers.org/pubmed/12446706
%


function main()
%Initial conditions vector
	x0=zeros(20,1);
	x0(1) = 205.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 205.0;
	x0(9) = 60.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 205.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 205.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;


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

% Compartment: id = compartment, name = cell, constant
	compartment_compartment=1.0;
% Parameter:   id =  ka, name = ka
	global_par_ka=1.5;
% Parameter:   id =  Ligand_conc, name = Ligand_conc
	global_par_Ligand_conc=0.1;

% Reaction: id = R1, name = Receptor-Ligand association	% Local Parameter:   id =  k1, name = k1
	reaction_R1_k1=0.0025;

	reaction_R1=compartment_compartment*x(1)*x(2)*reaction_R1_k1;

% Reaction: id = R2, name = Receptor-Gprotein association	% Local Parameter:   id =  k2, name = k2
	reaction_R2_k2=0.005;

	reaction_R2=compartment_compartment*x(1)*x(4)*reaction_R2_k2;

% Reaction: id = R3, name = RL-Gprotein association	% Local Parameter:   id =  k3, name = k3
	reaction_R3_k3=0.02;

	reaction_R3=compartment_compartment*x(3)*x(4)*reaction_R3_k3;

% Reaction: id = R4, name = RGabg-Ligand association	% Local Parameter:   id =  k4, name = k4
	reaction_R4_k4=0.005;

	reaction_R4=compartment_compartment*x(5)*x(2)*reaction_R4_k4;

% Reaction: id = R5, name = Galpha activation by receptor	% Local Parameter:   id =  k5, name = k5
	reaction_R5_k5=50.0;

	reaction_R5=compartment_compartment*x(6)*reaction_R5_k5;

% Reaction: id = R6, name = Galpha activation spontaneous	% Local Parameter:   id =  k6, name = k6
	reaction_R6_k6=0.2;

	reaction_R6=compartment_compartment*x(4)*reaction_R6_k6;

% Reaction: id = R7, name = Galpha-RGS association	% Local Parameter:   id =  k7, name = k7
	reaction_R7_k7=500.0;

	reaction_R7=compartment_compartment*x(7)*x(9)*reaction_R7_k7;

% Reaction: id = R8, name = Galpha deactivation by RGS	% Local Parameter:   id =  k8, name = k8
	reaction_R8_k8=2.5;

	reaction_R8=compartment_compartment*x(10)*reaction_R8_k8;

% Reaction: id = R9, name = Galpha deactivation spontaneous	% Local Parameter:   id =  k9, name = k9
	reaction_R9_k9=0.005;

	reaction_R9=compartment_compartment*x(7)*reaction_R9_k9;

% Reaction: id = R10, name = Galpha-Effector association	% Local Parameter:   id =  k10, name = k10
	reaction_R10_k10=10.0;

	reaction_R10=compartment_compartment*x(12)*x(7)*reaction_R10_k10;

% Reaction: id = R11, name = Galpha becomes inert	% Local Parameter:   id =  k11, name = k11
	reaction_R11_k11=1.0;

	reaction_R11=compartment_compartment*x(13)*reaction_R11_k11;

% Reaction: id = R12, name = inertGalpha-RGS association	% Local Parameter:   id =  k12, name = k12
	reaction_R12_k12=50.0;

	reaction_R12=compartment_compartment*x(14)*x(9)*reaction_R12_k12;

% Reaction: id = R13, name = inertGalpha deactivation by RGS	% Local Parameter:   id =  k13, name = k13
	reaction_R13_k13=0.3;

	reaction_R13=compartment_compartment*x(15)*reaction_R13_k13;

% Reaction: id = R14, name = inertGalpha deactivation spontaneous	% Local Parameter:   id =  k14, name = k14
	reaction_R14_k14=0.005;

	reaction_R14=compartment_compartment*x(14)*reaction_R14_k14;

% Reaction: id = R15, name = Phosphate release	% Local Parameter:   id =  k15, name = k15
	reaction_R15_k15=1000.0;

	reaction_R15=compartment_compartment*x(11)*reaction_R15_k15;

% Reaction: id = R16, name = Gprotein subunits association	% Local Parameter:   id =  k16, name = k16
	reaction_R16_k16=1000.0;

	reaction_R16=compartment_compartment*x(16)*x(8)*reaction_R16_k16;

% Reaction: id = R17, name = Phosphate degradation	% Local Parameter:   id =  k17, name = k17
	reaction_R17_k17=10.0;

	reaction_R17=compartment_compartment*x(17)*reaction_R17_k17;

% Reaction: id = R18, name = Delay 1
	reaction_R18=compartment_compartment*x(13)*global_par_ka;

% Reaction: id = R19, name = Delay 2
	reaction_R19=compartment_compartment*x(18)*global_par_ka;

% Reaction: id = R20, name = Delay 3
	reaction_R20=compartment_compartment*x(19)*global_par_ka;

% Reaction: id = R21, name = Delay 4
	reaction_R21=compartment_compartment*x(20)*global_par_ka;

%Event: id=Ligand_addition
	event_Ligand_addition=time >= 14;

	if(event_Ligand_addition) 
		x(2)=x(2)+global_par_Ligand_conc;
	end

	xdot=zeros(20,1);
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_R1) + (-1.0 * reaction_R2));
	
% Species:   id = L, name = L, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_R1) + (-1.0 * reaction_R4));
	
% Species:   id = RL, name = RL, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R3) + ( 1.0 * reaction_R5));
	
% Species:   id = Gabg, name = Gabg, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R6) + ( 1.0 * reaction_R16));
	
% Species:   id = RGabg, name = RGabg, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R4));
	
% Species:   id = RGabgL, name = RGabgL, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_R3) + ( 1.0 * reaction_R4) + (-1.0 * reaction_R5));
	
% Species:   id = GaGTP, name = GaGTP, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_R5) + ( 1.0 * reaction_R6) + (-1.0 * reaction_R7) + (-1.0 * reaction_R9) + (-1.0 * reaction_R10));
	
% Species:   id = Gbg, name = Gbg, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_R5) + ( 1.0 * reaction_R6) + (-1.0 * reaction_R16));
	
% Species:   id = RGS, name = RGS, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_R7) + ( 1.0 * reaction_R8) + (-1.0 * reaction_R12) + ( 1.0 * reaction_R13));
	
% Species:   id = RGSGaGTP, name = RGSGaGTP, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_R7) + (-1.0 * reaction_R8));
	
% Species:   id = GaGDPP, name = GaGDPP, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_R8) + ( 1.0 * reaction_R9) + ( 1.0 * reaction_R13) + ( 1.0 * reaction_R14) + (-1.0 * reaction_R15));
	
% Species:   id = Effector, name = Effector, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*((-1.0 * reaction_R10) + ( 1.0 * reaction_R11));
	
% Species:   id = GaGTPEffector, name = GaGTPEffector, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_R10) + (-1.0 * reaction_R11));
	
% Species:   id = inertGaGTP, name = inertGaGTP, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_R11) + (-1.0 * reaction_R12) + (-1.0 * reaction_R14));
	
% Species:   id = RGSinertGaGTP, name = RGSinertGaGTP, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*(( 1.0 * reaction_R12) + (-1.0 * reaction_R13));
	
% Species:   id = GaGDP, name = GaGDP, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*(( 1.0 * reaction_R15) + (-1.0 * reaction_R16));
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*(( 1.0 * reaction_R15) + (-1.0 * reaction_R17));
	
% Species:   id = z1, name = z1, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment))*(( 1.0 * reaction_R18) + (-1.0 * reaction_R19));
	
% Species:   id = z2, name = z2, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment))*(( 1.0 * reaction_R19) + (-1.0 * reaction_R20));
	
% Species:   id = z3, name = z3, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment))*(( 1.0 * reaction_R20) + (-1.0 * reaction_R21));
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


