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
% Model name = Proctor2006_telomere
%
% is http://identifiers.org/biomodels.db/MODEL8679489165
% is http://identifiers.org/biomodels.db/BIOMD0000000087
% isDescribedBy http://identifiers.org/pubmed/17015293
%


function main()
%Initial conditions vector
	x0=zeros(55,1);
	x0(1) = 64.0;
	x0(2) = 0.0;
	x0(3) = 300.0;
	x0(4) = 0.0;
	x0(5) = 70.0;
	x0(6) = 70.0;
	x0(7) = 4000.0;
	x0(8) = 4000.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 70.0;
	x0(15) = 0.0;
	x0(16) = 670.0;
	x0(17) = 0.0;
	x0(18) = 20.0;
	x0(19) = 0.0;
	x0(20) = 6900.0;
	x0(21) = 0.0;
	x0(22) = 60.0;
	x0(23) = 0.0;
	x0(24) = 3000.0;
	x0(25) = 0.0;
	x0(26) = 10000.0;
	x0(27) = 1000.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 1.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;
	x0(35) = 0.0;
	x0(36) = 0.0;
	x0(37) = 0.0;
	x0(38) = 1.0;
	x0(39) = 0.0;
	x0(40) = 1.0;
	x0(41) = 0.0;
	x0(42) = 1.0;
	x0(43) = 0.0;
	x0(44) = 1.0;
	x0(45) = 0.0;
	x0(46) = 1.0;
	x0(47) = 0.0;
	x0(48) = 1.0;
	x0(49) = 0.0;
	x0(50) = 1.0;
	x0(51) = 0.0;
	x0(52) = 1.0;
	x0(53) = 0.0;
	x0(54) = 0.0;
	x0(55) = 0.0;


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

% Compartment: id = cellMembrane, name = cellMembrane, constant
	compartment_cellMembrane=1.0;
% Compartment: id = nucleus, name = nucleus, constant
	compartment_nucleus=1.0;
% Parameter:   id =  kalive, name = kalive
	global_par_kalive=1.0;

% Reaction: id = Capping, name = Capping	% Local Parameter:   id =  k1, name = k1
	reaction_Capping_k1=5.0E-4;

	reaction_Capping=reaction_Capping_k1*x(3)*x(2)*global_par_kalive;

% Reaction: id = Uncapping, name = Uncapping	% Local Parameter:   id =  k2, name = k2
	reaction_Uncapping_k2=3.85E-4;

	reaction_Uncapping=reaction_Uncapping_k2*x(1)*global_par_kalive;

% Reaction: id = Rad17binding, name = Rad17binding	% Local Parameter:   id =  k3, name = k3
	reaction_Rad17binding_k3=1.5E-8;

	reaction_Rad17binding=reaction_Rad17binding_k3*x(2)*x(5)*x(6)*x(26)*global_par_kalive/(5000+x(26));

% Reaction: id = ExoXactivation, name = ExoXactivation	% Local Parameter:   id =  k4, name = k4
	reaction_ExoXactivation_k4=0.01;

	reaction_ExoXactivation=reaction_ExoXactivation_k4*x(14)*x(4)*global_par_kalive;

% Reaction: id = ExoXactivity, name = ExoXactivity	% Local Parameter:   id =  k5, name = k5
	reaction_ExoXactivity_k5=3.0E-4;

	reaction_ExoXactivity=reaction_ExoXactivity_k5*x(15)*x(4)*global_par_kalive;

% Reaction: id = Exo1activation, name = Rad24independentExo1Activation	% Local Parameter:   id =  k6a, name = k6a
	reaction_Exo1activation_k6a=5.0E-5;

	reaction_Exo1activation=reaction_Exo1activation_k6a*x(16)*global_par_kalive;

% Reaction: id = Exo1Rad24dependentActivation, name = Rad24dependentExo1Activation	% Local Parameter:   id =  k6b, name = k6b
	reaction_Exo1Rad24dependentActivation_k6b=5.0E-4;

	reaction_Exo1Rad24dependentActivation=reaction_Exo1Rad24dependentActivation_k6b*x(16)*x(6)*global_par_kalive;

