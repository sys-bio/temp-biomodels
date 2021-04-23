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
% Model name = Shen-Orr2002_FeedForward_AND_gate
%
% is http://identifiers.org/biomodels.db/MODEL1102140000
% is http://identifiers.org/biomodels.db/BIOMD0000000316
% isDescribedBy http://identifiers.org/pubmed/11967538
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;

% Reaction: id = r1	% Local Parameter:   id =  Ty, name = Ty
	reaction_r1_Ty=0.5;

	reaction_r1=F(x(1), reaction_r1_Ty);

% Reaction: id = r2	% Local Parameter:   id =  a, name = a
	reaction_r2_a=1.0;

	reaction_r2=reaction_r2_a*x(2);

% Reaction: id = r3	% Local Parameter:   id =  Ty, name = Ty
	reaction_r3_Ty=0.5;
	% Local Parameter:   id =  Tz, name = Tz
	reaction_r3_Tz=0.5;

	reaction_r3=F(x(1), reaction_r3_Ty)*F(x(2), reaction_r3_Tz);

% Reaction: id = r4	% Local Parameter:   id =  a, name = a
	reaction_r4_a=1.0;

	reaction_r4=reaction_r4_a*x(3);

%Event: id=e1
	event_e1=time >= 3;

	if(event_e1) 
		x(1)=1;
	end

%Event: id=e2
	event_e2=time >= 3.5;

	if(event_e2) 
		x(1)=0;
	end

%Event: id=e3
	event_e3=time >= 10;

	if(event_e3) 
		x(1)=1;
	end

%Event: id=e4
	event_e4=time >= 15;

	if(event_e4) 
		x(1)=0;
	end

	xdot=zeros(3,1);
	
% Species:   id = X, name = X	xdot(1) = ;
	
% Species:   id = Y, name = Y, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_r1) + (-1.0 * reaction_r2));
	
% Species:   id = Z, name = Z, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_r3) + (-1.0 * reaction_r4));
end

function z=F(X,T,piecewise(1), z=(X >= T,0));end

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


