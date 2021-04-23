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
% Model name = Ortega2013 - Interplay between secretases determines biphasic amyloid-beta level
%
% is http://identifiers.org/biomodels.db/MODEL1409240000
% is http://identifiers.org/biomodels.db/BIOMD0000000556
% isDescribedBy http://identifiers.org/pubmed/23152503
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
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

% Compartment: id = Brain, name = Brain, constant
	compartment_Brain=1.0;
% Parameter:   id =  v0, name = v0
	global_par_v0=1.0;
% Parameter:   id =  km1, name = km1
	global_par_km1=0.186;
% Parameter:   id =  vm1, name = vm1
	global_par_vm1=1.1;
% Parameter:   id =  km3, name = km3
	global_par_km3=28.8;
% Parameter:   id =  vm3, name = vm3
	global_par_vm3=14.6;
% Parameter:   id =  km4, name = km4
	global_par_km4=0.915;
% Parameter:   id =  vm4, name = vm4
	global_par_vm4=1.71;
% Parameter:   id =  km5, name = km5
	global_par_km5=0.0672;
% Parameter:   id =  vm5, name = vm5
	global_par_vm5=0.0223;
% Parameter:   id =  km2, name = km2
	global_par_km2=1.64;
% Parameter:   id =  vm2, name = vm2
	global_par_vm2=0.153;
% Parameter:   id =  kic, name = kic
	global_par_kic=0.173;
% Parameter:   id =  kiu1, name = kiu1
	global_par_kiu1=145.0;
% Parameter:   id =  kiu2, name = kiu2
	global_par_kiu2=7.31;
% Parameter:   id =  den, name = den
% assignmentRule: variable = den
	global_par_den=1+x(2)/global_par_km3*(1+const_species_X/global_par_kiu1)/(1+const_species_X/global_par_kic)+x(3)/global_par_km4*(1+const_species_X/global_par_kiu2)/(1+const_species_X/global_par_kic);
% rateRule: variable = APP
x(1) = x(6);
% rateRule: variable = C83
x(2) = x(7);
% rateRule: variable = C99
x(3) = x(8);
% rateRule: variable = AB
x(4) = x(9);
% rateRule: variable = p3
x(5) = x(10);

% Reaction: id = r1, name = r1
	reaction_r1=compartment_Brain*V1_3_4_5(global_par_vm1, x(1), global_par_km1, x(3), global_par_km5);

% Reaction: id = r2, name = r2
	reaction_r2=compartment_Brain*V2(global_par_vm2, x(1), global_par_km2);

% Reaction: id = r3__ND, name = r3 (ND)
	reaction_r3__ND=compartment_Brain*V1_3_4_5(global_par_vm3, x(2), global_par_km3, x(3), global_par_km4);

% Reaction: id = r4__ND, name = r4 (ND)
	reaction_r4__ND=compartment_Brain*V1_3_4_5(global_par_vm4, x(3), global_par_km4, x(2), global_par_km3);

% Reaction: id = r5, name = r5
	reaction_r5=compartment_Brain*V1_3_4_5(global_par_vm5, x(3), global_par_km5, x(1), global_par_km1);

% Reaction: id = r3__D, name = r3 (D)
	reaction_r3__D=compartment_Brain*VD(global_par_vm3, const_species_X, global_par_kic, x(2), global_par_km3, global_par_den);

% Reaction: id = r4__D, name = r4 (D)
	reaction_r4__D=compartment_Brain*VD(global_par_vm4, const_species_X, global_par_kic, x(3), global_par_km4, global_par_den);

% Species:   id = X, name = X, constant	const_species_X=0.0;

	xdot=zeros(10,1);
	% rateRule: variable = APP
	xdot(6) = reaction_r0-reaction_r1-reaction_r2;
	% rateRule: variable = C83
	xdot(7) = reaction_r1+reaction_r5-reaction_r3__D;
	% rateRule: variable = C99
	xdot(8) = reaction_r2-reaction_r5-reaction_r4__D;
	% rateRule: variable = AB
	xdot(9) = reaction_r4__D;
	% rateRule: variable = p3
	xdot(10) = reaction_r3__D;
	
% Species:   id = APP, name = APP, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = C83, name = C83, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = C99, name = C99, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = AB, name = AB, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = p3, name = p3, involved in a rule 	xdot(5) = x(5);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=VD(Vm,X,Kx,S,Km,Den), z=(Vm/(1+X/Kx)*S/Km/Den);end

function z=V1_3_4_5(Vm,S,Km1,M,Km2), z=(Vm*S/Km1/(1+S/Km1+M/Km2));end

function z=V2(Vm,S,Km), z=(Vm*S/Km/(1+S/Km));end

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


