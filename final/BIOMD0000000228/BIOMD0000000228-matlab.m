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
% Model name = Swat2004_Mammalian_G1_S_Transition
%
% is http://identifiers.org/biomodels.db/MODEL3897709120
% is http://identifiers.org/biomodels.db/BIOMD0000000228
% isDescribedBy http://identifiers.org/pubmed/15231543
%


function main()
%Initial conditions vector
	x0=zeros(9,1);
	x0(1) = 0.1;
	x0(2) = 0.1;
	x0(3) = 0.1;
	x0(4) = 0.1;
	x0(5) = 0.1;
	x0(6) = 0.1;
	x0(7) = 0.1;
	x0(8) = 0.1;
	x0(9) = 0.1;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0;
% Parameter:   id =  Km1, name = Km1
	global_par_Km1=0.5;
% Parameter:   id =  J11, name = J11
	global_par_J11=0.5;
% Parameter:   id =  J61, name = J61
	global_par_J61=5.0;
% Parameter:   id =  k16, name = k16
	global_par_k16=0.4;
% Parameter:   id =  k61, name = k61
	global_par_k61=0.3;
% Parameter:   id =  phi_pRB, name = phi_pRB
	global_par_phi_pRB=0.005;
% Parameter:   id =  kp, name = kp
	global_par_kp=0.05;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.6;
% Parameter:   id =  a, name = a
	global_par_a=0.04;
% Parameter:   id =  Km2, name = Km2
	global_par_Km2=4.0;
% Parameter:   id =  J12, name = J12
	global_par_J12=5.0;
% Parameter:   id =  J62, name = J62
	global_par_J62=8.0;
% Parameter:   id =  phi_E2F1, name = phi_E2F1
	global_par_phi_E2F1=0.1;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.05;
% Parameter:   id =  k23, name = k23
	global_par_k23=0.3;
% Parameter:   id =  J13, name = J13
	global_par_J13=0.002;
% Parameter:   id =  J63, name = J63
	global_par_J63=2.0;
% Parameter:   id =  k34, name = k34
	global_par_k34=0.04;
% Parameter:   id =  Km4, name = Km4
	global_par_Km4=0.3;
% Parameter:   id =  phi_CycDi, name = phi_CycDi
	global_par_phi_CycDi=0.023;
% Parameter:   id =  k43, name = k43
	global_par_k43=0.01;
% Parameter:   id =  phi_CycDa, name = phi_CycDa
	global_par_phi_CycDa=0.03;
% Parameter:   id =  Fm, name = Fm
	global_par_Fm=0.005;
% Parameter:   id =  k25, name = k25
	global_par_k25=0.9;
% Parameter:   id =  J15, name = J15
	global_par_J15=0.001;
% Parameter:   id =  J65, name = J65
	global_par_J65=6.0;
% Parameter:   id =  phi_AP1, name = phi_AP1
	global_par_phi_AP1=0.01;
% Parameter:   id =  k67, name = k67
	global_par_k67=0.7;
% Parameter:   id =  k76, name = k76
	global_par_k76=0.1;
% Parameter:   id =  phi_pRBpp, name = phi_pRBpp
	global_par_phi_pRBpp=0.04;
% Parameter:   id =  phi_pRBp, name = phi_pRBp
	global_par_phi_pRBp=0.06;
% Parameter:   id =  k28, name = k28
	global_par_k28=0.06;
% Parameter:   id =  J18, name = J18
	global_par_J18=0.6;
% Parameter:   id =  J68, name = J68
	global_par_J68=7.0;
% Parameter:   id =  k89, name = k89
	global_par_k89=0.07;
% Parameter:   id =  Km9, name = Km9
	global_par_Km9=0.005;
% Parameter:   id =  k98, name = k98
	global_par_k98=0.01;
% Parameter:   id =  phi_CycEi, name = phi_CycEi
	global_par_phi_CycEi=0.06;
% Parameter:   id =  phi_CycEa, name = phi_CycEa
	global_par_phi_CycEa=0.05;

% Reaction: id = pRB_synthesis, name = pRB synthesis
	reaction_pRB_synthesis=compartment_cell*global_par_k1*x(3)/(global_par_Km1+x(3))*global_par_J11/(global_par_J11+x(1))*global_par_J61/(global_par_J61+x(2));

% Reaction: id = pRB_phosphorylation, name = pRB phosphorylation
	reaction_pRB_phosphorylation=compartment_cell*global_par_k16*x(1)*x(5);

% Reaction: id = pRBp_dephosphorylation, name = pRBp dephosphorylation
	reaction_pRBp_dephosphorylation=compartment_cell*global_par_k61*x(2);

% Reaction: id = pRB_degradation, name = pRB degradation
	reaction_pRB_degradation=compartment_cell*global_par_phi_pRB*x(1);

% Reaction: id = E2F1_synthesis, name = E2F1 synthesis
	reaction_E2F1_synthesis=compartment_cell*(global_par_kp+global_par_k2*(global_par_a^2+x(3)^2)/(global_par_Km2^2+x(3)^2)*global_par_J12/(global_par_J12+x(1))*global_par_J62/(global_par_J62+x(2)));

% Reaction: id = E2F1_degradation, name = E2F1 degradation
	reaction_E2F1_degradation=compartment_cell*global_par_phi_E2F1*x(3);

% Reaction: id = CycD_synthesis, name = CycD synthesis
	reaction_CycD_synthesis=compartment_cell*(global_par_k3*x(6)+global_par_k23*x(3)*global_par_J13/(global_par_J13+x(1))*global_par_J63/(global_par_J63+x(2)));

