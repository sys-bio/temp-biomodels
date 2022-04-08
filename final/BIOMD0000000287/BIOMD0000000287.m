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
% Model name = Passos2010_DNAdamage_CellularSenescence
%
% is http://identifiers.org/biomodels.db/MODEL5989624192
% is http://identifiers.org/biomodels.db/BIOMD0000000287
% isDescribedBy http://identifiers.org/pubmed/20160708
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000188
% isDerivedFrom http://identifiers.org/biomodels.db/BIOMD0000000189
%


function main()
%Initial conditions vector
	x0=zeros(21,1);
	x0(1) = 5.0;
	x0(2) = 5.0;
	x0(3) = 95.0;
	x0(4) = 10.0;
	x0(5) = 10.0;
	x0(6) = 0.0;
	x0(7) = 200.0;
	x0(8) = 0.0;
	x0(9) = 1.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 7.0;
	x0(15) = 100.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 10.0;


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

% Compartment: id = cell, name = cell, constant
	compartment_cell=1.0;
% Parameter:   id =  ksynMdm2, name = ksynMdm2
	global_par_ksynMdm2=4.95E-4;
% Parameter:   id =  kdegMdm2, name = kdegMdm2
	global_par_kdegMdm2=4.33E-4;
% Parameter:   id =  ksynp53, name = ksynp53
	global_par_ksynp53=0.006;
% Parameter:   id =  kdegp53, name = kdegp53
	global_par_kdegp53=8.25E-4;
% Parameter:   id =  kdegp53mdm2ind, name = kdegp53mdm2ind
	global_par_kdegp53mdm2ind=8.25E-7;
% Parameter:   id =  kbinMdm2p53, name = kbinMdm2p53
	global_par_kbinMdm2p53=0.001155;
% Parameter:   id =  krelMdm2p53, name = krelMdm2p53
	global_par_krelMdm2p53=1.155E-6;
% Parameter:   id =  ksynMdm2mRNA, name = ksynMdm2mRNA
	global_par_ksynMdm2mRNA=1.0E-4;
% Parameter:   id =  kdegMdm2mRNA, name = kdegMdm2mRNA
	global_par_kdegMdm2mRNA=1.0E-4;
% Parameter:   id =  kactATM, name = kactATM
	global_par_kactATM=2.0E-5;
% Parameter:   id =  kdegATMMdm2, name = kdegATMMdm2
	global_par_kdegATMMdm2=4.0E-4;
% Parameter:   id =  kinactATM, name = kinactATM
	global_par_kinactATM=5.0E-4;
% Parameter:   id =  kphosp53, name = kphosp53
	global_par_kphosp53=0.006;
% Parameter:   id =  kdephosp53, name = kdephosp53
	global_par_kdephosp53=0.5;
% Parameter:   id =  kphosMdm2, name = kphosMdm2
	global_par_kphosMdm2=2.0;
% Parameter:   id =  kdephosMdm2, name = kdephosMdm2
	global_par_kdephosMdm2=0.5;
% Parameter:   id =  kphosp38, name = kphosp38
	global_par_kphosp38=0.008;
% Parameter:   id =  kdephosp38, name = kdephosp38
	global_par_kdephosp38=0.1;
% Parameter:   id =  kdam, name = kdam
	global_par_kdam=0.007;
% Parameter:   id =  krepair, name = krepair
	global_par_krepair=6.0E-5;
% Parameter:   id =  kGADD45, name = kGADD45
	global_par_kGADD45=4.0E-6;
% Parameter:   id =  kdegGADD45, name = kdegGADD45
	global_par_kdegGADD45=1.0E-5;
% Parameter:   id =  ksynp53mRNA, name = ksynp53mRNA
	global_par_ksynp53mRNA=0.001;
% Parameter:   id =  kdegp53mRNA, name = kdegp53mRNA
	global_par_kdegp53mRNA=1.0E-4;
% Parameter:   id =  ksynp21mRNAp53P, name = ksynp21mRNAp53P
	global_par_ksynp21mRNAp53P=6.0E-6;
% Parameter:   id =  ksynp21mRNAp53, name = ksynp21mRNAp53
	global_par_ksynp21mRNAp53=6.0E-8;
% Parameter:   id =  kdegp21mRNA, name = kdegp21mRNA
	global_par_kdegp21mRNA=2.4E-5;
