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
% Model name = Aguilera 2014 - HIV latency. Interaction between HIV proteins and immune response
%
% is http://identifiers.org/biomodels.db/MODEL1503180001
% is http://identifiers.org/biomodels.db/BIOMD0000000573
% isDescribedBy http://identifiers.org/pubmed/24997239
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 1.0;
	x0(2) = 0.0;


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

% Compartment: id = compartment, name = cell, constant
	compartment_compartment=1.0;

% Reaction: id = Kv, name = Kv	% Local Parameter:   id =  Km, name = Km
	reaction_Kv_Km=380.0;
	% Local Parameter:   id =  Vmax, name = Vmax
	reaction_Kv_Vmax=0.134;

	reaction_Kv=compartment_compartment*Michaellis_Menten(x(1), reaction_Kv_Km, reaction_Kv_Vmax);

% Reaction: id = Kcv, name = Kvc	% Local Parameter:   id =  k1, name = k1
	reaction_Kcv_k1=0.0295;

	reaction_Kcv=compartment_compartment*reaction_Kcv_k1*x(1)*x(2);

% Reaction: id = Kdv, name = Kdv	% Local Parameter:   id =  k1, name = k1
	reaction_Kdv_k1=6.85E-5;

	reaction_Kdv=compartment_compartment*reaction_Kdv_k1*x(1);

% Reaction: id = Kvc, name = Kcv	% Local Parameter:   id =  k1, name = k1
	reaction_Kvc_k1=0.927;

	reaction_Kvc=compartment_compartment*reaction_Kvc_k1*x(1)*x(2);

% Reaction: id = Kdc, name = Kdc	% Local Parameter:   id =  k1, name = k1
	reaction_Kdc_k1=5.01E-5;

	reaction_Kdc=compartment_compartment*reaction_Kdc_k1*x(2);

	xdot=zeros(2,1);
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Kb) + (-1.0 * reaction_Kv) + ( 2.0 * reaction_Kv) + (-1.0 * reaction_Kcv) + (-1.0 * reaction_Kdv) + (-1.0 * reaction_Kvc) + ( 1.0 * reaction_Kvc));
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_Kcv) + ( 1.0 * reaction_Kcv) + ( 1.0 * reaction_Kc) + (-1.0 * reaction_Kvc) + (-1.0 * reaction_Kdc));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Michaellis_Menten(substrate,Km,Vmax), z=(Vmax*substrate/(Km+substrate));end

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