% Reaction: id = Exo1Rad17independentActivity, name = Rad17independentExo1Activity	% Local Parameter:   id =  k7a, name = k7a
	reaction_Exo1Rad17independentActivity_k7a=3.0E-5;

	reaction_Exo1Rad17independentActivity=reaction_Exo1Rad17independentActivity_k7a*x(2)*x(17)*global_par_kalive;

% Reaction: id = Exo1Rad17dependentActivity, name = Rad17dependentExo1Activity	% Local Parameter:   id =  k7b, name = k7b
	reaction_Exo1Rad17dependentActivity_k7b=3.0E-5;

	reaction_Exo1Rad17dependentActivity=reaction_Exo1Rad17dependentActivity_k7b*x(4)*x(17)*global_par_kalive;

% Reaction: id = RPAbinding1, name = RPAbinding-stage1	% Local Parameter:   id =  k8a, name = k8a
	reaction_RPAbinding1_k8a=0.001;

	reaction_RPAbinding1=reaction_RPAbinding1_k8a*x(7)*x(9)*global_par_kalive;

% Reaction: id = RPAbinding2, name = RPAbinding-stage2	% Local Parameter:   id =  k8b, name = k8b
	reaction_RPAbinding2_k8b=100.0;

	reaction_RPAbinding2=reaction_RPAbinding2_k8b*x(11)*x(9)*global_par_kalive;

% Reaction: id = RPAbinding, name = RPAbinding-completed	% Local Parameter:   id =  k8c, name = k8c
	reaction_RPAbinding_k8c=100.0;

	reaction_RPAbinding=reaction_RPAbinding_k8c*x(12)*x(9)*global_par_kalive;

% Reaction: id = Mec1binding, name = Mec1binding	% Local Parameter:   id =  k8d, name = k8d
	reaction_Mec1binding_k8d=0.004;

	reaction_Mec1binding=reaction_Mec1binding_k8d*x(10)*x(8)*global_par_kalive;

% Reaction: id = Rad9activation, name = Rad9activation	% Local Parameter:   id =  k9, name = k9
	reaction_Rad9activation_k9=100.0;

	reaction_Rad9activation=reaction_Rad9activation_k9*x(28)*x(18)*global_par_kalive;

% Reaction: id = ExoXinhibition, name = ExoXinhibition	% Local Parameter:   id =  k10a, name = k10a
	reaction_ExoXinhibition_k10a=0.05;

	reaction_ExoXinhibition=x(15)*reaction_ExoXinhibition_k10a*x(19)*global_par_kalive;

% Reaction: id = ExoXinhibition2, name = ExoXinhibition2	% Local Parameter:   id =  k10b, name = k10b
	reaction_ExoXinhibition2_k10b=0.05;

	reaction_ExoXinhibition2=x(15)*reaction_ExoXinhibition2_k10b*x(18)*global_par_kalive;

% Reaction: id = Rad53activation, name = Rad53activation	% Local Parameter:   id =  k11, name = k11
	reaction_Rad53activation_k11=1.0E-5;

	reaction_Rad53activation=reaction_Rad53activation_k11*x(20)*x(19)*global_par_kalive;

% Reaction: id = Chk1Activation, name = Chk1Activation	% Local Parameter:   id =  k12, name = k12
	reaction_Chk1Activation_k12=1.7E-4;

	reaction_Chk1Activation=x(22)*reaction_Chk1Activation_k12*x(19)*global_par_kalive;

% Reaction: id = Exo1inhibition, name = Exo1inhibition	% Local Parameter:   id =  k13, name = k13
	reaction_Exo1inhibition_k13=1.0;

	reaction_Exo1inhibition=x(17)*reaction_Exo1inhibition_k13*x(21)*global_par_kalive;

% Reaction: id = Dun1activation, name = Dun1activation	% Local Parameter:   id =  k14, name = k14
	reaction_Dun1activation_k14=3.3E-6;

	reaction_Dun1activation=x(24)*reaction_Dun1activation_k14*x(21)*global_par_kalive;

