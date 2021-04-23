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
% Model name = Leloup1999_CircClock
%
% is http://identifiers.org/biomodels.db/MODEL6617834203
% is http://identifiers.org/biomodels.db/BIOMD0000000021
% isDescribedBy http://identifiers.org/pubmed/10366496
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000171
%


function main()
%Initial conditions vector
	x0=zeros(10,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;


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

% Compartment: id = Cell, name = cytoplasm, constant
	compartment_Cell=1.0;
% Compartment: id = compartment_0000002, name = nucleus, constant
	compartment_compartment_0000002=1.0;
% Parameter:   id =  Pt, name = Total Per
% Parameter:   id =  Tt, name = Total Tim
% Parameter:   id =  V_mT, name = V_mT
	global_par_V_mT=0.7;
% Parameter:   id =  V_dT, name = V_dT
	global_par_V_dT=2.0;
% assignmentRule: variable = Pt
	global_par_Pt=x(7)+x(8)+x(1)+x(3)+x(5);
% assignmentRule: variable = Tt
	global_par_Tt=x(7)+x(8)+x(2)+x(4)+x(6);

% Reaction: id = P0_to_P1, name = First Phosphorylation of PER	% Local Parameter:   id =  K1_P, name = K1_P
	reaction_P0_to_P1_K1_P=2.0;
	% Local Parameter:   id =  V_1P, name = V_1P
	reaction_P0_to_P1_V_1P=8.0;

	reaction_P0_to_P1=compartment_Cell*reaction_P0_to_P1_V_1P*x(1)/(reaction_P0_to_P1_K1_P+x(1));

% Reaction: id = T0_to_T1, name = First Phosphorylation of TIM	% Local Parameter:   id =  K_1T, name = K_1T
	reaction_T0_to_T1_K_1T=2.0;
	% Local Parameter:   id =  V_1T, name = V_1T
	reaction_T0_to_T1_V_1T=8.0;

	reaction_T0_to_T1=compartment_Cell*reaction_T0_to_T1_V_1T*x(2)/(reaction_T0_to_T1_K_1T+x(2));

% Reaction: id = P1_to_P0, name = Dephosphorylation of PER (1st P)	% Local Parameter:   id =  K_2P, name = K_2P
	reaction_P1_to_P0_K_2P=2.0;
	% Local Parameter:   id =  V_2P, name = V_2P
	reaction_P1_to_P0_V_2P=1.0;

	reaction_P1_to_P0=compartment_Cell*reaction_P1_to_P0_V_2P*x(3)/(reaction_P1_to_P0_K_2P+x(3));

% Reaction: id = T1_to_T0, name = Dephosphorylation of TIM (1st P)	% Local Parameter:   id =  K_2T, name = K_2T
	reaction_T1_to_T0_K_2T=2.0;
	% Local Parameter:   id =  V_2T, name = V_2T
	reaction_T1_to_T0_V_2T=1.0;

	reaction_T1_to_T0=compartment_Cell*reaction_T1_to_T0_V_2T*x(4)/(reaction_T1_to_T0_K_2T+x(4));

% Reaction: id = P1_to_P2, name = Second Phosphorylation of PER	% Local Parameter:   id =  K_3P, name = K_3P
	reaction_P1_to_P2_K_3P=2.0;
	% Local Parameter:   id =  V_3P, name = V_3P
	reaction_P1_to_P2_V_3P=8.0;

	reaction_P1_to_P2=compartment_Cell*reaction_P1_to_P2_V_3P*x(3)/(reaction_P1_to_P2_K_3P+x(3));

% Reaction: id = T1_to_T2, name = Second Phosphorylation of TIM	% Local Parameter:   id =  K_3T, name = K_3T
	reaction_T1_to_T2_K_3T=2.0;
	% Local Parameter:   id =  V_3T, name = V_3T
	reaction_T1_to_T2_V_3T=8.0;

	reaction_T1_to_T2=compartment_Cell*reaction_T1_to_T2_V_3T*x(4)/(reaction_T1_to_T2_K_3T+x(4));

% Reaction: id = P2_to_P1, name = Dephosphorylation of PER (2nd P)	% Local Parameter:   id =  K_4P, name = K_4P
	reaction_P2_to_P1_K_4P=2.0;
	% Local Parameter:   id =  V_4P, name = V_4P
	reaction_P2_to_P1_V_4P=1.0;

	reaction_P2_to_P1=compartment_Cell*reaction_P2_to_P1_V_4P*x(5)/(reaction_P2_to_P1_K_4P+x(5));

% Reaction: id = T2_to_T1, name = Dephosphorylation of TIM (2nd P)	% Local Parameter:   id =  K_4T, name = K_4T
	reaction_T2_to_T1_K_4T=2.0;
	% Local Parameter:   id =  V_4T, name = V_4T
	reaction_T2_to_T1_V_4T=1.0;

	reaction_T2_to_T1=compartment_Cell*reaction_T2_to_T1_V_4T*x(6)/(reaction_T2_to_T1_K_4T+x(6));

% Reaction: id = P0_degradation, name = PER degradation	% Local Parameter:   id =  k_d, name = k_d
	reaction_P0_degradation_k_d=0.01;

	reaction_P0_degradation=compartment_Cell*reaction_P0_degradation_k_d*x(1);

% Reaction: id = T0_degradation, name = TIM degradation	% Local Parameter:   id =  k_d, name = k_d
	reaction_T0_degradation_k_d=0.01;

	reaction_T0_degradation=compartment_Cell*reaction_T0_degradation_k_d*x(2);

% Reaction: id = P1_degradation, name = PER-1 degradation	% Local Parameter:   id =  k_d, name = k_d
	reaction_P1_degradation_k_d=0.01;

	reaction_P1_degradation=compartment_Cell*reaction_P1_degradation_k_d*x(3);

% Reaction: id = T1_degradation, name = TIM-1 degradation	% Local Parameter:   id =  k_d, name = k_d
	reaction_T1_degradation_k_d=0.01;

	reaction_T1_degradation=compartment_Cell*reaction_T1_degradation_k_d*x(4);

% Reaction: id = P2_degradation, name = PER-2 degradation	% Local Parameter:   id =  k_d, name = k_d
	reaction_P2_degradation_k_d=0.01;
	% Local Parameter:   id =  V_dP, name = V_dP
	reaction_P2_degradation_V_dP=2.0;
	% Local Parameter:   id =  K_dP, name = K_dP
	reaction_P2_degradation_K_dP=0.2;

	reaction_P2_degradation=compartment_Cell*reaction_P2_degradation_k_d*x(5)+compartment_Cell*reaction_P2_degradation_V_dP*x(5)/(reaction_P2_degradation_K_dP+x(5));

% Reaction: id = T2_degradation, name = TIM-2 degradation	% Local Parameter:   id =  k_d, name = k_d
	reaction_T2_degradation_k_d=0.01;
	% Local Parameter:   id =  K_dT, name = K_dT
	reaction_T2_degradation_K_dT=0.2;

	reaction_T2_degradation=compartment_Cell*reaction_T2_degradation_k_d*x(6)+compartment_Cell*global_par_V_dT*x(6)/(reaction_T2_degradation_K_dT+x(6));

% Reaction: id = PT_complex_formation, name = PER-TIM complex formation	% Local Parameter:   id =  k3, name = k3
	reaction_PT_complex_formation_k3=1.2;
	% Local Parameter:   id =  k4, name = k4
	reaction_PT_complex_formation_k4=0.6;

	reaction_PT_complex_formation=compartment_Cell*reaction_PT_complex_formation_k3*x(5)*x(6)-compartment_Cell*reaction_PT_complex_formation_k4*x(7);

% Reaction: id = PT_complex_nucleation, name = PER-TIM complex nucleation	% Local Parameter:   id =  k1, name = k1
	reaction_PT_complex_nucleation_k1=0.6;
	% Local Parameter:   id =  k2, name = k2
	reaction_PT_complex_nucleation_k2=0.2;

	reaction_PT_complex_nucleation=compartment_Cell*reaction_PT_complex_nucleation_k1*x(7)-compartment_compartment_0000002*reaction_PT_complex_nucleation_k2*x(8);

% Reaction: id = PT_complex_degradation, name = PER-TIM complex degradation (cytosol)	% Local Parameter:   id =  k_dC, name = k_dC
	reaction_PT_complex_degradation_k_dC=0.01;

	reaction_PT_complex_degradation=compartment_Cell*reaction_PT_complex_degradation_k_dC*x(7);

% Reaction: id = PTnucl_complex_degradation, name = PER-TIM complex degradation (nuclear)	% Local Parameter:   id =  k_dN, name = k_dN
	reaction_PTnucl_complex_degradation_k_dN=0.01;

	reaction_PTnucl_complex_degradation=compartment_compartment_0000002*reaction_PTnucl_complex_degradation_k_dN*x(8);

% Reaction: id = Mp_production, name = PER mRNA production	% Local Parameter:   id =  v_sP, name = v_sP
	reaction_Mp_production_v_sP=1.0;
	% Local Parameter:   id =  K_IP, name = K_IP
	reaction_Mp_production_K_IP=1.0;
	% Local Parameter:   id =  n, name = n
	reaction_Mp_production_n=4.0;

	reaction_Mp_production=compartment_Cell*reaction_Mp_production_v_sP*reaction_Mp_production_K_IP^reaction_Mp_production_n/(reaction_Mp_production_K_IP^reaction_Mp_production_n+x(8)^reaction_Mp_production_n);

% Reaction: id = Mt_production, name = TIM mRNA production	% Local Parameter:   id =  V_sT, name = V_sT
	reaction_Mt_production_V_sT=1.0;
	% Local Parameter:   id =  K_IT, name = K_IT
	reaction_Mt_production_K_IT=1.0;
	% Local Parameter:   id =  n, name = n
	reaction_Mt_production_n=4.0;

	reaction_Mt_production=compartment_Cell*reaction_Mt_production_V_sT*reaction_Mt_production_K_IT^reaction_Mt_production_n/(reaction_Mt_production_K_IT^reaction_Mt_production_n+x(8)^reaction_Mt_production_n);

% Reaction: id = P0_production, name = PER production	% Local Parameter:   id =  k_sP, name = k_sP
	reaction_P0_production_k_sP=0.9;

	reaction_P0_production=compartment_Cell*reaction_P0_production_k_sP*x(9);

% Reaction: id = T0_production, name = TIM production	% Local Parameter:   id =  k_sT, name = k_sT
	reaction_T0_production_k_sT=0.9;

	reaction_T0_production=compartment_Cell*reaction_T0_production_k_sT*x(10);

% Reaction: id = Mp_degradation, name = PER mRNA degradation	% Local Parameter:   id =  k_d, name = k_d
	reaction_Mp_degradation_k_d=0.01;
	% Local Parameter:   id =  V_mP, name = V_mP
	reaction_Mp_degradation_V_mP=0.7;
	% Local Parameter:   id =  K_mP, name = K_mP
	reaction_Mp_degradation_K_mP=0.2;

	reaction_Mp_degradation=compartment_Cell*reaction_Mp_degradation_k_d*x(9)+compartment_Cell*reaction_Mp_degradation_V_mP*x(9)/(reaction_Mp_degradation_K_mP+x(9));

% Reaction: id = Mt_degradation, name = TIM mRNA degradation	% Local Parameter:   id =  k_d, name = k_d
	reaction_Mt_degradation_k_d=0.01;
	% Local Parameter:   id =  K_mT, name = K_mT
	reaction_Mt_degradation_K_mT=0.2;

	reaction_Mt_degradation=compartment_Cell*reaction_Mt_degradation_k_d*x(10)+compartment_Cell*global_par_V_mT*x(10)/(reaction_Mt_degradation_K_mT+x(10));

	xdot=zeros(10,1);
	
% Species:   id = P0, name = PER Protein (unphosphorylated), affected by kineticLaw
	xdot(1) = (1/(compartment_Cell))*((-1.0 * reaction_P0_to_P1) + ( 1.0 * reaction_P1_to_P0) + (-1.0 * reaction_P0_degradation) + ( 1.0 * reaction_P0_production));
	
% Species:   id = T0, name = TIM Protein (unphosphorylated), affected by kineticLaw
	xdot(2) = (1/(compartment_Cell))*((-1.0 * reaction_T0_to_T1) + ( 1.0 * reaction_T1_to_T0) + (-1.0 * reaction_T0_degradation) + ( 1.0 * reaction_T0_production));
	
% Species:   id = P1, name = PER Protein (mono-phosphorylated), affected by kineticLaw
	xdot(3) = (1/(compartment_Cell))*(( 1.0 * reaction_P0_to_P1) + (-1.0 * reaction_P1_to_P0) + (-1.0 * reaction_P1_to_P2) + ( 1.0 * reaction_P2_to_P1) + (-1.0 * reaction_P1_degradation));
	
% Species:   id = T1, name = TIM Protein (mono-phosphorylated), affected by kineticLaw
	xdot(4) = (1/(compartment_Cell))*(( 1.0 * reaction_T0_to_T1) + (-1.0 * reaction_T1_to_T0) + (-1.0 * reaction_T1_to_T2) + ( 1.0 * reaction_T2_to_T1) + (-1.0 * reaction_T1_degradation));
	
% Species:   id = P2, name = PER Protein (bi-phosphorylated), affected by kineticLaw
	xdot(5) = (1/(compartment_Cell))*(( 1.0 * reaction_P1_to_P2) + (-1.0 * reaction_P2_to_P1) + (-1.0 * reaction_P2_degradation) + (-1.0 * reaction_PT_complex_formation));
	
% Species:   id = T2, name = TIM Protein (bi-phosphorylated), affected by kineticLaw
	xdot(6) = (1/(compartment_Cell))*(( 1.0 * reaction_T1_to_T2) + (-1.0 * reaction_T2_to_T1) + (-1.0 * reaction_T2_degradation) + (-1.0 * reaction_PT_complex_formation));
	
% Species:   id = CC, name = Cytosolic PER-TIM Complex, affected by kineticLaw
	xdot(7) = (1/(compartment_Cell))*(( 1.0 * reaction_PT_complex_formation) + (-1.0 * reaction_PT_complex_nucleation) + (-1.0 * reaction_PT_complex_degradation));
	
% Species:   id = Cn, name = Nuclear PER-TIM Complex, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_0000002))*(( 1.0 * reaction_PT_complex_nucleation) + (-1.0 * reaction_PTnucl_complex_degradation));
	
% Species:   id = Mp, name = PER mRNA, affected by kineticLaw
	xdot(9) = (1/(compartment_Cell))*(( 1.0 * reaction_Mp_production) + (-1.0 * reaction_Mp_degradation));
	
% Species:   id = Mt, name = TIM mRNA, affected by kineticLaw
	xdot(10) = (1/(compartment_Cell))*(( 1.0 * reaction_Mt_production) + (-1.0 * reaction_Mt_degradation));
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


