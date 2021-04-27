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
% Model name = Proctor2016 - Circadian rhythm of PTH and the dynamics of signaling molecules on bone remodeling
%
% isDescribedBy http://journal.frontiersin.org/article/10.3389/fendo.2016.00061/abstract
% is http://identifiers.org/biomodels.db/MODEL1602290000
% is http://identifiers.org/biomodels.db/BIOMD0000000612
% isDescribedBy http://identifiers.org/pubmed/27379013
%


function main()
%Initial conditions vector
	x0=zeros(35,1);
	x0(1) = 2000.0;
	x0(2) = 100.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 1800.0;
	x0(12) = 0.0;
	x0(13) = 100.0;
	x0(14) = 0.0;
	x0(15) = 5.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 170.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 5.0;
	x0(24) = 500.0;
	x0(25) = 0.0;
	x0(26) = 200.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 100.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 100.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 10.0;


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

% Compartment: id = bone, name = bone, constant
	compartment_bone=1.0;
% Compartment: id = ecm, name = ecm, constant
	compartment_ecm=1.0;
% Compartment: id = osteoblast, name = osteoblast, constant
	compartment_osteoblast=1.0;
% Parameter:   id =  kactCreb, name = kactCreb
	global_par_kactCreb=0.009;
% Parameter:   id =  kactOcy, name = kactOcy
	global_par_kactOcy=0.004;
% Parameter:   id =  kactOcyPth, name = kactOcyPth
	global_par_kactOcyPth=0.08;
% Parameter:   id =  kactTgfb, name = kactTgfb
	global_par_kactTgfb=2.0E-7;
% Parameter:   id =  kactWnt, name = kactWnt
	global_par_kactWnt=0.03;
% Parameter:   id =  kactWntPth, name = kactWntPth
	global_par_kactWntPth=0.001;
% Parameter:   id =  kbinBaxBcl2, name = kbinBaxBcl2
	global_par_kbinBaxBcl2=0.01;
% Parameter:   id =  kbinCrebRunx2, name = kbinCrebRunx2
	global_par_kbinCrebRunx2=0.01;
% Parameter:   id =  kbinObmPTH, name = kbinObmPTH
	global_par_kbinObmPTH=0.02;
% Parameter:   id =  kbinObpPTH, name = kbinObpPTH
	global_par_kbinObpPTH=3.0E-4;
% Parameter:   id =  kbinObpTgfb, name = kbinObpTgfb
	global_par_kbinObpTgfb=2.0E-4;
% Parameter:   id =  kbinOclpRANKL, name = kbinOclpRANKL
	global_par_kbinOclpRANKL=0.001;
% Parameter:   id =  kbinOcyPTH, name = kbinOcyPTH
	global_par_kbinOcyPTH=0.008;
% Parameter:   id =  kdeathOb, name = kdeathOb
	global_par_kdeathOb=2.4E-4;
% Parameter:   id =  kdeathOcl, name = kdeathOcl
	global_par_kdeathOcl=6.5E-5;
% Parameter:   id =  kdeathOclp, name = kdeathOclp
	global_par_kdeathOclp=1.0E-5;
% Parameter:   id =  kdeathOcy, name = kdeathOcy
	global_par_kdeathOcy=1.0E-8;
% Parameter:   id =  kdegBcl2, name = kdegBcl2
	global_par_kdegBcl2=0.0025;
% Parameter:   id =  kdegBone, name = kdegBone
	global_par_kdegBone=6.5E-9;
% Parameter:   id =  kdegMCSF, name = kdegMCSF
	global_par_kdegMCSF=1.0E-4;
% Parameter:   id =  kdegOPG, name = kdegOPG
	global_par_kdegOPG=4.0E-6;
% Parameter:   id =  kdegOPGRANKL, name = kdegOPGRANKL
	global_par_kdegOPGRANKL=1.0E-5;
% Parameter:   id =  kdegPTH, name = kdegPTH
	global_par_kdegPTH=0.002;
% Parameter:   id =  kdegRANKL, name = kdegRANKL
	global_par_kdegRANKL=3.0E-5;
% Parameter:   id =  kdegRunx2, name = kdegRunx2
	global_par_kdegRunx2=1.0E-4;
% Parameter:   id =  kdegRunx2PTH, name = kdegRunx2PTH
	global_par_kdegRunx2PTH=0.003;
% Parameter:   id =  kdegSost, name = kdegSost
	global_par_kdegSost=0.004;
% Parameter:   id =  kdegTgfb, name = kdegTgfb
	global_par_kdegTgfb=5.0E-5;
% Parameter:   id =  kdegTgfbPTH, name = kdegTgfbPTH
	global_par_kdegTgfbPTH=1.7E-5;
% Parameter:   id =  kdiffHSC, name = kdiffHSC
	global_par_kdiffHSC=5.5E-5;
% Parameter:   id =  kdiffMSC, name = kdiffMSC
	global_par_kdiffMSC=6.5E-4;
