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
% Model name = Wolf2001_Respiratory_Oscillations
%
% is http://identifiers.org/biomodels.db/MODEL9728951048
% is http://identifiers.org/biomodels.db/BIOMD0000000090
% isDescribedBy http://identifiers.org/pubmed/11423122
%


function main()
%Initial conditions vector
	x0=zeros(17,1);
	x0(1) = 7.0;
	x0(2) = 1.5;
	x0(3) = 0.5;
	x0(4) = 0.4;
	x0(5) = 0.4;
	x0(6) = 4.0;
	x0(7) = 0.5;
	x0(8) = 0.5;
	x0(9) = 0.3;
	x0(10) = 2.0;
	x0(11) = 0.0;
	x0(12) = 0.3;
	x0(13) = 1.5;
	x0(14) = 1.5;
	x0(15) = 0.5;
	x0(16) = 0.5;
	x0(17) = 1.5;


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

% Compartment: id = c0, name = external, constant
	compartment_c0=1.0;
% Compartment: id = c1, name = cytosol, constant
	compartment_c1=1.0;
% Compartment: id = c2, name = mitochondria, constant
	compartment_c2=1.0;
% Parameter:   id =  k_v0, name = k_v0
	global_par_k_v0=1.6;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.2;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.2;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.2;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.1;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.12;
% Parameter:   id =  k7, name = k7
	global_par_k7=10.0;
% Parameter:   id =  k8, name = k8
	global_par_k8=10.0;
% Parameter:   id =  k9, name = k9
	global_par_k9=10.0;
% Parameter:   id =  k_v10, name = k_v10
	global_par_k_v10=80.0;
% Parameter:   id =  k11, name = k11
	global_par_k11=10.0;
% Parameter:   id =  k12, name = k12
	global_par_k12=5.0;
% Parameter:   id =  k_v13, name = k_v13
	global_par_k_v13=4.0;
% Parameter:   id =  k14, name = k14
	global_par_k14=10.0;
% Parameter:   id =  k15, name = k15
	global_par_k15=5.0;
% Parameter:   id =  k16, name = k16
	global_par_k16=10.0;
% Parameter:   id =  k17, name = k17
	global_par_k17=0.02;
% Parameter:   id =  k18, name = k18
	global_par_k18=1.0;
% Parameter:   id =  n, name = n
	global_par_n=4.0;
% Parameter:   id =  m, name = m
	global_par_m=4.0;
% Parameter:   id =  Ka, name = Ka
	global_par_Ka=1.0;
% Parameter:   id =  Kc, name = Kc
	global_par_Kc=0.1;
% Parameter:   id =  a, name = a
	global_par_a=0.1;
% Parameter:   id =  Ac, name = Ac
	global_par_Ac=2.0;
% Parameter:   id =  Am, name = Am
	global_par_Am=2.0;
% Parameter:   id =  S, name = S
	global_par_S=2.0;
% Parameter:   id =  N, name = N
	global_par_N=2.0;
% Parameter:   id =  Kh, name = Kh
	global_par_Kh=0.5;
% assignmentRule: variable = A2c
	x(7)=global_par_Ac-x(2);
% assignmentRule: variable = A2m
	x(16)=global_par_Am-x(17);
% assignmentRule: variable = N1
	x(11)=global_par_N-x(10);
% assignmentRule: variable = S2
	x(15)=global_par_S-x(14);

% Reaction: id = v1, name = v1
	reaction_v1=compartment_c0*global_par_k_v0/(1+(x(9)/global_par_Kc)^global_par_n);

% Reaction: id = v13, name = v13
	reaction_v13=compartment_c0*global_par_k_v13;

% Reaction: id = v2, name = v2
	reaction_v2=compartment_c1*global_par_k2*x(5)*x(2);

% Reaction: id = v10, name = v10
	reaction_v10=compartment_c0*global_par_k_v10;

% Reaction: id = v14, name = v14
	reaction_v14=compartment_c2*global_par_k14*x(1);

% Reaction: id = v3, name = v3
	reaction_v3=compartment_c1*global_par_k3*x(3)*x(2);

% Reaction: id = v4, name = v4
	reaction_v4=compartment_c1*global_par_k4*x(4)*x(10);

% Reaction: id = v5, name = v5
	reaction_v5=compartment_c1*global_par_k5*x(8)*x(13);

% Reaction: id = v6, name = v6
	reaction_v6=compartment_c1*global_par_k6*x(9);

% Reaction: id = v7, name = v7
	reaction_v7=compartment_c1*global_par_k7*x(6)*x(11);

% Reaction: id = v15, name = v15
	reaction_v15=compartment_c1*global_par_k15*x(12);

% Reaction: id = v17, name = v17
	reaction_v17=compartment_c1*global_par_k17*x(8);

% Reaction: id = v18, name = v18
	reaction_v18=compartment_c1*global_par_k18*x(13);

% Reaction: id = v8, name = v8
	reaction_v8=compartment_c2*global_par_k8*x(12)*x(15);

