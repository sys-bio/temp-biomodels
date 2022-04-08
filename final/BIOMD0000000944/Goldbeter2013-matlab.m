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
% Model name = Goldbeter2013-Oscillatory activity of cyclin-dependent kinases in the cell cycle
%
% isDerivedFrom http://identifiers.org/pubmed/1833774
% isDescribedBy http://identifiers.org/pubmed/23892075
% is http://identifiers.org/biomodels.db/MODEL2005050002
% is http://identifiers.org/biomodels.db/BIOMD0000000944
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.01;
	x0(2) = 0.01;
	x0(3) = 0.01;


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
% Parameter:   id =  K1, name = K1
	global_par_K1=0.002;
% Parameter:   id =  K2, name = K2
% Parameter:   id =  K3, name = K3
	global_par_K3=0.01;
% Parameter:   id =  K4, name = K4
	global_par_K4=0.01;
% Parameter:   id =  Kc, name = Kc
	global_par_Kc=0.5;
% Parameter:   id =  Kd, name = Kd
	global_par_Kd=0.001;
% Parameter:   id =  kd, name = kd
	global_par_kd=0.046;
% Parameter:   id =  V2, name = V2
	global_par_V2=2.0;
% Parameter:   id =  V4, name = V4
	global_par_V4=0.7;
% Parameter:   id =  vs, name = vs
	global_par_vs=0.06;
% Parameter:   id =  vd, name = vd
	global_par_vd=0.25;
% Parameter:   id =  Vm1, name = Vm1
	global_par_Vm1=4.0;
% Parameter:   id =  Vm3, name = Vm3
	global_par_Vm3=1.0;
% Parameter:   id =  V1, name = V1
% Parameter:   id =  V3, name = V3
% assignmentRule: variable = K2
	global_par_K2=global_par_K1;
% assignmentRule: variable = V1
	global_par_V1=x(1)/(global_par_Kc+x(1))*global_par_Vm1;
% assignmentRule: variable = V3
	global_par_V3=x(2)*global_par_Vm3;

% Reaction: id = reaction_for_C_decay, name = reaction for C decay
	reaction_reaction_for_C_decay=compartment_compartment*Rate_Law_for_reaction_for_C_decay(global_par_vd, x(3), x(1), global_par_Kd, global_par_kd);

% Reaction: id = reaction_for_M_production, name = reaction for M production
	reaction_reaction_for_M_production=compartment_compartment*Rate_Law_for_reaction_for_M_production(global_par_V1, x(2), global_par_K1);

% Reaction: id = reaction_for_M_decay, name = reaction for M decay
	reaction_reaction_for_M_decay=compartment_compartment*Rate_Law_for_reaction_for_M_decay(global_par_V2, x(2), global_par_K2);

% Reaction: id = reaction_for_X_production, name = reaction for X production
	reaction_reaction_for_X_production=compartment_compartment*Rate_Law_for_reaction_for_X_production(global_par_V3, x(3), global_par_K3);

% Reaction: id = reaction_for_X_decay, name = reaction for X decay
	reaction_reaction_for_X_decay=compartment_compartment*Rate_Law_for_reaction_for_X_decay(global_par_V4, x(3), global_par_K4);

	xdot=zeros(3,1);
	
% Species:   id = Cyclin, name = Cyclin, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_C_production) + (-1.0 * reaction_reaction_for_C_decay));
	
% Species:   id = Active_Cdc2_kinase, name = Active Cdc2 kinase, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_M_production) + (-1.0 * reaction_reaction_for_M_decay));
	
% Species:   id = Active_APC, name = Active APC, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_X_production) + (-1.0 * reaction_reaction_for_X_decay));
end

function z=Rate_Law_for_reaction_for_M_production(V1,M,K1), z=(V1*(1-M)/(K1+(1-M)));end

function z=Rate_Law_for_reaction_for_C_production(vs), z=(vs);end

function z=Rate_Law_for_reaction_for_C_decay(vd,X,C,Kd,kd), z=(vd*X*C/(Kd+C)+kd*C);end

function z=Rate_Law_for_reaction_for_X_production(V3,X,K3), z=(V3*(1-X)/(K3+(1-X)));end

function z=Rate_Law_for_reaction_for_M_decay(V2,M,K2), z=(V2*M/(K2+M));end

function z=Rate_Law_for_reaction_for_X_decay(V4,X,K4), z=(V4*X/(K4+X));end

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


