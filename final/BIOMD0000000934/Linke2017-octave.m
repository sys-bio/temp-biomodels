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
% Model name = Linke2017 - Synchronization of Cyclins' expression by the Fkh2 transcription factor in the budding yeast cell cycle
%
% is http://identifiers.org/biomodels.db/MODEL1809050002
% is http://identifiers.org/biomodels.db/BIOMD0000000934
%


function main()
%Initial conditions vector
	x0=zeros(16,1);
	x0(1) = 5.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;


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
	global_par_k1=0.1;
% Parameter:   id =  k2, name = k2
	global_par_k2=5.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.5;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.01;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.05;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.7;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.01;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.7;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.001;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.7;
% Parameter:   id =  k11, name = k11
	global_par_k11=5.0;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.5;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.01;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.05;
% Parameter:   id =  k15, name = k15
	global_par_k15=5.0;
% Parameter:   id =  k16, name = k16
	global_par_k16=0.5;
% Parameter:   id =  k17, name = k17
	global_par_k17=0.01;
% Parameter:   id =  k18, name = k18
	global_par_k18=0.05;
% Parameter:   id =  k26, name = k26
	global_par_k26=0.001;
% Parameter:   id =  kA, name = kA
	global_par_kA=100.0;
% Parameter:   id =  kB, name = kB
	global_par_kB=1000.0;
% Parameter:   id =  kC, name = kC
	global_par_kC=100.0;
% Parameter:   id =  kD, name = kD
	global_par_kD=100.0;
% assignmentRule: variable = Clb34_total
	x(14)=x(5)+x(6);
% assignmentRule: variable = Clb12_total
	x(15)=x(8)+x(9);
% assignmentRule: variable = Clb56_total
	x(16)=x(2)+x(3);

% Reaction: id = Sic1_binding_to_Cdk1_Clb5_6, name = Sic1 binding to Cdk1-Clb5,6
	reaction_Sic1_binding_to_Cdk1_Clb5_6=compartment_cell*global_par_k2*x(1)*x(2);

% Reaction: id = Cdk1_Clb5_6_Sic1_dissociation, name = Cdk1-Clb5,6-Sic1 dissociation
	reaction_Cdk1_Clb5_6_Sic1_dissociation=compartment_cell*global_par_k3*x(3);

% Reaction: id = Clb5_6_degradation__ternary, name = Clb5,6 degradation (ternary)
	reaction_Clb5_6_degradation__ternary=compartment_cell*global_par_k4*x(3);

% Reaction: id = Sic1_degradation__Clb_regulated, name = Sic1 degradation (Clb-regulated)
	reaction_Sic1_degradation__Clb_regulated=compartment_cell*Function_for_Sic1_degradation_1(x(8), x(5), x(2), x(3), global_par_k5);

% Reaction: id = Clb5_6_degradation__binary, name = Clb5,6 degradation (binary)
	reaction_Clb5_6_degradation__binary=compartment_cell*global_par_k6*x(2);

% Reaction: id = Cdk1_Clb3_4_production, name = Cdk1-Clb3,4 production
	reaction_Cdk1_Clb3_4_production=compartment_cell*Function_for_Cdk1_Clb3_4_production_1(x(2), global_par_k7, global_par_kA);

% Reaction: id = Clb3_4_degradation__binary, name = Clb3,4 degradation (binary)
	reaction_Clb3_4_degradation__binary=compartment_cell*global_par_k8*x(5);

% Reaction: id = Cdk1_Clb1_2_production, name = Cdk1-Clb1,2 production
	reaction_Cdk1_Clb1_2_production=compartment_cell*Function_for_Cd1_Clb12_production_1(x(8), x(5), x(2), global_par_k9, global_par_kB, global_par_kC, global_par_kD);

% Reaction: id = Clb1_2_degradation__binary, name = Clb1,2 degradation (binary)
	reaction_Clb1_2_degradation__binary=compartment_cell*global_par_k10*x(8);

% Reaction: id = Sic1_binding_to_Cdk1_Clb1_2, name = Sic1 binding to Cdk1-Clb1,2
	reaction_Sic1_binding_to_Cdk1_Clb1_2=compartment_cell*global_par_k11*x(1)*x(8);

