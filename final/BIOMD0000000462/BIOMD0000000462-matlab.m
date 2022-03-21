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
% Model name = Proctor2012 - Role of Amyloid-beta dimers in aggregation formation
%
% is http://identifiers.org/biomodels.db/MODEL1202290000
% is http://identifiers.org/biomodels.db/BIOMD0000000462
% isDescribedBy http://identifiers.org/pubmed/22748062
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 1000.0;


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
% Parameter:   id =  kprod, name = kprod
	global_par_kprod=1.86E-5;
% Parameter:   id =  kdeg, name = kdeg
	global_par_kdeg=2.1E-5;
% Parameter:   id =  kdimer, name = kdimer
	global_par_kdimer=1.1783E-7;
% Parameter:   id =  kdedimer, name = kdedimer
	global_par_kdedimer=8.4655E-6;
% Parameter:   id =  kdisagg, name = kdisagg
	global_par_kdisagg=5.4357E-5;
% Parameter:   id =  kpf, name = kpf
	global_par_kpf=2.785E-6;
% Parameter:   id =  kpg, name = kpg
	global_par_kpg=0.00574;
% Parameter:   id =  kpghalf, name = kpghalf
	global_par_kpghalf=4.0;
% Parameter:   id =  kdegNep, name = kdegNep
	global_par_kdegNep=1.8E-10;

% Reaction: id = Abetaproduction
	reaction_Abetaproduction=global_par_kprod*const_species_Source;

% Reaction: id = AbetaDegradation
	reaction_AbetaDegradation=global_par_kdeg*x(1)*x(4)*0.001;

% Reaction: id = AbetaDimerisation
	reaction_AbetaDimerisation=global_par_kdimer*x(1)*(x(1)-1)*0.5;

% Reaction: id = AbetaDedimerisation
	reaction_AbetaDedimerisation=global_par_kdedimer*x(2);

% Reaction: id = AbetaPlaqueFormation
	reaction_AbetaPlaqueFormation=global_par_kpf*x(2)*(x(2)-1)*0.5;

% Reaction: id = AbetaPlaqueGrowth
	reaction_AbetaPlaqueGrowth=global_par_kpg*x(1)*x(3)^2/(global_par_kpghalf^2+x(3)^2);

% Reaction: id = AbetaDisaggregation
	reaction_AbetaDisaggregation=global_par_kdisagg*x(3);

% Reaction: id = NepDegradation
	reaction_NepDegradation=global_par_kdegNep*x(4);

% Species:   id = Source, name = Source, constant	const_species_Source=1.0;

% Species:   id = Sink, name = Sink, constant	const_species_Sink=1.0;

	xdot=zeros(4,1);
	
% Species:   id = Abeta, name = AbetaMonomer, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_Abetaproduction) + (-1.0 * reaction_AbetaDegradation) + (-2.0 * reaction_AbetaDimerisation) + ( 2.0 * reaction_AbetaDedimerisation) + (-1.0 * reaction_AbetaPlaqueGrowth) + ( 1.0 * reaction_AbetaDisaggregation);
	
% Species:   id = AbDim, name = AbetaDimer, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_AbetaDimerisation) + (-1.0 * reaction_AbetaDedimerisation) + (-2.0 * reaction_AbetaPlaqueFormation);
	
% Species:   id = AbP, name = AbetaPlaque, affected by kineticLaw
	xdot(3) = ( 4.0 * reaction_AbetaPlaqueFormation) + (-1.0 * reaction_AbetaPlaqueGrowth) + ( 2.0 * reaction_AbetaPlaqueGrowth) + (-1.0 * reaction_AbetaDisaggregation);
	
% Species:   id = Nep, name = Neprilysin, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_AbetaDegradation) + ( 1.0 * reaction_AbetaDegradation) + (-1.0 * reaction_NepDegradation);
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


