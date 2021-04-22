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
% Model name = Schaber2006_Pheromone_Starvation_Crosstalk
%
% is http://identifiers.org/biomodels.db/MODEL5952001443
% is http://identifiers.org/biomodels.db/BIOMD0000000237
% isDescribedBy http://identifiers.org/pubmed/16884493
%


function main()
%Initial conditions vector
	x0=zeros(24,1);
	x0(1) = 42.3;
	x0(2) = 13.3;
	x0(3) = 5.6;
	x0(4) = 53.0;
	x0(5) = 0.0;
	x0(6) = 217.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 54.4;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 35.9;
	x0(18) = 0.07;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 13.7;
	x0(22) = 0.25;
	x0(23) = 0.0;
	x0(24) = 0.0;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  alpha, name = alpha
% Parameter:   id =  beta, name = beta
% Parameter:   id =  alphaA, name = alphaA
	global_par_alphaA=1.0;
% Parameter:   id =  betaA, name = betaA
	global_par_betaA=1.0;
% Parameter:   id =  alphat, name = alphat
	global_par_alphat=0.0;
% Parameter:   id =  betat, name = betat
	global_par_betat=0.0;
% Parameter:   id =  alphas, name = alphas
	global_par_alphas=2.0;
% Parameter:   id =  betas, name = betas
	global_par_betas=20.0;
% Parameter:   id =  alphae, name = alphae
	global_par_alphae=10.0;
% Parameter:   id =  betae, name = betae
	global_par_betae=360.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=1.0;
% Parameter:   id =  k5, name = k5
	global_par_k5=1.0;
% Parameter:   id =  k6, name = k6
	global_par_k6=1.0;
% Parameter:   id =  k9, name = k9
	global_par_k9=1.0;
% Parameter:   id =  k10, name = k10
	global_par_k10=1.0;
% Parameter:   id =  k11, name = k11
	global_par_k11=1.0;
% Parameter:   id =  k12, name = k12
	global_par_k12=1.0;
% Parameter:   id =  k13, name = k13
	global_par_k13=1.0;
% Parameter:   id =  k17, name = k17
	global_par_k17=1.0;
% Parameter:   id =  k19, name = k19
	global_par_k19=1.0;
% Parameter:   id =  k20, name = k20
	global_par_k20=1.0;
% Parameter:   id =  k21, name = k21
	global_par_k21=1.0;
% Parameter:   id =  k22, name = k22
	global_par_k22=1.0;
% Parameter:   id =  k23, name = k23
	global_par_k23=1.0;
% Parameter:   id =  k25, name = k25
	global_par_k25=1.0;
% Parameter:   id =  k27, name = k27
	global_par_k27=1.0;
% Parameter:   id =  k31, name = k31
	global_par_k31=1.0;
% Parameter:   id =  k32, name = k32
	global_par_k32=1.0;
% Parameter:   id =  k33, name = k33
	global_par_k33=1.0;
% Parameter:   id =  k34, name = k34
	global_par_k34=1.0;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.1;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.1;
% Parameter:   id =  k15, name = k15
	global_par_k15=0.1;
% Parameter:   id =  k16, name = k16
	global_par_k16=0.1;
% Parameter:   id =  k26, name = k26
	global_par_k26=0.1;
% Parameter:   id =  k30, name = k30
	global_par_k30=0.1;
% Parameter:   id =  k7, name = k7
	global_par_k7=10.0;
% Parameter:   id =  k18, name = k18
	global_par_k18=10.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=0.01;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.01;
% Parameter:   id =  k24, name = k24
	global_par_k24=0.01;
% Parameter:   id =  k28, name = k28
	global_par_k28=0.01;
% Parameter:   id =  k29, name = k29
	global_par_k29=0.01;
% Parameter:   id =  alphastim, name = alphastim
	global_par_alphastim=1.0;
% Parameter:   id =  betastim, name = betastim
	global_par_betastim=1.0;
% assignmentRule: variable = alpha
	global_par_alpha=global_par_alphastim*piecewise(global_par_alphaA*(1-exp((-(time-global_par_alphat))/global_par_alphas)), (time >= global_par_alphat) && (time <= global_par_alphae), piecewise(global_par_alphaA*exp((-(time-global_par_alphat))/global_par_alphas), time >= global_par_alphae, 0));
