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
% Model name = Wang2016/1 - oncolytic efficacy of M1 virus-SNTM model
%
% isDescribedBy http://identifiers.org/pubmed/26976483
% is http://identifiers.org/biomodels.db/MODEL1908060001
% is http://identifiers.org/biomodels.db/BIOMD0000000780
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.1;
	x0(2) = 0.2;
	x0(3) = 0.1;
	x0(4) = 0.0;


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

% Compartment: id = tme, name = tme, constant
	compartment_tme=1.0;
% Parameter:   id =  a, name = a
	global_par_a=0.02;
% Parameter:   id =  d, name = d
	global_par_d=0.02;
% Parameter:   id =  u1, name = u1
	global_par_u1=0.2;
% Parameter:   id =  u2, name = u2
	global_par_u2=0.4;
% Parameter:   id =  r1, name = r1
	global_par_r1=0.8;
% Parameter:   id =  e1, name = e1
	global_par_e1=0.01;
% Parameter:   id =  r2, name = r2
	global_par_r2=0.8;
% Parameter:   id =  e2, name = e2
	global_par_e2=0.04;
% Parameter:   id =  u3, name = u3
	global_par_u3=0.1;
% Parameter:   id =  b, name = b
	global_par_b=0.001;
% Parameter:   id =  r3, name = r3
	global_par_r3=0.5;
% Parameter:   id =  e3, name = e3
	global_par_e3=0.01;
% Parameter:   id =  Q1, name = Q1
% Parameter:   id =  Q2, name = Q2
% Parameter:   id =  B0, name = B0
% assignmentRule: variable = Q2
	global_par_Q2=global_par_a*global_par_r2*global_par_u2/(global_par_d*(global_par_d+global_par_e2));
% assignmentRule: variable = Q1
	global_par_Q1=global_par_a*global_par_r1*global_par_u1/(global_par_d*(global_par_d+global_par_e1));
% assignmentRule: variable = B0
	global_par_B0=global_par_d*(global_par_d+global_par_e1)*(global_par_d+global_par_e2)*(global_par_d+global_par_e3)*(global_par_Q2-global_par_Q1)/(global_par_r1*global_par_u1*global_par_u3*global_par_a);

% Reaction: id = nutrient_decay, name = nutrient decay
	reaction_nutrient_decay=compartment_tme*global_par_d*x(1);

% Reaction: id = nutrient_consumption_N, name = nutrient consumption N
	reaction_nutrient_consumption_N=compartment_tme*decrease(global_par_u1, x(1), x(2));

% Reaction: id = nutrient_consumption_T, name = nutrient consumption T
	reaction_nutrient_consumption_T=compartment_tme*decrease(global_par_u2, x(1), x(3));

% Reaction: id = normal_cell_growth, name = normal cell growth
	reaction_normal_cell_growth=compartment_tme*growth(global_par_r1, x(1), x(2), global_par_u1);

% Reaction: id = normal_cell_death, name = normal cell death
	reaction_normal_cell_death=compartment_tme*death(global_par_d, global_par_e1, x(2));

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_tme*growth(global_par_r2, x(1), x(3), global_par_u2);

% Reaction: id = tumor_death, name = tumor death
	reaction_tumor_death=compartment_tme*death(global_par_d, global_par_e2, x(3));

% Reaction: id = tumor_killing, name = tumor killing
	reaction_tumor_killing=compartment_tme*decrease(global_par_u3, x(3), x(4));

% Reaction: id = virus_burst, name = virus burst
	reaction_virus_burst=compartment_tme*growth(global_par_r3, x(3), x(4), global_par_u3);

% Reaction: id = virus_clearance, name = virus clearance
	reaction_virus_clearance=compartment_tme*death(global_par_d, global_par_e3, x(4));

	xdot=zeros(4,1);
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(1) = (1/(compartment_tme))*(( 1.0 * reaction_nutrient_supply) + (-1.0 * reaction_nutrient_decay) + (-1.0 * reaction_nutrient_consumption_N) + (-1.0 * reaction_nutrient_consumption_T));
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(2) = (1/(compartment_tme))*(( 1.0 * reaction_normal_cell_growth) + (-1.0 * reaction_normal_cell_death));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(3) = (1/(compartment_tme))*(( 1.0 * reaction_tumor_growth) + (-1.0 * reaction_tumor_death) + (-1.0 * reaction_tumor_killing));
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(4) = (1/(compartment_tme))*(( 1.0 * reaction_virus_therapy) + ( 1.0 * reaction_virus_burst) + (-1.0 * reaction_virus_clearance));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=growth(r,mod,pro,u), z=(r*u*mod*pro);end

function z=decrease(u,sub,mod), z=(u*sub*mod);end

function z=death(d,e,sub), z=((d+e)*sub);end

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


