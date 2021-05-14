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
% Model name = Komarova2005_TheoreticalFramework_BasicArchitecture
%
% is http://identifiers.org/biomodels.db/MODEL2451230486
% is http://identifiers.org/biomodels.db/BIOMD0000000125
% isDescribedBy http://identifiers.org/pubmed/16729058
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 1.0;
	x0(5) = 0.0;


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

% Compartment: id = compartment_0000001, name = cell, constant
	compartment_compartment_0000001=1.0;
% Parameter:   id =  a1, name = a1
	global_par_a1=2.0;
% Parameter:   id =  a2, name = a2
	global_par_a2=2.0;
% Parameter:   id =  b1, name = b1
	global_par_b1=1.0;
% Parameter:   id =  b2, name = b2
	global_par_b2=1.0;
% Parameter:   id =  d1, name = d1
	global_par_d1=1.0;
% Parameter:   id =  d2x, name = d2x
	global_par_d2x=1.0;
% Parameter:   id =  d2y, name = d2y
	global_par_d2y=1.0;

% Reaction: id = reaction_0000001, name = x0 activates x1
	reaction_reaction_0000001=compartment_compartment_0000001*global_par_a1*x(4);

% Reaction: id = reaction_0000002, name = y0 activates x1
	reaction_reaction_0000002=compartment_compartment_0000001*global_par_b1*x(5);

% Reaction: id = reaction_0000003, name = x1 activates x2
	reaction_reaction_0000003=compartment_compartment_0000001*x(1)*global_par_a2;

% Reaction: id = reaction_0000004, name = x1 activates y2
	reaction_reaction_0000004=compartment_compartment_0000001*x(1)*global_par_b2;

% Reaction: id = reaction_0000005, name = x1 deactivation
	reaction_reaction_0000005=compartment_compartment_0000001*global_par_d1*x(1);

% Reaction: id = reaction_0000006, name = x2 deactivation
	reaction_reaction_0000006=compartment_compartment_0000001*global_par_d2x*x(2);

% Reaction: id = reaction_0000007, name = y2 deactivation
	reaction_reaction_0000007=compartment_compartment_0000001*global_par_d2y*x(3);

%Event: id=event_0000001
	event_event_0000001=time > 1;

	if(event_event_0000001) 
		x(4)=0;
	end

	xdot=zeros(5,1);
	
% Species:   id = x1, name = x1, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000001) + ( 1.0 * reaction_reaction_0000002) + (-1.0 * reaction_reaction_0000005));
	
% Species:   id = x2, name = x2, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000003) + (-1.0 * reaction_reaction_0000006));
	
% Species:   id = y2, name = y2, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000004) + (-1.0 * reaction_reaction_0000007));
	
% Species:   id = x0, name = x0
% Warning species is not changed by either rules or reactions
	xdot(4) = ;
	
% Species:   id = y0, name = y0
% Warning species is not changed by either rules or reactions
	xdot(5) = ;
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


