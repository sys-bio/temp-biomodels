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
% Model name = Goldbeter1996 - Cyclin Cdc2 kinase Oscillations
%
% isDescribedBy http://identifiers.org/pubmed/8631387
% is http://identifiers.org/biomodels.db/MODEL1812120005
% is http://identifiers.org/biomodels.db/BIOMD0000000729
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
% Parameter:   id =  V1, name = V1
% Parameter:   id =  V3, name = V3
% Parameter:   id =  VM1, name = VM1
	global_par_VM1=3.0;
% Parameter:   id =  V2, name = V2
	global_par_V2=1.5;
% Parameter:   id =  VM3, name = VM3
	global_par_VM3=1.0;
% Parameter:   id =  V4, name = V4
	global_par_V4=0.5;
% Parameter:   id =  Kc, name = Kc
	global_par_Kc=0.5;
% Parameter:   id =  vi, name = vi
	global_par_vi=0.05;
% Parameter:   id =  vd, name = vd
	global_par_vd=0.25;
% Parameter:   id =  Kd, name = Kd
	global_par_Kd=0.02;
% Parameter:   id =  K1, name = K1
	global_par_K1=0.01;
% Parameter:   id =  K2, name = K2
	global_par_K2=0.01;
% Parameter:   id =  K3, name = K3
	global_par_K3=0.01;
% Parameter:   id =  K4, name = K4
	global_par_K4=0.01;
% Parameter:   id =  kd, name = kd
	global_par_kd=0.01;
% assignmentRule: variable = V1
	global_par_V1=x(1)/(global_par_Kc+x(1))*global_par_VM1;
% assignmentRule: variable = V3
	global_par_V3=x(2)*global_par_VM3;

% Reaction: id = Cyclin_degradation, name = Cyclin degradation
	reaction_Cyclin_degradation=compartment_compartment*function_for_C_decay(global_par_vd, x(3), x(1), global_par_Kd);

% Reaction: id = Cyclin_decay, name = Cyclin decay
	reaction_Cyclin_decay=compartment_compartment*global_par_kd*x(1);

% Reaction: id = Cdc2_kinase_activation, name = Cdc2 kinase activation
	reaction_Cdc2_kinase_activation=compartment_compartment*function_for_synthesis(global_par_V1, x(2), global_par_K1);

% Reaction: id = Cdc2_kinase_inactivation, name = Cdc2 kinase inactivation
	reaction_Cdc2_kinase_inactivation=compartment_compartment*function_for_decay(global_par_V2, x(2), global_par_K2);

% Reaction: id = X_activation, name = X activation
	reaction_X_activation=compartment_compartment*function_for_synthesis(global_par_V3, x(3), global_par_K3);

% Reaction: id = X_inactivation, name = X inactivation
	reaction_X_inactivation=compartment_compartment*function_for_decay(global_par_V4, x(3), global_par_K4);

	xdot=zeros(3,1);
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Cyclin_synthesis) + (-1.0 * reaction_Cyclin_degradation) + (-1.0 * reaction_Cyclin_decay));
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Cdc2_kinase_activation) + (-1.0 * reaction_Cdc2_kinase_inactivation));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_X_activation) + (-1.0 * reaction_X_inactivation));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=function_for_decay(k1,S,k2), z=(k1*S/(k2+S));end

function z=function_for_synthesis(k1,P,k2), z=(k1*(1-P)/(k2+1-P));end

function z=function_for_C_decay(k1,M,S,k2), z=(k1*M*S/(k2+S));end

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


