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
% Model name = Pandey2018-reversible transition between quiescence and proliferation
%
% is http://identifiers.org/biomodels.db/MODEL2006220001
% is http://identifiers.org/biomodels.db/BIOMD0000000954
%


function main()
%Initial conditions vector
	x0=zeros(24,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.119;
	x0(4) = 0.0;
	x0(5) = 0.106;
	x0(6) = 0.105;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.2;
	x0(10) = 0.115;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 1.0;
	x0(14) = 0.002;
	x0(15) = 0.002;
	x0(16) = 0.998;
	x0(17) = 0.02;
	x0(18) = 0.001;
	x0(19) = 0.894;
	x0(20) = 0.001;
	x0(21) = 0.00399999999999999;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 1.12757025938492E-16;


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

% Compartment: id = compartment, name = compartment, constant
	compartment_compartment=1.0;
% Parameter:   id =  S, name = S
	global_par_S=1.0;
% Parameter:   id =  Ksm, name = Ksm
	global_par_Ksm=0.1;
% Parameter:   id =  Kdm, name = Kdm
	global_par_Kdm=0.1;
% Parameter:   id =  Kscycdm, name = Kscycdm
	global_par_Kscycdm=0.004;
% Parameter:   id =  Kscycds, name = Kscycds
	global_par_Kscycds=0.004;
% Parameter:   id =  Kdcycd, name = Kdcycd
	global_par_Kdcycd=0.008;
% Parameter:   id =  Kscyceb, name = Kscyceb
	global_par_Kscyceb=1.0E-4;
% Parameter:   id =  Kscycem, name = Kscycem
	global_par_Kscycem=0.0;
% Parameter:   id =  Kscyce, name = Kscyce
	global_par_Kscyce=0.004;
% Parameter:   id =  Kdcyce, name = Kdcyce
	global_par_Kdcyce=0.001;
% Parameter:   id =  Kdcycea, name = Kdcycea
	global_par_Kdcycea=0.01;
% Parameter:   id =  Khcyce, name = Khcyce
	global_par_Khcyce=0.25;
% Parameter:   id =  Kscyca, name = Kscyca
	global_par_Kscyca=0.008;
% Parameter:   id =  Kdcyca, name = Kdcyca
	global_par_Kdcyca=0.004;
% Parameter:   id =  Kdcycac, name = Kdcycac
	global_par_Kdcycac=0.5;
% Parameter:   id =  Khcyca, name = Khcyca
	global_par_Khcyca=0.1;
% Parameter:   id =  Kse2fm, name = Kse2fm
	global_par_Kse2fm=0.0;
% Parameter:   id =  Kse2f, name = Kse2f
	global_par_Kse2f=0.004;
% Parameter:   id =  Kde2f, name = Kde2f
	global_par_Kde2f=0.003;
% Parameter:   id =  Kde2fa, name = Kde2fa
	global_par_Kde2fa=0.01;
% Parameter:   id =  Khe2f, name = Khe2f
	global_par_Khe2f=0.25;
% Parameter:   id =  RbT, name = RbT
	global_par_RbT=1.0;
% Parameter:   id =  Kase2f, name = Kase2f
	global_par_Kase2f=100.0;
% Parameter:   id =  Kdise2f, name = Kdise2f
	global_par_Kdise2f=1.0;
% Parameter:   id =  Kprb, name = Kprb
	global_par_Kprb=5.0;
% Parameter:   id =  Kdprbp, name = Kdprbp
	global_par_Kdprbp=1.0;
% Parameter:   id =  Kppeb, name = Kppeb
	global_par_Kppeb=0.5;
% Parameter:   id =  Kdprbpp, name = Kdprbpp
	global_par_Kdprbpp=0.1;
% Parameter:   id =  Kprbp, name = Kprbp
	global_par_Kprbp=2.0;
% Parameter:   id =  JpRb, name = JpRb
	global_par_JpRb=0.01;
% Parameter:   id =  JpRbp, name = JpRbp
	global_par_JpRbp=0.05;
% Parameter:   id =  JdpRb, name = JdpRb
	global_par_JdpRb=0.05;
% Parameter:   id =  JppRb, name = JppRb
	global_par_JppRb=0.5;
% Parameter:   id =  Kscki, name = Kscki
	global_par_Kscki=0.04;
% Parameter:   id =  Kdcki, name = Kdcki
	global_par_Kdcki=0.2;
% Parameter:   id =  Kascki, name = Kascki
	global_par_Kascki=100.0;
% Parameter:   id =  Kdiscki, name = Kdiscki
	global_par_Kdiscki=0.1;
% Parameter:   id =  Ksub1, name = Ksub1
	global_par_Ksub1=0.004;
% Parameter:   id =  Kdub1, name = Kdub1
	global_par_Kdub1=0.002;
% Parameter:   id =  Kdub1c, name = Kdub1c
	global_par_Kdub1c=0.2;
% Parameter:   id =  Ksemi1, name = Ksemi1
	global_par_Ksemi1=0.45;
% Parameter:   id =  Kdemi1, name = Kdemi1
	global_par_Kdemi1=0.2;
% Parameter:   id =  Kdemi1c, name = Kdemi1c
	global_par_Kdemi1c=2.0;
% Parameter:   id =  Khemi1, name = Khemi1
	global_par_Khemi1=0.1;
% Parameter:   id =  Kascdh1, name = Kascdh1
	global_par_Kascdh1=100.0;
% Parameter:   id =  Kdiscdh1, name = Kdiscdh1
	global_par_Kdiscdh1=0.1;
% Parameter:   id =  Kacdh1, name = Kacdh1
	global_par_Kacdh1=0.1;
% Parameter:   id =  Kicdh1e, name = Kicdh1e
	global_par_Kicdh1e=0.14;
% Parameter:   id =  Kicdh1a, name = Kicdh1a
	global_par_Kicdh1a=0.2;
% Parameter:   id =  JdpCdh1, name = JdpCdh1
	global_par_JdpCdh1=0.02;
% Parameter:   id =  JpCdh1, name = JpCdh1
	global_par_JpCdh1=0.25;
% Parameter:   id =  Kse2fb, name = Kse2fb
	global_par_Kse2fb=3.0E-4;
% Parameter:   id =  Kdckic, name = Kdckic
	global_par_Kdckic=1.0;
% assignmentRule: variable = Rb
	x(19)=global_par_RbT-x(8)-x(20)-x(6)-x(7);
% assignmentRule: variable = CycA
	x(23)=x(4)-x(12);
% assignmentRule: variable = CycE
	x(21)=x(3)-x(10);
% assignmentRule: variable = CycD
	x(22)=x(2)-x(11);
% assignmentRule: variable = Cdh1p
	x(24)=const_species_Cdh1T-x(16)-x(15);
% assignmentRule: variable = E2F
	x(18)=x(5)-x(6)-x(7);

% Reaction: id = reaction_for_Myc_production, name = reaction for Myc production
	reaction_reaction_for_Myc_production=compartment_compartment*Rate_Law_for_reaction_for_Myc_production(global_par_Ksm, global_par_S);

% Reaction: id = reaction_for_Myc_decay, name = reaction for Myc decay
	reaction_reaction_for_Myc_decay=compartment_compartment*Rate_Law_for_reaction_for_Myc_decay(global_par_Kdm, x(1));

% Reaction: id = reaction_for_CycDT_production, name = reaction for CycDT production
	reaction_reaction_for_CycDT_production=compartment_compartment*Rate_Law_for_reaction_for_CycDT_production(global_par_Kscycdm, x(1), global_par_Kscycds, global_par_S);

% Reaction: id = reaction_CycDT_decay, name = reaction CycDT decay
	reaction_reaction_CycDT_decay=compartment_compartment*Rate_Law_for_reaction_CycDT_decay(global_par_Kdcycd, x(2));

% Reaction: id = reaction_for_CycET_production, name = reaction for CycET production
	reaction_reaction_for_CycET_production=compartment_compartment*Rate_Law_for_reaction_for_CycET_production(global_par_Kscyceb, global_par_Kscycem, x(1), global_par_Kscyce, x(18), global_par_Khcyce);

% Reaction: id = reaction_CycET_decay, name = reaction CycET decay
	reaction_reaction_CycET_decay=compartment_compartment*Rate_Law_for_reaction_CycET_decay(global_par_Kdcyce, global_par_Kdcycea, x(23), x(3));

% Reaction: id = reaction_for_CycAT_production, name = reaction for CycAT production
	reaction_reaction_for_CycAT_production=compartment_compartment*Rate_Law_for_reaction_for_CycAT_production(global_par_Kscyca, x(18), global_par_Khcyca);

% Reaction: id = reaction_CycAT_decay, name = reaction CycAT decay
	reaction_reaction_CycAT_decay=compartment_compartment*Rate_Law_for_reaction_CycAT_decay(global_par_Kdcyca, global_par_Kdcycac, x(16), x(4));

% Reaction: id = reaction_for_E2FT_production, name = reaction for E2FT production
	reaction_reaction_for_E2FT_production=compartment_compartment*Rate_Law_for_reaction_for_E2FT_production(global_par_Kse2fb, global_par_Kse2fm, x(1), global_par_Kse2f, x(18), global_par_Khe2f);

% Reaction: id = reaction_E2FT_decay, name = reaction E2FT decay
	reaction_reaction_E2FT_decay=compartment_compartment*Rate_Law_for_reaction_E2FT_decay(global_par_Kde2f, global_par_Kde2fa, x(23), x(5));

% Reaction: id = reaction_Comp1_production, name = reaction Comp1 production
	reaction_reaction_Comp1_production=compartment_compartment*Rate_Law_for_reaction_Comp1_production(global_par_Kase2f, x(18), x(19), global_par_Kdprbp, x(7), global_par_JdpRb);

% Reaction: id = reaction_Comp1_decay, name = reaction Comp1 decay
	reaction_reaction_Comp1_decay=compartment_compartment*Rate_Law_for_reaction_Comp1_decay(global_par_Kdise2f, x(6), global_par_Kprb, x(22), global_par_JpRb, global_par_Kppeb, x(21), x(23), global_par_JppRb, global_par_Kde2f, global_par_Kde2fa);

% Reaction: id = reaction_for_Comp2_production, name = reaction for Comp2 production
	reaction_reaction_for_Comp2_production=compartment_compartment*Rate_Law_for_reaction_for_Comp2_production(global_par_Kase2f, x(18), x(8), global_par_Kprb, x(22), x(6), global_par_JpRb);

% Reaction: id = reaction_Comp2_decay, name = reaction Comp2 decay
	reaction_reaction_Comp2_decay=compartment_compartment*Rate_Law_for_reaction_Comp2_decay(global_par_Kdise2f, x(7), global_par_Kdprbp, global_par_JdpRb, global_par_Kprbp, x(21), x(23), global_par_JpRbp, global_par_Kde2f, global_par_Kde2fa);

% Reaction: id = reactionfor_Rbp_production, name = reactionfor Rbp production
	reaction_reactionfor_Rbp_production=compartment_compartment*Rate_Law_for_reactionfor_Rbp_production(global_par_Kprb, x(22), x(19), global_par_JpRb, global_par_Kdise2f, x(7), global_par_Kde2f, global_par_Kde2fa, x(23));

% Reaction: id = reaction_for_Rbp_decay, name = reaction for Rbp decay
	reaction_reaction_for_Rbp_decay=compartment_compartment*Rate_Law_for_reaction_for_Rbp_decay(global_par_Kase2f, x(18), x(8), global_par_Kdprbp, global_par_JpRbp, global_par_Kprbp, x(21), x(23), global_par_JpRb);

% Reaction: id = reaction_for_CkiT_decay, name = reaction for CkiT decay
	reaction_reaction_for_CkiT_decay=compartment_compartment*Rate_Law_for_reaction_for_CkiT_decay(global_par_Kdcki, global_par_Kdckic, x(21), x(23), x(17), x(9));

% Reaction: id = reaction_for_CycECki_production, name = reaction for CycECki production
	reaction_reaction_for_CycECki_production=compartment_compartment*Rate_Law_for_reaction_for_CycECki_production(global_par_Kascki, x(21), x(9), x(10), x(11), x(12));

% Reaction: id = reaction_for_CycECki_decay, name = reaction for CycECki decay
	reaction_reaction_for_CycECki_decay=compartment_compartment*Rate_Law_for_reaction_for_CycECki_decay(global_par_Kdiscki, global_par_Kdcyce, global_par_Kdcycea, x(23), global_par_Kdcki, global_par_Kdckic, x(21), x(17), x(10));

% Reaction: id = reaction_for_CycDCki_production, name = reaction for CycDCki production
	reaction_reaction_for_CycDCki_production=compartment_compartment*Rate_Law_for_reaction_for_CycDCki_production(global_par_Kascki, x(22), x(9), x(10), x(11), x(12));

% Reaction: id = reaction_for_CycDCki_decay, name = reaction for CycDCki decay
	reaction_reaction_for_CycDCki_decay=compartment_compartment*Rate_Law_for_reaction_for_CycDCki_decay(global_par_Kdiscki, global_par_Kdcycd, global_par_Kdcki, global_par_Kdckic, x(21), x(23), x(17), x(11));

% Reaction: id = reaction_for_CycACki_production, name = reaction for CycACki production
	reaction_reaction_for_CycACki_production=compartment_compartment*Rate_Law_for_reaction_for_CycACki_production(global_par_Kascki, x(23), x(9), x(10), x(11), x(12));

% Reaction: id = reaction_for_CycACki_decay, name = reaction for CycACki decay
	reaction_reaction_for_CycACki_decay=compartment_compartment*Rate_Law_for_reaction_for_CycACki_decay(global_par_Kdiscki, global_par_Kdcyca, global_par_Kdcycac, x(16), global_par_Kdcki, global_par_Kdckic, x(21), x(23), x(17), x(12));

% Reaction: id = reaction_for_Cdh1dp_production, name = reaction for Cdh1dp production
	reaction_reaction_for_Cdh1dp_production=compartment_compartment*Rate_Law_for_reaction_for_Cdh1dp_production(global_par_Kacdh1, const_species_Cdh1T, x(13), global_par_JdpCdh1);

% Reaction: id = reaction_for_Cdh1dp_decay, name = reaction for Cdh1dp decay
	reaction_reaction_for_Cdh1dp_decay=compartment_compartment*Rate_Law_for_reaction_for_Cdh1dp_decay(global_par_Kicdh1e, x(21), global_par_Kicdh1a, x(23), x(13), global_par_JpCdh1);

% Reaction: id = reaction_for_Emi1T_production, name = reaction for Emi1T production
	reaction_reaction_for_Emi1T_production=compartment_compartment*Rate_Law_for_reaction_for_Emi1T_production(global_par_Ksemi1, x(18), global_par_Khemi1);

% Reaction: id = reaction_for_Emi1T_decay, name = reaction for Emi1T decay
	reaction_reaction_for_Emi1T_decay=compartment_compartment*Rate_Law_for_reaction_for_Emi1T_decay(global_par_Kdemi1, global_par_Kdemi1c, x(16), x(14));

% Reaction: id = reaction_for_EmiC_production, name = reaction for EmiC production
	reaction_reaction_for_EmiC_production=compartment_compartment*Rate_Law_for_reaction_for_EmiC_production(const_species_Cdh1T, x(15), global_par_Kascdh1, x(14));

% Reaction: id = reaction_for_EmiC_decay, name = reaction for EmiC decay
	reaction_reaction_for_EmiC_decay=compartment_compartment*Rate_Law_for_reaction_for_EmiC_decay(global_par_Kdiscdh1, global_par_Kdemi1, global_par_Kdemi1c, x(16), x(15));

% Reaction: id = reaction_for_Cdh1_production, name = reaction for Cdh1 production
	reaction_reaction_for_Cdh1_production=compartment_compartment*Rate_Law_for_reaction_for_Cdh1_production(global_par_Kacdh1, const_species_Cdh1T, x(15), x(16), global_par_JdpCdh1, x(13), global_par_Kdiscdh1, global_par_Kdemi1, global_par_Kdemi1c);

% Reaction: id = reaction_for_Cdh1_decay, name = reaction for Cdh1 decay
	reaction_reaction_for_Cdh1_decay=compartment_compartment*Rate_Law_for_reaction_for_Cdh1_decay(global_par_Kicdh1e, x(21), global_par_Kicdh1a, x(23), x(16), global_par_JpCdh1, x(13), global_par_Kascdh1, x(14), x(15));

% Reaction: id = reaction_for_UbI_decay, name = reaction for UbI decay
	reaction_reaction_for_UbI_decay=compartment_compartment*Rate_Law_for_reaction_for_UbI_decay(global_par_Kdub1, global_par_Kdub1c, x(16), x(17));

% Reaction: id = reaction_for_Rbpp_production, name = reaction for Rbpp production
	reaction_reaction_for_Rbpp_production=compartment_compartment*Rate_Law_for_reaction_for_Rbpp_production(global_par_Kprbp, x(21), x(23), x(8), global_par_JpRbp, x(7), global_par_Kppeb, x(19), global_par_JppRb, x(6));

% Reaction: id = reaction_for_Rbpp_decay, name = reaction for Rbpp decay
	reaction_reaction_for_Rbpp_decay=compartment_compartment*Rate_Law_for_reaction_for_Rbpp_decay(global_par_Kdprbpp, x(20), global_par_JdpRb);

% Species:   id = Cdh1T, name = Cdh1T, constant	const_species_Cdh1T=1.0;

	xdot=zeros(24,1);
	
% Species:   id = Myc, name = Myc, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_Myc_production) + (-1.0 * reaction_reaction_for_Myc_decay));
	
