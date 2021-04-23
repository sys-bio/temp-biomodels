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
% Model name = Fung2005_Metabolic_Oscillator
%
% is http://identifiers.org/biomodels.db/MODEL6624231052
% is http://identifiers.org/biomodels.db/BIOMD0000000067
% isDescribedBy http://identifiers.org/pubmed/15875027
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
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

% Compartment: id = compartment, name = Intracellular, constant
	compartment_compartment=1.0;
% Parameter:   id =  S0, name = S0
	global_par_S0=0.5;
% Parameter:   id =  kTCA, name = kTCA
	global_par_kTCA=10.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=80.0;
% Parameter:   id =  KM1, name = KM1
	global_par_KM1=0.06;
% Parameter:   id =  k2, name = k2
	global_par_k2=0.8;
% Parameter:   id =  KM2, name = KM2
	global_par_KM2=0.1;
% Parameter:   id =  kAck_f, name = kAck_f
	global_par_kAck_f=1.0;
% Parameter:   id =  kAck_r, name = kAck_r
	global_par_kAck_r=1.0;
% Parameter:   id =  C, name = C
	global_par_C=100.0;
% Parameter:   id =  H, name = H
	global_par_H=1.0E-7;
% Parameter:   id =  Keq, name = Keq
	global_par_Keq=5.0E-4;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.01;
% Parameter:   id =  alpha0, name = alpha0
	global_par_alpha0=0.0;
% Parameter:   id =  alpha1, name = alpha1
	global_par_alpha1=0.1;
% Parameter:   id =  alpha2, name = alpha2
	global_par_alpha2=2.0;
% Parameter:   id =  alpha3, name = alpha3
	global_par_alpha3=2.0;
% Parameter:   id =  Kg1, name = Kg1
	global_par_Kg1=10.0;
% Parameter:   id =  Kg2, name = Kg2
	global_par_Kg2=10.0;
% Parameter:   id =  Kg3, name = Kg3
	global_par_Kg3=0.001;
% Parameter:   id =  n, name = n
	global_par_n=2.0;
% Parameter:   id =  kd, name = kd
	global_par_kd=0.06;

% Reaction: id = V_gly, name = Glycolytic flux
	reaction_V_gly=compartment_compartment*global_par_S0;

% Reaction: id = V_TCA, name = Flux to TCA cycle
	reaction_V_TCA=compartment_compartment*global_par_kTCA*x(1);

% Reaction: id = V_out, name = Intercellular transport of Acetate
	reaction_V_out=compartment_compartment*global_par_k3*(x(4)-x(8));

% Reaction: id = V_Pta, name = Phosphate acetyl transferase flux
	reaction_V_Pta=compartment_compartment*global_par_k1*x(7)*x(1)/(global_par_KM1+x(1));

% Reaction: id = V_Ack, name = Acetate kinase
	reaction_V_Ack=compartment_compartment*(global_par_kAck_f*x(2)-global_par_kAck_r*x(3));

% Reaction: id = V_Acs, name = Acetyl-CoA synthase flux
	reaction_V_Acs=compartment_compartment*global_par_k2*x(6)*x(3)/(global_par_KM2+x(3));

% Reaction: id = V_Ace, name = Acid-base equilibrium
	reaction_V_Ace=compartment_compartment*global_par_C*(x(3)*global_par_H-global_par_Keq*x(4));

% Reaction: id = R_LacI, name = LacI synthesis
	reaction_R_LacI=compartment_compartment*(global_par_alpha1*(x(2)/global_par_Kg1)^global_par_n/(1+(x(2)/global_par_Kg1)^global_par_n)+global_par_alpha0);

% Reaction: id = R_Acs, name = Acetyl-CoA synthase synthesis
	reaction_R_Acs=compartment_compartment*(global_par_alpha2*(x(2)/global_par_Kg2)^global_par_n/(1+(x(2)/global_par_Kg2)^global_par_n)+global_par_alpha0);

% Reaction: id = R_Pta, name = Phosphate acetyl transferase synthase
	reaction_R_Pta=global_par_alpha3/(1+(x(5)/global_par_Kg3)^global_par_n)+global_par_alpha0;

% Reaction: id = R_dLacI, name = LacI degradation
	reaction_R_dLacI=compartment_compartment*global_par_kd*x(5);

% Reaction: id = R_dAcs, name = Acs degradation
	reaction_R_dAcs=compartment_compartment*global_par_kd*x(6);

% Reaction: id = R_dPta, name = Pta degradation
	reaction_R_dPta=compartment_compartment*global_par_kd*x(7);

	xdot=zeros(8,1);
	
% Species:   id = AcCoA, name = Acetyl-CoA, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_V_gly) + (-1.0 * reaction_V_TCA) + (-1.0 * reaction_V_Pta) + ( 1.0 * reaction_V_Acs));
	
% Species:   id = AcP, name = Acetyl phosphate, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_V_Pta) + (-1.0 * reaction_V_Ack));
	
% Species:   id = OAc, name = Acetate, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_V_Ack) + (-1.0 * reaction_V_Acs) + (-1.0 * reaction_V_Ace));
	
% Species:   id = HOAc, name = protonated acetate, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*((-1.0 * reaction_V_out) + ( 1.0 * reaction_V_Ace));
	
% Species:   id = LacI, name = lac repressor, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_R_LacI) + (-1.0 * reaction_R_dLacI));
	
% Species:   id = Acs, name = Acetyl-CoA synthase, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_R_Acs) + (-1.0 * reaction_R_dAcs));
	
% Species:   id = Pta, name = Phosphate acetyl transferase, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_R_Pta) + (-1.0 * reaction_R_dPta));
	
% Species:   id = HOAc_E, name = acetate export
%WARNING speciesID: HOAc_E, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(8) = 0.0;
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


