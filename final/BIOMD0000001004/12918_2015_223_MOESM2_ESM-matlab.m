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
% Model name = Intoslami2015 - Th17 core network model
%
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 1.0;
	x0(2) = 0.0;
	x0(3) = 0.4576;
	x0(4) = 0.0;
	x0(5) = 1.0;
	x0(6) = 1.0;
	x0(7) = 0.0;
	x0(8) = 0.0026;
	x0(9) = 1.0;
	x0(10) = 0.145;


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

% Reaction: id = IL6_conversion, name = IL6 conversion	% Local Parameter:   id =  k1, name = k1
	reaction_IL6_conversion_k1=0.0627;

	reaction_IL6_conversion=compartment_compartment*reaction_IL6_conversion_k1*x(1);

% Reaction: id = STAT3_autoactivation, name = STAT3 autoactivation	% Local Parameter:   id =  k1, name = k1
	reaction_STAT3_autoactivation_k1=14.8148;

	reaction_STAT3_autoactivation=compartment_compartment*reaction_STAT3_autoactivation_k1*x(4);

% Reaction: id = STAT3_mRNA_degradation, name = STAT3 mRNA degradation	% Local Parameter:   id =  k1, name = k1
	reaction_STAT3_mRNA_degradation_k1=2.2047;

	reaction_STAT3_mRNA_degradation=compartment_compartment*reaction_STAT3_mRNA_degradation_k1*x(3);

% Reaction: id = STAT3_translation, name = STAT3 translation	% Local Parameter:   id =  k1, name = k1
	reaction_STAT3_translation_k1=0.0846;

	reaction_STAT3_translation=compartment_compartment*reaction_STAT3_translation_k1*x(3);

% Reaction: id = STAT3_activation, name = STAT3 activation	% Local Parameter:   id =  k1, name = k1
	reaction_STAT3_activation_k1=16.3647;

	reaction_STAT3_activation=compartment_compartment*reaction_STAT3_activation_k1*x(5)*x(2);

% Reaction: id = STAT3_protein_degradation, name = STAT3 protein degradation	% Local Parameter:   id =  k1, name = k1
	reaction_STAT3_protein_degradation_k1=0.0221;

	reaction_STAT3_protein_degradation=compartment_compartment*reaction_STAT3_protein_degradation_k1*x(5);

% Reaction: id = STAT3_phosphoprotein_degradation, name = STAT3 phosphoprotein degradation	% Local Parameter:   id =  k1, name = k1
	reaction_STAT3_phosphoprotein_degradation_k1=2.7893;

	reaction_STAT3_phosphoprotein_degradation=compartment_compartment*reaction_STAT3_phosphoprotein_degradation_k1*x(4);

% Reaction: id = TGFb_conversion, name = TGFb conversion	% Local Parameter:   id =  k1, name = k1
	reaction_TGFb_conversion_k1=19.3743;

	reaction_TGFb_conversion=compartment_compartment*reaction_TGFb_conversion_k1*x(6);

% Reaction: id = RORgt_inhibition_by_FOXP3, name = RORgt inhibition by FOXP3	% Local Parameter:   id =  k1, name = k1
	reaction_RORgt_inhibition_by_FOXP3_k1=773.7824;

	reaction_RORgt_inhibition_by_FOXP3=compartment_compartment*reaction_RORgt_inhibition_by_FOXP3_k1*x(8)*x(9);

% Reaction: id = RORgt_degradation, name = RORgt degradation	% Local Parameter:   id =  k1, name = k1
	reaction_RORgt_degradation_k1=0.0479;

	reaction_RORgt_degradation=compartment_compartment*reaction_RORgt_degradation_k1*x(8);

% Reaction: id = FOXP3_activation_by_TGFb, name = FOXP3 activation by TGFb	% Local Parameter:   id =  k1, name = k1
	reaction_FOXP3_activation_by_TGFb_k1=0.0734;

	reaction_FOXP3_activation_by_TGFb=compartment_compartment*reaction_FOXP3_activation_by_TGFb_k1*x(7);

% Reaction: id = FOXP3_inhibition_by_STAT3, name = FOXP3 inhibition by STAT3	% Local Parameter:   id =  k1, name = k1
	reaction_FOXP3_inhibition_by_STAT3_k1=7.4237;

	reaction_FOXP3_inhibition_by_STAT3=compartment_compartment*reaction_FOXP3_inhibition_by_STAT3_k1*x(10)*x(4);

