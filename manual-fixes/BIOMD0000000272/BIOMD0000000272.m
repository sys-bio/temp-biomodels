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
% Model name = Becker2010_EpoR_AuxiliaryModel
%
% is http://identifiers.org/biomodels.db/MODEL1005260001
% is http://identifiers.org/biomodels.db/BIOMD0000000272
% isDescribedBy http://identifiers.org/pubmed/20488988
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 76.0;
	x0(2) = 999.293;
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

% Compartment: id = medium, name = medium, constant
	compartment_medium=1.0;
% Compartment: id = cellsurface, name = cellsurface, constant
	compartment_cellsurface=1.0;
% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  kt, name = kt
	global_par_kt=0.0329366;
% Parameter:   id =  Bmax_SAv, name = Bmax_SAv
	global_par_Bmax_SAv=76.0;
% Parameter:   id =  kon_SAv, name = kon_SAv
	global_par_kon_SAv=2.29402E-6;
% Parameter:   id =  koff_SAv, name = koff_SAv
	global_par_koff_SAv=0.00679946;
% Parameter:   id =  kex_SAv, name = kex_SAv
	global_par_kex_SAv=0.01101;
% Parameter:   id =  kdi, name = kdi
	global_par_kdi=0.00317871;
% Parameter:   id =  kde, name = kde
	global_par_kde=0.0164042;
% Parameter:   id =  SAv_medium, name = SAv_medium
% Parameter:   id =  SAv_cells, name = SAv_cells
% assignmentRule: variable = SAv_medium
	global_par_SAv_medium=x(2)+x(6);
% assignmentRule: variable = SAv_cells
	global_par_SAv_cells=x(4)+x(5);

% Reaction: id = reaction_1
	reaction_reaction_1=global_par_kt*global_par_Bmax_SAv*compartment_cell;

% Reaction: id = reaction_2
	reaction_reaction_2=global_par_kt*x(1)*compartment_cell;

% Reaction: id = reaction_3
	reaction_reaction_3=global_par_kon_SAv*x(2)*x(1)*compartment_cell;

% Reaction: id = reaction_4
	reaction_reaction_4=global_par_koff_SAv*x(3)*compartment_cell;

% Reaction: id = reaction_5
	reaction_reaction_5=global_par_kt*x(3)*compartment_cell;

% Reaction: id = reaction_6
	reaction_reaction_6=global_par_kex_SAv*x(4)*compartment_cell;

% Reaction: id = reaction_7
	reaction_reaction_7=global_par_kdi*x(4)*compartment_cell;

% Reaction: id = reaction_8
	reaction_reaction_8=global_par_kde*x(4)*compartment_cell;

	xdot=zeros(6,1);
	
% Species:   id = EpoR, name = EpoR, affected by kineticLaw
	xdot(1) = (1/(compartment_cellsurface))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4));
	
% Species:   id = SAv, name = SAv, affected by kineticLaw
	xdot(2) = (1/(compartment_medium))*((-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_6));
	
% Species:   id = SAv_EpoR, name = SAv_EpoR, affected by kineticLaw
	xdot(3) = (1/(compartment_cellsurface))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5));
	
% Species:   id = SAv_EpoRi, name = SAv_EpoRi, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
	
% Species:   id = dSAvi, name = dSAvi, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_7));
	
% Species:   id = dSAve, name = dSAve, affected by kineticLaw
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


