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
% Model name = Besozzi2012 - Oscillatory regimes in the Ras/cAMP/PKA pathway in S.cerevisiae
%
% is http://identifiers.org/biomodels.db/MODEL1309060000
% is http://identifiers.org/biomodels.db/BIOMD0000000478
% isDescribedBy http://identifiers.org/pubmed/22818197
% isDerivedFrom http://identifiers.org/pubmed/18023904
% isDerivedFrom http://identifiers.org/pubmed/21741466
%


function main()
%Initial conditions vector
	x0=zeros(30,1);
	x0(1) = 20000.0;
	x0(2) = 300.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 200.0;
	x0(8) = 0.0;
	x0(9) = 200.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 2500.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 1400.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 4000.0;
	x0(26) = 6500.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;


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

% Compartment: id = compartment01, name = compartment01, constant
	compartment_compartment01=1.0;
% Parameter:   id =  K0, name = K0
	global_par_K0=1.0;
% Parameter:   id =  K1, name = K1
	global_par_K1=1.0;
% Parameter:   id =  K2, name = K2
	global_par_K2=1.5;
% Parameter:   id =  K3, name = K3
	global_par_K3=1.0;
% Parameter:   id =  K4, name = K4
	global_par_K4=1.0;
% Parameter:   id =  K5, name = K5
	global_par_K5=1.0;
% Parameter:   id =  K6, name = K6
	global_par_K6=1.0;
% Parameter:   id =  K7, name = K7
	global_par_K7=1.0;
% Parameter:   id =  K8, name = K8
	global_par_K8=0.01;
% Parameter:   id =  K9, name = K9
	global_par_K9=0.25;
% Parameter:   id =  K10, name = K10
	global_par_K10=0.001;
% Parameter:   id =  K11, name = K11
	global_par_K11=2.1E-6;
% Parameter:   id =  K12, name = K12
	global_par_K12=0.001;
% Parameter:   id =  K13, name = K13
	global_par_K13=1.0E-5;
% Parameter:   id =  K14, name = K14
	global_par_K14=1.0E-5;
% Parameter:   id =  K15, name = K15
	global_par_K15=1.0E-5;
% Parameter:   id =  K16, name = K16
	global_par_K16=1.0E-5;
% Parameter:   id =  K17, name = K17
	global_par_K17=0.1;
% Parameter:   id =  K18, name = K18
	global_par_K18=0.1;
% Parameter:   id =  K19, name = K19
	global_par_K19=0.1;
% Parameter:   id =  K20, name = K20
	global_par_K20=0.1;
% Parameter:   id =  K21, name = K21
	global_par_K21=1.0;
% Parameter:   id =  K22, name = K22
	global_par_K22=1.0;
% Parameter:   id =  K23, name = K23
	global_par_K23=0.75;
% Parameter:   id =  K24, name = K24
	global_par_K24=1.0;
% Parameter:   id =  K25, name = K25
	global_par_K25=1.0E-6;
% Parameter:   id =  K26, name = K26
	global_par_K26=0.1;
% Parameter:   id =  K27, name = K27
	global_par_K27=0.1;
% Parameter:   id =  K28, name = K28
	global_par_K28=7.5;
% Parameter:   id =  K29, name = K29
	global_par_K29=1.0E-4;
% Parameter:   id =  K30, name = K30
	global_par_K30=1.0E-4;
% Parameter:   id =  K31, name = K31
	global_par_K31=1.0;
% Parameter:   id =  K32, name = K32
	global_par_K32=1.7;
% Parameter:   id =  K33, name = K33
	global_par_K33=1.0;
% Parameter:   id =  K34, name = K34
	global_par_K34=0.01;
% Parameter:   id =  K35, name = K35
	global_par_K35=0.001;
% Parameter:   id =  K36, name = K36
	global_par_K36=1.25;
% Parameter:   id =  K37, name = K37
	global_par_K37=2.5;
% Parameter:   id =  K38, name = K38
	global_par_K38=10.0;

% Reaction: id = R0
	reaction_R0=global_par_K0*x(1)*x(2);

% Reaction: id = R1
	reaction_R1=global_par_K1*x(3);

% Reaction: id = R2
	reaction_R2=global_par_K2*x(3);

% Reaction: id = R3
	reaction_R3=global_par_K3*x(4)*const_species_GDP;

% Reaction: id = R4
	reaction_R4=global_par_K4*x(4)*const_species_GTP;

% Reaction: id = R5
	reaction_R5=global_par_K5*x(5);

% Reaction: id = R6
	reaction_R6=global_par_K6*x(5);

% Reaction: id = R7
	reaction_R7=global_par_K7*x(2)*x(6);

% Reaction: id = R8
	reaction_R8=global_par_K8*x(6)*x(7);

% Reaction: id = R9
	reaction_R9=global_par_K9*x(8);

