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
% Model name = Zhu2007_TF_modulated_by_Calcium
%
% is http://identifiers.org/biomodels.db/MODEL8262954331
% is http://identifiers.org/biomodels.db/BIOMD0000000166
% isDescribedBy http://identifiers.org/pubmed/17560007
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000098
% isDerivedFrom http://identifiers.org/pubmed/9486144
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 15.0;
	x0(2) = 0.0;
	x0(3) = 0.25;


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

% Compartment: id = cytoplasm, name = cytoplasm, constant
	compartment_cytoplasm=1.0;
% Compartment: id = store, name = store, constant
	compartment_store=1.0;
% Parameter:   id =  kf, name = kf
% Parameter:   id =  Kd, name = Kd
% Parameter:   id =  kf0, name = kf0
	global_par_kf0=6.0;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=9.0;
% Parameter:   id =  Ka, name = Ka
	global_par_Ka=0.5;
% Parameter:   id =  Kb, name = Kb
	global_par_Kb=0.5;
% Parameter:   id =  Kd0, name = Kd0
	global_par_Kd0=10.0;
% assignmentRule: variable = kf
	global_par_kf=global_par_kf0*(1+global_par_gamma*x(3)^4/(global_par_Ka^4+x(3)^4));
% assignmentRule: variable = Kd
	global_par_Kd=global_par_Kd0/(1+x(3)^4/global_par_Kb^4);

% Reaction: id = TF_synthesis, name = TF Synthesis
	reaction_TF_synthesis=global_par_kf*x(1)^2/(x(1)^2+global_par_Kd);

% Reaction: id = TF_degradation, name = TF degradation	% Local Parameter:   id =  kd, name = kd
	reaction_TF_degradation_kd=1.0;

	reaction_TF_degradation=reaction_TF_degradation_kd*x(1);

% Reaction: id = TF_synthesis_basal, name = TF_synthesis_basal	% Local Parameter:   id =  Rbas, name = Rbas
	reaction_TF_synthesis_basal_Rbas=0.1;

	reaction_TF_synthesis_basal=reaction_TF_synthesis_basal_Rbas;

% Reaction: id = Calcium_Influx, name = Calcium_Influx	% Local Parameter:   id =  v0, name = v0
	reaction_Calcium_Influx_v0=1.0;

	reaction_Calcium_Influx=reaction_Calcium_Influx_v0;

% Reaction: id = Calcium_Influx_stimulation, name = Calcium Influx by stimulation	% Local Parameter:   id =  v1, name = v1
	reaction_Calcium_Influx_stimulation_v1=5.7;
	% Local Parameter:   id =  beta, name = beta
	reaction_Calcium_Influx_stimulation_beta=0.3;

	reaction_Calcium_Influx_stimulation=reaction_Calcium_Influx_stimulation_v1*reaction_Calcium_Influx_stimulation_beta;

% Reaction: id = Calcium_into_store, name = Calcium Influx	% Local Parameter:   id =  Vm2, name = Vm2
	reaction_Calcium_into_store_Vm2=30.0;
	% Local Parameter:   id =  K2, name = K2
	reaction_Calcium_into_store_K2=0.5;
	% Local Parameter:   id =  n, name = n
	reaction_Calcium_into_store_n=2.0;

	reaction_Calcium_into_store=reaction_Calcium_into_store_Vm2*x(3)^reaction_Calcium_into_store_n/(reaction_Calcium_into_store_K2^reaction_Calcium_into_store_n+x(3)^reaction_Calcium_into_store_n);

% Reaction: id = Calcium_into_cytoplasm, name = Calcium influx to cytoplasm	% Local Parameter:   id =  Vm3, name = Vm3
	reaction_Calcium_into_cytoplasm_Vm3=325.0;
	% Local Parameter:   id =  Kr, name = Kr
	reaction_Calcium_into_cytoplasm_Kr=1.7;
	% Local Parameter:   id =  K_A, name = K_A
	reaction_Calcium_into_cytoplasm_K_A=0.46;
	% Local Parameter:   id =  m, name = m
	reaction_Calcium_into_cytoplasm_m=2.0;
	% Local Parameter:   id =  p, name = p
	reaction_Calcium_into_cytoplasm_p=4.0;

	reaction_Calcium_into_cytoplasm=reaction_Calcium_into_cytoplasm_Vm3*x(2)^reaction_Calcium_into_cytoplasm_m/(reaction_Calcium_into_cytoplasm_Kr^reaction_Calcium_into_cytoplasm_m+x(2)^reaction_Calcium_into_cytoplasm_m)*x(3)^reaction_Calcium_into_cytoplasm_p/(reaction_Calcium_into_cytoplasm_K_A^reaction_Calcium_into_cytoplasm_p+x(3)^reaction_Calcium_into_cytoplasm_p);

% Reaction: id = Leakage, name = Calcium Leakage	% Local Parameter:   id =  k1, name = k1
	reaction_Leakage_k1=0.7;

	reaction_Leakage=reaction_Leakage_k1*x(2);

% Reaction: id = Leakage_from_cytoplasm, name = Leakage from cytoplasm	% Local Parameter:   id =  k, name = k
	reaction_Leakage_from_cytoplasm_k=10.0;

	reaction_Leakage_from_cytoplasm=reaction_Leakage_from_cytoplasm_k*x(3);

	xdot=zeros(3,1);
	
% Species:   id = X, name = TF_A, affected by kineticLaw
	xdot(1) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_TF_synthesis) + (-1.0 * reaction_TF_degradation) + ( 1.0 * reaction_TF_synthesis_basal));
	
% Species:   id = Y, name = Calcium in store, affected by kineticLaw
	xdot(2) = (1/(compartment_store))*(( 1.0 * reaction_Calcium_into_store) + (-1.0 * reaction_Calcium_into_cytoplasm) + (-1.0 * reaction_Leakage));
	
% Species:   id = Z, name = Calcium in cytoplasm, affected by kineticLaw
	xdot(3) = (1/(compartment_cytoplasm))*(( 1.0 * reaction_Calcium_Influx) + ( 1.0 * reaction_Calcium_Influx_stimulation) + (-1.0 * reaction_Calcium_into_store) + ( 1.0 * reaction_Calcium_into_cytoplasm) + ( 1.0 * reaction_Leakage) + (-1.0 * reaction_Leakage_from_cytoplasm));
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