% Reaction: id = Cdk1_Clb1_2_Sic1_dissociation, name = Cdk1-Clb1,2-Sic1 dissociation
	reaction_Cdk1_Clb1_2_Sic1_dissociation=compartment_cell*global_par_k12*x(9);

% Reaction: id = Clb1_2_degradation__ternary, name = Clb1,2 degradation (ternary)
	reaction_Clb1_2_degradation__ternary=compartment_cell*global_par_k13*x(9);

% Reaction: id = Sic1_degradation__Clb_regulated__1, name = Sic1 degradation (Clb-regulated)_1
	reaction_Sic1_degradation__Clb_regulated__1=compartment_cell*Function_for_Sic1_degradation_2(x(8), x(9), x(5), x(2), global_par_k14);

% Reaction: id = Sic1_binding_to_Cdk1_Clb3_4, name = Sic1 binding to Cdk1-Clb3,4
	reaction_Sic1_binding_to_Cdk1_Clb3_4=compartment_cell*global_par_k15*x(1)*x(5);

% Reaction: id = Cdk1_Clb3_4_Sic1_dissociation, name = Cdk1-Clb3,4-Sic1 dissociation
	reaction_Cdk1_Clb3_4_Sic1_dissociation=compartment_cell*global_par_k16*x(6);

% Reaction: id = Clb3_4_degradation__ternary, name = Clb3,4 degradation (ternary)
	reaction_Clb3_4_degradation__ternary=compartment_cell*global_par_k17*x(6);

% Reaction: id = Sic1_degradation__Clb_regulated__2, name = Sic1 degradation (Clb-regulated)_2
	reaction_Sic1_degradation__Clb_regulated__2=compartment_cell*Function_for_Sic1_degradation_3(x(8), x(5), x(6), x(2), global_par_k18);

% Reaction: id = Sic1_degradation__basal, name = Sic1 degradation (basal)
	reaction_Sic1_degradation__basal=compartment_cell*global_par_k26*x(1);

	xdot=zeros(16,1);
	
% Species:   id = Sic1, name = Sic1, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_Sic1_binding_to_Cdk1_Clb5_6) + ( 1.0 * reaction_Cdk1_Clb5_6_Sic1_dissociation) + (-1.0 * reaction_Sic1_binding_to_Cdk1_Clb1_2) + ( 1.0 * reaction_Cdk1_Clb1_2_Sic1_dissociation) + (-1.0 * reaction_Sic1_binding_to_Cdk1_Clb3_4) + ( 1.0 * reaction_Cdk1_Clb3_4_Sic1_dissociation) + (-1.0 * reaction_Sic1_degradation__basal));
	
% Species:   id = Cdk1_Clb5or6, name = Cdk1_Clb5or6, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_Cdk1_Clb5_6_production) + (-1.0 * reaction_Sic1_binding_to_Cdk1_Clb5_6) + ( 1.0 * reaction_Cdk1_Clb5_6_Sic1_dissociation) + ( 1.0 * reaction_Sic1_degradation__Clb_regulated) + (-1.0 * reaction_Clb5_6_degradation__binary));
	
% Species:   id = Cdk1_Clb5or6_Sic1, name = Cdk1_Clb5or6_Sic1, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_Sic1_binding_to_Cdk1_Clb5_6) + (-1.0 * reaction_Cdk1_Clb5_6_Sic1_dissociation) + (-1.0 * reaction_Clb5_6_degradation__ternary) + (-1.0 * reaction_Sic1_degradation__Clb_regulated));
	
% Species:   id = Clb5or6_degraded, name = Clb5or6_degraded, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_Clb5_6_degradation__ternary) + ( 1.0 * reaction_Clb5_6_degradation__binary));
	
% Species:   id = Cdk1_Clb3or4, name = Cdk1_Clb3or4, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_Cdk1_Clb3_4_production) + (-1.0 * reaction_Clb3_4_degradation__binary) + (-1.0 * reaction_Sic1_binding_to_Cdk1_Clb3_4) + ( 1.0 * reaction_Cdk1_Clb3_4_Sic1_dissociation));
	
