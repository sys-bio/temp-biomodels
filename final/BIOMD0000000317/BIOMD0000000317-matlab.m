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
% Model name = Shen-Orr2002_Single_Input_Module
%
% is http://identifiers.org/biomodels.db/MODEL1102140001
% is http://identifiers.org/biomodels.db/BIOMD0000000317
% isDescribedBy http://identifiers.org/pubmed/11967538
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(5) = 0.0;
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  FX, name = FX
	global_par_FX=0.0;
% rateRule: variable = X
x(1) = x(5);

% Reaction: id = r1	% Local Parameter:   id =  T1, name = T1
	reaction_r1_T1=0.1;

	reaction_r1=F(x(1), reaction_r1_T1);

% Reaction: id = r2	% Local Parameter:   id =  a, name = a
	reaction_r2_a=1.0;

	reaction_r2=reaction_r2_a*x(2);

% Reaction: id = r3	% Local Parameter:   id =  T2, name = T2
	reaction_r3_T2=0.5;

	reaction_r3=F(x(1), reaction_r3_T2);

% Reaction: id = r4	% Local Parameter:   id =  a, name = a
	reaction_r4_a=1.0;

	reaction_r4=reaction_r4_a*x(3);

% Reaction: id = r5	% Local Parameter:   id =  T3, name = T3
	reaction_r5_T3=0.8;

	reaction_r5=F(x(1), reaction_r5_T3);

% Reaction: id = r6	% Local Parameter:   id =  a, name = a
	reaction_r6_a=1.0;

	reaction_r6=reaction_r6_a*x(4);

%Event: id=e1
	event_e1=time >= 1;

	if(event_e1) 
		global_par_FX=1;
	end

%Event: id=e2
	event_e2=time >= 6;

	if(event_e2) 
		global_par_FX=0;
	end

	xdot=zeros(5,1);
	% rateRule: variable = X
	xdot(5) = global_par_FX-x(1);
	
% Species:   id = X, name = X, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = Z1, name = Z1, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_r1) + (-1.0 * reaction_r2));
	
% Species:   id = Z2, name = Z2, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_r3) + (-1.0 * reaction_r4));
	
% Species:   id = Z3, name = Z3, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_r5) + (-1.0 * reaction_r6));
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


