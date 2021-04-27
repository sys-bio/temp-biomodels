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
% Model name = Schmierer_2008_Smad_Tgfb
%
% is http://identifiers.org/biomodels.db/MODEL0451870146
% is http://identifiers.org/biomodels.db/BIOMD0000000173
% isDescribedBy http://identifiers.org/pubmed/18443295
%


function main()
%Initial conditions vector
	x0=zeros(24,1);
	x0(1) = 28.514773357617;
	x0(2) = 0.0;
	x0(3) = 28.514773357617;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 50.78093897;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 50.78103407;
	x0(14) = 60.5899176013587;
	x0(15) = 0.0;
	x0(16) = 60.5899176013587;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 1.0;
	x0(23) = 0.0;
	x0(24) = 0.0;


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

% Compartment: id = nucleus, name = Nuc, constant
	compartment_nucleus=1.0E-12;
% Compartment: id = cytosol, name = Cyt, constant
	compartment_cytosol=2.27E-12;
% Parameter:   id =  kin, name = kin (import rate for monomeric Smads)
	global_par_kin=5.93E-15;
% Parameter:   id =  kex, name = kex (export rate for monomeric Smads)
	global_par_kex=1.26E-14;
% Parameter:   id =  kphos, name = kphos (phosphorylation rate)
	global_par_kphos=4.037081673984E-4;
% Parameter:   id =  kdephos, name = kdephos (dephosphorylation rate)
	global_par_kdephos=0.00656639;
% Parameter:   id =  kin_CIF, name = kin*CIF (Complex import rate)
	global_par_kin_CIF=3.36347821E-14;
% Parameter:   id =  kon, name = kon (Smad complex on-rate)
	global_par_kon=0.00183925592901392;
% Parameter:   id =  koff, name = koff (Smad complex off-rate)
	global_par_koff=0.016;
% Parameter:   id =  CIF, name = CIF (complex import factor)
% Parameter:   id =  K_diss, name = Kdiss (dissociation constant of Smad complexes)
% Parameter:   id =  kon_SB, name = kon_SB (on-rate of the SB/receptor interaction)
	global_par_kon_SB=0.146422317103884;
% Parameter:   id =  koff_SB, name = koff_SB (off-rate of the SB/receptor interaction)
	global_par_koff_SB=100.0;
% Parameter:   id =  k_TGFb, name = k_TGFb (rate of TGFb binding to receptors)
	global_par_k_TGFb=0.07423555020288;
% Parameter:   id =  K_dissSB, name = Kdiss SB (dissociation constant of the SB/receptor interaction)
% Parameter:   id =  ntoN, name = quantity to number factor
	global_par_ntoN=6.0221415E14;
% Parameter:   id =  SB_0, name = SB conc at start
	global_par_SB_0=0.0;
% Parameter:   id =  SB_add, name = SB conc after addition
	global_par_SB_add=10000.0;
% Parameter:   id =  t_SB, name = time of SB addition
	global_par_t_SB=2700.0;
% assignmentRule: variable = CIF
	global_par_CIF=global_par_kin_CIF/global_par_kin;
% assignmentRule: variable = K_diss
	global_par_K_diss=global_par_koff/global_par_kon;
% assignmentRule: variable = K_dissSB
	global_par_K_dissSB=global_par_koff_SB/global_par_kon_SB;
% assignmentRule: variable = SB
	x(24)=piecewise(global_par_SB_add, time > global_par_t_SB, global_par_SB_0);

% Reaction: id = reaction_1, name = Reaction  7 Shuttling S4
	reaction_reaction_1=global_par_kin*x(13)-global_par_kin*x(7);

% Reaction: id = reaction_2, name = Reaction  5A Shuttling S2
	reaction_reaction_2=global_par_kin*x(14)-global_par_kex*x(1);

% Reaction: id = reaction_3, name = Reaction  6A Shuttling pS2
	reaction_reaction_3=global_par_kin*x(15)-global_par_kex*x(2);

% Reaction: id = reaction_4, name = Reaction  2A Phosphorylation S2
	reaction_reaction_4=compartment_cytosol*global_par_kphos*x(21)*x(14);

% Reaction: id = reaction_5, name = Reaction  3A Formation S24_C
	reaction_reaction_5=compartment_cytosol*(global_par_kon*x(15)*x(13)-global_par_koff*x(12));

% Reaction: id = reaction_6, name = Reaction  3B Formation S24_N
	reaction_reaction_6=compartment_nucleus*(global_par_kon*x(2)*x(7)-global_par_koff*x(6));

