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
% Model name = Tyson1991 - Cell Cycle 2 var
%
% is http://identifiers.org/biomodels.db/MODEL6614715255
% is http://identifiers.org/biomodels.db/BIOMD0000000006
% isDescribedBy http://identifiers.org/pubmed/1831270
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;


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
% Parameter:   id =  kappa, name = kappa
	global_par_kappa=0.015;
% Parameter:   id =  k6, name = k6
	global_par_k6=1.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=180.0;
% Parameter:   id =  k4prime, name = k4prime
	global_par_k4prime=0.018;
% Parameter:   id =  alpha, name = alpha
% rateRule: variable = u
x(2) = x(5);
% assignmentRule: variable = z
	x(3)=x(4)-x(2);
% rateRule: variable = v
x(4) = x(6);
% assignmentRule: variable = alpha
	global_par_alpha=global_par_k4prime/global_par_k4;

% Reaction: id = Reaction1
	reaction_Reaction1=global_par_kappa;

% Reaction: id = Reaction2
	reaction_Reaction2=global_par_k6*x(2);

% Reaction: id = Reaction3
	reaction_Reaction3=global_par_k4*x(3)*(global_par_k4prime/global_par_k4+x(2)^2);

	xdot=zeros(6,1);
	% rateRule: variable = u
	xdot(5) = global_par_k4*(x(4)-x(2))*(global_par_alpha+x(2)^2)-global_par_k6*x(2);
	% rateRule: variable = v
	xdot(6) = global_par_kappa-global_par_k6*x(2);
	
% Species:   id = EmptySet, name = EmptySet
%WARNING speciesID: EmptySet, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = u, name = u, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = z, name = z, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = v, name = v, involved in a rule 	xdot(4) = x(4);
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


