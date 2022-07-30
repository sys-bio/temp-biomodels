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
% Model name = Nikolov2020 - p53-miR34 model
%
% is http://identifiers.org/biomodels.db/MODEL2205180001
% is http://identifiers.org/biomodels.db/BIOMD0000001057
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 0.0;
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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.5;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.001;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.06;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.1;
% Parameter:   id =  K, name = K
	global_par_K=1.0;
% Parameter:   id =  g, name = g
	global_par_g=1.0;

% Reaction: id = Positive_feedback_loop_through_miR34, name = Positive feedback loop through miR34
	reaction_Positive_feedback_loop_through_miR34=compartment_cell*function_1(global_par_k2, x(2));

% Reaction: id = Degradation_of_P53, name = Degradation of P53
	reaction_Degradation_of_P53=compartment_cell*global_par_k3*x(1);

% Reaction: id = Transcriptional_activation_of_miR43a_by_p53, name = Transcriptional activation of miR43a by p53
	reaction_Transcriptional_activation_of_miR43a_by_p53=compartment_cell*Hill_function(global_par_k4, x(1), global_par_g, global_par_K);

% Reaction: id = Degradation_of_miR34a, name = Degradation of miR34a
	reaction_Degradation_of_miR34a=compartment_cell*global_par_k5*x(2);

	xdot=zeros(2,1);
	
% Species:   id = TFp53, name = TFp53, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_Constant_synthesis_of_TFp53) + ( 1.0 * reaction_Positive_feedback_loop_through_miR34) + (-1.0 * reaction_Degradation_of_P53));
	
% Species:   id = miR34a, name = miR34a, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_Transcriptional_activation_of_miR43a_by_p53) + (-1.0 * reaction_Degradation_of_miR34a));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Hill_function(k4,y1,g,K), z=(k4*y1^g/(K+y1^g));end

function z=function_1(k2,y2), z=(k2*y2);end

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


