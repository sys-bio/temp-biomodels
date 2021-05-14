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
% Model name = Schmitz2014 - RNA triplex formation
%
% is http://identifiers.org/biomodels.db/MODEL1402210000
% is http://identifiers.org/biomodels.db/BIOMD0000000530
% isDescribedBy http://identifiers.org/pubmed/24875477
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 1.0;
	x0(8) = 1.0;
	x0(9) = 1.0;
	x0(10) = 1.0;


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

% Compartment: id = compartment_1, name = compartment, constant
	compartment_compartment_1=1.0;

% Reaction: id = reaction_1, name = duplex 1 association	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_1_k1=4.5298E-4;

	reaction_reaction_1=compartment_compartment_1*reaction_reaction_1_k1*x(1)*x(2);

% Reaction: id = reaction_2, name = duplex 2 association	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_2_k1=1.30837E-5;

	reaction_reaction_2=compartment_compartment_1*reaction_reaction_2_k1*x(1)*x(3);

% Reaction: id = reaction_3, name = triplex association	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_3_k1=0.999534;

	reaction_reaction_3=compartment_compartment_1*reaction_reaction_3_k1*x(1)*x(2)*x(3);

% Reaction: id = reaction_4, name = mRNA synthesis	% Local Parameter:   id =  k_syn_mRNA, name = k_syn_mRNA
	reaction_reaction_4_k_syn_mRNA=1.0;

	reaction_reaction_4=compartment_compartment_1*function_1(reaction_reaction_4_k_syn_mRNA, x(7));

% Reaction: id = reaction_5, name = miRNA_1 synthesis	% Local Parameter:   id =  k_syn_miRNA_1, name = k_syn_miRNA_1
	reaction_reaction_5_k_syn_miRNA_1=1.0;

	reaction_reaction_5=compartment_compartment_1*function_2(reaction_reaction_5_k_syn_miRNA_1, x(8));

% Reaction: id = reaction_6, name = miRNA_2 synthesis	% Local Parameter:   id =  k_syn_miRNA_2, name = k_syn_miRNA_2
	reaction_reaction_6_k_syn_miRNA_2=1.0;

	reaction_reaction_6=compartment_compartment_1*function_3(reaction_reaction_6_k_syn_miRNA_2, x(9));

% Reaction: id = reaction_7, name = mRNA degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_7_k1=1.0;

	reaction_reaction_7=compartment_compartment_1*reaction_reaction_7_k1*x(1);

% Reaction: id = reaction_8, name = miRNA_1 degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_8_k1=1.0;

	reaction_reaction_8=compartment_compartment_1*reaction_reaction_8_k1*x(2);

% Reaction: id = reaction_9, name = miRNA_2 degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_9_k1=1.0;

	reaction_reaction_9=compartment_compartment_1*reaction_reaction_9_k1*x(3);

% Reaction: id = reaction_10, name = duplex 1 dissociation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_10_k1=0.249955;

	reaction_reaction_10=compartment_compartment_1*reaction_reaction_10_k1*x(4);

% Reaction: id = reaction_11, name = duplex 2 dissociation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_11_k1=0.241033;

	reaction_reaction_11=compartment_compartment_1*reaction_reaction_11_k1*x(5);

% Reaction: id = reaction_12, name = triplex dissociation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_12_k1=0.187796;

	reaction_reaction_12=compartment_compartment_1*reaction_reaction_12_k1*x(6);

% Reaction: id = reaction_13, name = duplex 1 degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_13_k1=1.0;

	reaction_reaction_13=compartment_compartment_1*reaction_reaction_13_k1*x(4);

% Reaction: id = reaction_14, name = duplex 2 degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_14_k1=1.0;

	reaction_reaction_14=compartment_compartment_1*reaction_reaction_14_k1*x(5);

% Reaction: id = reaction_15, name = triplex degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_15_k1=1.0;

	reaction_reaction_15=compartment_compartment_1*reaction_reaction_15_k1*x(6);

% Reaction: id = reaction_16, name = protein synthesis	% Local Parameter:   id =  k_syn_prot, name = k_syn_prot
	reaction_reaction_16_k_syn_prot=1.0;

	reaction_reaction_16=compartment_compartment_1*function_4(reaction_reaction_16_k_syn_prot, x(1));

% Reaction: id = reaction_17, name = protein degradation	% Local Parameter:   id =  k1, name = k1
	reaction_reaction_17_k1=1.0;

	reaction_reaction_17=compartment_compartment_1*reaction_reaction_17_k1*x(10);

	xdot=zeros(10,1);
	
% Species:   id = species_1, name = mRNA, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_7) + ( 1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_12));
	
% Species:   id = species_2, name = miRNA_1, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_10) + ( 1.0 * reaction_reaction_12));
	
% Species:   id = species_3, name = miRNA_2, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*((-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_11) + ( 1.0 * reaction_reaction_12));
	
% Species:   id = species_4, name = duplex_1, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_13));
	
% Species:   id = species_5, name = duplex_2, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_14));
	
% Species:   id = species_6, name = triplex, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_15));
	
% Species:   id = species_7, name = TF_mRNA
% Warning species is not changed by either rules or reactions
	xdot(7) = ;
	
% Species:   id = species_8, name = TF_miRNA_1
% Warning species is not changed by either rules or reactions
	xdot(8) = ;
	
% Species:   id = species_9, name = TF_miRNA_2
% Warning species is not changed by either rules or reactions
	xdot(9) = ;
	
% Species:   id = species_10, name = protein, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_1))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_17));
end

function z=function_1(k_syn_mRNA,species_7), z=(k_syn_mRNA*species_7);end

function z=function_3(k_syn_miRNA_2,species_9), z=(k_syn_miRNA_2*species_9);end

function z=function_4(k_syn_prot,species_1), z=(k_syn_prot*species_1);end

function z=function_2(k_syn_miRNA_1,species_8), z=(k_syn_miRNA_1*species_8);end

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


