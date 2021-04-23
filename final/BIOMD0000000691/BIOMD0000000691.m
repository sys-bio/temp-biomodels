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
% Model name = Wolf2000 - Cellular interaction on glycolytic oscillations in yeast
%
% is http://identifiers.org/biomodels.db/MODEL1006230022
% isDescribedBy http://identifiers.org/pubmed/10702114
% is http://identifiers.org/biomodels.db/BIOMD0000000691
%


function main()
%Initial conditions vector
	x0=zeros(17,1);
	x0(1) = 5.8;
	x0(2) = 2.9;
	x0(3) = 0.9;
	x0(4) = 0.45;
	x0(5) = 0.2;
	x0(6) = 0.1;
	x0(7) = 0.2;
	x0(8) = 0.1;
	x0(9) = 0.1;
	x0(10) = 0.05;
	x0(11) = 3.2;
	x0(12) = 0.2;
	x0(13) = 0.1;
	x0(14) = 0.9;
	x0(15) = 0.95;
	x0(16) = 0.8;
	x0(17) = 3.8;


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

% Compartment: id = Cell_1, name = Cell 1, constant
	compartment_Cell_1=1.0;
% Compartment: id = Cell_2, name = Cell 2, constant
	compartment_Cell_2=1.0;
% Compartment: id = Compartment, name = Compartment, constant
	compartment_Compartment=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=100.0;
% Parameter:   id =  K_I, name = K_I
	global_par_K_I=0.52;
% Parameter:   id =  q, name = q
	global_par_q=4.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=6.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=16.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=100.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=1.28;
% Parameter:   id =  k6, name = k6
	global_par_k6=12.0;
% Parameter:   id =  k, name = k
	global_par_k=1.5;
% Parameter:   id =  J0, name = J0
	global_par_J0=3.0;
% Parameter:   id =  J_cell_1, name = J_cell_1
% Parameter:   id =  j_cell_2, name = j_cell_2
% Parameter:   id =  kappa, name = kappa
	global_par_kappa=13.0;
% Parameter:   id =  phi, name = phi
	global_par_phi=0.1;
% assignmentRule: variable = j_cell_2
	global_par_j_cell_2=global_par_kappa*(x(8)-x(13));
% assignmentRule: variable = J_cell_1
	global_par_J_cell_1=global_par_kappa*(x(7)-x(13));
% assignmentRule: variable = N1__Cell_2_
	x(15)=const_species_N-x(10);
% assignmentRule: variable = N1__Cell_1_
	x(14)=const_species_N-x(9);
% assignmentRule: variable = A2__Cell_1_
	x(16)=const_species_A-x(11);
% assignmentRule: variable = A2__Cell_2_
	x(17)=const_species_A-x(12);

% Reaction: id = v1_cell_1, name = v1_cell_1
	reaction_v1_cell_1=compartment_Cell_1*function_for_v1(global_par_k1, x(1), x(11), global_par_K_I, global_par_q);

% Reaction: id = v1_cell_2, name = v1_cell_2
	reaction_v1_cell_2=compartment_Cell_2*function_for_v1(global_par_k1, x(2), x(12), global_par_K_I, global_par_q);

% Reaction: id = v2_cell_1, name = v2_cell_1
	reaction_v2_cell_1=compartment_Cell_1*function_for_v2(global_par_k2, x(3), x(14));

% Reaction: id = v2_cell_2, name = v2_cell_2
	reaction_v2_cell_2=compartment_Cell_2*function_for_v2(global_par_k2, x(4), x(15));

% Reaction: id = v3_cell_1, name = v3_cell_1
	reaction_v3_cell_1=compartment_Cell_1*function_for_v3(global_par_k3, x(5), x(16));

% Reaction: id = v3_cell_2, name = v3_cell_2
	reaction_v3_cell_2=compartment_Cell_2*function_for_v3(global_par_k3, x(6), x(17));

% Reaction: id = v4_cell_1, name = v4_cell_1
	reaction_v4_cell_1=compartment_Cell_1*global_par_k4*x(7)*x(9);

% Reaction: id = v4_cell_2, name = v4_cell_2
	reaction_v4_cell_2=compartment_Cell_2*global_par_k4*x(8)*x(10);

% Reaction: id = v5_cell_1, name = v5_cell_1
	reaction_v5_cell_1=compartment_Cell_1*global_par_k5*x(11);

% Reaction: id = v5_cell_2, name = v5_cell_2
	reaction_v5_cell_2=compartment_Cell_2*global_par_k5*x(12);

% Reaction: id = v6_cell_1, name = v6_cell_1
	reaction_v6_cell_1=compartment_Cell_1*global_par_k6*x(3)*x(9);

% Reaction: id = v6_cell_2, name = v6_cell_2
	reaction_v6_cell_2=compartment_Cell_2*global_par_k6*x(4)*x(10);

