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
% Model name = Kok2020 - IFNalpha-induced signaling in Huh7.5 cells
%
%


function main()
%Initial conditions vector
	x0=zeros(41,1);
	x0(1) = 1989.0;
	x0(2) = 0.8286;
	x0(3) = 50000.0;
	x0(4) = 0.0;
	x0(5) = 1746.0;
	x0(6) = 486300.0;
	x0(7) = 30390.0;
	x0(8) = 0.0;
	x0(9) = 0.0;
	x0(10) = 48630.0;
	x0(11) = 3039.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 140.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 1400.0;
	x0(20) = 1.081;
	x0(21) = 1.012;
	x0(22) = 0.8458;
	x0(23) = 0.8606;
	x0(24) = 0.9258;
	x0(25) = 1.781;
	x0(26) = 0.7077;
	x0(27) = 0.8286;
	x0(28) = 1.081;
	x0(29) = 460600.0;
	x0(30) = 460600.0;
	x0(31) = 460600.0;
	x0(32) = 2520.0;
	x0(33) = 2520.0;
	x0(34) = 2520.0;
	x0(35) = 2520.0;
	x0(36) = 2520.0;
	x0(37) = 249.7;
	x0(38) = 249.7;
	x0(39) = 1745.0;
	x0(40) = 1745.0;
	x0(41) = 0.8286;


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

% Reaction: id = Receptor_degradation_basal, name = Receptor degradation basal	% Local Parameter:   id =  degRec, name = degRec
	reaction_Receptor_degradation_basal_degRec=2.06E-5;

	reaction_Receptor_degradation_basal=compartment_compartment*Receptor_degradation_basal_0(reaction_Receptor_degradation_basal_degRec, x(1));

% Reaction: id = Receptor_degradation_by_SOCS1, name = Receptor degradation by SOCS1	% Local Parameter:   id =  degRecBySOCS, name = degRecBySOCS
	reaction_Receptor_degradation_by_SOCS1_degRecBySOCS=0.01028;

	reaction_Receptor_degradation_by_SOCS1=compartment_compartment*Receptor_degradation_by_SOCS1_0(reaction_Receptor_degradation_by_SOCS1_degRecBySOCS, x(1), x(2));

% Reaction: id = Active_receptor_complex_formation, name = Active receptor complex formation	% Local Parameter:   id =  BindIFN, name = BindIFN
	reaction_Active_receptor_complex_formation_BindIFN=0.0593;
	% Local Parameter:   id =  kinhBySOCS, name = kinhBySOCS
	reaction_Active_receptor_complex_formation_kinhBySOCS=889.4;
	% Local Parameter:   id =  kinhByUSP18, name = kinhByUSP18
	reaction_Active_receptor_complex_formation_kinhByUSP18=1.364E-4;

	reaction_Active_receptor_complex_formation=compartment_compartment*Active_receptor_complex_formation_0(reaction_Active_receptor_complex_formation_BindIFN, x(3), x(1), reaction_Active_receptor_complex_formation_kinhBySOCS, x(2), reaction_Active_receptor_complex_formation_kinhByUSP18, x(5), x(20));

% Reaction: id = Active_receptor_complex_degradation_basal, name = Active receptor complex degradation basal	% Local Parameter:   id =  degaRecIFN, name = degaRecIFN
	reaction_Active_receptor_complex_degradation_basal_degaRecIFN=19840.0;

	reaction_Active_receptor_complex_degradation_basal=compartment_compartment*Active_receptor_complex_degradation_basal_0(x(4), reaction_Active_receptor_complex_degradation_basal_degaRecIFN);

% Reaction: id = Active_receptor_complex_degradation_by_SOCS1, name = Active receptor complex degradation by SOCS1	% Local Parameter:   id =  degaRecIFNBySOCS, name = degaRecIFNBySOCS
	reaction_Active_receptor_complex_degradation_by_SOCS1_degaRecIFNBySOCS=0.8837;

	reaction_Active_receptor_complex_degradation_by_SOCS1=compartment_compartment*Active_receptor_complex_degradation_by_SOCS1_0(x(4), reaction_Active_receptor_complex_degradation_by_SOCS1_degaRecIFNBySOCS, x(2));

% Reaction: id = Active_receptor_complex_degradation_by_USP18, name = Active receptor complex degradation by USP18	% Local Parameter:   id =  degByUSP18, name = degByUSP18
	reaction_Active_receptor_complex_degradation_by_USP18_degByUSP18=0.01644;

	reaction_Active_receptor_complex_degradation_by_USP18=compartment_compartment*Active_receptor_complex_degradation_by_USP18_0(x(4), reaction_Active_receptor_complex_degradation_by_USP18_degByUSP18, x(5));

% Reaction: id = Active_receptor_complex_degradation_by_USP18_and_SOCS1__synergy, name = Active receptor complex degradation by USP18 and SOCS1 (synergy)	% Local Parameter:   id =  degBySOCSandUSP18, name = degBySOCSandUSP18
	reaction_Active_receptor_complex_degradation_by_USP18_and_SOCS1__synergy_degBySOCSandUSP18=27.82;

	reaction_Active_receptor_complex_degradation_by_USP18_and_SOCS1__synergy=compartment_compartment*Active_receptor_complex_degradation_by_USP18_and_SOCS1__synergy_0(x(4), reaction_Active_receptor_complex_degradation_by_USP18_and_SOCS1__synergy_degBySOCSandUSP18, x(2), x(5));

% Reaction: id = USP18_degradation, name = USP18 degradation	% Local Parameter:   id =  degUSP18, name = degUSP18
	reaction_USP18_degradation_degUSP18=0.6719;

	reaction_USP18_degradation=compartment_compartment*USP18_degradation_0(reaction_USP18_degradation_degUSP18, x(5));

% Reaction: id = Heterodimer_complex_formation, name = Heterodimer complex formation	% Local Parameter:   id =  ComplFormSTAT1STAT2c, name = ComplFormSTAT1STAT2c
	reaction_Heterodimer_complex_formation_ComplFormSTAT1STAT2c=0.001112;

	reaction_Heterodimer_complex_formation=compartment_compartment*Heterodimer_complex_formation_0(reaction_Heterodimer_complex_formation_ComplFormSTAT1STAT2c, x(4), x(6), x(7));

% Reaction: id = Heterodimer_translocation_to_nucleus, name = Heterodimer translocation to nucleus	% Local Parameter:   id =  TrLocSTAT1STAT2c, name = TrLocSTAT1STAT2c
	reaction_Heterodimer_translocation_to_nucleus_TrLocSTAT1STAT2c=0.1855;

	reaction_Heterodimer_translocation_to_nucleus=compartment_compartment*Heterodimer_translocation_to_nucleus_0(reaction_Heterodimer_translocation_to_nucleus_TrLocSTAT1STAT2c, x(8));

% Reaction: id = Heterodimer_decay, name = Heterodimer decay	% Local Parameter:   id =  decaySTAT1STAT2n, name = decaySTAT1STAT2n
	reaction_Heterodimer_decay_decaySTAT1STAT2n=1.187;

	reaction_Heterodimer_decay=compartment_compartment*Heterodimer_decay_0(reaction_Heterodimer_decay_decaySTAT1STAT2n, x(9));

