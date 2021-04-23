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
% Model name = Zi2007_TGFbeta_signaling
%
% is http://identifiers.org/biomodels.db/MODEL3388742457
% is http://identifiers.org/biomodels.db/BIOMD0000000163
% isDescribedBy http://identifiers.org/pubmed/17895977
%


function main()
%Initial conditions vector
	x0=zeros(16,1);
	x0(1) = 492.61;
	x0(2) = 236.45;
	x0(3) = 1149.4;
	x0(4) = 551.72;
	x0(5) = 0.237;
	x0(6) = 2.092;
	x0(7) = 2.06;
	x0(8) = 0.202;
	x0(9) = 1.778;
	x0(10) = 1.148;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.08;


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

% Compartment: id = V_medium, name = Medium, constant
	compartment_V_medium=1.0;
% Compartment: id = V_nuc, name = Nucleus, constant
	compartment_V_nuc=3.5E-4;
% Compartment: id = V_cyt, name = Cytoplasm, constant
	compartment_V_cyt=0.00105;
% Parameter:   id =  v_T1R, name = v_T1R
	global_par_v_T1R=0.0103;
% Parameter:   id =  v_T2R, name = v_T2R
	global_par_v_T2R=0.02869;
% Parameter:   id =  ki_EE, name = ki_EE
	global_par_ki_EE=0.33;
% Parameter:   id =  kr_EE, name = kr_EE
	global_par_kr_EE=0.033;
% Parameter:   id =  ki_Cave, name = ki_Cave
	global_par_ki_Cave=0.33;
% Parameter:   id =  kr_Cave, name = kr_Cave
	global_par_kr_Cave=0.03742;
% Parameter:   id =  Kcd, name = Kcd
	global_par_Kcd=0.005;
% Parameter:   id =  k_LRC, name = k_LRC
% Warning parameter k_LRC is not constant, it should be controlled by a Rule and/or events
	global_par_k_LRC=2197.0;
% Parameter:   id =  Klid, name = Klid
	global_par_Klid=0.02609;
% Parameter:   id =  Kdeg_T1R_EE, name = Kdeg_T1R_EE
	global_par_Kdeg_T1R_EE=0.005;
% Parameter:   id =  Kdeg_T2R_EE, name = Kdeg_T2R_EE
	global_par_Kdeg_T2R_EE=0.025;
% Parameter:   id =  Kimp_Smad2c, name = Kimp_Smad2c
	global_par_Kimp_Smad2c=0.16;
% Parameter:   id =  Kexp_Smad2n, name = Kexp_Smad2n
	global_par_Kexp_Smad2n=1.0;
% Parameter:   id =  Kimp_Smad4c, name = Kimp_Smad4c
	global_par_Kimp_Smad4c=0.08;
% Parameter:   id =  Kexp_Smad4n, name = Kexp_Smad4n
	global_par_Kexp_Smad4n=0.5;
% Parameter:   id =  k_Smads_Complex_c, name = k_Smads_Complex_c
	global_par_k_Smads_Complex_c=6.85E-5;
% Parameter:   id =  Kimp_Smads_Complex_c, name = Kimp_Smads_Complex_c
	global_par_Kimp_Smads_Complex_c=0.16;
% Parameter:   id =  Kdiss_Smads_Complex_n, name = Kdiss_Smads_Complex_n
	global_par_Kdiss_Smads_Complex_n=0.1174;
% Parameter:   id =  Total_Smad2n, name = Total_Smad2n
% Parameter:   id =  Total_Smad2c, name = Total_Smad2c
% assignmentRule: variable = Total_Smad2n
	global_par_Total_Smad2n=x(2)+x(15);
% assignmentRule: variable = Total_Smad2c
	global_par_Total_Smad2c=x(1)+x(14);

% Reaction: id = R1_Smad2_import
	reaction_R1_Smad2_import=compartment_V_cyt*global_par_Kimp_Smad2c*x(1);

% Reaction: id = R2_Smad2_export
	reaction_R2_Smad2_export=compartment_V_nuc*global_par_Kexp_Smad2n*x(2);

% Reaction: id = R3_Smad4_import
	reaction_R3_Smad4_import=compartment_V_cyt*global_par_Kimp_Smad4c*x(3);

% Reaction: id = R4_Smad4_export
	reaction_R4_Smad4_export=compartment_V_nuc*global_par_Kexp_Smad4n*x(4);

% Reaction: id = R5_T1R_production
	reaction_R5_T1R_production=compartment_V_cyt*global_par_v_T1R;

% Reaction: id = R6_T1R_Cave_formation
	reaction_R6_T1R_Cave_formation=compartment_V_cyt*global_par_ki_Cave*x(5);

