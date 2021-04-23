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
% Model name = Reddyhoff2015 - Acetaminophen metabolism and toxicity
%
% is http://identifiers.org/biomodels.db/MODEL1603080000
% is http://identifiers.org/biomodels.db/BIOMD0000000609
% isDescribedBy http://identifiers.org/pubmed/26348886
% isDerivedFrom http://identifiers.org/pubmed/26966512
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 1.325E-14;
	x0(2) = 6.87E-15;
	x0(3) = 0.0;
	x0(4) = 1.32E-13;
	x0(5) = 0.0;


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
% Parameter:   id =  P0, name = P0
	global_par_P0=1.32E-13;
% Parameter:   id =  dG, name = dG
	global_par_dG=2.0;
% Parameter:   id =  bG, name = bG
	global_par_bG=1.374E-14;
% Parameter:   id =  kGSH, name = kGSH
	global_par_kGSH=1.6E18;
% Parameter:   id =  kG, name = kG
	global_par_kG=2.99;
% Parameter:   id =  kS, name = kS
	global_par_kS=2.26E14;
% Parameter:   id =  bS, name = bS
	global_par_bS=2.65E-14;
% Parameter:   id =  dS, name = dS
	global_par_dS=2.0;
% Parameter:   id =  k450, name = k450
	global_par_k450=0.315;
% Parameter:   id =  kN, name = kN
	global_par_kN=0.0315;
% Parameter:   id =  kPSH, name = kPSH
	global_par_kPSH=110.0;

% Reaction: id = reaction_1, name = R1
	reaction_reaction_1=compartment_compartment*global_par_k450*x(4);

% Reaction: id = R2, name = R2
	reaction_R2=compartment_compartment*global_par_kN*x(3);

% Reaction: id = R3, name = R3
	reaction_R3=compartment_compartment*global_par_kG*x(4);

% Reaction: id = R4, name = R4
	reaction_R4=compartment_compartment*global_par_kPSH*x(3);

% Reaction: id = R5, name = R5
	reaction_R5=compartment_compartment*global_par_kGSH*x(3)*x(2);

% Reaction: id = R6, name = R6
	reaction_R6=compartment_compartment*global_par_dG*x(2);

% Reaction: id = R8, name = R8
	reaction_R8=compartment_compartment*global_par_kS*x(4)*x(1);

% Reaction: id = R9, name = R9
	reaction_R9=compartment_compartment*global_par_dS*x(1);

	xdot=zeros(5,1);
	
% Species:   id = Sulphate__PAPS, name = Sulphate_PAPS, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_R8) + (-1.0 * reaction_R9) + ( 1.0 * reaction_R10));
	
% Species:   id = GSH, name = GSH, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_R5) + (-1.0 * reaction_R6) + ( 1.0 * reaction_R7));
	
% Species:   id = NAPQI, name = NAPQI, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_R2) + (-1.0 * reaction_R4) + (-1.0 * reaction_R5));
	
% Species:   id = Paracetamol_APAP, name = Paracetamol_APAP, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R8));
	
% Species:   id = Protein_adducts, name = Protein_adducts, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_R4));
end

function z=Constant_flux__irreversible(v), z=(v);end

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