% Reaction: id = ISGF3_complex_formation, name = ISGF3 complex formation	% Local Parameter:   id =  BindIRF9, name = BindIRF9
	reaction_ISGF3_complex_formation_BindIRF9=0.008975;

	reaction_ISGF3_complex_formation=compartment_compartment*ISGF3_complex_formation_0(reaction_ISGF3_complex_formation_BindIRF9, x(8), x(19));

% Reaction: id = ISGF3_translocation_to_nucleus, name = ISGF3 translocation to nucleus	% Local Parameter:   id =  TrLocISGF3c, name = TrLocISGF3c
	reaction_ISGF3_translocation_to_nucleus_TrLocISGF3c=0.8636;

	reaction_ISGF3_translocation_to_nucleus=compartment_compartment*ISGF3_translocation_to_nucleus_0(reaction_ISGF3_translocation_to_nucleus_TrLocISGF3c, x(12));

% Reaction: id = ISGF3_decay, name = ISGF3 decay	% Local Parameter:   id =  decayISGF3n, name = decayISGF3n
	reaction_ISGF3_decay_decayISGF3n=3.407;

	reaction_ISGF3_decay=compartment_compartment*ISGF3_decay_0(reaction_ISGF3_decay_decayISGF3n, x(13));

% Reaction: id = Homodimer_complex_formation, name = Homodimer complex formation	% Local Parameter:   id =  ComplFormSTAT1dimc, name = ComplFormSTAT1dimc
	reaction_Homodimer_complex_formation_ComplFormSTAT1dimc=7.12E-6;

	reaction_Homodimer_complex_formation=compartment_compartment*Homodimer_complex_formation_0(reaction_Homodimer_complex_formation_ComplFormSTAT1dimc, x(4), x(6));

% Reaction: id = Homodimer_translocation_to_nucleus, name = Homodimer translocation to nucleus	% Local Parameter:   id =  TrLocSTAT1dimc, name = TrLocSTAT1dimc
	reaction_Homodimer_translocation_to_nucleus_TrLocSTAT1dimc=4.296;

	reaction_Homodimer_translocation_to_nucleus=compartment_compartment*Homodimer_translocation_to_nucleus_0(reaction_Homodimer_translocation_to_nucleus_TrLocSTAT1dimc, x(15));

% Reaction: id = Homodimer_decay, name = Homodimer decay	% Local Parameter:   id =  decaySTAT1dimn, name = decaySTAT1dimn
	reaction_Homodimer_decay_decaySTAT1dimn=10.53;

	reaction_Homodimer_decay=compartment_compartment*Homodimer_decay_0(reaction_Homodimer_decay_decaySTAT1dimn, x(16));

% Reaction: id = OccGAS_ISREbs_formation_by_ISGF3, name = OccGAS_ISREbs formation by ISGF3	% Local Parameter:   id =  genOccGAS_ISREbsByISGF3n, name = genOccGAS_ISREbsByISGF3n
	reaction_OccGAS_ISREbs_formation_by_ISGF3_genOccGAS_ISREbsByISGF3n=3.583E-4;

	reaction_OccGAS_ISREbs_formation_by_ISGF3=compartment_compartment*OccGAS_ISREbs_formation_by_ISGF3_0(reaction_OccGAS_ISREbs_formation_by_ISGF3_genOccGAS_ISREbsByISGF3n, x(13));

% Reaction: id = OccGAS_ISREbs_formation_by_heterodimer, name = OccGAS_ISREbs formation by heterodimer	% Local Parameter:   id =  genOccGAS_ISREbsBySTAT1STAT2n, name = genOccGAS_ISREbsBySTAT1STAT2n
	reaction_OccGAS_ISREbs_formation_by_heterodimer_genOccGAS_ISREbsBySTAT1STAT2n=2.972E-4;

	reaction_OccGAS_ISREbs_formation_by_heterodimer=compartment_compartment*OccGAS_ISREbs_formation_by_heterodimer_0(reaction_OccGAS_ISREbs_formation_by_heterodimer_genOccGAS_ISREbsBySTAT1STAT2n, x(9));

% Reaction: id = OccGAS_ISREbs_decay, name = OccGAS_ISREbs decay	% Local Parameter:   id =  hlOccGAS_ISREbs, name = hlOccGAS_ISREbs
	reaction_OccGAS_ISREbs_decay_hlOccGAS_ISREbs=0.5519;

	reaction_OccGAS_ISREbs_decay=compartment_compartment*OccGAS_ISREbs_decay_0(reaction_OccGAS_ISREbs_decay_hlOccGAS_ISREbs, x(17));

% Reaction: id = Occupy_GAS_binding_site, name = Occupy GAS binding site	% Local Parameter:   id =  genOccGASbsBySTAT1dimn, name = genOccGASbsBySTAT1dimn
	reaction_Occupy_GAS_binding_site_genOccGASbsBySTAT1dimn=1395.0;

	reaction_Occupy_GAS_binding_site=compartment_compartment*Occupy_GAS_binding_site_0(reaction_Occupy_GAS_binding_site_genOccGASbsBySTAT1dimn, x(16));

% Reaction: id = OccGASbs_0, name = OccGASbs	% Local Parameter:   id =  hlOccGASbs, name = hlOccGASbs
	reaction_OccGASbs_0_hlOccGASbs=1395.0;

	reaction_OccGASbs_0=compartment_compartment*OccGASbs_1(reaction_OccGASbs_0_hlOccGASbs, x(18));

% Reaction: id = STAT1_degradation, name = STAT1 degradation	% Local Parameter:   id =  degSTAT1, name = degSTAT1
	reaction_STAT1_degradation_degSTAT1=0.4996;

	reaction_STAT1_degradation=compartment_compartment*STAT1_degradation_0(reaction_STAT1_degradation_degSTAT1, x(6));

% Reaction: id = STAT1_translocation_to_cytoplasm, name = STAT1 translocation to cytoplasm	% Local Parameter:   id =  TrLocSTAT1n, name = TrLocSTAT1n
	reaction_STAT1_translocation_to_cytoplasm_TrLocSTAT1n=0.9702;

	reaction_STAT1_translocation_to_cytoplasm=compartment_compartment*STAT1_translocation_to_cytoplasm_0(reaction_STAT1_translocation_to_cytoplasm_TrLocSTAT1n, x(10));

% Reaction: id = STAT1_translocation_to_nucleus, name = STAT1 translocation to nucleus	% Local Parameter:   id =  TrLocSTAT1c, name = TrLocSTAT1c
	reaction_STAT1_translocation_to_nucleus_TrLocSTAT1c=0.09702;

	reaction_STAT1_translocation_to_nucleus=compartment_compartment*STAT1_translocation_to_nucleus_0(reaction_STAT1_translocation_to_nucleus_TrLocSTAT1c, x(6));

% Reaction: id = STAT2_degradation, name = STAT2 degradation	% Local Parameter:   id =  degSTAT2, name = degSTAT2
	reaction_STAT2_degradation_degSTAT2=0.1468;

	reaction_STAT2_degradation=compartment_compartment*STAT2_degradation_0(reaction_STAT2_degradation_degSTAT2, x(7));

