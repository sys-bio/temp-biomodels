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
% Model name = Heldt2018 - Budding yeast size control by titration of nuclear sites
%
%


function main()
%Initial conditions vector
	x0=zeros(28,1);
	x0(27) = 1.2;
	x0(28) = 0.0;
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 440.0;
	x0(4) = 1.0;
	x0(5) = 60.0;
	x0(6) = 0.0;
	x0(7) = 4.0;
	x0(8) = 0.1;
	x0(9) = 1.19993338661852E-12;
	x0(10) = 0.66;
	x0(11) = 0.0;
	x0(12) = 5.1;
	x0(13) = 1.0000000000012;
	x0(14) = 1.0000000000012;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 1.2;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 1.2;
	x0(22) = 61.0;
	x0(23) = 1.19993338661852E-12;
	x0(24) = 0.17;
	x0(25) = 0.17;
	x0(26) = 0.17;


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

% Compartment: id = tV, name = tV, defined by a Rule
% Compartment: id = mV, name = mV, defined by a Rule
% Compartment: id = dV, name = dV, defined by a Rule
% Parameter:   id =  GDt, name = GDt
	global_par_GDt=500.0;
% Parameter:   id =  GCN, name = GCN
	global_par_GCN=1.0;
% Parameter:   id =  GWt, name = GWt
	global_par_GWt=1.0;
% Parameter:   id =  GCt, name = GCt
	global_par_GCt=1.0;
% Parameter:   id =  StartThr, name = StartThr
	global_par_StartThr=0.3;
% Parameter:   id =  MitosisThr, name = MitosisThr
	global_par_MitosisThr=0.2;
% Parameter:   id =  GRm, name = GRm
	global_par_GRm=1.0;
% Parameter:   id =  GRd, name = GRd
	global_par_GRd=0.0;
% Parameter:   id =  kSyVo, name = kSyVo
	global_par_kSyVo=0.042;
% Parameter:   id =  kSyTm, name = kSyTm
	global_par_kSyTm=2.1;
% Parameter:   id =  kAsGiTm, name = kAsGiTm
	global_par_kAsGiTm=10.0;
% Parameter:   id =  kAsGdTm, name = kAsGdTm
	global_par_kAsGdTm=1.0;
% Parameter:   id =  kDsGiTm, name = kDsGiTm
	global_par_kDsGiTm=0.1;
% Parameter:   id =  kDsGdTm, name = kDsGdTm
	global_par_kDsGdTm=1.0;
% Parameter:   id =  kSyCln3, name = kSyCln3
	global_par_kSyCln3=1.5;
% Parameter:   id =  kDeCln3, name = kDeCln3
	global_par_kDeCln3=1.0;
% Parameter:   id =  kSyCln, name = kSyCln
	global_par_kSyCln=8.0;
% Parameter:   id =  kDeCln, name = kDeCln
	global_par_kDeCln=1.0;
% Parameter:   id =  kSyClb, name = kSyClb
	global_par_kSyClb=0.01;
% Parameter:   id =  kSyClbClb, name = kSyClbClb
	global_par_kSyClbClb=0.3;
% Parameter:   id =  jSyClb, name = jSyClb
	global_par_jSyClb=0.3;
% Parameter:   id =  kDeClb, name = kDeClb
	global_par_kDeClb=0.01;
% Parameter:   id =  kDeClbCdh, name = kDeClbCdh
	global_par_kDeClbCdh=2.0;
% Parameter:   id =  kSyWhi, name = kSyWhi
	global_par_kSyWhi=0.02;
% Parameter:   id =  kPhWhiCln3, name = kPhWhiCln3
	global_par_kPhWhiCln3=1.0;
% Parameter:   id =  kPhWhiCln, name = kPhWhiCln
	global_par_kPhWhiCln=100.0;
% Parameter:   id =  kDpWhi, name = kDpWhi
	global_par_kDpWhi=1.0;
% Parameter:   id =  kAsWhiSbf, name = kAsWhiSbf
	global_par_kAsWhiSbf=1.0;
% Parameter:   id =  kPhSbfClb, name = kPhSbfClb
	global_par_kPhSbfClb=5.0;
% Parameter:   id =  kDpSbf, name = kDpSbf
	global_par_kDpSbf=0.2;
% Parameter:   id =  kAcCdh, name = kAcCdh
	global_par_kAcCdh=0.01;
% Parameter:   id =  kAcCdhCdc, name = kAcCdhCdc
	global_par_kAcCdhCdc=2.0;
