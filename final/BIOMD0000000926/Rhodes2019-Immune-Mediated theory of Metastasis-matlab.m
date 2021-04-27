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
% Model name = Rhodes2019 - Immune-Mediated theory of MetastasisNew Model
%
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 1694915.25423729;
	x0(4) = 0.0;
	x0(5) = 1694915.25423729;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;


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
% Parameter:   id =  gamma_1, name = gamma_1
% Parameter:   id =  g_1, name = g_1
% Parameter:   id =  r_1, name = r_1
	global_par_r_1=0.38;
% Parameter:   id =  K_1, name = K_1
	global_par_K_1=5.3196E8;
% Parameter:   id =  r_2, name = r_2
	global_par_r_2=0.38;
% Parameter:   id =  K_2, name = K_2
	global_par_K_2=5.3196E8;
% Parameter:   id =  g_2, name = g_2
% Parameter:   id =  minC_1, name = minC_1
	global_par_minC_1=0.2;
% Parameter:   id =  maxC_1, name = maxC_1
	global_par_maxC_1=0.1;
% Parameter:   id =  upC_1, name = upC_1
	global_par_upC_1=1101695.0;
% Parameter:   id =  lowC_1, name = lowC_1
	global_par_lowC_1=254237.0;
% Parameter:   id =  minC_2, name = minC_2
	global_par_minC_2=0.2;
% Parameter:   id =  maxC_2, name = maxC_2
	global_par_maxC_2=0.1;
% Parameter:   id =  upC_2, name = upC_2
	global_par_upC_2=1101695.0;
% Parameter:   id =  lowC_2, name = lowC_2
	global_par_lowC_2=254237.0;
% Parameter:   id =  max_1, name = max_1
	global_par_max_1=0.5;
% Parameter:   id =  max_2, name = max_2
	global_par_max_2=0.5;
% Parameter:   id =  low_1, name = low_1
	global_par_low_1=25424.0;
% Parameter:   id =  low_2, name = low_2
	global_par_low_2=25424.0;
% Parameter:   id =  up_1, name = up_1
	global_par_up_1=110169.0;
% Parameter:   id =  up_2, name = up_2
	global_par_up_2=110169.0;
% Parameter:   id =  gamma_2, name = gamma_2
% Parameter:   id =  sigma_1, name = sigma_1
% Parameter:   id =  sigma_2, name = sigma_2
% Parameter:   id =  upD_1, name = upD_1
	global_par_upD_1=110169.0;
% Parameter:   id =  upD_2, name = upD_2
	global_par_upD_2=110169.0;
% Parameter:   id =  lowD_1, name = lowD_1
	global_par_lowD_1=25424.0;
% Parameter:   id =  lowD_2, name = lowD_2
	global_par_lowD_2=25424.0;
% Parameter:   id =  theta_1, name = theta_1
	global_par_theta_1=65.67;
% Parameter:   id =  theta_2, name = theta_2
	global_par_theta_2=65.67;
% Parameter:   id =  s_1, name = s_1
	global_par_s_1=0.01;
% Parameter:   id =  v_v2_minv_maxv_lowv_upv, name = v(v2;minv,maxv,lowv,upv)
% Parameter:   id =  e_x2_0_maxct_lowesstct_upestct, name = e(x2,0,maxct,lowesstct,upestct)
% Parameter:   id =  v_y2_minestte_maxestte_lowestte_upestte, name = v(y2,minestte,maxestte,lowestte,upestte)
% Parameter:   id =  min_v, name = min_v
	global_par_min_v=0.001;
% Parameter:   id =  max_v, name = max_v
	global_par_max_v=0.999;
% Parameter:   id =  low_v, name = low_v
	global_par_low_v=2.66E7;
% Parameter:   id =  up_v, name = up_v
	global_par_up_v=2.93E8;
% Parameter:   id =  max_CT, name = max_CT
	global_par_max_CT=100.0;
% Parameter:   id =  lowEst_CT, name = lowEst_CT
	global_par_lowEst_CT=254237.0;
% Parameter:   id =  upEst_CT, name = upEst_CT
	global_par_upEst_CT=1101695.0;
