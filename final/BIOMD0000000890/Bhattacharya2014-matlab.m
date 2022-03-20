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
% Model name = Bhattacharya2014 - A mathematical model of the sterol regulatory element binding protein 2 cholesterol biosynthesis pathway
%
% isDescribedBy http://identifiers.org/pubmed/24444765
% is http://identifiers.org/biomodels.db/MODEL1912120004
% is http://identifiers.org/biomodels.db/BIOMD0000000890
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 3.65E-8;
	x0(2) = 1.1E-5;
	x0(3) = 0.023;


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
% Parameter:   id =  mu_c, name = mu_c
	global_par_mu_c=0.462;
% Parameter:   id =  mu_m, name = mu_m
	global_par_mu_m=1.9E-10;
% Parameter:   id =  delta_m, name = delta_m
	global_par_delta_m=0.00135;
% Parameter:   id =  delta_h, name = delta_h
	global_par_delta_h=0.00193;
% Parameter:   id =  delta_c, name = delta_c
	global_par_delta_c=0.0036;
% Parameter:   id =  kappa_m, name = kappa_m
	global_par_kappa_m=1.0E-4;
% Parameter:   id =  kappa_c, name = kappa_c
	global_par_kappa_c=0.001;
% Parameter:   id =  x, name = x
	global_par_x=3.0;
% Parameter:   id =  y, name = y
	global_par_y=4.0;
% Parameter:   id =  HMGCR_Rescaled, name = HMGCR_Rescaled
% Parameter:   id =  mRNA_Rescaled, name = mRNA_Rescaled
% assignmentRule: variable = HMGCR_Rescaled
	global_par_HMGCR_Rescaled=x(2)/0.001;
% assignmentRule: variable = mRNA_Rescaled
	global_par_mRNA_Rescaled=x(1)/2E-6;

% Reaction: id = HMGCR_Transcription, name = HMGCR_Transcription
	reaction_HMGCR_Transcription=compartment_compartment*Function_for_HMGCR_Transcription(global_par_mu_m, global_par_kappa_m, x(3), global_par_kappa_c, global_par_y, global_par_x);

% Reaction: id = HMGCR_mRNA_Degradation, name = HMGCR_mRNA_Degradation
	reaction_HMGCR_mRNA_Degradation=compartment_compartment*global_par_delta_m*x(1);

% Reaction: id = HMGCR_Translation, name = HMGCR_Translation
	reaction_HMGCR_Translation=compartment_compartment*Function_for_HMGCR_Translation(x(1));

% Reaction: id = HMGCR_Degradation, name = HMGCR_Degradation
	reaction_HMGCR_Degradation=compartment_compartment*global_par_delta_h*x(2);

% Reaction: id = Cholesterol_Synthesis, name = Cholesterol_Synthesis
	reaction_Cholesterol_Synthesis=compartment_compartment*Function_for_Cholesterol_Synthesis(global_par_mu_c, x(2));

% Reaction: id = Cholesterol_Utilisation, name = Cholesterol_Utilisation
	reaction_Cholesterol_Utilisation=compartment_compartment*global_par_delta_c*x(3);

	xdot=zeros(3,1);
	
% Species:   id = m, name = m, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_HMGCR_Transcription) + (-1.0 * reaction_HMGCR_mRNA_Degradation));
	
% Species:   id = h, name = h, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_HMGCR_Translation) + (-1.0 * reaction_HMGCR_Degradation));
	
% Species:   id = c, name = c, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_Cholesterol_Synthesis) + (-1.0 * reaction_Cholesterol_Utilisation));
end

function z=Function_for_HMGCR_Translation(m), z=(m);end

function z=Function_for_HMGCR_Transcription(mu_m,kappa_m,c,kappa_c,y,x), z=(mu_m/(1+(kappa_m*(1+(c/kappa_c)^y))^x));end

function z=Function_for_Cholesterol_Synthesis(mu_c,h), z=(mu_c*h);end

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


