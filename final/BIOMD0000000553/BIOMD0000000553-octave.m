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
% Model name = Ehrenstein1997 - The choline-leakage hypothesis in Alzheimer's disease
%
% is http://identifiers.org/biomodels.db/MODEL1410200000
% is http://identifiers.org/biomodels.db/BIOMD0000000553
% isDescribedBy http://identifiers.org/pubmed/9284295
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 50.0;
	x0(2) = 0.0;
	x0(3) = 1.0;


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

% Compartment: id = Brain, name = Brain, constant
	compartment_Brain=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.007;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.33;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.0042;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.01;
% assignmentRule: variable = aRel
	x(3)=x(1)/50;

% Reaction: id = Loss_of_intracellular_choline, name = Loss of intracellular choline
	reaction_Loss_of_intracellular_choline=compartment_Brain*Loss_of_intracellular_choline_0(global_par_k1, x(1), x(2));

% Reaction: id = Effect_of_extracellular_ACh, name = Effect of extracellular ACh
	reaction_Effect_of_extracellular_ACh=compartment_Brain*Effect_of_extracellular_ACh_0(global_par_k3, x(1));

% Reaction: id = Decrease_in_the_extracellular_concentration_of_beta_amyloid, name = Decrease in the extracellular concentration of beta-amyloid
	reaction_Decrease_in_the_extracellular_concentration_of_beta_amyloid=compartment_Brain*Decrease_in_the_extracellular_concentration_of_beta_amyloid_0(global_par_k4, x(2));

	xdot=zeros(3,1);
	
% Species:   id = a, name = a, affected by kineticLaw
	xdot(1) = (1/(compartment_Brain))*((-1.0 * reaction_Loss_of_intracellular_choline));
	
% Species:   id = b, name = b, affected by kineticLaw
	xdot(2) = (1/(compartment_Brain))*(( 1.0 * reaction_Abeta_formation_from_APP) + (-1.0 * reaction_Effect_of_extracellular_ACh) + (-1.0 * reaction_Decrease_in_the_extracellular_concentration_of_beta_amyloid));
	
% Species:   id = aRel, name = aRel, involved in a rule 	xdot(3) = x(3);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Loss_of_intracellular_choline_0(k1,a,b), z=(k1*a*b);end

function z=Effect_of_extracellular_ACh_0(k3,a), z=(k3*a);end

function z=Decrease_in_the_extracellular_concentration_of_beta_amyloid_0(k4,b), z=(k4*b);end

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