% Reaction: id = Chk1cellArrest, name = Chk1cellArrest	% Local Parameter:   id =  k15, name = k15
	reaction_Chk1cellArrest_k15=0.2;

	reaction_Chk1cellArrest=x(23)*x(51)*reaction_Chk1cellArrest_k15*global_par_kalive;

% Reaction: id = Dun1cellArrest, name = Dun1cellArrest	% Local Parameter:   id =  k16, name = k16
	reaction_Dun1cellArrest_k16=0.1;

	reaction_Dun1cellArrest=x(25)*x(51)*reaction_Dun1cellArrest_k16*global_par_kalive;

% Reaction: id = SDNArepair1, name = SDNArepair1	% Local Parameter:   id =  k17a, name = k17a
	reaction_SDNArepair1_k17a=0.05;

	reaction_SDNArepair1=reaction_SDNArepair1_k17a*x(13)*x(31)*global_par_kalive;

% Reaction: id = G2DNArepair1, name = G2DNArepair1	% Local Parameter:   id =  k17b, name = k17b
	reaction_G2DNArepair1_k17b=0.05;

	reaction_G2DNArepair1=x(32)*x(50)*reaction_G2DNArepair1_k17b*x(13)*global_par_kalive;

% Reaction: id = SDNArepair2, name = SDNArepair2	% Local Parameter:   id =  k18a, name = k18a
	reaction_SDNArepair2_k18a=0.001;

	reaction_SDNArepair2=reaction_SDNArepair2_k18a*x(31)*x(9)*global_par_kalive;

% Reaction: id = G2DNArepair2, name = G2DNArepair2	% Local Parameter:   id =  k18b, name = k18b
	reaction_G2DNArepair2_k18b=1.0E-5;

	reaction_G2DNArepair2=x(32)*x(50)*reaction_G2DNArepair2_k18b*x(9)*global_par_kalive;

% Reaction: id = Recovery, name = Recovery	% Local Parameter:   id =  k19, name = k19
	reaction_Recovery_k19=0.001;

	reaction_Recovery=x(3)*reaction_Recovery_k19*x(4)*x(29)*global_par_kalive;

% Reaction: id = G1cyclinSynthesis, name = G1cyclinSynthesis	% Local Parameter:   id =  kc1, name = kc1
	reaction_G1cyclinSynthesis_kc1=0.16;

	reaction_G1cyclinSynthesis=x(30)*reaction_G1cyclinSynthesis_kc1*global_par_kalive;

% Reaction: id = ScyclinSynthesis, name = ScyclinSynthesis	% Local Parameter:   id =  kc1, name = kc1
	reaction_ScyclinSynthesis_kc1=0.16;

	reaction_ScyclinSynthesis=reaction_ScyclinSynthesis_kc1*x(31)*global_par_kalive;

% Reaction: id = G2cyclinSynthesis, name = G2cyclinSynthesis	% Local Parameter:   id =  kc1, name = kc1
	reaction_G2cyclinSynthesis_kc1=0.16;

	reaction_G2cyclinSynthesis=x(32)*reaction_G2cyclinSynthesis_kc1*global_par_kalive;

% Reaction: id = McyclinSynthesis, name = McyclinSynthesis	% Local Parameter:   id =  kc1, name = kc1
	reaction_McyclinSynthesis_kc1=0.16;

	reaction_McyclinSynthesis=reaction_McyclinSynthesis_kc1*x(33)*global_par_kalive;

% Reaction: id = G1toSGenesOn, name = G1toSGenesOn	% Local Parameter:   id =  kc2, name = kc2
	reaction_G1toSGenesOn_kc2=0.01;

	reaction_G1toSGenesOn=x(30)*x(39)*x(46)*reaction_G1toSGenesOn_kc2*global_par_kalive;

