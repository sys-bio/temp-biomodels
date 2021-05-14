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
% Model name = dePillis2013 - Mathematical modeling of regulatory T cell effects on renal cell carcinoma treatment
%
% hasInstance http://identifiers.org/mamo/MAMO_0000046
% hasInstance http://identifiers.org/taxonomy/9606
% hasInstance http://identifiers.org/ncit/C17837
% isDescribedBy http://identifiers.org/ncit/C17837
% isDescribedBy http://identifiers.org/doi/10.3934/dcdsb.2013.18.915
% isDescribedBy http://identifiers.org/doi/10.1080/17486700802216301
% is http://identifiers.org/biomodels.db/MODEL2001060001
% is http://identifiers.org/biomodels.db/BIOMD0000000908
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 4.662E9;
	x0(2) = 2.5E8;
	x0(3) = 526800.0;
	x0(4) = 3.52E8;
	x0(5) = 2.14E9;
	x0(6) = 1173.0;
	x0(7) = 0.0;


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
% Parameter:   id =  D, name = D
% Parameter:   id =  d, name = d
	global_par_d=1.7;
% Parameter:   id =  l, name = l
	global_par_l=1.7;
% Parameter:   id =  s, name = s
	global_par_s=0.035;
% Parameter:   id =  a, name = a
	global_par_a=0.2065;
% Parameter:   id =  b, name = b
	global_par_b=2.145E-10;
% Parameter:   id =  c, name = c
	global_par_c=8.68E-10;
% Parameter:   id =  delta_T, name = delta_T
	global_par_delta_T=1.59E-9;
% Parameter:   id =  e_f, name = e_f
	global_par_e_f=0.1168;
% Parameter:   id =  f, name = f
	global_par_f=0.0125;
% Parameter:   id =  p, name = p
	global_par_p=6.682E-14;
% Parameter:   id =  p_N, name = p_N
	global_par_p_N=0.0668;
% Parameter:   id =  C_0, name = C
	global_par_C_0=2.14E9;
% Parameter:   id =  g_N, name = g_N
	global_par_g_N=250360.0;
% Parameter:   id =  m, name = m
	global_par_m=0.009;
% Parameter:   id =  q, name = q
	global_par_q=3.422E-10;
% Parameter:   id =  r_1, name = r_1
	global_par_r_1=6.682E-12;
% Parameter:   id =  r_2, name = r_2
	global_par_r_2=1.0E-15;
% Parameter:   id =  p_I, name = p_I
	global_par_p_I=1.111;
% Parameter:   id =  g_I, name = g_I
	global_par_g_I=2503.6;
% Parameter:   id =  z, name = z
	global_par_z=2.3085E-13;
% Parameter:   id =  kappa, name = kappa
	global_par_kappa=2503.6;
% Parameter:   id =  j, name = j
	global_par_j=0.1245;
% Parameter:   id =  k, name = k
	global_par_k=2.019E7;
% Parameter:   id =  w_u, name = w_u
	global_par_w_u=0.0122;
% Parameter:   id =  u, name = u
	global_par_u=0.03851;
% Parameter:   id =  p_R, name = p_R
	global_par_p_R=0.03598;
% Parameter:   id =  g_R, name = g_R
	global_par_g_R=11.027;
% Parameter:   id =  H_R, name = H_R
	global_par_H_R=0.227;
% Parameter:   id =  delta_R, name = delta_R
	global_par_delta_R=50.02;
% Parameter:   id =  alpha_beta, name = alpha_beta
	global_par_alpha_beta=2.14E9;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.0063;
% Parameter:   id =  mu_I, name = mu_I
	global_par_mu_I=11.7427;
% Parameter:   id =  w, name = w
	global_par_w=0.05314;
% Parameter:   id =  phi, name = phi
	global_par_phi=3.594E-7;
% Parameter:   id =  zeta, name = zeta
	global_par_zeta=2503.6;
% Parameter:   id =  n, name = n
	global_par_n=0.277;
% Parameter:   id =  vs, name = vs
	global_par_vs=0.0;
% Parameter:   id =  Metabolite_2, name = Initial for L
	global_par_Metabolite_2=526800.0;
% Parameter:   id =  Metabolite_0, name = Initial for T
	global_par_Metabolite_0=4.662E9;
% Parameter:   id =  ModelValue_1, name = Initial for d
	global_par_ModelValue_1=1.7;