% Reaction: id = FOXP3_mRNA_degradation, name = FOXP3 mRNA degradation	% Local Parameter:   id =  k1, name = k1
	reaction_FOXP3_mRNA_degradation_k1=0.8092;

	reaction_FOXP3_mRNA_degradation=compartment_compartment*reaction_FOXP3_mRNA_degradation_k1*x(10);

% Reaction: id = FOXP3_translation_activation, name = FOXP3 translation/activation	% Local Parameter:   id =  k1, name = k1
	reaction_FOXP3_translation_activation_k1=0.0053;

	reaction_FOXP3_translation_activation=compartment_compartment*reaction_FOXP3_translation_activation_k1*x(10);

% Reaction: id = FOXP3_protein_degradation, name = FOXP3 protein degradation	% Local Parameter:   id =  k1, name = k1
	reaction_FOXP3_protein_degradation_k1=1.3205;

	reaction_FOXP3_protein_degradation=compartment_compartment*reaction_FOXP3_protein_degradation_k1*x(9);

% Reaction: id = RORgt_activation_by_TGFb_and_STAT3, name = RORgt activation by TGFb and STAT3	% Local Parameter:   id =  k1, name = k1
	reaction_RORgt_activation_by_TGFb_and_STAT3_k1=4.967;

	reaction_RORgt_activation_by_TGFb_and_STAT3=compartment_compartment*reaction_RORgt_activation_by_TGFb_and_STAT3_k1*x(7)*x(4);

	xdot=zeros(10,1);
	
% Species:   id = IL6ext, name = IL6ext, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_IL6_conversion));
	
% Species:   id = IL6int, name = IL6int, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_IL6_conversion) + (-1.0 * reaction_STAT3_activation) + ( 1.0 * reaction_STAT3_activation));
	
% Species:   id = STAT3mRNA, name = STAT3mRNA, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_STAT3_basal_expression) + ( 1.0 * reaction_STAT3_autoactivation) + (-1.0 * reaction_STAT3_mRNA_degradation) + (-1.0 * reaction_STAT3_translation) + ( 1.0 * reaction_STAT3_translation));
	
% Species:   id = STAT3prot_star, name = STAT3prot_star, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_STAT3_autoactivation) + ( 1.0 * reaction_STAT3_autoactivation) + ( 1.0 * reaction_STAT3_activation) + (-1.0 * reaction_STAT3_phosphoprotein_degradation) + (-1.0 * reaction_FOXP3_inhibition_by_STAT3) + ( 1.0 * reaction_FOXP3_inhibition_by_STAT3) + (-1.0 * reaction_RORgt_activation_by_TGFb_and_STAT3) + ( 1.0 * reaction_RORgt_activation_by_TGFb_and_STAT3));
	
% Species:   id = STAT3prot, name = STAT3prot, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_STAT3_translation) + (-1.0 * reaction_STAT3_activation) + (-1.0 * reaction_STAT3_protein_degradation));
	
% Species:   id = TGFbext, name = TGFbext, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_TGFb_conversion));
	
% Species:   id = TGFbint, name = TGFbint, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_TGFb_conversion) + (-1.0 * reaction_FOXP3_activation_by_TGFb) + ( 1.0 * reaction_FOXP3_activation_by_TGFb) + (-1.0 * reaction_RORgt_activation_by_TGFb_and_STAT3) + ( 1.0 * reaction_RORgt_activation_by_TGFb_and_STAT3));
	
% Species:   id = RORgtmRNA, name = RORgtmRNA, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*((-1.0 * reaction_RORgt_inhibition_by_FOXP3) + (-1.0 * reaction_RORgt_degradation) + ( 1.0 * reaction_RORgt_activation_by_TGFb_and_STAT3));
	
% Species:   id = FOXP3prot_star, name = FOXP3prot_star, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*((-1.0 * reaction_RORgt_inhibition_by_FOXP3) + ( 1.0 * reaction_RORgt_inhibition_by_FOXP3) + ( 1.0 * reaction_FOXP3_translation_activation) + (-1.0 * reaction_FOXP3_protein_degradation));
	
% Species:   id = FOXP3mRNA, name = FOXP3mRNA, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_FOXP3_basal_expression) + ( 1.0 * reaction_FOXP3_activation_by_TGFb) + (-1.0 * reaction_FOXP3_inhibition_by_STAT3) + (-1.0 * reaction_FOXP3_mRNA_degradation) + (-1.0 * reaction_FOXP3_translation_activation) + ( 1.0 * reaction_FOXP3_translation_activation));
end

function z=Constant_flux__irreversible(v), z=(v);end

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


