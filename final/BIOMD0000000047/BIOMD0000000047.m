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
% Model name = Oxhamre2005_Ca_oscillation
%
% is http://identifiers.org/biomodels.db/MODEL6623415355
% is http://identifiers.org/biomodels.db/BIOMD0000000047
% isDescribedBy http://identifiers.org/pubmed/15596518
% isDerivedFrom http://identifiers.org/pubmed/11874447
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(3) = 0.95;
	x0(1) = 0.0;
	x0(2) = 0.0;


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

% Compartment: id = Cytosol, name = Cytosol, constant
	compartment_Cytosol=1.0;
% Compartment: id = Endoplasmic_Reticulum, name = Endoplasmic_Reticulum, constant
	compartment_Endoplasmic_Reticulum=1.0;
% Parameter:   id =  n, name = n
% Parameter:   id =  n0, name = n0
	global_par_n0=1.0;
% Parameter:   id =  kbN, name = kbN
	global_par_kbN=0.5;
% Parameter:   id =  kappa, name = kappa
	global_par_kappa=5.0;
% Parameter:   id =  p1, name = p1
% Parameter:   id =  p11, name = p11
	global_par_p11=0.2;
% Parameter:   id =  p12, name = p12
	global_par_p12=0.8;
% Parameter:   id =  K1, name = K1
	global_par_K1=5.0;
% Parameter:   id =  p2, name = p2
% Parameter:   id =  K2, name = K2
	global_par_K2=0.7;
% Parameter:   id =  p3, name = p3
% Parameter:   id =  k31, name = k31
	global_par_k31=0.5;
% Parameter:   id =  K3, name = K3
	global_par_K3=0.7;
% assignmentRule: variable = n
	global_par_n=global_par_n0*(exp((-global_par_kbN)*time)+global_par_kappa*(1-exp((-global_par_kbN)*time)));
% assignmentRule: variable = p1
	global_par_p1=global_par_p11+global_par_p12*global_par_n/(global_par_K1+global_par_n);
% assignmentRule: variable = p2
	global_par_p2=x(2)/(global_par_K2+x(2));
% rateRule: variable = p3
global_par_p3 = x(3);

% Reaction: id = Jch	% Local Parameter:   id =  Fch_0, name = Fch_0
	reaction_Jch_Fch_0=8.0;

	reaction_Jch=reaction_Jch_Fch_0*global_par_p1*global_par_p2*global_par_p3;

% Reaction: id = Jleak	% Local Parameter:   id =  Fleak, name = Fleak
	reaction_Jleak_Fleak=0.5;

	reaction_Jleak=reaction_Jleak_Fleak;

% Reaction: id = Jpump	% Local Parameter:   id =  Fpump_0, name = Fpump_0
	reaction_Jpump_Fpump_0=2.0;
	% Local Parameter:   id =  Kpump, name = Kpump
	reaction_Jpump_Kpump=0.1;

	reaction_Jpump=reaction_Jpump_Fpump_0*x(2)/(reaction_Jpump_Kpump+x(2));

	xdot=zeros(3,1);
	% rateRule: variable = p3
	xdot(3) = -global_par_k31*x(2)*global_par_p3+global_par_k31*global_par_K3*(1-global_par_p3);
	
% Species:   id = CaER, name = CaER, affected by kineticLaw
	xdot(1) = (1/(compartment_Endoplasmic_Reticulum))*((-1.0 * reaction_Jch) + (-1.0 * reaction_Jleak) + ( 1.0 * reaction_Jpump));
	
% Species:   id = Ca_Cyt, name = Ca_Cyt, affected by kineticLaw
	xdot(2) = (1/(compartment_Cytosol))*(( 1.0 * reaction_Jch) + ( 1.0 * reaction_Jleak) + (-1.0 * reaction_Jpump));
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


