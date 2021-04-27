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
% Model name = Eftimie2019-Macrophages Plasticity
%
% is http://identifiers.org/biomodels.db/MODEL1909050001
% is http://identifiers.org/biomodels.db/BIOMD0000000806
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 500000.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;


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
	global_par_r=0.924;
% Parameter:   id =  K, name = K
	global_par_K=3.3E9;
% Parameter:   id =  d_v, name = d_v
	global_par_d_v=0.011;
% Parameter:   id =  v_h_u, name = v_h_u
	global_par_v_h_u=100000.0;
% Parameter:   id =  d_u, name = d_u
	global_par_d_u=0.44;
% Parameter:   id =  h_e, name = h_e
	global_par_h_e=1.0;
% Parameter:   id =  d_m1, name = d_m1
	global_par_d_m1=0.01;
% Parameter:   id =  h_m, name = h_m
	global_par_h_m=1000.0;
% Parameter:   id =  d_m2, name = d_m2
	global_par_d_m2=0.4;
% Parameter:   id =  delta_i, name = delta_i
	global_par_delta_i=0.475;
% Parameter:   id =  b, name = b
	global_par_b=2500.0;
% Parameter:   id =  v_d_u, name = v_d_u
	global_par_v_d_u=4.4;
% Parameter:   id =  v_d_m1, name = v_d_m1
	global_par_v_d_m1=1.5;
% Parameter:   id =  H, name = H
	global_par_H=0.0;
% Parameter:   id =  omega, name = omega
	global_par_omega=2.0;
% Parameter:   id =  d_em1, name = d_em1
	global_par_d_em1=0.2;
% Parameter:   id =  v_a_1, name = v_a_1
	global_par_v_a_1=1.0E-6;
% Parameter:   id =  u_a_1, name = u_a_1
	global_par_u_a_1=3.0E-6;
% Parameter:   id =  p_m1, name = p_m1
	global_par_p_m1=0.22;
% Parameter:   id =  M, name = M
	global_par_M=1.0E8;
% Parameter:   id =  o_r_m1, name = o_r_m1
	global_par_o_r_m1=0.001;
% Parameter:   id =  o_r_m2, name = o_r_m2
	global_par_o_r_m2=0.001;
% Parameter:   id =  u_r_m1, name = u_r_m1
	global_par_u_r_m1=4.0;
% Parameter:   id =  v_r_m2, name = v_r_m2
	global_par_v_r_m2=0.5;
% Parameter:   id =  p_m2, name = p_m2
	global_par_p_m2=0.22;
% Parameter:   id =  h_u, name = h_u
	global_par_h_u=5.0E9;
% Parameter:   id =  h_v, name = h_v
	global_par_h_v=0.105636;
% Parameter:   id =  d_em2, name = d_em2
	global_par_d_em2=0.2;
% Parameter:   id =  u_a_2, name = u_a_2
	global_par_u_a_2=4.0E-8;
% Parameter:   id =  d_ee, name = d_ee
	global_par_d_ee=0.4;
% Parameter:   id =  p_e, name = p_e
	global_par_p_e=2070.0;
% Parameter:   id =  d_t, name = d_t
	global_par_d_t=1.0E-10;

% Reaction: id = Uninfected_tumour_cell_logistic_growth, name = Uninfected tumour cell logistic growth
	reaction_Uninfected_tumour_cell_logistic_growth=compartment_compartment*function_for_uninfected_tumour_cell_logistic_growth_1(global_par_K, x(1), global_par_r);

% Reaction: id = Uninfected_tumour_cell_infection, name = Uninfected tumour cell infection
	reaction_Uninfected_tumour_cell_infection=compartment_compartment*function_for_uninfected_tumour_cell_infection_1(x(1), x(3), global_par_d_v, global_par_v_h_u);

% Reaction: id = Uninfected_tumour_cell_elimination_1, name = Uninfected tumour cell elimination 1
	reaction_Uninfected_tumour_cell_elimination_1=compartment_compartment*function_for_uninfected_tumour_cell_elimination_1_1(x(4), x(1), global_par_d_u, global_par_h_e);

% Reaction: id = Uninfected_tumour_cell_elimination_2, name = Uninfected tumour cell elimination 2
	reaction_Uninfected_tumour_cell_elimination_2=compartment_compartment*function_for_uninfected_tumour_cell_elimination_2_1(x(5), x(6), x(1), global_par_d_m1, global_par_h_m);

