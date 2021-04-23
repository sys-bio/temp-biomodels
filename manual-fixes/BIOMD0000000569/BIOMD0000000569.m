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
% Model name = Dutta-Roy2015 - Opening of the multiple AMPA receptor conductance states
%
% is http://identifiers.org/biomodels.db/MODEL1407160000
% is http://identifiers.org/biomodels.db/BIOMD0000000569
% isDescribedBy http://identifiers.org/pubmed/25629405
%


function main()
%Initial conditions vector
	x0=zeros(21,1);
	x0(1) = 8.30269391581363E-7;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 8.30269391581363E-4;


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

% Compartment: id = synapse, name = synapse, constant
	compartment_synapse=1.0E-16;
% Parameter:   id =  Bkon, name = Bkon
	global_par_Bkon=5000000.0;
% Parameter:   id =  Bkoff, name = Bkoff
	global_par_Bkoff=4495.0;
% Parameter:   id =  Skon, name = Skon
	global_par_Skon=5000000.0;
% Parameter:   id =  Skoff, name = Skoff
	global_par_Skoff=270.4;
% Parameter:   id =  Mkon, name = Mkon
	global_par_Mkon=5000000.0;
% Parameter:   id =  Mkoff, name = Mkoff
	global_par_Mkoff=16.65;
% Parameter:   id =  Lkon, name = Lkon
	global_par_Lkon=5000000.0;
% Parameter:   id =  Lkoff, name = Lkoff
	global_par_Lkoff=1.149;
% Parameter:   id =  BSk0, name = BSk0
	global_par_BSk0=1083.603;
% Parameter:   id =  SBk0, name = SBk0
	global_par_SBk0=238094.578918663;
% Parameter:   id =  BSk1, name = BSk1
	global_par_BSk1=4420.10883237053;
% Parameter:   id =  SBk1, name = SBk1
	global_par_SBk1=58369.6035062632;
% Parameter:   id =  BSk2, name = BSk2
	global_par_BSk2=18030.0;
% Parameter:   id =  SBk2, name = SBk2
	global_par_SBk2=14309.4841930116;
% Parameter:   id =  BSk3, name = BSk3
	global_par_BSk3=73545.9040327876;
% Parameter:   id =  SBk3, name = SBk3
	global_par_SBk3=3508.01317072642;
% Parameter:   id =  BSk4, name = BSk4
	global_par_BSk4=300000.0;
% Parameter:   id =  SBk4, name = SBk4
	global_par_SBk4=860.0;
% Parameter:   id =  SMk0, name = SMk0
	global_par_SMk0=75.8912;
% Parameter:   id =  MSk0, name = MSk0
	global_par_MSk0=38212.5990892225;
% Parameter:   id =  SMk1, name = SMk1
	global_par_SMk1=305.774358637215;
% Parameter:   id =  MSk1, name = MSk1
	global_par_MSk1=9484.11767724676;
% Parameter:   id =  SMk2, name = SMk2
	global_par_SMk2=1232.0;
% Parameter:   id =  MSk2, name = MSk2
	global_par_MSk2=2353.8961038961;
% Parameter:   id =  SMk3, name = SMk3
	global_par_SMk3=4963.86945839634;
% Parameter:   id =  MSk3, name = MSk3
	global_par_MSk3=584.221648918401;
% Parameter:   id =  SMk4, name = SMk4
	global_par_SMk4=20000.0;
% Parameter:   id =  MSk4, name = MSk4
	global_par_MSk4=145.0;
% Parameter:   id =  MLk0, name = MLk0
	global_par_MLk0=238.05;
% Parameter:   id =  LMk0, name = LMk0
	global_par_LMk0=145137.576139466;
% Parameter:   id =  MLk1, name = MLk1
	global_par_MLk1=906.240862022895;
% Parameter:   id =  LMk1, name = LMk1
	global_par_LMk1=38124.5223514619;
% Parameter:   id =  MLk2, name = MLk2
	global_par_MLk2=3450.0;
% Parameter:   id =  LMk2, name = LMk2
	global_par_LMk2=10014.4927536232;
% Parameter:   id =  MLk3, name = MLk3
	global_par_MLk3=13133.9255365637;
