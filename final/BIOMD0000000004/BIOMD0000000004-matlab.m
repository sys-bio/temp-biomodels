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
% Model name = Goldbeter1991 - Min Mit Oscil, Expl Inact
%
% is http://identifiers.org/biomodels.db/MODEL6614389071
% is http://identifiers.org/biomodels.db/BIOMD0000000004
% isDescribedBy http://identifiers.org/pubmed/1833774
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000003
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 0.01;
	x0(2) = 0.01;
	x0(3) = 0.01;
	x0(4) = 0.99;
	x0(5) = 0.99;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  V1, name = V1
% Parameter:   id =  V3, name = V3
% Parameter:   id =  VM1, name = VM1
	global_par_VM1=3.0;
% Parameter:   id =  VM3, name = VM3
	global_par_VM3=1.0;
% Parameter:   id =  Kc, name = Kc
	global_par_Kc=0.5;
% assignmentRule: variable = V1
	global_par_V1=x(1)*global_par_VM1*(x(1)+global_par_Kc)^(-1);
% assignmentRule: variable = V3
	global_par_V3=x(2)*global_par_VM3;

% Reaction: id = reaction1, name = creation of cyclin	% Local Parameter:   id =  vi, name = vi
	reaction_reaction1_vi=0.025;

	reaction_reaction1=compartment_cell*reaction_reaction1_vi;

% Reaction: id = reaction2, name = default degradation of cyclin	% Local Parameter:   id =  kd, name = kd
	reaction_reaction2_kd=0.01;

	reaction_reaction2=x(1)*compartment_cell*reaction_reaction2_kd;

% Reaction: id = reaction3, name = cdc2 kinase triggered degration of cyclin	% Local Parameter:   id =  vd, name = vd
	reaction_reaction3_vd=0.25;
	% Local Parameter:   id =  Kd, name = Kd
	reaction_reaction3_Kd=0.02;

	reaction_reaction3=x(1)*compartment_cell*reaction_reaction3_vd*x(3)*(x(1)+reaction_reaction3_Kd)^(-1);

% Reaction: id = reaction4, name = activation of cdc2 kinase	% Local Parameter:   id =  K1, name = K1
	reaction_reaction4_K1=0.005;

	reaction_reaction4=compartment_cell*x(4)*global_par_V1*(reaction_reaction4_K1+x(4))^(-1);

% Reaction: id = reaction5, name = deactivation of cdc2 kinase	% Local Parameter:   id =  V2, name = V2
	reaction_reaction5_V2=1.5;
	% Local Parameter:   id =  K2, name = K2
	reaction_reaction5_K2=0.005;

	reaction_reaction5=compartment_cell*x(2)*reaction_reaction5_V2*(reaction_reaction5_K2+x(2))^(-1);

% Reaction: id = reaction6, name = activation of cyclin protease	% Local Parameter:   id =  K3, name = K3
	reaction_reaction6_K3=0.005;

	reaction_reaction6=compartment_cell*global_par_V3*x(5)*(reaction_reaction6_K3+x(5))^(-1);

% Reaction: id = reaction7, name = deactivation of cyclin protease	% Local Parameter:   id =  K4, name = K4
	reaction_reaction7_K4=0.005;
	% Local Parameter:   id =  V4, name = V4
	reaction_reaction7_V4=0.5;

	reaction_reaction7=compartment_cell*reaction_reaction7_V4*x(3)*(reaction_reaction7_K4+x(3))^(-1);

	xdot=zeros(5,1);
	
% Species:   id = C, name = Cyclin, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_reaction1) + (-1.0 * reaction_reaction2) + (-1.0 * reaction_reaction3));
	
% Species:   id = M, name = Active CDC-2 Kinase, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_reaction4) + (-1.0 * reaction_reaction5));
	
% Species:   id = X, name = Active Cyclin Protease, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_reaction6) + (-1.0 * reaction_reaction7));
	
% Species:   id = MI, name = Inactive CDC-2 Kinase, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*((-1.0 * reaction_reaction4) + ( 1.0 * reaction_reaction5));
	
% Species:   id = XI, name = Inactive Cyclin Protease, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*((-1.0 * reaction_reaction6) + ( 1.0 * reaction_reaction7));
end

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


