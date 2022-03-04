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
% Model name = Yan2012 - Rb-E2F pathway dynamics with miR449
%
% isDerivedFrom http://identifiers.org/go/GO:0007049
% isDerivedFrom http://identifiers.org/reactome/R-HSA-69206
% isDerivedFrom http://identifiers.org/mamo/MAMO_0000046
% isDerivedFrom http://identifiers.org/taxonomy/40674
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000318
% is http://identifiers.org/biomodels.db/MODEL1811080001
% is http://identifiers.org/biomodels.db/BIOMD0000000720
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 1.2;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.55;
	x0(7) = 0.0;
	x0(8) = 0.0;


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

% Compartment: id = compartment, name = cell, constant
	compartment_compartment=1.0;
% Parameter:   id =  ksE1, name = ksE1
	global_par_ksE1=0.4;
% Parameter:   id =  JM, name = JM
	global_par_JM=0.15;
% Parameter:   id =  JE, name = JE
	global_par_JE=0.15;
% Parameter:   id =  ksE2, name = ksE2
	global_par_ksE2=0.003;
% Parameter:   id =  kP1, name = kP1
	global_par_kP1=18.0;
% Parameter:   id =  JCD, name = JCD
	global_par_JCD=0.92;
% Parameter:   id =  kP2, name = kP2
	global_par_kP2=18.0;
% Parameter:   id =  JCE, name = JCE
	global_par_JCE=0.92;
% Parameter:   id =  kdE, name = kdE
	global_par_kdE=0.25;
% Parameter:   id =  kRE, name = kRE
	global_par_kRE=180.0;
% Parameter:   id =  ksmiR, name = ksmiR
	global_par_ksmiR=1.4;
% Parameter:   id =  kdmiR, name = kdmiR
	global_par_kdmiR=0.02;
% Parameter:   id =  ksM, name = ksM
	global_par_ksM=1.0;
% Parameter:   id =  JS, name = JS
	global_par_JS=0.5;
% Parameter:   id =  kdM1, name = kdM1
	global_par_kdM1=0.7;
% Parameter:   id =  kdM2, name = kdM2
	global_par_kdM2=0.6;
% Parameter:   id =  ksCD1, name = ksCD1
	global_par_ksCD1=0.45;
% Parameter:   id =  ksCD2, name = ksCD2
	global_par_ksCD2=0.03;
% Parameter:   id =  kdCD1, name = kdCD1
	global_par_kdCD1=1.5;
% Parameter:   id =  kdCD2, name = kdCD2
	global_par_kdCD2=1.0;
% Parameter:   id =  ksCE, name = ksCE
	global_par_ksCE=0.35;
% Parameter:   id =  kdCE1, name = kdCE1
	global_par_kdCE1=1.5;
% Parameter:   id =  kdCE2, name = kdCE2
	global_par_kdCE2=0.7;
% Parameter:   id =  ksR, name = ksR
	global_par_ksR=0.18;
% Parameter:   id =  kP, name = kP
	global_par_kP=3.6;
% Parameter:   id =  JP, name = JP
	global_par_JP=0.01;
% Parameter:   id =  kdR, name = kdR
	global_par_kdR=0.06;
% Parameter:   id =  kdP, name = kdP
	global_par_kdP=0.06;
% Parameter:   id =  kdRE, name = kdRE
	global_par_kdRE=0.03;

% Reaction: id = reaction, name = reaction
	reaction_reaction=compartment_compartment*self_promoting_michaelis_menten(global_par_ksE1, x(2), global_par_JM, x(1), global_par_JE);

% Reaction: id = reaction_1, name = reaction_1
	reaction_reaction_1=compartment_compartment*function(global_par_ksE2, x(2), global_par_JM);

% Reaction: id = reaction_2, name = reaction_2
	reaction_reaction_2=compartment_compartment*function_1(global_par_kP1, x(3), x(4), global_par_JCD);

% Reaction: id = reaction_3, name = reaction_3
	reaction_reaction_3=compartment_compartment*function_1(global_par_kP2, x(5), x(4), global_par_JCE);

