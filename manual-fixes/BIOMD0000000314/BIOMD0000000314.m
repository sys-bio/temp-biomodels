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
% Model name = Raia2011 - IL13 L1236
%
% is http://identifiers.org/biomodels.db/MODEL1102020002
% is http://identifiers.org/biomodels.db/BIOMD0000000314
% isDescribedBy http://identifiers.org/pubmed/21127196
%


function main()
%Initial conditions vector
	x0=zeros(12,1);
	x0(1) = 1.8;
	x0(2) = 118.598;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 24.0;
	x0(7) = 0.0;
	x0(8) = 9.4;
	x0(9) = 209.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=100.0;
% Parameter:   id =  IL13stimulation, name = IL13stimulation
	global_par_IL13stimulation=1.0;
% Parameter:   id =  Kon_IL13Rec, name = Kon_IL13Rec
	global_par_Kon_IL13Rec=0.00174087;
% Parameter:   id =  Rec_phosphorylation, name = Rec_phosphorylation
	global_par_Rec_phosphorylation=9.07541;
% Parameter:   id =  pRec_intern, name = pRec_intern
	global_par_pRec_intern=0.324132;
% Parameter:   id =  pRec_degradation, name = pRec_degradation
	global_par_pRec_degradation=0.417538;
% Parameter:   id =  Rec_intern, name = Rec_intern
	global_par_Rec_intern=0.259686;
% Parameter:   id =  Rec_recycle, name = Rec_recycle
	global_par_Rec_recycle=0.0039243;
% Parameter:   id =  JAK2_phosphorylation, name = JAK2_phosphorylation
	global_par_JAK2_phosphorylation=0.300019;
% Parameter:   id =  pJAK2_dephosphorylation, name = pJAK2_dephosphorylation
	global_par_pJAK2_dephosphorylation=0.0981611;
% Parameter:   id =  STAT5_phosphorylation, name = STAT5_phosphorylation
	global_par_STAT5_phosphorylation=0.00426767;
% Parameter:   id =  pSTAT5_dephosphorylation, name = pSTAT5_dephosphorylation
	global_par_pSTAT5_dephosphorylation=0.0116389;
% Parameter:   id =  CD274mRNA_production, name = CD274mRNA_production
	global_par_CD274mRNA_production=0.0115928;
% assignmentRule: variable = IL13
	x(12)=3.776*global_par_IL13stimulation;

% Reaction: id = reaction_1
	reaction_reaction_1=global_par_Kon_IL13Rec*x(12)*x(1)*compartment_cell;

% Reaction: id = reaction_2
	reaction_reaction_2=global_par_Rec_intern*x(1)*compartment_cell;

% Reaction: id = reaction_3
	reaction_reaction_3=global_par_Rec_recycle*x(2)*compartment_cell;

% Reaction: id = reaction_4
	reaction_reaction_4=global_par_Rec_phosphorylation*x(3)*x(7)*compartment_cell;

% Reaction: id = reaction_5
	reaction_reaction_5=global_par_JAK2_phosphorylation*x(6)*x(3)*compartment_cell;

% Reaction: id = reaction_6
	reaction_reaction_6=global_par_JAK2_phosphorylation*x(6)*x(4)*compartment_cell;

% Reaction: id = reaction_7
	reaction_reaction_7=global_par_pRec_intern*x(4)*compartment_cell;

% Reaction: id = reaction_8
	reaction_reaction_8=global_par_pRec_degradation*x(5)*compartment_cell;

% Reaction: id = reaction_9
	reaction_reaction_9=global_par_pJAK2_dephosphorylation*x(7)*x(8)*compartment_cell;

% Reaction: id = reaction_10
	reaction_reaction_10=global_par_STAT5_phosphorylation*x(9)*x(7)*compartment_cell;

% Reaction: id = reaction_11
	reaction_reaction_11=global_par_pSTAT5_dephosphorylation*x(10)*x(8)*compartment_cell;

% Reaction: id = reaction_12
	reaction_reaction_12=x(10)*global_par_CD274mRNA_production*compartment_cell;

	xdot=zeros(12,1);
	
% Species:   id = Rec, name = Rec, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*((-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_3));
	
% Species:   id = Rec_i, name = Rec_i, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3));
	
% Species:   id = IL13_Rec, name = IL13_Rec, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_4));
	
% Species:   id = p_IL13_Rec, name = p_IL13_Rec, affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_7));
	
% Species:   id = p_IL13_Rec_i, name = p_IL13_Rec_i, affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8));
	
% Species:   id = JAK2, name = JAK2, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*((-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_9));
	
% Species:   id = pJAK2, name = pJAK2, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_5) + ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_9));
	
% Species:   id = SHP1, name = SHP1
% Warning species is not changed by either rules or reactions
	xdot(8) = ;
	
% Species:   id = STAT5, name = STAT5, affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*((-1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_11));
	
% Species:   id = pSTAT5, name = pSTAT5, affected by kineticLaw
	xdot(10) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11));
	
% Species:   id = CD274mRNA, name = CD274mRNA, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_12));
	
% Species:   id = IL13, name = IL13, involved in a rule 	xdot(12) = x(12);
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


