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
% Model name = Reppas2015 - tumor control via alternating immunostimulating and immunosuppressive phases
%
% isDescribedBy http://identifiers.org/pubmed/26305801
% is http://identifiers.org/biomodels.db/MODEL1907110002
% is http://identifiers.org/biomodels.db/BIOMD0000000749
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1000000.0;
	x0(2) = 2.0;
	x0(3) = 0.414213562373095;
	x0(4) = 10.0;


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

% Compartment: id = tumor_microenvironment, name = tumor microenvironment, constant
	compartment_tumor_microenvironment=1.0;
% Parameter:   id =  B, name = B
	global_par_B=0.5;
% Parameter:   id =  lm, name = lm
	global_par_lm=1.34;
% Parameter:   id =  la, name = la
	global_par_la=0.14;
% Parameter:   id =  ld, name = ld
	global_par_ld=0.3;
% Parameter:   id =  c, name = c
	global_par_c=0.03;
% Parameter:   id =  k, name = k
	global_par_k=2.72;
% Parameter:   id =  d1, name = d1
	global_par_d1=0.01;
% Parameter:   id =  d0, name = d0
	global_par_d0=0.37;
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=13000.0;
% Parameter:   id =  r, name = r
	global_par_r=0.57;
% assignmentRule: variable = E_0
	x(4)=x(1)/100000;
% assignmentRule: variable = f
	x(3)=x(2)^(global_par_B-1)/(x(2)^(global_par_B-1)+1);

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_tumor_microenvironment*tumor_growth_0(global_par_lm, global_par_B, x(2));

% Reaction: id = tumor_death, name = tumor death
	reaction_tumor_death=compartment_tumor_microenvironment*tumor_death_0(global_par_la, x(2));

% Reaction: id = tumor_killing, name = tumor killing
	reaction_tumor_killing=compartment_tumor_microenvironment*killing(global_par_c, x(4), x(2), x(3));

% Reaction: id = tumor_nutrient_supply, name = tumor nutrient supply
	reaction_tumor_nutrient_supply=compartment_tumor_microenvironment*nutrience(global_par_lm, global_par_B, global_par_ld, x(2));

% Reaction: id = effector_stimulation, name = effector stimulation
	reaction_effector_stimulation=compartment_tumor_microenvironment*stimulation(global_par_r, x(2), x(1), global_par_k);

% Reaction: id = effector_exhaustion, name = effector exhaustion
	reaction_effector_exhaustion=compartment_tumor_microenvironment*effector_exhaustion_0(global_par_d1, x(1), x(2), x(3));

% Reaction: id = effector_death, name = effector death
	reaction_effector_death=compartment_tumor_microenvironment*global_par_d0*x(1);

% Reaction: id = tumor_nutrient_missuply, name = tumor nutrient missuply
	reaction_tumor_nutrient_missuply=compartment_tumor_microenvironment*nutrience_0(global_par_lm, global_par_B, global_par_ld, x(2));

	xdot=zeros(4,1);
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(1) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_effector_stimulation) + (-1.0 * reaction_effector_exhaustion) + (-1.0 * reaction_effector_death) + ( 1.0 * reaction_effector_source));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(2) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_tumor_growth) + (-1.0 * reaction_tumor_death) + (-1.0 * reaction_tumor_killing) + ( 1.0 * reaction_tumor_nutrient_supply) + (-1.0 * reaction_tumor_nutrient_missuply));
	
% Species:   id = f, name = f, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = E_0, name = E', involved in a rule 	xdot(4) = x(4);
end

function z=effector_exhaustion_0(d1,E,R,f), z=(d1*E*R*R*R*f);end

function z=tumor_death_0(la,R), z=(la*R/3);end

function z=stimulation(r,R,E,k), z=(r*R*R*R*E/(k+R*R*R));end

function z=killing(c,E,R,f), z=(c*E*R*f);end

function z=tumor_growth_0(lm,B,R), z=(lm*B*R/3);end

function z=Constant_flux__irreversible(v), z=(v);end

function z=nutrience(lm,B,ld,R), z=(lm*(1-B)*ld/tanh(R/ld));end

function z=nutrience_0(lm,b,ld,R), z=(lm*(1-b)*ld*ld/R);end

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