% Parameter:   id =  kInCdhCln, name = kInCdhCln
	global_par_kInCdhCln=0.125;
% Parameter:   id =  kInCdhClb, name = kInCdhClb
	global_par_kInCdhClb=2.0;
% Parameter:   id =  jCdh, name = jCdh
	global_par_jCdh=0.001;
% Parameter:   id =  kAcCdcClb, name = kAcCdcClb
	global_par_kAcCdcClb=0.5;
% Parameter:   id =  kInCdc, name = kInCdc
	global_par_kInCdc=0.25;
% Parameter:   id =  jCdc, name = jCdc
	global_par_jCdc=0.001;
% Parameter:   id =  GIt, name = GIt
	global_par_GIt=1.0;
% Parameter:   id =  kSySbf, name = kSySbf
% Parameter:   id =  kSyCdh, name = kSyCdh
% Parameter:   id =  kSyCdc, name = kSyCdc
% Parameter:   id =  rV, name = rV
% Parameter:   id =  NSt, name = NSt
	global_par_NSt=1.0;
% Parameter:   id =  kPhWhipCln3, name = kPhWhipCln3
	global_par_kPhWhipCln3=1.0;
% Parameter:   id =  kPhWhipCln, name = kPhWhipCln
	global_par_kPhWhipCln=3.0;
% Parameter:   id =  kAsCln3Whi, name = kAsCln3Whi
	global_par_kAsCln3Whi=100.0;
% Parameter:   id =  kDsCln3Whi, name = kDsCln3Whi
	global_par_kDsCln3Whi=0.1;
% assignmentRule: variable = WHIt
	x(12)=(x(7)/compartment_tV+x(8)/compartment_tV+x(24)/compartment_tV+x(10)/compartment_tV+x(25)/compartment_tV+x(11)/compartment_tV)*compartment_tV;
% assignmentRule: variable = tV
	compartment_tV=compartment_mV+compartment_dV;
% assignmentRule: variable = GI
	x(2)=global_par_GIt-x(4);
% assignmentRule: variable = SBF
	x(9)=(global_par_NSt/compartment_tV-x(10)/compartment_tV-x(24)/compartment_tV-x(25)/compartment_tV+1E-12)*compartment_tV;
% assignmentRule: variable = SBFt
	x(13)=(x(9)/compartment_tV+x(10)/compartment_tV+x(24)/compartment_tV+x(25)/compartment_tV)*compartment_tV;
% assignmentRule: variable = GD
	x(3)=global_par_GDt-x(5);
% assignmentRule: variable = active_SBF
	x(23)=x(9)/compartment_tV*x(14)/compartment_tV/x(13)/compartment_tV*compartment_tV;
% assignmentRule: variable = CLN3t
	x(26)=(x(6)/compartment_tV+x(24)/compartment_tV)*compartment_tV;
% assignmentRule: variable = TMt
	x(22)=(x(1)/compartment_tV+x(5)/compartment_tV+x(4)/compartment_tV)*compartment_tV;
% assignmentRule: variable = kSyCdh
	global_par_kSyCdh=1*global_par_kSyVo;
% assignmentRule: variable = rV
	global_par_rV=compartment_dV/compartment_tV;
% assignmentRule: variable = kSyCdc
	global_par_kSyCdc=1*global_par_kSyVo;
% assignmentRule: variable = kSySbf
	global_par_kSySbf=1*global_par_kSyVo;
% rateRule: variable = mV
compartment_mV = x(27);
% rateRule: variable = dV
compartment_dV = x(28);

% Reaction: id = Synthesis_of_transcription_machninery, name = Synthesis of transcription machninery
	reaction_Synthesis_of_transcription_machninery=compartment_tV*Expression_of_size_dependent_gene(global_par_kSyTm, x(5)/compartment_tV, global_par_GCN, global_par_GDt);

% Reaction: id = Association_dissociation_of_TM_and_size_independent_genes, name = Association/dissociation of TM and size-independent genes
	reaction_Association_dissociation_of_TM_and_size_independent_genes=compartment_tV*(global_par_kAsGiTm*x(1)/compartment_tV*x(2)/compartment_tV-global_par_kDsGiTm*x(4)/compartment_tV);

% Reaction: id = Association_dissociation_of_TM_and_size_dependent_genes, name = Association/dissociation of TM and size-dependent genes
	reaction_Association_dissociation_of_TM_and_size_dependent_genes=compartment_tV*(global_par_kAsGdTm*x(1)/compartment_tV*x(3)/compartment_tV-global_par_kDsGdTm*x(5)/compartment_tV);

