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
% Model name = Haffez2017 - RAR interaction with synthetic analogues
%
% is http://identifiers.org/biomodels.db/MODEL1702240000
% is http://identifiers.org/biomodels.db/BIOMD0000000629
% isDescribedBy http://identifiers.org/doi/10.1039/C6MD00680A
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 5.0E-4;
	x0(2) = 0.0;
	x0(3) = 0.0035;
	x0(4) = 30.0;
	x0(5) = 0.0;


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

% Compartment: id = RAR_retinoids, name = Cell, constant
	compartment_RAR_retinoids=1.0;

% Reaction: id = LR_complx, name = Ligand-Receptor complex formation	% Local Parameter:   id =  k1, name = k1
	reaction_LR_complx_k1=0.6;
	% Local Parameter:   id =  k2, name = k2
	reaction_LR_complx_k2=0.1;

	reaction_LR_complx=compartment_RAR_retinoids*(reaction_LR_complx_k1*x(1)*x(3)-reaction_LR_complx_k2*x(2));

% Reaction: id = LRCA_complx, name = Ligand-Receptor-CoActivator complex formation	% Local Parameter:   id =  k1, name = k1
	reaction_LRCA_complx_k1=0.014;
	% Local Parameter:   id =  k2, name = k2
	reaction_LRCA_complx_k2=0.2;

	reaction_LRCA_complx=compartment_RAR_retinoids*(reaction_LRCA_complx_k1*x(2)*x(4)-reaction_LRCA_complx_k2*x(5));

	xdot=zeros(5,1);
	
% Species:   id = L, name = Ligand, affected by kineticLaw
	xdot(1) = (1/(compartment_RAR_retinoids))*((-1.0 * reaction_LR_complx));
	
% Species:   id = LR, name = Ligand-Receptor, affected by kineticLaw
	xdot(2) = (1/(compartment_RAR_retinoids))*(( 1.0 * reaction_LR_complx) + (-1.0 * reaction_LRCA_complx));
	
% Species:   id = R, name = Receptor, affected by kineticLaw
	xdot(3) = (1/(compartment_RAR_retinoids))*((-1.0 * reaction_LR_complx));
	
% Species:   id = CA, name = CoActivator, affected by kineticLaw
	xdot(4) = (1/(compartment_RAR_retinoids))*((-1.0 * reaction_LRCA_complx));
	
% Species:   id = LRCA, name = Ligand-Receptor-CoActivator, affected by kineticLaw
	xdot(5) = (1/(compartment_RAR_retinoids))*(( 1.0 * reaction_LRCA_complx));
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


