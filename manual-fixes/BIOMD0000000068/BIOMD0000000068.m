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
% Model name = Curien2003_MetThr_synthesis
%
% is http://identifiers.org/biomodels.db/MODEL6624146302
% is http://identifiers.org/biomodels.db/BIOMD0000000068
% isDescribedBy http://identifiers.org/pubmed/14622248
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 10000.0;
	x0(6) = 15.0;


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

% Compartment: id = compartment, name = Cell, constant
	compartment_compartment=1.0;

% Reaction: id = v1, name = Phosphohomoserine synthesis	% Local Parameter:   id =  V0, name = V0
	reaction_v1_V0=1.0;

	reaction_v1=compartment_compartment*reaction_v1_V0;

% Reaction: id = vCys, name = Cystathionine gamma-synthase	% Local Parameter:   id =  kcat2, name = kcat2
	reaction_vCys_kcat2=30.0;
	% Local Parameter:   id =  KmCYS, name = KmCYS
	reaction_vCys_KmCYS=460.0;
	% Local Parameter:   id =  KmPHSER, name = KmPHSER
	reaction_vCys_KmPHSER=2500.0;
	% Local Parameter:   id =  Ki2, name = Ki2
	reaction_vCys_Ki2=2000.0;

	reaction_vCys=const_species_CGS*reaction_vCys_kcat2/(1+reaction_vCys_KmCYS/x(6))*x(1)/(x(1)+reaction_vCys_KmPHSER*(1+x(5)/reaction_vCys_Ki2)/(1+reaction_vCys_KmCYS/x(6)));

% Reaction: id = vThr, name = Threonine Synthase	% Local Parameter:   id =  Ki3, name = Ki3
	reaction_vThr_Ki3=1000.0;

	reaction_vThr=const_species_TS*(5.9E-4+0.062*const_species_AdoMet^2.9/(32^2.9+const_species_AdoMet^2.9))*x(1)/(1+x(5)/reaction_vThr_Ki3);

% Species:   id = AdoMet, name = S-adenosylmethionine, constant	const_species_AdoMet=20.0;

% Species:   id = CGS, name = Cystathionine gamma-synthase, constant	const_species_CGS=0.7;

% Species:   id = TS, name = Threonine synthase, constant	const_species_TS=5.0;

	xdot=zeros(6,1);
	
% Species:   id = Phser, name = Phosphohomoserine, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_v1) + (-1.0 * reaction_vCys) + (-1.0 * reaction_vThr));
	
% Species:   id = Thr, name = Threonine
%WARNING speciesID: Thr, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(2) = 0.0;
	
% Species:   id = Cystathionine, name = Cystathionine
%WARNING speciesID: Cystathionine, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(3) = 0.0;
	
% Species:   id = Hser, name = Homoserine
%WARNING speciesID: Hser, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(4) = 0.0;
	
% Species:   id = Phi, name = Inorganic phosphate
%WARNING speciesID: Phi, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(5) = 0.0;
	
% Species:   id = Cys, name = Cysteine
%WARNING speciesID: Cys, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(6) = 0.0;
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


