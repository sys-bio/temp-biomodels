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
% Model name = Aguda1999 - G2 DNA damage checkpoint
%
% is http://identifiers.org/biomodels.db/MODEL6960055446
% is http://identifiers.org/biomodels.db/BIOMD0000000704
% isDescribedBy http://identifiers.org/pubmed/10500180
%


function main()
%Initial conditions vector
	x0=zeros(17,1);
	x0(1) = 1.0E-6;
	x0(2) = 0.0;
	x0(3) = 1.0E-6;
	x0(4) = 2.0E-5;
	x0(5) = 1.0E-6;
	x0(6) = 2.0;
	x0(7) = 0.03;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 1.0E-8;
	x0(11) = 0.0;
	x0(12) = 1.0E-6;
	x0(13) = 0.001;
	x0(14) = 0.999999;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 1.0E-6;


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

% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0;
% Parameter:   id =  k1_0, name = k1-
	global_par_k1_0=10.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.1;
% Parameter:   id =  k2_0, name = k2-
	global_par_k2_0=0.01;
% Parameter:   id =  k2_1, name = k2_
	global_par_k2_1=0.1;
% Parameter:   id =  k_ctak1, name = k_ctak1
	global_par_k_ctak1=0.0;
% Parameter:   id =  k_ctak1_0, name = k_ctak1_
	global_par_k_ctak1_0=0.0;
% Parameter:   id =  k3, name = k3_
	global_par_k3=100.0;
% Parameter:   id =  k_3, name = k-3_
	global_par_k_3=0.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=1.0;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.01;
% Parameter:   id =  k7, name = k7
	global_par_k7=1.0;
% Parameter:   id =  k_Plk1, name = k_Plk1
	global_par_k_Plk1=0.0;
% Parameter:   id =  k7_0, name = k7-
	global_par_k7_0=0.01;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.1;
% Parameter:   id =  k8_0, name = k8_
	global_par_k8_0=0.0;
% Parameter:   id =  k8_1, name = k8-
	global_par_k8_1=0.01;
% Parameter:   id =  k9, name = k9
	global_par_k9=1.0;
% Parameter:   id =  k9_0, name = k9_
	global_par_k9_0=0.0;
% Parameter:   id =  k9_1, name = k9-
	global_par_k9_1=1.0;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.0;
% Parameter:   id =  k11, name = k11
	global_par_k11=1.0;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.1;
% Parameter:   id =  k13, name = k13
	global_par_k13=1.0;
% Parameter:   id =  k14, name = k14
	global_par_k14=5.0E-4;
% Parameter:   id =  k14_0, name = k14_
	global_par_k14_0=1.0;
% Parameter:   id =  k15, name = k15
	global_par_k15=0.01;
% Parameter:   id =  k16, name = k16
	global_par_k16=2.0E-4;
% Parameter:   id =  k17, name = k17
	global_par_k17=0.1;
% Parameter:   id =  k18, name = k18
	global_par_k18=1.0;
% Parameter:   id =  k_Plk1_0, name = k_Plk1_
	global_par_k_Plk1_0=0.0;
% Parameter:   id =  k18_0, name = k18-
	global_par_k18_0=0.01;
% Parameter:   id =  k20, name = k20
	global_par_k20=0.1;
% Parameter:   id =  k21, name = k21
	global_par_k21=0.01;
% Parameter:   id =  k22, name = k22
	global_par_k22=0.1;
% Parameter:   id =  k23, name = k23
	global_par_k23=0.1;
% Parameter:   id =  k_23, name = k-23
	global_par_k_23=1.0;
% Parameter:   id =  kex, name = kex
	global_par_kex=1.0;
% Parameter:   id =  kin, name = kin
	global_par_kin=1.0E-5;
% assignmentRule: variable = Cdc25_active_total
	x(17)=x(1)+x(2);

% Reaction: id = R2_Cdc25_Phosphorylation, name = R2 Cdc25 Phosphorylation
	reaction_R2_Cdc25_Phosphorylation=compartment_nucleus*function_for_R18(global_par_k2, x(5), x(1), global_par_k_ctak1);

% Reaction: id = R2__Cdc25_Dephosphorylation, name = R2- Cdc25 Dephosphorylation
	reaction_R2__Cdc25_Dephosphorylation=compartment_nucleus*global_par_k2_0*x(2);

