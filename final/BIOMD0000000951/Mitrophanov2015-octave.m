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
% Model name = Mitrophanov2015 - Simulating extended Hockin Blood Coagulation Model under varied pH
%
% is http://identifiers.org/biomodels.db/MODEL1806270001
% is http://identifiers.org/biomodels.db/BIOMD0000000951
%


function main()
%Initial conditions vector
	x0=zeros(34,1);
	x0(1) = 5.0E-12;
	x0(2) = 0.0;
	x0(3) = 1.0E-8;
	x0(4) = 0.0;
	x0(5) = 1.0E-10;
	x0(6) = 0.0;
	x0(7) = 0.0;
	x0(8) = 0.0;
	x0(9) = 1.6E-7;
	x0(10) = 0.0;
	x0(11) = 9.0E-8;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 1.4E-6;
	x0(15) = 7.0E-10;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 2.0E-8;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;
	x0(25) = 0.0;
	x0(26) = 2.5E-9;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 3.4E-6;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 0.0;
	x0(33) = 0.0;
	x0(34) = 0.0;


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

% Compartment: id = compartment_1, name = compartment_1, constant
	compartment_compartment_1=1.0;
% Parameter:   id =  k1, name = k01
	global_par_k1=0.0031;
% Parameter:   id =  k2, name = k02
	global_par_k2=3200000.0;
% Parameter:   id =  k3, name = k03
	global_par_k3=0.0031;
% Parameter:   id =  k4, name = k04
	global_par_k4=2.3E7;
% Parameter:   id =  k5, name = k05
	global_par_k5=440000.0;
% Parameter:   id =  k6, name = k06
	global_par_k6=1.3E7;
% Parameter:   id =  k7, name = k07
	global_par_k7=23000.0;
% Parameter:   id =  k8, name = k08
	global_par_k8=1.05;
% Parameter:   id =  k9, name = k09
	global_par_k9=2.5E7;
% Parameter:   id =  k10, name = k10
	global_par_k10=6.0;
% Parameter:   id =  k11, name = k11
	global_par_k11=19.0;
% Parameter:   id =  k12, name = k12
	global_par_k12=2.2E7;
% Parameter:   id =  k13, name = k13
	global_par_k13=2.4;
% Parameter:   id =  k14, name = k14
	global_par_k14=1.0E7;
% Parameter:   id =  k15, name = k15
	global_par_k15=1.8;
% Parameter:   id =  k16, name = k16
	global_par_k16=7500.0;
% Parameter:   id =  k17, name = k17
	global_par_k17=2.0E7;
% Parameter:   id =  k18, name = k18
	global_par_k18=0.005;
% Parameter:   id =  k19, name = k19
	global_par_k19=1.0E7;
% Parameter:   id =  k20, name = k20
	global_par_k20=0.001;
% Parameter:   id =  k21, name = k21
	global_par_k21=1.0E8;
% Parameter:   id =  k22, name = k22
	global_par_k22=8.2;
% Parameter:   id =  k23, name = k23
	global_par_k23=22000.0;
% Parameter:   id =  k24, name = k24
	global_par_k24=0.006;
% Parameter:   id =  k25, name = k25
	global_par_k25=0.001;
% Parameter:   id =  k26, name = k26
	global_par_k26=2.0E7;
% Parameter:   id =  k27, name = k27
	global_par_k27=0.2;
% Parameter:   id =  k28, name = k28
	global_par_k28=4.0E8;
% Parameter:   id =  k29, name = k29
	global_par_k29=103.0;
% Parameter:   id =  k30, name = k30
	global_par_k30=1.0E8;
% Parameter:   id =  k31, name = k31
	global_par_k31=63.5;
% Parameter:   id =  k32, name = k32
	global_par_k32=2.3E8;
% Parameter:   id =  k33, name = k33
	global_par_k33=3.6E-4;
% Parameter:   id =  k34, name = k34
	global_par_k34=900000.0;
% Parameter:   id =  k35, name = k35
	global_par_k35=1.1E-4;