% Reaction: id = STAT2_translocation_to_cytoplasm, name = STAT2 translocation to cytoplasm	% Local Parameter:   id =  TrLocSTAT2n, name = TrLocSTAT2n
	reaction_STAT2_translocation_to_cytoplasm_TrLocSTAT2n=1.81;

	reaction_STAT2_translocation_to_cytoplasm=compartment_compartment*STAT2_translocation_to_cytoplasm_0(reaction_STAT2_translocation_to_cytoplasm_TrLocSTAT2n, x(11));

% Reaction: id = STAT2_translocation_to_nucleus, name = STAT2 translocation to nucleus	% Local Parameter:   id =  TrLocSTAT2c, name = TrLocSTAT2c
	reaction_STAT2_translocation_to_nucleus_TrLocSTAT2c=0.181;

	reaction_STAT2_translocation_to_nucleus=compartment_compartment*STAT2_translocation_to_nucleus_0(reaction_STAT2_translocation_to_nucleus_TrLocSTAT2c, x(7));

% Reaction: id = IRF9_translocation_to_cytoplasm, name = IRF9 translocation to cytoplasm	% Local Parameter:   id =  TrLocIRF9n, name = TrLocIRF9n
	reaction_IRF9_translocation_to_cytoplasm_TrLocIRF9n=2981.0;

	reaction_IRF9_translocation_to_cytoplasm=compartment_compartment*IRF9_translocation_to_cytoplasm_0(reaction_IRF9_translocation_to_cytoplasm_TrLocIRF9n, x(14));

% Reaction: id = IRF9_translocation_to_nucleus, name = IRF9 translocation to nucleus	% Local Parameter:   id =  TrLocIRF9c, name = TrLocIRF9c
	reaction_IRF9_translocation_to_nucleus_TrLocIRF9c=298.1;

	reaction_IRF9_translocation_to_nucleus=compartment_compartment*IRF9_translocation_to_nucleus_0(reaction_IRF9_translocation_to_nucleus_TrLocIRF9c, x(19));

% Reaction: id = IRF9_degradation, name = IRF9 degradation	% Local Parameter:   id =  degIRF9, name = degIRF9
	reaction_IRF9_degradation_degIRF9=0.2028;

	reaction_IRF9_degradation=compartment_compartment*IRF9_degradation_0(reaction_IRF9_degradation_degIRF9, x(19));

% Reaction: id = SOCS1_degradation, name = SOCS1 degradation	% Local Parameter:   id =  degSOCS1, name = degSOCS1
	reaction_SOCS1_degradation_degSOCS1=0.9029;

	reaction_SOCS1_degradation=compartment_compartment*SOCS1_degradation_0(reaction_SOCS1_degradation_degSOCS1, x(2));

% Reaction: id = SOCS3_synthesis, name = SOCS3 synthesis	% Local Parameter:   id =  synthSOCS3, name = synthSOCS3
	reaction_SOCS3_synthesis_synthSOCS3=1958.0;

	reaction_SOCS3_synthesis=compartment_compartment*SOCS3_synthesis_0(reaction_SOCS3_synthesis_synthSOCS3, x(28));

% Reaction: id = SOCS3_degradation, name = SOCS3 degradation	% Local Parameter:   id =  degSOCS3, name = degSOCS3
	reaction_SOCS3_degradation_degSOCS3=1958.0;

	reaction_SOCS3_degradation=compartment_compartment*SOCS3_degradation_0(reaction_SOCS3_degradation_degSOCS3, x(20));

% Reaction: id = STAT1mRNA_production_by_ISRE, name = STAT1mRNA production by ISRE	% Local Parameter:   id =  synthSTAT1mRNA, name = synthSTAT1mRNA
	reaction_STAT1mRNA_production_by_ISRE_synthSTAT1mRNA=4.375;
	% Local Parameter:   id =  kmSTAT1, name = kmSTAT1
	reaction_STAT1mRNA_production_by_ISRE_kmSTAT1=0.9761;

	reaction_STAT1mRNA_production_by_ISRE=compartment_compartment*STAT1mRNA_production_by_ISRE_0(reaction_STAT1mRNA_production_by_ISRE_synthSTAT1mRNA, x(17), reaction_STAT1mRNA_production_by_ISRE_kmSTAT1);

% Reaction: id = STAT1mRNA_decay, name = STAT1mRNA decay	% Local Parameter:   id =  hlSTAT1mRNA, name = hlSTAT1mRNA
	reaction_STAT1mRNA_decay_hlSTAT1mRNA=0.2367;

	reaction_STAT1mRNA_decay=compartment_compartment*STAT1mRNA_decay_0(reaction_STAT1mRNA_decay_hlSTAT1mRNA, x(21));

% Reaction: id = STAT2mRNA_production_by_ISRE, name = STAT2mRNA production by ISRE	% Local Parameter:   id =  synthSTAT2mRNA, name = synthSTAT2mRNA
	reaction_STAT2mRNA_production_by_ISRE_synthSTAT2mRNA=1.561;

	reaction_STAT2mRNA_production_by_ISRE=compartment_compartment*STAT2mRNA_production_by_ISRE_0(reaction_STAT2mRNA_production_by_ISRE_synthSTAT2mRNA, x(17));

% Reaction: id = STAT2mRNA_decay, name = STAT2mRNA decay	% Local Parameter:   id =  hlSTAT2mRNA, name = hlSTAT2mRNA
	reaction_STAT2mRNA_decay_hlSTAT2mRNA=0.2446;

	reaction_STAT2mRNA_decay=compartment_compartment*STAT2mRNA_decay_0(reaction_STAT2mRNA_decay_hlSTAT2mRNA, x(22));

% Reaction: id = IRF9mRNA_production_by_ISRE, name = IRF9mRNA production by ISRE	% Local Parameter:   id =  synthIRF9mRNA, name = synthIRF9mRNA
	reaction_IRF9mRNA_production_by_ISRE_synthIRF9mRNA=18.62;
	% Local Parameter:   id =  kmIRF9, name = kmIRF9
	reaction_IRF9mRNA_production_by_ISRE_kmIRF9=0.121;

	reaction_IRF9mRNA_production_by_ISRE=compartment_compartment*IRF9mRNA_production_by_ISRE_0(reaction_IRF9mRNA_production_by_ISRE_synthIRF9mRNA, x(17), reaction_IRF9mRNA_production_by_ISRE_kmIRF9);

% Reaction: id = IRF9mRNA_decay, name = IRF9mRNA decay	% Local Parameter:   id =  hlIRF9mRNA, name = hlIRF9mRNA
	reaction_IRF9mRNA_decay_hlIRF9mRNA=0.4189;

	reaction_IRF9mRNA_decay=compartment_compartment*IRF9mRNA_decay_0(reaction_IRF9mRNA_decay_hlIRF9mRNA, x(23));

% Reaction: id = IRF2mRNA_production_by_ISRE, name = IRF2mRNA production by ISRE	% Local Parameter:   id =  synthIRF2mRNA, name = synthIRF2mRNA
	reaction_IRF2mRNA_production_by_ISRE_synthIRF2mRNA=0.6775;

	reaction_IRF2mRNA_production_by_ISRE=compartment_compartment*IRF2mRNA_production_by_ISRE_0(reaction_IRF2mRNA_production_by_ISRE_synthIRF2mRNA, x(17));

