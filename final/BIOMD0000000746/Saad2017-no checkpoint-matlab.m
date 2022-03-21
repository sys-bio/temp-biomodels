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
% Model name = Saad2017 - immune checkpoint and BCG in superficial bladder cancer
%
% isDescribedBy http://identifiers.org/pubmed/29312460
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 100000.0;
	x0(2) = 1.0;
	x0(3) = 0.0;


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

% Compartment: id = bladder_cancer_tme, name = bladder cancer tme, constant
	compartment_bladder_cancer_tme=1.0;
% Parameter:   id =  r, name = r
	global_par_r=0.0033;
% Parameter:   id =  alpha1, name = alpha1
	global_par_alpha1=1.1E-7;
% Parameter:   id =  a1, name = a1
	global_par_a1=0.25;
% Parameter:   id =  a2, name = a2
	global_par_a2=0.052;
% Parameter:   id =  alpha2, name = alpha2
	global_par_alpha2=3.45E-10;
% Parameter:   id =  u1, name = u1
	global_par_u1=0.041;
% Parameter:   id =  u2, name = u2
	global_par_u2=0.1;
% Parameter:   id =  b, name = b
	global_par_b=650000.0;
% Parameter:   id =  alpha3, name = alpha3
	global_par_alpha3=1.25E-7;

% Reaction: id = cancer_growth, name = cancer growth
	reaction_cancer_growth=compartment_bladder_cancer_tme*cancer_growth_0(global_par_r, x(1));

% Reaction: id = cancer_killing, name = cancer killing
	reaction_cancer_killing=compartment_bladder_cancer_tme*cancer_killing_0(global_par_alpha1, x(2), x(1));

% Reaction: id = effector_activation_by_cancer, name = effector activation by cancer
	reaction_effector_activation_by_cancer=compartment_bladder_cancer_tme*effector_activation(global_par_a1, x(2), x(1));

% Reaction: id = effector_activation_by_BCG, name = effector activation by BCG
	reaction_effector_activation_by_BCG=compartment_bladder_cancer_tme*effector_activation(global_par_a2, x(2), x(3));

% Reaction: id = effector_depletion_by_cancer, name = effector depletion by cancer
	reaction_effector_depletion_by_cancer=compartment_bladder_cancer_tme*effector_depletion_by_cancer_0(global_par_alpha2, x(2), x(1));

% Reaction: id = effector_death, name = effector death
	reaction_effector_death=compartment_bladder_cancer_tme*global_par_u1*x(2);

% Reaction: id = BCG_death, name = BCG death
	reaction_BCG_death=compartment_bladder_cancer_tme*global_par_u2*x(3);

% Reaction: id = BCG_killing_by_effector, name = BCG killing by effector
	reaction_BCG_killing_by_effector=compartment_bladder_cancer_tme*BCG_degradation(global_par_alpha3, x(2), x(3));

	xdot=zeros(3,1);
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(1) = (1/(compartment_bladder_cancer_tme))*(( 1.0 * reaction_cancer_growth) + (-1.0 * reaction_cancer_killing));
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(2) = (1/(compartment_bladder_cancer_tme))*(( 1.0 * reaction_effector_activation_by_cancer) + ( 1.0 * reaction_effector_activation_by_BCG) + (-1.0 * reaction_effector_depletion_by_cancer) + (-1.0 * reaction_effector_death));
	
% Species:   id = B, name = B, affected by kineticLaw
	xdot(3) = (1/(compartment_bladder_cancer_tme))*(( 1.0 * reaction_BCG_source__therapy) + (-1.0 * reaction_BCG_death) + (-1.0 * reaction_BCG_killing_by_effector));
end

function z=BCG_degradation(alpha3,E,B), z=(alpha3*E*B);end

function z=effector_depletion_by_cancer_0(alpha2,E,C), z=(alpha2*E*C);end

function z=cancer_growth_0(r,C), z=(r*C);end

function z=effector_activation(a,E,activator), z=(a*E*activator);end

function z=Constant_flux__irreversible(v), z=(v);end

function z=cancer_killing_0(alpha1,E,C), z=(alpha1*E*C);end

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


