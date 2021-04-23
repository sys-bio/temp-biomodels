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
% Model name = Tan2012 - Antibiotic Treatment, Inoculum Effect
%
% is http://identifiers.org/biomodels.db/MODEL1208300000
% is http://identifiers.org/biomodels.db/BIOMD0000000425
% isDescribedBy http://identifiers.org/pubmed/23047527
%


function main()
%Initial conditions vector
	x0=zeros(1,1);
	x0(1) = 1.0;


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

% Reaction: id = reaction_1, name = reaction_1	% Local Parameter:   id =  alpha, name = alpha
	reaction_reaction_1_alpha=0.001;

	reaction_reaction_1=reaction_reaction_1_alpha;

% Reaction: id = reaction_3, name = reaction_3	% Local Parameter:   id =  kd, name = kd
	reaction_reaction_3_kd=1.0;

	reaction_reaction_3=reaction_reaction_3_kd*x(1);

% Reaction: id = reaction_2, name = reaction_2	% Local Parameter:   id =  kappa, name = kappa
	reaction_reaction_2_kappa=0.5;

	reaction_reaction_2=x(1)/(reaction_reaction_2_kappa+x(1));

% Reaction: id = reaction_4, name = reaction_4	% Local Parameter:   id =  phi, name = phi
	reaction_reaction_4_phi=5.0E-6;
	% Local Parameter:   id =  delta, name = delta
	reaction_reaction_4_delta=1.0E-5;
	% Local Parameter:   id =  gamma, name = gamma
	reaction_reaction_4_gamma=1.0E-5;

	reaction_reaction_4=reaction_reaction_4_phi*x(1)/(reaction_reaction_4_delta+reaction_reaction_4_gamma*x(1));

	xdot=zeros(1,1);
	
% Species:   id = c, name = ribosome concentration, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_4));
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