% Reaction: id = IRF2_translation_and_mRNA_decay, name = IRF2 translation and mRNA decay	% Local Parameter:   id =  delayIRF2, name = delayIRF2
	reaction_IRF2_translation_and_mRNA_decay_delayIRF2=1.062;

	reaction_IRF2_translation_and_mRNA_decay=compartment_compartment*IRF2_translation_and_decay_of_mRNA(reaction_IRF2_translation_and_mRNA_decay_delayIRF2, x(24));

% Reaction: id = USP18mRNA_production_by_ISRE, name = USP18mRNA production by ISRE	% Local Parameter:   id =  synthUSP18mRNA, name = synthUSP18mRNA
	reaction_USP18mRNA_production_by_ISRE_synthUSP18mRNA=2.784;

	reaction_USP18mRNA_production_by_ISRE=compartment_compartment*USP18mRNA_production_by_ISRE_0(reaction_USP18mRNA_production_by_ISRE_synthUSP18mRNA, x(17));

% Reaction: id = USP18mRNA_decay, name = USP18mRNA decay	% Local Parameter:   id =  hlUSP18mRNA, name = hlUSP18mRNA
	reaction_USP18mRNA_decay_hlUSP18mRNA=0.09103;

	reaction_USP18mRNA_decay=compartment_compartment*USP18mRNA_decay_0(reaction_USP18mRNA_decay_hlUSP18mRNA, x(26));

% Reaction: id = SOCS1mRNA_production_by_ISRE, name = SOCS1mRNA production by ISRE	% Local Parameter:   id =  synthSOCS1mRNA, name = synthSOCS1mRNA
	reaction_SOCS1mRNA_production_by_ISRE_synthSOCS1mRNA=8.848;

	reaction_SOCS1mRNA_production_by_ISRE=compartment_compartment*SOCS1mRNA_production_by_ISRE_0(reaction_SOCS1mRNA_production_by_ISRE_synthSOCS1mRNA, x(17));

% Reaction: id = SOCS1mRNA_decay, name = SOCS1mRNA decay	% Local Parameter:   id =  hlSOCS1mRNA, name = hlSOCS1mRNA
	reaction_SOCS1mRNA_decay_hlSOCS1mRNA=0.5644;

	reaction_SOCS1mRNA_decay=compartment_compartment*SOCS1mRNA_decay_0(reaction_SOCS1mRNA_decay_hlSOCS1mRNA, x(27), x(25));

% Reaction: id = SOCS3mRNA_production_by_ISRE, name = SOCS3mRNA production by ISRE	% Local Parameter:   id =  synthSOCS3mRNA, name = synthSOCS3mRNA
	reaction_SOCS3mRNA_production_by_ISRE_synthSOCS3mRNA=0.01205;

	reaction_SOCS3mRNA_production_by_ISRE=compartment_compartment*SOCS3mRNA_production_by_ISRE_0(reaction_SOCS3mRNA_production_by_ISRE_synthSOCS3mRNA, x(18));

% Reaction: id = SOCS3mRNA_decay, name = SOCS3mRNA decay	% Local Parameter:   id =  hlSOCS3mRNA, name = hlSOCS3mRNA
	reaction_SOCS3mRNA_decay_hlSOCS3mRNA=1.163;

	reaction_SOCS3mRNA_decay=compartment_compartment*SOCS3mRNA_decay_0(reaction_SOCS3mRNA_decay_hlSOCS3mRNA, x(28));

% Reaction: id = IRF2_degradation, name = IRF2 degradation	% Local Parameter:   id =  degIRF2, name = degIRF2
	reaction_IRF2_degradation_degIRF2=0.552;

	reaction_IRF2_degradation=compartment_compartment*IRF2_degradation_0(x(25), reaction_IRF2_degradation_degIRF2);

% Reaction: id = Linear_chain_for_time_delay_in_STAT1_translation, name = Linear chain for time delay in STAT1 translation	% Local Parameter:   id =  synthSTAT1, name = synthSTAT1
	reaction_Linear_chain_for_time_delay_in_STAT1_translation_synthSTAT1=1533000.0;
	% Local Parameter:   id =  kmsynthSTAT1, name = kmsynthSTAT1
	reaction_Linear_chain_for_time_delay_in_STAT1_translation_kmsynthSTAT1=5.373;

	reaction_Linear_chain_for_time_delay_in_STAT1_translation=compartment_compartment*Linear_chain_for_time_delay_in_STAT1_translation_0(reaction_Linear_chain_for_time_delay_in_STAT1_translation_synthSTAT1, x(21), reaction_Linear_chain_for_time_delay_in_STAT1_translation_kmsynthSTAT1);

% Reaction: id = STAT1_chain_step_1, name = STAT1 chain step 1	% Local Parameter:   id =  delaySTAT1, name = delaySTAT1
	reaction_STAT1_chain_step_1_delaySTAT1=0.5275;

	reaction_STAT1_chain_step_1=compartment_compartment*STAT1_chain_step_1_0(reaction_STAT1_chain_step_1_delaySTAT1, x(29));

% Reaction: id = STAT1_chain_step_2, name = STAT1 chain step 2	% Local Parameter:   id =  delaySTAT1, name = delaySTAT1
	reaction_STAT1_chain_step_2_delaySTAT1=0.5275;

	reaction_STAT1_chain_step_2=compartment_compartment*STAT1_chain_step_2_0(reaction_STAT1_chain_step_2_delaySTAT1, x(30));

% Reaction: id = STAT1_chain_step3, name = STAT1 chain step3	% Local Parameter:   id =  delaySTAT1, name = delaySTAT1
	reaction_STAT1_chain_step3_delaySTAT1=0.5275;

	reaction_STAT1_chain_step3=compartment_compartment*STAT1_chain_step_3(reaction_STAT1_chain_step3_delaySTAT1, x(31));

% Reaction: id = Linear_chain_for_time_delay_in_STAT2_translation, name = Linear chain for time delay in STAT2 translation	% Local Parameter:   id =  synthSTAT2, name = synthSTAT2
	reaction_Linear_chain_for_time_delay_in_STAT2_translation_synthSTAT2=5274.0;

	reaction_Linear_chain_for_time_delay_in_STAT2_translation=compartment_compartment*Linear_chain_for_time_delay_in_STAT2_translation_0(reaction_Linear_chain_for_time_delay_in_STAT2_translation_synthSTAT2, x(22));

% Reaction: id = STAT2_chain_step_1, name = STAT2 chain step 1	% Local Parameter:   id =  delaySTAT2, name = delaySTAT2
	reaction_STAT2_chain_step_1_delaySTAT2=1.77;

	reaction_STAT2_chain_step_1=compartment_compartment*STAT2_chain_step_1_0(reaction_STAT2_chain_step_1_delaySTAT2, x(32));

