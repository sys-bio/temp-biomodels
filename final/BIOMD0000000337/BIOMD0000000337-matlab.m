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
% Model name = Pfeiffer2001_ATP-ProducingPathways_CooperationCompetition
%
% is http://identifiers.org/biomodels.db/MODEL1105120000
% is http://identifiers.org/biomodels.db/BIOMD0000000337
% isDescribedBy http://identifiers.org/pubmed/11283355
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.111111111111111;
	x0(2) = 100.0;
	x0(3) = 0.0;


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
	compartment_compartment=1.0;
% Parameter:   id =  v, name = v
	global_par_v=10.0;
% Parameter:   id =  d, name = d
	global_par_d=1.0;

% Reaction: id = r1, name = resource production
	reaction_r1=global_par_v;

% Reaction: id = r2, name = resource consumption and cell growth 1
	reaction_r2=x(2)*x(1)/(1+x(1));

% Reaction: id = r3, name = resource consumption and cell growth 2
	reaction_r3=x(3)*20*x(1)/(1+x(1));

% Reaction: id = r4, name = cell death 1
	reaction_r4=global_par_d*x(2);

% Reaction: id = r5, name = cell death 2
	reaction_r5=global_par_d*x(3);

%Event: id=
	event_=time >= 15;

	if(event_) 
		x(3)=0.01;
	end

	xdot=zeros(3,1);
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_r1) + (-1.0 * reaction_r2) + (-1.0 * reaction_r3));
	
% Species:   id = N1, name = N1, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 10.0 * reaction_r2) + (-1.0 * reaction_r4));
	
% Species:   id = N2, name = N2, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_r3) + (-1.0 * reaction_r5));
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