% Parameter:   id =  k36, name = k36
	global_par_k36=3.2E8;
% Parameter:   id =  k37, name = k37
	global_par_k37=5.0E7;
% Parameter:   id =  k38, name = k38
	global_par_k38=4200.0;
% Parameter:   id =  k39, name = k39
	global_par_k39=7100.0;
% Parameter:   id =  k40, name = k40
	global_par_k40=490.0;
% Parameter:   id =  k41, name = k41
	global_par_k41=7100.0;
% Parameter:   id =  k42, name = k42
	global_par_k42=230.0;
% Parameter:   id =  IIa_plus_1_2mIIa, name = IIa+1.2mIIa
% Parameter:   id =  k43, name = k43
	global_par_k43=5700.0;
% Parameter:   id =  k44, name = k44
	global_par_k44=3000000.0;
% Parameter:   id =  minutes, name = minutes
% Parameter:   id =  k05, name = k05*
% Parameter:   id =  k06, name = k06*
% Parameter:   id =  k07, name = k07*
% Parameter:   id =  k10_0, name = k10*
% Parameter:   id =  k15_0, name = k15*
% Parameter:   id =  k16_0, name = k16*
% Parameter:   id =  k17_0, name = k17*
% Parameter:   id =  k22_0, name = k22*
% Parameter:   id =  k26_0, name = k26*
% Parameter:   id =  k31_0, name = k31*
% Parameter:   id =  k32_0, name = k32*
% Parameter:   id =  k43_0, name = k43*
% Parameter:   id =  k44_0, name = k44*
% Parameter:   id =  f_pH, name = f(pH)
	global_par_f_pH=1.0;
% Parameter:   id =  TAT, name = TAT
% assignmentRule: variable = k07
	global_par_k07=global_par_f_pH*global_par_k7;
% assignmentRule: variable = k10_0
	global_par_k10_0=global_par_f_pH*global_par_k10;
% assignmentRule: variable = k05
	global_par_k05=global_par_f_pH*global_par_k5;
% assignmentRule: variable = k31_0
	global_par_k31_0=global_par_f_pH*global_par_k31;
% assignmentRule: variable = k15_0
	global_par_k15_0=global_par_f_pH*global_par_k15;
% assignmentRule: variable = k22_0
	global_par_k22_0=global_par_f_pH*global_par_k22;
% assignmentRule: variable = k16_0
	global_par_k16_0=global_par_f_pH*global_par_k16;
% assignmentRule: variable = k17_0
	global_par_k17_0=global_par_f_pH*global_par_k17;
% assignmentRule: variable = k06
	global_par_k06=global_par_f_pH*global_par_k6;
% assignmentRule: variable = k44_0
	global_par_k44_0=global_par_f_pH*global_par_k44;
% assignmentRule: variable = k43_0
	global_par_k43_0=global_par_f_pH*global_par_k43;
% assignmentRule: variable = k32_0
	global_par_k32_0=global_par_f_pH*global_par_k32;
% assignmentRule: variable = k26_0
	global_par_k26_0=global_par_f_pH*global_par_k26;
% assignmentRule: variable = TAT
	global_par_TAT=x(33)+0*x(31);
% assignmentRule: variable = IIa_plus_1_2mIIa
	global_par_IIa_plus_1_2mIIa=x(7)+1.2*x(25);
% assignmentRule: variable = minutes
	global_par_minutes=time/60;

% Reaction: id = R1, name = R01
	reaction_R1=compartment_compartment_1*(global_par_k2*x(1)*x(3)-global_par_k1*x(2));

% Reaction: id = R2, name = R02
	reaction_R2=compartment_compartment_1*(global_par_k4*x(1)*x(5)-global_par_k3*x(4));

% Reaction: id = R3, name = R03
	reaction_R3=compartment_compartment_1*global_par_k05*x(4)*x(3);

% Reaction: id = R4, name = R04
	reaction_R4=compartment_compartment_1*global_par_k06*x(6)*x(3);