% Reaction: id = STAT2_chain_step_2, name = STAT2 chain step 2	% Local Parameter:   id =  delaySTAT2, name = delaySTAT2
	reaction_STAT2_chain_step_2_delaySTAT2=1.77;

	reaction_STAT2_chain_step_2=compartment_compartment*STAT2_chain_step_2_0(reaction_STAT2_chain_step_2_delaySTAT2, x(33));

% Reaction: id = STAT2_chain_step_3, name = STAT2 chain step 3	% Local Parameter:   id =  delaySTAT2, name = delaySTAT2
	reaction_STAT2_chain_step_3_delaySTAT2=1.77;

	reaction_STAT2_chain_step_3=compartment_compartment*STAT2_chain_step_3_0(reaction_STAT2_chain_step_3_delaySTAT2, x(34));

% Reaction: id = STAT2_chain_step_4, name = STAT2 chain step 4	% Local Parameter:   id =  delaySTAT2, name = delaySTAT2
	reaction_STAT2_chain_step_4_delaySTAT2=1.77;

	reaction_STAT2_chain_step_4=compartment_compartment*STAT2_chain_step_4_0(reaction_STAT2_chain_step_4_delaySTAT2, x(35));

% Reaction: id = STAT2_chain_step_5, name = STAT2 chain step 5	% Local Parameter:   id =  delaySTAT2, name = delaySTAT2
	reaction_STAT2_chain_step_5_delaySTAT2=1.77;

	reaction_STAT2_chain_step_5=compartment_compartment*STAT2_chain_step_5_0(reaction_STAT2_chain_step_5_delaySTAT2, x(36));

% Reaction: id = Linear_chain_for_time_delay_in_IRF9_translation, name = Linear chain for time delay in IRF9 translation	% Local Parameter:   id =  synthIRF9, name = synthIRF9
	reaction_Linear_chain_for_time_delay_in_IRF9_translation_synthIRF9=329.9;

	reaction_Linear_chain_for_time_delay_in_IRF9_translation=compartment_compartment*Linear_chain_for_time_delay_in_IRF9_translation_0(reaction_Linear_chain_for_time_delay_in_IRF9_translation_synthIRF9, x(23));

% Reaction: id = IRF9_chain_step_1, name = IRF9 chain step 1	% Local Parameter:   id =  delayIRF9, name = delayIRF9
	reaction_IRF9_chain_step_1_delayIRF9=1.137;

	reaction_IRF9_chain_step_1=compartment_compartment*IRF9_chain_step_1_0(reaction_IRF9_chain_step_1_delayIRF9, x(37));

% Reaction: id = IRF9_chain_step_2, name = IRF9 chain step 2	% Local Parameter:   id =  delayIRF9, name = delayIRF9
	reaction_IRF9_chain_step_2_delayIRF9=1.137;

	reaction_IRF9_chain_step_2=compartment_compartment*IRF9_chain_step2(reaction_IRF9_chain_step_2_delayIRF9, x(38));

% Reaction: id = Linear_chain_for_time_delay_in_USP18_translation, name = Linear chain for time delay in USP18 translation	% Local Parameter:   id =  synthUSP18, name = synthUSP18
	reaction_Linear_chain_for_time_delay_in_USP18_translation_synthUSP18=1658.0;

	reaction_Linear_chain_for_time_delay_in_USP18_translation=compartment_compartment*Linear_chain_for_time_delay_in_USP18_translation_0(reaction_Linear_chain_for_time_delay_in_USP18_translation_synthUSP18, x(26));

% Reaction: id = USP18_chain_step_1, name = USP18 chain step 1	% Local Parameter:   id =  delayUSP18, name = delayUSP18
	reaction_USP18_chain_step_1_delayUSP18=0.6722;

	reaction_USP18_chain_step_1=compartment_compartment*USP18_chain_step_1_0(reaction_USP18_chain_step_1_delayUSP18, x(39));

% Reaction: id = USP18_chain_step_2, name = USP18 chain step 2	% Local Parameter:   id =  delayUSP18, name = delayUSP18
	reaction_USP18_chain_step_2_delayUSP18=0.6722;

	reaction_USP18_chain_step_2=compartment_compartment*USP18_chain_step_2_0(reaction_USP18_chain_step_2_delayUSP18, x(40));

% Reaction: id = Linear_chain_for_time_delay_in_SOCS1_translation, name = Linear chain for time delay in SOCS1 translation	% Local Parameter:   id =  synthSOCS1, name = synthSOCS1
	reaction_Linear_chain_for_time_delay_in_SOCS1_translation_synthSOCS1=0.9029;

	reaction_Linear_chain_for_time_delay_in_SOCS1_translation=compartment_compartment*Linear_chain_for_time_delay_in_SOCS1_translation_0(reaction_Linear_chain_for_time_delay_in_SOCS1_translation_synthSOCS1, x(27));

% Reaction: id = SOCS1_chain_step_1, name = SOCS1 chain step 1	% Local Parameter:   id =  delaySOCS1, name = delaySOCS1
	reaction_SOCS1_chain_step_1_delaySOCS1=0.9029;

	reaction_SOCS1_chain_step_1=compartment_compartment*SOCS1_chain_step_1_0(reaction_SOCS1_chain_step_1_delaySOCS1, x(41));

	xdot=zeros(41,1);
	
% Species:   id = Rec, name = Rec, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment))*(( 1.0 * reaction_Receptor_production) + (-1.0 * reaction_Receptor_degradation_basal) + (-1.0 * reaction_Receptor_degradation_by_SOCS1) + (-1.0 * reaction_Active_receptor_complex_formation));
	
% Species:   id = SOCS1, name = SOCS1, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment))*((-1.0 * reaction_SOCS1_degradation) + ( 1.0 * reaction_SOCS1_chain_step_1));
	
% Species:   id = IFN, name = IFN, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment))*((-1.0 * reaction_Active_receptor_complex_formation));
	
% Species:   id = aRecIFN, name = aRecIFN, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment))*(( 1.0 * reaction_Active_receptor_complex_formation) + (-1.0 * reaction_Active_receptor_complex_degradation_basal) + (-1.0 * reaction_Active_receptor_complex_degradation_by_SOCS1) + (-1.0 * reaction_Active_receptor_complex_degradation_by_USP18) + (-1.0 * reaction_Active_receptor_complex_degradation_by_USP18_and_SOCS1__synergy));
	
% Species:   id = USP18, name = USP18, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment))*((-1.0 * reaction_USP18_degradation) + ( 1.0 * reaction_USP18_chain_step_2));
	
% Species:   id = STAT1c, name = STAT1c, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment))*((-1.0 * reaction_Heterodimer_complex_formation) + (-2.0 * reaction_Homodimer_complex_formation) + (-1.0 * reaction_STAT1_degradation) + ( 1.0 * reaction_STAT1_translocation_to_cytoplasm) + (-1.0 * reaction_STAT1_translocation_to_nucleus) + ( 1.0 * reaction_STAT1_chain_step3));
	
% Species:   id = STAT2c, name = STAT2c, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment))*((-1.0 * reaction_Heterodimer_complex_formation) + (-1.0 * reaction_STAT2_degradation) + ( 1.0 * reaction_STAT2_translocation_to_cytoplasm) + (-1.0 * reaction_STAT2_translocation_to_nucleus) + ( 1.0 * reaction_STAT2_chain_step_5));
	
