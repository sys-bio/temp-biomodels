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
% Model name = Tsai2014 - Cell cycle duration control by oscillatory Dynamics  in Early Xenopus laevis Embryos
%
% is http://identifiers.org/biomodels.db/MODEL1809060006
% is http://identifiers.org/biomodels.db/BIOMD0000000719
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 60.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 1.0;
	x0(5) = 1.0;
	x0(6) = 60.0;


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

% Compartment: id = nuclear, name = nuclear, constant
	compartment_nuclear=1.0;
% Parameter:   id =  k_synth, name = k_synth
	global_par_k_synth=1.5;
% Parameter:   id =  k_dest, name = k_dest
	global_par_k_dest=0.4;
% Parameter:   id =  ec50_cdc25, name = ec50_cdc25
	global_par_ec50_cdc25=30.0;
% Parameter:   id =  n_cdc25, name = n_cdc25
	global_par_n_cdc25=11.0;
% Parameter:   id =  ec50_wee1, name = ec50_wee1
	global_par_ec50_wee1=35.0;
% Parameter:   id =  n_wee1, name = n_wee1
	global_par_n_wee1=3.5;
% Parameter:   id =  k_cdk1_on, name = k_cdk1_on
	global_par_k_cdk1_on=0.0354;
% Parameter:   id =  k_cdk1_off, name = k_cdk1_off
	global_par_k_cdk1_off=0.0354;
% Parameter:   id =  p, name = p
	global_par_p=5.0;
% Parameter:   id =  ec50_plx, name = ec50_plx
	global_par_ec50_plx=60.0;
% Parameter:   id =  ec50_apc, name = ec50_apc
	global_par_ec50_apc=0.5;
% Parameter:   id =  n_apc, name = n_apc
	global_par_n_apc=4.0;
% Parameter:   id =  n_plx, name = n_plx
	global_par_n_plx=5.0;
% Parameter:   id =  k_plxon, name = k_plxon
	global_par_k_plxon=1.5;
% Parameter:   id =  k_plx_off, name = k_plx_off
	global_par_k_plx_off=0.125;
% Parameter:   id =  k_apc_on, name = k_apc_on
	global_par_k_apc_on=1.5;
% Parameter:   id =  k_apc_off, name = k_apc_off
	global_par_k_apc_off=0.15;
% Parameter:   id =  r, name = r
% Parameter:   id =  tau, name = tau
	global_par_tau=4.0;
% assignmentRule: variable = Cyclin_B1_Cdk1_complex_total
	x(6)=x(2)+x(1);
% assignmentRule: variable = r
	global_par_r=1/(2*(1+3/(1+exp((70-time)/global_par_tau)))^2);

% Reaction: id = Cyclin_B1_Cdk1_unphosphorylated_degradation, name = Cyclin B1 Cdk1 unphosphorylated degradation
	reaction_Cyclin_B1_Cdk1_unphosphorylated_degradation=compartment_nuclear*function_for_cdk1a_degradation_by_apc_1(x(4), x(2), global_par_k_dest);

% Reaction: id = Cyclin_B1_Cdk1_phosphorylated_degradation, name = Cyclin B1 Cdk1 phosphorylated degradation
	reaction_Cyclin_B1_Cdk1_phosphorylated_degradation=compartment_nuclear*function_for_cdk1a_degradation_by_apc_2(x(4), x(1), global_par_k_dest);

% Reaction: id = Cyclin_B1_Cdk1_phosphorylated_dephosphorylation, name = Cyclin B1 Cdk1 phosphorylated dephosphorylation
	reaction_Cyclin_B1_Cdk1_phosphorylated_dephosphorylation=compartment_nuclear*function_for_cdk_inactivation_1(x(1), global_par_ec50_wee1, global_par_k_cdk1_off, global_par_n_wee1, global_par_p, global_par_r);

% Reaction: id = Cyclin_B1_Cdk1_phosphorylated_phosphorylation, name = Cyclin B1 Cdk1 phosphorylated phosphorylation
	reaction_Cyclin_B1_Cdk1_phosphorylated_phosphorylation=compartment_nuclear*function_for_cdk1_activation_1(x(1), x(2), global_par_ec50_cdc25, global_par_k_cdk1_on, global_par_n_cdc25, global_par_p, global_par_r);

% Reaction: id = Plx1_activation_by_active_Cdk1, name = Plx1 activation by active Cdk1
	reaction_Plx1_activation_by_active_Cdk1=compartment_nuclear*function_for_plx1_activation_1(x(1), x(3), const_species_Plx1_total, global_par_ec50_plx, global_par_k_plxon, global_par_n_plx);

% Reaction: id = Plx1_inactivation_after_Cdk1_inactivated, name = Plx1 inactivation after Cdk1 inactivated
	reaction_Plx1_inactivation_after_Cdk1_inactivated=compartment_nuclear*global_par_k_plx_off*x(3);

