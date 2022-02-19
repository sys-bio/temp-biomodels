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
% Model name = Cucuianu2010 - A hypothetical-mathematical model of acute myeloid leukaemia pathogenesis
%
% isDescribedBy http://identifiers.org/doi/10.1080/17486700902973751
% is http://identifiers.org/biomodels.db/MODEL1908190002
% is http://identifiers.org/biomodels.db/BIOMD0000000799
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 4.5;
	x0(2) = 1.5;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  a, name = a
	global_par_a=0.3;
% Parameter:   id =  b, name = b
	global_par_b=0.5;
% Parameter:   id =  c, name = c
	global_par_c=0.1;
% Parameter:   id =  A, name = A
	global_par_A=0.3;
% Parameter:   id =  B, name = B
	global_par_B=0.5;
% Parameter:   id =  C, name = C
	global_par_C=0.1;

% Reaction: id = Normal_Cells_Growth, name = Normal_Cells_Growth
	reaction_Normal_Cells_Growth=compartment_compartment*Function_for_Normal_Cells_Growth(global_par_a, x(1), global_par_b, x(2));

% Reaction: id = Normal_Cells_Removal, name = Normal_Cells_Removal
	reaction_Normal_Cells_Removal=compartment_compartment*global_par_c*x(1);

% Reaction: id = Leukemic_Cells_Growth, name = Leukemic_Cells_Growth
	reaction_Leukemic_Cells_Growth=compartment_compartment*Function_for_Leukemic_Cells_Growth(global_par_A, x(2), global_par_B, x(1));

% Reaction: id = Leukemic_Cells_Removal, name = Leukemic_Cells_Removal
	reaction_Leukemic_Cells_Removal=compartment_compartment*global_par_C*x(2);

	xdot=zeros(2,1);
	
% Species:   id = x_Normal_Hematopoietic_Stem_Cell, name = x_Normal_Hematopoietic_Stem_Cell, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Normal_Cells_Growth) + (-1.0 * reaction_Normal_Cells_Removal));
	
% Species:   id = y_Leukemic_Cell, name = y_Leukemic_Cell, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Leukemic_Cells_Growth) + (-1.0 * reaction_Leukemic_Cells_Removal));
end

function z=Function_for_Normal_Cells_Growth(a,x,b,y), z=(a*x/(1+b*(x+y)));end

function z=Function_for_Leukemic_Cells_Growth(A,y,B,x), z=(A*y/(1+B*(x+y)));end

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