% Reaction: id = StoG2GenesOn, name = StoG2GenesOn	% Local Parameter:   id =  kc2, name = kc2
	reaction_StoG2GenesOn_kc2=0.01;

	reaction_StoG2GenesOn=reaction_StoG2GenesOn_kc2*x(31)*x(41)*x(48)*global_par_kalive;

% Reaction: id = G2toMGenesOn, name = G2toMGenesOn	% Local Parameter:   id =  kc2, name = kc2
	reaction_G2toMGenesOn_kc2=0.01;

	reaction_G2toMGenesOn=x(32)*x(43)*x(50)*reaction_G2toMGenesOn_kc2*global_par_kalive;

% Reaction: id = MtoG1GenesOn, name = MtoG1GenesOn	% Local Parameter:   id =  kc2, name = kc2
	reaction_MtoG1GenesOn_kc2=0.01;

	reaction_MtoG1GenesOn=reaction_MtoG1GenesOn_kc2*x(33)*x(45)*x(52)*global_par_kalive;

% Reaction: id = G1cyclinDegradation, name = G1cyclinDegradation	% Local Parameter:   id =  kc3, name = kc3
	reaction_G1cyclinDegradation_kc3=0.0012;

	reaction_G1cyclinDegradation=x(34)*reaction_G1cyclinDegradation_kc3*global_par_kalive;

% Reaction: id = ScyclinDegradation, name = ScyclinDegradation	% Local Parameter:   id =  kc3, name = kc3
	reaction_ScyclinDegradation_kc3=0.0012;

	reaction_ScyclinDegradation=reaction_ScyclinDegradation_kc3*x(35)*global_par_kalive;

% Reaction: id = G2cyclinDegradation, name = G2cyclinDegradation	% Local Parameter:   id =  kc3, name = kc3
	reaction_G2cyclinDegradation_kc3=0.0012;

	reaction_G2cyclinDegradation=x(36)*reaction_G2cyclinDegradation_kc3*global_par_kalive;

% Reaction: id = McyclinDegradation, name = McyclinDegradation	% Local Parameter:   id =  kc3, name = kc3
	reaction_McyclinDegradation_kc3=0.0012;

	reaction_McyclinDegradation=reaction_McyclinDegradation_kc3*x(37)*global_par_kalive;

% Reaction: id = G1toSProgession, name = G1toSProgession	% Local Parameter:   id =  kc4, name = kc4
	reaction_G1toSProgession_kc4=0.01;

	reaction_G1toSProgession=x(30)*x(39)*x(47)*reaction_G1toSProgession_kc4*global_par_kalive;

% Reaction: id = StoG2Progession, name = StoG2Progession	% Local Parameter:   id =  kc4, name = kc4
	reaction_StoG2Progession_kc4=0.01;

	reaction_StoG2Progession=reaction_StoG2Progession_kc4*x(31)*x(41)*x(49)*global_par_kalive;

% Reaction: id = G2toMProgession, name = G2toMProgession	% Local Parameter:   id =  kc4, name = kc4
	reaction_G2toMProgession_kc4=0.01;

	reaction_G2toMProgession=x(32)*x(43)*x(51)*reaction_G2toMProgession_kc4*global_par_kalive;

% Reaction: id = MtoG1Progession, name = MtoG1Progession	% Local Parameter:   id =  kc4, name = kc4
	reaction_MtoG1Progession_kc4=0.01;

	reaction_MtoG1Progession=reaction_MtoG1Progession_kc4*x(33)*x(45)*x(53)*global_par_kalive;

%Event: id=Rad9KinaseActivation
	event_Rad9KinaseActivation=x(13) >= 800;

	if(event_Rad9KinaseActivation) 
		x(28)=1;
	end

%Event: id=ssDNAremoval
	event_ssDNAremoval=(x(13)+x(10)+x(9)) <= 1;

	if(event_ssDNAremoval) 
		x(29)=1;
		x(13)=0;
		x(10)=0;
		x(9)=0;
	end