% Species:   id = CycDT, name = CycDT, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_CycDT_production) + (-1.0 * reaction_reaction_CycDT_decay));
	
% Species:   id = CycET, name = CycET, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_CycET_production) + (-1.0 * reaction_reaction_CycET_decay));
	
% Species:   id = CycAT, name = CycAT, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_CycAT_production) + (-1.0 * reaction_reaction_CycAT_decay));
	
% Species:   id = E2FT, name = E2FT, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_E2FT_production) + (-1.0 * reaction_reaction_E2FT_decay));
	
% Species:   id = Comp1, name = Comp1, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_Comp1_production) + (-1.0 * reaction_reaction_Comp1_decay));
	
% Species:   id = Comp2, name = Comp2, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_Comp2_production) + (-1.0 * reaction_reaction_Comp2_decay));
	
% Species:   id = Rbp, name = Rbp, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_reactionfor_Rbp_production) + (-1.0 * reaction_reaction_for_Rbp_decay));
	
% Species:   id = CkiT, name = CkiT, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_CkiT_production) + (-1.0 * reaction_reaction_for_CkiT_decay));
	
% Species:   id = CycECki, name = CycECki, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_CycECki_production) + (-1.0 * reaction_reaction_for_CycECki_decay));
	
% Species:   id = CycDCki, name = CycDCki, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_CycDCki_production) + (-1.0 * reaction_reaction_for_CycDCki_decay));
	
