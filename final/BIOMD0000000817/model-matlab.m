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
% Model name = Gevertz2018 - cancer treatment with oncolytic viruses and dendritic cell injections minimal model
%
% is http://identifiers.org/biomodels.db/MODEL1909180002
% is http://identifiers.org/biomodels.db/BIOMD0000000817
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 57.414042;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 57.414042;
	x0(8) = 57.414042;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  r, name = r
	global_par_r=0.3198;
% Parameter:   id =  beta, name = beta
	global_par_beta=1.008538;
% Parameter:   id =  k0, name = k0
	global_par_k0=2.0;
% Parameter:   id =  c_kill, name = c_kill
	global_par_c_kill=0.623397;
% Parameter:   id =  delta_I, name = delta_I
	global_par_delta_I=1.0;
% Parameter:   id =  U_V, name = U_V
	global_par_U_V=0.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=3.0;
% Parameter:   id =  delta_V, name = delta_V
	global_par_delta_V=2.3;
% Parameter:   id =  C_T, name = C_T
	global_par_C_T=1.428064;
% Parameter:   id =  chi_D, name = chi_D
	global_par_chi_D=4.901894;
% Parameter:   id =  delta_T, name = delta_T
	global_par_delta_T=0.35;
% Parameter:   id =  U_D, name = U_D
	global_par_U_D=0.0;
% Parameter:   id =  delta_D, name = delta_D
	global_par_delta_D=0.35;
% Parameter:   id =  OV_dose, name = OV dose
	global_par_OV_dose=2.5;
% Parameter:   id =  D0, name = D0
	global_par_D0=1.0;
% assignmentRule: variable = Total_cells_N
	x(7)=x(1)+x(2)+x(4);
% assignmentRule: variable = total_tumor_cells
	x(8)=x(1)+x(2);

% Reaction: id = Tumor_cell_U_exponential_growth, name = Tumor cell U exponential growth
	reaction_Tumor_cell_U_exponential_growth=compartment_compartment*Function_for_Tumor_Cell_exponential_growth(global_par_r, x(1));

% Reaction: id = Tumour_cell_U_elimination, name = Tumour cell U elimination
	reaction_Tumour_cell_U_elimination=compartment_compartment*Function_for_Tumor_Cell_elimination(global_par_k0, global_par_c_kill, x(2), x(1), x(4), x(7));

% Reaction: id = Tumor_Cell_U_infection, name = Tumor Cell U infection
	reaction_Tumor_Cell_U_infection=compartment_compartment*Function_for_Tumor_Cell_infection(global_par_beta, x(1), x(3), x(7));

% Reaction: id = Infected_Tumor_Cell_I_death, name = Infected Tumor Cell I death
	reaction_Infected_Tumor_Cell_I_death=compartment_compartment*Function_for_Infected_Tumor_Cell_death(global_par_delta_I, x(2));

% Reaction: id = Infected_Tumor_Cell_I_elimination, name = Infected Tumor Cell I elimination
	reaction_Infected_Tumor_Cell_I_elimination=compartment_compartment*Function_for_Infected_Tumor_Cell_elimination(global_par_k0, global_par_c_kill, x(2), x(4), x(7));

% Reaction: id = Natural_decay_of_virus, name = Natural decay of virus
	reaction_Natural_decay_of_virus=compartment_compartment*Function_for_natural_decay_of_virus(global_par_delta_V, x(3));

% Reaction: id = Release_of_virus, name = Release of virus
	reaction_Release_of_virus=compartment_compartment*Function_for_release_of_virus(global_par_alpha, global_par_delta_I, x(2));

% Reaction: id = Activation_of_T_cells_4_1BBL, name = Activation of T cells;4-1BBL
	reaction_Activation_of_T_cells_4_1BBL=compartment_compartment*Function_for_Activation_of_T_cells__4_1BBL(global_par_C_T, x(2));

% Reaction: id = Production_of_T_cells, name = Production of T cells
	reaction_Production_of_T_cells=compartment_compartment*Function_for_production_of_T_cells(global_par_chi_D, x(6));

% Reaction: id = natural_death_of_T_cells, name = natural death of T cells
	reaction_natural_death_of_T_cells=compartment_compartment*Function_for_natural_death_of_T_cells(global_par_delta_T, x(4));

