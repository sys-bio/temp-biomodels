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
% Model name = Huang1996 - Ultrasensitivity in MAPK cascade
%
% is http://identifiers.org/biomodels.db/MODEL6615048798
% is http://identifiers.org/biomodels.db/BIOMD0000000009
% isDescribedBy http://identifiers.org/pubmed/8816754
%


function main()
%Initial conditions vector
	x0=zeros(26,1);
	x0(1) = 3.0E-5;
	x0(2) = 3.0E-4;
	x0(3) = 0.003;
	x0(4) = 0.0;
	x0(5) = 1.2;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 1.2;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.12;
	x0(12) = 3.0E-4;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0;
	x0(24) = 0;
	x0(25) = 0;
	x0(26) = 0;


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
	compartment_compartment=4.0E-12;
% Parameter:   id =  K_PP_norm_max, name = K_PP_norm_max
	global_par_K_PP_norm_max=0.900049;
% assignmentRule: variable = K_PP_norm
	x(23)=(x(10)+x(21))/(x(10)+x(9)+x(8)+x(17)+x(18)+x(21)+x(22));
% assignmentRule: variable = rel_K_PP_max
	x(26)=x(23)/global_par_K_PP_norm_max;
% assignmentRule: variable = KK_PP_norm
	x(24)=(x(7)+x(17)+x(18)+x(19))/(x(7)+x(6)+x(5)+x(17)+x(18)+x(15)+x(16)+x(19)+x(20));
% assignmentRule: variable = KKK_P_norm
	x(25)=(x(4)+x(15)+x(16))/(x(3)+x(4)+x(15)+x(16));

% Reaction: id = r1a, name = binding of MAPKKK activator	% Local Parameter:   id =  a1, name = a1
	reaction_r1a_a1=1000.0;
	% Local Parameter:   id =  d1, name = d1
	reaction_r1a_d1=150.0;

	reaction_r1a=compartment_compartment*(reaction_r1a_a1*x(1)*x(3)-reaction_r1a_d1*x(13));

% Reaction: id = r1b, name = MAPKKK activation	% Local Parameter:   id =  k2, name = k2
	reaction_r1b_k2=150.0;

	reaction_r1b=compartment_compartment*reaction_r1b_k2*x(13);

% Reaction: id = r2a, name = binding of MAPKKK inactivator	% Local Parameter:   id =  a2, name = a2
	reaction_r2a_a2=1000.0;
	% Local Parameter:   id =  d2, name = d2
	reaction_r2a_d2=150.0;

	reaction_r2a=compartment_compartment*(reaction_r2a_a2*x(2)*x(4)-reaction_r2a_d2*x(14));

% Reaction: id = r2b, name = MAPKKK inactivation	% Local Parameter:   id =  k2, name = k2
	reaction_r2b_k2=150.0;

	reaction_r2b=compartment_compartment*reaction_r2b_k2*x(14);

% Reaction: id = r3a, name = binding P-MAPKKK and MAPKK	% Local Parameter:   id =  a3, name = a3
	reaction_r3a_a3=1000.0;
	% Local Parameter:   id =  d3, name = d3
	reaction_r3a_d3=150.0;

	reaction_r3a=compartment_compartment*(reaction_r3a_a3*x(5)*x(4)-reaction_r3a_d3*x(15));

% Reaction: id = r3b, name = phosphorylation of MAPKK	% Local Parameter:   id =  k3, name = k3
	reaction_r3b_k3=150.0;

	reaction_r3b=compartment_compartment*reaction_r3b_k3*x(15);

% Reaction: id = r4a, name = binding MAPKK-Pase and P-MAPKK	% Local Parameter:   id =  a4, name = a4
	reaction_r4a_a4=1000.0;
	% Local Parameter:   id =  d4, name = d4
	reaction_r4a_d4=150.0;

	reaction_r4a=compartment_compartment*(reaction_r4a_a4*x(6)*x(12)-reaction_r4a_d4*x(20));

% Reaction: id = r4b, name = dephosphorylation of P-MAPKK	% Local Parameter:   id =  k4, name = k4
	reaction_r4b_k4=150.0;

	reaction_r4b=compartment_compartment*reaction_r4b_k4*x(20);

