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
% Model name = Queralt2006 - Initiation of mitotic exit by downregulation of PP2A in budding yeast
%
% is http://identifiers.org/biomodels.db/MODEL1809060004
% is http://identifiers.org/biomodels.db/BIOMD0000000953
%


function main()
%Initial conditions vector
	x0=zeros(20,1);
	x0(1) = 0.997;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.6;
	x0(5) = 0.25;
	x0(6) = 0.248;
	x0(7) = 0.098;
	x0(8) = 0.417;
	x0(9) = 0.015;
	x0(10) = 0.485;
	x0(11) = 0.99;
	x0(12) = 0.997;
	x0(13) = 0.965384615384616;
	x0(14) = 8.0E-6;
	x0(15) = 0.945;
	x0(16) = 1.0;
	x0(17) = 0.0257;
	x0(18) = 0.352;
	x0(19) = 0.00199999999999997;
	x0(20) = 0.03;


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

% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.0;
% Parameter:   id =  ks_clb2, name = ks_clb2
	global_par_ks_clb2=0.03;
% Parameter:   id =  kd_clb2, name = kd_clb2
	global_par_kd_clb2=0.03;
% Parameter:   id =  kd_clb2_p, name = kd_clb2_p
	global_par_kd_clb2_p=0.2;
% Parameter:   id =  kd_clb2_pp, name = kd_clb2_pp
	global_par_kd_clb2_pp=2.0;
% Parameter:   id =  ks_cdc20, name = ks_cdc20
	global_par_ks_cdc20=0.015;
% Parameter:   id =  kd_cdc20, name = kd_cdc20
	global_par_kd_cdc20=0.05;
% Parameter:   id =  kd_cdc20_p, name = kd_cdc20_p
	global_par_kd_cdc20_p=2.0;
% Parameter:   id =  kd_cdh, name = kd_cdh
	global_par_kd_cdh=0.01;
% Parameter:   id =  kd_cdh_p, name = kd_cdh_p
	global_par_kd_cdh_p=1.0;
% Parameter:   id =  kp_cdh_p, name = kp_cdh_p
	global_par_kp_cdh_p=1.0;
% Parameter:   id =  J_cdh, name = J_cdh
	global_par_J_cdh=0.0015;
% Parameter:   id =  ks_securin, name = ks_securin
	global_par_ks_securin=0.03;
% Parameter:   id =  kd_securin, name = kd_securin
	global_par_kd_securin=0.05;
% Parameter:   id =  kd_securin_p, name = kd_securin_p
	global_par_kd_securin_p=2.0;
% Parameter:   id =  ks_separase, name = ks_separase
	global_par_ks_separase=0.001;
% Parameter:   id =  kd_separase, name = kd_separase
	global_par_kd_separase=0.004;
% Parameter:   id =  la_securin, name = la_securin
	global_par_la_securin=500.0;
% Parameter:   id =  ld_securin, name = ld_securin
	global_par_ld_securin=1.0;
% Parameter:   id =  kd_p, name = kd_p
	global_par_kd_p=0.1;
% Parameter:   id =  kd, name = kd
	global_par_kd=0.45;
% Parameter:   id =  kp, name = kp
	global_par_kp=0.4;
% Parameter:   id =  kp_p, name = kp_p
	global_par_kp_p=2.0;
% Parameter:   id =  Jnet, name = Jnet
	global_par_Jnet=0.2;
% Parameter:   id =  l_a_net, name = l_a_net
	global_par_l_a_net=500.0;
% Parameter:   id =  l_d_net, name = l_d_net
	global_par_l_d_net=1.0;
% Parameter:   id =  ks_polo, name = ks_polo
	global_par_ks_polo=0.01;
% Parameter:   id =  kd_polo, name = kd_polo
	global_par_kd_polo=0.01;
% Parameter:   id =  kd_polo_p, name = kd_polo_p
	global_par_kd_polo_p=0.25;
% Parameter:   id =  ka_polo, name = ka_polo
	global_par_ka_polo=0.0;
% Parameter:   id =  ka_polo_p, name = ka_polo_p
	global_par_ka_polo_p=0.5;
