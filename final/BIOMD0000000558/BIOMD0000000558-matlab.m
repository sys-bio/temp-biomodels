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
% Model name = Cloutier2012 - Feedback motif for Parkinson's disease
%
% is http://identifiers.org/biomodels.db/MODEL1410300000
% is http://identifiers.org/biomodels.db/BIOMD0000000558
% isDescribedBy http://identifiers.org/pubmed/22757587
% isDerivedFrom http://identifiers.org/pubmed/22757585
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

% Compartment: id = Neuron, name = Neuron, constant
	compartment_Neuron=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=17280.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=17280.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.168;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.168;
% Parameter:   id =  dalphasyn, name = dalphasyn
	global_par_dalphasyn=15.0;
% Parameter:   id =  kalphasyn, name = kalphasyn
	global_par_kalphasyn=8.5;
% Parameter:   id =  S1, name = S1
% Parameter:   id =  S2_4, name = S2-4
	global_par_S2_4=1.0;
% assignmentRule: variable = S1
	global_par_S1=piecewise(2.6, (time > 10) && (time < 150), 0);

% Reaction: id = ROS_1, name = ROS 1
	reaction_ROS_1=compartment_Neuron*V1(global_par_k1, global_par_S1, global_par_dalphasyn, x(2), global_par_kalphasyn);

% Reaction: id = ROS_2, name = ROS 2
	reaction_ROS_2=compartment_Neuron*V2_4(global_par_k2, x(1), global_par_S2_4);

% Reaction: id = aSyn_1, name = aSyn 1
	reaction_aSyn_1=compartment_Neuron*V3(global_par_k3, x(1), global_par_S2_4);

% Reaction: id = aSyn_2, name = aSyn 2
	reaction_aSyn_2=compartment_Neuron*V2_4(global_par_k4, x(2), global_par_S2_4);

	xdot=zeros(2,1);
	
% Species:   id = ROS, name = ROS, affected by kineticLaw
	xdot(1) = (1/(compartment_Neuron))*(( 1.0 * reaction_ROS_1) + (-1.0 * reaction_ROS_2));
	
% Species:   id = alpha_syn, name = alpha-syn, affected by kineticLaw
	xdot(2) = (1/(compartment_Neuron))*(( 1.0 * reaction_aSyn_1) + (-1.0 * reaction_aSyn_2));
end

function z=V2_4(k,S,Sx), z=(k*S*Sx);end

function z=V3(k,S,Sx), z=(k*S*Sx);end

function z=V1(k1,Sx,d,S,k2), z=(k1*(1+Sx+d*(S/k2)^4/(1+(S/k2)^4)));end

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


