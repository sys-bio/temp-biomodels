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
% Model name = Pritchard2014 - plant-microbe interaction
%
% is http://identifiers.org/biomodels.db/MODEL1408280000
% is http://identifiers.org/biomodels.db/BIOMD0000000563
% isDescribedBy http://identifiers.org/pubmed/25382065
% isDerivedFrom http://identifiers.org/pubmed/17108957
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 0.0;
	x0(2) = 1.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 1.0;
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

% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=1.0;
% Compartment: id = Apoplast, name = Apoplast, constant
	compartment_Apoplast=1.0;

% Reaction: id = PAMP_recognition, name = PAMP recognition	% Local Parameter:   id =  k1, name = k1
	reaction_PAMP_recognition_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_PAMP_recognition_k2=0.1;

	reaction_PAMP_recognition=reaction_PAMP_recognition_k1*x(9)*x(1)-reaction_PAMP_recognition_k2*x(8);

% Reaction: id = Effector_recognition, name = Effector recognition	% Local Parameter:   id =  k1, name = k1
	reaction_Effector_recognition_k1=0.1;
	% Local Parameter:   id =  k2, name = k2
	reaction_Effector_recognition_k2=0.1;

	reaction_Effector_recognition=compartment_Cell*(reaction_Effector_recognition_k1*x(2)*x(4)-reaction_Effector_recognition_k2*x(3));

% Reaction: id = Effector_removal, name = Effector removal	% Local Parameter:   id =  k1, name = k1
	reaction_Effector_removal_k1=0.1;

	reaction_Effector_removal=compartment_Apoplast*reaction_Effector_removal_k1*x(10);

% Reaction: id = PAMP_removal, name = PAMP removal	% Local Parameter:   id =  k1, name = k1
	reaction_PAMP_removal_k1=0.1;

	reaction_PAMP_removal=compartment_Cell*reaction_PAMP_removal_k1*x(1);

% Reaction: id = Pathogen_arrival, name = Pathogen arrival	% Local Parameter:   id =  k1, name = k1
	reaction_Pathogen_arrival_k1=0.1;

	reaction_Pathogen_arrival=compartment_Apoplast*reaction_Pathogen_arrival_k1*x(7);

% Reaction: id = Pathogen_removal, name = Pathogen removal	% Local Parameter:   id =  k1, name = k1
	reaction_Pathogen_removal_k1=0.1;

	reaction_Pathogen_removal=compartment_Apoplast*reaction_Pathogen_removal_k1*x(6);

% Reaction: id = PAMP_production, name = PAMP production	% Local Parameter:   id =  k1, name = k1
	reaction_PAMP_production_k1=0.1;

	reaction_PAMP_production=reaction_PAMP_production_k1*x(6);

% Reaction: id = Effector_production, name = Effector production	% Local Parameter:   id =  k1, name = k1
	reaction_Effector_production_k1=0.1;

	reaction_Effector_production=compartment_Apoplast*reaction_Effector_production_k1*x(6);

% Reaction: id = E_int_removal, name = E_int removal	% Local Parameter:   id =  k1, name = k1
	reaction_E_int_removal_k1=0.1;

	reaction_E_int_removal=compartment_Cell*reaction_E_int_removal_k1*x(4);

% Reaction: id = ETI, name = ETI	% Local Parameter:   id =  k1, name = k1
	reaction_ETI_k1=0.1;

	reaction_ETI=reaction_ETI_k1*x(6)*x(3);

% Reaction: id = Effector_translocation, name = Effector translocation	% Local Parameter:   id =  Km, name = Km
	reaction_Effector_translocation_Km=0.1;
	% Local Parameter:   id =  V, name = V
	reaction_Effector_translocation_V=0.1;
	% Local Parameter:   id =  Ki, name = Ki
	reaction_Effector_translocation_Ki=0.1;

	reaction_Effector_translocation=Competitive_inhibition__irr(x(10), x(5), reaction_Effector_translocation_Km, reaction_Effector_translocation_V, reaction_Effector_translocation_Ki);

