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
% Model name = Jenner2019 - Oncolytic virotherapy for tumours following a Gompertz growth law
%
% isDescribedBy http://identifiers.org/pubmed/31400344
% isDerivedFrom http://identifiers.org/pubmed/29644518
% is http://identifiers.org/biomodels.db/MODEL1911120002
% is http://identifiers.org/biomodels.db/BIOMD0000000850
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 75.0;
	x0(2) = 100.0;
	x0(3) = 10.0;


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
% Parameter:   id =  m, name = m
	global_par_m=0.1;
% Parameter:   id =  K, name = K
	global_par_K=100.0;
% Parameter:   id =  xi, name = xi
	global_par_xi=0.01;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.1;

% Reaction: id = Tumor_Growth, name = Tumor_Growth
	reaction_Tumor_Growth=compartment_compartment*Function_for_Tumor_Growth(global_par_m, global_par_K, x(1));

% Reaction: id = Conversion_Uninfected_to_Infected, name = Conversion_Uninfected_to_Infected
	reaction_Conversion_Uninfected_to_Infected=compartment_compartment*Function_for_Conversion_Uninfected_to_Infected(x(1), x(3), x(2));

% Reaction: id = Tumor_Cell_Death, name = Tumor_Cell_Death
	reaction_Tumor_Cell_Death=compartment_compartment*global_par_xi*x(2);

% Reaction: id = Viral_Decay, name = Viral_Decay
	reaction_Viral_Decay=compartment_compartment*global_par_gamma*x(3);

	xdot=zeros(3,1);
	
% Species:   id = U, name = U, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Growth) + (-1.0 * reaction_Conversion_Uninfected_to_Infected));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Conversion_Uninfected_to_Infected) + (-1.0 * reaction_Tumor_Cell_Death));
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Cell_Death) + (-1.0 * reaction_Viral_Decay));
end

function z=Function_for_Conversion_Uninfected_to_Infected(U,V,I), z=(U*V/(U+I));end

function z=Function_for_Tumor_Growth(m,K,U), z=(m*log(K/U)*U);end

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