% Reaction: id = Uninfected_tumour_cell_growth_M2, name = Uninfected tumour cell growth;M2
	reaction_Uninfected_tumour_cell_growth_M2=compartment_compartment*function_for_uninfected_tumour_cell_growth_M2_1(x(6), x(1), global_par_d_m2, global_par_h_m);

% Reaction: id = Infected_tumour_cell_death, name = Infected tumour cell death
	reaction_Infected_tumour_cell_death=compartment_compartment*global_par_delta_i*x(2);

% Reaction: id = virus_growth, name = virus growth
	reaction_virus_growth=compartment_compartment*function_for_virus_growth_1(x(2), global_par_b, global_par_delta_i);

% Reaction: id = Infected_tumour_cell_elimination_1, name = Infected tumour cell elimination 1
	reaction_Infected_tumour_cell_elimination_1=compartment_compartment*function_for_infected_tumour_cell_elimination_1_1(x(4), x(2), global_par_h_e, global_par_v_d_u);

% Reaction: id = Infected_tumour_cell_elimination_2, name = Infected tumour cell elimination 2
	reaction_Infected_tumour_cell_elimination_2=compartment_compartment*function_for_infected_tumour_cell_elimination_2_1(x(2), x(5), x(6), global_par_h_m, global_par_v_d_m1);

% Reaction: id = virus_death, name = virus death
	reaction_virus_death=compartment_compartment*global_par_omega*x(3);

% Reaction: id = virus_clearance_1, name = virus clearance 1
	reaction_virus_clearance_1=compartment_compartment*function_for_virus_clearance_1_1(x(5), x(6), x(3), global_par_h_m, global_par_v_d_m1);

% Reaction: id = virus_clearance_2, name = virus clearance 2
	reaction_virus_clearance_2=compartment_compartment*function_for_virus_clearance_2_1(x(4), x(3), global_par_h_e, global_par_v_d_u);

% Reaction: id = M1_activation_1, name = M1 activation 1
	reaction_M1_activation_1=compartment_compartment*function_for_M1_activation_1_1(x(2), x(3), global_par_v_a_1);

% Reaction: id = M1_activation_2, name = M1 activation 2
	reaction_M1_activation_2=compartment_compartment*function_for_M1_activation_2_1(x(1), global_par_u_a_1);

% Reaction: id = M1_recruitment, name = M1 recruitment
	reaction_M1_recruitment=compartment_compartment*function_for_M1_recruitment_1(global_par_M, x(5), x(6), global_par_p_m1);

% Reaction: id = M1_to_M2_repolarisation, name = M1 to M2 repolarisation
	reaction_M1_to_M2_repolarisation=compartment_compartment*function_for_M1_to_M2_repolarisation_1(x(5), x(1), global_par_h_u, global_par_o_r_m1, global_par_u_r_m1);

% Reaction: id = M2_to_M1_repolarisation, name = M2 to M1 repolarisation
	reaction_M2_to_M1_repolarisation=compartment_compartment*function_for_M2_to_M1_repolarisation_1(x(6), x(3), global_par_h_v, global_par_o_r_m2, global_par_v_r_m2);

% Reaction: id = M1_death, name = M1 death
	reaction_M1_death=compartment_compartment*global_par_d_em1*x(5);

% Reaction: id = M2_activation, name = M2 activation
	reaction_M2_activation=compartment_compartment*function_for_M2_activation_1(x(1), global_par_u_a_2);

% Reaction: id = M2_growth, name = M2 growth
	reaction_M2_growth=compartment_compartment*function_for_M2_growth_1(global_par_M, x(5), x(6), global_par_p_m2);

% Reaction: id = M2_death, name = M2 death
	reaction_M2_death=compartment_compartment*global_par_d_em2*x(6);

% Reaction: id = T_cells_activation, name = T cells activation
	reaction_T_cells_activation=compartment_compartment*function_for_T_cells_activation_1(x(5), x(6), global_par_h_m, global_par_p_e);

% Reaction: id = T_cells_death, name = T cells death
	reaction_T_cells_death=compartment_compartment*global_par_d_ee*x(4);

% Reaction: id = T_cells_inactivation, name = T cells inactivation
	reaction_T_cells_inactivation=compartment_compartment*function_for_T_cells_inactivation_1(x(4), x(1), global_par_d_t);

%Event: id=Heaviside_function_at_10
	event_Heaviside_function_at_10=time >= 10;

	if(event_Heaviside_function_at_10) 
		global_par_H=global_par_H+2*10^7;
	end

