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
% Model name = Venkatraman2012 - Interplay between PLS and TSP1 in TGF-?1 activation
%
% is http://identifiers.org/biomodels.db/MODEL1303130000
% is http://identifiers.org/biomodels.db/BIOMD0000000447
% isDescribedBy http://identifiers.org/pubmed/23009856
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1303130001
%


function main()
%Initial conditions vector
	x0=zeros(13,1);
	x0(1) = 0.003;
	x0(2) = 0.0;
	x0(3) = 0.001;
	x0(4) = 0.0;
	x0(5) = 0.001;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.005;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;


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

% Compartment: id = compartment_1, name = compartment, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  parameter_1, name = keff1
	global_par_parameter_1=0.035;
% Parameter:   id =  parameter_2, name = keff2
	global_par_parameter_2=0.35;
% Parameter:   id =  parameter_3, name = keff3
	global_par_parameter_3=1.4;
% Parameter:   id =  parameter_4, name = k1
	global_par_parameter_4=0.035;
% Parameter:   id =  parameter_5, name = k2
	global_par_parameter_5=24.5;
% Parameter:   id =  parameter_6, name = kothers
	global_par_parameter_6=0.005;
% Parameter:   id =  parameter_7, name = kp1
	global_par_parameter_7=0.35;
% Parameter:   id =  parameter_8, name = kp2
	global_par_parameter_8=1.05;
% Parameter:   id =  parameter_9, name = k3
	global_par_parameter_9=17.5;
% Parameter:   id =  parameter_10, name = k_3
	global_par_parameter_10=0.0245;
% Parameter:   id =  parameter_11, name = k4
	global_par_parameter_11=0.35;
% Parameter:   id =  parameter_12, name = k5
	global_par_parameter_12=24.5;
% Parameter:   id =  parameter_13, name = k_5
	global_par_parameter_13=0.0105;
% Parameter:   id =  parameter_14, name = k6
	global_par_parameter_14=0.035;
% Parameter:   id =  parameter_15, name = k_6
	global_par_parameter_15=0.0035;
% Parameter:   id =  parameter_16, name = k7
	global_par_parameter_16=0.07;
% Parameter:   id =  parameter_17, name = k_7
	global_par_parameter_17=0.0035;
% Parameter:   id =  parameter_18, name = k8
	global_par_parameter_18=24.5;
% Parameter:   id =  parameter_19, name = k9
	global_par_parameter_19=0.21;
% Parameter:   id =  parameter_20, name = u_edeg
	global_par_parameter_20=0.0525;
% Parameter:   id =  parameter_21, name = u_pdeg
	global_par_parameter_21=0.0175;
% Parameter:   id =  parameter_22, name = alpha1
	global_par_parameter_22=0.0035;
% Parameter:   id =  parameter_23, name = alpha2
	global_par_parameter_23=0.035;

% Reaction: id = reaction_1, name = reaction_1
	reaction_reaction_1=compartment_compartment_1*global_par_parameter_1*x(3)*x(1);

% Reaction: id = reaction_2, name = reaction_2
	reaction_reaction_2=compartment_compartment_1*global_par_parameter_2*x(2)*x(3);

% Reaction: id = reaction_3, name = reaction_3
	reaction_reaction_3=compartment_compartment_1*global_par_parameter_3*x(4)*x(1);

% Reaction: id = reaction_4, name = reaction_4
	reaction_reaction_4=compartment_compartment_1*global_par_parameter_4*x(2)*x(5);

% Reaction: id = reaction_5, name = reaction_5
	reaction_reaction_5=compartment_compartment_1*global_par_parameter_5*x(7)*x(5);

% Reaction: id = reaction_6, name = reaction_6
	reaction_reaction_6=compartment_compartment_1*global_par_parameter_6*x(5);

% Reaction: id = reaction_7, name = reaction_7
	reaction_reaction_7=compartment_compartment_1*global_par_parameter_7*x(6);

% Reaction: id = reaction_8, name = reaction_8
	reaction_reaction_8=compartment_compartment_1*global_par_parameter_8*x(6);

% Reaction: id = reaction_9, name = reaction_9
	reaction_reaction_9=compartment_compartment_1*(global_par_parameter_9*x(7)*x(2)-global_par_parameter_10*x(9));

