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
% Model name = Olsen2003_neutrophil_oscillatory_metabolism
%
% is http://identifiers.org/biomodels.db/MODEL5564211615
% is http://identifiers.org/biomodels.db/BIOMD0000000143
% isDescribedBy http://identifiers.org/pubmed/12524266
% isDerivedFrom http://identifiers.org/pubmed/11901676
% isDerivedFrom http://identifiers.org/doi/10.1021/j100023a001
%


function main()
%Initial conditions vector
	x0=zeros(20,1);
	x0(1) = 0.0;
	x0(2) = 300.0;
	x0(3) = 0.0;
	x0(4) = 300.0;
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
	x0(18) = 300.0;
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

% Compartment: id = phagosome, name = phagosome, constant
	compartment_phagosome=1.0;
% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=10.0;
% Parameter:   id =  Knadph, name = Knadph
	global_par_Knadph=60.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=50.0;
% Parameter:   id =  kminus1, name = kminus1
	global_par_kminus1=58.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=10.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.004;
% Parameter:   id =  k4, name = k4
	global_par_k4=20.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=10.0;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.1;
% Parameter:   id =  k7, name = k7
	global_par_k7=1.0E-6;
% Parameter:   id =  k8, name = k8
	global_par_k8=50.0;
% Parameter:   id =  k9, name = k9
	global_par_k9=500.0;
% Parameter:   id =  k10, name = k10
	global_par_k10=10.0;
% Parameter:   id =  k11, name = k11
	global_par_k11=60.0;
% Parameter:   id =  k12, name = k12
	global_par_k12=25.0;
% Parameter:   id =  k13, name = k13
	global_par_k13=12.5;
% Parameter:   id =  kminus13, name = kminus13
	global_par_kminus13=0.045;
% Parameter:   id =  k14, name = k14
	global_par_k14=30.0;
% Parameter:   id =  k15, name = k15
	global_par_k15=30.0;
% Parameter:   id =  k16, name = k16
	global_par_k16=10.0;
% Parameter:   id =  k17, name = k17
	global_par_k17=10.0;
% Parameter:   id =  k18, name = k18
	global_par_k18=2.0;
% Parameter:   id =  V, name = V
	global_par_V=288.0;
% Parameter:   id =  L, name = L
	global_par_L=550.0;
% Parameter:   id =  Ko, name = Ko
	global_par_Ko=1.5;

% Reaction: id = R1, name = Myeloperoxidase reaction
	reaction_R1=compartment_phagosome*(global_par_k1*x(1)*x(2)-global_par_kminus1*x(3));

% Reaction: id = R2, name = Melatonin-compound I reaction
	reaction_R2=compartment_phagosome*global_par_k2*x(3)*x(4);

% Reaction: id = R3, name = Melatonin-compound II reaction
	reaction_R3=compartment_phagosome*global_par_k3*x(5)*x(4);

% Reaction: id = R4, name = compound III formation
	reaction_R4=compartment_phagosome*global_par_k4*x(2)*x(7);

% Reaction: id = R5, name = H2O2 formation
	reaction_R5=compartment_phagosome*global_par_k5*x(7)^2;

% Reaction: id = R6, name = compound III-superoxide reaction
	reaction_R6=compartment_phagosome*global_par_k6*x(19)*x(7);

% Reaction: id = R7, name = NADPH autooxidation
	reaction_R7=compartment_cytoplasm*global_par_k7*x(10)*x(11);

% Reaction: id = R8, name = NADP radical-Oxygen reaction
	reaction_R8=compartment_cytoplasm*global_par_k8*x(14)*x(11);

% Reaction: id = R9, name = H2O2 formation
	reaction_R9=compartment_cytoplasm*global_par_k9*x(15)^2;

% Reaction: id = R10, name = NADP free radical formation
	reaction_R10=compartment_cytoplasm*global_par_k10*x(17)*x(10);

% Reaction: id = R11, name = NADP dimer formation
	reaction_R11=compartment_cytoplasm*global_par_k11*x(14)^2;

% Reaction: id = R12, name = NADPH synthesis
	reaction_R12=compartment_cytoplasm*global_par_k12;

% Reaction: id = R13a, name = Oxygen diffusion
	reaction_R13a=compartment_cytoplasm*global_par_k13;

% Reaction: id = R13b, name = Oxygen diffusion
	reaction_R13b=compartment_cytoplasm*global_par_kminus13*x(11);

% Reaction: id = R14, name = Oxygen diffusion- phagosome/cytoplasm
	reaction_R14=compartment_phagosome*(global_par_k14*x(9)-global_par_k14*x(11));

% Reaction: id = R15, name = H2O2 diffusion phagosome/cytoplasm
	reaction_R15=compartment_phagosome*(global_par_k15*x(1)-global_par_k15*x(13));

% Reaction: id = R16, name = Melatonin  diffusion phagosome/cytoplasm
	reaction_R16=compartment_phagosome*(global_par_k16*x(4)-global_par_k16*x(18));

