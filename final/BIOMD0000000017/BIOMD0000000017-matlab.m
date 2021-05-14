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
% Model name = Hoefnagel2002_PyruvateBranches
%
% is http://identifiers.org/biomodels.db/MODEL6617235316
% is http://identifiers.org/biomodels.db/BIOMD0000000017
% isDescribedBy http://identifiers.org/pubmed/11932446
%


function main()
%Initial conditions vector
	x0=zeros(18,1);
	x0(1) = 4.9;
	x0(2) = 6.33;
	x0(3) = 0.1;
	x0(4) = 3.67;
	x0(5) = 1.0;
	x0(6) = 0.1;
	x0(7) = 1.0;
	x0(8) = 30.0;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 1.0;
	x0(12) = 0.0;
	x0(13) = 1.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.01;
	x0(18) = 0.2;


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

% Reaction: id = R1	% Local Parameter:   id =  V_1, name = V_1
	reaction_R1_V_1=2397.0;
	% Local Parameter:   id =  Kglc_1, name = Kglc_1
	reaction_R1_Kglc_1=0.1;
	% Local Parameter:   id =  Knad_1, name = Knad_1
	reaction_R1_Knad_1=0.1412;
	% Local Parameter:   id =  Kadp_1, name = Kadp_1
	reaction_R1_Kadp_1=0.04699;
	% Local Parameter:   id =  Kpyr_1, name = Kpyr_1
	reaction_R1_Kpyr_1=2.5;
	% Local Parameter:   id =  Knadh_1, name = Knadh_1
	reaction_R1_Knadh_1=0.08999;
	% Local Parameter:   id =  Katp_1, name = Katp_1
	reaction_R1_Katp_1=0.01867;

	reaction_R1=2*reaction_R1_V_1*x(8)/(2*reaction_R1_Kglc_1)*x(2)/reaction_R1_Knad_1*x(1)/reaction_R1_Kadp_1/((1+x(8)/(2*reaction_R1_Kglc_1)+x(5)/reaction_R1_Kpyr_1)*(1+x(2)/reaction_R1_Knad_1+x(4)/reaction_R1_Knadh_1)*(1+x(1)/reaction_R1_Kadp_1+x(3)/reaction_R1_Katp_1));

% Reaction: id = R2	% Local Parameter:   id =  V_2, name = V_2
	reaction_R2_V_2=5118.0;
	% Local Parameter:   id =  Keq_2, name = Keq_2
	reaction_R2_Keq_2=21120.69;
	% Local Parameter:   id =  Kpyr_2, name = Kpyr_2
	reaction_R2_Kpyr_2=1.5;
	% Local Parameter:   id =  Knadh_2, name = Knadh_2
	reaction_R2_Knadh_2=0.08;
	% Local Parameter:   id =  Klac_2, name = Klac_2
	reaction_R2_Klac_2=100.0;
	% Local Parameter:   id =  Knad_2, name = Knad_2
	reaction_R2_Knad_2=2.4;

	reaction_R2=reaction_R2_V_2*(x(5)*x(4)-x(6)*x(2)/reaction_R2_Keq_2)/(reaction_R2_Kpyr_2*reaction_R2_Knadh_2)/((1+x(5)/reaction_R2_Kpyr_2+x(6)/reaction_R2_Klac_2)*(1+x(4)/reaction_R2_Knadh_2+x(2)/reaction_R2_Knad_2));

% Reaction: id = R3	% Local Parameter:   id =  V_3, name = V_3
	reaction_R3_V_3=259.0;
	% Local Parameter:   id =  Kpyr_3, name = Kpyr_3
	reaction_R3_Kpyr_3=1.0;
	% Local Parameter:   id =  Knad_3, name = Knad_3
	reaction_R3_Knad_3=0.4;
	% Local Parameter:   id =  Kcoa_3, name = Kcoa_3
	reaction_R3_Kcoa_3=0.014;
	% Local Parameter:   id =  Ki_3, name = Ki_3
	reaction_R3_Ki_3=46.4159;
	% Local Parameter:   id =  Knadh_3, name = Knadh_3
	reaction_R3_Knadh_3=0.1;
	% Local Parameter:   id =  Kaccoa_3, name = Kaccoa_3
	reaction_R3_Kaccoa_3=0.008;

	reaction_R3=reaction_R3_V_3*x(5)/reaction_R3_Kpyr_3*x(2)/reaction_R3_Knad_3*x(7)/reaction_R3_Kcoa_3*x(2)/(x(2)+reaction_R3_Ki_3*x(4))/((1+x(5)/reaction_R3_Kpyr_3)*(1+x(2)/reaction_R3_Knad_3+x(4)/reaction_R3_Knadh_3)*(1+x(7)/reaction_R3_Kcoa_3+x(9)/reaction_R3_Kaccoa_3));

