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
% Model name = Sun2018 - Instantaneous mutation rate in cancer initiation and progression
%
% isDerivedFrom http://identifiers.org/biomodels.db/MODEL1909300002
% isDerivedFrom http://identifiers.org/ncit/C12393
% isDerivedFrom http://identifiers.org/vario/VariO:0139
% isDerivedFrom http://identifiers.org/ncit/C94346
% isDerivedFrom http://identifiers.org/mamo/MAMO_0000046
% isDerivedFrom http://identifiers.org/efo/0002618
% isDerivedFrom http://identifiers.org/efo/0000311
% isDerivedFrom http://identifiers.org/taxonomy/9606
% isDerivedFrom http://identifiers.org/DOI/10.1109/BIBM.2017.8217639
% isDescribedBy http://identifiers.org/DOI/10.1109/BIBM.2017.8217639
% isDescribedBy http://identifiers.org/pubmed/30463617
% is http://identifiers.org/biomodels.db/MODEL1909300002
% is http://identifiers.org/biomodels.db/BIOMD0000000915
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;


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

% Compartment: id = compartment, name = Cell, constant
	compartment_compartment=1.0;
% Parameter:   id =  myu, name = myu
% Parameter:   id =  a, name = a*
	global_par_a=40.74;
% Parameter:   id =  b, name = b*
	global_par_b=0.0;
% Parameter:   id =  c, name = DB
% Parameter:   id =  K, name = K
	global_par_K=62.04;
% Parameter:   id =  DT1, name = DT1
% Parameter:   id =  Mo_1, name = Mo_1
	global_par_Mo_1=49.0;
% Parameter:   id =  M0_2, name = M0_2
	global_par_M0_2=35.0;
% Parameter:   id =  M0_3, name = M0_3
	global_par_M0_3=28.0;
% Parameter:   id =  M0_4, name = M0_4
	global_par_M0_4=34.0;
% Parameter:   id =  M0_5, name = M0_5
	global_par_M0_5=28.0;
% Parameter:   id =  M0_6, name = M0_6
	global_par_M0_6=50.0;
% Parameter:   id =  M0_7, name = M0_7
	global_par_M0_7=35.0;
% Parameter:   id =  M0_AVG, name = M0_AVG
% Parameter:   id =  b1, name = b1*
	global_par_b1=1.0E-5;
% Parameter:   id =  b2, name = b2*
	global_par_b2=1.8E-5;
% Parameter:   id =  b3, name = b3*
	global_par_b3=3.0E-5;
% Parameter:   id =  b4, name = b4*
	global_par_b4=1.9E-5;
% Parameter:   id =  b5, name = b5*
	global_par_b5=2.9E-5;
% Parameter:   id =  b6, name = b6*
	global_par_b6=1.0E-5;
% Parameter:   id =  b7, name = b7*
	global_par_b7=1.8E-5;
% Parameter:   id =  b_AVG, name = b_AVG*
% Parameter:   id =  DT2, name = DT2
% Parameter:   id =  DT3, name = DT3
% Parameter:   id =  DT4, name = DT4
% Parameter:   id =  DT5, name = DT5
% Parameter:   id =  DT6, name = DT6
% Parameter:   id =  DT7, name = DT7
% Parameter:   id =  a_0, name = a
	global_par_a_0=0.001;
% Parameter:   id =  b_0, name = b
	global_par_b_0=0.0;
% assignmentRule: variable = myu
	global_par_myu=global_par_a_0*exp(global_par_b_0*time);
% assignmentRule: variable = c
	global_par_c=global_par_a*time/(global_par_K+time);
% assignmentRule: variable = M0_AVG
	global_par_M0_AVG=(global_par_Mo_1+global_par_M0_2+global_par_M0_3+global_par_M0_4+global_par_M0_5+global_par_M0_6+global_par_M0_7)/7;