% Parameter:   id =  ModelValue_2, name = Initial for l
	global_par_ModelValue_2=1.7;
% Parameter:   id =  ModelValue_3, name = Initial for s
	global_par_ModelValue_3=0.035;
% assignmentRule: variable = D
	global_par_D=global_par_ModelValue_1*(global_par_Metabolite_2/global_par_Metabolite_0)^global_par_ModelValue_2/(global_par_ModelValue_3+(global_par_Metabolite_2/global_par_Metabolite_0)^global_par_ModelValue_2);

% Reaction: id = Increase_in_total_tumor_cell_population_in_number_of_cells, name = Increase in total tumor cell population in number of cells
	reaction_Increase_in_total_tumor_cell_population_in_number_of_cells=compartment_compartment*Function_for_increase_in_the_total_tumor_cell_population_in_number_of_cells(global_par_a, x(1), global_par_b);

% Reaction: id = Removal_of_tumor_cell_from_the_system_by_immune_cells, name = Removal of tumor cell from the system by immune cells
	reaction_Removal_of_tumor_cell_from_the_system_by_immune_cells=compartment_compartment*Function_for_removal_of_tumor_cell_from_the_system_by_immune_cells(global_par_c, global_par_delta_T, x(4), x(2), x(1), global_par_D);

% Reaction: id = Increase_in_number_of_Natural_killer_cell_per_litre_of_blood, name = Increase in number of Natural killer cell per litre of blood
	reaction_Increase_in_number_of_Natural_killer_cell_per_litre_of_blood=compartment_compartment*Function_for_increase_in_the_number_of_natural_killer_cell_per_litre_of_blood(global_par_f, x(5), x(2), global_par_p_N, x(6), global_par_g_N, global_par_e_f);

% Reaction: id = Removal_of_natural_killer_cell_from_the_system, name = Removal of natural killer cell from the system
	reaction_Removal_of_natural_killer_cell_from_the_system=compartment_compartment*Function_of_removal_of_natural_killer_cell(global_par_p, x(2), x(1));

% Reaction: id = Increase_in_the_number_of_CD8__T_cell_per_litre_of_blood, name = Increase in the number of CD8+ T cell per litre of blood
	reaction_Increase_in_the_number_of_CD8__T_cell_per_litre_of_blood=compartment_compartment*Function_for_Increase_in_the_number_of_CD8__T_cell_per_litre_of_blood(global_par_r_1, x(2), global_par_r_2, x(5), x(1), global_par_p_I, x(3), x(6), global_par_g_I, global_par_j, global_par_k);

% Reaction: id = Decrease_in_the_number_of_CD8__T_cell, name = Decrease in the number of CD8+ T cell
	reaction_Decrease_in_the_number_of_CD8__T_cell=compartment_compartment*Function_for_decrease_in_the_number_of_CD8__T_cell(global_par_m, x(3), global_par_q, x(1), global_par_z, x(4), x(6), global_par_kappa);

% Reaction: id = Increase_in_the_number_of_Treg_cells_per_litre_of_blood, name = Increase in the number of Treg cells per litre of blood
	reaction_Increase_in_the_number_of_Treg_cells_per_litre_of_blood=compartment_compartment*Function_for_increase_in_the_number_of_Treg_cells_per_litre_of_blood(global_par_u, x(5), x(4), global_par_p_R, x(6), global_par_g_R, global_par_w_u);

% Reaction: id = Decrease_in_the_number_of_Treg_cells, name = Decrease in the number of Treg cells
	reaction_Decrease_in_the_number_of_Treg_cells=compartment_compartment*Function_for_decrease_in_the_number_of_Treg_cells(global_par_H_R, global_par_delta_R, x(7), x(4));

% Reaction: id = Increase_in_the_concentration_of_lymphocyte_per_litre_of_blood_not_including_NK_cells__CD8__T_cells_and_regulatory_T_cells, name = Increase in the concentration of lymphocyte per litre of blood not including NK cells, CD8+ T cells and regulatory T cells
	reaction_Increase_in_the_concentration_of_lymphocyte_per_litre_of_blood_not_including_NK_cells__CD8__T_cells_and_regulatory_T_cells=compartment_compartment*Function_for_increase_in_the_concentration_of_lymphocyte(global_par_beta, x(5), global_par_alpha_beta);

