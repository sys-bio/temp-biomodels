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
% Model name = Mandlik2015 - Tristable genetic circuit of Leishmania
%
% is http://identifiers.org/biomodels.db/MODEL1507170000
% is http://identifiers.org/biomodels.db/BIOMD0000000584
% isDescribedBy http://identifiers.org/pubmed/26264745
%


function main()
%Initial conditions vector
	x0=zeros(35,1);
	x0(1) = 10.0;
	x0(2) = 10000.0;
	x0(3) = 10.0;
	x0(4) = 10.0;
	x0(5) = 10.0;
	x0(6) = 10.0;
	x0(7) = 10.0;
	x0(8) = 10.0;
	x0(9) = 100.0;
	x0(10) = 100.0;
	x0(11) = 5.0;
	x0(12) = 10.0;
	x0(13) = 10.0;
	x0(14) = 10.0;
	x0(15) = 10.0;
	x0(16) = 10.0;
	x0(17) = 10.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 10.0;
	x0(25) = 10.0;
	x0(26) = 10.0;
	x0(27) = 10.0;
	x0(28) = 10.0;
	x0(29) = 10.0;
	x0(30) = 10.0;
	x0(31) = 10.0;
	x0(32) = 10.0;
	x0(33) = 10.0;
	x0(34) = 10.0;
	x0(35) = 10.0;


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

% Compartment: id = DefaultCompartment, name = DefaultCompartment, constant
	compartment_DefaultCompartment=1.0;
% Parameter:   id =  tr3_Kd, name = tr3_Kd
	global_par_tr3_Kd=1.0;
% Parameter:   id =  tr3_h, name = tr3_h
	global_par_tr3_h=2.0;
% Parameter:   id =  tr4_Kd, name = tr4_Kd
	global_par_tr4_Kd=1.0;
% Parameter:   id =  tr4_h, name = tr4_h
	global_par_tr4_h=2.0;
% Parameter:   id =  pSLS4_strength, name = pSLS4_strength
	global_par_pSLS4_strength=2.57;
% Parameter:   id =  tr5_Kd, name = tr5_Kd
	global_par_tr5_Kd=1.0;
% Parameter:   id =  tr5_h, name = tr5_h
	global_par_tr5_h=2.0;
% Parameter:   id =  tr6_Kd, name = tr6_Kd
	global_par_tr6_Kd=1.0;
% Parameter:   id =  tr6_h, name = tr6_h
	global_par_tr6_h=2.0;
% Parameter:   id =  p1_strength, name = p1_strength
	global_par_p1_strength=2.5;
% Parameter:   id =  p2_strength, name = p2_strength
	global_par_p2_strength=2.4;
% Parameter:   id =  proLACI_degradation_rate, name = proLACI_degradation_rate
	global_par_proLACI_degradation_rate=0.07;
% Parameter:   id =  p3_strength, name = p3_strength
	global_par_p3_strength=2.5;
% Parameter:   id =  proSLS1_degradation_rate, name = proSLS1_degradation_rate
	global_par_proSLS1_degradation_rate=0.07;
% Parameter:   id =  proSLS4_degradation_rate, name = proSLS4_degradation_rate
	global_par_proSLS4_degradation_rate=0.04;
% Parameter:   id =  proLAMDAR_degradation_rate, name = proLAMDAR_degradation_rate
	global_par_proLAMDAR_degradation_rate=0.0415;
% Parameter:   id =  proAUR1_degradation_rate, name = proAUR1_degradation_rate
	global_par_proAUR1_degradation_rate=0.1;
% Parameter:   id =  ia1_Kd, name = ia1_Kd
	global_par_ia1_Kd=0.001;
% Parameter:   id =  ia1_repression_Kd, name = ia1_repression_Kd
	global_par_ia1_repression_Kd=1.0;
% Parameter:   id =  ia1_repression_h, name = ia1_repression_h
	global_par_ia1_repression_h=2.0;
% Parameter:   id =  pAUR1_strength, name = pAUR1_strength
	global_par_pAUR1_strength=2.014;
% Parameter:   id =  proTETR_degradation_rate, name = proTETR_degradation_rate
	global_par_proTETR_degradation_rate=0.08;
% Parameter:   id =  ta1_Kd, name = ta1_Kd
	global_par_ta1_Kd=1.0;
% Parameter:   id =  ta1_h, name = ta1_h
	global_par_ta1_h=2.0;
% Parameter:   id =  pp2_translation_rate, name = pp2_translation_rate
	global_par_pp2_translation_rate=1.0;
% Parameter:   id =  pp3_translation_rate, name = pp3_translation_rate
	global_par_pp3_translation_rate=1.0;
% Parameter:   id =  pp4_translation_rate, name = pp4_translation_rate
	global_par_pp4_translation_rate=1.0;