% Parameter:   id =  minEst_TE, name = minEst_TE
	global_par_minEst_TE=0.001;
% Parameter:   id =  maxEst_TE, name = maxEst_TE
	global_par_maxEst_TE=0.002;
% Parameter:   id =  lowEst_TE, name = lowEst_TE
	global_par_lowEst_TE=25424.0;
% Parameter:   id =  upEst_TE, name = upEst_TE
	global_par_upEst_TE=110169.0;
% Parameter:   id =  est, name = est
% Parameter:   id =  myu_1, name = myu_1
	global_par_myu_1=0.01;
% Parameter:   id =  myu_2, name = myu_2
	global_par_myu_2=0.05;
% Parameter:   id =  alpha_1, name = alpha_1
	global_par_alpha_1=1000000.0;
% Parameter:   id =  alpha_2, name = alpha_2
	global_par_alpha_2=1000000.0;
% Parameter:   id =  a_11, name = a_11
	global_par_a_11=0.524;
% Parameter:   id =  a_12, name = a_12
	global_par_a_12=0.524;
% Parameter:   id =  a_21, name = a_21
	global_par_a_21=0.786;
% Parameter:   id =  a_22, name = a_22
	global_par_a_22=0.786;
% Parameter:   id =  b_11, name = b_11
	global_par_b_11=161000.0;
% Parameter:   id =  b_12, name = b_12
	global_par_b_12=161000.0;
% Parameter:   id =  b_21, name = b_21
	global_par_b_21=161000.0;
% Parameter:   id =  b_22, name = b_22
	global_par_b_22=161000.0;
% Parameter:   id =  a_31, name = a_31
	global_par_a_31=0.04;
% Parameter:   id =  a_32, name = a_32
	global_par_a_32=0.04;
% Parameter:   id =  b_31, name = b_31
	global_par_b_31=160000.0;
% Parameter:   id =  b_32, name = b_32
	global_par_b_32=160000.0;
% Parameter:   id =  lambda_1, name = lambda_1
% Parameter:   id =  lambda_2, name = lambda_2
% Parameter:   id =  omega_1, name = omega_1
	global_par_omega_1=0.59;
% Parameter:   id =  omega_2, name = omega_2
	global_par_omega_2=0.59;
% Parameter:   id =  rho_1, name = rho_1
	global_par_rho_1=0.001;
% Parameter:   id =  rho_2, name = rho_2
	global_par_rho_2=0.01;
% Parameter:   id =  chi_1, name = chi_1
	global_par_chi_1=5.0E-5;
% Parameter:   id =  chi_2, name = chi_2
	global_par_chi_2=5.0E-5;
% Parameter:   id =  ed_1, name = ed_1
% Parameter:   id =  ed_2, name = ed_2
% Parameter:   id =  tau_1, name = tau_1
	global_par_tau_1=0.05;
% Parameter:   id =  tau_2, name = tau_2
	global_par_tau_2=0.05;
% Parameter:   id =  tilde_s_1, name = tilde_s_1
	global_par_tilde_s_1=0.05;
% Parameter:   id =  p, name = p
	global_par_p=1.0E-4;
% Parameter:   id =  f_1, name = f_1
% Parameter:   id =  f_2, name = f_2
% assignmentRule: variable = lambda_1
	global_par_lambda_1=global_par_a_11*x(1)/(global_par_b_11+x(1))+global_par_a_21*x(7)/(global_par_b_21+x(7));
% assignmentRule: variable = lambda_2
	global_par_lambda_2=global_par_a_12*x(4)/(global_par_b_12+x(4))+global_par_a_22*x(8)/(global_par_b_22+x(8));
% assignmentRule: variable = gamma_1
	global_par_gamma_1=(tanh((x(2)-(global_par_low_1+global_par_up_1)/2)*6/(global_par_up_1-global_par_low_1))-tanh((global_par_low_1+global_par_up_1)*(-3)/(global_par_up_1-global_par_low_1)))*global_par_max_1/2+1;
% assignmentRule: variable = g_1
	global_par_g_1=global_par_r_1*(1-x(1)/global_par_K_1);