% Reaction: id = R5, name = R05
	reaction_R5=compartment_compartment_1*global_par_k07*x(7)*x(3);

% Reaction: id = R6, name = R06
	reaction_R6=compartment_compartment_1*(global_par_k9*x(4)*x(9)-global_par_k8*x(8));

% Reaction: id = R7, name = R07
	reaction_R7=compartment_compartment_1*(global_par_k12*x(4)*x(6)-global_par_k11*x(10));

% Reaction: id = R8, name = R08
	reaction_R8=compartment_compartment_1*(global_par_k14*x(4)*x(11)-global_par_k13*x(12));

% Reaction: id = R9, name = R09
	reaction_R9=compartment_compartment_1*global_par_k16_0*x(6)*x(14);

% Reaction: id = R10, name = R10
	reaction_R10=compartment_compartment_1*global_par_k17_0*x(7)*x(15);

% Reaction: id = R11, name = R11
	reaction_R11=compartment_compartment_1*(global_par_k19*x(13)*x(16)-global_par_k18*x(17));

% Reaction: id = R12, name = R12
	reaction_R12=compartment_compartment_1*(global_par_k21*x(17)*x(9)-global_par_k20*x(18));

% Reaction: id = R13, name = R13
	reaction_R13=compartment_compartment_1*(global_par_k24*x(16)-global_par_k23*x(19)*x(20));

% Reaction: id = R14, name = R14
	reaction_R14=compartment_compartment_1*global_par_k25*x(18);

% Reaction: id = R15, name = R15
	reaction_R15=compartment_compartment_1*global_par_k25*x(17);

% Reaction: id = R16, name = R16
	reaction_R16=compartment_compartment_1*global_par_k26_0*x(7)*x(21);

% Reaction: id = R17, name = R17
	reaction_R17=compartment_compartment_1*(global_par_k28*x(6)*x(22)-global_par_k27*x(23));

% Reaction: id = R18, name = R18
	reaction_R18=compartment_compartment_1*(global_par_k30*x(23)*x(14)-global_par_k29*x(24));

% Reaction: id = R19, name = R19
	reaction_R19=compartment_compartment_1*global_par_k32_0*x(25)*x(23);

% Reaction: id = R20, name = R20
	reaction_R20=compartment_compartment_1*(global_par_k34*x(6)*x(26)-global_par_k33*x(27));

% Reaction: id = R21, name = R21
	reaction_R21=compartment_compartment_1*(global_par_k36*x(10)*x(26)-global_par_k35*x(28));

% Reaction: id = R22, name = R22
	reaction_R22=compartment_compartment_1*global_par_k37*x(4)*x(27);

% Reaction: id = R23, name = R23
	reaction_R23=compartment_compartment_1*global_par_k38*x(6)*x(29);

% Reaction: id = R24, name = R24
	reaction_R24=compartment_compartment_1*global_par_k39*x(25)*x(29);

% Reaction: id = R25, name = R25
	reaction_R25=compartment_compartment_1*global_par_k40*x(13)*x(29);

% Reaction: id = R26, name = R26
	reaction_R26=compartment_compartment_1*global_par_k41*x(7)*x(29);

% Reaction: id = R27, name = R27
	reaction_R27=compartment_compartment_1*global_par_k42*x(4)*x(29);

% Reaction: id = R6b, name = R06b
	reaction_R6b=compartment_compartment_1*global_par_k10_0*x(8);

% Reaction: id = R8b, name = R08b
	reaction_R8b=compartment_compartment_1*global_par_k15_0*x(12);

% Reaction: id = R12b, name = R12b
	reaction_R12b=compartment_compartment_1*global_par_k22_0*x(18);

% Reaction: id = R18b, name = R18b
	reaction_R18b=compartment_compartment_1*global_par_k31_0*x(24);

% Reaction: id = R28, name = R28
	reaction_R28=compartment_compartment_1*global_par_k43_0*x(13)*x(9);

