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
% Model name = Feizabadi2011/1 - immunodeficiency in cancer core model
%
% isDescribedBy http://identifiers.org/pubmed/21647303
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 1.0;
	x0(2) = 1.0;


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

% Compartment: id = tumor_microenvironment, name = tumor microenvironment, constant
	compartment_tumor_microenvironment=1.0;
% Parameter:   id =  rt, name = rt
	global_par_rt=0.3;
% Parameter:   id =  kt, name = kt
	global_par_kt=1200000.0;
% Parameter:   id =  b, name = b
	global_par_b=1.0;
% Parameter:   id =  r0, name = r0
	global_par_r0=1.0;
% Parameter:   id =  r1, name = r1
	global_par_r1=1000.0;
% Parameter:   id =  rn, name = rn
	global_par_rn=0.4;
% Parameter:   id =  kn, name = kn
	global_par_kn=1000000.0;
% Parameter:   id =  k, name = k
	global_par_k=0.028;
% Parameter:   id =  t, name = t
	global_par_t=300000.0;

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_tumor_microenvironment*Function1(global_par_rt, x(1), global_par_kt);

% Reaction: id = normal_cell_growth, name = normal cell growth
	reaction_normal_cell_growth=compartment_tumor_microenvironment*Function1(global_par_rn, x(2), global_par_kn);

% Reaction: id = tumor_inhibition, name = tumor inhibition
	reaction_tumor_inhibition=compartment_tumor_microenvironment*Function2(global_par_b, global_par_r0, x(2), global_par_r1);

% Reaction: id = normal_cell_stimulation, name = normal cell stimulation
	reaction_normal_cell_stimulation=compartment_tumor_microenvironment*Function3(global_par_k, x(1), global_par_t);

	xdot=zeros(2,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_tumor_growth) + (-1.0 * reaction_tumor_inhibition));
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(2) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_normal_cell_growth) + ( 1.0 * reaction_normal_cell_stimulation));
end

function z=Function1(r,C,k), z=(r*C*(1-C/k));end

function z=Function2(b,r0,N,r1), z=(b*r0*N/(r1+N));end

function z=Function3(k,T,t), z=(k*T*(1-T/t));end

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