% Reaction: id = R10
	reaction_R10=global_par_K10*x(6)*x(9);

% Reaction: id = R11
	reaction_R11=global_par_K11*x(10)*const_species_ATP;

% Reaction: id = R12
	reaction_R12=global_par_K12*x(7)*x(10);

% Reaction: id = R13
	reaction_R13=global_par_K13*x(11)*x(12);

% Reaction: id = R14
	reaction_R14=global_par_K14*x(11)*x(13);

% Reaction: id = R15
	reaction_R15=global_par_K15*x(11)*x(14);

% Reaction: id = R16
	reaction_R16=global_par_K16*x(11)*x(15);

% Reaction: id = R17
	reaction_R17=global_par_K17*x(16);

% Reaction: id = R18
	reaction_R18=global_par_K18*x(15);

% Reaction: id = R19
	reaction_R19=global_par_K19*x(14);

% Reaction: id = R20
	reaction_R20=global_par_K20*x(13);

% Reaction: id = R21
	reaction_R21=global_par_K21*x(16);

% Reaction: id = R22
	reaction_R22=global_par_K22*x(18);

% Reaction: id = R23
	reaction_R23=global_par_K23*x(17)*x(19);

% Reaction: id = R24
	reaction_R24=global_par_K24*x(20)*(x(20)-1)/2;

% Reaction: id = R25
	reaction_R25=global_par_K25*x(17)*x(21);

% Reaction: id = R26
	reaction_R26=global_par_K26*x(11)*x(22);

% Reaction: id = R27
	reaction_R27=global_par_K27*x(23);

% Reaction: id = R28
	reaction_R28=global_par_K28*x(23);

% Reaction: id = R29
	reaction_R29=global_par_K29*x(22)*x(25);

% Reaction: id = R30
	reaction_R30=global_par_K30*x(11)*x(26);

% Reaction: id = R31
	reaction_R31=global_par_K31*x(27);

% Reaction: id = R32
	reaction_R32=global_par_K32*x(27);

% Reaction: id = R33
	reaction_R33=global_par_K33*x(2)*x(17);

% Reaction: id = R34
	reaction_R34=global_par_K34*x(25)*x(28);

% Reaction: id = R35
	reaction_R35=global_par_K35*x(7)*x(17);

% Reaction: id = R36
	reaction_R36=global_par_K36*x(6)*x(29);

% Reaction: id = R37
	reaction_R37=global_par_K37*x(30);

% Reaction: id = R38
	reaction_R38=global_par_K38*x(29);

% Species:   id = GDP, name = GDP, constant	const_species_GDP=1500000.0;

% Species:   id = GTP, name = GTP, constant	const_species_GTP=5000000.0;

% Species:   id = ATP, name = ATP, constant	const_species_ATP=2.4E7;

	xdot=zeros(30,1);
	
% Species:   id = Ras2_GDP, name = Ras2_GDP, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment01))*((-1.0 * reaction_R0) + ( 1.0 * reaction_R1) + ( 1.0 * reaction_R9) + ( 1.0 * reaction_R12) + ( 1.0 * reaction_R37));
	
% Species:   id = Cdc25, name = Cdc25, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment01))*((-1.0 * reaction_R0) + ( 1.0 * reaction_R1) + ( 1.0 * reaction_R6) + (-1.0 * reaction_R7) + (-1.0 * reaction_R33) + ( 1.0 * reaction_R34));
	
% Species:   id = Ras2_GDP_Cdc25, name = Ras2_GDP_Cdc25, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment01))*(( 1.0 * reaction_R0) + (-1.0 * reaction_R1) + (-1.0 * reaction_R2) + ( 1.0 * reaction_R3));
	
% Species:   id = Ras2_Cdc25, name = Ras2_Cdc25, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment01))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R4) + ( 1.0 * reaction_R5));
	
% Species:   id = Ras2_GTP_Cdc25, name = Ras2_GTP_Cdc25, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment01))*(( 1.0 * reaction_R4) + (-1.0 * reaction_R5) + (-1.0 * reaction_R6) + ( 1.0 * reaction_R7));
	
% Species:   id = Ras2_GTP, name = Ras2_GTP, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment01))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R7) + (-1.0 * reaction_R8) + (-1.0 * reaction_R10) + (-1.0 * reaction_R36));
	
% Species:   id = Ira2, name = Ira2, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment01))*((-1.0 * reaction_R8) + ( 1.0 * reaction_R9) + (-1.0 * reaction_R12) + ( 1.0 * reaction_R12) + (-1.0 * reaction_R35) + ( 1.0 * reaction_R38));
	
% Species:   id = Ras2_GTP_Ira2, name = Ras2_GTP_Ira2, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment01))*(( 1.0 * reaction_R8) + (-1.0 * reaction_R9));
	
