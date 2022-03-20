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
% Model name = Schmierer2010_FIH_Ankyrins
%
% is http://identifiers.org/biomodels.db/MODEL1008170000
% is http://identifiers.org/biomodels.db/BIOMD0000000300
% isDescribedBy http://identifiers.org/pubmed/20955552
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 100.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0099009900990099;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 1.0;


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

% Compartment: id = compartment_1, name = Cell, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  parameter_1, name = alpha
	global_par_parameter_1=0.33;
% Parameter:   id =  parameter_2, name = KdFH
	global_par_parameter_2=1.0;
% Parameter:   id =  parameter_3, name = KdFA
	global_par_parameter_3=1.0;
% Parameter:   id =  parameter_4, name = KdPH
	global_par_parameter_4=1.0;
% Parameter:   id =  parameter_5, name = KdHRE
	global_par_parameter_5=0.3;
% Parameter:   id =  parameter_6, name = gamma
	global_par_parameter_6=0.0;
% Parameter:   id =  parameter_8, name = kcatPH
	global_par_parameter_8=500.0;
% Parameter:   id =  parameter_10, name = w
	global_par_parameter_10=1.0;
% Parameter:   id =  parameter_11, name = eps
	global_par_parameter_11=5.0;
% Parameter:   id =  parameter_14, name = kdeg_A
% Parameter:   id =  parameter_16, name = ksyn_A
% Parameter:   id =  parameter_7, name = KiFH
% Parameter:   id =  parameter_9, name = KiFA
% Parameter:   id =  parameter_13, name = kcatFH
% Parameter:   id =  parameter_17, name = kdeg_H
	global_par_parameter_17=1.0;
% Parameter:   id =  parameter_18, name = ksyn_H
	global_par_parameter_18=1.0;
% assignmentRule: variable = species_4
	x(4)=x(1)-x(2);
% assignmentRule: variable = species_6
	x(5)=const_species_species_5-x(3);
% assignmentRule: variable = species_10
	x(7)=0.5*(x(1)-const_species_species_8-global_par_parameter_4+((global_par_parameter_4-x(1)+const_species_species_8)^2+4*x(1)*global_par_parameter_4)^(0.5));
% assignmentRule: variable = species_13
	x(9)=x(2)/(global_par_parameter_5+x(1));
% assignmentRule: variable = species_14
	x(10)=x(1)/(global_par_parameter_5+x(1));
% assignmentRule: variable = species_16
	x(12)=x(3)/const_species_species_5;
% assignmentRule: variable = species_15
	x(11)=(x(1)-x(2))/(global_par_parameter_5+x(1));
% assignmentRule: variable = parameter_14
	global_par_parameter_14=1/global_par_parameter_11;
% assignmentRule: variable = parameter_16
	global_par_parameter_16=const_species_species_5/global_par_parameter_11;
% assignmentRule: variable = parameter_7
	global_par_parameter_7=global_par_parameter_2/global_par_parameter_3*(global_par_parameter_3+x(3)+global_par_parameter_6*(const_species_species_5-x(3)));
% assignmentRule: variable = species_9
	x(6)=0.5*(x(2)-const_species_species_7-global_par_parameter_7+((global_par_parameter_7-x(2)+const_species_species_7)^2+4*x(2)*global_par_parameter_7)^(0.5));
% assignmentRule: variable = species_12
	x(8)=(global_par_parameter_2+x(6))/(global_par_parameter_7+x(6));
% assignmentRule: variable = parameter_9
	global_par_parameter_9=global_par_parameter_3/global_par_parameter_2*(global_par_parameter_2+x(6));
% assignmentRule: variable = parameter_13
	global_par_parameter_13=global_par_parameter_8*global_par_parameter_10;

% Reaction: id = reaction_2, name = Htot basal degradation
	reaction_reaction_2=compartment_compartment_1*global_par_parameter_17*x(1);

% Reaction: id = reaction_3, name = Htot induced degradation
	reaction_reaction_3=compartment_compartment_1*function_2(global_par_parameter_8, const_species_species_8, const_species_species_11, global_par_parameter_4, x(1), x(7));

% Reaction: id = reaction_5, name = H basal degardation
	reaction_reaction_5=compartment_compartment_1*global_par_parameter_17*x(2);

% Reaction: id = reaction_6, name = H induced degradation
	reaction_reaction_6=compartment_compartment_1*function_3(x(2), global_par_parameter_8, const_species_species_8, const_species_species_11, global_par_parameter_4, x(7));

% Reaction: id = reaction_7, name = H hydroxylation
	reaction_reaction_7=compartment_compartment_1*vFH(const_species_species_7, const_species_species_11, global_par_parameter_1, x(2), global_par_parameter_7, x(6), global_par_parameter_13);

% Reaction: id = reaction_9, name = A degradation
	reaction_reaction_9=compartment_compartment_1*global_par_parameter_14*x(3);

% Reaction: id = reaction_10, name = A hydroxylation
	reaction_reaction_10=compartment_compartment_1*vFA(const_species_species_7, const_species_species_11, global_par_parameter_1, x(3), global_par_parameter_6, const_species_species_5, global_par_parameter_9, global_par_parameter_13);

% Species:   id = species_5, name = Atot, constant	const_species_species_5=100.0;

% Species:   id = species_7, name = Ftot, constant	const_species_species_7=1.0;

% Species:   id = species_8, name = Ptot, constant	const_species_species_8=0.2;

% Species:   id = species_11, name = O2, constant	const_species_species_11=0.0;

	xdot=zeros(12,1);
	
% Species:   id = species_1, name = Htot, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3));
	
% Species:   id = species_2, name = H, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_7));
	
% Species:   id = species_3, name = A, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10));
	
% Species:   id = species_4, name = HOH, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = species_6, name = AOH, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = species_9, name = HF, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = species_10, name = HP, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = species_12, name = FIHfree, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = species_13, name = CAD, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = species_14, name = NAD, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = species_15, name = CADOH, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = species_16, name = A for plotting, involved in a rule 	xdot(12) = x(12);
end

function z=function_1(v), z=(v);end

function z=function_2(kcatPH,Ptot,O2,KdPH,Htot,HP), z=(Htot*kcatPH*Ptot*O2/(1+O2)/(KdPH+Ptot+HP));end

function z=vFH(Ftot,O2,alpha,H,KiFH,HF,KcatFH), z=(H*KcatFH*Ftot*O2/(alpha+O2)/(KiFH+Ftot+HF));end

function z=vFA(Ftot,O2,alpha,A,gamma,Atot,KiFA,KcatFH), z=(A*KcatFH*Ftot*O2/(alpha+O2)/(KiFA+A+gamma*(Atot-A)));end

function z=function_3(H,kcatPH,Ptot,O2,KdPH,HP), z=(H*kcatPH*Ptot*O2/(1+O2)/(KdPH+Ptot+HP));end

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