% Species:   id = CycACki, name = CycACki, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_CycACki_production) + (-1.0 * reaction_reaction_for_CycACki_decay));
	
% Species:   id = Cdh1dp, name = Cdh1dp, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_Cdh1dp_production) + (-1.0 * reaction_reaction_for_Cdh1dp_decay));
	
% Species:   id = Emi1T, name = Emi1T, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_Emi1T_production) + (-1.0 * reaction_reaction_for_Emi1T_decay));
	
% Species:   id = EmiC, name = EmiC, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_EmiC_production) + (-1.0 * reaction_reaction_for_EmiC_decay));
	
% Species:   id = Cdh1, name = Cdh1, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_Cdh1_production) + (-1.0 * reaction_reaction_for_Cdh1_decay));
	
% Species:   id = UbI, name = UbI, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_UbI_production) + (-1.0 * reaction_reaction_for_UbI_decay));
	
% Species:   id = E2F, name = E2F, involved in a rule 	xdot(18) = x(18);
	
% Species:   id = Rb, name = Rb, involved in a rule 	xdot(19) = x(19);
	
% Species:   id = Rbpp, name = Rbpp, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment))*(( 1.0 * reaction_reaction_for_Rbpp_production) + (-1.0 * reaction_reaction_for_Rbpp_decay));
	
