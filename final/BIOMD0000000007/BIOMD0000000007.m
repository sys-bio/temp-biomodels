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
% Model name = Novak1997 - Cell Cycle
%
% is http://identifiers.org/biomodels.db/MODEL6614787694
% is http://identifiers.org/biomodels.db/BIOMD0000000007
% isDescribedBy http://identifiers.org/pubmed/9256450
% isDerivedFrom http://identifiers.org/pubmed/10395816
%


function main()
%Initial conditions vector
	x0=zeros(23,1);
	x0(23) = 0.49;
	x0(1) = 0.11;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.4;
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
	x0(20) = 0;
	x0(21) = 0;
	x0(22) = 0;


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

% Compartment: id = Cell, name = Cell, constant
	compartment_Cell=1.0;
% Parameter:   id =  mu, name = mu
	global_par_mu=0.00495;
% Parameter:   id =  Mass, name = Mass
% Parameter:   id =  k1, name = k1
	global_par_k1=0.015;
% Parameter:   id =  k2prime, name = k2'
	global_par_k2prime=0.05;
% Parameter:   id =  k3, name = k3
	global_par_k3=0.09375;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.1875;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.00175;
% Parameter:   id =  k6prime, name = k6'
	global_par_k6prime=0.0;
% Parameter:   id =  k7, name = k7
	global_par_k7=100.0;
% Parameter:   id =  k7r, name = k7r
	global_par_k7r=0.1;
% Parameter:   id =  k8, name = k8
	global_par_k8=10.0;
% Parameter:   id =  k8r, name = k8r
	global_par_k8r=0.1;
% Parameter:   id =  kc, name = kc
	global_par_kc=1.0;
% Parameter:   id =  kcr, name = kcr
	global_par_kcr=0.25;
% Parameter:   id =  ki, name = ki
	global_par_ki=0.4;
% Parameter:   id =  kir, name = kir
	global_par_kir=0.1;
% Parameter:   id =  kp, name = kp
	global_par_kp=3.25;
% Parameter:   id =  ku, name = ku
	global_par_ku=0.2;
% Parameter:   id =  kur, name = kur
	global_par_kur=0.1;
% Parameter:   id =  ku2, name = ku2
	global_par_ku2=1.0;
% Parameter:   id =  kur2, name = kur2
	global_par_kur2=0.3;
% Parameter:   id =  kw, name = kw
	global_par_kw=1.0;
% Parameter:   id =  kwr, name = kwr
	global_par_kwr=0.25;
% Parameter:   id =  V2, name = V2
	global_par_V2=0.25;
% Parameter:   id =  V2prime, name = V2'
	global_par_V2prime=0.0075;
% Parameter:   id =  V6, name = V6
	global_par_V6=7.5;
% Parameter:   id =  V6prime, name = V6'
	global_par_V6prime=0.0375;
% Parameter:   id =  V25, name = V25
	global_par_V25=0.5;
% Parameter:   id =  V25prime, name = V25'
	global_par_V25prime=0.025;
% Parameter:   id =  Vw, name = Vw
	global_par_Vw=0.35;
% Parameter:   id =  Vwprime, name = Vw'
	global_par_Vwprime=0.035;
% Parameter:   id =  Kmc, name = Kmc
	global_par_Kmc=0.1;
% Parameter:   id =  Kmcr, name = Kmcr
	global_par_Kmcr=0.1;
% Parameter:   id =  Kmi, name = Kmi
	global_par_Kmi=0.01;
% Parameter:   id =  Kmir, name = Kmir
	global_par_Kmir=0.01;
% Parameter:   id =  Kmp, name = Kmp
	global_par_Kmp=0.001;
% Parameter:   id =  Kmu, name = Kmu
	global_par_Kmu=0.01;
% Parameter:   id =  Kmur, name = Kmur
	global_par_Kmur=0.01;
% Parameter:   id =  Kmu2, name = Kmu2
	global_par_Kmu2=0.05;
% Parameter:   id =  Kmur2, name = Kmur2
	global_par_Kmur2=0.05;
