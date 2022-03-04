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
% Model name = Dunster2016 - Nondimensional Coagulation Model
%
% is http://identifiers.org/biomodels.db/MODEL1808140001
% is http://identifiers.org/biomodels.db/BIOMD0000000925
%


function main()
%Initial conditions vector
	x0=zeros(16,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 3.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 17.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 92.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 5.0;
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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  k1a, name = k1a
	global_par_k1a=150.0;
% Parameter:   id =  gamma1a, name = gamma1a
	global_par_gamma1a=0.77;
% Parameter:   id =  k1b, name = k1b
	global_par_k1b=0.19;
% Parameter:   id =  k2a, name = k2a
	global_par_k2a=2.0;
% Parameter:   id =  k2am, name = k2am
	global_par_k2am=7.2;
% Parameter:   id =  k2b, name = k2b
	global_par_k2b=0.013;
% Parameter:   id =  k3a, name = k3a
	global_par_k3a=150.0;
% Parameter:   id =  q3a, name = q3a
	global_par_q3a=1.0;
% Parameter:   id =  k3b, name = k3b
	global_par_k3b=0.038;
% Parameter:   id =  k3c, name = k3c
	global_par_k3c=1.0;
% Parameter:   id =  k4a, name = k4a
	global_par_k4a=0.12;
% Parameter:   id =  q4a, name = q4a
	global_par_q4a=0.004;
% Parameter:   id =  k4b, name = k4b
	global_par_k4b=530.0;
% Parameter:   id =  k4bm, name = k4bm
	global_par_k4bm=3.6;
% Parameter:   id =  k5a, name = k5a
	global_par_k5a=0.0011;
% Parameter:   id =  k5b, name = k5b
	global_par_k5b=0.27;
% Parameter:   id =  k6, name = k6
	global_par_k6=1500.0;
% Parameter:   id =  kx, name = kx
	global_par_kx=385.0;
% Parameter:   id =  kb, name = kb
	global_par_kb=5.0E-4;
% Parameter:   id =  Ix, name = Ix
	global_par_Ix=7.69;
% Parameter:   id =  Ib, name = Ib
	global_par_Ib=0.05;
% Parameter:   id =  log_time, name = log_time
% assignmentRule: variable = Va_Xa_L
	x(10)=0.5*(global_par_kb+global_par_Ib+x(7)-((global_par_kb+global_par_Ib+x(7))^2-4*global_par_Ib*x(7))^(1/2));
% assignmentRule: variable = Xa_L
	x(9)=0.5*(global_par_kx+global_par_Ix+x(1)-((global_par_kx+global_par_Ix+x(1))^2-4*global_par_Ix*x(1))^(1/2));
% assignmentRule: variable = log_time
	global_par_log_time=log(10, time)/log(10, 10)/log(10, 10)/log(10, 10);

% Reaction: id = Reaction_for_Generation_of_Xa, name = Reaction for Generation of Xa
	reaction_Reaction_for_Generation_of_Xa=compartment_compartment*Rate_Law_for_reaction_for_generation_of_Xa_1(time, global_par_gamma1a, global_par_k1a);

% Reaction: id = Reaction_for_Generation_of_Va, name = Reaction for Generation of Va
	reaction_Reaction_for_Generation_of_Va=compartment_compartment*Rate_law_reaction_for_generation_of_Va_1(x(3), x(4), x(1), x(14), x(8), x(7), x(2), global_par_k2am, global_par_k2b, global_par_k3b, global_par_q3a);

% Reaction: id = Reaction_for_Inactivation_of_Xa, name = Reaction for Inactivation of Xa
	reaction_Reaction_for_Inactivation_of_Xa=compartment_compartment*global_par_k1b*x(1);

% Reaction: id = Reaction_for_Inactivation_of_Va, name = Reaction for Inactivation of Va
	reaction_Reaction_for_Inactivation_of_Va=compartment_compartment*Rate_Law_for_reaction_for_Inactivation_of_Va(x(5), x(4));

% Reaction: id = Reaction_for_Formation_of_Prothrombinase, name = Reaction for Formation of Prothrombinase
	reaction_Reaction_for_Formation_of_Prothrombinase=compartment_compartment*Rate_Law_for_reaction_for_formaation_of_prothrombinase_1(x(5), x(4), x(1), x(7), global_par_k3a, global_par_k3c);

% Reaction: id = Reaction_for_Inactivation_of_prothrombinase_1, name = Reaction for Inactivation of prothrombinase_1
	reaction_Reaction_for_Inactivation_of_prothrombinase_1=compartment_compartment*Rate_Law_for_reaction_for_Inactivation_of_prothrombinase_1_1(x(4), x(1), x(7), global_par_k3b, global_par_q3a);

% Reaction: id = reaction_for_Inactivation_of_prothrombinase_2, name = reaction for Inactivation of prothrombinase_2
	reaction_reaction_for_Inactivation_of_prothrombinase_2=compartment_compartment*Rate_Law_for_reaction_for_Inactivation_of_prothrombinase_2_1(x(5), x(7), global_par_k3c, global_par_q3a);

% Reaction: id = reaction_for_Generation_of_thrombin, name = reaction for Generation of thrombin
	reaction_reaction_for_Generation_of_thrombin=compartment_compartment*Rate_Law_for_reaction_for_Generation_of_thrombin_1_1(x(3), x(8), x(9), global_par_q4a);

% Reaction: id = reaction_for_Generation_of_protein_C, name = reaction for Generation of protein C
	reaction_reaction_for_Generation_of_protein_C=compartment_compartment*global_par_k5a*x(11);

% Reaction: id = Reaction_for_Inactivation_of_protein_C, name = Reaction for Inactivation of protein C
	reaction_Reaction_for_Inactivation_of_protein_C=compartment_compartment*global_par_k5b*x(5);

% Reaction: id = reaction_for_Generation_of__Fibrin, name = reaction for Generation of  Fibrin
	reaction_reaction_for_Generation_of__Fibrin=compartment_compartment*global_par_k6*x(14);

% Reaction: id = Reaction_of_V_Inactivation, name = Reaction of V Inactivation
	reaction_Reaction_of_V_Inactivation=compartment_compartment*Rate_Law_for_reaction_for_production_of_V_1(x(3), x(1), x(14), x(7), x(2), global_par_k2a, global_par_k2am, global_par_k2b);

% Reaction: id = Reaction_for_Thrombin_Generation, name = Reaction for Thrombin Generation
	reaction_Reaction_for_Thrombin_Generation=compartment_compartment*Rate_Law_for_reaction_for_thrombin_2_1(x(2));

% Reaction: id = Reaction_for_Thrombin_Inactivation, name = Reaction for Thrombin Inactivation
	reaction_Reaction_for_Thrombin_Inactivation=compartment_compartment*Rate_Law_for_reaction_for_thrombin_1_1(x(8), x(10), global_par_k4b, global_par_k4bm, global_par_q4a);

% Reaction: id = Reaction_for_Prothrombin_inactivation, name = Reaction for Prothrombin inactivation
	reaction_Reaction_for_Prothrombin_inactivation=compartment_compartment*Rate_Law_for_reaction_for_prothrombin_1(x(8), x(10), global_par_k4b, global_par_k4bm);

% Reaction: id = Reaction_for_Inactive_Xa, name = Reaction for Inactive Xa production
	reaction_Reaction_for_Inactive_Xa=compartment_compartment*Rate_Law_for_reaction_for_inactive_Xa__Xi__1(x(1), x(7), global_par_k1b, global_par_k2a, global_par_k3b, global_par_q3a);

	xdot=zeros(16,1);
	
% Species:   id = Factor_Xa, name = Factor Xa, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Reaction_for_Generation_of_Xa) + (-1.0 * reaction_Reaction_for_Inactivation_of_Xa) + (-1.0 * reaction_Reaction_for_Formation_of_Prothrombinase));
	