% Reaction: id = R4	% Local Parameter:   id =  V_4, name = V_4
	reaction_R4_V_4=42.0;
	% Local Parameter:   id =  Keq_4, name = Keq_4
	reaction_R4_Keq_4=0.0065;
	% Local Parameter:   id =  Kiaccoa_4, name = Kiaccoa_4
	reaction_R4_Kiaccoa_4=0.2;
	% Local Parameter:   id =  Kpi_4, name = Kpi_4
	reaction_R4_Kpi_4=2.6;
	% Local Parameter:   id =  Kipi_4, name = Kipi_4
	reaction_R4_Kipi_4=2.6;
	% Local Parameter:   id =  Kiacp_4, name = Kiacp_4
	reaction_R4_Kiacp_4=0.2;
	% Local Parameter:   id =  Kicoa_4, name = Kicoa_4
	reaction_R4_Kicoa_4=0.029;
	% Local Parameter:   id =  Kacp_4, name = Kacp_4
	reaction_R4_Kacp_4=0.7;

	reaction_R4=reaction_R4_V_4*(x(9)*const_species_PO4-x(10)*x(7)/reaction_R4_Keq_4)/(reaction_R4_Kiaccoa_4*reaction_R4_Kpi_4)/(1+x(9)/reaction_R4_Kiaccoa_4+const_species_PO4/reaction_R4_Kipi_4+x(10)/reaction_R4_Kiacp_4+x(7)/reaction_R4_Kicoa_4+x(9)*const_species_PO4/(reaction_R4_Kiaccoa_4*reaction_R4_Kpi_4)+x(10)*x(7)/(reaction_R4_Kacp_4*reaction_R4_Kicoa_4));

% Reaction: id = R5	% Local Parameter:   id =  V_5, name = V_5
	reaction_R5_V_5=2700.0;
	% Local Parameter:   id =  Keq_5, name = Keq_5
	reaction_R5_Keq_5=174.217;
	% Local Parameter:   id =  Kadp_5, name = Kadp_5
	reaction_R5_Kadp_5=0.5;
	% Local Parameter:   id =  Kacp_5, name = Kacp_5
	reaction_R5_Kacp_5=0.16;
	% Local Parameter:   id =  Kac_5, name = Kac_5
	reaction_R5_Kac_5=7.0;
	% Local Parameter:   id =  Katp_5, name = Katp_5
	reaction_R5_Katp_5=0.07;

	reaction_R5=reaction_R5_V_5*(x(10)*x(1)-x(11)*x(3)/reaction_R5_Keq_5)/(reaction_R5_Kadp_5*reaction_R5_Kacp_5)/((1+x(10)/reaction_R5_Kacp_5+x(11)/reaction_R5_Kac_5)*(1+x(1)/reaction_R5_Kadp_5+x(3)/reaction_R5_Katp_5));

% Reaction: id = R6	% Local Parameter:   id =  V_6, name = V_6
	reaction_R6_V_6=97.0;
	% Local Parameter:   id =  Keq_6, name = Keq_6
	reaction_R6_Keq_6=1.0;
	% Local Parameter:   id =  Kaccoa_6, name = Kaccoa_6
	reaction_R6_Kaccoa_6=0.007;
	% Local Parameter:   id =  Knadh_6, name = Knadh_6
	reaction_R6_Knadh_6=0.025;
	% Local Parameter:   id =  Knad_6, name = Knad_6
	reaction_R6_Knad_6=0.08;
	% Local Parameter:   id =  Kcoa_6, name = Kcoa_6
	reaction_R6_Kcoa_6=0.008;
	% Local Parameter:   id =  Kaco_6, name = Kaco_6
	reaction_R6_Kaco_6=10.0;

	reaction_R6=reaction_R6_V_6*(x(9)*x(4)-x(7)*x(2)*x(12)/reaction_R6_Keq_6)/(reaction_R6_Kaccoa_6*reaction_R6_Knadh_6)/((1+x(2)/reaction_R6_Knad_6+x(4)/reaction_R6_Knadh_6)*(1+x(9)/reaction_R6_Kaccoa_6+x(7)/reaction_R6_Kcoa_6)*(1+x(12)/reaction_R6_Kaco_6));