% Parameter:   id =  kdiffObP, name = kdiffObP
	global_par_kdiffObP=1.0E-4;
% Parameter:   id =  kdiffObproTgfb, name = kdiffObproTgfb
	global_par_kdiffObproTgfb=0.05;
% Parameter:   id =  kdiffOclP, name = kdiffOclP
	global_par_kdiffOclP=8.0E-5;
% Parameter:   id =  kformBone, name = kformBone
	global_par_kformBone=3.07E-6;
% Parameter:   id =  kinactCreb, name = kinactCreb
	global_par_kinactCreb=1.0E-4;
% Parameter:   id =  kinactOcy, name = kinactOcy
	global_par_kinactOcy=2.0E-5;
% Parameter:   id =  kinactWnt, name = kinactWnt
	global_par_kinactWnt=0.8;
% Parameter:   id =  kinhibRANKL, name = kinhibRANKL
	global_par_kinhibRANKL=0.001;
% Parameter:   id =  kmatOb, name = kmatOb
	global_par_kmatOb=2.0E-9;
% Parameter:   id =  kmatObTgfb, name = kmatObTgfb
	global_par_kmatObTgfb=1.0E-8;
% Parameter:   id =  krelBaxBcl2, name = krelBaxBcl2
	global_par_krelBaxBcl2=0.5;
% Parameter:   id =  krelCrebRunx2, name = krelCrebRunx2
	global_par_krelCrebRunx2=0.01;
% Parameter:   id =  krelObmPTH, name = krelObmPTH
	global_par_krelObmPTH=0.005;
% Parameter:   id =  krelObpPTH, name = krelObpPTH
	global_par_krelObpPTH=0.005;
% Parameter:   id =  krelObpTgfb, name = krelObpTgfb
	global_par_krelObpTgfb=0.01;
% Parameter:   id =  krelOclpRANKL, name = krelOclpRANKL
	global_par_krelOclpRANKL=0.001;
% Parameter:   id =  krelOcyPTH, name = krelOcyPTH
	global_par_krelOcyPTH=0.005;
% Parameter:   id =  krelRANKL, name = krelRANKL
	global_par_krelRANKL=0.001;
% Parameter:   id =  ksecMCSFbyMSC, name = ksecMCSFbyMSC
	global_par_ksecMCSFbyMSC=1.0E-5;
% Parameter:   id =  ksecMCSFbyObm, name = ksecMCSFbyObm
	global_par_ksecMCSFbyObm=1.0E-5;
% Parameter:   id =  ksecMCSFbyObp, name = ksecMCSFbyObp
	global_par_ksecMCSFbyObp=1.0E-5;
% Parameter:   id =  ksecMCSFbyObpro, name = ksecMCSFbyObpro
	global_par_ksecMCSFbyObpro=1.0E-5;
% Parameter:   id =  ksecOPGbyObm, name = ksecOPGbyObm
	global_par_ksecOPGbyObm=1.0E-5;
% Parameter:   id =  ksecOPGbyObp, name = ksecOPGbyObp
	global_par_ksecOPGbyObp=2.0E-6;
% Parameter:   id =  ksecOPGbyObpPTH, name = ksecOPGbyObpPTH
	global_par_ksecOPGbyObpPTH=1.0E-6;
% Parameter:   id =  ksecRANKLbyMSC, name = ksecRANKLbyMSC
	global_par_ksecRANKLbyMSC=1.0E-6;
% Parameter:   id =  ksecRANKLbyObm, name = ksecRANKLbyObm
	global_par_ksecRANKLbyObm=1.0E-7;
% Parameter:   id =  ksecRANKLbyObmPTH, name = ksecRANKLbyObmPTH
	global_par_ksecRANKLbyObmPTH=1.0E-6;
% Parameter:   id =  ksecRANKLbyObp, name = ksecRANKLbyObp
	global_par_ksecRANKLbyObp=3.0E-6;
% Parameter:   id =  ksecRANKLbyObpPTH, name = ksecRANKLbyObpPTH
	global_par_ksecRANKLbyObpPTH=2.0E-5;
% Parameter:   id =  ksecRANKLbyObpro, name = ksecRANKLbyObpro
	global_par_ksecRANKLbyObpro=7.0E-6;
% Parameter:   id =  ksecRANKLbyObpTgfb, name = ksecRANKLbyObpTgfb
	global_par_ksecRANKLbyObpTgfb=4.0E-6;
% Parameter:   id =  ksecRANKLbyOcy, name = ksecRANKLbyOcy
	global_par_ksecRANKLbyOcy=1.0E-6;
% Parameter:   id =  ksecRANKLbyOcyI, name = ksecRANKLbyOcyI
	global_par_ksecRANKLbyOcyI=1.0E-7;
% Parameter:   id =  ksecSost, name = ksecSost
	global_par_ksecSost=7.5E-4;
% Parameter:   id =  ksecTgfb, name = ksecTgfb
	global_par_ksecTgfb=5.0E-5;
% Parameter:   id =  ksynBcl2, name = ksynBcl2
	global_par_ksynBcl2=0.005;