% Parameter:   id =  ki_polo, name = ki_polo
	global_par_ki_polo=0.1;
% Parameter:   id =  J_polo, name = J_polo
	global_par_J_polo=0.25;
% Parameter:   id =  ka_tem, name = ka_tem
	global_par_ka_tem=0.0;
% Parameter:   id =  ka_tem_p, name = ka_tem_p
	global_par_ka_tem_p=0.5;
% Parameter:   id =  ki_tem, name = ki_tem
	global_par_ki_tem=0.1;
% Parameter:   id =  kitem_p, name = kitem_p
	global_par_kitem_p=1.0;
% Parameter:   id =  J_tem1, name = J_tem1
	global_par_J_tem1=0.005;
% Parameter:   id =  ka_cdc15, name = ka_cdc15
	global_par_ka_cdc15=0.02;
% Parameter:   id =  ka_cdc15_p, name = ka_cdc15_p
	global_par_ka_cdc15_p=0.5;
% Parameter:   id =  ki_cdc15, name = ki_cdc15
	global_par_ki_cdc15=0.0;
% Parameter:   id =  ki_cdc15_p, name = ki_cdc15_p
	global_par_ki_cdc15_p=0.2;
% Parameter:   id =  J_cdc15, name = J_cdc15
	global_par_J_cdc15=0.2;
% Parameter:   id =  la_men, name = la_men
	global_par_la_men=10.0;
% Parameter:   id =  ld_men, name = ld_men
	global_par_ld_men=0.01;
% Parameter:   id =  kpp, name = kpp
	global_par_kpp=0.1;
% Parameter:   id =  ki, name = ki
	global_par_ki=20.0;
% assignmentRule: variable = net1p
	x(8)=const_species_net1_total-x(7)-x(10);
% assignmentRule: variable = cdc14
	x(9)=const_species_cdc14_total-x(10);
% assignmentRule: variable = cdk
	x(12)=x(1)/(1+const_species_Inh);
% assignmentRule: variable = securin
	x(18)=x(4)-x(6);
% assignmentRule: variable = separase
	x(19)=x(5)-x(6);
% assignmentRule: variable = pp2a
	x(13)=(1+global_par_kpp*global_par_ki*x(19))/(1+global_par_ki*x(19))*const_species_pp2a_total;
% assignmentRule: variable = Cdc14x2
	x(20)=x(9)*2;

% Reaction: id = R2_Clb2_degradation, name = R2 Clb2 degradation
	reaction_R2_Clb2_degradation=compartment_nucleus*Function_fro_Clb2_degradation(global_par_kd_clb2, global_par_kd_clb2_p, x(2), global_par_kd_clb2_pp, x(3), x(1));

% Reaction: id = R4_Cdc20_degradation, name = R4 Cdc20 degradation
	reaction_R4_Cdc20_degradation=compartment_nucleus*Function_for_Cdc20_degradation(global_par_kd_cdc20, global_par_kd_cdc20_p, x(3), x(2));

% Reaction: id = R5_Cdh1_activation, name = R5 Cdh1 activation
	reaction_R5_Cdh1_activation=compartment_nucleus*Function_for_cdh1_d(global_par_kd_cdh, global_par_kd_cdh_p, x(9), global_par_J_cdh, const_species_cdh1_total, x(3));

% Reaction: id = R6_Cdh1_inactivation, name = R6 Cdh1 inactivation
	reaction_R6_Cdh1_inactivation=compartment_nucleus*Function_for_Cdh1_p(global_par_kp_cdh_p, x(12), x(3), global_par_J_cdh);

% Reaction: id = R8_Securin_degradation, name = R8 Securin degradation
	reaction_R8_Securin_degradation=compartment_nucleus*Function_for_Cdc20_degradation(global_par_kd_securin, global_par_kd_securin_p, x(2), x(4));

% Reaction: id = R10_Separase_degradation, name = R10 Separase degradation
	reaction_R10_Separase_degradation=compartment_nucleus*global_par_kd_separase*x(5);

% Reaction: id = R11_Securin_separase_association, name = R11 Securin separase association
	reaction_R11_Securin_separase_association=compartment_nucleus*Function_for_R11(global_par_la_securin, x(18), x(19));