% Reaction: id = R29, name = R29
	reaction_R29=compartment_compartment_1*global_par_k44_0*x(25)*x(21);

	xdot=zeros(34,1);
	
% Species:   id = TF, name = TF, affected by kineticLaw
	xdot(1) = (1/(compartment_compartment_1))*((-1.0 * reaction_R1) + (-1.0 * reaction_R2));
	
% Species:   id = TF_VII, name = TF_VII, affected by kineticLaw
	xdot(2) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R1));
	
% Species:   id = VII, name = VII, affected by kineticLaw
	xdot(3) = (1/(compartment_compartment_1))*((-1.0 * reaction_R1) + (-1.0 * reaction_R3) + (-1.0 * reaction_R4) + (-1.0 * reaction_R5));
	
% Species:   id = TF_VIIa, name = TF_VIIa, affected by kineticLaw
	xdot(4) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R3) + ( 1.0 * reaction_R3) + (-1.0 * reaction_R6) + (-1.0 * reaction_R7) + (-1.0 * reaction_R8) + (-1.0 * reaction_R22) + (-1.0 * reaction_R27) + ( 1.0 * reaction_R8b));
	
% Species:   id = VIIa, name = VIIa, affected by kineticLaw
	xdot(5) = (1/(compartment_compartment_1))*((-1.0 * reaction_R2) + ( 1.0 * reaction_R3) + ( 1.0 * reaction_R4) + ( 1.0 * reaction_R5));
	
% Species:   id = Xa, name = Xa, affected by kineticLaw
	xdot(6) = (1/(compartment_compartment_1))*((-1.0 * reaction_R4) + ( 1.0 * reaction_R4) + (-1.0 * reaction_R7) + (-1.0 * reaction_R9) + ( 1.0 * reaction_R9) + (-1.0 * reaction_R17) + (-1.0 * reaction_R20) + (-1.0 * reaction_R23) + ( 1.0 * reaction_R12b) + ( 1.0 * reaction_R28));
	
% Species:   id = IIa, name = IIa, affected by kineticLaw
	xdot(7) = (1/(compartment_compartment_1))*((-1.0 * reaction_R5) + ( 1.0 * reaction_R5) + ( 1.0 * reaction_R9) + (-1.0 * reaction_R10) + ( 1.0 * reaction_R10) + (-1.0 * reaction_R16) + ( 1.0 * reaction_R16) + ( 1.0 * reaction_R19) + (-1.0 * reaction_R26));
	
% Species:   id = TF_VIIa_X, name = TF_VIIa_X, affected by kineticLaw
	xdot(8) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R6) + (-1.0 * reaction_R6b));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(9) = (1/(compartment_compartment_1))*((-1.0 * reaction_R6) + (-1.0 * reaction_R12) + ( 1.0 * reaction_R14) + (-1.0 * reaction_R28));
	
% Species:   id = TF_VIIa_Xa, name = TF_VIIa_Xa, affected by kineticLaw
	xdot(10) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R7) + (-1.0 * reaction_R21) + ( 1.0 * reaction_R6b));
	
% Species:   id = IX, name = IX, affected by kineticLaw
	xdot(11) = (1/(compartment_compartment_1))*((-1.0 * reaction_R8));
	
% Species:   id = TF_VIIa_IX, name = TF_VIIa_IX, affected by kineticLaw
	xdot(12) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R8) + (-1.0 * reaction_R8b));
	
% Species:   id = IXa, name = IXa, affected by kineticLaw
	xdot(13) = (1/(compartment_compartment_1))*((-1.0 * reaction_R11) + ( 1.0 * reaction_R14) + ( 1.0 * reaction_R15) + (-1.0 * reaction_R25) + ( 1.0 * reaction_R8b) + (-1.0 * reaction_R28) + ( 1.0 * reaction_R28));
	
% Species:   id = II, name = II, affected by kineticLaw
	xdot(14) = (1/(compartment_compartment_1))*((-1.0 * reaction_R9) + (-1.0 * reaction_R18));
	
