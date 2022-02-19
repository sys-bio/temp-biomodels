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
% Model name = Creemers2021 - Tumor-immune dynamics and implications on immunotherapy responses
%
% is http://identifiers.org/biomodels.db/MODEL2107290001
% is http://identifiers.org/biomodels.db/BIOMD0000001022
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 1000000.0;


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

% Compartment: id = Tumor, name = Tumor, constant
	compartment_Tumor=1.0;
% Compartment: id = Lymph_node, name = Lymph_node, constant
	compartment_Lymph_node=1.0;
% Parameter:   id =  rho, name = rho
	global_par_rho=6.0;
% Parameter:   id =  xi, name = xi
	global_par_xi=0.035;
% Parameter:   id =  h, name = h
	global_par_h=571.0;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.019;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.0025;
% Parameter:   id =  p_s, name = p_s
	global_par_p_s=1.0;
% Parameter:   id =  m_s, name = m_s
	global_par_m_s=1.0;

% Reaction: id = Tumor_growth, name = Tumor_growth
	reaction_Tumor_growth=compartment_Tumor*Rate_Law_for_Tumor_growth(global_par_rho, x(1));

% Reaction: id = T_cell_mediated_tumor_cell_killing, name = T_cell-mediated_tumor_cell_killing
	reaction_T_cell_mediated_tumor_cell_killing=compartment_Tumor*Rate_Law_for_T_cell_mediated_tumor_cell_killing(global_par_xi, x(2), x(1), global_par_h, global_par_h);

% Reaction: id = Lymph_node_resident_T_cell_migration, name = Lymph_node-resident_T_cell_migration
	reaction_Lymph_node_resident_T_cell_migration=global_par_m_s*x(3);

% Reaction: id = Intratumoral_T_cell_death, name = Intratumoral_T_cell_death
	reaction_Intratumoral_T_cell_death=compartment_Tumor*global_par_delta*x(2);

% Reaction: id = Lymph_node_resident_T_cell_conversion, name = Lymph_node-resident_T_cell_conversion
	reaction_Lymph_node_resident_T_cell_conversion=Rate_Law_for_Lymph_node_resident_T_cell_conversion(global_par_alpha, x(1), x(4));

% Reaction: id = Effector_T_cell_proliferation, name = Effector_T_cell_proliferation
	reaction_Effector_T_cell_proliferation=compartment_Lymph_node*Rate_Law_for_Effector_T_cell_proliferation(global_par_p_s, x(3));

	xdot=zeros(4,1);
	
% Species:   id = T, name = Tumor_cells, affected by kineticLaw
	xdot(1) = (1/(compartment_Tumor))*(( 1.0 * reaction_Tumor_growth) + (-1.0 * reaction_T_cell_mediated_tumor_cell_killing));
	
% Species:   id = I, name = Intratumoral_T_cells, affected by kineticLaw
	xdot(2) = (1/(compartment_Tumor))*(( 1.0 * reaction_Lymph_node_resident_T_cell_migration) + (-1.0 * reaction_Intratumoral_T_cell_death));
	
% Species:   id = S, name = Specific_T_cells, affected by kineticLaw
	xdot(3) = (1/(compartment_Lymph_node))*((-1.0 * reaction_Lymph_node_resident_T_cell_migration) + ( 1.0 * reaction_Lymph_node_resident_T_cell_conversion) + ( 1.0 * reaction_Effector_T_cell_proliferation));
	
% Species:   id = N, name = Naive_T_cells, affected by kineticLaw
	xdot(4) = (1/(compartment_Lymph_node))*((-1.0 * reaction_Lymph_node_resident_T_cell_conversion));
end

function z=Rate_Law_for_Tumor_growth(rho,T), z=(rho*T^(4/5));end

function z=Rate_Law_for_T_cell_mediated_tumor_cell_killing(xi,I,T,h_I,h_T), z=(xi*I*T/(1+I/h_I+T/h_T));end

function z=Rate_Law_for_Effector_T_cell_proliferation(p_s,S), z=(p_s*S);end

function z=Rate_Law_for_Lymph_node_resident_T_cell_conversion(alpha,T,N), z=(alpha*T/(10000000+T)*N);end

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