% Parameter:   id =  LMk3, name = LMk3
	global_par_LMk3=2630.59204225087;
% Parameter:   id =  MLk4, name = MLk4
	global_par_MLk4=50000.0;
% Parameter:   id =  LMk4, name = LMk4
	global_par_LMk4=691.0;
% Parameter:   id =  BSc, name = BSc
	global_par_BSc=0.0601;
% Parameter:   id =  SMc, name = SMc
	global_par_SMc=0.0616;
% Parameter:   id =  MLc, name = MLc
	global_par_MLc=0.069;
% Parameter:   id =  p, name = p
	global_par_p=0.5;

% Reaction: id = B0____S0, name = B0 -> S0
	reaction_B0____S0=compartment_synapse*global_par_BSk0*x(1);

% Reaction: id = S0____B0, name = S0 -> B0
	reaction_S0____B0=compartment_synapse*global_par_SBk0*x(2);

% Reaction: id = B1____S1, name = B1 -> S1
	reaction_B1____S1=compartment_synapse*global_par_BSk1*x(3);

% Reaction: id = S1____B1, name = S1 -> B1
	reaction_S1____B1=compartment_synapse*global_par_SBk1*x(4);

% Reaction: id = B2____S2, name = B2 -> S2
	reaction_B2____S2=compartment_synapse*global_par_BSk2*x(5);

% Reaction: id = S2____B2, name = S2 -> B2
	reaction_S2____B2=compartment_synapse*global_par_SBk2*x(6);

% Reaction: id = B3____S3, name = B3 -> S3
	reaction_B3____S3=compartment_synapse*global_par_BSk3*x(7);

% Reaction: id = S3____B3, name = S3 -> B3
	reaction_S3____B3=compartment_synapse*global_par_SBk3*x(8);

% Reaction: id = B4____S4, name = B4 -> S4
	reaction_B4____S4=compartment_synapse*global_par_BSk4*x(9);

% Reaction: id = S4____B4, name = S4 -> B4
	reaction_S4____B4=compartment_synapse*global_par_SBk4*x(10);

% Reaction: id = S0____M0, name = S0 -> M0
	reaction_S0____M0=compartment_synapse*global_par_SMk0*x(2);

% Reaction: id = M0____S0, name = M0 -> S0
	reaction_M0____S0=compartment_synapse*global_par_MSk0*x(11);

% Reaction: id = S1____M1, name = S1 -> M1
	reaction_S1____M1=compartment_synapse*global_par_SMk1*x(4);

% Reaction: id = M1____S1, name = M1 -> S1
	reaction_M1____S1=compartment_synapse*global_par_MSk1*x(12);

% Reaction: id = S2____M2, name = S2 -> M2
	reaction_S2____M2=compartment_synapse*global_par_SMk2*x(6);

% Reaction: id = M2____S2, name = M2 -> S2
	reaction_M2____S2=compartment_synapse*global_par_MSk2*x(13);

% Reaction: id = S3____M3, name = S3 -> M3 
	reaction_S3____M3=compartment_synapse*global_par_SMk3*x(8);

% Reaction: id = M3____S3, name = M3 -> S3
	reaction_M3____S3=compartment_synapse*global_par_MSk3*x(14);

% Reaction: id = S4____M4, name = S4 -> M4
	reaction_S4____M4=compartment_synapse*global_par_SMk4*x(10);

% Reaction: id = M4____S4, name = M4 -> S4
	reaction_M4____S4=compartment_synapse*global_par_MSk4*x(15);

% Reaction: id = M0____L0, name = M0 -> L0
	reaction_M0____L0=compartment_synapse*global_par_MLk0*x(11);

% Reaction: id = L0____M0, name = L0 -> M0
	reaction_L0____M0=compartment_synapse*global_par_LMk0*x(16);

% Reaction: id = M1____L1, name = M1 -> L1
	reaction_M1____L1=compartment_synapse*global_par_MLk1*x(12);

% Reaction: id = L1____M1, name = L1 -> M1
	reaction_L1____M1=compartment_synapse*global_par_LMk1*x(17);

% Reaction: id = M2____L2, name = M2 -> L2
	reaction_M2____L2=compartment_synapse*global_par_MLk2*x(13);