%Event: id=Heaviside_function_at_11
	event_Heaviside_function_at_11=time >= 11;

	if(event_Heaviside_function_at_11) 
		global_par_H=global_par_H-2*10^7;
	end

%Event: id=Heaviside_function_at_13
	event_Heaviside_function_at_13=time >= 13;

	if(event_Heaviside_function_at_13) 
		global_par_H=global_par_H+2*10^7;
	end

%Event: id=Heaviside_function_at_14
	event_Heaviside_function_at_14=time >= 14;

	if(event_Heaviside_function_at_14) 
		global_par_H=global_par_H-2*10^7;
	end

%Event: id=dm1_at_11
	event_dm1_at_11=time >= 11;

	if(event_dm1_at_11) 
		global_par_d_m1=global_par_d_m1+0.28;
	end

%Event: id=du_at_15
	event_du_at_15=time >= 15;

	if(event_du_at_15) 
		global_par_d_u=global_par_d_u+0.41;
	end

	xdot=zeros(6,1);
	
% Species:   id = UnInfected_Tumour_Cells_Xu, name = UnInfected_Tumour_Cells(Xu), affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Uninfected_tumour_cell_logistic_growth) + (-1.0 * reaction_Uninfected_tumour_cell_infection) + (-1.0 * reaction_Uninfected_tumour_cell_elimination_1) + (-1.0 * reaction_Uninfected_tumour_cell_elimination_2) + ( 1.0 * reaction_Uninfected_tumour_cell_growth_M2));
	
% Species:   id = Infected_Tumour_Cells_Xi, name = Infected_Tumour_Cells(Xi), affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Uninfected_tumour_cell_infection) + (-1.0 * reaction_Infected_tumour_cell_death) + (-1.0 * reaction_Infected_tumour_cell_elimination_1) + (-1.0 * reaction_Infected_tumour_cell_elimination_2));
	
% Species:   id = Virus_Xv, name = Virus(Xv), affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_virus_growth) + ( 1.0 * reaction_virus_injection) + (-1.0 * reaction_virus_death) + (-1.0 * reaction_virus_clearance_1) + (-1.0 * reaction_virus_clearance_2));
	
% Species:   id = Effector_Cytotoxic_CD8_TCells__Xe, name = Effector_Cytotoxic_CD8_TCells (Xe), affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_T_cells_activation) + (-1.0 * reaction_T_cells_death) + (-1.0 * reaction_T_cells_inactivation));
	
% Species:   id = M1_Macrophage_Xm1, name = M1_Macrophage(Xm1), affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_M1_activation_1) + ( 1.0 * reaction_M1_activation_2) + ( 1.0 * reaction_M1_recruitment) + (-1.0 * reaction_M1_to_M2_repolarisation) + ( 1.0 * reaction_M2_to_M1_repolarisation) + (-1.0 * reaction_M1_death));
	
% Species:   id = M2_Macrophage_Xm2, name = M2_Macrophage(Xm2), affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_M1_to_M2_repolarisation) + (-1.0 * reaction_M2_to_M1_repolarisation) + ( 1.0 * reaction_M2_activation) + ( 1.0 * reaction_M2_growth) + (-1.0 * reaction_M2_death));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=function_for_uninfected_tumour_cell_logistic_growth_1(K,UnInfected_Tumour_Cells_Xu,r), z=(r*UnInfected_Tumour_Cells_Xu*(1-UnInfected_Tumour_Cells_Xu/K));end

function z=function_for_uninfected_tumour_cell_infection_1(UnInfected_Tumour_Cells_Xu,Virus_Xv,d_v,v_h_u), z=(d_v*Virus_Xv*UnInfected_Tumour_Cells_Xu/(v_h_u+UnInfected_Tumour_Cells_Xu));end

function z=function_for_uninfected_tumour_cell_elimination_1_1(Effector_Cytotoxic_CD8_TCells__Xe,UnInfected_Tumour_Cells_Xu,d_u,h_e), z=(d_u*UnInfected_Tumour_Cells_Xu*Effector_Cytotoxic_CD8_TCells__Xe/(h_e+Effector_Cytotoxic_CD8_TCells__Xe));end