%Event: id=G2MRecoveryCompleted
	event_G2MRecoveryCompleted=(x(32) == 1) && (x(4) == 0);

	if(event_G2MRecoveryCompleted) 
		x(51)=1;
		x(50)=0;
		x(29)=0;
		x(19)=0;
		x(18)=20;
		x(23)=0;
		x(22)=60;
		x(25)=0;
		x(24)=3000;
		x(17)=0;
		x(16)=670;
		x(15)=0;
		x(14)=70;
		x(20)=6900;
		x(21)=0;
	end

%Event: id=SphaseRecoveryCompleted
	event_SphaseRecoveryCompleted=x(4) == 0;

	if(event_SphaseRecoveryCompleted) 
		x(29)=0;
	end

%Event: id=G1CdkActivation
	event_G1CdkActivation=x(34) > 100;

	if(event_G1CdkActivation) 
		x(39)=1;
		x(38)=0;
	end

%Event: id=SCdkActivation
	event_SCdkActivation=x(35) > 100;

	if(event_SCdkActivation) 
		x(41)=1;
		x(40)=0;
	end

%Event: id=G2CdkActivation
	event_G2CdkActivation=x(36) > 100;

	if(event_G2CdkActivation) 
		x(43)=1;
		x(42)=0;
	end

%Event: id=MCdkActivation
	event_MCdkActivation=x(37) > 100;

	if(event_MCdkActivation) 
		x(45)=1;
		x(44)=0;
	end

%Event: id=CellDeath
	event_CellDeath=(x(13)+x(10)+x(9)) >= 2000;

	if(event_CellDeath) 
		global_par_kalive=0;
	end

	xdot=zeros(55,1);
	
% Species:   id = Ctelo, name = Ctelo, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_Capping) + (-1.0 * reaction_Uncapping) + ( 1.0 * reaction_Recovery);
	
% Species:   id = Utelo, name = Utelo, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_Capping) + ( 1.0 * reaction_Uncapping) + (-1.0 * reaction_Rad17binding) + (-1.0 * reaction_Exo1Rad17independentActivity) + ( 1.0 * reaction_Exo1Rad17independentActivity);
	
% Species:   id = Cdc13, name = Cdc13, affected by kineticLaw
	xdot(3) = (-1.0 * reaction_Capping) + ( 1.0 * reaction_Uncapping) + (-1.0 * reaction_Recovery);
	
% Species:   id = Rad17Utelo, name = Rad17Utelo, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_Rad17binding) + (-1.0 * reaction_ExoXactivation) + ( 1.0 * reaction_ExoXactivation) + (-1.0 * reaction_ExoXactivity) + ( 1.0 * reaction_ExoXactivity) + (-1.0 * reaction_Exo1Rad17dependentActivity) + ( 1.0 * reaction_Exo1Rad17dependentActivity) + (-1.0 * reaction_Recovery);
	
% Species:   id = Rad17, name = Rad17, affected by kineticLaw
	xdot(5) = (-1.0 * reaction_Rad17binding) + ( 1.0 * reaction_Recovery);
	
% Species:   id = Rad24, name = Rad24, affected by kineticLaw
	xdot(6) = (-1.0 * reaction_Rad17binding) + ( 1.0 * reaction_Rad17binding) + (-1.0 * reaction_Exo1Rad24dependentActivation) + ( 1.0 * reaction_Exo1Rad24dependentActivation);
	
% Species:   id = RPA, name = RPA, affected by kineticLaw
	xdot(7) = (-1.0 * reaction_RPAbinding1) + ( 1.0 * reaction_SDNArepair1) + ( 1.0 * reaction_G2DNArepair1);
	
% Species:   id = Mec1, name = Mec1, affected by kineticLaw
	xdot(8) = (-1.0 * reaction_Mec1binding) + ( 1.0 * reaction_SDNArepair1) + ( 1.0 * reaction_G2DNArepair1);
	
% Species:   id = ssDNA, name = ssDNA, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_ExoXactivity) + ( 1.0 * reaction_Exo1Rad17independentActivity) + ( 1.0 * reaction_Exo1Rad17dependentActivity) + (-1.0 * reaction_RPAbinding1) + (-1.0 * reaction_RPAbinding2) + (-1.0 * reaction_RPAbinding) + ( 3.0 * reaction_SDNArepair1) + ( 3.0 * reaction_G2DNArepair1) + (-1.0 * reaction_SDNArepair2) + (-1.0 * reaction_G2DNArepair2);
	