% Reaction: id = r5a, name = binding P-MAPKKK and P-MAPKK	% Local Parameter:   id =  a5, name = a5
	reaction_r5a_a5=1000.0;
	% Local Parameter:   id =  d5, name = d5
	reaction_r5a_d5=150.0;

	reaction_r5a=compartment_compartment*(reaction_r5a_a5*x(6)*x(4)-reaction_r5a_d5*x(16));

% Reaction: id = r5b, name = phosphorylation of P-MAPKK	% Local Parameter:   id =  k5, name = k5
	reaction_r5b_k5=150.0;

	reaction_r5b=compartment_compartment*reaction_r5b_k5*x(16);

% Reaction: id = r6a, name = binding MAPKK-Pase and PP-MAPKK	% Local Parameter:   id =  a6, name = a6
	reaction_r6a_a6=1000.0;
	% Local Parameter:   id =  d6, name = d6
	reaction_r6a_d6=150.0;

	reaction_r6a=compartment_compartment*(reaction_r6a_a6*x(7)*x(12)-reaction_r6a_d6*x(19));

% Reaction: id = r6b, name = dephosphorylation of PP-MAPKK	% Local Parameter:   id =  k6, name = k6
	reaction_r6b_k6=150.0;

	reaction_r6b=compartment_compartment*reaction_r6b_k6*x(19);

% Reaction: id = r7a, name = binding MAPK and PP-MAPKK	% Local Parameter:   id =  a7, name = a7
	reaction_r7a_a7=1000.0;
	% Local Parameter:   id =  d7, name = d7
	reaction_r7a_d7=150.0;

	reaction_r7a=compartment_compartment*(reaction_r7a_a7*x(8)*x(7)-reaction_r7a_d7*x(17));

% Reaction: id = r7b, name = phosphorylation of MAPK	% Local Parameter:   id =  k7, name = k7
	reaction_r7b_k7=150.0;

	reaction_r7b=compartment_compartment*reaction_r7b_k7*x(17);

% Reaction: id = r8a, name = binding MAPK-Pase and P-MAPK	% Local Parameter:   id =  a8, name = a8
	reaction_r8a_a8=1000.0;
	% Local Parameter:   id =  d8, name = d8
	reaction_r8a_d8=150.0;

	reaction_r8a=compartment_compartment*(reaction_r8a_a8*x(9)*x(11)-reaction_r8a_d8*x(22));

% Reaction: id = r8b, name = dephosphorylation of P-MAPK	% Local Parameter:   id =  k8, name = k8
	reaction_r8b_k8=150.0;

	reaction_r8b=compartment_compartment*reaction_r8b_k8*x(22);

% Reaction: id = r9a, name = binding PP-MAPKK and P-MAPK	% Local Parameter:   id =  a9, name = a9
	reaction_r9a_a9=1000.0;
	% Local Parameter:   id =  d9, name = d9
	reaction_r9a_d9=150.0;

	reaction_r9a=compartment_compartment*(reaction_r9a_a9*x(9)*x(7)-reaction_r9a_d9*x(18));

% Reaction: id = r9b, name = phosphorylation of P-MAPK	% Local Parameter:   id =  k9, name = k9
	reaction_r9b_k9=150.0;

	reaction_r9b=compartment_compartment*reaction_r9b_k9*x(18);

% Reaction: id = r10a, name = binding MAPK-Pase and PP-MAPK	% Local Parameter:   id =  a10, name = a10
	reaction_r10a_a10=1000.0;
	% Local Parameter:   id =  d10, name = d10
	reaction_r10a_d10=150.0;

	reaction_r10a=compartment_compartment*(reaction_r10a_a10*x(10)*x(11)-reaction_r10a_d10*x(21));

% Reaction: id = r10b, name = dephosphorylation of PP-MAPK	% Local Parameter:   id =  k10, name = k10
	reaction_r10b_k10=150.0;

	reaction_r10b=compartment_compartment*reaction_r10b_k10*x(21);

	xdot=zeros(26,1);
	
% Species:   id = E1, name = MAPKKK activator (Ras), affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*((-1.0 * reaction_r1a) + ( 1.0 * reaction_r1b));
	
