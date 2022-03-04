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
% Model name = Orfao2008_ThrombinGeneration_AmidolyticActivity
%
% is http://identifiers.org/biomodels.db/MODEL1108260000
% is http://identifiers.org/biomodels.db/BIOMD0000000366
% isDescribedBy http://identifiers.org/doi/10.1016/j.jmaa.2008.05.060
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000358
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(1) = 0.1999999;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.04999999;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.02999999;
	x0(9) = 1.4;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.03;


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

% Compartment: id = compartment_1, name = compartment_1, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  kcat_X, name = kcat_X
	global_par_kcat_X=239.1;
% Parameter:   id =  km_X, name = km_X
	global_par_km_X=23.65;
% Parameter:   id =  ki_Xa, name = ki_Xa
	global_par_ki_Xa=4.531;
% Parameter:   id =  k_PT, name = k_PT
	global_par_k_PT=122.9;
% Parameter:   id =  k_PL, name = k_PL
	global_par_k_PL=801.4;
% Parameter:   id =  kcat_V, name = kcat_V
	global_par_kcat_V=7.844;
% Parameter:   id =  km_V, name = km_V
	global_par_km_V=149.7;
% Parameter:   id =  kcat_II, name = kcat_II
	global_par_kcat_II=43.87;
% Parameter:   id =  km_II, name = km_II
	global_par_km_II=62.25;
% Parameter:   id =  kcat_2, name = kcat_2
	global_par_kcat_2=12.4;
% Parameter:   id =  km_2, name = km_2
	global_par_km_2=0.06148;
% Parameter:   id =  ki_IIaAlpha2M, name = ki_IIaAlpha2M
	global_par_ki_IIaAlpha2M=0.1762;
% Parameter:   id =  ki_IIaATIII, name = ki_IIaATIII
	global_par_ki_IIaATIII=0.7859;
% Parameter:   id =  AmAct, name = AmAct
% assignmentRule: variable = AmAct
	global_par_AmAct=x(7)+0.556*x(10);

% Reaction: id = R1, name = R1
	reaction_R1=compartment_compartment_1*HenriMichaelisMenten_irreversible_kcat(global_par_kcat_X, x(12), x(1), global_par_km_X);

% Reaction: id = R2, name = R2
	reaction_R2=compartment_compartment_1*global_par_ki_Xa*x(2);

% Reaction: id = R3, name = R3
	reaction_R3=compartment_compartment_1*(global_par_k_PT*x(6)*x(2)*x(4)-global_par_k_PL*x(5));

% Reaction: id = R4, name = R4
	reaction_R4=compartment_compartment_1*HenriMichaelisMenten_irreversible_kcat(global_par_kcat_V, x(7), x(8), global_par_km_V);

% Reaction: id = R5, name = R5
	reaction_R5=compartment_compartment_1*HenriMichaelisMenten_irreversible_kcat(global_par_kcat_II, x(5), x(9), global_par_km_II);

% Reaction: id = R6, name = R6
	reaction_R6=compartment_compartment_1*HenriMichaelisMenten_irreversible_kcat(global_par_kcat_2, x(2), x(9), global_par_km_2);

% Reaction: id = R7, name = R7
	reaction_R7=compartment_compartment_1*global_par_ki_IIaAlpha2M*x(7);

% Reaction: id = R8, name = R8
	reaction_R8=compartment_compartment_1*global_par_ki_IIaATIII*x(7);

	xdot=zeros(12,1);
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*((-1.0 * reaction_R1));
	
% Species:   id = Xa, name = Xa, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + (-1.0 * reaction_R3));
	
% Species:   id = Xa_ATIII, name = Xa_ATIII, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R2));
	
% Species:   id = PL, name = PL, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*((-1.0 * reaction_R3));
	
% Species:   id = PT, name = PT, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R3));
	
% Species:   id = Va, name = Va, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*((-1.0 * reaction_R3) + ( 1.0 * reaction_R4));
	
% Species:   id = IIa, name = IIa, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R5) + ( 1.0 * reaction_R6) + (-1.0 * reaction_R7) + (-1.0 * reaction_R8));
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*((-1.0 * reaction_R4));
	
% Species:   id = II, name = II, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_1))*((-1.0 * reaction_R5) + (-1.0 * reaction_R6));
	
% Species:   id = IIa_alpha2M, name = IIa_alpha2M, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R7));
	
% Species:   id = IIa_ATIII, name = IIa_ATIII, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R8));
	
% Species:   id = RVV, name = RVV
% Warning species is not changed by either rules or reactions
	xdot(12) = ;
end

function z=HenriMichaelisMenten_irreversible_kcat(kcat,enzyme,substrate,Km), z=(kcat*enzyme*substrate/(Km+substrate));end

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