% Parameter:   id =  pp5_translation_rate, name = pp5_translation_rate
	global_par_pp5_translation_rate=1.0;
% Parameter:   id =  pp6_translation_rate, name = pp6_translation_rate
	global_par_pp6_translation_rate=1.0;
% Parameter:   id =  tr1_Kd, name = tr1_Kd
	global_par_tr1_Kd=1.0;
% Parameter:   id =  tr1_h, name = tr1_h
	global_par_tr1_h=2.0;
% Parameter:   id =  pSLS1_strength, name = pSLS1_strength
	global_par_pSLS1_strength=2.5;
% Parameter:   id =  tr2_Kd, name = tr2_Kd
	global_par_tr2_Kd=1.0;
% Parameter:   id =  tr2_h, name = tr2_h
	global_par_tr2_h=2.0;
% assignmentRule: variable = rs6
	x(29)=1/(1+(x(23)/global_par_tr4_Kd)^global_par_tr4_h);
% assignmentRule: variable = rs3
	x(26)=1/(1+(x(19)/global_par_tr6_Kd)^global_par_tr6_h);
% assignmentRule: variable = rs4
	x(27)=1/(1+(x(20)/global_par_tr5_Kd)^global_par_tr5_h);
% assignmentRule: variable = rs5
	x(28)=1/(1+(x(19)/global_par_tr3_Kd)^global_par_tr3_h);
% assignmentRule: variable = LAMDAR
	x(4)=global_par_p1_strength*x(29);
% assignmentRule: variable = LACI
	x(3)=global_par_p2_strength*x(27);
% assignmentRule: variable = TETR
	x(7)=global_par_p3_strength*x(28);
% assignmentRule: variable = rs1
	x(24)=1/(1+(x(21)/global_par_tr1_Kd)^global_par_tr1_h);
% assignmentRule: variable = rs2
	x(25)=1/(1+(x(18)/global_par_tr2_Kd)^global_par_tr2_h);
% assignmentRule: variable = ope1
	x(11)=1/(1+(x(9)/global_par_ia1_repression_Kd)^global_par_ia1_repression_h);
% assignmentRule: variable = as1
	x(8)=(1+(x(22)/global_par_ta1_Kd)^global_par_ta1_h-1)/(1+(x(22)/global_par_ta1_Kd)^global_par_ta1_h);
% assignmentRule: variable = SLS1
	x(5)=global_par_pSLS1_strength*x(8)*x(11)*x(26);
% assignmentRule: variable = SLS4
	x(6)=global_par_pSLS4_strength*x(25);
% assignmentRule: variable = AUR1
	x(1)=global_par_pAUR1_strength*x(24);

% Reaction: id = pp1_v1, name = pp1_v1
	reaction_pp1_v1=1;

% Reaction: id = pp1_v2, name = pp1_v2
	reaction_pp1_v2=global_par_proSLS1_degradation_rate*x(21);

% Reaction: id = pp5_v1, name = pp5_v1
	reaction_pp5_v1=global_par_pp5_translation_rate*global_par_p1_strength*x(4);

% Reaction: id = pp5_v2, name = pp5_v2
	reaction_pp5_v2=global_par_proLAMDAR_degradation_rate*x(20);

% Reaction: id = ia1_bind_forward, name = ia1_bind_forward
	reaction_ia1_bind_forward=x(2)*x(9);

% Reaction: id = ia1_bind_reverse, name = ia1_bind_reverse
	reaction_ia1_bind_reverse=global_par_ia1_Kd*x(10);

% Reaction: id = pp2_v1, name = pp2_v1
	reaction_pp2_v1=global_par_pp2_translation_rate*global_par_pAUR1_strength*x(1);

% Reaction: id = pp2_v2, name = pp2_v2
	reaction_pp2_v2=global_par_proAUR1_degradation_rate*x(18);

% Reaction: id = pp6_v1, name = pp6_v1
	reaction_pp6_v1=global_par_pp6_translation_rate*global_par_p3_strength*x(7);

% Reaction: id = pp6_v2, name = pp6_v2
	reaction_pp6_v2=global_par_proTETR_degradation_rate*x(23);

% Reaction: id = pp3_v1, name = pp3_v1
	reaction_pp3_v1=global_par_pp3_translation_rate*global_par_pSLS4_strength*x(6);

% Reaction: id = pp3_v2, name = pp3_v2
	reaction_pp3_v2=global_par_proSLS4_degradation_rate*x(22);

% Reaction: id = pp4_v1, name = pp4_v1
	reaction_pp4_v1=global_par_pp4_translation_rate*global_par_p2_strength*x(3);

% Reaction: id = pp4_v2, name = pp4_v2
	reaction_pp4_v2=global_par_proLACI_degradation_rate*x(19);

	xdot=zeros(35,1);
	
% Species:   id = AUR1, name = AUR1, involved in a rule 	xdot(1) = x(1);
	