% assignmentRule: variable = g_2
	global_par_g_2=global_par_r_2*(1-x(4)/global_par_K_2);
% assignmentRule: variable = gamma_2
	global_par_gamma_2=(tanh((x(6)-(global_par_low_2+global_par_up_2)/2)*6/(global_par_up_2-global_par_low_2))-tanh((-3)*(global_par_up_2+global_par_low_2)/(global_par_up_2-global_par_low_2)))*global_par_max_2/2+1;
% assignmentRule: variable = sigma_1
	global_par_sigma_1=((tanh(6*(x(3)-(global_par_lowC_1+global_par_upC_1)/2)/(global_par_lowC_1-global_par_upC_1))-tanh((-3)*(global_par_lowC_1+global_par_upC_1)/(global_par_lowC_1-global_par_upC_1)))*global_par_maxC_1/2+global_par_minC_1)*(1-tanh(6*(x(2)-(global_par_lowD_1+global_par_upD_1)/2)/(global_par_lowD_1-global_par_upD_1)))/(1-tanh((-3)*(global_par_lowD_1+global_par_upD_1)/(global_par_lowD_1-global_par_upD_1)));
% assignmentRule: variable = sigma_2
	global_par_sigma_2=((tanh(6*(x(5)-(global_par_lowC_2+global_par_upC_2)/2)/(global_par_lowC_2-global_par_upC_2))-tanh((-3)*(global_par_lowC_2+global_par_upC_2)/(global_par_lowC_2-global_par_upC_2)))*global_par_maxC_2/2+global_par_minC_2)*(1-tanh(6*(x(6)-(global_par_lowD_2+global_par_upD_2)/2)/(global_par_lowD_2-global_par_upD_2)))/(1-tanh((-3)*(global_par_lowD_2+global_par_upD_2)/(global_par_lowD_2-global_par_upD_2)));
% assignmentRule: variable = v_v2_minv_maxv_lowv_upv
	global_par_v_v2_minv_maxv_lowv_upv=(tanh(6*(x(8)-(global_par_up_v+global_par_low_v)/2)/(global_par_up_v-global_par_low_v))-tanh((-3)*(global_par_up_v+global_par_low_v)/(global_par_up_v-global_par_low_v)))*global_par_max_v/2+global_par_min_v;
% assignmentRule: variable = e_x2_0_maxct_lowesstct_upestct
	global_par_e_x2_0_maxct_lowesstct_upestct=global_par_max_CT*(1-tanh(6*(x(5)-(global_par_upEst_CT+global_par_lowEst_CT)/2)/(global_par_upEst_CT-global_par_lowEst_CT)))/(1-tanh((-3)*(global_par_upEst_CT+global_par_lowEst_CT)/(global_par_upEst_CT-global_par_lowEst_CT)));
% assignmentRule: variable = v_y2_minestte_maxestte_lowestte_upestte
	global_par_v_y2_minestte_maxestte_lowestte_upestte=(tanh(6*(x(6)-(global_par_upEst_TE+global_par_lowEst_TE)/2)/(global_par_upEst_TE-global_par_lowEst_TE))-tanh((-3)*(global_par_upEst_TE+global_par_lowEst_TE)/(global_par_upEst_TE-global_par_lowEst_TE)))*global_par_maxEst_TE/2+global_par_minEst_TE;
% assignmentRule: variable = est
	global_par_est=global_par_e_x2_0_maxct_lowesstct_upestct*global_par_v_v2_minv_maxv_lowv_upv*global_par_v_y2_minestte_maxestte_lowestte_upestte;
% assignmentRule: variable = ed_1
	global_par_ed_1=global_par_chi_1*x(1);
% assignmentRule: variable = ed_2
	global_par_ed_2=global_par_chi_2*x(4);
% assignmentRule: variable = f_1
	global_par_f_1=global_par_a_31*x(1)/(global_par_b_31+x(1));
% assignmentRule: variable = f_2
	global_par_f_2=global_par_a_32*x(4)/(global_par_b_32+x(4));

