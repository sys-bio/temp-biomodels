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
% Model name = Sible2007 - Mitotic cell cycle mecanism in Xenopus Laevis
%
% is http://identifiers.org/biomodels.db/MODEL1809060005
% is http://identifiers.org/biomodels.db/BIOMD0000000942
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 1.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 100.0;
	x0(9) = 0.0;
	x0(10) = 1.0;
	x0(11) = 1.0;
	x0(12) = 0.0;


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

% Compartment: id = nuclear, name = nuclear, constant
	compartment_nuclear=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0;
% Parameter:   id =  v2, name = v2_
	global_par_v2=0.005;
% Parameter:   id =  v2_, name = v2__
	global_par_v2_=0.25;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.005;
% Parameter:   id =  v25, name = v25_
	global_par_v25=0.017;
% Parameter:   id =  v25_, name = v25__
	global_par_v25_=0.17;
% Parameter:   id =  vwee, name = vwee_
	global_par_vwee=0.01;
% Parameter:   id =  vwee_, name = vwee__
	global_par_vwee_=1.0;
% Parameter:   id =  ka, name = ka
	global_par_ka=0.02;
% Parameter:   id =  KKa, name = KKa
	global_par_KKa=0.1;
% Parameter:   id =  kb, name = kb
	global_par_kb=0.1;
% Parameter:   id =  KKb, name = KKb
	global_par_KKb=1.0;
% Parameter:   id =  kc, name = kc
	global_par_kc=0.13;
% Parameter:   id =  KKc, name = KKc
	global_par_KKc=0.01;
% Parameter:   id =  kd, name = kd
	global_par_kd=0.13;
% Parameter:   id =  KKd, name = KKd
	global_par_KKd=1.0;
% Parameter:   id =  ke, name = ke
	global_par_ke=0.02;
% Parameter:   id =  KKe, name = KKe
	global_par_KKe=0.1;
% Parameter:   id =  kf, name = kf
	global_par_kf=0.1;
% Parameter:   id =  KKf, name = KKf
	global_par_KKf=1.0;
% Parameter:   id =  kg, name = kg
	global_par_kg=0.02;
% Parameter:   id =  KKg, name = KKg
	global_par_KKg=0.01;
% Parameter:   id =  kh, name = kh
	global_par_kh=0.15;
% Parameter:   id =  KKh, name = KKh
	global_par_KKh=0.01;
% Parameter:   id =  k25, name = k25
% Parameter:   id =  kwee, name = kwee
% Parameter:   id =  k2, name = k2
% assignmentRule: variable = Wee1
	x(5)=const_species_Wee1_total-x(6);
% assignmentRule: variable = Cdk1
	x(8)=const_species_Cdk1_total;
% assignmentRule: variable = IE
	x(9)=const_species_IE_total-x(10);
% assignmentRule: variable = Cdc25
	x(1)=const_species_Cdc25_total-x(2);
% assignmentRule: variable = Cyclin_total
	x(12)=x(3)+x(4)+x(7);
% assignmentRule: variable = kwee
	global_par_kwee=global_par_vwee*x(6)+global_par_vwee_*(const_species_Wee1_total-x(6));
% assignmentRule: variable = k25
	global_par_k25=global_par_v25*(const_species_Cdc25_total-x(2))+global_par_v25_*x(2);
% assignmentRule: variable = k2
	global_par_k2=global_par_v2*(const_species_APC_total-x(11))+global_par_v2_*x(11);

% Reaction: id = R1_Dephosphorylation, name = R1 Dephosphorylation
	reaction_R1_Dephosphorylation=compartment_nuclear*Function_Michaelis_Menten_Rate_Law_v2(global_par_kb, const_species_ppase, x(2), global_par_KKb);

% Reaction: id = R2_Phosphorylation, name = R2 Phosphorylation
	reaction_R2_Phosphorylation=compartment_nuclear*Function_Michaelis_Menten_Rate_Law(global_par_ka, x(3), const_species_Cdc25_total, x(2), global_par_KKa);

% Reaction: id = R3_Dephosphorylation, name = R3 Dephosphorylation
	reaction_R3_Dephosphorylation=compartment_nuclear*global_par_k25*x(4);

% Reaction: id = R4_Phosphorylation, name = R4 Phosphorylation
	reaction_R4_Phosphorylation=compartment_nuclear*global_par_kwee*x(3);

% Reaction: id = R5_Dephosphorylation, name = R5 Dephosphorylation
	reaction_R5_Dephosphorylation=compartment_nuclear*Function_Michaelis_Menten_Rate_Law_v2(global_par_kf, const_species_ppase, x(6), global_par_KKf);

% Reaction: id = R6_Phosphorylation, name = R6 Phosphorylation
	reaction_R6_Phosphorylation=compartment_nuclear*Function_Michaelis_Menten_Rate_Law(global_par_ke, x(3), const_species_Wee1_total, x(6), global_par_KKe);

% Reaction: id = R7_Protein_Complex__Formation_by_binding, name = R7 Protein Complex  Formation by binding
	reaction_R7_Protein_Complex__Formation_by_binding=compartment_nuclear*Function_modifier_substrate(global_par_k3, x(8), x(7));

