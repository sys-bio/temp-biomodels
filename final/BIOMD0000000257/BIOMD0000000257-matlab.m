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
% Model name = Piedrafita2010_MR_System
%
% is http://identifiers.org/biomodels.db/MODEL1008090000
% is http://identifiers.org/biomodels.db/BIOMD0000000257
% isDescribedBy http://identifiers.org/pubmed/20700491
%


function main()
%Initial conditions vector
	x0=zeros(11,1);
	x0(1) = 4.0;
	x0(2) = 1.0;
	x0(3) = 2.0;
	x0(4) = 5.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;


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

% Compartment: id = env, name = environment, constant
	compartment_env=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=10.0;
% Parameter:   id =  k1r, name = k1r
	global_par_k1r=10.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=10.0;
% Parameter:   id =  k2r, name = k2r
	global_par_k2r=10.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=2.0;
% Parameter:   id =  k3r, name = k3r
	global_par_k3r=1.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.3;
% Parameter:   id =  k5, name = k5
	global_par_k5=1.0;
% Parameter:   id =  k5r, name = k5r
	global_par_k5r=1.0;
% Parameter:   id =  k6, name = k6
	global_par_k6=1.0;
% Parameter:   id =  k6r, name = k6r
	global_par_k6r=1.0;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.1;
% Parameter:   id =  k7r, name = k7r
	global_par_k7r=0.1;
% Parameter:   id =  k8, name = k8
% Parameter:   id =  k9, name = k9
	global_par_k9=0.1;
% Parameter:   id =  k9r, name = k9r
	global_par_k9r=0.05;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.05;
% Parameter:   id =  k10r, name = k10r
	global_par_k10r=0.05;
% Parameter:   id =  k11, name = k11
% assignmentRule: variable = k8
	global_par_k8=global_par_k4;
% assignmentRule: variable = k11
	global_par_k11=global_par_k4;

% Reaction: id = reaction1
	reaction_reaction1=compartment_env*(global_par_k1*x(1)*x(4)-global_par_k1r*x(5));

% Reaction: id = reaction2
	reaction_reaction2=compartment_env*(global_par_k2*x(3)*x(5)-global_par_k2r*x(6));

% Reaction: id = reaction3
	reaction_reaction3=compartment_env*(global_par_k3*x(6)-global_par_k3r*x(9)*x(4));

% Reaction: id = reaction4
	reaction_reaction4=compartment_env*global_par_k4*x(4);

% Reaction: id = reaction5
	reaction_reaction5=compartment_env*(global_par_k5*x(9)*x(8)-global_par_k5r*x(10));

% Reaction: id = reaction6
	reaction_reaction6=compartment_env*(global_par_k6*x(2)*x(10)-global_par_k6r*x(11));

% Reaction: id = reaction7
	reaction_reaction7=compartment_env*(global_par_k7*x(11)-global_par_k7r*x(4)*x(8));

% Reaction: id = reaction8
	reaction_reaction8=compartment_env*global_par_k8*x(8);

% Reaction: id = reaction9
	reaction_reaction9=compartment_env*(global_par_k9*x(2)*x(5)-global_par_k9r*x(7));

% Reaction: id = reaction10
	reaction_reaction10=compartment_env*(global_par_k10*x(7)-global_par_k10r*x(4)*x(8));

% Reaction: id = reaction11
	reaction_reaction11=compartment_env*global_par_k11*x(9);

	xdot=zeros(11,1);
	
% Species:   id = S, name = S
%WARNING speciesID: S, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = U, name = U
%WARNING speciesID: U, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(2) = 0.0;
	
% Species:   id = T, name = T
%WARNING speciesID: T, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(3) = 0.0;
	
% Species:   id = STU, name = STU, affected by kineticLaw
	xdot(4) = (1/(compartment_env))*((-1.0 * reaction_reaction1) + ( 1.0 * reaction_reaction3) + (-1.0 * reaction_reaction4) + ( 1.0 * reaction_reaction7) + ( 1.0 * reaction_reaction10));
	
% Species:   id = STUS, name = STUS, affected by kineticLaw
	xdot(5) = (1/(compartment_env))*(( 1.0 * reaction_reaction1) + (-1.0 * reaction_reaction2) + (-1.0 * reaction_reaction9));
	
% Species:   id = STUST, name = STUST, affected by kineticLaw
	xdot(6) = (1/(compartment_env))*(( 1.0 * reaction_reaction2) + (-1.0 * reaction_reaction3));
	
% Species:   id = STUSU, name = STUSU, affected by kineticLaw
	xdot(7) = (1/(compartment_env))*(( 1.0 * reaction_reaction9) + (-1.0 * reaction_reaction10));
	
% Species:   id = SU, name = SU, affected by kineticLaw
	xdot(8) = (1/(compartment_env))*((-1.0 * reaction_reaction5) + ( 1.0 * reaction_reaction7) + (-1.0 * reaction_reaction8) + ( 1.0 * reaction_reaction10));
	
% Species:   id = ST, name = ST, affected by kineticLaw
	xdot(9) = (1/(compartment_env))*(( 1.0 * reaction_reaction3) + (-1.0 * reaction_reaction5) + (-1.0 * reaction_reaction11));
	
% Species:   id = SUST, name = SUST, affected by kineticLaw
	xdot(10) = (1/(compartment_env))*(( 1.0 * reaction_reaction5) + (-1.0 * reaction_reaction6));
	
% Species:   id = SUSTU, name = SUSTU, affected by kineticLaw
	xdot(11) = (1/(compartment_env))*(( 1.0 * reaction_reaction6) + (-1.0 * reaction_reaction7));
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