% Species:   id = pSTAT1pSTAT2c, name = pSTAT1pSTAT2c, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment))*(( 1.0 * reaction_Heterodimer_complex_formation) + (-1.0 * reaction_Heterodimer_translocation_to_nucleus) + (-1.0 * reaction_ISGF3_complex_formation));
	
% Species:   id = pSTAT1pSTAT2n, name = pSTAT1pSTAT2n, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment))*(( 1.0 * reaction_Heterodimer_translocation_to_nucleus) + (-1.0 * reaction_Heterodimer_decay));
	
% Species:   id = STAT1n, name = STAT1n, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment))*(( 1.0 * reaction_Heterodimer_decay) + ( 1.0 * reaction_ISGF3_decay) + ( 2.0 * reaction_Homodimer_decay) + (-1.0 * reaction_STAT1_translocation_to_cytoplasm) + ( 1.0 * reaction_STAT1_translocation_to_nucleus));
	
% Species:   id = STAT2n, name = STAT2n, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment))*(( 1.0 * reaction_Heterodimer_decay) + ( 1.0 * reaction_ISGF3_decay) + (-1.0 * reaction_STAT2_translocation_to_cytoplasm) + ( 1.0 * reaction_STAT2_translocation_to_nucleus));
	
% Species:   id = ISGF3c, name = ISGF3c, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment))*(( 1.0 * reaction_ISGF3_complex_formation) + (-1.0 * reaction_ISGF3_translocation_to_nucleus));
	
% Species:   id = ISGF3n, name = ISGF3n, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment))*(( 1.0 * reaction_ISGF3_translocation_to_nucleus) + (-1.0 * reaction_ISGF3_decay));
	
% Species:   id = IRF9n, name = IRF9n, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment))*(( 1.0 * reaction_ISGF3_decay) + (-1.0 * reaction_IRF9_translocation_to_cytoplasm) + ( 1.0 * reaction_IRF9_translocation_to_nucleus));
	
% Species:   id = pSTAT1dimc, name = pSTAT1dimc, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment))*(( 1.0 * reaction_Homodimer_complex_formation) + (-1.0 * reaction_Homodimer_translocation_to_nucleus));
	
% Species:   id = pSTAT1dimn, name = pSTAT1dimn, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment))*(( 1.0 * reaction_Homodimer_translocation_to_nucleus) + (-1.0 * reaction_Homodimer_decay));
	
% Species:   id = OccGAS_ISREbs, name = OccGAS_ISREbs, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment))*(( 1.0 * reaction_OccGAS_ISREbs_formation_by_ISGF3) + ( 1.0 * reaction_OccGAS_ISREbs_formation_by_heterodimer) + (-1.0 * reaction_OccGAS_ISREbs_decay));
	
% Species:   id = OccGASbs, name = OccGASbs, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment))*(( 1.0 * reaction_Occupy_GAS_binding_site) + (-1.0 * reaction_OccGASbs_0));
	
% Species:   id = IRF9c, name = IRF9c, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment))*((-1.0 * reaction_ISGF3_complex_formation) + ( 1.0 * reaction_IRF9_translocation_to_cytoplasm) + (-1.0 * reaction_IRF9_translocation_to_nucleus) + (-1.0 * reaction_IRF9_degradation) + ( 1.0 * reaction_IRF9_chain_step_2));
	
% Species:   id = SOCS3, name = SOCS3, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment))*(( 1.0 * reaction_SOCS3_synthesis) + (-1.0 * reaction_SOCS3_degradation));
	
% Species:   id = STAT1mRNA, name = STAT1mRNA, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment))*(( 1.0 * reaction_STAT1_mRNA_basal_production) + ( 1.0 * reaction_STAT1mRNA_production_by_ISRE) + (-1.0 * reaction_STAT1mRNA_decay));
	
% Species:   id = STAT2mRNA, name = STAT2mRNA, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment))*(( 1.0 * reaction_STAT2mRNA_basal_production) + ( 1.0 * reaction_STAT2mRNA_production_by_ISRE) + (-1.0 * reaction_STAT2mRNA_decay));
	
% Species:   id = IRF9mRNA, name = IRF9mRNA, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment))*(( 1.0 * reaction_IRF9mRNA_basal_production) + ( 1.0 * reaction_IRF9mRNA_production_by_ISRE) + (-1.0 * reaction_IRF9mRNA_decay));
	
% Species:   id = IRF2mRNA, name = IRF2mRNA, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment))*(( 1.0 * reaction_IRF2mRNA_basal_production) + ( 1.0 * reaction_IRF2mRNA_production_by_ISRE) + (-1.0 * reaction_IRF2_translation_and_mRNA_decay));
	
% Species:   id = IRF2, name = IRF2, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment))*(( 1.0 * reaction_IRF2_translation_and_mRNA_decay) + (-1.0 * reaction_IRF2_degradation));
	
% Species:   id = USP18mRNA, name = USP18mRNA, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment))*(( 1.0 * reaction_USP18mRNA_basal_production) + ( 1.0 * reaction_USP18mRNA_production_by_ISRE) + (-1.0 * reaction_USP18mRNA_decay));
	
% Species:   id = SOCS1mRNA, name = SOCS1mRNA, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment))*(( 1.0 * reaction_SOCS1mRNA_basal_production) + ( 1.0 * reaction_SOCS1mRNA_production_by_ISRE) + (-1.0 * reaction_SOCS1mRNA_decay));
	
% Species:   id = SOCS3mRNA, name = SOCS3mRNA, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment))*(( 1.0 * reaction_SOCS3mRNA_basal_production) + ( 1.0 * reaction_SOCS3mRNA_production_by_ISRE) + (-1.0 * reaction_SOCS3mRNA_decay));
	
% Species:   id = STAT1_LC_1, name = STAT1_LC_1, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment))*(( 1.0 * reaction_Linear_chain_for_time_delay_in_STAT1_translation) + (-1.0 * reaction_STAT1_chain_step_1));
	
% Species:   id = STAT1_LC_2, name = STAT1_LC_2, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment))*(( 1.0 * reaction_STAT1_chain_step_1) + (-1.0 * reaction_STAT1_chain_step_2));
	
% Species:   id = STAT1_LC_3, name = STAT1_LC_3, affected by kineticLaw
	xdot(31) = (1/(compartment_compartment))*(( 1.0 * reaction_STAT1_chain_step_2) + (-1.0 * reaction_STAT1_chain_step3));
	
% Species:   id = STAT2_LC_1, name = STAT2_LC_1, affected by kineticLaw
	xdot(32) = (1/(compartment_compartment))*(( 1.0 * reaction_Linear_chain_for_time_delay_in_STAT2_translation) + (-1.0 * reaction_STAT2_chain_step_1));
	
% Species:   id = STAT2_LC_2, name = STAT2_LC_2, affected by kineticLaw
	xdot(33) = (1/(compartment_compartment))*(( 1.0 * reaction_STAT2_chain_step_1) + (-1.0 * reaction_STAT2_chain_step_2));
	