% Reaction: id = v9, name = v9
	reaction_v9=compartment_c2*global_par_k9*x(14)*x(11);

% Reaction: id = v11a, name = vET1
	reaction_v11a=compartment_c2*global_par_k11*x(10)*x(1)/((global_par_a*x(10)+x(1))*(1+(x(8)/global_par_Kh)^global_par_m));

% Reaction: id = v11a2, name = vET2
	reaction_v11a2=compartment_c2*global_par_k11*x(10)*x(1)/((global_par_a*x(10)+x(1))*(1+(x(8)/global_par_Kh)^global_par_m));

% Reaction: id = v16, name = v16
	reaction_v16=compartment_c2*global_par_k16*x(17)*x(7);

% Reaction: id = v11b, name = vSYNT
	reaction_v11b=compartment_c2*3*global_par_k11*x(10)*x(1)/((global_par_a*x(10)+x(1))*(1+(x(8)/global_par_Kh)^global_par_m))*x(16)/(global_par_Ka+x(16));

% Reaction: id = vLEAK, name = vLEAK
	reaction_vLEAK=0;

% Reaction: id = v12, name = v12
	reaction_v12=compartment_c1*global_par_k12*x(2);

% Species:   id = sul_ex, name = SO4_ex, constant	const_species_sul_ex=0.0;

% Species:   id = eth_ex, name = EtOH_ex, constant	const_species_eth_ex=0.0;

% Species:   id = oxy_ex, name = O2_ex, constant	const_species_oxy_ex=0.0;

% Species:   id = H2O, name = H2O, constant	const_species_H2O=0.0;

% Species:   id = PPi, name = PPi, constant	const_species_PPi=0.0;

% Species:   id = C1, name = C1, constant	const_species_C1=0.0;

% Species:   id = C2, name = C2, constant	const_species_C2=0.0;

% Species:   id = Ho, name = Ho, constant	const_species_Ho=0.0;

% Species:   id = Hm, name = Hm, constant	const_species_Hm=0.0;

	xdot=zeros(17,1);
	
% Species:   id = oxy, name = O2, affected by kineticLaw
	xdot(1) = (1/(compartment_c2))*(( 1.0 * reaction_v10) + (-1.0 * reaction_v14) + (-1.0 * reaction_v11a2));
	
% Species:   id = A3c, name = ATP, affected by kineticLaw
	xdot(2) = (1/(compartment_c1))*((-1.0 * reaction_v2) + (-1.0 * reaction_v3) + ( 1.0 * reaction_v16) + (-1.0 * reaction_v12));
	
% Species:   id = aps, name = APS, affected by kineticLaw
	xdot(3) = (1/(compartment_c1))*(( 1.0 * reaction_v2) + (-1.0 * reaction_v3));
	
% Species:   id = pap, name = PAPS, affected by kineticLaw
	xdot(4) = (1/(compartment_c1))*(( 1.0 * reaction_v3) + (-1.0 * reaction_v4));
	
% Species:   id = sul, name = SO4, affected by kineticLaw
	xdot(5) = (1/(compartment_c1))*(( 1.0 * reaction_v1) + (-1.0 * reaction_v2));
	
% Species:   id = eth, name = EtOH, affected by kineticLaw
	xdot(6) = (1/(compartment_c1))*(( 1.0 * reaction_v13) + (-1.0 * reaction_v7));
	
% Species:   id = A2c, name = ADP, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = hyd, name = H2S, affected by kineticLaw
	xdot(8) = (1/(compartment_c1))*(( 1.0 * reaction_v4) + (-1.0 * reaction_v5) + (-1.0 * reaction_v17));
	
% Species:   id = cys, name = CYS, affected by kineticLaw
	xdot(9) = (1/(compartment_c1))*(( 1.0 * reaction_v5) + (-1.0 * reaction_v6));
	
% Species:   id = N2, name = NADH, affected by kineticLaw
	xdot(10) = (1/(compartment_c1))*((-3.0 * reaction_v4) + ( 2.0 * reaction_v7) + ( 4.0 * reaction_v9) + (-1.0 * reaction_v11a));
	
% Species:   id = N1, name = NAD, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = aco, name = AcCoA, affected by kineticLaw
	xdot(12) = (1/(compartment_c1))*(( 1.0 * reaction_v7) + (-1.0 * reaction_v15) + (-1.0 * reaction_v8));
	
% Species:   id = oah, name = OAH, affected by kineticLaw
	xdot(13) = (1/(compartment_c1))*((-1.0 * reaction_v5) + ( 1.0 * reaction_v15) + (-1.0 * reaction_v18));
	
% Species:   id = S1, name = S1, affected by kineticLaw
	xdot(14) = (1/(compartment_c2))*(( 1.0 * reaction_v8) + (-1.0 * reaction_v9));
	
% Species:   id = S2, name = S2, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = A2m, name = ADP_mit, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = A3m, name = ATP_mit, affected by kineticLaw
	xdot(17) = (1/(compartment_c2))*((-1.0 * reaction_v16) + ( 1.0 * reaction_v11b));
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


