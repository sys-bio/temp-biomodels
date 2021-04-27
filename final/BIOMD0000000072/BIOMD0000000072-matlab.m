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
% Model name = Yi2003_GproteinCycle
%
% is http://identifiers.org/biomodels.db/MODEL9468910329
% is http://identifiers.org/biomodels.db/BIOMD0000000072
% isDescribedBy http://identifiers.org/pubmed/12960402
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 6.02E17;
	x0(2) = 10000.0;
	x0(3) = 7000.0;
	x0(4) = 3000.0;
	x0(5) = 3000.0;
	x0(6) = 0.0;
	x0(7) = 0.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;

% Reaction: id = reaction_0, name = Ligand-Receptor Association	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_0_k1=3.32E-18;
	% Local Parameter:   id =  k2, name = k2
	reaction_reaction_0_k2=0.01;

	reaction_reaction_0=compartment_cell*(reaction_reaction_0_k1*x(1)*x(2)-reaction_reaction_0_k2*x(7));

% Reaction: id = reaction_1, name = Receptor Synthesis	% Local Parameter:   id =  v, name = v
	reaction_reaction_1_v=4.0;

	reaction_reaction_1=compartment_cell*reaction_reaction_1_v;

% Reaction: id = reaction_2, name = Receptor Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=4.0E-4;

	reaction_reaction_2=compartment_cell*reaction_reaction_2_k1*x(2);

% Reaction: id = reaction_3, name = Heterotrimeric G-Protein Formation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=1.0;

	reaction_reaction_3=compartment_cell*reaction_reaction_3_k1*x(5)*x(4);

% Reaction: id = reaction_4, name = G-protein Activation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_4_k1=1.0E-5;

	reaction_reaction_4=compartment_cell*reaction_reaction_4_k1*x(7)*x(3);

% Reaction: id = reaction_5, name = Receptor-Ligand Degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_5_k1=0.004;

	reaction_reaction_5=compartment_cell*reaction_reaction_5_k1*x(7);

% Reaction: id = reaction_6, name = G-protein Inactivation 	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_6_k1=0.11;

	reaction_reaction_6=compartment_cell*reaction_reaction_6_k1*x(6);

	xdot=zeros(7,1);
	
% Species:   id = L, name = Ligand, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_reaction_0));
	
% Species:   id = R, name = Receptor, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*((-1.0 * reaction_reaction_0) + ( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2));
	
% Species:   id = G, name = Inactive heterotrimeric G-protein, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4));
	
% Species:   id = Gbg, name = Free levels of G-beta-gamma, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*((-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4));
	
% Species:   id = Gd, name = G-alpha-GDP, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*((-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_6));
	
% Species:   id = Ga, name = G-alpha-GTP, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_6));
	
% Species:   id = RL, name = Receptor-Ligand, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_0) + (-1.0 * reaction_reaction_5));
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