% Reaction: id = Callose_production, name = Callose production	% Local Parameter:   id =  k1, name = k1
	reaction_Callose_production_k1=0.1;

	reaction_Callose_production=reaction_Callose_production_k1*x(8);

% Reaction: id = Callose_removal, name = Callose removal	% Local Parameter:   id =  k1, name = k1
	reaction_Callose_removal_k1=0.1;

	reaction_Callose_removal=compartment_Cell*reaction_Callose_removal_k1*x(5);

% Reaction: id = PTI, name = PTI	% Local Parameter:   id =  k1, name = k1
	reaction_PTI_k1=0.1;

	reaction_PTI=reaction_PTI_k1*x(6)*x(5);

% Reaction: id = Callose_suppression, name = Callose suppression	% Local Parameter:   id =  k1, name = k1
	reaction_Callose_suppression_k1=0.1;

	reaction_Callose_suppression=compartment_Cell*reaction_Callose_suppression_k1*x(5)*x(4);

%Event: id=Pathogen_introduced
	event_Pathogen_introduced=time > 10;

	if(event_Pathogen_introduced) 
		x(7)=1;
	end

	xdot=zeros(10,1);
	
% Species:   id = PAMP, name = PAMP, affected by kineticLaw
	xdot(1) = (1/(compartment_Cell))*((-1.0 * reaction_PAMP_recognition) + (-1.0 * reaction_PAMP_removal) + ( 1.0 * reaction_PAMP_production));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*((-1.0 * reaction_Effector_recognition));
	
% Species:   id = R_0, name = R*, affected by kineticLaw
	xdot(3) = (1/(compartment_Cell))*(( 1.0 * reaction_Effector_recognition) + (-1.0 * reaction_ETI) + ( 1.0 * reaction_ETI));
	
% Species:   id = E_int, name = E_int, affected by kineticLaw
	xdot(4) = (1/(compartment_Cell))*((-1.0 * reaction_Effector_recognition) + (-1.0 * reaction_E_int_removal) + ( 1.0 * reaction_Effector_translocation) + (-1.0 * reaction_Callose_suppression) + ( 1.0 * reaction_Callose_suppression));
	
% Species:   id = Callose, name = Callose, affected by kineticLaw
	xdot(5) = (1/(compartment_Cell))*(( 1.0 * reaction_Callose_production) + (-1.0 * reaction_Callose_removal) + (-1.0 * reaction_PTI) + ( 1.0 * reaction_PTI) + (-1.0 * reaction_Callose_suppression));
	
% Species:   id = Path, name = Path, affected by kineticLaw
	xdot(6) = (1/(compartment_Apoplast))*(( 1.0 * reaction_Pathogen_arrival) + (-1.0 * reaction_Pathogen_removal) + (-1.0 * reaction_PAMP_production) + ( 1.0 * reaction_PAMP_production) + (-1.0 * reaction_Effector_production) + ( 1.0 * reaction_Effector_production) + (-1.0 * reaction_ETI) + (-1.0 * reaction_PTI));
	
% Species:   id = Path_bulk, name = Path_bulk, affected by kineticLaw
	xdot(7) = (1/(compartment_Apoplast))*((-1.0 * reaction_Pathogen_arrival) + ( 1.0 * reaction_Pathogen_arrival));
	
% Species:   id = PRR, name = PRR*, affected by kineticLaw
	xdot(8) = (1/(compartment_Apoplast))*(( 1.0 * reaction_PAMP_recognition) + (-1.0 * reaction_Callose_production) + ( 1.0 * reaction_Callose_production));
	
% Species:   id = PRR_0, name = PRR, affected by kineticLaw
	xdot(9) = (1/(compartment_Apoplast))*((-1.0 * reaction_PAMP_recognition));
	
% Species:   id = E, name = E, affected by kineticLaw
	xdot(10) = (1/(compartment_Apoplast))*((-1.0 * reaction_Effector_removal) + ( 1.0 * reaction_Effector_production) + (-1.0 * reaction_Effector_translocation));
end

function z=Competitive_inhibition__irr(substrate,Inhibitor,Km,V,Ki), z=(V*substrate/(Km+substrate+Km*Inhibitor/Ki));end

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


