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
% Model name = Das2010 - Effect of a gamma-secretase inhibitor on Amyloid-beta dynamics
%
% is http://identifiers.org/biomodels.db/MODEL1409230000
% is http://identifiers.org/biomodels.db/BIOMD0000000551
% isDescribedBy http://identifiers.org/pubmed/20411345
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(3) = 1.0;
	x0(4) = 1.0;
	x0(5) = 1.0;
	x0(1) = 1.0;
	x0(2) = 1.0;


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

% Compartment: id = CSF, name = CSF, constant
	compartment_CSF=1.0;
% Compartment: id = Plasma, name = Plasma, constant
	compartment_Plasma=1.0;
% Parameter:   id =  l, name = l
% Parameter:   id =  Sc, name = Sc
	global_par_Sc=1.16;
% Parameter:   id =  g_t, name = g(t)
% Parameter:   id =  Ki, name = Ki
	global_par_Ki=0.0232;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.13;
% Parameter:   id =  J, name = J
	global_par_J=0.0;
% Parameter:   id =  r, name = r
	global_par_r=0.43;
% Parameter:   id =  deltap, name = deltap
	global_par_deltap=0.55;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.0206;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.522;
% Parameter:   id =  f_t, name = f(t)
% Parameter:   id =  aplasma, name = aplasma
	global_par_aplasma=187.0;
% Parameter:   id =  bplasma, name = bplasma
	global_par_bplasma=0.089;
% Parameter:   id =  tauplasma, name = tauplasma
	global_par_tauplasma=1.66;
% Parameter:   id =  aCSF, name = aCSF
	global_par_aCSF=4.92;
% Parameter:   id =  bCSF, name = bCSF
	global_par_bCSF=0.259;
% Parameter:   id =  tauCSF, name = tauCSF
	global_par_tauCSF=2.06;
% assignmentRule: variable = g_t
	global_par_g_t=piecewise(time/global_par_tauCSF*global_par_aCSF*exp((-global_par_bCSF)*global_par_tauCSF), time < global_par_tauCSF, global_par_aCSF*exp((-global_par_bCSF)*time));
% assignmentRule: variable = f_t
	global_par_f_t=piecewise(time/global_par_tauplasma*global_par_aplasma*exp((-global_par_bplasma)*global_par_tauplasma), time < global_par_tauplasma, global_par_aplasma*exp((-global_par_bplasma)*time));
% rateRule: variable = C
x(1) = x(3);
% rateRule: variable = P
x(2) = x(4);
% rateRule: variable = l
global_par_l = x(5);

	xdot=zeros(5,1);
	% rateRule: variable = C
	xdot(3) = global_par_Sc/(1+global_par_g_t/global_par_Ki)-global_par_k1*x(1)+global_par_J;
	% rateRule: variable = P
	xdot(4) = global_par_k1*global_par_r*x(1)-global_par_J*global_par_r-global_par_deltap*x(2)*global_par_l;
	% rateRule: variable = l
	xdot(5) = global_par_epsilon*(1/(1+global_par_alpha*global_par_f_t)-global_par_l);
	
% Species:   id = C, name = C, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = P, name = P, involved in a rule 	xdot(2) = x(2);
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