% Species:   id = CYR1, name = CYR1, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment01))*((-1.0 * reaction_R10) + ( 1.0 * reaction_R12));
	
% Species:   id = Ras2_GTP_CYR1, name = Ras2_GTP_CYR1, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment01))*(( 1.0 * reaction_R10) + (-1.0 * reaction_R11) + ( 1.0 * reaction_R11) + (-1.0 * reaction_R12));
	
% Species:   id = cAMP, name = cAMP, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment01))*(( 1.0 * reaction_R11) + (-1.0 * reaction_R13) + (-1.0 * reaction_R14) + (-1.0 * reaction_R15) + (-1.0 * reaction_R16) + ( 1.0 * reaction_R17) + ( 1.0 * reaction_R18) + ( 1.0 * reaction_R19) + ( 1.0 * reaction_R20) + ( 2.0 * reaction_R22) + (-1.0 * reaction_R26) + ( 1.0 * reaction_R27) + (-1.0 * reaction_R30) + ( 1.0 * reaction_R31));
	
% Species:   id = PKA, name = PKA, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment01))*((-1.0 * reaction_R13) + ( 1.0 * reaction_R20) + ( 1.0 * reaction_R24));
	
% Species:   id = cAMP_PKA, name = cAMP_PKA, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment01))*(( 1.0 * reaction_R13) + (-1.0 * reaction_R14) + ( 1.0 * reaction_R19) + (-1.0 * reaction_R20));
	
% Species:   id = IIcAMP_PKA, name = IIcAMP_PKA, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment01))*(( 1.0 * reaction_R14) + (-1.0 * reaction_R15) + ( 1.0 * reaction_R18) + (-1.0 * reaction_R19));
	
% Species:   id = IIIcAMP_PKA, name = IIIcAMP_PKA, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment01))*(( 1.0 * reaction_R15) + (-1.0 * reaction_R16) + ( 1.0 * reaction_R17) + (-1.0 * reaction_R18));
	
% Species:   id = IVcAMP_PKA, name = IVcAMP_PKA, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment01))*(( 1.0 * reaction_R16) + (-1.0 * reaction_R17) + (-1.0 * reaction_R21));
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment01))*(( 2.0 * reaction_R21) + (-1.0 * reaction_R23) + (-1.0 * reaction_R25) + ( 1.0 * reaction_R25) + (-1.0 * reaction_R33) + ( 1.0 * reaction_R33) + (-1.0 * reaction_R35) + ( 1.0 * reaction_R35));
	
% Species:   id = R_2cAMP, name = R_2cAMP, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment01))*(( 2.0 * reaction_R21) + (-1.0 * reaction_R22));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment01))*(( 1.0 * reaction_R22) + (-1.0 * reaction_R23));
	
% Species:   id = R_C, name = R_C, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment01))*(( 1.0 * reaction_R23) + (-2.0 * reaction_R24));
	
% Species:   id = Pde1, name = Pde1, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment01))*((-1.0 * reaction_R25) + ( 1.0 * reaction_R29));
	
% Species:   id = Pde1f, name = Pde1f, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment01))*(( 1.0 * reaction_R25) + (-1.0 * reaction_R26) + ( 1.0 * reaction_R27) + ( 1.0 * reaction_R28) + (-1.0 * reaction_R29));
	
% Species:   id = cAMP_Pde1f, name = cAMP_Pde1f, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment01))*(( 1.0 * reaction_R26) + (-1.0 * reaction_R27) + (-1.0 * reaction_R28));
	
% Species:   id = AMP, name = AMP, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment01))*(( 1.0 * reaction_R28) + ( 1.0 * reaction_R32));
	
% Species:   id = PPA2, name = PPA2, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment01))*((-1.0 * reaction_R29) + ( 1.0 * reaction_R29) + (-1.0 * reaction_R34) + ( 1.0 * reaction_R34));
	
% Species:   id = Pde2, name = Pde2, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment01))*((-1.0 * reaction_R30) + ( 1.0 * reaction_R31) + ( 1.0 * reaction_R32));
	
% Species:   id = cAMP_Pde2, name = cAMP_Pde2, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment01))*(( 1.0 * reaction_R30) + (-1.0 * reaction_R31) + (-1.0 * reaction_R32));
	
% Species:   id = Cdc25f, name = Cdc25f, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment01))*(( 1.0 * reaction_R33) + (-1.0 * reaction_R34));
	
% Species:   id = Ira2P, name = Ira2P, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment01))*(( 1.0 * reaction_R35) + (-1.0 * reaction_R36) + ( 1.0 * reaction_R37) + (-1.0 * reaction_R38));
	
% Species:   id = Ras2_GTP_Ira2P, name = Ras2_GTP_Ira2P, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment01))*(( 1.0 * reaction_R36) + (-1.0 * reaction_R37));
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


