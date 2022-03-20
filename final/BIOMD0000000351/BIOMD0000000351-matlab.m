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
% Model name = Vernoux2011_AuxinSignaling_AuxinSingleStepInput
%
% is http://identifiers.org/biomodels.db/MODEL1105290000
% is http://identifiers.org/biomodels.db/BIOMD0000000351
% isDescribedBy http://identifiers.org/pubmed/21734647
%


function main()
%Initial conditions vector
	x0=zeros(6,1);
	x0(1) = 10.0;
	x0(2) = 10.0;
	x0(3) = 10.0;
	x0(4) = 10.0;
	x0(5) = 1.0;
	x0(6) = 0.11;


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

% Compartment: id = compartment_0000001, name = c_1, constant
	compartment_compartment_0000001=1.0;
% Parameter:   id =  pi_I, name = pi_I
	global_par_pi_I=1.0;
% Parameter:   id =  d_r, name = d_r
	global_par_d_r=0.007;
% Parameter:   id =  d_A, name = d_A
	global_par_d_A=0.003;
% Parameter:   id =  d_II, name = d_II
	global_par_d_II=0.003;
% Parameter:   id =  d_IA, name = d_IA
	global_par_d_IA=0.003;
% Parameter:   id =  k_II, name = k_II
	global_par_k_II=1.0;
% Parameter:   id =  k_IA, name = k_IA
	global_par_k_IA=1.0;
% Parameter:   id =  B_d, name = B_d
	global_par_B_d=100.0;
% Parameter:   id =  f_A, name = f_A
	global_par_f_A=10.0;
% Parameter:   id =  gamma_I, name = gamma_I
	global_par_gamma_I=10.0;
% Parameter:   id =  K_aux, name = K_aux
	global_par_K_aux=1.0;
% Parameter:   id =  K_II, name = K_II
	global_par_K_II=10.0;
% Parameter:   id =  K_IA, name = K_IA
	global_par_K_IA=10.0;
% Parameter:   id =  f_c, name = f_c
	global_par_f_c=10.0;
% Parameter:   id =  w_A, name = w_A
	global_par_w_A=10.0;
% Parameter:   id =  w_I, name = w_I
	global_par_w_I=10.0;
% Parameter:   id =  w_D, name = w_D
	global_par_w_D=10.0;
% Parameter:   id =  d_I, name = d_I
	global_par_d_I=0.05;
% Parameter:   id =  pi_A, name = pi_A
	global_par_pi_A=1.0;
% Parameter:   id =  k_Am, name = k_Am
	global_par_k_Am=10.0;
% Parameter:   id =  kprime_IA, name = kprime_IA
% Parameter:   id =  kprime_II, name = kprime_II
% Parameter:   id =  aux_basal, name = aux_basal
% assignmentRule: variable = aux
	x(6)=piecewise(5, time > 1000, 0);
% assignmentRule: variable = kprime_IA
	global_par_kprime_IA=global_par_K_IA*global_par_k_IA;
% assignmentRule: variable = kprime_II
	global_par_kprime_II=global_par_K_II*global_par_k_II;
% assignmentRule: variable = aux_basal
	global_par_aux_basal=1/(global_par_K_aux*(global_par_gamma_I-1));

% Reaction: id = reac_DIA, name = reac_DIA
	reaction_reac_DIA=global_par_k_IA*x(1)*x(2)-global_par_kprime_IA*x(4);

% Reaction: id = reac_DII, name = reac_DII
	reaction_reac_DII=global_par_k_II*x(1)*x(1)-global_par_kprime_II*x(3);

% Reaction: id = reac_degrI, name = reac_degrI
	reaction_reac_degrI=global_par_gamma_I*global_par_d_I*global_par_K_aux*x(6)/(global_par_K_aux*x(6)+1)*x(1);

% Reaction: id = reac_degrA, name = reac_degrA
	reaction_reac_degrA=global_par_d_A*x(2);

% Reaction: id = reac_degrDIA, name = reac_degrDIA
	reaction_reac_degrDIA=global_par_d_IA*x(4);

% Reaction: id = reac_degrDII, name = reac_degrDII
	reaction_reac_degrDII=global_par_d_II*x(3);

% Reaction: id = reac_DIAxA, name = reac_DIAxA
	reaction_reac_DIAxA=global_par_gamma_I*global_par_d_I*global_par_K_aux*x(6)/(global_par_K_aux*x(6)+1)*x(4);

% Reaction: id = reac_DIIxI, name = reac_DIIxI
	reaction_reac_DIIxI=global_par_gamma_I*global_par_d_I*global_par_K_aux*x(6)/(global_par_K_aux*x(6)+1)*x(3);

% Reaction: id = reac_degrR, name = reac_degrR
	reaction_reac_degrR=global_par_d_r*x(5);

% Reaction: id = reac_prodI, name = reac_prodI
	reaction_reac_prodI=global_par_pi_I*x(5);

% Reaction: id = reac_prodA, name = reac_prodA
	reaction_reac_prodA=global_par_pi_A;

% Reaction: id = reac_prodR, name = reac_prodR
	reaction_reac_prodR=(1+global_par_f_c/global_par_B_d*x(2)*(1+global_par_w_A*global_par_f_A*x(2)/global_par_B_d))/(1+x(2)/global_par_B_d*(1+global_par_w_A*x(2)/global_par_B_d)+global_par_w_I*x(2)*x(1)/(global_par_K_IA*global_par_B_d)+global_par_w_D*x(4)/global_par_B_d+global_par_k_Am);

	xdot=zeros(6,1);
	
% Species:   id = I, name = Aux/IAA, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_0000001))*((-1.0 * reaction_reac_DIA) + (-1.0 * reaction_reac_DII) + (-1.0 * reaction_reac_DII) + (-1.0 * reaction_reac_degrI) + ( 1.0 * reaction_reac_DIIxI) + ( 1.0 * reaction_reac_prodI));
	
% Species:   id = A, name = ARF, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_0000001))*((-1.0 * reaction_reac_DIA) + (-1.0 * reaction_reac_degrA) + ( 1.0 * reaction_reac_DIAxA) + ( 1.0 * reaction_reac_prodA));
	
% Species:   id = D_II, name = Aux/IAA:Aux/IAA, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reac_DII) + (-1.0 * reaction_reac_degrDII) + (-1.0 * reaction_reac_DIIxI));
	
% Species:   id = D_IA, name = Aux/IAA:ARF, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_0000001))*(( 1.0 * reaction_reac_DIA) + (-1.0 * reaction_reac_degrDIA) + (-1.0 * reaction_reac_DIAxA));
	
% Species:   id = R, name = mRNA, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_0000001))*((-1.0 * reaction_reac_degrR) + ( 1.0 * reaction_reac_prodR));
	
% Species:   id = aux, name = auxin, defined in a rule 	xdot(6) = x(6);
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


