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
% Model name = Raia2010 - IL13 Signalling MedB1
%
% is http://identifiers.org/biomodels.db/MODEL1102020001
% is http://identifiers.org/biomodels.db/BIOMD0000000313
% isDescribedBy http://identifiers.org/pubmed/21127196
%


function main()
%Initial conditions vector
	x0=zeros(16,1);
	x0(1) = 1.3;
	x0(2) = 113.194;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 2.8;
	x0(7) = 0.0;
	x0(8) = 91.0;
	x0(9) = 165.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.34;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  IL13stimulation, name = IL13stimulation
	global_par_IL13stimulation=1.0;
% Parameter:   id =  Kon_IL13Rec, name = Kon_IL13Rec
	global_par_Kon_IL13Rec=0.00341992;
% Parameter:   id =  Rec_phosphorylation, name = Rec_phosphorylation
	global_par_Rec_phosphorylation=999.631;
% Parameter:   id =  pRec_intern, name = pRec_intern
	global_par_pRec_intern=0.15254;
% Parameter:   id =  pRec_degradation, name = pRec_degradation
	global_par_pRec_degradation=0.172928;
% Parameter:   id =  Rec_intern, name = Rec_intern
	global_par_Rec_intern=0.103346;
% Parameter:   id =  Rec_recycle, name = Rec_recycle
	global_par_Rec_recycle=0.00135598;
% Parameter:   id =  JAK2_phosphorylation, name = JAK2_phosphorylation
	global_par_JAK2_phosphorylation=0.157057;
% Parameter:   id =  pJAK2_dephosphorylation, name = pJAK2_dephosphorylation
	global_par_pJAK2_dephosphorylation=6.21906E-4;
% Parameter:   id =  STAT5_phosphorylation, name = STAT5_phosphorylation
	global_par_STAT5_phosphorylation=0.0382596;
% Parameter:   id =  pSTAT5_dephosphorylation, name = pSTAT5_dephosphorylation
	global_par_pSTAT5_dephosphorylation=3.43392E-4;
% Parameter:   id =  SOCS3mRNA_production, name = SOCS3mRNA_production
	global_par_SOCS3mRNA_production=0.00215826;
% Parameter:   id =  DecoyR_binding, name = DecoyR_binding
	global_par_DecoyR_binding=1.24391E-4;
% Parameter:   id =  JAK2_p_inhibition, name = JAK2_p_inhibition
	global_par_JAK2_p_inhibition=0.0168268;
% Parameter:   id =  SOCS3_translation, name = SOCS3_translation
	global_par_SOCS3_translation=11.9086;
% Parameter:   id =  SOCS3_accumulation, name = SOCS3_accumulation
	global_par_SOCS3_accumulation=3.70803;
% Parameter:   id =  SOCS3_degradation, name = SOCS3_degradation
	global_par_SOCS3_degradation=0.0429186;
% Parameter:   id =  CD274mRNA_production, name = CD274mRNA_production
	global_par_CD274mRNA_production=8.21752E-5;
% assignmentRule: variable = IL13
	x(16)=2.265*global_par_IL13stimulation;

% Reaction: id = reaction_1
	reaction_reaction_1=global_par_Kon_IL13Rec*x(16)*x(1)*compartment_cell;

% Reaction: id = reaction_2
	reaction_reaction_2=global_par_Rec_intern*x(1)*compartment_cell;

% Reaction: id = reaction_3
	reaction_reaction_3=global_par_Rec_recycle*x(2)*compartment_cell;

% Reaction: id = reaction_4
	reaction_reaction_4=global_par_Rec_phosphorylation*x(3)*x(7)*compartment_cell;

% Reaction: id = reaction_5
	reaction_reaction_5=global_par_JAK2_phosphorylation*x(3)*x(6)/(1+global_par_JAK2_p_inhibition*x(14))*compartment_cell;

% Reaction: id = reaction_6
	reaction_reaction_6=global_par_JAK2_phosphorylation*x(4)*x(6)/(1+global_par_JAK2_p_inhibition*x(14))*compartment_cell;

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
	reaction_reaction_12=global_par_DecoyR_binding*x(16)*x(12)*compartment_cell;

% Reaction: id = reaction_13
	reaction_reaction_13=x(10)*global_par_SOCS3mRNA_production*compartment_cell;

% Reaction: id = reaction_14
	reaction_reaction_14=x(11)*global_par_SOCS3_translation/(global_par_SOCS3_accumulation+x(11))*compartment_cell;

% Reaction: id = reaction_15
	reaction_reaction_15=global_par_SOCS3_degradation*x(14)*compartment_cell;

% Reaction: id = reaction_16
	reaction_reaction_16=x(10)*global_par_CD274mRNA_production*compartment_cell;

	xdot=zeros(16,1);
	
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
	
% Species:   id = SOCS3mRNA, name = SOCS3mRNA, affected by kineticLaw
	xdot(11) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_13));
	
% Species:   id = DecoyR, name = DecoyR, affected by kineticLaw
	xdot(12) = (1/(compartment_cell))*((-1.0 * reaction_reaction_12));
	
% Species:   id = IL13_DecoyR, name = IL13_DecoyR, affected by kineticLaw
	xdot(13) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_12));
	
% Species:   id = SOCS3, name = SOCS3, affected by kineticLaw
	xdot(14) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_15));
	
% Species:   id = CD274mRNA, name = CD274mRNA, affected by kineticLaw
	xdot(15) = (1/(compartment_cell))*(( 1.0 * reaction_reaction_16));
	
% Species:   id = IL13, name = IL13, involved in a rule 	xdot(16) = x(16);
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


