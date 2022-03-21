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
% Model name = Bakshi2020 - Properdin model of alternative pathway of complement system
%
% is http://identifiers.org/biomodels.db/MODEL2107200004
% is http://identifiers.org/biomodels.db/BIOMD0000001018
%


function main()
%Initial conditions vector
	x0=zeros(22,1);
	x0(1) = 6.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 3.0;
	x0(9) = 2.0;
	x0(10) = 0.0;
	x0(11) = 0.4;
	x0(12) = 0.0;
	x0(13) = 0.08;
	x0(14) = 0.3;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;


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

% Compartment: id = Fluid_phase, name = Fluid_phase, constant
	compartment_Fluid_phase=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0E-4;
% Parameter:   id =  k2, name = k2
	global_par_k2=107.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=5.86;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.816;
% Parameter:   id =  k5, name = k5
	global_par_k5=6.9;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.46;
% Parameter:   id =  k7, name = k7
	global_par_k7=130.0;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.72;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.33;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.1068;
% Parameter:   id =  k15, name = k15
	global_par_k15=312.0;
% Parameter:   id =  k16, name = k16
	global_par_k16=195.0;
% Parameter:   id =  k19, name = k19
	global_par_k19=78.0;
% Parameter:   id =  k20, name = k20
	global_par_k20=0.25;
% Parameter:   id =  k21, name = k21
	global_par_k21=0.832;
% Parameter:   id =  k25, name = k25
% Parameter:   id =  ks1, name = ks1
	global_par_ks1=0.00316;
% Parameter:   id =  ks2, name = ks2
	global_par_ks2=7.98E-4;
% Parameter:   id =  d1, name = d1
	global_par_d1=3.92E-4;
% Parameter:   id =  d2, name = d2
	global_par_d2=3.33E-4;
% Parameter:   id =  ks3, name = ks3
	global_par_ks3=6.7E-4;
% Parameter:   id =  d3, name = d3
	global_par_d3=2.2E-4;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.87;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.03;
% Parameter:   id =  k17, name = k17
% Parameter:   id =  k22, name = k22
	global_par_k22=0.023;
% Parameter:   id =  k23, name = k23
% Parameter:   id =  k24, name = k24
% Parameter:   id =  k18, name = k18
	global_par_k18=0.028;
% Parameter:   id =  ks4, name = ks4
	global_par_ks4=7.0E-5;
% Parameter:   id =  d4, name = d4
	global_par_d4=1.6E-4;
% assignmentRule: variable = C3bBb_total
	x(22)=x(5)+x(17);
% assignmentRule: variable = C3b_total
	x(19)=x(2)+x(18);
% assignmentRule: variable = C3bB_open_total
	x(21)=x(4)+x(16);
% assignmentRule: variable = C3bB_closed_total
	x(20)=x(3)+x(15);
% assignmentRule: variable = k17
	global_par_k17=global_par_k13;
% assignmentRule: variable = k24
	global_par_k24=global_par_k13;
% assignmentRule: variable = k23
	global_par_k23=global_par_k13;
% assignmentRule: variable = k25
	global_par_k25=global_par_k15;

% Reaction: id = C3_hydrolysis, name = C3_hydrolysis
	reaction_C3_hydrolysis=compartment_Fluid_phase*Rate_Law_for_C3_hydrolysis(global_par_k1, x(1), global_par_k2, x(5), global_par_k3, x(17));

% Reaction: id = C3bB_formation, name = C3bB_formation
	reaction_C3bB_formation=compartment_Fluid_phase*(global_par_k4*x(2)*x(9)-global_par_k5*x(3));

% Reaction: id = C3bB_conformational_change, name = C3bB_conformational_change
	reaction_C3bB_conformational_change=compartment_Fluid_phase*(global_par_k9*x(3)-global_par_k10*x(4));

% Reaction: id = C3_convertase_formation, name = C3_convertase_formation
	reaction_C3_convertase_formation=compartment_Fluid_phase*Rate_Law_for_C3_convertase_formation(global_par_k7, x(13), x(4), global_par_k8, x(16));

% Reaction: id = Factor_H_binding_C3_convertase, name = Factor_H_binding_C3_convertase
	reaction_Factor_H_binding_C3_convertase=compartment_Fluid_phase*(global_par_k25*x(5)*x(8)-global_par_k16*x(6));

% Reaction: id = Factor_H_induced__C3_convertase_decay, name = Factor_H_induced_ C3_convertase_decay
	reaction_Factor_H_induced__C3_convertase_decay=compartment_Fluid_phase*global_par_k21*x(6);

% Reaction: id = C3_convertase_decay, name = C3_convertase_decay
	reaction_C3_convertase_decay=compartment_Fluid_phase*global_par_k6*x(5);

% Reaction: id = Factor_H_binding_C3b, name = Factor_H_binding_C3b
	reaction_Factor_H_binding_C3b=compartment_Fluid_phase*(global_par_k15*x(2)*x(8)-global_par_k16*x(10));