% Parameter:   id =  ksynPTH, name = ksynPTH
	global_par_ksynPTH=0.02;
% Parameter:   id =  ksynRunx2, name = ksynRunx2
	global_par_ksynRunx2=0.005;
% Parameter:   id =  ksynX, name = ksynX
	global_par_ksynX=0.01157;
% Parameter:   id =  kunload, name = kunload
	global_par_kunload=3.5E-4;

% Reaction: id = Unloading
	reaction_Unloading=global_par_kunload*x(14);

% Reaction: id = Osteocyte_activation
	reaction_Osteocyte_activation=global_par_kactOcy*x(11)*x(14);

% Reaction: id = Osteocyte_activation_by_PTH
	reaction_Osteocyte_activation_by_PTH=global_par_kactOcyPth*x(12);

% Reaction: id = Osteocyte_inactivation
	reaction_Osteocyte_inactivation=global_par_kinactOcy*x(10);

% Reaction: id = Ocy_I_bound_by_PTH
	reaction_Ocy_I_bound_by_PTH=global_par_kbinOcyPTH*x(11)*x(20)^2/(100^2+x(20)^2);

% Reaction: id = Ocy_I_PTH_release
	reaction_Ocy_I_PTH_release=global_par_krelOcyPTH*x(12);

% Reaction: id = Ocy_apoptosis
	reaction_Ocy_apoptosis=global_par_kdeathOcy*x(11);

% Reaction: id = Sost_secretion
	reaction_Sost_secretion=global_par_ksecSost*x(11);

% Reaction: id = Sost_degradation
	reaction_Sost_degradation=global_par_kdegSost*x(22);

% Reaction: id = Wnt_activation
	reaction_Wnt_activation=global_par_kactWnt*x(26);

% Reaction: id = Wnt_activation_by_PTH
	reaction_Wnt_activation_by_PTH=global_par_kactWntPth*x(26)*x(16);

% Reaction: id = Inactivation_of_Wnt_by_Sost
	reaction_Inactivation_of_Wnt_by_Sost=global_par_kinactWnt*x(25)*x(22)^2/(50^2+x(22)^2);

% Reaction: id = MSC_differentiation_to_Ob_pro
	reaction_MSC_differentiation_to_Ob_pro=global_par_kdiffMSC*x(13)*x(25)^2/(50^2+x(25)^2);

% Reaction: id = Osteoblast_progenitor_differentiation_by_Tgfb
	reaction_Osteoblast_progenitor_differentiation_by_Tgfb=global_par_kdiffObproTgfb*x(6)*x(23)^2/(50^2+x(23)^2);

% Reaction: id = Ob_precursor_differentiation
	reaction_Ob_precursor_differentiation=global_par_kdiffObP*x(4);

% Reaction: id = Ob_p_binding_by_PTH
	reaction_Ob_p_binding_by_PTH=global_par_kbinObpPTH*x(4)*x(20)^2/(100^2+x(20)^2);

% Reaction: id = Ob_p_PTH_release
	reaction_Ob_p_PTH_release=global_par_krelObpPTH*x(17);

% Reaction: id = Ob_p_Tgfb_binding
	reaction_Ob_p_Tgfb_binding=global_par_kbinObpTgfb*x(4)*x(23);

% Reaction: id = Ob_p_Tgfb_release
	reaction_Ob_p_Tgfb_release=global_par_krelObpTgfb*x(5);

% Reaction: id = Ob_maturation_to_Ocy
	reaction_Ob_maturation_to_Ocy=global_par_kmatOb*x(3);

% Reaction: id = Ob_maturation_to_Ocy_by_Tgfb
	reaction_Ob_maturation_to_Ocy_by_Tgfb=global_par_kmatObTgfb*x(3)*x(23)^2/(50^2+x(23)^2);

% Reaction: id = Ob_m_bound_by_PTH
	reaction_Ob_m_bound_by_PTH=global_par_kbinObmPTH*x(3)*x(20)^2/(100^2+x(20)^2);

% Reaction: id = Ob_m_PTH_release
	reaction_Ob_m_PTH_release=global_par_krelObmPTH*x(16);

% Reaction: id = Ob_m_apoptosis
	reaction_Ob_m_apoptosis=global_par_kdeathOb*x(3)*x(29)^2/(50^2+x(29)^2);

% Reaction: id = Ob_m_PTH_apoptosis
	reaction_Ob_m_PTH_apoptosis=global_par_kdeathOb*x(16)*x(29)^2/(50^2+x(29)^2);

% Reaction: id = HSC_differentiation_to_Ocl_p
	reaction_HSC_differentiation_to_Ocl_p=global_par_kdiffHSC*x(2)*x(15)^2/(50^2+x(15)^2);

% Reaction: id = Ocl_p_apoptosis
	reaction_Ocl_p_apoptosis=global_par_kdeathOclp*x(8);

% Reaction: id = Ocl_p_RANKL_binding
	reaction_Ocl_p_RANKL_binding=global_par_kbinOclpRANKL*x(8)*x(21);

