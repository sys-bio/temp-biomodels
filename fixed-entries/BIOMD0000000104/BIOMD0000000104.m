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
% Model name = Klipp2002_MetabolicOptimization_linearPathway(n=2)
%
% is http://identifiers.org/biomodels.db/MODEL4931762955
% is http://identifiers.org/biomodels.db/BIOMD0000000104
% isDescribedBy http://identifiers.org/pubmed/12423338
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 1.0;
	x0(4) = 0.0;
	x0(5) = 0.0;


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
% assignmentRule: variable = species_3
	x(4)=const_species_species_5-x(3);

% Reaction: id = reaction_0, name = S->X1	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_0_k1=1.0;

	reaction_reaction_0=compartment_compartment_0*x(1)*x(3)*reaction_reaction_0_k1;

% Reaction: id = reaction_1, name = X1->P	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_1_k2=1.0;

	reaction_reaction_1=compartment_compartment_0*reaction_reaction_1_k2*x(2)*x(4);

% Species:   id = species_5, name = Etot, constant	const_species_species_5=1.0;

%Event: id=event_0000002
	event_event_0000002=time > 1;

	if(event_event_0000002) 
		x(3)=0.4;
	end

	xdot=zeros(5,1);
	
% Species:   id = species_0, name = S, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_0))*((-1.0 * reaction_reaction_0));
	
% Species:   id = species_1, name = X1, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_0) + (-1.0 * reaction_reaction_1));
	
% Species:   id = species_2, name = E1
% Warning species is not changed by either rules or reactions
	xdot(3) = ;
	
% Species:   id = species_3, name = E2, defined in a rule 	xdot(4) = x(4);
	
% Species:   id = species_4, name = P, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_0))*(( 1.0 * reaction_reaction_1));
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


