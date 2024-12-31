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
% Model name = Rodenfels2019 - Heat Oscillations Driven by the Embryonic Cell Cycle Reveal the Energetic Costs of Signaling
%
% isDerivedFrom urn:miriam:pubmed:24523664
% isDescribedBy http://identifiers.org/pubmed/30713074
% is http://identifiers.org/biomodels.db/MODEL2004170001
% is http://identifiers.org/biomodels.db/BIOMD0000000952
%


function main()
%Initial conditions vector
	x0=zeros(14,1);
	x0(1) = 60.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 1.0;
	x0(6) = 60.0;
	x0(7) = 0.0;
	x0(8) = 60.0;
	x0(9) = 0.0;
	x0(10) = 60.0;
	x0(11) = 0.0;
	x0(12) = 60.0;
	x0(13) = 60.0;
	x0(14) = 0.0;


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

% Compartment: id = nuclear, name = Nuclear, constant
	compartment_nuclear=1.0;
% Compartment: id = Embryo, name = Embryo, constant
	compartment_Embryo=6.0E-10;
% Parameter:   id =  k_synth, name = k_synth
	global_par_k_synth=2.85;
% Parameter:   id =  k_dest, name = k_dest
	global_par_k_dest=0.76;
% Parameter:   id =  ec50_cdc25, name = ec50_cdc25
	global_par_ec50_cdc25=30.0;
% Parameter:   id =  n_cdc25, name = n_cdc25
	global_par_n_cdc25=11.0;
% Parameter:   id =  ec50_wee1, name = ec50_wee1
	global_par_ec50_wee1=35.0;
% Parameter:   id =  n_wee1, name = n_wee1
	global_par_n_wee1=3.5;
% Parameter:   id =  k_cdk1_on, name = k_cdk1_on
	global_par_k_cdk1_on=0.06726;
% Parameter:   id =  k_cdk1_off, name = k_cdk1_off
	global_par_k_cdk1_off=0.06726;
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
	global_par_k_plxon=2.85;
% Parameter:   id =  k_plx_off, name = k_plx_off
	global_par_k_plx_off=0.2375;
% Parameter:   id =  k_apc_on, name = k_apc_on
	global_par_k_apc_on=1.5;
% Parameter:   id =  k_apc_off, name = k_apc_off
	global_par_k_apc_off=0.15;
% Parameter:   id =  r, name = r
	global_par_r=0.03125;
% Parameter:   id =  tau, name = tau
	global_par_tau=4.0;
% Parameter:   id =  Kcdk_on, name = Kcdk_on
	global_par_Kcdk_on=10.0;
% Parameter:   id =  Kcdk_off, name = Kcdk_off
	global_par_Kcdk_off=1.0;
% Parameter:   id =  Kcatcdk1, name = Kcatcdk1
	global_par_Kcatcdk1=180.0;
% Parameter:   id =  Kpp2_on, name = Kpp2_on
	global_par_Kpp2_on=100.0;
% Parameter:   id =  Kpp2_off, name = Kpp2_off
	global_par_Kpp2_off=0.01;
% Parameter:   id =  Kcatpp2, name = Kcatpp2
	global_par_Kcatpp2=1800.0;
% Parameter:   id =  delta_Hdesphos, name = delta_Hdesphos
	global_par_delta_Hdesphos=40000.0;
% assignmentRule: variable = Cyclin_B1_Cdk1_complex_total
	x(6)=x(2)+x(1);
% assignmentRule: variable = cdk1a
	x(13)=x(1);
% assignmentRule: variable = Stotal
	x(12)=x(8)+x(9)+x(7)+x(11);

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

% Reaction: id = reaction_for_SCdk1, name = reaction for SCdk1
	reaction_reaction_for_SCdk1=compartment_nuclear*Rate_Law_for_reaction_for_SCdk1(global_par_Kcdk_on, x(8), x(13), global_par_Kcatcdk1, global_par_Kcdk_off, x(7));

% Reaction: id = reaction_for_S, name = reaction for S
	reaction_reaction_for_S=compartment_nuclear*Rate_Law_for_reaction_for_S(global_par_Kcdk_off, x(7), global_par_Kcdk_on, x(8), x(13), global_par_Kcatpp2, x(11));

% Reaction: id = reaction_for_SP, name = reaction for SP
	reaction_reaction_for_SP=compartment_nuclear*Rate_Law_for_reaction_for_SP(global_par_Kcatcdk1, x(7), global_par_Kpp2_on, x(9), x(10), global_par_Kpp2_off, x(11));

% Reaction: id = reaction_for_PP2A, name = reaction for PP2A
	reaction_reaction_for_PP2A=compartment_nuclear*Rate_Law_for_reaction_for_PP2A(global_par_Kpp2_off, x(11), global_par_Kcatpp2, global_par_Kpp2_on, x(9), x(10));

% Reaction: id = reaction_for_SPPP2A, name = reaction for SPPP2A
	reaction_reaction_for_SPPP2A=compartment_nuclear*Rate_Law_for_reaction_for_SPPP2A(global_par_Kcatpp2, global_par_Kpp2_off, x(11), global_par_Kpp2_on, x(9), x(10));

% Reaction: id = reaction_for_heat_flow, name = reaction for heat flow
	reaction_reaction_for_heat_flow=compartment_nuclear*Rate_Law_for_reaction_for_heat_flow(x(11), compartment_Embryo, global_par_delta_Hdesphos, global_par_Kcatpp2, global_par_Kcatpp2, global_par_Kpp2_off, global_par_Kpp2_on, x(9), x(10));

