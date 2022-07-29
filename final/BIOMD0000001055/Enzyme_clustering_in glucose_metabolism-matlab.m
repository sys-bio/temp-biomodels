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
% Model name = Jeon2018 - Enzyme clustering in Glucose metabolism
%
% is http://identifiers.org/biomodels.db/MODEL2204290002
% is http://identifiers.org/biomodels.db/BIOMD0000001055
%


function main()
%Initial conditions vector
	x0=zeros(19,1);
	x0(1) = 0.01;
	x0(2) = 0.01;
	x0(3) = 0.01;
	x0(4) = 0.01;
	x0(5) = 0.01;
	x0(6) = 0.01;
	x0(7) = 0.01;
	x0(8) = 0.01;
	x0(9) = 0.01;
	x0(10) = 0.01;
	x0(11) = 99.9899999999985;
	x0(12) = 100.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 99.9899999999985;
	x0(17) = 100.0;
	x0(18) = 0.01;
	x0(19) = 0.999999999999996;


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

% Compartment: id = Cytoplasm, name = Cytoplasm, constant
	compartment_Cytoplasm=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=10.0;
% Parameter:   id =  k_1, name = k-1
	global_par_k_1=10.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=40.0;
% Parameter:   id =  k_2, name = k-2
	global_par_k_2=7.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=10.0;
% Parameter:   id =  k_3, name = k-3
	global_par_k_3=10.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=14.0;
% Parameter:   id =  k_4, name = k-4
	global_par_k_4=7.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=1.0;
% Parameter:   id =  k_5, name = k-5
	global_par_k_5=10.0;
% Parameter:   id =  k_6, name = k-6
	global_par_k_6=10.0;
% Parameter:   id =  kas, name = kas
	global_par_kas=0.0;
% Parameter:   id =  k_as, name = k-as
	global_par_k_as=0.0;
% Parameter:   id =  kam, name = kam
	global_par_kam=0.0;
% Parameter:   id =  k_am, name = k-am
	global_par_k_am=0.0;
% Parameter:   id =  kal, name = kal
	global_par_kal=0.0;
% Parameter:   id =  k_al, name = k-al
	global_par_k_al=0.0;
% Parameter:   id =  kg, name = kg
	global_par_kg=1.0;
% Parameter:   id =  k_g, name = k-g
	global_par_k_g=1.0;
% Parameter:   id =  kd, name = kd
	global_par_kd=1.0;
% Parameter:   id =  k_d, name = k-d
	global_par_k_d=1.0;
% Parameter:   id =  kp, name = kp
	global_par_kp=5.0;
% Parameter:   id =  ks, name = ks
	global_par_ks=5.0;
% Parameter:   id =  kf, name = kf
	global_par_kf=5.0;
% Parameter:   id =  delta_p, name = delta-p
	global_par_delta_p=0.5;
% Parameter:   id =  delta_s, name = delta_s
	global_par_delta_s=0.5;
% Parameter:   id =  delta_f, name = delta_f
	global_par_delta_f=0.5;
% Parameter:   id =  c2, name = c2
	global_par_c2=0.0;
% Parameter:   id =  c_2, name = c-2
	global_par_c_2=0.0;
% Parameter:   id =  c_6, name = c-6
	global_par_c_6=0.0;
% Parameter:   id =  e2, name = e2
	global_par_e2=0.0;
% Parameter:   id =  e_2, name = e-2
	global_par_e_2=0.0;
% Parameter:   id =  e_6, name = e-6
	global_par_e_6=0.0;
% Parameter:   id =  e_d, name = e-d
	global_par_e_d=0.0;
% Parameter:   id =  c_d, name = c-d
	global_par_c_d=0.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=1.0;
% Parameter:   id =  K1, name = K1
	global_par_K1=1.0;
% Parameter:   id =  K2, name = K2
	global_par_K2=1.0;
% Parameter:   id =  K3, name = K3
	global_par_K3=1.0;
% Parameter:   id =  k0, name = k0
	global_par_k0=10.0;

% Reaction: id = R2, name = R2
	reaction_R2=compartment_Cytoplasm*global_par_k1*x(1);

% Reaction: id = R3, name = R3
	reaction_R3=compartment_Cytoplasm*global_par_k_1*x(2);

% Reaction: id = R4, name = R4
	reaction_R4=compartment_Cytoplasm*function_for_reaction_4(global_par_k2, x(11), x(15), global_par_c2, x(14), global_par_e2, x(13), x(2), global_par_K1, x(3));

% Reaction: id = R5, name = R5
	reaction_R5=compartment_Cytoplasm*function_for_reaction_5(global_par_k_2, x(12), global_par_c_2, x(14), global_par_e_2, x(13), x(3), global_par_K2, x(2));

