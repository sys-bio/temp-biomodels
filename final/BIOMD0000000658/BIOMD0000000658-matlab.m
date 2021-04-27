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
% Model name = Lee2003 - Roles of APC and Axin in Wnt Pathway (without regulatory loop)
%
% is http://identifiers.org/biomodels.db/MODEL1708310000
% is http://identifiers.org/biomodels.db/BIOMD0000000658
%


function main()
%Initial conditions vector
	x0=zeros(16,1);
	x0(1) = 100.0;
	x0(2) = 0.0;
	x0(3) = 0.00966;
	x0(4) = 0.00483;
	x0(5) = 50.0;
	x0(6) = 9.8065E-4;
	x0(7) = 98.0;
	x0(8) = 0.00202;
	x0(9) = 0.00202;
	x0(10) = 1.0;
	x0(11) = 25.1;
	x0(12) = 4.93E-4;
	x0(13) = 8.17;
	x0(14) = 6.83;
	x0(15) = 2.05;
	x0(16) = 0.0;


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
% Compartment: id = Nucleus, name = Nucleus, constant
	compartment_Nucleus=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.182;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.0182;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.05;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.267;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.133;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.0909;
% Parameter:   id =  k_6, name = k_6
	global_par_k_6=0.909;
% Parameter:   id =  k7, name = k7
	global_par_k7=500.0;
% Parameter:   id =  k_7, name = k_7
% Parameter:   id =  k8, name = k8
	global_par_k8=500.0;
% Parameter:   id =  k_8, name = k_8
% Parameter:   id =  k9, name = k9
	global_par_k9=206.0;
% Parameter:   id =  k10, name = k10
	global_par_k10=206.0;
% Parameter:   id =  k11, name = k11
	global_par_k11=0.417;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.423;
% Parameter:   id =  k13, name = k13
	global_par_k13=2.57E-4;
% Parameter:   id =  k14, name = k14
	global_par_k14=8.22E-5;
% Parameter:   id =  k15, name = k15
	global_par_k15=0.167;
% Parameter:   id =  k16, name = k16
	global_par_k16=500.0;
% Parameter:   id =  k_16, name = k_16
% Parameter:   id =  k17, name = k17
	global_par_k17=500.0;
% Parameter:   id =  k_17, name = k_17
% Parameter:   id =  K_7, name = K_7
	global_par_K_7=50.0;
% Parameter:   id =  K_8, name = K_8
	global_par_K_8=120.0;
% Parameter:   id =  K_16, name = K_16
	global_par_K_16=30.0;
% Parameter:   id =  K_17, name = K_17
	global_par_K_17=1200.0;
% Parameter:   id =  lambda, name = lambda
	global_par_lambda=0.05;
% Parameter:   id =  t0, name = t0
	global_par_t0=40.0;
% Parameter:   id =  Dsh0, name = Dsh0
	global_par_Dsh0=100.0;
% Parameter:   id =  Total_B_Catenin, name = Total_B_Catenin
% Parameter:   id =  Total_Axin, name = Total_Axin
% assignmentRule: variable = Total_B_Catenin
	global_par_Total_B_Catenin=x(8)+x(9)+x(10)+x(11)+x(14)+x(15);
% assignmentRule: variable = Total_Axin
	global_par_Total_Axin=x(3)+x(4)+x(6)+x(8)+x(9)+x(12);
% assignmentRule: variable = k_16
	global_par_k_16=global_par_k16*global_par_K_16;
% assignmentRule: variable = k_7
	global_par_k_7=global_par_k7*global_par_K_7;
% assignmentRule: variable = k_17
	global_par_k_17=global_par_k17*global_par_K_17;
% assignmentRule: variable = k_8
	global_par_k_8=global_par_k8*global_par_K_8;
% assignmentRule: variable = W
	x(16)=piecewise(0, time < global_par_t0, exp((-1)*global_par_lambda*(time-global_par_t0)));

% Reaction: id = v1, name = v1
	reaction_v1=compartment_Cytoplasm*function_for_v1(global_par_k1, x(1), x(16));

% Reaction: id = v2, name = v2
	reaction_v2=compartment_Cytoplasm*global_par_k2*x(2);

% Reaction: id = v3, name = v3
	reaction_v3=compartment_Cytoplasm*function_for_v3(global_par_k3, x(2), x(4));

% Reaction: id = v4, name = v4
	reaction_v4=compartment_Cytoplasm*global_par_k4*x(4);

% Reaction: id = v5, name = v5
	reaction_v5=compartment_Cytoplasm*global_par_k5*x(3);