% Reaction: id = Ocl_p_RANKL_release
	reaction_Ocl_p_RANKL_release=global_par_krelOclpRANKL*x(9);

% Reaction: id = Osteoclast_precursor_differentiation
	reaction_Osteoclast_precursor_differentiation=global_par_kdiffOclP*x(9);

% Reaction: id = RANKL_inhibition
	reaction_RANKL_inhibition=global_par_kinhibRANKL*x(18)*x(21);

% Reaction: id = OPG_RANKL_dissociation
	reaction_OPG_RANKL_dissociation=global_par_krelRANKL*x(19);

% Reaction: id = OPG_RANKL_degradation
	reaction_OPG_RANKL_degradation=global_par_kdegOPGRANKL*x(19);

% Reaction: id = Osteoclast_apoptosis
	reaction_Osteoclast_apoptosis=global_par_kdeathOcl*x(7);

% Reaction: id = RANKL_degradation
	reaction_RANKL_degradation=global_par_kdegRANKL*x(21);

% Reaction: id = OPG_degradation
	reaction_OPG_degradation=global_par_kdegOPG*x(18);

% Reaction: id = MCSF_secretion_by_MSC
	reaction_MCSF_secretion_by_MSC=global_par_ksecMCSFbyMSC*x(13);

% Reaction: id = MCSF_secretion_by_Ob_pro
	reaction_MCSF_secretion_by_Ob_pro=global_par_ksecMCSFbyObpro*x(6);

% Reaction: id = MCSF_secretion_by_Ob_p
	reaction_MCSF_secretion_by_Ob_p=global_par_ksecMCSFbyObp*x(4);

% Reaction: id = MCSF_secretion_by_Ob_p_PTH
	reaction_MCSF_secretion_by_Ob_p_PTH=global_par_ksecMCSFbyObp*x(17);

% Reaction: id = MCSF_secretion_by_Ob_m
	reaction_MCSF_secretion_by_Ob_m=global_par_ksecMCSFbyObm*x(3);

% Reaction: id = MCSF_secretion_by_Ob_m_PTH
	reaction_MCSF_secretion_by_Ob_m_PTH=global_par_ksecMCSFbyObm*x(16);

% Reaction: id = MCSF_degradation
	reaction_MCSF_degradation=global_par_kdegMCSF*x(15);

% Reaction: id = OPG_secretion_by_Ob_p
	reaction_OPG_secretion_by_Ob_p=global_par_ksecOPGbyObp*x(4);

% Reaction: id = OPG_secretion_by_Ob_p_PTH
	reaction_OPG_secretion_by_Ob_p_PTH=global_par_ksecOPGbyObpPTH*x(17);

% Reaction: id = OPG_secretion_by_Ob_m
	reaction_OPG_secretion_by_Ob_m=global_par_ksecOPGbyObm*x(3);

% Reaction: id = RANKL_secretion_by_Ocy_A
	reaction_RANKL_secretion_by_Ocy_A=global_par_ksecRANKLbyOcy*x(10);

% Reaction: id = RANKL_secretion_by_Ocy_I
	reaction_RANKL_secretion_by_Ocy_I=global_par_ksecRANKLbyOcyI*x(11);

% Reaction: id = RANKL_secretion_by_MSCs
	reaction_RANKL_secretion_by_MSCs=global_par_ksecRANKLbyMSC*x(13);

% Reaction: id = RANKL_secretion_by_Ob_p
	reaction_RANKL_secretion_by_Ob_p=global_par_ksecRANKLbyObp*x(4);

% Reaction: id = RANKL_secretion_by_Ob_p_Tgfb_A
	reaction_RANKL_secretion_by_Ob_p_Tgfb_A=global_par_ksecRANKLbyObpTgfb*x(5);

% Reaction: id = RANKL_secretion_by_Ob_p_PTH
	reaction_RANKL_secretion_by_Ob_p_PTH=global_par_ksecRANKLbyObpPTH*x(17);

% Reaction: id = RANKL_secretion_by_Ob_pro
	reaction_RANKL_secretion_by_Ob_pro=global_par_ksecRANKLbyObpro*x(6);

% Reaction: id = RANKL_secretion_by_Ob_m
	reaction_RANKL_secretion_by_Ob_m=global_par_ksecRANKLbyObm*x(3);

% Reaction: id = RANKL_secretion_by_Ob_m_PTH_enhanced
	reaction_RANKL_secretion_by_Ob_m_PTH_enhanced=global_par_ksecRANKLbyObmPTH*x(16);

% Reaction: id = Tgfb_secretion_by_Obm
	reaction_Tgfb_secretion_by_Obm=global_par_ksecTgfb*x(3);

% Reaction: id = Tgfb_activation
	reaction_Tgfb_activation=global_par_kactTgfb*x(24)*x(7);

% Reaction: id = Tgfb_degradation
	reaction_Tgfb_degradation=global_par_kdegTgfb*x(23);