% Reaction: id = Activation_of_APC_CCdc20_by_active_Plx1, name = Activation of APC/CCdc20 by active Plx1
	reaction_Activation_of_APC_CCdc20_by_active_Plx1=compartment_nuclear*function_for_apc_activation_1(x(4), x(5), x(3), global_par_ec50_apc, global_par_k_apc_on, global_par_n_apc);

% Reaction: id = inactivation_of_APC_CCdc20_after_Plx1_is_inactivated, name = inactivation of APC/CCdc20 after Plx1 is inactivated
	reaction_inactivation_of_APC_CCdc20_after_Plx1_is_inactivated=compartment_nuclear*global_par_k_apc_off*x(4);

% Species:   id = Plx1_total, name = Plx1_total, constant	const_species_Plx1_total=1.0;

	xdot=zeros(6,1);
	
% Species:   id = Cyclin_B1_Cdk1_complex_phosphorylated, name = Cyclin B1 Cdk1 complex phosphorylated, affected by kineticLaw
	xdot(1) = (1/(compartment_nuclear))*(( 1.0 * reaction_Cyclin_B1_Cdk1_phosphorylated_synthesis) + (-1.0 * reaction_Cyclin_B1_Cdk1_phosphorylated_degradation) + (-1.0 * reaction_Cyclin_B1_Cdk1_phosphorylated_dephosphorylation) + ( 1.0 * reaction_Cyclin_B1_Cdk1_phosphorylated_phosphorylation));
	
% Species:   id = Cyclin_B1_Cdk1_complex_unphosphorylated, name = Cyclin B1 Cdk1 complex unphosphorylated, affected by kineticLaw
	xdot(2) = (1/(compartment_nuclear))*((-1.0 * reaction_Cyclin_B1_Cdk1_unphosphorylated_degradation) + ( 1.0 * reaction_Cyclin_B1_Cdk1_phosphorylated_dephosphorylation) + (-1.0 * reaction_Cyclin_B1_Cdk1_phosphorylated_phosphorylation));
	
% Species:   id = Plx1_active, name = Plx1_active, affected by kineticLaw
	xdot(3) = (1/(compartment_nuclear))*(( 1.0 * reaction_Plx1_activation_by_active_Cdk1) + (-1.0 * reaction_Plx1_inactivation_after_Cdk1_inactivated));
	
% Species:   id = APC_C_active, name = APC/C active, affected by kineticLaw
	xdot(4) = (1/(compartment_nuclear))*(( 1.0 * reaction_Activation_of_APC_CCdc20_by_active_Plx1) + (-1.0 * reaction_inactivation_of_APC_CCdc20_after_Plx1_is_inactivated));
	
% Species:   id = APC_C_total, name = APC/C total
% Warning species is not changed by either rules or reactions
	xdot(5) = ;
	
% Species:   id = Cyclin_B1_Cdk1_complex_total, name = Cyclin B1 Cdk1 complex total, involved in a rule 	xdot(6) = x(6);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=function_for_cdk1a_degradation_by_apc_2(APC_C_active,Cyclin_B1_Cdk1_complex_phosphorylated,k_dest), z=(k_dest*APC_C_active*Cyclin_B1_Cdk1_complex_phosphorylated);end

function z=function_for_apc_activation_1(APC_C_active,APC_C_total,Plx1_active,ec50_apc,k_apc_on,n_apc), z=(k_apc_on/(1+(ec50_apc/Plx1_active)^n_apc)*(APC_C_total-APC_C_active));end

function z=function_for_cdk1a_degradation_by_apc_1(APC_C_active,Cyclin_B1_Cdk1_complex_unphosphorylated,k_dest), z=(k_dest*APC_C_active*Cyclin_B1_Cdk1_complex_unphosphorylated);end

function z=function_for_plx1_activation_1(Cyclin_B1_Cdk1_complex_phosphorylated,Plx1_active,Plx1_total,ec50_plx,k_plxon,n_plx), z=(k_plxon/(1+(ec50_plx/Cyclin_B1_Cdk1_complex_phosphorylated)^n_plx)*(Plx1_total-Plx1_active));end

function z=function_for_cdk_inactivation_1(Cyclin_B1_Cdk1_complex_phosphorylated,ec50_wee1,k_cdk1_off,n_wee1,p,r), z=(r^(1/2)*k_cdk1_off*(1+p/((Cyclin_B1_Cdk1_complex_phosphorylated/ec50_wee1)^n_wee1+1))*Cyclin_B1_Cdk1_complex_phosphorylated);end

function z=function_for_cdk1_activation_1(Cyclin_B1_Cdk1_complex_phosphorylated,Cyclin_B1_Cdk1_complex_unphosphorylated,ec50_cdc25,k_cdk1_on,n_cdc25,p,r), z=(1/r^(1/2)*k_cdk1_on*(1+p/(1+(ec50_cdc25/Cyclin_B1_Cdk1_complex_phosphorylated)^n_cdc25))*Cyclin_B1_Cdk1_complex_unphosphorylated);end

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