% assignmentRule: variable = beta
	global_par_beta=global_par_betastim*global_par_betaA*piecewise(1-exp((-(time-global_par_betat))/global_par_betas), (time >= global_par_betat) && (time <= global_par_betae), piecewise(exp((-(time-global_par_betae))/global_par_betas), time > global_par_betae, 0));

% Reaction: id = v1, name = v1
	reaction_v1=compartment_compartment*global_par_k1*x(1)*x(2);

% Reaction: id = v2, name = v2
	reaction_v2=compartment_compartment*global_par_k2*x(3)*x(4)*global_par_alpha;

% Reaction: id = v3, name = v3
	reaction_v3=compartment_compartment*global_par_k3*x(5)*x(6);

% Reaction: id = v4, name = v4
	reaction_v4=compartment_compartment*global_par_k4*x(7);

% Reaction: id = v5, name = v5
	reaction_v5=compartment_compartment*global_par_k5*x(8);

% Reaction: id = v6, name = v6
	reaction_v6=compartment_compartment*global_par_k6*x(6)*x(10);

% Reaction: id = v7, name = v7
	reaction_v7=compartment_compartment*global_par_k7*x(10);

% Reaction: id = v8, name = v8
	reaction_v8=compartment_compartment*global_par_k8*x(11);

% Reaction: id = v9, name = v9
	reaction_v9=compartment_compartment*global_par_k9*x(5)*x(12);

% Reaction: id = v10, name = v10
	reaction_v10=compartment_compartment*global_par_k10*x(13);

% Reaction: id = v11, name = v11
	reaction_v11=compartment_compartment*global_par_k11*x(14);

% Reaction: id = v12, name = v12
	reaction_v12=compartment_compartment*global_par_k12*x(10)*x(12);

% Reaction: id = v13, name = v13
	reaction_v13=compartment_compartment*global_par_k13*x(2)*global_par_beta;

% Reaction: id = v14, name = v14
	reaction_v14=compartment_compartment*global_par_k14*x(16);

% Reaction: id = v15, name = v15
	reaction_v15=compartment_compartment*(global_par_k15*x(12)*x(16)+global_par_k30*x(12)*x(11));

% Reaction: id = v16, name = v16
	reaction_v16=compartment_compartment*(global_par_k16*x(15)+global_par_k28*x(15)*x(9));

% Reaction: id = v17, name = v17
	reaction_v17=compartment_compartment*global_par_k17*x(17);

% Reaction: id = v18, name = v18
	reaction_v18=compartment_compartment*global_par_k18*x(12)*x(18);

% Reaction: id = v19, name = v19
	reaction_v19=compartment_compartment*(global_par_k19*x(18)*x(9)+global_par_k29*x(18)*x(15));

% Reaction: id = v20, name = v20
	reaction_v20=compartment_compartment*global_par_k20*x(19);

% Reaction: id = v21, name = v21
	reaction_v21=compartment_compartment*global_par_k21*x(21);

% Reaction: id = v22, name = v22
	reaction_v22=compartment_compartment*global_par_k22*x(12)*x(22);

% Reaction: id = v23, name = v23
	reaction_v23=compartment_compartment*global_par_k23*x(22)*x(15);

% Reaction: id = v24, name = v24
	reaction_v24=compartment_compartment*global_par_k24*x(22)*x(9);

% Reaction: id = v25, name = v25
	reaction_v25=compartment_compartment*global_par_k25*x(23);

% Reaction: id = v26, name = v26
	reaction_v26=compartment_compartment*global_par_k26*x(9);

% Reaction: id = v27, name = v27
	reaction_v27=compartment_compartment*global_par_k27*x(3);

% Reaction: id = v28, name = v28
	reaction_v28=compartment_compartment*global_par_k31*x(19);

% Reaction: id = v29, name = v29
	reaction_v29=compartment_compartment*global_par_k32*x(20);

% Reaction: id = v30, name = v30
	reaction_v30=compartment_compartment*global_par_k33*x(23);

% Reaction: id = v31, name = v31
	reaction_v31=compartment_compartment*global_par_k34*x(24);

% Species:   id = p, name = p, constant	const_species_p=0.0;