% Reaction: id = v6, name = v6
	reaction_v6=compartment_Cytoplasm*(global_par_k6*x(5)*x(6)-global_par_k_6*x(4));

% Reaction: id = v7, name = v7
	reaction_v7=compartment_Cytoplasm*(global_par_k7*x(7)*x(12)-global_par_k_7*x(6));

% Reaction: id = v8, name = v8
	reaction_v8=global_par_k8*x(3)*x(11)-global_par_k_8*x(8);

% Reaction: id = v9, name = v9
	reaction_v9=compartment_Cytoplasm*global_par_k9*x(8);

% Reaction: id = v10, name = v10
	reaction_v10=compartment_Cytoplasm*global_par_k10*x(9);

% Reaction: id = v11, name = v11
	reaction_v11=compartment_Cytoplasm*global_par_k11*x(10);

% Reaction: id = v13, name = v13
	reaction_v13=compartment_Nucleus*global_par_k13*x(11);

% Reaction: id = v15, name = v15
	reaction_v15=compartment_Cytoplasm*global_par_k15*x(12);

% Reaction: id = v16, name = v16
	reaction_v16=compartment_Nucleus*(global_par_k16*x(11)*x(13)-global_par_k_16*x(14));

% Reaction: id = v17, name = v17
	reaction_v17=global_par_k17*x(7)*x(11)-global_par_k_17*x(15);

	xdot=zeros(16,1);
	
% Species:   id = Dsh_i, name = Dsh_i, affected by kineticLaw
	xdot(1) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_v1) + ( 1.0 * reaction_v2));
	
% Species:   id = Dsh_a, name = Dsh_a, affected by kineticLaw
	xdot(2) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2));
	
% Species:   id = APC__axin__GSK3, name = APC*/axin*/GSK3, affected by kineticLaw
	xdot(3) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_v4) + (-1.0 * reaction_v5) + (-1.0 * reaction_v8) + ( 1.0 * reaction_v10));
	
% Species:   id = APC_axin_GSK3, name = APC/axin/GSK3, affected by kineticLaw
	xdot(4) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_v3) + (-1.0 * reaction_v4) + ( 1.0 * reaction_v5) + ( 1.0 * reaction_v6));
	
% Species:   id = GSK3, name = GSK3, affected by kineticLaw
	xdot(5) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v6));
	
% Species:   id = APC_axin, name = APC/axin, affected by kineticLaw
	xdot(6) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v6) + ( 1.0 * reaction_v7));
	
% Species:   id = APC, name = APC, affected by kineticLaw
	xdot(7) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_v7) + (-1.0 * reaction_v17));
	
% Species:   id = B_catenin_APC__axin__GSK3, name = B_catenin/APC*/axin*/GSK3, affected by kineticLaw
	xdot(8) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_v8) + (-1.0 * reaction_v9));
	
% Species:   id = B_catenin__APC__axin__GSK3, name = B_catenin*/APC*/axin*/GSK3, affected by kineticLaw
	xdot(9) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_v9) + (-1.0 * reaction_v10));
	
% Species:   id = B_catenin, name = B_catenin*, affected by kineticLaw
	xdot(10) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_v10) + (-1.0 * reaction_v11));
	
% Species:   id = B_catenin_0, name = B_catenin, affected by kineticLaw
	xdot(11) = (1/(compartment_Nucleus))*((-1.0 * reaction_v8) + ( 1.0 * reaction_v12) + (-1.0 * reaction_v13) + (-1.0 * reaction_v16) + (-1.0 * reaction_v17));
	
% Species:   id = Axin, name = Axin, affected by kineticLaw
	xdot(12) = (1/(compartment_Cytoplasm))*((-1.0 * reaction_v7) + ( 1.0 * reaction_v14) + (-1.0 * reaction_v15));
	
% Species:   id = TCF, name = TCF, affected by kineticLaw
	xdot(13) = (1/(compartment_Nucleus))*((-1.0 * reaction_v16));
	
% Species:   id = B_catenin_TCF, name = B_catenin/TCF, affected by kineticLaw
	xdot(14) = (1/(compartment_Nucleus))*(( 1.0 * reaction_v16));
	
% Species:   id = B_catenin_APC, name = B_catenin/APC, affected by kineticLaw
	xdot(15) = (1/(compartment_Cytoplasm))*(( 1.0 * reaction_v17));
	
% Species:   id = W, name = W, involved in a rule 	xdot(16) = x(16);
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=function_for_v1(k1,x1,W), z=(k1*x1*W);end

function z=function_for_v3(k3,x2,x4), z=(k3*x2*x4);end

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