% Parameter:   id =  Kmw, name = Kmw
	global_par_Kmw=0.1;
% Parameter:   id =  Kmwr, name = Kmwr
	global_par_Kmwr=0.1;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.25;
% Parameter:   id =  beta, name = beta
	global_par_beta=0.05;
% Parameter:   id =  Cig1, name = Cig1
	global_par_Cig1=0.0;
% Parameter:   id =  k2, name = k2
% Parameter:   id =  k6, name = k6
% Parameter:   id =  kwee, name = kwee
% Parameter:   id =  k25, name = k25
% rateRule: variable = Mass
global_par_Mass = x(23);
% assignmentRule: variable = IEB
	x(15)=1-x(8);
% assignmentRule: variable = UbEB
	x(16)=1-x(1);
% assignmentRule: variable = UbE2B
	x(17)=1-x(2);
% assignmentRule: variable = Wee1B
	x(18)=1-x(3);
% assignmentRule: variable = Cdc25B
	x(19)=1-x(4);
% assignmentRule: variable = Rum1Total
	x(20)=x(10)+x(11)+x(12)+x(6);
% assignmentRule: variable = Cdc13Total
	x(21)=x(5)+x(11)+x(9)+x(12);
% assignmentRule: variable = Cig2Total
	x(22)=x(7)+x(10);
% assignmentRule: variable = k2
	global_par_k2=x(1)*global_par_V2+(1-x(1))*global_par_V2prime;
% assignmentRule: variable = k6
	global_par_k6=x(2)*global_par_V6+(1-x(2))*global_par_V6prime;
% assignmentRule: variable = kwee
	global_par_kwee=global_par_Vwprime*(1-x(3))+global_par_Vw*x(3);
% assignmentRule: variable = k25
	global_par_k25=x(4)*global_par_V25+(1-x(4))*global_par_V25prime;
% assignmentRule: variable = MPF
	x(14)=x(5)+global_par_beta*x(9);
% assignmentRule: variable = SPF
	x(13)=global_par_Cig1+global_par_alpha*x(7)+x(14);

% Reaction: id = G2K_Creation, name = Cdc13_Cdc2 creation
	reaction_G2K_Creation=global_par_k1;

% Reaction: id = G1K_Creation, name = Cig2_Cdc2 creation
	reaction_G1K_Creation=global_par_k5;

% Reaction: id = Cdc2Phos, name = Cdc2 phosphorylation
	reaction_Cdc2Phos=x(5)*global_par_kwee-global_par_k25*x(9);

% Reaction: id = G2R_Creation, name = binding of Rum1 with Cdc13_Cdc2
	reaction_G2R_Creation=x(5)*global_par_k7*x(6)-x(11)*global_par_k7r;

% Reaction: id = PG2R_Creation, name = binding of Rum1 with Cdc13_P-Cdc2
	reaction_PG2R_Creation=global_par_k7*x(9)*x(6)-global_par_k7r*x(12);

% Reaction: id = Rum1DegInG2R, name = Rum1 degradation in Rum1_Cdc13_Cdc2
	reaction_Rum1DegInG2R=x(11)*global_par_k4;

% Reaction: id = Rum1Deg, name = Rum1 degradation in solution
	reaction_Rum1Deg=global_par_k4*x(6);

% Reaction: id = Rum1DegInPG2R, name = Rum1 degradation in Rum1_Cdc13_P-Cdc2
	reaction_Rum1DegInPG2R=global_par_k4*x(12);

% Reaction: id = RumDegInG1R, name = Rum1 degradation in Rum1_Cig2_Cdc2
	reaction_RumDegInG1R=x(10)*global_par_k4;

% Reaction: id = G2K_dissoc, name = Cdc13 degradation in Cdc13_Cdc2
	reaction_G2K_dissoc=x(5)*global_par_k2;

% Reaction: id = PG2_dissoc, name = Cdc13 degradation in Cdc13_P-Cdc2
	reaction_PG2_dissoc=global_par_k2*x(9);

