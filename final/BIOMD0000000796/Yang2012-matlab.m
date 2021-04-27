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
% Model name = Yang2012 - cancer growth with angiogenesis
%
% isDescribedBy http://identifiers.org/pubmed/22300422
% is http://identifiers.org/biomodels.db/MODEL1908140001
% is http://identifiers.org/biomodels.db/BIOMD0000000796
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 9.0;
	x0(2) = 10.0;
	x0(3) = 1.023;
	x0(4) = 0.0;
	x0(5) = 0.0;


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
% Parameter:   id =  a1, name = a1
	global_par_a1=0.1;
% Parameter:   id =  a2, name = a2
	global_par_a2=0.1;
% Parameter:   id =  a3, name = a3
	global_par_a3=0.2;
% Parameter:   id =  e, name = e
	global_par_e=0.01;
% Parameter:   id =  u1, name = u1
	global_par_u1=0.01;
% Parameter:   id =  u2, name = u2
	global_par_u2=0.05;
% Parameter:   id =  u3, name = u3
	global_par_u3=0.05;
% Parameter:   id =  u4, name = u4
	global_par_u4=0.01;
% Parameter:   id =  u5, name = u5
	global_par_u5=0.01;
% Parameter:   id =  k1, name = k1
	global_par_k1=10.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=20.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=5.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=1.0;
% Parameter:   id =  d, name = d
	global_par_d=0.1;
% Parameter:   id =  y, name = y
	global_par_y=0.01;
% Parameter:   id =  b1, name = b1
	global_par_b1=0.01;
% Parameter:   id =  b2, name = b2
	global_par_b2=0.01;
% Parameter:   id =  C_plot, name = C_plot
% Parameter:   id =  E_plot, name = E_plot
% Parameter:   id =  T_plot, name = T_plot
% Parameter:   id =  P_plot, name = P_plot
% Parameter:   id =  A_plot, name = A_plot
% Parameter:   id =  c1, name = c1
	global_par_c1=10.0;
% Parameter:   id =  c2, name = c2
	global_par_c2=10.0;
% Parameter:   id =  c3, name = c3
	global_par_c3=1.0;
% Parameter:   id =  c4, name = c4
	global_par_c4=0.25;
% Parameter:   id =  c5, name = c5
	global_par_c5=1.0;
% assignmentRule: variable = P_plot
	global_par_P_plot=x(4)/global_par_c4;
% assignmentRule: variable = E_plot
	global_par_E_plot=x(2)/global_par_c2;
% assignmentRule: variable = A_plot
	global_par_A_plot=x(5);
% assignmentRule: variable = C_plot
	global_par_C_plot=x(1)/global_par_c1;
% assignmentRule: variable = T_plot
	global_par_T_plot=x(3);

% Reaction: id = normal_cell_growth, name = normal cell growth
	reaction_normal_cell_growth=compartment_tme*logistic(global_par_a1, x(1), global_par_k1);

% Reaction: id = normal_cell_death, name = normal cell death
	reaction_normal_cell_death=compartment_tme*global_par_u1*x(1);

% Reaction: id = normal_cell_depletion, name = normal cell depletion
	reaction_normal_cell_depletion=compartment_tme*deplete(global_par_b1, x(3), x(1));

% Reaction: id = endothelial_growth, name = endothelial growth
	reaction_endothelial_growth=compartment_tme*logistic(global_par_a2, x(2), global_par_k2);

% Reaction: id = endothelial_death, name = endothelial death
	reaction_endothelial_death=compartment_tme*global_par_u2*x(2);

% Reaction: id = pre_angiogenesis, name = pre-angiogenesis
	reaction_pre_angiogenesis=compartment_tme*deplete(global_par_y, x(3), x(2));

% Reaction: id = tumor_growth, name = tumor growth
	reaction_tumor_growth=compartment_tme*ang(global_par_a3, x(5), x(3), global_par_k3);

% Reaction: id = tumor_death, name = tumor death
	reaction_tumor_death=compartment_tme*global_par_u3*x(3);

% Reaction: id = tumor_depletion, name = tumor depletion
	reaction_tumor_depletion=compartment_tme*deplete(global_par_b2, x(1), x(3));

% Reaction: id = pa_death, name = pa death
	reaction_pa_death=compartment_tme*global_par_u4*x(4);

% Reaction: id = pa_conversion, name = pa conversion
	reaction_pa_conversion=compartment_tme*global_par_d*x(4);

% Reaction: id = angiogenesis, name = angiogenesis
	reaction_angiogenesis=compartment_tme*ang(global_par_e, x(3), x(5), global_par_k4);

% Reaction: id = angiogenesis_cell_death, name = angiogenesis cell death
	reaction_angiogenesis_cell_death=compartment_tme*global_par_u5*x(5);

	xdot=zeros(5,1);
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(1) = (1/(compartment_tme))*(( 1.0 * reaction_normal_cell_growth) + (-1.0 * reaction_normal_cell_death) + (-1.0 * reaction_normal_cell_depletion));
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(2) = (1/(compartment_tme))*(( 1.0 * reaction_endothelial_growth) + (-1.0 * reaction_endothelial_death) + (-1.0 * reaction_pre_angiogenesis));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(3) = (1/(compartment_tme))*(( 1.0 * reaction_tumor_growth) + (-1.0 * reaction_tumor_death) + (-1.0 * reaction_tumor_depletion));
	
% Species:   id = P, name = P, affected by kineticLaw
	xdot(4) = (1/(compartment_tme))*(( 1.0 * reaction_pre_angiogenesis) + (-1.0 * reaction_pa_death) + (-1.0 * reaction_pa_conversion));
	
% Species:   id = A, name = A, affected by kineticLaw
	xdot(5) = (1/(compartment_tme))*(( 1.0 * reaction_pa_conversion) + ( 1.0 * reaction_angiogenesis) + (-1.0 * reaction_angiogenesis_cell_death));
end

function z=deplete(rate,mod,sub), z=(rate*mod*sub);end

function z=ang(e,T,A,k4), z=(e*T*A*(1-A/k4));end

function z=logistic(a,pro,k), z=(a*pro*(1-pro/k));end

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