% Reaction: id = CycD_inibition, name = CycD inibition
	reaction_CycD_inibition=compartment_cell*global_par_k43*x(5);

% Reaction: id = CycD_activation, name = CycD activation
	reaction_CycD_activation=compartment_cell*global_par_k34*x(4)*x(5)/(global_par_Km4+x(5));

% Reaction: id = CycD_degradation, name = CycD degradation
	reaction_CycD_degradation=compartment_cell*global_par_phi_CycDi*x(4);

% Reaction: id = CycD_degradation2, name = CycD degradation2
	reaction_CycD_degradation2=compartment_cell*global_par_phi_CycDa*x(5);

% Reaction: id = AP1_synthesis, name = AP1 synthesis
	reaction_AP1_synthesis=compartment_cell*(global_par_Fm+global_par_k25*x(3)*global_par_J15/(global_par_J15+x(1))*global_par_J65/(global_par_J65+x(2)));

% Reaction: id = Ap1_degradation, name = Ap1 degradation
	reaction_Ap1_degradation=compartment_cell*global_par_phi_AP1*x(6);

% Reaction: id = pRBp_phosphorylation, name = pRBp phosphorylation
	reaction_pRBp_phosphorylation=compartment_cell*global_par_k67*x(2)*x(9);

% Reaction: id = pRBpp_dephosphorylation, name = pRBpp dephosphorylation
	reaction_pRBpp_dephosphorylation=compartment_cell*global_par_k76*x(7);

% Reaction: id = pRBpp_degradation, name = pRBpp degradation
	reaction_pRBpp_degradation=compartment_cell*global_par_phi_pRBpp*x(7);

% Reaction: id = pRBp_degradation, name = pRBp degradation
	reaction_pRBp_degradation=compartment_cell*global_par_phi_pRBp*x(2);

% Reaction: id = CycE_synthesis, name = CycE synthesis
	reaction_CycE_synthesis=compartment_cell*global_par_k28*x(3)*global_par_J18/(global_par_J18+x(1))*global_par_J68/(global_par_J68+x(2));

% Reaction: id = CycE_activation, name = CycE activation
	reaction_CycE_activation=compartment_cell*global_par_k89*x(8)*x(9)/(global_par_Km9+x(9));

% Reaction: id = CycE_inibition, name = CycE inibition
	reaction_CycE_inibition=compartment_cell*global_par_k98*x(9);

% Reaction: id = CycE_degradation, name = CycE degradation
	reaction_CycE_degradation=compartment_cell*global_par_phi_CycEi*x(8);

% Reaction: id = CycE_degradation2, name = CycE degradation2
	reaction_CycE_degradation2=compartment_cell*global_par_phi_CycEa*x(9);

	xdot=zeros(9,1);
	
% Species:   id = pRB, name = pRB, affected by kineticLaw
	xdot(1) = (1/(compartment_cell))*(( 1.0 * reaction_pRB_synthesis) + (-1.0 * reaction_pRB_phosphorylation) + ( 1.0 * reaction_pRBp_dephosphorylation) + (-1.0 * reaction_pRB_degradation));
	
% Species:   id = pRBp, name = pRBp, affected by kineticLaw
	xdot(2) = (1/(compartment_cell))*(( 1.0 * reaction_pRB_phosphorylation) + (-1.0 * reaction_pRBp_dephosphorylation) + (-1.0 * reaction_pRBp_phosphorylation) + ( 1.0 * reaction_pRBpp_dephosphorylation) + (-1.0 * reaction_pRBp_degradation));
	
% Species:   id = E2F1, name = E2F1, affected by kineticLaw
	xdot(3) = (1/(compartment_cell))*(( 1.0 * reaction_E2F1_synthesis) + (-1.0 * reaction_E2F1_degradation));
	
% Species:   id = CycDi, name = CycD/cdk4,6(i), affected by kineticLaw
	xdot(4) = (1/(compartment_cell))*(( 1.0 * reaction_CycD_synthesis) + ( 1.0 * reaction_CycD_inibition) + (-1.0 * reaction_CycD_activation) + (-1.0 * reaction_CycD_degradation));
	
% Species:   id = CycDa, name = CycD/cdk4,6(a), affected by kineticLaw
	xdot(5) = (1/(compartment_cell))*((-1.0 * reaction_CycD_inibition) + ( 1.0 * reaction_CycD_activation) + (-1.0 * reaction_CycD_degradation2));
	
% Species:   id = AP1, name = AP1, affected by kineticLaw
	xdot(6) = (1/(compartment_cell))*(( 1.0 * reaction_AP1_synthesis) + (-1.0 * reaction_Ap1_degradation));
	
% Species:   id = pRBpp, name = pRBpp, affected by kineticLaw
	xdot(7) = (1/(compartment_cell))*(( 1.0 * reaction_pRBp_phosphorylation) + (-1.0 * reaction_pRBpp_dephosphorylation) + (-1.0 * reaction_pRBpp_degradation));
	
% Species:   id = CycEi, name = CycE/cdk2(i), affected by kineticLaw
	xdot(8) = (1/(compartment_cell))*(( 1.0 * reaction_CycE_synthesis) + (-1.0 * reaction_CycE_activation) + ( 1.0 * reaction_CycE_inibition) + (-1.0 * reaction_CycE_degradation));
	
% Species:   id = CycEa, name = CycEa/cdk2(a), affected by kineticLaw
	xdot(9) = (1/(compartment_cell))*(( 1.0 * reaction_CycE_activation) + (-1.0 * reaction_CycE_inibition) + (-1.0 * reaction_CycE_degradation2));
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