% Reaction: id = R7__Cdc25_inactivation, name = R7- Cdc25 inactivation
	reaction_R7__Cdc25_inactivation=compartment_nucleus*global_par_k7_0*x(1);

% Reaction: id = R7_Cdc25_Activation, name = R7 Cdc25 Activation
	reaction_R7_Cdc25_Activation=compartment_nucleus*function_for_R18(global_par_k7, x(10), x(3), global_par_k_Plk1);

% Reaction: id = R18_Cdc25Ps216_activation, name = R18 Cdc25Ps216 activation
	reaction_R18_Cdc25Ps216_activation=compartment_nucleus*function_for_R18(global_par_k18, x(10), x(4), global_par_k_Plk1_0);

% Reaction: id = R18__Cdc25Ps216_inactivation, name = R18- Cdc25Ps216 inactivation
	reaction_R18__Cdc25Ps216_inactivation=compartment_nucleus*global_par_k18_0*x(2);

% Reaction: id = R2__Cdc25_Phosphorylation, name = R2_ Cdc25 Phosphorylation
	reaction_R2__Cdc25_Phosphorylation=compartment_nucleus*function_for_R18(global_par_k2_1, x(5), x(3), global_par_k_ctak1_0);

% Reaction: id = R3___Cdc25_protein_14_3_3_unbinding, name = R3-_ Cdc25 protein 14-3-3 unbinding
	reaction_R3___Cdc25_protein_14_3_3_unbinding=compartment_nucleus*global_par_k_3*x(7);

% Reaction: id = R12_14_3_3_degradation, name = R12 14-3-3 degradation
	reaction_R12_14_3_3_degradation=compartment_nucleus*global_par_k12*x(6);

% Reaction: id = R6_14_3_3_synthesis_mediated_by_p53, name = R6 14-3-3 synthesis mediated by p53
	reaction_R6_14_3_3_synthesis_mediated_by_p53=compartment_nucleus*function_for_R20(x(8), global_par_k6);

% Reaction: id = R3___protein_14_3_3_Cdc25_binding, name = R3_  protein 14-3-3 Cdc25 binding
	reaction_R3___protein_14_3_3_Cdc25_binding=compartment_nucleus*global_par_k3*x(6)*x(4);

% Reaction: id = R20_p21_synthesis_mediated_by_p53, name = R20 p21 synthesis mediated by p53
	reaction_R20_p21_synthesis_mediated_by_p53=compartment_nucleus*function_for_R20(x(8), global_par_k20);

% Reaction: id = R22_p21_degradation, name = R22 p21 degradation
	reaction_R22_p21_degradation=compartment_nucleus*global_par_k22*x(9);

% Reaction: id = R23_p21_MPF_complex_formation, name = R23 p21/MPF complex formation
	reaction_R23_p21_MPF_complex_formation=compartment_nucleus*global_par_k23*x(9)*x(10);

% Reaction: id = R23__p21_MPF_unbinding, name = R23- p21 MPF unbinding
	reaction_R23__p21_MPF_unbinding=compartment_nucleus*global_par_k_23*x(11);

% Reaction: id = R9_MPF_activation, name = R9 MPF activation
	reaction_R9_MPF_activation=compartment_nucleus*function_for_R9(global_par_k9, x(1), x(2), x(12), global_par_k9_0);

% Reaction: id = R9__MPF_inactivation, name = R9- MPF inactivation
	reaction_R9__MPF_inactivation=compartment_nucleus*Function_for_1_modifier_1_substrate(global_par_k9_1, x(10), x(13));

% Reaction: id = R15_MPF_degradation, name = R15 MPF degradation
	reaction_R15_MPF_degradation=compartment_nucleus*function_for_R15_MPF_degradation(global_par_k15, x(10));

% Reaction: id = R14_preMPF_synthesis, name = R14 preMPF synthesis
	reaction_R14_preMPF_synthesis=compartment_nucleus*function_for_reaction_14(global_par_k14, global_par_k14_0, x(8));

% Reaction: id = R1_Chk1_Phosphorylation, name = R1 Chk1 Phosphorylation
	reaction_R1_Chk1_Phosphorylation=compartment_nucleus*Function_for_1_modifier_1_substrate(global_par_k1, x(14), x(15));

% Reaction: id = R1__Chk1_Dephosphorylation, name = R1- Chk1 Dephosphorylation
	reaction_R1__Chk1_Dephosphorylation=compartment_nucleus*global_par_k1_0*x(5);