% Reaction: id = L2____M2, name = L2 -> M2
	reaction_L2____M2=compartment_synapse*global_par_LMk2*x(18);

% Reaction: id = M3____L3, name = M3 -> L3
	reaction_M3____L3=compartment_synapse*global_par_MLk3*x(14);

% Reaction: id = L3____M3, name = L3 -> M3
	reaction_L3____M3=compartment_synapse*global_par_LMk3*x(19);

% Reaction: id = M4____L4, name = M4 -> L4
	reaction_M4____L4=compartment_synapse*global_par_MLk4*x(15);

% Reaction: id = L4____M4, name = L4 -> M4
	reaction_L4____M4=compartment_synapse*global_par_LMk4*x(20);

% Reaction: id = B0____B1, name = B0 -> B1
	reaction_B0____B1=compartment_synapse*Ligand_Binding_1(global_par_Bkon, x(1), x(21));

% Reaction: id = B1____B0, name = B1 -> B0
	reaction_B1____B0=compartment_synapse*Ligand_Unbinding_1(global_par_Bkoff, x(3));

% Reaction: id = B1____B2, name = B1 -> B2
	reaction_B1____B2=compartment_synapse*Ligand_Binding_2(global_par_Bkon, x(3), x(21));

% Reaction: id = B2____B1, name = B2 -> B1
	reaction_B2____B1=compartment_synapse*Ligand_Unbinding_2(global_par_Bkoff, x(5));

% Reaction: id = B2____B3, name = B2 -> B3
	reaction_B2____B3=compartment_synapse*Ligand_Binding_3(global_par_Bkon, x(5), x(21));

% Reaction: id = B3____B2, name = B3 -> B2
	reaction_B3____B2=compartment_synapse*Ligand_Unbinding_3(global_par_Bkoff, x(7));

% Reaction: id = B3____B4, name = B3 -> B4
	reaction_B3____B4=compartment_synapse*Ligand_Binding_4(global_par_Bkon, x(7), x(21));

% Reaction: id = B4____B3, name = B4 -> B3
	reaction_B4____B3=compartment_synapse*Ligand_Unbinding_4(global_par_Bkoff, x(9));

% Reaction: id = S0____S1, name = S0 -> S1
	reaction_S0____S1=compartment_synapse*Ligand_Binding_1(global_par_Skon, x(2), x(21));

% Reaction: id = S1____S0, name = S1 -> S0
	reaction_S1____S0=compartment_synapse*Ligand_Unbinding_1(global_par_Skoff, x(4));

% Reaction: id = S1____S2, name = S1 -> S2
	reaction_S1____S2=compartment_synapse*Ligand_Binding_2(global_par_Skon, x(4), x(21));

% Reaction: id = S2____S1, name = S2 -> S1
	reaction_S2____S1=compartment_synapse*Ligand_Unbinding_2(global_par_Skoff, x(6));

% Reaction: id = S2____S3, name = S2 -> S3
	reaction_S2____S3=compartment_synapse*Ligand_Binding_3(global_par_Skon, x(6), x(21));

% Reaction: id = S3____S2, name = S3 -> S2
	reaction_S3____S2=compartment_synapse*Ligand_Unbinding_3(global_par_Skoff, x(8));

% Reaction: id = S3____S4, name = S3 -> S4
	reaction_S3____S4=compartment_synapse*Ligand_Binding_4(global_par_Skon, x(8), x(21));

% Reaction: id = S4____S3, name = S4 -> S3
	reaction_S4____S3=compartment_synapse*Ligand_Unbinding_4(global_par_Skoff, x(10));

% Reaction: id = M0____M1, name = M0 -> M1
	reaction_M0____M1=compartment_synapse*Ligand_Binding_1(global_par_Mkon, x(11), x(21));

% Reaction: id = M1____M0, name = M1 -> M0
	reaction_M1____M0=compartment_synapse*Ligand_Unbinding_1(global_par_Mkoff, x(12));

% Reaction: id = M1____M2, name = M1 -> M2
	reaction_M1____M2=compartment_synapse*Ligand_Binding_2(global_par_Mkon, x(12), x(21));

% Reaction: id = M2____M1, name = M2 -> M1
	reaction_M2____M1=compartment_synapse*Ligand_Unbinding_2(global_par_Mkoff, x(13));