% Species:   id = STAT2_LC_3, name = STAT2_LC_3, affected by kineticLaw
	xdot(34) = (1/(compartment_compartment))*(( 1.0 * reaction_STAT2_chain_step_2) + (-1.0 * reaction_STAT2_chain_step_3));
	
% Species:   id = STAT2_LC_4, name = STAT2_LC_4, affected by kineticLaw
	xdot(35) = (1/(compartment_compartment))*(( 1.0 * reaction_STAT2_chain_step_3) + (-1.0 * reaction_STAT2_chain_step_4));
	
% Species:   id = STAT2_LC_5, name = STAT2_LC_5, affected by kineticLaw
	xdot(36) = (1/(compartment_compartment))*(( 1.0 * reaction_STAT2_chain_step_4) + (-1.0 * reaction_STAT2_chain_step_5));
	
% Species:   id = IRF9_LC_1, name = IRF9_LC_1, affected by kineticLaw
	xdot(37) = (1/(compartment_compartment))*(( 1.0 * reaction_Linear_chain_for_time_delay_in_IRF9_translation) + (-1.0 * reaction_IRF9_chain_step_1));
	
% Species:   id = IRF9_LC_2, name = IRF9_LC_2, affected by kineticLaw
	xdot(38) = (1/(compartment_compartment))*(( 1.0 * reaction_IRF9_chain_step_1) + (-1.0 * reaction_IRF9_chain_step_2));
	
% Species:   id = USP18_LC_1, name = USP18_LC_1, affected by kineticLaw
	xdot(39) = (1/(compartment_compartment))*(( 1.0 * reaction_Linear_chain_for_time_delay_in_USP18_translation) + (-1.0 * reaction_USP18_chain_step_1));
	
% Species:   id = USP18_LC_2, name = USP18_LC_2, affected by kineticLaw
	xdot(40) = (1/(compartment_compartment))*(( 1.0 * reaction_USP18_chain_step_1) + (-1.0 * reaction_USP18_chain_step_2));
	
% Species:   id = SOCS1_LC_1, name = SOCS1_LC_1, affected by kineticLaw
	xdot(41) = (1/(compartment_compartment))*(( 1.0 * reaction_Linear_chain_for_time_delay_in_SOCS1_translation) + (-1.0 * reaction_SOCS1_chain_step_1));
end

function z=Homodimer_decay_0(decaySTAT1dimn,pSTAT1dimn), z=(decaySTAT1dimn*pSTAT1dimn);end

function z=OccGAS_ISREbs_decay_0(hlOccGAS_ISREbs,OccGAS_ISREbs), z=(hlOccGAS_ISREbs*OccGAS_ISREbs);end

function z=OccGAS_ISREbs_formation_by_heterodimer_0(genOccGAS_ISREbsBySTAT1STAT2n,pSTAT1pSTAT2n), z=(genOccGAS_ISREbsBySTAT1STAT2n*pSTAT1pSTAT2n);end

function z=OccGAS_ISREbs_formation_by_ISGF3_0(genOccGAS_ISREbsByISGF3n,ISGF3n), z=(genOccGAS_ISREbsByISGF3n*ISGF3n);end

function z=Occupy_GAS_binding_site_0(genOccGASbsBySTAT1dimn,pSTAT1dimn), z=(genOccGASbsBySTAT1dimn*pSTAT1dimn);end

function z=SOCS1_chain_step_1_0(delaySOCS1,SOCS1_LC_1), z=(delaySOCS1*SOCS1_LC_1);end

function z=Homodimer_translocation_to_nucleus_0(TrLocSTAT1dimc,pSTAT1dimc), z=(TrLocSTAT1dimc*pSTAT1dimc);end

function z=IRF2mRNA_basal_production_0(synthIRF2mRNAbasal), z=(synthIRF2mRNAbasal);end

function z=IRF9_chain_step2(delayIRF9,IRF9_LC_2), z=(delayIRF9*IRF9_LC_2);end

function z=Linear_chain_for_time_delay_in_USP18_translation_0(synthUSP18,USP18mRNA), z=(synthUSP18*USP18mRNA);end

function z=USP18_chain_step_1_0(delayUSP18,USP18_LC_1), z=(delayUSP18*USP18_LC_1);end

function z=USP18_chain_step_2_0(delayUSP18,USP18_LC_2), z=(delayUSP18*USP18_LC_2);end

function z=Linear_chain_for_time_delay_in_SOCS1_translation_0(synthSOCS1,SOCS1mRNA), z=(synthSOCS1*SOCS1mRNA);end

function z=STAT1_translocation_to_nucleus_0(TrLocSTAT1c,STAT1c), z=(TrLocSTAT1c*STAT1c);end

function z=Receptor_degradation_by_SOCS1_0(degRecBySOCS,Rec,SOCS1), z=(degRecBySOCS*Rec*SOCS1);end

function z=Active_receptor_complex_formation_0(BindIFN,IFN,Rec,kinhBySOCS,SOCS1,kinhByUSP18,USP18,SOCS3), z=(BindIFN*IFN*Rec/(1+kinhBySOCS*SOCS1)/(1+kinhByUSP18*USP18)/SOCS3);end

function z=Active_receptor_complex_degradation_basal_0(aRecIFN,degaRecIFN), z=(aRecIFN*degaRecIFN);end

function z=Active_receptor_complex_degradation_by_USP18_and_SOCS1__synergy_0(aRecIFN,degBySOCSandUSP18,SOCS1,USP18), z=(aRecIFN*degBySOCSandUSP18*SOCS1*USP18);end

function z=USP18_degradation_0(degUSP18,USP18), z=(degUSP18*USP18);end

function z=Heterodimer_complex_formation_0(ComplFormSTAT1STAT2c,aRecIFN,STAT1c,STAT2c), z=(ComplFormSTAT1STAT2c*aRecIFN*STAT1c*STAT2c);end

function z=Heterodimer_translocation_to_nucleus_0(TrLocSTAT1STAT2c,pSTAT1pSTAT2c), z=(TrLocSTAT1STAT2c*pSTAT1pSTAT2c);end

function z=Heterodimer_decay_0(decaySTAT1STAT2n,pSTAT1pSTAT2n), z=(decaySTAT1STAT2n*pSTAT1pSTAT2n);end

function z=ISGF3_complex_formation_0(BindIRF9,pSTAT1pSTAT2c,IRF9c), z=(BindIRF9*pSTAT1pSTAT2c*IRF9c);end

function z=ISGF3_translocation_to_nucleus_0(TrLocISGF3c,ISGF3c), z=(TrLocISGF3c*ISGF3c);end

function z=Active_receptor_complex_degradation_by_SOCS1_0(aRecIFN,degaRecIFNBySOCS,SOCS1), z=(aRecIFN*degaRecIFNBySOCS*SOCS1);end

function z=Active_receptor_complex_degradation_by_USP18_0(aRecIFN,degByUSP18,USP18), z=(aRecIFN*degByUSP18*USP18);end

function z=Homodimer_complex_formation_0(ComplFormSTAT1dimc,aRecIFN,STAT1c), z=(ComplFormSTAT1dimc*aRecIFN*STAT1c*STAT1c);end