% Reaction: id = natural_decay_of_Dendritic_Cells_D, name = natural decay of Dendritic Cells D
	reaction_natural_decay_of_Dendritic_Cells_D=compartment_compartment*Function_for_natural_decay_of_DC(global_par_delta_D, x(6));

%Event: id=OV_1
	event_OV_1=time == 0;

	if(event_OV_1) 
		x(3)=x(3)+global_par_OV_dose;
	end

%Event: id=OV_2
	event_OV_2=time == 2;

	if(event_OV_2) 
		x(3)=x(3)+global_par_OV_dose;
	end

%Event: id=OV_3
	event_OV_3=time == 4;

	if(event_OV_3) 
		x(3)=x(3)+global_par_OV_dose;
	end

%Event: id=AD_1
	event_AD_1=time == 1;

	if(event_AD_1) 
		x(6)=x(6)+global_par_D0;
	end

%Event: id=AD_2
	event_AD_2=time == 3;

	if(event_AD_2) 
		x(6)=x(6)+global_par_D0;
	end

%Event: id=AD_3
	event_AD_3=time == 5;

	if(event_AD_3) 
		x(6)=global_par_D0+x(6);
	end

	xdot=zeros(8,1);
	
% Species:   id = Uninfected_Tumor_Cell_U, name = Uninfected Tumor Cell U, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_cell_U_exponential_growth) + (-1.0 * reaction_Tumour_cell_U_elimination) + (-1.0 * reaction_Tumor_Cell_U_infection));
	
% Species:   id = Infected_Cancer_Cell_I, name = Infected Cancer Cell I, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Cell_U_infection) + (-1.0 * reaction_Infected_Tumor_Cell_I_death) + (-1.0 * reaction_Infected_Tumor_Cell_I_elimination));
	
% Species:   id = Oncolytic_Adenovirus_V, name = Oncolytic Adenovirus V, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Treatment_with_virus) + (-1.0 * reaction_Natural_decay_of_virus) + ( 1.0 * reaction_Release_of_virus));
	
% Species:   id = Tumor_targeting_T_cells_T, name = Tumor-targeting T cells T, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Activation_of_T_cells_4_1BBL) + ( 1.0 * reaction_Production_of_T_cells) + (-1.0 * reaction_natural_death_of_T_cells));
	
% Species:   id = Naive_T_cells_A, name = Naive T cells A
% Warning species is not changed by either rules or reactions
	xdot(5) = ;
	
% Species:   id = Dendritic_Cells_D, name = Dendritic Cells D, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_Treatment_with_Dendritic_Cells_D) + (-1.0 * reaction_natural_decay_of_Dendritic_Cells_D));
	
% Species:   id = Total_cells_N, name = Total cells N, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = total_tumor_cells, name = total tumor cells, involved in a rule 	xdot(8) = x(8);
end

function z=Function_for_Tumor_Cell_exponential_growth(r,U), z=(r*U);end

function z=Function_for_Tumor_Cell_infection(beta,U,V,N), z=(beta*U*V/N);end

function z=Function_for_Tumor_Cell_elimination(k0,c_kill,I,U,T,N), z=((k0+c_kill*I)*U*T/N);end

function z=Function_for_Infected_Tumor_Cell_death(delta_I,I), z=(delta_I*I);end

function z=Function_for_Infected_Tumor_Cell_elimination(k0,c_kill,I,T,N), z=((k0+c_kill*I)*I*T/N);end

function z=Function_for_treatment_with_virus(U_V), z=(U_V);end

function z=Function_for_release_of_virus(alpha,delta_I,I), z=(alpha*delta_I*I);end

function z=Function_for_natural_decay_of_virus(delta_V,V), z=(delta_V*V);end

function z=Function_for_Activation_of_T_cells__4_1BBL(C_T,I), z=(C_T*I);end

function z=Function_for_natural_death_of_T_cells(delta_T,T), z=(delta_T*T);end

function z=Function_for_production_of_T_cells(chi_D,D), z=(chi_D*D);end

function z=Function_for_treatment_of_DC(U_D), z=(U_D);end

function z=Function_for_natural_decay_of_DC(delta_D,D), z=(delta_D*D);end

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