% Reaction: id = R17, name = Melatonin free radical  diffusion phagosome/cytoplasm
	reaction_R17=compartment_phagosome*(global_par_k17*x(6)-global_par_k17*x(17));

% Reaction: id = R18, name = Superoxide  diffusion phagosome/cytoplasm
	reaction_R18=compartment_phagosome*(global_par_k18*x(7)-global_par_k18*x(15));

% Reaction: id = R19, name = NADPH oxidase activity
	reaction_R19=compartment_phagosome*global_par_V*x(10)/global_par_Knadph*(1+x(10)/global_par_Knadph)*x(9)/((global_par_L+(1+x(10)/global_par_Knadph)^2)*(global_par_Ko+x(9)));

	xdot=zeros(20,1);
	
% Species:   id = H2O2_p, name = H2O2, affected by kineticLaw
	xdot(1) = (1/(compartment_phagosome))*((-1.0 * reaction_R1) + ( 1.0 * reaction_R5) + (-1.0 * reaction_R15));
	
% Species:   id = per3_p, name = Ferric peroxidase, affected by kineticLaw
	xdot(2) = (1/(compartment_phagosome))*((-1.0 * reaction_R1) + ( 1.0 * reaction_R3) + (-1.0 * reaction_R4));
	
% Species:   id = coI_p, name = compound I, affected by kineticLaw
	xdot(3) = (1/(compartment_phagosome))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + ( 1.0 * reaction_R6));
	
% Species:   id = MLTH_p, name = Melatonin, affected by kineticLaw
	xdot(4) = (1/(compartment_phagosome))*((-1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R16));
	
% Species:   id = coII_p, name = compound II, affected by kineticLaw
	xdot(5) = (1/(compartment_phagosome))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R3));
	
% Species:   id = MLT_p, name = Melatonin free radical, affected by kineticLaw
	xdot(6) = (1/(compartment_phagosome))*(( 1.0 * reaction_R2) + ( 1.0 * reaction_R3) + (-1.0 * reaction_R17));
	
% Species:   id = O2minus_p, name = Superoxide, affected by kineticLaw
	xdot(7) = (1/(compartment_phagosome))*((-1.0 * reaction_R4) + (-2.0 * reaction_R5) + (-1.0 * reaction_R6) + (-1.0 * reaction_R18) + ( 2.0 * reaction_R19));
	
% Species:   id = H_p, name = Hydrogen, affected by kineticLaw
	xdot(8) = (1/(compartment_phagosome))*((-2.0 * reaction_R5));
	
% Species:   id = O2_p, name = Oxygen, affected by kineticLaw
	xdot(9) = (1/(compartment_phagosome))*(( 1.0 * reaction_R5) + ( 1.0 * reaction_R6) + (-1.0 * reaction_R14) + (-2.0 * reaction_R19));
	
% Species:   id = NADPH_c, name = NADPH, affected by kineticLaw
	xdot(10) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R7) + (-1.0 * reaction_R10) + ( 1.0 * reaction_R12) + (-1.0 * reaction_R19));
	
% Species:   id = O2_c, name = Oxygen, affected by kineticLaw
	xdot(11) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R7) + (-1.0 * reaction_R8) + ( 1.0 * reaction_R9) + ( 1.0 * reaction_R13a) + (-1.0 * reaction_R13b) + ( 1.0 * reaction_R14));
	
% Species:   id = NADPplus_c, name = NADP, affected by kineticLaw
	xdot(12) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R7) + ( 1.0 * reaction_R8) + ( 1.0 * reaction_R19));
	
% Species:   id = H2O2_c, name = H2O2, affected by kineticLaw
	xdot(13) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R7) + ( 1.0 * reaction_R9) + ( 1.0 * reaction_R15));
	
% Species:   id = NADP_c, name = NADP, affected by kineticLaw
	xdot(14) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R8) + ( 1.0 * reaction_R10) + (-2.0 * reaction_R11));
	
% Species:   id = O2minus_c, name = Superoxide, affected by kineticLaw
	xdot(15) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R8) + (-2.0 * reaction_R9) + ( 1.0 * reaction_R18));
	
% Species:   id = H_c, name = Hydrogen, affected by kineticLaw
	xdot(16) = (1/(compartment_cytoplasm))*((-2.0 * reaction_R9));
	
% Species:   id = MLT_c, name = Melatonin free radical, affected by kineticLaw
	xdot(17) = (1/(compartment_cytoplasm))*((-1.0 * reaction_R10) + ( 1.0 * reaction_R17));
	
% Species:   id = MLTH_c, name = Melatonin, affected by kineticLaw
	xdot(18) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R10) + ( 1.0 * reaction_R16));
	
% Species:   id = coIII_p, name = compound III, affected by kineticLaw
	xdot(19) = (1/(compartment_phagosome))*(( 1.0 * reaction_R4) + (-1.0 * reaction_R6));
	
% Species:   id = NADP2_c, name = NADP2, affected by kineticLaw
	xdot(20) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_R11));
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


