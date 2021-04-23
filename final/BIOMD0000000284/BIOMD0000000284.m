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
% Model name = Hofmeyer1986_SeqFb_Proc_AA_Synthesis
%
% is http://identifiers.org/biomodels.db/MODEL1010190003
% is http://identifiers.org/biomodels.db/BIOMD0000000284
% isDescribedBy http://identifiers.org/pubmed/3450367
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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;

% Reaction: id = R1, name = R1
	reaction_R1=compartment_cell*(10*const_species_X-x(1))/(1+const_species_X+x(1)+x(2)^2);

% Reaction: id = R2, name = R2
	reaction_R2=compartment_cell*(2*x(1)-x(2))/(1+x(1)+x(2));

% Reaction: id = R3, name = R3
	reaction_R3=compartment_cell*(x(2)-x(3))/(1+x(2)+x(3)+x(4)^2);

% Reaction: id = R4, name = R4
	reaction_R4=compartment_cell*(5*x(3)-x(4))/(1+x(3)+x(4));

% Reaction: id = R5, name = R5
	reaction_R5=compartment_cell*(10*x(4)-const_species_Y)/(1+x(4)+const_species_Y);

% Reaction: id = R6, name = R6
	reaction_R6=compartment_cell*(x(2)-x(5))/(1+x(2)+x(5)+x(6)^2);

% Reaction: id = R7, name = R7
	reaction_R7=compartment_cell*(5*x(5)-x(6))/(1+x(5)+x(6));

% Reaction: id = R8, name = R8
	reaction_R8=compartment_cell*(10*x(6)-const_species_Z)/(1+x(6)+const_species_Z);

% Species:   id = X, name = X, constant	const_species_X=10.0;

% Species:   id = Y, name = Y, constant	const_species_Y=2.0;

% Species:   id = Z, name = Z, constant	const_species_Z=1.0;

	xdot=zeros(6,1);
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2));
	
% Species:   id = B, name = B, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R6));
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_R3) + (-1.0 * reaction_R4));
	
% Species:   id = D, name = D, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_R4) + (-1.0 * reaction_R5));
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R7));
	
% Species:   id = F, name = F, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_R7) + (-1.0 * reaction_R8));
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