% Reaction: id = Increase_in_the_concentration_of_IL_2_per_litre_of_blood, name = Increase in the concentration of IL-2 per litre of blood
	reaction_Increase_in_the_concentration_of_IL_2_per_litre_of_blood=compartment_compartment*Function_for_increase_in_the_concentration_of_IL_2_per_litre_of_blood(global_par_phi, x(5), global_par_w, x(3), x(6), global_par_zeta);

% Reaction: id = Decrease_in_the_concentration_of_IL_2_per_lite_of_blood, name = Decrease in the concentration of IL-2 per lite of blood
	reaction_Decrease_in_the_concentration_of_IL_2_per_lite_of_blood=compartment_compartment*Function_for_decrease_in_the_concentration_of_IL_2_per_litre_of_blood(global_par_mu_I, x(6));

% Reaction: id = Sunitinib_not_working_per_day_per_litre_of_body_volume, name = Sunitinib not working per day per litre of body volume
	reaction_Sunitinib_not_working_per_day_per_litre_of_body_volume=compartment_compartment*Function_for_Sunitinib_not_working_per_litre_of_body_volume(global_par_n, x(7));

	xdot=zeros(7,1);
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_total_tumor_cell_population_in_number_of_cells) + (-1.0 * reaction_Removal_of_tumor_cell_from_the_system_by_immune_cells));
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_number_of_Natural_killer_cell_per_litre_of_blood) + (-1.0 * reaction_Removal_of_natural_killer_cell_from_the_system));
	
% Species:   id = L, name = L, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_the_number_of_CD8__T_cell_per_litre_of_blood) + (-1.0 * reaction_Decrease_in_the_number_of_CD8__T_cell));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_the_number_of_Treg_cells_per_litre_of_blood) + (-1.0 * reaction_Decrease_in_the_number_of_Treg_cells));
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_the_concentration_of_lymphocyte_per_litre_of_blood_not_including_NK_cells__CD8__T_cells_and_regulatory_T_cells));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_Increase_in_the_concentration_of_IL_2_per_litre_of_blood) + (-1.0 * reaction_Decrease_in_the_concentration_of_IL_2_per_lite_of_blood));
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_Injecting_the_concentration_of_sunitinib_per_litre_of_body_volume) + (-1.0 * reaction_Sunitinib_not_working_per_day_per_litre_of_body_volume));
end

function z=Function_for_increase_in_the_number_of_Treg_cells_per_litre_of_blood(u,C,R,p_R,I,g_R,w_u), z=(u*(w_u*C-R)+p_R*R*I/(g_R+I));end

function z=Function_for_increase_in_the_total_tumor_cell_population_in_number_of_cells(a,T,b), z=(a*T*(1-b*T));end

function z=Function_for_increase_in_the_concentration_of_lymphocyte(beta,C,alpha_beta), z=(beta*(alpha_beta-C));end

function z=Function_for_increase_in_the_concentration_of_IL_2_per_litre_of_blood(phi,C,w,L,I,zeta), z=(phi*C+w*L*I/(zeta+I));end

function z=Function_of_removal_of_natural_killer_cell(p,N,T), z=(p*N*T);end

function z=Function_for_increase_in_the_number_of_natural_killer_cell_per_litre_of_blood(f,C,N,p_N,I,g_N,e_f), z=(f*(e_f*C-N)+p_N*N*I/(g_N+I));end

function z=Function_for_decrease_in_the_number_of_CD8__T_cell(m,L,q,T,z,R,I,kappa), z=(m*L+q*L*T+z*L*L*R*I/(kappa+I));end

function z=Function_for_removal_of_tumor_cell_from_the_system_by_immune_cells(c,delta_T,R,N,T,D), z=(c*exp((-delta_T)*R)*N*T+D*T);end

function z=Function_for_decrease_in_the_concentration_of_IL_2_per_litre_of_blood(mu_I,I), z=(mu_I*I);end

function z=Function_for_Sunitinib_not_working_per_litre_of_body_volume(n,S), z=((-n)*S);end

function z=Function_for_injecting_the_concentration_of_sunitinib_per_litre_of_body_volume(vs), z=(vs);end

function z=Function_for_Increase_in_the_number_of_CD8__T_cell_per_litre_of_blood(r1,N,r2,C,T,p_I,L,I,g_I,j,k), z=((r1*N+r2*C)*T+p_I*L*I/(g_I+I)+j*T/(k+T)*L);end

function z=Function_for_decrease_in_the_number_of_Treg_cells(H_R,delta_R,S,R), z=(H_R*(1-exp((-delta_R)*S))*R);end

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


