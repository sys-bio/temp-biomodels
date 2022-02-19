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
% Model name = Norel1990 - MPF and Cyclin Oscillations
%
% is http://identifiers.org/biomodels.db/MODEL1812120004
% is http://identifiers.org/biomodels.db/BIOMD0000000728
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 0.4;
	x0(2) = 0.8;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  e, name = e
	global_par_e=3.46616;
% Parameter:   id =  f, name = f
	global_par_f=1.0;
% Parameter:   id =  g, name = g
	global_par_g=10.0;
% Parameter:   id =  i, name = i
	global_par_i=1.2;

% Reaction: id = Cyclin_degradation, name = Cyclin degradation
	reaction_Cyclin_degradation=compartment_cell*function_for_cyclin_degradataion(x(1));

% Reaction: id = MPF_synthesis_1, name = MPF synthesis 1
	reaction_MPF_synthesis_1=compartment_cell*function_for_MPF_syntehsis_1(global_par_e, x(2));

% Reaction: id = MPF_synthesis_2, name = MPF synthesis 2
	reaction_MPF_synthesis_2=compartment_cell*function_for_MPF_synthesis_2(global_par_f, x(2), x(1));

% Reaction: id = MPF_degradation, name = MPF degradation
	reaction_MPF_degradation=compartment_cell*function_for_MPF_degradation(global_par_g, x(1));

	xdot=zeros(2,1);
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_MPF_synthesis_1) + ( 1.0 * reaction_MPF_synthesis_2) + (-1.0 * reaction_MPF_degradation));
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_Cylin_synthesis) + (-1.0 * reaction_Cyclin_degradation));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=function_for_cyclin_degradataion(M), z=(M);end

function z=function_for_MPF_syntehsis_1(k,M), z=(k*M);end

function z=function_for_MPF_synthesis_2(k,M,P), z=(k*M*P^2);end

function z=function_for_MPF_degradation(k,S), z=(k*S/(S+1));end

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


