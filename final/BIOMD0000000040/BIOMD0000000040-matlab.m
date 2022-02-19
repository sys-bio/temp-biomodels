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
% Model name = Field1974_Oregonator
%
% is http://identifiers.org/biomodels.db/MODEL6622000424
% is http://identifiers.org/biomodels.db/BIOMD0000000040
% isDescribedBy http://identifiers.org/doi/10.1063/1.1681288
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1.0E-7;
	x0(2) = 0.05;
	x0(3) = 5.0E-11;


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

% Compartment: id = BZ, name = BZ, constant
	compartment_BZ=1.0;
% Parameter:   id =  f, name = f
	global_par_f=1.0;

% Reaction: id = Reaction1, name = M1	% Local Parameter:   id =  k1, name = kM1
	reaction_Reaction1_k1=1.34;

	reaction_Reaction1=x(1)*const_species_BrO3*reaction_Reaction1_k1*compartment_BZ;

% Reaction: id = Reaction2, name = M2	% Local Parameter:   id =  k2, name = kM2
	reaction_Reaction2_k2=1.6E9;

	reaction_Reaction2=x(1)*x(3)*reaction_Reaction2_k2*compartment_BZ;

% Reaction: id = Reaction3, name = M3	% Local Parameter:   id =  k3, name = kM3
	reaction_Reaction3_k3=8000.0;

	reaction_Reaction3=const_species_BrO3*x(3)*reaction_Reaction3_k3*compartment_BZ;

% Reaction: id = Reaction4, name = M4	% Local Parameter:   id =  k4, name = kM4
	reaction_Reaction4_k4=4.0E7;

	reaction_Reaction4=x(3)^2*reaction_Reaction4_k4*compartment_BZ;

% Reaction: id = Reaction5, name = M5	% Local Parameter:   id =  k5, name = kM5
	reaction_Reaction5_k5=1.0;

	reaction_Reaction5=x(2)*reaction_Reaction5_k5*compartment_BZ;

% Species:   id = BrO3, name = BrO3-, constant	const_species_BrO3=0.06;

% Species:   id = HOBr, name = HOBr, constant	const_species_HOBr=0.0;

	xdot=zeros(3,1);
	
% Species:   id = Br, name = Br-, affected by kineticLaw
	xdot(1) = (1/(compartment_BZ))*((-1.0 * reaction_Reaction1) + (-1.0 * reaction_Reaction2) + ( f * reaction_Reaction5));
	
% Species:   id = Ce, name = Ce4+, affected by kineticLaw
	xdot(2) = (1/(compartment_BZ))*(( 1.0 * reaction_Reaction3) + (-1.0 * reaction_Reaction5));
	
% Species:   id = HBrO2, name = HBrO2, affected by kineticLaw
	xdot(3) = (1/(compartment_BZ))*(( 1.0 * reaction_Reaction1) + (-1.0 * reaction_Reaction2) + (-1.0 * reaction_Reaction3) + ( 2.0 * reaction_Reaction3) + (-2.0 * reaction_Reaction4));
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


