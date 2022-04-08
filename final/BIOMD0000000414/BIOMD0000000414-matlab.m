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
% Model name = Band2012_DII-Venus_ReducedModel
%
% is http://identifiers.org/biomodels.db/MODEL1203230001
% is http://identifiers.org/biomodels.db/BIOMD0000000414
% isDescribedBy http://identifiers.org/pubmed/22393022
%


function main()
%Initial conditions vector
	x0=zeros(1,1);
	x0(1) = 1.0;


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
% Parameter:   id =  p1_star, name = p1_star
	global_par_p1_star=0.056;
% Parameter:   id =  p2, name = p2
	global_par_p2=0.0053;
% Parameter:   id =  lambda_star, name = lambda_star
	global_par_lambda_star=0.52;
% Parameter:   id =  qj_star, name = qj_star
	global_par_qj_star=0.16;

% Reaction: id = VENUSproduction
	reaction_VENUSproduction=global_par_p2;

% Reaction: id = VENUSdecayduetophotobleaching
	reaction_VENUSdecayduetophotobleaching=global_par_lambda_star*global_par_p2*x(1);

% Reaction: id = VENUSdecayduetoauxin
	reaction_VENUSdecayduetoauxin=global_par_p2*x(1)/(global_par_p1_star*x(1)+global_par_qj_star);

	xdot=zeros(1,1);
	
% Species:   id = VENUS, name = VENUS, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_VENUSproduction) + (-1.0 * reaction_VENUSdecayduetophotobleaching) + (-1.0 * reaction_VENUSdecayduetoauxin));
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


