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
% Model name = Muller2008 - Simplified MAPK activation Dynamics (Model B)
%
% is http://identifiers.org/biomodels.db/MODEL8687732743
% isDescribedBy http://identifiers.org/pubmed/18171696
% isDescribedBy http://identifiers.org/pubmed/18171696
% is http://identifiers.org/biomodels.db/BIOMD0000000664
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 1.0;
	x0(7) = 0.0;
	x0(8) = 0.0;


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

% Compartment: id = Compartment, name = Compartment, constant
	compartment_Compartment=1.0;
% Parameter:   id =  a1, name = a1
	global_par_a1=10.0;
% Parameter:   id =  g1, name = g1
% Parameter:   id =  b1, name = b1
	global_par_b1=10.0;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.2;
% Parameter:   id =  a2, name = a2
	global_par_a2=10.0;
% Parameter:   id =  g2, name = g2
% Parameter:   id =  b2, name = b2
	global_par_b2=10.0;
% Parameter:   id =  d2, name = d2
	global_par_d2=0.1;
% Parameter:   id =  f53, name = f53
	global_par_f53=1.5;
% Parameter:   id =  f13, name = f13
	global_par_f13=0.6;
% Parameter:   id =  h36_y3, name = h36
	global_par_h36_y3=0.1;
% Parameter:   id =  d3, name = d3
	global_par_d3=1.0;
% Parameter:   id =  E, name = E
	global_par_E=10.0;
% Parameter:   id =  f14, name = f14
	global_par_f14=0.1;
% Parameter:   id =  f24, name = f24
	global_par_f24=0.8;
% Parameter:   id =  d4, name = d4
	global_par_d4=1.1;
% Parameter:   id =  f35, name = f35
	global_par_f35=0.3;
% Parameter:   id =  f45, name = f45
	global_par_f45=0.1;
% Parameter:   id =  d5, name = d5
	global_par_d5=1.0;
% Parameter:   id =  d6, name = d6
	global_par_d6=0.001;
% assignmentRule: variable = g1
	global_par_g1=piecewise(0, (time >= 0) && (time < 5), piecewise(1, (time >= 5) && (time < 10), 0));
% assignmentRule: variable = g1_0
	x(8)=global_par_g1;
% assignmentRule: variable = g2
	global_par_g2=piecewise(1, (time >= 0) && (time < 5), 0);
% assignmentRule: variable = g2_0
	x(6)=global_par_g2;

% Reaction: id = FGFR_Activation, name = FGFR Stimulus
	reaction_FGFR_Activation=compartment_Compartment*function_1_1(global_par_a1, global_par_b1, global_par_g1);

% Reaction: id = FGFR_Degradation, name = FGFR Degradation
	reaction_FGFR_Degradation=compartment_Compartment*global_par_d1*x(1);

% Reaction: id = MSH_Activation, name = MSH Stimulus
	reaction_MSH_Activation=compartment_Compartment*function_1_2(global_par_a2, global_par_b2, global_par_g2);

% Reaction: id = MSH_Degradation, name = MSH Degradation
	reaction_MSH_Degradation=compartment_Compartment*global_par_d2*x(2);

% Reaction: id = C_Raf_Activation_1, name = C-Raf Activation 1
	reaction_C_Raf_Activation_1=compartment_Compartment*function_2_1(x(7), x(5), global_par_E, x(1), global_par_f13);

% Reaction: id = C_Raf_Activation_2, name = C_Raf Activation 2
	reaction_C_Raf_Activation_2=compartment_Compartment*function_3_1(x(7), x(5), global_par_E, x(4), global_par_f53);

% Reaction: id = C_Raf_Degradation, name = C-Raf Degradation
	reaction_C_Raf_Degradation=compartment_Compartment*global_par_d3*x(7);

% Reaction: id = B_Raf_Activation_1, name = B-Raf Activation 1
	reaction_B_Raf_Activation_1=compartment_Compartment*function_4_1(x(1), global_par_f14);

% Reaction: id = B_Raf_Activation_2, name = B-Raf Activation 2
	reaction_B_Raf_Activation_2=compartment_Compartment*function_4_2(x(2), global_par_f24);

