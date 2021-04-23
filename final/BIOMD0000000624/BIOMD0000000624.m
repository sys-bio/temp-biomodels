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
% Model name = Sluka2016 - Acetaminophen metabolism
%
% is http://identifiers.org/biomodels.db/MODEL1509230011
% is http://identifiers.org/biomodels.db/BIOMD0000000624
% isDescribedBy http://identifiers.org/pubmed/27636091
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 0.0;
	x0(2) = 0.1;
	x0(3) = 0.0;
	x0(4) = 10.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;


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

% Compartment: id = compartment, name = Hepatocyte, constant
	compartment_compartment=1.0;
% Parameter:   id =  Vmax_2E1_APAP, name = Vmax_2E1_APAP
	global_par_Vmax_2E1_APAP=2.0E-5;
% Parameter:   id =  Km_2E1_APAP, name = Km_2E1_APAP
	global_par_Km_2E1_APAP=1.29;
% Parameter:   id =  kNapqiGsh, name = kNapqiGsh
	global_par_kNapqiGsh=0.1;
% Parameter:   id =  kGsh, name = kGsh
	global_par_kGsh=1.0E-4;
% Parameter:   id =  GSHmax, name = GSHmax
	global_par_GSHmax=10.0;
% Parameter:   id =  Vmax_PhaseIIEnzGlu_APAP, name = Vmax_PhaseIIEnzGlu_APAP
	global_par_Vmax_PhaseIIEnzGlu_APAP=0.001;
% Parameter:   id =  Km_PhaseIIEnzGlu_APAP, name = Km_PhaseIIEnzGlu_APAP
	global_par_Km_PhaseIIEnzGlu_APAP=1.0;
% Parameter:   id =  Vmax_PhaseIIEnzSul_APAP, name = Vmax_PhaseIIEnzSul_APAP
	global_par_Vmax_PhaseIIEnzSul_APAP=1.75E-4;
% Parameter:   id =  Km_PhaseIIEnzSul_APAP, name = Km_PhaseIIEnzSul_APAP
	global_par_Km_PhaseIIEnzSul_APAP=0.2;

% Reaction: id = J0, name = J0
	reaction_J0=global_par_Vmax_2E1_APAP*x(2)/(global_par_Km_2E1_APAP+x(2));

% Reaction: id = J1, name = J1
	reaction_J1=global_par_kNapqiGsh*x(3)*x(4)*compartment_compartment*compartment_compartment;

% Reaction: id = J2, name = J2
	reaction_J2=global_par_kGsh*(global_par_GSHmax-x(4))*compartment_compartment;

% Reaction: id = J3, name = J3
	reaction_J3=global_par_Vmax_PhaseIIEnzGlu_APAP*x(2)/(global_par_Km_PhaseIIEnzGlu_APAP+x(2));

% Reaction: id = J4, name = J4
	reaction_J4=global_par_Vmax_PhaseIIEnzSul_APAP*x(2)/(global_par_Km_PhaseIIEnzSul_APAP+x(2));

	xdot=zeros(7,1);
	
% Species:   id = X1, name = X1
%WARNING speciesID: X1, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = APAP, name = APAP, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_J0) + (-1.0 * reaction_J3) + (-1.0 * reaction_J4));
	
% Species:   id = NAPQI, name = NAPQI, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_J0) + (-1.0 * reaction_J1));
	
% Species:   id = GSH, name = GSH, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_J1) + ( 1.0 * reaction_J2));
	
% Species:   id = NAPQIGSH, name = NAPQIGSH, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_J1));
	
% Species:   id = APAPconj_Glu, name = APAPconj_Glu, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_J3));
	
% Species:   id = APAPconj_Sul, name = APAPconj_Sul, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_J4));
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


