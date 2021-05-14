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
% Model name = GiantsosAdams2013 - Growth of glycocalyx under static conditions
%
% hasInstance http://identifiers.org/mamo/MAMO_0000046
% hasInstance http://identifiers.org/biomodels.db/MODEL1609100000
% hasInstance http://identifiers.org/taxonomy/9606
% hasInstance http://identifiers.org/ncit/C540
% isDescribedBy http://identifiers.org/ncit/C540
% isDescribedBy http://identifiers.org/pubmed/23805169
% is http://identifiers.org/biomodels.db/MODEL1609100000
% is http://identifiers.org/biomodels.db/BIOMD0000000830
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.1;
	x0(2) = 0.4;
	x0(3) = 0.4;
	x0(4) = 1.23;
	x0(5) = 0.0;
	x0(6) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;

% Reaction: id = k_golgi, name = De novo HS production for Golgi aparatus	% Local Parameter:   id =  k3, name = k3
	reaction_k_golgi_k3=0.96;

	reaction_k_golgi=compartment_default*Function_for_k3(compartment_default, reaction_k_golgi_k3, const_species_s6);

% Reaction: id = k_endo, name = HS exocytosis from recycling vesicles	% Local Parameter:   id =  k1, name = k1
	reaction_k_endo_k1=0.05;

	reaction_k_endo=compartment_default*Function_for_k1(compartment_default, reaction_k_endo_k1, x(1));

% Reaction: id = k_exo, name = HS endocytosis	% Local Parameter:   id =  k2, name = k2
	reaction_k_exo_k2=0.05;

	reaction_k_exo=compartment_default*Function_for_k2(compartment_default, reaction_k_exo_k2, x(2));

% Reaction: id = k_le, name = HS trafficking to late endosome	% Local Parameter:   id =  k6, name = k6
	reaction_k_le_k6=0.01;

	reaction_k_le=compartment_default*Function_for_k6(compartment_default, reaction_k_le_k6, x(2));

% Reaction: id = k_lys, name = HS trafficking to lysosome	% Local Parameter:   id =  k7, name = k7
	reaction_k_lys_k7=0.01;

	reaction_k_lys=compartment_default*Function_for_k7(compartment_default, reaction_k_lys_k7, x(3));

% Reaction: id = k_deg, name = HS release from lysosome	% Local Parameter:   id =  k8, name = k8
	reaction_k_deg_k8=0.005;

	reaction_k_deg=compartment_default*Function_for_k8(compartment_default, reaction_k_deg_k8, x(4));

% Reaction: id = k_shed, name = HS cell surface shedding	% Local Parameter:   id =  k4, name = k4
	reaction_k_shed_k4=0.033;

	reaction_k_shed=compartment_default*Function_for_k4(compartment_default, reaction_k_shed_k4, x(1));

% Species:   id = s6, name = golgi, constant	const_species_s6=0.05;

	xdot=zeros(6,1);
	
% Species:   id = s1, name = HS surface, affected by kineticLaw
	xdot(1) = (1/(compartment_default))*(( 1.0 * reaction_k_golgi) + (-1.0 * reaction_k_endo) + ( 1.0 * reaction_k_exo) + (-1.0 * reaction_k_shed));
	
% Species:   id = s2, name = early endosome, affected by kineticLaw
	xdot(2) = (1/(compartment_default))*(( 1.0 * reaction_k_endo) + (-1.0 * reaction_k_exo) + (-1.0 * reaction_k_le));
	
% Species:   id = s3, name = late endosome, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_k_le) + (-1.0 * reaction_k_lys));
	
% Species:   id = s4, name = lysosome, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*(( 1.0 * reaction_k_lys) + (-1.0 * reaction_k_deg));
	
% Species:   id = release, name = release, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*(( 1.0 * reaction_k_deg));
	
% Species:   id = shedding, name = shedding, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_k_shed));
end

function z=Function_for_k3(default,k3,s6), z=(s6*default*k3/default);end

function z=Function_for_k1(default,k1,s1), z=(s1*default*k1/default);end

function z=Function_for_k2(default,k2,s2), z=(s2*default*k2/default);end

function z=Function_for_k6(default,k6,s2), z=(s2*default*k6/default);end

function z=Function_for_k7(default,k7,s3), z=(s3*default*k7/default);end

function z=Function_for_k8(default,k8,s4), z=(s4*default*k8/default);end

function z=Function_for_k4(default,k4,s1), z=(s1*default*k4/default);end

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