% Reaction: id = R12_Securin_separase_dissociation, name = R12 Securin separase dissociation
	reaction_R12_Securin_separase_dissociation=compartment_nucleus*Function_for_securin_separase_de(global_par_ld_securin, global_par_kd_separase, global_par_kd_securin, global_par_kd_securin_p, x(2), x(6));

% Reaction: id = R13_Net1_dephosphorylation, name = R13 Net1 dephosphorylation
	reaction_R13_Net1_dephosphorylation=compartment_nucleus*function_for_Net1_dephosphorylation(global_par_kd_p, x(9), global_par_kd, x(13), x(8), global_par_Jnet);

% Reaction: id = R14_Net1_phosphorylation, name = R14 Net1 phosphorylation
	reaction_R14_Net1_phosphorylation=compartment_nucleus*Function_for_Net1_d(global_par_Jnet, global_par_kp, x(12), global_par_kp_p, x(14), x(7), x(10));

% Reaction: id = R15_Net1_Cdc14_association, name = R15 Net1 Cdc14 association
	reaction_R15_Net1_Cdc14_association=compartment_nucleus*(global_par_l_a_net*x(7)*x(9)-global_par_l_d_net*x(10));

% Reaction: id = R16_Net1_Cdc14_dissociation, name = R16 Net1 Cdc14 dissociation
	reaction_R16_Net1_Cdc14_dissociation=compartment_nucleus*Function_for_Net1_Cdc14_d(global_par_kp, x(12), global_par_kp_p, x(14), x(7), global_par_Jnet, x(10));

% Reaction: id = R18_Polo_degradation, name = R18 Polo degradation
	reaction_R18_Polo_degradation=compartment_nucleus*Function_for_Polo_total_degradation(global_par_kd_polo, global_par_kd_polo_p, x(3), x(11));

% Reaction: id = R19_Polo_activation, name = R19 Polo activation
	reaction_R19_Polo_activation=compartment_nucleus*Function_for_cdh1_d(global_par_ka_polo, global_par_ka_polo_p, x(12), global_par_J_polo, x(11), x(15));

% Reaction: id = R20_Polo_inactivation, name = R20 Polo inactivation
	reaction_R20_Polo_inactivation=compartment_nucleus*function_for_Polo_inactivation(global_par_ki_polo, x(15), global_par_J_polo);

% Reaction: id = R21_Polo_inactivation, name = R21 Polo inactivation
	reaction_R21_Polo_inactivation=compartment_nucleus*Function_for_Cdc20_degradation(global_par_kd_polo, global_par_kd_polo_p, x(3), x(15));

% Reaction: id = R22_Tem1_activation, name = R22 Tem1 activation
	reaction_R22_Tem1_activation=compartment_nucleus*Function_for_cdh1_d(global_par_ka_tem, global_par_ka_tem_p, x(15), global_par_J_tem1, const_species_tem1_total, x(16));

% Reaction: id = R23_Tem1_inactivation, name = R23 Tem1 inactivation
	reaction_R23_Tem1_inactivation=compartment_nucleus*function_for_Tem1_inactivation(global_par_ki_tem, global_par_kitem_p, x(13), x(16), global_par_J_tem1);

% Reaction: id = R24_Cdc15_activation, name = R24 Cdc15 activation
	reaction_R24_Cdc15_activation=compartment_nucleus*Function_for_cdh1_d(global_par_ka_cdc15, global_par_ka_cdc15_p, x(9), global_par_J_cdc15, const_species_cdc15_total, x(17));

% Reaction: id = R25_Cdc15_inactivation, name = R25 Cdc15 inactivation
	reaction_R25_Cdc15_inactivation=compartment_nucleus*function_for_Tem1_inactivation(global_par_ki_cdc15, global_par_ki_cdc15_p, x(12), x(17), global_par_J_cdc15);

% Reaction: id = R26_MEN_activation, name = R26 MEN activation
	reaction_R26_MEN_activation=compartment_nucleus*Function_for_MEN_a(x(16), global_par_la_men, x(14), x(17));