function z=IRF9_degradation_0(degIRF9,IRF9c), z=(degIRF9*IRF9c);end

function z=Receptor_production_0(prodRec), z=(prodRec);end

function z=STAT1_degradation_0(degSTAT1,STAT1c), z=(degSTAT1*STAT1c);end

function z=STAT1_translocation_to_cytoplasm_0(TrLocSTAT1n,STAT1n), z=(TrLocSTAT1n*STAT1n);end

function z=STAT2_degradation_0(degSTAT2,STAT2c), z=(degSTAT2*STAT2c);end

function z=STAT2_translocation_to_cytoplasm_0(TrLocSTAT2n,STAT2n), z=(TrLocSTAT2n*STAT2n);end

function z=STAT2_translocation_to_nucleus_0(TrLocSTAT2c,STAT2c), z=(TrLocSTAT2c*STAT2c);end

function z=OccGASbs_1(hlOccGASbs,OccGASbs), z=(hlOccGASbs*OccGASbs);end

function z=Receptor_degradation_basal_0(degRec,Rec), z=(degRec*Rec);end

function z=IRF9_translocation_to_cytoplasm_0(TrLocIRF9n,IRF9n), z=(TrLocIRF9n*IRF9n);end

function z=IRF9_translocation_to_nucleus_0(TrLocIRF9c,IRF9c), z=(TrLocIRF9c*IRF9c);end

function z=SOCS3_synthesis_0(synthSOCS3,SOCS3mRNA), z=(synthSOCS3*SOCS3mRNA);end

function z=SOCS3_degradation_0(degSOCS3,SOCS3), z=(degSOCS3*SOCS3);end

function z=STAT1mRNA_basal_production(synthSTAT1mRNAbsasal), z=(synthSTAT1mRNAbsasal);end

function z=STAT1mRNA_production_by_ISRE_0(synthSTAT1mRNA,OccGAS_ISREbs,kmSTAT1), z=(synthSTAT1mRNA*OccGAS_ISREbs/(kmSTAT1+OccGAS_ISREbs));end

function z=STAT1mRNA_decay_0(hlSTAT1mRNA,STAT1mRNA), z=(hlSTAT1mRNA*STAT1mRNA);end

function z=STAT2mRNA_basal_production_0(synthSTAT2mRNAbasal), z=(synthSTAT2mRNAbasal);end

function z=STAT2mRNA_production_by_ISRE_0(synthSTAT2mRNA,OccGAS_ISREbs), z=(synthSTAT2mRNA*OccGAS_ISREbs);end

function z=STAT2mRNA_decay_0(hlSTAT2mRNA,STAT2mRNA), z=(hlSTAT2mRNA*STAT2mRNA);end

function z=IRF9mRNA_basal_production_0(synthIRF9mRNAbasal), z=(synthIRF9mRNAbasal);end

function z=IRF9mRNA_production_by_ISRE_0(synthIRF9mRNA,OccGAS_ISREbs,kmIRF9), z=(synthIRF9mRNA*OccGAS_ISREbs/(kmIRF9+OccGAS_ISREbs));end

function z=IRF9mRNA_decay_0(hlIRF9mRNA,IRF9mRNA), z=(hlIRF9mRNA*IRF9mRNA);end

function z=IRF2mRNA_production_by_ISRE_0(synthIRF2mRNA,OccGAS_ISREbs), z=(synthIRF2mRNA*OccGAS_ISREbs);end

function z=IRF2_translation_and_decay_of_mRNA(delayIRF2,IRF2mRNA), z=(delayIRF2*IRF2mRNA);end

function z=USP18mRNA_basal_production_0(synthUSP18mRNAbasal), z=(synthUSP18mRNAbasal);end

function z=USP18mRNA_production_by_ISRE_0(synthUSP18mRNA,OccGAS_ISREbs), z=(synthUSP18mRNA*OccGAS_ISREbs);end

function z=USP18mRNA_decay_0(hlUSP18mRNA,USP18mRNA), z=(hlUSP18mRNA*USP18mRNA);end

function z=SOCS1mRNA_basal_production_0(synthSOCS1mRNAbasal), z=(synthSOCS1mRNAbasal);end

function z=SOCS1mRNA_production_by_ISRE_0(synthSOCS1mRNA,OccGAS_ISREbs), z=(synthSOCS1mRNA*OccGAS_ISREbs);end

function z=SOCS1mRNA_decay_0(hlSOCS1mRNA,SOCS1mRNA,IRF2), z=(hlSOCS1mRNA*SOCS1mRNA*(1+IRF2));end

function z=SOCS3mRNA_basal_production_0(synthSOCS3mRNAbasal), z=(synthSOCS3mRNAbasal);end

function z=SOCS3mRNA_production_by_ISRE_0(synthSOCS3mRNA,OccGASbs), z=(synthSOCS3mRNA*OccGASbs);end

function z=SOCS3mRNA_decay_0(hlSOCS3mRNA,SOCS3mRNA), z=(hlSOCS3mRNA*SOCS3mRNA);end

function z=IRF2_degradation_0(IRF2,degIRF2), z=(degIRF2*IRF2);end

function z=Linear_chain_for_time_delay_in_STAT1_translation_0(synthSTAT1,STAT1mRNA,kmsynthSTAT1), z=(synthSTAT1*STAT1mRNA/(kmsynthSTAT1+STAT1mRNA));end

function z=STAT1_chain_step_1_0(delaySTAT1,STAT1_LC_1), z=(delaySTAT1*STAT1_LC_1);end

function z=STAT1_chain_step_2_0(delaySTAT1,STAT1_LC_2), z=(delaySTAT1*STAT1_LC_2);end

function z=STAT1_chain_step_3(delaySTAT1,STAT1_LC_3), z=(delaySTAT1*STAT1_LC_3);end

function z=Linear_chain_for_time_delay_in_STAT2_translation_0(synthSTAT2,STAT2mRNA), z=(synthSTAT2*STAT2mRNA);end

function z=STAT2_chain_step_1_0(delaySTAT2,STAT2_LC_1), z=(delaySTAT2*STAT2_LC_1);end

function z=STAT2_chain_step_2_0(delaySTAT2,STAT2_LC_2), z=(delaySTAT2*STAT2_LC_2);end

function z=STAT2_chain_step_3_0(delaySTAT2,STAT2_LC_3), z=(delaySTAT2*STAT2_LC_3);end

function z=STAT2_chain_step_4_0(delaySTAT2,STAT2_LC_4), z=(delaySTAT2*STAT2_LC_4);end

function z=STAT2_chain_step_5_0(delaySTAT2,STAT5_LC_5), z=(delaySTAT2*STAT5_LC_5);end

function z=Linear_chain_for_time_delay_in_IRF9_translation_0(synthIRF9,IRF9mRNA), z=(synthIRF9*IRF9mRNA);end

function z=IRF9_chain_step_1_0(delayIRF9,IRF9_LC_1), z=(delayIRF9*IRF9_LC_1);end

function z=ISGF3_decay_0(decayISGF3n,ISGF3n), z=(decayISGF3n*ISGF3n);end

function z=SOCS1_degradation_0(degSOCS1,SOCS1), z=(degSOCS1*SOCS1);end

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


