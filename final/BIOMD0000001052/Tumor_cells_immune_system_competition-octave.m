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
% Model name = Alharbi2020 - Tumor and immune system competition
%
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 0.999999999999994;
	x0(2) = 0.999999999999993;
	x0(3) = 1.22;


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

% Compartment: id = Tissue, name = Tissue, constant
	compartment_Tissue=1.0;
% Parameter:   id =  r, name = r
	global_par_r=0.4312;
% Parameter:   id =  beta1, name = beta1
	global_par_beta1=2.99E-6;
% Parameter:   id =  n, name = n
	global_par_n=0.1379;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=0.9314;
% Parameter:   id =  alpha1, name = alpha1
	global_par_alpha1=0.4426;
% Parameter:   id =  alpha2, name = alpha2
	global_par_alpha2=0.4;
% Parameter:   id =  beta2, name = beta2
	global_par_beta2=1.189;
% Parameter:   id =  alpha3, name = alpha3
	global_par_alpha3=0.1469;
% Parameter:   id =  sigma, name = sigma
	global_par_sigma=0.7;
% Parameter:   id =  delta, name = delta
	global_par_delta=0.57;
% Parameter:   id =  rho, name = rho
	global_par_rho=0.271;
% Parameter:   id =  m, name = m
	global_par_m=0.813;
% Parameter:   id =  m1, name = m1
	global_par_m1=0.862;
% Parameter:   id =  rho1, name = rho1
	global_par_rho1=0.7829;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.813;
% Parameter:   id =  mu1, name = mu1
	global_par_mu1=0.3634;

% Reaction: id = Normal_cell_proliferation, name = Normal cell proliferation
	reaction_Normal_cell_proliferation=compartment_Tissue*function_for_reaction_1(global_par_r, x(2));

% Reaction: id = division_of_normal_cells_into_abnormal_cells, name = division of normal cells into abnormal cells
	reaction_division_of_normal_cells_into_abnormal_cells=compartment_Tissue*function_for_reaction_2(global_par_r, x(2), global_par_beta1);

% Reaction: id = Normal_cells_eradication_by_immune_cells, name = Normal cells eradication by immune cells
	reaction_Normal_cells_eradication_by_immune_cells=compartment_Tissue*function_for_reaction_3(global_par_r, x(2), x(1));

% Reaction: id = Normal_cells_eradication_or_inhibition_by_tumor_cells, name = Normal cells eradication or inhibition by tumor cells
	reaction_Normal_cells_eradication_or_inhibition_by_tumor_cells=compartment_Tissue*function_for_reaction_4(global_par_gamma, x(2), x(3));

% Reaction: id = Tumor_cells_proliferation, name = Tumor cells proliferation
	reaction_Tumor_cells_proliferation=compartment_Tissue*function_for_reaction_5(global_par_alpha1, x(3));

% Reaction: id = decline_of_tumor_cells, name = decline of tumor cells
	reaction_decline_of_tumor_cells=compartment_Tissue*function_for_reaction_6(global_par_alpha1, global_par_alpha2, x(3));

% Reaction: id = conversion_of_abnormal_cells_into_tumor_cells, name = conversion of abnormal cells into tumor cells
	reaction_conversion_of_abnormal_cells_into_tumor_cells=compartment_Tissue*function_for_reaction_7(global_par_beta2, x(2), x(3));

% Reaction: id = tumor_cell_eradication_or_inhibition_by_immune_cells, name = tumor cell eradication or inhibition by immune cells
	reaction_tumor_cell_eradication_or_inhibition_by_immune_cells=compartment_Tissue*function_for_reaction_8(global_par_alpha3, x(3), x(1));

% Reaction: id = immune_cells_death, name = immune cells death
	reaction_immune_cells_death=compartment_Tissue*function_for_reaction_10(global_par_delta, x(1));

% Reaction: id = elimination_of_tumor_cells_due_to_the_detection_of_their_appearance, name = elimination of tumor cells due to the detection of their appearance
	reaction_elimination_of_tumor_cells_due_to_the_detection_of_their_appearance=compartment_Tissue*function_for_reaction_11(global_par_rho, x(2), x(1), global_par_m);

% Reaction: id = elimination_of_tumor_cells_due_to_the_detection_of_their_activity, name = elimination of tumor cells due to the detection of their activity
	reaction_elimination_of_tumor_cells_due_to_the_detection_of_their_activity=compartment_Tissue*function_for_reaction_12(global_par_rho1, x(3), x(1), global_par_m1);

% Reaction: id = death_of_immune_cells_after_interaction_with_tumor, name = death of immune cells after interaction with tumor
	reaction_death_of_immune_cells_after_interaction_with_tumor=compartment_Tissue*function_for_reaction_13(global_par_mu, x(2), x(1));

% Reaction: id = suppression_of_immune_activity_by_tumor_cells, name = suppression of immune activity by tumor cells
	reaction_suppression_of_immune_activity_by_tumor_cells=compartment_Tissue*function_for_reaction_14(global_par_mu1, x(3), x(1));

	xdot=zeros(3,1);
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(1) = (1/(compartment_Tissue))*(( 1.0 * reaction_constant_source_of_immune_system_response) + (-1.0 * reaction_immune_cells_death) + ( 1.0 * reaction_elimination_of_tumor_cells_due_to_the_detection_of_their_appearance) + ( 1.0 * reaction_elimination_of_tumor_cells_due_to_the_detection_of_their_activity) + (-1.0 * reaction_death_of_immune_cells_after_interaction_with_tumor) + (-1.0 * reaction_suppression_of_immune_activity_by_tumor_cells));
	
% Species:   id = N, name = N, affected by kineticLaw
	xdot(2) = (1/(compartment_Tissue))*(( 1.0 * reaction_Normal_cell_proliferation) + (-1.0 * reaction_division_of_normal_cells_into_abnormal_cells) + (-1.0 * reaction_Normal_cells_eradication_by_immune_cells) + (-1.0 * reaction_Normal_cells_eradication_or_inhibition_by_tumor_cells));
	
% Species:   id = T, name = T, affected by kineticLaw
	xdot(3) = (1/(compartment_Tissue))*(( 1.0 * reaction_Tumor_cells_proliferation) + (-1.0 * reaction_decline_of_tumor_cells) + ( 1.0 * reaction_conversion_of_abnormal_cells_into_tumor_cells) + (-1.0 * reaction_tumor_cell_eradication_or_inhibition_by_immune_cells));
end

function z=function_for_reaction_1(r,N), z=(r*N);end

function z=function_for_reaction_2(r,N,B1), z=(r*N^2*B1);end

function z=function_for_reaction_3(r,N,I), z=(r*N*I);end

function z=function_for_reaction_4(gamma,N,T), z=(gamma*N*T);end

function z=function_for_reaction_5(alpha1,T), z=(alpha1*T);end

function z=function_for_reaction_9(sigma), z=(sigma);end

function z=function_for_reaction_10(delta,I), z=(delta*I);end

function z=function_for_reaction_11(rho,N,I,m), z=(rho*N*I/(N+m));end

function z=function_for_reaction_12(rho1,T,I,m1), z=(rho1*T*I/(m1+T));end

function z=function_for_reaction_13(mu,N,I), z=(mu*N*I);end

function z=function_for_reaction_14(mu1,T,I), z=(mu1*T*I);end

function z=function_for_reaction_6(alpha1,alpha2,T), z=(alpha1*alpha2*T^2);end

function z=function_for_reaction_7(beta2,N,T), z=(beta2*N*T);end

function z=function_for_reaction_8(alpha3,T,I), z=(alpha3*T*I);end

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


