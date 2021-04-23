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
% Model name = Chen2006 - Nitric Oxide Release from Endothelial Cells
%
% is http://identifiers.org/biomodels.db/MODEL1006230005
% isDescribedBy http://identifiers.org/pubmed/16864000
% is http://identifiers.org/biomodels.db/BIOMD0000000676
%


function main()
%Initial conditions vector
	x0=zeros(13,1);
	x0(1) = 0.015;
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

% Compartment: id = Endothelium, name = Endothelium, constant
	compartment_Endothelium=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.1;
% Parameter:   id =  k1_prime, name = k1_prime
	global_par_k1_prime=0.1;
% Parameter:   id =  k4, name = k4
	global_par_k4=1.89;
% Parameter:   id =  k4_prime, name = k4_prime
	global_par_k4_prime=11.4;
% Parameter:   id =  S, name = S
	global_par_S=0.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.91;
% Parameter:   id =  k14, name = k14
	global_par_k14=53.9;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.033;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.1;
% Parameter:   id =  k8_prime, name = k8_prime
	global_par_k8_prime=0.1;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.91;
% Parameter:   id =  k9, name = k9
	global_par_k9=11.4;
% Parameter:   id =  k9_prime, name = k9_prime
	global_par_k9_prime=1.89;
% Parameter:   id =  k5, name = k5
	global_par_k5=2.58;
% Parameter:   id =  k5_prime, name = k5_prime
	global_par_k5_prime=98.0;
% Parameter:   id =  k6, name = k6
	global_par_k6=12.6;
% Parameter:   id =  k7, name = k7
	global_par_k7=0.91;
% Parameter:   id =  k10, name = k10
	global_par_k10=3.33;
% Parameter:   id =  k10_prime, name = k10_prime
	global_par_k10_prime=89.9;
% Parameter:   id =  k11, name = k11
	global_par_k11=29.4;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.91;

% Reaction: id = Fe3__Arg_synthesis, name = Fe3+_Arg synthesis
	reaction_Fe3__Arg_synthesis=compartment_Endothelium*(global_par_k1*const_species_Arg*x(1)-global_par_k1_prime*x(2));

% Reaction: id = Fe2__Arg_synthesis_dissociation, name = Fe2+_Arg synthesis/dissociation
	reaction_Fe2__Arg_synthesis_dissociation=compartment_Endothelium*(global_par_k4*const_species_Arg*x(3)-global_par_k4_prime*x(4));

% Reaction: id = Fe2__formation, name = Fe2+ formation
	reaction_Fe2__formation=compartment_Endothelium*global_par_k2*x(1);

% Reaction: id = Fe3__and_NO_formation, name = Fe3+ and NO formation
	reaction_Fe3__and_NO_formation=compartment_Endothelium*global_par_k14*x(5);

% Reaction: id = Fe3__formation, name = Fe3+ formation
	reaction_Fe3__formation=compartment_Endothelium*function_for_modified_reactions(global_par_k13, const_species_O2, x(7));

% Reaction: id = Fe3__NOHA_formation_degradation, name = Fe3+_NOHA formation/degradation
	reaction_Fe3__NOHA_formation_degradation=compartment_Endothelium*(global_par_k8*x(8)-global_par_k8_prime*x(1)*x(9));

% Reaction: id = Fe2__Arg_formation, name = Fe2+_Arg formation
	reaction_Fe2__Arg_formation=compartment_Endothelium*global_par_k3*x(2);

% Reaction: id = Fe2__NOHA_formation, name = Fe2+_NOHA formation
	reaction_Fe2__NOHA_formation=compartment_Endothelium*(global_par_k9*x(10)-global_par_k9_prime*x(3)*x(9));

% Reaction: id = Fe3__O2_Arg_formation_with_Oxygen_activation, name = Fe3+_O2-Arg formation with Oxygen activation
	reaction_Fe3__O2_Arg_formation_with_Oxygen_activation=compartment_Endothelium*function_for_modified_reactions(global_par_k5, const_species_O2, x(4));

% Reaction: id = Fe3__O2_Arg_degradation, name = Fe3+_O2-Arg degradation
	reaction_Fe3__O2_Arg_degradation=compartment_Endothelium*global_par_k5_prime*x(11);

% Reaction: id = Fe3__NOHA_synthesis, name = Fe3+_NOHA synthesis
	reaction_Fe3__NOHA_synthesis=compartment_Endothelium*global_par_k6*x(11);

% Reaction: id = Fe2__NOHA_synthesis, name = Fe2+_NOHA synthesis
	reaction_Fe2__NOHA_synthesis=compartment_Endothelium*global_par_k7*x(8);

% Reaction: id = Fe3__O2__NOHA_synthesis_with_Oxygen_activation, name = Fe3+_O2-_NOHA synthesis with Oxygen activation
	reaction_Fe3__O2__NOHA_synthesis_with_Oxygen_activation=compartment_Endothelium*function_for_modified_reactions(global_par_k10, const_species_O2, x(10));

% Reaction: id = Fe3__NO_and_Citrulline_synthesis, name = Fe3+_NO and Citrulline synthesis
	reaction_Fe3__NO_and_Citrulline_synthesis=compartment_Endothelium*global_par_k11*x(12);