% Reaction: id = Tgfb_degradation_by_PTH
	reaction_Tgfb_degradation_by_PTH=global_par_kdegTgfbPTH*x(23)*x(16);

% Reaction: id = PTH_production
	reaction_PTH_production=global_par_ksynPTH*const_species_Source;

% Reaction: id = PTH_degradation
	reaction_PTH_degradation=global_par_kdegPTH*x(20);

% Reaction: id = CREB_activation
	reaction_CREB_activation=global_par_kactCreb*x(32)*x(16)^2/(100^2+x(16)^2);

% Reaction: id = CREB_inactivation
	reaction_CREB_inactivation=global_par_kinactCreb*x(33);

% Reaction: id = CREB_Runx2_binding
	reaction_CREB_Runx2_binding=global_par_kbinCrebRunx2*x(33)*x(35);

% Reaction: id = CREB_Runx2_release
	reaction_CREB_Runx2_release=global_par_krelCrebRunx2*x(34);

% Reaction: id = Bcl2_synthesis
	reaction_Bcl2_synthesis=global_par_ksynBcl2*x(34);

% Reaction: id = Bcl2_degradation
	reaction_Bcl2_degradation=global_par_kdegBcl2*x(31);

% Reaction: id = Bax_Bcl2_binding
	reaction_Bax_Bcl2_binding=global_par_kbinBaxBcl2*x(29)*x(31);

% Reaction: id = Bax_Bcl2_release
	reaction_Bax_Bcl2_release=global_par_krelBaxBcl2*x(30);

% Reaction: id = Runx2_synthesis
	reaction_Runx2_synthesis=global_par_ksynRunx2*const_species_Source;

% Reaction: id = Runx2_degradation_via_PTH
	reaction_Runx2_degradation_via_PTH=global_par_kdegRunx2PTH*x(35)*x(16);

% Reaction: id = Runx2_degradation
	reaction_Runx2_degradation=global_par_kdegRunx2*x(35);

% Reaction: id = Bone_formation
	reaction_Bone_formation=global_par_kformBone*x(3);

% Reaction: id = Bone_formation_Obm_PTH
	reaction_Bone_formation_Obm_PTH=global_par_kformBone*x(16);

% Reaction: id = Bone_degradation
	reaction_Bone_degradation=global_par_kdegBone*x(7)*x(1);

% Reaction: id = Xsynthesis
	reaction_Xsynthesis=global_par_ksynX*const_species_Source;

% Species:   id = Source, name = Source, constant	const_species_Source=1.0;

% Species:   id = Sink, name = Sink, constant	const_species_Sink=1.0;

%Event: id=AddLOAD1
	event_AddLOAD1=x(27) > 300;

	if(event_AddLOAD1) 
		x(14)=1;
	end

%Event: id=AddLOAD2
	event_AddLOAD2=x(27) > 600;

	if(event_AddLOAD2) 
		x(14)=1;
	end

%Event: id=AddPTH1
	event_AddPTH1=x(27) > 625;

	if(event_AddPTH1) 
		x(20)=150;
	end

%Event: id=AddPTH2
	event_AddPTH2=x(27) > 1000;

	if(event_AddPTH2) 
		x(20)=170;
		x(27)=0;
	end

	xdot=zeros(35,1);
	
% Species:   id = Bone, name = Bone, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_Bone_formation) + ( 1.0 * reaction_Bone_formation_Obm_PTH) + (-1.0 * reaction_Bone_degradation);
	
% Species:   id = HSC, name = HSC, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_HSC_differentiation_to_Ocl_p) + ( 1.0 * reaction_HSC_differentiation_to_Ocl_p);
	
% Species:   id = Ob_m, name = Ob_m, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_Ob_precursor_differentiation) + (-1.0 * reaction_Ob_maturation_to_Ocy) + (-1.0 * reaction_Ob_maturation_to_Ocy_by_Tgfb) + (-1.0 * reaction_Ob_m_bound_by_PTH) + ( 1.0 * reaction_Ob_m_PTH_release) + (-1.0 * reaction_Ob_m_apoptosis) + (-1.0 * reaction_MCSF_secretion_by_Ob_m) + ( 1.0 * reaction_MCSF_secretion_by_Ob_m) + (-1.0 * reaction_OPG_secretion_by_Ob_m) + ( 1.0 * reaction_OPG_secretion_by_Ob_m) + (-1.0 * reaction_RANKL_secretion_by_Ob_m) + ( 1.0 * reaction_RANKL_secretion_by_Ob_m) + (-1.0 * reaction_Tgfb_secretion_by_Obm) + ( 1.0 * reaction_Tgfb_secretion_by_Obm) + (-1.0 * reaction_Bone_formation) + ( 1.0 * reaction_Bone_formation);
	
