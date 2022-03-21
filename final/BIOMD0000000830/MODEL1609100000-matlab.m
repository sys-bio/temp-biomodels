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
% Model name = Giantsos-Adams2013 - Growth of glycocalyx under shear stress conditions
%
% is http://identifiers.org/biomodels.db/MODEL1609100000
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 0.1;
	x0(2) = 0.4;
	x0(3) = 0.4;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.85;


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

% Reaction: id = k_golgi, name = k3	% Local Parameter:   id =  k3, name = k3
	reaction_k_golgi_k3=0.96;

	reaction_k_golgi=const_species_s6*reaction_k_golgi_k3;

% Reaction: id = k_endo, name = k1	% Local Parameter:   id =  k1, name = k1
	reaction_k_endo_k1=0.025;

	reaction_k_endo=x(1)*reaction_k_endo_k1;

% Reaction: id = k_exo, name = k2	% Local Parameter:   id =  k2, name = k2
	reaction_k_exo_k2=0.075;

	reaction_k_exo=x(2)*reaction_k_exo_k2;

% Reaction: id = k_le, name = k6	% Local Parameter:   id =  k6, name = k6
	reaction_k_le_k6=0.01;

	reaction_k_le=x(2)*reaction_k_le_k6;

% Reaction: id = k_lys, name = k7	% Local Parameter:   id =  k7, name = k7
	reaction_k_lys_k7=0.01;

	reaction_k_lys=x(3)*reaction_k_lys_k7;

% Reaction: id = k_deg, name = k8	% Local Parameter:   id =  k8, name = k8
	reaction_k_deg_k8=0.005;

	reaction_k_deg=x(6)*reaction_k_deg_k8;

% Reaction: id = k_shed, name = k4	% Local Parameter:   id =  k4, name = k4
	reaction_k_shed_k4=0.1;

	reaction_k_shed=x(1)*reaction_k_shed_k4;

% Species:   id = s6, name = golgi, constant	const_species_s6=0.155;

	xdot=zeros(6,1);
	
% Species:   id = s1, name = HS surface, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_k_golgi) + (-1.0 * reaction_k_endo) + ( 1.0 * reaction_k_exo) + (-1.0 * reaction_k_shed);
	
% Species:   id = s2, name = early endosome, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_k_endo) + (-1.0 * reaction_k_exo) + (-1.0 * reaction_k_le);
	
% Species:   id = s3, name = late endosome, affected by kineticLaw
	xdot(3) = (1/(compartment_default))*(( 1.0 * reaction_k_le) + (-1.0 * reaction_k_lys));
	
% Species:   id = s5, name = s5, affected by kineticLaw
	xdot(4) = (1/(compartment_default))*(( 1.0 * reaction_k_deg));
	
% Species:   id = s8, name = s8, affected by kineticLaw
	xdot(5) = (1/(compartment_default))*(( 1.0 * reaction_k_shed));
	
% Species:   id = s4, name = lysosome, affected by kineticLaw
	xdot(6) = (1/(compartment_default))*(( 1.0 * reaction_k_lys) + (-1.0 * reaction_k_deg));
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