% Reaction: id = R27_MEN, name = R27 MEN
	reaction_R27_MEN=compartment_nucleus*Function_for_MEN_d(x(14), global_par_ld_men);

% Reaction: id = R28_MEN_inactivation, name = R28 MEN inactivation
	reaction_R28_MEN_inactivation=compartment_nucleus*Function_for_MEN_i(global_par_ki_tem, global_par_kitem_p, x(13), x(14), global_par_J_tem1, x(16));

% Reaction: id = R29_MEN_inactivation, name = R29 MEN inactivation
	reaction_R29_MEN_inactivation=compartment_nucleus*Function_for_MEN_i(global_par_ki_cdc15, global_par_ki_cdc15_p, x(12), x(14), global_par_J_cdc15, x(17));

% Species:   id = pp2a_total, name = pp2a_total, constant	const_species_pp2a_total=1.0;

% Species:   id = cdh1_total, name = cdh1_total, constant	const_species_cdh1_total=1.0;

% Species:   id = net1_total, name = net1_total, constant	const_species_net1_total=1.0;

% Species:   id = tem1_total, name = tem1_total, constant	const_species_tem1_total=1.0;

% Species:   id = cdc15_total, name = cdc15_total, constant	const_species_cdc15_total=1.0;

% Species:   id = Inh, name = Inh, constant	const_species_Inh=0.0;

% Species:   id = cdc14_total, name = cdc14_total, constant	const_species_cdc14_total=0.5;

	xdot=zeros(20,1);
	
% Species:   id = clb2, name = clb2, affected by kineticLaw
	xdot(1) = (1/(compartment_nucleus))*(( 1.0 * reaction_R1_Clb2_synthesis) + (-1.0 * reaction_R2_Clb2_degradation));
	
% Species:   id = cdc20, name = cdc20, affected by kineticLaw
	xdot(2) = (1/(compartment_nucleus))*(( 1.0 * reaction_R3_Cdc20_synthesis) + (-1.0 * reaction_R4_Cdc20_degradation));
	
% Species:   id = cdh1, name = cdh1, affected by kineticLaw
	xdot(3) = (1/(compartment_nucleus))*(( 1.0 * reaction_R5_Cdh1_activation) + (-1.0 * reaction_R6_Cdh1_inactivation));
	
% Species:   id = securin_total, name = securin_total, affected by kineticLaw
	xdot(4) = (1/(compartment_nucleus))*(( 1.0 * reaction_R7_Securin_synthesis) + (-1.0 * reaction_R8_Securin_degradation));
	
% Species:   id = separase_total, name = separase_total, affected by kineticLaw
	xdot(5) = (1/(compartment_nucleus))*(( 1.0 * reaction_R9_Separase_synthesis) + (-1.0 * reaction_R10_Separase_degradation));
	
% Species:   id = securin_separase, name = securin_separase, affected by kineticLaw
	xdot(6) = (1/(compartment_nucleus))*(( 1.0 * reaction_R11_Securin_separase_association) + (-1.0 * reaction_R12_Securin_separase_dissociation));
	
% Species:   id = net1, name = net1, affected by kineticLaw
	xdot(7) = (1/(compartment_nucleus))*(( 1.0 * reaction_R13_Net1_dephosphorylation) + (-1.0 * reaction_R14_Net1_phosphorylation) + (-1.0 * reaction_R15_Net1_Cdc14_association));
	
% Species:   id = net1p, name = net1p, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = cdc14, name = cdc14, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = net1cdc14, name = net1cdc14, affected by kineticLaw
	xdot(10) = (1/(compartment_nucleus))*(( 1.0 * reaction_R15_Net1_Cdc14_association) + (-1.0 * reaction_R16_Net1_Cdc14_dissociation));
	
% Species:   id = polo_total, name = polo_total, affected by kineticLaw
	xdot(11) = (1/(compartment_nucleus))*(( 1.0 * reaction_R17_Polo_synthesis) + (-1.0 * reaction_R18_Polo_degradation));
	
% Species:   id = cdk, name = cdk, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = pp2a, name = pp2a, involved in a rule 	xdot(13) = x(13);
	