% Reaction: id = M2____M3, name = M2 -> M3
	reaction_M2____M3=compartment_synapse*Ligand_Binding_3(global_par_Mkon, x(13), x(21));

% Reaction: id = M3____M2, name = M3 -> M2
	reaction_M3____M2=compartment_synapse*Ligand_Unbinding_3(global_par_Mkoff, x(14));

% Reaction: id = M3____M4, name = M3 -> M4
	reaction_M3____M4=compartment_synapse*Ligand_Unbinding_4(global_par_Mkon, x(14));

% Reaction: id = M4____M3, name = M4 -> M3
	reaction_M4____M3=compartment_synapse*Ligand_Unbinding_4(global_par_Mkoff, x(15));

% Reaction: id = L0____L1, name = L0 -> L1 
	reaction_L0____L1=compartment_synapse*Ligand_Binding_1(global_par_Lkon, x(16), x(21));

% Reaction: id = L1____L0, name = L1 -> L0
	reaction_L1____L0=compartment_synapse*Ligand_Unbinding_1(global_par_Lkoff, x(17));

% Reaction: id = L1____L2, name = L1 -> L2
	reaction_L1____L2=compartment_synapse*Ligand_Binding_2(global_par_Lkon, x(17), x(21));

% Reaction: id = L2____L1, name = L2 -> L1
	reaction_L2____L1=compartment_synapse*Ligand_Unbinding_2(global_par_Lkoff, x(18));

% Reaction: id = L2____L3, name = L2 -> L3
	reaction_L2____L3=compartment_synapse*Ligand_Binding_3(global_par_Lkon, x(18), x(21));

% Reaction: id = L3____L2, name = L3 -> L2
	reaction_L3____L2=compartment_synapse*Ligand_Unbinding_3(global_par_Lkoff, x(19));

% Reaction: id = L3____L4, name = L3 -> L4
	reaction_L3____L4=compartment_synapse*Ligand_Binding_4(global_par_Lkon, x(19), x(21));

% Reaction: id = L4____L3, name = L4 -> L3
	reaction_L4____L3=compartment_synapse*Ligand_Unbinding_4(global_par_Lkoff, x(20));

	xdot=zeros(21,1);
	
% Species:   id = B0, name = B0, affected by kineticLaw
	xdot(1) = (1/(compartment_synapse))*((-1.0 * reaction_B0____S0) + ( 1.0 * reaction_S0____B0) + (-1.0 * reaction_B0____B1) + ( 1.0 * reaction_B1____B0));
	
% Species:   id = S0, name = S0, affected by kineticLaw
	xdot(2) = (1/(compartment_synapse))*(( 1.0 * reaction_B0____S0) + (-1.0 * reaction_S0____B0) + (-1.0 * reaction_S0____M0) + ( 1.0 * reaction_M0____S0) + (-1.0 * reaction_S0____S1) + ( 1.0 * reaction_S1____S0));
	
% Species:   id = B1, name = B1, affected by kineticLaw
	xdot(3) = (1/(compartment_synapse))*((-1.0 * reaction_B1____S1) + ( 1.0 * reaction_S1____B1) + ( 1.0 * reaction_B0____B1) + (-1.0 * reaction_B1____B0) + (-1.0 * reaction_B1____B2) + ( 1.0 * reaction_B2____B1));
	
% Species:   id = S1, name = S1, affected by kineticLaw
	xdot(4) = (1/(compartment_synapse))*(( 1.0 * reaction_B1____S1) + (-1.0 * reaction_S1____B1) + (-1.0 * reaction_S1____M1) + ( 1.0 * reaction_M1____S1) + ( 1.0 * reaction_S0____S1) + (-1.0 * reaction_S1____S0) + (-1.0 * reaction_S1____S2) + ( 1.0 * reaction_S2____S1));
	
% Species:   id = B2, name = B2, affected by kineticLaw
	xdot(5) = (1/(compartment_synapse))*((-1.0 * reaction_B2____S2) + ( 1.0 * reaction_S2____B2) + ( 1.0 * reaction_B1____B2) + (-1.0 * reaction_B2____B1) + (-1.0 * reaction_B2____B3) + ( 1.0 * reaction_B3____B2));
	
