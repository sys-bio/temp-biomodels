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
% Model name = Lebeda2008 - BoTN Paralysis (4 step model)
%
% is http://identifiers.org/biomodels.db/MODEL8472829123
% is http://identifiers.org/biomodels.db/BIOMD0000000178
% isDescribedBy http://identifiers.org/pubmed/18551355
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000267
% isDerivedFrom http://identifiers.org/pubmed/6243359
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0;
	x0(2) = 1.0;
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

% Compartment: id = extracellular, name = extracellular, constant
	compartment_extracellular=1.0;
% Compartment: id = endosome, name = endosome, constant
	compartment_endosome=1.0;
% Compartment: id = neuroplasm, name = neuroplasm, constant
	compartment_neuroplasm=1.0;
% Parameter:   id =  tension, name = tension
% assignmentRule: variable = tension
	global_par_tension=1-x(6);
% assignmentRule: variable = BoNT
	x(1)=x(2)+x(3);

% Reaction: id = endocytosis	% Local Parameter:   id =  kT, name = kT
	reaction_endocytosis_kT=0.141;

	reaction_endocytosis=reaction_endocytosis_kT*x(4)*compartment_extracellular;

% Reaction: id = translocation	% Local Parameter:   id =  kL, name = kL
	reaction_translocation_kL=0.013;

	reaction_translocation=reaction_translocation_kL*x(5)*compartment_endosome;

% Reaction: id = binding	% Local Parameter:   id =  kB, name = kB
	reaction_binding_kB=0.058;

	reaction_binding=reaction_binding_kB*x(3)*compartment_extracellular;

% Reaction: id = bulk_movement	% Local Parameter:   id =  kS, name = kS
	reaction_bulk_movement_kS=1.5E-4;

	reaction_bulk_movement=reaction_bulk_movement_kS*x(2)*compartment_extracellular;

	xdot=zeros(6,1);
	
% Species:   id = BoNT, name = tot_free_BoNT/A, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = bulk, name = bulk_BoNT/A, affected by kineticLaw
	xdot(2) = (1/(compartment_extracellular))*((-1.0 * reaction_bulk_movement));
	
% Species:   id = free, name = free_BoNT/A, affected by kineticLaw
	xdot(3) = (1/(compartment_extracellular))*((-1.0 * reaction_binding) + ( 1.0 * reaction_bulk_movement));
	
% Species:   id = bound, name = bound_BoNT/A, affected by kineticLaw
	xdot(4) = (1/(compartment_extracellular))*((-1.0 * reaction_endocytosis) + ( 1.0 * reaction_binding));
	
% Species:   id = translocate, name = transloc_BoNT/A, affected by kineticLaw
	xdot(5) = (1/(compartment_endosome))*(( 1.0 * reaction_endocytosis) + (-1.0 * reaction_translocation));
	
% Species:   id = lytic, name = lytic_BoNT/A, affected by kineticLaw
	xdot(6) = (1/(compartment_neuroplasm))*(( 1.0 * reaction_translocation));
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