% Reaction: id = Synthesis_of_Cln3, name = Synthesis of Cln3
	reaction_Synthesis_of_Cln3=compartment_tV*Expression_of_size_dependent_gene(global_par_kSyCln3, x(5)/compartment_tV, global_par_GCt, global_par_GDt);

% Reaction: id = Degradation_of_Cln3, name = Degradation of Cln3
	reaction_Degradation_of_Cln3=global_par_kDeCln3*x(6);

% Reaction: id = Phosphorylation_of_SBF, name = Phosphorylation of SBF
	reaction_Phosphorylation_of_SBF=compartment_tV*rPhSbf(global_par_kPhSbfClb, x(17)/compartment_tV, x(14)/compartment_tV);

% Reaction: id = Dephosphorylation_of_SBF, name = Dephosphorylation of SBF
	reaction_Dephosphorylation_of_SBF=global_par_kDpSbf*x(15);

% Reaction: id = Synthesis_of_Cln1_2, name = Synthesis of Cln1/2
	reaction_Synthesis_of_Cln1_2=compartment_tV*rSyCln(global_par_kSyCln, x(5)/compartment_tV, global_par_GCN, global_par_GDt, x(9)/compartment_tV, x(13)/compartment_tV, x(14)/compartment_tV);

% Reaction: id = Degradation_of_Cln1_2, name = Degradation of Cln1/2
	reaction_Degradation_of_Cln1_2=global_par_kDeCln*x(16);

% Reaction: id = Synthesis_of_Cdh1, name = Synthesis of Cdh1
	reaction_Synthesis_of_Cdh1=compartment_tV*Expression_of_size_dependent_gene(global_par_kSyCdh, x(5)/compartment_tV, global_par_GCN, global_par_GDt);

% Reaction: id = Synthesis_of_Cdc20, name = Synthesis of Cdc20
	reaction_Synthesis_of_Cdc20=compartment_tV*Expression_of_size_dependent_gene(global_par_kSyCdc, x(5)/compartment_tV, global_par_GCN, global_par_GDt);

% Reaction: id = Activation_of_APC_Cdc20, name = Activation of APC^Cdc20
	reaction_Activation_of_APC_Cdc20=compartment_tV*rAcCdc(global_par_kAcCdcClb, x(17)/compartment_tV, x(21)/compartment_tV, global_par_jCdc);

% Reaction: id = Inactivation_of_APC_C_Cdc20, name = Inactivation of APC/C^Cdc20
	reaction_Inactivation_of_APC_C_Cdc20=compartment_tV*rInCdc(global_par_kInCdc, x(20)/compartment_tV, global_par_jCdc);

% Reaction: id = Activation_of_APC_C_Cdh1, name = Activation of APC/C^Cdh1
	reaction_Activation_of_APC_C_Cdh1=compartment_tV*rAcCdh(global_par_kAcCdh, global_par_kAcCdhCdc, x(20)/compartment_tV, x(19)/compartment_tV, global_par_jCdh);

% Reaction: id = Inactivation_of_APC_C_Cdh1, name = Inactivation of APC/C^Cdh1
	reaction_Inactivation_of_APC_C_Cdh1=compartment_tV*rInCdh(global_par_kInCdhCln, x(16)/compartment_tV, global_par_kInCdhClb, x(17)/compartment_tV, x(18)/compartment_tV, global_par_jCdh);

% Reaction: id = Synthesis_of_Clb1_2, name = Synthesis of Clb1/2
	reaction_Synthesis_of_Clb1_2=compartment_tV*rSyClb(global_par_kSyClb, global_par_kSyClbClb, x(17)/compartment_tV, global_par_jSyClb, x(5)/compartment_tV, global_par_GCN, global_par_GDt);

% Reaction: id = Degradation_of_Clb1_2, name = Degradation of Clb1/2
	reaction_Degradation_of_Clb1_2=compartment_tV*rDeClb(global_par_kDeClb, global_par_kDeClbCdh, x(18)/compartment_tV, x(17)/compartment_tV);

% Reaction: id = Synthesis_of_Whi5, name = Synthesis of Whi5
	reaction_Synthesis_of_Whi5=compartment_tV*rSyWhi(global_par_GRd, global_par_kSyWhi, x(4)/compartment_tV, global_par_GWt, global_par_GIt);