% Parameter:   id =  ksynp21step1, name = ksynp21step1
	global_par_ksynp21step1=4.0E-4;
% Parameter:   id =  ksynp21step2, name = ksynp21step2
	global_par_ksynp21step2=4.0E-5;
% Parameter:   id =  ksynp21step3, name = ksynp21step3
	global_par_ksynp21step3=4.0E-5;
% Parameter:   id =  kdegp21, name = kdegp21
	global_par_kdegp21=1.9E-4;
% Parameter:   id =  kremROS, name = kremROS
	global_par_kremROS=3.83E-4;
% Parameter:   id =  kgenROSp38, name = kgenROSp38
	global_par_kgenROSp38=4.5E-4;
% Parameter:   id =  kdamROS, name = kdamROS
	global_par_kdamROS=1.0E-5;
% Parameter:   id =  kdamBasalROS, name = kdamBasalROS
	global_par_kdamBasalROS=1.0E-9;
% Parameter:   id =  kp38ROS, name = kp38ROS
	global_par_kp38ROS=1.0;

% Reaction: id = p53mRNASynthesis
	reaction_p53mRNASynthesis=global_par_ksynp53mRNA*const_species_Source;

% Reaction: id = p53mRNADegradation
	reaction_p53mRNADegradation=global_par_kdegp53mRNA*x(5);

% Reaction: id = Mdm2Synthesis
	reaction_Mdm2Synthesis=global_par_ksynMdm2*x(4);

% Reaction: id = Mdm2mRNASynthesis1
	reaction_Mdm2mRNASynthesis1=global_par_ksynMdm2mRNA*x(2);

% Reaction: id = Mdm2mRNASynthesis2
	reaction_Mdm2mRNASynthesis2=global_par_ksynMdm2mRNA*x(12);

% Reaction: id = Mdm2mRNADegradation
	reaction_Mdm2mRNADegradation=global_par_kdegMdm2mRNA*x(4);

% Reaction: id = Mdm2Degradation
	reaction_Mdm2Degradation=global_par_kdegMdm2*x(1);

% Reaction: id = p53Synthesis
	reaction_p53Synthesis=global_par_ksynp53*x(5);

% Reaction: id = p53Degradation
	reaction_p53Degradation=global_par_kdegp53*x(3);

% Reaction: id = p53Mdm2IndepDegradation1
	reaction_p53Mdm2IndepDegradation1=global_par_kdegp53mdm2ind*x(12);

% Reaction: id = p53Mdm2IndepDegradation2
	reaction_p53Mdm2IndepDegradation2=global_par_kdegp53mdm2ind*x(2);

% Reaction: id = P53_Mdm2Binding
	reaction_P53_Mdm2Binding=global_par_kbinMdm2p53*x(2)*x(1);

% Reaction: id = P53_Mdm2Release
	reaction_P53_Mdm2Release=global_par_krelMdm2p53*x(3);

% Reaction: id = DNAdamage
	reaction_DNAdamage=global_par_kdam*x(18);

% Reaction: id = DNArepair
	reaction_DNArepair=global_par_krepair*x(19);

% Reaction: id = ATMactivation
	reaction_ATMactivation=global_par_kactATM*x(19)*x(7);

% Reaction: id = p53phoshorylation
	reaction_p53phoshorylation=global_par_kphosp53*x(2)*x(6);

% Reaction: id = p53dephosorylation
	reaction_p53dephosorylation=global_par_kdephosp53*x(12);

% Reaction: id = Mdm2phoshorylation
	reaction_Mdm2phoshorylation=global_par_kphosMdm2*x(1)*x(6);

% Reaction: id = Mdm2dephosorylation
	reaction_Mdm2dephosorylation=global_par_kdephosMdm2*x(13);

% Reaction: id = Mdm2Pdegradation
	reaction_Mdm2Pdegradation=global_par_kdegATMMdm2*x(13);

% Reaction: id = ATMInactivation
	reaction_ATMInactivation=global_par_kinactATM*x(6);

% Reaction: id = p21mRNASynthesis1
	reaction_p21mRNASynthesis1=global_par_ksynp21mRNAp53*x(2);

% Reaction: id = p21mRNASynthesis2
	reaction_p21mRNASynthesis2=global_par_ksynp21mRNAp53P*x(12);

