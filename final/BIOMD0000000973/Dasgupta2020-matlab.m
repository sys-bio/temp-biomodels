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
% Model name = Dasgupta2020 - Reduced model of receptor clusturing and aggregation
%
% isDescribedBy http://identifiers.org/pubmed/32604803
% is http://identifiers.org/biomodels.db/MODEL2011030002
% is http://identifiers.org/biomodels.db/BIOMD0000000973
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 10000.0;
	x0(2) = 0.0;


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

% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=2.1E-4;
% Parameter:   id =  k2, name = k2
	global_par_k2=7.5E-6;
% Parameter:   id =  k_1, name = k_1
	global_par_k_1=6.6E-9;
% Parameter:   id =  k_2, name = k_2
	global_par_k_2=0.03;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.16;
% Parameter:   id =  s, name = s
% Parameter:   id =  p0, name = p0
	global_par_p0=10000.0;
% Parameter:   id =  ModelValue_6, name = Initial for p0
	global_par_ModelValue_6=10000.0;
% assignmentRule: variable = s
	global_par_s=(global_par_ModelValue_6-x(1))/x(2);

% Reaction: id = R1, name = R1
	reaction_R1=compartment_Cell*R1_flux(global_par_k1, x(2), x(1));

% Reaction: id = R2, name = R2
	reaction_R2=compartment_Cell*R2_flux(global_par_k2, x(1));

% Reaction: id = R3, name = R3
	reaction_R3=compartment_Cell*R3_flux(global_par_k_1, x(2));

% Reaction: id = R4, name = R4
	reaction_R4=compartment_Cell*R4_flux(global_par_k2, x(1));

% Reaction: id = R5, name = R5
	reaction_R5=compartment_Cell*R5_flux(global_par_k_2, x(2));

% Reaction: id = R6, name = R6
	reaction_R6=compartment_Cell*global_par_k3*x(2);

	xdot=zeros(2,1);
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(1) = (1/(compartment_Cell))*((-1.0 * reaction_R1) + (-1.0 * reaction_R2) + ( 1.0 * reaction_R3));
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*(( 1.0 * reaction_R4) + (-1.0 * reaction_R5) + (-1.0 * reaction_R6));
end

function z=R2_flux(k2,p), z=(2*k2*p^2);end

function z=R3_flux(k_1,n), z=(k_1*n);end

function z=R4_flux(k2,p), z=(k2*p^2);end

function z=R5_flux(k_2,n), z=(k_2*n^2);end

function z=R1_flux(k1,n,p), z=(k1*n*p);end

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