% Reaction: id = Association_dissociation_of_Cln3_and_Whi5_SBF, name = Association/dissociation of Cln3 and Whi5:SBF
	reaction_Association_dissociation_of_Cln3_and_Whi5_SBF=compartment_tV*(global_par_kAsCln3Whi*x(6)/compartment_tV*x(10)/compartment_tV-global_par_kDsCln3Whi*x(24)/compartment_tV);

% Reaction: id = Association_of_Whi5_and_SBF, name = Association of Whi5 and SBF
	reaction_Association_of_Whi5_and_SBF=global_par_kAsWhiSbf*x(7)*x(9)/compartment_tV;

% Reaction: id = Phosphorylation_of_free_Whi5, name = Phosphorylation of free Whi5
	reaction_Phosphorylation_of_free_Whi5=compartment_tV*rPhWhi(global_par_kPhWhiCln, x(16)/compartment_tV, x(7)/compartment_tV);

% Reaction: id = Dephosphorylation_of_free_Whi5, name = Dephosphorylation of free Whi5
	reaction_Dephosphorylation_of_free_Whi5=global_par_kDpWhi*x(8);

% Reaction: id = Phosphorylation_of_Whi5_in_Cln3_Whi5_SBF_complexes, name = Phosphorylation of Whi5 in Cln3:Whi5:SBF complexes
	reaction_Phosphorylation_of_Whi5_in_Cln3_Whi5_SBF_complexes=global_par_kPhWhiCln3*x(24);

% Reaction: id = Degradation_of_Cln3_in_Cln3_Whi5_SBF_complexes, name = Degradation of Cln3 in Cln3:Whi5:SBF complexes
	reaction_Degradation_of_Cln3_in_Cln3_Whi5_SBF_complexes=global_par_kDeCln3*x(24);

% Reaction: id = Dephosphorylation_of_hypo_phosphorylated_Whi5_in_Whi5_SBF_complexes, name = Dephosphorylation of hypo-phosphorylated Whi5 in Whi5:SBF complexes
	reaction_Dephosphorylation_of_hypo_phosphorylated_Whi5_in_Whi5_SBF_complexes=global_par_kDpWhi*x(25);

% Reaction: id = Hyper_phosphorylation_of_Whi5_in_hypo_phosphorylated_Whi5_SBF_complexes, name = Hyper-phosphorylation of Whi5 in hypo-phosphorylated Whi5:SBF complexes
	reaction_Hyper_phosphorylation_of_Whi5_in_hypo_phosphorylated_Whi5_SBF_complexes=compartment_tV*rPhWhip(global_par_kPhWhipCln3, x(6)/compartment_tV, global_par_kPhWhipCln, x(16)/compartment_tV, x(25)/compartment_tV);

%Event: id=Start
	event_Start=(x(16)/compartment_tV) >= global_par_StartThr;

	if(event_Start) 
		global_par_GRm=0;
		global_par_GRd=1;
		global_par_GCN=global_par_GCN*2;
		global_par_GCt=global_par_GCt*2;
		global_par_GWt=global_par_GWt*2;
		global_par_GIt=global_par_GIt*2;
		global_par_GDt=global_par_GDt*2;
		global_par_NSt=global_par_NSt*2;
		x(15)=x(15)/compartment_tV*2*compartment_tV;
		x(14)=x(14)/compartment_tV*2*compartment_tV;
	end

%Event: id=Division
	event_Division=(x(16)/compartment_tV+x(17)/compartment_tV) <= global_par_MitosisThr;

	if(event_Division) 
		global_par_GRm=1;
		global_par_GRd=0;
		global_par_GCN=global_par_GCN/2;
		global_par_GCt=global_par_GCt/2;
		global_par_GWt=global_par_GWt/2;
		compartment_mV=compartment_dV;
		x(16)=x(16)/compartment_tV*global_par_rV*compartment_tV;
		x(17)=x(17)/compartment_tV*global_par_rV*compartment_tV;
		x(6)=x(6)/compartment_tV*global_par_rV*compartment_tV;
		compartment_dV=0;
		x(5)=x(5)/compartment_tV*global_par_rV*compartment_tV;
		global_par_GDt=global_par_GDt/2;
		x(4)=x(4)/compartment_tV*global_par_rV*compartment_tV;
		global_par_GIt=global_par_GIt/2;
		x(1)=x(1)/compartment_tV*global_par_rV*compartment_tV;
		x(7)=(x(7)/compartment_tV*global_par_rV+x(11)/compartment_tV)*compartment_tV;
		x(8)=x(8)/compartment_tV*global_par_rV*compartment_tV;
		x(10)=x(10)/compartment_tV*global_par_rV*compartment_tV;
		x(11)=0*compartment_tV;
		x(15)=x(15)/compartment_tV/2*compartment_tV;
		x(14)=x(14)/compartment_tV/2*compartment_tV;
		x(20)=x(20)/compartment_tV*global_par_rV*compartment_tV;
		x(21)=x(21)/compartment_tV*global_par_rV*compartment_tV;
		x(18)=x(18)/compartment_tV*global_par_rV*compartment_tV;
		x(19)=x(19)/compartment_tV*global_par_rV*compartment_tV;
		global_par_NSt=global_par_NSt/2;
		x(24)=x(24)/compartment_tV*global_par_rV*compartment_tV;
		x(25)=x(25)/compartment_tV*global_par_rV*compartment_tV;
	end

	xdot=zeros(28,1);
	% rateRule: variable = mV
	xdot(27) = global_par_GRm*global_par_kSyVo*x(5)*global_par_GCN/global_par_GDt;
	% rateRule: variable = dV
	xdot(28) = global_par_GRd*global_par_kSyVo*x(5)*global_par_GCN/global_par_GDt;
	