% Species:   id = CycE, name = CycE, involved in a rule 	xdot(21) = x(21);
	
% Species:   id = CycD, name = CycD, involved in a rule 	xdot(22) = x(22);
	
% Species:   id = CycA, name = CycA, involved in a rule 	xdot(23) = x(23);
	
% Species:   id = Cdh1p, name = Cdh1p, involved in a rule 	xdot(24) = x(24);
end

function z=Rate_Law_for_reaction_CycDT_decay(kdcycd,CycDT), z=(kdcycd*CycDT);end

function z=Rate_Law_for_reaction_E2FT_decay(kde2f,kde2fa,CycA,E2FT), z=((kde2f+kde2fa*CycA)*E2FT);end

function z=Rate_Law_for_reaction_Comp2_decay(kdise2f,comp2,kdprbp,JdpRb,kprbp,CycE,CycA,JpRbp,kde2f,kde2fa), z=(kdise2f*comp2+kdprbp*comp2/(JdpRb+comp2)+kprbp*(CycE+CycA)*comp2/(JpRbp+comp2)+(kde2f+kde2fa*CycA)*comp2);end

function z=Rate_Law_for_reaction_CycET_decay(kdcyce,kdcycea,CycA,CycET), z=((kdcyce+kdcycea*CycA)*CycET);end