% Reaction: id = Tumor_Cell_u1__growth, name = Tumor Cell(u1) growth
	reaction_Tumor_Cell_u1__growth=compartment_compartment*Function_for_Tumor_Cell_u1__growth(global_par_gamma_1, global_par_g_1, x(1));

% Reaction: id = Tumor_Cell_u2__growth, name = Tumor Cell(u2) growth
	reaction_Tumor_Cell_u2__growth=compartment_compartment*Function_for_Tumor_Cell_u2__growth(global_par_gamma_2, global_par_g_2, x(4));

% Reaction: id = Tumor_Cell_u1__death, name = Tumor Cell(u1) death
	reaction_Tumor_Cell_u1__death=compartment_compartment*Function_for_Tumor_Cell_u1__death(global_par_sigma_1, x(1));

% Reaction: id = Tumor_Cell_u2__death, name = Tumor Cell(u2) death
	reaction_Tumor_Cell_u2__death=compartment_compartment*Function_for_Tumor_Cell_u2__death(global_par_sigma_2, x(4));

% Reaction: id = Necrotic_Cell_v1__rise, name = Necrotic Cell(v1) rise
	reaction_Necrotic_Cell_v1__rise=compartment_compartment*Function_for_Necrotic_cell_v1__rise(global_par_theta_1, global_par_sigma_1, x(1));

% Reaction: id = Necrotic_Cell_v2__rise, name = Necrotic Cell(v2) rise
	reaction_Necrotic_Cell_v2__rise=compartment_compartment*Function_for_Necrotic_cell_v2__rise(global_par_theta_2, global_par_sigma_2, x(4));

% Reaction: id = Tumor_Cell_u1__Shedding, name = Tumor Cell(u1) Shedding
	reaction_Tumor_Cell_u1__Shedding=compartment_compartment*Function_for_Tumor_Cell_u1__Shedding(global_par_s_1, x(1));

% Reaction: id = Tumor_Cell_u2__Metastatic, name = Tumor Cell(u2) Metastatic
	reaction_Tumor_Cell_u2__Metastatic=compartment_compartment*Function_for_Tumor_Cell_u2__Metastatic(global_par_s_1, x(1), global_par_est);

% Reaction: id = Necrotic_Cell_v1__lysis, name = Necrotic Cell(v1) lysis
	reaction_Necrotic_Cell_v1__lysis=compartment_compartment*Function_for_Necrotic_cell_v1__lysis(global_par_myu_1, x(7));

% Reaction: id = Necrotic_Cell_v2__lysis, name = Necrotic Cell(v2) lysis
	reaction_Necrotic_Cell_v2__lysis=compartment_compartment*Function_for_Necrotic_cell_v2__lysis(global_par_myu_2, x(8));

% Reaction: id = CT_immune_Cell_x1__response, name = CT immune Cell(x1) response
	reaction_CT_immune_Cell_x1__response=compartment_compartment*Function_for_CT_immune_Cell_x1__response(global_par_lambda_1, x(3));

% Reaction: id = CT_immune_Cell_x2__response, name = CT immune Cell(x2) response
	reaction_CT_immune_Cell_x2__response=compartment_compartment*Function_for_CT_immune_Cell_x2__response(global_par_lambda_2, x(5));

% Reaction: id = CT_immune_Cell_x1__death, name = CT immune Cell(x1) death
	reaction_CT_immune_Cell_x1__death=compartment_compartment*Function_for_CT_immune_Cell_x1__death(global_par_omega_1, x(3));

% Reaction: id = CT_immune_Cell_x2__death, name = CT immune Cell(x2) death
	reaction_CT_immune_Cell_x2__death=compartment_compartment*Function_for_CT_immune_Cell_x2__death(global_par_omega_2, x(5));

% Reaction: id = CT_immune_Cell_x1__killed, name = CT immune Cell(x1) killed
	reaction_CT_immune_Cell_x1__killed=compartment_compartment*Function_for_CT_immune_Cell_x1__killed(global_par_rho_1, x(1), x(3));

% Reaction: id = CT_immune_Cell_x2__killed, name = CT immune Cell(x2) killed
	reaction_CT_immune_Cell_x2__killed=compartment_compartment*Function_for_CT_immune_Cell_x2__killed(global_par_rho_2, x(4), x(5));

