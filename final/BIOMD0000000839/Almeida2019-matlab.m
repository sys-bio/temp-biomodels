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
% Model name = Almeida2019 - Transcription-based circadian mechanism controls the duration of molecular clock states in response to signaling inputs
%
% isDescribedBy http://identifiers.org/pubmed/31539528
% is http://identifiers.org/biomodels.db/MODEL1910290001
% is http://identifiers.org/biomodels.db/BIOMD0000000839
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 110.0;
	x0(4) = 1.0;
	x0(5) = 80.0;
	x0(6) = 1.0;
	x0(7) = 25.0;
	x0(8) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  V_R, name = V_R
	global_par_V_R=44.4;
% Parameter:   id =  k_R, name = k_R
	global_par_k_R=3.54;
% Parameter:   id =  k_R_r, name = k_R_r
	global_par_k_R_r=80.1;
% Parameter:   id =  V_E, name = V_E
	global_par_V_E=30.3;
% Parameter:   id =  k_E, name = k_E
	global_par_k_E=214.0;
% Parameter:   id =  k_E_r, name = k_E_r
	global_par_k_E_r=1.24;
% Parameter:   id =  V_D, name = V_D
	global_par_V_D=202.0;
% Parameter:   id =  k_D, name = k_D
	global_par_k_D=5.32;
% Parameter:   id =  k_D_r, name = k_D_r
	global_par_k_D_r=94.7;
% Parameter:   id =  gamma_ror, name = gamma_ror
	global_par_gamma_ror=2.55;
% Parameter:   id =  gamma_rev, name = gamma_rev
	global_par_gamma_rev=0.241;
% Parameter:   id =  gamma_p, name = gamma_p
	global_par_gamma_p=0.844;
% Parameter:   id =  gamma_c, name = gamma_c
	global_par_gamma_c=2.34;
% Parameter:   id =  gamma_db, name = gamma_db
	global_par_gamma_db=0.156;
% Parameter:   id =  gamma_E4, name = gamma_E4
	global_par_gamma_E4=0.295;
% Parameter:   id =  gamma_pc, name = gamma_pc
	global_par_gamma_pc=0.191;
% Parameter:   id =  gamma_cp, name = gamma_cp
	global_par_gamma_cp=0.141;
% Parameter:   id =  gamma_bp, name = gamma_bp
	global_par_gamma_bp=2.58;
% Parameter:   id =  E_box, name = E_box
% Parameter:   id =  R_box, name = R_box
% Parameter:   id =  D_box, name = D_box
% Parameter:   id =  ModelValue_6, name = Initial for V_D
	global_par_ModelValue_6=202.0;
% Parameter:   id =  ModelValue_3, name = Initial for V_E
	global_par_ModelValue_3=30.3;
% Parameter:   id =  ModelValue_0, name = Initial for V_R
	global_par_ModelValue_0=44.4;
% Parameter:   id =  ModelValue_8, name = Initial for k_D_r
	global_par_ModelValue_8=94.7;
% Parameter:   id =  ModelValue_4, name = Initial for k_E
	global_par_ModelValue_4=214.0;
% Parameter:   id =  ModelValue_5, name = Initial for k_E_r
	global_par_ModelValue_5=1.24;
% Parameter:   id =  ModelValue_1, name = Initial for k_R
	global_par_ModelValue_1=3.54;
% Parameter:   id =  ModelValue_2, name = Initial for k_R_r
	global_par_ModelValue_2=80.1;
% assignmentRule: variable = D_box
	global_par_D_box=global_par_ModelValue_6*x(4)/(x(4)+global_par_k_D)*global_par_ModelValue_8/(global_par_ModelValue_8+x(5));
% assignmentRule: variable = E_box
	global_par_E_box=global_par_ModelValue_3*x(1)/(x(1)+global_par_ModelValue_4+global_par_ModelValue_5*x(1)*x(6));
% assignmentRule: variable = R_box
	global_par_R_box=global_par_ModelValue_0*x(2)/(x(2)+global_par_ModelValue_1)*global_par_ModelValue_2^2/(global_par_ModelValue_2^2+x(3)^2);

% Reaction: id = v4_2, name = v4.2
	reaction_v4_2=compartment_compartment*Function_for_v4_2(global_par_gamma_bp, x(1), x(8));

% Reaction: id = v5_3, name = v5.3
	reaction_v5_3=compartment_compartment*global_par_gamma_ror*x(2);

% Reaction: id = v6_3, name = v6.3
	reaction_v6_3=compartment_compartment*global_par_gamma_rev*x(3);

% Reaction: id = v7_2, name = v7.2
	reaction_v7_2=compartment_compartment*global_par_gamma_db*x(4);

% Reaction: id = v8_2, name = v8.2
	reaction_v8_2=compartment_compartment*global_par_gamma_E4*x(5);

% Reaction: id = v9_3, name = v9.3
	reaction_v9_3=compartment_compartment*global_par_gamma_pc*x(7)*x(6);

% Reaction: id = v9_4, name = v9.4
	reaction_v9_4=compartment_compartment*global_par_gamma_cp*x(8);

% Reaction: id = v9_5, name = v9.5
	reaction_v9_5=compartment_compartment*global_par_gamma_c*x(6);

% Reaction: id = v10_5, name = v10.5
	reaction_v10_5=compartment_compartment*global_par_gamma_p*x(7);

% Reaction: id = v11_3, name = v11.3
	reaction_v11_3=compartment_compartment*Function_for_v11_3(global_par_gamma_bp, x(1), x(8));

	xdot=zeros(8,1);
	
% Species:   id = BMAL1, name = BMAL1, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_v4_1) + (-1.0 * reaction_v4_2));
	
% Species:   id = ROR, name = ROR, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_v5_1) + ( 1.0 * reaction_v5_2) + (-1.0 * reaction_v5_3));
	
% Species:   id = REV, name = REV, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_v6_1) + ( 1.0 * reaction_v6_2) + (-1.0 * reaction_v6_3));
	
% Species:   id = DBP, name = DBP, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_v7_1) + (-1.0 * reaction_v7_2));
	
% Species:   id = E4BP4, name = E4BP4, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_v8_1) + (-1.0 * reaction_v8_2));
	
% Species:   id = CRY, name = CRY, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_v8_1) + ( 1.0 * reaction_v9_1) + (-1.0 * reaction_v9_3) + ( 1.0 * reaction_v9_4) + (-1.0 * reaction_v9_5));
	
% Species:   id = PER, name = PER, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_v9_3) + ( 1.0 * reaction_v9_4) + ( 1.0 * reaction_v10_1) + ( 1.0 * reaction_v10_2) + (-1.0 * reaction_v10_5));
	
% Species:   id = PERCRY, name = PERCRY, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_v9_3) + (-1.0 * reaction_v9_4) + (-1.0 * reaction_v11_3));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Function_for_v11_3(gamma_bp,BMAL1,PERCRY), z=(gamma_bp*BMAL1*PERCRY);end

function z=Function_for_v4_2(gamma_b_p,BMAL1,PERCRY), z=(gamma_b_p*BMAL1*PERCRY);end

function z=Function_for_v8_1(R_box), z=(2*R_box);end

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


