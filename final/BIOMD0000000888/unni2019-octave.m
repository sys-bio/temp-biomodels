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
% Model name = Unni2019 - Mathematical Modeling, Analysis, and Simulation of Tumor Dynamics with Drug Interventions
%
% hasInstance http://identifiers.org/taxonomy/9606
% hasInstance http://identifiers.org/ncit/C25218
% hasInstance http://identifiers.org/mamo/MAMO_0000046
% isDescribedBy http://identifiers.org/mamo/MAMO_0000046
% isDescribedBy http://identifiers.org/pubmed/31687042
% is http://identifiers.org/biomodels.db/MODEL1912100006
% is http://identifiers.org/biomodels.db/BIOMD0000000888
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 100.0;
	x0(2) = 1.0;
	x0(3) = 1.0;
	x0(4) = 1.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  a, name = a
	global_par_a=0.431;
% Parameter:   id =  b, name = b
	global_par_b=2.17E-8;
% Parameter:   id =  c_1, name = c_1
	global_par_c_1=3.5E-6;
% Parameter:   id =  c_2, name = c_2
	global_par_c_2=1.0E-7;
% Parameter:   id =  d_1, name = d_1
	global_par_d_1=1.0E-6;
% Parameter:   id =  d_2, name = d_2
	global_par_d_2=4.0E-6;
% Parameter:   id =  d_3, name = d_3
	global_par_d_3=1.0E-4;
% Parameter:   id =  e, name = e
	global_par_e=0.0412;
% Parameter:   id =  f_1, name = f_1
	global_par_f_1=1.0E-8;
% Parameter:   id =  f_2, name = f_2
	global_par_f_2=0.01;
% Parameter:   id =  g, name = g
	global_par_g=0.024;
% Parameter:   id =  h, name = h
	global_par_h=3.42E-10;
% Parameter:   id =  i, name = i
	global_par_i=0.02;
% Parameter:   id =  j, name = j
	global_par_j=1.0E-7;
% Parameter:   id =  k, name = k
	global_par_k=1.0E-7;
% Parameter:   id =  s_1, name = s_1
	global_par_s_1=13000.0;
% Parameter:   id =  s_2, name = s_2
	global_par_s_2=480.0;
% Parameter:   id =  u, name = u
	global_par_u=1.8E-8;
% Parameter:   id =  r_1, name = r_1
	global_par_r_1=0.0;
% Parameter:   id =  g_1, name = g_1
	global_par_g_1=0.0;
% Parameter:   id =  h_1, name = h_1
	global_par_h_1=0.0;

% Reaction: id = Growth_of_tumor_cell, name = Growth of tumor cell
	reaction_Growth_of_tumor_cell=compartment_compartment*Function_for_growth_of_tumor_cell(global_par_a, x(1), global_par_b);

% Reaction: id = Impact_on_the_growth_of_tumor_cell_by_dendritic_cell__natural_killer_cell__CD8__cell, name = Impact on the growth of tumor cell by dendritic cell, natural killer cell, CD8+ cell
	reaction_Impact_on_the_growth_of_tumor_cell_by_dendritic_cell__natural_killer_cell__CD8__cell=compartment_compartment*Function_for_impact_on_tumor_cell_growth(global_par_c_1, x(2), global_par_j, x(3), global_par_k, x(4), x(1));

% Reaction: id = Production_of_Natural_killer_cell, name = Production of Natural killer cell
	reaction_Production_of_Natural_killer_cell=compartment_compartment*Function_for_production_of_natural_killer_cell(global_par_s_1, global_par_g_1, x(2), x(1), global_par_h_1);

% Reaction: id = Removal_of_natural_killer_cell, name = Removal of natural killer cell
	reaction_Removal_of_natural_killer_cell=compartment_compartment*Function_for_removal_of_natural_killer_cell(global_par_c_2, x(1), global_par_d_1, x(3), x(2), global_par_e);

% Reaction: id = Impact_on_the_formation_of_dendritic_cell, name = Impact on the formation of dendritic cell
	reaction_Impact_on_the_formation_of_dendritic_cell=compartment_compartment*Function_for_the_impact_on_dendritic_cell_formation(global_par_f_1, x(4), global_par_d_2, x(2), global_par_d_3, x(1), x(3), global_par_g);

% Reaction: id = Formation_of_cytotoxic_CD8__T_cell, name = Formation of cytotoxic CD8+ T cell
	reaction_Formation_of_cytotoxic_CD8__T_cell=compartment_compartment*Function_for_formation_of_cytotoxic_CD8__T_cell(global_par_f_2, x(3), x(1), global_par_r_1, x(2));

% Reaction: id = Removal_of_cytotoxic_CD8__T_cell, name = Removal of cytotoxic CD8+ T cell
	reaction_Removal_of_cytotoxic_CD8__T_cell=compartment_compartment*Function_for_removal_of_cytotoxic_CD8__T_cell(global_par_h, x(4), x(1), global_par_u, x(2), global_par_i);

	xdot=zeros(4,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Growth_of_tumor_cell) + (-1.0 * reaction_Impact_on_the_growth_of_tumor_cell_by_dendritic_cell__natural_killer_cell__CD8__cell));
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Production_of_Natural_killer_cell) + (-1.0 * reaction_Removal_of_natural_killer_cell));
	
% Species:   id = D, name = D, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Formation_of_Dendritic_cell) + (-1.0 * reaction_Impact_on_the_formation_of_dendritic_cell));
	
% Species:   id = L, name = L, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Formation_of_cytotoxic_CD8__T_cell) + (-1.0 * reaction_Removal_of_cytotoxic_CD8__T_cell));
end

function z=Function_for_impact_on_tumor_cell_growth(c_1,N,j,D,k,L,T), z=((c_1*N+j*D+k*L)*T);end

function z=Function_for_production_of_natural_killer_cell(s_1,g_1,N,T,h_1), z=(s_1+g_1*N*T*T/(h_1+T*T));end

function z=Function_for_formation_of_dendritic_cell(s_2), z=(s_2);end

function z=Function_for_removal_of_cytotoxic_CD8__T_cell(h,L,T,u,N,i), z=(h*L*T+u*N*L*L+i*L);end

function z=Function_for_removal_of_natural_killer_cell(c_2,T,d_1,D,N,e), z=((c_2*T+d_1*D)*N+e*N);end

function z=Function_for_the_impact_on_dendritic_cell_formation(f_1,L,d_2,N,d_3,T,D,g), z=((f_1*L+d_2*N-d_3*T)*D-g*D);end

function z=Function_for_formation_of_cytotoxic_CD8__T_cell(f_2,D,T,r_1,N), z=(f_2*D*T+r_1*N*T);end

function z=Function_for_growth_of_tumor_cell(a,T,b), z=(a*T*(1-b*T));end

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