% Reaction: id = p21mRNADegradation
	reaction_p21mRNADegradation=global_par_kdegp21mRNA*x(9);

% Reaction: id = p21Synthesis1
	reaction_p21Synthesis1=global_par_ksynp21step1*x(9);

% Reaction: id = p21Synthesis2
	reaction_p21Synthesis2=global_par_ksynp21step2*x(10);

% Reaction: id = p21Synthesis3
	reaction_p21Synthesis3=global_par_ksynp21step3*x(11);

% Reaction: id = p21degradation
	reaction_p21degradation=global_par_kdegp21*x(8);

% Reaction: id = GADD45activation2
	reaction_GADD45activation2=global_par_kGADD45*x(8);

% Reaction: id = GADD45degradation
	reaction_GADD45degradation=global_par_kdegGADD45*x(17);

% Reaction: id = p38activation
	reaction_p38activation=global_par_kphosp38*x(15)*x(17);

% Reaction: id = p38inactivation
	reaction_p38inactivation=global_par_kdephosp38*x(16);

% Reaction: id = ROSgenerationP38
	reaction_ROSgenerationP38=global_par_kgenROSp38*x(16)*global_par_kp38ROS;

% Reaction: id = ROSremoval
	reaction_ROSremoval=global_par_kremROS*x(20);

% Reaction: id = ROSDNAdamage
	reaction_ROSDNAdamage=global_par_kdamROS*x(20);

% Reaction: id = basalROSDNAdamage
	reaction_basalROSDNAdamage=global_par_kdamBasalROS*x(21);

% Species:   id = Sink, name = Sink, constant	const_species_Sink=1.0;

% Species:   id = Source, name = Source, constant	const_species_Source=1.0;

%Event: id=stressCell
	event_stressCell=t >= 172800;

	if(event_stressCell) 
		x(18)=200;
	end

%Event: id=stopStress
	event_stopStress=t >= 172860;

	if(event_stopStress) 
		x(18)=0;
	end

%Event: id=stopp38ROS
	event_stopp38ROS=t >= 691200;

	if(event_stopp38ROS) 
		global_par_kp38ROS=0.6;
	end

	xdot=zeros(21,1);
	
% Species:   id = Mdm2, name = Mdm2, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_Mdm2Synthesis) + (-1.0 * reaction_Mdm2Degradation) + ( 1.0 * reaction_p53Degradation) + (-1.0 * reaction_P53_Mdm2Binding) + ( 1.0 * reaction_P53_Mdm2Release) + (-1.0 * reaction_Mdm2phoshorylation) + ( 1.0 * reaction_Mdm2dephosorylation);
	
% Species:   id = p53, name = p53, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_Mdm2mRNASynthesis1) + ( 1.0 * reaction_Mdm2mRNASynthesis1) + ( 1.0 * reaction_p53Synthesis) + (-1.0 * reaction_p53Mdm2IndepDegradation2) + (-1.0 * reaction_P53_Mdm2Binding) + ( 1.0 * reaction_P53_Mdm2Release) + (-1.0 * reaction_p53phoshorylation) + ( 1.0 * reaction_p53dephosorylation) + (-1.0 * reaction_p21mRNASynthesis1) + ( 1.0 * reaction_p21mRNASynthesis1);
	
% Species:   id = Mdm2_p53, name = Mdm2_p53, affected by kineticLaw
	xdot(3) = (-1.0 * reaction_p53Degradation) + ( 1.0 * reaction_P53_Mdm2Binding) + (-1.0 * reaction_P53_Mdm2Release);
	
% Species:   id = Mdm2_mRNA, name = Mdm2_mRNA, affected by kineticLaw
	xdot(4) = (-1.0 * reaction_Mdm2Synthesis) + ( 1.0 * reaction_Mdm2Synthesis) + ( 1.0 * reaction_Mdm2mRNASynthesis1) + ( 1.0 * reaction_Mdm2mRNASynthesis2) + (-1.0 * reaction_Mdm2mRNADegradation);
	
% Species:   id = p53_mRNA, name = p53_mRNA, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_p53mRNASynthesis) + (-1.0 * reaction_p53mRNADegradation) + (-1.0 * reaction_p53Synthesis) + ( 1.0 * reaction_p53Synthesis);
	
