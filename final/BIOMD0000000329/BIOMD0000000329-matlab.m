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
% Model name = Kummer2000 - Oscillations in Calcium Signalling
%
% is http://identifiers.org/biomodels.db/MODEL1105060000
% is http://identifiers.org/biomodels.db/BIOMD0000000329
% isDescribedBy http://identifiers.org/pubmed/10968983
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.01;
	x0(2) = 0.01;
	x0(3) = 0.01;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0E-13;

% Reaction: id = R2, name = R2	% Local Parameter:   id =  constant, name = constant
	reaction_R2_constant=2.9;

	reaction_R2=compartment_compartment*linear_activation(reaction_R2_constant, x(1));

% Reaction: id = R3, name = R3	% Local Parameter:   id =  V, name = V
	reaction_R3_V=1.52;
	% Local Parameter:   id =  Km, name = Km
	reaction_R3_Km=0.19;

	reaction_R3=compartment_compartment*Irr_Michaelis_Menten__enzyme__userdefined(reaction_R3_V, x(2), x(1), reaction_R3_Km);

% Reaction: id = R4, name = R4	% Local Parameter:   id =  V, name = V
	reaction_R4_V=4.88;
	% Local Parameter:   id =  Km, name = Km
	reaction_R4_Km=1.18;

	reaction_R4=compartment_compartment*Irr_Michaelis_Menten__enzyme__userdefined(reaction_R4_V, x(3), x(1), reaction_R4_Km);

% Reaction: id = R5, name = R5	% Local Parameter:   id =  constant, name = constant
	reaction_R5_constant=1.24;

	reaction_R5=compartment_compartment*linear_activation(reaction_R5_constant, x(1));

% Reaction: id = R6, name = R6	% Local Parameter:   id =  Km, name = Km
	reaction_R6_Km=29.09;
	% Local Parameter:   id =  V, name = V
	reaction_R6_V=32.24;

	reaction_R6=compartment_compartment*Henri_Michaelis_Menten__irreversible(x(2), reaction_R6_Km, reaction_R6_V);

% Reaction: id = R7, name = R7	% Local Parameter:   id =  constant, name = constant
	reaction_R7_constant=13.58;

	reaction_R7=compartment_compartment*linear_activation(reaction_R7_constant, x(1));

% Reaction: id = R8, name = R8	% Local Parameter:   id =  Km, name = Km
	reaction_R8_Km=0.16;
	% Local Parameter:   id =  V, name = V
	reaction_R8_V=153.0;

	reaction_R8=compartment_compartment*Henri_Michaelis_Menten__irreversible(x(3), reaction_R8_Km, reaction_R8_V);

	xdot=zeros(3,1);
	
% Species:   id = a, name = G-alpha, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_R1) + ( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R4));
	
% Species:   id = b, name = activePLC, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_R5) + (-1.0 * reaction_R6));
	
% Species:   id = c, name = Calcium, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_R7) + (-1.0 * reaction_R8));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Henri_Michaelis_Menten__irreversible(substrate,Km,V), z=(V*substrate/(Km+substrate));end

function z=Irr_Michaelis_Menten__enzyme__userdefined(V,E,S,Km), z=(V*E*S/(Km+S));end

function z=linear_activation(constant,Activator), z=(constant*Activator);end

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