% Reaction: id = R5_Rad3_ATM_degradation, name = R5 Rad3/ATM degradation
	reaction_R5_Rad3_ATM_degradation=compartment_nucleus*global_par_k5*x(15);

% Reaction: id = R11_p53_degradation, name = R11 p53 degradation
	reaction_R11_p53_degradation=compartment_nucleus*global_par_k11*x(8);

% Reaction: id = R8_Wee1_Phosphorylation, name = R8 Wee1 Phosphorylation
	reaction_R8_Wee1_Phosphorylation=compartment_nucleus*function_for_R8(global_par_k8, x(10), x(13), global_par_k8_0);

% Reaction: id = R8__Wee1_Dephosphorylation, name = R8- Wee1 Dephosphorylation
	reaction_R8__Wee1_Dephosphorylation=compartment_nucleus*global_par_k8_1*x(16);

% Reaction: id = R17_Wee1P_degradation, name = R17 Wee1P degradation
	reaction_R17_Wee1P_degradation=compartment_nucleus*global_par_k17*x(16);

% Reaction: id = Rex_Nuclear_export_of_iCdc25Ps216_14_3_3, name = Rex Nuclear export of iCdc25Ps216_14–3–3
	reaction_Rex_Nuclear_export_of_iCdc25Ps216_14_3_3=compartment_nucleus*global_par_kex*x(7);

	xdot=zeros(17,1);
	
% Species:   id = Cdc25_active, name = Cdc25_active, affected by kineticLaw
	xdot(1) = (1/(compartment_nucleus))*((-1.0 * reaction_R2_Cdc25_Phosphorylation) + ( 1.0 * reaction_R2__Cdc25_Dephosphorylation) + (-1.0 * reaction_R7__Cdc25_inactivation) + ( 1.0 * reaction_R7_Cdc25_Activation));
	
% Species:   id = Cdc25Ps216_active, name = Cdc25Ps216_active, affected by kineticLaw
	xdot(2) = (1/(compartment_nucleus))*(( 1.0 * reaction_R2_Cdc25_Phosphorylation) + (-1.0 * reaction_R2__Cdc25_Dephosphorylation) + ( 1.0 * reaction_R18_Cdc25Ps216_activation) + (-1.0 * reaction_R18__Cdc25Ps216_inactivation));
	
% Species:   id = Cdc25_inactive, name = Cdc25_inactive, affected by kineticLaw
	xdot(3) = (1/(compartment_nucleus))*(( 1.0 * reaction_R7__Cdc25_inactivation) + (-1.0 * reaction_R7_Cdc25_Activation) + (-1.0 * reaction_R2__Cdc25_Phosphorylation) + ( 1.0 * reaction_R3___Cdc25_protein_14_3_3_unbinding) + ( 1.0 * reaction_Rin_nuclear_import_of_iCdc25));
	
% Species:   id = Cdc25Ps216_inactive, name = Cdc25Ps216_inactive, affected by kineticLaw
	xdot(4) = (1/(compartment_nucleus))*((-1.0 * reaction_R18_Cdc25Ps216_activation) + ( 1.0 * reaction_R18__Cdc25Ps216_inactivation) + ( 1.0 * reaction_R2__Cdc25_Phosphorylation) + (-1.0 * reaction_R3___protein_14_3_3_Cdc25_binding));
	
% Species:   id = Chk1P, name = Chk1P, affected by kineticLaw
	xdot(5) = (1/(compartment_nucleus))*(( 1.0 * reaction_R1_Chk1_Phosphorylation) + (-1.0 * reaction_R1__Chk1_Dephosphorylation));
	
% Species:   id = protein_14_3_3, name = protein 14-3-3, affected by kineticLaw
	xdot(6) = (1/(compartment_nucleus))*(( 1.0 * reaction_R3___Cdc25_protein_14_3_3_unbinding) + (-1.0 * reaction_R12_14_3_3_degradation) + ( 1.0 * reaction_R13_14_3_3_synthesis) + ( 1.0 * reaction_R6_14_3_3_synthesis_mediated_by_p53) + (-1.0 * reaction_R3___protein_14_3_3_Cdc25_binding));
	