% Species:   id = VIII, name = VIII, affected by kineticLaw
	xdot(15) = (1/(compartment_compartment_1))*((-1.0 * reaction_R10));
	
% Species:   id = VIIIa, name = VIIIa, affected by kineticLaw
	xdot(16) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R10) + (-1.0 * reaction_R11) + (-1.0 * reaction_R13));
	
% Species:   id = IXa_VIIIa, name = IXa_VIIIa, affected by kineticLaw
	xdot(17) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R11) + (-1.0 * reaction_R12) + (-1.0 * reaction_R15) + ( 1.0 * reaction_R12b));
	
% Species:   id = IXa_VIIIa_X, name = IXa_VIIIa_X, affected by kineticLaw
	xdot(18) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R12) + (-1.0 * reaction_R14) + (-1.0 * reaction_R12b));
	
% Species:   id = VIIIa1_L, name = VIIIa1_L, affected by kineticLaw
	xdot(19) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R13) + ( 1.0 * reaction_R14) + ( 1.0 * reaction_R15));
	
% Species:   id = VIIIa2, name = VIIIa2, affected by kineticLaw
	xdot(20) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R13) + ( 1.0 * reaction_R14) + ( 1.0 * reaction_R15));
	
% Species:   id = V, name = V, affected by kineticLaw
	xdot(21) = (1/(compartment_compartment_1))*((-1.0 * reaction_R16) + (-1.0 * reaction_R29));
	
% Species:   id = Va, name = Va, affected by kineticLaw
	xdot(22) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R16) + (-1.0 * reaction_R17) + ( 1.0 * reaction_R29));
	
% Species:   id = Xa_Va, name = Xa_Va, affected by kineticLaw
	xdot(23) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R17) + (-1.0 * reaction_R18) + (-1.0 * reaction_R19) + ( 1.0 * reaction_R19) + ( 1.0 * reaction_R18b));
	
% Species:   id = Xa_Va_II, name = Xa_Va_II, affected by kineticLaw
	xdot(24) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R18) + (-1.0 * reaction_R18b));
	
% Species:   id = mIIa, name = mIIa, affected by kineticLaw
	xdot(25) = (1/(compartment_compartment_1))*((-1.0 * reaction_R19) + (-1.0 * reaction_R24) + ( 1.0 * reaction_R18b) + (-1.0 * reaction_R29) + ( 1.0 * reaction_R29));
	
% Species:   id = TFPI, name = TFPI, affected by kineticLaw
	xdot(26) = (1/(compartment_compartment_1))*((-1.0 * reaction_R20) + (-1.0 * reaction_R21));
	
% Species:   id = Xa_TFPI, name = Xa_TFPI, affected by kineticLaw
	xdot(27) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R20) + (-1.0 * reaction_R22));
	
% Species:   id = TF_VIIa_Xa_TFPI, name = TF_VIIa_Xa_TFPI, affected by kineticLaw
	xdot(28) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R21) + ( 1.0 * reaction_R22));
	
% Species:   id = ATIII, name = ATIII, affected by kineticLaw
	xdot(29) = (1/(compartment_compartment_1))*((-1.0 * reaction_R23) + (-1.0 * reaction_R24) + (-1.0 * reaction_R25) + (-1.0 * reaction_R26) + (-1.0 * reaction_R27));
	
% Species:   id = Xa_ATIII, name = Xa_ATIII, affected by kineticLaw
	xdot(30) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R23));
	
% Species:   id = mIIa_ATIII, name = mIIa_ATIII, affected by kineticLaw
	xdot(31) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R24));
	
% Species:   id = IXa_ATIII, name = IXa_ATIII, affected by kineticLaw
	xdot(32) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R25));
	
% Species:   id = IIa_ATIII, name = IIa_ATIII, affected by kineticLaw
	xdot(33) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R26));
	
% Species:   id = TF_VIIa_ATIII, name = TF_VIIa_ATIII, affected by kineticLaw
	xdot(34) = (1/(compartment_compartment_1))*(( 1.0 * reaction_R27));
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


