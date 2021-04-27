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
% Model name = Chance1952_Catalase_Mechanism
%
% is http://identifiers.org/biomodels.db/MODEL1010190001
% is http://identifiers.org/biomodels.db/BIOMD0000000282
% isDescribedBy http://identifiers.org/pubmed/14953444
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 1.36;
	x0(2) = 2.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=11.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.0;
% Parameter:   id =  k4_prime, name = k4_prime
	global_par_k4_prime=16.6;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.72;

% Reaction: id = r1, name = r1
	reaction_r1=compartment_cell*(global_par_k1*x(1)*x(2)-global_par_k2*x(3));

% Reaction: id = r2, name = r2
	reaction_r2=compartment_cell*global_par_k4_prime*x(3)*x(2);

% Reaction: id = r3, name = r3
	reaction_r3=compartment_cell*global_par_k4*x(3)*const_species_a;

% Species:   id = a, name = donor AH2, constant	const_species_a=0.0;

	xdot=zeros(5,1);
	
% Species:   id = e, name = enzyme E (catalase), affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_r1) + ( 1.0 * reaction_r2) + ( 1.0 * reaction_r3));
	
% Species:   id = x, name = substrate S (hydrogen peroxide), affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_r1) + (-1.0 * reaction_r2));
	
% Species:   id = p, name = enzyme-substrate complex ES (catalase - hydrogen peroxide), affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_r1) + (-1.0 * reaction_r2) + (-1.0 * reaction_r3));
	
% Species:   id = p1, name = product 1, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_r2));
	
% Species:   id = p2, name = product 2, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_r3));
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