% Species:   id = Thrombin__IIa, name = Thrombin (IIa), affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_Generation_of_thrombin) + (-1.0 * reaction_Reaction_for_Thrombin_Generation) + ( 1.0 * reaction_Reaction_for_Thrombin_Inactivation));
	
% Species:   id = Factor_V, name = Factor V, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_Reaction_of_V_Inactivation));
	
% Species:   id = Factor_Va, name = Factor Va, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Reaction_for_Generation_of_Va) + (-1.0 * reaction_Reaction_for_Inactivation_of_Va));
	
% Species:   id = APC, name = APC, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_Generation_of_protein_C) + (-1.0 * reaction_Reaction_for_Inactivation_of_protein_C));
	
% Species:   id = VInactive, name = VInactive, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_Reaction_for_Inactivation_of_Va) + ( 1.0 * reaction_reaction_for_Inactivation_of_prothrombinase_2));
	
% Species:   id = Prothrombinase__Va_Xa, name = Prothrombinase (Va:Xa), affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_Reaction_for_Inactivation_of_prothrombinase_1) + (-1.0 * reaction_reaction_for_Inactivation_of_prothrombinase_2));
	
% Species:   id = Prothrombin__II, name = Prothrombin (II), affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_for_Generation_of_thrombin) + (-1.0 * reaction_Reaction_for_Prothrombin_inactivation));
	