% Species:   id = S2, name = S2, affected by kineticLaw
	xdot(6) = (1/(compartment_synapse))*(( 1.0 * reaction_B2____S2) + (-1.0 * reaction_S2____B2) + (-1.0 * reaction_S2____M2) + ( 1.0 * reaction_M2____S2) + ( 1.0 * reaction_S1____S2) + (-1.0 * reaction_S2____S1) + (-1.0 * reaction_S2____S3) + ( 1.0 * reaction_S3____S2));
	
% Species:   id = B3, name = B3, affected by kineticLaw
	xdot(7) = (1/(compartment_synapse))*((-1.0 * reaction_B3____S3) + ( 1.0 * reaction_S3____B3) + ( 1.0 * reaction_B2____B3) + (-1.0 * reaction_B3____B2) + (-1.0 * reaction_B3____B4) + ( 1.0 * reaction_B4____B3));
	
% Species:   id = S3, name = S3, affected by kineticLaw
	xdot(8) = (1/(compartment_synapse))*(( 1.0 * reaction_B3____S3) + (-1.0 * reaction_S3____B3) + (-1.0 * reaction_S3____M3) + ( 1.0 * reaction_M3____S3) + ( 1.0 * reaction_S2____S3) + (-1.0 * reaction_S3____S2) + (-1.0 * reaction_S3____S4) + ( 1.0 * reaction_S4____S3));
	
% Species:   id = B4, name = B4, affected by kineticLaw
	xdot(9) = (1/(compartment_synapse))*((-1.0 * reaction_B4____S4) + ( 1.0 * reaction_S4____B4) + ( 1.0 * reaction_B3____B4) + (-1.0 * reaction_B4____B3));
	
% Species:   id = S4, name = S4, affected by kineticLaw
	xdot(10) = (1/(compartment_synapse))*(( 1.0 * reaction_B4____S4) + (-1.0 * reaction_S4____B4) + (-1.0 * reaction_S4____M4) + ( 1.0 * reaction_M4____S4) + ( 1.0 * reaction_S3____S4) + (-1.0 * reaction_S4____S3));
	
% Species:   id = M0, name = M0, affected by kineticLaw
	xdot(11) = (1/(compartment_synapse))*(( 1.0 * reaction_S0____M0) + (-1.0 * reaction_M0____S0) + (-1.0 * reaction_M0____L0) + ( 1.0 * reaction_L0____M0) + (-1.0 * reaction_M0____M1) + ( 1.0 * reaction_M1____M0));
	
% Species:   id = M1, name = M1, affected by kineticLaw
	xdot(12) = (1/(compartment_synapse))*(( 1.0 * reaction_S1____M1) + (-1.0 * reaction_M1____S1) + (-1.0 * reaction_M1____L1) + ( 1.0 * reaction_L1____M1) + ( 1.0 * reaction_M0____M1) + (-1.0 * reaction_M1____M0) + (-1.0 * reaction_M1____M2) + ( 1.0 * reaction_M2____M1));
	
% Species:   id = M2, name = M2, affected by kineticLaw
	xdot(13) = (1/(compartment_synapse))*(( 1.0 * reaction_S2____M2) + (-1.0 * reaction_M2____S2) + (-1.0 * reaction_M2____L2) + ( 1.0 * reaction_L2____M2) + ( 1.0 * reaction_M1____M2) + (-1.0 * reaction_M2____M1) + (-1.0 * reaction_M2____M3) + ( 1.0 * reaction_M3____M2));
	
% Species:   id = M3, name = M3, affected by kineticLaw
	xdot(14) = (1/(compartment_synapse))*(( 1.0 * reaction_S3____M3) + (-1.0 * reaction_M3____S3) + (-1.0 * reaction_M3____L3) + ( 1.0 * reaction_L3____M3) + ( 1.0 * reaction_M2____M3) + (-1.0 * reaction_M3____M2) + (-1.0 * reaction_M3____M4) + ( 1.0 * reaction_M4____M3));
	
% Species:   id = M4, name = M4, affected by kineticLaw
	xdot(15) = (1/(compartment_synapse))*(( 1.0 * reaction_S4____M4) + (-1.0 * reaction_M4____S4) + (-1.0 * reaction_M4____L4) + ( 1.0 * reaction_L4____M4) + ( 1.0 * reaction_M3____M4) + (-1.0 * reaction_M4____M3));
	