% Reaction: id = R7_T1R_Cave_recycling
	reaction_R7_T1R_Cave_recycling=compartment_V_cyt*global_par_kr_Cave*x(6);

% Reaction: id = R8_T1R_EE_formation
	reaction_R8_T1R_EE_formation=compartment_V_cyt*global_par_ki_EE*x(5);

% Reaction: id = R9_T1R_EE_recycling
	reaction_R9_T1R_EE_recycling=compartment_V_cyt*global_par_kr_EE*x(7);

% Reaction: id = R10_T1R_EE_degradation
	reaction_R10_T1R_EE_degradation=compartment_V_cyt*global_par_Kdeg_T1R_EE*x(7);

% Reaction: id = R11_T2R_production
	reaction_R11_T2R_production=compartment_V_cyt*global_par_v_T2R;

% Reaction: id = R12_T2R_Cave_formation
	reaction_R12_T2R_Cave_formation=compartment_V_cyt*global_par_ki_Cave*x(8);

% Reaction: id = R13_T2R_Cave_recycling
	reaction_R13_T2R_Cave_recycling=compartment_V_cyt*global_par_kr_Cave*x(9);

% Reaction: id = R14_T2R_EE_formation
	reaction_R14_T2R_EE_formation=compartment_V_cyt*global_par_ki_EE*x(8);

% Reaction: id = R15_T2R_EE_recycling
	reaction_R15_T2R_EE_recycling=compartment_V_cyt*global_par_kr_EE*x(10);

% Reaction: id = R16_T2R_EE_degradation
	reaction_R16_T2R_EE_degradation=compartment_V_cyt*global_par_Kdeg_T2R_EE*x(10);

% Reaction: id = R17_LRC_formation
	reaction_R17_LRC_formation=compartment_V_cyt*global_par_k_LRC*x(16)*x(8)*x(5);

% Reaction: id = R18_LRC_Cave_formation
	reaction_R18_LRC_Cave_formation=compartment_V_cyt*global_par_ki_Cave*x(11);

% Reaction: id = R19_LRC_Cave_recycling
	reaction_R19_LRC_Cave_recycling=compartment_V_cyt*global_par_kr_Cave*x(12);

% Reaction: id = R20_LRC_EE_formation
	reaction_R20_LRC_EE_formation=compartment_V_cyt*global_par_ki_EE*x(11);

% Reaction: id = R21_LRC_EE_recycling
	reaction_R21_LRC_EE_recycling=compartment_V_cyt*global_par_kr_EE*x(13);

% Reaction: id = R22_LRC_EE_degradation
	reaction_R22_LRC_EE_degradation=compartment_V_cyt*global_par_Kcd*x(13);

% Reaction: id = R23_Smads_Complex_formation
	reaction_R23_Smads_Complex_formation=compartment_V_cyt*global_par_k_Smads_Complex_c*x(1)*x(3)*x(13);

% Reaction: id = R24_Smads_Complex_import
	reaction_R24_Smads_Complex_import=compartment_V_cyt*global_par_Kimp_Smads_Complex_c*x(14);

% Reaction: id = R25_Smads_Complex_Dissociation
	reaction_R25_Smads_Complex_Dissociation=compartment_V_nuc*global_par_Kdiss_Smads_Complex_n*x(15);

% Reaction: id = R26_LRC_Cave_degradation
	reaction_R26_LRC_Cave_degradation=compartment_V_cyt*global_par_Klid*x(12)*x(15);

	xdot=zeros(16,1);
	
% Species:   id = Smad2c, name = Smad2c, affected by kineticLaw
	xdot(1) = (1/(compartment_V_cyt))*((-1.0 * reaction_R1_Smad2_import) + ( 1.0 * reaction_R2_Smad2_export) + (-1.0 * reaction_R23_Smads_Complex_formation));
	
% Species:   id = Smad2n, name = Smad2n, affected by kineticLaw
	xdot(2) = (1/(compartment_V_nuc))*(( 1.0 * reaction_R1_Smad2_import) + (-1.0 * reaction_R2_Smad2_export) + ( 1.0 * reaction_R25_Smads_Complex_Dissociation));
	
% Species:   id = Smad4c, name = Smad4c, affected by kineticLaw
	xdot(3) = (1/(compartment_V_cyt))*((-1.0 * reaction_R3_Smad4_import) + ( 1.0 * reaction_R4_Smad4_export) + (-1.0 * reaction_R23_Smads_Complex_formation));
	
% Species:   id = Smad4n, name = Smad4n, affected by kineticLaw
	xdot(4) = (1/(compartment_V_nuc))*(( 1.0 * reaction_R3_Smad4_import) + (-1.0 * reaction_R4_Smad4_export) + ( 1.0 * reaction_R25_Smads_Complex_Dissociation));
	