% Species:   id = IPTG, name = IPTG, affected by kineticLaw
	xdot(2) = (1/(compartment_DefaultCompartment))*((-1.0 * reaction_ia1_bind_forward) + ( 1.0 * reaction_ia1_bind_reverse));
	
% Species:   id = LACI, name = LACI, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = LAMDAR, name = LAMDAR, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = SLS1, name = SLS1, involved in a rule 	xdot(5) = x(5);
	
% Species:   id = SLS4, name = SLS4, involved in a rule 	xdot(6) = x(6);
	
% Species:   id = TETR, name = TETR, involved in a rule 	xdot(7) = x(7);
	
% Species:   id = as1, name = as1, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = ia1_ActiveTF, name = ia1_ActiveTF, affected by kineticLaw
	xdot(9) = (1/(compartment_DefaultCompartment))*((-1.0 * reaction_ia1_bind_forward) + ( 1.0 * reaction_ia1_bind_reverse));
	
% Species:   id = ia1_InactiveTF, name = ia1_InactiveTF, affected by kineticLaw
	xdot(10) = (1/(compartment_DefaultCompartment))*(( 1.0 * reaction_ia1_bind_forward) + (-1.0 * reaction_ia1_bind_reverse));
	
% Species:   id = ope1, name = ope1, involved in a rule 	xdot(11) = x(11);
	
% Species:   id = p1, name = p1
% Warning species is not changed by either rules or reactions
	xdot(12) = ;
	
% Species:   id = p2, name = p2
% Warning species is not changed by either rules or reactions
	xdot(13) = ;
	
% Species:   id = p3, name = p3
% Warning species is not changed by either rules or reactions
	xdot(14) = ;
	
% Species:   id = pAUR1, name = pAUR1
% Warning species is not changed by either rules or reactions
	xdot(15) = ;
	
% Species:   id = pSLS1, name = pSLS1
% Warning species is not changed by either rules or reactions
	xdot(16) = ;
	
% Species:   id = pSLS4, name = pSLS4
% Warning species is not changed by either rules or reactions
	xdot(17) = ;
	
% Species:   id = proAUR1, name = proAUR1, affected by kineticLaw
	xdot(18) = (1/(compartment_DefaultCompartment))*(( 1.0 * reaction_pp2_v1) + (-1.0 * reaction_pp2_v2));
	
% Species:   id = proLACI, name = proLACI, affected by kineticLaw
	xdot(19) = (1/(compartment_DefaultCompartment))*(( 1.0 * reaction_pp4_v1) + (-1.0 * reaction_pp4_v2));
	
% Species:   id = proLAMDAR, name = proLAMDAR, affected by kineticLaw
	xdot(20) = (1/(compartment_DefaultCompartment))*(( 1.0 * reaction_pp5_v1) + (-1.0 * reaction_pp5_v2));
	
% Species:   id = proSLS1, name = proSLS1, affected by kineticLaw
	xdot(21) = (1/(compartment_DefaultCompartment))*(( 1.0 * reaction_pp1_v1) + (-1.0 * reaction_pp1_v2));
	
% Species:   id = proSLS4, name = proSLS4, affected by kineticLaw
	xdot(22) = (1/(compartment_DefaultCompartment))*(( 1.0 * reaction_pp3_v1) + (-1.0 * reaction_pp3_v2));
	
% Species:   id = proTETR, name = proTETR, affected by kineticLaw
	xdot(23) = (1/(compartment_DefaultCompartment))*(( 1.0 * reaction_pp6_v1) + (-1.0 * reaction_pp6_v2));
	
% Species:   id = rs1, name = rs1, involved in a rule 	xdot(24) = x(24);
	
% Species:   id = rs2, name = rs2, involved in a rule 	xdot(25) = x(25);
	
% Species:   id = rs3, name = rs3, involved in a rule 	xdot(26) = x(26);
	
% Species:   id = rs4, name = rs4, involved in a rule 	xdot(27) = x(27);
	
% Species:   id = rs5, name = rs5, involved in a rule 	xdot(28) = x(28);
	
% Species:   id = rs6, name = rs6, involved in a rule 	xdot(29) = x(29);
	
% Species:   id = ter1, name = ter1
% Warning species is not changed by either rules or reactions
	xdot(30) = ;
	
% Species:   id = ter2, name = ter2
% Warning species is not changed by either rules or reactions
	xdot(31) = ;
	
% Species:   id = ter3, name = ter3
% Warning species is not changed by either rules or reactions
	xdot(32) = ;
	
% Species:   id = ter4, name = ter4
% Warning species is not changed by either rules or reactions
	xdot(33) = ;
	
% Species:   id = ter5, name = ter5
% Warning species is not changed by either rules or reactions
	xdot(34) = ;
	
% Species:   id = ter6, name = ter6
% Warning species is not changed by either rules or reactions
	xdot(35) = ;
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


