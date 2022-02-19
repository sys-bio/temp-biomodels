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
% Model name = Proctor2005 - Actions of chaperones and their role in ageing
%
% is http://identifiers.org/biomodels.db/MODEL2223638385
% is http://identifiers.org/biomodels.db/BIOMD0000000091
% isDescribedBy http://identifiers.org/pubmed/15610770
%


function main()
%Initial conditions vector
	x0=zeros(16,1);
	x0(1) = 300000.0;
	x0(2) = 5900.0;
	x0(3) = 100.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 6000000.0;
	x0(9) = 0.0;
	x0(10) = 1.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 100.0;
	x0(14) = 10000.0;
	x0(15) = 1000.0;
	x0(16) = 0.0;


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
% Parameter:   id =  k1, name = k1
	global_par_k1=10.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=2.0E-5;
% Parameter:   id =  k3, name = k3
	global_par_k3=50.0;
% Parameter:   id =  k4, name = k4
	global_par_k4=1.0E-5;
% Parameter:   id =  k5, name = k5
	global_par_k5=4.0E-6;
% Parameter:   id =  k6, name = k6
	global_par_k6=6.0E-7;
% Parameter:   id =  k7, name = k7
	global_par_k7=1.0E-7;
% Parameter:   id =  k8, name = k8
	global_par_k8=500.0;
% Parameter:   id =  k9, name = k9
	global_par_k9=1.0;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.01;
% Parameter:   id =  k11, name = k11
	global_par_k11=100.0;
% Parameter:   id =  k12, name = k12
	global_par_k12=0.5;
% Parameter:   id =  k13, name = k13
	global_par_k13=0.5;
% Parameter:   id =  k14, name = k14
	global_par_k14=0.05;
% Parameter:   id =  k15, name = k15
	global_par_k15=0.08;
% Parameter:   id =  k16, name = k16
	global_par_k16=1000.0;
% Parameter:   id =  k17, name = k17
	global_par_k17=8.02E-9;
% Parameter:   id =  k18, name = k18
	global_par_k18=12.0;
% Parameter:   id =  k19, name = k19
	global_par_k19=0.02;
% Parameter:   id =  k20, name = k20
	global_par_k20=0.1;
% Parameter:   id =  k21, name = k21
	global_par_k21=0.001;

% Reaction: id = proteinSynthesis, name = proteinSynthesis
	reaction_proteinSynthesis=global_par_k1;

% Reaction: id = misfolding, name = misfolding
	reaction_misfolding=global_par_k2*x(8)*x(13);

% Reaction: id = Hsp90MisPBinding, name = Hsp90MisPBinding
	reaction_Hsp90MisPBinding=global_par_k3*x(4)*x(1);

% Reaction: id = unsuccessulRefolding, name = unsuccessfulRefolding
	reaction_unsuccessulRefolding=global_par_k4*x(5);

% Reaction: id = refolding, name = refolding
	reaction_refolding=global_par_k5*x(5)*x(14);

% Reaction: id = proteinDegradation, name = proteinDegradation
	reaction_proteinDegradation=global_par_k6*x(4)*x(14);

% Reaction: id = proteinAggregation1
	reaction_proteinAggregation1=(x(4)-1)*global_par_k7*x(4)/2;

% Reaction: id = proteinAggregation2
	reaction_proteinAggregation2=global_par_k7*x(4)*x(9);

% Reaction: id = Hsp90HSF1Binding, name = Hsp90HSF1Binding
	reaction_Hsp90HSF1Binding=global_par_k8*x(1)*x(3);

% Reaction: id = Hsp90HSF1Release, name = Hsp90HSF1Release
	reaction_Hsp90HSF1Release=global_par_k9*x(2);

% Reaction: id = dimerisation, name = dimerisation
	reaction_dimerisation=(x(3)-1)*global_par_k10*x(3)/2;

% Reaction: id = trimerisation, name = trimerisation
	reaction_trimerisation=global_par_k11*x(3)*x(7);

% Reaction: id = deTrimerisation, name = deTrimerisation
	reaction_deTrimerisation=global_par_k12*x(6);

% Reaction: id = deDimerisation, name = deDimerisation
	reaction_deDimerisation=global_par_k13*x(7);

% Reaction: id = HSETriHBinding, name = HSETriHBinding
	reaction_HSETriHBinding=global_par_k14*x(10)*x(6);

% Reaction: id = HSETriHRelease, name = HSETriHRelease
	reaction_HSETriHRelease=global_par_k15*x(11);

% Reaction: id = Hsp90Transcription, name = Hsp90Transcription
	reaction_Hsp90Transcription=global_par_k16*x(11);