% Reaction: id = reaction_7, name = Reaction  8A Import S24
	reaction_reaction_7=global_par_kin_CIF*x(12);

% Reaction: id = reaction_8, name = Reaction  9A Import S22
	reaction_reaction_8=global_par_kin_CIF*x(11);

% Reaction: id = reaction_9, name = Reaction  4A Formation S22_C
	reaction_reaction_9=compartment_cytosol*(global_par_kon*x(15)*x(15)-global_par_koff*x(11));

% Reaction: id = reaction_10, name = Reaction  4B Formation S22_N
	reaction_reaction_10=compartment_nucleus*(global_par_kon*x(2)*x(2)-global_par_koff*x(5));

% Reaction: id = reaction_11, name = Reaction 10A Dephos pS2 Nuc
	reaction_reaction_11=compartment_nucleus*global_par_kdephos*x(2)*const_species_PPase;

% Reaction: id = reaction_12, name = Reaction  1 TGFb Binding
	reaction_reaction_12=compartment_cytosol*global_par_k_TGFb*x(22)*const_species_TGFb_c;

% Reaction: id = reaction_13, name = Reaction 11 Receptor Inhibition
	reaction_reaction_13=compartment_cytosol*(global_par_kon_SB*x(21)*x(24)-global_par_koff_SB*x(23));

% Reaction: id = reaction_14, name = Reaction  2B Phosphorylation GS2
	reaction_reaction_14=compartment_cytosol*global_par_kphos*x(16)*x(21);

% Reaction: id = reaction_15, name = Reaction 10B Dephos pG Nuc
	reaction_reaction_15=compartment_nucleus*global_par_kdephos*x(4)*const_species_PPase;

% Reaction: id = reaction_16, name = Reaction  5B Shuttling G
	reaction_reaction_16=global_par_kin*x(16)-global_par_kex*x(3);

% Reaction: id = reaction_17, name = Reaction  6B Shuttling pG
	reaction_reaction_17=global_par_kin*x(17)-global_par_kex*x(4);

% Reaction: id = reaction_18, name = Reaction  4E Formation GG_C
	reaction_reaction_18=compartment_cytosol*(global_par_kon*x(17)*x(17)-global_par_koff*x(20));

% Reaction: id = reaction_19, name = Reaction  4F Formation GG_N
	reaction_reaction_19=compartment_nucleus*(global_par_kon*x(4)*x(4)-global_par_koff*x(10));

% Reaction: id = reaction_20, name = Reaction  4C Formation G2_C
	reaction_reaction_20=compartment_cytosol*(global_par_kon*x(15)*x(17)-global_par_koff*x(18));

% Reaction: id = reaction_21, name = Reaction  4D Formation G2_N
	reaction_reaction_21=compartment_nucleus*(global_par_kon*x(2)*x(4)-global_par_koff*x(8));

% Reaction: id = reaction_22, name = Reaction  3C Formation G4_C
	reaction_reaction_22=compartment_cytosol*(global_par_kon*x(17)*x(13)-global_par_koff*x(19));

% Reaction: id = reaction_23, name = Reaction  3D Formation G4_N
	reaction_reaction_23=compartment_nucleus*(global_par_kon*x(4)*x(7)-global_par_koff*x(9));

% Reaction: id = reaction_24, name = Reaction  9C Import GG
	reaction_reaction_24=global_par_kin_CIF*x(20);

% Reaction: id = reaction_25, name = Reaction  9B Import G2
	reaction_reaction_25=global_par_kin_CIF*x(18);

% Reaction: id = reaction_26, name = Reaction  8B Import G4
	reaction_reaction_26=global_par_kin_CIF*x(19);

% Species:   id = PPase, name = PPase, constant	const_species_PPase=1.0;

% Species:   id = TGFb_c, name = TGFb_c, constant	const_species_TGFb_c=0.0659999824780232;

	xdot=zeros(24,1);
	
% Species:   id = S2_n, name = Smad2_n, affected by kineticLaw
	xdot(1) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_2) + ( 1.0 * reaction_reaction_11));
	
% Species:   id = pS2_n, name = pSmad2_n, affected by kineticLaw
	xdot(2) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_6) + (-2.0 * reaction_reaction_10) + (-1.0 * reaction_reaction_11) + (-1.0 * reaction_reaction_21));
	
% Species:   id = G_n, name = GFP-Smad2_n, affected by kineticLaw
	xdot(3) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_16));
	