% Reaction: id = v7, name = v7
	reaction_v7=compartment_Compartment*global_par_k*x(13);

% Reaction: id = S4_ex_import, name = S4_ex import
	reaction_S4_ex_import=compartment_Compartment*function_for_d_dt_S4_ex(global_par_phi, global_par_J_cell_1, global_par_j_cell_2);

% Species:   id = A, name = A, constant	const_species_A=4.0;

% Species:   id = N, name = N, constant	const_species_N=1.0;

	xdot=zeros(17,1);
	
% Species:   id = S1__Cell_1_, name = S1, affected by kineticLaw
	xdot(1) = (1/(compartment_Cell_1))*((-1.0 * reaction_v1_cell_1) + ( 1.0 * reaction_S1_cell_1_glucose_influx));
	
% Species:   id = S1__Cell_2_, name = S1, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell_2))*((-1.0 * reaction_v1_cell_2) + ( 1.0 * reaction_S1_cell_2_glucose_influx));
	
% Species:   id = S2__Cell_1_, name = S2, affected by kineticLaw
	xdot(3) = (1/(compartment_Cell_1))*(( 2.0 * reaction_v1_cell_1) + (-1.0 * reaction_v2_cell_1) + (-1.0 * reaction_v6_cell_1));
	
% Species:   id = S2__Cell_2_, name = S2, affected by kineticLaw
	xdot(4) = (1/(compartment_Cell_2))*(( 2.0 * reaction_v1_cell_2) + (-1.0 * reaction_v2_cell_2) + (-1.0 * reaction_v6_cell_2));
	
% Species:   id = S3__Cell_1_, name = S3, affected by kineticLaw
	xdot(5) = (1/(compartment_Cell_1))*(( 1.0 * reaction_v2_cell_1) + (-1.0 * reaction_v3_cell_1));
	
% Species:   id = S3__Cell_2_, name = S3, affected by kineticLaw
	xdot(6) = (1/(compartment_Cell_2))*(( 1.0 * reaction_v2_cell_2) + (-1.0 * reaction_v3_cell_2));
	
% Species:   id = S4__Cell_1_, name = S4, affected by kineticLaw
	xdot(7) = (1/(compartment_Cell_1))*(( 1.0 * reaction_v3_cell_1) + (-1.0 * reaction_v4_cell_1) + (-1.0 * reaction_S4_cell_1_export));
	
% Species:   id = S4__Cell_2_, name = S4, affected by kineticLaw
	xdot(8) = (1/(compartment_Cell_2))*(( 1.0 * reaction_v3_cell_2) + (-1.0 * reaction_v4_cell_2) + (-1.0 * reaction_S4_cell_2_export));
	
% Species:   id = N2__Cell_1_, name = N2, affected by kineticLaw
	xdot(9) = (1/(compartment_Cell_1))*(( 1.0 * reaction_v2_cell_1) + (-1.0 * reaction_v4_cell_1) + (-1.0 * reaction_v6_cell_1));
	
% Species:   id = N2__Cell_2_, name = N2, affected by kineticLaw
	xdot(10) = (1/(compartment_Cell_2))*(( 1.0 * reaction_v2_cell_2) + (-1.0 * reaction_v4_cell_2) + (-1.0 * reaction_v6_cell_2));
	
% Species:   id = A3__Cell_1_, name = A3, affected by kineticLaw
	xdot(11) = (1/(compartment_Cell_1))*((-2.0 * reaction_v1_cell_1) + ( 2.0 * reaction_v3_cell_1) + (-1.0 * reaction_v5_cell_1));
	
% Species:   id = A3__Cell_2_, name = A3, affected by kineticLaw
	xdot(12) = (1/(compartment_Cell_2))*((-2.0 * reaction_v1_cell_2) + ( 2.0 * reaction_v3_cell_2) + (-1.0 * reaction_v5_cell_2));
	
% Species:   id = S4_ex, name = S4_ex, affected by kineticLaw
	xdot(13) = (1/(compartment_Compartment))*((-1.0 * reaction_v7) + ( 1.0 * reaction_S4_ex_import));
	
% Species:   id = N1__Cell_1_, name = N1, involved in a rule 	xdot(14) = x(14);
	
% Species:   id = N1__Cell_2_, name = N1, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = A2__Cell_1_, name = A2, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = A2__Cell_2_, name = A2, involved in a rule 	xdot(17) = x(17);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=function_for_v2(k2,S2,N1), z=(k2*S2*N1);end

function z=function_for_d_dt_S4_ex(phi,J1,J2), z=(phi/2*(J1+J2));end

function z=function_for_v1(k1,S1,A3,K_I,q), z=(k1*S1*A3*(1+(A3/K_I)^q)^(-1));end

function z=function_for_v3(k3,S3,A2), z=(k3*S3*A2);end

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