% Species:   id = s, name = s, constant	const_species_s=0.0;

	xdot=zeros(24,1);
	
% Species:   id = Ste5, name = Ste5, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_v1) + (-1.0 * reaction_v7) + ( 1.0 * reaction_v27));
	
% Species:   id = Ste11, name = Ste11, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_v1) + (-1.0 * reaction_v13) + ( 1.0 * reaction_v14) + ( 1.0 * reaction_v27));
	
% Species:   id = Ste5Ste11, name = Ste5Ste11, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2) + (-1.0 * reaction_v27));
	
% Species:   id = Gbg, name = Gbg, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_v2) + ( 1.0 * reaction_v7));
	
% Species:   id = Ste5Ste11Gbg, name = Ste5Ste11Gbg, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v3) + (-1.0 * reaction_v9));
	
% Species:   id = Fus3, name = Fus3, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_v3) + (-1.0 * reaction_v6) + ( 1.0 * reaction_v26));
	
% Species:   id = Ste5Ste11GbgFus3, name = Ste5Ste11GbgFus3, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v4));
	
% Species:   id = Ste5Ste11GbgFus3P, name = Ste5Ste11GbgFus3P, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_v4) + (-1.0 * reaction_v5) + ( 1.0 * reaction_v6));
	
% Species:   id = Fus3PP, name = Fus3PP, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_v5) + (-1.0 * reaction_v26));
	
% Species:   id = Ste5Ste11GbgP, name = Ste5Ste11GbgP, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_v5) + (-1.0 * reaction_v6) + (-1.0 * reaction_v7) + ( 1.0 * reaction_v11) + (-1.0 * reaction_v12));
	
% Species:   id = Ste11Ubi, name = Ste11Ubi, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_v7) + (-1.0 * reaction_v8));
	
% Species:   id = Kss1, name = Kss1, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*((-1.0 * reaction_v9) + (-1.0 * reaction_v12) + (-1.0 * reaction_v15) + ( 1.0 * reaction_v16) + ( 2.0 * reaction_v17) + (-2.0 * reaction_v18) + ( 1.0 * reaction_v21) + (-1.0 * reaction_v22));
	
% Species:   id = Ste5Ste11GbgKss1, name = Ste5Ste11GbgKss1, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_v9) + (-1.0 * reaction_v10));
	
% Species:   id = Ste5Ste11GbgKss1P, name = Ste5Ste11GbgKss1P, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_v10) + (-1.0 * reaction_v11) + ( 1.0 * reaction_v12));
	
% Species:   id = Kss1PP, name = Kss1PP, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*(( 1.0 * reaction_v11) + ( 1.0 * reaction_v15) + (-1.0 * reaction_v16));
	
% Species:   id = Ste11P, name = Ste11P, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*(( 1.0 * reaction_v13) + (-1.0 * reaction_v14));
	
% Species:   id = Ste12Kss1, name = Ste12Kss1, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*((-1.0 * reaction_v17) + ( 1.0 * reaction_v18));
	
% Species:   id = Ste12, name = Ste12, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment))*(( 1.0 * reaction_v17) + (-1.0 * reaction_v18) + (-1.0 * reaction_v19) + ( 1.0 * reaction_v28));
	
% Species:   id = Ste12P, name = Ste12P, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment))*(( 1.0 * reaction_v19) + (-1.0 * reaction_v28));
	
% Species:   id = PREP, name = PREP, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment))*(( 1.0 * reaction_v20) + (-1.0 * reaction_v29));
	
% Species:   id = Ste12TeSte5Kss1, name = Ste12TeSte5Kss1, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment))*((-1.0 * reaction_v21) + ( 1.0 * reaction_v22));
	
% Species:   id = Ste12TeSte5, name = Ste12TeSte5, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment))*(( 1.0 * reaction_v21) + (-1.0 * reaction_v22) + (-1.0 * reaction_v23) + (-1.0 * reaction_v24) + ( 1.0 * reaction_v30));
	
% Species:   id = Ste12TeSte5P, name = Ste12TeSte5P, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment))*(( 1.0 * reaction_v23) + (-1.0 * reaction_v30));
	
% Species:   id = FREP, name = FREP, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment))*(( 1.0 * reaction_v25) + (-1.0 * reaction_v31));
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


