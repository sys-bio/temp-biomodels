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
% Model name = G?rlich2003_RanGTP_gradient
%
% is http://identifiers.org/biomodels.db/MODEL4969417017
% is http://identifiers.org/biomodels.db/BIOMD0000000192
% isDescribedBy http://identifiers.org/pubmed/12606574
%


function main()
%Initial conditions vector
	x0=zeros(13,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 1.6;
	x0(4) = 0.7;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 500.0;
	x0(8) = 0.0;
	x0(9) = 0.7;
	x0(10) = 2.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 5.0;


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

% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.2E-11;
% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.8E-11;

% Reaction: id = RCC1_binding	% Local Parameter:   id =  r1, name = r1
	reaction_RCC1_binding_r1=74.0;
	% Local Parameter:   id =  r8, name = r8
	reaction_RCC1_binding_r8=55.0;

	reaction_RCC1_binding=compartment_nucleus*(reaction_RCC1_binding_r1*x(1)*x(4)-reaction_RCC1_binding_r8*x(2));

% Reaction: id = GDP_dissociation	% Local Parameter:   id =  r2, name = r2
	reaction_GDP_dissociation_r2=21.0;
	% Local Parameter:   id =  r7, name = r7
	reaction_GDP_dissociation_r7=11.0;

	reaction_GDP_dissociation=compartment_nucleus*(reaction_GDP_dissociation_r2*x(2)-reaction_GDP_dissociation_r7*x(6)*x(3));

% Reaction: id = GTP_binding	% Local Parameter:   id =  r3, name = r3
	reaction_GTP_binding_r3=0.6;
	% Local Parameter:   id =  r6, name = r6
	reaction_GTP_binding_r6=19.0;

	reaction_GTP_binding=compartment_nucleus*(reaction_GTP_binding_r3*x(6)*x(7)-reaction_GTP_binding_r6*x(5));

% Reaction: id = RanGTP_release	% Local Parameter:   id =  r4, name = r4
	reaction_RanGTP_release_r4=55.0;
	% Local Parameter:   id =  r5, name = r5
	reaction_RanGTP_release_r5=100.0;

	reaction_RanGTP_release=compartment_nucleus*(reaction_RanGTP_release_r4*x(5)-reaction_RanGTP_release_r5*x(8)*x(4));

% Reaction: id = Cytoplasmic_transfer	% Local Parameter:   id =  kpermRanGTP, name = kpermRanGTP
	reaction_Cytoplasmic_transfer_kpermRanGTP=0.03;

	reaction_Cytoplasmic_transfer=reaction_Cytoplasmic_transfer_kpermRanGTP*compartment_nucleus*(x(8)-x(11));

% Reaction: id = Nucleoplasmic_transfer	% Local Parameter:   id =  kpermRanGDP, name = kpermRanGDP
	reaction_Nucleoplasmic_transfer_kpermRanGDP=0.12;

	reaction_Nucleoplasmic_transfer=reaction_Nucleoplasmic_transfer_kpermRanGDP*compartment_nucleus*(x(1)-x(13));

% Reaction: id = RanGTP_binding	% Local Parameter:   id =  kon, name = kon
	reaction_RanGTP_binding_kon=0.3;
	% Local Parameter:   id =  koff, name = koff
	reaction_RanGTP_binding_koff=4.0E-4;

	reaction_RanGTP_binding=(reaction_RanGTP_binding_kon*x(11)*x(10)-reaction_RanGTP_binding_koff*x(12))*compartment_cytoplasm;

% Reaction: id = RanBP1_RanGDP, name = RanBP1_RanGDP	% Local Parameter:   id =  kcat, name = kcat
	reaction_RanBP1_RanGDP_kcat=10.8;
	% Local Parameter:   id =  Km, name = Km
	reaction_RanBP1_RanGDP_Km=0.1;

	reaction_RanBP1_RanGDP=compartment_cytoplasm*reaction_RanBP1_RanGDP_kcat*x(12)*x(9)/(x(12)+reaction_RanBP1_RanGDP_Km);

% Reaction: id = RanGAP_RanGDP, name = RanGAP_RanGDP	% Local Parameter:   id =  kcat_GAP, name = kcat
	reaction_RanGAP_RanGDP_kcat_GAP=10.6;
	% Local Parameter:   id =  Km_GAP, name = Km
	reaction_RanGAP_RanGDP_Km_GAP=0.7;

	reaction_RanGAP_RanGDP=compartment_cytoplasm*reaction_RanGAP_RanGDP_kcat_GAP*x(11)*x(9)/(reaction_RanGAP_RanGDP_Km_GAP+x(11));

	xdot=zeros(13,1);
	
% Species:   id = RanGDP_nuc, name = RanGDP_nuc, affected by kineticLaw
	xdot(1) = (1/(compartment_nucleus))*((-1.0 * reaction_RCC1_binding) + (-1.0 * reaction_Nucleoplasmic_transfer));
	
% Species:   id = RCC1_RanGDP, name = RCC1_RanGDP, affected by kineticLaw
	xdot(2) = (1/(compartment_nucleus))*(( 1.0 * reaction_RCC1_binding) + (-1.0 * reaction_GDP_dissociation));
	
% Species:   id = GDP, name = GDP
%WARNING speciesID: GDP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(3) = 0.0;
	
% Species:   id = RCC1, name = RCC1, affected by kineticLaw
	xdot(4) = (1/(compartment_nucleus))*((-1.0 * reaction_RCC1_binding) + ( 1.0 * reaction_RanGTP_release));
	
% Species:   id = RCC1_RanGTP, name = RCC1_RanGTP, affected by kineticLaw
	xdot(5) = (1/(compartment_nucleus))*(( 1.0 * reaction_GTP_binding) + (-1.0 * reaction_RanGTP_release));
	
% Species:   id = RCC1_Ran, name = RCC1_Ran, affected by kineticLaw
	xdot(6) = (1/(compartment_nucleus))*(( 1.0 * reaction_GDP_dissociation) + (-1.0 * reaction_GTP_binding));
	
% Species:   id = GTP, name = GTP
%WARNING speciesID: GTP, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(7) = 0.0;
	
% Species:   id = RanGTP_nuc, name = RanGTP_nuc, affected by kineticLaw
	xdot(8) = (1/(compartment_nucleus))*(( 1.0 * reaction_RanGTP_release) + (-1.0 * reaction_Cytoplasmic_transfer));
	
% Species:   id = RanGAP, name = RanGAP
% Warning species is not changed by either rules or reactions
	xdot(9) = ;
	
% Species:   id = RanBP1, name = RanBP1, affected by kineticLaw
	xdot(10) = (1/(compartment_cytoplasm))*((-1.0 * reaction_RanGTP_binding) + ( 1.0 * reaction_RanBP1_RanGDP));
	
% Species:   id = RanGTP_cy, name = RanGTP_cy, affected by kineticLaw
	xdot(11) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_Cytoplasmic_transfer) + (-1.0 * reaction_RanGTP_binding) + (-1.0 * reaction_RanGAP_RanGDP));
	
% Species:   id = RanGTP_RanBP1, name = RanGTP_RanBP1, affected by kineticLaw
	xdot(12) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_RanGTP_binding) + (-1.0 * reaction_RanBP1_RanGDP));
	
% Species:   id = RanGDP_cy, name = RanGDP_cy, affected by kineticLaw
	xdot(13) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_Nucleoplasmic_transfer) + ( 1.0 * reaction_RanBP1_RanGDP) + ( 1.0 * reaction_RanGAP_RanGDP));
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


