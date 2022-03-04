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
% Model name = Leon-Triana2020 - CAR T-cell therapy in B-cell acute lymphoblastic leukaemia with contribution from immature B cells
%
% is http://identifiers.org/biomodels.db/MODEL2107120002
% is http://identifiers.org/biomodels.db/BIOMD0000001012
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 1.0E7;
	x0(2) = 5.0E10;
	x0(3) = 2.5E10;
	x0(4) = 1.0E7;


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

% Compartment: id = Whole_organism_blood, name = Whole_organism_blood, constant
	compartment_Whole_organism_blood=1.0;
% Parameter:   id =  tao_B, name = tao_B
	global_par_tao_B=60.0;
% Parameter:   id =  rho_L, name = rho_L
	global_par_rho_L=0.03333333333;
% Parameter:   id =  tao_C, name = tao_C
	global_par_tao_C=14.0;
% Parameter:   id =  rho_C, name = rho_C
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=4.5E-11;
% Parameter:   id =  k, name = k
% Parameter:   id =  tao_I, name = tao_I
	global_par_tao_I=6.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.1;
% Parameter:   id =  C_50, name = C_50
	global_par_C_50=1.0E9;
% Parameter:   id =  I_0, name = I_0
	global_par_I_0=1.0E7;
% assignmentRule: variable = rho_C
	global_par_rho_C=0.25*global_par_alpha;
% assignmentRule: variable = k
	global_par_k=global_par_rho_C/global_par_alpha;

% Reaction: id = CARTcell_proliferation, name = CARTcell_proliferation
	reaction_CARTcell_proliferation=compartment_Whole_organism_blood*Rate_Law_for_CARTcell_proliferation(global_par_rho_C, x(2), x(3), x(1), global_par_beta, global_par_I_0, global_par_C_50);

% Reaction: id = CARTcell_death, name = CARTcell_death
	reaction_CARTcell_death=compartment_Whole_organism_blood*Rate_Law_for_CARTcell_death(global_par_tao_C, x(1));

% Reaction: id = Leukaemia_proliferation, name = Leukaemia_proliferation
	reaction_Leukaemia_proliferation=compartment_Whole_organism_blood*Rate_Law_for_Leukaemia_proliferation(global_par_rho_L, x(2));

% Reaction: id = Leukaemia_death, name = Leukaemia_death
	reaction_Leukaemia_death=compartment_Whole_organism_blood*Rate_Law_for_Leukaemia_death(global_par_alpha, x(2), x(1));

% Reaction: id = Bcell_death, name = Bcell_death
	reaction_Bcell_death=compartment_Whole_organism_blood*Rate_Law_for_Bcell_death(global_par_alpha, x(3), x(1), global_par_tao_B);

% Reaction: id = Bcell_proliferation, name = Bcell_proliferation
	reaction_Bcell_proliferation=compartment_Whole_organism_blood*Rate_Law_for_Bcell_proliferation(global_par_I_0, global_par_tao_I, x(1), global_par_C_50);

	xdot=zeros(4,1);
	
% Species:   id = CAR_T_cells, name = CAR_T-cells, affected by kineticLaw
	xdot(1) = (1/(compartment_Whole_organism_blood))*(( 1.0 * reaction_CARTcell_proliferation) + (-1.0 * reaction_CARTcell_death));
	
% Species:   id = Leukaemic_B_cells, name = Leukaemic_B_cells, affected by kineticLaw
	xdot(2) = (1/(compartment_Whole_organism_blood))*(( 1.0 * reaction_Leukaemia_proliferation) + (-1.0 * reaction_Leukaemia_death));
	
% Species:   id = B_cells_healthy, name = B_cells_healthy, affected by kineticLaw
	xdot(3) = (1/(compartment_Whole_organism_blood))*((-1.0 * reaction_Bcell_death) + ( 1.0 * reaction_Bcell_proliferation));
	
% Species:   id = B_cell_progenitors, name = B_cell_progenitors, affected by kineticLaw
	xdot(4) = (1/(compartment_Whole_organism_blood))*((-1.0 * reaction_Bcell_proliferation) + ( 1.0 * reaction_proBcell_proliferation));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Rate_Law_for_CARTcell_proliferation(rho_c,L,B,C,beta,I_0,C_50), z=(rho_c*(L+B)*C+rho_c*beta*I_0/(1+C/C_50));end

function z=Rate_Law_for_Leukaemia_proliferation(rho_L,L), z=(rho_L*L);end

function z=Rate_Law_for_Leukaemia_death(alpha,L,C), z=(alpha*L*C);end

function z=Rate_Law_for_Bcell_death(alpha,B,C,tao_B), z=(alpha*B*C+1/tao_B*B);end

function z=Rate_Law_for_CARTcell_death(tao_c,C), z=(1/tao_c*C);end

function z=Rate_Law_for_Bcell_proliferation(I_0,tao_I,C,C_50), z=(I_0/tao_I/(1+C/C_50));end

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


