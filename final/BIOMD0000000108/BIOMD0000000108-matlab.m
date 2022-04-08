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
% Model name = Kowald2006_SOD
%
% is http://identifiers.org/biomodels.db/MODEL5128825728
% is http://identifiers.org/biomodels.db/BIOMD0000000108
% isDescribedBy http://identifiers.org/pubmed/16085106
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 0.0;
	x0(2) = 5.0E-6;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;


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

% Compartment: id = compartment_0000001, name = cell, constant
	compartment_compartment_0000001=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=6.6E-7;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.6E9;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.6E9;
% Parameter:   id =  k4, name = k4
	global_par_k4=100000.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=20000.0;
% Parameter:   id =  k6, name = k6
	global_par_k6=1.0;
% Parameter:   id =  k7, name = k7
	global_par_k7=3.4E7;
% Parameter:   id =  k9, name = k9
	global_par_k9=1000000.0;
% Parameter:   id =  k10, name = k10
	global_par_k10=1000.0;
% Parameter:   id =  k11, name = k11
	global_par_k11=2.5E8;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.38;
% Parameter:   id =  k13a, name = k13a
	global_par_k13a=0.0087;
% Parameter:   id =  k13b, name = k13b
	global_par_k13b=0.0087;
% Parameter:   id =  k17, name = k17
	global_par_k17=30000.0;
% Parameter:   id =  k18, name = k18
	global_par_k18=7.0;
% Parameter:   id =  k19, name = k19
	global_par_k19=88000.0;
% Parameter:   id =  HO2star, name = HO2*
% Parameter:   id =  Cu_I_ZnSOD, name = Cu(I)ZnSOD
% assignmentRule: variable = HO2star
	global_par_HO2star=x(1)/100;
% assignmentRule: variable = Cu_I_ZnSOD
	global_par_Cu_I_ZnSOD=const_species_species_0000016-x(2);

% Reaction: id = reaction_0000001, name = v1
	reaction_reaction_0000001=compartment_compartment_0000001*global_par_k1;

% Reaction: id = reaction_0, name = v2
	reaction_reaction_0=compartment_compartment_0000001*global_par_k2*x(1)*x(2);

% Reaction: id = reaction_1, name = v3
	reaction_reaction_1=compartment_compartment_0000001*global_par_k3*x(1)*global_par_Cu_I_ZnSOD;

% Reaction: id = reaction_2, name = v4
	reaction_reaction_2=compartment_compartment_0000001*global_par_k4*x(1)*x(4);

% Reaction: id = reaction_3, name = v5
	reaction_reaction_3=compartment_compartment_0000001*global_par_k5*x(1)*x(3);

% Reaction: id = reaction_4, name = v6
	reaction_reaction_4=compartment_compartment_0000001*global_par_k6*x(3)*x(2);

% Reaction: id = reaction_5, name = v7
	reaction_reaction_5=compartment_compartment_0000001*global_par_k7*x(3)*const_species_species_0000017;

% Reaction: id = reaction_6, name = v9
	reaction_reaction_6=compartment_compartment_0000001*global_par_k9*x(5);

% Reaction: id = reaction_7, name = v10
	reaction_reaction_7=compartment_compartment_0000001*global_par_k10*global_par_HO2star;

% Reaction: id = reaction_8, name = v11
	reaction_reaction_8=compartment_compartment_0000001*global_par_k11*x(5);

% Reaction: id = reaction_9, name = v12
	reaction_reaction_9=compartment_compartment_0000001*global_par_k12*x(6);

% Reaction: id = reaction_10, name = v13a
	reaction_reaction_10=compartment_compartment_0000001*global_par_k13a*global_par_Cu_I_ZnSOD;

% Reaction: id = reaction_11, name = v13b
	reaction_reaction_11=compartment_compartment_0000001*global_par_k13b*x(2);

% Reaction: id = reaction_12, name = v17
	reaction_reaction_12=compartment_compartment_0000001*global_par_k17*x(7);

% Reaction: id = reaction_13, name = v18
	reaction_reaction_13=compartment_compartment_0000001*global_par_k18*x(4);

% Reaction: id = reaction_14, name = v19
	reaction_reaction_14=compartment_compartment_0000001*global_par_k19*x(4)^2;

% Reaction: id = fast, name = v16
	reaction_fast=global_par_k10*global_par_HO2star*compartment_compartment_0000001;

% Species:   id = species_0000016, name = SODtotal, constant	const_species_species_0000016=1.0E-5;

% Species:   id = species_0000017, name = Cat, constant	const_species_species_0000017=1.0E-5;

	xdot=zeros(7,1);
	
% Species:   id = species_0000001, name = O2*-, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_0000001) + (-1.0 * reaction_reaction_0) + (-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_fast));
	
% Species:   id = species_0000002, name = Cu(II)ZnSOD, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_0000001))*((-1.0 * reaction_reaction_0) + ( 1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11));
	
% Species:   id = species_0000006, name = H2O2, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_7));
	
% Species:   id = species_0000007, name = LOO*, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_0000001))*((-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13) + (-2.0 * reaction_reaction_14));
	
% Species:   id = species_0000008, name = HO*, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_0000001))*(( 2.0 * reaction_reaction_3) + ( 2.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_8));
	
% Species:   id = species_0000009, name = LOOH, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_13));
	
% Species:   id = species_0000011, name = L*, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_12) + ( 1.0 * reaction_reaction_13));
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