% Species:   id = TM, name = TM, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_Synthesis_of_transcription_machninery) + (-1.0 * reaction_Association_dissociation_of_TM_and_size_independent_genes) + (-1.0 * reaction_Association_dissociation_of_TM_and_size_dependent_genes);
	
% Species:   id = GI, name = GI, involved in a rule 	xdot(2) = x(2);
	
% Species:   id = GD, name = GD, involved in a rule 	xdot(3) = x(3);
	
% Species:   id = GITM, name = GITM, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_Association_dissociation_of_TM_and_size_independent_genes);
	
% Species:   id = GDTM, name = GDTM, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_Association_dissociation_of_TM_and_size_dependent_genes);
	
% Species:   id = CLN3, name = CLN3, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_Synthesis_of_Cln3) + (-1.0 * reaction_Degradation_of_Cln3) + (-1.0 * reaction_Association_dissociation_of_Cln3_and_Whi5_SBF) + ( 1.0 * reaction_Phosphorylation_of_Whi5_in_Cln3_Whi5_SBF_complexes);
	
% Species:   id = WHI, name = WHI, affected by kineticLaw
	xdot(7) = (-1.0 * reaction_Association_of_Whi5_and_SBF) + (-1.0 * reaction_Phosphorylation_of_free_Whi5) + ( 1.0 * reaction_Dephosphorylation_of_free_Whi5);
	
% Species:   id = WHIp, name = WHIp, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_Phosphorylation_of_free_Whi5) + (-1.0 * reaction_Dephosphorylation_of_free_Whi5) + ( 1.0 * reaction_Hyper_phosphorylation_of_Whi5_in_hypo_phosphorylated_Whi5_SBF_complexes);
	
% Species:   id = SBF, name = SBF, involved in a rule 	xdot(9) = x(9);
	
% Species:   id = WHISBF, name = WHISBF, affected by kineticLaw
	xdot(10) = (-1.0 * reaction_Association_dissociation_of_Cln3_and_Whi5_SBF) + ( 1.0 * reaction_Association_of_Whi5_and_SBF) + ( 1.0 * reaction_Degradation_of_Cln3_in_Cln3_Whi5_SBF_complexes) + ( 1.0 * reaction_Dephosphorylation_of_hypo_phosphorylated_Whi5_in_Whi5_SBF_complexes);
	
% Species:   id = WHIn, name = WHIn, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_Synthesis_of_Whi5);
	
% Species:   id = WHIt, name = WHIt, involved in a rule 	xdot(12) = x(12);
	
% Species:   id = SBFt, name = SBFt, involved in a rule 	xdot(13) = x(13);
	
% Species:   id = SBFu, name = SBFu, affected by kineticLaw
	xdot(14) = (-1.0 * reaction_Phosphorylation_of_SBF) + ( 1.0 * reaction_Dephosphorylation_of_SBF);
	
% Species:   id = SBFp, name = SBFp, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_Phosphorylation_of_SBF) + (-1.0 * reaction_Dephosphorylation_of_SBF);
	
% Species:   id = CLN, name = CLN, affected by kineticLaw
	xdot(16) = ( 1.0 * reaction_Synthesis_of_Cln1_2) + (-1.0 * reaction_Degradation_of_Cln1_2);
	
% Species:   id = CLB, name = CLB, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_Synthesis_of_Clb1_2) + (-1.0 * reaction_Degradation_of_Clb1_2);
	
