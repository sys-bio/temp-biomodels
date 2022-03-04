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
% Model name = Ito2019 - gefitnib resistance of lung adenocarcinoma caused by MET amplification
%
% is http://identifiers.org/biomodels.db/MODEL1909300001
% is http://identifiers.org/biomodels.db/BIOMD0000000827
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 3.6E-12;
	x0(2) = 0.0;
	x0(3) = 5.5E-14;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 7.4E-12;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  l_1, name = l_1
	global_par_l_1=1.24;
% Parameter:   id =  k_1, name = k_1
	global_par_k_1=2.3E10;
% Parameter:   id =  l_2, name = l_2
	global_par_l_2=1.08;
% Parameter:   id =  k_2, name = k_2
	global_par_k_2=1.9E12;
% Parameter:   id =  l_3, name = l_3
	global_par_l_3=1.0;
% Parameter:   id =  l_4, name = l_4
	global_par_l_4=1.0;
% Parameter:   id =  k_3, name = k_3
	global_par_k_3=2.4E11;
% Parameter:   id =  k_4, name = k_4
	global_par_k_4=2.6E12;
% Parameter:   id =  k_p1, name = k_p1
	global_par_k_p1=0.045;
% Parameter:   id =  k_p2, name = k_p2
	global_par_k_p2=1.0E10;
% Parameter:   id =  k_p3, name = k_p3
	global_par_k_p3=1.0E10;
% Parameter:   id =  l_p1, name = l_p1
	global_par_l_p1=0.028;
% Parameter:   id =  l_p2, name = l_p2
	global_par_l_p2=0.028;
% Parameter:   id =  l_p3, name = l_p3
	global_par_l_p3=0.028;

% Reaction: id = EGFR_EGFR_formation, name = EGFR/EGFR formation
	reaction_EGFR_EGFR_formation=compartment_compartment*EGFR_EGFR_formation_0(global_par_k_1, x(1), global_par_l_1, x(2));

% Reaction: id = ErbB3_ErbB3_formation, name = ErbB3/ErbB3 formation
	reaction_ErbB3_ErbB3_formation=compartment_compartment*ErbB3_ErbB3_formation_0(global_par_k_2, x(3), global_par_l_2, x(4));

% Reaction: id = EGFR_ErbB3_formation, name = EGFR/ErbB3 formation
	reaction_EGFR_ErbB3_formation=compartment_compartment*EGFR_ErbB3_formation_0(global_par_k_3, x(1), x(3), global_par_l_3, x(5));

% Reaction: id = MET_MET_formation, name = MET/MET formation
	reaction_MET_MET_formation=compartment_compartment*MET_MET_formation_0(global_par_k_4, x(6), global_par_l_4, x(7));

% Reaction: id = MET_MET_transformation, name = MET/MET transformation
	reaction_MET_MET_transformation=compartment_compartment*MET_MET_transformation_0(global_par_k_p1, x(7), global_par_l_p1, x(8));

% Reaction: id = phosphorylation_1, name = phosphorylation 1
	reaction_phosphorylation_1=compartment_compartment*Phosphorylation_1(global_par_k_p2, x(5), x(8));

% Reaction: id = phosphorylation_2, name = phosphorylation 2
	reaction_phosphorylation_2=compartment_compartment*Phosphorylation_2(global_par_k_p3, x(4), x(8));

% Reaction: id = gefitinib_1, name = gefitinib 1
	reaction_gefitinib_1=compartment_compartment*gefitnib_1(global_par_l_p2, x(9));

% Reaction: id = gefitnib_2, name = gefitnib 2
	reaction_gefitnib_2=compartment_compartment*gefitnib_2_0(global_par_l_p3, x(10));

	xdot=zeros(10,1);
	
% Species:   id = X_1_EGFR, name = X_1(EGFR), affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-2.0 * reaction_EGFR_EGFR_formation) + (-1.0 * reaction_EGFR_ErbB3_formation));
	
% Species:   id = X_4_EGFR_EGFR, name = X_4(EGFR/EGFR), affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_EGFR_EGFR_formation));
	
% Species:   id = X_2_ErbB3, name = X_2(ErbB3), affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-2.0 * reaction_ErbB3_ErbB3_formation) + (-1.0 * reaction_EGFR_ErbB3_formation));
	
% Species:   id = X_6_ErbB3_ErbB3, name = X_6(ErbB3/ErbB3), affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_ErbB3_ErbB3_formation) + (-1.0 * reaction_phosphorylation_2) + ( 1.0 * reaction_gefitnib_2));
	
% Species:   id = X_5_EGFR_ErbB3, name = X_5(EGFR/ErbB3), affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_EGFR_ErbB3_formation) + (-1.0 * reaction_phosphorylation_1) + ( 1.0 * reaction_gefitinib_1));
	
% Species:   id = X_3_MET, name = X_3(MET), affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-2.0 * reaction_MET_MET_formation));
	
% Species:   id = X_7_MET_MET, name = X_7(MET/MET), affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_MET_MET_formation) + (-1.0 * reaction_MET_MET_transformation));
	
% Species:   id = X_10_p_MET_MET, name = X_10(p-MET/MET), affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_MET_MET_transformation) + (-1.0 * reaction_phosphorylation_1) + ( 1.0 * reaction_phosphorylation_1) + (-1.0 * reaction_phosphorylation_2) + ( 1.0 * reaction_phosphorylation_2));
	
% Species:   id = X_8_p_EGFR_ErbB3, name = X_8(p-EGFR/ErbB3), affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_phosphorylation_1) + (-1.0 * reaction_gefitinib_1));
	
% Species:   id = X_9_p_ErbB3_ErbB3, name = X_9(p-ErbB3/ErbB3), affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_phosphorylation_2) + (-1.0 * reaction_gefitnib_2));
end

function z=EGFR_EGFR_formation_0(k_1,X_1,l_1,X_4), z=(0.5*k_1*X_1^2-l_1*X_4);end

function z=ErbB3_ErbB3_formation_0(k_2,X_2,l_2,X_6), z=(0.5*k_2*X_2^2-l_2*X_6);end

function z=EGFR_ErbB3_formation_0(k_3,X_1,X_2,l_3,X_5), z=(k_3*X_1*X_2-l_3*X_5);end

function z=MET_MET_formation_0(k_4,X_3,l_4,X_7), z=(0.5*k_4*X_3^2-l_4*X_7);end

function z=MET_MET_transformation_0(k_p1,X_7,l_p1,X_10), z=(k_p1*X_7-l_p1*X_10);end

function z=Phosphorylation_1(k_p2,X_5,X_10), z=(k_p2*X_5*X_10);end

function z=Phosphorylation_2(k_p3,X_6,X_10), z=(k_p3*X_6*X_10);end

function z=gefitnib_1(l_p2,X_8), z=(l_p2*X_8);end

function z=gefitnib_2_0(l_p3,X_9), z=(l_p3*X_9);end

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