% Species:   id = Cdk1_Clb3or4_Sic1, name = Cdk1_Clb3or4_Sic1, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_Sic1_binding_to_Cdk1_Clb3_4) + (-1.0 * reaction_Cdk1_Clb3_4_Sic1_dissociation) + (-1.0 * reaction_Clb3_4_degradation__ternary) + (-1.0 * reaction_Sic1_degradation__Clb_regulated__2));
	
% Species:   id = Clb3or4_degraded, name = Clb3or4_degraded, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_Clb3_4_degradation__binary) + ( 1.0 * reaction_Clb3_4_degradation__ternary));
	
% Species:   id = Cdk1_Clb1or2, name = Cdk1_Clb1or2, affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_Cdk1_Clb1_2_production) + (-1.0 * reaction_Clb1_2_degradation__binary) + (-1.0 * reaction_Sic1_binding_to_Cdk1_Clb1_2) + ( 1.0 * reaction_Cdk1_Clb1_2_Sic1_dissociation));
	
% Species:   id = Cdk1_Clb1or2_Sic1, name = Cdk1_Clb1or2_Sic1, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_Sic1_binding_to_Cdk1_Clb1_2) + (-1.0 * reaction_Cdk1_Clb1_2_Sic1_dissociation) + (-1.0 * reaction_Clb1_2_degradation__ternary) + (-1.0 * reaction_Sic1_degradation__Clb_regulated__1));
	
% Species:   id = Clb1or2_degraded, name = Clb1or2_degraded, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_Clb1_2_degradation__binary) + ( 1.0 * reaction_Clb1_2_degradation__ternary));
	
% Species:   id = Sic1_degraded_re14, name = Sic1_degraded_re14, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_Sic1_degradation__Clb_regulated__1));
	
% Species:   id = Sic1_degraded_re18, name = Sic1_degraded_re18, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*(( 1.0 * reaction_Sic1_degradation__Clb_regulated__2));
	
% Species:   id = Sic1_degraded_re5, name = Sic1_degraded_re5, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_Sic1_degradation__Clb_regulated));
	
% Species:   id = Clb34_total, name = Clb34_total, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = Clb12_total, name = Clb12_total, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = Clb56_total, name = Clb56_total, involved in a rule 	xdot(16) = x(16);
end

function z=Constant_flux__irreversible_0(v), z=(v);end

function z=Function_for_Sic1_degradation_1(Cdk1_Clb1or2,Cdk1_Clb3or4,Cdk1_Clb5or6,Cdk1_Clb5or6_Sic1,k5), z=(k5*Cdk1_Clb5or6_Sic1*(1+Cdk1_Clb5or6+Cdk1_Clb3or4+Cdk1_Clb1or2));end

function z=Function_for_Cdk1_Clb3_4_production_1(Cdk1_Clb5or6,k7,kA), z=(k7*(1+kA*Cdk1_Clb5or6));end

function z=Function_for_Cd1_Clb12_production_1(Cdk1_Clb1or2,Cdk1_Clb3or4,Cdk1_Clb5or6,k9,kB,kC,kD), z=(k9*(1+kD*Cdk1_Clb1or2+kB*Cdk1_Clb3or4+kC*Cdk1_Clb5or6));end

function z=Function_for_Sic1_degradation_2(Cdk1_Clb1or2,Cdk1_Clb1or2_Sic1,Cdk1_Clb3or4,Cdk1_Clb5or6,k14), z=(k14*Cdk1_Clb1or2_Sic1*(1+Cdk1_Clb5or6+Cdk1_Clb3or4+Cdk1_Clb1or2));end

function z=Function_for_Sic1_degradation_3(Cdk1_Clb1or2,Cdk1_Clb3or4,Cdk1_Clb3or4_Sic1,Cdk1_Clb5or6,k18), z=(k18*Cdk1_Clb3or4_Sic1*(1+Cdk1_Clb5or6+Cdk1_Clb3or4+Cdk1_Clb1or2));end

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