function z=Rate_Law_for_reaction_CycAT_decay(kdcyca,kdcycac,Cdh1,CycAT), z=((kdcyca+kdcycac*Cdh1)*CycAT);end

function z=Rate_Law_for_reaction_for_Myc_production(ksm,S), z=(ksm*S);end

function z=Rate_Law_for_reaction_for_CycET_production(kscyceb,kscycem,Myc,kscyce,E2F,khcyce), z=(kscyceb+kscycem*Myc+kscyce*E2F/(khcyce+E2F));end

function z=Rate_Law_for_reaction_for_CycDT_production(kscycdm,Myc,kscycds,S), z=(kscycdm*Myc+kscycds*S);end

function z=Rate_Law_for_reaction_for_CycAT_production(kscyca,E2F,khcyca), z=(kscyca*E2F/(khcyca+E2F));end

function z=Rate_Law_for_reaction_for_Myc_decay(kdm,myc), z=(kdm*myc);end

function z=Rate_Law_for_reaction_for_E2FT_production(kse2fb,kse2fm,Myc,kse2f,E2F,khe2f), z=(kse2fb+kse2fm*Myc+kse2f*E2F/(khe2f+E2F));end

function z=Rate_Law_for_reaction_Comp1_production(kase2f,E2F,Rb,kdprbp,comp2,JdpRb), z=(kase2f*E2F*Rb+kdprbp*comp2/(JdpRb+comp2));end