% Reaction: id = CT_immune_Cell_x1__transition, name = CT immune Cell(x1) transition
	reaction_CT_immune_Cell_x1__transition=compartment_compartment*Function_for_CT_immune_Cell_x1__transition(global_par_ed_1, x(3));

% Reaction: id = CT_immune_Cell_x2__transition, name = CT immune Cell(x2) transition
	reaction_CT_immune_Cell_x2__transition=compartment_compartment*Function_for_CT_immune_Cell_x2__transition(global_par_ed_2, x(5));

% Reaction: id = TE_immune_Cell_y1__natural_death, name = TE immune Cell(y1) natural death
	reaction_TE_immune_Cell_y1__natural_death=compartment_compartment*Function_for_TE_immune_Cell_y1__natural_death(global_par_tau_1, x(2));

% Reaction: id = TE_immune_Cell_y2__natural_death, name = TE immune Cell(y2) natural death
	reaction_TE_immune_Cell_y2__natural_death=compartment_compartment*Function_for_TE_immune_Cell_y2__natural_death(global_par_tau_2, x(6));

% Reaction: id = TE_immune_Cell_y1__loss_in_circulatory, name = TE immune Cell(y1) loss in circulatory
	reaction_TE_immune_Cell_y1__loss_in_circulatory=compartment_compartment*Function_for_TE_immune_Cell_y1__loss_in_circulatory(global_par_tilde_s_1, x(2));

% Reaction: id = TE_immune_Cell_y2__supplement, name = TE immune Cell(y2) supplement
	reaction_TE_immune_Cell_y2__supplement=compartment_compartment*Function_for_TE_immune_Cell_y2__Supplement(global_par_p, global_par_tilde_s_1, x(2));

% Reaction: id = TE_immune_Cell_y1__recruitment, name = TE immune Cell(y1) recruitment
	reaction_TE_immune_Cell_y1__recruitment=compartment_compartment*Function_for_TE_immune_Cell_y1__recruitment(global_par_f_1, x(2));

% Reaction: id = TE_immune_Cell_y2__recruitment, name = TE immune Cell(y2) recruitment
	reaction_TE_immune_Cell_y2__recruitment=compartment_compartment*Function_for_TE_immune_Cell_y2__recruitment(global_par_f_2, x(6));

	xdot=zeros(8,1);
	
% Species:   id = Tumor_Cell_u_1, name = Tumor Cell(u_1), affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Cell_u1__growth) + (-1.0 * reaction_Tumor_Cell_u1__death) + (-1.0 * reaction_Tumor_Cell_u1__Shedding));
	
% Species:   id = TE_immune_Cell_y_1, name = TE immune Cell(y_1), affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_CT_immune_Cell_x1__transition) + (-1.0 * reaction_TE_immune_Cell_y1__natural_death) + (-1.0 * reaction_TE_immune_Cell_y1__loss_in_circulatory) + ( 1.0 * reaction_TE_immune_Cell_y1__recruitment));
	
% Species:   id = CT_immune_Cell_x_1, name = CT immune Cell(x_1), affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_CT_immune_Cell_x1__natural_influx) + ( 1.0 * reaction_CT_immune_Cell_x1__response) + (-1.0 * reaction_CT_immune_Cell_x1__death) + (-1.0 * reaction_CT_immune_Cell_x1__killed) + (-1.0 * reaction_CT_immune_Cell_x1__transition));
	
% Species:   id = Tumor_Cell_u_2, name = Tumor Cell(u_2), affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Tumor_Cell_u2__growth) + (-1.0 * reaction_Tumor_Cell_u2__death) + ( 1.0 * reaction_Tumor_Cell_u2__Metastatic));
	
% Species:   id = CT_immune_Cell_x_2, name = CT immune Cell(x_2), affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_CT_immune_Cell_x2__natural_influx) + ( 1.0 * reaction_CT_immune_Cell_x2__response) + (-1.0 * reaction_CT_immune_Cell_x2__death) + (-1.0 * reaction_CT_immune_Cell_x2__killed) + (-1.0 * reaction_CT_immune_Cell_x2__transition));
	
