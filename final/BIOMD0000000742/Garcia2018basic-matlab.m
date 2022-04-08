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
% Model name = Garcia2018basic - cancer and immune cell count basic model
%
% is http://identifiers.org/biomodels.db/MODEL1907050005
% is http://identifiers.org/biomodels.db/BIOMD0000000742
% isDescribedBy http://identifiers.org/doi/10.1101/498741
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 100.0;
	x0(2) = 1000.0;


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

% Compartment: id = Tumor, name = Tumor microenvironment, constant
	compartment_Tumor=1.0;
% Parameter:   id =  a, name = a
	global_par_a=0.514;
% Parameter:   id =  b, name = b
	global_par_b=1.02E-9;
% Parameter:   id =  k, name = k
	global_par_k=1.0E-4;
% Parameter:   id =  s, name = s
	global_par_s=10.0;
% Parameter:   id =  m, name = m
	global_par_m=-1.0E-6;
% Parameter:   id =  d, name = d
	global_par_d=0.02;

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_Tumor*t_g_1(x(1), global_par_a);

% Reaction: id = tumor_death, name = tumor death
	reaction_tumor_death=compartment_Tumor*t_d_1(x(1), global_par_a, global_par_b);

% Reaction: id = tumor_killing, name = tumor killing
	reaction_tumor_killing=compartment_Tumor*t_k_1(x(2), x(1), global_par_k);

% Reaction: id = immune_cell_death, name = immune cell death
	reaction_immune_cell_death=compartment_Tumor*global_par_d*x(2);

% Reaction: id = immune_stimulation, name = immune stimulation
	reaction_immune_stimulation=compartment_Tumor*i_s_1(x(2), x(1), global_par_m);

	xdot=zeros(2,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_Tumor))*(( 1.0 * reaction_tumor_growth) + (-1.0 * reaction_tumor_death) + (-1.0 * reaction_tumor_killing));
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(2) = (1/(compartment_Tumor))*((-1.0 * reaction_immune_cell_death) + ( 1.0 * reaction_immune_cell_growth) + ( 1.0 * reaction_immune_stimulation));
end

function z=t_k_1(E,T,k), z=(k*T*E);end

function z=t_g_1(T,a), z=(a*T);end

function z=i_s_1(E,T,m), z=(m*E*T);end

function z=t_d_1(T,a,b), z=(a*b*T*T);end

function z=Constant_flux__irreversible(v), z=(v);end

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


