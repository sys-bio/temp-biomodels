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
% Model name = McClean2007_CrossTalk
%
% is http://identifiers.org/biomodels.db/MODEL7321452458
% is http://identifiers.org/biomodels.db/BIOMD0000000116
% isDescribedBy http://identifiers.org/pubmed/17259986
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 1.023667;
	x0(2) = 2.154231;
	x0(3) = 6.271793;
	x0(4) = 3.203692;
	x0(5) = 8.232192;
	x0(6) = 9.312021;


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

% Compartment: id = compartment_0, name = cell, constant
	compartment_compartment_0=1.0;
% Parameter:   id =  parameter_0, name = X1T
	global_par_parameter_0=10.0;
% Parameter:   id =  parameter_1, name = X2T
	global_par_parameter_1=10.0;
% Parameter:   id =  parameter_2, name = X3T
	global_par_parameter_2=10.0;
% Parameter:   id =  parameter_3, name = Y1T
	global_par_parameter_3=10.0;
% Parameter:   id =  parameter_4, name = Y2T
	global_par_parameter_4=10.0;
% Parameter:   id =  parameter_5, name = Y3T
	global_par_parameter_5=10.0;
% Parameter:   id =  parameter_6, name = kx
	global_par_parameter_6=1.0;
% Parameter:   id =  parameter_7, name = S1
	global_par_parameter_7=8.5;
% Parameter:   id =  parameter_8, name = Kmx
	global_par_parameter_8=1.0;
% Parameter:   id =  parameter_9, name = k12x
	global_par_parameter_9=1.0;
% Parameter:   id =  parameter_10, name = k23x
	global_par_parameter_10=1.0;
% Parameter:   id =  parameter_11, name = kd
	global_par_parameter_11=1.0;
% Parameter:   id =  parameter_12, name = ka
	global_par_parameter_12=0.0;
% Parameter:   id =  parameter_13, name = Kmyx
	global_par_parameter_13=1.0;
% Parameter:   id =  parameter_14, name = S2
	global_par_parameter_14=5.0;
% Parameter:   id =  parameter_15, name = ky
	global_par_parameter_15=1.0;
% Parameter:   id =  parameter_16, name = Kmy
	global_par_parameter_16=1.0;
% Parameter:   id =  parameter_17, name = k12y
	global_par_parameter_17=1.0;
% Parameter:   id =  parameter_18, name = k23y
	global_par_parameter_18=1.0;
% Parameter:   id =  parameter_19, name = Kmxy
	global_par_parameter_19=1.0;

% Reaction: id = reaction_0, name = X1 activats X2
	reaction_reaction_0=compartment_compartment_0*global_par_parameter_9*x(1)*(global_par_parameter_1-x(2));

% Reaction: id = reaction_1, name = S1 activates X1
	reaction_reaction_1=compartment_compartment_0*global_par_parameter_6*global_par_parameter_7/(1+global_par_parameter_7/global_par_parameter_8)*(global_par_parameter_0-x(1));

% Reaction: id = reaction_2, name = X2 activates X3
	reaction_reaction_2=compartment_compartment_0*global_par_parameter_10*x(2)*(global_par_parameter_2-x(3));

% Reaction: id = reaction_3, name = S2 activates Y1
	reaction_reaction_3=compartment_compartment_0*global_par_parameter_15*global_par_parameter_14/(1+global_par_parameter_14/global_par_parameter_16)*(global_par_parameter_3-x(4));

% Reaction: id = reaction_4, name = Y1p activates Y2p
	reaction_reaction_4=compartment_compartment_0*global_par_parameter_17*x(4)*(global_par_parameter_4-x(5));

% Reaction: id = reaction_5, name = Y2p activates Y3p
	reaction_reaction_5=compartment_compartment_0*global_par_parameter_18*x(5)*(global_par_parameter_5-x(6));

% Reaction: id = reaction_6, name = X1p activates Y2p
	reaction_reaction_6=compartment_compartment_0*global_par_parameter_12*x(1)*(global_par_parameter_4-x(5));

% Reaction: id = reaction_7, name = Y1p activates X2p
	reaction_reaction_7=compartment_compartment_0*global_par_parameter_12*x(4)*(global_par_parameter_1-x(2));

% Reaction: id = reaction_8, name = X3p inhibited by Y3p
	reaction_reaction_8=compartment_compartment_0*global_par_parameter_11*x(6)*x(3)/(1+x(3)/global_par_parameter_13);

% Reaction: id = reaction_9, name = Y3p inhibited by X3p
	reaction_reaction_9=compartment_compartment_0*global_par_parameter_11*x(6)*x(3)/(1+x(6)/global_par_parameter_19);

	xdot=zeros(6,1);
	
% Species:   id = species_0, name = X1p, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_0) + ( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_6));
	
% Species:   id = species_1, name = X2p, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_0) + (-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_7));
	
% Species:   id = species_2, name = X3p, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_8));
	
% Species:   id = species_3, name = Y1p, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_7));
	
% Species:   id = species_4, name = Y2p, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6));
	
% Species:   id = species_5, name = Y3p, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_9));
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