% Species:   id = TE_immune_Cell_y_2, name = TE immune Cell(y_2), affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_CT_immune_Cell_x2__transition) + (-1.0 * reaction_TE_immune_Cell_y2__natural_death) + ( 1.0 * reaction_TE_immune_Cell_y2__supplement) + ( 1.0 * reaction_TE_immune_Cell_y2__recruitment));
	
% Species:   id = Necrotic_Cell_v_1, name = Necrotic Cell(v_1), affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_Necrotic_Cell_v1__rise) + (-1.0 * reaction_Necrotic_Cell_v1__lysis));
	
% Species:   id = Necrotic_Cell_v_2, name = Necrotic Cell(v_2), affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_Necrotic_Cell_v2__rise) + (-1.0 * reaction_Necrotic_Cell_v2__lysis));
end

function z=Function_for_TE_immune_Cell_y2__natural_death(tau_2,y_2), z=(tau_2*y_2);end

function z=Function_for_CT_immune_Cell_x1__killed(rho_1,u_1,x_1), z=(rho_1*u_1*x_1);end

function z=Function_for_CT_immune_Cell_x2__death(omega_2,x_2), z=(omega_2*x_2);end

function z=Function_for_CT_immune_Cell_x1__death(omega_1,x_1), z=(omega_1*x_1);end

function z=Function_for_Necrotic_cell_v1__rise(theta_1,sigma_1,u_1), z=(theta_1*sigma_1*u_1);end

function z=Function_for_Tumor_Cell_u1__growth(gamma_1,g_1,u_1), z=(gamma_1*g_1*u_1);end

function z=Function_for_TE_immune_Cell_y1__natural_death(tau_1,y_1), z=(tau_1*y_1);end

function z=Function_for_Tumor_Cell_u2__Metastatic(s_1,u_1,est), z=(s_1*u_1*est);end

function z=Function_for_CT_immune_Cell_x1__response(lambda_1,x_1), z=(lambda_1*x_1);end

function z=Function_for_Necrotic_cell_v2__lysis(myu_2,v_2), z=(myu_2*v_2);end

function z=Function_for_CT_immune_Cell_x2__transition(ed_2,x_2), z=(ed_2*x_2);end

function z=Function_for_Necrotic_cell_v2__rise(theta_2,sigma_2,u_2), z=(theta_2*sigma_2*u_2);end

function z=Function_for_CT_immune_Cell_x1__transition(ed_1,x_1), z=(ed_1*x_1);end

function z=Function_for_CT_immune_Cell_x2__killed(rho_2,u_2,x_2), z=(rho_2*u_2*x_2);end

function z=Function_for_CT_immune_Cell_x2__response(lambda_2,x_2), z=(lambda_2*x_2);end

function z=Function_for_Tumor_Cell_u2__growth(gamma_2,g_2,u_2), z=(gamma_2*g_2*u_2);end

function z=Function_for_Tumor_Cell_u2__death(sigma_2,u_2), z=(sigma_2*u_2);end

function z=Function_for_Tumor_Cell_u1__Shedding(s_1,u_1), z=(s_1*u_1);end

function z=Function_for_Tumor_Cell_u1__death(sigma_1,u_1), z=(sigma_1*u_1);end

function z=Function_for_CT_immune_Cell_x2__natural_influx(alpha_2), z=(alpha_2);end

function z=Function_for_CT_immune_Cell_x1__natural_influx(alpha_1), z=(alpha_1);end

function z=Function_for_Necrotic_cell_v1__lysis(myu_1,v_1), z=(myu_1*v_1);end

function z=Function_for_TE_immune_Cell_y1__loss_in_circulatory(tilde_s_1,y_1), z=(tilde_s_1*y_1);end

function z=Function_for_TE_immune_Cell_y2__Supplement(p,tilde_s_1,y_1), z=(p*tilde_s_1*y_1);end

function z=Function_for_TE_immune_Cell_y1__recruitment(f_1,y_1), z=(f_1*y_1);end

function z=Function_for_TE_immune_Cell_y2__recruitment(f_2,y_2), z=(f_2*y_2);end

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