% Reaction: id = B_Raf_Degradation, name = B-Raf Degradation
	reaction_B_Raf_Degradation=compartment_Compartment*global_par_d4*x(3);

% Reaction: id = MAPK_Activation_1, name = MAPK Activation 1
	reaction_MAPK_Activation_1=compartment_Compartment*function_4_3(x(7), global_par_f35);

% Reaction: id = MAPK_Activation_2, name = MAPK Activation 2
	reaction_MAPK_Activation_2=compartment_Compartment*function_4_4(x(3), global_par_f45);

% Reaction: id = MAPK_Degradation, name = MAPK Degradation
	reaction_MAPK_Degradation=compartment_Compartment*global_par_d5*x(4);

% Reaction: id = C_Raf_Inactivation, name = C-Raf Inactivation
	reaction_C_Raf_Inactivation=compartment_Compartment*function_5_1(x(7), x(2), global_par_h36_y3);

% Reaction: id = Inactive_C_Raf_degradation, name = Inactive C-Raf degradation
	reaction_Inactive_C_Raf_degradation=compartment_Compartment*global_par_d6*x(5);

	xdot=zeros(8,1);
	
% Species:   id = FGFR, name = FGFR, affected by kineticLaw
	xdot(1) = (1/(compartment_Compartment))*(( 1.0 * reaction_FGFR_Activation) + (-1.0 * reaction_FGFR_Degradation));
	
% Species:   id = MSH, name = MSH, affected by kineticLaw
	xdot(2) = (1/(compartment_Compartment))*(( 1.0 * reaction_MSH_Activation) + (-1.0 * reaction_MSH_Degradation));
	
% Species:   id = B_Raf, name = B-Raf, affected by kineticLaw
	xdot(3) = (1/(compartment_Compartment))*(( 1.0 * reaction_B_Raf_Activation_1) + ( 1.0 * reaction_B_Raf_Activation_2) + (-1.0 * reaction_B_Raf_Degradation));
	
% Species:   id = MAPK, name = MAPK, affected by kineticLaw
	xdot(4) = (1/(compartment_Compartment))*(( 1.0 * reaction_MAPK_Activation_1) + ( 1.0 * reaction_MAPK_Activation_2) + (-1.0 * reaction_MAPK_Degradation));
	
% Species:   id = C_Raf_inactive, name = C-Raf inactive, affected by kineticLaw
	xdot(5) = (1/(compartment_Compartment))*(( 1.0 * reaction_C_Raf_Inactivation) + (-1.0 * reaction_Inactive_C_Raf_degradation));
	
% Species:   id = g2_0, name = g2, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = C_Raf, name = C-Raf, affected by kineticLaw
	xdot(7) = (1/(compartment_Compartment))*(( 1.0 * reaction_C_Raf_Activation_1) + ( 1.0 * reaction_C_Raf_Activation_2) + (-1.0 * reaction_C_Raf_Degradation) + (-1.0 * reaction_C_Raf_Inactivation));
	
% Species:   id = g1_0, name = g1, involved in a rule 	xdot(8) = x(8);
end

function z=function_1_1(a1,b1,g1), z=(a1*g1/(b1+g1));end

function z=function_1_2(a2,b2,g2), z=(a2*g2/(b2+g2));end

function z=function_2_1(C_Raf,C_Raf_inactive,E,FGFR,f13), z=(f13*((E-C_Raf)-C_Raf_inactive)*FGFR);end

function z=function_3_1(C_Raf,C_Raf_inactive,E,MAPK,f53), z=(f53*((E-C_Raf)-C_Raf_inactive)*MAPK);end

function z=function_4_1(FGFR,f14), z=(f14*FGFR);end

function z=function_4_2(MSH,f24), z=(f24*MSH);end

function z=function_4_3(C_Raf,f35), z=(f35*C_Raf);end

function z=function_4_4(B_Raf,f45), z=(f45*B_Raf);end

function z=function_5_1(C_Raf,MSH,h36_y3), z=(h36_y3*MSH*C_Raf);end

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