% Reaction: id = C3b_inactivation, name = C3b_inactivation
	reaction_C3b_inactivation=compartment_Fluid_phase*Rate_Law_for_C3b_inactivation(global_par_k19, x(10), x(11), global_par_k20);

% Reaction: id = C3_degradation, name = C3_degradation
	reaction_C3_degradation=compartment_Fluid_phase*global_par_d1*x(1);

% Reaction: id = Factor_B_degradation, name = Factor_B_degradation
	reaction_Factor_B_degradation=compartment_Fluid_phase*global_par_d2*x(9);

% Reaction: id = Factor_H_degradation, name = Factor_H_degradation
	reaction_Factor_H_degradation=compartment_Fluid_phase*global_par_d3*x(8);

% Reaction: id = C3bP_association, name = C3bP_association
	reaction_C3bP_association=compartment_Fluid_phase*(global_par_k13*x(2)*x(14)-global_par_k14*x(18));

% Reaction: id = C3bBP_formation, name = C3bBP_formation
	reaction_C3bBP_formation=compartment_Fluid_phase*(global_par_k4*x(18)*x(9)-global_par_k5*x(16));

% Reaction: id = C3bBP_conformational_change, name = C3bBP_conformational_change
	reaction_C3bBP_conformational_change=compartment_Fluid_phase*(global_par_k9*x(15)-global_par_k10*x(16));

% Reaction: id = C3bBbP_formation, name = C3bBbP_formation
	reaction_C3bBbP_formation=compartment_Fluid_phase*Rate_Law_for_C3bBbP_formation(global_par_k7, x(13), x(16), global_par_k8, x(4));

% Reaction: id = C3bBbP_dissociation, name = C3bBbP_dissociation
	reaction_C3bBbP_dissociation=compartment_Fluid_phase*(global_par_k18*x(17)-global_par_k17*x(5)*x(14));

% Reaction: id = C3bBbP_decay, name = C3bBbP_decay
	reaction_C3bBbP_decay=compartment_Fluid_phase*global_par_k22*x(17);

% Reaction: id = C3bBP_closed_association, name = C3bBP_closed_association
	reaction_C3bBP_closed_association=compartment_Fluid_phase*(global_par_k23*x(3)*x(14)-global_par_k14*x(15));

% Reaction: id = C3bBP_open_assocation, name = C3bBP_open_assocation
	reaction_C3bBP_open_assocation=compartment_Fluid_phase*(global_par_k24*x(4)*x(14)-global_par_k14*x(16));

% Reaction: id = Properdin_degradation, name = Properdin_degradation
	reaction_Properdin_degradation=compartment_Fluid_phase*global_par_d4*x(14);

	xdot=zeros(22,1);
	
% Species:   id = C3, name = C3, affected by kineticLaw
	xdot(1) = (1/(compartment_Fluid_phase))*((-1.0 * reaction_C3_hydrolysis) + ( 1.0 * reaction_C3_synthesis) + (-1.0 * reaction_C3_degradation));
	
% Species:   id = C3b, name = C3b, affected by kineticLaw
	xdot(2) = (1/(compartment_Fluid_phase))*(( 1.0 * reaction_C3_hydrolysis) + (-1.0 * reaction_C3bB_formation) + ( 1.0 * reaction_Factor_H_induced__C3_convertase_decay) + ( 1.0 * reaction_C3_convertase_decay) + (-1.0 * reaction_Factor_H_binding_C3b) + (-1.0 * reaction_C3bP_association) + ( 1.0 * reaction_C3bBbP_decay));
	
% Species:   id = C3bB_closed, name = C3bB_closed, affected by kineticLaw
	xdot(3) = (1/(compartment_Fluid_phase))*(( 1.0 * reaction_C3bB_formation) + (-1.0 * reaction_C3bB_conformational_change) + (-1.0 * reaction_C3bBP_closed_association));
	
% Species:   id = C3bB_open, name = C3bB_open, affected by kineticLaw
	xdot(4) = (1/(compartment_Fluid_phase))*(( 1.0 * reaction_C3bB_conformational_change) + (-1.0 * reaction_C3_convertase_formation) + (-1.0 * reaction_C3bBP_open_assocation));
	
% Species:   id = C3bBb, name = C3bBb, affected by kineticLaw
	xdot(5) = (1/(compartment_Fluid_phase))*(( 1.0 * reaction_C3_convertase_formation) + (-1.0 * reaction_Factor_H_binding_C3_convertase) + (-1.0 * reaction_C3_convertase_decay) + ( 1.0 * reaction_C3bBbP_dissociation));
	
% Species:   id = C3bBbH, name = C3bBbH, affected by kineticLaw
	xdot(6) = (1/(compartment_Fluid_phase))*(( 1.0 * reaction_Factor_H_binding_C3_convertase) + (-1.0 * reaction_Factor_H_induced__C3_convertase_decay));
	