% Species:   id = L0, name = L0, affected by kineticLaw
	xdot(16) = (1/(compartment_synapse))*(( 1.0 * reaction_M0____L0) + (-1.0 * reaction_L0____M0) + (-1.0 * reaction_L0____L1) + ( 1.0 * reaction_L1____L0));
	
% Species:   id = L1, name = L1, affected by kineticLaw
	xdot(17) = (1/(compartment_synapse))*(( 1.0 * reaction_M1____L1) + (-1.0 * reaction_L1____M1) + ( 1.0 * reaction_L0____L1) + (-1.0 * reaction_L1____L0) + (-1.0 * reaction_L1____L2) + ( 1.0 * reaction_L2____L1));
	
% Species:   id = L2, name = L2, affected by kineticLaw
	xdot(18) = (1/(compartment_synapse))*(( 1.0 * reaction_M2____L2) + (-1.0 * reaction_L2____M2) + ( 1.0 * reaction_L1____L2) + (-1.0 * reaction_L2____L1) + (-1.0 * reaction_L2____L3) + ( 1.0 * reaction_L3____L2));
	
% Species:   id = L3, name = L3, affected by kineticLaw
	xdot(19) = (1/(compartment_synapse))*(( 1.0 * reaction_M3____L3) + (-1.0 * reaction_L3____M3) + ( 1.0 * reaction_L2____L3) + (-1.0 * reaction_L3____L2) + (-1.0 * reaction_L3____L4) + ( 1.0 * reaction_L4____L3));
	
% Species:   id = L4, name = L4, affected by kineticLaw
	xdot(20) = (1/(compartment_synapse))*(( 1.0 * reaction_M4____L4) + (-1.0 * reaction_L4____M4) + ( 1.0 * reaction_L3____L4) + (-1.0 * reaction_L4____L3));
	
% Species:   id = glu, name = glu, affected by kineticLaw
	xdot(21) = (1/(compartment_synapse))*((-1.0 * reaction_B0____B1) + ( 1.0 * reaction_B1____B0) + (-1.0 * reaction_B1____B2) + ( 1.0 * reaction_B2____B1) + (-1.0 * reaction_B2____B3) + ( 1.0 * reaction_B3____B2) + (-1.0 * reaction_B3____B4) + ( 1.0 * reaction_B4____B3) + (-1.0 * reaction_S0____S1) + ( 1.0 * reaction_S1____S0) + (-1.0 * reaction_S1____S2) + ( 1.0 * reaction_S2____S1) + (-1.0 * reaction_S2____S3) + ( 1.0 * reaction_S3____S2) + (-1.0 * reaction_S3____S4) + ( 1.0 * reaction_S4____S3) + (-1.0 * reaction_M0____M1) + ( 1.0 * reaction_M1____M0) + (-1.0 * reaction_M1____M2) + ( 1.0 * reaction_M2____M1) + (-1.0 * reaction_M2____M3) + ( 1.0 * reaction_M3____M2) + (-1.0 * reaction_M3____M4) + ( 1.0 * reaction_M4____M3) + (-1.0 * reaction_L0____L1) + ( 1.0 * reaction_L1____L0) + (-1.0 * reaction_L1____L2) + ( 1.0 * reaction_L2____L1) + (-1.0 * reaction_L2____L3) + ( 1.0 * reaction_L3____L2) + (-1.0 * reaction_L3____L4) + ( 1.0 * reaction_L4____L3));
end

function z=Ligand_Binding_1(k,R,L), z=(4*k*R*L);end

function z=Ligand_Binding_2(k,R,L), z=(3*k*R*L);end

function z=Ligand_Binding_3(k,R,L), z=(2*k*R*L);end

function z=Ligand_Binding_4(k,R,L), z=(k*R*L);end

function z=Ligand_Unbinding_1(k,R), z=(k*R);end

function z=Ligand_Unbinding_2(k,R), z=(2*k*R);end

function z=Ligand_Unbinding_3(k,R), z=(3*k*R);end

function z=Ligand_Unbinding_4(k,R), z=(4*k*R);end

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