% Species:   id = Ob_p, name = Ob_p, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_Osteoblast_progenitor_differentiation_by_Tgfb) + (-1.0 * reaction_Ob_precursor_differentiation) + (-1.0 * reaction_Ob_p_binding_by_PTH) + ( 1.0 * reaction_Ob_p_PTH_release) + (-1.0 * reaction_Ob_p_Tgfb_binding) + ( 1.0 * reaction_Ob_p_Tgfb_release) + (-1.0 * reaction_MCSF_secretion_by_Ob_p) + ( 1.0 * reaction_MCSF_secretion_by_Ob_p) + (-1.0 * reaction_OPG_secretion_by_Ob_p) + ( 1.0 * reaction_OPG_secretion_by_Ob_p) + (-1.0 * reaction_RANKL_secretion_by_Ob_p) + ( 1.0 * reaction_RANKL_secretion_by_Ob_p);
	
% Species:   id = Ob_p_Tgfb_A, name = Ob_p_Tgfb_A, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_Ob_p_Tgfb_binding) + (-1.0 * reaction_Ob_p_Tgfb_release) + (-1.0 * reaction_RANKL_secretion_by_Ob_p_Tgfb_A) + ( 1.0 * reaction_RANKL_secretion_by_Ob_p_Tgfb_A);
	
% Species:   id = Ob_pro, name = Ob_pro, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_MSC_differentiation_to_Ob_pro) + (-1.0 * reaction_Osteoblast_progenitor_differentiation_by_Tgfb) + (-1.0 * reaction_MCSF_secretion_by_Ob_pro) + ( 1.0 * reaction_MCSF_secretion_by_Ob_pro) + (-1.0 * reaction_RANKL_secretion_by_Ob_pro) + ( 1.0 * reaction_RANKL_secretion_by_Ob_pro);
	
% Species:   id = Ocl_m, name = Ocl_m, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_Osteoclast_precursor_differentiation) + (-1.0 * reaction_Osteoclast_apoptosis) + (-1.0 * reaction_Tgfb_activation) + ( 1.0 * reaction_Tgfb_activation) + (-1.0 * reaction_Bone_degradation) + ( 1.0 * reaction_Bone_degradation);
	
% Species:   id = Ocl_p, name = Ocl_p, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_HSC_differentiation_to_Ocl_p) + (-1.0 * reaction_Ocl_p_apoptosis) + (-1.0 * reaction_Ocl_p_RANKL_binding) + ( 1.0 * reaction_Ocl_p_RANKL_release);
	
% Species:   id = Ocl_p_RANKL, name = Ocl_p_RANKL, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_Ocl_p_RANKL_binding) + (-1.0 * reaction_Ocl_p_RANKL_release) + (-1.0 * reaction_Osteoclast_precursor_differentiation);
	
% Species:   id = Ocy_A, name = Ocy_A, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_Osteocyte_activation) + ( 1.0 * reaction_Osteocyte_activation_by_PTH) + (-1.0 * reaction_Osteocyte_inactivation) + (-1.0 * reaction_RANKL_secretion_by_Ocy_A) + ( 1.0 * reaction_RANKL_secretion_by_Ocy_A);
	
% Species:   id = Ocy_I, name = Ocy_I, affected by kineticLaw
	xdot(11) = (-1.0 * reaction_Osteocyte_activation) + ( 1.0 * reaction_Osteocyte_inactivation) + (-1.0 * reaction_Ocy_I_bound_by_PTH) + ( 1.0 * reaction_Ocy_I_PTH_release) + (-1.0 * reaction_Ocy_apoptosis) + (-1.0 * reaction_Sost_secretion) + ( 1.0 * reaction_Sost_secretion) + ( 1.0 * reaction_Ob_maturation_to_Ocy) + ( 1.0 * reaction_Ob_maturation_to_Ocy_by_Tgfb) + (-1.0 * reaction_RANKL_secretion_by_Ocy_I) + ( 1.0 * reaction_RANKL_secretion_by_Ocy_I);
	
% Species:   id = Ocy_I_PTH, name = Ocy_I_PTH, affected by kineticLaw
	xdot(12) = (-1.0 * reaction_Osteocyte_activation_by_PTH) + ( 1.0 * reaction_Ocy_I_bound_by_PTH) + (-1.0 * reaction_Ocy_I_PTH_release);
	
% Species:   id = MSC, name = MSC, affected by kineticLaw
	xdot(13) = (-1.0 * reaction_MSC_differentiation_to_Ob_pro) + ( 1.0 * reaction_MSC_differentiation_to_Ob_pro) + (-1.0 * reaction_MCSF_secretion_by_MSC) + ( 1.0 * reaction_MCSF_secretion_by_MSC) + (-1.0 * reaction_RANKL_secretion_by_MSCs) + ( 1.0 * reaction_RANKL_secretion_by_MSCs);
	
% Species:   id = LOAD, name = LOAD, affected by kineticLaw
	xdot(14) = (-1.0 * reaction_Unloading) + (-1.0 * reaction_Osteocyte_activation) + ( 1.0 * reaction_Osteocyte_activation);
	
