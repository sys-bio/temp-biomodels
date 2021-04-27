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
% Model name = Scheper1999_CircClock
%
% is http://identifiers.org/biomodels.db/MODEL6618241436
% is http://identifiers.org/biomodels.db/BIOMD0000000024
% isDescribedBy http://identifiers.org/pubmed/9870936
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 1.0E-15;
	x0(2) = 1.0E-15;


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

% Compartment: id = compartment_0000004, name = cytoplasm, constant
	compartment_compartment_0000004=1.0E-15;

% Reaction: id = TC, name = mRNA production	% Local Parameter:   id =  rM, name = rM
	reaction_TC_rM=1.0;
	% Local Parameter:   id =  k, name = k
	reaction_TC_k=1.0;
	% Local Parameter:   id =  n, name = n
	reaction_TC_n=2.0;

	reaction_TC=compartment_compartment_0000004*reaction_TC_rM/(1+(x(2)/reaction_TC_k)^reaction_TC_n);

% Reaction: id = TL, name = protein production	% Local Parameter:   id =  rP, name = rP
	reaction_TL_rP=1.0;
	% Local Parameter:   id =  m, name = m
	reaction_TL_m=3.0;
	% Local Parameter:   id =  parameter_0000009, name = tau
	reaction_TL_parameter_0000009=4.0;

	reaction_TL=compartment_compartment_0000004*reaction_TL_rP*delay(x(1), reaction_TL_parameter_0000009)^reaction_TL_m;

% Reaction: id = Md, name = messenger degradation	% Local Parameter:   id =  qM, name = qM
	reaction_Md_qM=0.21;

	reaction_Md=compartment_compartment_0000004*reaction_Md_qM*x(1);

% Reaction: id = Pd, name = protein degradation	% Local Parameter:   id =  qP, name = qP
	reaction_Pd_qP=0.21;

	reaction_Pd=compartment_compartment_0000004*reaction_Pd_qP*x(2);

% Species:   id = EmptySet, name = EmptySet, constant	const_species_EmptySet=0.0;

	xdot=zeros(2,1);
	
% Species:   id = M, name = mRNA, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_0000004))*(( 1.0 * reaction_TC) + (-1.0 * reaction_Md));
	
% Species:   id = P, name = protein, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_0000004))*(( 1.0 * reaction_TL) + (-1.0 * reaction_Pd));
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