% Reaction: id = R7	% Local Parameter:   id =  V_7, name = V_7
	reaction_R7_V_7=162.0;
	% Local Parameter:   id =  Keq_7, name = Keq_7
	reaction_R7_Keq_7=12354.9;
	% Local Parameter:   id =  Kaco_7, name = Kaco_7
	reaction_R7_Kaco_7=0.03;
	% Local Parameter:   id =  Knadh_7, name = Knadh_7
	reaction_R7_Knadh_7=0.05;
	% Local Parameter:   id =  Knad_7, name = Knad_7
	reaction_R7_Knad_7=0.08;
	% Local Parameter:   id =  Ketoh_7, name = Ketoh_7
	reaction_R7_Ketoh_7=1.0;

	reaction_R7=reaction_R7_V_7*(x(12)*x(4)-x(13)*x(2)/reaction_R7_Keq_7)/(reaction_R7_Kaco_7*reaction_R7_Knadh_7)/((1+x(2)/reaction_R7_Knad_7+x(4)/reaction_R7_Knadh_7)*(1+x(12)/reaction_R7_Kaco_7+x(13)/reaction_R7_Ketoh_7));

% Reaction: id = R8	% Local Parameter:   id =  V_8, name = V_8
	reaction_R8_V_8=600.0;
	% Local Parameter:   id =  Kpyr_8, name = Kpyr_8
	reaction_R8_Kpyr_8=50.0;
	% Local Parameter:   id =  Keq_8, name = Keq_8
	reaction_R8_Keq_8=9.0E12;
	% Local Parameter:   id =  Kaclac_8, name = Kaclac_8
	reaction_R8_Kaclac_8=100.0;
	% Local Parameter:   id =  n_8, name = n_8
	reaction_R8_n_8=2.4;

	reaction_R8=reaction_R8_V_8*x(5)/reaction_R8_Kpyr_8*(1-x(14)/(x(5)*reaction_R8_Keq_8))*(x(5)/reaction_R8_Kpyr_8+x(14)/reaction_R8_Kaclac_8)^(reaction_R8_n_8-1)/(1+(x(5)/reaction_R8_Kpyr_8+x(14)/reaction_R8_Kaclac_8)^reaction_R8_n_8);

% Reaction: id = R9	% Local Parameter:   id =  V_9, name = V_9
	reaction_R9_V_9=106.0;
	% Local Parameter:   id =  Kaclac_9, name = Kaclac_9
	reaction_R9_Kaclac_9=10.0;
	% Local Parameter:   id =  Kacet_9, name = Kacet_9
	reaction_R9_Kacet_9=100.0;

	reaction_R9=reaction_R9_V_9*x(14)/reaction_R9_Kaclac_9/(1+x(14)/reaction_R9_Kaclac_9+x(15)/reaction_R9_Kacet_9);

% Reaction: id = R10	% Local Parameter:   id =  V_10, name = V_10
	reaction_R10_V_10=200.0;
	% Local Parameter:   id =  Kacet_10, name = Kacet_10
	reaction_R10_Kacet_10=5.0;

	reaction_R10=reaction_R10_V_10*x(15)/reaction_R10_Kacet_10/(1+x(15)/reaction_R10_Kacet_10);

% Reaction: id = R11	% Local Parameter:   id =  V_11, name = V_11
	reaction_R11_V_11=105.0;
	% Local Parameter:   id =  Keq_11, name = Keq_11
	reaction_R11_Keq_11=1400.0;
	% Local Parameter:   id =  Kacet_11, name = Kacet_11
	reaction_R11_Kacet_11=0.06;
	% Local Parameter:   id =  Knadh_11, name = Knadh_11
	reaction_R11_Knadh_11=0.02;
	% Local Parameter:   id =  Kbut_11, name = Kbut_11
	reaction_R11_Kbut_11=2.6;
	% Local Parameter:   id =  Knad_11, name = Knad_11
	reaction_R11_Knad_11=0.16;

	reaction_R11=reaction_R11_V_11*(x(15)*x(4)-x(17)*x(2)/reaction_R11_Keq_11)/(reaction_R11_Kacet_11*reaction_R11_Knadh_11)/((1+x(15)/reaction_R11_Kacet_11+x(17)/reaction_R11_Kbut_11)*(1+x(4)/reaction_R11_Knadh_11+x(2)/reaction_R11_Knad_11));

% Reaction: id = R12	% Local Parameter:   id =  V_12, name = V_12
	reaction_R12_V_12=900.0;
	% Local Parameter:   id =  Katp_12, name = Katp_12
	reaction_R12_Katp_12=6.196;
	% Local Parameter:   id =  n_12, name = n_12
	reaction_R12_n_12=2.58;

	reaction_R12=reaction_R12_V_12*(x(3)/(x(1)*reaction_R12_Katp_12))^reaction_R12_n_12/(1+(x(3)/(x(1)*reaction_R12_Katp_12))^reaction_R12_n_12);