% assignmentRule: variable = b_AVG
	global_par_b_AVG=(global_par_b1+global_par_b2+global_par_b3+global_par_b4+global_par_b5+global_par_b6+global_par_b7)/7;
% assignmentRule: variable = DT1
	global_par_DT1=global_par_Mo_1/global_par_M0_AVG*exp((global_par_b1-global_par_b_AVG)*time)*global_par_a*time/(global_par_K+time);
% assignmentRule: variable = DT2
	global_par_DT2=global_par_M0_2/global_par_M0_AVG*exp((global_par_b2-global_par_b_AVG)*time)*global_par_a*time/(global_par_K+time);
% assignmentRule: variable = DT3
	global_par_DT3=global_par_M0_3/global_par_M0_AVG*exp((global_par_b3-global_par_b_AVG)*time)*global_par_a*time/(global_par_K+time);
% assignmentRule: variable = DT4
	global_par_DT4=global_par_M0_4/global_par_M0_AVG*exp((global_par_b4-global_par_b_AVG)*time)*global_par_a*time/(global_par_K+time);
% assignmentRule: variable = DT5
	global_par_DT5=global_par_M0_5/global_par_M0_AVG*exp((global_par_b5-global_par_b_AVG)*time)*global_par_a*time/(global_par_K+time);
% assignmentRule: variable = DT6
	global_par_DT6=global_par_M0_6/global_par_M0_AVG*exp((global_par_b6-global_par_b_AVG)*time)*global_par_a*time/(global_par_K+time);
% assignmentRule: variable = DT7
	global_par_DT7=global_par_M0_7/global_par_M0_AVG*exp((global_par_b7-global_par_b_AVG)*time)*global_par_a*time/(global_par_K+time);

% Reaction: id = mutation_1_2, name = mutation 1-2
	reaction_mutation_1_2=compartment_compartment*global_par_myu*x(2);

% Reaction: id = mutation_2_3, name = mutation 2-3
	reaction_mutation_2_3=compartment_compartment*global_par_myu*x(3);

% Reaction: id = mutation_3_4, name = mutation 3-4
	reaction_mutation_3_4=compartment_compartment*global_par_myu*x(4);

% Reaction: id = mutation_4_5, name = mutation 4-5
	reaction_mutation_4_5=compartment_compartment*global_par_myu*x(5);

% Reaction: id = mutation_5_6, name = mutation 5-6
	reaction_mutation_5_6=compartment_compartment*global_par_myu*x(6);

% Reaction: id = mutation_6_7, name = mutation 6-7
	reaction_mutation_6_7=compartment_compartment*global_par_myu*x(7);

% Reaction: id = mutation_7_8, name = mutation 7-8
	reaction_mutation_7_8=compartment_compartment*global_par_myu*x(8);

% Reaction: id = mutation_0_1, name = mutation 0-1
	reaction_mutation_0_1=compartment_compartment*global_par_myu*x(1);

	xdot=zeros(9,1);
	
% Species:   id = p_0, name = patient_0, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_mutation_0_1));
	
% Species:   id = p_1, name = patient_1, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_mutation_1_2) + ( 1.0 * reaction_mutation_0_1));
	
% Species:   id = p_2, name = patient_2, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_mutation_1_2) + (-1.0 * reaction_mutation_2_3));
	
% Species:   id = p_3, name = patient_3, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_mutation_2_3) + (-1.0 * reaction_mutation_3_4));
	
% Species:   id = p_4, name = patient_4, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_mutation_3_4) + (-1.0 * reaction_mutation_4_5));
	
% Species:   id = p_5, name = patient_5, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_mutation_4_5) + (-1.0 * reaction_mutation_5_6));
	
% Species:   id = p_6, name = patient_6, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_mutation_5_6) + (-1.0 * reaction_mutation_6_7));
	
% Species:   id = p_7, name = patient_7, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_mutation_6_7) + (-1.0 * reaction_mutation_7_8));
	
% Species:   id = p_8, name = patient_8, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_mutation_7_8));
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