% Species:   id = MCSF, name = MCSF, affected by kineticLaw
	xdot(15) = (-1.0 * reaction_HSC_differentiation_to_Ocl_p) + ( 1.0 * reaction_HSC_differentiation_to_Ocl_p) + ( 1.0 * reaction_MCSF_secretion_by_MSC) + ( 1.0 * reaction_MCSF_secretion_by_Ob_pro) + ( 1.0 * reaction_MCSF_secretion_by_Ob_p) + ( 1.0 * reaction_MCSF_secretion_by_Ob_p_PTH) + ( 1.0 * reaction_MCSF_secretion_by_Ob_m) + ( 1.0 * reaction_MCSF_secretion_by_Ob_m_PTH) + (-1.0 * reaction_MCSF_degradation);
	
% Species:   id = Ob_m_PTH, name = Ob_m_PTH, affected by kineticLaw
	xdot(16) = (-1.0 * reaction_Wnt_activation_by_PTH) + ( 1.0 * reaction_Wnt_activation_by_PTH) + ( 1.0 * reaction_Ob_m_bound_by_PTH) + (-1.0 * reaction_Ob_m_PTH_release) + (-1.0 * reaction_Ob_m_PTH_apoptosis) + (-1.0 * reaction_MCSF_secretion_by_Ob_m_PTH) + ( 1.0 * reaction_MCSF_secretion_by_Ob_m_PTH) + (-1.0 * reaction_RANKL_secretion_by_Ob_m_PTH_enhanced) + ( 1.0 * reaction_RANKL_secretion_by_Ob_m_PTH_enhanced) + (-1.0 * reaction_Tgfb_degradation_by_PTH) + ( 1.0 * reaction_Tgfb_degradation_by_PTH) + (-1.0 * reaction_CREB_activation) + ( 1.0 * reaction_CREB_activation) + (-1.0 * reaction_Runx2_degradation_via_PTH) + ( 1.0 * reaction_Runx2_degradation_via_PTH) + (-1.0 * reaction_Bone_formation_Obm_PTH) + ( 1.0 * reaction_Bone_formation_Obm_PTH);
	
% Species:   id = Ob_p_PTH, name = Ob_p_PTH, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_Ob_p_binding_by_PTH) + (-1.0 * reaction_Ob_p_PTH_release) + (-1.0 * reaction_MCSF_secretion_by_Ob_p_PTH) + ( 1.0 * reaction_MCSF_secretion_by_Ob_p_PTH) + (-1.0 * reaction_OPG_secretion_by_Ob_p_PTH) + ( 1.0 * reaction_OPG_secretion_by_Ob_p_PTH) + (-1.0 * reaction_RANKL_secretion_by_Ob_p_PTH) + ( 1.0 * reaction_RANKL_secretion_by_Ob_p_PTH);
	
% Species:   id = OPG, name = OPG, affected by kineticLaw
	xdot(18) = (-1.0 * reaction_RANKL_inhibition) + ( 1.0 * reaction_OPG_RANKL_dissociation) + (-1.0 * reaction_OPG_degradation) + ( 1.0 * reaction_OPG_secretion_by_Ob_p) + ( 1.0 * reaction_OPG_secretion_by_Ob_p_PTH) + ( 1.0 * reaction_OPG_secretion_by_Ob_m);
	
% Species:   id = OPG_RANKL, name = OPG_RANKL, affected by kineticLaw
	xdot(19) = ( 1.0 * reaction_RANKL_inhibition) + (-1.0 * reaction_OPG_RANKL_dissociation) + (-1.0 * reaction_OPG_RANKL_degradation);
	
% Species:   id = PTH, name = PTH, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_Osteocyte_activation_by_PTH) + (-1.0 * reaction_Ocy_I_bound_by_PTH) + ( 1.0 * reaction_Ocy_I_PTH_release) + (-1.0 * reaction_Ob_p_binding_by_PTH) + ( 1.0 * reaction_Ob_p_PTH_release) + (-1.0 * reaction_Ob_m_bound_by_PTH) + ( 1.0 * reaction_Ob_m_PTH_release) + ( 1.0 * reaction_Ob_m_PTH_apoptosis) + ( 1.0 * reaction_PTH_production) + (-1.0 * reaction_PTH_degradation);
	
% Species:   id = RANKL, name = RANKL, affected by kineticLaw
	xdot(21) = (-1.0 * reaction_Ocl_p_RANKL_binding) + ( 1.0 * reaction_Ocl_p_RANKL_release) + (-1.0 * reaction_RANKL_inhibition) + ( 1.0 * reaction_OPG_RANKL_dissociation) + (-1.0 * reaction_RANKL_degradation) + ( 1.0 * reaction_RANKL_secretion_by_Ocy_A) + ( 1.0 * reaction_RANKL_secretion_by_Ocy_I) + ( 1.0 * reaction_RANKL_secretion_by_MSCs) + ( 1.0 * reaction_RANKL_secretion_by_Ob_p) + ( 1.0 * reaction_RANKL_secretion_by_Ob_p_Tgfb_A) + ( 1.0 * reaction_RANKL_secretion_by_Ob_p_PTH) + ( 1.0 * reaction_RANKL_secretion_by_Ob_pro) + ( 1.0 * reaction_RANKL_secretion_by_Ob_m) + ( 1.0 * reaction_RANKL_secretion_by_Ob_m_PTH_enhanced);
	
