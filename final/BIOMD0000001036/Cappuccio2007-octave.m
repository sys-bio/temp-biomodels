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
% Model name = Cappuccio2007 - Tumor-immune system interactions and determination of the optimal therapeutic protocol in immunotherapy
%
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000732
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000732
% isDerivedFrom http://identifiers.org/pubmed/9785481
% is http://identifiers.org/biomodels.db/MODEL2108260001
% is http://identifiers.org/biomodels.db/BIOMD0000001036
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 1.0E-5;
	x0(2) = 1.0E-5;
	x0(3) = 1.0E-5;


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

% Compartment: id = Tumor_microenvironment, name = Tumor_microenvironment, constant
	compartment_Tumor_microenvironment=1.0;
% Parameter:   id =  c, name = c
	global_par_c=1.009;
% Parameter:   id =  mu2, name = mu2
	global_par_mu2=0.0378;
% Parameter:   id =  p1, name = p1
	global_par_p1=0.044;
% Parameter:   id =  g1, name = g1
	global_par_g1=0.02;
% Parameter:   id =  s1, name = s1
	global_par_s1=0.0;
% Parameter:   id =  r2, name = r2
	global_par_r2=0.123;
% Parameter:   id =  b, name = b
	global_par_b=1.0;
% Parameter:   id =  a, name = a
	global_par_a=0.018;
% Parameter:   id =  g2, name = g2
	global_par_g2=1.0E-4;
% Parameter:   id =  p2, name = p2
	global_par_p2=0.9;
% Parameter:   id =  g3, name = g3
	global_par_g3=1.0E-5;
% Parameter:   id =  mu3, name = mu3
	global_par_mu3=1.8;
% Parameter:   id =  s2, name = s2
	global_par_s2=0.0;

% Reaction: id = Effector_cell_stimulation, name = Effector_cell_stimulation
	reaction_Effector_cell_stimulation=compartment_Tumor_microenvironment*Rate_Law_for_Effector_cell_increase(global_par_c, x(2), global_par_p1, x(1), x(3), global_par_g1, global_par_s1);

% Reaction: id = Effector_cell_decay, name = Effector_cell_decay
	reaction_Effector_cell_decay=compartment_Tumor_microenvironment*global_par_mu2*x(1);

% Reaction: id = Tumor_growth, name = Tumor_growth
	reaction_Tumor_growth=compartment_Tumor_microenvironment*Rate_Law_for_Tumor_cell_increase(global_par_r2, x(2), global_par_b);

% Reaction: id = Tumor_killing, name = Tumor_killing
	reaction_Tumor_killing=compartment_Tumor_microenvironment*Rate_Law_for_Tumor_cell_decrease(global_par_a, x(1), x(2), global_par_g2);

% Reaction: id = IL_2_production, name = IL-2_production
	reaction_IL_2_production=compartment_Tumor_microenvironment*Rate_Law_for_IL_2_increase(global_par_p2, x(1), x(2), global_par_g3, global_par_s2);

% Reaction: id = IL_2_decay, name = IL-2_decay
	reaction_IL_2_decay=compartment_Tumor_microenvironment*global_par_mu3*x(3);

	xdot=zeros(3,1);
	
% Species:   id = Effector_cells, name = Effector_cells, affected by kineticLaw
	xdot(1) = (1/(compartment_Tumor_microenvironment))*(( 1.0 * reaction_Effector_cell_stimulation) + (-1.0 * reaction_Effector_cell_decay));
	
% Species:   id = Tumor_cells, name = Tumor_cells, affected by kineticLaw
	xdot(2) = (1/(compartment_Tumor_microenvironment))*(( 1.0 * reaction_Tumor_growth) + (-1.0 * reaction_Tumor_killing));
	
% Species:   id = IL_2, name = IL-2, affected by kineticLaw
	xdot(3) = (1/(compartment_Tumor_microenvironment))*(( 1.0 * reaction_IL_2_production) + (-1.0 * reaction_IL_2_decay));
end

function z=Rate_Law_for_Effector_cell_increase(c,T,p1,E,I_L,g1,s1), z=(c*T+p1*E*I_L/(g1+I_L)+s1);end

function z=Rate_Law_for_Tumor_cell_decrease(a,E,T,g2), z=(a*E*T/(g2+T));end

function z=Rate_Law_for_IL_2_increase(p2,E,T,g3,s2), z=(p2*E*T/(g3+T)+s2);end

function z=Rate_Law_for_Tumor_cell_increase(r2,T,b), z=(r2*T*(1-b*T));end

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