% Species:   id = ATMA, name = ATMA, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_ATMactivation) + (-1.0 * reaction_p53phoshorylation) + ( 1.0 * reaction_p53phoshorylation) + (-1.0 * reaction_Mdm2phoshorylation) + ( 1.0 * reaction_Mdm2phoshorylation) + (-1.0 * reaction_ATMInactivation);
	
% Species:   id = ATMI, name = ATMI, affected by kineticLaw
	xdot(7) = (-1.0 * reaction_ATMactivation) + ( 1.0 * reaction_ATMInactivation);
	
% Species:   id = p21, name = p21, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_p21Synthesis3) + (-1.0 * reaction_p21degradation) + (-1.0 * reaction_GADD45activation2) + ( 1.0 * reaction_GADD45activation2);
	
% Species:   id = p21_mRNA, name = p21_mRNA, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_p21mRNASynthesis1) + ( 1.0 * reaction_p21mRNASynthesis2) + (-1.0 * reaction_p21mRNADegradation) + (-1.0 * reaction_p21Synthesis1) + ( 1.0 * reaction_p21Synthesis1);
	
% Species:   id = p21step1, name = p21step1, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_p21Synthesis1) + (-1.0 * reaction_p21Synthesis2);
	
% Species:   id = p21step2, name = p21step2, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_p21Synthesis2) + (-1.0 * reaction_p21Synthesis3);
	
% Species:   id = p53_P, name = p53_P, affected by kineticLaw
	xdot(12) = (-1.0 * reaction_Mdm2mRNASynthesis2) + ( 1.0 * reaction_Mdm2mRNASynthesis2) + (-1.0 * reaction_p53Mdm2IndepDegradation1) + ( 1.0 * reaction_p53phoshorylation) + (-1.0 * reaction_p53dephosorylation) + (-1.0 * reaction_p21mRNASynthesis2) + ( 1.0 * reaction_p21mRNASynthesis2);
	
% Species:   id = Mdm2_P, name = Mdm2_P, affected by kineticLaw
	xdot(13) = ( 1.0 * reaction_Mdm2phoshorylation) + (-1.0 * reaction_Mdm2dephosorylation) + (-1.0 * reaction_Mdm2Pdegradation);
	
% Species:   id = p21_basal, name = p21_basal
% Warning species is not changed by either rules or reactions
	xdot(14) = ;
	
% Species:   id = p38, name = p38, affected by kineticLaw
	xdot(15) = (-1.0 * reaction_p38activation) + ( 1.0 * reaction_p38inactivation);
	
% Species:   id = p38_P, name = p38_P, affected by kineticLaw
	xdot(16) = ( 1.0 * reaction_p38activation) + (-1.0 * reaction_p38inactivation) + (-1.0 * reaction_ROSgenerationP38) + ( 1.0 * reaction_ROSgenerationP38);
	
% Species:   id = GADD45, name = GADD45, affected by kineticLaw
	xdot(17) = ( 1.0 * reaction_GADD45activation2) + (-1.0 * reaction_GADD45degradation) + (-1.0 * reaction_p38activation) + ( 1.0 * reaction_p38activation);
	
% Species:   id = IR, name = IR, affected by kineticLaw
	xdot(18) = (-1.0 * reaction_DNAdamage) + ( 1.0 * reaction_DNAdamage);
	
% Species:   id = damDNA, name = damDNA, affected by kineticLaw
	xdot(19) = ( 1.0 * reaction_DNAdamage) + (-1.0 * reaction_DNArepair) + (-1.0 * reaction_ATMactivation) + ( 1.0 * reaction_ATMactivation) + ( 1.0 * reaction_ROSDNAdamage) + ( 1.0 * reaction_basalROSDNAdamage);
	
% Species:   id = ROS, name = ROS, affected by kineticLaw
	xdot(20) = ( 1.0 * reaction_ROSgenerationP38) + (-1.0 * reaction_ROSremoval) + (-1.0 * reaction_ROSDNAdamage) + ( 1.0 * reaction_ROSDNAdamage);
	
% Species:   id = basalROS, name = basalROS, affected by kineticLaw
	xdot(21) = (-1.0 * reaction_basalROSDNAdamage) + ( 1.0 * reaction_basalROSDNAdamage);
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


