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
% Model name = Simon2019 - NIK-dependent p100 processing into p52, Michaelis-Menten, SBML 2v4
%
% isDescribedBy http://identifiers.org/pubmed/31048505
% is http://identifiers.org/biomodels.db/MODEL1903280001
% is http://identifiers.org/biomodels.db/BIOMD0000000866
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 10.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  p52_uM, name = p52_uM
% assignmentRule: variable = p52_uM
	global_par_p52_uM=x(2)/1000;

% Reaction: id = p100_mRNA_Expressions, name = p100 mRNA Expressions	% Local Parameter:   id =  k1, name = k1
	reaction_p100_mRNA_Expressions_k1=0.2;

	reaction_p100_mRNA_Expressions=compartment_compartment*reaction_p100_mRNA_Expressions_k1*const_species_p100t;

% Reaction: id = p100_processing, name = p100 processing	% Local Parameter:   id =  Km, name = Km
	reaction_p100_processing_Km=10.0;
	% Local Parameter:   id =  kcat, name = kcat
	reaction_p100_processing_kcat=0.05;

	reaction_p100_processing=compartment_compartment*MM_Kcat_1(reaction_p100_processing_Km, x(3), reaction_p100_processing_kcat, x(1));

% Reaction: id = p52_degradation, name = p52 degradation	% Local Parameter:   id =  k1, name = k1
	reaction_p52_degradation_k1=3.8E-4;

	reaction_p52_degradation=compartment_compartment*reaction_p52_degradation_k1*x(2);

% Reaction: id = p100_degradation, name = p100 degradation	% Local Parameter:   id =  k1, name = k1
	reaction_p100_degradation_k1=3.8E-4;

	reaction_p100_degradation=compartment_compartment*reaction_p100_degradation_k1*x(1);

% Species:   id = p100t, name = p100t, constant	const_species_p100t=2.5;

	xdot=zeros(3,1);
	
% Species:   id = p100, name = p100, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_p100_mRNA_Expressions) + (-1.0 * reaction_p100_processing) + (-1.0 * reaction_p100_degradation));
	
% Species:   id = p52, name = p52, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_p100_processing) + (-1.0 * reaction_p52_degradation));
	
% Species:   id = NIK, name = NIK
% Warning species is not changed by either rules or reactions
	xdot(3) = ;
end

function z=MM_Kcat_1(Km,NIK,kcat,p100), z=(NIK*kcat*p100/(Km+p100));end

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