% Species:   id = Bb, name = Bb, affected by kineticLaw
	xdot(7) = (1/(compartment_Fluid_phase))*(( 1.0 * reaction_Factor_H_induced__C3_convertase_decay) + ( 1.0 * reaction_C3_convertase_decay) + ( 1.0 * reaction_C3bBbP_decay));
	
% Species:   id = Factor_H, name = Factor_H, affected by kineticLaw
	xdot(8) = (1/(compartment_Fluid_phase))*((-1.0 * reaction_Factor_H_binding_C3_convertase) + ( 1.0 * reaction_Factor_H_induced__C3_convertase_decay) + (-1.0 * reaction_Factor_H_binding_C3b) + ( 1.0 * reaction_C3b_inactivation) + ( 1.0 * reaction_Factor_H_synthesis) + (-1.0 * reaction_Factor_H_degradation));
	
% Species:   id = Factor_B, name = Factor_B, affected by kineticLaw
	xdot(9) = (1/(compartment_Fluid_phase))*((-1.0 * reaction_C3bB_formation) + ( 1.0 * reaction_Factor_B_synthesis) + (-1.0 * reaction_Factor_B_degradation) + (-1.0 * reaction_C3bBP_formation));
	
% Species:   id = C3bH, name = C3bH, affected by kineticLaw
	xdot(10) = (1/(compartment_Fluid_phase))*(( 1.0 * reaction_Factor_H_binding_C3b) + (-1.0 * reaction_C3b_inactivation));
	
% Species:   id = Factor_I, name = Factor_I
% Warning species is not changed by either rules or reactions
	xdot(11) = ;
	
% Species:   id = iC3b, name = iC3b, affected by kineticLaw
	xdot(12) = (1/(compartment_Fluid_phase))*(( 1.0 * reaction_C3b_inactivation));
	
% Species:   id = Factor_D, name = Factor_D
% Warning species is not changed by either rules or reactions
	xdot(13) = ;
	
% Species:   id = Properdin, name = Properdin, affected by kineticLaw
	xdot(14) = (1/(compartment_Fluid_phase))*((-1.0 * reaction_C3bP_association) + ( 1.0 * reaction_C3bBbP_dissociation) + ( 1.0 * reaction_C3bBbP_decay) + (-1.0 * reaction_C3bBP_closed_association) + (-1.0 * reaction_C3bBP_open_assocation) + ( 1.0 * reaction_Properdin_synthesis) + (-1.0 * reaction_Properdin_degradation));
	
% Species:   id = C3bBP_closed, name = C3bBP_closed, affected by kineticLaw
	xdot(15) = (1/(compartment_Fluid_phase))*((-1.0 * reaction_C3bBP_conformational_change) + ( 1.0 * reaction_C3bBP_closed_association));
	
% Species:   id = C3bBP_open, name = C3bBP_open, affected by kineticLaw
	xdot(16) = (1/(compartment_Fluid_phase))*(( 1.0 * reaction_C3bBP_formation) + ( 1.0 * reaction_C3bBP_conformational_change) + (-1.0 * reaction_C3bBbP_formation) + ( 1.0 * reaction_C3bBP_open_assocation));
	
% Species:   id = C3bBbP, name = C3bBbP, affected by kineticLaw
	xdot(17) = (1/(compartment_Fluid_phase))*(( 1.0 * reaction_C3bBbP_formation) + (-1.0 * reaction_C3bBbP_dissociation) + (-1.0 * reaction_C3bBbP_decay));
	
% Species:   id = C3bP, name = C3bP, affected by kineticLaw
	xdot(18) = (1/(compartment_Fluid_phase))*(( 1.0 * reaction_C3bP_association) + (-1.0 * reaction_C3bBP_formation));
	
% Species:   id = C3b_total, name = C3b_total, involved in a rule 	xdot(19) = x(19);
	
% Species:   id = C3bB_closed_total, name = C3bB_closed_total, involved in a rule 	xdot(20) = x(20);
	
% Species:   id = C3bB_open_total, name = C3bB_open_total, involved in a rule 	xdot(21) = x(21);
	
% Species:   id = C3bBb_total, name = C3bBb_total, involved in a rule 	xdot(22) = x(22);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Rate_Law_for_C3_hydrolysis(k1,C3,k2,C3bBb,k3,C3bBbP), z=(k1*C3+k2*(C3bBb+C3bBbP)*C3/(k3+C3));end

function z=Rate_Law_for_C3_convertase_formation(k7,FD,C3bB_open,k8,C3bBP_open), z=(k7*FD*C3bB_open/(k8+C3bB_open+C3bBP_open));end

function z=Rate_Law_for_C3bBbP_formation(k7,FD,C3bBP_open,k8,C3bB_open), z=(k7*FD*C3bBP_open/(k8+C3bB_open+C3bBP_open));end

function z=Rate_Law_for_C3b_inactivation(k19,C3bH,FI,k20), z=(k19*C3bH*FI/(k20+C3bH));end

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