% Reaction: id = Hsp90Degradation, name = Hsp90Degradation
	reaction_Hsp90Degradation=global_par_k17*x(1)*x(14);

% Reaction: id = countTime, name = countTime
	reaction_countTime=1;

% Reaction: id = ATPformation, name = ATPformation
	reaction_ATPformation=global_par_k18*x(15);

% Reaction: id = ATPconsumption, name = ATPconsumption
	reaction_ATPconsumption=global_par_k19*x(14);

% Reaction: id = radicalFormation, name = radicalFormation
	reaction_radicalFormation=global_par_k20;

% Reaction: id = radicalScavenging, name = radicalScavenging
	reaction_radicalScavenging=global_par_k21*x(13);

	xdot=zeros(16,1);
	
% Species:   id = Hsp90, name = Hsp90, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_Hsp90MisPBinding) + ( 1.0 * reaction_unsuccessulRefolding) + ( 1.0 * reaction_refolding) + (-1.0 * reaction_Hsp90HSF1Binding) + ( 1.0 * reaction_Hsp90HSF1Release) + ( 1.0 * reaction_Hsp90Transcription) + (-1.0 * reaction_Hsp90Degradation);
	
% Species:   id = HCom, name = HCom, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_Hsp90HSF1Binding) + (-1.0 * reaction_Hsp90HSF1Release);
	
% Species:   id = HSF1, name = HSF1, affected by kineticLaw
	xdot(3) = (-1.0 * reaction_Hsp90HSF1Binding) + ( 1.0 * reaction_Hsp90HSF1Release) + (-2.0 * reaction_dimerisation) + (-1.0 * reaction_trimerisation) + ( 1.0 * reaction_deTrimerisation) + ( 2.0 * reaction_deDimerisation);
	
% Species:   id = MisP, name = MisP, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_misfolding) + (-1.0 * reaction_Hsp90MisPBinding) + ( 1.0 * reaction_unsuccessulRefolding) + (-1.0 * reaction_proteinDegradation) + (-2.0 * reaction_proteinAggregation1) + (-1.0 * reaction_proteinAggregation2);
	
% Species:   id = MCom, name = MCom, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_Hsp90MisPBinding) + (-1.0 * reaction_unsuccessulRefolding) + (-1.0 * reaction_refolding);
	
% Species:   id = TriH, name = TriH, affected by kineticLaw
	xdot(6) = ( 1.0 * reaction_trimerisation) + (-1.0 * reaction_deTrimerisation) + (-1.0 * reaction_HSETriHBinding) + ( 1.0 * reaction_HSETriHRelease);
	
% Species:   id = DiH, name = DiH, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_dimerisation) + (-1.0 * reaction_trimerisation) + ( 1.0 * reaction_deTrimerisation) + (-1.0 * reaction_deDimerisation);
	
% Species:   id = NatP, name = NatP, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_proteinSynthesis) + (-1.0 * reaction_misfolding) + ( 1.0 * reaction_refolding);
	
% Species:   id = AggP, name = AggP, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_proteinAggregation1) + (-1.0 * reaction_proteinAggregation2) + ( 2.0 * reaction_proteinAggregation2);
	
% Species:   id = HSE, name = HSE, affected by kineticLaw
	xdot(10) = (-1.0 * reaction_HSETriHBinding) + ( 1.0 * reaction_HSETriHRelease);
	
% Species:   id = HSETriH, name = HSETriH, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_HSETriHBinding) + (-1.0 * reaction_HSETriHRelease) + (-1.0 * reaction_Hsp90Transcription) + ( 1.0 * reaction_Hsp90Transcription);
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_countTime);
	
% Species:   id = ROS, name = ROS, affected by kineticLaw
	xdot(13) = (-1.0 * reaction_misfolding) + ( 1.0 * reaction_misfolding) + ( 1.0 * reaction_radicalFormation) + (-1.0 * reaction_radicalScavenging);
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(14) = (-1.0 * reaction_refolding) + (-1.0 * reaction_proteinDegradation) + (-1.0 * reaction_Hsp90Degradation) + ( 1.0 * reaction_ATPformation) + (-1.0 * reaction_ATPconsumption);
	
% Species:   id = ADP, name = ADP, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_refolding) + ( 1.0 * reaction_proteinDegradation) + ( 1.0 * reaction_Hsp90Degradation) + (-1.0 * reaction_ATPformation) + ( 1.0 * reaction_ATPconsumption);
	
% Species:   id = source, name = source
%WARNING speciesID: source, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(16) = 0.0;
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