function z=function_for_uninfected_tumour_cell_elimination_2_1(M1_Macrophage_Xm1,M2_Macrophage_Xm2,UnInfected_Tumour_Cells_Xu,d_m1,h_m), z=(d_m1*UnInfected_Tumour_Cells_Xu*M1_Macrophage_Xm1/(h_m+M2_Macrophage_Xm2));end

function z=function_for_uninfected_tumour_cell_growth_M2_1(M2_Macrophage_Xm2,UnInfected_Tumour_Cells_Xu,d_m2,h_m), z=(d_m2*UnInfected_Tumour_Cells_Xu*M2_Macrophage_Xm2/(h_m+M2_Macrophage_Xm2));end

function z=function_for_virus_growth_1(Infected_Tumour_Cells_Xi,b,delta_i), z=(delta_i*b*Infected_Tumour_Cells_Xi);end

function z=function_for_infected_tumour_cell_elimination_1_1(Effector_Cytotoxic_CD8_TCells__Xe,Infected_Tumour_Cells_Xi,h_e,v_d_u), z=(v_d_u*Infected_Tumour_Cells_Xi*Effector_Cytotoxic_CD8_TCells__Xe/(h_e+Effector_Cytotoxic_CD8_TCells__Xe));end

function z=function_for_infected_tumour_cell_elimination_2_1(Infected_Tumour_Cells_Xi,M1_Macrophage_Xm1,M2_Macrophage_Xm2,h_m,v_d_m1), z=(v_d_m1*Infected_Tumour_Cells_Xi*M1_Macrophage_Xm1/(h_m+M2_Macrophage_Xm2));end

function z=function_for_virus_clearance_1_1(M1_Macrophage_Xm1,M2_Macrophage_Xm2,Virus_Xv,h_m,v_d_m1), z=(v_d_m1*Virus_Xv*M1_Macrophage_Xm1/(h_m+M2_Macrophage_Xm2));end

function z=function_for_virus_clearance_2_1(Effector_Cytotoxic_CD8_TCells__Xe,Virus_Xv,h_e,v_d_u), z=(v_d_u*Virus_Xv*Effector_Cytotoxic_CD8_TCells__Xe/(h_e+Effector_Cytotoxic_CD8_TCells__Xe));end

function z=function_for_M1_activation_1_1(Infected_Tumour_Cells_Xi,Virus_Xv,v_a_1), z=(v_a_1*(Infected_Tumour_Cells_Xi+Virus_Xv));end

function z=function_for_M1_activation_2_1(UnInfected_Tumour_Cells_Xu,u_a_1), z=(u_a_1*UnInfected_Tumour_Cells_Xu);end

function z=function_for_M1_recruitment_1(M,M1_Macrophage_Xm1,M2_Macrophage_Xm2,p_m1), z=(p_m1*M1_Macrophage_Xm1*(1-(M1_Macrophage_Xm1+M2_Macrophage_Xm2)/M));end

function z=function_for_M1_to_M2_repolarisation_1(M1_Macrophage_Xm1,UnInfected_Tumour_Cells_Xu,h_u,o_r_m1,u_r_m1), z=(M1_Macrophage_Xm1*(o_r_m1+u_r_m1*UnInfected_Tumour_Cells_Xu/(h_u+UnInfected_Tumour_Cells_Xu)));end

function z=function_for_M2_to_M1_repolarisation_1(M2_Macrophage_Xm2,Virus_Xv,h_v,o_r_m2,v_r_m2), z=(M2_Macrophage_Xm2*(o_r_m2+v_r_m2*Virus_Xv/(h_v+Virus_Xv)));end

function z=function_for_M2_activation_1(UnInfected_Tumour_Cells_Xu,u_a_2), z=(u_a_2*UnInfected_Tumour_Cells_Xu);end

function z=function_for_M2_growth_1(M,M1_Macrophage_Xm1,M2_Macrophage_Xm2,p_m2), z=(p_m2*M2_Macrophage_Xm2*(1-(M1_Macrophage_Xm1+M2_Macrophage_Xm2)/M));end

function z=function_for_T_cells_activation_1(M1_Macrophage_Xm1,M2_Macrophage_Xm2,h_m,p_e), z=(p_e*M1_Macrophage_Xm1/(h_m+M2_Macrophage_Xm2));end

function z=function_for_T_cells_inactivation_1(Effector_Cytotoxic_CD8_TCells__Xe,UnInfected_Tumour_Cells_Xu,d_t), z=(d_t*UnInfected_Tumour_Cells_Xu*Effector_Cytotoxic_CD8_TCells__Xe);end

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