% Species:   id = CDHa, name = CDHa, affected by kineticLaw
	xdot(18) = ( 1.0 * reaction_Activation_of_APC_C_Cdh1) + (-1.0 * reaction_Inactivation_of_APC_C_Cdh1);
	
% Species:   id = CDHi, name = CDHi, affected by kineticLaw
	xdot(19) = ( 1.0 * reaction_Synthesis_of_Cdh1) + (-1.0 * reaction_Activation_of_APC_C_Cdh1) + ( 1.0 * reaction_Inactivation_of_APC_C_Cdh1);
	
% Species:   id = CDCa, name = CDCa, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_Activation_of_APC_Cdc20) + (-1.0 * reaction_Inactivation_of_APC_C_Cdc20);
	
% Species:   id = CDCi, name = CDCi, affected by kineticLaw
	xdot(21) = ( 1.0 * reaction_Synthesis_of_Cdc20) + (-1.0 * reaction_Activation_of_APC_Cdc20) + ( 1.0 * reaction_Inactivation_of_APC_C_Cdc20);
	
% Species:   id = TMt, name = TMt, involved in a rule 	xdot(22) = x(22);
	
% Species:   id = active_SBF, name = active SBF, involved in a rule 	xdot(23) = x(23);
	
% Species:   id = CLN3WHISBF, name = CLN3WHISBF, affected by kineticLaw
	xdot(24) = ( 1.0 * reaction_Association_dissociation_of_Cln3_and_Whi5_SBF) + (-1.0 * reaction_Phosphorylation_of_Whi5_in_Cln3_Whi5_SBF_complexes) + (-1.0 * reaction_Degradation_of_Cln3_in_Cln3_Whi5_SBF_complexes);
	
% Species:   id = WHIpSBF, name = WHIpSBF, affected by kineticLaw
	xdot(25) = ( 1.0 * reaction_Phosphorylation_of_Whi5_in_Cln3_Whi5_SBF_complexes) + (-1.0 * reaction_Dephosphorylation_of_hypo_phosphorylated_Whi5_in_Whi5_SBF_complexes) + (-1.0 * reaction_Hyper_phosphorylation_of_Whi5_in_hypo_phosphorylated_Whi5_SBF_complexes);
	
% Species:   id = CLN3t, name = CLN3t, involved in a rule 	xdot(26) = x(26);
end

function z=Expression_of_size_dependent_gene(kSy,GDTM,GCN,GDt), z=(kSy*GDTM*GCN/GDt);end

function z=rSyCln(kSyCln,GDTM,GCN,GDt,SBF,SBFt,SBFu), z=(kSyCln*GDTM*GCN/GDt*SBF/SBFt*SBFu/SBFt);end

function z=rPhWhi(kPhWhiCln,CLN,Substrate), z=(kPhWhiCln*CLN*Substrate);end

function z=rAcCdc(kAcCdcClb,CLB,Substrate,jCdc), z=(kAcCdcClb*CLB*Substrate/(jCdc+Substrate));end

function z=rInCdc(kInCdc,Substrate,jCdc), z=(kInCdc*Substrate/(jCdc+Substrate));end

function z=rPhSbf(kPhSbfClb,CLB,SBFu), z=(kPhSbfClb*CLB*SBFu);end

function z=rSyClb(kSyClb,kSyClbClb,CLB,jSyClb,GDTM,GCN,GDt), z=((kSyClb+kSyClbClb*CLB/(jSyClb+CLB))*GDTM*GCN/GDt);end

function z=rDeClb(kDeClb,kDeClbCdh,CDHa,Substrate), z=((kDeClb+kDeClbCdh*CDHa)*Substrate);end

function z=rInCdh(kInCdhCln,CLN,kInCdhClb,CLB,Substrate,jCdh), z=((kInCdhCln*CLN+kInCdhClb*CLB)*Substrate/(jCdh+Substrate));end

function z=rSyWhi(GRd,kSyWhi,GITM,GWt,GIt), z=(GRd*kSyWhi*GITM*GWt/GIt);end

function z=rPhWhip(kPhWhipCln3,CLN3,kPhWhipCln,CLN,Substrate), z=((kPhWhipCln3*CLN3+kPhWhipCln*CLN)*Substrate);end

function z=rAcCdh(kAcCdh,kAcCdhCdc,CDCa,Substrate,jCdh), z=((kAcCdh+kAcCdhCdc*CDCa)*Substrate/(jCdh+Substrate));end

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