% Reaction: id = R9_Dephosphorylation, name = R9 Dephosphorylation
	reaction_R9_Dephosphorylation=compartment_nuclear*Function_Michaelis_Menten_Rate_Law_v2(global_par_kh, const_species_ppase, x(10), global_par_KKh);

% Reaction: id = R10_Phosphorylation, name = R10 Phosphorylation
	reaction_R10_Phosphorylation=compartment_nuclear*Function_Michaelis_Menten_Rate_Law(global_par_kg, x(3), const_species_IE_total, x(10), global_par_KKg);

% Reaction: id = R11_Inactivation, name = R11 Inactivation
	reaction_R11_Inactivation=compartment_nuclear*Function_Michaelis_Menten_Rate_Law_v2(global_par_kd, const_species_ppase, x(11), global_par_KKd);

% Reaction: id = R12_Activation, name = R12 Activation
	reaction_R12_Activation=compartment_nuclear*Function_Michaelis_Menten_Rate_Law(global_par_kc, x(10), const_species_APC_total, x(11), global_par_KKc);

% Reaction: id = R13_Degradation, name = R13 Degradation
	reaction_R13_Degradation=compartment_nuclear*global_par_k2*x(3);

% Reaction: id = R14_Degradation, name = R14 Degradation
	reaction_R14_Degradation=compartment_nuclear*global_par_k2*x(7);

% Reaction: id = R15_Degradation, name = R15 Degradation
	reaction_R15_Degradation=compartment_nuclear*global_par_k2*x(4);

% Species:   id = Cdk1_total, name = Cdk1_total, constant	const_species_Cdk1_total=100.0;

% Species:   id = Cdc25_total, name = Cdc25_total, constant	const_species_Cdc25_total=1.0;

% Species:   id = Wee1_total, name = Wee1_total, constant	const_species_Wee1_total=1.0;

% Species:   id = IE_total, name = IE_total, constant	const_species_IE_total=1.0;

% Species:   id = APC_total, name = APC_total, constant	const_species_APC_total=1.0;

% Species:   id = ppase, name = ppase, constant	const_species_ppase=1.0;

	xdot=zeros(12,1);
	
% Species:   id = Cdc25, name = Cdc25, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = Cdc25_phosphorylated, name = Cdc25_phosphorylated, affected by kineticLaw
	xdot(2) = (1/(compartment_nuclear))*((-1.0 * reaction_R1_Dephosphorylation) + ( 1.0 * reaction_R2_Phosphorylation));
	
% Species:   id = Cyclin_Cdk1_MPF, name = Cyclin_Cdk1_MPF, affected by kineticLaw
	xdot(3) = (1/(compartment_nuclear))*(( 1.0 * reaction_R3_Dephosphorylation) + (-1.0 * reaction_R4_Phosphorylation) + ( 1.0 * reaction_R7_Protein_Complex__Formation_by_binding) + (-1.0 * reaction_R13_Degradation));
	
% Species:   id = Cyclin_Cdk1_preMPF, name = Cyclin_Cdk1_preMPF, affected by kineticLaw
	xdot(4) = (1/(compartment_nuclear))*((-1.0 * reaction_R3_Dephosphorylation) + ( 1.0 * reaction_R4_Phosphorylation) + (-1.0 * reaction_R15_Degradation));
	
% Species:   id = Wee1, name = Wee1, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = Wee1_phosphorylated, name = Wee1_phosphorylated, affected by kineticLaw
	xdot(6) = (1/(compartment_nuclear))*((-1.0 * reaction_R5_Dephosphorylation) + ( 1.0 * reaction_R6_Phosphorylation));
	
% Species:   id = Cyclin, name = Cyclin, affected by kineticLaw
	xdot(7) = (1/(compartment_nuclear))*((-1.0 * reaction_R7_Protein_Complex__Formation_by_binding) + ( 1.0 * reaction_R8_Synthesis) + (-1.0 * reaction_R14_Degradation));
	
% Species:   id = Cdk1, name = Cdk1, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = IE, name = IE, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = IE_phosphorylated, name = IE_phosphorylated, affected by kineticLaw
	xdot(10) = (1/(compartment_nuclear))*((-1.0 * reaction_R9_Dephosphorylation) + ( 1.0 * reaction_R10_Phosphorylation));
	
% Species:   id = APC_active, name = APC_active, affected by kineticLaw
	xdot(11) = (1/(compartment_nuclear))*((-1.0 * reaction_R11_Inactivation) + ( 1.0 * reaction_R12_Activation));
	
% Species:   id = Cyclin_total, name = Cyclin_total, involved in a rule 	xdot(12) = x(12);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_modifier_substrate(k,modifier,substrate), z=(k*modifier*substrate);end

function z=Function_Michaelis_Menten_Rate_Law(k,E,S1,S2,Km), z=(k*E*(S1-S2)/(Km+S1-S2));end

function z=Function_Michaelis_Menten_Rate_Law_v2(k,E,S,Km), z=(k*E*S/(Km+S));end

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