% Reaction: id = R13	% Local Parameter:   id =  V_13, name = V_13
	reaction_R13_V_13=118.0;
	% Local Parameter:   id =  Knadh_13, name = Knadh_13
	reaction_R13_Knadh_13=0.041;
	% Local Parameter:   id =  Ko_13, name = Ko_13
	reaction_R13_Ko_13=0.2;
	% Local Parameter:   id =  Knad_13, name = Knad_13
	reaction_R13_Knad_13=1.0;

	reaction_R13=reaction_R13_V_13*x(4)*x(18)/(reaction_R13_Knadh_13*reaction_R13_Ko_13)/((1+x(4)/reaction_R13_Knadh_13+x(2)/reaction_R13_Knad_13)*(1+x(18)/reaction_R13_Ko_13));

% Reaction: id = R14	% Local Parameter:   id =  k_14, name = k_14
	reaction_R14_k_14=3.0E-4;

	reaction_R14=reaction_R14_k_14*x(14);

% Species:   id = PO4, name = PO4, constant	const_species_PO4=10.0;

	xdot=zeros(18,1);
	
% Species:   id = ADP, name = ADP, affected by kineticLaw
	xdot(1) = (-1.0 * reaction_R1) + (-1.0 * reaction_R5) + ( 1.0 * reaction_R12);
	
% Species:   id = NAD, name = NAD, affected by kineticLaw
	xdot(2) = (-1.0 * reaction_R1) + ( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + ( 1.0 * reaction_R6) + ( 1.0 * reaction_R7) + ( 1.0 * reaction_R11) + ( 1.0 * reaction_R13);
	
% Species:   id = ATP, name = ATP, affected by kineticLaw
	xdot(3) = ( 1.0 * reaction_R1) + ( 1.0 * reaction_R5) + (-1.0 * reaction_R12);
	
% Species:   id = NADH, name = NADH, affected by kineticLaw
	xdot(4) = ( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + ( 1.0 * reaction_R3) + (-1.0 * reaction_R6) + (-1.0 * reaction_R7) + (-1.0 * reaction_R11) + (-1.0 * reaction_R13);
	
% Species:   id = pyruvate, name = pyruvate, affected by kineticLaw
	xdot(5) = ( 1.0 * reaction_R1) + (-1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-2.0 * reaction_R8);
	
% Species:   id = lactate, name = lactate
%WARNING speciesID: lactate, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(6) = 0.0;
	
% Species:   id = CoA, name = CoA, affected by kineticLaw
	xdot(7) = (-1.0 * reaction_R3) + ( 1.0 * reaction_R4) + ( 1.0 * reaction_R6);
	
% Species:   id = halfglucose, name = halfglucose
%WARNING speciesID: halfglucose, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(8) = 0.0;
	
% Species:   id = AcCoA, name = AcCoA, affected by kineticLaw
	xdot(9) = ( 1.0 * reaction_R3) + (-1.0 * reaction_R4) + (-1.0 * reaction_R6);
	
% Species:   id = AcP, name = AcP, affected by kineticLaw
	xdot(10) = ( 1.0 * reaction_R4) + (-1.0 * reaction_R5);
	
% Species:   id = Ac, name = Ac
%WARNING speciesID: Ac, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(11) = 0.0;
	
% Species:   id = AcO, name = AcO, affected by kineticLaw
	xdot(12) = ( 1.0 * reaction_R6) + (-1.0 * reaction_R7);
	
% Species:   id = EtOH, name = EtOH
%WARNING speciesID: EtOH, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(13) = 0.0;
	
% Species:   id = AcLac, name = AcLac, affected by kineticLaw
	xdot(14) = ( 1.0 * reaction_R8) + (-1.0 * reaction_R9) + (-1.0 * reaction_R14);
	
% Species:   id = AcetoinIn, name = AcetoinIn, affected by kineticLaw
	xdot(15) = ( 1.0 * reaction_R9) + (-1.0 * reaction_R10) + (-1.0 * reaction_R11) + ( 1.0 * reaction_R14);
	
% Species:   id = AcetoinOut, name = AcetoinOut
%WARNING speciesID: AcetoinOut, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(16) = 0.0;
	
% Species:   id = Butanediol, name = Butanediol
%WARNING speciesID: Butanediol, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(17) = 0.0;
	
% Species:   id = O2, name = O2
%WARNING speciesID: O2, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(18) = 0.0;
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