% Species:   id = RPAssDNA, name = RPAssDNA, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_RPAbinding) + (-1.0 * reaction_Mec1binding);
	
% Species:   id = RPAssDNA1, name = RPAssDNA1, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_RPAbinding1) + (-1.0 * reaction_RPAbinding2);
	
% Species:   id = RPAssDNA2, name = RPAssDNA2, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_RPAbinding2) + (-1.0 * reaction_RPAbinding);
	
% Species:   id = Mec1RPAssDNA, name = Mec1RPAssDNA, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_Mec1binding) + (-1.0 * reaction_SDNArepair1) + (-1.0 * reaction_G2DNArepair1);
	
% Species:   id = ExoXI, name = ExoXI, affected by kineticLaw
	xdot(14) = (-1.0 * reaction_ExoXactivation) + ( 1.0 * reaction_ExoXinhibition) + ( 1.0 * reaction_ExoXinhibition2);
	
% Species:   id = ExoXA, name = ExoXA, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_ExoXactivation) + (-1.0 * reaction_ExoXactivity) + ( 1.0 * reaction_ExoXactivity) + (-1.0 * reaction_ExoXinhibition) + (-1.0 * reaction_ExoXinhibition2);
	
% Species:   id = Exo1I, name = Exo1I, affected by kineticLaw
	xdot(16) = (-1.0 * reaction_Exo1activation) + (-1.0 * reaction_Exo1Rad24dependentActivation) + ( 1.0 * reaction_Exo1inhibition);
	
% Species:   id = Exo1A, name = Exo1A, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_Exo1activation) + ( 1.0 * reaction_Exo1Rad24dependentActivation) + (-1.0 * reaction_Exo1Rad17independentActivity) + ( 1.0 * reaction_Exo1Rad17independentActivity) + (-1.0 * reaction_Exo1Rad17dependentActivity) + ( 1.0 * reaction_Exo1Rad17dependentActivity) + (-1.0 * reaction_Exo1inhibition);
	
% Species:   id = Rad9I, name = Rad9I, affected by kineticLaw
	xdot(18) = (-1.0 * reaction_Rad9activation) + (-1.0 * reaction_ExoXinhibition2) + ( 1.0 * reaction_ExoXinhibition2);
	
% Species:   id = Rad9A, name = Rad9A, affected by kineticLaw
	xdot(19) = ( 1.0 * reaction_Rad9activation) + (-1.0 * reaction_ExoXinhibition) + ( 1.0 * reaction_ExoXinhibition) + (-1.0 * reaction_Rad53activation) + ( 1.0 * reaction_Rad53activation) + (-1.0 * reaction_Chk1Activation) + ( 1.0 * reaction_Chk1Activation);
	
% Species:   id = Rad53I, name = Rad53I, affected by kineticLaw
	xdot(20) = (-1.0 * reaction_Rad53activation);
	
% Species:   id = Rad53A, name = Rad53A, affected by kineticLaw
	xdot(21) = ( 1.0 * reaction_Rad53activation) + (-1.0 * reaction_Exo1inhibition) + ( 1.0 * reaction_Exo1inhibition) + (-1.0 * reaction_Dun1activation) + ( 1.0 * reaction_Dun1activation);
	
% Species:   id = Chk1I, name = Chk1I, affected by kineticLaw
	xdot(22) = (-1.0 * reaction_Chk1Activation);
	
% Species:   id = Chk1A, name = Chk1A, affected by kineticLaw
	xdot(23) = ( 1.0 * reaction_Chk1Activation) + (-1.0 * reaction_Chk1cellArrest) + ( 1.0 * reaction_Chk1cellArrest);
	
% Species:   id = Dun1I, name = Dun1I, affected by kineticLaw
	xdot(24) = (-1.0 * reaction_Dun1activation);
	
