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
% Model name = Becker2010_EpoR_CoreModel
%
% is http://identifiers.org/biomodels.db/MODEL1005260000
% is http://identifiers.org/biomodels.db/BIOMD0000000271
% isDescribedBy http://identifiers.org/pubmed/20488988
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 516.0;
	x0(2) = 2030.19;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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

% Compartment: id = medium, name = medium, constant
	compartment_medium=1.0;
% Compartment: id = cellsurface, name = cellsurface, constant
	compartment_cellsurface=1.0;
% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  kt, name = kt
	global_par_kt=0.0329366;
% Parameter:   id =  Bmax, name = Bmax
	global_par_Bmax=516.0;
% Parameter:   id =  kon, name = kon
	global_par_kon=1.0496E-4;
% Parameter:   id =  koff, name = koff
	global_par_koff=0.0172135;
% Parameter:   id =  ke, name = ke
	global_par_ke=0.0748267;
% Parameter:   id =  kex, name = kex
	global_par_kex=0.00993805;
% Parameter:   id =  kdi, name = kdi
	global_par_kdi=0.00317871;
% Parameter:   id =  kde, name = kde
	global_par_kde=0.0164042;
% Parameter:   id =  Epo_medium, name = Epo_medium
% Parameter:   id =  Epo_cells, name = Epo_cells
% assignmentRule: variable = Epo_medium
	global_par_Epo_medium=x(2)+x(6);
% assignmentRule: variable = Epo_cells
	global_par_Epo_cells=x(4)+x(5);

% Reaction: id = reaction_1
	reaction_reaction_1=global_par_kt*global_par_Bmax*compartment_cell;

% Reaction: id = reaction_2
	reaction_reaction_2=global_par_kt*x(1)*compartment_cell;

% Reaction: id = reaction_3
	reaction_reaction_3=global_par_kon*x(2)*x(1)*compartment_cell;

% Reaction: id = reaction_4
	reaction_reaction_4=global_par_koff*x(3)*compartment_cell;

% Reaction: id = reaction_5
	reaction_reaction_5=global_par_ke*x(3)*compartment_cell;

% Reaction: id = reaction_6
	reaction_reaction_6=global_par_kex*x(4)*compartment_cell;

% Reaction: id = reaction_7
	reaction_reaction_7=global_par_kdi*x(4)*compartment_cell;

% Reaction: id = reaction_8
	reaction_reaction_8=global_par_kde*x(4)*compartment_cell;

	xdot=zeros(6,1);
	
% Species:   id = EpoR, name = EpoR, affected by kineticLaw
	xdot(1) = (1/(compartment_cellsurface))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_6));
	
% Species:   id = Epo, name = Epo, affected by kineticLaw
	xdot(2) = (1/(compartment_medium))*((-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_6));
	
% Species:   id = Epo_EpoR, name = Epo_EpoR, affected by kineticLaw
	xdot(3) = (1/(compartment_cellsurface))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = Epo_EpoRi, name = Epo_EpoRi, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
	
% Species:   id = dEpoi, name = dEpoi, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_7));
	
% Species:   id = dEpoe, name = dEpoe, affected by kineticLaw
	xdot(6) = (1/(compartment_medium))*(( 1.0 * reaction_reaction_8));
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