% Reaction: id = reaction_10, name = reaction_10
	reaction_reaction_10=compartment_compartment_1*global_par_parameter_11*x(9);

% Reaction: id = reaction_11, name = reaction_11
	reaction_reaction_11=compartment_compartment_1*(global_par_parameter_12*x(10)*x(2)-global_par_parameter_13*x(11));

% Reaction: id = reaction_12, name = reaction_12
	reaction_reaction_12=compartment_compartment_1*(global_par_parameter_14*x(8)*x(4)-global_par_parameter_15*x(12));

% Reaction: id = reaction_13, name = reaction_13
	reaction_reaction_13=compartment_compartment_1*(global_par_parameter_16*x(8)*x(3)-global_par_parameter_17*x(13));

% Reaction: id = reaction_18, name = reaction_18
	reaction_reaction_18=compartment_compartment_1*global_par_parameter_20*x(3);

% Reaction: id = reaction_19, name = reaction_19
	reaction_reaction_19=compartment_compartment_1*global_par_parameter_20*x(4);

% Reaction: id = reaction_20, name = reaction_20
	reaction_reaction_20=compartment_compartment_1*global_par_parameter_20*x(2);

% Reaction: id = reaction_21, name = reaction_21
	reaction_reaction_21=compartment_compartment_1*global_par_parameter_21*x(7);

% Reaction: id = reaction_22, name = reaction_22
	reaction_reaction_22=compartment_compartment_1*global_par_parameter_21*x(8);

% Reaction: id = reaction_23, name = reaction_23
	reaction_reaction_23=compartment_compartment_1*global_par_parameter_21*x(5);

% Reaction: id = reaction_24, name = reaction_24
	reaction_reaction_24=compartment_compartment_1*global_par_parameter_21*x(6);

% Reaction: id = reaction_25, name = reaction_25
	reaction_reaction_25=compartment_compartment_1*global_par_parameter_21*x(1);

% Reaction: id = reaction_26, name = reaction_26
	reaction_reaction_26=compartment_compartment_1*global_par_parameter_21*x(10);

% Reaction: id = reaction_27, name = reaction_28
	reaction_reaction_27=compartment_compartment_1*global_par_parameter_21*x(11);

% Reaction: id = reaction_28, name = reaction_29
	reaction_reaction_28=compartment_compartment_1*global_par_parameter_21*x(12);

% Reaction: id = reaction_29, name = reaction_30
	reaction_reaction_29=compartment_compartment_1*global_par_parameter_21*x(13);

% Reaction: id = reaction_30, name = reaction_27
	reaction_reaction_30=compartment_compartment_1*global_par_parameter_21*x(9);

% Reaction: id = reaction_31, name = reaction_31
	reaction_reaction_31=compartment_compartment_1*global_par_parameter_18*x(9);

% Reaction: id = reaction_32, name = reaction_32
	reaction_reaction_32=compartment_compartment_1*global_par_parameter_19*x(6);

	xdot=zeros(13,1);
	
% Species:   id = species_1, name = PLG, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_17) + (-1.0 * reaction_reaction_25));
	
% Species:   id = species_2, name = PLS, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_20));
	
% Species:   id = species_3, name = scUPA, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_18));
	
% Species:   id = species_4, name = tcUPA, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_19));
	
% Species:   id = species_5, name = LTGFb1, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_15) + (-1.0 * reaction_reaction_23));
	
% Species:   id = species_6, name = TGFb1, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_24) + (-1.0 * reaction_reaction_32));
	
% Species:   id = species_7, name = TSP1, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_21));
	
% Species:   id = species_8, name = PAI1, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_22));
	
% Species:   id = species_9, name = TSP1:PLS, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_30) + (-1.0 * reaction_reaction_31));
	
% Species:   id = species_10, name = A2M, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_26));
	
% Species:   id = species_11, name = A2M:PLS, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_27));
	
% Species:   id = species_12, name = PAI1:tcUPA, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_28));
	
% Species:   id = species_13, name = PAI1:scUPA, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_29));
end

function z=function_1(v), z=(v);end

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