% Species:   id = Sost, name = Sost, affected by kineticLaw
	xdot(22) = ( 1.0 * reaction_Sost_secretion) + (-1.0 * reaction_Sost_degradation) + (-1.0 * reaction_Inactivation_of_Wnt_by_Sost) + ( 1.0 * reaction_Inactivation_of_Wnt_by_Sost);
	
% Species:   id = Tgfb_A, name = Tgfb_A, affected by kineticLaw
	xdot(23) = (-1.0 * reaction_Osteoblast_progenitor_differentiation_by_Tgfb) + ( 1.0 * reaction_Osteoblast_progenitor_differentiation_by_Tgfb) + (-1.0 * reaction_Ob_p_Tgfb_binding) + ( 1.0 * reaction_Ob_p_Tgfb_release) + (-1.0 * reaction_Ob_maturation_to_Ocy_by_Tgfb) + ( 1.0 * reaction_Ob_maturation_to_Ocy_by_Tgfb) + ( 1.0 * reaction_Tgfb_activation) + (-1.0 * reaction_Tgfb_degradation) + (-1.0 * reaction_Tgfb_degradation_by_PTH);
	
% Species:   id = Tgfb_I, name = Tgfb_I, affected by kineticLaw
	xdot(24) = ( 1.0 * reaction_Tgfb_secretion_by_Obm) + (-1.0 * reaction_Tgfb_activation);
	
% Species:   id = Wnt_A, name = Wnt_A, affected by kineticLaw
	xdot(25) = ( 1.0 * reaction_Wnt_activation) + ( 1.0 * reaction_Wnt_activation_by_PTH) + (-1.0 * reaction_Inactivation_of_Wnt_by_Sost) + (-1.0 * reaction_MSC_differentiation_to_Ob_pro) + ( 1.0 * reaction_MSC_differentiation_to_Ob_pro);
	
% Species:   id = Wnt_I, name = Wnt_I, affected by kineticLaw
	xdot(26) = (-1.0 * reaction_Wnt_activation) + (-1.0 * reaction_Wnt_activation_by_PTH) + ( 1.0 * reaction_Inactivation_of_Wnt_by_Sost);
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(27) = ( 1.0 * reaction_Xsynthesis);
	
% Species:   id = newbone, name = newbone, affected by kineticLaw
	xdot(28) = ( 1.0 * reaction_Bone_formation) + ( 1.0 * reaction_Bone_formation_Obm_PTH);
	
% Species:   id = Bax, name = Bax, affected by kineticLaw
	xdot(29) = (-1.0 * reaction_Ob_m_apoptosis) + ( 1.0 * reaction_Ob_m_apoptosis) + (-1.0 * reaction_Ob_m_PTH_apoptosis) + ( 1.0 * reaction_Ob_m_PTH_apoptosis) + (-1.0 * reaction_Bax_Bcl2_binding) + ( 1.0 * reaction_Bax_Bcl2_release);
	
% Species:   id = Bax_Bcl2, name = Bax_Bcl2, affected by kineticLaw
	xdot(30) = ( 1.0 * reaction_Bax_Bcl2_binding) + (-1.0 * reaction_Bax_Bcl2_release);
	
% Species:   id = Bcl2, name = Bcl2, affected by kineticLaw
	xdot(31) = ( 1.0 * reaction_Bcl2_synthesis) + (-1.0 * reaction_Bcl2_degradation) + (-1.0 * reaction_Bax_Bcl2_binding) + ( 1.0 * reaction_Bax_Bcl2_release);
	
% Species:   id = CREB, name = CREB, affected by kineticLaw
	xdot(32) = (-1.0 * reaction_CREB_activation) + ( 1.0 * reaction_CREB_inactivation);
	
% Species:   id = CREB_P, name = CREB_P, affected by kineticLaw
	xdot(33) = ( 1.0 * reaction_CREB_activation) + (-1.0 * reaction_CREB_inactivation) + (-1.0 * reaction_CREB_Runx2_binding) + ( 1.0 * reaction_CREB_Runx2_release);
	
% Species:   id = CREB_Runx2, name = CREB_Runx2, affected by kineticLaw
	xdot(34) = ( 1.0 * reaction_CREB_Runx2_binding) + (-1.0 * reaction_CREB_Runx2_release) + (-1.0 * reaction_Bcl2_synthesis) + ( 1.0 * reaction_Bcl2_synthesis);
	
% Species:   id = Runx2, name = Runx2, affected by kineticLaw
	xdot(35) = (-1.0 * reaction_CREB_Runx2_binding) + ( 1.0 * reaction_CREB_Runx2_release) + ( 1.0 * reaction_Runx2_synthesis) + (-1.0 * reaction_Runx2_degradation_via_PTH) + (-1.0 * reaction_Runx2_degradation);
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


