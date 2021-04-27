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
% Model name = Gerard2010 - Progression of mammalian cell cycle by successive activation of various cyclin cdk complexes
%
% is http://identifiers.org/biomodels.db/MODEL1809060001
% is http://identifiers.org/biomodels.db/BIOMD0000000941
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 0.7205;
	x0(2) = 2.4855;
	x0(3) = 2.0;
	x0(4) = 2.6;
	x0(5) = 1.0;
	x0(6) = 0.5;
	x0(7) = 3.0;
	x0(8) = 5.0;


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
% Parameter:   id =  GF, name = GF
	global_par_GF=1.0;
% Parameter:   id =  Kda, name = Kda
	global_par_Kda=0.1;
% Parameter:   id =  Kdb, name = Kdb
	global_par_Kdb=0.005;
% Parameter:   id =  Kdd, name = Kdd
	global_par_Kdd=0.1;
% Parameter:   id =  Kde, name = Kde
	global_par_Kde=0.1;
% Parameter:   id =  Kgf, name = Kgf
	global_par_Kgf=0.1;
% Parameter:   id =  K1cdc20, name = K1cdc20
	global_par_K1cdc20=1.0;
% Parameter:   id =  K2cdc20, name = K2cdc20
	global_par_K2cdc20=1.0;
% Parameter:   id =  K1e2f, name = K1e2f
	global_par_K1e2f=0.01;
% Parameter:   id =  K2e2f, name = K2e2f
	global_par_K2e2f=0.01;
% Parameter:   id =  Vda, name = Vda
	global_par_Vda=0.245;
% Parameter:   id =  Vdb, name = Vdb
	global_par_Vdb=0.28;
% Parameter:   id =  Vdd, name = Vdd
	global_par_Vdd=0.245;
% Parameter:   id =  Vde, name = Vde
	global_par_Vde=0.35;
% Parameter:   id =  vsa, name = vsa
	global_par_vsa=0.175;
% Parameter:   id =  vsb, name = vsb
	global_par_vsb=0.21;
% Parameter:   id =  vsd, name = vsd
	global_par_vsd=0.175;
% Parameter:   id =  vse, name = vse
	global_par_vse=0.21;
% Parameter:   id =  V1cdc20, name = V1cdc20
	global_par_V1cdc20=0.21;
% Parameter:   id =  V2cdc20, name = V2cdc20
	global_par_V2cdc20=0.35;
% Parameter:   id =  V1e2f, name = V1e2f
	global_par_V1e2f=0.805;
% Parameter:   id =  V2e2f, name = V2e2f
	global_par_V2e2f=0.7;

% Reaction: id = R1_Synthesis_of_cyclin_D_Cdk4_6, name = R1 Synthesis of cyclin D Cdk4-6
	reaction_R1_Synthesis_of_cyclin_D_Cdk4_6=compartment_nuclear*Function_for_R1(global_par_vsd, global_par_GF, global_par_Kgf);

% Reaction: id = R2_Degradation_of_cyclin_D_Cdk4_6, name = R2 Degradation of cyclin D Cdk4-6
	reaction_R2_Degradation_of_cyclin_D_Cdk4_6=compartment_nuclear*Function_for_R2(global_par_Vdd, x(1), global_par_Kdd);

% Reaction: id = R3_E2F_activation, name = R3 E2F activation
	reaction_R3_E2F_activation=compartment_nuclear*Function_for_R3(global_par_V1e2f, x(7), x(2), global_par_K1e2f, x(1), x(3));

% Reaction: id = R4_E2F_inactivation, name = R4 E2F inactivation
	reaction_R4_E2F_inactivation=compartment_nuclear*Function_for_R4(global_par_V2e2f, x(2), global_par_K2e2f, x(4));

% Reaction: id = R5_Synthesis_of_cyclin_E_Cdk2, name = R5 Synthesis of cyclin E Cdk2
	reaction_R5_Synthesis_of_cyclin_E_Cdk2=compartment_nuclear*Function_for_R5_7_9(global_par_vse, x(2));

% Reaction: id = R6_Degradation_of_cyclin_E_Cdk2, name = R6 Degradation of cyclin E Cdk2
	reaction_R6_Degradation_of_cyclin_E_Cdk2=compartment_nuclear*Function_for_R6_8_10(global_par_Vde, x(4), x(3), global_par_Kde);

% Reaction: id = R7_Synthesis_of_cyclin_A_Cdk2, name = R7 Synthesis of cyclin A Cdk2
	reaction_R7_Synthesis_of_cyclin_A_Cdk2=compartment_nuclear*Function_for_R5_7_9(global_par_vsa, x(2));

% Reaction: id = R8_Degradation_of_cyclin_A_Cdk2, name = R8 Degradation of cyclin A Cdk2
	reaction_R8_Degradation_of_cyclin_A_Cdk2=compartment_nuclear*Function_for_R6_8_10(global_par_Vda, x(6), x(4), global_par_Kda);

