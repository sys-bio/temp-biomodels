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
% Model name = Boehm2014 - isoform-specific dimerization of pSTAT5A and pSTAT5B
%
% is http://identifiers.org/biomodels.db/MODEL1501220000
% is http://identifiers.org/biomodels.db/BIOMD0000000591
% isDescribedBy http://identifiers.org/pubmed/25333863
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 1.0;
	x0(2) = 1.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;


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

% Compartment: id = cyt, name = cyt, constant
	compartment_cyt=1.4;
% Compartment: id = nuc, name = nuc, constant
	compartment_nuc=0.45;
% Parameter:   id =  Epo_degradation_BaF3, name = Epo_degradation_BaF3
	global_par_Epo_degradation_BaF3=0.0269765368088175;
% Parameter:   id =  k_exp_hetero, name = k_exp_hetero
	global_par_k_exp_hetero=1.00097114635938E-5;
% Parameter:   id =  k_exp_homo, name = k_exp_homo
	global_par_k_exp_homo=0.0061723799618614;
% Parameter:   id =  k_imp_hetero, name = k_imp_hetero
	global_par_k_imp_hetero=0.0163701561812467;
% Parameter:   id =  k_imp_homo, name = k_imp_homo
	global_par_k_imp_homo=96807.6817909446;
% Parameter:   id =  k_phos, name = k_phos
	global_par_k_phos=15767.6469913504;
% Parameter:   id =  ratio, name = ratio
	global_par_ratio=0.693;

% Reaction: id = reaction1
	reaction_reaction1=1.25E-7*x(1)^2*global_par_k_phos*exp((-global_par_Epo_degradation_BaF3)*time);

% Reaction: id = reaction2
	reaction_reaction2=1.25E-7*x(1)*x(2)*global_par_k_phos*exp((-global_par_Epo_degradation_BaF3)*time);

% Reaction: id = reaction3
	reaction_reaction3=1.25E-7*x(2)^2*global_par_k_phos*exp((-global_par_Epo_degradation_BaF3)*time);

% Reaction: id = reaction4
	reaction_reaction4=global_par_k_imp_homo*x(4);

% Reaction: id = reaction5
	reaction_reaction5=global_par_k_imp_hetero*x(3);

% Reaction: id = reaction6
	reaction_reaction6=global_par_k_imp_homo*x(5);

% Reaction: id = reaction7
	reaction_reaction7=global_par_k_exp_homo*x(6);

% Reaction: id = reaction8
	reaction_reaction8=global_par_k_exp_hetero*x(7);

% Reaction: id = reaction9
	reaction_reaction9=global_par_k_exp_homo*x(8);

	xdot=zeros(8,1);
	
% Species:   id = STAT5A, name = STAT5A, affected by kineticLaw
	xdot(1) = (1/(compartment_cyt))*((-2.0 * reaction_reaction1) + (-1.0 * reaction_reaction2) + ( 2.0 * reaction_reaction7) + ( 1.0 * reaction_reaction8));
	
% Species:   id = STAT5B, name = STAT5B, affected by kineticLaw
	xdot(2) = (1/(compartment_cyt))*((-1.0 * reaction_reaction2) + (-2.0 * reaction_reaction3) + ( 1.0 * reaction_reaction8) + ( 2.0 * reaction_reaction9));
	
% Species:   id = pApB, name = pApB, affected by kineticLaw
	xdot(3) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction2) + (-1.0 * reaction_reaction5));
	
% Species:   id = pApA, name = pApA, affected by kineticLaw
	xdot(4) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction1) + (-1.0 * reaction_reaction4));
	
% Species:   id = pBpB, name = pBpB, affected by kineticLaw
	xdot(5) = (1/(compartment_cyt))*(( 1.0 * reaction_reaction3) + (-1.0 * reaction_reaction6));
	
% Species:   id = nucpApA, name = nucpApA, affected by kineticLaw
	xdot(6) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction4) + (-1.0 * reaction_reaction7));
	
% Species:   id = nucpApB, name = nucpApB, affected by kineticLaw
	xdot(7) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction5) + (-1.0 * reaction_reaction8));
	
% Species:   id = nucpBpB, name = nucpBpB, affected by kineticLaw
	xdot(8) = (1/(compartment_nuc))*(( 1.0 * reaction_reaction6) + (-1.0 * reaction_reaction9));
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


