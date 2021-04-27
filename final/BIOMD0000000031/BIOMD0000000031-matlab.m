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
% Model name = Markevich2004_MAPK_orderedMM2kinases
%
% is http://identifiers.org/biomodels.db/MODEL6618738800
% is http://identifiers.org/biomodels.db/BIOMD0000000031
% isDescribedBy http://identifiers.org/pubmed/14744999
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 500.0;
	x0(2) = 0.0;
	x0(3) = 0.0;


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

% Compartment: id = uVol, name = uVol, constant
	compartment_uVol=1.0;
% Parameter:   id =  k1cat, name = k1cat
	global_par_k1cat=0.01;
% Parameter:   id =  Km1, name = Km1
	global_par_Km1=50.0;
% Parameter:   id =  k2cat, name = k2cat
	global_par_k2cat=15.0;
% Parameter:   id =  Km2, name = Km2
	global_par_Km2=500.0;
% Parameter:   id =  k3cat, name = k3cat
	global_par_k3cat=0.084;
% Parameter:   id =  Km3, name = Km3
	global_par_Km3=5.0;
% Parameter:   id =  k4cat, name = k4cat
	global_par_k4cat=0.06;
% Parameter:   id =  Km4, name = Km4
	global_par_Km4=18.0;
% Parameter:   id =  Km5, name = Km5
	global_par_Km5=78.0;

% Reaction: id = v1, name = phosphorylation of MAPK
	reaction_v1=compartment_uVol*global_par_k1cat*const_species_MAPKK1*x(1)/global_par_Km1/(1+x(1)/global_par_Km1);

% Reaction: id = v2, name = phosphorylation of P-MAPK
	reaction_v2=compartment_uVol*global_par_k2cat*const_species_MAPKK2*x(2)/global_par_Km2/(1+x(2)/global_par_Km2);

% Reaction: id = v3, name = dephosphorylation of PP-MAPK
	reaction_v3=compartment_uVol*global_par_k3cat*const_species_MKP3*x(3)/global_par_Km3/(1+x(3)/global_par_Km3+x(2)/global_par_Km4+x(1)/global_par_Km5);

% Reaction: id = v4, name = dephosphorylation of P-MAPK
	reaction_v4=compartment_uVol*global_par_k4cat*const_species_MKP3*x(2)/global_par_Km4/(1+x(3)/global_par_Km3+x(2)/global_par_Km4+x(1)/global_par_Km5);

% Species:   id = MAPKK1, name = MAPKK1, constant	const_species_MAPKK1=100.0;

% Species:   id = MAPKK2, name = MAPKK2, constant	const_species_MAPKK2=1.0;

% Species:   id = MKP3, name = MKP3, constant	const_species_MKP3=100.0;

	xdot=zeros(3,1);
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(1) = (1/(compartment_uVol))*((-1.0 * reaction_v1) + ( 1.0 * reaction_v4));
	
% Species:   id = Mp, name = Mp, affected by kineticLaw
	xdot(2) = (1/(compartment_uVol))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2) + ( 1.0 * reaction_v3) + (-1.0 * reaction_v4));
	
% Species:   id = Mpp, name = Mpp, affected by kineticLaw
	xdot(3) = (1/(compartment_uVol))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v3));
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