% Species:   id = Dun1A, name = Dun1A, affected by kineticLaw
	xdot(25) = ( 1.0 * reaction_Dun1activation) + (-1.0 * reaction_Dun1cellArrest) + ( 1.0 * reaction_Dun1cellArrest);
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(26) = (-1.0 * reaction_Rad17binding);
	
% Species:   id = ADP, name = ADP, affected by kineticLaw
	xdot(27) = ( 1.0 * reaction_Rad17binding);
	
% Species:   id = Rad9Kin, name = Rad9Kin, affected by kineticLaw
	xdot(28) = (-1.0 * reaction_Rad9activation) + ( 1.0 * reaction_Rad9activation);
	
% Species:   id = recovery, name = recovery, affected by kineticLaw
	xdot(29) = (-1.0 * reaction_Recovery) + ( 1.0 * reaction_Recovery);
	
% Species:   id = G1, name = G1, affected by kineticLaw
	xdot(30) = (-1.0 * reaction_G1cyclinSynthesis) + ( 1.0 * reaction_G1cyclinSynthesis) + (-1.0 * reaction_G1toSGenesOn) + ( 1.0 * reaction_G1toSGenesOn) + (-1.0 * reaction_G1toSProgession) + ( 1.0 * reaction_MtoG1Progession);
	
% Species:   id = S, name = S, affected by kineticLaw
	xdot(31) = (-1.0 * reaction_SDNArepair1) + ( 1.0 * reaction_SDNArepair1) + (-1.0 * reaction_SDNArepair2) + ( 1.0 * reaction_SDNArepair2) + (-1.0 * reaction_ScyclinSynthesis) + ( 1.0 * reaction_ScyclinSynthesis) + (-1.0 * reaction_StoG2GenesOn) + ( 1.0 * reaction_StoG2GenesOn) + ( 1.0 * reaction_G1toSProgession) + (-1.0 * reaction_StoG2Progession);
	
% Species:   id = G2, name = G2, affected by kineticLaw
	xdot(32) = (-1.0 * reaction_G2DNArepair1) + ( 1.0 * reaction_G2DNArepair1) + (-1.0 * reaction_G2DNArepair2) + ( 1.0 * reaction_G2DNArepair2) + (-1.0 * reaction_G2cyclinSynthesis) + ( 1.0 * reaction_G2cyclinSynthesis) + (-1.0 * reaction_G2toMGenesOn) + ( 1.0 * reaction_G2toMGenesOn) + ( 1.0 * reaction_StoG2Progession) + (-1.0 * reaction_G2toMProgession);
	
% Species:   id = M, name = M, affected by kineticLaw
	xdot(33) = (-1.0 * reaction_McyclinSynthesis) + ( 1.0 * reaction_McyclinSynthesis) + (-1.0 * reaction_MtoG1GenesOn) + ( 1.0 * reaction_MtoG1GenesOn) + ( 1.0 * reaction_G2toMProgession) + (-1.0 * reaction_MtoG1Progession);
	
% Species:   id = G1cyclin, name = G1cyclin, affected by kineticLaw
	xdot(34) = ( 1.0 * reaction_G1cyclinSynthesis) + (-1.0 * reaction_G1cyclinDegradation);
	
% Species:   id = Scyclin, name = Scyclin, affected by kineticLaw
	xdot(35) = ( 1.0 * reaction_ScyclinSynthesis) + (-1.0 * reaction_ScyclinDegradation);
	
% Species:   id = G2cyclin, name = G2cyclin, affected by kineticLaw
	xdot(36) = ( 1.0 * reaction_G2cyclinSynthesis) + (-1.0 * reaction_G2cyclinDegradation);
	
% Species:   id = Mcyclin, name = Mcyclin, affected by kineticLaw
	xdot(37) = ( 1.0 * reaction_McyclinSynthesis) + (-1.0 * reaction_McyclinDegradation);
	
