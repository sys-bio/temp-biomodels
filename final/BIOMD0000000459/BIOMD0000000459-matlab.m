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
% Model name = Liebal2012 - B.subtilis post-transcriptional instability model
%
% is http://identifiers.org/biomodels.db/MODEL1302080001
% is http://identifiers.org/biomodels.db/BIOMD0000000459
% isDescribedBy http://identifiers.org/pubmed/22511268
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.0;
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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  kbd, name = kbd
	global_par_kbd=0.0164812;
% Parameter:   id =  kbs, name = kbs
	global_par_kbs=100.0;
% Parameter:   id =  kxd, name = kxd
	global_par_kxd=1.08559E-9;
% Parameter:   id =  kxs, name = kxs
	global_par_kxs=9.32517E-8;
% Parameter:   id =  kzd, name = kzd
	global_par_kzd=1.34615E-7;
% Parameter:   id =  kzs, name = kzs
	global_par_kzs=9.03538E-7;
% Parameter:   id =  kzx, name = kzx
	global_par_kzx=0.00317772;

% Reaction: id = v1, name = v1
	reaction_v1=const_species_IPTG*global_par_kbs-global_par_kbd*x(1);

% Reaction: id = v2, name = v2
	reaction_v2=global_par_kzs*x(1)-x(2)*(global_par_kzd+global_par_kzx*x(3));

% Reaction: id = v3, name = v3
	reaction_v3=global_par_kxs*x(1)-global_par_kxd*x(3);

% Species:   id = IPTG, name = IPTG, constant	const_species_IPTG=100.0;

	xdot=zeros(3,1);
	
% Species:   id = sigb, name = sigb, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2) + (-1.0 * reaction_v3));
	
% Species:   id = lacz, name = lacz, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_v2));
	
% Species:   id = x, name = x, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_v3));
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