% Reaction: id = G1K_Dissociation, name = Cig2 degradation in Cig2_Cdc2
	reaction_G1K_Dissociation=x(7)*global_par_k6;

% Reaction: id = PG2R_Dissociation, name = Cdc13 degradation in Rum1_Cdc13_P-Cdc2
	reaction_PG2R_Dissociation=global_par_k2prime*x(12);

% Reaction: id = G2R_Dissociation, name = Cdc13 degradation in Rum1_Cdc13_Cdc2
	reaction_G2R_Dissociation=x(11)*global_par_k2prime;

% Reaction: id = G1R_Dissociation, name = Cig2 degradation in Rum1_Cig2_Cdc2
	reaction_G1R_Dissociation=x(10)*global_par_k6prime;

% Reaction: id = G1R_Binding, name = Binding of Rum1 to Cig2_Cdc2
	reaction_G1R_Binding=x(7)*global_par_k8*x(6)-x(10)*global_par_k8r;

% Reaction: id = G2R_Dissociation_UbE, name = UbE mediated degradation of Cdc13_Cdc2 in Rum1_Cdc13_Cdc2
	reaction_G2R_Dissociation_UbE=x(11)*global_par_k2;

% Reaction: id = PG2R_Dissociation_UbE, name = UbE mediated degradation of Cdc13_Cdc2 in Rum1_Cdc13_P-Cdc2
	reaction_PG2R_Dissociation_UbE=global_par_k2*x(12);

% Reaction: id = Rum1_Production, name = Rum1 creation
	reaction_Rum1_Production=global_par_k3;

% Reaction: id = Rum1_Deg_SPF, name = Rum1 degradation by SPF
	reaction_Rum1_Deg_SPF=global_par_kp*global_par_Mass*x(6)*x(13)/(global_par_Kmp+x(6));

% Reaction: id = IE_Reaction, name = IE production & degradation
	reaction_IE_Reaction=x(15)*global_par_ki*x(14)/(x(15)+global_par_Kmi)-x(8)*global_par_kir/(x(8)+global_par_Kmir);

% Reaction: id = UbE_Reaction, name = UbE production & degradation
	reaction_UbE_Reaction=x(8)*global_par_ku*x(16)/(global_par_Kmu+x(16))-global_par_kur*x(1)/(global_par_Kmur+x(1));

% Reaction: id = UbE2_Reaction, name = UbE2 production & degradation
	reaction_UbE2_Reaction=global_par_ku2*x(14)*x(17)/(global_par_Kmu2+x(17))-global_par_kur2*x(2)/(global_par_Kmur2+x(2));

% Reaction: id = Wee1_Reaction, name = Wee1 production & degradation
	reaction_Wee1_Reaction=global_par_kwr*x(18)/(global_par_Kmwr+x(18))-global_par_kw*x(14)*x(3)/(global_par_Kmw+x(3));

% Reaction: id = Cdc25_Reaction, name = Cdc25 production & degradation
	reaction_Cdc25_Reaction=x(19)*global_par_kc*x(14)/(x(19)+global_par_Kmc)-x(4)*global_par_kcr/(x(4)+global_par_Kmcr);

%Event: id=Start
	event_Start=x(13) >= 0.1;

	if(event_Start) 
		global_par_kp=global_par_kp/2;
	end

%Event: id=Division
	event_Division=x(1) <= 0.1;

	if(event_Division) 
		global_par_kp=2*global_par_kp;
		global_par_Mass=global_par_Mass/2;
	end

	xdot=zeros(23,1);
	% rateRule: variable = Mass
	xdot(23) = global_par_Mass*global_par_mu;
	
% Species:   id = UbE, name = ubiquitinProtease1, affected by kineticLaw
	xdot(1) = ( 1.0 * reaction_UbE_Reaction);
	
% Species:   id = UbE2, name = ubiquitinProtease2, affected by kineticLaw
	xdot(2) = ( 1.0 * reaction_UbE2_Reaction);
	
% Species:   id = Wee1, name = Wee1, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_Wee1_Reaction);
	
