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
% Model name = Chen2011/1 - bone marrow invasion absolute model
%
% is http://identifiers.org/biomodels.db/MODEL1908130002
% is http://identifiers.org/biomodels.db/BIOMD0000000793
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 0.6;
	x0(2) = 1.0E-4;


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

% Compartment: id = bone_marrow, name = bone marrow, constant
	compartment_bone_marrow=1.0;
% Parameter:   id =  b1, name = b1
	global_par_b1=0.2;
% Parameter:   id =  u1, name = u1
	global_par_u1=0.1;
% Parameter:   id =  b2, name = b2
	global_par_b2=0.8;
% Parameter:   id =  u2, name = u2
	global_par_u2=0.1;

% Reaction: id = HSC_growth, name = HSC growth
	reaction_HSC_growth=compartment_bone_marrow*hg(global_par_b1, x(1));

% Reaction: id = HSC_death, name = HSC death
	reaction_HSC_death=compartment_bone_marrow*global_par_u1*x(1);

% Reaction: id = Tumor_growth, name = Tumor growth
	reaction_Tumor_growth=compartment_bone_marrow*tg(global_par_b2, x(2), x(1));

% Reaction: id = Tumor_death, name = Tumor death
	reaction_Tumor_death=compartment_bone_marrow*global_par_u2*x(2);

% Reaction: id = Tumor_inhibition, name = Tumor inhibition
	reaction_Tumor_inhibition=compartment_bone_marrow*ti(global_par_b1, x(2), x(1));

	xdot=zeros(2,1);
	
% Species:   id = H, name = H, affected by kineticLaw
	xdot(1) = (1/(compartment_bone_marrow))*(( 1.0 * reaction_HSC_growth) + (-1.0 * reaction_HSC_death));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(2) = (1/(compartment_bone_marrow))*(( 1.0 * reaction_Tumor_growth) + (-1.0 * reaction_Tumor_death) + (-1.0 * reaction_Tumor_inhibition));
end

function z=hg(b1,H), z=(b1*H*(1-H));end

function z=tg(b2,T,H), z=(b2*T*(1-T-H));end

function z=ti(b1,T,H), z=(b1*T*H);end

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