% Species:   id = G1CdkI, name = G1CdkI, affected by kineticLaw
	xdot(38) = ( 1.0 * reaction_G1toSProgession);
	
% Species:   id = G1CdkA, name = G1CdkA, affected by kineticLaw
	xdot(39) = (-1.0 * reaction_G1toSGenesOn) + ( 1.0 * reaction_G1toSGenesOn) + (-1.0 * reaction_G1toSProgession);
	
% Species:   id = SCdkI, name = SCdkI, affected by kineticLaw
	xdot(40) = ( 1.0 * reaction_StoG2Progession);
	
% Species:   id = SCdkA, name = SCdkA, affected by kineticLaw
	xdot(41) = (-1.0 * reaction_StoG2GenesOn) + ( 1.0 * reaction_StoG2GenesOn) + (-1.0 * reaction_StoG2Progession);
	
% Species:   id = G2CdkI, name = G2CdkI, affected by kineticLaw
	xdot(42) = ( 1.0 * reaction_G2toMProgession);
	
% Species:   id = G2CdkA, name = G2CdkA, affected by kineticLaw
	xdot(43) = (-1.0 * reaction_G2toMGenesOn) + ( 1.0 * reaction_G2toMGenesOn) + (-1.0 * reaction_G2toMProgession);
	
% Species:   id = MCdkI, name = MCdkI, affected by kineticLaw
	xdot(44) = ( 1.0 * reaction_MtoG1Progession);
	
% Species:   id = MCdkA, name = MCdkA, affected by kineticLaw
	xdot(45) = (-1.0 * reaction_MtoG1GenesOn) + ( 1.0 * reaction_MtoG1GenesOn) + (-1.0 * reaction_MtoG1Progession);
	
% Species:   id = G1Soff, name = G1Soff, affected by kineticLaw
	xdot(46) = (-1.0 * reaction_G1toSGenesOn) + ( 1.0 * reaction_G1toSProgession);
	
% Species:   id = G1Son, name = G1Son, affected by kineticLaw
	xdot(47) = ( 1.0 * reaction_G1toSGenesOn) + (-1.0 * reaction_G1toSProgession);
	
% Species:   id = SG2off, name = SG2off, affected by kineticLaw
	xdot(48) = (-1.0 * reaction_StoG2GenesOn) + ( 1.0 * reaction_StoG2Progession);
	
% Species:   id = SG2on, name = SG2on, affected by kineticLaw
	xdot(49) = ( 1.0 * reaction_StoG2GenesOn) + (-1.0 * reaction_StoG2Progession);
	
% Species:   id = G2Moff, name = G2Moff, affected by kineticLaw
	xdot(50) = ( 1.0 * reaction_Chk1cellArrest) + ( 1.0 * reaction_Dun1cellArrest) + (-1.0 * reaction_G2DNArepair1) + ( 1.0 * reaction_G2DNArepair1) + (-1.0 * reaction_G2DNArepair2) + ( 1.0 * reaction_G2DNArepair2) + (-1.0 * reaction_G2toMGenesOn) + ( 1.0 * reaction_G2toMProgession);
	
% Species:   id = G2Mon, name = G2Mon, affected by kineticLaw
	xdot(51) = (-1.0 * reaction_Chk1cellArrest) + (-1.0 * reaction_Dun1cellArrest) + ( 1.0 * reaction_G2toMGenesOn) + (-1.0 * reaction_G2toMProgession);
	
% Species:   id = MG1off, name = MG1off, affected by kineticLaw
	xdot(52) = (-1.0 * reaction_MtoG1GenesOn) + ( 1.0 * reaction_MtoG1Progession);
	
% Species:   id = MG1on, name = MG1on, affected by kineticLaw
	xdot(53) = ( 1.0 * reaction_MtoG1GenesOn) + (-1.0 * reaction_MtoG1Progession);
	
% Species:   id = sink, name = sink
%WARNING speciesID: sink, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(54) = 0.0;
	
% Species:   id = budscar, name = budscar, affected by kineticLaw
	xdot(55) = ( 1.0 * reaction_MtoG1Progession);
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