% Species:   id = Cdc25, name = Cdc25, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_Cdc25_Reaction);
	
% Species:   id = G2K, name = Cdc13_Cdc2, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_G2K_Creation) + (-1.0 * reaction_Cdc2Phos) + (-1.0 * reaction_G2R_Creation) + ( 1.0 * reaction_Rum1DegInG2R) + (-1.0 * reaction_G2K_dissoc);
	
% Species:   id = R, name = FreeRum1, affected by kineticLaw
	xdot(6) = (-1.0 * reaction_G2R_Creation) + (-1.0 * reaction_PG2R_Creation) + (-1.0 * reaction_Rum1Deg) + ( 1.0 * reaction_PG2R_Dissociation) + ( 1.0 * reaction_G2R_Dissociation) + ( 1.0 * reaction_G1R_Dissociation) + (-1.0 * reaction_G1R_Binding) + ( 1.0 * reaction_G2R_Dissociation_UbE) + ( 1.0 * reaction_PG2R_Dissociation_UbE) + ( 1.0 * reaction_Rum1_Production) + (-1.0 * reaction_Rum1_Deg_SPF);
	
% Species:   id = G1K, name = Cig2_Cdc2, affected by kineticLaw
	xdot(7) = ( 1.0 * reaction_G1K_Creation) + ( 1.0 * reaction_RumDegInG1R) + (-1.0 * reaction_G1K_Dissociation) + (-1.0 * reaction_G1R_Binding);
	
% Species:   id = IE, name = IntermediaryEnzyme, affected by kineticLaw
	xdot(8) = ( 1.0 * reaction_IE_Reaction);
	
% Species:   id = PG2, name = Cdc13_P-Cdc2, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_Cdc2Phos) + (-1.0 * reaction_PG2R_Creation) + ( 1.0 * reaction_Rum1DegInPG2R) + (-1.0 * reaction_PG2_dissoc);
	
% Species:   id = G1R, name = Cig2_Cdc2_Rum1, affected by kineticLaw
	xdot(10) = (-1.0 * reaction_RumDegInG1R) + (-1.0 * reaction_G1R_Dissociation) + ( 1.0 * reaction_G1R_Binding);
	
% Species:   id = G2R, name = Cdc13_Cdc2_Rum1, affected by kineticLaw
	xdot(11) = ( 1.0 * reaction_G2R_Creation) + (-1.0 * reaction_Rum1DegInG2R) + (-1.0 * reaction_G2R_Dissociation) + (-1.0 * reaction_G2R_Dissociation_UbE);
	
% Species:   id = PG2R, name = Cdc13_P-Cdc2_Rum1, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_PG2R_Creation) + (-1.0 * reaction_Rum1DegInPG2R) + (-1.0 * reaction_PG2R_Dissociation) + (-1.0 * reaction_PG2R_Dissociation_UbE);
	
% Species:   id = SPF, name = S-phasePromotingFactor, defined in a rule 	xdot(13) = x(13);
	
% Species:   id = MPF, name = M-phasePromotingFactor, defined in a rule 	xdot(14) = x(14);
	
% Species:   id = IEB, name = BoundIntermediaryEnzyme, involved in a rule 	xdot(15) = x(15);
	
% Species:   id = UbEB, name = BoundUbiquitinProtease1, involved in a rule 	xdot(16) = x(16);
	
% Species:   id = UbE2B, name = BoundUbiquitinProtease2, involved in a rule 	xdot(17) = x(17);
	
% Species:   id = Wee1B, name = BoundWee1, involved in a rule 	xdot(18) = x(18);
	
% Species:   id = Cdc25B, name = BoundCdc25, involved in a rule 	xdot(19) = x(19);
	
% Species:   id = Rum1Total, name = TotalRum1, defined in a rule 	xdot(20) = x(20);
	
% Species:   id = Cdc13Total, name = TotalCdc13, defined in a rule 	xdot(21) = x(21);
	
% Species:   id = Cig2Total, name = TotalCig2, defined in a rule 	xdot(22) = x(22);
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


