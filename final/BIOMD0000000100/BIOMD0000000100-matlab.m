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
% Model name = Rozi2003_GlycogenPhosphorylase_Activation
%
% is http://identifiers.org/biomodels.db/MODEL4589754842
% is http://identifiers.org/biomodels.db/BIOMD0000000100
% isDescribedBy http://identifiers.org/pubmed/14556891
% isDerivedFrom http://identifiers.org/pubmed/11093832
% isDerivedFrom http://identifiers.org/pubmed/17883229
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 1000.0;
	x0(2) = 0.0;
	x0(3) = 0.45;
	x0(4) = 0.36;
	x0(5) = 1.0;


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

% Compartment: id = extracellular, name = extracellular, constant
	compartment_extracellular=1.0;
% Compartment: id = cytosol, name = cytosol, constant
	compartment_cytosol=1.0;
% Compartment: id = intravesicular, name = intravesicular, constant
	compartment_intravesicular=1.0;
% Parameter:   id =  v0, name = v0
	global_par_v0=2.0;
% Parameter:   id =  v1, name = v1
	global_par_v1=2.0;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.5;
% Parameter:   id =  Vm2, name = Vm2
	global_par_Vm2=6.0;
% Parameter:   id =  K2, name = K2
	global_par_K2=0.1;
% Parameter:   id =  Vm3, name = Vm3
	global_par_Vm3=20.0;
% Parameter:   id =  m, name = m
	global_par_m=2.0;
% Parameter:   id =  Ka, name = Ka
	global_par_Ka=0.2;
% Parameter:   id =  Ky, name = Ky
	global_par_Ky=0.2;
% Parameter:   id =  Kz, name = Kz
	global_par_Kz=0.5;
% Parameter:   id =  Kf, name = Kf
	global_par_Kf=1.0;
% Parameter:   id =  K, name = K
	global_par_K=10.0;
% Parameter:   id =  V4, name = V4
	global_par_V4=2.0;
% Parameter:   id =  Vm5, name = Vm5
	global_par_Vm5=30.0;
% Parameter:   id =  n, name = n
	global_par_n=4.0;
% Parameter:   id =  K5, name = K5
	global_par_K5=1.0;
% Parameter:   id =  Kd, name = Kd
	global_par_Kd=0.4;
% Parameter:   id =  epsilon, name = epsilon
	global_par_epsilon=0.1;
% Parameter:   id =  Vpm1, name = Vpm1
	global_par_Vpm1=1.5;
% Parameter:   id =  gamma, name = gamma
	global_par_gamma=9.0;
% Parameter:   id =  Ka5, name = Ka5
	global_par_Ka5=0.5;
% Parameter:   id =  K1, name = K1
	global_par_K1=0.1;
% Parameter:   id =  Ka6, name = Ka6
	global_par_Ka6=0.5;
% Parameter:   id =  Vpm2, name = Vpm2
	global_par_Vpm2=0.6;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=9.0;
% Parameter:   id =  G, name = G
	global_par_G=10000.0;
% Parameter:   id =  Ka1, name = Ka1
	global_par_Ka1=10000.0;
% Parameter:   id =  Kp2, name = Kp2
	global_par_Kp2=0.2;
% Parameter:   id =  Ka2, name = Ka2
	global_par_Ka2=10000.0;
% Parameter:   id =  p, name = p
	global_par_p=2.0;

% Reaction: id = vin, name = Calcium Influx
	reaction_vin=compartment_extracellular*(global_par_v0+global_par_v1*global_par_beta);

% Reaction: id = R2, name = Calcium transport to internal store
	reaction_R2=compartment_cytosol*global_par_Vm2*x(2)^2/(global_par_K2^2+x(2)^2);

% Reaction: id = R3, name = Calcium transport to cytosol
	reaction_R3=compartment_intravesicular*global_par_Vm3*x(3)^4*x(4)^2*x(2)^global_par_m/((global_par_Ka^4+x(3)^4)*(global_par_Ky^2+x(4)^2)*(global_par_Kz^global_par_m+x(2)^global_par_m));

% Reaction: id = Rkf, name = Calcium leak
	reaction_Rkf=compartment_intravesicular*global_par_Kf*x(4);

% Reaction: id = Rkz, name = Calcium efflux
	reaction_Rkz=compartment_cytosol*global_par_K*x(2);

% Reaction: id = R4, name = Agonist stimulated production of IP3
	reaction_R4=compartment_cytosol*global_par_beta*global_par_V4;

% Reaction: id = R5, name = Ca-dependant IP3 degradation
	reaction_R5=compartment_cytosol*global_par_Vm5*x(3)^global_par_p*x(2)^global_par_n/((global_par_K5^global_par_p+x(3)^global_par_p)*(global_par_Kd^global_par_n+x(2)^global_par_n));

% Reaction: id = R6, name = Ca independent IP3 degradation
	reaction_R6=compartment_cytosol*global_par_epsilon*x(3);

% Reaction: id = R7, name = Phosphorylase kinase activity
	reaction_R7=compartment_cytosol*global_par_Vpm1*(1+global_par_gamma*x(2)^4/(global_par_Ka5^4+x(2)^4))*(1-x(5))/(global_par_K1/(1+x(2)^4/global_par_Ka6^4)+1-x(5));

% Reaction: id = R8, name = Phosphatase activity
	reaction_R8=compartment_cytosol*global_par_Vpm2*(1+global_par_alpha*global_par_G/(global_par_Ka1+global_par_G))*x(5)/(global_par_Kp2/(1+global_par_G/global_par_Ka2)+x(5));

	xdot=zeros(5,1);
	
% Species:   id = EC, name = Extracellular Calcium
%WARNING speciesID: EC, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(1) = 0.0;
	
% Species:   id = Z, name = Cytosolic Calcium, affected by kineticLaw
	xdot(2) = (1/(compartment_cytosol))*(( 1.0 * reaction_vin) + (-1.0 * reaction_R2) + ( 1.0 * reaction_R3) + ( 1.0 * reaction_Rkf) + (-1.0 * reaction_Rkz));
	
% Species:   id = A, name = IP3, affected by kineticLaw
	xdot(3) = (1/(compartment_cytosol))*(( 1.0 * reaction_R4) + (-1.0 * reaction_R5) + (-1.0 * reaction_R6));
	
% Species:   id = Y, name = Intravesicular Calcium, affected by kineticLaw
	xdot(4) = (1/(compartment_intravesicular))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_Rkf));
	
% Species:   id = GP, name = Glycogen Phosphorylase, affected by kineticLaw
	xdot(5) = (1/(compartment_cytosol))*(( 1.0 * reaction_R7) + (-1.0 * reaction_R8));
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