% Species:   id = men, name = men, affected by kineticLaw
	xdot(14) = (1/(compartment_nucleus))*(( 1.0 * reaction_R26_MEN_activation) + (-1.0 * reaction_R27_MEN) + (-1.0 * reaction_R28_MEN_inactivation) + (-1.0 * reaction_R29_MEN_inactivation));
	
% Species:   id = polo, name = polo, affected by kineticLaw
	xdot(15) = (1/(compartment_nucleus))*(( 1.0 * reaction_R19_Polo_activation) + (-1.0 * reaction_R20_Polo_inactivation) + (-1.0 * reaction_R21_Polo_inactivation));
	
% Species:   id = tem1, name = tem1, affected by kineticLaw
	xdot(16) = (1/(compartment_nucleus))*(( 1.0 * reaction_R22_Tem1_activation) + (-1.0 * reaction_R23_Tem1_inactivation));
	
% Species:   id = cdc15, name = cdc15, affected by kineticLaw
	xdot(17) = (1/(compartment_nucleus))*(( 1.0 * reaction_R24_Cdc15_activation) + (-1.0 * reaction_R25_Cdc15_inactivation));
	
% Species:   id = securin, name = securin, involved in a rule 	xdot(18) = x(18);
	
% Species:   id = separase, name = separase, involved in a rule 	xdot(19) = x(19);
	
% Species:   id = Cdc14x2, name = Cdc14x2, involved in a rule 	xdot(20) = x(20);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_fro_Clb2_degradation(k,k_p,modifier,k_pp,modifier2,substrate), z=((k+k_p*modifier+k_pp*modifier2)*substrate);end

function z=Function_for_Cdc20_degradation(k,k_p,modifier,substrate), z=((k+k_p*modifier)*substrate);end

function z=Function_for_cdh1_d(k,k_p,Cdc14,J_cdh,Cdh1_total,Cdh1), z=((k+k_p*Cdc14)*(Cdh1_total-Cdh1)/(J_cdh+Cdh1_total-Cdh1));end

function z=Function_for_Cdh1_p(k,modifier,substrate,J_cdh), z=(k*modifier*substrate/(J_cdh+substrate));end

function z=Function_for_securin_separase_de(ld,k_d,k_dp,k_dpp,modifier,substrate), z=((ld+k_d+k_dp+k_dpp*modifier)*substrate);end

function z=function_for_Net1_dephosphorylation(kd_p,Cdc14,kd,PP2A,Net1P,J_net), z=((kd_p*Cdc14+kd*PP2A)*Net1P/(J_net+Net1P));end

function z=Function_for_Net1_d(J_net,k_p,Cdk,kp_p,MEN,Net1,Net1_Cdc14), z=((k_p*Cdk+kp_p*MEN)*Net1/(J_net+Net1+Net1_Cdc14));end

function z=Function_for_Net1_Cdc14_d(k_p,Cdk,kp_p,MEN,Net1,J_net,Net1_Cdc14), z=((k_p*Cdk+kp_p*MEN)*Net1_Cdc14/(J_net+Net1+Net1_Cdc14));end

function z=Function_for_Polo_total_degradation(k,k_p,Cdh1,Polo_total), z=((k+k_p*Cdh1)*Polo_total);end

function z=function_for_Polo_inactivation(ki,Polo,J_polo), z=(ki*Polo/(J_polo+Polo));end

function z=function_for_Tem1_inactivation(k,k_p,PP2A,Tem1,J_tem1), z=((k+k_p*PP2A)*Tem1/(J_tem1+Tem1));end

function z=Function_for_MEN_a(Tem1,Ia,MEN,Cdc15), z=(Ia*(Tem1-MEN)*(Cdc15-MEN));end

function z=Function_for_MEN_d(MEN,ld), z=(ld*MEN);end

function z=Function_for_MEN_i(k_i,k_ip,PP2A,MEN,J_tem1,Tem1), z=((k_i+k_ip*PP2A)*MEN/(J_tem1+Tem1));end

function z=Function_for_R11(la_securin,securin,separase), z=(la_securin*securin*separase);end

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


