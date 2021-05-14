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
% Model name = Thiaville2016 - Folate pathway model (PanB overexpression)
%
% is http://identifiers.org/biomodels.db/MODEL1602280002
% is http://identifiers.org/biomodels.db/BIOMD0000000689
% isDescribedBy http://identifiers.org/pubmed/27065985
% is http://identifiers.org/biomodels.db/MODEL1602280002
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 3.315E-6;
	x0(2) = 1.0E-5;
	x0(3) = 1.0E-5;
	x0(4) = 1.0E-5;
	x0(5) = 1.0E-5;
	x0(6) = 1.69E-4;
	x0(7) = 8.47E-5;


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

% Reaction: id = FolK, name = FolK	% Local Parameter:   id =  k1, name = k1
	reaction_FolK_k1=15.8;

	reaction_FolK=compartment_compartment*reaction_FolK_k1*const_species_ATP*x(1);

% Reaction: id = FolP, name = FolP	% Local Parameter:   id =  k1, name = k1
	reaction_FolP_k1=4000.0;

	reaction_FolP=compartment_compartment*reaction_FolP_k1*x(3)*x(2);

% Reaction: id = FolC, name = FolC	% Local Parameter:   id =  k1, name = k1
	reaction_FolC_k1=3602.18;

	reaction_FolC=compartment_compartment*reaction_FolC_k1*const_species_L_Glutamate*const_species_ATP*x(4);

% Reaction: id = GlyA, name = GlyA	% Local Parameter:   id =  k1, name = k1
	reaction_GlyA_k1=4080.0;
	% Local Parameter:   id =  k2, name = k2
	reaction_GlyA_k2=2000.0;

	reaction_GlyA=compartment_compartment*(reaction_GlyA_k1*x(6)*const_species_L_serine-reaction_GlyA_k2*x(7)*const_species_Glycine);

% Reaction: id = FolA, name = FolA	% Local Parameter:   id =  k1, name = k1
	reaction_FolA_k1=31170.0;

	reaction_FolA=compartment_compartment*reaction_FolA_k1*x(5)*const_species_NADPH;

% Reaction: id = PanB, name = PanB	% Local Parameter:   id =  k1, name = k1
	reaction_PanB_k1=0.0121;

	reaction_PanB=compartment_compartment*reaction_PanB_k1*x(7);

% Reaction: id = THF_drain, name = THF_drain	% Local Parameter:   id =  Km, name = Km
	reaction_THF_drain_Km=1.571E-4;
	% Local Parameter:   id =  V, name = V
	reaction_THF_drain_V=1.243E-7;

	reaction_THF_drain=compartment_compartment*Henri_Michaelis_Menten__irreversible__1(reaction_THF_drain_Km, x(6), reaction_THF_drain_V);

% Reaction: id = CH2_THF_drain, name = CH2-THF_drain	% Local Parameter:   id =  Km, name = Km
	reaction_CH2_THF_drain_Km=5.921E-5;
	% Local Parameter:   id =  V, name = V
	reaction_CH2_THF_drain_V=1.726E-7;

	reaction_CH2_THF_drain=compartment_compartment*Henri_Michaelis_Menten__irreversible__2(x(7), reaction_CH2_THF_drain_Km, reaction_CH2_THF_drain_V);

% Species:   id = ATP, name = ATP, constant	const_species_ATP=0.0096;

% Species:   id = AMP, name = AMP, constant	const_species_AMP=2.8E-4;

% Species:   id = PPi, name = PPi, constant	const_species_PPi=5.0E-4;

% Species:   id = L_Glutamate, name = L-Glutamate, constant	const_species_L_Glutamate=8.46E-4;

% Species:   id = Phosphate, name = Phosphate, constant	const_species_Phosphate=0.01;

% Species:   id = ADP, name = ADP, constant	const_species_ADP=5.6E-4;

% Species:   id = L_serine, name = L-serine, constant	const_species_L_serine=6.8E-5;

% Species:   id = Glycine, name = Glycine, constant	const_species_Glycine=2.77E-4;

% Species:   id = NADP, name = NADP, constant	const_species_NADP=9.4E-7;

% Species:   id = NADPH, name = NADPH, constant	const_species_NADPH=9.4E-7;

	xdot=zeros(7,1);
	
% Species:   id = H2_HMPt, name = H2-HMPt, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_FolK) + ( 1.0 * reaction_PanB) + ( 1.0 * reaction_H2_HMPt_production));
	
% Species:   id = H2_HMPterinPP, name = H2-HMPterinPP, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_FolK) + (-1.0 * reaction_FolP));
	
% Species:   id = p_ABA, name = p-ABA, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_FolP) + ( 1.0 * reaction_PanB) + ( 1.0 * reaction_p_ABA_production));
	
% Species:   id = H2_Pteroate, name = H2-Pteroate, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_FolP) + (-1.0 * reaction_FolC));
	
% Species:   id = DHF, name = DHF, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_FolC) + (-1.0 * reaction_FolA));
	
% Species:   id = THF, name = THF, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_GlyA) + ( 1.0 * reaction_FolA) + (-1.0 * reaction_THF_drain));
	
% Species:   id = CH2_THF, name = CH2-THF, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_GlyA) + (-1.0 * reaction_PanB) + (-1.0 * reaction_CH2_THF_drain));
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Henri_Michaelis_Menten__irreversible__1(Km,THF,V), z=(V*THF/(Km+THF));end

function z=Henri_Michaelis_Menten__irreversible__2(CH2_THF,Km,V), z=(V*CH2_THF/(Km+CH2_THF));end

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