% Species:   id = E2, name = MAPKKK inactivator, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_r2a) + ( 1.0 * reaction_r2b));
	
% Species:   id = KKK, name = Mos, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_r1a) + ( 1.0 * reaction_r2b));
	
% Species:   id = P_KKK, name = Mos-P, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_r1b) + (-1.0 * reaction_r2a) + (-1.0 * reaction_r3a) + ( 1.0 * reaction_r3b) + (-1.0 * reaction_r5a) + ( 1.0 * reaction_r5b));
	
% Species:   id = KK, name = Mek1, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*((-1.0 * reaction_r3a) + ( 1.0 * reaction_r4b));
	
% Species:   id = P_KK, name = Mek1-P, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_r3b) + (-1.0 * reaction_r4a) + (-1.0 * reaction_r5a) + ( 1.0 * reaction_r6b));
	
% Species:   id = PP_KK, name = Mek1-PP, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_r5b) + (-1.0 * reaction_r6a) + (-1.0 * reaction_r7a) + ( 1.0 * reaction_r7b) + (-1.0 * reaction_r9a) + ( 1.0 * reaction_r9b));
	
% Species:   id = K, name = Erk2, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*((-1.0 * reaction_r7a) + ( 1.0 * reaction_r8b));
	
% Species:   id = P_K, name = Erk2-P, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_r7b) + (-1.0 * reaction_r8a) + (-1.0 * reaction_r9a) + ( 1.0 * reaction_r10b));
	
% Species:   id = PP_K, name = Erk2-PP, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_r9b) + (-1.0 * reaction_r10a));
	
% Species:   id = KPase, name = MAPK-Pase, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*((-1.0 * reaction_r8a) + ( 1.0 * reaction_r8b) + (-1.0 * reaction_r10a) + ( 1.0 * reaction_r10b));
	
% Species:   id = KKPase, name = MAPKK-Pase, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*((-1.0 * reaction_r4a) + ( 1.0 * reaction_r4b) + (-1.0 * reaction_r6a) + ( 1.0 * reaction_r6b));
	
% Species:   id = E1_KKK, name = E1_Mos, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_r1a) + (-1.0 * reaction_r1b));
	
% Species:   id = E2_P_KKK, name = E2_Mos-P, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_r2a) + (-1.0 * reaction_r2b));
	
% Species:   id = P_KKK_KK, name = P-Mos_Mek1, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*(( 1.0 * reaction_r3a) + (-1.0 * reaction_r3b));
	
% Species:   id = P_KKK_P_KK, name = P-Mos_P-Mek1, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*(( 1.0 * reaction_r5a) + (-1.0 * reaction_r5b));
	
% Species:   id = PP_KK_K, name = PP-Mek1_Erk2, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*(( 1.0 * reaction_r7a) + (-1.0 * reaction_r7b));
	
% Species:   id = PP_KK_P_K, name = PP-Mek1_P-Erk2, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment))*(( 1.0 * reaction_r9a) + (-1.0 * reaction_r9b));
	
% Species:   id = KKPase_PP_KK, name = MAPKK-Pase_PP-Mek1, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment))*(( 1.0 * reaction_r6a) + (-1.0 * reaction_r6b));
	
% Species:   id = KKPase_P_KK, name = MAPKK-Pase_P-Mek1, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment))*(( 1.0 * reaction_r4a) + (-1.0 * reaction_r4b));
	
% Species:   id = KPase_PP_K, name = MAPK-Pase_PP-Erk2, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment))*(( 1.0 * reaction_r10a) + (-1.0 * reaction_r10b));
	
% Species:   id = KPase_P_K, name = MAPK-Pase_P-Erk2, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment))*(( 1.0 * reaction_r8a) + (-1.0 * reaction_r8b));
	
% Species:   id = K_PP_norm, name = K_PP_norm, defined in a rule 	xdot(23) = x(23);
	
% Species:   id = KK_PP_norm, name = KK_PP_norm, defined in a rule 	xdot(24) = x(24);
	
% Species:   id = KKK_P_norm, name = KKK_P_norm, defined in a rule 	xdot(25) = x(25);
	
% Species:   id = rel_K_PP_max, name = relative maximal K_PP, defined in a rule 	xdot(26) = x(26);
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