% Species:   id = T1R_Surf, name = T1R_Surf, affected by kineticLaw
	xdot(5) = (1/(compartment_V_cyt))*(( 1.0 * reaction_R5_T1R_production) + (-1.0 * reaction_R6_T1R_Cave_formation) + ( 1.0 * reaction_R7_T1R_Cave_recycling) + (-1.0 * reaction_R8_T1R_EE_formation) + ( 1.0 * reaction_R9_T1R_EE_recycling) + (-1.0 * reaction_R17_LRC_formation) + ( 1.0 * reaction_R19_LRC_Cave_recycling) + ( 1.0 * reaction_R21_LRC_EE_recycling));
	
% Species:   id = T1R_Cave, name = T1R_Cave, affected by kineticLaw
	xdot(6) = (1/(compartment_V_cyt))*(( 1.0 * reaction_R6_T1R_Cave_formation) + (-1.0 * reaction_R7_T1R_Cave_recycling));
	
% Species:   id = T1R_EE, name = T1R_EE, affected by kineticLaw
	xdot(7) = (1/(compartment_V_cyt))*(( 1.0 * reaction_R8_T1R_EE_formation) + (-1.0 * reaction_R9_T1R_EE_recycling) + (-1.0 * reaction_R10_T1R_EE_degradation));
	
% Species:   id = T2R_Surf, name = T2R_Surf, affected by kineticLaw
	xdot(8) = (1/(compartment_V_cyt))*(( 1.0 * reaction_R11_T2R_production) + (-1.0 * reaction_R12_T2R_Cave_formation) + ( 1.0 * reaction_R13_T2R_Cave_recycling) + (-1.0 * reaction_R14_T2R_EE_formation) + ( 1.0 * reaction_R15_T2R_EE_recycling) + (-1.0 * reaction_R17_LRC_formation) + ( 1.0 * reaction_R19_LRC_Cave_recycling) + ( 1.0 * reaction_R21_LRC_EE_recycling));
	
% Species:   id = T2R_Cave, name = T2R_Cave, affected by kineticLaw
	xdot(9) = (1/(compartment_V_cyt))*(( 1.0 * reaction_R12_T2R_Cave_formation) + (-1.0 * reaction_R13_T2R_Cave_recycling));
	
% Species:   id = T2R_EE, name = T2R_EE, affected by kineticLaw
	xdot(10) = (1/(compartment_V_cyt))*(( 1.0 * reaction_R14_T2R_EE_formation) + (-1.0 * reaction_R15_T2R_EE_recycling) + (-1.0 * reaction_R16_T2R_EE_degradation));
	
% Species:   id = LRC_Surf, name = LRC_Surf, affected by kineticLaw
	xdot(11) = (1/(compartment_V_cyt))*(( 1.0 * reaction_R17_LRC_formation) + (-1.0 * reaction_R18_LRC_Cave_formation) + (-1.0 * reaction_R20_LRC_EE_formation));
	
% Species:   id = LRC_Cave, name = LRC_Cave, affected by kineticLaw
	xdot(12) = (1/(compartment_V_cyt))*(( 1.0 * reaction_R18_LRC_Cave_formation) + (-1.0 * reaction_R19_LRC_Cave_recycling) + (-1.0 * reaction_R26_LRC_Cave_degradation));
	
% Species:   id = LRC_EE, name = LRC_EE, affected by kineticLaw
	xdot(13) = (1/(compartment_V_cyt))*(( 1.0 * reaction_R20_LRC_EE_formation) + (-1.0 * reaction_R21_LRC_EE_recycling) + (-1.0 * reaction_R22_LRC_EE_degradation));
	
% Species:   id = Smads_Complex_c, name = Smads_Complex_c, affected by kineticLaw
	xdot(14) = (1/(compartment_V_cyt))*(( 1.0 * reaction_R23_Smads_Complex_formation) + (-1.0 * reaction_R24_Smads_Complex_import));
	
% Species:   id = Smads_Complex_n, name = Smads_Complex_n, affected by kineticLaw
	xdot(15) = (1/(compartment_V_nuc))*(( 1.0 * reaction_R24_Smads_Complex_import) + (-1.0 * reaction_R25_Smads_Complex_Dissociation));
	
% Species:   id = TGF_beta, name = TGF_beta, affected by kineticLaw
	xdot(16) = (1/(compartment_V_medium))*(( 1.0 * reaction_R15_T2R_EE_recycling) + (-1.0 * reaction_R17_LRC_formation) + ( 1.0 * reaction_R19_LRC_Cave_recycling) + ( 1.0 * reaction_R21_LRC_EE_recycling));
end

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


