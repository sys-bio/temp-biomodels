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
% Model name = Maurya2005_GTPaseCycle_reducedOrder
%
% is http://identifiers.org/biomodels.db/MODEL5317679037
% is http://identifiers.org/biomodels.db/BIOMD0000000085
% isDescribedBy http://identifiers.org/pubmed/16986265
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000086
%


function main()
%Initial conditions vector
	x0=zeros(17,1);
	x0(1) = 0.0;
	x0(2) = 1.0E-8;
	x0(3) = 0.0;
	x0(4) = 4.68E-4;
	x0(5) = 1.0E-5;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0044;
	x0(9) = 1.49E-4;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;


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

% Compartment: id = compartment_0, name = cell, constant
	compartment_compartment_0=1.0;
% Parameter:   id =  parameter_0, name = Z
% Parameter:   id =  parameter_1, name = v
% assignmentRule: variable = parameter_0
	global_par_parameter_0=(x(6)+x(11)+x(16)+x(12))/1E-8;
% assignmentRule: variable = parameter_1
	global_par_parameter_1=(25*x(16)+25*x(12)+0.013*x(11)+0.013*x(6))/10E-9;

% Reaction: id = reaction_1, name = G protein binding GTP	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=529000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_1_k2=8.38E-6;

	reaction_reaction_1=compartment_compartment_0*(reaction_reaction_1_k1*x(2)*x(4)-reaction_reaction_1_k2*x(6));

% Reaction: id = reaction_3, name = G*T  hydrolysis	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=0.013;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_3_k2=9.03E-7;

	reaction_reaction_3=compartment_compartment_0*(reaction_reaction_3_k1*x(6)-reaction_reaction_3_k2*x(7)*x(8));

% Reaction: id = reaction_4, name = GD dissociation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_4_k1=1.0E-4;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_4_k2=62.3;

	reaction_reaction_4=compartment_compartment_0*(reaction_reaction_4_k1*x(7)-reaction_reaction_4_k2*x(2)*x(9));

% Reaction: id = reaction_5, name = RG binding GTP	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_5_k1=853000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_5_k2=0.00468;

	reaction_reaction_5=compartment_compartment_0*(reaction_reaction_5_k1*x(10)*x(4)-reaction_reaction_5_k2*x(11));

% Reaction: id = reaction_6, name = G*T binding Receptor	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_6_k1=1.32E8;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_6_k2=1.28;

	reaction_reaction_6=compartment_compartment_0*(reaction_reaction_6_k1*x(6)*x(5)-reaction_reaction_6_k2*x(11));

% Reaction: id = reaction_7, name = G*T binding GAP	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_7_k1=386000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_7_k2=0.0408;

	reaction_reaction_7=compartment_compartment_0*(reaction_reaction_7_k1*x(6)*x(1)-reaction_reaction_7_k2*x(12));

% Reaction: id = reaction_8, name = GD binding GAP	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_8_k1=64100.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_8_k2=0.95;

	reaction_reaction_8=compartment_compartment_0*(reaction_reaction_8_k1*x(7)*x(1)-reaction_reaction_8_k2*x(13));

% Reaction: id = reaction_9, name = GD binding Receptor	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_9_k1=9.47E7;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_9_k2=0.00227;

	reaction_reaction_9=compartment_compartment_0*(reaction_reaction_9_k1*x(7)*x(5)-reaction_reaction_9_k2*x(14));

% Reaction: id = reaction_10, name = RG*T hydrolysis	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_10_k1=0.013;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_10_k2=2.22E-9;

	reaction_reaction_10=compartment_compartment_0*(reaction_reaction_10_k1*x(11)-reaction_reaction_10_k2*x(14)*x(8));

% Reaction: id = reaction_11, name = RGD dissociation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_11_k1=2.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_11_k2=1470000.0;

	reaction_reaction_11=compartment_compartment_0*(reaction_reaction_11_k1*x(14)-reaction_reaction_11_k2*x(10)*x(9));

% Reaction: id = reaction_13, name = G*AT hydrolysis	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_13_k1=25.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_13_k2=0.244;

	reaction_reaction_13=compartment_compartment_0*(reaction_reaction_13_k1*x(12)-reaction_reaction_13_k2*x(13)*x(8));

% Reaction: id = reaction_14, name = GAD dissociation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_14_k1=1.0E-4;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_14_k2=3.83;

	reaction_reaction_14=compartment_compartment_0*(reaction_reaction_14_k1*x(13)-reaction_reaction_14_k2*x(3)*x(9));

% Reaction: id = reaction_16, name = GA binding Receptor	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_16_k1=3.96E9;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_16_k2=5.43E-5;

	reaction_reaction_16=compartment_compartment_0*(reaction_reaction_16_k1*x(3)*x(5)-reaction_reaction_16_k2*x(15));

% Reaction: id = reaction_17, name = RGA binding  GTP	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_17_k1=1620000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_17_k2=0.00875;

	reaction_reaction_17=compartment_compartment_0*(reaction_reaction_17_k1*x(15)*x(4)-reaction_reaction_17_k2*x(16));

% Reaction: id = reaction_19, name = RG*T binding GAP	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_19_k1=6300000.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_19_k2=0.478;

	reaction_reaction_19=compartment_compartment_0*(reaction_reaction_19_k1*x(11)*x(1)-reaction_reaction_19_k2*x(16));

% Reaction: id = reaction_20, name = RG*AT hydrolysis	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_20_k1=25.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_20_k2=0.00297;

	reaction_reaction_20=compartment_compartment_0*(reaction_reaction_20_k1*x(16)-reaction_reaction_20_k2*x(17)*x(8));

% Reaction: id = reaction_23, name = RGAD dissociation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_23_k1=2.75;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_23_k2=2940.0;

	reaction_reaction_23=compartment_compartment_0*(reaction_reaction_23_k1*x(17)-reaction_reaction_23_k2*x(15)*x(9));

	xdot=zeros(17,1);
	
% Species:   id = species_0, name = A, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_19));
	
% Species:   id = species_1, name = G, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_4));
	
% Species:   id = species_2, name = GA, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_16));
	
% Species:   id = species_3, name = T, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_17));
	
% Species:   id = species_4, name = R, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_16));
	
% Species:   id = species_5, name = G*T, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7));
	
% Species:   id = species_6, name = GD, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9));
	
% Species:   id = species_7, name = Pi, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_13) + ( 1.0 * reaction_reaction_20));
	
% Species:   id = species_8, name = D, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_23));
	
% Species:   id = species_9, name = RG, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_11));
	
% Species:   id = species_10, name = RG*T, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_19));
	
% Species:   id = species_11, name = G*AT, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_13));
	
% Species:   id = species_12, name = GAD, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14));
	
% Species:   id = species_13, name = RGD, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11));
	
% Species:   id = species_14, name = RGA, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17) + ( 1.0 * reaction_reaction_23));
	
% Species:   id = species_15, name = RG*AT, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_17) + ( 1.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_20));
	
% Species:   id = species_16, name = RGAD, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_23));
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