function z=Rate_Law_for_reaction_Comp1_decay(kdise2f,comp1,kprb,CycD,JpRb,kpprb,CycE,CycA,JpRbp,kde2f,kde2fa), z=(kdise2f*comp1+kprb*CycD*comp1/(JpRb+comp1)+kpprb*(CycE+CycA)*comp1/(JpRbp+comp1)+(kde2f+kde2fa*CycA)*comp1);end

function z=Rate_Law_for_reaction_for_Comp2_production(kase2f,E2F,Rbp,kprb,CycD,comp1,JpRb), z=(kase2f*E2F*Rbp+kprb*CycD*comp1/(JpRb+comp1));end

function z=Rate_Law_for_reaction_for_CkiT_production(kscki), z=(kscki);end

function z=Rate_Law_for_reaction_for_EmiC_decay(kdiscdh1,kdemi,kdemi1c,Cdh1,EmiC), z=((kdiscdh1+kdemi+kdemi1c*Cdh1)*EmiC);end

function z=Rate_Law_for_reaction_for_UbI_decay(kdubl,kdublc,Cdh1,Ubl), z=((kdubl+kdublc*Cdh1)*Ubl);end

function z=Rate_Law_for_reaction_for_CycACki_production(kascki,CycA,CkiT,CycECki,CycDCki,CycACki), z=(kascki*CycA*(CkiT-CycECki-CycDCki-CycACki));end

function z=Rate_Law_for_reaction_for_Rbpp_production(kprbp,CycE,CycA,Rbp,Jprbp,Comp2,kpprb,Rb,Jpprb,Comp1), z=(kprbp*(CycE+CycA)*Rbp/(Jprbp+Rbp)+kprbp*(CycE+CycA)*Comp2/(Jprbp+Comp2)+kpprb*(CycE+CycA)*Rb/(Jpprb+Rb)+kpprb*(CycE+CycA)*Comp1/(Jpprb+Comp1));end

function z=Rate_Law_for_reaction_for_Rbpp_decay(kdprbpp,Rbpp,Jdprb), z=(kdprbpp*Rbpp/(Jdprb+Rbpp));end

