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
% Model name = Somogyi1990_CaOscillations_SingleCaSpike
%
% is http://identifiers.org/biomodels.db/MODEL8910960676
% is http://identifiers.org/biomodels.db/BIOMD0000000115
% isDescribedBy http://identifiers.org/pubmed/1904060
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 1.0;
	x0(2) = 1.0;


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

% Compartment: id = Cytosol, name = Cytosol, constant
	compartment_Cytosol=1.0;
% Compartment: id = ER, name = Endoplasmic Reticulum, constant
	compartment_ER=1.0;
% Compartment: id = Extracellular, name = Extracellular, constant
	compartment_Extracellular=1.0;
% Parameter:   id =  k, name = k
	global_par_k=0.01;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=10.0;
% Parameter:   id =  n, name = n
	global_par_n=4.0;
% Parameter:   id =  a, name = a
	global_par_a=1.4;
% Parameter:   id =  k1, name = k1
	global_par_k1=2.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=1.0;
% Parameter:   id =  fy, name = fy
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=1.0;
% assignmentRule: variable = fy
	global_par_fy=x(2)^global_par_n/(global_par_a^global_par_n+x(2)^global_par_n);

% Reaction: id = reaction_0000001, name = Ca flux into the cell
	reaction_reaction_0000001=global_par_gamma*compartment_Cytosol;

% Reaction: id = reaction_0000002, name = Ca translocation from ER to Cytosol
	reaction_reaction_0000002=compartment_Cytosol*global_par_k*(x(1)-x(2));

% Reaction: id = reaction_0000003, name = Ca transport from Cytosol to ER
	reaction_reaction_0000003=global_par_k1*x(2)*compartment_ER;

% Reaction: id = reaction_0000004, name = InsP3 channel
	reaction_reaction_0000004=global_par_alpha*global_par_fy*(x(1)-x(2))*compartment_Cytosol;

% Reaction: id = reaction_0000005, name = Ca pumped ouside the cell
	reaction_reaction_0000005=global_par_beta*x(2)*compartment_Extracellular;

	xdot=zeros(2,1);
	
% Species:   id = x, name = Ca_ER, affected by kineticLaw
	xdot(1) = (1/(compartment_ER))*((-1.0 * reaction_reaction_0000002) + ( 1.0 * reaction_reaction_0000003) + (-1.0 * reaction_reaction_0000004));
	
% Species:   id = y, name = Ca_Cyt, affected by kineticLaw
	xdot(2) = (1/(compartment_Cytosol))*(( 1.0 * reaction_reaction_0000001) + ( 1.0 * reaction_reaction_0000002) + (-1.0 * reaction_reaction_0000003) + ( 1.0 * reaction_reaction_0000004) + (-1.0 * reaction_reaction_0000005));
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