% Reaction: id = Fe2__NO_synthesis, name = Fe2+_NO synthesis
	reaction_Fe2__NO_synthesis=compartment_Endothelium*global_par_k12*x(5);

% Reaction: id = Fe3__O2__NOHA_degradation, name = Fe3+_O2-_NOHA degradation
	reaction_Fe3__O2__NOHA_degradation=compartment_Endothelium*global_par_k10_prime*x(12);

% Species:   id = Arg, name = Arg, constant	const_species_Arg=100.0;

% Species:   id = O2, name = O2, constant	const_species_O2=150.0;

	xdot=zeros(13,1);
	
% Species:   id = Fe3__enos, name = Fe3+(enos), affected by kineticLaw
	xdot(1) = (1/(compartment_Endothelium))*((-1.0 * reaction_Fe3__Arg_synthesis) + (-1.0 * reaction_Fe2__formation) + ( 1.0 * reaction_Fe3__and_NO_formation) + ( 1.0 * reaction_Fe3__formation) + ( 1.0 * reaction_Fe3__NOHA_formation_degradation));
	
% Species:   id = Fe3__Arg, name = Fe3+_Arg, affected by kineticLaw
	xdot(2) = (1/(compartment_Endothelium))*(( 1.0 * reaction_Fe3__Arg_synthesis) + (-1.0 * reaction_Fe2__Arg_formation));
	
% Species:   id = Fe2, name = Fe2+, affected by kineticLaw
	xdot(3) = (1/(compartment_Endothelium))*((-1.0 * reaction_Fe2__Arg_synthesis_dissociation) + ( 1.0 * reaction_Fe2__formation) + ( 1.0 * reaction_Fe2__NOHA_formation));
	
% Species:   id = Fe2__Arg, name = Fe2+_Arg, affected by kineticLaw
	xdot(4) = (1/(compartment_Endothelium))*(( 1.0 * reaction_Fe2__Arg_synthesis_dissociation) + ( 1.0 * reaction_Fe2__Arg_formation) + (-1.0 * reaction_Fe3__O2_Arg_formation_with_Oxygen_activation) + ( 1.0 * reaction_Fe3__O2_Arg_degradation));
	
% Species:   id = Fe3__NO, name = Fe3+_NO, affected by kineticLaw
	xdot(5) = (1/(compartment_Endothelium))*((-1.0 * reaction_Fe3__and_NO_formation) + ( 1.0 * reaction_Fe3__NO_and_Citrulline_synthesis) + (-1.0 * reaction_Fe2__NO_synthesis));
	
% Species:   id = NO, name = NO, affected by kineticLaw
	xdot(6) = (1/(compartment_Endothelium))*(( 1.0 * reaction_Fe3__and_NO_formation));
	
% Species:   id = Fe2__NO, name = Fe2+_NO, affected by kineticLaw
	xdot(7) = (1/(compartment_Endothelium))*((-1.0 * reaction_Fe3__formation) + ( 1.0 * reaction_Fe2__NO_synthesis));
	
% Species:   id = Fe3__NOHA, name = Fe3+_NOHA, affected by kineticLaw
	xdot(8) = (1/(compartment_Endothelium))*((-1.0 * reaction_Fe3__NOHA_formation_degradation) + ( 1.0 * reaction_Fe3__NOHA_synthesis) + (-1.0 * reaction_Fe2__NOHA_synthesis));
	
% Species:   id = NOHA, name = NOHA, affected by kineticLaw
	xdot(9) = (1/(compartment_Endothelium))*(( 1.0 * reaction_Fe3__NOHA_formation_degradation) + ( 1.0 * reaction_Fe2__NOHA_formation));
	
% Species:   id = Fe2__NOHA, name = Fe2+_NOHA, affected by kineticLaw
	xdot(10) = (1/(compartment_Endothelium))*((-1.0 * reaction_Fe2__NOHA_formation) + ( 1.0 * reaction_Fe2__NOHA_synthesis) + (-1.0 * reaction_Fe3__O2__NOHA_synthesis_with_Oxygen_activation) + ( 1.0 * reaction_Fe3__O2__NOHA_degradation));
	
% Species:   id = Fe3__O2__Arg, name = Fe3+_O2-_Arg, affected by kineticLaw
	xdot(11) = (1/(compartment_Endothelium))*(( 1.0 * reaction_Fe3__O2_Arg_formation_with_Oxygen_activation) + (-1.0 * reaction_Fe3__O2_Arg_degradation) + (-1.0 * reaction_Fe3__NOHA_synthesis));
	
% Species:   id = Fe3__O2__NOHA, name = Fe3+_O2-_NOHA, affected by kineticLaw
	xdot(12) = (1/(compartment_Endothelium))*(( 1.0 * reaction_Fe3__O2__NOHA_synthesis_with_Oxygen_activation) + (-1.0 * reaction_Fe3__NO_and_Citrulline_synthesis) + (-1.0 * reaction_Fe3__O2__NOHA_degradation));
	
% Species:   id = Citrulline, name = Citrulline, affected by kineticLaw
	xdot(13) = (1/(compartment_Endothelium))*(( 1.0 * reaction_Fe3__NO_and_Citrulline_synthesis));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=function_for_modified_reactions(k,modifier,substrate), z=(k*modifier*substrate);end

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


