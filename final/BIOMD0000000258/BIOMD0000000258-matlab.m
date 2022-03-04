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
% Model name = Ortega2006 - bistability from double phosphorylation in signal transduction
%
% is http://identifiers.org/biomodels.db/MODEL1008100000
% is http://identifiers.org/biomodels.db/BIOMD0000000258
% isDescribedBy http://identifiers.org/pubmed/16934033
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.462;
	x0(2) = 0.2;
	x0(3) = 0.338;


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
% Parameter:   id =  r31, name = r31
	global_par_r31=1.0;
% Parameter:   id =  r24, name = r24
	global_par_r24=1.0;
% Parameter:   id =  Chi14, name = Chi14
	global_par_Chi14=1.1;
% Parameter:   id =  Ks1, name = Ks1
	global_par_Ks1=0.01;
% Parameter:   id =  Ks2, name = Ks2
	global_par_Ks2=0.01;
% Parameter:   id =  Ks3, name = Ks3
	global_par_Ks3=0.01;
% Parameter:   id =  Ks4, name = Ks4
	global_par_Ks4=0.01;
% Parameter:   id =  Vm1, name = Vm1
	global_par_Vm1=1.0;
% Parameter:   id =  p, name = p
	global_par_p=1.0;

% Reaction: id = v1, name = v1
	reaction_v1=global_par_Vm1*x(1)/global_par_Ks1/(1+x(1)/global_par_Ks1+x(2)/global_par_Ks3);

% Reaction: id = v2, name = v2
	reaction_v2=global_par_r24*global_par_Vm1/global_par_Chi14*x(2)/global_par_Ks2/(1+x(3)/global_par_Ks4+x(2)/global_par_Ks2);

% Reaction: id = v3, name = v3
	reaction_v3=global_par_r31*global_par_Vm1*x(2)/global_par_Ks3/(1+x(1)/global_par_Ks1+x(2)/global_par_Ks3);

% Reaction: id = v4, name = v4
	reaction_v4=global_par_Vm1/global_par_Chi14*x(3)/global_par_Ks4/(1+x(3)/global_par_Ks4+x(2)/global_par_Ks2);

	xdot=zeros(3,1);
	
% Species:   id = alpha, name = alpha, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_v1) + ( 1.0 * reaction_v2));
	
% Species:   id = beta, name = beta, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2) + (-1.0 * reaction_v3) + ( 1.0 * reaction_v4));
	
% Species:   id = gamma, name = gamma, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v4));
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