% Reaction: id = R9_Synthesis_of_cyclin_B_Cdk1, name = R9 Synthesis of cyclin B Cdk1
	reaction_R9_Synthesis_of_cyclin_B_Cdk1=compartment_nuclear*Function_for_R5_7_9(global_par_vsb, x(4));

% Reaction: id = R10_Degradation_of_cyclin_B_Cdk1, name = R10 Degradation of cyclin B Cdk1
	reaction_R10_Degradation_of_cyclin_B_Cdk1=compartment_nuclear*Function_for_R6_8_10(global_par_Vdb, x(6), x(5), global_par_Kdb);

% Reaction: id = R11_Phosphorylation_and_activation_of_Cdc20, name = R11 Phosphorylation and activation of Cdc20
	reaction_R11_Phosphorylation_and_activation_of_Cdc20=compartment_nuclear*Function_for_R11(global_par_V1cdc20, x(5), x(8), x(6), global_par_K1cdc20);

% Reaction: id = R12_Dephosphorylation_and_inactivation_of_Cdc20, name = R12 Dephosphorylation and inactivation of Cdc20
	reaction_R12_Dephosphorylation_and_inactivation_of_Cdc20=compartment_nuclear*Function_for_R12(global_par_V2cdc20, x(6), global_par_K2cdc20);

	xdot=zeros(8,1);
	
% Species:   id = cyclin_D_Cdk4_6, name = cyclin D Cdk4-6, affected by kineticLaw
	xdot(1) = (1/(compartment_nuclear))*(( 1.0 * reaction_R1_Synthesis_of_cyclin_D_Cdk4_6) + (-1.0 * reaction_R2_Degradation_of_cyclin_D_Cdk4_6));
	
% Species:   id = transcription_factor_E2F_active, name = transcription factor E2F active, affected by kineticLaw
	xdot(2) = (1/(compartment_nuclear))*(( 1.0 * reaction_R3_E2F_activation) + (-1.0 * reaction_R4_E2F_inactivation));
	
% Species:   id = cyclin_E_Cdk2, name = cyclin E Cdk2, affected by kineticLaw
	xdot(3) = (1/(compartment_nuclear))*(( 1.0 * reaction_R5_Synthesis_of_cyclin_E_Cdk2) + (-1.0 * reaction_R6_Degradation_of_cyclin_E_Cdk2));
	
% Species:   id = cyclin_A_Cdk2, name = cyclin A Cdk2, affected by kineticLaw
	xdot(4) = (1/(compartment_nuclear))*(( 1.0 * reaction_R7_Synthesis_of_cyclin_A_Cdk2) + (-1.0 * reaction_R8_Degradation_of_cyclin_A_Cdk2));
	
% Species:   id = cyclin_B_Cdk1, name = cyclin B Cdk1, affected by kineticLaw
	xdot(5) = (1/(compartment_nuclear))*(( 1.0 * reaction_R9_Synthesis_of_cyclin_B_Cdk1) + (-1.0 * reaction_R10_Degradation_of_cyclin_B_Cdk1));
	
% Species:   id = Cdc20_active, name = Cdc20 active, affected by kineticLaw
	xdot(6) = (1/(compartment_nuclear))*(( 1.0 * reaction_R11_Phosphorylation_and_activation_of_Cdc20) + (-1.0 * reaction_R12_Dephosphorylation_and_inactivation_of_Cdc20));
	
% Species:   id = E2F_total, name = E2F_total
% Warning species is not changed by either rules or reactions
	xdot(7) = ;
	
% Species:   id = Cdc20_total, name = Cdc20_total
% Warning species is not changed by either rules or reactions
	xdot(8) = ;
end

function z=Function_for_R1(v_sd,GF,K_gf), z=(v_sd*GF/(K_gf+GF));end

function z=Function_for_R2(Vdd,Md,K_dd), z=(Vdd*Md/(K_dd+Md));end

function z=Function_for_R3(V_le2f,E2F_total,E2F,Kle2f,Md,Me), z=(V_le2f*(E2F_total-E2F)/(Kle2f+E2F_total-E2F)*(Md+Me));end

function z=Function_for_R12(V2cdc20,Cdc20,K_2cdc20), z=(V2cdc20*Cdc20/(K_2cdc20+Cdc20));end

function z=Function_for_R5_7_9(v,modifier), z=(v*modifier);end

function z=Function_for_R4(V2e2f,E2F,K2e2f,Ma), z=(V2e2f*E2F/(K2e2f+E2F)*Ma);end

function z=Function_for_R6_8_10(V,modifier,substrate,K), z=(V*modifier*substrate/(K+substrate));end

function z=Function_for_R11(V1cdc20,Mb,Cdc20_total,Cdc20,K1cdc20), z=(V1cdc20*Mb*(Cdc20_total-Cdc20)/(K1cdc20+(Cdc20_total-Cdc20)));end

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