function z=Rate_Law_for_reaction_for_CycACki_decay(kdiscki,kdcyca,kdcycac,Cdh1,kdcki,kdckic,CycE,CycA,UbI,CycACki), z=((kdiscki+kdcyca+kdcycac*Cdh1+kdcki+kdckic*(CycE+CycA)*UbI)*CycACki);end

function z=Rate_Law_for_reaction_for_Cdh1dp_production(kacdh1,Cdh1T,Cdh1dp,Jdpcdh1), z=(kacdh1*(Cdh1T-Cdh1dp)/(Jdpcdh1+(Cdh1T-Cdh1dp)));end

function z=Rate_Law_for_reaction_for_Cdh1dp_decay(kicdh1e,CycE,kicdh1a,CycA,Cdh1dp,Jpcdh1), z=((kicdh1e*CycE+kicdh1a*CycA)*Cdh1dp/(Jpcdh1+Cdh1dp));end

function z=Rate_Law_for_reaction_for_Emi1T_production(ksemi1,E2F,khemi1), z=(ksemi1*E2F/(khemi1+E2F));end

function z=Rate_Law_for_reactionfor_Rbp_production(kprb,CycD,Rb,JpRb,kdise2f,comp2,kde2f,kde2fa,CycA), z=(kprb*CycD*Rb/(JpRb+Rb)+kdise2f*comp2+(kde2f+kde2fa*CycA)*comp2);end

function z=Rate_Law_for_reaction_for_Rbp_decay(kase2f,E2F,Rbp,kdprbp,JpRbp,kprbp,CycE,CycA,JpRb), z=(kase2f*E2F*Rbp+kdprbp*Rbp/(JpRb+Rbp)+kprbp*(CycE+CycA)*Rbp/(JpRbp+Rbp));end

function z=Rate_Law_for_reaction_for_CycECki_decay(kdiscki,kdcyce,kcdycea,CycA,kdcki,kdckic,CycE,UbI,CycECki), z=((kdiscki+kdcyce+kcdycea*CycA+kdcki+kdckic*(CycE+CycA)*UbI)*CycECki);end

function z=Rate_Law_for_reaction_for_Emi1T_decay(kdemi1,kdemi1c,Cdh1,Emi1T), z=((kdemi1+kdemi1c*Cdh1)*Emi1T);end

function z=Rate_Law_for_reaction_for_EmiC_production(Cdh1T,EmiC,kascdh1,Emi1T), z=(kascdh1*(Cdh1T-EmiC)*(Emi1T-EmiC));end

function z=Rate_Law_for_reaction_for_CycECki_production(kascki,CycD,CkiT,CycECki,CycDCki,CycACki), z=(kascki*CycD*(CkiT-CycECki-CycDCki-CycACki));end

function z=Rate_Law_for_reaction_for_CkiT_decay(kdcki,kdckic,CycE,CycA,Ubl,CkiT), z=((kdcki+kdckic*(CycE+CycA)*Ubl)*CkiT);end

function z=Rate_Law_for_reaction_for_CycDCki_production(kascki,CycD,CkiT,CycECki,CycDCki,CycACki), z=(kascki*CycD*(CkiT-CycECki-CycDCki-CycACki));end

function z=Rate_Law_for_reaction_for_Cdh1_production(kacdh1,Cdh1T,EmiC,Cdh1,Jdpcdh1,Cdh1dp,kdiscdh1,kdemi,kdemi1c), z=(kacdh1*(Cdh1T-EmiC-Cdh1)/(Jdpcdh1+(Cdh1T-Cdh1dp))+(kdiscdh1+kdemi+kdemi1c*Cdh1)*(Cdh1dp-Cdh1));end

function z=Rate_Law_for_reaction_for_UbI_production(ksubl), z=(ksubl);end

function z=Rate_Law_for_reaction_for_CycDCki_decay(kdiscki,kdcycd,kdcki,kdckic,CycE,CycA,UbI,CycDCki), z=((kdiscki+kdcycd+kdcki+kdckic*(CycE+CycA)*UbI)*CycDCki);end

function z=Rate_Law_for_reaction_for_Cdh1_decay(kicdh1e,CycE,kicdh1a,CycA,Cdh1,Jpcdh1,Cdh1dp,kascdh1,Emi1T,EmiC), z=((kicdh1e*CycE+kicdh1a*CycA)*Cdh1/(Jpcdh1+Cdh1dp)+kascdh1*Cdh1*(Emi1T-EmiC));end

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