% Species:   id = Cdc25Ps216_14_3_3_inactive, name = Cdc25Ps216_14-3-3_inactive, affected by kineticLaw
	xdot(7) = (1/(compartment_nucleus))*((-1.0 * reaction_R3___Cdc25_protein_14_3_3_unbinding) + ( 1.0 * reaction_R3___protein_14_3_3_Cdc25_binding) + (-1.0 * reaction_Rex_Nuclear_export_of_iCdc25Ps216_14_3_3));
	
% Species:   id = p53, name = p53, affected by kineticLaw
	xdot(8) = (1/(compartment_nucleus))*(( 1.0 * reaction_R10_p53_synthesis) + (-1.0 * reaction_R11_p53_degradation));
	
% Species:   id = p21, name = p21, affected by kineticLaw
	xdot(9) = (1/(compartment_nucleus))*(( 1.0 * reaction_R20_p21_synthesis_mediated_by_p53) + ( 1.0 * reaction_R21_p21_natural_synthesis) + (-1.0 * reaction_R22_p21_degradation) + (-1.0 * reaction_R23_p21_MPF_complex_formation) + ( 1.0 * reaction_R23__p21_MPF_unbinding));
	
% Species:   id = MPF, name = MPF, affected by kineticLaw
	xdot(10) = (1/(compartment_nucleus))*((-1.0 * reaction_R23_p21_MPF_complex_formation) + ( 1.0 * reaction_R23__p21_MPF_unbinding) + ( 1.0 * reaction_R9_MPF_activation) + (-1.0 * reaction_R9__MPF_inactivation) + (-1.0 * reaction_R15_MPF_degradation));
	
% Species:   id = p21_MPF, name = p21/MPF, affected by kineticLaw
	xdot(11) = (1/(compartment_nucleus))*(( 1.0 * reaction_R23_p21_MPF_complex_formation) + (-1.0 * reaction_R23__p21_MPF_unbinding));
	
% Species:   id = preMPF, name = preMPF, affected by kineticLaw
	xdot(12) = (1/(compartment_nucleus))*((-1.0 * reaction_R9_MPF_activation) + ( 1.0 * reaction_R9__MPF_inactivation) + ( 1.0 * reaction_R14_preMPF_synthesis));
	
% Species:   id = Wee1, name = Wee1, affected by kineticLaw
	xdot(13) = (1/(compartment_nucleus))*(( 1.0 * reaction_R16_Wee1_synthesis) + (-1.0 * reaction_R8_Wee1_Phosphorylation) + ( 1.0 * reaction_R8__Wee1_Dephosphorylation));
	
% Species:   id = Chk1, name = Chk1, affected by kineticLaw
	xdot(14) = (1/(compartment_nucleus))*((-1.0 * reaction_R1_Chk1_Phosphorylation) + ( 1.0 * reaction_R1__Chk1_Dephosphorylation));
	
% Species:   id = Rad3_ATM, name = Rad3/ATM, affected by kineticLaw
	xdot(15) = (1/(compartment_nucleus))*(( 1.0 * reaction_R4_Rad3_ATM_natural_synthesis) + (-1.0 * reaction_R5_Rad3_ATM_degradation));
	
% Species:   id = Wee1_phosphorylated, name = Wee1_phosphorylated, affected by kineticLaw
	xdot(16) = (1/(compartment_nucleus))*(( 1.0 * reaction_R8_Wee1_Phosphorylation) + (-1.0 * reaction_R8__Wee1_Dephosphorylation) + (-1.0 * reaction_R17_Wee1P_degradation));
	
% Species:   id = Cdc25_active_total, name = Cdc25_active_total, involved in a rule 	xdot(17) = x(17);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_1_modifier_1_substrate(k,substrate,modifier), z=(k*substrate*modifier);end

function z=function_for_reaction_14(k14,k14_,p53), z=(k14/(1+k14_*p53));end

function z=function_for_R15_MPF_degradation(k15,MPF), z=(k15*MPF*MPF);end

function z=function_for_R18(k18,MPF,iCdc25Ps216,k_Plk1_), z=(k18*MPF*iCdc25Ps216+k_Plk1_*iCdc25Ps216);end

function z=function_for_R20(modifier,k), z=(k*modifier);end

function z=function_for_R9(k9,aCdc25,aCdc25Ps216,preMPF,k9_), z=(k9*(aCdc25+aCdc25Ps216)*preMPF+k9_*preMPF);end

function z=function_for_R8(k8,MPF,Wee1,k8_), z=(k8*MPF*Wee1+k8_*Wee1);end

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


