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
% Model name = Smallbone2013 - Serine biosynthesis
%
% is http://identifiers.org/biomodels.db/MODEL1203210000
% is http://identifiers.org/biomodels.db/BIOMD0000000458
% isDescribedBy http://identifiers.org/pubmed/23417802
%


function main()
%Initial conditions vector
	x0=zeros(2,1);
	x0(1) = 0.6;
	x0(2) = 0.09;


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
	compartment_cell=1.0;

% Reaction: id = PDH, name = phosphoglycerate dehydrogenase	% Local Parameter:   id =  kcatA, name = kcatA
	reaction_PDH_kcatA=0.55;
	% Local Parameter:   id =  KAp3g, name = KAp3g
	reaction_PDH_KAp3g=1.2;
	% Local Parameter:   id =  KAphp, name = KAphp
	reaction_PDH_KAphp=0.0032;
	% Local Parameter:   id =  KiAser, name = KiAser
	reaction_PDH_KiAser=0.0038;

	reaction_PDH=compartment_cell*const_species_serA*reaction_PDH_kcatA*const_species_p3g/reaction_PDH_KAp3g/(1+const_species_p3g/reaction_PDH_KAp3g+x(1)/reaction_PDH_KAphp)/(1+const_species_ser/reaction_PDH_KiAser);

% Reaction: id = PSA, name = phosphoserine aminotransferase	% Local Parameter:   id =  kcatC, name = kcatC
	reaction_PSA_kcatC=1.75;
	% Local Parameter:   id =  KCphp, name = KCphp
	reaction_PSA_KCphp=0.0015;
	% Local Parameter:   id =  KCpser, name = KCpser
	reaction_PSA_KCpser=0.0017;

	reaction_PSA=compartment_cell*const_species_serC*reaction_PSA_kcatC*x(1)/reaction_PSA_KCphp/(1+x(1)/reaction_PSA_KCphp+x(2)/reaction_PSA_KCpser);

% Reaction: id = PSP, name = phosphoserine phosphatase	% Local Parameter:   id =  kcatB, name = kcatB
	reaction_PSP_kcatB=1.43;
	% Local Parameter:   id =  KBpser, name = KBpser
	reaction_PSP_KBpser=0.0015;
	% Local Parameter:   id =  KBser, name = KBser
	reaction_PSP_KBser=0.15;

	reaction_PSP=compartment_cell*const_species_serB*reaction_PSP_kcatB*x(2)/reaction_PSP_KBpser/(1+x(2)/reaction_PSP_KBpser+const_species_ser/reaction_PSP_KBser);

% Species:   id = p3g, name = 3-phosphoglycerate, constant	const_species_p3g=2.36;

% Species:   id = ser, name = serine, constant	const_species_ser=4.9;

% Species:   id = serA, name = serA, constant	const_species_serA=1.15;

% Species:   id = serC, name = serC, constant	const_species_serC=0.1;

% Species:   id = serB, name = serB, constant	const_species_serB=0.25;

	xdot=zeros(2,1);
	
% Species:   id = php, name = phosphohydroxypyruvate, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_PDH) + (-1.0 * reaction_PSA));
	
% Species:   id = pser, name = phosphoserine, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_PSA) + (-1.0 * reaction_PSP));
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


