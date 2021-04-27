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
% Model name = Cortes2019 - Optimality of the spontaneous prophage induction rate.
%
% isDescribedBy http://identifiers.org/pubmed/31525321
% is http://identifiers.org/biomodels.db/MODEL1912040001
% is http://identifiers.org/biomodels.db/BIOMD0000000884
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 10000.0;
	x0(2) = 990000.0;
	x0(3) = 0.0;


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
% Parameter:   id =  r, name = r
	global_par_r=0.99;
% Parameter:   id =  delta, name = delta
	global_par_delta=1.0E-4;
% Parameter:   id =  p, name = p
	global_par_p=0.3;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=1.0E-7;
% Parameter:   id =  phi, name = phi
% Parameter:   id =  g, name = g
	global_par_g=1.0;
% Parameter:   id =  b, name = b
	global_par_b=150.0;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.001;
% Parameter:   id =  K, name = K
% assignmentRule: variable = K
	global_par_K=x(1)+x(2);
% assignmentRule: variable = phi
	global_par_phi=((global_par_r-global_par_delta)*x(1)+global_par_g*x(2)-global_par_alpha*x(2)*x(3)*(1-global_par_p))/global_par_K;

% Reaction: id = Production_of_Lysogens, name = Production of Lysogens
	reaction_Production_of_Lysogens=compartment_compartment*Function_for_production_of_Lysogens(global_par_r, x(1), global_par_p, global_par_alpha, x(2), x(3));

% Reaction: id = Removal_of_Lysogens, name = Removal of Lysogens
	reaction_Removal_of_Lysogens=compartment_compartment*Fucntion_for_removal_of_Lysogens(global_par_delta, x(1), global_par_phi);

% Reaction: id = Production_of_uninfected_cells, name = Production of uninfected cells
	reaction_Production_of_uninfected_cells=compartment_compartment*Function_for_production_of_uninfected_cells(global_par_g, x(2));

% Reaction: id = Removal_of_uninfected_cells, name = Removal of uninfected cells
	reaction_Removal_of_uninfected_cells=compartment_compartment*Function_for_removal_of_uninfected_cells(global_par_alpha, x(2), x(3), global_par_phi);

% Reaction: id = Production_of_viruses, name = Production of viruses
	reaction_Production_of_viruses=compartment_compartment*Function_for_production_of_viruses(global_par_p, global_par_b, global_par_alpha, x(2), x(3), x(1), global_par_delta);

% Reaction: id = Removal_of_viruses, name = Removal of viruses
	reaction_Removal_of_viruses=compartment_compartment*Function_for_removal_of_viruses(global_par_gamma, x(3), global_par_alpha, x(1));

	xdot=zeros(3,1);
	
% Species:   id = L, name = L, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Production_of_Lysogens) + (-1.0 * reaction_Removal_of_Lysogens));
	
% Species:   id = U, name = U, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Production_of_uninfected_cells) + (-1.0 * reaction_Removal_of_uninfected_cells));
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Production_of_viruses) + (-1.0 * reaction_Removal_of_viruses));
end

function z=Function_for_production_of_Lysogens(r,L,p,alpha,U,V), z=(r*L+p*alpha*U*V);end

function z=Fucntion_for_removal_of_Lysogens(delta,L,phi), z=(delta*L+phi*L);end

function z=Function_for_production_of_uninfected_cells(g,U), z=(g*U);end

function z=Function_for_removal_of_uninfected_cells(alpha,U,V,phi), z=(alpha*U*V+phi*U);end

function z=Function_for_production_of_viruses(p,b,alpha,U,V,L,delta), z=((1-p)*b*alpha*U*V+b*delta*L);end

function z=Function_for_removal_of_viruses(gamma,V,alpha,L), z=(gamma*V+alpha*V*L);end

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