% Species:   id = Xa_L, name = Xa:L, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = Va_Xa_L, name = Va:Xa:L, involved in a rule 	xdot(10) = x(10);
	
% Species:   id = Protein_C, name = Protein C, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_for_Generation_of_protein_C));
	
% Species:   id = Inactive_protein_C, name = Inactive protein C, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_Reaction_for_Inactivation_of_protein_C));
	
% Species:   id = Fibrin, name = Fibrin, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_Generation_of__Fibrin));
	
% Species:   id = Fibrinogen, name = Fibrinogen, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*((-1.0 * reaction_reaction_for_Generation_of__Fibrin));
	
% Species:   id = Inactive_Thrombin, name = Inactive Thrombin, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*(( 1.0 * reaction_Reaction_for_Thrombin_Generation));
	
% Species:   id = Factor_Xi, name = Factor Xi, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*(( 1.0 * reaction_Reaction_for_Inactive_Xa));
end

function z=Rate_Law_for_reaction_for_Generation_of_thrombin_1_1(Factor_V,Prothrombin__II,Xa_L,q4a), z=(q4a*Xa_L*Prothrombin__II/(Factor_V+1+Prothrombin__II));end

function z=Rate_Law_for_reaction_for_production_of_V_1(Factor_V,Factor_Xa,Fibrinogen,Prothrombinase__Va_Xa,Thrombin__IIa,k2a,k2am,k2b), z=(k2a*Thrombin__IIa*Factor_V/(Factor_V+k2a*k2am*(1+Fibrinogen))+k2a*k2b*Factor_Xa*Factor_V/(Factor_V+1+Prothrombinase__Va_Xa));end

function z=Rate_Law_for_reaction_for_inactive_Xa__Xi__1(Factor_Xa,Prothrombinase__Va_Xa,k1b,k2a,k3b,q3a), z=(k1b*Factor_Xa+k2a*k3b/q3a*Prothrombinase__Va_Xa);end

function z=Rate_Law_for_reaction_for_formaation_of_prothrombinase_1(APC,Factor_Va,Factor_Xa,Prothrombinase__Va_Xa,k3a,k3c), z=(k3a*Factor_Xa*Factor_Va-k3c*k3a*APC*Prothrombinase__Va_Xa/(Prothrombinase__Va_Xa+1));end

function z=Rate_Law_for_reaction_for_Inactivation_of_prothrombinase_2_1(APC,Prothrombinase__Va_Xa,k3c,q3a), z=(k3c*q3a*APC*Prothrombinase__Va_Xa/(Prothrombinase__Va_Xa+1));end

function z=Rate_Law_for_reaction_for_generation_of_Xa_1(_Dunster2016___Nondimensional_Coagulation_Model,gamma1a,k1a), z=(k1a*gamma1a*exp((-gamma1a)*_Dunster2016___Nondimensional_Coagulation_Model));end

function z=Rate_law_reaction_for_generation_of_Va_1(Factor_V,Factor_Va,Factor_Xa,Fibrinogen,Prothrombin__II,Prothrombinase__Va_Xa,Thrombin__IIa,k2am,k2b,k3b,q3a), z=(Thrombin__IIa*Factor_V/(Factor_V+k2am*(1+Fibrinogen))+k2b*Factor_Xa*Factor_V/(Factor_V+1+Prothrombin__II)+k3b/q3a*Prothrombinase__Va_Xa-Factor_Xa*Factor_Va);end

function z=Rate_Law_for_reaction_for_Inactivation_of_prothrombinase_1_1(Factor_Va,Factor_Xa,Prothrombinase__Va_Xa,k3b,q3a), z=(k3b*Prothrombinase__Va_Xa-q3a*Factor_Xa*Factor_Va);end

function z=Rate_Law_for_reaction_for_thrombin_2_1(Thrombin__IIa), z=(Thrombin__IIa);end

function z=Rate_Law_for_reaction_for_Inactivation_of_Va(APC,Factor_Va), z=(APC*Factor_Va/(Factor_Va+1));end

function z=Rate_Law_for_reaction_for_thrombin_1_1(Prothrombin__II,Va_Xa_L,k4b,k4bm,q4a), z=(q4a*k4b*Va_Xa_L*Prothrombin__II/(q4a*(Prothrombin__II+k4bm)));end

function z=Rate_Law_for_reaction_for_prothrombin_1(Prothrombin__II,Va_Xa_L,k4b,k4bm), z=(k4b*Va_Xa_L*Prothrombin__II/(Prothrombin__II+k4bm));end

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