% Species:   id = pG_n, name = pGFP-Smad2_n, affected by kineticLaw
	xdot(4) = (1/(compartment_nucleus))*((-1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_17) + (-2.0 * reaction_reaction_19) + (-1.0 * reaction_reaction_21) + (-1.0 * reaction_reaction_23));
	
% Species:   id = S22_n, name = pSmad2/pSmad2_n, affected by kineticLaw
	xdot(5) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_10));
	
% Species:   id = S24_n, name = pSmad2/Smad4_n, affected by kineticLaw
	xdot(6) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_7));
	
% Species:   id = S4_n, name = Smad4_n, affected by kineticLaw
	xdot(7) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_23));
	
% Species:   id = G2_n, name = pGFP-Smad2/pSmad2_n, affected by kineticLaw
	xdot(8) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_21) + ( 1.0 * reaction_reaction_25));
	
% Species:   id = G4_n, name = pGFP-Smad2/Smad4_n, affected by kineticLaw
	xdot(9) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_23) + ( 1.0 * reaction_reaction_26));
	
% Species:   id = GG_n, name = pGFP-Smad2/pGFP_Smad2_n, affected by kineticLaw
	xdot(10) = (1/(compartment_nucleus))*(( 1.0 * reaction_reaction_19) + ( 1.0 * reaction_reaction_24));
	
% Species:   id = S22_c, name = pSmad2/pSmad2_c, affected by kineticLaw
	xdot(11) = (1/(compartment_cytosol))*((-1.0 * reaction_reaction_8) + ( 1.0 * reaction_reaction_9));
	
% Species:   id = S24_c, name = pSmad2/Smad4_c, affected by kineticLaw
	xdot(12) = (1/(compartment_cytosol))*(( 1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_7));
	
% Species:   id = S4_c, name = Smad4_c, affected by kineticLaw
	xdot(13) = (1/(compartment_cytosol))*((-1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_5) + (-1.0 * reaction_reaction_22));
	
% Species:   id = S2_c, name = Smad2_c, affected by kineticLaw
	xdot(14) = (1/(compartment_cytosol))*((-1.0 * reaction_reaction_2) + (-1.0 * reaction_reaction_4));
	
% Species:   id = pS2_c, name = pSmad2_c, affected by kineticLaw
	xdot(15) = (1/(compartment_cytosol))*((-1.0 * reaction_reaction_3) + ( 1.0 * reaction_reaction_4) + (-1.0 * reaction_reaction_5) + (-2.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_20));
	
% Species:   id = G_c, name = GFP-Smad2_c, affected by kineticLaw
	xdot(16) = (1/(compartment_cytosol))*((-1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_16));
	
% Species:   id = pG_c, name = pGFP-Smad2_c, affected by kineticLaw
	xdot(17) = (1/(compartment_cytosol))*(( 1.0 * reaction_reaction_14) + (-1.0 * reaction_reaction_17) + (-2.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_22));
	
% Species:   id = G2_c, name = pGFP-Smad2/pSmad2_c, affected by kineticLaw
	xdot(18) = (1/(compartment_cytosol))*(( 1.0 * reaction_reaction_20) + (-1.0 * reaction_reaction_25));
	
% Species:   id = G4_c, name = pGFP-Smad2/Smad4_c, affected by kineticLaw
	xdot(19) = (1/(compartment_cytosol))*(( 1.0 * reaction_reaction_22) + (-1.0 * reaction_reaction_26));
	
% Species:   id = GG_c, name = pGFP-Smad2/pGFP-Smad2_c, affected by kineticLaw
	xdot(20) = (1/(compartment_cytosol))*(( 1.0 * reaction_reaction_18) + (-1.0 * reaction_reaction_24));
	
% Species:   id = R_act, name = R_act, affected by kineticLaw
	xdot(21) = (1/(compartment_cytosol))*((-1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_4) + ( 1.0 * reaction_reaction_12) + (-1.0 * reaction_reaction_13) + (-1.0 * reaction_reaction_14) + ( 1.0 * reaction_reaction_14));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(22) = (1/(compartment_cytosol))*((-1.0 * reaction_reaction_12));
	
% Species:   id = R_inact, name = R_inact, affected by kineticLaw
	xdot(23) = (1/(compartment_cytosol))*(( 1.0 * reaction_reaction_13));
	
% Species:   id = SB, name = SB-431542, involved in a rule 	xdot(24) = x(24);
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