% Reaction: id = R6, name = R6
	reaction_R6=compartment_Cytoplasm*global_par_k3*x(3);

% Reaction: id = R7, name = R7
	reaction_R7=compartment_Cytoplasm*global_par_k_3*x(4);

% Reaction: id = R8, name = R8
	reaction_R8=compartment_Cytoplasm*global_par_k4*x(4);

% Reaction: id = R9, name = R9
	reaction_R9=compartment_Cytoplasm*global_par_k_4*x(5);

% Reaction: id = R10, name = R10
	reaction_R10=compartment_Cytoplasm*function_for_reaction_10(global_par_k5, x(5), x(19));

% Reaction: id = R11, name = R11
	reaction_R11=compartment_Cytoplasm*global_par_k_5*x(6);

% Reaction: id = R12, name = R12
	reaction_R12=compartment_Cytoplasm*function_for_reaction_12(global_par_k_6, x(17), global_par_c_6, x(14), global_par_e_6, x(13), x(7));

% Reaction: id = R13, name = R13
	reaction_R13=compartment_Cytoplasm*global_par_kas*x(11);

% Reaction: id = R14, name = R14
	reaction_R14=compartment_Cytoplasm*global_par_k_as*x(15);

% Reaction: id = R15, name = R15
	reaction_R15=compartment_Cytoplasm*global_par_kam*x(15)*x(12)*x(16)*x(17);

% Reaction: id = R16, name = R16
	reaction_R16=compartment_Cytoplasm*global_par_k_am*x(14);

% Reaction: id = R17, name = R17
	reaction_R17=compartment_Cytoplasm*function_for_reaction_17(global_par_kal, x(14));

% Reaction: id = R18, name = R18
	reaction_R18=compartment_Cytoplasm*function_for_reaction_18(global_par_k_al, x(13));

% Reaction: id = R19, name = R19
	reaction_R19=compartment_Cytoplasm*global_par_kg*x(11);

% Reaction: id = R20, name = R20
	reaction_R20=compartment_Cytoplasm*global_par_k_g*x(18);

% Reaction: id = R21, name = R21
	reaction_R21=compartment_Cytoplasm*global_par_kd*x(19);

% Reaction: id = R22, name = R22
	reaction_R22=compartment_Cytoplasm*function_for_reaction_22(global_par_k_d, x(16), global_par_c_d, global_par_e_d, x(13), global_par_alpha, x(3), global_par_K3, x(14));

% Reaction: id = R23, name = R23
	reaction_R23=compartment_Cytoplasm*global_par_kp*x(2);

% Reaction: id = R24, name = R24
	reaction_R24=compartment_Cytoplasm*global_par_ks*x(4);

% Reaction: id = R25, name = R25
	reaction_R25=compartment_Cytoplasm*global_par_kf*x(6);

% Reaction: id = R26, name = R26
	reaction_R26=compartment_Cytoplasm*global_par_delta_p*x(8);

% Reaction: id = R27, name = R27
	reaction_R27=compartment_Cytoplasm*global_par_delta_s*x(9);

% Reaction: id = R28, name = R28
	reaction_R28=compartment_Cytoplasm*global_par_delta_f*x(10);

% Reaction: id = R17_1, name = R17_1
	reaction_R17_1=compartment_Cytoplasm*function_for_reaction_17_1(global_par_kal, x(14));

% Reaction: id = R18_1, name = R18_1
	reaction_R18_1=compartment_Cytoplasm*global_par_k_al*x(13);

	xdot=zeros(19,1);
	
% Species:   id = Glucose, name = Glucose, affected by kineticLaw
	xdot(1) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + ( 1.0 * reaction_R3));
	
% Species:   id = Fructose_6_Phosphate, name = Fructose-6-Phosphate, affected by kineticLaw
	xdot(2) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R4) + ( 1.0 * reaction_R5) + (-1.0 * reaction_R23));
	
% Species:   id = Fructose_1_6_Bisphosphate, name = Fructose-1,6,Bisphosphate, affected by kineticLaw
	xdot(3) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R4) + (-1.0 * reaction_R5) + (-1.0 * reaction_R6) + ( 1.0 * reaction_R7));
	
% Species:   id = _3_Phosphoglycerate, name = 3-Phosphoglycerate, affected by kineticLaw
	xdot(4) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R7) + (-1.0 * reaction_R8) + ( 1.0 * reaction_R9) + (-1.0 * reaction_R24));
	
