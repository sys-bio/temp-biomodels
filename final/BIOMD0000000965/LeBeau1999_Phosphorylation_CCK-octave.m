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
% Model name = LeBeau1999 - IP3-dependent intracellular calcium oscillations due to agonist stimulation from Cholecytokinin
%
% isDescribedBy http://identifiers.org/pubmed/10352035
% is http://identifiers.org/biomodels.db/MODEL9200487367
% is http://identifiers.org/biomodels.db/BIOMD0000000965
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(6) = 0.0;
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 1.0;
	x0(5) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  k1, name = k1
% Parameter:   id =  alpha1, name = alpha1
	global_par_alpha1=40.0;
% Parameter:   id =  beta1, name = beta1
	global_par_beta1=0.8;
% Parameter:   id =  k4, name = k4
% Parameter:   id =  alpha4, name = alpha4
	global_par_alpha4=0.06;
% Parameter:   id =  p, name = p
% Parameter:   id =  beta4, name = beta4
	global_par_beta4=0.01;
% Parameter:   id =  T, name = time
% Parameter:   id =  time_constant, name = time_constant
	global_par_time_constant=100.0;
% Parameter:   id =  kflux, name = kflux
	global_par_kflux=22.0;
% Parameter:   id =  Vp, name = Vp
	global_par_Vp=0.2;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.5;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.5;
% Parameter:   id =  k_1, name = k-1
	global_par_k_1=0.88;
% Parameter:   id =  Jinflux_0, name = Jinflux
	global_par_Jinflux_0=0.025;
% Parameter:   id =  Kp, name = Kp
	global_par_Kp=0.54;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.02;
% assignmentRule: variable = S
	x(1)=1-(x(2)+x(3)+x(4));
% assignmentRule: variable = k1
	global_par_k1=global_par_alpha1*x(5)^3/(global_par_beta1^3+x(5)^3);
% assignmentRule: variable = p
	global_par_p=0.6*(1-exp((-global_par_T)/global_par_time_constant));
% assignmentRule: variable = k4
	global_par_k4=global_par_alpha4*global_par_p/(global_par_beta4+global_par_p);
% rateRule: variable = T
global_par_T = x(6);

% Reaction: id = Shut_to_Open, name = Shut_to_Open
	reaction_Shut_to_Open=compartment_compartment*Function_for_Shut_to_Open(x(2), x(1), compartment_compartment, global_par_k1, global_par_k_1, global_par_p);

% Reaction: id = Open_to_Inactivated1, name = Open_to_Inactivated1
	reaction_Open_to_Inactivated1=compartment_compartment*Function_for_Open_to_Inactivated1(x(2), compartment_compartment, global_par_k2);

% Reaction: id = Inactivated1_to_Shut, name = Inactivated1_to_Shut
	reaction_Inactivated1_to_Shut=compartment_compartment*Function_for_Inactivated1_to_Shut(x(3), compartment_compartment, global_par_k3);

% Reaction: id = Inactivated1_to_Inactivated2, name = Inactivated1_to_Inactivated2
	reaction_Inactivated1_to_Inactivated2=compartment_compartment*Function_for_Inactivated1_to_Inactivated2(x(3), compartment_compartment, global_par_k4);

% Reaction: id = Inactivated2_to_Shut, name = Inactivated2_to_Shut
	reaction_Inactivated2_to_Shut=compartment_compartment*Function_for_Inactivated2_to_Shut(x(4), compartment_compartment, global_par_k5);

% Reaction: id = Jrel, name = Jrel
	reaction_Jrel=compartment_compartment*Function_for_Jrel(x(2), compartment_compartment, global_par_kflux);

% Reaction: id = Jpump, name = Jpump
	reaction_Jpump=compartment_compartment*Function_for_Jpump(global_par_Kp, global_par_Vp, x(5), compartment_compartment);

% Reaction: id = Jinflux, name = Jinflux
	reaction_Jinflux=compartment_compartment*Function_for_Jinflux(global_par_Jinflux_0, compartment_compartment);

	xdot=zeros(6,1);
	% rateRule: variable = T
	xdot(6) = 1;
	
% Species:   id = S, name = S, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = O, name = O, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Shut_to_Open) + (-1.0 * reaction_Open_to_Inactivated1));
	
% Species:   id = I1, name = I1, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Open_to_Inactivated1) + (-1.0 * reaction_Inactivated1_to_Shut) + (-1.0 * reaction_Inactivated1_to_Inactivated2));
	
% Species:   id = I2, name = I2, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Inactivated1_to_Inactivated2) + (-1.0 * reaction_Inactivated2_to_Shut));
	
% Species:   id = c, name = Ca2+, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_Jrel) + (-1.0 * reaction_Jpump) + ( 1.0 * reaction_Jinflux));
end

function z=Function_for_Open_to_Inactivated1(O,compartment,k2), z=(k2*O/compartment);end

function z=Function_for_Inactivated1_to_Inactivated2(I1,compartment,k4), z=(k4*I1/compartment);end

function z=Function_for_Jrel(O,compartment,kflux), z=(kflux*O^4/compartment);end

function z=Function_for_Inactivated1_to_Shut(I1,compartment,k3), z=(k3*I1/compartment);end

function z=Function_for_Jpump(Kp,Vp,c,compartment), z=(Vp*c^2/(Kp^2+c^2)/compartment);end

function z=Function_for_Jinflux(Jleak,compartment), z=(Jleak/compartment);end

function z=Function_for_Inactivated2_to_Shut(I2,compartment,k5), z=(k5*I2/compartment);end

function z=Function_for_Shut_to_Open(O,S,compartment,k1,kminus1,p), z=((k1*p*S-kminus1*O)/compartment);end

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