% Species:   id = Plx1_total, name = Plx1_total, constant	const_species_Plx1_total=1.0;

	xdot=zeros(14,1);
	
% Species:   id = Cyclin_B1_Cdk1_complex_phosphorylated, name = Cyclin B1 Cdk1 complex phosphorylated( Active), affected by kineticLaw
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
	
% Species:   id = SCdk1, name = Substrate/Cdk1 complex, affected by kineticLaw
	xdot(7) = (1/(compartment_nuclear))*(( 1.0 * reaction_reaction_for_SCdk1));
	
% Species:   id = S, name = Substrate, affected by kineticLaw
	xdot(8) = (1/(compartment_nuclear))*(( 1.0 * reaction_reaction_for_S));
	
% Species:   id = SP, name = Phosphorylated Substrate(SP), affected by kineticLaw
	xdot(9) = (1/(compartment_nuclear))*(( 1.0 * reaction_reaction_for_SP));
	
% Species:   id = PP2A, name = PP2A, affected by kineticLaw
	xdot(10) = (1/(compartment_nuclear))*(( 1.0 * reaction_reaction_for_PP2A));
	
% Species:   id = SPPP2A, name = Phosphorylated Substrate Phosphatase Complex(SP-PP2A), affected by kineticLaw
	xdot(11) = (1/(compartment_nuclear))*(( 1.0 * reaction_reaction_for_SPPP2A));
	
% Species:   id = Stotal, name = Stotal, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = cdk1a, name = cdk1a, involved in a rule 	xdot(13) = x(13);
	
% Species:   id = Q, name = Heat(Q), affected by kineticLaw
	xdot(14) = (1/(compartment_nuclear))*(( 1.0 * reaction_reaction_for_heat_flow));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=function_for_cdk1a_degradation_by_apc_2(APC_C_active,Cyclin_B1_Cdk1_complex_phosphorylated,k_dest), z=(k_dest*APC_C_active*Cyclin_B1_Cdk1_complex_phosphorylated);end

function z=function_for_cdk1a_degradation_by_apc_1(APC_C_active,Cyclin_B1_Cdk1_complex_unphosphorylated,k_dest), z=(k_dest*APC_C_active*Cyclin_B1_Cdk1_complex_unphosphorylated);end

function z=function_for_plx1_activation_1(Cyclin_B1_Cdk1_complex_phosphorylated,Plx1_active,Plx1_total,ec50_plx,k_plxon,n_plx), z=(k_plxon/(1+(ec50_plx/Cyclin_B1_Cdk1_complex_phosphorylated)^n_plx)*(Plx1_total-Plx1_active));end

function z=Rate_Law_for_reaction_for_S(Kcdk_off,SCdk1,K_cdk_on,S,Cdk1a,Kcatpp2,SPPP2A), z=(Kcdk_off*SCdk1-K_cdk_on*S*Cdk1a+Kcatpp2*SPPP2A);end

function z=function_for_cdk1_activation_1(Cyclin_B1_Cdk1_complex_phosphorylated,Cyclin_B1_Cdk1_complex_unphosphorylated,ec50_cdc25,k_cdk1_on,n_cdc25,p,r), z=(1/r^(1/2)*k_cdk1_on*(1+p/(1+(ec50_cdc25/Cyclin_B1_Cdk1_complex_phosphorylated)^n_cdc25))*Cyclin_B1_Cdk1_complex_unphosphorylated);end

function z=Rate_Law_for_reaction_for_SCdk1(Kcdkon,S,Cdk1a,Kcatcdk,Kcdkoff,SCdk1), z=(Kcdkon*S*Cdk1a-(Kcatcdk+Kcdkoff)*SCdk1);end

function z=Rate_Law_for_reaction_for_SPPP2A(Kcatpp2,Kpp2off,SPPP2A,Kpp2on,SP,PP2A), z=((-(Kcatpp2+Kpp2off))*SPPP2A+Kpp2on*SP*PP2A);end

function z=function_for_cdk_inactivation_1(Cyclin_B1_Cdk1_complex_phosphorylated,ec50_wee1,k_cdk1_off,n_wee1,p,r), z=(r^(1/2)*k_cdk1_off*(1+p/((Cyclin_B1_Cdk1_complex_phosphorylated/ec50_wee1)^n_wee1+1))*Cyclin_B1_Cdk1_complex_phosphorylated);end

function z=function_for_apc_activation_1(APC_C_active,APC_C_total,Plx1_active,ec50_apc,k_apc_on,n_apc), z=(k_apc_on/(1+(ec50_apc/Plx1_active)^n_apc)*(APC_C_total-APC_C_active));end

function z=Rate_Law_for_reaction_for_heat_flow(SPPP2A,Vembryo,delta_Hdephos,Kcat_pp2,Kcatpp2,Kpp2off,Kpp2on,SP,PP2A), z=(((-(Kcatpp2+Kpp2off))*SPPP2A+Kpp2on*SP*PP2A)*Vembryo*delta_Hdephos*Kcat_pp2);end

function z=Rate_Law_for_reaction_for_SP(Kcatcdk,SCdk1,Kpp2on,SP,PP2A,Kpp2off,SPPP2A), z=(Kcatcdk*SCdk1-Kpp2on*SP*PP2A+Kpp2off*SPPP2A);end

function z=Rate_Law_for_reaction_for_PP2A(Kpp2off,SPPP2A,Kcatpp2,Kpp2on,SP,PP2A), z=(Kpp2off*SPPP2A+Kcatpp2*SPPP2A-Kpp2on*SP*PP2A);end

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


