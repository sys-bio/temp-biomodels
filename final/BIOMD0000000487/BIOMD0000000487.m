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
% Model name = Cao2013 - Application of ABSIS in the the enzymatic futile cycle
%
% is http://identifiers.org/biomodels.db/MODEL1308080007
% is http://identifiers.org/biomodels.db/BIOMD0000000487
% isDescribedBy http://identifiers.org/pubmed/23862966
% isDerivedFrom http://identifiers.org/pubmed/15701703
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.1;
% Parameter:   id =  k4, name = k4
	global_par_k4=1.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=1.0;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.1;

% Reaction: id = re1
	reaction_re1=global_par_k1*x(1)*x(2);

% Reaction: id = re2
	reaction_re2=global_par_k2*x(3);

% Reaction: id = re3
	reaction_re3=global_par_k3*x(3);

% Reaction: id = re4
	reaction_re4=global_par_k4*x(4)*x(5);

% Reaction: id = re5
	reaction_re5=global_par_k5*x(6);

% Reaction: id = re6
	reaction_re6=global_par_k6*x(6);

	xdot=zeros(6,1);
	
% Species:   id = S1, name = S1, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*((-1.0 * reaction_re1) + ( 1.0 * reaction_re2) + ( 1.0 * reaction_re3));
	
% Species:   id = S2, name = S2, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*((-1.0 * reaction_re1) + ( 1.0 * reaction_re2) + ( 1.0 * reaction_re6));
	
% Species:   id = S3, name = S3, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_re1) + (-1.0 * reaction_re2) + (-1.0 * reaction_re3));
	
% Species:   id = S4, name = S4, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*((-1.0 * reaction_re4) + ( 1.0 * reaction_re5) + ( 1.0 * reaction_re6));
	
% Species:   id = S5, name = S5, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*(( 1.0 * reaction_re3) + (-1.0 * reaction_re4) + ( 1.0 * reaction_re5));
	
% Species:   id = S6, name = S6, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_re4) + (-1.0 * reaction_re5) + (-1.0 * reaction_re6));
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