% Reaction: id = reaction_4, name = reaction_4
	reaction_reaction_4=compartment_compartment*global_par_kdE*x(1);

% Reaction: id = reaction_5, name = reaction_5
	reaction_reaction_5=compartment_compartment*global_par_kRE*x(1)*x(6);

% Reaction: id = reaction_6, name = reaction_6
	reaction_reaction_6=compartment_compartment*function(global_par_ksmiR, x(1), global_par_JE);

% Reaction: id = reaction_7, name = reaction_7
	reaction_reaction_7=compartment_compartment*global_par_kdmiR*x(7);

% Reaction: id = reaction_8, name = reaction_8
	reaction_reaction_8=compartment_compartment*function_1(global_par_kdM2, x(7), x(2), global_par_JM);

% Reaction: id = reaction_9, name = reaction_9
	reaction_reaction_9=compartment_compartment*function_1(global_par_kdCD2, x(7), x(3), global_par_JCD);

% Reaction: id = reaction_10, name = reaction_10
	reaction_reaction_10=compartment_compartment*function_1(global_par_kdCE2, x(7), x(5), global_par_JCE);

% Reaction: id = reaction_11, name = reaction_11
	reaction_reaction_11=compartment_compartment*function(global_par_ksM, const_species_S, global_par_JS);

% Reaction: id = reaction_12, name = reaction_12
	reaction_reaction_12=compartment_compartment*global_par_kdM1*x(2);

% Reaction: id = reaction_13, name = reaction_13
	reaction_reaction_13=compartment_compartment*function(global_par_ksCD1, const_species_S, global_par_JS);

% Reaction: id = reaction_14, name = reaction_14
	reaction_reaction_14=compartment_compartment*function(global_par_ksCD2, x(2), global_par_JM);

% Reaction: id = reaction_15, name = reaction_15
	reaction_reaction_15=compartment_compartment*global_par_kdCD1*x(3);

% Reaction: id = reaction_16, name = reaction_16
	reaction_reaction_16=compartment_compartment*function(global_par_ksCE, x(1), global_par_JE);

% Reaction: id = reaction_17, name = reaction_17
	reaction_reaction_17=compartment_compartment*global_par_kdCE1*x(5);

% Reaction: id = reaction_19, name = reaction_19
	reaction_reaction_19=compartment_compartment*function(global_par_kP, x(8), global_par_JP);

% Reaction: id = reaction_20, name = reaction_20
	reaction_reaction_20=compartment_compartment*global_par_kdR*x(6);

% Reaction: id = reaction_21, name = reaction_21
	reaction_reaction_21=compartment_compartment*function_1(global_par_kP1, x(3), x(6), global_par_JCD);

% Reaction: id = reaction_22, name = reaction_22
	reaction_reaction_22=compartment_compartment*function_1(global_par_kP2, x(5), x(6), global_par_JCE);

% Reaction: id = reaction_23, name = reaction_23
	reaction_reaction_23=compartment_compartment*global_par_kdP*x(8);

% Reaction: id = reaction_24, name = reaction_24
	reaction_reaction_24=compartment_compartment*global_par_kdRE*x(4);

% Species:   id = S, name = S, constant	const_species_S=3.0;

	xdot=zeros(8,1);
	
% Species:   id = E2F, name = E2F, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction) + ( 1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = Myc, name = Myc, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_12));
	
% Species:   id = CycD, name = CycD, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15));
	
% Species:   id = RE, name = RE, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_24));
	
% Species:   id = CycE, name = CycE, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17));
	
% Species:   id = RB, name = RB, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_18) + ( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_22));
	
% Species:   id = miR449, name = miR449, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10));
	
% Species:   id = PRB, name = PRB, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_23));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=self_promoting_michaelis_menten(k,M,J1,P,J2), z=(k*M/(J1+M)*P/(J2+P));end

function z=function(k,M,J), z=(k*M/(J+M));end

function z=function_1(k,M1,M2,J), z=(k*M1*M2/(J+M2));end

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