% Species:   id = Phosphoenolpyruvate, name = Phosphoenolpyruvate, affected by kineticLaw
	xdot(5) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R8) + (-1.0 * reaction_R9) + (-1.0 * reaction_R10) + ( 1.0 * reaction_R12));
	
% Species:   id = Pyruvate, name = Pyruvate, affected by kineticLaw
	xdot(6) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R10) + (-1.0 * reaction_R11) + (-1.0 * reaction_R25));
	
% Species:   id = Oxaloacetate, name = Oxaloacetate, affected by kineticLaw
	xdot(7) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R11) + (-1.0 * reaction_R12));
	
% Species:   id = Metabolic_outcome_of_Pentose_Phosphate_Shunt, name = Metabolic outcome of Pentose Phosphate Shunt, affected by kineticLaw
	xdot(8) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R23) + (-1.0 * reaction_R26));
	
% Species:   id = Metabolic_outcome_of_Serine_Biosynthesis_Flux, name = Metabolic outcome of Serine Biosynthesis Flux, affected by kineticLaw
	xdot(9) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R24) + (-1.0 * reaction_R27));
	
% Species:   id = Metabolic_outcome_of_Glycolytic_Flux, name = Metabolic outcome of Glycolytic Flux, affected by kineticLaw
	xdot(10) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R25) + (-1.0 * reaction_R28));
	
% Species:   id = Phosphofructokinase_1, name = Phosphofructokinase 1, affected by kineticLaw
	xdot(11) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_R13) + ( 1.0 * reaction_R14) + (-1.0 * reaction_R19) + ( 1.0 * reaction_R20));
	
% Species:   id = Fructose_1_6_Bisphosphatase, name = Fructose-1,6-Bisphosphatase, affected by kineticLaw
	xdot(12) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_R15) + ( 1.0 * reaction_R16));
	
% Species:   id = Large_sized_enzyme_clusters, name = Large-sized enzyme clusters, affected by kineticLaw
	xdot(13) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R17_1) + (-1.0 * reaction_R18_1));
	
% Species:   id = Medium_sized_enzyme_clusters, name = Medium-sized enzyme clusters, affected by kineticLaw
	xdot(14) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R15) + (-1.0 * reaction_R16) + (-1.0 * reaction_R17) + ( 1.0 * reaction_R18));
	
% Species:   id = Small_sized_enzyme_clusters, name = Small-sized enzyme clusters, affected by kineticLaw
	xdot(15) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R13) + (-1.0 * reaction_R14) + (-1.0 * reaction_R15) + ( 1.0 * reaction_R16));
	
% Species:   id = Pyruvate_Kinase_M2_dimers, name = Pyruvate Kinase M2 dimers, affected by kineticLaw
	xdot(16) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_R15) + ( 1.0 * reaction_R16) + ( 1.0 * reaction_R21) + (-1.0 * reaction_R22));
	
% Species:   id = Phosphoenolpyruvate_Carboxykinase_1, name = Phosphoenolpyruvate Carboxykinase 1, affected by kineticLaw
	xdot(17) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_R15) + ( 1.0 * reaction_R16));
	
% Species:   id = Glycosylated_Phosphofructokinase, name = Glycosylated Phosphofructokinase, affected by kineticLaw
	xdot(18) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_R19) + (-1.0 * reaction_R20));
	
% Species:   id = Pyruvate_Kinase_M2_tetramers, name = Pyruvate Kinase M2 tetramers, affected by kineticLaw
	xdot(19) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_R21) + ( 1.0 * reaction_R22));
end

function z=function_for_reaction_4(k2,E1,Es,c2,Em,e2,El,S2,K1,S3), z=(k2*(E1+Es+c2*Em+e2*El)*S2*K1/(K1+S3));end

function z=Constant_flux__irreversible(v), z=(v);end

function z=function_for_reaction_18(k_al,EL), z=(11*k_al*EL);end

function z=function_for_reaction_22(k_d,E3,c_d,e_d,EL,alpha,S3,K3,EM), z=(k_d*(E3+c_d*EM+e_d*EL)*(1+alpha*S3/(S3+K3)));end

function z=function_for_reaction_10(k5,S5,E3i), z=(k5*E3i*S5);end

function z=function_for_reaction_12(k_6,E4,C_6,EM,e_6,EL,S7), z=(k_6*(E4+C_6*EM+e_6*EL)*S7);end

function z=function_for_reaction_17(kal,EM), z=(11*kal*EM^11);end

function z=function_for_reaction_5(k_2,E2,C_2,EM,e_2,EL,S3,K2,S2), z=(k_2*(E2+C_2*EM+e_2*EL)*S3*K2/(K2+S2));end

function z=function_for_reaction_17_1(kal,EM), z=(kal*EM^11);end

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


