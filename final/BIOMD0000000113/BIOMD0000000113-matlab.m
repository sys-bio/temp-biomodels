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
% Model name = Dupont1992_Ca_dpt_protein_phospho
%
% is http://identifiers.org/biomodels.db/MODEL7007141507
% is http://identifiers.org/biomodels.db/BIOMD0000000113
% isDescribedBy http://identifiers.org/pubmed/1316185
%


function main()
%Initial conditions vector
	x0=zeros(4,1);
	x0(1) = 0.15;
	x0(2) = 1.6;
	x0(3) = 1.0;
	x0(4) = 0.0;


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

% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Compartment: id = store, name = store, constant
	compartment_store=1.0;
% Parameter:   id =  v0, name = v0
	global_par_v0=1.0;
% Parameter:   id =  Vm2, name = Vm2
	global_par_Vm2=65.0;
% Parameter:   id =  n, name = n
	global_par_n=2.0;
% Parameter:   id =  Kp, name = Kp
	global_par_Kp=1.0;
% Parameter:   id =  Vm3, name = Vm3
	global_par_Vm3=500.0;
% Parameter:   id =  m, name = m
	global_par_m=2.0;
% Parameter:   id =  Kr, name = Kr
	global_par_Kr=2.0;
% Parameter:   id =  K_A, name = K_A
	global_par_K_A=0.9;
% Parameter:   id =  kf, name = kf
	global_par_kf=1.0;
% Parameter:   id =  k, name = k
	global_par_k=10.0;
% Parameter:   id =  p, name = p
	global_par_p=4.0;
% Parameter:   id =  vk, name = vk
% Parameter:   id =  vMK, name = vMK
% Warning parameter vMK is not constant, it should be controlled by a Rule and/or events
	global_par_vMK=20.0;
% Parameter:   id =  vp, name = vp
	global_par_vp=2.5;
% Parameter:   id =  Ka, name = Ka
	global_par_Ka=2.5;
% Parameter:   id =  q, name = q
	global_par_q=1.0;
% Parameter:   id =  K1, name = K1
	global_par_K1=0.01;
% Parameter:   id =  K2, name = K2
	global_par_K2=0.01;
% Parameter:   id =  v1_beta, name = v1_beta
	global_par_v1_beta=2.7;
% assignmentRule: variable = vk
	global_par_vk=global_par_vMK*x(1)^global_par_q/(global_par_Ka^global_par_q+x(1)^global_par_q);

% Reaction: id = R0, name = Calcium influx
	reaction_R0=compartment_cytosol*global_par_v0;

% Reaction: id = R1, name = InsP3 dependent Ca influx
	reaction_R1=compartment_cytosol*global_par_v1_beta;

% Reaction: id = R2, name = ATP driven pumping of Ca into store
	reaction_R2=compartment_cytosol*global_par_Vm2*x(1)^global_par_n/(global_par_Kp^global_par_n+x(1)^global_par_n);

% Reaction: id = R3, name = ATP driven pumping into cytosol
	reaction_R3=compartment_store*global_par_Vm3*x(2)^global_par_m*x(1)^global_par_p/((global_par_Kr^global_par_m+x(2)^global_par_m)*(global_par_K_A^global_par_p+x(1)^global_par_p));

% Reaction: id = Rf, name = Calcium leak
	reaction_Rf=compartment_store*global_par_kf*x(2);

% Reaction: id = R_eff, name = Ca efflux
	reaction_R_eff=compartment_cytosol*global_par_k*x(1);

% Reaction: id = Protein_Phosphorylation, name = Protein Phosphorylation
	reaction_Protein_Phosphorylation=compartment_cytosol*global_par_vp/x(3)*(global_par_vk/global_par_vp*(1-x(4))/(global_par_K1+1-x(4))-x(4)/(global_par_K2+x(4)));

	xdot=zeros(4,1);
	
% Species:   id = Z, name = Z, affected by kineticLaw
	xdot(1) = (1/(compartment_cytosol))*(( 1.0 * reaction_R0) + ( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + ( 1.0 * reaction_R3) + ( 1.0 * reaction_Rf) + (-1.0 * reaction_R_eff));
	
% Species:   id = Y, name = Y, affected by kineticLaw
	xdot(2) = (1/(compartment_store))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_Rf));
	
% Species:   id = Wt, name = Total Protein
% Warning species is not changed by either rules or reactions
	xdot(3) = ;
	
% Species:   id = W_star, name = Phosphorylated protein, affected by kineticLaw
	xdot(4) = (1/(compartment_cytosol))*(( 1.0 * reaction_Protein_Phosphorylation));
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


